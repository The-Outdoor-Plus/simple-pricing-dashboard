import { ref } from 'vue';
import { useUserStore } from '@/store/user';
import { evaluateFormula } from '@/utils/formulaEvaluator';
import { getPricesTiers } from '@/utils/pricing';
import { retrieveMaterialAttributes, retrieveAttributes } from '@/utils/product';

const productVariations = ref({});
const isVariationTableLoading = ref(false);

export function useProductVariations() {
  const generateProductVariations = async (
    product,
    currentMaterial = null,
    salesPrices = null,
    companyPrices = null,
    role,
  ) => {
    const basePrice = product.base_price_dealer;
    const baseName = product.product;
    const formula = product.code_formula;
    const division = product?.division;

    let materialAttributes = await retrieveMaterialAttributes(product.product, division);
    const attributes = await retrieveAttributes(
      division,
      null,
      product.product ?? null,
      null,
      product.size ?? null,
      product.feature_type ?? null,
      product.fire_feature_category ?? null,
      product.color_tones ?? null,
      product.product_type ?? null,
    );

    const placeholders = formula.match(/{(.*?)}/g)?.map((p) => p.replace(/[{}]/g, '')) || [];
    const groupedVariations = {};

    if (currentMaterial && currentMaterial.attribute_option) {
      materialAttributes = materialAttributes.filter(
        (material) => material.attribute_option === currentMaterial.attribute_option,
      );
    }

    materialAttributes.forEach((material) => {
      const materialCode = material?.attribute_code || '';
      const materialOption = material?.attribute_option || '';
      const materialAddOnPrice = material?.add_on_price || 0;

      let materialBaseSKU = formula;
      if (placeholders.includes('MAT')) {
        materialBaseSKU = materialBaseSKU.replace('{MAT}', materialCode);
      }

      const filteredAttributes = attributes.filter((attr) => {
        const materialFilters = attr.material_filter?.split(',').map((filter) => filter.trim());
        return !attr.material_filter || materialFilters.includes(materialOption);
      });

      const combinations = generateCombinations(
        placeholders,
        filteredAttributes,
        materialBaseSKU,
        basePrice + materialAddOnPrice,
        baseName,
        materialOption,
      );

      const combinedTiers = {
        ...companyPrices,
        ...salesPrices,
      };

      const combinationsWithPrice = combinations.map((combination) => {
        let combinationResult = {
          ...combination,
          prices: {},
        };

        Object.keys(combinedTiers).forEach((tierName) => {
          if (tierName === 'companyCost' && !Array.isArray(combinedTiers[tierName])) {
            if (combinedTiers[tierName].show_to_roles.includes(role)) {
              combinationResult.prices['companyCost'] = evaluateFormula(
                combinedTiers[tierName].formula,
                {
                  basePrice: combination.Price,
                },
              );
            }
          } else {
            if (combinedTiers[tierName].length > 0) {
              if (combinedTiers[tierName][0].show_to_roles.includes(role)) {
                combinationResult.prices[tierName] = evaluateFormula(
                  combinedTiers[tierName][0].formula,
                  {
                    basePrice: combination.Price,
                  },
                );
              }
            }
          }
        });

        delete combinationResult.Price;
        return combinationResult;
      });

      if (!groupedVariations[materialOption]) {
        groupedVariations[materialOption] = {};
      }

      groupedVariations[materialOption] = {
        price_columns: Object.keys(combinedTiers),
        combinations: combinationsWithPrice,
      };
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

  const loadProductVariations = async (product, company, role, division = null) => {
    try {
      isVariationTableLoading.value = true;
      const { salesPrices, companyPrices } = await getPricesTiers(division, company, role);
      productVariations.value = await generateProductVariations(
        product,
        null,
        salesPrices,
        companyPrices,
        role,
      );
    } catch (error) {
      console.error(error);
    } finally {
      isVariationTableLoading.value = false;
    }
  };

  return {
    generateProductVariations,
    productVariations,
    loadProductVariations,
  };
}
