<template>
  <DataTable :value="emails" :paginator="true" :rows="rows" :totalRecords="totalRecords" :lazy="true" :filters="filters"
    @page="onPage"
    paginatorTemplate="FirstPageLink PrevPageLink PageLinks NextPageLink LastPageLink CurrentPageReport RowsPerPageDropdown"
    :rowsPerPageOptions="[5, 10, 20, 50]" currentPageReportTemplate="Showing {first} to {last} of {totalRecords} emails"
    responsiveLayout="scroll" class="p-datatable-sm">

    <Column field="name" header="Name" sortable style="min-width: 200px">
    </Column>

    <Column field="created_at" header="Created At" sortable style="min-width: 150px">
      <template #body="{ data }">
        {{ new Date(data.created_at).toLocaleString() }}
      </template>
    </Column>

    <Column field="updated_at" header="Updated At" sortable style="min-width: 150px">
      <template #body="{ data }">
        {{ new Date(data.updated_at).toLocaleString() }}
      </template>
    </Column>

    <Column header="Actions" style="min-width: 150px">
      <template #body="{ data }">
        <div class="flex gap-2">
          <Button icon="pi pi-eye" class="p-button-rounded p-button-text" @click="$emit('view-email', data)"
            tooltip="View" />
          <Button icon="pi pi-pencil" class="p-button-rounded p-button-text p-button-warning"
            @click="$emit('edit-email', data)" tooltip="Edit" />
          <Button icon="pi pi-trash" class="p-button-rounded p-button-text p-button-danger" @click="confirmDelete(data)"
            tooltip="Delete" />
        </div>
      </template>
    </Column>
  </DataTable>
  <ConfirmDialog></ConfirmDialog>
</template>

<script setup>
import { useConfirm } from "primevue/useconfirm";

const confirm = useConfirm();

const props = defineProps({
  emails: {
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
});

const emit = defineEmits(['edit-email', 'delete-email', 'page', 'update:filters']);

const onPage = (event) => {
  emit('page', event);
};

const getStatusSeverity = (status) => {
  const severityMap = {
    'pending': 'warning',
    'sent': 'success',
    'failed': 'danger',
    'draft': 'info'
  };
  return severityMap[status] || 'info';
};

const confirmDelete = (email) => {
  confirm.require({
    message: 'Are you sure you want to delete this email?',
    header: 'Delete Confirmation',
    icon: 'pi pi-exclamation-triangle',
    accept: () => {
      emit('delete-email', email);
    },
  });
};
</script>

<style scoped>
.p-column-filter {
  width: 100%;
}
</style>
