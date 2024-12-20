<template>
  <div class="p-6">
    <!-- Form Section -->
    <div class="mb-8 bg-white p-6 rounded-lg shadow">
      <h2 class="text-xl font-semibold mb-6">RFQ Information</h2>

      <div class="grid grid-cols-1 md:grid-cols-2 gap-8">
        <!-- Company Information -->
        <div class="space-y-4">
          <h3 class="font-medium text-lg">Company Information</h3>
          <div class="grid grid-cols-1 gap-4">
            <InputText v-model="companyInfo.name" placeholder="Company Name" readonly />
            <InputText v-model="companyInfo.contact" placeholder="Contact Name" />
            <InputText v-model="companyInfo.address" placeholder="Address" />
            <div class="grid grid-cols-3 gap-4">
              <InputText v-model="companyInfo.city" placeholder="City" />
              <InputText v-model="companyInfo.state" placeholder="State" />
              <InputText v-model="companyInfo.zip" placeholder="ZIP" />
            </div>
            <InputText v-model="companyInfo.phone" placeholder="Phone" />
            <InputText v-model="companyInfo.email" placeholder="Email" />
          </div>
        </div>

        <!-- Shipping Information -->
        <div class="space-y-4">
          <div class="flex items-center justify-between">
            <h3 class="font-medium text-lg">Ship To Information</h3>
            <Button type="button" label="Same as Company" class="!p-0" link @click="copyCompanyInfo" />
          </div>
          <div class="grid grid-cols-1 gap-4">
            <InputText v-model="shippingInfo.name" placeholder="Company (Optional)" />
            <InputText v-model="shippingInfo.contact" placeholder="Contact Name" />
            <InputText v-model="shippingInfo.address" placeholder="Address" />
            <div class="grid grid-cols-3 gap-4">
              <InputText v-model="shippingInfo.city" placeholder="City" />
              <InputText v-model="shippingInfo.state" placeholder="State" />
              <InputText v-model="shippingInfo.zip" placeholder="ZIP" />
            </div>
            <InputText v-model="shippingInfo.phone" placeholder="Phone" />
            <InputText v-model="shippingInfo.email" placeholder="Email" />
          </div>
        </div>
      </div>

      <!-- Purchase Order -->
      <div class="mt-6">
        <h3 class="font-medium text-lg mb-4">Purchase Order Information</h3>
        <div class="w-full md:w-1/3">
          <InputText v-model="purchaseOrder" placeholder="Purchase Order Number" class="w-full" />
        </div>
      </div>

      <!-- Additional Notes -->
      <div class="mt-6">
        <h3 class="font-medium text-lg mb-4">Additional Notes</h3>
        <Textarea v-model="additionalNotes" rows="4" class="w-full" />
      </div>
    </div>

    <!-- Preview Section -->
    <div class="bg-white rounded-lg shadow">
      <div class="flex justify-between items-center p-6 border-b">
        <h2 class="text-xl font-semibold">RFQ Preview</h2>
        <div class="space-x-4">
          <Button type="button" label="Generate PDF" icon="pi pi-file-pdf" severity="success" @click="generatePDF" />
          <Button type="button" label="Send RFQ" icon="pi pi-send" severity="primary" @click="sendRFQ" />
        </div>
      </div>

      <div class="preview-container">
        <RFQPreview :rfq-number="rfqNumber" :company-info="companyInfo" :shipping-info="shippingInfo"
          :purchase-order="purchaseOrder" :items="rfqItems" :additional-notes="additionalNotes" />
      </div>
    </div>
  </div>
</template>

<script setup>
import { ref, computed, onMounted, nextTick, watch } from 'vue';
import { useUserStore } from '@/store/user';
import { useRoute, useRouter } from 'vue-router';
import RFQPreview from '@/components/RFQPreview.vue';
import html2pdf from 'html2pdf.js';
import { useRfq } from '@/composables/rfq';
import { useToast } from 'primevue/usetoast';
import { supabase } from '@/supabase';

const userStore = useUserStore();
const router = useRouter();
const route = useRoute();
const { getRfqNumber } = useRfq();
const toast = useToast();

// Form Data
const purchaseOrder = ref('');
const additionalNotes = ref('Please review the quote and contact us for any questions.');
const rfqNumber = ref('RFQ-#ERROR');

const companyInfo = ref({
  name: `${''}`,
  contact:
    `${userStore?.currentUser?.first_name || ''} ${userStore?.currentUser?.last_name || ''}`.trim(),
  address: '',
  city: '',
  state: '',
  zip: '',
  phone: '',
  email: userStore?.currentUser?.email,
});

const shippingInfo = ref({
  name: '',
  contact: '',
  address: '',
  city: '',
  state: '',
  zip: '',
  phone: '',
  email: '',
});

const total = ref(null);

onMounted(async () => {
  if (userStore?.company) {
    companyInfo.value.name = userStore?.company?.name;
    const newNumber = await getRfqNumber(userStore?.company?.name, companyInfo.value.contact);
    Reflect.set(rfqNumber, 'value', newNumber);
  }
});

watch(
  userStore,
  async () => {
    if (userStore?.company) {
      companyInfo.value.name = userStore?.company?.name;
      const newNumber = await getRfqNumber(userStore?.company?.name, companyInfo.value.contact);
      Reflect.set(rfqNumber, 'value', newNumber);
    }
  },
  { deep: true },
);

// Get items from route state
const rfqItems = computed(() => {
  const routeItems = route.query?.items;
  if (!routeItems) return [];

  try {
    const items = JSON.parse(routeItems);
    return items
      .map((item) => ({
        name: item.name,
        sku: item.sku || '',
        quantity: item.quantity || 1,
        price: item.price || 0,
      }))
      .reduce((acc, item) => {
        const currentItemExists = acc.find((prevItem) => prevItem.sku === item.sku);
        if (currentItemExists) {
          currentItemExists.quantity += item.quantity;
          acc.map((item) => {
            if (item.sku === currentItemExists.sku) {
              item.quantity = currentItemExists.quantity;
            }
            return item;
          });
        } else {
          acc.push(item);
        }
        return acc;
      }, []);
  } catch (e) {
    console.error('Error parsing RFQ items:', e);
    return [];
  }
});

// Helper Functions
const copyCompanyInfo = () => {
  shippingInfo.value = { ...companyInfo.value };
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

const sendRFQ = async () => {
  try {
    const rfqData = {
      company_information: companyInfo.value,
      ship_to_information: shippingInfo.value,
      purchase_order_number: purchaseOrder.value,
      items: rfqItems.value,
      additional_notes: additionalNotes.value,
      company_id: userStore.company?.id,
      user_id: userStore.user?.id,
      rfq_number: rfqNumber.value,
      status: 'RFQ Sent'
    };

    const { error } = await supabase
      .from('rfq')
      .insert(rfqData)

    if (error) throw error;

    // Show success message
    toast.add({
      severity: 'success',
      summary: 'RFQ Sent',
      detail: `RFQ ${rfqNumber.value} has been created successfully`,
      life: 3000
    });

    // Redirect to RFQ list
    router.push('/rfqs');
  } catch (error) {
    console.error('Error sending RFQ:', error);
    toast.add({
      severity: 'error',
      summary: 'Error',
      detail: 'Failed to send RFQ. Please try again.',
      life: 3000
    });
  }
};
</script>

<style scoped>
/* Add print-specific styles */
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
