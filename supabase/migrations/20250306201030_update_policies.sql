drop policy "Enable access to all users" on "public"."AddOns";

drop policy "Select" on "public"."Announcements";

drop policy "Enable access to all users" on "public"."Attributes";

drop policy "Enable access to all users" on "public"."BaseProducts";

drop policy "Enable Access to all users" on "public"."Company";

drop policy "Enable access to all users" on "public"."MaterialsAttributes";

drop policy "Allow Select to Authenticated" on "public"."emails";

drop policy "Allow Actions on Enums" on "public"."enums";

drop policy "Authenticated users can read price tiers" on "public"."price_tiers";

drop policy "Create new RFQ" on "public"."rfq";

drop policy "DELETE Rfqs" on "public"."rfq";

drop policy "Enable users to view their own data only" on "public"."rfq";

drop policy "Update RFQ" on "public"."rfq";

drop policy "Enable update for ADMIN and MANAGER when authenticated" on "public"."users";

set check_function_bodies = off;

CREATE OR REPLACE FUNCTION public.check_user_role(user_id uuid, role user_role)
 RETURNS boolean
 LANGUAGE sql
 SECURITY DEFINER
AS $function$
  SELECT EXISTS (SELECT users.id
  FROM users
  WHERE ((users.id = $1) AND ($2 = users.role)))
$function$
;

create policy "Authenticated users can read AddOns"
on "public"."AddOns"
as permissive
for select
to authenticated
using (true);


create policy "Only Admins Can Delete AddOns"
on "public"."AddOns"
as permissive
for delete
to authenticated
using (check_user_role(auth.uid(), 'ADMIN'::user_role));


create policy "Only Admins can create AddOns"
on "public"."AddOns"
as permissive
for insert
to authenticated
with check (check_user_role(auth.uid(), 'ADMIN'::user_role));


create policy "Only Admins can update AddOns"
on "public"."AddOns"
as permissive
for update
to authenticated
using (check_user_role(auth.uid(), 'ADMIN'::user_role))
with check (check_user_role(auth.uid(), 'ADMIN'::user_role));


create policy "Authenticated Users Can Seelect Announcements"
on "public"."Announcements"
as permissive
for select
to authenticated
using (true);


create policy "Only Admins Can Create Announcements"
on "public"."Announcements"
as permissive
for insert
to authenticated
with check (check_user_role(auth.uid(), 'ADMIN'::user_role));


create policy "Only Admins can Delete Announcements"
on "public"."Announcements"
as permissive
for delete
to authenticated
using (check_user_role(auth.uid(), 'ADMIN'::user_role));


create policy "Only Admins can Edit Announcements"
on "public"."Announcements"
as permissive
for update
to authenticated
using (check_user_role(auth.uid(), 'ADMIN'::user_role))
with check (check_user_role(auth.uid(), 'ADMIN'::user_role));


create policy "Authenticated Users can select Attributes"
on "public"."Attributes"
as permissive
for select
to authenticated
using (check_user_role(auth.uid(), 'ADMIN'::user_role));


create policy "Only Admins can Delete Attributes"
on "public"."Attributes"
as permissive
for delete
to authenticated
using (check_user_role(auth.uid(), 'ADMIN'::user_role));


create policy "Only Admins can create Attributes"
on "public"."Attributes"
as permissive
for insert
to authenticated
with check (check_user_role(auth.uid(), 'ADMIN'::user_role));


create policy "Only admins can update Attributes"
on "public"."Attributes"
as permissive
for update
to authenticated
using (check_user_role(auth.uid(), 'ADMIN'::user_role))
with check (check_user_role(auth.uid(), 'ADMIN'::user_role));


create policy "Authenticated User can read BaseProducts"
on "public"."BaseProducts"
as permissive
for select
to authenticated
using (true);


create policy "Only Admins can Insert BaseProducts"
on "public"."BaseProducts"
as permissive
for insert
to authenticated
with check (check_user_role(auth.uid(), 'ADMIN'::user_role));


create policy "Only Admins can delete BaseProducts"
on "public"."BaseProducts"
as permissive
for delete
to authenticated
using (check_user_role(auth.uid(), 'ADMIN'::user_role));


create policy "Only Admins can update BaseProducts"
on "public"."BaseProducts"
as permissive
for update
to authenticated
using (check_user_role(auth.uid(), 'ADMIN'::user_role))
with check (check_user_role(auth.uid(), 'ADMIN'::user_role));


create policy "Authenticated Users can read Companies"
on "public"."Company"
as permissive
for select
to authenticated
using (true);


create policy "Only Admins can Update Companies"
on "public"."Company"
as permissive
for update
to authenticated
using (check_user_role(auth.uid(), 'ADMIN'::user_role))
with check (check_user_role(auth.uid(), 'ADMIN'::user_role));


create policy "Only Admins can create Companies"
on "public"."Company"
as permissive
for insert
to authenticated
with check (check_user_role(auth.uid(), 'ADMIN'::user_role));


create policy "Only Admins can delete companies"
on "public"."Company"
as permissive
for delete
to authenticated
using (check_user_role(auth.uid(), 'ADMIN'::user_role));


create policy "Only Admins Can Delete"
on "public"."MaterialsAttributes"
as permissive
for delete
to authenticated
using (check_user_role(auth.uid(), 'ADMIN'::user_role));


create policy "Only Admins Can Insert"
on "public"."MaterialsAttributes"
as permissive
for insert
to authenticated
with check (check_user_role(auth.uid(), 'ADMIN'::user_role));


create policy "Only Admins Can Update"
on "public"."MaterialsAttributes"
as permissive
for update
to authenticated
using (check_user_role(auth.uid(), 'ADMIN'::user_role))
with check (check_user_role(auth.uid(), 'ADMIN'::user_role));


create policy "Select For All Users"
on "public"."MaterialsAttributes"
as permissive
for select
to authenticated
using (true);


create policy "Authenticated can select Emails"
on "public"."emails"
as permissive
for select
to authenticated
using (true);


create policy "Only Admins can Delete Emails"
on "public"."emails"
as permissive
for delete
to authenticated
using (check_user_role(auth.uid(), 'ADMIN'::user_role));


create policy "Only Admins can Insert Emails"
on "public"."emails"
as permissive
for insert
to authenticated
with check (check_user_role(auth.uid(), 'ADMIN'::user_role));


create policy "Only Admins can update emails"
on "public"."emails"
as permissive
for update
to authenticated
using (check_user_role(auth.uid(), 'ADMIN'::user_role))
with check (check_user_role(auth.uid(), 'ADMIN'::user_role));


create policy "Authenticated can select enums"
on "public"."enums"
as permissive
for select
to authenticated
using (true);


create policy "Only Admins Can Delete Enums"
on "public"."enums"
as permissive
for delete
to authenticated
using (check_user_role(auth.uid(), 'ADMIN'::user_role));


create policy "Only Admins can insert Enums"
on "public"."enums"
as permissive
for insert
to authenticated
with check (check_user_role(auth.uid(), 'ADMIN'::user_role));


create policy "Only Admins can update Enums"
on "public"."enums"
as permissive
for update
to authenticated
using (check_user_role(auth.uid(), 'ADMIN'::user_role))
with check (check_user_role(auth.uid(), 'ADMIN'::user_role));


create policy "Only Admins can have actions on login logs"
on "public"."login_logs"
as permissive
for all
to authenticated
using (check_user_role(auth.uid(), 'ADMIN'::user_role))
with check (check_user_role(auth.uid(), 'ADMIN'::user_role));


create policy "Authenticated Users can read price tiers"
on "public"."price_tiers"
as permissive
for select
to authenticated
using (true);


create policy "Only Admins Can Insert Price Tiers"
on "public"."price_tiers"
as permissive
for insert
to authenticated
with check (check_user_role(auth.uid(), 'ADMIN'::user_role));


create policy "Only Admins can Delete Price Tiers"
on "public"."price_tiers"
as permissive
for delete
to authenticated
using (check_user_role(auth.uid(), 'ADMIN'::user_role));


create policy "Only Admins can update Price Tiers"
on "public"."price_tiers"
as permissive
for update
to authenticated
using (check_user_role(auth.uid(), 'ADMIN'::user_role));


create policy "Authenticated Users can create RFQ"
on "public"."rfq"
as permissive
for insert
to authenticated
with check (true);


create policy "Only Admins Can Delete RFQ "
on "public"."rfq"
as permissive
for delete
to authenticated
using (check_user_role(auth.uid(), 'ADMIN'::user_role));


create policy "Users can only update their own RFQ Data"
on "public"."rfq"
as permissive
for update
to authenticated
using ((check_user_role(auth.uid(), 'ADMIN'::user_role) OR (( SELECT auth.uid() AS uid) = user_id) OR (EXISTS ( SELECT 1
   FROM (users u
     JOIN "Company" c ON ((u.company = c.id)))
  WHERE ((u.id = auth.uid()) AND (u.role = 'SALES'::user_role) AND ((rfq.company_id = c.id) OR (rfq.company_id IN ( SELECT "Company".id
           FROM "Company"
          WHERE ("Company".parent_company = c.id))))))) OR (EXISTS ( SELECT 1
   FROM (users u
     JOIN "Company" c ON ((u.company = c.id)))
  WHERE ((u.id = auth.uid()) AND (u.role = 'SALES'::user_role) AND (c.name = 'The Outdoor Plus'::text)))) OR (EXISTS ( SELECT 1
   FROM (users u
     JOIN "Company" c ON ((u.company = c.id)))
  WHERE ((u.id = auth.uid()) AND (u.role = 'TOP_SALES'::user_role) AND (c.name = 'The Outdoor Plus'::text))))))
with check ((check_user_role(auth.uid(), 'ADMIN'::user_role) OR (( SELECT auth.uid() AS uid) = user_id) OR (EXISTS ( SELECT 1
   FROM (users u
     JOIN "Company" c ON ((u.company = c.id)))
  WHERE ((u.id = auth.uid()) AND (u.role = 'SALES'::user_role) AND ((rfq.company_id = c.id) OR (rfq.company_id IN ( SELECT "Company".id
           FROM "Company"
          WHERE ("Company".parent_company = c.id))))))) OR (EXISTS ( SELECT 1
   FROM (users u
     JOIN "Company" c ON ((u.company = c.id)))
  WHERE ((u.id = auth.uid()) AND (u.role = 'SALES'::user_role) AND (c.name = 'The Outdoor Plus'::text)))) OR (EXISTS ( SELECT 1
   FROM (users u
     JOIN "Company" c ON ((u.company = c.id)))
  WHERE ((u.id = auth.uid()) AND (u.role = 'TOP_SALES'::user_role) AND (c.name = 'The Outdoor Plus'::text))))));


create policy "Users can view their own rfq data only"
on "public"."rfq"
as permissive
for select
to authenticated
using ((check_user_role(auth.uid(), 'ADMIN'::user_role) OR (( SELECT auth.uid() AS uid) = user_id) OR (EXISTS ( SELECT 1
   FROM (users u
     JOIN "Company" c ON ((u.company = c.id)))
  WHERE ((u.id = auth.uid()) AND (u.role = 'SALES'::user_role) AND ((rfq.company_id = c.id) OR (rfq.company_id IN ( SELECT "Company".id
           FROM "Company"
          WHERE ("Company".parent_company = c.id))))))) OR (EXISTS ( SELECT 1
   FROM (users u
     JOIN "Company" c ON ((u.company = c.id)))
  WHERE ((u.id = auth.uid()) AND (u.role = 'SALES'::user_role) AND (c.name = 'The Outdoor Plus'::text)))) OR (EXISTS ( SELECT 1
   FROM (users u
     JOIN "Company" c ON ((u.company = c.id)))
  WHERE ((u.id = auth.uid()) AND (u.role = 'TOP_SALES'::user_role) AND (c.name = 'The Outdoor Plus'::text))))));


create policy "Only admins can create users"
on "public"."users"
as permissive
for insert
to authenticated
with check (check_user_role(auth.uid(), 'ADMIN'::user_role));


create policy "Only admins can delete users"
on "public"."users"
as permissive
for delete
to authenticated
using (check_user_role(auth.uid(), 'ADMIN'::user_role));


create policy "Users and update their own data only for users"
on "public"."users"
as permissive
for update
to authenticated
using ((check_user_role(auth.uid(), 'ADMIN'::user_role) OR (( SELECT auth.uid() AS uid) = id)))
with check ((check_user_role(auth.uid(), 'ADMIN'::user_role) OR (( SELECT auth.uid() AS uid) = id)));


create policy "Users can view their own data only for users"
on "public"."users"
as permissive
for select
to authenticated
using ((check_user_role(auth.uid(), 'ADMIN'::user_role) OR (( SELECT auth.uid() AS uid) = id)));



