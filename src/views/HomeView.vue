<template>
  <div class="card flex flex-col justify-center items-center w-full gap-y-8">
    <div class="w-full flex justify-between items-center">
      <div>
        <Button type="button" label="Announcements" icon="pi pi-bell" :badge="`${announcementsLength}`"
          badgeSeverity="danger" severity="contrast" outlined @click="router.push('/announcements')" />
      </div>
      <div class="flex gap-4">
        <!-- TODO: REMOVE ISAGENT -->
        <Button type="button" label="Cart" icon="pi pi-shopping-cart" :badge="cartStore.cartItemCount.toString()"
          :disabled="cartStore.cartItemCount === 0" severity="contrast" outlined @click="router.push('/cart')" />
      </div>
    </div>
    <div class="w-full flex flex-col lg:flex-row justify-between items-center self-start -mt-4">
      <div v-if="userStore?.currentUser?.first_name"
        class="text-2xl text-black order-2 lg:order-1 flex justify-center items-center">
        <Avatar v-if="userStore?.currentUser?.avatar_url" :image="userStore?.currentUser?.avatar_url" class="mr-4"
          size="xlarge" shape="circle" />
        Welcome,&nbsp;
        <span class="font-bold">
          {{ userStore.currentUser?.first_name }}
          {{ userStore.currentUser?.last_name }}
        </span>
      </div>
      <div v-if="userStore?.company?.logo" class="mb-5 lg:mb-0 order-1 lg:order-2 h-14">
        <img :src="userStore?.company?.logo" class="w-auto max-h-14" />
      </div>
    </div>
    <div class="w-full flex flex-col xl:grid xl:grid-cols-5 gap-8 mb-5">
      <ProductConfigurator @product-selected="loadProductInformation" />
      <!--
        ------------------------------------------------------------
        COMPANY ONLY VIEW
        ------------------------------------------------------------
      -->
      <div v-if="
        selectedProduct &&
        selectedProduct.product &&
        !userStore?.isSales
      " class="w-full col-span-2 flex flex-col items-start xl:pl-4 xl:mt-7">
        <CompanyProductDetails />
        <ProductGallery />
      </div>
    </div>

    <SalesProductDetails v-if="selectedProduct && selectedProduct.product && userStore?.isSales" />
    <ProductGallery v-if="selectedProduct && selectedProduct.product && userStore?.isSales" />
    <SalesPriceCards v-if="selectedProduct && selectedProduct.product && userStore?.isSales" />

    <CompanyProductBreakdown v-if="selectedProduct && selectedProduct.product && !userStore?.isSales" />
    <SalesProductBreakdown v-if="selectedProduct && selectedProduct.product && userStore?.isSales" />

    <ProductSpecificationSheets />
    <ProductVariationsTable />
  </div>
</template>

<script setup>
import ProductVariationsTable from '@/components/Home/ProductVariationsTable.vue';
import ProductSpecificationSheets from '@/components/Home/ProductSpecificationSheets.vue';
import SalesProductBreakdown from '@/components/Home/SalesProductBreakdown.vue';
import SalesPriceCards from '@/components/Home/SalesPriceCards.vue';
import ProductGallery from '@/components/Home/ProductGallery.vue';
import SalesProductDetails from '@/components/Home/SalesProductDetails.vue';
import CompanyProductBreakdown from '@/components/Home/CompanyProductBreakdown.vue';
import ProductConfigurator from '@/components/Home/ProductConfigurator.vue';

import { computed, onMounted, ref, watch, inject } from 'vue';
import { useProduct } from '@/composables/product';
import { useUserStore } from '@/store/user';
import { useCartStore } from '@/store/cart';
import { useRouter, useRoute } from 'vue-router';
import { useProductVariations } from '@/composables/productVariations';
import { usePricing } from '@/composables/pricing';
import { textToKey } from '@/utils';

const division = inject('projectDivision');

const {
  materialAttributes,
  allAttributes,
  announcementsLength,
  loadProducts,
  loadMaterialAttributes,
  loadAttributes,
  loadAllAddons,
  retrieveAnnouncementsLength,
  loadProduct,
  selectedProduct,
  calculateSelectedAddons,
  selectedMaterial,
  setSelectedMaterial,
  setPromotionApplied,
  setSelectedAttributes,
  cleanSelectedAttributes,
  selectedAttributes,
} = useProduct();

const { loadProductVariations } = useProductVariations();

const userStore = useUserStore();
const cartStore = useCartStore();
const router = useRouter();
const route = useRoute();
const productQueryId = ref(route.query.product);

const {
  getPricesTiers,
  setSalesPriceTiers,
  setCompanyPriceTiers,
  setCurrentDealerPrice,
  currentDealerPrice,
} = usePricing();

const currentProduct = computed(() => {
  return selectedProduct.value;
});

const loadProductInformation = async () => {
  try {
    setSelectedMaterial(null);
    await loadMaterialAttributes(selectedProduct.value.product, division);
    materialAttributes.value.length > 0
      ? setSelectedMaterial(materialAttributes.value[0])
      : setSelectedMaterial(null);
    if (selectedMaterial.value && selectedMaterial.value.attribute_option) {
      await loadProductVariations(selectedProduct.value, userStore.currentCompany, userStore.currentRole, division);
    }
  } catch (e) {
    console.error(e);
  }
};

watch(
  currentProduct,
  async () => {
    setCurrentDealerPrice({
      ...currentDealerPrice.value,
      dealer_price: currentProduct?.value?.base_price_dealer || 0,
    });
  },
  {
    deep: true,
    immediate: true,
  },
);

watch(selectedMaterial, async () => {
  if (selectedMaterial.value && selectedMaterial.value.attribute_option) {
    setPromotionApplied(false);
    setCurrentDealerPrice({
      ...currentDealerPrice.value,
      material: selectedMaterial.value.add_on_price,
    });
    cleanSelectedAttributes();
    await loadAttributes(
      division,
      null,
      selectedProduct.value?.product ?? null,
      selectedMaterial.value?.attribute_option ?? null,
      selectedProduct.value?.size ?? null,
      selectedProduct.value?.feature_type ?? null,
      selectedProduct.value?.fire_feature_category ?? null,
      selectedProduct.value?.color_tones ?? null,
    );
    Object.keys(allAttributes.value).forEach((key) => {
      if (allAttributes.value[key].length > 0) {
        const selectedAttributeKey = textToKey(key);
        setSelectedAttributes({
          ...selectedAttributes.value,
          [selectedAttributeKey]: allAttributes.value[key][0],
        });
      } else {
        setSelectedAttributes({
          ...selectedAttributes.value,
          [selectedAttributeKey]: null,
        });
      }
    });
    await loadAllAddons(
      division,
      selectedProduct.value?.product ?? null,
      selectedProduct.value?.product_type ?? null,
      selectedMaterial.value?.attribute_option ?? null,
      selectedProduct.value?.size ?? null,
      selectedProduct.value?.feature_type ?? null,
      selectedProduct.value?.fire_feature_category ?? null,
      selectedProduct.value?.shape ?? null,
    );
    calculateSelectedAddons();
    await loadProductVariations(selectedProduct.value, userStore.currentCompany, userStore.currentRole, division);
  }
});

onMounted(async () => {
  if (route.query.product) {
    productQueryId.value = route.query.product;
    await loadProduct(route.query.product, division);
    await loadProductInformation();
  }
  if (route.query.s) {
    await loadProducts(route.query.s, division);
  }
  await retrieveAnnouncementsLength(division);
  const { salesPrices, companyPrices } = await getPricesTiers(division, userStore.currentCompany, userStore.currentRole);
  setSalesPriceTiers(salesPrices);
  setCompanyPriceTiers(companyPrices);
});
</script>
