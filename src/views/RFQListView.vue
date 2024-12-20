<template>
  <div class="p-6">
    <div class="mb-6 flex justify-between items-center">
      <h1 class="text-2xl font-semibold">Request For Quotes</h1>
      <Button label="New RFQ" icon="pi pi-plus" @click="router.push('/rfq')" />
    </div>

    <!-- Status filters -->
    <div class="mb-6 flex flex-wrap gap-2">
      <Button v-for="status in statuses" :key="status.value" :label="status.label"
        :class="['status-filter', { 'active': selectedStatus === status.value }]"
        :badge="statusCounts[status.value] || 0" @click="selectedStatus = status.value" />
    </div>

    <!-- RFQ Table -->
    <DataTable :value="filteredRfqs" :paginator="true" :rows="10" :loading="loading" stripedRows class="p-datatable-sm">
      <Column field="rfq_number" header="RFQ #" sortable>
        <template #body="{ data }">
          <router-link :to="'/rfq/' + data.id" class="text-primary-500 hover:text-primary-700">
            {{ data.rfq_number }}
          </router-link>
        </template>
      </Column>
      <Column field="created_at" header="Created" sortable>
        <template #body="{ data }">
          {{ new Date(data.created_at).toLocaleDateString() }}
        </template>
      </Column>
      <Column field="company_information.name" header="Company" sortable />
      <Column field="purchase_order_number" header="PO #" sortable />
      <Column field="status" header="Status" sortable>
        <template #body="{ data }">
          <Tag :severity="getStatusSeverity(data.status)" :value="data.status" />
        </template>
      </Column>
      <Column header="Actions">
        <template #body="{ data }">
          <div class="flex gap-2">
            <Button icon="pi pi-eye" text rounded @click="router.push('/rfq/' + data.id)" tooltip="View RFQ" />
          </div>
        </template>
      </Column>
    </DataTable>
  </div>
</template>

<script setup>
import { ref, computed, onMounted } from 'vue';
import { useRouter } from 'vue-router';
import { useUserStore } from '@/store/user';
import { supabase } from '@/supabase';

const router = useRouter();
const userStore = useUserStore();
const loading = ref(true);
const rfqs = ref([]);
const selectedStatus = ref('all');

const statuses = [
  { label: 'All', value: 'all' },
  { label: 'Draft', value: 'draft' },
  { label: 'Pending Review', value: 'pending_review' },
  { label: 'Approved', value: 'approved' },
  { label: 'Rejected', value: 'rejected' },
  { label: 'Completed', value: 'completed' }
];

const statusCounts = computed(() => {
  const counts = { all: rfqs.value.length };
  rfqs.value.forEach(rfq => {
    counts[rfq.status] = (counts[rfq.status] || 0) + 1;
  });
  return counts;
});

const filteredRfqs = computed(() => {
  if (selectedStatus.value === 'all') return rfqs.value;
  return rfqs.value.filter(rfq => rfq.status === selectedStatus.value);
});

const getStatusSeverity = (status) => {
  const severityMap = {
    draft: 'info',
    pending_review: 'warning',
    approved: 'success',
    rejected: 'danger',
    completed: 'success'
  };
  return severityMap[status] || 'info';
};

const loadRfqs = async () => {
  try {
    loading.value = true;
    const { data, error } = await supabase
      .from('rfq')
      .select('*')
      .order('created_at', { ascending: false });

    if (error) throw error;
    rfqs.value = data;
  } catch (error) {
    console.error('Error loading RFQs:', error);
  } finally {
    loading.value = false;
  }
};

const downloadPdf = async (rfq) => {
  // Implementation for PDF download
  console.log('Downloading PDF for RFQ:', rfq.rfq_number);
};

onMounted(() => {
  loadRfqs();
});
</script>

<style scoped>
.status-filter {
  &.active {
    @apply bg-primary-500 text-white;
  }
}
</style>
