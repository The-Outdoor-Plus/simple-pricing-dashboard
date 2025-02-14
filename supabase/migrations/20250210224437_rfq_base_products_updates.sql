alter table "public"."emails" add column "primary" boolean not null default false;

alter table "public"."users" add column "first_time" boolean not null default true;

set check_function_bodies = off;

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

  INSERT INTO public.users (id, first_name, email, last_name, role, company, avatar_url, active, active_date, inactive_date, inactive_reason, first_time)
  VALUES (NEW.id, NEW.raw_user_meta_data->>'first_name', NEW.email, NEW.raw_user_meta_data->>'last_name', role_name, company_id, NEW.raw_user_meta_data->>'avatar_url', null, null, null, null, (NEW.raw_user_meta_data->'first_time')::boolean);

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
    jsonb_build_object('last_name', NEW.last_name, 'first_name', NEW.first_name, 'role', NEW.role, 'company', NEW.company, 'avatar_url', NEW.avatar_url, 'first_time', NEW.first_time)
  WHERE id = NEW.id;
  
  RETURN NEW;
END $function$
;


