drop policy "Enable update for ADMIN and MANAGER when authenticated" on "public"."users";

create table "public"."price_tiers" (
    "id" uuid not null default gen_random_uuid(),
    "created_at" timestamp with time zone not null default now(),
    "updated_at" timestamp with time zone default now(),
    "updated_by" uuid default auth.uid(),
    "name" text not null,
    "formula" jsonb,
    "is_active" boolean default true,
    "division" text default 'The Outdoor Plus'::text,
    "description" text,
    "show_to_roles" text[],
    "default" boolean not null default false,
    "company" uuid,
    "type" text
);


alter table "public"."price_tiers" enable row level security;

alter table "public"."AddOns" add column "division" text not null default 'The Outdoor Plus'::text;

alter table "public"."AddOns" add column "tpin" text;

alter table "public"."Announcements" add column "division" text not null default 'The Outdoor Plus'::text;

alter table "public"."Attributes" add column "attribute_tpin" text;

alter table "public"."Attributes" add column "division" text not null default 'The Outdoor Plus'::text;

alter table "public"."BaseProducts" add column "base_tpin" text;

alter table "public"."BaseProducts" add column "division" text not null default 'The Outdoor Plus'::text;

alter table "public"."MaterialsAttributes" add column "attribute_tpin" text;

alter table "public"."MaterialsAttributes" add column "division" text default 'The Outdoor Plus'::text;

alter table "public"."rfq" add column "division" text not null default 'The Outdoor Plus'::text;

alter table "public"."users" add column "access_to" text[] not null default '{"The Outdoor Plus"}'::text[];

CREATE UNIQUE INDEX "BaseProducts_new_base_part_number_key" ON public."BaseProducts" USING btree (base_tpin);

CREATE UNIQUE INDEX price_tiers_pkey ON public.price_tiers USING btree (id);

alter table "public"."price_tiers" add constraint "price_tiers_pkey" PRIMARY KEY using index "price_tiers_pkey";

alter table "public"."BaseProducts" add constraint "BaseProducts_new_base_part_number_key" UNIQUE using index "BaseProducts_new_base_part_number_key";

alter table "public"."price_tiers" add constraint "price_tiers_company_fkey" FOREIGN KEY (company) REFERENCES "Company"(id) ON UPDATE CASCADE ON DELETE CASCADE not valid;

alter table "public"."price_tiers" validate constraint "price_tiers_company_fkey";

alter table "public"."price_tiers" add constraint "price_tiers_updated_by_fkey" FOREIGN KEY (updated_by) REFERENCES users(id) ON UPDATE CASCADE ON DELETE SET NULL not valid;

alter table "public"."price_tiers" validate constraint "price_tiers_updated_by_fkey";

set check_function_bodies = off;

CREATE OR REPLACE FUNCTION public.search_product_by_name_sku(term text, subdivision text)
 RETURNS TABLE(id uuid, base_part_number text, product text, base_price_dealer numeric, code_formula text, product_shape text, specification_sheet text, size text, feature_type text, fire_feature_category text, color_tones text)
 LANGUAGE plpgsql
AS $function$
begin
  return query
  select bp.id, bp.base_part_number, bp.product, bp.base_price_dealer, bp.code_formula, bp.product_shape, bp.specification_sheet, bp.size, bp.feature_type, bp.fire_feature_category, bp.color_tones
  from public."BaseProducts" bp
  where bp.fts_name_sku @@ to_tsquery(term || ':*') AND bp.division = subdivision;
end;
$function$
;

CREATE OR REPLACE FUNCTION public.create_user()
 RETURNS trigger
 LANGUAGE plpgsql
 SECURITY DEFINER
AS $function$
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
END $function$
;

CREATE OR REPLACE FUNCTION public.update_users_meta()
 RETURNS trigger
 LANGUAGE plpgsql
 SECURITY DEFINER
AS $function$
BEGIN
  UPDATE auth.users
  SET raw_user_meta_data = 
    jsonb_build_object('last_name', NEW.last_name, 'first_name', NEW.first_name, 'role', NEW.role, 'company', NEW.company, 'avatar_url', NEW.avatar_url, 'first_time', NEW.first_time, 'email_otp_active', NEW.email_otp_active, 'access_to', NEW.access_to)
  WHERE id = NEW.id;
  
  RETURN NEW;
END $function$
;

grant delete on table "public"."price_tiers" to "anon";

grant insert on table "public"."price_tiers" to "anon";

grant references on table "public"."price_tiers" to "anon";

grant select on table "public"."price_tiers" to "anon";

grant trigger on table "public"."price_tiers" to "anon";

grant truncate on table "public"."price_tiers" to "anon";

grant update on table "public"."price_tiers" to "anon";

grant delete on table "public"."price_tiers" to "authenticated";

grant insert on table "public"."price_tiers" to "authenticated";

grant references on table "public"."price_tiers" to "authenticated";

grant select on table "public"."price_tiers" to "authenticated";

grant trigger on table "public"."price_tiers" to "authenticated";

grant truncate on table "public"."price_tiers" to "authenticated";

grant update on table "public"."price_tiers" to "authenticated";

grant delete on table "public"."price_tiers" to "service_role";

grant insert on table "public"."price_tiers" to "service_role";

grant references on table "public"."price_tiers" to "service_role";

grant select on table "public"."price_tiers" to "service_role";

grant trigger on table "public"."price_tiers" to "service_role";

grant truncate on table "public"."price_tiers" to "service_role";

grant update on table "public"."price_tiers" to "service_role";

create policy "Authenticated users can read price tiers"
on "public"."price_tiers"
as permissive
for select
to authenticated
using (true);


create policy "Only admins can delete price tiers"
on "public"."price_tiers"
as permissive
for delete
to authenticated
using (check_user_role(auth.uid(), 'ADMIN'::user_role));


create policy "Only admins can modify price tiers"
on "public"."price_tiers"
as permissive
for insert
to authenticated
with check (check_user_role(auth.uid(), 'ADMIN'::user_role));


create policy "Only admins can update price tiers"
on "public"."price_tiers"
as permissive
for update
to authenticated
using (check_user_role(auth.uid(), 'ADMIN'::user_role))
with check (check_user_role(auth.uid(), 'ADMIN'::user_role));


create policy "Enable update for ADMIN and MANAGER when authenticated"
on "public"."users"
as permissive
for update
to authenticated
using ((check_user_role(auth.uid(), 'ADMIN'::user_role) OR (( SELECT auth.uid() AS uid) = id)))
with check ((check_user_role(auth.uid(), 'ADMIN'::user_role) OR (( SELECT auth.uid() AS uid) = id)));



