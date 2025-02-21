<template>
  <div class="full">
    <div v-if="getPriceBreakdown.length" class="w-full">
      <h3 class="text-2xl font-bold text-green-600 my-4">Price Breakdown</h3>
      <DataTable :value="getPriceBreakdown" class="w-full" table-style="min-width: 100%;" style="width: 100%">
        <Column header="Name" style="min-width: 13rem">
          <template #body="slotProps">
            {{ slotProps.data.attribute_option }} <br />
            {{
              slotProps.data?.attribute_option?.includes('Selected configuration')
                ? currentConfigurationSKU
                : slotProps?.data?.part_number || ''
            }}
          </template>
        </Column>
        <Column v-for="column in getSalesBreakdownPricesColumns" :key="column">
          <template #header="slotProps">
            <div class="flex items-center justify-center font-semibold transition-all duration-300"
              :class="{ 'blur-sm select-none': !flippedCards.includes(`flip-card-${column}`) && column !== 'MAP' && column !== 'MSRP' }">
              <template v-if="!flippedCards.includes(`flip-card-${column}`) && column !== 'MAP' && column !== 'MSRP'">
                Account Cost
              </template>
              <template v-else>
                {{ column }}
              </template>
            </div>
          </template>
          <template #body="slotProps">
            <div class="transition-all duration-300"
              :class="{ 'blur-sm select-none': !flippedCards.includes(`flip-card-${column}`) && column !== 'MAP' && column !== 'MSRP' }">
              <template v-if="!flippedCards.includes(`flip-card-${column}`) && column !== 'MAP' && column !== 'MSRP'">
                $0.00
              </template>
              <template v-else>
                {{ formatPrice(slotProps.data.sales_prices.find((price) => price.name === column)?.price) }}
              </template>
            </div>
          </template>
        </Column>
      </DataTable>
    </div>
    <!-- TODO: REMOVE ISAGENT -->
    <!-- <div v-if="getPriceBreakdown.length" class="w-full flex justify-end gap-4 mb-4 mt-4">
          <Button label="Add to Cart" icon="pi pi-shopping-cart" severity="success" @click="addToCart" />
        </div> -->
  </div>
</template>

<script setup>
import { computed } from 'vue';
import { formatPrice } from '@/utils/pricing';
import { usePricing } from '@/composables/pricing';
import { useProduct } from '@/composables/product';

const { getPriceBreakdown, flippedCards } = usePricing();
const { currentConfigurationSKU } = useProduct();

const getSalesBreakdownPricesColumns = computed(() => {
  const priority = { 'MAP': 0, 'MSRP': 1 };
  return getPriceBreakdown.value.reduce((acc, item) => {
    return Array.from(new Set([...acc, ...item.sales_prices.map((price) => price.name)]));
  }, []).sort((a, b) => (priority[a] ?? 2) - (priority[b] ?? 2));
})
</script>
