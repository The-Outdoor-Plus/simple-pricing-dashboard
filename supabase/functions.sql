alter table
public."BaseProducts"
add column
  fts_name_sku tsvector generated always as (to_tsvector('english', product || ' ' || base_part_number || ' ' || feature_type || ' ' || product_type || ' ' || fire_feature_category)) stored;

create index base_products_fts_name_sku on public."BaseProducts" using gin (fts_name_sku); -- generate the index

select id, fts_name_sku
from public."BaseProducts";

DROP FUNCTION search_product_by_name_sku(term text);

create or replace function search_product_by_name_sku(term text)
RETURNS table(id uuid, base_part_number text, product text, base_price_dealer numeric, code_formula text, product_shape text, specification_sheet text, size text, feature_type text, fire_feature_category text)
AS $$
begin
  return query
  select bp.id, bp.base_part_number, bp.product, bp.base_price_dealer, bp.code_formula, bp.product_shape, bp.specification_sheet, bp.size, bp.feature_type, bp.fire_feature_category
  from public."BaseProducts" bp
  where bp.fts_name_sku @@ to_tsquery(term || ':*');
end;
$$ language plpgsql;

SELECT * FROM search_product_by_name_sku('fire+bow');


CREATE OR REPLACE FUNCTION delete_records_baseproducts(ids UUID[])
RETURNS VOID AS $$
BEGIN
  DELETE FROM public."BaseProducts" WHERE ID = ANY(ids);
END;
$$ language plpgsql SECURITY INVOKER;

GRANT EXECUTE ON FUNCTION delete_records_baseproducts(UUID[]) TO authenticated;

CREATE OR REPLACE FUNCTION delete_records_addons(ids UUID[])
RETURNS VOID AS $$
BEGIN
  DELETE FROM public."AddOns" WHERE ID = ANY(ids);
END;
$$ language plpgsql SECURITY INVOKER;

GRANT EXECUTE ON FUNCTION delete_records_addons(UUID[]) TO authenticated;

CREATE OR REPLACE FUNCTION delete_records_attributes(ids UUID[])
RETURNS VOID AS $$
BEGIN
  DELETE FROM public."Attributes" WHERE ID = ANY(ids);
END;
$$ language plpgsql SECURITY INVOKER;

GRANT EXECUTE ON FUNCTION delete_records_attributes(UUID[]) TO authenticated;

CREATE OR REPLACE FUNCTION delete_records_materialsattributes(ids UUID[])
RETURNS VOID AS $$
BEGIN
  DELETE FROM public."MaterialsAttributes" WHERE ID = ANY(ids);
END;
$$ language plpgsql SECURITY INVOKER;

GRANT EXECUTE ON FUNCTION delete_records_materialsattributes(UUID[]) TO authenticated;