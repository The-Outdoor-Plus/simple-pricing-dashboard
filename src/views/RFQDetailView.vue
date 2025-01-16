<template>
  <div class="p-6">
    <div v-if="loading" class="flex justify-center items-center h-64">
      <ProgressSpinner />
    </div>

    <div v-else-if="rfq" class="space-y-6">
      <!-- Header -->
      <div class="flex flex-col gap-4">
        <div>
          <h1 class="text-2xl font-semibold">Request For Quote #: {{ rfq.rfq_number }}</h1>
          <p class="text-gray-600">Created on {{ new Date(rfq.created_at).toLocaleDateString() }}</p>
        </div>
        <div class="flex gap-2">
          <Button icon="pi pi-comments" label="Comments" severity="primary" @click="showComments = true" />
          <Button icon="pi pi-history" :label="!showActivities ? 'Show Activities' : 'Hide Activities'"
            :raised="showActivities" severity="secondary" @click="showActivities = !showActivities" />
        </div>
      </div>
      <template v-if="!showActivities">
        <!-- Status -->
        <div class="bg-gray-50 p-4 rounded-lg">
          <div class="flex justify-between items-center">
            <div class="flex items-center gap-2">
              <span class="font-medium">Status:</span>
              <div class="px-2 py-1 rounded-md" :class="[`${getStatusSeverity(rfq.status)}`]">
                <p class="text-sm font-medium" :class="[`${getStatusColor(rfq.status)}`]">{{ rfq.status }}</p>
              </div>
            </div>
            <div class="flex items-center gap-2">
              <div class="mr-4">
                <Button label="Upload" severity="warn" @click="toggleAgentActions" />
                <Popover ref="agentActionsPopover">
                  <div class="flex flex-col gap-1 items-start">
                    <Button v-if="canDoAgentActions && !estimate.signed && !invoice.paid" icon="pi pi-upload"
                      label="Upload Estimate" severity="contrast" variant="text"
                      @click="showUploadDialog('estimate', rfq?.estimate_number, rfq?.estimate_link)" fluid />
                    <Button v-if="(canDoAgentActions || canDoCustomerActions) && !estimate.signed && !invoice.paid"
                      icon="pi pi-upload" label="Upload Purchase Order" severity="contrast" variant="text"
                      @click="showUploadDialog('purchaseOrder', rfq?.purchase_order_number, rfq?.purchase_order_link)"
                      fluid />
                    <!-- <Button icon="pi pi-upload" label="Upload Sales Order" severity="contrast" variant="text"
                      @click="showUploadDialog('salesOrder')" fluid /> -->
                    <Button v-if="canDoAgentActions && !invoice.paid" icon="pi pi-upload" label="Upload Invoice"
                      severity="contrast" variant="text"
                      @click="showUploadDialog('invoice', rfq?.invoice_number, rfq?.invoice_link)" fluid />
                  </div>
                </Popover>
              </div>

              <FileUploadDialog :visible="showUploadDialogVisible" :dialogTitle="uploadDialogTitle"
                :uploadType="uploadType" :company="rfq.company.name"
                :user="`${rfq?.user?.first_name || ''}_${rfq?.user?.last_name || ''}`"
                @file-uploaded="fileUploadedSuccessfully" @file-upload-error="fileUploadError"
                :fileNumber="fileUploadFileNumber" :fileLink="fileUploadFileLink"
                @update:visible="showUploadDialogVisible = $event" />
              <div v-if="canChangeStatus" class="flex items-center gap-2">
                <Dropdown v-model="selectedStatus" :options="availableStatuses" optionLabel="value" optionValue="value"
                  placeholder="Change Status" class="w-48" />
                <Button label="Update" @click="updateStatus" :loading="updating"
                  :disabled="selectedStatus === rfq?.status || !selectedStatus" />
              </div>
            </div>

          </div>
          <div v-if="rfq.agent_assigned_id !== null && rfq.agent_assigned?.first_name">
            <span class="font-medium">Agent Assigned:</span>
            <div class="px-2 py-1 rounded-md">
              <p class="text-sm font-medium">{{ rfq.agent_assigned?.first_name }} {{ rfq.agent_assigned?.last_name }}
              </p>
            </div>
          </div>
        </div>

        <div>
          <Card>
            <template #content>
              <Accordion value="1" style="border: none;">
                <AccordionPanel value="0" style="border: none;">
                  <AccordionHeader>
                    <p class="text-xl font-semibold text-slate-700">Files</p>
                  </AccordionHeader>
                  <AccordionContent>
                    <div class="w-full">

                      <div class="flex justify-between items-center border-b border-gray-200 py-1">
                        <div>
                          <p class="font-medium">RFQ</p>
                        </div>
                        <div>
                          <Button icon="pi pi-file-pdf" label="Download RFQ" severity="warn" variant="text"
                            @click="generateRFQPDF" />
                        </div>
                      </div>

                      <div class="flex justify-between items-center border-b border-gray-200 py-1">
                        <div>
                          <p class="font-medium">Estimate</p>
                          <p v-if="estimate?.number" class="text-sm text-gray-600">Number: {{ estimate.number }}</p>
                          <p v-if="estimate?.uploaded_at" class="text-sm text-gray-500">Uploaded on: {{ new
                            Date(estimate.uploaded_at).toLocaleDateString() }}</p>
                          <p v-if="estimate?.uploaded_by" class="text-sm text-gray-500">Uploaded by: {{
                            estimate.uploaded_by
                            }}</p>
                        </div>
                        <div class="flex gap-2 items-center">
                          <Button :disabled="!estimate?.link" icon="pi pi-file-pdf"
                            :label="estimate?.link ? 'Download Estimate' : 'Not Uploaded Yet'"
                            :severity="estimate?.link ? 'warn' : 'contrast'" variant="text"
                            @click="openFile(estimate?.link)" />
                          <Button
                            v-if="estimate?.link && !userStore?.isAgent && !estimate.signed && !rfq?.purchase_order_link"
                            icon="pi pi-pencil" label="Sign" severity="primary"
                            @click="openSignaturePad(estimate?.link)" />
                          <p v-if="estimate.signed" class="text-green-600"><i class="pi pi-check mr-1"></i>Signed</p>
                        </div>
                      </div>
                      <div class="flex justify-between items-center border-b border-gray-200 py-1">
                        <div>
                          <p class="font-medium">Purchase Order</p>
                          <p v-if="purchaseOrder?.number" class="text-base text-gray-600">Number: {{
                            purchaseOrder.number
                            }}</p>
                          <p v-if="purchaseOrder?.uploaded_at" class="text-sm text-gray-500">Uploaded on: {{ new
                            Date(purchaseOrder.uploaded_at).toLocaleDateString() }}</p>
                          <p v-if="purchaseOrder?.uploaded_by" class="text-sm text-gray-500">Uploaded by: {{
                            purchaseOrder.uploaded_by
                            }}</p>
                        </div>
                        <Button :disabled="!purchaseOrder?.link" icon="pi pi-file-pdf"
                          :label="purchaseOrder?.link ? 'Download Purchase Order' : estimate.signed ? 'Signed Estimate Provided Instead' : 'Not Uploaded Yet'"
                          :severity="purchaseOrder?.link ? 'warn' : 'contrast'" variant="text"
                          @click="openFile(purchaseOrder?.link)" />
                      </div>
                      <!-- <div class="flex justify-between items-center border-b border-gray-200 py-1">
                        <p class="font-medium">Sales Order</p>
                        <Button icon="pi pi-file-pdf" label="Download" severity="warn" variant="text" />
                      </div> -->
                      <div class="flex justify-between items-center border-b border-gray-200 py-1">
                        <div>
                          <p class="font-medium">Invoice</p>
                          <p v-if="invoice?.number" class="text-base text-gray-600">Number: {{
                            invoice.number
                            }}</p>
                          <p v-if="invoice?.uploaded_at" class="text-sm text-gray-500">Uploaded on: {{ new
                            Date(invoice.uploaded_at).toLocaleDateString() }}</p>
                          <p v-if="invoice?.uploaded_by" class="text-sm text-gray-500">Uploaded by: {{
                            invoice.uploaded_by
                            }}</p>
                        </div>
                        <div class="flex items-center gap-2">
                          <Button :disabled="!invoice?.link" icon="pi pi-file-pdf"
                            :label="invoice?.link ? 'Download Invoice' : 'Not Uploaded Yet'"
                            :severity="invoice?.link ? 'warn' : 'contrast'" variant="text"
                            @click="openFile(invoice?.link)" />

                          <Button v-if="invoice.payment_link && !invoice.paid" icon="pi pi-credit-card"
                            label="Pay Invoice" severity="danger" class="ml-1"
                            @click="openPaymentLink(invoice.payment_link)" />
                          <p v-if="invoice.payment_link && invoice.paid" class="text-red-600"><i
                              class="pi pi-check mr-1"></i>Paid
                          </p>
                        </div>

                      </div>
                    </div>
                  </AccordionContent>
                </AccordionPanel>
              </Accordion>
            </template>
          </Card>
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
      </template>

      <!-- Activity Feed -->
      <Card v-if="showActivities">
        <template #title>Activity Feed</template>
        <template #content>
          <ActivityFeed :updates="rfq?.updates" />
        </template>
      </Card>

      <template v-if="!showActivities">
        <h3 class="font-medium text-2xl mb-4">RFQ Preview</h3>

        <div class="preview-container">
          <RFQPreview :rfq-number="rfq.rfq_number" :company-info="rfq.company_information"
            :shipping-info="rfq.ship_to_information" :purchase-order="rfq.purchase_order" :items="rfq.items"
            :additional-notes="rfq.additional_notes" />
        </div>
      </template>
    </div>

    <!-- Comments Drawer -->
    <CommentsPanel v-model="showComments" :rfq-id="rfq?.id" :comments="rfq?.comments"
      @comment-added="handleCommentAdded" :publishing="publishingComment"
      v-model:commentPublished="isCommentPublished" />

    <Dialog v-model:visible="showSignatureDialog" header="Sign Estimate" :modal="true"
      :style="{ width: '80vw', height: '90vh' }">
      <div class="flex flex-col h-full">
        <iframe v-if="pdfUrl" :src="pdfUrl" class="flex-grow" style="border: none; min-height: 500px;"></iframe>
        <div class="signature-pad-container">
          <canvas ref="signaturePadCanvas" class="signature-pad" />
          <div class="flex justify-center gap-4 mt-4">
            <Button label="Clear" @click="clearSignature" />
            <Button label="Save Signature" @click="saveSignature" />
          </div>
        </div>
      </div>
    </Dialog>
  </div>
</template>

<script setup>
import { ref, computed, onMounted, nextTick } from 'vue';
import { useRoute } from 'vue-router';
import { useUserStore } from '@/store/user';
import { useAppStore } from '@/store/app';
import { supabase } from '@/supabase';
import { useToast } from 'primevue/usetoast';
import { useRfq } from '@/composables/rfq';
import CommentsPanel from '@/components/CommentsPanel.vue';
import ActivityFeed from '@/components/ActivityFeed.vue';
import SignaturePad from 'signature_pad';
import { PDFDocument } from 'pdf-lib';
import { useFile } from '@/composables/file';

const route = useRoute();
const userStore = useUserStore();
const appStore = useAppStore();
const toast = useToast();
const rfq = ref(null);
const loading = ref(true);
const updating = ref(false);
const selectedStatus = ref(null);
const publishingComment = ref(false);
const isCommentPublished = ref(false);
const { constructHtml2PdfObject, loadRFQEmail, postRfqActivityUpdate } = useRfq();
const downloadPopover = ref();
const agentActionsPopover = ref();
const showActivities = ref(false);
const showUploadDialogVisible = ref(false);
const uploadDialogTitle = ref('');
const uploadType = ref('estimate');
const showSignatureDialog = ref(false);
const pdfUrl = ref(null);
const signaturePadCanvas = ref(null);
let signaturePadInstance = ref(null);
const { getSignedUrl, uploadFileToS3 } = useFile();
const availableStatuses = computed(() => appStore.getEnumsByType('rfq_status'));

const toggleDownload = (event) => {
  downloadPopover.value.toggle(event);
};

const toggleAgentActions = (event) => {
  agentActionsPopover.value.toggle(event);
};

const estimate = computed(() => {
  const estimateUpdates = rfq.value?.updates.filter(update => update.action_text.toLowerCase().includes('estimate uploaded'));
  const latestEstimateUpdate = estimateUpdates.sort((a, b) => new Date(b.created_at) - new Date(a.created_at))[0];

  return {
    link: rfq.value?.estimate_link,
    number: rfq.value?.estimate_number,
    signed: rfq.value.estimate_signed,
    uploaded_at: latestEstimateUpdate?.created_at,
    uploaded_by: latestEstimateUpdate?.user_name
  }
});

const purchaseOrder = computed(() => {
  const purchaseOrderUpdates = rfq.value?.updates.filter(update => update.action_text.toLowerCase().includes('purchase order uploaded'));
  const latestPurchaseOrderUpdate = purchaseOrderUpdates.sort((a, b) => new Date(b.created_at) - new Date(a.created_at))[0];

  return {
    link: rfq.value?.purchase_order_link,
    number: rfq.value?.purchase_order_number,
    uploaded_at: latestPurchaseOrderUpdate?.created_at,
    uploaded_by: latestPurchaseOrderUpdate?.user_name
  }
});

const invoice = computed(() => {
  const invoiceUpdates = rfq.value?.updates.filter(update => update.action_text.toLowerCase().includes('invoice uploaded'));
  const latestInvoiceUpdate = invoiceUpdates.sort((a, b) => new Date(b.created_at) - new Date(a.created_at))[0];

  return {
    link: rfq.value?.invoice_link,
    number: rfq.value?.invoice_number,
    payment_link: rfq.value?.invoice_payment_link,
    paid: rfq.value?.status === 'Invoice Ready / Paid',
    uploaded_at: latestInvoiceUpdate?.created_at,
    uploaded_by: latestInvoiceUpdate?.user_name
  }
});

const canChangeStatus = computed(() => {
  const role = userStore.user?.user_metadata?.role;
  return ['ADMIN', 'MANAGER', 'SALES'].includes(role);
});

const canDoAgentActions = computed(() => {
  const role = userStore.currentRole;
  if (['ADMIN', 'MANAGER'].includes(role) || ['SALES'].includes(role) && userStore.currentCompany.name === 'The Outdoor Plus') return true;
  return false;
});

const canDoCustomerActions = computed(() => {
  const role = userStore.currentRole;
  if (['DEALER', 'DISTRIBUTOR', 'MASTER_DISTRIBUTOR', 'GROUP', 'LANDSCAPE', 'INTERNET'].includes(role)) return true;
  return false;
})

const calculateTotal = computed(() => {
  if (!rfq.value?.items) return '$0.00';
  const total = rfq.value.items.reduce((sum, item) => sum + (item.price * item.quantity), 0);
  return new Intl.NumberFormat('en-US', { style: 'currency', currency: 'USD' }).format(total);
});

const getStatusSeverity = (status) => {
  const severityMap = {
    'RFQ Sent': 'bg-cyan-200/90',
    'Working On Estimate': 'bg-yellow-200/70',
    'Invoice Ready / Not Paid': 'bg-red-300/90',
    'Invoice Ready / Paid': 'bg-teal-100/60',
    'Estimate Signed': 'bg-green-300/90',
    'PO Sent': 'bg-green-300/90',
    'Estimate Ready': 'bg-green-300/90',
  };
  return severityMap[status] || 'bg-blue-300/90';
};

const getStatusColor = (status) => {
  const colorMap = {
    'RFQ Sent': 'text-cyan-900',
    'Working On Estimate': 'text-yellow-900',
    'Invoice Ready / Not Paid': 'text-red-900',
    'Invoice Ready / Paid': 'text-teal-900',
    'PO Sent': 'text-green-900',
    'Estimate Signed': 'text-green-900',
    'Estimate Ready': 'text-green-900',
  };
  return colorMap[status] || 'text-blue-800';
};

const loadRFQ = async () => {
  try {
    loading.value = true;
    const { data, error } = await supabase
      .from('rfq')
      .select(`*, company:company_id( id, name ), user:user_id(id, first_name, last_name), agent_assigned:agent_assigned_id(id, first_name, last_name)`)
      .eq('id', route.params.id)
      .single();

    if (error) throw error;
    rfq.value = data;
    selectedStatus.value = data.status;
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
    const form = { status: selectedStatus.value }
    if (rfq.value.agent_assigned_id === null && userStore.isAgent) {
      form.agent_assigned_id = userStore.currentUser.id;
    }
    const { error } = await supabase
      .from('rfq')
      .update(form)
      .eq('id', rfq.value.id);

    if (error) throw error;

    if (form.agent_assigned_id) {
      await postRfqActivityUpdate(rfq.value.id, `Agent <b>${userStore.currentUser.first_name} ${userStore.currentUser.last_name}</b> Assigned to RFQ`, null, 'System', 'S', null, 'SYSTEM');
    }
    await postRfqActivityUpdate(rfq.value.id, `RFQ Status Updated from <b>${rfq.value.status}</b> to <i><b>${selectedStatus.value}</b></i>`);
    await loadRFQ();
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

const generateRFQPDF = async () => {
  // Wait for any pending updates to complete
  await nextTick();

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

    // Reset styles for PDF generation
    await constructHtml2PdfObject(rfq.value.rfq_number, element).save();
    // // Generate PDF
    // await html2pdf().from(element).set(opt).save();

    // Restore original styles
    Object.assign(element.style, originalStyles);
  } catch (error) {
    console.error('Error generating PDF:', error);
  }
};

const showComments = ref(false);

const handleCommentAdded = async (newComment) => {
  try {
    publishingComment.value = true;
    rfq.value.comments = [...(rfq.value.comments || []), newComment];

    const { data, error } = await supabase
      .from('rfq')
      .update({
        comments: rfq.value.comments
      })
      .eq('id', rfq.value.id)
      .select();
    if (error) throw error;
    toast.add({
      severity: 'success',
      summary: 'Comment Published',
      life: 3000,
      position: 'bottom-left'
    });
    isCommentPublished.value = true;
  } catch (error) {
    console.error('Error adding comment:', error);
    toast.add({
      severity: 'error',
      summary: 'Error',
      detail: 'Failed to publish comment',
      life: 3000
    });
  } finally {
    publishingComment.value = false;
  }
};

const fileUploadFileNumber = ref('');
const fileUploadFileLink = ref('');

const openPaymentLink = (link) => {
  window.open(link, '_blank');
};

const showUploadDialog = (type, fileNumber, fileLink) => {
  uploadType.value = type;
  uploadDialogTitle.value = `Upload ${type.charAt(0).toUpperCase() + type.slice(1)}`;
  showUploadDialogVisible.value = true;
  fileUploadFileNumber.value = fileNumber;
  fileUploadFileLink.value = fileLink;
};

const openFile = (fileUrl) => {
  window.open(fileUrl, '_blank', 'noopener,noreferrer');
};

const fileUploadedSuccessfully = async ({ type, fileUrl, newFileNumber, paymentLink }) => {
  const form = {}
  let typeText = ''
  if (type === 'estimate') {
    form.estimate_link = fileUrl;
    form.estimate_number = newFileNumber;
    form.status = 'Estimate Ready'
    typeText = 'Estimate';
  } else if (type === 'salesOrder') {
    form.sales_order_link = fileUrl;
    form.sales_order_number = newFileNumber;
    form.status = 'Sales Order Ready'
    typeText = 'Sales Order';
  } else if (type === 'invoice') {
    form.invoice_link = fileUrl;
    form.invoice_number = newFileNumber;
    form.status = 'Invoice Ready / Not Paid'
    form.invoice_payment_link = paymentLink;
    typeText = 'Invoice';
  } else if (type === 'purchaseOrder') {
    form.purchase_order_link = fileUrl;
    form.purchase_order_number = newFileNumber;
    form.status = 'PO Sent'
    typeText = 'Purchase Order';
  }

  if (rfq.value.agent_assigned_id === null && userStore.isAgent) {
    form.agent_assigned_id = userStore.currentUser.id;
  }

  try {
    const { error } = await supabase.from('rfq').update(form).eq('id', rfq.value.id);
    if (error) throw error;
    if (form.agent_assigned_id) {
      await postRfqActivityUpdate(rfq.value.id, `Agent <b>${userStore.currentUser.first_name} ${userStore.currentUser.last_name}</b> Assigned to RFQ`, null, 'System', 'S', null, 'SYSTEM');
    }
    await postRfqActivityUpdate(rfq.value.id, `${typeText} Uploaded`);
    await postRfqActivityUpdate(rfq.value.id, `RFQ Status Updated from <b>${rfq.value.status}</b> to <i><b>${form.status}</b></i>`);
    await loadRFQ();
    toast.add({
      severity: 'success',
      summary: 'File Uploaded',
      detail: 'File has been uploaded successfully',
      life: 3000
    });
    showUploadDialogVisible.value = false;
  } catch (error) {
    console.error('Error uploading file:', error);
    toast.add({
      severity: 'error',
      summary: 'Error',
      detail: 'Failed to upload file',
      life: 3000
    });
  }
};

const fileUploadError = (error) => {
  console.error('Error uploading file:', error);
  toast.add({
    severity: 'error',
    summary: 'Error',
    detail: 'Failed to upload file',
    life: 3000
  });
};

const openSignaturePad = async (link) => {
  try {
    const signedUrl = await getSignedUrl(link);
    pdfUrl.value = signedUrl;
    showSignatureDialog.value = true;
    nextTick(() => {
      const canvas = signaturePadCanvas.value;
      signaturePadInstance.value = new SignaturePad(canvas);
      resizeCanvas();
    });
  } catch (error) {
    console.error('Error getting signed url:', error);
    toast.add({
      severity: 'error',
      summary: 'Error',
      detail: 'Failed to get signed url',
      life: 3000
    });
  }
};

const clearSignature = () => {
  signaturePadInstance.value.clear();
};

const saveSignature = async () => {
  if (signaturePadInstance.value.isEmpty()) {
    toast.add({ severity: 'warn', summary: 'Warning', detail: 'Please provide a signature', life: 3000 });
    return;
  }

  const signatureDataUrl = signaturePadInstance.value.toDataURL();
  const signatureImage = await fetch(signatureDataUrl).then(res => res.arrayBuffer());

  const existingPdfBytes = await fetch(pdfUrl.value).then(res => res.arrayBuffer());
  const pdfDoc = await PDFDocument.load(existingPdfBytes);

  const signatureImageEmbed = await pdfDoc.embedPng(signatureImage);

  const { width, height } = signatureImageEmbed.scale(0.15);

  const totalPages = pdfDoc.getPageCount();

  const page = pdfDoc.getPage(totalPages - 1);

  page.drawImage(signatureImageEmbed, {
    x: 70,
    y: 172,
    width: width / 2,
    height: height / 2,
  });

  const pdfBytes = await pdfDoc.save();

  const blob = new Blob([pdfBytes], { type: 'application/pdf' });
  const oldUrlObj = new URL(rfq.value.estimate_link);

  const fullPathName = oldUrlObj.pathname;
  const fileName = fullPathName.substring(fullPathName.lastIndexOf('/') + 1);
  const path = fullPathName.substring(0, fullPathName.lastIndexOf('/') + 1);
  const file = new File([blob], fileName);
  const formData = new FormData();
  formData.append('file', file);
  formData.append('path', path);
  try {
    const fileUrl = await uploadFileToS3(formData);
    const { error } = await supabase.from('rfq').update({ estimate_link: fileUrl, estimate_signed: true, status: 'Estimate Signed' }).eq('id', rfq.value.id);
    if (error) throw error;
    await postRfqActivityUpdate(rfq.value.id, `Estimate Signed`);
    await postRfqActivityUpdate(rfq.value.id, `RFQ Status Updated from <b>${rfq.value.status}</b> to <i><b>Estimate Signed</b></i>`);
    toast.add({
      severity: 'success',
      summary: 'Signature Saved',
      detail: 'Signature has been saved successfully',
      life: 3000
    });
  } catch (error) {
    console.error(error);
    toast.add({
      severity: 'error',
      summary: 'Error',
      detail: 'Failed to save signature',
      life: 3000
    });
  }
  showSignatureDialog.value = false;
};

const resizeCanvas = () => {
  const ratio = Math.max(window.devicePixelRatio || 1, 1);
  const canvas = signaturePadCanvas.value;
  canvas.width = canvas.offsetWidth * ratio;
  canvas.height = canvas.offsetHeight * ratio;
  const ctx = canvas.getContext("2d");
  ctx.scale(ratio, ratio);
  signaturePadInstance.value.clear();
};

onMounted(() => {
  window.addEventListener("resize", resizeCanvas);
});

onMounted(async () => {
  await loadRFQ();
  await loadRFQEmail();
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

.signature-pad-container {
  display: flex;
  flex-direction: column;
  align-items: center;
  margin-top: 20px;
}

.signature-pad {
  border: 1px solid #ccc;
  max-width: 80vw;
  width: 100%;
  height: 200px;
}
</style>
