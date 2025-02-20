<template>
  <div class="w-full">
    <div v-if="getPriceBreakdown.length">
      <h3 class="text-2xl font-bold text-green-600 mt-6 mb-4">Price Breakdown</h3>
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
        <Column header="MAP">
          <template #body="slotProps">
            {{
              formatPrice(slotProps.data.company_prices.find((price) => price.type === 'MAP')?.price)
            }}
          </template>
        </Column>
        <Column header="MSRP">
          <template #body="slotProps">
            {{
              formatPrice(slotProps.data.company_prices.find((price) => price.type === 'MSRP')?.price)
            }}
          </template>
        </Column>
        <Column
          :header="`${userStore?.company?.name ?? userStore.currentRole ?? userStore.currentCompanyRole ?? 'Your Company'} Cost`">
          <template #body="slotProps">
            {{
              formatPrice(slotProps.data.company_prices.find((price) => price.show_as === 'account_price')?.price)
            }}
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
import { useUserStore } from '@/store/user';
import { useProduct } from '@/composables/product';
import { formatPrice } from '@/utils/pricing';
import { usePricing } from '@/composables/pricing';

const userStore = useUserStore();
const { currentConfigurationSKU } = useProduct();
const { getPriceBreakdown } = usePricing();
</script>
