<template>
  <div>
    <h1 class="text-2xl font-bold mb-6">Users</h1>
    <Toolbar class="mb-6">
      <template #end>
        <Button label="New User" icon="pi pi-plus" class="mr-2" @click="openUserForm(null)"></Button>
      </template>
    </Toolbar>
    <UsersTable :users="users" :totalRecords="totalRecords" :rows="rows" :filters="filters" :companies="companies"
      @edit-user="openUserForm" @page="onPage" @update:filters="updateFilters" />
    <Dialog v-model:visible="showUserForm" class="w-[92vw] md:w-[75vw] lg:w-[60vw] xl:w-[45vw] 2xl:w-[750px]"
      :header="selectedUser ? 'Edit User' : 'New User'" :modal="true">
      <UserForm :user="selectedUser" :companies="companies" :isEdit="isEdit" @saved="userSaved"
        @cancel="showUserForm = false" />
    </Dialog>
  </div>
</template>

<script setup>
import { ref, onMounted } from 'vue';
import { useRouter } from 'vue-router';
import UsersTable from '@/components/UsersTable.vue';
import UserForm from '@/components/UserForm.vue';
import { supabase } from '@/supabase';
import { FilterMatchMode } from '@primevue/core/api';

const router = useRouter();
const showUserForm = ref(false);
const selectedUser = ref(null);
const isEdit = ref(false);
const companies = ref([]);
const users = ref([]);
const totalRecords = ref(0);
const rows = ref(10); // Number of rows per page
const filters = ref({
  'company.name': { value: null, matchMode: FilterMatchMode.EQUALS },
  'first_name': { value: null, matchMode: FilterMatchMode.CONTAINS },
});

// Fetch users with filters and pagination
const fetchUsers = async (page = 0, rowsPerPage = 10) => {
  try {
    let query = supabase
      .from('users')
      .select(`
        id,
        first_name,
        last_name,
        email,
        avatar_url,
        company(
          id,
          name,
          role
        ),
        role
      `, { count: 'exact' });

    if (filters.value['company.name'].value && filters.value['company.name'].value.id) {
      query = supabase
        .from('users')
        .select(`
        id,
        first_name,
        last_name,
        email,
        avatar_url,
        company!inner(
          id,
          name,
          role
        ),
        role
      `, { count: 'exact' })
        .eq('company.id', filters.value['company.name'].value.id);
    }

    if (filters.value['first_name'].value && (filters.value['first_name'].value.length > 2 || filters.value['first_name'].value.length === 0)) {
      query.ilike('first_name', `%${filters.value['first_name'].value}%`);
    }

    const { data, error, count } = await query.range(page * rowsPerPage, (page + 1) * rowsPerPage - 1);
    if (error) throw error;
    users.value = data;
    totalRecords.value = count; // Set total records for pagination
  } catch (error) {
    console.error('Error fetching users:', error);
  }
};

// Fetch companies for the form
const fetchCompanies = async () => {
  try {
    const { data, error } = await supabase.from('Company').select('id, name, role');
    if (error) throw error;
    companies.value = data;
  } catch (error) {
    console.error('Error fetching companies:', error);
  }
};

const openUserForm = (user = null) => {
  selectedUser.value = user;
  isEdit.value = !!user; // Set to true if editing
  showUserForm.value = true;
};

const onPage = (event) => {
  fetchUsers(event.page, event.rows); // Fetch new data based on pagination
};

const updateFilters = (newFilters) => {
  filters.value = { ...newFilters };
  fetchUsers(); // Fetch users with updated filters
};

const userSaved = () => {
  fetchUsers();
  selectedUser.value = null;
  showUserForm.value = false;
};

onMounted(async () => {
  await fetchUsers(); // Initial fetch
  await fetchCompanies();
});
</script>

<style scoped>
/* Add any additional styles here */
</style>
