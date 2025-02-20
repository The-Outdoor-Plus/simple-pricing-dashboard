<template>
  <div class="w-full">
    <div v-if="selectedProduct && selectedProduct.specification_sheet"
      class="w-full flex flex-col justify-center items-center">
      <h2 class="text-2xl font-bold text-orange-900 mb-6">Specification Sheets</h2>
      <iframe :src="currentSpecificationSheets[0].url" class="w-10/12 h-[600px]" style="border: none;">
      </iframe>
    </div>
  </div>
</template>
<script setup>
import { computed } from 'vue';
import { useProduct } from '@/composables/product';

const { selectedProduct } = useProduct();

const currentSpecificationSheets = computed(() => {
  return selectedProduct.value?.specification_sheet.split(',').map((sheet) => ({
    label: sheet.split(': ')[0],
    url: sheet.split(': ')[1],
  }));
})
</script>
