drop function if exists "public"."search_product_by_name_sku"(term text);

drop function if exists "public"."search_product_by_name_sku"(term text, subdivision text);

set check_function_bodies = off;

CREATE OR REPLACE FUNCTION public.search_product_by_name_sku(term text)
 RETURNS TABLE(id uuid, base_part_number text, product text, base_price_dealer numeric, code_formula text, product_shape text, specification_sheet text, size text, feature_type text, fire_feature_category text, color_tones text, division text, product_type text)
 LANGUAGE plpgsql
AS $function$
begin
  return query
  select bp.id, bp.base_part_number, bp.product, bp.base_price_dealer, bp.code_formula, bp.product_shape, bp.specification_sheet, bp.size, bp.feature_type, bp.fire_feature_category, bp.color_tones, bp.division, bp.product_type
  from public."BaseProducts" bp
  where bp.fts_name_sku @@ to_tsquery(term || ':*');
end;
$function$
;

CREATE OR REPLACE FUNCTION public.search_product_by_name_sku(term text, subdivision text)
 RETURNS TABLE(id uuid, base_part_number text, product text, base_price_dealer numeric, code_formula text, product_shape text, specification_sheet text, size text, feature_type text, fire_feature_category text, color_tones text, division text, product_type text)
 LANGUAGE plpgsql
AS $function$
begin
  return query
  select bp.id, bp.base_part_number, bp.product, bp.base_price_dealer, bp.code_formula, bp.product_shape, bp.specification_sheet, bp.size, bp.feature_type, bp.fire_feature_category, bp.color_tones, bp.division, bp.product_type
  from public."BaseProducts" bp
  where bp.fts_name_sku @@ to_tsquery(term || ':*') AND bp.division = subdivision;
end;
$function$
;


