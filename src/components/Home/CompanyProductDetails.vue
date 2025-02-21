<template>
  <div class="w-full mt-4">
    <div v-if="currentConfigurationSKU" class="flex items-center justify-start mb-4">
      <h3 class="text-xl font-bold text-red-600 mr-2">SKU:</h3>
      <span class="text-xl">
        {{ currentConfigurationSKU }}
      </span>
    </div>
    <div v-if="companyPriceTiers['MAP']?.[0]?.formula" class="flex items-center justify-start mb-4">
      <h2 class="text-2xl font-bold mr-2">MAP:</h2>
      <span class="text-2xl">{{ formatPrice(evaluateFormula(companyPriceTiers['MAP']?.[0]?.formula, {
        basePrice: getTotalDealerPrice()
      })) }}</span>
    </div>
    <div v-if="companyPriceTiers['MSRP']?.[0]?.formula" class="flex items-center justify-start mb-4">
      <h2 class="text-2xl font-bold mr-2">MSRP:</h2>
      <span class="text-2xl">{{ formatPrice(evaluateFormula(companyPriceTiers['MSRP']?.[0]?.formula, {
        basePrice: getTotalDealerPrice()
      })) }}</span>
    </div>
    <div v-if="companyPriceTiers['companyCost']?.formula" class="flex items-center justify-start mb-4">
      <h2 class="text-2xl font-bold mr-2">
        {{ userStore?.company?.name || 'Your Company' }} Cost:
      </h2>
      <span class="text-2xl">{{ formatPrice(evaluateFormula(companyPriceTiers['companyCost']?.formula, {
        basePrice: getTotalDealerPrice()
      })) }}</span>
    </div>
  </div>
</template>
<script setup>
import { usePricing } from '@/composables/pricing';
import { formatPrice } from '@/utils/pricing';
import { evaluateFormula } from '@/utils/formulaEvaluator';
import { useUserStore } from '@/store/user';
import { useProduct } from '@/composables/product';

const { companyPriceTiers, getTotalDealerPrice } = usePricing();
const userStore = useUserStore();
const { currentConfigurationSKU } = useProduct();

</script>
