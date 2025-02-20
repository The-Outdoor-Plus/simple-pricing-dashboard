import { ref, computed } from 'vue';
import { getPricesTiers } from '@/utils/pricing';
import { useProduct } from '@/composables/product';
import { evaluateFormula } from '@/utils/formulaEvaluator';
import { calculatePrice, calculateRetailPrice } from '@/utils';

const salesPriceTiers = ref({});
const companyPriceTiers = ref({});
const currentDealerPrice = ref({
  dealer_price: 0,
  material: 0,
});
const flippedCards = ref([]);

export function usePricing() {
  const {
    selectedAddons,
    selectedProduct,
    selectedMaterial,
    promotionApplied,
    selectedAttributes,
  } = useProduct();

  const setCompanyPriceTiers = async (newVal) => {
    companyPriceTiers.value = newVal;
  };

  const setSalesPriceTiers = async (newVal) => {
    salesPriceTiers.value = newVal;
  };

  const setCurrentDealerPrice = (newVal) => {
    currentDealerPrice.value = newVal;
  };

  const setFlippedCards = (newVal) => {
    flippedCards.value = newVal;
  };

  const getTotalDealerPrice = () => {
    let totalPrice = 0;
    Object.values(currentDealerPrice.value).forEach((value) => {
      totalPrice += value;
    });
    Object.values(selectedAttributes.value).forEach((value) => {
      totalPrice += value?.add_on_price || 0;
    });
    return totalPrice;
  };

  const getAddons = computed(() => {
    return Object.values(selectedAddons.value)
      .filter((addon) => addon.attribute_option !== 'None')
      .map((addon) => ({
        ...addon,
        company_prices: Object.values(companyPriceTiers.value)
          .flat()
          .map((tier) => {
            return {
              ...tier,
              price: evaluateFormula(tier.formula, {
                basePrice: addon.add_on_price,
              }),
            };
          }),
        sales_prices: Object.values(salesPriceTiers.value)
          .flat()
          .map((tier) => {
            return {
              ...tier,
              price: evaluateFormula(tier.formula, {
                basePrice: addon.add_on_price,
              }),
            };
          }),
        add_on_price_group: calculatePrice(addon.add_on_price, 'GROUP'),
        add_on_price_landscape: calculatePrice(addon.add_on_price, 'LANDSCAPE'),
        add_on_price_internet: calculatePrice(addon.add_on_price, 'INTERNET'),
        add_on_price_distributor: calculatePrice(addon.add_on_price, 'DISTRIBUTOR'),
        add_on_price_master_distributor: calculatePrice(addon.add_on_price, 'MASTER_DISTRIBUTOR'),
        add_on_price_map: calculateRetailPrice(addon.add_on_price, 'MAP'),
        add_on_price_msrp: calculateRetailPrice(addon.add_on_price, 'MSRP'),
      }));
  });

  const getPriceBreakdown = computed(() => {
    const priceBreakdown = [];
    if (selectedProduct.value && selectedProduct.value.base_price_dealer) {
      priceBreakdown.push({
        attribute_option: `Selected configuration for: ${selectedProduct.value.product}`,
        company_prices: Object.values(companyPriceTiers.value)
          .flat()
          .map((tier) => {
            return {
              ...tier,
              price: evaluateFormula(tier.formula, {
                basePrice: getTotalDealerPrice(),
              }),
            };
          }),
        sales_prices: Object.values(salesPriceTiers.value)
          .flat()
          .map((tier) => {
            return {
              ...tier,
              price: evaluateFormula(tier.formula, {
                basePrice: getTotalDealerPrice(),
              }),
            };
          }),
        add_on_price: calculatePrice(getTotalDealerPrice(), 'DEALER'),
        add_on_price_group: calculatePrice(getTotalDealerPrice(), 'GROUP'),
        add_on_price_landscape: calculatePrice(getTotalDealerPrice(), 'LANDSCAPE'),
        add_on_price_internet: calculatePrice(getTotalDealerPrice(), 'INTERNET'),
        add_on_price_distributor: calculatePrice(getTotalDealerPrice(), 'DISTRIBUTOR'),
        add_on_price_master_distributor: calculatePrice(
          getTotalDealerPrice(),
          'MASTER_DISTRIBUTOR',
        ),
        add_on_price_map: calculateRetailPrice(getTotalDealerPrice(), 'MAP'),
        add_on_price_msrp: calculateRetailPrice(getTotalDealerPrice(), 'MSRP'),
        discount:
          selectedMaterial.value && selectedMaterial.value.discount && promotionApplied.value
            ? selectedMaterial.value.discount
            : 0,
      });
      if (getAddons.value.length > 0) priceBreakdown.push(...getAddons.value);
    }

    const totalCompanyPricesMap = new Map();
    const totalSalesPricesMap = new Map();

    for (const product of priceBreakdown) {
      for (const priceTier of product.company_prices) {
        if (!totalCompanyPricesMap.has(priceTier.type)) {
          totalCompanyPricesMap.set(priceTier.type, {
            ...priceTier,
            price: 0,
          });
        }
        totalCompanyPricesMap.get(priceTier.type).price += priceTier.price;
      }

      for (const priceTier of product.sales_prices) {
        if (!totalSalesPricesMap.has(priceTier.name)) {
          totalSalesPricesMap.set(priceTier.name, {
            ...priceTier,
            price: 0,
          });
        }
        totalSalesPricesMap.get(priceTier.name).price += priceTier.price;
      }
    }

    const total = {
      attribute_option: 'Total',
      company_prices: Array.from(totalCompanyPricesMap.values()),
      sales_prices: Array.from(totalSalesPricesMap.values()),
      add_on_price: priceBreakdown.reduce(
        (acc, item) =>
          acc + (item?.discount ? item.add_on_price * (1 - item.discount) : item.add_on_price),
        0,
      ),
      add_on_price_group: priceBreakdown.reduce(
        (acc, item) =>
          acc +
          (item?.discount
            ? item.add_on_price_group * (1 - item.discount)
            : item.add_on_price_group),
        0,
      ),
      add_on_price_landscape: priceBreakdown.reduce(
        (acc, item) =>
          acc +
          (item?.discount
            ? item.add_on_price_landscape * (1 - item.discount)
            : item.add_on_price_landscape),
        0,
      ),
      add_on_price_internet: priceBreakdown.reduce(
        (acc, item) =>
          acc +
          (item?.discount
            ? item.add_on_price_internet * (1 - item.discount)
            : item.add_on_price_internet),
        0,
      ),
      add_on_price_master_distributor: priceBreakdown.reduce(
        (acc, item) => acc + item.add_on_price_master_distributor,
        0,
      ),
      add_on_price_distributor: priceBreakdown.reduce(
        (acc, item) => acc + item.add_on_price_distributor,
        0,
      ),
      add_on_price_map: priceBreakdown.reduce(
        (acc, item) =>
          acc +
          (item?.discount ? item.add_on_price_map * (1 - item.discount) : item.add_on_price_map),
        0,
      ),
      add_on_price_msrp: priceBreakdown.reduce(
        (acc, item) =>
          acc +
          (item?.discount ? item.add_on_price_msrp * (1 - item.discount) : item.add_on_price_msrp),
        0,
      ),
    };
    priceBreakdown.push(total);
    return priceBreakdown;
  });

  return {
    salesPriceTiers,
    companyPriceTiers,
    getPricesTiers,
    currentDealerPrice,
    flippedCards,
    setCompanyPriceTiers,
    setSalesPriceTiers,
    setCurrentDealerPrice,
    setFlippedCards,
    getTotalDealerPrice,
    getPriceBreakdown,
  };
}
