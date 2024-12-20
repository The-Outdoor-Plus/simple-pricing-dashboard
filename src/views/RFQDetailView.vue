<template>
  <div class="p-6">
    <div v-if="loading" class="flex justify-center items-center h-64">
      <ProgressSpinner />
    </div>

    <div v-else-if="rfq" class="space-y-6">
      <!-- Header -->
      <div class="flex justify-between items-center">
        <div>
          <h1 class="text-2xl font-semibold">Request For Quote #: {{ rfq.rfq_number }}</h1>
          <p class="text-gray-600">Created on {{ new Date(rfq.created_at).toLocaleDateString() }}</p>
        </div>
        <div class="flex gap-2">
          <Button icon="pi pi-file-pdf" label="Download PDF" severity="secondary" @click="generatePDF" />
          <Button icon="pi pi-send" label="Send Email" severity="primary" @click="sendEmail" />
        </div>
      </div>

      <!-- Status -->
      <div class="bg-gray-50 p-4 rounded-lg">
        <div class="flex justify-between items-center">
          <div class="flex items-center gap-2">
            <span class="font-medium">Status:</span>
            <div :style="{ backgroundColor: getStatusSeverity(rfq.status) }" class="px-2 py-1 rounded-md">
              <p class="text-sm font-medium" :style="{ color: getStatusColor(rfq.status) }">{{ rfq.status }}</p>
            </div>
          </div>
          <div v-if="canChangeStatus" class="flex items-center gap-2">
            <Dropdown v-model="selectedStatus" :options="availableStatuses" optionLabel="label"
              placeholder="Change Status" class="w-48" />
            <Button label="Update" @click="updateStatus" :loading="updating" />
          </div>
        </div>
      </div>

      <!-- Company and Shipping Information -->
      <div class="grid grid-cols-1 md:grid-cols-2 gap-6">
        <Card>
          <template #title>Company Information</template>
          <template #content>
            <div class="space-y-2">
              <p><span class="font-medium">Company:</span> {{ rfq.company_information.name }}</p>
              <p><span class="font-medium">Contact:</span> {{ rfq.company_information.contact }}</p>
              <p><span class="font-medium">Address:</span> {{ rfq.company_information.address }}</p>
              <p><span class="font-medium">City:</span> {{ rfq.company_information.city }}</p>
              <p><span class="font-medium">State:</span> {{ rfq.company_information.state }}</p>
              <p><span class="font-medium">ZIP:</span> {{ rfq.company_information.zip }}</p>
              <p><span class="font-medium">Phone:</span> {{ rfq.company_information.phone }}</p>
              <p><span class="font-medium">Email:</span> {{ rfq.company_information.email }}</p>
            </div>
          </template>
        </Card>

        <Card>
          <template #title>Ship To Information</template>
          <template #content>
            <div class="space-y-2">
              <p><span class="font-medium">Company:</span> {{ rfq.ship_to_information.name }}</p>
              <p><span class="font-medium">Contact:</span> {{ rfq.ship_to_information.contact }}</p>
              <p><span class="font-medium">Address:</span> {{ rfq.ship_to_information.address }}</p>
              <p><span class="font-medium">City:</span> {{ rfq.ship_to_information.city }}</p>
              <p><span class="font-medium">State:</span> {{ rfq.ship_to_information.state }}</p>
              <p><span class="font-medium">ZIP:</span> {{ rfq.ship_to_information.zip }}</p>
              <p><span class="font-medium">Phone:</span> {{ rfq.ship_to_information.phone }}</p>
              <p><span class="font-medium">Email:</span> {{ rfq.ship_to_information.email }}</p>
            </div>
          </template>
        </Card>
      </div>

      <!-- Items -->
      <Card>
        <template #title>Items</template>
        <template #content>
          <DataTable :value="rfq.items" stripedRows>
            <Column field="name" header="Item" />
            <Column field="sku" header="SKU" />
            <Column field="quantity" header="Quantity" />
            <Column field="price" header="Price">
              <template #body="{ data }">
                {{ new Intl.NumberFormat('en-US', { style: 'currency', currency: 'USD' }).format(data.price) }}
              </template>
            </Column>
            <Column header="Total">
              <template #body="{ data }">
                {{ new Intl.NumberFormat('en-US', { style: 'currency', currency: 'USD' }).format(data.price *
                  data.quantity) }}
              </template>
            </Column>
          </DataTable>
          <div class="flex justify-end mt-4">
            <div class="text-right">
              <p class="font-medium">Total: {{ calculateTotal }}</p>
            </div>
          </div>
        </template>
      </Card>

      <!-- Additional Notes -->
      <Card v-if="rfq.additional_notes">
        <template #title>Additional Notes</template>
        <template #content>
          <p class="whitespace-pre-wrap">{{ rfq.additional_notes }}</p>
        </template>
      </Card>

      <h3 class="font-medium text-2xl mb-4">RFQ Preview</h3>

      <div class="preview-container">
        <RFQPreview :rfq-number="rfq.rfq_number" :company-info="rfq.company_information"
          :shipping-info="rfq.ship_to_information" :purchase-order="rfq.purchase_order" :items="rfq.items"
          :additional-notes="rfq.additional_notes" />
      </div>
    </div>
  </div>
</template>

<script setup>
import { ref, computed, onMounted } from 'vue';
import { useRoute, useRouter } from 'vue-router';
import { useUserStore } from '@/store/user';
import { supabase } from '@/supabase';
import { useToast } from 'primevue/usetoast';

const route = useRoute();
const router = useRouter();
const userStore = useUserStore();
const toast = useToast();

const rfq = ref(null);
const loading = ref(true);
const updating = ref(false);
const selectedStatus = ref(null);

const availableStatuses = [
  { label: 'Draft', value: 'draft' },
  { label: 'Pending Review', value: 'pending_review' },
  { label: 'Approved', value: 'approved' },
  { label: 'Rejected', value: 'rejected' },
  { label: 'Completed', value: 'completed' }
];

const canChangeStatus = computed(() => {
  const role = userStore.user?.user_metadata?.role;
  return ['ADMIN', 'MANAGER', 'SALES'].includes(role);
});

const calculateTotal = computed(() => {
  if (!rfq.value?.items) return '$0.00';
  const total = rfq.value.items.reduce((sum, item) => sum + (item.price * item.quantity), 0);
  return new Intl.NumberFormat('en-US', { style: 'currency', currency: 'USD' }).format(total);
});

const getStatusSeverity = (status) => {
  const severityMap = {
    'RFQ Sent': '#abd0f3',
  };
  return severityMap[status] || '#abd0f3';
};

const getStatusColor = (status) => {
  const colorMap = {
    'RFQ Sent': '#000000',
  };
  return colorMap[status] || '#000000';
};

const loadRFQ = async () => {
  try {
    loading.value = true;
    const { data, error } = await supabase
      .from('rfq')
      .select('*')
      .eq('id', route.params.id)
      .single();

    if (error) throw error;
    rfq.value = data;
    selectedStatus.value = { label: data.status, value: data.status };
  } catch (error) {
    console.error('Error loading RFQ:', error);
    toast.add({
      severity: 'error',
      summary: 'Error',
      detail: 'Failed to load RFQ details',
      life: 3000
    });
  } finally {
    loading.value = false;
  }
};

const updateStatus = async () => {
  if (!selectedStatus.value) return;

  try {
    updating.value = true;
    const { error } = await supabase
      .from('rfq')
      .update({ status: selectedStatus.value.value })
      .eq('id', rfq.value.id);

    if (error) throw error;

    rfq.value.status = selectedStatus.value.value;
    toast.add({
      severity: 'success',
      summary: 'Status Updated',
      detail: 'RFQ status has been updated successfully',
      life: 3000
    });
  } catch (error) {
    console.error('Error updating status:', error);
    toast.add({
      severity: 'error',
      summary: 'Error',
      detail: 'Failed to update status',
      life: 3000
    });
  } finally {
    updating.value = false;
  }
};

const generatePDF = async () => {
  // Wait for any pending updates to complete
  await nextTick();

  // Get the preview element
  const element = document.querySelector('.rfq-preview');

  if (!element) {
    console.error('Preview element not found');
    return;
  }

  // Configure PDF options with proper width handling
  const opt = {
    margin: [15, 15, 15, 15],
    filename: `RFQ-${new Date().getTime()}.pdf`,
    image: { type: 'png', quality: 0.98 },
    html2canvas: {
      scale: 2,
      useCORS: true,
      letterRendering: true,
      width: 794, // A4 width in pixels
      windowWidth: 794,
    },
    jsPDF: {
      unit: 'mm',
      format: 'a4',
      orientation: 'portrait',
      compress: true,
    },
  };

  try {
    // Store original styles
    const originalStyles = {
      transform: element.style.transform,
      width: element.style.width,
      margin: element.style.margin,
      padding: element.style.padding,
    };

    // Reset styles for PDF generation
    element.style.transform = 'none';
    element.style.width = '794px';
    element.style.margin = '0';
    element.style.padding = '40px';

    // Force layout recalculation
    element.offsetHeight;

    // Generate PDF
    await html2pdf().from(element).set(opt).save();

    // Restore original styles
    Object.assign(element.style, originalStyles);
  } catch (error) {
    console.error('Error generating PDF:', error);
  }
};

const sendEmail = async () => {
  // TODO: Implement email sending
  console.log('Sending email...');
};

onMounted(() => {
  loadRFQ();
});
</script>

<style scoped>
@media print {
  .preview-container {
    padding: 0 !important;
    overflow: visible !important;
  }

  .rfq-preview {
    transform: none !important;
    margin: 0 !important;
    padding: 20mm !important;
  }
}
</style>
