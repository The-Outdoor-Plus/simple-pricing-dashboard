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
      <!-- <div class="mt-6">
        <h3 class="font-medium text-lg mb-4">Purchase Order Information</h3>
        <div class="w-full md:w-1/3">
          <InputText v-model="purchaseOrder" placeholder="Purchase Order Number" class="w-full" />
        </div>
      </div> -->

      <!-- Additional Notes -->
      <div class="mt-6">
        <h3 class="font-medium text-lg mb-4">Additional Notes</h3>
        <Textarea v-model="additionalNotes" rows="4" class="w-full"></Textarea>
      </div>
    </div -->

    <!-- Preview Section -->
    <div class="bg-white rounded-lg shadow">
      <div class="flex justify-between items-center p-6 border-b">
        <h2 class="text-xl font-semibold">RFQ Preview</h2>
        <div class="space-x-4">
          <Button type="button" label="Submit RFQ" icon="pi pi-send" severity="primary" @click="submitRFQ"></Button>
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
import { ref, computed, onMounted, watch } from 'vue';
import { nextTick } from 'vue';
import { useUserStore } from '@/store/user';
import { useRoute, useRouter } from 'vue-router';
import RFQPreview from '@/components/RFQPreview.vue';
import { useRfq } from '@/composables/rfq';
import { useToast } from 'primevue/usetoast';
import { supabase } from '@/supabase';
import { useAppStore } from '@/store/app';
import { useCartStore } from '@/store/cart';
import { renderToStaticMarkup } from '@usewaypoint/email-builder';

const userStore = useUserStore();
const router = useRouter();
const route = useRoute();
const { getRfqNumber, constructHtml2PdfObject, prepareRfqEmail, loadRFQEmail, rfqEmail, postRfqActivityUpdate } = useRfq();
const toast = useToast();
const appStore = useAppStore();
const cartStore = useCartStore();

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
  await loadRFQEmail();
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

const saveRFQ = async () => {
  try {
    const updates = [
      {
        update_id: crypto.randomUUID(),
        user_id: userStore.currentUser.id,
        user_name: `${userStore.currentUser.first_name} ${userStore.currentUser.last_name}`,
        user_initials: `${userStore.currentUser.first_name.charAt(0)}${userStore.currentUser.last_name.charAt(0)}`,
        avatar: userStore.currentUser.avatar_url,
        action_text: `RFQ Created by ${userStore.currentUser.first_name} ${userStore.currentUser.last_name}`,
        created_at: new Date().toISOString(),
        user_type: userStore.isAgent ? 'AGENT' : 'CUSTOMER',
      },
    ];

    const rfqData = {
      company_information: companyInfo.value,
      ship_to_information: shippingInfo.value,
      purchase_order_number: purchaseOrder.value,
      items: rfqItems.value,
      additional_notes: additionalNotes.value,
      company_id: userStore.company?.id,
      user_id: userStore.user?.id,
      rfq_number: rfqNumber.value,
      agent_assigned_id: null,
      updates: updates,
      status: 'RFQ Sent'
    };

    const { data, error } = await supabase
      .from('rfq')
      .insert(rfqData)
      .select();

    if (error) throw error;

    return data;
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

const submitRFQ = async () => {
  try {
    appStore.setLoading(true);

    await nextTick();

    const newRFQ = await saveRFQ();

    const emailJson = prepareRfqEmail(
      companyInfo.value,
      purchaseOrder.value,
      rfqItems.value,
      rfqNumber.value,
      newRFQ[0].id,
      companyInfo.value.name,
      rfqEmail.value.html
    );


    // Get the preview element
    const element = document.querySelector('.rfq-preview');

    if (!element) {
      console.error('Preview element not found');
      return;
    }

    try {
      // Store original styles
      const originalStyles = {
        transform: element.style.transform,
        width: element.style.width,
        margin: element.style.margin,
        padding: element.style.padding,
      };

      const pdfAsString = await constructHtml2PdfObject(rfqNumber.value, element).output('datauristring');

      const pdfFile = {
        filename: `RFQ-${rfqNumber.value}.pdf`.replace(/^(RFQ-)+/, 'RFQ-'),
        content: pdfAsString,
        contentType: 'application/pdf',
      };

      const files = [pdfFile];

      const { error } = await supabase.functions.invoke('send-email', {
        body: {
          // TODO: Get the email address from the user
          toAddress: 'rodrigo@theoutdoorplus.com',
          fromAddress: {
            email: 'media@theoutdoorplus.com',
            name: 'The Outdoor Plus Dealer Portal'
          },
          text: 'New Request for Quote from ' + companyInfo.value.name,
          subject: 'New RFQ from ' + companyInfo.value.name,
          html: renderToStaticMarkup(emailJson, { rootBlockId: 'root' }),
          files: files,
        }
      });

      if (error) throw error;

      await postRfqActivityUpdate(newRFQ[0].id, 'RFQ Sent via Email to agents', null, 'System', 'S', null, 'SYSTEM');

      toast.add({
        severity: 'success',
        summary: 'RFQ Submitted',
        detail: 'RFQ has been submitted successfully',
        life: 3000
      });

      // Restore original styles
      Object.assign(element.style, originalStyles);

      cartStore.clearCart();

      router.replace('/rfqs');
    } catch (error) {
      console.error('Error generating PDF:', error);
    }
  } catch (error) {
    console.error('Error submitting RFQ:', error);
  } finally {
    appStore.setLoading(false);
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
