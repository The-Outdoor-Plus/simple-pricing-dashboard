alter table "public"."BaseProducts" add column "base_product_name" text;

alter table "public"."emails" add column "division" text;

set check_function_bodies = off;

CREATE OR REPLACE FUNCTION public.get_grouped_products_with_materials()
 RETURNS TABLE(base_product text, records json)
 LANGUAGE plpgsql
 STABLE
AS $function$
BEGIN
 RETURN QUERY
 SELECT COALESCE(bp.base_product_name, bp.product) AS base_product, json_agg(json_build_object(
  'base_product_name', bp.base_product_name,
  'product', bp.product,
  'materials', (
    SELECT json_agg(ma.attribute_option)
    FROM "MaterialsAttributes" ma
    WHERE ma.product_filter = bp.product
  )
)) AS records
FROM public."BaseProducts" bp
GROUP BY COALESCE(bp.base_product_name, bp.product);
END;
$function$
;


