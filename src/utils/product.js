import { supabase } from '@/supabase';
import { formatPrice } from '@/utils/pricing';
import { calculateRetailPrice } from '@/utils';

export const retrieveMaterialAttributes = async (productName) => {
  try {
    let query = supabase.from('MaterialsAttributes').select(
      `
        id,
        attribute_type,
        product_filter,
        attribute_option,
        attribute_code,
        add_on_price,
        promo_code,
        discount,
        images,
        promotion_details
      `,
    );
    if (productName) query = query.eq('product_filter', productName);
    const { data, error } = await query;
    if (error) throw error;
    return data;
  } catch (e) {
    console.error(e);
  }
};

export const retrieveAttributes = async (
  attributeType = null,
  productFilter = null,
  materialFilter = null,
  sizeFilter = null,
  featureFilter = null,
  featureCategoryFilter = null,
  colorTonesFilter = null,
) => {
  try {
    let query = supabase
      .from('Attributes')
      .select(
        `id, attribute_type, attribute_option, add_on_price, attribute_code, code_identifier, product_filter, material_filter, size_filter, feature_filter, feature_category_filter, color_tones_filter`,
      );
    if (attributeType) query = query.eq('attribute_type', attributeType);
    if (productFilter)
      query = query.or(
        `product_filter.ilike."${productFilter.replace(/"/g, '\\"')}",` +
          `product_filter.ilike."%${productFilter.replace(/"/g, '\\"')},%",` +
          `product_filter.ilike."%, ${productFilter.replace(/"/g, '\\"')}%",` +
          `product_filter.ilike."%, ${productFilter.replace(/"/g, '\\"')},%",` +
          `product_filter.is.null`,
      );
    if (materialFilter)
      query = query.or(
        `material_filter.ilike."${materialFilter.replace(/"/g, '\\"')}",` +
          `material_filter.ilike."%${materialFilter.replace(/"/g, '\\"')},%",` +
          `material_filter.ilike."%, ${materialFilter.replace(/"/g, '\\"')}%",` +
          `material_filter.ilike."%, ${materialFilter.replace(/"/g, '\\"')},%",` +
          `material_filter.is.null`,
      );
    if (sizeFilter)
      query = query.or(
        `size_filter.ilike."${sizeFilter.replace(/"/g, '\\"')}",` +
          `size_filter.ilike."%${sizeFilter.replace(/"/g, '\\"')},%",` +
          `size_filter.ilike."%, ${sizeFilter.replace(/"/g, '\\"')}%",` +
          `size_filter.ilike."%, ${sizeFilter.replace(/"/g, '\\"')},%",` +
          `size_filter.is.null`,
      );
    if (featureFilter)
      query = query.or(
        `feature_filter.ilike."${featureFilter.replace(/"/g, '\\"')}",` +
          `feature_filter.ilike."%${featureFilter.replace(/"/g, '\\"')},%",` +
          `feature_filter.ilike."%, ${featureFilter.replace(/"/g, '\\"')}%",` +
          `feature_filter.ilike."%, ${featureFilter.replace(/"/g, '\\"')},%",` +
          `feature_filter.is.null`,
      );
    if (featureCategoryFilter)
      query = query.or(
        `feature_category_filter.ilike."${featureCategoryFilter.replace(/"/g, '\\"')}",` +
          `feature_category_filter.ilike."%${featureCategoryFilter.replace(/"/g, '\\"')},%",` +
          `feature_category_filter.ilike."%, ${featureCategoryFilter.replace(/"/g, '\\"')}%",` +
          `feature_category_filter.ilike."%, ${featureCategoryFilter.replace(/"/g, '\\"')},%",` +
          `feature_category_filter.is.null`,
      );
    if (colorTonesFilter)
      query = query.or(
        `color_tones_filter.ilike."${colorTonesFilter.replace(/"/g, '\\"')}",` +
          `color_tones_filter.ilike."%${colorTonesFilter.replace(/"/g, '\\"')},%",` +
          `color_tones_filter.ilike."%, ${colorTonesFilter.replace(/"/g, '\\"')}%",` +
          `color_tones_filter.ilike."%, ${colorTonesFilter.replace(/"/g, '\\"')},%",` +
          `color_tones_filter.is.null`,
      );
    const { data, error } = await query;
    if (error) throw error;
    return data;
  } catch (e) {
    console.error(e);
  }
};

export const getSelectedAddonText = (
  key = null,
  optionName = null,
  partNumber = null,
  priceAddOn = null,
) => {
  let text = ``;
  if (key) text += `Selected ${key}:`;
  if (optionName) text += ` ${optionName}`;
  if (partNumber) text += ` (${partNumber})`;
  if (priceAddOn) text += ` +${formatPrice(calculateRetailPrice(priceAddOn, 'MAP'))}`;
  return text;
};

export const getSelectedAttributeText = (key = null, optionName = null) => {
  let text = ``;
  if (key) text += `Selected ${key}:`;
  if (optionName) text += ` ${optionName}`;
  return text;
};
