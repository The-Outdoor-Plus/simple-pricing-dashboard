import { supabase } from '@/supabase';

export const getPricesTiers = async (
  division = 'The Outdoor Plus',
  currentCompany,
  currentRole,
) => {
  try {
    const { data, error } = await supabase
      .from('price_tiers')
      .select('*')
      .eq('division', division)
      .order('name', { ascending: true });
    if (error) throw error;

    const priceTiers = {};
    let localSalesPriceTiers = {};
    let localCompanyPriceTiers = {};

    data.forEach((tier) => {
      if (tier.show_to_roles.includes(currentRole)) {
        priceTiers[tier.name] = priceTiers[tier.name] || [];
        tier.show_as =
          tier.type === 'MAP' ||
          tier.type === 'MSRP' ||
          tier.type === 'Retail' ||
          tier.type === 'RETAIL'
            ? 'retail_price'
            : 'account_price';
        priceTiers[tier.name].push(tier);
      }
    });

    if (!['ADMIN', 'TOP_SALES', 'SALES'].includes(currentRole)) {
      let companyCost = null;
      Object.keys(priceTiers).forEach((tierName) => {
        if (
          priceTiers[tierName].every((tier) =>
            ['MAP', 'MSRP', 'Retail', 'RETAIL'].includes(tier.name),
          )
        ) {
          localCompanyPriceTiers[tierName] = priceTiers[tierName];
          delete priceTiers[tierName];
        }
      });
      const flattenPriceTiers = Object.values(priceTiers).flat();
      companyCost = flattenPriceTiers.find((tier) => tier.company === currentCompany.id);
      if (!companyCost) {
        companyCost = flattenPriceTiers.find((tier) => tier.default === true);
      }
      localCompanyPriceTiers['companyCost'] = companyCost;
    } else {
      localSalesPriceTiers = priceTiers;
    }

    return {
      salesPrices: localSalesPriceTiers,
      companyPrices: localCompanyPriceTiers,
    };
  } catch (error) {
    console.error(error);
  }
};

export const formatPrice = (price) => {
  return new Intl.NumberFormat('en-US', {
    style: 'currency',
    currency: 'USD',
  }).format(price);
};
