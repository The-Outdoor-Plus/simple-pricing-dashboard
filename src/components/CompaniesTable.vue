<template>
  <div>
    <DataTable v-model:filters="localFilters" :value="companies" class="w-full" :paginator="true" :rows="rows"
      :totalRecords="totalRecords" :lazy="true" @page="onPage" dataKey="id" style="width: 100%"
      table-style="min-width: 100%;"
      paginatorTemplate="FirstPageLink PrevPageLink CurrentPageReport NextPageLink LastPageLink RowsPerPageDropdown"
      currentPageReportTemplate="{first} to {last} of {totalRecords}" filterDisplay="row"
      :globalFilterFields="['name', 'parent_company.name']" :rowsPerPageOptions="[10, 25, 50]">
      <template #header>
        <div class="flex flex-wrap items-center justify-between gap-2">
          <span class="text-xl font-bold">Company List</span>
        </div>
      </template>
      <Column style="min-width: 12rem" field="id" header="ID" :show-filter-menu="false">
        <template #body="slotProps">
          {{ slotProps.data.id }}
        </template>
      </Column>
      <Column style="min-width: 12rem">
        <template #body="slotProps">
          <img v-if="slotProps.data.logo" :src="slotProps.data.logo" alt="Company Logo"
            class="max-h-[60px] max-w-[180px]" />
        </template>
      </Column>
      <Column style="min-width: 12rem" field="name" header="Name" :show-filter-menu="false">
        <template #filter="{ filterModel, filterCallback }">
          <InputText v-model="filterModel.value" type="text" @input="updateFilters(filterCallback)"
            placeholder="Search by Name" />
        </template>
      </Column>
      <Column style="min-width: 12rem" field="parent_company.name" header="Signed Up By" :show-filter-menu="false">
        <template #filter="{ filterModel, filterCallback }">
          <AutoComplete v-model="filterModel.value" dropdown @change="updateFilters(filterCallback)"
            :suggestions="filteredParentCompanies" option-label="name" option-value="id"
            placeholder="Filter by Parent Company" style="min-width: 15rem" :show-clear="true"
            @complete="searchParentCompanies">
            <template #option="slotProps">
              <div>
                <p v-html="highlightMatch(slotProps.option.name)"></p>
                <p class="text-sm text-gray-500 italic" v-html="highlightMatch(slotProps.option.role === 'SALES' ? 'Sales Group' :
                  slotProps.option.role === 'DISTRIBUTOR' ?
                    'Distributor' : '')">
                </p>
              </div>
            </template>
          </AutoComplete>
        </template>
      </Column>

      <Column style="min-width: 10rem" field="role" header="Role" />

      <Column style="min-width: 8rem" header="Actions">
        <template #body="slotProps">
          <Button icon="pi pi-pencil" rounded variant="outlined" severity="contrast"
            @click="editCompany(slotProps.data)" class="mr-2" />
          <Button v-if="companyCanBeDeleted(slotProps.data)" icon="pi pi-trash" rounded variant="outlined"
            severity="danger" @click="confirmDelete(slotProps.data)" class="p-button-danger" />
        </template>
      </Column>
    </DataTable>

    <Dialog v-model:visible="deleteDialogVisible" header="Confirm Delete" modal :style="{ width: '500px' }">
      <div class="flex items-center gap-2 text-lg">
        <i class="pi pi-exclamation-triangle text-3xl text-red-500"></i>
        <p>Are you sure you want to delete the company <b>{{ companyToDelete.name }}</b>?
        </p>
      </div>
      <template #footer>
        <Button label="No" severity="contrast" icon="pi pi-times" @click="deleteDialogVisible = false" />
        <Button label="Yes" severity="danger" icon="pi pi-check" @click="deleteCompany" />
      </template>
    </Dialog>
  </div>
</template>

<script setup>
import { defineProps, defineEmits, ref, watch } from 'vue';
import { useUserStore } from '@/store/user';
import { supabase } from '@/supabase';
import { useToast } from 'primevue/usetoast';

const toast = useToast();

const props = defineProps({
  companies: {
    type: Array,
    required: true,
  },
  totalRecords: {
    type: Number,
    required: true,
  },
  rows: {
    type: Number,
    required: true,
  },
  filters: {
    type: Object,
    required: true,
  },
  parentCompaniesList: {
    type: Array,
    required: true,
  },
});

const userStore = useUserStore();
const emit = defineEmits(['update:filters', 'page', 'edit-company']);
const localFilters = ref({});
const localParentCompaniesList = ref([]);
const deleteDialogVisible = ref(false);
const companyToDelete = ref(null);
const eventQuery = ref('');
const filteredParentCompanies = ref([]);

watch(() => props.parentCompaniesList, (newParentCompaniesList) => {
  localParentCompaniesList.value = [...newParentCompaniesList];
}, { immediate: true, deep: true });

watch(() => props.filters, (newFilters) => {
  localFilters.value = { ...newFilters };
}, { immediate: true, deep: true });

const updateFilters = (callback) => {
  callback();
  emitFilterChange();
}

const emitFilterChange = () => {
  emit('update:filters', { ...localFilters.value });
};

const onPage = (event) => {
  emit('page', event);
};

const editCompany = (company) => {
  emit('edit-company', company);
};

const confirmDelete = (company) => {
  companyToDelete.value = company;
  deleteDialogVisible.value = true;
};

const companyCanBeDeleted = (company) => {
  return company.name !== 'The Outdoor Plus';
}

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

const deleteCompany = async () => {
  try {
    const { error } = await supabase.from('Company').delete().eq('id', companyToDelete.value.id);
    if (error) throw error;
    toast.add({
      severity: 'success',
      summary: 'Success',
      detail: 'Company deleted successfully',
      life: 3000,
    });

    deleteDialogVisible.value = false;
    emit('update:filters', props.filters);
  } catch (error) {
    console.error('Error deleting company:', error);
    toast.add({
      severity: 'error',
      summary: 'Error',
      detail: 'Error deleting company',
      life: 3000,
    });
  }
}

</script>
