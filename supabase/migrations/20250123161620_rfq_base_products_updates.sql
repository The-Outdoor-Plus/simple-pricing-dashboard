set check_function_bodies = off;

CREATE OR REPLACE FUNCTION public.delete_records_addons(ids jsonb)
 RETURNS void
 LANGUAGE plpgsql
AS $function$
BEGIN
  DELETE FROM public."AddOns" WHERE ID = ANY(SELECT value::UUID FROM jsonb_array_elements_text(ids));
END;
$function$
;

CREATE OR REPLACE FUNCTION public.delete_records_attributes(ids jsonb)
 RETURNS void
 LANGUAGE plpgsql
AS $function$
BEGIN
  DELETE FROM public."Attributes" WHERE ID = ANY(SELECT value::UUID FROM jsonb_array_elements_text(ids));
END;
$function$
;

CREATE OR REPLACE FUNCTION public.delete_records_baseproducts(ids jsonb)
 RETURNS void
 LANGUAGE plpgsql
AS $function$
BEGIN
  DELETE FROM public."BaseProducts" WHERE ID = ANY(SELECT value::UUID FROM jsonb_array_elements_text(ids));
END;
$function$
;

CREATE OR REPLACE FUNCTION public.delete_records_materialsattributes(ids jsonb)
 RETURNS void
 LANGUAGE plpgsql
AS $function$
BEGIN
  DELETE FROM public."MaterialsAttributes" WHERE ID = ANY(SELECT value::UUID FROM jsonb_array_elements_text(ids));
END;
$function$
;


