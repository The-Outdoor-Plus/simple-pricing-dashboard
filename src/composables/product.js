import { ref, computed } from 'vue';
import { supabase } from '@/supabase';
import { useToast } from 'primevue';
import { useAppStore } from '@/store/app';
import { retrieveMaterialAttributes, retrieveAttributes } from '@/utils/product';
import { textToKey } from '@/utils';

const products = ref([]);
const materialAttributes = ref([]);
const attributes = ref({});
const allAttributes = ref([]);
const addOns = ref({});
const announcements = ref([]);
const announcementsLength = ref(0);
const selectedProduct = ref(null);
const selectedAddons = ref({});
const selectedMaterial = ref(null);
const promotionApplied = ref(false);
const selectedAttributes = ref({});
const areAddonsMultiple = ref({});

export function useProduct() {
  const appStore = useAppStore();
  const toast = useToast();

  const setSelectedAddons = (newVal) => {
    selectedAddons.value = newVal;
  };

  const setSelectedMaterial = (newVal) => {
    selectedMaterial.value = newVal;
  };

  const setPromotionApplied = (newVal) => {
    promotionApplied.value = newVal;
  };

  const setSelectedAttributes = (newVal) => {
    selectedAttributes.value = newVal;
  };

  const cleanSelectedAttributes = () => {
    Object.keys(selectedAttributes.value).forEach((key) => {
      selectedAttributes.value[key] = null;
    });
  };

  const loadProduct = async (productId, division = null) => {
    try {
      const { data: product, error } = await supabase
        .from('BaseProducts')
        .select(
          `
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
        fire_feature_category,
        color_tones,
        division,
        base_tpin
      `,
        )
        .eq('id', productId)
        .eq('division', division)
        .single();
      if (error) throw error;
      selectedProduct.value = product;
    } catch (e) {
      console.error(e);
    }
  };

  const loadProducts = async (textSearch = null, division = null) => {
    try {
      // appStore.setLoading(true);
      let query = supabase.from('BaseProducts').select(`
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
        fire_feature_category,
        color_tones,
        division,
        base_tpin
      `);

      if (textSearch) {
        // Using websearch_to_tsquery to search for the text in the database
        // const searchTerms = textSearch.toLowerCase().trim();
        // query = supabase.rpc('search_product_by_name_sku', {
        //   term: searchTerms,
        //   subdivision: division,
        // });
        // Using to_tsquery to search for the text in the database
        const searchTerms = textSearch
          .replace(/ /g, '+')
          .toLowerCase()
          .replace(/([^\w\s+])/g, '\\$1');
        query = supabase.rpc('search_product_by_name_sku', {
          term: searchTerms,
          subdivision: division,
        });
      } else {
        query = query.eq('division', division);
      }

      const { data, error } = await query;

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

  const updateSelectedProduct = (event) => {
    if (typeof event !== 'string') {
      selectedProduct.value = event;
    }
  };

  const loadMaterialAttributes = async (productName, division = null) => {
    try {
      appStore.setLoading(true);
      materialAttributes.value = await retrieveMaterialAttributes(productName, division);
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

  const loadAttributes = async (
    division = null,
    attributeType = null,
    productFilter = null,
    materialFilter = null,
    sizeFilter = null,
    featureFilter = null,
    featureCategoryFilter = null,
    colorTonesFilter = null,
    productTypeFilter = null,
  ) => {
    const attribute = attributeType?.toLowerCase()?.split(' ').join('_') || '';
    try {
      appStore.setLoading(true);
      const attributesValues = await retrieveAttributes(
        division,
        attributeType,
        productFilter,
        materialFilter,
        sizeFilter,
        featureFilter,
        featureCategoryFilter,
        colorTonesFilter,
        productTypeFilter,
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
    division = null,
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
        shape_filter,
        division,
        tpin,
        multiple`,
      );
      if (productFilter)
        query = query.or(
          `product_filter.ilike."${productFilter.replace(/"/g, '\\"')}",` +
            `product_filter.ilike."%${productFilter.replace(/"/g, '\\"')},%",` +
            `product_filter.ilike."%, ${productFilter.replace(/"/g, '\\"')}%",` +
            `product_filter.ilike."%, ${productFilter.replace(/"/g, '\\"')},%",` +
            `product_filter.is.null`,
        );
      if (productTypeFilter)
        query = query.or(
          `product_type_filter.ilike."${productTypeFilter.replace(/"/g, '\\"')}",` +
            `product_type_filter.ilike."%${productTypeFilter.replace(/"/g, '\\"')},%",` +
            `product_type_filter.ilike."%, ${productTypeFilter.replace(/"/g, '\\"')}%",` +
            `product_type_filter.ilike."%, ${productTypeFilter.replace(/"/g, '\\"')},%",` +
            `product_type_filter.is.null`,
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
      if (shapeFilter)
        query = query.or(
          `shape_filter.ilike."${shapeFilter.replace(/"/g, '\\"')}",` +
            `shape_filter.ilike."%${shapeFilter.replace(/"/g, '\\"')},%",` +
            `shape_filter.ilike."%, ${shapeFilter.replace(/"/g, '\\"')}%",` +
            `shape_filter.ilike."%, ${shapeFilter.replace(/"/g, '\\"')},%",` +
            `shape_filter.is.null`,
        );
      query = query.eq('division', division);
      const { data, error } = await query;
      if (error) throw error;
      return data;
    } catch (e) {
      console.error(e);
    }
  };

  const loadAllAddons = async (
    division = null,
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
        division,
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
      Object.keys(groupedByAddOnType).forEach((addOnKey) => {
        areAddonsMultiple.value[addOnKey] = groupedByAddOnType[addOnKey].every(
          (addOn) => !!addOn.multiple,
        );
      });
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

  const retrieveAnnouncementsLength = async (division = null) => {
    try {
      appStore.setLoading(true);
      let query = supabase.from('Announcements').select('id').eq('division', division);
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

  const loadAnnouncements = async (division = null) => {
    try {
      appStore.setLoading(true);
      let query = supabase.from('Announcements').select('*').eq('division', division);
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
      announcements.value = [];
    } finally {
      appStore.setLoading(false);
    }
  };

  const calculateSelectedAddons = () => {
    Object.keys(addOns.value).forEach((key) => {
      if (addOns.value[key].length > 0) {
        if (areAddonsMultiple.value[key]) {
          selectedAddons.value[textToKey(key)] = [];
        } else {
          selectedAddons.value[textToKey(key)] = addOns.value[key].find(
            (addon) => addon?.attribute_option === 'None',
          );
        }
      }
    });
  };

  const currentConfigurationSKU = computed(() => {
    let baseSKU = '';
    if (selectedProduct.value?.code_formula) {
      const placeholders =
        selectedProduct.value.code_formula.match(/{(.*?)}/g)?.map((p) => p.replace(/[{}]/g, '')) ||
        [];
      baseSKU = selectedProduct.value.code_formula;
      if (placeholders.includes('MAT')) {
        baseSKU = baseSKU.replace('{MAT}', selectedMaterial.value?.attribute_code ?? '');
      }
      Object.keys(selectedAttributes.value).forEach((key) => {
        if (
          selectedAttributes.value[key] &&
          selectedAttributes.value[key].code_identifier &&
          placeholders.includes(selectedAttributes.value[key].code_identifier)
        ) {
          baseSKU = baseSKU.replace(
            `{${selectedAttributes.value[key].code_identifier}}`,
            selectedAttributes.value[key]?.attribute_code ?? '',
          );
        }
      });
    }
    return baseSKU
      .replace(/\{[^}]*\}/g, '')
      .replace(/--+/g, '-')
      .replace(/^-+|-+$/g, '');
  });

  return {
    products,
    materialAttributes,
    attributes,
    allAttributes,
    addOns,
    announcements,
    announcementsLength,
    selectedProduct,
    selectedAddons,
    selectedMaterial,
    promotionApplied,
    selectedAttributes,
    currentConfigurationSKU,
    areAddonsMultiple,
    loadProducts,
    loadProduct,
    loadMaterialAttributes,
    loadAttributes,
    loadAllAddons,
    loadAnnouncements,
    retrieveAnnouncementsLength,
    updateSelectedProduct,
    setSelectedAddons,
    calculateSelectedAddons,
    setSelectedMaterial,
    setPromotionApplied,
    setSelectedAttributes,
    cleanSelectedAttributes,
  };
}
