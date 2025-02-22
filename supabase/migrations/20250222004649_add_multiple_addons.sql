drop function if exists "public"."search_product_by_name_sku"(term text);

alter table "public"."AddOns" add column "multiple" boolean not null default false;

alter table "public"."Attributes" add column "product_type_filter" text;

set check_function_bodies = off;

CREATE OR REPLACE FUNCTION public.search_product_by_name_sku(term text)
 RETURNS TABLE(id uuid, base_part_number text, product text, base_price_dealer numeric, code_formula text, product_shape text, specification_sheet text, size text, feature_type text, fire_feature_category text, color_tones text, division text)
 LANGUAGE plpgsql
AS $function$
begin
  return query
  select bp.id, bp.base_part_number, bp.product, bp.base_price_dealer, bp.code_formula, bp.product_shape, bp.specification_sheet, bp.size, bp.feature_type, bp.fire_feature_category, bp.color_tones, bp.division
  from public."BaseProducts" bp
  where bp.fts_name_sku @@ to_tsquery(term || ':*');
end;
$function$
;


