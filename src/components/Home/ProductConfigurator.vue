<template>
  <div class="w-full gap-y-8" :class="!userStore?.isSales
    ? 'col-span-3 flex flex-col'
    : 'col-span-5 flex flex-col lg:grid lg:grid-cols-2 lg:gap-x-8'
    ">
    <div class="w-full flex flex-col gap-y-6">
      <div class="-mb-4">
        <h3 class="text-black font-semibold text-xl ml-2 -mb-2">Product Configuration</h3>
        <Divider />
      </div>
      <div class="w-full flex flex-col">
        <span class="text-black font-medium mb-2">
          {{
            selectedProduct?.product
              ? `Product selected: ${selectedProduct.product}
          (${selectedProduct?.base_part_number})`
              : 'Select a product'
          }}
        </span>
        <AutoComplete :model-value="selectedProduct" @update:model-value="updateSelectedProduct"
          name="productAutoComplete" option-label="product" :suggestions="filteredProductsList"
          @complete="searchProducts" dropdown :virtual-scroller-options="{ itemSize: 45 }" size="medium" class="w-full"
          placeholder="Search for a product..." @option-select="onProductSelect()" @change="onSearchProductChange">
          <template #option="slotProps">
            <span v-html="highlightMatch(
              `${slotProps.option.product} (${slotProps.option.base_part_number})`,
            )
              "></span>
          </template>
        </AutoComplete>
      </div>
      <div v-if="materialAttributes.length" class="w-full flex flex-col">
        <span class="text-black font-medium mb-2">
          {{
            selectedMaterial?.attribute_option
              ? `Selected material: ${selectedMaterial.attribute_option}`
              : 'Select a material'
          }}
        </span>
        <Select v-model="selectedMaterial" name="material" :options="materialAttributes" option-label="attribute_option"
          placeholder="Select a material" fluid class="w-full"></Select>
      </div>
      <template v-for="(attributeType, key) in allAttributes" :key="key">
        <div v-if="attributeType && attributeType.length" class="w-full flex flex-col">
          <span class="text-black font-medium mb-2">
            {{
              selectedAttributes?.[textToKey(key)]?.attribute_option
                ? getSelectedAttributeText(
                  key,
                  selectedAttributes?.[textToKey(key)].attribute_option,
                )
                : `Select ${key}`
            }}
          </span>
          <Select v-model="selectedAttributes[textToKey(key)]" :name="textToKey(key)" :options="attributeType"
            option-label="attribute_option" :placeholder="`Select ${key}`" fluid class="w-full"></Select>
        </div>
      </template>
    </div>
    <div class="w-full flex flex-col gap-y-6">
      <div v-if="Object.keys(addOns).length" class="-mb-4">
        <h3 class="text-black font-semibold text-xl ml-2 -mb-2">Add Ons</h3>
        <Divider />
      </div>
      <template v-for="(addOnType, key) in addOns" :key="key">
        <div v-if="addOnType && addOnType.length" class="w-full flex flex-col">
          <span class="text-black font-medium mb-2">
            {{
              selectedAddons?.[textToKey(key)]?.attribute_option &&
                selectedAddons?.[textToKey(key)]?.attribute_option !== 'None'
                ? getSelectedAddonText(
                  key,
                  selectedAddons?.[textToKey(key)]?.attribute_option,
                  selectedAddons?.[textToKey(key)]?.part_number,
                  selectedAddons?.[textToKey(key)]?.add_on_price,
                )
                : `Select ${key}`
            }}
          </span>
          <Select v-model="selectedAddons[textToKey(key)]" :name="textToKey(key)" :options="addOnType"
            option-label="attribute_option" :placeholder="`Select ${key}`" fluid class="w-full">
            <template #option="slotProps">
              {{ slotProps.option.attribute_option }}
              {{
                slotProps?.option?.add_on_price
                  ? `(+${formatPrice(evaluateFormula(
                    salesPriceTiers['MAP']?.[0]?.formula ??
                    companyPriceTiers['MAP']?.[0]?.formula,
                    {
                      basePrice: slotProps?.option?.add_on_price
                    }
                  ))})`
                  : ''
              }}
            </template>
          </Select>
        </div>
      </template>
    </div>
  </div>
</template>

<script setup>
import { ref, defineEmits, onMounted, inject } from 'vue';
import { useRoute, useRouter } from 'vue-router';
import { useUserStore } from '@/store/user';
import { useProduct } from '@/composables/product';
import { usePricing } from '@/composables/pricing';
import { formatPrice } from '@/utils/pricing';
import { evaluateFormula } from '@/utils/formulaEvaluator';
import { getSelectedAddonText, getSelectedAttributeText } from '@/utils/product';
import { textToKey } from '@/utils';

const division = inject('projectDivision');

const userStore = useUserStore();
const route = useRoute();
const router = useRouter();
const {
  products,
  addOns,
  loadProducts,
  selectedProduct,
  selectedMaterial,
  selectedAttributes,
  selectedAddons,
  allAttributes,
  materialAttributes,
  updateSelectedProduct,
} = useProduct();
const { salesPriceTiers, companyPriceTiers } = usePricing();

const emit = defineEmits(['product-selected']);

const filteredProductsList = ref();
const eventQuery = ref('');
const productQuerySearch = ref(route.query.s);

const searchProducts = (event) => {
  eventQuery.value = event.query;
  setTimeout(() => {
    if (!event.query.trim().length) {
      filteredProductsList.value = [...products.value];
    } else {
      const queryWords = event.query.toLowerCase().split(/\s+/);
      filteredProductsList.value = products.value.filter((product) => {
        const productName = product.product.toLowerCase();
        const basePartNumber = product.base_part_number?.toLowerCase() || '';
        return queryWords.every(
          (word) => productName.includes(word) || basePartNumber.includes(word),
        );
      });
    }
  }, 250);
};

const highlightMatch = (text) => {
  const queryWords = eventQuery.value.toLowerCase().split(/\s+/); // Split query into words
  let highlightedText = text;

  queryWords.forEach((word) => {
    if (word.trim()) {
      const regex = new RegExp(`(${word})`, 'gi'); // Case-insensitive matching
      highlightedText = highlightedText.replace(regex, '<b>$1</b>');
    }
  });

  return highlightedText;
};

const onSearchProductChange = async (event) => {
  if (event.value && event.value.length > 2) {
    await loadProducts(event.value, division);
    productQuerySearch.value = event.value;
  }
};

const onProductSelect = async () => {
  router.replace({ path: '/', query: { product: selectedProduct.value.id, s: productQuerySearch.value } })
  emit('product-selected');
};

onMounted(async () => {
  if (route.query.s) {
    productQuerySearch.value = route.query.s;
  }
});

</script>

<style scoped></style>
