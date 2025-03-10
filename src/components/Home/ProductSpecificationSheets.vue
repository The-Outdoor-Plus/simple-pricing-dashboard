<template>
  <div class="w-full">
    <div v-if="selectedProduct && selectedProduct.specification_sheet"
      class="w-full flex flex-col justify-center items-center">
      <h2 class="text-2xl font-bold text-orange-900 mb-6">Documents</h2>
      <div v-if="documentLabels.length > 0" class="flex flex-col gap-2 w-full md:w-1/2 lg:w-1/3">
        <label class="text-sm font-semibold italic">Select Document</label>
        <Select v-model="selectedDocument" :options="documentLabels" fluid class="w-full mb-4" />
      </div>
      <div v-if="loadingDocument" class="w-10/12 h-[600px] flex justify-center items-center">
        <progressspinner style="width: 100px; height: 100px;" stroke-width="6" aria-label="loading"></progressspinner>
      </div>
      <div id="iframedoc-container" class="w-10/12 h-[600px]">
      </div>
    </div>
  </div>
</template>
<script setup>
import { computed, ref, watch, nextTick, onBeforeUnmount } from 'vue';
import { useProduct } from '@/composables/product';

const { selectedProduct } = useProduct();
const selectedDocument = ref(null);
const loadingDocument = ref(false);

const documentLabels = computed(() => {
  return selectedProduct.value?.specification_sheet?.split(',').map((sheet) => (sheet.split(': ')[0]));
});

const currentDocuments = computed(() => {
  let currentSheets = {};
  selectedProduct.value?.specification_sheet?.split(',').forEach((sheet) => {
    currentSheets[sheet.split(': ')[0]] = sheet.split(': ')[1];
  });
  return currentSheets;
});

const onIframeLoad = () => {
  loadingDocument.value = false;
}

watch(currentDocuments, (newVal) => {
  selectedDocument.value = Object.keys(newVal)[0];
}, { immediate: true, deep: true });

watch(selectedDocument, (newVal) => {
  loadingDocument.value = true;
  nextTick(() => {
    const iframe = document.querySelector('#doc-iframe');
    if (iframe) {
      iframe.remove();
    }
    const iframeContainer = document.querySelector('#iframedoc-container');
    if (!iframeContainer) {
      return;
    }
    const newIframe = document.createElement('iframe');
    newIframe.id = 'doc-iframe';
    newIframe.classList.add('w-full', 'h-full');
    newIframe.src = currentDocuments.value[newVal];
    iframeContainer.appendChild(newIframe);
    newIframe.onload = onIframeLoad;
  });
}, { immediate: true, deep: true });

onBeforeUnmount(() => {
  const iframe = document.querySelector('#doc-iframe');
  if (iframe) {
    iframe.remove();
  }
});

</script>
