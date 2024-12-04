import { ref } from 'vue';
import { supabase } from '@/supabase';
import { useToast } from 'primevue';
import { useUserStore } from '@/store/user';
import { useAppStore } from '@/store/app';

export function useProduct() {
  const appStore = useAppStore();
  const toast = useToast();
  const products = ref([]);
  const materialAttributes = ref([]);
  const attributes = ref({});
  const allAttributes = ref([]);
  const addOns = ref({});
  const announcements = ref([]);
  const announcementsLength = ref(0);

  const loadProducts = async () => {
    try {
      appStore.setLoading(true);
      const { data, error } = await supabase.from('BaseProducts').select(`
        id,
        base_part_number,
        product,
        base_price_dealer,
        code_formula,
        product_shape,
        specification_sheet,
        size,
        feature_type,
        product_type,
        fire_feature_category
      `);

      if (error) throw error;
      products.value = data;
    } catch (e) {
      console.error(e);
      toast.add({
        severity: 'error',
        summary: 'Error loading products list',
        detail: e?.message || 'Something went wrong. Please contact TOP Support',
        life: 3000,
      });
      products.value = [];
    } finally {
      appStore.setLoading(false);
    }
  };

  const retrieveMaterialAttributes = async (productName) => {
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

  const loadMaterialAttributes = async (productName) => {
    try {
      appStore.setLoading(true);
      materialAttributes.value = await retrieveMaterialAttributes(productName);
    } catch (e) {
      toast.add({
        severity: 'error',
        summary: 'Error loading materials',
        detail: e?.message || 'Something went wrong. Please contact TOP Support',
        life: 3000,
      });
      console.error(e);
      materialAttributes.value = [];
    } finally {
      appStore.setLoading(false);
    }
  };

  const retrieveAttributes = async (
    attributeType = null,
    productFilter = null,
    materialFilter = null,
    sizeFilter = null,
    featureFilter = null,
    featureCategoryFilter = null,
  ) => {
    try {
      let query = supabase
        .from('Attributes')
        .select(
          `id, attribute_type, attribute_option, add_on_price, attribute_code, code_identifier, product_filter, material_filter, size_filter, feature_filter, feature_category_filter`,
        );
      if (attributeType) query = query.eq('attribute_type', attributeType);
      if (productFilter)
        query = query.or(`product_filter.ilike.%${productFilter}%,product_filter.is.null`);
      if (materialFilter)
        query = query.or(`material_filter.ilike.%${materialFilter}%,material_filter.is.null`);
      if (sizeFilter) query = query.or(`size_filter.ilike.%${sizeFilter}%,size_filter.is.null`);
      if (featureFilter)
        query = query.or(`feature_filter.ilike.%${featureFilter}%,feature_filter.is.null`);
      if (featureCategoryFilter)
        query = query.or(
          `feature_category_filter.ilike.%${featureCategoryFilter}%,feature_category_filter.is.null`,
        );
      const { data, error } = await query;
      if (error) throw error;
      return data;
    } catch (e) {
      console.error(e);
    }
  };

  const loadAttributes = async (
    attributeType = null,
    productFilter = null,
    materialFilter = null,
    sizeFilter = null,
    featureFilter = null,
    featureCategoryFilter = null,
  ) => {
    const attribute = attributeType?.toLowerCase()?.split(' ').join('_') || '';
    try {
      appStore.setLoading(true);
      const attributesValues = await retrieveAttributes(
        attributeType,
        productFilter,
        materialFilter,
        sizeFilter,
        featureFilter,
        featureCategoryFilter,
      );
      if (attribute) attributes.value[attribute] = attributesValues;
      if (!attributeType) {
        allAttributes.value = attributesValues.reduce((acc, item) => {
          const key = item.attribute_type;
          if (!acc[key]) acc[key] = [];
          acc[key].push(item);
          return acc;
        }, {});
      }
    } catch (e) {
      console.error(e);
      toast.add({
        severity: 'error',
        summary: attributeType
          ? `Error loading attributes ${attributeType}`
          : 'Error loading attributes',
        detail: e?.message || 'Something went wrong. Please contact TOP Support',
        life: 3000,
      });
      if (attribute) attributes.value[attribute] = [];
      if (!attributeType) allAttributes.value = {};
    } finally {
      appStore.setLoading(false);
    }
  };

  const retrieveAllAddons = async (
    productFilter = null,
    productTypeFilter = null,
    materialFilter = null,
    sizeFilter = null,
    featureFilter = null,
    featureCategoryFilter = null,
    shapeFilter = null,
  ) => {
    try {
      let query = supabase.from('AddOns').select(
        `id,
        add_on_type,
        attribute_option,
        part_number,
        add_on_price,
        product_filter,
        product_type_filter,
        material_filter,
        size_filter,
        feature_filter,
        feature_category_filter,
        shape_filter`,
      );
      if (productFilter)
        query = query.or(`product_filter.ilike.%${productFilter}%,product_filter.is.null`);
      if (productTypeFilter)
        query = query.or(
          `product_type_filter.ilike.%${productTypeFilter}%,product_type_filter.is.null`,
        );
      if (materialFilter)
        query = query.or(`material_filter.ilike.%${materialFilter}%,material_filter.is.null`);
      if (sizeFilter) query = query.or(`size_filter.ilike.%${sizeFilter}%,size_filter.is.null`);
      if (featureFilter)
        query = query.or(`feature_filter.ilike.%${featureFilter}%,feature_filter.is.null`);
      if (featureCategoryFilter)
        query = query.or(
          `feature_category_filter.ilike.%${featureCategoryFilter}%,feature_category_filter.is.null`,
        );
      if (shapeFilter) query = query.or(`shape_filter.ilike.%${shapeFilter}%,shape_filter.is.null`);
      const { data, error } = await query;
      if (error) throw error;
      return data;
    } catch (e) {
      console.error(e);
    }
  };

  const loadAllAddons = async (
    productFilter = null,
    productTypeFilter = null,
    materialFilter = null,
    sizeFilter = null,
    featureFilter = null,
    featureCategoryFilter = null,
    shapeFilter = null,
  ) => {
    try {
      appStore.setLoading(true);
      const addOnsList = await retrieveAllAddons(
        productFilter,
        productTypeFilter,
        materialFilter,
        sizeFilter,
        featureFilter,
        featureCategoryFilter,
        shapeFilter,
      );
      const groupedByAddOnType = addOnsList.reduce((acc, item) => {
        const key = item.add_on_type;
        if (!acc[key]) acc[key] = [];
        acc[key].push(item);
        return acc;
      }, {});
      addOns.value = groupedByAddOnType;
    } catch (e) {
      console.error(e);
      toast.add({
        severity: 'error',
        summary: 'Error loading AddOns',
        detail: e?.message || 'Something went wrong. Please contact TOP Support',
        life: 3000,
      });
      addOns.value = {};
    } finally {
      appStore.setLoading(false);
    }
  };

  const generateProductVariations = async (product) => {
    const basePrice = product.base_price_dealer;
    const baseName = product.product;
    const formula = product.code_formula;

    const materialAttributes = await retrieveMaterialAttributes(product.product);
    const attributes = await retrieveAttributes(
      null,
      product.product ?? null,
      null,
      product.size ?? null,
      product.feature_type ?? null,
      product.fire_feature_category ?? null,
    );

    const placeholders = formula.match(/{(.*?)}/g)?.map((p) => p.replace(/[{}]/g, '')) || [];
    const groupedVariations = {};

    materialAttributes.forEach((material) => {
      const materialCode = material?.attribute_code || '';
      const materialOption = material?.attribute_option || '';
      const materialAddOnPrice = material?.add_on_price || 0;

      let materialBaseSKU = formula;
      if (placeholders.includes('MAT')) {
        materialBaseSKU = materialBaseSKU.replace('{MAT}', materialCode);
      }

      const filteredAttributes = attributes.filter((attr) => {
        return !attr.material_filter || attr.material_filter === materialOption;
      });

      const combinations = generateCombinations(
        placeholders,
        filteredAttributes,
        materialBaseSKU,
        basePrice + materialAddOnPrice,
        baseName,
        materialOption,
      );

      if (!groupedVariations[materialOption]) {
        groupedVariations[materialOption] = [];
      }

      groupedVariations[materialOption].push(...combinations);
    });

    return groupedVariations;
  };

  const generateCombinations = (
    placeholders,
    attributes,
    baseSKU,
    basePrice,
    baseName,
    materialOption,
  ) => {
    const attributeGroups = placeholders.reduce((acc, placeholder) => {
      acc[placeholder] = attributes.filter((attr) => attr.code_identifier === placeholder);
      return acc;
    }, {});

    const allCombinations = [];

    function generateRecursive(currentSKU, currentPrice, currentName, remainingPlaceholders) {
      if (remainingPlaceholders.length === 0) {
        allCombinations.push({
          SKU: currentSKU,
          Price: currentPrice,
          Name: currentName,
        });
        return;
      }

      const [currentPlaceholder, ...restPlaceholders] = remainingPlaceholders;
      const options = attributeGroups[currentPlaceholder] || [];

      if (options.length > 0) {
        options.forEach((option) => {
          const newSKU = currentSKU.replace(`{${currentPlaceholder}}`, option.attribute_code || '');
          const newPrice = currentPrice + (option.add_on_price || 0);
          const newName = `${currentName} - ${option.attribute_option}`;
          generateRecursive(newSKU, newPrice, newName, restPlaceholders);
        });
      } else {
        const newSKU = currentSKU.replace(`{${currentPlaceholder}}`, '');
        generateRecursive(newSKU, currentPrice, currentName, restPlaceholders);
      }
    }

    generateRecursive(
      baseSKU,
      basePrice,
      `${baseName} - ${materialOption}`,
      Object.keys(attributeGroups),
    );
    return allCombinations;
  };

  const retrieveAnnouncementsLength = async () => {
    try {
      appStore.setLoading(true);
      let query = supabase.from('Announcements').select('id');
      const { data, error } = await query;
      if (error) throw error;
      announcementsLength.value = data.length;
    } catch (e) {
      console.error(e);
      toast.add({
        severity: 'error',
        summary: 'Error loading Announcements',
        detail: e?.message || 'Something went wrong. Please contact TOP Support',
        life: 3000,
      });
    } finally {
      appStore.setLoading(false);
    }
  };

  const loadAnnouncements = async () => {
    try {
      appStore.setLoading(true);
      let query = supabase.from('Announcements').select('*');
      const { data, error } = await query;
      if (error) throw error;
      announcements.value = data;
    } catch (e) {
      console.error(e);
      toast.add({
        severity: 'error',
        summary: 'Error loading Announcements',
        detail: e?.message || 'Something went wrong. Please contact TOP Support',
        life: 3000,
      });
      addOns.value = {};
    } finally {
      appStore.setLoading(false);
    }
  };

  return {
    products,
    materialAttributes,
    attributes,
    allAttributes,
    addOns,
    announcements,
    announcementsLength,
    loadProducts,
    loadMaterialAttributes,
    loadAttributes,
    loadAllAddons,
    generateProductVariations,
    loadAnnouncements,
    retrieveAnnouncementsLength,
  };
}
