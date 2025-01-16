alter table "public"."Company" add column "active" boolean default true;

alter table "public"."Company" add column "active_date" timestamp with time zone default now();

alter table "public"."Company" add column "inactive_date" timestamp with time zone;

alter table "public"."Company" add column "inactive_reason" text;

alter table "public"."Company" add column "violation_level" integer default 0;

alter table "public"."Company" add column "violations" jsonb;

alter table "public"."order" drop column "rfq_number";

alter table "public"."order" add column "agent_assigned_id" uuid;

alter table "public"."order" add column "invoice_link" text;

alter table "public"."order" add column "invoice_status" text;

alter table "public"."order" add column "purchase_order_link" text;

alter table "public"."order" add column "rfq_id" uuid;

alter table "public"."order" add column "sales_order_link" text;

alter table "public"."order" add column "tracking_company" text;

alter table "public"."order" add column "tracking_url" text;

alter table "public"."order" add column "updated_at" timestamp with time zone default now();

alter table "public"."order" add column "updates" jsonb;

alter table "public"."order" alter column "comments" set data type jsonb using "comments"::jsonb;

alter table "public"."rfq" add column "agent_assigned_id" uuid default gen_random_uuid();

alter table "public"."rfq" add column "comments" jsonb;

alter table "public"."rfq" add column "invoice_link" text;

alter table "public"."rfq" add column "sales_order_link" text;

alter table "public"."rfq" add column "updates" jsonb;

alter table "public"."users" add column "active" boolean;

alter table "public"."users" add column "active_date" timestamp with time zone;

alter table "public"."users" add column "inactive_date" timestamp with time zone;

alter table "public"."users" add column "inactive_reason" text;

alter table "public"."order" add constraint "order_agent_assigned_id_fkey" FOREIGN KEY (agent_assigned_id) REFERENCES users(id) ON UPDATE CASCADE ON DELETE SET NULL not valid;

alter table "public"."order" validate constraint "order_agent_assigned_id_fkey";

alter table "public"."order" add constraint "order_rfq_id_fkey" FOREIGN KEY (rfq_id) REFERENCES rfq(id) ON UPDATE CASCADE ON DELETE SET NULL not valid;

alter table "public"."order" validate constraint "order_rfq_id_fkey";

alter table "public"."rfq" add constraint "rfq_agent_assigned_id_fkey" FOREIGN KEY (agent_assigned_id) REFERENCES users(id) ON UPDATE CASCADE ON DELETE SET NULL not valid;

alter table "public"."rfq" validate constraint "rfq_agent_assigned_id_fkey";


