<template>
  <div class="card">
    <div class="flex justify-between items-center mb-4">
      <h1 class="text-2xl font-bold">{{ isEdit ? 'Edit' : 'Create' }} Price Tier</h1>
      <Button label="Back to Price Tiers" icon="pi pi-arrow-left" text @click="router.push({ name: 'Price Tiers' })" />
    </div>

    <Form v-slot="$form" :resolver="resolver" :initial-values="initialValues" @submit="savePriceTier">
      <div class="grid grid-cols-1 md:grid-cols-2 gap-4">
        <div class="flex flex-col gap-2">
          <label for="name" class="font-medium">Display Name</label>
          <InputText id="name" v-model="form.name" fluid placeholder="Dealer, Woodland, Master Distributor, etc." />
          <Message v-if="$form.name?.invalid" severity="error" size="small" variant="simple">
            {{ $form.name.error?.message }}
          </Message>
        </div>

        <div class="flex flex-col gap-2">
          <label for="division" class="font-medium">Division</label>
          <InputText id="division" v-model="form.division" fluid placeholder="The Outdoor Plus, Videl USA, etc." />
          <Message v-if="$form.division?.invalid" severity="error" size="small" variant="simple">
            {{ $form.division.error?.message }}
          </Message>
        </div>
      </div>

      <div class="flex flex-col gap-2 mt-4">
        <label for="type" class="font-medium">Type</label>
        <InputText id="type" v-model="form.type" fluid placeholder="MAP, Distributor, Dealer, etc." />
        <Message v-if="$form.type?.invalid" severity="error" size="small" variant="simple">
          {{ $form.type.error?.message }}
        </Message>
      </div>

      <div class="flex flex-col gap-2 mt-4">
        <label for="description" class="font-medium">Description</label>
        <Textarea id="description" v-model="form.description" rows="3" fluid />
        <Message v-if="$form.description?.invalid" severity="error" size="small" variant="simple">
          {{ $form.description.error?.message }}
        </Message>
      </div>

      <div class="flex flex-col gap-2 mt-4">
        <label for="default" class="font-medium">Default</label>
        <ToggleSwitch id="default" v-model="form.default" name="default">
          <template #handle="{ checked }">
            <i :class="['!text-xs pi', { 'pi-check': checked, 'pi-times': !checked }]"></i>
          </template>
        </ToggleSwitch>
        <Message v-if="$form.default?.invalid" severity="error" size="small" variant="simple">
          {{ $form.default.error?.message }}
        </Message>
      </div>

      <div class="flex flex-col gap-2 mt-4">
        <label for="is_active" class="font-medium">Active</label>
        <ToggleSwitch id="is_active" v-model="form.is_active" name="is_active">
          <template #handle="{ checked }">
            <i :class="['!text-xs pi', { 'pi-check': checked, 'pi-times': !checked }]"></i>
          </template>
        </ToggleSwitch>
        <Message v-if="$form.is_active?.invalid" severity="error" size="small" variant="simple">
          {{ $form.is_active.error?.message }}
        </Message>
      </div>

      <div class="grid grid-cols-1 lg:grid-cols-2 gap-4 mt-4">
        <div class="flex flex-col gap-2">
          <label for="company" class="block mb-1 font-medium">Company</label>
          <p class="text-sm text-gray-500 italic">Select a company to apply this price tier to. If no company is
            selected, the
            price tier will be applied to all companies.</p>
          <p class="text-sm text-gray-500 italic">If there are 2 price tiers with the same name and a company is
            selected for one of them, the
            default price tier will be overridden</p>
          <div class="flex gap-2 items-center w-full">
            <AutoComplete id="company" v-model="form.company" :suggestions="filteredCompanies" dropdown
              option-label="name" option-value="id" placeholder="Select a Company" fluid @complete="searchCompanies"
              class="w-full">
              <template #option="{ option }">
                <div>
                  <p v-html="highlightMatch(option.name)"></p>
                  <p class="text-sm text-gray-500 italic capitalize" v-html="highlightMatch(option.role.toLowerCase())">
                  </p>
                </div>
              </template>
            </AutoComplete>
            <i v-if="form.company && form.company.id"
              class="pi pi-times p-2 rounded-full text-red-500 hover:bg-red-100/50 cursor-pointer transition-colors duration-300"
              @click="form.company = null"></i>
          </div>
          <span v-if="form?.company?.name" class="text-sm font-bold italic">Selected: {{ form?.company?.name
            }}</span>
          <Message v-if="$form.company?.invalid" severity="error" size="small" variant="simple">{{
            $form.company.error?.message }}</Message>
        </div>
        <div class="flex flex-col gap-2">
          <label for="show_to_roles" class="block mb-1 font-medium">Show to Roles</label>
          <p class="text-sm text-gray-500 italic">Select the roles to apply this price tier to. If no role is
            selected, the
            price tier will be applied to all roles.</p>
          <MultiSelect id="show_to_roles" v-model="form.show_to_roles" :options="roles" option-label="value"
            option-value="value" placeholder="Select Roles" fluid filter class="w-full mt-auto py-0.5" display="chip"
            :class="{ 'mb-7': form?.company?.name }">
          </MultiSelect>
        </div>
      </div>

      <div class="flex flex-col gap-2 mt-4">
        <label class="font-medium">Formula Builder</label>
        <FormulaBuilder v-model="form.formula" @update:valid="formulaValid = $event" />
        <Message v-if="$form.formula?.invalid" severity="error" size="small" variant="simple">
          {{ $form.formula.error?.message }}
        </Message>
      </div>

      <div class="flex items-center gap-2 mt-4">
        <Button type="submit" :label="isEdit ? 'Update Price Tier' : 'Create Price Tier'" :loading="saving"
          :disabled="!formulaValid" />
        <Button type="button" label="Cancel" severity="secondary" text @click="router.push({ name: 'Price Tiers' })" />
      </div>
    </Form>
  </div>
</template>

<script setup>
import { ref, computed, onMounted } from 'vue';
import { useRouter, useRoute } from 'vue-router';
import { useToast } from 'primevue/usetoast';
import { zodResolver } from '@primevue/forms/resolvers/zod';
import { z } from 'zod';
import { supabase } from '@/supabase';
import FormulaBuilder from '@/components/FormulaBuilder.vue';
import { ToggleSwitch } from 'primevue';
import { useAppStore } from '@/store/app';

const router = useRouter();
const route = useRoute();
const toast = useToast();
const appStore = useAppStore();
const eventQuery = ref('');
const isEdit = computed(() => !!route.params.id);
const saving = ref(false);
const formulaValid = ref(false);
const filteredCompanies = ref([]);
const localCompaniesList = ref([]);

const form = ref({
  name: '',
  description: '',
  division: '',
  is_active: true,
  default: false,
  company: null,
  formula: null,
  show_to_roles: []
});

const initialValues = ref({
  name: '',
  description: '',
  division: '',
  type: '',
  is_active: true,
  default: false,
  company: null,
  formula: null,
  show_to_roles: []
});

const resolver = zodResolver(
  z.object({
    name: z.string().min(3, { message: 'Name must be at least 3 characters long.' }),
    division: z.string().min(1, { message: 'Division is required.' }),
    type: z.string().min(1, { message: 'Type is required.' }),
    description: z.string().min(1, { message: 'Description is required.' }),
    is_active: z.boolean(),
    company: z.string().nullable(),
    default: z.boolean(),
    formula: z.object({}).nullable().refine((val) => val !== null, {
      message: 'Formula is required.'
    }),
    show_to_roles: z.array(z.string()),
  })
);

const searchCompanies = (event) => {
  eventQuery.value = event.query;
  setTimeout(() => {
    if (!event.query.trim().length) {
      filteredCompanies.value = [...localCompaniesList.value];
    } else {
      const queryWords = event.query.toLowerCase().split(/\s+/);
      filteredCompanies.value = localCompaniesList.value.filter((company) => {
        const companyName = company.name.toLowerCase();
        const role = company.role?.toLowerCase() || '';
        return queryWords.every((word) => companyName.includes(word) || role.includes(word));
      });
    }
  }, 250);
}

const highlightMatch = (text) => {
  const queryWords = eventQuery.value.toLowerCase().split(/\s+/);
  let highlightedText = text;
  queryWords.forEach((word) => {
    if (word.trim()) {
      const regex = new RegExp(`(${word})`, 'gi');
      highlightedText = highlightedText.replace(regex, '<b>$1</b>');
    }
  });
  return highlightedText;
}

const formatCurrency = (value) => {
  return new Intl.NumberFormat('en-US', {
    style: 'currency',
    currency: 'USD'
  }).format(value);
};

const savePriceTier = async ({ valid, values }) => {
  if (!valid || !formulaValid.value) return;

  try {
    appStore.setLoading(true);
    const priceTierData = {
      name: form.value.name,
      description: form.value.description,
      division: form.value.division,
      type: form.value.type,
      is_active: form.value.is_active,
      company: form.value.company?.id || null,
      default: form.value.default,
      formula: form.value.formula,
      show_to_roles: form.value.show_to_roles
    };

    const { error } = isEdit.value
      ? await supabase
        .from('price_tiers')
        .update(priceTierData)
        .eq('id', route.params.id)
      : await supabase
        .from('price_tiers')
        .insert(priceTierData);

    if (error) throw error;

    toast.add({
      severity: 'success',
      summary: 'Success',
      detail: `Price tier ${isEdit.value ? 'updated' : 'created'} successfully`,
      life: 3000
    });

    router.push({ name: 'Price Tiers' });
  } catch (error) {
    toast.add({
      severity: 'error',
      summary: 'Error',
      detail: `Failed to ${isEdit.value ? 'update' : 'create'} price tier`,
      life: 3000
    });
  } finally {
    appStore.setLoading(false);
  }
};

const fetchPriceTier = async () => {
  if (!isEdit.value) return;

  try {
    const { data, error } = await supabase
      .from('price_tiers')
      .select(`*, company(id, name, role)`)
      .eq('id', route.params.id)
      .single();

    if (error) throw error;
    if (data) {
      form.value = data;
      initialValues.value = { ...data };
    }
  } catch (error) {
    toast.add({
      severity: 'error',
      summary: 'Error',
      detail: 'Failed to fetch price tier',
      life: 3000
    });
    router.push({ name: 'Price Tiers' });
  }
};

const roles = computed(() => appStore.getEnumsByType('user_role'));

// Fetch companies for the form
const fetchCompanies = async () => {
  try {
    const { data, error } = await supabase.from('Company').select('id, name, role');
    if (error) throw error;
    localCompaniesList.value = data;
  } catch (error) {
    console.error('Error fetching companies:', error);
  }
};


onMounted(async () => {
  await fetchPriceTier();
  await fetchCompanies();
});
</script>
