<template>
  <div>
    <h1 class="text-2xl font-bold mb-6">Emails</h1>
    <Toolbar class="mb-6">
      <template #end>
        <Button label="New Email" icon="pi pi-plus" class="mr-2" @click="openEmailForm(null)"></Button>
      </template>
    </Toolbar>
    <EmailsTable :emails="emails" :totalRecords="totalRecords" :rows="rows" :filters="filters"
      @edit-email="openEmailForm" @view-email="viewEmail" @page="onPage" @update:filters="updateFilters"
      @delete-email="deleteEmail" />
    <Dialog v-model:visible="showEmailForm" class="w-[92vw] md:w-[75vw] lg:w-[60vw] xl:w-[45vw] 2xl:w-[750px]"
      :header="selectedEmail ? 'Edit Email' : 'New Email'" :modal="true">
      <EmailForm :email="selectedEmail" :isEdit="isEdit" :viewOnly="viewOnly" @saved="emailSaved"
        @cancel="showEmailForm = false" />
    </Dialog>
  </div>
</template>

<script setup>
import { ref, onMounted, watch } from 'vue';
import { useRouter } from 'vue-router';
import EmailsTable from '@/components/EmailsTable.vue';
import EmailForm from '@/components/EmailForm.vue';
import { supabase } from '@/supabase';
import { FilterMatchMode } from '@primevue/core/api';
import { useToast } from 'primevue/usetoast';

const router = useRouter();
const toast = useToast();
const showEmailForm = ref(false);
const selectedEmail = ref(null);
const isEdit = ref(false);
const viewOnly = ref(false);
const emails = ref([]);
const totalRecords = ref(0);
const rows = ref(10);
const filters = ref({
  'subject': { value: null, matchMode: FilterMatchMode.CONTAINS },
  'to_email': { value: null, matchMode: FilterMatchMode.CONTAINS },
});

// Fetch emails with filters and pagination
const fetchEmails = async (page = 0, rowsPerPage = 10) => {
  try {
    let query = supabase
      .from('emails')
      .select(`*`, { count: 'exact' });

    const { data, error, count } = await query
      .order('created_at', { ascending: false })
      .range(page * rowsPerPage, (page + 1) * rowsPerPage - 1);

    if (error) throw error;
    emails.value = data;
    totalRecords.value = count;
  } catch (error) {
    console.error('Error fetching emails:', error);
    toast.add({ severity: 'error', summary: 'Error', detail: 'Failed to fetch emails', life: 3000 });
  }
};

const openEmailForm = (email = null) => {
  selectedEmail.value = email;
  isEdit.value = !!email;
  showEmailForm.value = true;
};

const viewEmail = (email = null) => {
  selectedEmail.value = email;
  viewOnly.value = true && !!email;
  showEmailForm.value = true;
}

const deleteEmail = async (email) => {
  try {
    const { error } = await supabase
      .from('emails')
      .delete()
      .eq('id', email.id);

    if (error) throw error;

    toast.add({ severity: 'success', summary: 'Success', detail: 'Email deleted successfully', life: 3000 });
    fetchEmails();
  } catch (error) {
    console.error('Error deleting email:', error);
    toast.add({ severity: 'error', summary: 'Error', detail: 'Failed to delete email', life: 3000 });
  }
};

const onPage = (event) => {
  fetchEmails(event.page, event.rows);
};

const updateFilters = (newFilters) => {
  filters.value = { ...newFilters };
  fetchEmails();
};

const emailSaved = () => {
  fetchEmails();
  selectedEmail.value = null;
  showEmailForm.value = false;
};

watch(() => showEmailForm.value, () => {
  if (!showEmailForm.value) {
    selectedEmail.value = null;
    viewOnly.value = false;
  }
});

onMounted(async () => {
  await fetchEmails();
});
</script>

<style scoped>
/* Add any additional styles here */
</style>
