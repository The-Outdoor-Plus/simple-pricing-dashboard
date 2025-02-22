drop index if exists "public"."base_products_fts_name_sku";

alter table public."BaseProducts" drop column fts_name_sku;

ALTER TABLE "public"."BaseProducts"
ADD COLUMN fts_name_sku tsvector GENERATED ALWAYS AS (
  to_tsvector('english', 
    COALESCE(product, '') || ' ' ||
    COALESCE(base_part_number, '') || ' ' ||
    COALESCE(feature_type, '') || ' ' ||
    COALESCE(product_type, '') || ' ' ||
    COALESCE(fire_feature_category, '')
  )
) STORED;
