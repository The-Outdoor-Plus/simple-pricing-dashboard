<template>
  <div class="rfq-preview bg-white p-8 rounded-lg shadow-lg flex flex-col !tracking-wide" ref="previewContainer">
    <!-- Header Section -->
    <div class="flex justify-between items-start mb-8">
      <div>
        <h1 class="text-2xl font-bold text-gray-800 mb-2">Request For Quote</h1>

      </div>
      <div class="text-right">
        <p class="text-lg font-semibold">RFQ #: {{ rfqNumber }}</p>
        <p class="text-gray-600">Date: {{ formatDate(new Date()) }}</p>
      </div>
    </div>

    <!-- Company and Shipping Information -->
    <div class="grid grid-cols-2 gap-8 mb-8">
      <!-- Company Information -->
      <div class="company-info tracking-wide">
        <h2 class="text-lg font-semibold mb-4 text-gray-700">Company Information</h2>
        <div class="space-y-2 flex flex-col">
          <div>
            <span class="label">Company:</span>
            <span class="value text-green-700">{{ companyInfo.name }}</span>
          </div>
          <div>
            <span class="label">Contact:</span>
            <span class="value text-orange-600">{{ companyInfo.contact }}</span>
          </div>
          <div>
            <span class="label">Address:</span>
            <span class="value">{{ companyInfo.address }}</span>
          </div>
          <div>
            <span class="label">City:</span>
            <span class="value">{{ companyInfo.city }}, {{ companyInfo.state }} {{ companyInfo.zip }}</span>
          </div>
          <div>
            <span class="label">Phone:</span>
            <span class="value">{{ companyInfo.phone }}</span>
          </div>
          <div>
            <span class="label">Email:</span>
            <span class="value">{{ companyInfo.email }}</span>
          </div>
        </div>
      </div>

      <!-- Shipping Information -->
      <div class="company-info tracking-wide">
        <h2 class="text-lg font-semibold mb-4 text-gray-700">Ship To Information</h2>
        <div class="space-y-2 flex flex-col">
          <div>
            <span class="label">Company:</span>
            <span class="value">{{ shippingInfo.name }}</span>
          </div>
          <div>
            <span class="label">Name:</span>
            <span class="value">{{ shippingInfo.contact }}</span>
          </div>
          <div>
            <span class="label">Address:</span>
            <span class="value">{{ shippingInfo.address }}</span>
          </div>
          <div>
            <span class="label">City:</span>
            <span class="value">{{ shippingInfo.city }}, {{ shippingInfo.state }} {{ shippingInfo.zip }}</span>
          </div>
          <div>
            <span class="label">Phone:</span>
            <span class="value">{{ shippingInfo.phone }}</span>
          </div>
          <div>
            <span class="label">Email:</span>
            <span class="value">{{ shippingInfo.email }}</span>
          </div>
        </div>
      </div>
    </div>

    <!-- Purchase Order -->
    <div class="mb-8">
      <p class="text-lg font-semibold">Purchase Order #: {{ purchaseOrder }}</p>
    </div>

    <!-- Items Table -->
    <div class="table-container mb-8">
      <table>
        <thead>
          <tr class="border-b-2 border-gray-200">
            <th class="text-left py-2" width="60%">Item</th>
            <th class="text-center py-2">Quantity</th>
            <th class="text-right py-2">Estimated Cost</th>
          </tr>
        </thead>
        <tbody>
          <tr v-for="(item, index) in items" :key="index" class="border-b border-gray-100">
            <td class="py-3" width="60%">
              <div class="font-medium">{{ item.name }}</div>
              <div class="text-sm text-gray-500">SKU: {{ item.sku }}</div>
            </td>
            <td class="text-right py-3">{{ item.quantity }}</td>
            <td class="text-right py-3">{{ formatPrice(item.price) }}</td>
          </tr>
        </tbody>
      </table>
    </div>

    <!-- Totals -->
    <div class="flex justify-end">
      <div class="w-1/3">
        <!-- <div class="flex justify-between py-2">
          <span class="font-medium">Subtotal:</span>
          <span>{{ formatPrice(subtotal) }}</span>
        </div> -->
        <div class="flex justify-between py-2 border-t border-gray-200">
          <span class="font-medium">Total:</span>
          <span class="font-bold">{{ formatPrice(total) }}</span>
        </div>
      </div>
    </div>

    <!-- Additional Notes -->
    <div class="mt-8">
      <h3 class="font-semibold mb-2">Additional Notes:</h3>
      <p class="text-gray-600 !tracking-wide !leading-normal">{{ additionalNotes }}</p>
    </div>

    <div class="mt-auto">
      <p class="text-gray-700 text-xs pt-6 italic !tracking-[0.1rem] !leading-normal">
        <span class="font-bold">Disclaimer: </span>The prices listed on this RFQ are for reference
        purposes only and are subject to changes. Final costs may vary based on factors such as
        material availability, customization requests, and market conditions. A formal quote with
        the actual pricing will be sent back after reviewing your request. This RFQ is valid for 5
        days from the date of issue, after which pricing and terms are subject to reevaluation.
      </p>
    </div>
  </div>
</template>

<script setup>
import { computed, ref, onMounted, onUnmounted, watch } from 'vue';
import { useRfq } from '@/composables/rfq';


const props = defineProps({
  rfqNumber: {
    type: String,
    required: true,
  },
  companyInfo: {
    type: Object,
    required: true,
  },
  shippingInfo: {
    type: Object,
    required: true,
  },
  purchaseOrder: {
    type: String,
    required: true,
  },
  items: {
    type: Array,
    required: true,
  },
  additionalNotes: {
    type: String,
    default: '',
  },
});

const previewContainer = ref(null);
const previewScale = ref(1);

const subtotal = computed(() => {
  return props.items.reduce((acc, item) => acc + item.price * item.quantity, 0);
});

const total = computed(() => {
  return subtotal.value;
});

const formatDate = (date) => {
  return new Intl.DateTimeFormat('en-US', {
    year: 'numeric',
    month: 'long',
    day: 'numeric',
  }).format(date);
};

const formatPrice = (price) => {
  return new Intl.NumberFormat('en-US', {
    style: 'currency',
    currency: 'USD',
  }).format(price);
};

const updatePreviewScale = () => {
  if (!previewContainer.value) return;

  const containerWidth = previewContainer.value.offsetWidth;
  const targetWidth = 794; // A4 width in pixels

  if (containerWidth < targetWidth) {
    previewScale.value = (containerWidth - 40) / targetWidth; // 40px for padding
  } else {
    previewScale.value = 1;
  }

  document.documentElement.style.setProperty('--preview-scale', previewScale.value);
};

onMounted(async () => {
  updatePreviewScale();
  window.addEventListener('resize', updatePreviewScale);
});

onUnmounted(() => {
  window.removeEventListener('resize', updatePreviewScale);
});
</script>

<style>
.rfq-preview {
  width: 794px;
  /* 210mm at 96dpi */
  min-height: 1123px;
  /* 297mm at 96dpi */
  margin: 0 auto;
  padding: 40px;
  background: white;
  font-family: Arial, sans-serif;
  line-height: 1.5;
  color: #000;
}

/* Fix text spacing */
.text-gray-700 {
  word-spacing: 0.05em;
  letter-spacing: normal;
  white-space: normal;
}

/* Ensure proper text wrapping */
p {
  white-space: pre-line;
  word-wrap: break-word;
}

.label {
  font-weight: bold;
  margin-right: 8px;
}

.value {
  display: inline-block;
}

/* Company info styles */
.company-info {
  margin-bottom: 30px;
}

.company-info>div {
  margin-bottom: 8px;
  display: flex;
}

.company-info .label {
  min-width: 100px;
}

/* Table styles */
table {
  width: 100%;
  border-collapse: collapse;
  margin: 20px 0;
}

th {
  background-color: #f8f9fa;
  font-weight: bold;
  text-align: left;
  padding: 0.75rem;
  border-bottom: 2px solid #dee2e6;
}

td {
  padding: 0.75rem;
  border-bottom: 1px solid #dee2e6;
}

/* Disclaimer specific styles */

.mt-auto .font-bold {
  margin-right: 4px;
}

/* Container styles */
:deep(.preview-container) {
  width: 100%;
  overflow-x: auto;
  background: #f5f5f5;
  padding: 20px;
}

/* Mobile styles */
@media (max-width: 1024px) {
  .preview-container {
    padding: 10px;
  }

  .rfq-preview {
    transform-origin: top left;
    transform: scale(var(--preview-scale));
    margin: 0;
  }
}

/* Print styles */
@media print {
  .rfq-preview {
    width: 210mm;
    height: 297mm;
    margin: 0;
    padding: 20mm;
    transform: none !important;
  }
}
</style>
