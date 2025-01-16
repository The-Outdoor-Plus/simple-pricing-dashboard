drop policy "Enable select for authenticated " on "public"."users";

drop policy "Update RFQ Forms" on "public"."rfq";

create table "public"."enums" (
    "id" uuid not null default gen_random_uuid(),
    "created_at" timestamp with time zone not null default now(),
    "type" text not null,
    "value" text not null,
    "num_identifier" bigint,
    "customer_type" text
);


alter table "public"."enums" enable row level security;

create table "public"."order" (
    "id" uuid not null default gen_random_uuid(),
    "created_at" timestamp with time zone not null default now(),
    "sales_order_number" text,
    "purchase_order_number" text,
    "invoice_number" text,
    "estimate_number" text,
    "rfq_number" text,
    "status" text,
    "tracking_number" text,
    "ticket_number" text,
    "monday_link" text,
    "comments" text
);


alter table "public"."order" enable row level security;

alter table "public"."Company" add column "company_type" text;

alter table "public"."Company" add column "net_term" text;

alter table "public"."Company" add column "parent_company" uuid;

alter table "public"."rfq" add column "estimate_link" text;

alter table "public"."rfq" add column "estimate_number" text;

alter table "public"."rfq" add column "invoice_number" text;

alter table "public"."rfq" add column "purchase_order_link" text;

alter table "public"."rfq" add column "sales_order_number" text;

alter table "public"."rfq" add column "status" text;

CREATE UNIQUE INDEX enums_pkey ON public.enums USING btree (id);

CREATE UNIQUE INDEX order_pkey ON public."order" USING btree (id);

CREATE UNIQUE INDEX users_email_key ON public.users USING btree (email);

alter table "public"."enums" add constraint "enums_pkey" PRIMARY KEY using index "enums_pkey";

alter table "public"."order" add constraint "order_pkey" PRIMARY KEY using index "order_pkey";

alter table "public"."Company" add constraint "Company_parent_company_fkey" FOREIGN KEY (parent_company) REFERENCES "Company"(id) ON UPDATE CASCADE ON DELETE SET NULL not valid;

alter table "public"."Company" validate constraint "Company_parent_company_fkey";

alter table "public"."enums" add constraint "enums_num_identifier_check" CHECK ((num_identifier >= 0)) not valid;

alter table "public"."enums" validate constraint "enums_num_identifier_check";

alter table "public"."users" add constraint "users_email_key" UNIQUE using index "users_email_key";

grant delete on table "public"."enums" to "anon";

grant insert on table "public"."enums" to "anon";

grant references on table "public"."enums" to "anon";

grant select on table "public"."enums" to "anon";

grant trigger on table "public"."enums" to "anon";

grant truncate on table "public"."enums" to "anon";

grant update on table "public"."enums" to "anon";

grant delete on table "public"."enums" to "authenticated";

grant insert on table "public"."enums" to "authenticated";

grant references on table "public"."enums" to "authenticated";

grant select on table "public"."enums" to "authenticated";

grant trigger on table "public"."enums" to "authenticated";

grant truncate on table "public"."enums" to "authenticated";

grant update on table "public"."enums" to "authenticated";

grant delete on table "public"."enums" to "service_role";

grant insert on table "public"."enums" to "service_role";

grant references on table "public"."enums" to "service_role";

grant select on table "public"."enums" to "service_role";

grant trigger on table "public"."enums" to "service_role";

grant truncate on table "public"."enums" to "service_role";

grant update on table "public"."enums" to "service_role";

grant delete on table "public"."order" to "anon";

grant insert on table "public"."order" to "anon";

grant references on table "public"."order" to "anon";

grant select on table "public"."order" to "anon";

grant trigger on table "public"."order" to "anon";

grant truncate on table "public"."order" to "anon";

grant update on table "public"."order" to "anon";

grant delete on table "public"."order" to "authenticated";

grant insert on table "public"."order" to "authenticated";

grant references on table "public"."order" to "authenticated";

grant select on table "public"."order" to "authenticated";

grant trigger on table "public"."order" to "authenticated";

grant truncate on table "public"."order" to "authenticated";

grant update on table "public"."order" to "authenticated";

grant delete on table "public"."order" to "service_role";

grant insert on table "public"."order" to "service_role";

grant references on table "public"."order" to "service_role";

grant select on table "public"."order" to "service_role";

grant trigger on table "public"."order" to "service_role";

grant truncate on table "public"."order" to "service_role";

grant update on table "public"."order" to "service_role";

create policy "Enable users to view their own data only"
on "public"."users"
as permissive
for select
to authenticated
using ((check_user_role(auth.uid(), 'ADMIN'::user_role) OR (( SELECT auth.uid() AS uid) = id)));


create policy "Update RFQ Forms"
on "public"."rfq"
as restrictive
for update
to authenticated
using ((check_user_role(auth.uid(), 'ADMIN'::user_role) OR (( SELECT auth.uid() AS uid) = user_id)));



