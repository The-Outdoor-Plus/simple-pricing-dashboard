<template>
  <div class="w-full">
    <div v-if="selectedMaterial && currentImages.length > 0" class="w-full flex justify-center">
      <Galleria :value="currentImages" :key="currentImages.length
        ? `${selectedProduct?.product}-${selectedMaterial.attribute_option}-${currentImages[0].label}`
        : 0
        " :responsiveOptions="responsiveOptions" :numVisible="5" :circular="true"
        containerStyle="max-width: 600px; width: 100%" :showItemNavigators="true" :showItemNavigatorsOnHover="true"
        class="w-full">
        <template #item="slotProps">
          <img :src="slotProps.item.imgUrl" :alt="slotProps.item.label"
            style="width: auto; display: block; max-height: 340px" class="mb-10" />
        </template>
        <template #thumbnail="slotProps">
          <div class="px-3">
            <img :src="slotProps.item.imgUrl" :alt="slotProps.item.label"
              style="display: block; width: auto; max-height: 120px" />
          </div>
        </template>
        <template #caption="slotProps">
          <div class="text-xl mb-2 font-bold">{{ slotProps.item.label }}</div>
        </template>
      </Galleria>
    </div>
  </div>
</template>

<script setup>
import { computed } from 'vue';
import { useProduct } from '@/composables/product';
import { extractImages } from '@/utils';

const { selectedProduct, selectedMaterial } = useProduct();

const currentImages = computed(() => {
  const productImages = extractImages(selectedProduct.value?.images);
  const materialImages = extractImages(selectedMaterial.value?.images);
  return [...productImages, ...materialImages];
});
</script>

<style lang="scss" scoped>
:deep(.p-galleria-next-icon) {
  color: red !important;
}

:deep(.p-galleria-prev-icon) {
  color: red !important;
}
</style>
