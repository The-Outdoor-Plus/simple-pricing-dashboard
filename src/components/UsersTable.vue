<template>
  <div>
    <DataTable v-model:filters="localFilters" :value="users" class="w-full" :paginator="true" :rows="rows"
      :totalRecords="totalRecords" :lazy="true" @page="onPage" dataKey="id" style="width: 100%"
      table-style="min-width: 100%; font-size: 14px;"
      paginatorTemplate="FirstPageLink PrevPageLink CurrentPageReport NextPageLink LastPageLink RowsPerPageDropdown"
      currentPageReportTemplate="{first} to {last} of {totalRecords}" filterDisplay="row"
      :globalFilterFields="['first_name', 'last_name', 'email', 'company.name']" :rowsPerPageOptions="[10, 25, 50]">
      <template #header>
        <div class="flex flex-wrap items-center justify-between gap-2">
          <span class="text-xl font-bold">User List</span>
        </div>
      </template>
      <Column style="min-width: 10rem" field="id" header="ID" :show-filter-menu="false">
        <template #body="slotProps">
          {{ slotProps.data.id }}
        </template>
      </Column>
      <Column style="min-width: 10rem" field="first_name" header="First Name" :show-filter-menu="false">
        <template #filter="{ filterModel, filterCallback }">
          <InputText v-model="filterModel.value" type="text" @input="updateFilters(filterCallback)"
            placeholder="Search by First Name" />
        </template>
      </Column>
      <Column style="min-width: 10rem" field="last_name" header="Last Name" />
      <Column style="min-width: 16rem" field="email" header="Email" />
      <Column style="min-width: 12rem" field="company.name" header="Company" :show-filter-menu="false">
        <template #filter="{ filterModel, filterCallback }">
          <AutoComplete v-model="filterModel.value" dropdown @change="updateFilters(filterCallback)"
            :suggestions="filteredCompanies" option-label="name" option-value="id" placeholder="Filter by Company"
            style="min-width: 12rem" :show-clear="true" @complete="searchCompanies">
            <template #option="slotProps">
              <div>
                <p v-html="highlightMatch(slotProps.option.name)"></p>
                <p class="text-sm text-gray-500 italic capitalize"
                  v-html="highlightMatch(slotProps.option.role.toLowerCase())">
                </p>
              </div>
            </template>
          </AutoComplete>
        </template>
      </Column>
      <Column style="min-width: 10rem" field="role" header="Role" />
      <Column style="min-width: 6rem" field="first_time" header="Confirmed">
        <template #body="slotProps">
          <i class="pi pi-check-circle text-green-500" v-if="!slotProps.data.first_time"></i>
          <i class="pi pi-times-circle text-red-500" v-else></i>
        </template>
      </Column>
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
const emit = defineEmits(['update:filters', 'page', 'edit-user']);
const localFilters = ref({});
const deleteDialogVisible = ref(false);
const userToDelete = ref(null);
const eventQuery = ref('');
const filteredCompanies = ref([]);
const localCompaniesList = ref([]);

watch(() => props.companies, (newCompanies) => {
  localCompaniesList.value = [...newCompanies];
}, { immediate: true, deep: true });

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
