

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;


CREATE EXTENSION IF NOT EXISTS "pgsodium" WITH SCHEMA "pgsodium";






COMMENT ON SCHEMA "public" IS 'standard public schema';



CREATE EXTENSION IF NOT EXISTS "pg_graphql" WITH SCHEMA "graphql";






CREATE EXTENSION IF NOT EXISTS "pg_stat_statements" WITH SCHEMA "extensions";






CREATE EXTENSION IF NOT EXISTS "pgcrypto" WITH SCHEMA "extensions";






CREATE EXTENSION IF NOT EXISTS "pgjwt" WITH SCHEMA "extensions";






CREATE EXTENSION IF NOT EXISTS "supabase_vault" WITH SCHEMA "vault";






CREATE EXTENSION IF NOT EXISTS "uuid-ossp" WITH SCHEMA "extensions";






CREATE TYPE "public"."user_role" AS ENUM (
    'DEALER',
    'DISTRIBUTOR',
    'ADMIN',
    'MASTER_DISTRIBUTOR',
    'GROUP',
    'LANDSCAPE',
    'INTERNET',
    'SALES'
);


ALTER TYPE "public"."user_role" OWNER TO "postgres";


CREATE OR REPLACE FUNCTION "public"."auto_confirm_account"() RETURNS "trigger"
    LANGUAGE "plpgsql" SECURITY DEFINER
    AS $$
BEGIN
  NEW.email_confirmed_at = NOW();
  New.confirmed_at = NOW();
  RETURN NEW;
END $$;


ALTER FUNCTION "public"."auto_confirm_account"() OWNER TO "postgres";


CREATE OR REPLACE FUNCTION "public"."check_user_role"("user_id" "uuid", "role" "text") RETURNS boolean
    LANGUAGE "sql" SECURITY DEFINER
    AS $_$
  SELECT EXISTS (SELECT users.id
  FROM users
  WHERE ((users.id = $1) AND ($2 = users.role)))
$_$;


ALTER FUNCTION "public"."check_user_role"("user_id" "uuid", "role" "text") OWNER TO "postgres";


CREATE OR REPLACE FUNCTION "public"."check_user_role"("user_id" "uuid", "role" "public"."user_role") RETURNS boolean
    LANGUAGE "sql" SECURITY DEFINER
    AS $_$
  SELECT EXISTS (SELECT users.id
  FROM users
  WHERE ((users.id = $1) AND ($2 = users.role)))
$_$;


ALTER FUNCTION "public"."check_user_role"("user_id" "uuid", "role" "public"."user_role") OWNER TO "postgres";


CREATE OR REPLACE FUNCTION "public"."create_user"() RETURNS "trigger"
    LANGUAGE "plpgsql" SECURITY DEFINER
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

  INSERT INTO public.users (id, first_name, email, last_name, role, company, avatar_url)
  VALUES (NEW.id, NEW.raw_user_meta_data->>'first_name', NEW.email, NEW.raw_user_meta_data->>'last_name', role_name, company_id, NEW.raw_user_meta_data->>'avatar_url');

  RETURN NEW;
END $$;


ALTER FUNCTION "public"."create_user"() OWNER TO "postgres";


CREATE OR REPLACE FUNCTION "public"."delete_user"() RETURNS "trigger"
    LANGUAGE "plpgsql" SECURITY DEFINER
    AS $$
BEGIN
  DELETE FROM auth.users WHERE auth.users.id = OLD.id;
  RETURN OLD;
END $$;


ALTER FUNCTION "public"."delete_user"() OWNER TO "postgres";


CREATE OR REPLACE FUNCTION "public"."log_user_login"() RETURNS "trigger"
    LANGUAGE "plpgsql" SECURITY DEFINER
    AS $$
begin
    -- Insert the login log for the user
    -- id uuid not null default gen_random_uuid (),
    -- login_time timestamp with time zone not null default now(),
    -- ip_address text null,
    -- user_id uuid not null,
    -- user_agent text null,


    insert into "public"."login_logs" (login_time, ip_address, user_id, user_agent)
    select 
        new.last_sign_in_at,
        s.ip,
        new.id,
        s.user_agent
    from auth.sessions s
    where s.user_id = new.id
    order by s.created_at desc -- Get the most recent session
    limit 1;

    return new;
end $$;


ALTER FUNCTION "public"."log_user_login"() OWNER TO "postgres";


CREATE OR REPLACE FUNCTION "public"."set_timestamps"() RETURNS "trigger"
    LANGUAGE "plpgsql"
    AS $$
BEGIN
  -- Set Created_at to NOW() if it's NULL
  IF NEW.created_at IS NULL THEN
    NEW.created_at := NOW();
  END IF;

  -- Set updated_at to NOW() if it's NULL
  IF NEW.updated_at IS NULL THEN
    NEW.updated_at := NOW();
  END IF;

  RETURN NEW;

END;
$$;


ALTER FUNCTION "public"."set_timestamps"() OWNER TO "postgres";


CREATE OR REPLACE FUNCTION "public"."set_updated_at"() RETURNS "trigger"
    LANGUAGE "plpgsql"
    AS $$
BEGIN

  NEW.updated_at := NOW();
  RETURN NEW;

END;
$$;


ALTER FUNCTION "public"."set_updated_at"() OWNER TO "postgres";


CREATE OR REPLACE FUNCTION "public"."update_users_meta"() RETURNS "trigger"
    LANGUAGE "plpgsql" SECURITY DEFINER
    AS $$
BEGIN
  UPDATE auth.users
  SET raw_user_meta_data = 
    jsonb_build_object('last_name', NEW.last_name, 'first_name', NEW.first_name, 'role', NEW.role, 'company', NEW.company, 'avatar_url', NEW.avatar_url)
  WHERE id = NEW.id;
  
  RETURN NEW;
END $$;


ALTER FUNCTION "public"."update_users_meta"() OWNER TO "postgres";

SET default_tablespace = '';

SET default_table_access_method = "heap";


CREATE TABLE IF NOT EXISTS "public"."AddOns" (
    "id" "uuid" DEFAULT "gen_random_uuid"() NOT NULL,
    "created_at" timestamp with time zone DEFAULT "now"(),
    "updated_at" timestamp with time zone DEFAULT "now"(),
    "add_on_type" "text",
    "attribute_option" "text",
    "product_filter" "text",
    "material_filter" "text",
    "size_filter" "text",
    "feature_filter" "text",
    "feature_category_filter" "text",
    "add_on_price" numeric,
    "product_type_filter" "text",
    "part_number" "text" DEFAULT ''::"text",
    "shape_filter" "text"
);


ALTER TABLE "public"."AddOns" OWNER TO "postgres";


CREATE TABLE IF NOT EXISTS "public"."Announcements" (
    "id" "uuid" DEFAULT "gen_random_uuid"() NOT NULL,
    "created_at" timestamp with time zone DEFAULT "now"() NOT NULL,
    "updated_at" timestamp with time zone DEFAULT "now"(),
    "title" "text" NOT NULL,
    "description" "text" NOT NULL,
    "enabled" boolean DEFAULT false,
    "image_url" "text"
);


ALTER TABLE "public"."Announcements" OWNER TO "postgres";


CREATE TABLE IF NOT EXISTS "public"."Attributes" (
    "id" "uuid" DEFAULT "gen_random_uuid"() NOT NULL,
    "created_at" timestamp with time zone DEFAULT "now"(),
    "updated_at" timestamp with time zone DEFAULT "now"(),
    "attribute_type" "text",
    "attribute_option" "text",
    "add_on_price" numeric,
    "attribute_code" "text",
    "code_identifier" "text",
    "product_filter" "text",
    "material_filter" "text",
    "size_filter" "text",
    "feature_filter" "text",
    "feature_category_filter" "text"
);


ALTER TABLE "public"."Attributes" OWNER TO "postgres";


CREATE TABLE IF NOT EXISTS "public"."BaseProducts" (
    "id" "uuid" DEFAULT "gen_random_uuid"() NOT NULL,
    "created_at" timestamp with time zone DEFAULT "now"(),
    "updated_at" timestamp with time zone DEFAULT "now"(),
    "base_part_number" "text",
    "product" "text",
    "base_price_dealer" numeric,
    "base_price_map" numeric,
    "base_price_msrp" numeric,
    "base_price_distributor" numeric,
    "base_price_group" numeric,
    "base_price_internet" numeric,
    "base_price_landscape" numeric,
    "base_price_master_distributor" numeric,
    "code_formula" "text",
    "product_shape" "text",
    "specification_sheet" "text",
    "size" "text",
    "feature_type" "text",
    "product_type" "text",
    "fire_feature_category" "text",
    "images" "text"
);


ALTER TABLE "public"."BaseProducts" OWNER TO "postgres";


COMMENT ON TABLE "public"."BaseProducts" IS 'Contains base products';



CREATE TABLE IF NOT EXISTS "public"."Company" (
    "id" "uuid" DEFAULT "gen_random_uuid"() NOT NULL,
    "created_at" timestamp with time zone DEFAULT "now"(),
    "updated_at" timestamp with time zone DEFAULT "now"(),
    "name" "text",
    "logo" "text",
    "role" "public"."user_role" DEFAULT 'DEALER'::"public"."user_role"
);


ALTER TABLE "public"."Company" OWNER TO "postgres";


CREATE TABLE IF NOT EXISTS "public"."MaterialsAttributes" (
    "id" "uuid" DEFAULT "gen_random_uuid"() NOT NULL,
    "created_at" timestamp with time zone DEFAULT "now"(),
    "updated_at" timestamp with time zone DEFAULT "now"(),
    "attribute_type" "text",
    "product_filter" "text",
    "attribute_option" "text",
    "attribute_code" "text",
    "add_on_price" numeric,
    "discount" numeric,
    "promo_code" "text",
    "promotion_details" "text",
    "images" "text"
);


ALTER TABLE "public"."MaterialsAttributes" OWNER TO "postgres";


CREATE TABLE IF NOT EXISTS "public"."login_logs" (
    "id" "uuid" DEFAULT "gen_random_uuid"() NOT NULL,
    "login_time" timestamp with time zone DEFAULT "now"() NOT NULL,
    "ip_address" "text",
    "user_id" "uuid" NOT NULL,
    "user_agent" "text"
);


ALTER TABLE "public"."login_logs" OWNER TO "postgres";


CREATE TABLE IF NOT EXISTS "public"."rfq" (
    "id" "uuid" DEFAULT "gen_random_uuid"() NOT NULL,
    "created_at" timestamp with time zone DEFAULT "now"() NOT NULL,
    "updated_at" timestamp with time zone DEFAULT "now"(),
    "company_information" "jsonb",
    "ship_to_information" "jsonb",
    "purchase_order_number" "text",
    "items" "jsonb",
    "additional_notes" "text",
    "company_id" "uuid",
    "user_id" "uuid",
    "rfq_number" "text" NOT NULL
);


ALTER TABLE "public"."rfq" OWNER TO "postgres";


CREATE TABLE IF NOT EXISTS "public"."users" (
    "id" "uuid" NOT NULL,
    "first_name" character varying,
    "email" character varying,
    "last_name" character varying,
    "role" "public"."user_role" DEFAULT 'DEALER'::"public"."user_role",
    "company" "uuid",
    "avatar_url" "text"
);


ALTER TABLE "public"."users" OWNER TO "postgres";


ALTER TABLE ONLY "public"."AddOns"
    ADD CONSTRAINT "AddOns_pkey" PRIMARY KEY ("id");



ALTER TABLE ONLY "public"."Announcements"
    ADD CONSTRAINT "Announcements_pkey" PRIMARY KEY ("id");



ALTER TABLE ONLY "public"."Attributes"
    ADD CONSTRAINT "Attributes_pkey" PRIMARY KEY ("id");



ALTER TABLE ONLY "public"."BaseProducts"
    ADD CONSTRAINT "BaseProducts_base_part_number_key" UNIQUE ("base_part_number");



ALTER TABLE ONLY "public"."BaseProducts"
    ADD CONSTRAINT "BaseProducts_pkey" PRIMARY KEY ("id");



ALTER TABLE ONLY "public"."BaseProducts"
    ADD CONSTRAINT "BaseProducts_product_key" UNIQUE ("product");



ALTER TABLE ONLY "public"."Company"
    ADD CONSTRAINT "Company_pkey" PRIMARY KEY ("id");



ALTER TABLE ONLY "public"."MaterialsAttributes"
    ADD CONSTRAINT "MaterialsAttributes_pkey" PRIMARY KEY ("id");



ALTER TABLE ONLY "public"."login_logs"
    ADD CONSTRAINT "login_logs_pkey" PRIMARY KEY ("id");



ALTER TABLE ONLY "public"."rfq"
    ADD CONSTRAINT "rfq_pkey" PRIMARY KEY ("id");



ALTER TABLE ONLY "public"."rfq"
    ADD CONSTRAINT "rfq_rfq_number_key" UNIQUE ("rfq_number");



ALTER TABLE ONLY "public"."users"
    ADD CONSTRAINT "users_pkey" PRIMARY KEY ("id");



CREATE OR REPLACE TRIGGER "delete_user_trigger" AFTER DELETE ON "public"."users" FOR EACH ROW EXECUTE FUNCTION "public"."delete_user"();



CREATE OR REPLACE TRIGGER "set_timestamp_before_update_addons" BEFORE UPDATE ON "public"."AddOns" FOR EACH ROW EXECUTE FUNCTION "public"."set_updated_at"();



CREATE OR REPLACE TRIGGER "set_timestamp_before_update_attributes" BEFORE UPDATE ON "public"."Attributes" FOR EACH ROW EXECUTE FUNCTION "public"."set_updated_at"();



CREATE OR REPLACE TRIGGER "set_timestamp_before_update_attributes" BEFORE UPDATE ON "public"."Company" FOR EACH ROW EXECUTE FUNCTION "public"."set_updated_at"();



CREATE OR REPLACE TRIGGER "set_timestamp_before_update_base_products" BEFORE UPDATE ON "public"."BaseProducts" FOR EACH ROW EXECUTE FUNCTION "public"."set_updated_at"();



CREATE OR REPLACE TRIGGER "set_timestamp_before_update_materials_attributes" BEFORE UPDATE ON "public"."MaterialsAttributes" FOR EACH ROW EXECUTE FUNCTION "public"."set_updated_at"();



CREATE OR REPLACE TRIGGER "set_timestamps_before_insert_addons" BEFORE INSERT ON "public"."AddOns" FOR EACH ROW EXECUTE FUNCTION "public"."set_timestamps"();



CREATE OR REPLACE TRIGGER "set_timestamps_before_insert_attributes" BEFORE INSERT ON "public"."Attributes" FOR EACH ROW EXECUTE FUNCTION "public"."set_timestamps"();



CREATE OR REPLACE TRIGGER "set_timestamps_before_insert_attributes" BEFORE INSERT ON "public"."Company" FOR EACH ROW EXECUTE FUNCTION "public"."set_timestamps"();



CREATE OR REPLACE TRIGGER "set_timestamps_before_insert_base_products" BEFORE INSERT ON "public"."BaseProducts" FOR EACH ROW EXECUTE FUNCTION "public"."set_timestamps"();



CREATE OR REPLACE TRIGGER "set_timestamps_before_insert_materials_attributes" BEFORE INSERT ON "public"."MaterialsAttributes" FOR EACH ROW EXECUTE FUNCTION "public"."set_timestamps"();



CREATE OR REPLACE TRIGGER "update_users_meta" AFTER UPDATE ON "public"."users" FOR EACH ROW EXECUTE FUNCTION "public"."update_users_meta"();



ALTER TABLE ONLY "public"."MaterialsAttributes"
    ADD CONSTRAINT "MaterialsAttributes_product_filter_fkey" FOREIGN KEY ("product_filter") REFERENCES "public"."BaseProducts"("product") ON UPDATE CASCADE ON DELETE CASCADE;



ALTER TABLE ONLY "public"."login_logs"
    ADD CONSTRAINT "login_logs_user_id_fkey" FOREIGN KEY ("user_id") REFERENCES "public"."users"("id") ON UPDATE CASCADE ON DELETE CASCADE;



ALTER TABLE ONLY "public"."users"
    ADD CONSTRAINT "public_users_company_fkey" FOREIGN KEY ("company") REFERENCES "public"."Company"("id") ON UPDATE CASCADE ON DELETE SET NULL;



ALTER TABLE ONLY "public"."rfq"
    ADD CONSTRAINT "rfq_company_id_fkey" FOREIGN KEY ("company_id") REFERENCES "public"."Company"("id") ON UPDATE CASCADE ON DELETE SET NULL;



ALTER TABLE ONLY "public"."rfq"
    ADD CONSTRAINT "rfq_user_id_fkey" FOREIGN KEY ("user_id") REFERENCES "public"."users"("id") ON UPDATE CASCADE ON DELETE SET NULL;



ALTER TABLE ONLY "public"."users"
    ADD CONSTRAINT "users_id_fkey" FOREIGN KEY ("id") REFERENCES "auth"."users"("id") ON UPDATE CASCADE ON DELETE CASCADE;



ALTER TABLE "public"."AddOns" ENABLE ROW LEVEL SECURITY;


ALTER TABLE "public"."Announcements" ENABLE ROW LEVEL SECURITY;


ALTER TABLE "public"."Attributes" ENABLE ROW LEVEL SECURITY;


ALTER TABLE "public"."BaseProducts" ENABLE ROW LEVEL SECURITY;


ALTER TABLE "public"."Company" ENABLE ROW LEVEL SECURITY;


CREATE POLICY "Create new RFQ" ON "public"."rfq" FOR INSERT TO "authenticated" WITH CHECK (true);



CREATE POLICY "DELETE Rfqs" ON "public"."rfq" AS RESTRICTIVE FOR DELETE TO "authenticated" USING ("public"."check_user_role"("auth"."uid"(), 'ADMIN'::"public"."user_role"));



CREATE POLICY "Enable Access to all users" ON "public"."Company" USING (true) WITH CHECK (true);



CREATE POLICY "Enable access to all users" ON "public"."AddOns" USING (true) WITH CHECK (true);



CREATE POLICY "Enable access to all users" ON "public"."Attributes" USING (true) WITH CHECK (true);



CREATE POLICY "Enable access to all users" ON "public"."BaseProducts" USING (true) WITH CHECK (true);



CREATE POLICY "Enable access to all users" ON "public"."MaterialsAttributes" USING (true) WITH CHECK (true);



CREATE POLICY "Enable delete for authenticated users that are ADMIN or MANAGER" ON "public"."users" FOR DELETE TO "authenticated" USING ("public"."check_user_role"("auth"."uid"(), 'ADMIN'::"public"."user_role"));



CREATE POLICY "Enable insert for authenticated users that are ADMIN or MANAGER" ON "public"."users" FOR INSERT TO "authenticated" WITH CHECK ("public"."check_user_role"("auth"."uid"(), 'ADMIN'::"public"."user_role"));



CREATE POLICY "Enable select for authenticated " ON "public"."users" FOR SELECT TO "authenticated" USING (true);



CREATE POLICY "Enable update for ADMIN and MANAGER when authenticated" ON "public"."users" FOR UPDATE TO "authenticated" USING ("public"."check_user_role"("auth"."uid"(), 'ADMIN'::"public"."user_role")) WITH CHECK ("public"."check_user_role"("auth"."uid"(), 'ADMIN'::"public"."user_role"));



CREATE POLICY "Enable users to view their own data only" ON "public"."rfq" FOR SELECT TO "authenticated" USING (("public"."check_user_role"("auth"."uid"(), 'ADMIN'::"public"."user_role") OR (( SELECT "auth"."uid"() AS "uid") = "user_id")));



ALTER TABLE "public"."MaterialsAttributes" ENABLE ROW LEVEL SECURITY;


CREATE POLICY "Select" ON "public"."Announcements" FOR SELECT TO "authenticated" USING (true);



CREATE POLICY "Update RFQ Forms" ON "public"."rfq" AS RESTRICTIVE FOR UPDATE TO "authenticated" USING ("public"."check_user_role"("auth"."uid"(), 'ADMIN'::"public"."user_role"));



ALTER TABLE "public"."login_logs" ENABLE ROW LEVEL SECURITY;


ALTER TABLE "public"."rfq" ENABLE ROW LEVEL SECURITY;


ALTER TABLE "public"."users" ENABLE ROW LEVEL SECURITY;




ALTER PUBLICATION "supabase_realtime" OWNER TO "postgres";


GRANT USAGE ON SCHEMA "public" TO "postgres";
GRANT USAGE ON SCHEMA "public" TO "anon";
GRANT USAGE ON SCHEMA "public" TO "authenticated";
GRANT USAGE ON SCHEMA "public" TO "service_role";




















































































































































































GRANT ALL ON FUNCTION "public"."auto_confirm_account"() TO "anon";
GRANT ALL ON FUNCTION "public"."auto_confirm_account"() TO "authenticated";
GRANT ALL ON FUNCTION "public"."auto_confirm_account"() TO "service_role";



GRANT ALL ON FUNCTION "public"."check_user_role"("user_id" "uuid", "role" "text") TO "anon";
GRANT ALL ON FUNCTION "public"."check_user_role"("user_id" "uuid", "role" "text") TO "authenticated";
GRANT ALL ON FUNCTION "public"."check_user_role"("user_id" "uuid", "role" "text") TO "service_role";



GRANT ALL ON FUNCTION "public"."check_user_role"("user_id" "uuid", "role" "public"."user_role") TO "anon";
GRANT ALL ON FUNCTION "public"."check_user_role"("user_id" "uuid", "role" "public"."user_role") TO "authenticated";
GRANT ALL ON FUNCTION "public"."check_user_role"("user_id" "uuid", "role" "public"."user_role") TO "service_role";



GRANT ALL ON FUNCTION "public"."create_user"() TO "anon";
GRANT ALL ON FUNCTION "public"."create_user"() TO "authenticated";
GRANT ALL ON FUNCTION "public"."create_user"() TO "service_role";



GRANT ALL ON FUNCTION "public"."delete_user"() TO "anon";
GRANT ALL ON FUNCTION "public"."delete_user"() TO "authenticated";
GRANT ALL ON FUNCTION "public"."delete_user"() TO "service_role";



GRANT ALL ON FUNCTION "public"."log_user_login"() TO "anon";
GRANT ALL ON FUNCTION "public"."log_user_login"() TO "authenticated";
GRANT ALL ON FUNCTION "public"."log_user_login"() TO "service_role";



GRANT ALL ON FUNCTION "public"."set_timestamps"() TO "anon";
GRANT ALL ON FUNCTION "public"."set_timestamps"() TO "authenticated";
GRANT ALL ON FUNCTION "public"."set_timestamps"() TO "service_role";



GRANT ALL ON FUNCTION "public"."set_updated_at"() TO "anon";
GRANT ALL ON FUNCTION "public"."set_updated_at"() TO "authenticated";
GRANT ALL ON FUNCTION "public"."set_updated_at"() TO "service_role";



GRANT ALL ON FUNCTION "public"."update_users_meta"() TO "anon";
GRANT ALL ON FUNCTION "public"."update_users_meta"() TO "authenticated";
GRANT ALL ON FUNCTION "public"."update_users_meta"() TO "service_role";


















GRANT ALL ON TABLE "public"."AddOns" TO "anon";
GRANT ALL ON TABLE "public"."AddOns" TO "authenticated";
GRANT ALL ON TABLE "public"."AddOns" TO "service_role";



GRANT ALL ON TABLE "public"."Announcements" TO "anon";
GRANT ALL ON TABLE "public"."Announcements" TO "authenticated";
GRANT ALL ON TABLE "public"."Announcements" TO "service_role";



GRANT ALL ON TABLE "public"."Attributes" TO "anon";
GRANT ALL ON TABLE "public"."Attributes" TO "authenticated";
GRANT ALL ON TABLE "public"."Attributes" TO "service_role";



GRANT ALL ON TABLE "public"."BaseProducts" TO "anon";
GRANT ALL ON TABLE "public"."BaseProducts" TO "authenticated";
GRANT ALL ON TABLE "public"."BaseProducts" TO "service_role";



GRANT ALL ON TABLE "public"."Company" TO "anon";
GRANT ALL ON TABLE "public"."Company" TO "authenticated";
GRANT ALL ON TABLE "public"."Company" TO "service_role";



GRANT ALL ON TABLE "public"."MaterialsAttributes" TO "anon";
GRANT ALL ON TABLE "public"."MaterialsAttributes" TO "authenticated";
GRANT ALL ON TABLE "public"."MaterialsAttributes" TO "service_role";



GRANT ALL ON TABLE "public"."login_logs" TO "anon";
GRANT ALL ON TABLE "public"."login_logs" TO "authenticated";
GRANT ALL ON TABLE "public"."login_logs" TO "service_role";



GRANT ALL ON TABLE "public"."rfq" TO "anon";
GRANT ALL ON TABLE "public"."rfq" TO "authenticated";
GRANT ALL ON TABLE "public"."rfq" TO "service_role";



GRANT ALL ON TABLE "public"."users" TO "anon";
GRANT ALL ON TABLE "public"."users" TO "authenticated";
GRANT ALL ON TABLE "public"."users" TO "service_role";



ALTER DEFAULT PRIVILEGES FOR ROLE "postgres" IN SCHEMA "public" GRANT ALL ON SEQUENCES  TO "postgres";
ALTER DEFAULT PRIVILEGES FOR ROLE "postgres" IN SCHEMA "public" GRANT ALL ON SEQUENCES  TO "anon";
ALTER DEFAULT PRIVILEGES FOR ROLE "postgres" IN SCHEMA "public" GRANT ALL ON SEQUENCES  TO "authenticated";
ALTER DEFAULT PRIVILEGES FOR ROLE "postgres" IN SCHEMA "public" GRANT ALL ON SEQUENCES  TO "service_role";






ALTER DEFAULT PRIVILEGES FOR ROLE "postgres" IN SCHEMA "public" GRANT ALL ON FUNCTIONS  TO "postgres";
ALTER DEFAULT PRIVILEGES FOR ROLE "postgres" IN SCHEMA "public" GRANT ALL ON FUNCTIONS  TO "anon";
ALTER DEFAULT PRIVILEGES FOR ROLE "postgres" IN SCHEMA "public" GRANT ALL ON FUNCTIONS  TO "authenticated";
ALTER DEFAULT PRIVILEGES FOR ROLE "postgres" IN SCHEMA "public" GRANT ALL ON FUNCTIONS  TO "service_role";






ALTER DEFAULT PRIVILEGES FOR ROLE "postgres" IN SCHEMA "public" GRANT ALL ON TABLES  TO "postgres";
ALTER DEFAULT PRIVILEGES FOR ROLE "postgres" IN SCHEMA "public" GRANT ALL ON TABLES  TO "anon";
ALTER DEFAULT PRIVILEGES FOR ROLE "postgres" IN SCHEMA "public" GRANT ALL ON TABLES  TO "authenticated";
ALTER DEFAULT PRIVILEGES FOR ROLE "postgres" IN SCHEMA "public" GRANT ALL ON TABLES  TO "service_role";






























RESET ALL;
