import { useCartStore } from '@/store/cart';
import { useUserStore } from '@/store/user';
import { useToast } from 'primevue/usetoast';

export function useUtils() {
  const cartStore = useCartStore();
  const userStore = useUserStore();
  const toast = useToast();

  const currentConfigurationName = computed(() => {
    let baseName = '';
    if (selectedProduct.value?.product) {
      baseName = baseName + selectedProduct.value.product;

      if (selectedMaterial.value && selectedMaterial.value.attribute_option) {
        baseName = baseName + ` - ${selectedMaterial.value.attribute_option}`;
      }

      Object.keys(selectedAttributes.value).forEach((key) => {
        if (selectedAttributes.value[key] && selectedAttributes.value[key].attribute_option) {
          baseName = baseName + ` - ${selectedAttributes.value[key].attribute_option}`;
        }
      });
      return baseName;
    }
  });

  const addToCart = (getPriceBreakdown, currentConfigurationName, currentConfigurationSKU) => {
    cartStore.addToCart(
      getPriceBreakdown.value,
      {
        name: currentConfigurationName.value,
        sku: currentConfigurationSKU.value,
      },
      userStore?.currentRole
        ? userStore.currentRole
        : userStore?.currentCompanyRole
          ? userStore?.currentCompanyRole
          : null,
    );
    toast.add({
      severity: 'success',
      summary: 'Added to Cart',
      detail: 'Items have been added to your cart',
      life: 3000,
    });
  };

  return {
    addToCart,
  };
}
