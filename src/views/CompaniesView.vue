<template>
  <div>
    <h1 class="text-2xl font-bold mb-6">Companies</h1>
    <Toolbar class="mb-6">
      <template #end>
        <Button label="New Company" icon="pi pi-plus" class="mr-2" @click="openCompanyForm(null)"></Button>
      </template>
    </Toolbar>
    <CompaniesTable :companies="companies" :totalRecords="totalRecords" :rows="rows" :filters="filters"
      :parentCompaniesList="parentCompaniesList" @page="onPage" @update:filters="updateFilters"
      @edit-company="openCompanyForm" />
    <Dialog v-model:visible="showCompanyForm" class="w-[92vw] md:w-[75vw] lg:w-[60vw] xl:w-[45vw] 2xl:w-[750px]"
      :header="selectedCompany ? 'Edit Company' : 'New Company'" :modal="true">
      <CompanyForm :company="selectedCompany" :parentCompaniesList="parentCompaniesList" :isEdit="isEdit"
        @saved="companySaved" @cancel="showCompanyForm = false" />
    </Dialog>
  </div>
</template>

<script setup>
import { ref, onMounted } from 'vue';
import CompaniesTable from '@/components/CompaniesTable.vue';
import { supabase } from '@/supabase';
import { FilterMatchMode } from '@primevue/core/api';

const showCompanyForm = ref(false);
const selectedCompany = ref(null);
const isEdit = ref(false);
const companies = ref([]);
const totalRecords = ref(0);
const rows = ref(10);
const parentCompaniesList = ref([]);
const filters = ref({
  'name': { value: null, matchMode: FilterMatchMode.CONTAINS },
  'parent_company.name': { value: null, matchMode: FilterMatchMode.EQUALS },
});

const fetchCompanies = async (page = 0, rowsPerPage = 10) => {
  try {
    let query = supabase
      .from('Company')
      .select(`
        id,
        name,
        logo,
        role,
        parent_company(
          id,
          name,
          logo,
          role
        ),
        role
      `, { count: 'exact' });

    if (filters.value['parent_company.name'].value && filters.value['parent_company.name'].value.id) {
      query = supabase
        .from('Company')
        .select(`
        id,
        name,
        logo,
        role,
        parent_company!inner(
          id,
          name,
          logo,
          role
        )
      `, { count: 'exact' })
        .eq('parent_company.id', filters.value['parent_company.name'].value.id);
    }

    if (filters.value['name'].value && (filters.value['name'].value.length > 2 || filters.value['name'].value.length === 0)) {
      query.ilike('name', `%${filters.value['name'].value}%`);
    }


    const { data, error, count } = await query.range(page * rowsPerPage, (page + 1) * rowsPerPage - 1);
    if (error) throw error;
    companies.value = data;
    totalRecords.value = count;
  } catch (error) {
    console.error('Error fetching companies:', error);
  }
}

const fetchParentCompaniesList = async () => {
  try {
    const { data, error } = await supabase.from('Company').select('id, name, role').in('role', ['SALES', 'DISTRIBUTOR']);
    if (error) throw error;
    parentCompaniesList.value = data;
  } catch (error) {
    console.error('Error fetching parent companies:', error);
  }
}

const openCompanyForm = (company = null) => {
  selectedCompany.value = company;
  isEdit.value = !!company;
  showCompanyForm.value = true;
}

const onPage = (event) => {
  fetchCompanies(event.page, event.rows);
}

const updateFilters = (newFilters) => {
  filters.value = { ...newFilters };
  fetchCompanies();
}

const companySaved = () => {
  fetchCompanies();
  selectedCompany.value = null;
  showCompanyForm.value = false;
}

onMounted(async () => {
  await fetchCompanies();
  await fetchParentCompaniesList();
});
</script>
