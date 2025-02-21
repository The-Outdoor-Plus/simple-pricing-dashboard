<template>
  <div class="w-full">
    <div v-if="currentConfigurationSKU" class="flex flex-row md:flex-col items-center justify-center mb-4">
      <h3 class="text-xl font-bold text-red-600 mr-2">SKU:</h3>
      <span class="text-2xl">
        {{ currentConfigurationSKU }}
      </span>
    </div>
  </div>
</template>
<script setup>
import { useProduct } from '@/composables/product';

const { currentConfigurationSKU } = useProduct();
</script>
