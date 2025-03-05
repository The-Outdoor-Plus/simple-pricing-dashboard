alter table
public."BaseProducts"
add column
  fts_name_sku tsvector generated always as (to_tsvector('english', product || ' ' || base_part_number || ' ' || feature_type || ' ' || product_type || ' ' || fire_feature_category)) stored;

create index base_products_fts_name_sku on public."BaseProducts" using gin (fts_name_sku); -- generate the index

select id, fts_name_sku
from public."BaseProducts";

DROP FUNCTION search_product_by_name_sku(term text);

create or replace function search_product_by_name_sku(term text)
RETURNS table(id uuid, base_part_number text, product text, base_price_dealer numeric, code_formula text, product_shape text, specification_sheet text, size text, feature_type text, fire_feature_category text, color_tones text)
AS $$
begin
  return query
  select bp.id, bp.base_part_number, bp.product, bp.base_price_dealer, bp.code_formula, bp.product_shape, bp.specification_sheet, bp.size, bp.feature_type, bp.fire_feature_category, bp.color_tones
  from public."BaseProducts" bp
  where bp.fts_name_sku @@ to_tsquery(term || ':*');
end;
$$ language plpgsql;

create or replace function search_product_by_name_sku(term text, subdivision text)
RETURNS table(id uuid, base_part_number text, product text, base_price_dealer numeric, code_formula text, product_shape text, specification_sheet text, size text, feature_type text, fire_feature_category text, color_tones text)
AS $$
begin
  return query
  select bp.id, bp.base_part_number, bp.product, bp.base_price_dealer, bp.code_formula, bp.product_shape, bp.specification_sheet, bp.size, bp.feature_type, bp.fire_feature_category, bp.color_tones
  from public."BaseProducts" bp
  where bp.fts_name_sku @@ to_tsquery(term || ':*') AND bp.division = subdivision;
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


CREATE OR REPLACE FUNCTION public.create_user() RETURNS trigger
    LANGUAGE plpgsql SECURITY DEFINER
    AS $$
DECLARE
  role_name public.user_role;
  company_id uuid;
BEGIN
  IF NEW.raw_user_meta_data->>'role' = 'role' OR NEW.raw_user_meta_data->>'role' IS NULL THEN
    -- NEW.raw_user_meta_data = jsonb_set(NEW.raw_user_meta_data, '{role}', 'USER'::jsonb);
    role_name := 'DEALER'::text::public.user_role;
  ELSE
    role_name := NEW.raw_user_meta_data->>'role';
  END IF;

  IF NEW.raw_user_meta_data->>'company' IS NULL THEN
    company_id := 'aab2dcff-2d61-46b2-b80d-eafc3df7ed29';
  ELSE
    company_id := NEW.raw_user_meta_data->>'company';
  END IF;

  INSERT INTO public.users (id, first_name, email, last_name, role, company, avatar_url, active, active_date, inactive_date, inactive_reason, first_time, email_otp_active, access_to)
  VALUES (NEW.id, NEW.raw_user_meta_data->>'first_name', NEW.email, NEW.raw_user_meta_data->>'last_name', role_name, company_id, NEW.raw_user_meta_data->>'avatar_url', null, null, null, null, (NEW.raw_user_meta_data->'first_time')::boolean, (NEW.raw_user_meta_data->'email_otp_active')::boolean, COALESCE(ARRAY(SELECT jsonb_array_elements_text(NEW.raw_user_meta_data->'access_to')), '{}'));

  RETURN NEW;
END $$;

CREATE OR REPLACE FUNCTION public.update_users_meta() RETURNS trigger
    LANGUAGE plpgsql SECURITY DEFINER
    AS $$
BEGIN
  UPDATE auth.users
  SET raw_user_meta_data = 
    jsonb_build_object('last_name', NEW.last_name, 'first_name', NEW.first_name, 'role', NEW.role, 'company', NEW.company, 'avatar_url', NEW.avatar_url, 'first_time', NEW.first_time, 'email_otp_active', NEW.email_otp_active, 'access_to', NEW.access_to)
  WHERE id = NEW.id;
  
  RETURN NEW;
END $$;


SELECT base_product_name, json_agg(records) AS records
FROM "public"."BaseProducts" AS records
GROUP BY base_product_name;

SELECT COALESCE(base_product_name, product) AS base_product, json_agg(json_build_object(
  'id', id,
  'base_product_name', base_product_name,
  'product', product
)) AS RECORDS
FROM public."BaseProducts"
GROUP BY COALESCE(base_product_name, product);

SELECT base_product_name, json_agg(json_build_object(
  'base_product_name', base_product_name,
  'product', product
)) AS RECORDS
FROM public."BaseProducts"
GROUP BY base_product_name;


CREATE OR REPLACE FUNCTION get_grouped_products_with_materials()
RETURNS TABLE (
  base_product TEXT,
  records JSON
) AS $$
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
$$ LANGUAGE plpgsql STABLE;

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