set check_function_bodies = off;

CREATE OR REPLACE FUNCTION public.delete_records_addons(ids uuid[])
 RETURNS void
 LANGUAGE plpgsql
AS $function$
BEGIN
  DELETE FROM public."AddOns" WHERE ID = ANY(ids);
END;
$function$
;

CREATE OR REPLACE FUNCTION public.delete_records_attributes(ids uuid[])
 RETURNS void
 LANGUAGE plpgsql
AS $function$
BEGIN
  DELETE FROM public."Attributes" WHERE ID = ANY(ids);
END;
$function$
;

CREATE OR REPLACE FUNCTION public.delete_records_baseproducts(ids uuid[])
 RETURNS void
 LANGUAGE plpgsql
AS $function$
BEGIN
  DELETE FROM public."BaseProducts" WHERE ID = ANY(ids);
END;
$function$
;

CREATE OR REPLACE FUNCTION public.delete_records_materialsattributes(ids uuid[])
 RETURNS void
 LANGUAGE plpgsql
AS $function$
BEGIN
  DELETE FROM public."MaterialsAttributes" WHERE ID = ANY(ids);
END;
$function$
;


