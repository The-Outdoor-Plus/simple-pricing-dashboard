<template>
  <div class="p-4">
    <DataTable v-model:filters="localFilters" :value="users" class="w-full" :paginator="true" :rows="rows"
      :totalRecords="totalRecords" :lazy="true" @page="onPage" dataKey="id" style="width: 100%"
      table-style="min-width: 100%;"
      paginatorTemplate="FirstPageLink PrevPageLink CurrentPageReport NextPageLink LastPageLink RowsPerPageDropdown"
      currentPageReportTemplate="{first} to {last} of {totalRecords}" filterDisplay="row"
      :globalFilterFields="['first_name', 'last_name', 'email', 'company.name']" :rowsPerPageOptions="[10, 25, 50]">
      <template #header>
        <div class="flex flex-wrap items-center justify-between gap-2">
          <span class="text-xl font-bold">User List</span>
        </div>
      </template>
      <Column style="min-width: 12rem" field="id" header="ID" :show-filter-menu="false">
        <template #body="slotProps">
          <div class="max-w-[175px]">
            <div class="overflow-hidden whitespace-nowrap text-ellipsis">
              {{ slotProps.data.id }}
            </div>
          </div>
        </template>
      </Column>
      <Column style="min-width: 12rem" field="first_name" header="First Name" :show-filter-menu="false">
        <template #filter="{ filterModel, filterCallback }">
          <InputText v-model="filterModel.value" type="text" @input="updateFilters(filterCallback)"
            placeholder="Search by First Name" />
        </template>
      </Column>
      <Column style="min-width: 12rem" field="last_name" header="Last Name" />
      <Column style="min-width: 20rem" field="email" header="Email" />
      <Column style="min-width: 15rem" field="company.name" header="Company" :show-filter-menu="false">
        <template #filter="{ filterModel, filterCallback }">
          <Select v-model="filterModel.value" @change="updateFilters(filterCallback)" :options="companies"
            option-label="name" option-value="id" placeholder="Filter by Company" style="min-width: 15rem"
            :show-clear="true" />
        </template>
      </Column>
      <Column style="min-width: 10rem" field="role" header="Role" />
      <Column style="min-width: 8rem" header="Actions">
        <template #body="slotProps">
          <Button icon="pi pi-pencil" rounded variant="outlined" severity="contrast" @click="editUser(slotProps.data)"
            class="mr-2" />
          <Button v-if="userCanBeDeleted(slotProps.data)" icon="pi pi-trash" rounded variant="outlined"
            severity="danger" @click="confirmDelete(slotProps.data)" class="p-button-danger" />
        </template>
      </Column>
    </DataTable>

    <Dialog v-model:visible="deleteDialogVisible" header="Confirm Delete" modal :style="{ width: '500px' }">
      <div class="flex items-center gap-2 text-lg">
        <i class="pi pi-exclamation-triangle text-3xl text-red-500"></i>
        <p>Are you sure you want to delete the user <b>{{ userToDelete.first_name }} {{ userToDelete.last_name }}</b>?
        </p>
      </div>
      <template #footer>
        <Button label="No" severity="contrast" icon="pi pi-times" @click="deleteDialogVisible = false" />
        <Button label="Yes" severity="danger" icon="pi pi-check" @click="deleteUser" />
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
  users: {
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
  companies: {
    type: Array,
    required: true,
  }
});

const userStore = useUserStore();
const emit = defineEmits(['update:filters', 'page']);
const localFilters = ref({});
const deleteDialogVisible = ref(false);
const userToDelete = ref(null);

// Initialize local filters
watch(() => props.filters, (newFilters) => {
  localFilters.value = { ...newFilters };
}, { immediate: true, deep: true });

const updateFilters = (callback) => {
  callback();
  emitFilterChange();
}

// Emit filter changes
const emitFilterChange = () => {
  emit('update:filters', { ...localFilters.value });
};

const test = (evt) => {
  console.log('test');
  console.log(evt);
}

// Method to handle pagination
const onPage = (event) => {
  emit('page', event); // Emit page change event to parent
};

// Edit user function
const editUser = (user) => {
  emit('edit-user', user);
};

// Confirm delete function
const confirmDelete = (user) => {
  userToDelete.value = user;
  deleteDialogVisible.value = true;
};

const userCanBeDeleted = (user) => {
  return userStore.currentUser.id !== user.id && user.email !== 'rodrigo@theoutdoorplus.com';
}

// Delete user function
const deleteUser = async () => {
  try {
    const { error } = await supabase
      .from('users')
      .delete()
      .eq('id', userToDelete.value.id);

    if (error) throw error;
    toast.add({
      severity: 'success',
      summary: 'Success',
      detail: 'User deleted successfully',
      life: 3000,
    });
    deleteDialogVisible.value = false;
    emit('update:filters', props.filters); // Refresh the user list
  } catch (error) {
    console.error('Error deleting user:', error);
    toast.add({
      severity: 'error',
      summary: 'Error',
      detail: 'Error deleting user',
      life: 3000,
    });
  }
};
</script>

<style scoped>
/* Add any additional styles here */
</style>
