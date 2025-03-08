drop policy "Allow Admins to Delete" on "public"."emails";

drop policy "Allow Admins to Insert" on "public"."emails";

drop policy "Allow Admins to Update" on "public"."emails";

drop policy "Only admins can delete price tiers" on "public"."price_tiers";

drop policy "Only admins can modify price tiers" on "public"."price_tiers";

drop policy "Only admins can update price tiers" on "public"."price_tiers";

drop policy "Enable delete for authenticated users that are ADMIN or MANAGER" on "public"."users";

drop policy "Enable insert for authenticated users that are ADMIN or MANAGER" on "public"."users";

drop policy "Enable users to view their own data only" on "public"."users";

drop policy "DELETE Rfqs" on "public"."rfq";

drop policy "Enable users to view their own data only" on "public"."rfq";

drop policy "Update RFQ" on "public"."rfq";

drop policy "Enable update for ADMIN and MANAGER when authenticated" on "public"."users";

drop function if exists "public"."check_user_role"(user_id uuid, role user_role);

alter table "public"."Company" alter column "role" drop default;

alter table "public"."users" alter column "role" drop default;

alter type "public"."user_role" rename to "user_role__old_version_to_be_dropped";

create type "public"."user_role" as enum ('DEALER', 'DISTRIBUTOR', 'ADMIN', 'MASTER_DISTRIBUTOR', 'GROUP', 'LANDSCAPE', 'INTERNET', 'SALES', 'TOP_SALES');

alter table "public"."Company" alter column role type "public"."user_role" using role::text::"public"."user_role";

alter table "public"."users" alter column role type "public"."user_role" using role::text::"public"."user_role";

alter table "public"."Company" alter column "role" set default 'DEALER'::user_role;

alter table "public"."users" alter column "role" set default 'DEALER'::user_role;

drop type "public"."user_role__old_version_to_be_dropped";

alter table "public"."Company" alter column "role" set default 'INTERNET'::user_role;

alter table "public"."users" alter column "role" set default 'INTERNET'::user_role;

create policy "DELETE Rfqs"
on "public"."rfq"
as restrictive
for delete
to authenticated
using (true);


create policy "Enable users to view their own data only"
on "public"."rfq"
as permissive
for select
to authenticated
using (true);


create policy "Update RFQ"
on "public"."rfq"
as permissive
for update
to authenticated
using (true);


create policy "Enable update for ADMIN and MANAGER when authenticated"
on "public"."users"
as permissive
for update
to authenticated
using ((( SELECT auth.uid() AS uid) = id))
with check ((( SELECT auth.uid() AS uid) = id));



