<template>
  <div class="w-full my-4">
    <div v-if="showProductVariationsTable" class="self-start w-full flex items-center justify-between mb-4">
      <h2 class="self-start text-orange-900 text-lg font-semibold">
        {{ selectedProduct.product }} Part Numbers
      </h2>
    </div>
    <DataTable v-show="isVariationTableLoading" :value="Array.from(10)" class="w-full">
      <Column header="Name">
        <template #body>
          <Skeleton></Skeleton>
        </template>
      </Column>
      <Column header="SKU">
        <template #body>
          <Skeleton></Skeleton>
        </template>
      </Column>
      <Column header="MAP">
        <template #body>
          <Skeleton></Skeleton>
        </template>
      </Column>
      <Column header="MSRP">
        <template #body>
          <Skeleton></Skeleton>
        </template>
      </Column>
    </DataTable>
    <Tabs v-if="showProductVariationsTable" :value="0" scrollable class="w-full">
      <TabList>
        <Tab v-for="(values, key, index) in productVariations" :key="key" :value="index">
          {{ key }}
        </Tab>
      </TabList>
      <TabPanels>
        <TabPanel v-for="(values, key, index) in productVariations" :key="`${key}-table`" :value="index">
          <!-- {{ values }} -->
          <DataTable :value="values.combinations" table-style="min-width: 100%;" striped-rows
            :virtualScrollerOptions="{ itemSize: 75 }" scrollable scroll-height="500px" :key="`${key}-data-table`">
            <Column header="Product Name" style="min-width: 12rem">
              <template #body="slotProps">
                {{ selectedProduct.product }}
              </template>
            </Column>
            <Column field="Name" header="Variation Name" style="min-width: 15rem"></Column>
            <Column field="SKU" header="SKU" style="min-width: 15rem"></Column>
            <Column v-for="(column_name) in values.price_columns" :key="`${column_name}-col`" field="prices"
              :header="column_name === 'companyCost' ? `${userStore?.company?.name ?? userStore.currentRole ?? userStore.currentCompanyRole ?? 'Your Company'} Cost` : column_name">
              <template #body="slotProps">
                {{ formatPrice(slotProps.data.prices[column_name]) }}
              </template>
            </Column>
          </DataTable>
        </TabPanel>
      </TabPanels>
    </Tabs>
    <div v-if="showProductVariationsTable" class="w-full flex justify-end mr-2 mt-6">
      <Button label="Download CSV" icon="pi pi-download" severity="info" @click="generateCSV" />
    </div>
  </div>
</template>

<script setup>
import { computed, ref, onMounted, inject, nextTick, watch } from 'vue';
import { useUserStore } from '@/store/user';
import { useAppStore } from '@/store/app';
import { useProduct } from '@/composables/product';
import { useProductVariations } from '@/composables/productVariations';
import { formatPrice } from '@/utils/pricing';
import { textToKey } from '@/utils';

/**
 * ------------------------------------------------------------
 * General Variables
 * ------------------------------------------------------------
 */
const userStore = useUserStore();
const appStore = useAppStore();

/**
 * ------------------------------------------------------------
 * Product Variations
 * ------------------------------------------------------------
 */

const { selectedProduct } = useProduct();
const { productVariations, loadProductVariations } = useProductVariations();
const isVariationTableLoading = ref(false);
const division = inject('projectDivision');

const showProductVariationsTable = computed(() => {
  return !!(selectedProduct.value && selectedProduct.value.product && productVariations.value && Object.keys(productVariations.value).length > 0);
});

const generateCSV = () => {
  appStore.setLoading(true);
  const allRows = Object.values(productVariations.value).flat().flatMap((variation) => variation.combinations);

  const rows = allRows.map((row) => {
    const newPrices = Object.keys(row.prices).reduce((acc, key) => {
      let newKey = '';
      if (key === 'companyCost') {
        newKey = 'Your Company Cost';
      } else {
        newKey = `${key} Price`;
      }
      acc[newKey] = row.prices[key];
      return acc;
    }, {});

    let newRow = {
      SKU: row.SKU,
      Name: row.Name,
      'Base Product Name': selectedProduct.value.product,
      ...newPrices,
    }

    return newRow;
  });

  const headers = Object.keys(rows[0]);

  const cvsContent = [
    headers.join(','),
    ...rows.map((row) => headers.map((header) => `"${row[header]}"`).join(',')),
  ].join('\n');

  const blob = new Blob([cvsContent], { type: 'text/csv;charset=utf-8' });
  const link = document.createElement('a');
  link.href = URL.createObjectURL(blob);
  link.download = `${textToKey(selectedProduct.value.product)}-part_numbers.csv`;
  link.click();
  URL.revokeObjectURL(link.href);
  setTimeout(() => {
    appStore.setLoading(false);
  }, 2000);
};

/**
 * ------------------------------------------------------------
 * Lifecycle Hooks
 * ------------------------------------------------------------
 */

watch(() => selectedProduct, async () => {
  if (selectedProduct.value) {
    await loadProductVariations(selectedProduct.value, userStore.currentCompany, userStore.currentRole, division);
  }
}, { immediate: true, deep: true });

onMounted(async () => {
  await nextTick(async () => {
    if (selectedProduct.value) {
      await loadProductVariations(selectedProduct.value, userStore.currentCompany, userStore.currentRole, division);
    }
  });
});
</script>
