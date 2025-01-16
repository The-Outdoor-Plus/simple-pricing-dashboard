<template>
  <div class="p-4 max-w-2xl mx-auto w-full">
    <Form v-slot="$form" :resolver="resolver" :initial-values="initialValues" @submit="handleSubmit">
      <div class="mb-4 w-full">
        <label for="name" class="block mb-1">Company name</label>
        <InputText id="name" v-model="form.name" required fluid />
        <Message v-if="$form.name?.invalid" severity="error" size="small" variant="simple">{{
          $form.name.error?.message }}</Message>
      </div>
      <div class="mb-4 w-full">
        <label for="logo" class="block mb-1">Company logo</label>
        <InputText id="logo" v-model="form.logo" fluid />
        <Message v-if="$form.logo?.invalid" severity="error" size="small" variant="simple">{{
          $form.logo.error?.message }}</Message>
      </div>
      <div class="mb-4 w-full">
        <label for="role" class="block mb-1">Role</label>
        <Select id="role" v-model="form.role" :options="roles" placeholder="Select a Role" fluid required></Select>
        <Message v-if="$form.role?.invalid" severity="error" size="small" variant="simple">{{
          $form.role.error?.message }}</Message>
      </div>
      <div class="mb-4 w-full">
        <label for="parent_company" class="block mb-1">Parent Company</label>
        <div class="flex gap-2 items-center w-full">
          <AutoComplete id="parent_company" v-model="form.parent_company" :suggestions="filteredParentCompanies"
            dropdown option-label="name" option-value="id" placeholder="Select a Parent Company" fluid
            @complete="searchParentCompanies" class="w-full">
            <template #option="{ option }">
              <div>
                <p v-html="highlightMatch(option.name)"></p>
                <p class="text-sm text-gray-500 italic" v-html="highlightMatch(option.role === 'SALES' ? 'Sales Group' :
                  option.role === 'DISTRIBUTOR' ? 'Distributor' : '')">
                </p>
              </div>
            </template>
          </AutoComplete>
          <i v-if="form.parent_company && form.parent_company.id"
            class="pi pi-times p-2 rounded-full text-red-500 hover:bg-red-100/50 cursor-pointer transition-colors duration-300"
            @click="form.parent_company = null"></i>
        </div>
        <span v-if="form?.parent_company?.name" class="text-sm font-bold italic">Selected: {{ form?.parent_company?.name
          }}</span>
        <Message v-if="$form.parent_company?.invalid" severity="error" size="small" variant="simple">{{
          $form.parent_company.error?.message }}</Message>
      </div>
      <Button type="submit" label="Save" icon="pi pi-check" class="mt-6" />
      <Button type="button" label="Cancel" severity="contrast" icon="pi pi-times" class="ml-2" @click="cancel" />
    </Form>
  </div>
</template>

<script setup>
import { ref, watch } from 'vue';
import { useToast } from 'primevue';
import { supabase } from '@/supabase';
import { zodResolver } from '@primevue/forms/resolvers/zod';
import { z } from 'zod';

const props = defineProps({
  company: {
    type: Object,
    default: () => ({}),
  },
  parentCompaniesList: {
    type: Array,
    required: true,
  },
  isEdit: {
    type: Boolean,
    default: false,
  },
});

const emit = defineEmits(['saved', 'cancel']);
const toast = useToast();
const roles = ref(['ADMIN', 'SALES', 'DEALER', 'DISTRIBUTOR', 'MASTER_DISTRIBUTOR', 'INTERNET', 'LANDSCAPE', 'GROUP']);
const eventQuery = ref('');
const filteredParentCompanies = ref([]);
const localParentCompaniesList = ref([]);

watch(() => props.parentCompaniesList, (newParentCompaniesList) => {
  localParentCompaniesList.value = [...newParentCompaniesList];
}, { immediate: true, deep: true });

const initialValues = ref({
  name: '',
  logo: '',
  role: '',
  parent_company: null,
});

const form = ref({
  name: '',
  logo: '',
  role: '',
  parent_company: null,
});

const resolver = ref(zodResolver(
  z.object({
    name: z.string().min(1, { message: 'Name is required.' }),
    logo: z.string().optional(),
    role: z.string().min(1, { message: 'Role is required.' }),
    parent_company: z.string().optional(),
  })
));

watch(() => props.company, (newCompany) => {
  if (props.isEdit && newCompany) {
    form.value = {
      ...newCompany,
    };

    if (newCompany?.parent_company && newCompany?.parent_company?.id) {
      form.value.parent_company = newCompany?.parent_company;
    }
  } else {
    form.value = {
      name: '',
      logo: '',
      role: '',
      parent_company: null,
    };
  }
}, { immediate: true });

const searchParentCompanies = (event) => {
  eventQuery.value = event.query;
  setTimeout(() => {
    if (!event.query.trim().length) {
      filteredParentCompanies.value = [...localParentCompaniesList.value];
    } else {
      const queryWords = event.query.toLowerCase().split(/\s+/);
      filteredParentCompanies.value = localParentCompaniesList.value.filter((company) => {
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

const handleSubmit = async ({ valid, values }) => {
  if (valid) {
    try {
      let companyForm = {
        name: form.value.name,
        logo: form.value.logo,
        role: form.value.role,
        parent_company: form.value?.parent_company?.id || null
      }
      if (props.isEdit) {
        const { error } = await supabase
          .from('Company')
          .update(companyForm)
          .eq('id', props.company.id)
          .select();

        if (error) throw error;
        toast.add({
          severity: 'success',
          summary: 'Success',
          detail: 'Company updated successfully',
          life: 3000,
        });
        emit('saved');
      } else {

        const { error } = await supabase
          .from('Company')
          .insert(companyForm)
        if (error) throw error;
        toast.add({
          severity: 'success',
          summary: 'Success',
          detail: 'Company created successfully',
          life: 3000,
        });
        emit('saved');
      }
    } catch (error) {
      console.error(error);
      toast.add({
        severity: 'error',
        summary: 'Error',
        detail: 'Something went wrong',
        life: 3000,
      });
    }
  }
}

const cancel = () => {
  emit('cancel');
}

</script>
