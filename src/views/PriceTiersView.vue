<template>
  <div class="card">
    <div class="flex justify-between items-center mb-4">
      <h1 class="text-2xl font-bold">Price Tiers</h1>
      <Button label="New Price Tier" icon="pi pi-plus" @click="navigateToCreate" />
    </div>

    <DataTable :value="priceTiers" :loading="loading" dataKey="id" :paginator="true" :rows="10"
      :rowsPerPageOptions="[5, 10, 25, 50]"
      paginatorTemplate="FirstPageLink PrevPageLink PageLinks NextPageLink LastPageLink CurrentPageReport RowsPerPageDropdown"
      currentPageReportTemplate="Showing {first} to {last} of {totalRecords} price tiers" responsiveLayout="scroll"
      class="p-datatable-sm">
      <Column field="name" header="Name" sortable>
        <template #body="{ data }">
          <div class="font-medium">{{ data.name }}</div>
        </template>
      </Column>
      <Column field="division" header="Division" sortable />
      <Column field="description" header="Description">
        <template #body="{ data }">
          <div class="truncate max-w-xs">{{ data.description }}</div>
        </template>
      </Column>
      <Column field="is_active" header="Status" sortable>
        <template #body="{ data }">
          <Tag :severity="data.is_active ? 'success' : 'danger'" :value="data.is_active ? 'Active' : 'Inactive'" />
        </template>
      </Column>
      <Column header="Actions" :exportable="false" style="min-width:8rem">
        <template #body="{ data }">
          <div class="flex gap-2">
            <Button icon="pi pi-pencil" rounded outlined aria-label="Edit" @click="navigateToEdit(data.id)" />
            <!-- <Button :icon="data.is_active ? 'pi pi-eye-slash' : 'pi pi-eye'"
              :severity="data.is_active ? 'danger' : 'success'" rounded outlined
              :aria-label="data.is_active ? 'Deactivate' : 'Activate'" @click="toggleActive(data)" /> -->
          </div>
        </template>
      </Column>
    </DataTable>
  </div>
</template>

<script setup>
import { ref, onMounted } from 'vue';
import { useRouter } from 'vue-router';
import { useToast } from 'primevue/usetoast';
import { supabase } from '@/supabase';

const router = useRouter();
const toast = useToast();
const priceTiers = ref([]);
const loading = ref(true);

const fetchPriceTiers = async () => {
  try {
    loading.value = true;
    const { data, error } = await supabase
      .from('price_tiers')
      .select('*')
      .order('created_at', { ascending: false });

    if (error) throw error;
    priceTiers.value = data;
  } catch (error) {
    toast.add({
      severity: 'error',
      summary: 'Error',
      detail: 'Failed to fetch price tiers',
      life: 3000
    });
  } finally {
    loading.value = false;
  }
};

const toggleActive = async (priceTier) => {
  try {
    const { error } = await supabase
      .from('price_tiers')
      .update({ is_active: !priceTier.is_active })
      .eq('id', priceTier.id);

    if (error) throw error;

    // Update local state
    const index = priceTiers.value.findIndex(p => p.id === priceTier.id);
    if (index !== -1) {
      priceTiers.value[index].is_active = !priceTier.is_active;
    }

    toast.add({
      severity: 'success',
      summary: 'Success',
      detail: `Price tier ${priceTier.is_active ? 'deactivated' : 'activated'} successfully`,
      life: 3000
    });
  } catch (error) {
    toast.add({
      severity: 'error',
      summary: 'Error',
      detail: 'Failed to update price tier status',
      life: 3000
    });
  }
};

const navigateToCreate = () => {
  router.push({ name: 'Create Price Tier' });
};

const navigateToEdit = (id) => {
  router.push({ name: 'Edit Price Tier', params: { id } });
};

onMounted(() => {
  fetchPriceTiers();
});
</script>
