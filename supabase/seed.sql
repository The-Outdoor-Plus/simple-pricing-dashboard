
SET session_replication_role = replica;

--
-- PostgreSQL database dump
--

-- Dumped from database version 15.6
-- Dumped by pg_dump version 15.6

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

--
-- Data for Name: audit_log_entries; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

INSERT INTO "auth"."audit_log_entries" ("instance_id", "id", "payload", "created_at", "ip_address") VALUES
	('00000000-0000-0000-0000-000000000000', 'cc0ffbe5-40bd-4238-abee-d99e3c7be39a', '{"action":"user_signedup","actor_id":"00000000-0000-0000-0000-000000000000","actor_username":"service_role","actor_via_sso":false,"log_type":"team","traits":{"user_email":"dealer@top.com","user_id":"24a7ce4f-cd14-4b8b-90ac-9d7344d03d54","user_phone":""}}', '2024-11-22 17:38:07.291526+00', ''),
	('00000000-0000-0000-0000-000000000000', '306d991f-4c47-4450-ad03-ad16c48663ad', '{"action":"user_signedup","actor_id":"00000000-0000-0000-0000-000000000000","actor_username":"service_role","actor_via_sso":false,"log_type":"team","traits":{"user_email":"internet@top.com","user_id":"2456e232-48e4-467a-8cf6-eaba27c1948b","user_phone":""}}', '2024-11-22 17:39:34.758514+00', ''),
	('00000000-0000-0000-0000-000000000000', 'b8143138-cecf-4721-b429-9b7ab9cb94cc', '{"action":"login","actor_id":"2456e232-48e4-467a-8cf6-eaba27c1948b","actor_username":"internet@top.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2024-11-22 17:50:29.058188+00', ''),
	('00000000-0000-0000-0000-000000000000', 'ab5e755d-e119-4213-9783-a4366eb54bb9', '{"action":"token_refreshed","actor_id":"2456e232-48e4-467a-8cf6-eaba27c1948b","actor_username":"internet@top.com","actor_via_sso":false,"log_type":"token"}', '2024-11-22 18:50:22.658664+00', ''),
	('00000000-0000-0000-0000-000000000000', '8bf2f209-2f8a-4534-a696-9be6e60fe590', '{"action":"token_revoked","actor_id":"2456e232-48e4-467a-8cf6-eaba27c1948b","actor_username":"internet@top.com","actor_via_sso":false,"log_type":"token"}', '2024-11-22 18:50:22.659483+00', ''),
	('00000000-0000-0000-0000-000000000000', '5bf18045-edef-4516-a435-fd577587487c', '{"action":"login","actor_id":"2456e232-48e4-467a-8cf6-eaba27c1948b","actor_username":"internet@top.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2024-11-22 19:23:48.835767+00', ''),
	('00000000-0000-0000-0000-000000000000', '6111561b-4cef-4c70-ab2b-435bbc55301a', '{"action":"token_refreshed","actor_id":"2456e232-48e4-467a-8cf6-eaba27c1948b","actor_username":"internet@top.com","actor_via_sso":false,"log_type":"token"}', '2024-11-22 23:41:26.588968+00', ''),
	('00000000-0000-0000-0000-000000000000', '08aef3a7-ccaa-4b64-8ea3-d1341144ba26', '{"action":"token_revoked","actor_id":"2456e232-48e4-467a-8cf6-eaba27c1948b","actor_username":"internet@top.com","actor_via_sso":false,"log_type":"token"}', '2024-11-22 23:41:26.589866+00', ''),
	('00000000-0000-0000-0000-000000000000', '339cf889-4ad0-42bb-98f7-de44344292c8', '{"action":"logout","actor_id":"2456e232-48e4-467a-8cf6-eaba27c1948b","actor_username":"internet@top.com","actor_via_sso":false,"log_type":"account"}', '2024-11-22 23:41:26.738017+00', ''),
	('00000000-0000-0000-0000-000000000000', '8c91e436-930f-4fef-bd8b-fa4d31132881', '{"action":"login","actor_id":"2456e232-48e4-467a-8cf6-eaba27c1948b","actor_username":"internet@top.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2024-11-22 23:41:42.388433+00', ''),
	('00000000-0000-0000-0000-000000000000', '81473932-8fc9-4dc3-a3e2-05d35af503c6', '{"action":"token_refreshed","actor_id":"2456e232-48e4-467a-8cf6-eaba27c1948b","actor_username":"internet@top.com","actor_via_sso":false,"log_type":"token"}', '2024-11-23 00:39:52.085658+00', ''),
	('00000000-0000-0000-0000-000000000000', '16a9c3c9-8391-4ef6-90ea-fac2e109e1df', '{"action":"token_revoked","actor_id":"2456e232-48e4-467a-8cf6-eaba27c1948b","actor_username":"internet@top.com","actor_via_sso":false,"log_type":"token"}', '2024-11-23 00:39:52.087077+00', ''),
	('00000000-0000-0000-0000-000000000000', '10a81530-72c2-4481-983d-0ebd22273ccd', '{"action":"token_refreshed","actor_id":"2456e232-48e4-467a-8cf6-eaba27c1948b","actor_username":"internet@top.com","actor_via_sso":false,"log_type":"token"}', '2024-11-25 17:11:13.067608+00', ''),
	('00000000-0000-0000-0000-000000000000', '003b46c7-93bd-402e-af59-edad9aee612d', '{"action":"token_revoked","actor_id":"2456e232-48e4-467a-8cf6-eaba27c1948b","actor_username":"internet@top.com","actor_via_sso":false,"log_type":"token"}', '2024-11-25 17:11:13.077917+00', ''),
	('00000000-0000-0000-0000-000000000000', '150cfc82-0aa1-41ce-8107-731ea4284ac8', '{"action":"logout","actor_id":"2456e232-48e4-467a-8cf6-eaba27c1948b","actor_username":"internet@top.com","actor_via_sso":false,"log_type":"account"}', '2024-11-25 17:11:13.32007+00', ''),
	('00000000-0000-0000-0000-000000000000', '9a96da53-1555-459f-85c5-ba2fb976f756', '{"action":"login","actor_id":"2456e232-48e4-467a-8cf6-eaba27c1948b","actor_username":"internet@top.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2024-11-25 17:11:33.601619+00', ''),
	('00000000-0000-0000-0000-000000000000', '5e8b77ee-3f9d-4d00-9768-6ecf08bf01ac', '{"action":"token_refreshed","actor_id":"2456e232-48e4-467a-8cf6-eaba27c1948b","actor_username":"internet@top.com","actor_via_sso":false,"log_type":"token"}', '2024-11-25 18:23:29.481258+00', ''),
	('00000000-0000-0000-0000-000000000000', '9c08cd99-0fdb-471f-877a-120cf064a09f', '{"action":"token_revoked","actor_id":"2456e232-48e4-467a-8cf6-eaba27c1948b","actor_username":"internet@top.com","actor_via_sso":false,"log_type":"token"}', '2024-11-25 18:23:29.482714+00', ''),
	('00000000-0000-0000-0000-000000000000', 'f601243e-3a23-4497-9086-577edd18675f', '{"action":"token_refreshed","actor_id":"2456e232-48e4-467a-8cf6-eaba27c1948b","actor_username":"internet@top.com","actor_via_sso":false,"log_type":"token"}', '2024-11-25 19:50:54.509056+00', ''),
	('00000000-0000-0000-0000-000000000000', '71c220ec-7411-4e27-b986-b5e7c1d3413a', '{"action":"token_revoked","actor_id":"2456e232-48e4-467a-8cf6-eaba27c1948b","actor_username":"internet@top.com","actor_via_sso":false,"log_type":"token"}', '2024-11-25 19:50:54.51108+00', ''),
	('00000000-0000-0000-0000-000000000000', '4e62e9bb-de7a-4627-9aa1-9e7a3476cd45', '{"action":"token_refreshed","actor_id":"2456e232-48e4-467a-8cf6-eaba27c1948b","actor_username":"internet@top.com","actor_via_sso":false,"log_type":"token"}', '2024-11-25 20:49:23.685952+00', ''),
	('00000000-0000-0000-0000-000000000000', '437b2440-c464-4ecc-85d3-20c20a55665a', '{"action":"token_revoked","actor_id":"2456e232-48e4-467a-8cf6-eaba27c1948b","actor_username":"internet@top.com","actor_via_sso":false,"log_type":"token"}', '2024-11-25 20:49:23.686776+00', ''),
	('00000000-0000-0000-0000-000000000000', '396721bc-4f18-4644-a90e-3c934cb699c4', '{"action":"token_refreshed","actor_id":"2456e232-48e4-467a-8cf6-eaba27c1948b","actor_username":"internet@top.com","actor_via_sso":false,"log_type":"token"}', '2024-11-25 22:11:11.372546+00', ''),
	('00000000-0000-0000-0000-000000000000', '051633a3-2ebf-45ed-a7fc-707c14a4a62a', '{"action":"token_revoked","actor_id":"2456e232-48e4-467a-8cf6-eaba27c1948b","actor_username":"internet@top.com","actor_via_sso":false,"log_type":"token"}', '2024-11-25 22:11:11.374547+00', ''),
	('00000000-0000-0000-0000-000000000000', 'c9eadd54-79c2-4f8a-a797-0644c6253a2a', '{"action":"token_refreshed","actor_id":"2456e232-48e4-467a-8cf6-eaba27c1948b","actor_username":"internet@top.com","actor_via_sso":false,"log_type":"token"}', '2024-11-25 23:12:28.3384+00', ''),
	('00000000-0000-0000-0000-000000000000', 'd23a2cb3-6f56-4b41-bdaa-7d670df80b88', '{"action":"token_revoked","actor_id":"2456e232-48e4-467a-8cf6-eaba27c1948b","actor_username":"internet@top.com","actor_via_sso":false,"log_type":"token"}', '2024-11-25 23:12:28.339981+00', ''),
	('00000000-0000-0000-0000-000000000000', 'a4be017f-d692-4168-b804-d11ad72cae76', '{"action":"login","actor_id":"2456e232-48e4-467a-8cf6-eaba27c1948b","actor_username":"internet@top.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2024-11-25 23:34:42.355673+00', ''),
	('00000000-0000-0000-0000-000000000000', '69053f29-d4a5-4bb7-9237-cd471479d34c', '{"action":"token_refreshed","actor_id":"2456e232-48e4-467a-8cf6-eaba27c1948b","actor_username":"internet@top.com","actor_via_sso":false,"log_type":"token"}', '2024-11-26 00:10:54.976576+00', ''),
	('00000000-0000-0000-0000-000000000000', '197b08ef-fb79-42a3-8875-6b486ac73356', '{"action":"token_revoked","actor_id":"2456e232-48e4-467a-8cf6-eaba27c1948b","actor_username":"internet@top.com","actor_via_sso":false,"log_type":"token"}', '2024-11-26 00:10:54.97807+00', ''),
	('00000000-0000-0000-0000-000000000000', '0df26cd8-d3c4-417c-8d6e-2fde4e7dcc89', '{"action":"login","actor_id":"2456e232-48e4-467a-8cf6-eaba27c1948b","actor_username":"internet@top.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2024-11-26 00:43:59.919759+00', ''),
	('00000000-0000-0000-0000-000000000000', 'c882e4bf-d293-4709-8984-7d2c167b2b79', '{"action":"token_refreshed","actor_id":"2456e232-48e4-467a-8cf6-eaba27c1948b","actor_username":"internet@top.com","actor_via_sso":false,"log_type":"token"}', '2024-11-26 16:24:01.316164+00', ''),
	('00000000-0000-0000-0000-000000000000', '49be8d7f-8684-4262-a63b-1e39cd9ef9a4', '{"action":"token_revoked","actor_id":"2456e232-48e4-467a-8cf6-eaba27c1948b","actor_username":"internet@top.com","actor_via_sso":false,"log_type":"token"}', '2024-11-26 16:24:01.339321+00', ''),
	('00000000-0000-0000-0000-000000000000', '40c230b7-fc33-4e0c-97c3-0f9d44fa539f', '{"action":"token_refreshed","actor_id":"2456e232-48e4-467a-8cf6-eaba27c1948b","actor_username":"internet@top.com","actor_via_sso":false,"log_type":"token"}', '2024-11-26 16:24:01.783856+00', ''),
	('00000000-0000-0000-0000-000000000000', 'f4bd85e9-112e-4c11-89f0-9063d6908d18', '{"action":"logout","actor_id":"2456e232-48e4-467a-8cf6-eaba27c1948b","actor_username":"internet@top.com","actor_via_sso":false,"log_type":"account"}', '2024-11-26 16:24:02.009295+00', ''),
	('00000000-0000-0000-0000-000000000000', '4f821c05-51e0-446b-ad75-6f580cbb1d5d', '{"action":"login","actor_id":"2456e232-48e4-467a-8cf6-eaba27c1948b","actor_username":"internet@top.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2024-11-26 17:05:36.975916+00', ''),
	('00000000-0000-0000-0000-000000000000', 'cb07f312-f369-4623-bf7b-3ef8649076aa', '{"action":"token_refreshed","actor_id":"2456e232-48e4-467a-8cf6-eaba27c1948b","actor_username":"internet@top.com","actor_via_sso":false,"log_type":"token"}', '2024-11-26 18:03:53.339182+00', ''),
	('00000000-0000-0000-0000-000000000000', '7e396e84-e3ba-4cc2-adaa-2341d3e984d1', '{"action":"token_revoked","actor_id":"2456e232-48e4-467a-8cf6-eaba27c1948b","actor_username":"internet@top.com","actor_via_sso":false,"log_type":"token"}', '2024-11-26 18:03:53.340036+00', ''),
	('00000000-0000-0000-0000-000000000000', '5af912c1-25e8-4e76-b1a0-487e62d688b4', '{"action":"token_refreshed","actor_id":"2456e232-48e4-467a-8cf6-eaba27c1948b","actor_username":"internet@top.com","actor_via_sso":false,"log_type":"token"}', '2024-11-26 20:05:11.494377+00', ''),
	('00000000-0000-0000-0000-000000000000', 'af981700-b4cb-4653-9730-47416baf7c2f', '{"action":"token_revoked","actor_id":"2456e232-48e4-467a-8cf6-eaba27c1948b","actor_username":"internet@top.com","actor_via_sso":false,"log_type":"token"}', '2024-11-26 20:05:11.507382+00', ''),
	('00000000-0000-0000-0000-000000000000', '90896c09-7c58-4378-9e7b-bf6cbe49b58b', '{"action":"token_refreshed","actor_id":"2456e232-48e4-467a-8cf6-eaba27c1948b","actor_username":"internet@top.com","actor_via_sso":false,"log_type":"token"}', '2024-11-26 21:15:22.791675+00', ''),
	('00000000-0000-0000-0000-000000000000', '8dad7554-1a44-4de9-9b18-4cca5862dcdd', '{"action":"token_revoked","actor_id":"2456e232-48e4-467a-8cf6-eaba27c1948b","actor_username":"internet@top.com","actor_via_sso":false,"log_type":"token"}', '2024-11-26 21:15:22.79306+00', ''),
	('00000000-0000-0000-0000-000000000000', '82a0b2ff-2728-417e-8e85-90aa2d00c079', '{"action":"login","actor_id":"2456e232-48e4-467a-8cf6-eaba27c1948b","actor_username":"internet@top.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2024-11-26 21:28:27.522939+00', ''),
	('00000000-0000-0000-0000-000000000000', 'feddacf1-bc4d-48bd-9039-3ea09e8c6ee0', '{"action":"token_refreshed","actor_id":"2456e232-48e4-467a-8cf6-eaba27c1948b","actor_username":"internet@top.com","actor_via_sso":false,"log_type":"token"}', '2024-11-26 22:13:23.542992+00', ''),
	('00000000-0000-0000-0000-000000000000', '8b4c93d6-1ac8-4cc9-919b-c76b3a9d7aa3', '{"action":"token_revoked","actor_id":"2456e232-48e4-467a-8cf6-eaba27c1948b","actor_username":"internet@top.com","actor_via_sso":false,"log_type":"token"}', '2024-11-26 22:13:23.544339+00', ''),
	('00000000-0000-0000-0000-000000000000', 'c699dfa7-d041-469a-9ba9-df4563a33505', '{"action":"token_refreshed","actor_id":"2456e232-48e4-467a-8cf6-eaba27c1948b","actor_username":"internet@top.com","actor_via_sso":false,"log_type":"token"}', '2024-11-26 23:15:40.196156+00', ''),
	('00000000-0000-0000-0000-000000000000', '875d0a8c-dbff-4f4f-8d38-b09639888f3e', '{"action":"token_revoked","actor_id":"2456e232-48e4-467a-8cf6-eaba27c1948b","actor_username":"internet@top.com","actor_via_sso":false,"log_type":"token"}', '2024-11-26 23:15:40.19761+00', ''),
	('00000000-0000-0000-0000-000000000000', '93d18047-ba78-4fbc-b891-ee4e55cd0786', '{"action":"login","actor_id":"2456e232-48e4-467a-8cf6-eaba27c1948b","actor_username":"internet@top.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2024-11-27 00:12:57.730027+00', ''),
	('00000000-0000-0000-0000-000000000000', '68c209b0-1537-46e9-83a1-810cff525f6e', '{"action":"token_refreshed","actor_id":"2456e232-48e4-467a-8cf6-eaba27c1948b","actor_username":"internet@top.com","actor_via_sso":false,"log_type":"token"}', '2024-11-27 16:20:19.591487+00', ''),
	('00000000-0000-0000-0000-000000000000', '660adf64-41b8-4e62-83e5-9b518b520c15', '{"action":"token_revoked","actor_id":"2456e232-48e4-467a-8cf6-eaba27c1948b","actor_username":"internet@top.com","actor_via_sso":false,"log_type":"token"}', '2024-11-27 16:20:19.602458+00', ''),
	('00000000-0000-0000-0000-000000000000', 'c74ee500-d81d-4d04-9f72-e76daaeae02b', '{"action":"token_refreshed","actor_id":"2456e232-48e4-467a-8cf6-eaba27c1948b","actor_username":"internet@top.com","actor_via_sso":false,"log_type":"token"}', '2024-11-27 16:20:20.189577+00', ''),
	('00000000-0000-0000-0000-000000000000', 'f3601f47-6aea-4229-8886-5f5b5d9e8176', '{"action":"logout","actor_id":"2456e232-48e4-467a-8cf6-eaba27c1948b","actor_username":"internet@top.com","actor_via_sso":false,"log_type":"account"}', '2024-11-27 16:20:20.403093+00', ''),
	('00000000-0000-0000-0000-000000000000', 'b30866ea-a8cf-405d-8aa7-8fd5f7d79438', '{"action":"login","actor_id":"2456e232-48e4-467a-8cf6-eaba27c1948b","actor_username":"internet@top.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2024-11-27 16:20:34.746379+00', ''),
	('00000000-0000-0000-0000-000000000000', 'aa40d06e-904f-47f1-9954-d67a51946989', '{"action":"login","actor_id":"2456e232-48e4-467a-8cf6-eaba27c1948b","actor_username":"internet@top.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2024-11-27 16:29:10.096485+00', ''),
	('00000000-0000-0000-0000-000000000000', 'c16c7e00-e9a8-45af-b0d9-9ec60d3feeb6', '{"action":"login","actor_id":"2456e232-48e4-467a-8cf6-eaba27c1948b","actor_username":"internet@top.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2024-11-27 16:31:06.786781+00', ''),
	('00000000-0000-0000-0000-000000000000', 'a7eb3d71-9b1d-4650-9126-eb900e2445a5', '{"action":"token_refreshed","actor_id":"2456e232-48e4-467a-8cf6-eaba27c1948b","actor_username":"internet@top.com","actor_via_sso":false,"log_type":"token"}', '2024-11-27 17:34:28.676313+00', ''),
	('00000000-0000-0000-0000-000000000000', '37ad2a3f-d9bb-4cf7-883b-c6f57785fb96', '{"action":"token_revoked","actor_id":"2456e232-48e4-467a-8cf6-eaba27c1948b","actor_username":"internet@top.com","actor_via_sso":false,"log_type":"token"}', '2024-11-27 17:34:28.677773+00', ''),
	('00000000-0000-0000-0000-000000000000', '641c2457-b177-42f7-97ab-39500a925aec', '{"action":"token_refreshed","actor_id":"2456e232-48e4-467a-8cf6-eaba27c1948b","actor_username":"internet@top.com","actor_via_sso":false,"log_type":"token"}', '2024-11-27 18:32:51.260714+00', ''),
	('00000000-0000-0000-0000-000000000000', 'fd8c557d-a509-45ba-9003-3b838a634d5c', '{"action":"token_revoked","actor_id":"2456e232-48e4-467a-8cf6-eaba27c1948b","actor_username":"internet@top.com","actor_via_sso":false,"log_type":"token"}', '2024-11-27 18:32:51.263003+00', ''),
	('00000000-0000-0000-0000-000000000000', '607805cb-8948-48ef-8ccb-409a6ce1cd2f', '{"action":"login","actor_id":"2456e232-48e4-467a-8cf6-eaba27c1948b","actor_username":"internet@top.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2024-11-27 18:44:02.98101+00', ''),
	('00000000-0000-0000-0000-000000000000', '52c9713b-522f-470c-a234-904e00557cb4', '{"action":"token_refreshed","actor_id":"2456e232-48e4-467a-8cf6-eaba27c1948b","actor_username":"internet@top.com","actor_via_sso":false,"log_type":"token"}', '2024-11-27 19:42:10.637465+00', ''),
	('00000000-0000-0000-0000-000000000000', '3c53ef9c-99e7-4479-8482-2a698809395b', '{"action":"token_revoked","actor_id":"2456e232-48e4-467a-8cf6-eaba27c1948b","actor_username":"internet@top.com","actor_via_sso":false,"log_type":"token"}', '2024-11-27 19:42:10.639924+00', ''),
	('00000000-0000-0000-0000-000000000000', '0b240624-6b93-4672-9b9d-c5bf0bd0fb50', '{"action":"token_refreshed","actor_id":"2456e232-48e4-467a-8cf6-eaba27c1948b","actor_username":"internet@top.com","actor_via_sso":false,"log_type":"token"}', '2024-11-27 20:42:45.198805+00', ''),
	('00000000-0000-0000-0000-000000000000', 'e4aae4ff-7f28-402b-bd95-d3e1043f9d9e', '{"action":"token_revoked","actor_id":"2456e232-48e4-467a-8cf6-eaba27c1948b","actor_username":"internet@top.com","actor_via_sso":false,"log_type":"token"}', '2024-11-27 20:42:45.200116+00', ''),
	('00000000-0000-0000-0000-000000000000', '54820dc0-232f-459b-a726-6b84ddcd099b', '{"action":"token_refreshed","actor_id":"2456e232-48e4-467a-8cf6-eaba27c1948b","actor_username":"internet@top.com","actor_via_sso":false,"log_type":"token"}', '2024-11-27 22:38:16.888406+00', ''),
	('00000000-0000-0000-0000-000000000000', '752a44c2-eca5-4943-81e0-88d42fbe0cef', '{"action":"token_revoked","actor_id":"2456e232-48e4-467a-8cf6-eaba27c1948b","actor_username":"internet@top.com","actor_via_sso":false,"log_type":"token"}', '2024-11-27 22:38:16.893239+00', ''),
	('00000000-0000-0000-0000-000000000000', 'c9eb3219-2ee2-4c44-b80e-d86e75103b7e', '{"action":"user_signedup","actor_id":"00000000-0000-0000-0000-000000000000","actor_username":"service_role","actor_via_sso":false,"log_type":"team","traits":{"user_email":"chuck@woodland.com","user_id":"fe9c4e75-9c25-42f6-8e4a-96c80ae23cf3","user_phone":""}}', '2024-11-27 23:03:53.503675+00', ''),
	('00000000-0000-0000-0000-000000000000', '10737691-ddc5-4c98-b8fd-ee30bc6cc927', '{"action":"login","actor_id":"fe9c4e75-9c25-42f6-8e4a-96c80ae23cf3","actor_username":"chuck@woodland.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2024-11-27 23:32:39.158622+00', ''),
	('00000000-0000-0000-0000-000000000000', 'e16817d2-095f-4d7c-ab92-e2e82f64f325', '{"action":"token_refreshed","actor_id":"fe9c4e75-9c25-42f6-8e4a-96c80ae23cf3","actor_username":"chuck@woodland.com","actor_via_sso":false,"log_type":"token"}', '2024-11-28 00:30:50.996507+00', ''),
	('00000000-0000-0000-0000-000000000000', '368fa4b4-e1b9-435e-8495-323b3d1d3ea9', '{"action":"token_revoked","actor_id":"fe9c4e75-9c25-42f6-8e4a-96c80ae23cf3","actor_username":"chuck@woodland.com","actor_via_sso":false,"log_type":"token"}', '2024-11-28 00:30:50.99808+00', ''),
	('00000000-0000-0000-0000-000000000000', 'a600a6bd-a940-48b9-ad47-4acef80c12e6', '{"action":"token_refreshed","actor_id":"fe9c4e75-9c25-42f6-8e4a-96c80ae23cf3","actor_username":"chuck@woodland.com","actor_via_sso":false,"log_type":"token"}', '2024-12-02 16:34:21.035228+00', ''),
	('00000000-0000-0000-0000-000000000000', 'f1c09754-3736-4c6f-a564-660d30d1b1f4', '{"action":"token_revoked","actor_id":"fe9c4e75-9c25-42f6-8e4a-96c80ae23cf3","actor_username":"chuck@woodland.com","actor_via_sso":false,"log_type":"token"}', '2024-12-02 16:34:21.04599+00', ''),
	('00000000-0000-0000-0000-000000000000', 'c569e307-6511-4e40-9557-ccd264880af5', '{"action":"token_refreshed","actor_id":"fe9c4e75-9c25-42f6-8e4a-96c80ae23cf3","actor_username":"chuck@woodland.com","actor_via_sso":false,"log_type":"token"}', '2024-12-02 17:33:01.256542+00', ''),
	('00000000-0000-0000-0000-000000000000', '748461c2-d812-45b0-8496-f24d3e7c0b5f', '{"action":"token_revoked","actor_id":"fe9c4e75-9c25-42f6-8e4a-96c80ae23cf3","actor_username":"chuck@woodland.com","actor_via_sso":false,"log_type":"token"}', '2024-12-02 17:33:01.258118+00', ''),
	('00000000-0000-0000-0000-000000000000', 'eaea0a41-d476-49a1-babe-92ad555b3c61', '{"action":"token_refreshed","actor_id":"fe9c4e75-9c25-42f6-8e4a-96c80ae23cf3","actor_username":"chuck@woodland.com","actor_via_sso":false,"log_type":"token"}', '2024-12-02 18:35:55.216219+00', ''),
	('00000000-0000-0000-0000-000000000000', 'da3879cf-35ea-463c-b00c-5df42ffd7742', '{"action":"token_revoked","actor_id":"fe9c4e75-9c25-42f6-8e4a-96c80ae23cf3","actor_username":"chuck@woodland.com","actor_via_sso":false,"log_type":"token"}', '2024-12-02 18:35:55.218146+00', ''),
	('00000000-0000-0000-0000-000000000000', '7674ae0e-eadc-46d0-a4bd-e45b2ed27124', '{"action":"token_refreshed","actor_id":"fe9c4e75-9c25-42f6-8e4a-96c80ae23cf3","actor_username":"chuck@woodland.com","actor_via_sso":false,"log_type":"token"}', '2024-12-02 19:53:10.824576+00', ''),
	('00000000-0000-0000-0000-000000000000', '371b3a16-8d9d-43c1-aebf-b509a5f6075d', '{"action":"token_revoked","actor_id":"fe9c4e75-9c25-42f6-8e4a-96c80ae23cf3","actor_username":"chuck@woodland.com","actor_via_sso":false,"log_type":"token"}', '2024-12-02 19:53:10.826049+00', ''),
	('00000000-0000-0000-0000-000000000000', '1ca3f1fd-3fa3-46ae-bb7b-9b07ece76c10', '{"action":"token_refreshed","actor_id":"fe9c4e75-9c25-42f6-8e4a-96c80ae23cf3","actor_username":"chuck@woodland.com","actor_via_sso":false,"log_type":"token"}', '2024-12-02 23:07:45.435603+00', ''),
	('00000000-0000-0000-0000-000000000000', '31a8d91c-a387-4f41-9569-d25bd57bdc18', '{"action":"token_revoked","actor_id":"fe9c4e75-9c25-42f6-8e4a-96c80ae23cf3","actor_username":"chuck@woodland.com","actor_via_sso":false,"log_type":"token"}', '2024-12-02 23:07:45.436474+00', ''),
	('00000000-0000-0000-0000-000000000000', 'fe4e3e64-a28c-4d1f-b6e7-a8e95b95cd00', '{"action":"user_signedup","actor_id":"00000000-0000-0000-0000-000000000000","actor_username":"service_role","actor_via_sso":false,"log_type":"team","traits":{"user_email":"jpittman@stellarsales.net","user_id":"4d9f3d20-b131-42dc-86ca-4564bfb248ee","user_phone":""}}', '2024-12-02 23:29:13.027025+00', ''),
	('00000000-0000-0000-0000-000000000000', '81c81d46-d4e4-45c7-82f1-9f4951c64502', '{"action":"login","actor_id":"4d9f3d20-b131-42dc-86ca-4564bfb248ee","actor_username":"jpittman@stellarsales.net","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2024-12-02 23:33:41.787085+00', ''),
	('00000000-0000-0000-0000-000000000000', '42db731e-2203-4946-bcbf-87ec6c73f3aa', '{"action":"login","actor_id":"4d9f3d20-b131-42dc-86ca-4564bfb248ee","actor_username":"jpittman@stellarsales.net","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2024-12-02 23:38:40.233703+00', ''),
	('00000000-0000-0000-0000-000000000000', 'e3cde7d5-21aa-4c09-991c-f78b9444189b', '{"action":"login","actor_id":"4d9f3d20-b131-42dc-86ca-4564bfb248ee","actor_username":"jpittman@stellarsales.net","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2024-12-02 23:41:31.737322+00', ''),
	('00000000-0000-0000-0000-000000000000', '0528f8fd-29be-40f7-b67b-3c1a6f9d549b', '{"action":"login","actor_id":"4d9f3d20-b131-42dc-86ca-4564bfb248ee","actor_username":"jpittman@stellarsales.net","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2024-12-02 23:44:12.404184+00', ''),
	('00000000-0000-0000-0000-000000000000', '96893e61-fd15-48af-8831-abb069385efa', '{"action":"token_refreshed","actor_id":"4d9f3d20-b131-42dc-86ca-4564bfb248ee","actor_username":"jpittman@stellarsales.net","actor_via_sso":false,"log_type":"token"}', '2024-12-03 16:36:14.692667+00', ''),
	('00000000-0000-0000-0000-000000000000', 'ad5d4ed6-d106-4bd5-be61-d4ca44b72c56', '{"action":"token_revoked","actor_id":"4d9f3d20-b131-42dc-86ca-4564bfb248ee","actor_username":"jpittman@stellarsales.net","actor_via_sso":false,"log_type":"token"}', '2024-12-03 16:36:14.698776+00', ''),
	('00000000-0000-0000-0000-000000000000', '56fc8a6e-9d79-4c31-9321-49ceb09f9e69', '{"action":"token_refreshed","actor_id":"4d9f3d20-b131-42dc-86ca-4564bfb248ee","actor_username":"jpittman@stellarsales.net","actor_via_sso":false,"log_type":"token"}', '2024-12-03 17:45:08.153379+00', ''),
	('00000000-0000-0000-0000-000000000000', '21d3fb26-6515-4999-a56e-521bccba7dce', '{"action":"token_revoked","actor_id":"4d9f3d20-b131-42dc-86ca-4564bfb248ee","actor_username":"jpittman@stellarsales.net","actor_via_sso":false,"log_type":"token"}', '2024-12-03 17:45:08.154948+00', ''),
	('00000000-0000-0000-0000-000000000000', '1eb08ef3-3db4-4c87-a71b-02de88f55236', '{"action":"logout","actor_id":"4d9f3d20-b131-42dc-86ca-4564bfb248ee","actor_username":"jpittman@stellarsales.net","actor_via_sso":false,"log_type":"account"}', '2024-12-03 17:45:08.285731+00', ''),
	('00000000-0000-0000-0000-000000000000', 'b9aa0448-4581-4107-9a57-2fb4aedfe31d', '{"action":"login","actor_id":"4d9f3d20-b131-42dc-86ca-4564bfb248ee","actor_username":"jpittman@stellarsales.net","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2024-12-03 17:45:16.160124+00', ''),
	('00000000-0000-0000-0000-000000000000', 'f91eec00-5b18-4e5c-8bb1-199a7b6b2214', '{"action":"token_refreshed","actor_id":"4d9f3d20-b131-42dc-86ca-4564bfb248ee","actor_username":"jpittman@stellarsales.net","actor_via_sso":false,"log_type":"token"}', '2024-12-03 18:45:18.274659+00', ''),
	('00000000-0000-0000-0000-000000000000', '4c2f7fba-f933-44d0-896b-20b2e6ebcdd8', '{"action":"token_revoked","actor_id":"4d9f3d20-b131-42dc-86ca-4564bfb248ee","actor_username":"jpittman@stellarsales.net","actor_via_sso":false,"log_type":"token"}', '2024-12-03 18:45:18.276218+00', ''),
	('00000000-0000-0000-0000-000000000000', '523249da-4bb6-4519-bf42-4469fe152781', '{"action":"login","actor_id":"2456e232-48e4-467a-8cf6-eaba27c1948b","actor_username":"internet@top.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2024-12-03 19:04:58.138368+00', ''),
	('00000000-0000-0000-0000-000000000000', '6541656b-3c0c-433b-81d9-aa76cb02ef52', '{"action":"login","actor_id":"4d9f3d20-b131-42dc-86ca-4564bfb248ee","actor_username":"jpittman@stellarsales.net","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2024-12-03 19:07:18.368597+00', ''),
	('00000000-0000-0000-0000-000000000000', 'bc71ce1b-c217-45c2-a41b-6c7cf556304b', '{"action":"token_refreshed","actor_id":"4d9f3d20-b131-42dc-86ca-4564bfb248ee","actor_username":"jpittman@stellarsales.net","actor_via_sso":false,"log_type":"token"}', '2024-12-03 20:05:40.923797+00', ''),
	('00000000-0000-0000-0000-000000000000', 'b71df2e4-16a1-4c8d-a8f9-a183296f61be', '{"action":"token_revoked","actor_id":"4d9f3d20-b131-42dc-86ca-4564bfb248ee","actor_username":"jpittman@stellarsales.net","actor_via_sso":false,"log_type":"token"}', '2024-12-03 20:05:40.925346+00', ''),
	('00000000-0000-0000-0000-000000000000', '8ad80f74-ba3d-4a60-b149-8d874a9c5f8c', '{"action":"token_refreshed","actor_id":"4d9f3d20-b131-42dc-86ca-4564bfb248ee","actor_username":"jpittman@stellarsales.net","actor_via_sso":false,"log_type":"token"}', '2024-12-03 21:03:45.477793+00', ''),
	('00000000-0000-0000-0000-000000000000', 'fcaf04b6-3212-4104-a04e-3fc59cdcdac6', '{"action":"token_revoked","actor_id":"4d9f3d20-b131-42dc-86ca-4564bfb248ee","actor_username":"jpittman@stellarsales.net","actor_via_sso":false,"log_type":"token"}', '2024-12-03 21:03:45.47932+00', ''),
	('00000000-0000-0000-0000-000000000000', '0848aaa9-28ea-4145-b35a-0eae6e545c26', '{"action":"user_deleted","actor_id":"00000000-0000-0000-0000-000000000000","actor_username":"service_role","actor_via_sso":false,"log_type":"team","traits":{"user_email":"chuck@woodland.com","user_id":"fe9c4e75-9c25-42f6-8e4a-96c80ae23cf3","user_phone":""}}', '2024-12-03 21:49:06.724817+00', ''),
	('00000000-0000-0000-0000-000000000000', 'e5e4dc50-fc89-4402-b7cd-da86e1c19886', '{"action":"user_signedup","actor_id":"00000000-0000-0000-0000-000000000000","actor_username":"service_role","actor_via_sso":false,"log_type":"team","traits":{"user_email":"chuck@woodland.com","user_id":"aafde422-c655-4c2e-a3fa-2dcfaa42db07","user_phone":""}}', '2024-12-03 21:49:20.066458+00', ''),
	('00000000-0000-0000-0000-000000000000', 'd04a98cc-6ede-49b1-8ee7-dc307971b206', '{"action":"login","actor_id":"4d9f3d20-b131-42dc-86ca-4564bfb248ee","actor_username":"jpittman@stellarsales.net","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2024-12-03 21:52:28.530733+00', ''),
	('00000000-0000-0000-0000-000000000000', '2e8661c0-9115-4803-a7eb-9f710a9ed53b', '{"action":"login","actor_id":"4d9f3d20-b131-42dc-86ca-4564bfb248ee","actor_username":"jpittman@stellarsales.net","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2024-12-03 22:02:59.910557+00', ''),
	('00000000-0000-0000-0000-000000000000', '4a450d6e-ab2e-451e-ba9b-a3dd4f7c1235', '{"action":"login","actor_id":"aafde422-c655-4c2e-a3fa-2dcfaa42db07","actor_username":"chuck@woodland.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2024-12-03 22:03:17.922213+00', ''),
	('00000000-0000-0000-0000-000000000000', '367d3711-3d24-4129-9c34-bf274e24c30e', '{"action":"token_refreshed","actor_id":"aafde422-c655-4c2e-a3fa-2dcfaa42db07","actor_username":"chuck@woodland.com","actor_via_sso":false,"log_type":"token"}', '2024-12-03 23:01:31.302094+00', ''),
	('00000000-0000-0000-0000-000000000000', 'b76dc8b6-158e-4151-ab8b-9ccea0db8702', '{"action":"token_revoked","actor_id":"aafde422-c655-4c2e-a3fa-2dcfaa42db07","actor_username":"chuck@woodland.com","actor_via_sso":false,"log_type":"token"}', '2024-12-03 23:01:31.303766+00', ''),
	('00000000-0000-0000-0000-000000000000', 'f666e192-43a7-4589-a13f-f47b3f94be79', '{"action":"login","actor_id":"aafde422-c655-4c2e-a3fa-2dcfaa42db07","actor_username":"chuck@woodland.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2024-12-03 23:49:12.759952+00', ''),
	('00000000-0000-0000-0000-000000000000', 'a6625490-ab9d-43b8-a1a8-0835e6fdb000', '{"action":"login","actor_id":"aafde422-c655-4c2e-a3fa-2dcfaa42db07","actor_username":"chuck@woodland.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2024-12-04 00:00:37.867369+00', ''),
	('00000000-0000-0000-0000-000000000000', '8e13b003-0427-4a30-bf94-5172ec777540', '{"action":"login","actor_id":"4d9f3d20-b131-42dc-86ca-4564bfb248ee","actor_username":"jpittman@stellarsales.net","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2024-12-04 00:04:02.344947+00', ''),
	('00000000-0000-0000-0000-000000000000', '287f8016-f80d-47ee-a4a3-14e8cbce93b6', '{"action":"login","actor_id":"aafde422-c655-4c2e-a3fa-2dcfaa42db07","actor_username":"chuck@woodland.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2024-12-04 00:09:03.560049+00', ''),
	('00000000-0000-0000-0000-000000000000', 'f28a7bd3-06d6-4a57-8482-193f151a3ca3', '{"action":"login","actor_id":"4d9f3d20-b131-42dc-86ca-4564bfb248ee","actor_username":"jpittman@stellarsales.net","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2024-12-04 00:31:07.955142+00', ''),
	('00000000-0000-0000-0000-000000000000', '1a1eb583-1d6e-4905-b217-97e7fe033f7f', '{"action":"login","actor_id":"4d9f3d20-b131-42dc-86ca-4564bfb248ee","actor_username":"jpittman@stellarsales.net","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2024-12-04 00:35:26.011401+00', ''),
	('00000000-0000-0000-0000-000000000000', 'd065b9e1-4c66-4f4e-9904-8102462e79f6', '{"action":"login","actor_id":"aafde422-c655-4c2e-a3fa-2dcfaa42db07","actor_username":"chuck@woodland.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2024-12-04 00:40:42.743665+00', ''),
	('00000000-0000-0000-0000-000000000000', '1e201457-3a18-4ddf-9918-742c1dbe57ac', '{"action":"login","actor_id":"4d9f3d20-b131-42dc-86ca-4564bfb248ee","actor_username":"jpittman@stellarsales.net","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2024-12-04 01:14:52.952241+00', ''),
	('00000000-0000-0000-0000-000000000000', '304eecde-aaa7-40d0-a0ae-d17a86925778', '{"action":"logout","actor_id":"4d9f3d20-b131-42dc-86ca-4564bfb248ee","actor_username":"jpittman@stellarsales.net","actor_via_sso":false,"log_type":"account"}', '2024-12-04 01:16:10.436795+00', ''),
	('00000000-0000-0000-0000-000000000000', 'aebe2690-f62f-4ee5-9c5b-317766a5dca6', '{"action":"login","actor_id":"aafde422-c655-4c2e-a3fa-2dcfaa42db07","actor_username":"chuck@woodland.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2024-12-04 01:16:21.31152+00', ''),
	('00000000-0000-0000-0000-000000000000', 'd17b7e59-9052-4a57-a172-050197f2f993', '{"action":"logout","actor_id":"aafde422-c655-4c2e-a3fa-2dcfaa42db07","actor_username":"chuck@woodland.com","actor_via_sso":false,"log_type":"account"}', '2024-12-04 01:48:42.347681+00', ''),
	('00000000-0000-0000-0000-000000000000', 'abdf01c8-34f1-40a2-ba42-dad1c645b027', '{"action":"login","actor_id":"4d9f3d20-b131-42dc-86ca-4564bfb248ee","actor_username":"jpittman@stellarsales.net","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2024-12-04 01:48:47.777503+00', ''),
	('00000000-0000-0000-0000-000000000000', '0e075abb-212a-43c1-b53f-cf95488e0c57', '{"action":"login","actor_id":"4d9f3d20-b131-42dc-86ca-4564bfb248ee","actor_username":"jpittman@stellarsales.net","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2024-12-04 01:50:56.240251+00', ''),
	('00000000-0000-0000-0000-000000000000', 'cbfdadc1-2626-4e06-9350-c2b6646e7e60', '{"action":"token_refreshed","actor_id":"4d9f3d20-b131-42dc-86ca-4564bfb248ee","actor_username":"jpittman@stellarsales.net","actor_via_sso":false,"log_type":"token"}', '2024-12-04 16:46:35.199183+00', ''),
	('00000000-0000-0000-0000-000000000000', '55aef916-b752-40da-a5a3-6914e26c5716', '{"action":"token_revoked","actor_id":"4d9f3d20-b131-42dc-86ca-4564bfb248ee","actor_username":"jpittman@stellarsales.net","actor_via_sso":false,"log_type":"token"}', '2024-12-04 16:46:35.216145+00', ''),
	('00000000-0000-0000-0000-000000000000', '290b482d-8362-447b-929b-dcb7e0408aa7', '{"action":"token_refreshed","actor_id":"4d9f3d20-b131-42dc-86ca-4564bfb248ee","actor_username":"jpittman@stellarsales.net","actor_via_sso":false,"log_type":"token"}', '2024-12-04 16:46:35.644092+00', ''),
	('00000000-0000-0000-0000-000000000000', '36adb5c0-868c-4b05-b763-a6c1a543e49d', '{"action":"logout","actor_id":"4d9f3d20-b131-42dc-86ca-4564bfb248ee","actor_username":"jpittman@stellarsales.net","actor_via_sso":false,"log_type":"account"}', '2024-12-04 16:46:35.786596+00', ''),
	('00000000-0000-0000-0000-000000000000', '51cdeb34-30f1-4528-bddc-e4318a67cd3f', '{"action":"login","actor_id":"4d9f3d20-b131-42dc-86ca-4564bfb248ee","actor_username":"jpittman@stellarsales.net","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2024-12-04 16:46:42.797701+00', ''),
	('00000000-0000-0000-0000-000000000000', '68e29ae1-f64c-42a0-9eb5-2f4cdba2a2dd', '{"action":"user_signedup","actor_id":"00000000-0000-0000-0000-000000000000","actor_username":"service_role","actor_via_sso":false,"log_type":"team","traits":{"user_email":"jordan@stellar.com","user_id":"b709f39c-7363-4b77-b981-24e383a96e4b","user_phone":""}}', '2024-12-04 16:51:38.214262+00', ''),
	('00000000-0000-0000-0000-000000000000', '1912e271-4df7-4635-88f5-9beccf4cd0f3', '{"action":"login","actor_id":"b709f39c-7363-4b77-b981-24e383a96e4b","actor_username":"jordan@stellar.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2024-12-05 00:19:30.032767+00', ''),
	('00000000-0000-0000-0000-000000000000', '4492d8b1-9642-46be-88ca-c1a909db4d67', '{"action":"user_signedup","actor_id":"00000000-0000-0000-0000-000000000000","actor_username":"service_role","actor_via_sso":false,"log_type":"team","traits":{"user_email":"sean@seleisure.com","user_id":"52cf7227-02ec-4bf1-83f8-e96537519cb4","user_phone":""}}', '2024-12-04 16:53:39.665028+00', ''),
	('00000000-0000-0000-0000-000000000000', '7f7b4e2d-fef2-41c4-8900-1dfbf4e05582', '{"action":"login","actor_id":"52cf7227-02ec-4bf1-83f8-e96537519cb4","actor_username":"sean@seleisure.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2024-12-04 16:56:33.763926+00', ''),
	('00000000-0000-0000-0000-000000000000', 'cd70d741-26e1-445c-b95a-1b818481951d', '{"action":"logout","actor_id":"52cf7227-02ec-4bf1-83f8-e96537519cb4","actor_username":"sean@seleisure.com","actor_via_sso":false,"log_type":"account"}', '2024-12-04 16:57:06.344832+00', ''),
	('00000000-0000-0000-0000-000000000000', '8935d384-3ae1-4b70-9e66-3fd15030dafe', '{"action":"login","actor_id":"52cf7227-02ec-4bf1-83f8-e96537519cb4","actor_username":"sean@seleisure.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2024-12-04 16:57:11.676537+00', ''),
	('00000000-0000-0000-0000-000000000000', 'a82f4e5f-b2ef-4576-9c33-ab5b23d59cde', '{"action":"logout","actor_id":"4d9f3d20-b131-42dc-86ca-4564bfb248ee","actor_username":"jpittman@stellarsales.net","actor_via_sso":false,"log_type":"account"}', '2024-12-04 17:12:19.92158+00', ''),
	('00000000-0000-0000-0000-000000000000', 'ff5f92e8-5fa0-42c2-97f7-3c66bbcb2588', '{"action":"login","actor_id":"aafde422-c655-4c2e-a3fa-2dcfaa42db07","actor_username":"chuck@woodland.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2024-12-04 17:12:25.147292+00', ''),
	('00000000-0000-0000-0000-000000000000', '51d228dc-2434-4d8e-9536-3ac46f974d7e', '{"action":"token_refreshed","actor_id":"52cf7227-02ec-4bf1-83f8-e96537519cb4","actor_username":"sean@seleisure.com","actor_via_sso":false,"log_type":"token"}', '2024-12-04 18:10:45.591709+00', ''),
	('00000000-0000-0000-0000-000000000000', 'e73539cf-f34f-4de6-97f5-ada3a1d01a1d', '{"action":"token_revoked","actor_id":"52cf7227-02ec-4bf1-83f8-e96537519cb4","actor_username":"sean@seleisure.com","actor_via_sso":false,"log_type":"token"}', '2024-12-04 18:10:45.593988+00', ''),
	('00000000-0000-0000-0000-000000000000', 'f9f3c817-ce8c-40fc-8ea7-170bfdafb105', '{"action":"token_refreshed","actor_id":"aafde422-c655-4c2e-a3fa-2dcfaa42db07","actor_username":"chuck@woodland.com","actor_via_sso":false,"log_type":"token"}', '2024-12-04 18:11:28.925245+00', ''),
	('00000000-0000-0000-0000-000000000000', '4aa76a54-5dee-45b0-8eb6-e7ade5b3aa2b', '{"action":"token_revoked","actor_id":"aafde422-c655-4c2e-a3fa-2dcfaa42db07","actor_username":"chuck@woodland.com","actor_via_sso":false,"log_type":"token"}', '2024-12-04 18:11:28.925876+00', ''),
	('00000000-0000-0000-0000-000000000000', 'e66d3cf9-c5a2-476a-82b8-df9092c304ea', '{"action":"logout","actor_id":"aafde422-c655-4c2e-a3fa-2dcfaa42db07","actor_username":"chuck@woodland.com","actor_via_sso":false,"log_type":"account"}', '2024-12-04 18:21:01.542311+00', ''),
	('00000000-0000-0000-0000-000000000000', '7ce92aff-0601-4ba9-9036-65b3e5538094', '{"action":"login","actor_id":"4d9f3d20-b131-42dc-86ca-4564bfb248ee","actor_username":"jpittman@stellarsales.net","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2024-12-04 18:21:08.64133+00', ''),
	('00000000-0000-0000-0000-000000000000', '80f53641-0bd9-4015-9374-7301fc8668b4', '{"action":"logout","actor_id":"4d9f3d20-b131-42dc-86ca-4564bfb248ee","actor_username":"jpittman@stellarsales.net","actor_via_sso":false,"log_type":"account"}', '2024-12-04 18:21:33.204902+00', ''),
	('00000000-0000-0000-0000-000000000000', 'd76405ee-7bf0-440c-a9a2-c6ce737e5f60', '{"action":"login","actor_id":"4d9f3d20-b131-42dc-86ca-4564bfb248ee","actor_username":"jpittman@stellarsales.net","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2024-12-04 18:21:42.509885+00', ''),
	('00000000-0000-0000-0000-000000000000', 'a0576fc6-f569-4967-9c87-7def2ca29712', '{"action":"logout","actor_id":"4d9f3d20-b131-42dc-86ca-4564bfb248ee","actor_username":"jpittman@stellarsales.net","actor_via_sso":false,"log_type":"account"}', '2024-12-04 18:21:58.997222+00', ''),
	('00000000-0000-0000-0000-000000000000', 'ecff0364-ceec-4a5c-be61-f55a49240acd', '{"action":"login","actor_id":"4d9f3d20-b131-42dc-86ca-4564bfb248ee","actor_username":"jpittman@stellarsales.net","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2024-12-04 18:53:39.029286+00', ''),
	('00000000-0000-0000-0000-000000000000', '67b17669-ec52-4c92-9f62-69cf35968430', '{"action":"token_refreshed","actor_id":"52cf7227-02ec-4bf1-83f8-e96537519cb4","actor_username":"sean@seleisure.com","actor_via_sso":false,"log_type":"token"}', '2024-12-04 19:43:10.528494+00', ''),
	('00000000-0000-0000-0000-000000000000', 'a2fe53cf-3413-418f-aca1-c832fa4119bc', '{"action":"token_revoked","actor_id":"52cf7227-02ec-4bf1-83f8-e96537519cb4","actor_username":"sean@seleisure.com","actor_via_sso":false,"log_type":"token"}', '2024-12-04 19:43:10.529374+00', ''),
	('00000000-0000-0000-0000-000000000000', 'cbf9298f-cddd-4df8-bf2f-3292305721c8', '{"action":"logout","actor_id":"52cf7227-02ec-4bf1-83f8-e96537519cb4","actor_username":"sean@seleisure.com","actor_via_sso":false,"log_type":"account"}', '2024-12-04 19:43:10.641307+00', ''),
	('00000000-0000-0000-0000-000000000000', '816ed6cc-c1e0-422f-8267-bc9d8c159076', '{"action":"login","actor_id":"4d9f3d20-b131-42dc-86ca-4564bfb248ee","actor_username":"jpittman@stellarsales.net","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2024-12-04 19:43:14.856023+00', ''),
	('00000000-0000-0000-0000-000000000000', 'e82d1304-7ba4-4eba-8809-c17ec7e77da8', '{"action":"token_refreshed","actor_id":"4d9f3d20-b131-42dc-86ca-4564bfb248ee","actor_username":"jpittman@stellarsales.net","actor_via_sso":false,"log_type":"token"}', '2024-12-04 19:57:02.672691+00', ''),
	('00000000-0000-0000-0000-000000000000', 'c55b3ff0-dfba-4523-9043-109a6c4db9bb', '{"action":"token_revoked","actor_id":"4d9f3d20-b131-42dc-86ca-4564bfb248ee","actor_username":"jpittman@stellarsales.net","actor_via_sso":false,"log_type":"token"}', '2024-12-04 19:57:02.675553+00', ''),
	('00000000-0000-0000-0000-000000000000', 'e7e80149-995e-4e95-a058-3c8fe15228b6', '{"action":"user_signedup","actor_id":"00000000-0000-0000-0000-000000000000","actor_username":"service_role","actor_via_sso":false,"log_type":"team","traits":{"user_email":"bill@seleisure.com","user_id":"dd1719e8-2a25-4eeb-9814-ac991aaf961a","user_phone":""}}', '2024-12-04 21:13:34.173306+00', ''),
	('00000000-0000-0000-0000-000000000000', '9b947c2b-e613-40b0-9373-8f2f111adda6', '{"action":"token_refreshed","actor_id":"4d9f3d20-b131-42dc-86ca-4564bfb248ee","actor_username":"jpittman@stellarsales.net","actor_via_sso":false,"log_type":"token"}', '2024-12-04 21:20:35.746966+00', ''),
	('00000000-0000-0000-0000-000000000000', '330aa614-e6bf-46ec-bec5-a832846ed355', '{"action":"token_revoked","actor_id":"4d9f3d20-b131-42dc-86ca-4564bfb248ee","actor_username":"jpittman@stellarsales.net","actor_via_sso":false,"log_type":"token"}', '2024-12-04 21:20:35.747838+00', ''),
	('00000000-0000-0000-0000-000000000000', '5744eea0-439e-4042-88a9-99d5bd16cc30', '{"action":"token_refreshed","actor_id":"4d9f3d20-b131-42dc-86ca-4564bfb248ee","actor_username":"jpittman@stellarsales.net","actor_via_sso":false,"log_type":"token"}', '2024-12-04 21:24:02.666629+00', ''),
	('00000000-0000-0000-0000-000000000000', 'a8e98339-2250-4bd3-bc35-08ddc4d335c7', '{"action":"token_revoked","actor_id":"4d9f3d20-b131-42dc-86ca-4564bfb248ee","actor_username":"jpittman@stellarsales.net","actor_via_sso":false,"log_type":"token"}', '2024-12-04 21:24:02.667544+00', ''),
	('00000000-0000-0000-0000-000000000000', 'efeb779f-df55-4576-a4d4-fac7e656d6dd', '{"action":"token_refreshed","actor_id":"4d9f3d20-b131-42dc-86ca-4564bfb248ee","actor_username":"jpittman@stellarsales.net","actor_via_sso":false,"log_type":"token"}', '2024-12-04 22:34:35.077523+00', ''),
	('00000000-0000-0000-0000-000000000000', '7ce1d133-e9b7-4c71-bc3a-6204177479be', '{"action":"token_revoked","actor_id":"4d9f3d20-b131-42dc-86ca-4564bfb248ee","actor_username":"jpittman@stellarsales.net","actor_via_sso":false,"log_type":"token"}', '2024-12-04 22:34:35.081004+00', ''),
	('00000000-0000-0000-0000-000000000000', '5247deca-b8a4-44e8-8eda-5e5e461c15fa', '{"action":"login","actor_id":"aafde422-c655-4c2e-a3fa-2dcfaa42db07","actor_username":"chuck@woodland.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2024-12-04 22:46:47.275863+00', ''),
	('00000000-0000-0000-0000-000000000000', 'b8732211-05ab-4633-bcc8-1d67cc0932d2', '{"action":"token_refreshed","actor_id":"4d9f3d20-b131-42dc-86ca-4564bfb248ee","actor_username":"jpittman@stellarsales.net","actor_via_sso":false,"log_type":"token"}', '2024-12-04 23:32:39.697376+00', ''),
	('00000000-0000-0000-0000-000000000000', '94b3a751-0d92-4509-a202-bba4b0ea2521', '{"action":"token_revoked","actor_id":"4d9f3d20-b131-42dc-86ca-4564bfb248ee","actor_username":"jpittman@stellarsales.net","actor_via_sso":false,"log_type":"token"}', '2024-12-04 23:32:39.698839+00', ''),
	('00000000-0000-0000-0000-000000000000', '333ac559-c565-4a86-bce9-86fc2ff48209', '{"action":"token_refreshed","actor_id":"4d9f3d20-b131-42dc-86ca-4564bfb248ee","actor_username":"jpittman@stellarsales.net","actor_via_sso":false,"log_type":"token"}', '2024-12-05 22:35:28.334943+00', ''),
	('00000000-0000-0000-0000-000000000000', 'a994d202-c6c2-439c-a3a5-4fd8c0acaa40', '{"action":"token_revoked","actor_id":"4d9f3d20-b131-42dc-86ca-4564bfb248ee","actor_username":"jpittman@stellarsales.net","actor_via_sso":false,"log_type":"token"}', '2024-12-05 22:35:28.356493+00', ''),
	('00000000-0000-0000-0000-000000000000', '8fe4c256-d158-490c-8aaf-c4fa2d339023', '{"action":"token_refreshed","actor_id":"4d9f3d20-b131-42dc-86ca-4564bfb248ee","actor_username":"jpittman@stellarsales.net","actor_via_sso":false,"log_type":"token"}', '2024-12-05 22:35:29.670945+00', ''),
	('00000000-0000-0000-0000-000000000000', '59fe5288-beba-4273-a745-a5eaa3bea8ed', '{"action":"logout","actor_id":"4d9f3d20-b131-42dc-86ca-4564bfb248ee","actor_username":"jpittman@stellarsales.net","actor_via_sso":false,"log_type":"account"}', '2024-12-05 22:35:29.801467+00', ''),
	('00000000-0000-0000-0000-000000000000', '7a26a175-c529-4923-87c2-ae7f3811736a', '{"action":"login","actor_id":"4d9f3d20-b131-42dc-86ca-4564bfb248ee","actor_username":"jpittman@stellarsales.net","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2024-12-05 22:35:35.662384+00', ''),
	('00000000-0000-0000-0000-000000000000', '814b5059-cfd1-433e-9fb4-e5ff87ffadd1', '{"action":"token_refreshed","actor_id":"4d9f3d20-b131-42dc-86ca-4564bfb248ee","actor_username":"jpittman@stellarsales.net","actor_via_sso":false,"log_type":"token"}', '2024-12-05 23:35:37.587924+00', ''),
	('00000000-0000-0000-0000-000000000000', '44012aef-8476-431b-9165-cf8675bc69fa', '{"action":"token_revoked","actor_id":"4d9f3d20-b131-42dc-86ca-4564bfb248ee","actor_username":"jpittman@stellarsales.net","actor_via_sso":false,"log_type":"token"}', '2024-12-05 23:35:37.590637+00', ''),
	('00000000-0000-0000-0000-000000000000', 'd3655ae2-1400-4161-a3d9-cd4f85007a0b', '{"action":"token_refreshed","actor_id":"4d9f3d20-b131-42dc-86ca-4564bfb248ee","actor_username":"jpittman@stellarsales.net","actor_via_sso":false,"log_type":"token"}', '2024-12-06 00:33:45.937866+00', ''),
	('00000000-0000-0000-0000-000000000000', '5028a84c-06b5-4359-acda-4998fe2b92a5', '{"action":"token_revoked","actor_id":"4d9f3d20-b131-42dc-86ca-4564bfb248ee","actor_username":"jpittman@stellarsales.net","actor_via_sso":false,"log_type":"token"}', '2024-12-06 00:33:45.944982+00', ''),
	('00000000-0000-0000-0000-000000000000', '57417b8f-786e-49f5-98a9-254bc5a8a5f9', '{"action":"login","actor_id":"4d9f3d20-b131-42dc-86ca-4564bfb248ee","actor_username":"jpittman@stellarsales.net","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2024-12-06 01:04:54.571995+00', ''),
	('00000000-0000-0000-0000-000000000000', 'e0b0617d-793e-4c63-a062-08b2faca1a04', '{"action":"logout","actor_id":"4d9f3d20-b131-42dc-86ca-4564bfb248ee","actor_username":"jpittman@stellarsales.net","actor_via_sso":false,"log_type":"account"}', '2024-12-06 01:38:19.251787+00', ''),
	('00000000-0000-0000-0000-000000000000', '8f22afac-7d56-4f08-a7a2-ada92f7bc5f8', '{"action":"login","actor_id":"aafde422-c655-4c2e-a3fa-2dcfaa42db07","actor_username":"chuck@woodland.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2024-12-06 01:39:18.646567+00', ''),
	('00000000-0000-0000-0000-000000000000', 'b6b1d953-d626-411c-ac57-931658601660', '{"action":"logout","actor_id":"aafde422-c655-4c2e-a3fa-2dcfaa42db07","actor_username":"chuck@woodland.com","actor_via_sso":false,"log_type":"account"}', '2024-12-06 01:49:50.674011+00', ''),
	('00000000-0000-0000-0000-000000000000', '3c87fc9f-0ad4-4600-b815-f9adb667beca', '{"action":"login","actor_id":"4d9f3d20-b131-42dc-86ca-4564bfb248ee","actor_username":"jpittman@stellarsales.net","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2024-12-06 01:49:59.118537+00', ''),
	('00000000-0000-0000-0000-000000000000', 'c52137a3-b7fb-4d59-a6b2-95ddba1f9d93', '{"action":"token_refreshed","actor_id":"4d9f3d20-b131-42dc-86ca-4564bfb248ee","actor_username":"jpittman@stellarsales.net","actor_via_sso":false,"log_type":"token"}', '2024-12-06 03:14:09.346225+00', ''),
	('00000000-0000-0000-0000-000000000000', 'e01bfdd3-7bef-47fb-a5da-229f06eac9ff', '{"action":"token_revoked","actor_id":"4d9f3d20-b131-42dc-86ca-4564bfb248ee","actor_username":"jpittman@stellarsales.net","actor_via_sso":false,"log_type":"token"}', '2024-12-06 03:14:09.347856+00', ''),
	('00000000-0000-0000-0000-000000000000', '933e582b-4338-466a-99a9-b230fa60abcd', '{"action":"token_refreshed","actor_id":"4d9f3d20-b131-42dc-86ca-4564bfb248ee","actor_username":"jpittman@stellarsales.net","actor_via_sso":false,"log_type":"token"}', '2024-12-06 05:30:19.108268+00', ''),
	('00000000-0000-0000-0000-000000000000', '94e8ae1f-06f4-4c0d-ba0f-7ed67627aa5a', '{"action":"token_revoked","actor_id":"4d9f3d20-b131-42dc-86ca-4564bfb248ee","actor_username":"jpittman@stellarsales.net","actor_via_sso":false,"log_type":"token"}', '2024-12-06 05:30:19.113136+00', ''),
	('00000000-0000-0000-0000-000000000000', '86a4c798-d7b4-4e38-ac28-85681d07bd77', '{"action":"token_refreshed","actor_id":"b709f39c-7363-4b77-b981-24e383a96e4b","actor_username":"jordan@stellar.com","actor_via_sso":false,"log_type":"token"}', '2024-12-06 15:52:33.292308+00', ''),
	('00000000-0000-0000-0000-000000000000', '2ac61546-bf70-4339-88e3-88ae4348b4c7', '{"action":"token_revoked","actor_id":"b709f39c-7363-4b77-b981-24e383a96e4b","actor_username":"jordan@stellar.com","actor_via_sso":false,"log_type":"token"}', '2024-12-06 15:52:33.3019+00', ''),
	('00000000-0000-0000-0000-000000000000', 'e5d4a8ad-df87-43ce-a98a-9aa573de2372', '{"action":"logout","actor_id":"b709f39c-7363-4b77-b981-24e383a96e4b","actor_username":"jordan@stellar.com","actor_via_sso":false,"log_type":"account"}', '2024-12-06 15:52:33.47774+00', ''),
	('00000000-0000-0000-0000-000000000000', '57134254-98d6-45f5-b031-c468498bcf26', '{"action":"token_refreshed","actor_id":"4d9f3d20-b131-42dc-86ca-4564bfb248ee","actor_username":"jpittman@stellarsales.net","actor_via_sso":false,"log_type":"token"}', '2024-12-06 16:27:32.43495+00', ''),
	('00000000-0000-0000-0000-000000000000', '637bc70a-95a8-45c9-b299-6d5d871b213c', '{"action":"token_revoked","actor_id":"4d9f3d20-b131-42dc-86ca-4564bfb248ee","actor_username":"jpittman@stellarsales.net","actor_via_sso":false,"log_type":"token"}', '2024-12-06 16:27:32.438119+00', ''),
	('00000000-0000-0000-0000-000000000000', '47af7f72-5828-4418-8411-4c9ce205b635', '{"action":"logout","actor_id":"4d9f3d20-b131-42dc-86ca-4564bfb248ee","actor_username":"jpittman@stellarsales.net","actor_via_sso":false,"log_type":"account"}', '2024-12-06 16:27:32.586595+00', ''),
	('00000000-0000-0000-0000-000000000000', '9c587c92-b0fa-4777-a988-439a5291fd24', '{"action":"login","actor_id":"4d9f3d20-b131-42dc-86ca-4564bfb248ee","actor_username":"jpittman@stellarsales.net","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2024-12-06 16:27:52.433427+00', ''),
	('00000000-0000-0000-0000-000000000000', '58c8a9eb-fc4b-4f33-bf3f-2e2a96b04941', '{"action":"login","actor_id":"4d9f3d20-b131-42dc-86ca-4564bfb248ee","actor_username":"jpittman@stellarsales.net","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2024-12-06 17:59:31.80832+00', ''),
	('00000000-0000-0000-0000-000000000000', 'a72d0c4e-0400-48a6-8d3d-4a052052bf9c', '{"action":"token_refreshed","actor_id":"4d9f3d20-b131-42dc-86ca-4564bfb248ee","actor_username":"jpittman@stellarsales.net","actor_via_sso":false,"log_type":"token"}', '2024-12-06 18:58:14.974922+00', ''),
	('00000000-0000-0000-0000-000000000000', 'd905a054-bba7-4b1d-80bd-2e68d8446082', '{"action":"token_revoked","actor_id":"4d9f3d20-b131-42dc-86ca-4564bfb248ee","actor_username":"jpittman@stellarsales.net","actor_via_sso":false,"log_type":"token"}', '2024-12-06 18:58:14.978182+00', ''),
	('00000000-0000-0000-0000-000000000000', 'fae2386a-ba40-4cb8-9a63-66fba1a1ee02', '{"action":"login","actor_id":"4d9f3d20-b131-42dc-86ca-4564bfb248ee","actor_username":"jpittman@stellarsales.net","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2024-12-06 19:38:42.078236+00', ''),
	('00000000-0000-0000-0000-000000000000', 'e358cc6e-4471-4cd7-ae14-db013373f106', '{"action":"login","actor_id":"4d9f3d20-b131-42dc-86ca-4564bfb248ee","actor_username":"jpittman@stellarsales.net","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2024-12-06 19:38:48.672428+00', ''),
	('00000000-0000-0000-0000-000000000000', '480602a8-e391-40c8-84ce-3ed5348ea028', '{"action":"token_refreshed","actor_id":"4d9f3d20-b131-42dc-86ca-4564bfb248ee","actor_username":"jpittman@stellarsales.net","actor_via_sso":false,"log_type":"token"}', '2024-12-06 19:55:09.592+00', ''),
	('00000000-0000-0000-0000-000000000000', '6566d483-d0c3-4469-8ae0-cbe8dd74c0b3', '{"action":"token_revoked","actor_id":"4d9f3d20-b131-42dc-86ca-4564bfb248ee","actor_username":"jpittman@stellarsales.net","actor_via_sso":false,"log_type":"token"}', '2024-12-06 19:55:09.598977+00', ''),
	('00000000-0000-0000-0000-000000000000', '5fdc4623-8a1c-45db-99d1-cea5d281ec73', '{"action":"token_refreshed","actor_id":"4d9f3d20-b131-42dc-86ca-4564bfb248ee","actor_username":"jpittman@stellarsales.net","actor_via_sso":false,"log_type":"token"}', '2024-12-06 21:23:15.199377+00', ''),
	('00000000-0000-0000-0000-000000000000', 'b9a82396-5111-45ca-946a-322c645cbd90', '{"action":"token_revoked","actor_id":"4d9f3d20-b131-42dc-86ca-4564bfb248ee","actor_username":"jpittman@stellarsales.net","actor_via_sso":false,"log_type":"token"}', '2024-12-06 21:23:15.203508+00', ''),
	('00000000-0000-0000-0000-000000000000', 'e7713045-1e02-4567-9f2e-3e00c1825f3e', '{"action":"login","actor_id":"4d9f3d20-b131-42dc-86ca-4564bfb248ee","actor_username":"jpittman@stellarsales.net","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2024-12-06 22:58:58.615597+00', ''),
	('00000000-0000-0000-0000-000000000000', '6f49be9d-800f-4107-b2cf-73deea22cf2e', '{"action":"token_refreshed","actor_id":"4d9f3d20-b131-42dc-86ca-4564bfb248ee","actor_username":"jpittman@stellarsales.net","actor_via_sso":false,"log_type":"token"}', '2024-12-06 23:57:04.409357+00', ''),
	('00000000-0000-0000-0000-000000000000', 'e3dbb803-f706-4aa8-8a15-335e2804e4c1', '{"action":"token_revoked","actor_id":"4d9f3d20-b131-42dc-86ca-4564bfb248ee","actor_username":"jpittman@stellarsales.net","actor_via_sso":false,"log_type":"token"}', '2024-12-06 23:57:04.4102+00', ''),
	('00000000-0000-0000-0000-000000000000', 'eda6f24d-7227-4f81-afdf-304f822e3b6b', '{"action":"token_refreshed","actor_id":"4d9f3d20-b131-42dc-86ca-4564bfb248ee","actor_username":"jpittman@stellarsales.net","actor_via_sso":false,"log_type":"token"}', '2024-12-07 00:56:33.324326+00', ''),
	('00000000-0000-0000-0000-000000000000', '6e4975f3-67a4-4207-a358-7a5283c444f7', '{"action":"token_revoked","actor_id":"4d9f3d20-b131-42dc-86ca-4564bfb248ee","actor_username":"jpittman@stellarsales.net","actor_via_sso":false,"log_type":"token"}', '2024-12-07 00:56:33.325922+00', ''),
	('00000000-0000-0000-0000-000000000000', '0f748f84-b645-4649-9494-fcbb3e5ea209', '{"action":"token_refreshed","actor_id":"4d9f3d20-b131-42dc-86ca-4564bfb248ee","actor_username":"jpittman@stellarsales.net","actor_via_sso":false,"log_type":"token"}', '2024-12-10 15:35:52.694856+00', ''),
	('00000000-0000-0000-0000-000000000000', 'c3e09c33-8bc1-4a75-aafb-05678d2e9eb6', '{"action":"token_revoked","actor_id":"4d9f3d20-b131-42dc-86ca-4564bfb248ee","actor_username":"jpittman@stellarsales.net","actor_via_sso":false,"log_type":"token"}', '2024-12-10 15:35:52.71667+00', ''),
	('00000000-0000-0000-0000-000000000000', 'bd5928cc-04de-425a-8d89-76fcc935b22c', '{"action":"logout","actor_id":"4d9f3d20-b131-42dc-86ca-4564bfb248ee","actor_username":"jpittman@stellarsales.net","actor_via_sso":false,"log_type":"account"}', '2024-12-10 15:35:52.915694+00', ''),
	('00000000-0000-0000-0000-000000000000', 'c6f18b1c-3931-4010-b824-10aa494de05f', '{"action":"login","actor_id":"4d9f3d20-b131-42dc-86ca-4564bfb248ee","actor_username":"jpittman@stellarsales.net","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2024-12-10 16:24:47.055955+00', ''),
	('00000000-0000-0000-0000-000000000000', 'a011407b-01ef-4c36-a883-d2d943e8e9d1', '{"action":"token_refreshed","actor_id":"4d9f3d20-b131-42dc-86ca-4564bfb248ee","actor_username":"jpittman@stellarsales.net","actor_via_sso":false,"log_type":"token"}', '2024-12-10 17:23:06.466774+00', ''),
	('00000000-0000-0000-0000-000000000000', '25bc0dc6-d9a3-46b9-8ab6-3885c9ac12c4', '{"action":"token_revoked","actor_id":"4d9f3d20-b131-42dc-86ca-4564bfb248ee","actor_username":"jpittman@stellarsales.net","actor_via_sso":false,"log_type":"token"}', '2024-12-10 17:23:06.469531+00', ''),
	('00000000-0000-0000-0000-000000000000', '860b4af7-b405-4b82-bdbf-6d460806642d', '{"action":"logout","actor_id":"4d9f3d20-b131-42dc-86ca-4564bfb248ee","actor_username":"jpittman@stellarsales.net","actor_via_sso":false,"log_type":"account"}', '2024-12-10 18:03:25.412584+00', ''),
	('00000000-0000-0000-0000-000000000000', '76c3a2ed-2866-41cb-9a7d-2e25f962e0fb', '{"action":"login","actor_id":"aafde422-c655-4c2e-a3fa-2dcfaa42db07","actor_username":"chuck@woodland.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2024-12-10 18:03:32.286011+00', ''),
	('00000000-0000-0000-0000-000000000000', 'a2933a70-fa4e-4657-8f02-1fb61c2d3a6a', '{"action":"login","actor_id":"aafde422-c655-4c2e-a3fa-2dcfaa42db07","actor_username":"chuck@woodland.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2024-12-10 18:28:48.273781+00', ''),
	('00000000-0000-0000-0000-000000000000', '883dfc9a-1ba9-45d4-b37d-af63303315ee', '{"action":"token_refreshed","actor_id":"aafde422-c655-4c2e-a3fa-2dcfaa42db07","actor_username":"chuck@woodland.com","actor_via_sso":false,"log_type":"token"}', '2024-12-10 19:01:36.038106+00', ''),
	('00000000-0000-0000-0000-000000000000', 'd70d27cd-150d-4782-a8c0-988567f55dba', '{"action":"token_revoked","actor_id":"aafde422-c655-4c2e-a3fa-2dcfaa42db07","actor_username":"chuck@woodland.com","actor_via_sso":false,"log_type":"token"}', '2024-12-10 19:01:36.040899+00', ''),
	('00000000-0000-0000-0000-000000000000', '23ecb244-de78-48ee-ad3c-d085354924e4', '{"action":"token_refreshed","actor_id":"aafde422-c655-4c2e-a3fa-2dcfaa42db07","actor_username":"chuck@woodland.com","actor_via_sso":false,"log_type":"token"}', '2024-12-10 19:33:00.592049+00', ''),
	('00000000-0000-0000-0000-000000000000', 'b401be28-94d3-4cd9-8ed7-390f07c13f96', '{"action":"token_revoked","actor_id":"aafde422-c655-4c2e-a3fa-2dcfaa42db07","actor_username":"chuck@woodland.com","actor_via_sso":false,"log_type":"token"}', '2024-12-10 19:33:00.592895+00', ''),
	('00000000-0000-0000-0000-000000000000', '2e2409c3-e893-4c95-8811-c279a2a393fa', '{"action":"logout","actor_id":"aafde422-c655-4c2e-a3fa-2dcfaa42db07","actor_username":"chuck@woodland.com","actor_via_sso":false,"log_type":"account"}', '2024-12-10 19:33:00.739916+00', ''),
	('00000000-0000-0000-0000-000000000000', '6eca713c-465f-42a5-a151-24a68d45e487', '{"action":"login","actor_id":"aafde422-c655-4c2e-a3fa-2dcfaa42db07","actor_username":"chuck@woodland.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2024-12-10 20:05:24.501795+00', ''),
	('00000000-0000-0000-0000-000000000000', '296d8302-2925-4718-8d1f-50174c371b4a', '{"action":"token_refreshed","actor_id":"aafde422-c655-4c2e-a3fa-2dcfaa42db07","actor_username":"chuck@woodland.com","actor_via_sso":false,"log_type":"token"}', '2024-12-10 22:10:43.886219+00', ''),
	('00000000-0000-0000-0000-000000000000', '120a789d-e533-4251-8675-7fa84764e15d', '{"action":"token_revoked","actor_id":"aafde422-c655-4c2e-a3fa-2dcfaa42db07","actor_username":"chuck@woodland.com","actor_via_sso":false,"log_type":"token"}', '2024-12-10 22:10:43.887067+00', ''),
	('00000000-0000-0000-0000-000000000000', '46a6af4c-74a3-4dd5-b24e-74c52d43317a', '{"action":"token_refreshed","actor_id":"aafde422-c655-4c2e-a3fa-2dcfaa42db07","actor_username":"chuck@woodland.com","actor_via_sso":false,"log_type":"token"}', '2024-12-10 23:09:12.545358+00', ''),
	('00000000-0000-0000-0000-000000000000', '5ce6bd42-394a-4228-bbb8-b7a4062a181a', '{"action":"token_revoked","actor_id":"aafde422-c655-4c2e-a3fa-2dcfaa42db07","actor_username":"chuck@woodland.com","actor_via_sso":false,"log_type":"token"}', '2024-12-10 23:09:12.547214+00', ''),
	('00000000-0000-0000-0000-000000000000', '835c8be0-8f9b-45cf-a742-3ca6f3547332', '{"action":"token_refreshed","actor_id":"aafde422-c655-4c2e-a3fa-2dcfaa42db07","actor_username":"chuck@woodland.com","actor_via_sso":false,"log_type":"token"}', '2024-12-11 17:04:44.236303+00', ''),
	('00000000-0000-0000-0000-000000000000', '4eaa44b0-dba3-4ff1-84e7-ec69d1669e58', '{"action":"token_revoked","actor_id":"aafde422-c655-4c2e-a3fa-2dcfaa42db07","actor_username":"chuck@woodland.com","actor_via_sso":false,"log_type":"token"}', '2024-12-11 17:04:44.25279+00', ''),
	('00000000-0000-0000-0000-000000000000', '0121bcea-0b46-4c4f-b35d-66f23f23f78e', '{"action":"logout","actor_id":"aafde422-c655-4c2e-a3fa-2dcfaa42db07","actor_username":"chuck@woodland.com","actor_via_sso":false,"log_type":"account"}', '2024-12-11 17:04:44.423532+00', ''),
	('00000000-0000-0000-0000-000000000000', '130039d3-82d8-45cc-b9df-e9deb63db789', '{"action":"login","actor_id":"aafde422-c655-4c2e-a3fa-2dcfaa42db07","actor_username":"chuck@woodland.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2024-12-11 17:04:49.703535+00', ''),
	('00000000-0000-0000-0000-000000000000', '7d2ecf48-2b1d-4f06-bea5-871f75cbc1ce', '{"action":"token_refreshed","actor_id":"aafde422-c655-4c2e-a3fa-2dcfaa42db07","actor_username":"chuck@woodland.com","actor_via_sso":false,"log_type":"token"}', '2024-12-11 18:19:21.450687+00', ''),
	('00000000-0000-0000-0000-000000000000', '5098540e-6168-4f85-9d39-da15e9ad4488', '{"action":"token_revoked","actor_id":"aafde422-c655-4c2e-a3fa-2dcfaa42db07","actor_username":"chuck@woodland.com","actor_via_sso":false,"log_type":"token"}', '2024-12-11 18:19:21.453994+00', ''),
	('00000000-0000-0000-0000-000000000000', '0b86c19f-c926-4da9-ac3b-e0895e9b4543', '{"action":"token_refreshed","actor_id":"aafde422-c655-4c2e-a3fa-2dcfaa42db07","actor_username":"chuck@woodland.com","actor_via_sso":false,"log_type":"token"}', '2024-12-11 19:17:32.800059+00', ''),
	('00000000-0000-0000-0000-000000000000', 'fb486447-4e52-430a-880b-d9f228db8686', '{"action":"token_revoked","actor_id":"aafde422-c655-4c2e-a3fa-2dcfaa42db07","actor_username":"chuck@woodland.com","actor_via_sso":false,"log_type":"token"}', '2024-12-11 19:17:32.805139+00', ''),
	('00000000-0000-0000-0000-000000000000', '4de5f65c-d0b1-4bc5-9669-2890bce03f45', '{"action":"token_refreshed","actor_id":"aafde422-c655-4c2e-a3fa-2dcfaa42db07","actor_username":"chuck@woodland.com","actor_via_sso":false,"log_type":"token"}', '2024-12-11 20:15:32.852569+00', ''),
	('00000000-0000-0000-0000-000000000000', 'dcd6cf12-430f-4a7f-90a8-209ced1c328f', '{"action":"token_revoked","actor_id":"aafde422-c655-4c2e-a3fa-2dcfaa42db07","actor_username":"chuck@woodland.com","actor_via_sso":false,"log_type":"token"}', '2024-12-11 20:15:32.855249+00', ''),
	('00000000-0000-0000-0000-000000000000', '68e33d5a-bff7-45d1-9297-d909bdd9dccc', '{"action":"token_refreshed","actor_id":"aafde422-c655-4c2e-a3fa-2dcfaa42db07","actor_username":"chuck@woodland.com","actor_via_sso":false,"log_type":"token"}', '2024-12-13 00:10:22.263273+00', ''),
	('00000000-0000-0000-0000-000000000000', 'c238b8da-3ae5-4ffb-8a58-c330bdc4b12e', '{"action":"token_revoked","actor_id":"aafde422-c655-4c2e-a3fa-2dcfaa42db07","actor_username":"chuck@woodland.com","actor_via_sso":false,"log_type":"token"}', '2024-12-13 00:10:22.277875+00', ''),
	('00000000-0000-0000-0000-000000000000', '7ee349dd-3e0d-442d-9cf0-0b461eb768b7', '{"action":"logout","actor_id":"aafde422-c655-4c2e-a3fa-2dcfaa42db07","actor_username":"chuck@woodland.com","actor_via_sso":false,"log_type":"account"}', '2024-12-13 00:10:22.494236+00', ''),
	('00000000-0000-0000-0000-000000000000', 'c41f59e2-d00a-455c-a8e7-a6f494bb02d3', '{"action":"login","actor_id":"aafde422-c655-4c2e-a3fa-2dcfaa42db07","actor_username":"chuck@woodland.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2024-12-13 00:10:35.60977+00', ''),
	('00000000-0000-0000-0000-000000000000', 'cce6faae-9585-4c56-a3f4-0866156574c5', '{"action":"token_refreshed","actor_id":"aafde422-c655-4c2e-a3fa-2dcfaa42db07","actor_username":"chuck@woodland.com","actor_via_sso":false,"log_type":"token"}', '2024-12-16 16:38:49.856016+00', ''),
	('00000000-0000-0000-0000-000000000000', 'c48c0d27-38f7-48a8-822e-9771be947643', '{"action":"token_revoked","actor_id":"aafde422-c655-4c2e-a3fa-2dcfaa42db07","actor_username":"chuck@woodland.com","actor_via_sso":false,"log_type":"token"}', '2024-12-16 16:38:49.870373+00', ''),
	('00000000-0000-0000-0000-000000000000', '196a4836-e311-434b-9cb5-ec7cabd83267', '{"action":"token_refreshed","actor_id":"aafde422-c655-4c2e-a3fa-2dcfaa42db07","actor_username":"chuck@woodland.com","actor_via_sso":false,"log_type":"token"}', '2024-12-16 16:38:50.067258+00', ''),
	('00000000-0000-0000-0000-000000000000', '813d8092-c48b-4642-913c-2a107ecce93d', '{"action":"logout","actor_id":"aafde422-c655-4c2e-a3fa-2dcfaa42db07","actor_username":"chuck@woodland.com","actor_via_sso":false,"log_type":"account"}', '2024-12-16 16:38:50.219499+00', ''),
	('00000000-0000-0000-0000-000000000000', '4ae98036-78aa-44cd-81ad-b6f11ae614ea', '{"action":"user_signedup","actor_id":"00000000-0000-0000-0000-000000000000","actor_username":"service_role","actor_via_sso":false,"log_type":"team","traits":{"user_email":"rodrigo@theoutdoorplus.com","user_id":"d9489df7-1e52-44fe-add1-68f23c984231","user_phone":""}}', '2024-12-17 00:31:40.116827+00', ''),
	('00000000-0000-0000-0000-000000000000', '013ca6a6-a091-4629-9397-ea9f696f3d98', '{"action":"login","actor_id":"d9489df7-1e52-44fe-add1-68f23c984231","actor_username":"rodrigo@theoutdoorplus.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2024-12-17 00:32:38.567806+00', ''),
	('00000000-0000-0000-0000-000000000000', 'e5207907-905f-4806-934f-1c7612229b0d', '{"action":"token_refreshed","actor_id":"d9489df7-1e52-44fe-add1-68f23c984231","actor_username":"rodrigo@theoutdoorplus.com","actor_via_sso":false,"log_type":"token"}', '2024-12-17 16:35:50.265367+00', ''),
	('00000000-0000-0000-0000-000000000000', 'e4f18abb-9315-44ac-b5b9-8ac852d8186a', '{"action":"token_revoked","actor_id":"d9489df7-1e52-44fe-add1-68f23c984231","actor_username":"rodrigo@theoutdoorplus.com","actor_via_sso":false,"log_type":"token"}', '2024-12-17 16:35:50.278755+00', ''),
	('00000000-0000-0000-0000-000000000000', '14deca4d-637c-4094-be5f-383817358970', '{"action":"token_refreshed","actor_id":"d9489df7-1e52-44fe-add1-68f23c984231","actor_username":"rodrigo@theoutdoorplus.com","actor_via_sso":false,"log_type":"token"}', '2024-12-17 16:35:50.71823+00', ''),
	('00000000-0000-0000-0000-000000000000', '4844a2a3-638c-4471-8d9b-a440c403128b', '{"action":"logout","actor_id":"d9489df7-1e52-44fe-add1-68f23c984231","actor_username":"rodrigo@theoutdoorplus.com","actor_via_sso":false,"log_type":"account"}', '2024-12-17 16:35:50.951745+00', ''),
	('00000000-0000-0000-0000-000000000000', 'e4c9083b-b5e5-4867-bcc8-40988d60019a', '{"action":"login","actor_id":"d9489df7-1e52-44fe-add1-68f23c984231","actor_username":"rodrigo@theoutdoorplus.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2024-12-17 16:36:02.053796+00', ''),
	('00000000-0000-0000-0000-000000000000', '3c8c4ecd-fd2a-4836-ab74-e34011d715d8', '{"action":"token_refreshed","actor_id":"d9489df7-1e52-44fe-add1-68f23c984231","actor_username":"rodrigo@theoutdoorplus.com","actor_via_sso":false,"log_type":"token"}', '2024-12-17 17:34:48.572246+00', ''),
	('00000000-0000-0000-0000-000000000000', '91f0b65c-7d3f-4f9b-9f5d-af5d89365e18', '{"action":"token_revoked","actor_id":"d9489df7-1e52-44fe-add1-68f23c984231","actor_username":"rodrigo@theoutdoorplus.com","actor_via_sso":false,"log_type":"token"}', '2024-12-17 17:34:48.575459+00', ''),
	('00000000-0000-0000-0000-000000000000', 'b4ecd042-392b-4611-bdf6-4690e7ca7076', '{"action":"token_refreshed","actor_id":"d9489df7-1e52-44fe-add1-68f23c984231","actor_username":"rodrigo@theoutdoorplus.com","actor_via_sso":false,"log_type":"token"}', '2024-12-17 18:33:14.275687+00', ''),
	('00000000-0000-0000-0000-000000000000', '4f0f8b23-e806-401b-b833-ae2f37a2b76a', '{"action":"token_revoked","actor_id":"d9489df7-1e52-44fe-add1-68f23c984231","actor_username":"rodrigo@theoutdoorplus.com","actor_via_sso":false,"log_type":"token"}', '2024-12-17 18:33:14.279958+00', ''),
	('00000000-0000-0000-0000-000000000000', 'aa345d7a-1556-4331-807d-2903c41acc16', '{"action":"token_refreshed","actor_id":"d9489df7-1e52-44fe-add1-68f23c984231","actor_username":"rodrigo@theoutdoorplus.com","actor_via_sso":false,"log_type":"token"}', '2024-12-17 19:32:30.077676+00', ''),
	('00000000-0000-0000-0000-000000000000', 'badbdaad-0aa9-47c7-adc5-c8cd2c843f70', '{"action":"token_revoked","actor_id":"d9489df7-1e52-44fe-add1-68f23c984231","actor_username":"rodrigo@theoutdoorplus.com","actor_via_sso":false,"log_type":"token"}', '2024-12-17 19:32:30.081353+00', ''),
	('00000000-0000-0000-0000-000000000000', 'f0065cef-0bb5-4833-a175-2fb2ef307cdc', '{"action":"token_refreshed","actor_id":"d9489df7-1e52-44fe-add1-68f23c984231","actor_username":"rodrigo@theoutdoorplus.com","actor_via_sso":false,"log_type":"token"}', '2024-12-17 20:39:35.363148+00', ''),
	('00000000-0000-0000-0000-000000000000', '799d9517-b489-44d3-9dad-4fe0d5316990', '{"action":"token_revoked","actor_id":"d9489df7-1e52-44fe-add1-68f23c984231","actor_username":"rodrigo@theoutdoorplus.com","actor_via_sso":false,"log_type":"token"}', '2024-12-17 20:39:35.368599+00', ''),
	('00000000-0000-0000-0000-000000000000', '2d3ddc29-0ac5-4172-a37d-affa56ad97c2', '{"action":"token_refreshed","actor_id":"d9489df7-1e52-44fe-add1-68f23c984231","actor_username":"rodrigo@theoutdoorplus.com","actor_via_sso":false,"log_type":"token"}', '2024-12-17 21:37:57.229094+00', ''),
	('00000000-0000-0000-0000-000000000000', 'd5ece53a-317f-400b-8be8-a03915f744bb', '{"action":"token_revoked","actor_id":"d9489df7-1e52-44fe-add1-68f23c984231","actor_username":"rodrigo@theoutdoorplus.com","actor_via_sso":false,"log_type":"token"}', '2024-12-17 21:37:57.23425+00', ''),
	('00000000-0000-0000-0000-000000000000', '9d404a4d-ddaa-4647-8865-8c7b084dbed3', '{"action":"logout","actor_id":"d9489df7-1e52-44fe-add1-68f23c984231","actor_username":"rodrigo@theoutdoorplus.com","actor_via_sso":false,"log_type":"account"}', '2024-12-17 21:42:32.613848+00', ''),
	('00000000-0000-0000-0000-000000000000', '5071b290-d795-44ee-9096-97d4fdd35b98', '{"action":"login","actor_id":"d9489df7-1e52-44fe-add1-68f23c984231","actor_username":"rodrigo@theoutdoorplus.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2024-12-17 21:42:39.573332+00', ''),
	('00000000-0000-0000-0000-000000000000', '107dea09-4859-492b-aac0-69e7eae7e20c', '{"action":"token_refreshed","actor_id":"d9489df7-1e52-44fe-add1-68f23c984231","actor_username":"rodrigo@theoutdoorplus.com","actor_via_sso":false,"log_type":"token"}', '2024-12-17 22:54:55.002455+00', ''),
	('00000000-0000-0000-0000-000000000000', '16463cef-1953-4772-91af-a49bd01cfbc5', '{"action":"token_revoked","actor_id":"d9489df7-1e52-44fe-add1-68f23c984231","actor_username":"rodrigo@theoutdoorplus.com","actor_via_sso":false,"log_type":"token"}', '2024-12-17 22:54:55.005685+00', ''),
	('00000000-0000-0000-0000-000000000000', '529f3577-2037-4e8b-914c-bd944e71a79a', '{"action":"user_signedup","actor_id":"00000000-0000-0000-0000-000000000000","actor_username":"service_role","actor_via_sso":false,"log_type":"team","traits":{"user_email":"test@test.com","user_id":"987dbbbc-421a-488e-b625-05c313301deb","user_phone":""}}', '2024-12-17 23:51:23.791909+00', ''),
	('00000000-0000-0000-0000-000000000000', 'c5f43edc-9092-465c-af0a-5908bfb3c1b3', '{"action":"token_refreshed","actor_id":"d9489df7-1e52-44fe-add1-68f23c984231","actor_username":"rodrigo@theoutdoorplus.com","actor_via_sso":false,"log_type":"token"}', '2024-12-17 23:53:18.295467+00', ''),
	('00000000-0000-0000-0000-000000000000', '0e6a3385-f8c3-4371-93dc-ae7af86aa436', '{"action":"token_revoked","actor_id":"d9489df7-1e52-44fe-add1-68f23c984231","actor_username":"rodrigo@theoutdoorplus.com","actor_via_sso":false,"log_type":"token"}', '2024-12-17 23:53:18.296849+00', ''),
	('00000000-0000-0000-0000-000000000000', 'c795c098-16b8-4a47-8211-6fa81b2c0087', '{"action":"user_modified","actor_id":"00000000-0000-0000-0000-000000000000","actor_username":"service_role","actor_via_sso":false,"log_type":"user","traits":{"user_email":"test@test.com","user_id":"987dbbbc-421a-488e-b625-05c313301deb","user_phone":""}}', '2024-12-17 23:53:49.879264+00', ''),
	('00000000-0000-0000-0000-000000000000', 'cbc00569-3ff0-4fdf-8309-f03e7edd1171', '{"action":"logout","actor_id":"d9489df7-1e52-44fe-add1-68f23c984231","actor_username":"rodrigo@theoutdoorplus.com","actor_via_sso":false,"log_type":"account"}', '2024-12-18 00:31:52.040798+00', ''),
	('00000000-0000-0000-0000-000000000000', '0cbabdfd-d9be-4c1f-b78a-078cd225d8f6', '{"action":"login","actor_id":"d9489df7-1e52-44fe-add1-68f23c984231","actor_username":"rodrigo@theoutdoorplus.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2024-12-18 00:31:56.604607+00', ''),
	('00000000-0000-0000-0000-000000000000', 'a016963e-bfb4-4a1f-bf66-656fc48c44a2', '{"action":"token_refreshed","actor_id":"d9489df7-1e52-44fe-add1-68f23c984231","actor_username":"rodrigo@theoutdoorplus.com","actor_via_sso":false,"log_type":"token"}', '2024-12-18 16:34:29.185766+00', ''),
	('00000000-0000-0000-0000-000000000000', 'af67e49c-5203-4dc1-a62b-92f6d4f5ff38', '{"action":"token_revoked","actor_id":"d9489df7-1e52-44fe-add1-68f23c984231","actor_username":"rodrigo@theoutdoorplus.com","actor_via_sso":false,"log_type":"token"}', '2024-12-18 16:34:29.198198+00', ''),
	('00000000-0000-0000-0000-000000000000', '18166877-1b0d-42d8-954e-2dc82cf014e8', '{"action":"token_refreshed","actor_id":"d9489df7-1e52-44fe-add1-68f23c984231","actor_username":"rodrigo@theoutdoorplus.com","actor_via_sso":false,"log_type":"token"}', '2024-12-18 16:34:29.260334+00', ''),
	('00000000-0000-0000-0000-000000000000', 'e2933b7a-8d5f-43a9-ba8d-8c11282535f2', '{"action":"logout","actor_id":"d9489df7-1e52-44fe-add1-68f23c984231","actor_username":"rodrigo@theoutdoorplus.com","actor_via_sso":false,"log_type":"account"}', '2024-12-18 16:34:29.36905+00', ''),
	('00000000-0000-0000-0000-000000000000', '5458d19f-4d4d-4c09-85a7-69c334f12d85', '{"action":"login","actor_id":"d9489df7-1e52-44fe-add1-68f23c984231","actor_username":"rodrigo@theoutdoorplus.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2024-12-18 16:34:39.370678+00', ''),
	('00000000-0000-0000-0000-000000000000', '2aae899d-7622-4e4e-8057-92f33e67dc63', '{"action":"token_refreshed","actor_id":"d9489df7-1e52-44fe-add1-68f23c984231","actor_username":"rodrigo@theoutdoorplus.com","actor_via_sso":false,"log_type":"token"}', '2024-12-18 17:32:50.804386+00', ''),
	('00000000-0000-0000-0000-000000000000', 'bf017a86-8c0b-4649-a665-87e57e093e60', '{"action":"token_revoked","actor_id":"d9489df7-1e52-44fe-add1-68f23c984231","actor_username":"rodrigo@theoutdoorplus.com","actor_via_sso":false,"log_type":"token"}', '2024-12-18 17:32:50.809964+00', ''),
	('00000000-0000-0000-0000-000000000000', '7b3cca7b-0b21-4e43-a8a5-783afaa5c940', '{"action":"user_modified","actor_id":"00000000-0000-0000-0000-000000000000","actor_username":"service_role","actor_via_sso":false,"log_type":"user","traits":{"user_email":"internet@top.com","user_id":"2456e232-48e4-467a-8cf6-eaba27c1948b","user_phone":""}}', '2024-12-18 18:14:00.207906+00', ''),
	('00000000-0000-0000-0000-000000000000', '7ab639c3-c382-4d83-9b49-c9523173c184', '{"action":"user_modified","actor_id":"00000000-0000-0000-0000-000000000000","actor_username":"service_role","actor_via_sso":false,"log_type":"user","traits":{"user_email":"internet@top.com","user_id":"2456e232-48e4-467a-8cf6-eaba27c1948b","user_phone":""}}', '2024-12-18 18:14:09.67926+00', ''),
	('00000000-0000-0000-0000-000000000000', '5c14f2d0-aa9f-4761-8ead-0a1e1c8f6eca', '{"action":"user_modified","actor_id":"00000000-0000-0000-0000-000000000000","actor_username":"service_role","actor_via_sso":false,"log_type":"user","traits":{"user_email":"internet@top.com","user_id":"2456e232-48e4-467a-8cf6-eaba27c1948b","user_phone":""}}', '2024-12-18 18:14:32.154565+00', ''),
	('00000000-0000-0000-0000-000000000000', '9348dabe-101d-4cb9-a6fd-d3eaba669c72', '{"action":"user_modified","actor_id":"00000000-0000-0000-0000-000000000000","actor_username":"service_role","actor_via_sso":false,"log_type":"user","traits":{"user_email":"internet@top.com","user_id":"2456e232-48e4-467a-8cf6-eaba27c1948b","user_phone":""}}', '2024-12-18 18:14:39.880073+00', ''),
	('00000000-0000-0000-0000-000000000000', '68c2c3e3-379b-41e1-a51d-1581145d3db8', '{"action":"user_signedup","actor_id":"00000000-0000-0000-0000-000000000000","actor_username":"service_role","actor_via_sso":false,"log_type":"team","traits":{"user_email":"jains@theoutdoorplus.com","user_id":"0177fd9c-8fd6-4de1-a802-cc64b25712ce","user_phone":""}}', '2024-12-18 18:16:20.096985+00', ''),
	('00000000-0000-0000-0000-000000000000', 'a1650ec2-d964-4065-9c68-3c21e10c8bc3', '{"action":"token_refreshed","actor_id":"d9489df7-1e52-44fe-add1-68f23c984231","actor_username":"rodrigo@theoutdoorplus.com","actor_via_sso":false,"log_type":"token"}', '2024-12-18 18:47:23.355722+00', ''),
	('00000000-0000-0000-0000-000000000000', '7df86c3d-4937-4e18-b27c-88d6df4b5b38', '{"action":"token_revoked","actor_id":"d9489df7-1e52-44fe-add1-68f23c984231","actor_username":"rodrigo@theoutdoorplus.com","actor_via_sso":false,"log_type":"token"}', '2024-12-18 18:47:23.356614+00', ''),
	('00000000-0000-0000-0000-000000000000', 'afcc8358-ab48-467c-b9bb-82f786240d4d', '{"action":"logout","actor_id":"d9489df7-1e52-44fe-add1-68f23c984231","actor_username":"rodrigo@theoutdoorplus.com","actor_via_sso":false,"log_type":"account"}', '2024-12-18 18:48:57.078899+00', ''),
	('00000000-0000-0000-0000-000000000000', 'f0e678fd-33ff-4eb7-92ce-e3baadef11ed', '{"action":"login","actor_id":"d9489df7-1e52-44fe-add1-68f23c984231","actor_username":"rodrigo@theoutdoorplus.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2024-12-18 18:49:06.894553+00', ''),
	('00000000-0000-0000-0000-000000000000', 'd2bb9cc9-6014-4192-bc19-5c5ede12906b', '{"action":"logout","actor_id":"d9489df7-1e52-44fe-add1-68f23c984231","actor_username":"rodrigo@theoutdoorplus.com","actor_via_sso":false,"log_type":"account"}', '2024-12-18 18:51:01.288696+00', ''),
	('00000000-0000-0000-0000-000000000000', 'e43d4848-2e5f-46ae-8b3b-0fcfa0b70651', '{"action":"login","actor_id":"d9489df7-1e52-44fe-add1-68f23c984231","actor_username":"rodrigo@theoutdoorplus.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2024-12-18 18:51:06.935397+00', ''),
	('00000000-0000-0000-0000-000000000000', 'fbf56881-a008-4eeb-946d-1c99419812d9', '{"action":"logout","actor_id":"d9489df7-1e52-44fe-add1-68f23c984231","actor_username":"rodrigo@theoutdoorplus.com","actor_via_sso":false,"log_type":"account"}', '2024-12-18 18:51:13.779071+00', ''),
	('00000000-0000-0000-0000-000000000000', '09d3e6b4-e9d6-42fb-8623-9416b90090b9', '{"action":"login","actor_id":"aafde422-c655-4c2e-a3fa-2dcfaa42db07","actor_username":"chuck@woodland.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2024-12-18 18:51:19.170539+00', ''),
	('00000000-0000-0000-0000-000000000000', 'c2d66702-528b-480d-a827-bec1a3371e45', '{"action":"token_refreshed","actor_id":"aafde422-c655-4c2e-a3fa-2dcfaa42db07","actor_username":"chuck@woodland.com","actor_via_sso":false,"log_type":"token"}', '2024-12-18 21:24:09.468812+00', ''),
	('00000000-0000-0000-0000-000000000000', 'a65cc346-20f5-4c9a-92da-60c53de7722f', '{"action":"token_revoked","actor_id":"aafde422-c655-4c2e-a3fa-2dcfaa42db07","actor_username":"chuck@woodland.com","actor_via_sso":false,"log_type":"token"}', '2024-12-18 21:24:09.474602+00', ''),
	('00000000-0000-0000-0000-000000000000', '6fdcda50-8458-4fe3-a580-fe33a3dd9ac3', '{"action":"logout","actor_id":"aafde422-c655-4c2e-a3fa-2dcfaa42db07","actor_username":"chuck@woodland.com","actor_via_sso":false,"log_type":"account"}', '2024-12-18 21:26:36.806411+00', ''),
	('00000000-0000-0000-0000-000000000000', '56f31c5f-faa0-4018-be57-e4776f62e8f1', '{"action":"login","actor_id":"d9489df7-1e52-44fe-add1-68f23c984231","actor_username":"rodrigo@theoutdoorplus.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2024-12-18 21:26:49.957122+00', ''),
	('00000000-0000-0000-0000-000000000000', 'b4d9610d-2689-416b-8678-2f3dd9852b3b', '{"action":"token_refreshed","actor_id":"d9489df7-1e52-44fe-add1-68f23c984231","actor_username":"rodrigo@theoutdoorplus.com","actor_via_sso":false,"log_type":"token"}', '2024-12-18 22:27:35.887809+00', ''),
	('00000000-0000-0000-0000-000000000000', 'f3101fdb-2eb9-4ffa-b65e-c530b2b1a103', '{"action":"token_revoked","actor_id":"d9489df7-1e52-44fe-add1-68f23c984231","actor_username":"rodrigo@theoutdoorplus.com","actor_via_sso":false,"log_type":"token"}', '2024-12-18 22:27:35.88976+00', ''),
	('00000000-0000-0000-0000-000000000000', '6e204c6d-df8b-4648-9c7b-f6cd43deabf1', '{"action":"logout","actor_id":"d9489df7-1e52-44fe-add1-68f23c984231","actor_username":"rodrigo@theoutdoorplus.com","actor_via_sso":false,"log_type":"account"}', '2024-12-18 22:37:59.934303+00', ''),
	('00000000-0000-0000-0000-000000000000', 'bddd111d-1ca8-4313-b9f9-5071843917a4', '{"action":"login","actor_id":"aafde422-c655-4c2e-a3fa-2dcfaa42db07","actor_username":"chuck@woodland.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2024-12-18 22:38:19.274532+00', ''),
	('00000000-0000-0000-0000-000000000000', '89b17258-2490-4a3d-9c0d-78068adf16df', '{"action":"token_refreshed","actor_id":"aafde422-c655-4c2e-a3fa-2dcfaa42db07","actor_username":"chuck@woodland.com","actor_via_sso":false,"log_type":"token"}', '2024-12-18 23:44:36.995913+00', ''),
	('00000000-0000-0000-0000-000000000000', '9168dc8a-88ff-4bd7-8f8f-25872411d363', '{"action":"token_revoked","actor_id":"aafde422-c655-4c2e-a3fa-2dcfaa42db07","actor_username":"chuck@woodland.com","actor_via_sso":false,"log_type":"token"}', '2024-12-18 23:44:36.9968+00', '');


--
-- Data for Name: flow_state; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--



--
-- Data for Name: users; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

INSERT INTO "auth"."users" ("instance_id", "id", "aud", "role", "email", "encrypted_password", "email_confirmed_at", "invited_at", "confirmation_token", "confirmation_sent_at", "recovery_token", "recovery_sent_at", "email_change_token_new", "email_change", "email_change_sent_at", "last_sign_in_at", "raw_app_meta_data", "raw_user_meta_data", "is_super_admin", "created_at", "updated_at", "phone", "phone_confirmed_at", "phone_change", "phone_change_token", "phone_change_sent_at", "email_change_token_current", "email_change_confirm_status", "banned_until", "reauthentication_token", "reauthentication_sent_at", "is_sso_user", "deleted_at", "is_anonymous") VALUES
	('00000000-0000-0000-0000-000000000000', 'd9489df7-1e52-44fe-add1-68f23c984231', 'authenticated', 'authenticated', 'rodrigo@theoutdoorplus.com', '$2a$10$vZPh2S8xbWhtg3EVo1mFFOjCsulExcWymxhAi/48Oyi1Pg8cqybWC', '2024-12-17 00:31:40.121916+00', NULL, '', NULL, '', NULL, '', '', NULL, '2024-12-18 21:26:49.9578+00', '{"provider": "email", "providers": ["email"]}', '{"role": "ADMIN", "company": "aab2dcff-2d61-46b2-b80d-eafc3df7ed29", "last_name": "Alvarenga", "avatar_url": null, "first_name": "Rodrigo"}', NULL, '2024-12-17 00:31:40.097014+00', '2024-12-18 22:27:35.892572+00', NULL, NULL, '', '', NULL, '', 0, NULL, '', NULL, false, NULL, false),
	('00000000-0000-0000-0000-000000000000', '2456e232-48e4-467a-8cf6-eaba27c1948b', 'authenticated', 'authenticated', 'internet@top.com', '$2a$10$RRnXy0Ot4RzBKG68Fqjecuy/rUCnGsKWXHfv05ugSKNJvi3BsaexO', '2024-11-22 17:39:34.761672+00', NULL, '', NULL, '', NULL, '', '', NULL, '2024-12-03 19:04:58.140825+00', '{"provider": "email", "providers": ["email"]}', '{"role": "INTERNET", "company": "8f031265-3d83-440e-9992-d9343ace13a1", "last_name": "G Dealer Rep", "avatar_url": null, "first_name": "Jimmie"}', NULL, '2024-11-22 17:39:34.752341+00', '2024-12-18 18:14:39.879782+00', NULL, NULL, '', '', NULL, '', 0, NULL, '', NULL, false, NULL, false),
	('00000000-0000-0000-0000-000000000000', 'dd1719e8-2a25-4eeb-9814-ac991aaf961a', 'authenticated', 'authenticated', 'bill@seleisure.com', '$2a$10$z2o8EE9ISamqTOH9oyJDee1Tg2z0tyiNhZlhhtKKxnViB1S3Rb6jG', '2024-12-04 21:13:34.175924+00', NULL, '', NULL, '', NULL, '', '', NULL, NULL, '{"provider": "email", "providers": ["email"]}', '{"role": "SALES", "company": "569c7bd5-370e-4480-89cd-6ab7ffe29944", "last_name": "Shaffer", "avatar_url": null, "first_name": "Bill"}', NULL, '2024-12-04 21:13:34.164829+00', '2024-12-04 21:13:34.176131+00', NULL, NULL, '', '', NULL, '', 0, NULL, '', NULL, false, NULL, false),
	('00000000-0000-0000-0000-000000000000', '52cf7227-02ec-4bf1-83f8-e96537519cb4', 'authenticated', 'authenticated', 'sean@seleisure.com', '$2a$10$EjUKvT44cvR6RABrY9y.fuY6h5JD52UuEslbkBxtXadMKwjr6jvqa', '2024-12-04 16:53:39.667348+00', NULL, '', NULL, '', NULL, '', '', NULL, '2024-12-04 16:57:11.678103+00', '{"provider": "email", "providers": ["email"]}', '{"role": "SALES", "company": "569c7bd5-370e-4480-89cd-6ab7ffe29944", "last_name": "Lautzenhiser", "avatar_url": null, "first_name": "Sean"}', NULL, '2024-12-04 16:53:39.658823+00', '2024-12-04 19:43:10.534079+00', NULL, NULL, '', '', NULL, '', 0, NULL, '', NULL, false, NULL, false),
	('00000000-0000-0000-0000-000000000000', 'aafde422-c655-4c2e-a3fa-2dcfaa42db07', 'authenticated', 'authenticated', 'chuck@woodland.com', '$2a$10$BlqaD6cdPXYMIBdczwyrYu/vZMqG0zaMEQODAutZ1aLlrQQhVF762', '2024-12-03 21:49:20.067516+00', NULL, '', NULL, '', NULL, '', '', NULL, '2024-12-18 22:38:19.27541+00', '{"provider": "email", "providers": ["email"]}', '{"role": "DEALER", "company": "8f031265-3d83-440e-9992-d9343ace13a1", "last_name": "Nitschke", "avatar_url": "https://www.dropbox.com/scl/fi/hxurt0gzuwmfvrluji2za/chuck_photo.jpg?rlkey=2mwcd8czhgygr52oqm9bc8oc6&st=06jbh4lm&raw=1", "first_name": "Chuck"}', NULL, '2024-12-03 21:49:20.055165+00', '2024-12-18 23:44:36.998873+00', NULL, NULL, '', '', NULL, '', 0, NULL, '', NULL, false, NULL, false),
	('00000000-0000-0000-0000-000000000000', '4d9f3d20-b131-42dc-86ca-4564bfb248ee', 'authenticated', 'authenticated', 'jpittman@stellarsales.net', '$2a$10$0zm6S7545KzSbRfdV/CQOe76h5j/sX16E6L6/Z2u6/i8wQXj4fOxO', '2024-12-02 23:29:13.030227+00', NULL, '', NULL, '', NULL, '', '', NULL, '2024-12-10 16:24:47.058232+00', '{"provider": "email", "providers": ["email"]}', '{"role": "SALES", "company": "16096898-eb47-4d1c-9bfe-f18561a13007", "last_name": "Pittman", "avatar_url": "https://www.dropbox.com/scl/fi/s340vb0dl4avkh7ropz77/Jami-Pittman-Headshot-01.png?rlkey=yxkb481yx87l9bukzpoxzi4g3&st=n2lm4dr6&raw=1", "first_name": "Jami"}', NULL, '2024-12-02 23:29:13.016787+00', '2024-12-10 17:23:06.472658+00', NULL, NULL, '', '', NULL, '', 0, NULL, '', NULL, false, NULL, false),
	('00000000-0000-0000-0000-000000000000', 'b709f39c-7363-4b77-b981-24e383a96e4b', 'authenticated', 'authenticated', 'jordan@stellar.com', '$2a$10$6YDaGxnZfz1r1LViKbEmZOSB0pAQPm9zq9gkUUMmfnRslHGKqZCt.', '2024-12-04 16:51:38.21564+00', NULL, '', NULL, '', NULL, '', '', NULL, '2024-12-05 00:19:30.034406+00', '{"provider": "email", "providers": ["email"]}', '{"role": "SALES", "company": "16096898-eb47-4d1c-9bfe-f18561a13007", "last_name": "Bailey", "avatar_url": "https://www.dropbox.com/scl/fi/eqrlh5x2590kna81xi0qc/jordan_stellar.jpg?rlkey=bbwwlid13x8ppk9u3w0dbnq45&st=vsetn5n5&raw=1", "first_name": "Jordan"}', NULL, '2024-12-04 16:51:38.205734+00', '2024-12-06 15:52:33.307891+00', NULL, NULL, '', '', NULL, '', 0, NULL, '', NULL, false, NULL, false);


--
-- Data for Name: identities; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

INSERT INTO "auth"."identities" ("provider_id", "user_id", "identity_data", "provider", "last_sign_in_at", "created_at", "updated_at", "id") VALUES
	('4d9f3d20-b131-42dc-86ca-4564bfb248ee', '4d9f3d20-b131-42dc-86ca-4564bfb248ee', '{"sub": "4d9f3d20-b131-42dc-86ca-4564bfb248ee", "email": "jpittman@stellarsales.net", "email_verified": false, "phone_verified": false}', 'email', '2024-12-02 23:29:13.024198+00', '2024-12-02 23:29:13.02426+00', '2024-12-02 23:29:13.02426+00', '42386056-d67f-418c-a3e1-f54ba4a3b87a'),
	('aafde422-c655-4c2e-a3fa-2dcfaa42db07', 'aafde422-c655-4c2e-a3fa-2dcfaa42db07', '{"sub": "aafde422-c655-4c2e-a3fa-2dcfaa42db07", "email": "chuck@woodland.com", "email_verified": false, "phone_verified": false}', 'email', '2024-12-03 21:49:20.065599+00', '2024-12-03 21:49:20.065662+00', '2024-12-03 21:49:20.065662+00', '02817ed1-8423-4ce2-aa9f-65473c53ce43'),
	('b709f39c-7363-4b77-b981-24e383a96e4b', 'b709f39c-7363-4b77-b981-24e383a96e4b', '{"sub": "b709f39c-7363-4b77-b981-24e383a96e4b", "email": "jordan@stellar.com", "email_verified": false, "phone_verified": false}', 'email', '2024-12-04 16:51:38.21341+00', '2024-12-04 16:51:38.213475+00', '2024-12-04 16:51:38.213475+00', '950abf7a-e2a9-451d-a157-0c0ca2a246cd'),
	('52cf7227-02ec-4bf1-83f8-e96537519cb4', '52cf7227-02ec-4bf1-83f8-e96537519cb4', '{"sub": "52cf7227-02ec-4bf1-83f8-e96537519cb4", "email": "sean@seleisure.com", "email_verified": false, "phone_verified": false}', 'email', '2024-12-04 16:53:39.662886+00', '2024-12-04 16:53:39.662939+00', '2024-12-04 16:53:39.662939+00', 'cd95a441-c111-49d6-9e57-3182206df847'),
	('dd1719e8-2a25-4eeb-9814-ac991aaf961a', 'dd1719e8-2a25-4eeb-9814-ac991aaf961a', '{"sub": "dd1719e8-2a25-4eeb-9814-ac991aaf961a", "email": "bill@seleisure.com", "email_verified": false, "phone_verified": false}', 'email', '2024-12-04 21:13:34.171732+00', '2024-12-04 21:13:34.171792+00', '2024-12-04 21:13:34.171792+00', '5b863bac-124f-43b5-908f-76ac70d1ceee'),
	('d9489df7-1e52-44fe-add1-68f23c984231', 'd9489df7-1e52-44fe-add1-68f23c984231', '{"sub": "d9489df7-1e52-44fe-add1-68f23c984231", "email": "rodrigo@theoutdoorplus.com", "email_verified": false, "phone_verified": false}', 'email', '2024-12-17 00:31:40.112755+00', '2024-12-17 00:31:40.112824+00', '2024-12-17 00:31:40.112824+00', '8c41e443-008c-48b5-bf0f-bd2ecf436899'),
	('2456e232-48e4-467a-8cf6-eaba27c1948b', '2456e232-48e4-467a-8cf6-eaba27c1948b', '{"sub": "2456e232-48e4-467a-8cf6-eaba27c1948b", "email": "internet@top.com", "email_verified": false, "phone_verified": false}', 'email', '2024-11-22 17:39:34.757044+00', '2024-11-22 17:39:34.757717+00', '2024-11-22 17:39:34.757717+00', '2c36736e-80d0-4a9b-8612-fa358a13a1ae');


--
-- Data for Name: instances; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--



--
-- Data for Name: sessions; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

INSERT INTO "auth"."sessions" ("id", "user_id", "created_at", "updated_at", "factor_id", "aal", "not_after", "refreshed_at", "user_agent", "ip", "tag") VALUES
	('c847f042-cbbb-45b3-8f5c-b9b9813bc9cf', '2456e232-48e4-467a-8cf6-eaba27c1948b', '2024-11-27 16:20:34.747101+00', '2024-11-27 16:20:34.747101+00', NULL, 'aal1', NULL, NULL, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0', '47.179.36.170', NULL),
	('ed0a204c-d228-4558-9f7e-9f92fe73176f', '2456e232-48e4-467a-8cf6-eaba27c1948b', '2024-11-27 16:29:10.098261+00', '2024-11-27 16:29:10.098261+00', NULL, 'aal1', NULL, NULL, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0', '47.179.36.170', NULL),
	('218d3586-2f45-4b08-b36b-56e70acafc34', '2456e232-48e4-467a-8cf6-eaba27c1948b', '2024-11-27 16:31:06.787782+00', '2024-11-27 18:32:51.268841+00', NULL, 'aal1', NULL, '2024-11-27 18:32:51.268767', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0', '47.179.36.170', NULL),
	('a7ffa16b-cbd6-4cb4-beef-a204601e80cc', '2456e232-48e4-467a-8cf6-eaba27c1948b', '2024-11-27 18:44:02.982771+00', '2024-11-27 22:38:16.901633+00', NULL, 'aal1', NULL, '2024-11-27 22:38:16.90156', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0', '47.179.36.170', NULL),
	('116eea04-fbba-42a1-bf78-6c03c7c685e3', 'aafde422-c655-4c2e-a3fa-2dcfaa42db07', '2024-12-18 22:38:19.275481+00', '2024-12-18 23:44:37.000051+00', NULL, 'aal1', NULL, '2024-12-18 23:44:36.999975', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0', '47.179.36.170', NULL),
	('973d6cd0-0fce-4839-9a63-b585a4da7175', '2456e232-48e4-467a-8cf6-eaba27c1948b', '2024-12-03 19:04:58.140897+00', '2024-12-03 19:04:58.140897+00', NULL, 'aal1', NULL, NULL, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0', '47.179.36.170', NULL);


--
-- Data for Name: mfa_amr_claims; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

INSERT INTO "auth"."mfa_amr_claims" ("session_id", "created_at", "updated_at", "authentication_method", "id") VALUES
	('c847f042-cbbb-45b3-8f5c-b9b9813bc9cf', '2024-11-27 16:20:34.762445+00', '2024-11-27 16:20:34.762445+00', 'password', '807831b5-b6fe-4157-94e6-a7f91aabae68'),
	('ed0a204c-d228-4558-9f7e-9f92fe73176f', '2024-11-27 16:29:10.107996+00', '2024-11-27 16:29:10.107996+00', 'password', '24aae629-28c9-4178-8326-e740be5f40fb'),
	('218d3586-2f45-4b08-b36b-56e70acafc34', '2024-11-27 16:31:06.793152+00', '2024-11-27 16:31:06.793152+00', 'password', 'f8ffae2e-37b7-40d9-8ad3-aafbcdb2cd1b'),
	('a7ffa16b-cbd6-4cb4-beef-a204601e80cc', '2024-11-27 18:44:02.994702+00', '2024-11-27 18:44:02.994702+00', 'password', '3b77aa6c-dd76-4821-99fc-90d23f5328dd'),
	('116eea04-fbba-42a1-bf78-6c03c7c685e3', '2024-12-18 22:38:19.283909+00', '2024-12-18 22:38:19.283909+00', 'password', 'acc532d4-a772-4808-8222-0fbd2427a7b1'),
	('973d6cd0-0fce-4839-9a63-b585a4da7175', '2024-12-03 19:04:58.14702+00', '2024-12-03 19:04:58.14702+00', 'password', 'f4f1f937-1796-425d-87e2-1e7c675d4958');


--
-- Data for Name: mfa_factors; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--



--
-- Data for Name: mfa_challenges; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--



--
-- Data for Name: one_time_tokens; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--



--
-- Data for Name: refresh_tokens; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

INSERT INTO "auth"."refresh_tokens" ("instance_id", "id", "token", "user_id", "revoked", "created_at", "updated_at", "parent", "session_id") VALUES
	('00000000-0000-0000-0000-000000000000', 38, 'nt6GVaRx8PRbY_J8BZdvPA', '2456e232-48e4-467a-8cf6-eaba27c1948b', true, '2024-11-27 20:42:45.201992+00', '2024-11-27 22:38:16.893745+00', 'ZpOr7SlLs8eXxlasEX7HVA', 'a7ffa16b-cbd6-4cb4-beef-a204601e80cc'),
	('00000000-0000-0000-0000-000000000000', 39, 'dEGjtoyBjQzy2XMTSrJ7_A', '2456e232-48e4-467a-8cf6-eaba27c1948b', false, '2024-11-27 22:38:16.895652+00', '2024-11-27 22:38:16.895652+00', 'nt6GVaRx8PRbY_J8BZdvPA', 'a7ffa16b-cbd6-4cb4-beef-a204601e80cc'),
	('00000000-0000-0000-0000-000000000000', 154, 'cm0r_v7NeBmHyhM36u5cfA', 'aafde422-c655-4c2e-a3fa-2dcfaa42db07', true, '2024-12-18 22:38:19.279749+00', '2024-12-18 23:44:36.997308+00', NULL, '116eea04-fbba-42a1-bf78-6c03c7c685e3'),
	('00000000-0000-0000-0000-000000000000', 155, 'oR9qfg8sZksllZ5xfiIIlg', 'aafde422-c655-4c2e-a3fa-2dcfaa42db07', false, '2024-12-18 23:44:36.997888+00', '2024-12-18 23:44:36.997888+00', 'cm0r_v7NeBmHyhM36u5cfA', '116eea04-fbba-42a1-bf78-6c03c7c685e3'),
	('00000000-0000-0000-0000-000000000000', 55, 'slUPeIzl_pdYEyy3Nxt4Mg', '2456e232-48e4-467a-8cf6-eaba27c1948b', false, '2024-12-03 19:04:58.142704+00', '2024-12-03 19:04:58.142704+00', NULL, '973d6cd0-0fce-4839-9a63-b585a4da7175'),
	('00000000-0000-0000-0000-000000000000', 31, '8Mn_4QsN2apSDrMvulAuXg', '2456e232-48e4-467a-8cf6-eaba27c1948b', false, '2024-11-27 16:20:34.750726+00', '2024-11-27 16:20:34.750726+00', NULL, 'c847f042-cbbb-45b3-8f5c-b9b9813bc9cf'),
	('00000000-0000-0000-0000-000000000000', 32, 'h9-p_vqVFOLMh9IGwKtfwA', '2456e232-48e4-467a-8cf6-eaba27c1948b', false, '2024-11-27 16:29:10.103726+00', '2024-11-27 16:29:10.103726+00', NULL, 'ed0a204c-d228-4558-9f7e-9f92fe73176f'),
	('00000000-0000-0000-0000-000000000000', 33, 'eKdkOEtD74N9_C27NxR5kA', '2456e232-48e4-467a-8cf6-eaba27c1948b', true, '2024-11-27 16:31:06.789453+00', '2024-11-27 17:34:28.67824+00', NULL, '218d3586-2f45-4b08-b36b-56e70acafc34'),
	('00000000-0000-0000-0000-000000000000', 34, 'xFvEgJCFlhYpAM9osPufdA', '2456e232-48e4-467a-8cf6-eaba27c1948b', true, '2024-11-27 17:34:28.679391+00', '2024-11-27 18:32:51.263506+00', 'eKdkOEtD74N9_C27NxR5kA', '218d3586-2f45-4b08-b36b-56e70acafc34'),
	('00000000-0000-0000-0000-000000000000', 35, 'B25QUqkoDajGut0oDipGQw', '2456e232-48e4-467a-8cf6-eaba27c1948b', false, '2024-11-27 18:32:51.265858+00', '2024-11-27 18:32:51.265858+00', 'xFvEgJCFlhYpAM9osPufdA', '218d3586-2f45-4b08-b36b-56e70acafc34'),
	('00000000-0000-0000-0000-000000000000', 36, 'YLzgAnecLPS7Hmpzc6cqeQ', '2456e232-48e4-467a-8cf6-eaba27c1948b', true, '2024-11-27 18:44:02.985031+00', '2024-11-27 19:42:10.640423+00', NULL, 'a7ffa16b-cbd6-4cb4-beef-a204601e80cc'),
	('00000000-0000-0000-0000-000000000000', 37, 'ZpOr7SlLs8eXxlasEX7HVA', '2456e232-48e4-467a-8cf6-eaba27c1948b', true, '2024-11-27 19:42:10.641617+00', '2024-11-27 20:42:45.201347+00', 'YLzgAnecLPS7Hmpzc6cqeQ', 'a7ffa16b-cbd6-4cb4-beef-a204601e80cc');


--
-- Data for Name: sso_providers; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--



--
-- Data for Name: saml_providers; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--



--
-- Data for Name: saml_relay_states; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--



--
-- Data for Name: sso_domains; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--



--
-- Data for Name: key; Type: TABLE DATA; Schema: pgsodium; Owner: supabase_admin
--



--
-- Data for Name: AddOns; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO "public"."AddOns" ("id", "created_at", "updated_at", "add_on_type", "attribute_option", "product_filter", "material_filter", "size_filter", "feature_filter", "feature_category_filter", "add_on_price", "product_type_filter", "part_number", "shape_filter") VALUES
	('911a8338-3082-402b-9ad5-929bf8412f2e', '2024-12-04 01:35:33.68317+00', '2024-12-10 18:56:39.516507+00', 'Ornament', '30" Polished SS Logs', NULL, NULL, '48", 60"', 'Fire Feature, Fire & Water', 'Gas Fire Bowl, Gas Fire Pit, Gas Fireplace, Gas Fire Sculpture', 643, 'Feature', 'OPT-CS3010', 'Rectangular'),
	('399b4db9-dd6d-480a-a069-40dad9893d0a', '2024-12-04 01:35:33.68317+00', '2024-12-10 18:56:39.516507+00', 'Ornament', '12" Fire Globe', NULL, NULL, '24"', 'Fire Feature, Fire & Water', 'Gas Fire Bowl, Gas Fire Pit, Gas Fireplace, Gas Fire Sculpture', 262, 'Feature', 'OPT-FG12', NULL),
	('c9f2d5a0-8446-4632-9ddb-ddf7374c8353', '2024-11-25 19:47:43.526125+00', '2024-12-10 18:56:39.516507+00', 'Bullet Burner', '12" Round Bullet Burner', NULL, NULL, '30", 31", 32"', 'Fire Feature, Fire & Water', 'Gas Fire Bowl, Gas Fire Pit, Gas Fireplace, Gas Fire Sculpture', 113, 'Feature', 'OPT-BRDSS12', 'Round, Square'),
	('12322eae-a081-4bd3-82ea-b5a4e82640b8', '2024-11-25 19:47:43.526125+00', '2024-12-10 18:56:39.516507+00', 'Canvas Cover', '24" Round Canvas Cover', '24" Cazo Fire & Water Bowl, 24" Cazo Fire Bowl', 'GFRC', NULL, NULL, NULL, 93, 'Feature', 'OPT-BCVR-24R-9H', NULL),
	('8d5bb2a4-e104-4577-bc91-c1ffc297482e', '2024-11-25 19:47:43.526125+00', '2024-12-10 18:56:39.516507+00', 'Canvas Cover', '24" Round Canvas Cover', '24" Cazo Fire & Water Bowl, 24" Cazo Fire Bowl', 'Wood Grain', NULL, NULL, NULL, 93, 'Feature', 'OPT-BCVR-24R-8H', NULL),
	('ce6cb8b7-eccd-441e-bb05-494ab9ab33fa', '2024-11-25 19:47:43.526125+00', '2024-12-10 18:56:39.516507+00', 'Canvas Cover', '24" Round Canvas Cover', '24" Cazo Fire & Water Bowl, 24" Cazo Fire Bowl', 'Hammered Copper, Powder Coat', NULL, NULL, NULL, 93, 'Feature', 'OPT-BCVR-24R-10H', NULL),
	('1ad8acb9-a1e2-45a7-b8ce-2e4e676b4e46', '2024-12-04 01:35:33.68317+00', '2024-12-10 18:56:39.516507+00', 'Fire Glass', '25lb bag - Blue Glass - 1/2"-3/4"', NULL, NULL, NULL, 'Fire Feature, Fire & Water', 'Gas Fire Bowl, Gas Fire Pit, Gas Fireplace, Gas Fire Sculpture', 85, 'Feature', 'OPT-702', NULL),
	('58dd19c6-c6e7-4385-8f3c-33c1646c70b4', '2024-12-04 01:35:33.68317+00', '2024-12-10 18:56:39.516507+00', 'Fire Glass', '25lb bag - Black Glass - 1/2"-3/4"', NULL, NULL, NULL, 'Fire Feature, Fire & Water', 'Gas Fire Bowl, Gas Fire Pit, Gas Fireplace, Gas Fire Sculpture', 85, 'Feature', 'OPT-701', NULL),
	('b252f2b2-74e1-457f-9cf5-42cec7d605fd', '2024-11-20 21:50:39.149997+00', '2024-12-10 18:56:39.516507+00', 'Fire Glass', 'None', NULL, NULL, NULL, 'Fire Feature, Fire & Water', 'Gas Fire Bowl, Gas Fire Pit, Gas Fireplace, Gas Fire Sculpture', NULL, 'Feature, Pans & Burners', NULL, NULL),
	('50ac8dca-7486-4785-a598-145afefa2a2e', '2024-11-20 17:36:33.439404+00', '2024-12-10 18:56:39.516507+00', 'Canvas Cover', 'None', NULL, NULL, NULL, NULL, NULL, NULL, 'Feature', NULL, NULL),
	('b9beedde-b7a6-4b25-9351-afcc96def685', '2024-11-25 19:47:43.526125+00', '2024-12-10 18:56:39.516507+00', 'Bullet Burner', 'None', NULL, NULL, NULL, 'Fire Feature, Fire & Water', 'Gas Fire Bowl, Gas Fire Pit, Gas Fireplace, Gas Fire Sculpture', NULL, 'Feature', NULL, NULL),
	('a1ad27b7-1845-46ce-90a5-5cff0f7bc5eb', '2024-11-20 17:36:33.439404+00', '2024-12-10 18:56:39.516507+00', 'Ornament', 'None', NULL, NULL, NULL, NULL, NULL, NULL, 'Feature, Pans & Burners', NULL, NULL),
	('59cdc575-1734-4be2-85c5-159dc4232a09', '2024-11-25 19:47:43.526125+00', '2024-12-10 18:56:39.516507+00', 'Bullet Burner', '8" Round Bullet Burner', NULL, NULL, '24", 27"', 'Fire Feature, Fire & Water', 'Gas Fire Bowl, Gas Fire Pit, Gas Fireplace, Gas Fire Sculpture', 95, 'Feature', 'OPT-BRDSS8', 'Round, Square');


--
-- Data for Name: Announcements; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO "public"."Announcements" ("id", "created_at", "updated_at", "title", "description", "enabled", "image_url") VALUES
	('f3fcef2e-3f3b-40b7-b167-570ee738940a', '2024-12-04 18:40:04.009133+00', '2024-12-04 18:40:04.009133+00', '2025 Photography Contest: Showcase Your Stunning Creations![Example]', 'We''re excited to announce an upcoming photography contest for our valued partners! Share your incredible projects featuring our fire pits, bowls, and products in real-world settings. This is your chance to showcase your craftsmanship, creativity, and the unique ways you''ve brought our products to life in your designs.

Submit your best photos and stand a chance to be featured in our portfolio, social media, and promotional materials. Let''s celebrate the amazing work you do!

Stay tuned for more details on submission guidelines, deadlines, and prizes. We can''t wait to see your stunning creations!', true, 'https://www.dropbox.com/scl/fi/cljgebcwdneulxw00l70c/Example-Announcement.webp?rlkey=ny4zqo127kslo8mu9hsmjcrqm&st=o0drcfjq&raw=1'),
	('bdb4b520-5ae0-4760-838e-6ed35f40038e', '2024-12-04 21:39:46.57204+00', '2024-12-04 21:39:46.57204+00', '2024 International Pool & Spa Show | The Outdoor Plus Highlights [EXAMPLE]', '<p>The Outdoor Plus showcased a stunning lineup at the International Pool & Spa Show. Chuck walks through some of the standout products and innovations featured, including: </p>

<ul class="list-disc">
 <li>Bowl Collection</li>
 <li>Del Mar Fire Pit</li>
 <li>Pans and Burner Collection</li>
</ul>

<p>Explore why The Outdoor Plus is the Go-To in luxury fire and water features.</p>

<a href="https://www.youtube.com/watch?v=FchpReTZye0" target="_blank">https://www.youtube.com/watch?v=FchpReTZye0</a>', true, 'https://www.dropbox.com/scl/fi/ft7coe3v2pa8amdfgji3v/maxresdefault.webp?rlkey=keljmij2jgtn9ftcil6vodu1w&st=vn0prr83&raw=1');


--
-- Data for Name: Attributes; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO "public"."Attributes" ("id", "created_at", "updated_at", "attribute_type", "attribute_option", "add_on_price", "attribute_code", "code_identifier", "product_filter", "material_filter", "size_filter", "feature_filter", "feature_category_filter") VALUES
	('060df0cb-2667-4253-9048-4d88cda5a724', '2024-11-20 17:36:31.999844+00', '2024-12-10 18:56:38.577012+00', 'Color', 'Ash', NULL, '-ASH', 'CLR', NULL, 'GFRC', NULL, NULL, NULL),
	('e5635fee-73ce-4691-b291-a76b6dd906fc', '2024-11-20 17:36:31.999844+00', '2024-12-10 18:56:38.577012+00', 'Color', 'Black', NULL, '-BLK', 'CLR', NULL, 'GFRC', NULL, NULL, NULL),
	('bd1acacc-4553-4d57-8081-2261fb4bf65f', '2024-11-20 17:36:31.999844+00', '2024-12-10 18:56:38.577012+00', 'Color', 'Brown', NULL, '-BRN', 'CLR', NULL, 'GFRC', NULL, NULL, NULL),
	('288fd74d-4cf3-4fa3-8489-2dee109ada69', '2024-11-20 17:36:31.999844+00', '2024-12-10 18:56:38.577012+00', 'Color', 'Chestnut', NULL, '-CST', 'CLR', NULL, 'GFRC', NULL, NULL, NULL),
	('05b7eeae-7cd0-4814-95e3-3e63088ba3fb', '2024-11-20 17:36:31.999844+00', '2024-12-10 18:56:38.577012+00', 'Color', 'Chocolate', NULL, '-CHC', 'CLR', NULL, 'GFRC', NULL, NULL, NULL),
	('7a76d044-4ce2-4c1c-bfbf-52b18b102536', '2024-11-20 17:36:31.999844+00', '2024-12-10 18:56:38.577012+00', 'Color', 'Gray', NULL, '-GRY', 'CLR', NULL, 'GFRC', NULL, NULL, NULL),
	('a1c85662-7c58-4809-929e-0f3313865327', '2024-11-20 17:36:31.999844+00', '2024-12-10 18:56:38.577012+00', 'Color', 'Limestone', NULL, '-LIM', 'CLR', NULL, 'GFRC', NULL, NULL, NULL),
	('8d965c15-1cc9-476a-9bb7-a3d81d553a28', '2024-11-20 17:36:31.999844+00', '2024-12-10 18:56:38.577012+00', 'Color', 'Natural Gray', NULL, '-NGY', 'CLR', NULL, 'GFRC', NULL, NULL, NULL),
	('7910d1ed-b8e4-453b-88a3-98e01bf5f2d4', '2024-11-20 17:36:31.999844+00', '2024-12-10 18:56:38.577012+00', 'Color', 'Vanilla', NULL, '-VAN', 'CLR', NULL, 'GFRC', NULL, NULL, NULL),
	('9fdf3884-a64a-4a70-be42-36a9029b686a', '2024-11-20 17:36:31.999844+00', '2024-12-10 18:56:38.577012+00', 'Color', 'Metallic Bronze', 174, '-MBR', 'CLR', NULL, 'GFRC', NULL, NULL, NULL),
	('59e7d40f-fc91-4255-a7ec-65b0b296c566', '2024-11-20 17:36:31.999844+00', '2024-12-10 18:56:38.577012+00', 'Color', 'Metallic Copper', 174, '-MCP', 'CLR', NULL, 'GFRC', NULL, NULL, NULL),
	('58bf5938-258d-4ccf-ac93-40c15a619050', '2024-11-20 17:36:31.999844+00', '2024-12-10 18:56:38.577012+00', 'Color', 'Metallic Pearl', 174, '-MPR', 'CLR', NULL, 'GFRC', NULL, NULL, NULL),
	('b5bd14c7-e974-4b0f-b81f-b2357f5c024f', '2024-11-20 17:36:31.999844+00', '2024-12-10 18:56:38.577012+00', 'Color', 'Metallic Silver', 174, '-MSV', 'CLR', NULL, 'GFRC', NULL, NULL, NULL),
	('cacd14b5-3ef0-4f4e-ae51-92782c463ff3', '2024-11-20 17:36:31.999844+00', '2024-12-10 18:56:38.577012+00', 'Color', 'Metallic Slate', 174, '-MSL', 'CLR', NULL, 'GFRC', NULL, NULL, NULL),
	('488f4a7a-08d1-47f0-885b-98a984e58ec2', '2024-11-20 17:36:31.999844+00', '2024-12-10 18:56:38.577012+00', 'Color', 'Rustic Coffee', 174, '-RCF', 'CLR', NULL, 'GFRC', NULL, NULL, NULL),
	('6aa1a7d2-0680-42f7-aa76-89701ebe7359', '2024-11-20 17:36:31.999844+00', '2024-12-10 18:56:38.577012+00', 'Color', 'Rustic Gray', 174, '-RGY', 'CLR', NULL, 'GFRC', NULL, NULL, NULL),
	('45a5c835-c558-4d58-9cf9-8553ec1852c4', '2024-11-20 17:36:31.999844+00', '2024-12-10 18:56:38.577012+00', 'Color', 'Rustic White', 174, '-RWH', 'CLR', NULL, 'GFRC', NULL, NULL, NULL),
	('37e6f23b-8fd2-4f06-a4d4-cd0327c040b9', '2024-11-20 17:36:31.999844+00', '2024-12-10 18:56:38.577012+00', 'Color', 'Rustic Moss Stone', 174, '-RMS', 'CLR', NULL, 'GFRC', NULL, NULL, NULL),
	('38ac8880-4304-4d11-9d7f-74d046f17dbc', '2024-11-20 17:36:31.999844+00', '2024-12-10 18:56:38.577012+00', 'Color', 'Gloss Black', NULL, '-BLK', 'CLR', NULL, 'Powder Coat', NULL, NULL, NULL),
	('99d880b7-dba6-4345-a2f4-37628d2df294', '2024-11-20 17:36:31.999844+00', '2024-12-10 18:56:38.577012+00', 'Color', 'White', NULL, '-WHT', 'CLR', NULL, 'Powder Coat', NULL, NULL, NULL),
	('c0bc972e-bf70-4f75-a509-443ab5dc5717', '2024-11-20 17:36:31.999844+00', '2024-12-10 18:56:38.577012+00', 'Color', 'Java', NULL, '-JAV', 'CLR', NULL, 'Powder Coat', NULL, NULL, NULL),
	('87d3da45-636c-426f-8b83-5d1a56fc1566', '2024-11-20 17:36:31.999844+00', '2024-12-10 18:56:38.577012+00', 'Color', 'Gray', NULL, '-GRY', 'CLR', NULL, 'Powder Coat', NULL, NULL, NULL),
	('7239f55a-cda8-4eec-8eca-1120adcb0797', '2024-11-20 17:36:31.999844+00', '2024-12-10 18:56:38.577012+00', 'Color', 'Copper Vein', NULL, '-CPV', 'CLR', NULL, 'Powder Coat', NULL, NULL, NULL),
	('fad96641-d5b2-412f-92b8-9325f81ef4f1', '2024-11-20 17:36:31.999844+00', '2024-12-10 18:56:38.577012+00', 'Color', 'Sapphire Blue', NULL, '-SBL', 'CLR', NULL, 'Powder Coat', NULL, NULL, NULL),
	('ddc93711-c43f-474b-881a-364d9d66e014', '2024-11-20 17:36:31.999844+00', '2024-12-10 18:56:38.577012+00', 'Color', 'Graphite Gray', NULL, '-GGY', 'CLR', NULL, 'Powder Coat', NULL, NULL, NULL),
	('d129096a-4acc-408a-924a-481858a5ea5d', '2024-11-20 17:36:31.999844+00', '2024-12-10 18:56:38.577012+00', 'Color', 'Empire Bronze', NULL, '-EBZ', 'CLR', NULL, 'Powder Coat', NULL, NULL, NULL),
	('272b9cef-6813-4403-811a-09f63d21843f', '2024-11-20 17:36:31.999844+00', '2024-12-10 18:56:38.577012+00', 'Gas Type', 'Liquid Propane', NULL, '-LP', 'GAS', NULL, NULL, NULL, 'Fire Feature, Fire And Water', 'Gas Fire Bowl, Gas Fire Pit, Gas Fireplace, Gas Fire Sculpture'),
	('cc797118-1c79-431b-8783-c0d77ef7c752', '2024-11-20 17:36:31.999844+00', '2024-12-10 18:56:38.577012+00', 'Gas Type', 'Natural Gas', NULL, '-NG', 'GAS', NULL, NULL, NULL, 'Fire Feature, Fire And Water', 'Gas Fire Bowl, Gas Fire Pit, Gas Fireplace, Gas Fire Sculpture'),
	('fe0868e4-abec-4eb8-ab44-7ebad80fd26d', '2024-11-20 17:36:31.999844+00', '2024-12-10 18:56:38.577012+00', 'Ignition', 'Match Lit w/ Flame Sense', 574, 'FSML', 'IGN', NULL, NULL, NULL, 'Fire Feature', 'Gas Fire Pit, Gas Fireplace, Gas Fire Sculpture'),
	('d8f67fe8-c50c-462c-9d01-b90a3fa4ab9e', '2024-11-20 17:36:31.999844+00', '2024-12-10 18:56:38.577012+00', 'Ignition', 'Spark Ignition w/ Flame Sense', 689, 'FSEN', 'IGN', NULL, NULL, NULL, 'Fire Feature', 'Gas Fire Pit, Gas Fireplace, Gas Fire Sculpture'),
	('8ebcf8fa-d135-407f-ade5-b590d309ab95', '2024-11-20 17:36:31.999844+00', '2024-12-10 18:56:38.577012+00', 'Ignition', 'Match Lit', NULL, NULL, 'IGN', NULL, NULL, NULL, 'Fire Feature, Fire And Water', 'Gas Fire Bowl, Gas Fire Pit, Gas Fireplace, Gas Fire Sculpture'),
	('e675090e-95ff-4dd9-84aa-d7b688173c48', '2024-11-20 17:36:31.999844+00', '2024-12-10 18:56:38.577012+00', 'Ignition', 'Plug & Play', 1196, 'EKIT', 'IGN', NULL, NULL, NULL, 'Fire Feature', 'Gas Fire Pit, Gas Fireplace, Gas Fire Sculpture'),
	('36805005-f8a1-44d1-9f1f-5b2505f74508', '2024-11-20 17:36:31.999844+00', '2024-12-10 18:56:38.577012+00', 'Ignition', 'Low Voltage Electronic Ignition', 1109, 'E12V', 'IGN', NULL, NULL, NULL, 'Fire Feature, Fire And Water', 'Gas Fire Bowl, Gas Fire Pit, Gas Fireplace, Gas Fire Sculpture'),
	('a0f0cede-ff03-46d5-98c8-546539a01c3f', '2024-11-20 17:36:31.999844+00', '2024-12-10 18:56:38.577012+00', 'Color', 'Trophy Bronze', NULL, '-TBZ', 'CLR', NULL, 'Powder Coat', NULL, NULL, NULL),
	('9f6c1775-4f28-46c1-9dc3-a1ed2016778f', '2024-11-20 17:36:31.999844+00', '2024-12-10 18:56:38.577012+00', 'Color', 'Ebony', NULL, '-EBN', 'CLR', NULL, 'Wood Grain', NULL, NULL, NULL),
	('c476beaf-3f4e-4be3-aeea-13485161503c', '2024-11-20 17:36:31.999844+00', '2024-12-10 18:56:38.577012+00', 'Color', 'Ivory', NULL, '-IVY', 'CLR', NULL, 'Wood Grain', NULL, NULL, NULL),
	('471d9aac-4852-4d7a-9ed6-32984dfe3592', '2024-11-20 17:36:31.999844+00', '2024-12-10 18:56:38.577012+00', 'Color', 'Oak', NULL, '-OAK', 'CLR', NULL, 'Wood Grain', NULL, NULL, NULL),
	('b95a5760-b635-47c5-810e-19e6fc5f1053', '2024-11-20 17:36:31.999844+00', '2024-12-10 18:56:38.577012+00', 'Color', 'Olive Green', NULL, '-OGR', 'CLR', NULL, 'Powder Coat', NULL, NULL, NULL),
	('f74c7602-fbb5-4867-b463-25b75940f58b', '2024-11-20 17:36:31.999844+00', '2024-12-10 18:56:38.577012+00', 'Color', 'Matte Black', NULL, '-ONX', 'CLR', NULL, 'Powder Coat', NULL, NULL, NULL),
	('4ecfaed4-4b27-4f9c-b185-96b9219a0ad9', '2024-11-20 17:36:31.999844+00', '2024-12-10 18:56:38.577012+00', 'Color', 'Pewter', NULL, '-PEW', 'CLR', NULL, 'Powder Coat', NULL, NULL, NULL),
	('de969776-97e1-4e95-a232-87be9a72fc9f', '2024-11-20 17:36:31.999844+00', '2024-12-10 18:56:38.577012+00', 'Color', 'Mist', NULL, '-MST', 'CLR', NULL, 'Powder Coat', NULL, NULL, NULL),
	('c93e2f02-fa54-48d8-8cc7-621f552045e5', '2024-11-20 17:36:31.999844+00', '2024-12-10 18:56:38.577012+00', 'Color', 'Bronze Hammertone', NULL, '-BZHT', 'CLR', NULL, 'Powder Coat', NULL, NULL, NULL),
	('535a9eed-4977-4710-b300-1a73e9c243cd', '2024-11-20 17:36:31.999844+00', '2024-12-10 18:56:38.577012+00', 'Color', 'Soft White', NULL, '-STW', 'CLR', NULL, 'Powder Coat', NULL, NULL, NULL),
	('1287a21e-3b20-444a-b0b1-bfc86c48b0be', '2024-11-20 17:36:31.999844+00', '2024-12-10 18:56:38.577012+00', 'Color', 'Silver Vein', NULL, '-SLV', 'CLR', NULL, 'Powder Coat', NULL, NULL, NULL),
	('f0899aff-9c29-4606-9f07-86b0812668f2', '2024-11-20 17:36:31.999844+00', '2024-12-10 18:56:38.577012+00', 'Color', 'White Vein', NULL, '-WHT', 'CLR', NULL, 'Powder Coat', NULL, NULL, NULL),
	('1d8b65b1-f3da-4838-a91c-ae51560e0871', '2024-11-20 17:36:31.999844+00', '2024-12-10 18:56:38.577012+00', 'Color', 'Gold Vein', NULL, '-GDV', 'CLR', NULL, 'Powder Coat', NULL, NULL, NULL),
	('03c75325-e10a-4e27-aa3f-461ee012838f', '2024-11-20 17:36:31.999844+00', '2024-12-10 18:56:38.577012+00', 'Color', 'Gray Vein', NULL, '-GYV', 'CLR', NULL, 'Powder Coat', NULL, NULL, NULL),
	('5e92a7f5-c7b2-45bf-a6f9-e44135a95313', '2024-11-20 17:36:31.999844+00', '2024-12-10 18:56:38.577012+00', 'Color', 'Rock Gray', NULL, '-RKY', 'CLR', NULL, 'Powder Coat', NULL, NULL, NULL);


--
-- Data for Name: BaseProducts; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO "public"."BaseProducts" ("id", "created_at", "updated_at", "base_part_number", "product", "base_price_dealer", "base_price_map", "base_price_msrp", "base_price_distributor", "base_price_group", "base_price_internet", "base_price_landscape", "base_price_master_distributor", "code_formula", "product_shape", "specification_sheet", "size", "feature_type", "product_type", "fire_feature_category", "images") VALUES
	('a11f9419-8af2-42f6-86e9-162546369141', '2024-11-20 21:14:57.847507+00', '2024-12-10 18:56:36.073001+00', 'OPT-R30PCWO', '30" Cazo Water Bowl', 1116, 2054, 2260, NULL, NULL, NULL, NULL, NULL, 'OPT-R30{MAT}{CLR}', 'Round', NULL, '30"', 'Water Feature', 'Feature', NULL, NULL),
	('74b9f2f3-56ff-4b52-98ec-025e92de72f2', '2024-11-20 21:14:57.847507+00', '2024-12-10 18:56:36.073001+00', 'OPT-24RP', '24" Cazo Planter Bowl', 575, 1058, 1164, NULL, NULL, NULL, NULL, NULL, 'OPT-{MAT}{CLR}', 'Round', NULL, '24"', 'Planter Feature', 'Feature', NULL, NULL),
	('e1957fbe-3566-495a-ba92-8a1cff1bcab6', '2024-11-20 21:14:57.847507+00', '2024-12-10 18:56:36.073001+00', 'OPT-24RPW', '24" Cazo Planter & Water Bowl', 816, 1502, 1653, NULL, NULL, NULL, NULL, NULL, 'OPT-{MAT}{CLR}', 'Round', NULL, '24"', 'Planter And Water', 'Feature', NULL, NULL),
	('229858bc-5569-4ebf-a86e-854111d22d33', '2024-11-20 21:14:57.847507+00', '2024-12-10 18:56:36.073001+00', 'OPT-24RWO', '24" Cazo Water Bowl', 597, 1100, 1210, NULL, NULL, NULL, NULL, NULL, 'OPT-{MAT}{CLR}', 'Round', NULL, '24"', 'Water Feature', 'Feature', NULL, NULL),
	('dbdfb1d5-d5f2-47a5-acf5-40e1828a65da', '2024-11-20 21:14:57.847507+00', '2024-12-10 18:56:36.073001+00', 'OPT-R30PCPO', '30" Cazo Planter Bowl', 1026, 1888, 2077, NULL, NULL, NULL, NULL, NULL, 'OPT-R30{MAT}{CLR}', 'Round', NULL, '30"', 'Planter Feature', 'Feature', NULL, NULL),
	('3ef73153-c047-4048-b2f6-cb6642f20947', '2024-11-20 21:14:57.847507+00', '2024-12-10 18:56:36.073001+00', 'OPT-R30PCPW', '30" Cazo Planter & Water Bowl', 1116, 2054, 2260, NULL, NULL, NULL, NULL, NULL, 'OPT-R30{MAT}{CLR}', 'Round', NULL, '30"', 'Planter And Water', 'Feature', NULL, NULL),
	('035de911-4376-49f5-b26f-437265d47e7c', '2024-11-20 21:14:57.847507+00', '2024-12-10 18:56:36.073001+00', 'OPT-31RP', '31" Cazo Planter Bowl', 634, 1168, 1285, NULL, NULL, NULL, NULL, NULL, 'OPT-31{MAT}{CLR}', 'Round', NULL, '31"', 'Planter Feature', 'Feature', NULL, NULL),
	('205a3949-1812-49d9-8699-bf39e858e045', '2024-11-20 21:14:57.847507+00', '2024-12-10 18:56:36.073001+00', 'OPT-31RPW', '31" Cazo Planter & Water Bowl', 921, 1696, 1866, NULL, NULL, NULL, NULL, NULL, 'OPT-31{MAT}{CLR}', 'Round', NULL, '31"', 'Planter And Water', 'Feature', NULL, NULL),
	('5fa58b86-7311-415a-8941-a4a12c29932e', '2024-11-20 21:14:57.847507+00', '2024-12-10 18:56:36.073001+00', 'OPT-31RWO', '31" Cazo Water Bowl', 694, 1278, 1406, NULL, NULL, NULL, NULL, NULL, 'OPT-31{MAT}{CLR}', 'Round', NULL, '31"', 'Water Feature', 'Feature', NULL, NULL),
	('fd7d62e0-3bf9-4803-8841-a9e2ce7330f4', '2024-11-20 21:14:57.847507+00', '2024-12-10 18:56:36.073001+00', 'OPT-32RWGPO', '32" Cazo Planter Bowl', 653, 1202, 1323, NULL, NULL, NULL, NULL, NULL, 'OPT-32RWG{MAT}{CLR}', 'Round', NULL, '32"', 'Planter Feature', 'Feature', NULL, NULL),
	('542272c9-ed09-4df4-82d9-e6f3e8cafe11', '2024-11-20 21:14:57.847507+00', '2024-12-10 18:56:36.073001+00', 'OPT-32RWGPW', '32" Cazo Planter & Water Bowl', 951, 1750, 1925, NULL, NULL, NULL, NULL, NULL, 'OPT-32RWG{MAT}{CLR}', 'Round', NULL, '32"', 'Planter And Water', 'Feature', NULL, NULL),
	('5faa062d-ec6e-4ca6-b10f-e416e2d2b2c8', '2024-12-10 18:45:07.77717+00', '2024-12-10 18:56:36.073001+00', 'OPT-24SFO', '24" Maya Fire Bowl', 780, 1436, 1580, NULL, NULL, NULL, NULL, NULL, 'OPT-24{MAT}{IGN}{CLR}{GAS}', 'Square', NULL, '24"', 'Fire Feature', 'Feature', 'Gas Fire Bowl', NULL),
	('77afe01d-9497-41a2-a79c-08f321f9dd5a', '2024-11-20 21:14:57.847507+00', '2024-12-10 18:56:36.073001+00', 'OPT-4W36', '36" Cazo 4-Way Water & Fire Bowl', 2892, 5322, 5855, NULL, NULL, NULL, NULL, NULL, 'OPT-{MAT}{IGN}{CLR}{GAS}', 'Round', NULL, '36"', 'Fire And Water', 'Feature', 'Gas Fire Bowl', NULL),
	('053d1833-57bd-4a60-acff-fc67fc556b3e', '2024-12-04 01:35:30.786439+00', '2024-12-10 18:56:36.073001+00', 'OPT-COR', '48" Del Mar Fire Pit', 1616, 2974, 3272, NULL, NULL, NULL, NULL, NULL, 'OPT-COR{MAT}{IGN}{CLR}{GAS}', 'Rectangular', NULL, '48"', 'Fire Feature', 'Feature', 'Gas Fire Pit', NULL),
	('821d5f7d-950e-4f7d-9366-433826a60617', '2024-12-04 01:35:30.786439+00', '2024-12-10 18:56:36.073001+00', 'OPT-DEL6028', '60" Del Mar Fire Pit', 1846, 3398, 3738, NULL, NULL, NULL, NULL, NULL, 'OPT-DEL6028{MAT}{IGN}{CLR}{GAS}', 'Rectangular', NULL, '60"', 'Fire Feature', 'Feature', 'Gas Fire Pit', NULL),
	('cc9412d2-9d75-4d6c-a4ef-9bb1c49a9043', '2024-11-20 21:14:57.847507+00', '2024-12-10 18:56:36.073001+00', 'OPT-32RWGWO', '32" Cazo Water Bowl', 714, 1314, 1446, NULL, NULL, NULL, NULL, NULL, 'OPT-32RWG{MAT}{CLR}', 'Round', NULL, '32"', 'Water Feature', 'Feature', NULL, NULL),
	('39f4126c-e5da-4d77-9818-a7dc90aecb70', '2024-11-20 21:14:57.847507+00', '2024-12-10 18:56:36.073001+00', 'OPT-36RP', '36" Cazo Planter Bowl', 816, 1502, 1653, NULL, NULL, NULL, NULL, NULL, 'OPT-{MAT}{CLR}', 'Round', NULL, '36"', 'Planter Feature', 'Feature', NULL, NULL),
	('1aaffc25-b39a-4179-be72-88431265d532', '2024-11-20 21:14:57.847507+00', '2024-12-10 18:56:36.073001+00', 'OPT-36RPW', '36" Cazo Planter & Water Bowl', 1250, 2300, 2530, NULL, NULL, NULL, NULL, NULL, 'OPT-{MAT}{CLR}', 'Round', NULL, '36"', 'Planter And Water', 'Feature', NULL, NULL),
	('28bda0a9-1b9a-4d3c-b34d-c7bc60623200', '2024-11-20 21:14:57.847507+00', '2024-12-10 18:56:36.073001+00', 'OPT-36RWO', '36" Cazo Water Bowl', 935, 1722, 1895, NULL, NULL, NULL, NULL, NULL, 'OPT-{MAT}{CLR}', 'Round', NULL, '36"', 'Water Feature', 'Feature', NULL, NULL),
	('18ad25df-d23c-4126-a0e0-2b50c77426b8', '2024-11-20 21:14:57.847507+00', '2024-12-10 18:56:36.073001+00', 'OPT-48RP', '48" Cazo Planter Bowl', 1536, 2828, 3111, NULL, NULL, NULL, NULL, NULL, 'OPT-48{MAT}{CLR}', 'Round', NULL, '48"', 'Planter Feature', 'Feature', NULL, NULL),
	('7d77c82c-481e-40c9-a0ca-49335bdd0291', '2024-11-20 21:14:57.847507+00', '2024-12-10 18:56:36.073001+00', 'OPT-48RPW', '48" Cazo Planter & Water Bowl', 1709, 3146, 3461, NULL, NULL, NULL, NULL, NULL, 'OPT-48{MAT}{CLR}', 'Round', NULL, '48"', 'Planter And Water', 'Feature', NULL, NULL),
	('f112899e-312e-4450-901b-c57a1e50ccaa', '2024-11-20 21:14:57.847507+00', '2024-12-10 18:56:36.073001+00', 'OPT-48RWO', '48" Cazo Water Bowl', 1732, 3188, 3507, NULL, NULL, NULL, NULL, NULL, 'OPT-48{MAT}{CLR}', 'Round', NULL, '48"', 'Water Feature', 'Feature', NULL, NULL),
	('4374fd36-dd8c-471a-b230-82a504e7e664', '2024-11-20 21:14:57.847507+00', '2024-12-10 18:56:36.073001+00', 'OPT-24RFO', '24" Cazo Fire Bowl', 1026, 1888, 2077, NULL, NULL, NULL, NULL, NULL, 'OPT-{MAT}{IGN}{CLR}{GAS}', 'Round', NULL, '24"', 'Fire Feature', 'Feature', 'Gas Fire Bowl', NULL),
	('9c636cc4-24b0-4c8a-80d3-52910ba29141', '2024-11-20 21:14:57.847507+00', '2024-12-10 18:56:36.073001+00', 'OPT-24RFW', '24" Cazo Fire & Water Bowl', 1324, 2438, 2682, NULL, NULL, NULL, NULL, NULL, 'OPT-{MAT}{IGN}{CLR}{GAS}', 'Round', NULL, '24"', 'Fire And Water', 'Feature', 'Gas Fire Bowl', NULL),
	('8edd095f-f9f4-4c5e-8de2-16c370a08566', '2024-11-20 21:14:57.847507+00', '2024-12-10 18:56:36.073001+00', 'OPT-R30PCFO', '30" Cazo Fire Bowl', 1183, 2178, 2396, NULL, NULL, NULL, NULL, NULL, 'OPT-{MAT}{IGN}{CLR}{GAS}', 'Round', NULL, '30"', 'Fire Feature', 'Feature', 'Gas Fire Bowl', NULL),
	('d9190f81-59d9-465e-bc12-116ba2ea5760', '2024-11-20 21:14:57.847507+00', '2024-12-10 18:56:36.073001+00', 'OPT-R30PCFW', '30" Cazo Fire & Water Bowl', 1316, 2422, 2665, NULL, NULL, NULL, NULL, NULL, 'OPT-{MAT}{IGN}{CLR}{GAS}', 'Round', NULL, '30"', 'Fire And Water', 'Feature', 'Gas Fire Bowl', NULL),
	('c14b024b-3502-48d6-a57a-95c600e1a532', '2024-11-20 21:14:57.847507+00', '2024-12-10 18:56:36.073001+00', 'OPT-4W30', '30" Cazo 4-Way Water & Fire Bowl', 2742, 5046, 5551, NULL, NULL, NULL, NULL, NULL, 'OPT-{MAT}{IGN}{CLR}{GAS}', 'Round', NULL, '30"', 'Fire And Water', 'Feature', 'Gas Fire Bowl', NULL),
	('333edd93-2096-40e0-bfb0-58ba637060ad', '2024-11-20 21:14:57.847507+00', '2024-12-10 18:56:36.073001+00', 'OPT-30FW360', '30" Cazo 360° Water & Fire Bowl', 2681, 4934, 5428, NULL, NULL, NULL, NULL, NULL, 'OPT-{MAT}{IGN}{CLR}{GAS}', 'Round', NULL, '30"', 'Fire And Water', 'Feature', 'Gas Fire Bowl', NULL),
	('13b250df-7866-41a0-bf13-9025fb04dd69', '2024-11-20 21:14:57.847507+00', '2024-12-10 18:56:36.073001+00', 'OPT-31RFO', '31" Cazo Fire Bowl', 1147, 2112, 2324, NULL, NULL, NULL, NULL, NULL, 'OPT-31{MAT}{IGN}{CLR}{GAS}', 'Round', NULL, '31"', 'Fire Feature', 'Feature', 'Gas Fire Bowl', NULL),
	('c8cec25b-847b-499b-9940-77c4af89db20', '2024-11-20 21:14:57.847507+00', '2024-12-10 18:56:36.073001+00', 'OPT-31RFW', '31" Cazo Fire & Water Bowl', 1364, 2510, 2761, NULL, NULL, NULL, NULL, NULL, 'OPT-31{MAT}{IGN}{CLR}{GAS}', 'Round', NULL, '31"', 'Fire And Water', 'Feature', 'Gas Fire Bowl', NULL),
	('c40b5c53-d24d-437c-99ea-e56d9e5d5209', '2024-11-20 21:14:57.847507+00', '2024-12-10 18:56:36.073001+00', 'OPT-32RWGFW', '32" Cazo Fire and Water Bowl', 1403, 2582, 2841, NULL, NULL, NULL, NULL, NULL, 'OPT-32{MAT}{IGN}{CLR}{GAS}', 'Round', NULL, '32"', 'Fire And Water', 'Feature', 'Gas Fire Bowl', NULL),
	('df7653ab-4c82-4c80-afc5-9b2336efccff', '2024-11-20 21:14:57.847507+00', '2024-12-10 18:56:36.073001+00', 'OPT-32RWGFO', '32" Cazo Fire Bowl', 1180, 2172, 2390, NULL, NULL, NULL, NULL, NULL, 'OPT-32{MAT}{IGN}{CLR}{GAS}', 'Round', NULL, '32"', 'Fire Feature', 'Feature', 'Gas Fire Bowl', NULL),
	('01cfbaa6-59e2-49d9-b939-c01c4abfe9dd', '2024-11-20 21:14:57.847507+00', '2024-12-10 18:56:36.073001+00', 'OPT-36RFO', '36" Cazo Fire Bowl', 1266, 2330, 2563, NULL, NULL, NULL, NULL, NULL, 'OPT-{MAT}{IGN}{CLR}{GAS}', 'Round', NULL, '36"', 'Fire Feature', 'Feature', 'Gas Fire Bowl', NULL),
	('346aa0d9-c440-4356-85cf-b7b8aa7336a5', '2024-11-20 21:14:57.847507+00', '2024-12-10 18:56:36.073001+00', 'OPT-36RFW', '36" Cazo Fire & Water Bowl', 1417, 2608, 2869, NULL, NULL, NULL, NULL, NULL, 'OPT-{MAT}{IGN}{CLR}{GAS}', 'Round', NULL, '36"', 'Fire And Water', 'Feature', 'Gas Fire Bowl', NULL),
	('a63595fd-669d-4ae9-9021-31142e64ed8e', '2024-11-20 21:14:57.847507+00', '2024-12-10 18:56:36.073001+00', 'OPT-36FW360', '36" Cazo 360° Water & Fire Bowl', 3422, 6298, 6928, NULL, NULL, NULL, NULL, NULL, 'OPT-{MAT}{IGN}{CLR}{GAS}', 'Round', NULL, '36"', 'Fire And Water', 'Feature', 'Gas Fire Bowl', NULL),
	('a2270704-50c5-4ec2-9d06-42694eff713f', '2024-11-20 21:14:57.847507+00', '2024-12-10 18:56:36.073001+00', 'OPT-48RFO', '48" Cazo Fire Bowl', 2073, 3816, 4198, NULL, NULL, NULL, NULL, NULL, 'OPT-48{MAT}{IGN}{CLR}{GAS}', 'Round', NULL, '48"', 'Fire Feature', 'Feature', 'Gas Fire Bowl', NULL),
	('490a7f54-9218-4ad9-861b-1e8055440d0c', '2024-11-20 21:14:57.847507+00', '2024-12-10 18:56:36.073001+00', 'OPT-48RFW', '48" Cazo Fire & Water Bowl', 2290, 4214, 4636, NULL, NULL, NULL, NULL, NULL, 'OPT-48{MAT}{IGN}{CLR}{GAS}', 'Round', NULL, '48"', 'Fire And Water', 'Feature', 'Gas Fire Bowl', NULL),
	('7aa639b0-7016-4c64-bf5a-525396ab3093', '2024-11-20 21:14:57.847507+00', '2024-12-10 18:56:36.073001+00', 'OPT-48CZFW360', '48" Cazo Fire & Water Bowl - 360° Spill', 2773, 5104, 5615, NULL, NULL, NULL, NULL, NULL, 'OPT-48{MAT}{IGN}{CLR}{GAS}', 'Round', NULL, '48"', 'Fire And Water', 'Feature', 'Gas Fire Bowl', NULL);


--
-- Data for Name: Company; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO "public"."Company" ("id", "created_at", "updated_at", "name", "logo", "role", "parent_company", "company_type", "net_term") VALUES
	('c2a235b0-f1be-4fe8-985c-c0a25349e0c1', '2024-11-21 23:09:18.241036+00', '2024-12-18 17:47:31.377455+00', 'Outdoor Direct', 'https://www.dropbox.com/scl/fi/s51omcrlgf6bats6o1k47/Outdoor-_Direct_-_Logo_Option_1_-_Light_1600x.webp?rlkey=p8d74v3n02ypda9vgsirgolx8&st=d7oa67un&raw=1', 'INTERNET', NULL, NULL, NULL),
	('aab2dcff-2d61-46b2-b80d-eafc3df7ed29', '2024-11-25 19:51:50.746642+00', '2024-12-10 18:56:40.392033+00', 'The Outdoor Plus', NULL, 'ADMIN', NULL, NULL, NULL),
	('8f031265-3d83-440e-9992-d9343ace13a1', '2024-11-21 23:09:18.241036+00', '2024-12-10 18:56:40.392033+00', 'Woodland Direct', 'https://www.dropbox.com/scl/fi/8rrfeqnc4buby25n66b4j/woodlanddirect-logo-fullcolor-19138-4x.png?rlkey=5jicczcsuojwc9zxbv4uy76xo&st=nujvdlz7&raw=1', 'DEALER', NULL, NULL, NULL),
	('8bf48acf-c295-4086-87c7-682af7dc3683', '2024-11-21 23:09:18.241036+00', '2024-12-10 18:56:40.392033+00', 'Montana Fire Pits', 'https://www.dropbox.com/scl/fi/0a92a51zmprqcmr0gko3i/Montana_Fire_Pits.webp?rlkey=zxl8jabkzwx6vkt56k0um524p&st=u7vqgf9o&raw=1', 'INTERNET', NULL, NULL, NULL),
	('76165984-46a1-4376-b7b4-e282df81cd5a', '2024-11-21 23:09:18.241036+00', '2024-12-10 18:56:40.392033+00', 'Starfire Direct', NULL, 'DEALER', NULL, NULL, NULL),
	('55bb29ab-8019-4e5d-8b53-f974c3ba990c', '2024-11-21 23:09:18.241036+00', '2024-12-10 18:56:40.392033+00', 'Poolcorp', NULL, 'DISTRIBUTOR', NULL, NULL, NULL),
	('5a85c99a-0b79-4979-85e6-f48de722a906', '2024-11-21 23:09:18.241036+00', '2024-12-10 18:56:40.392033+00', 'SCP', NULL, 'DISTRIBUTOR', NULL, NULL, NULL),
	('018f6ae5-845a-4706-8960-c81a8c59a949', '2024-11-21 23:09:18.241036+00', '2024-12-10 18:56:40.392033+00', 'Heritage', NULL, 'DISTRIBUTOR', NULL, NULL, NULL),
	('16096898-eb47-4d1c-9bfe-f18561a13007', '2024-12-02 23:04:10.668329+00', '2024-12-10 18:56:40.392033+00', 'Stellar Sales', 'https://www.dropbox.com/scl/fi/dtvtgdh67hkn07727jxfv/stellar-logo-blue.png?rlkey=i72u0xm9ozv0xpngnls2m806h&st=5mmjocxa&raw=1', 'SALES', NULL, NULL, NULL),
	('46ba6162-15f7-4c71-b267-827188ad76d4', '2024-12-02 23:04:10.668329+00', '2024-12-10 18:56:40.392033+00', 'Stellas Sales Alliance', 'https://www.dropbox.com/scl/fi/hiccoaugoky25c0aosywp/stellar-alliance-logo-dark.png?rlkey=8ctpwu33xpbcn11ej4whv5lkv&st=u7wc4zaq&raw=1', 'SALES', NULL, NULL, NULL),
	('04612755-bf20-48ee-b7eb-ab699bb28ed9', '2024-12-02 23:04:10.668329+00', '2024-12-10 18:56:40.392033+00', 'Blithe Sales', 'https://www.dropbox.com/scl/fi/33pq6ell1apwts0v2ojw1/Blithe_HeaderSmallwGlow-283x200.webp?rlkey=mdlhoidkvz2yf043sezly4fi6&st=vghayiqc&raw=1', 'SALES', NULL, NULL, NULL),
	('cb60cd06-974f-473b-bd7b-f978e19212e6', '2024-12-02 23:04:10.668329+00', '2024-12-10 18:56:40.392033+00', 'Mast Sales', 'https://www.dropbox.com/scl/fi/xm2v7g295ntijpgmzblt2/mast_sales_logo.webp?rlkey=9mckfg8z4tsvnfe08z718pb3r&st=87xk2xqh&raw=1', 'SALES', NULL, NULL, NULL),
	('4b05afcd-d16c-46c9-84ef-c14a6cd383cb', '2024-12-02 23:04:10.668329+00', '2024-12-10 18:56:40.392033+00', 'Alpha West Marketing Group', 'https://www.dropbox.com/scl/fi/cpnju4i01qxszoevse2cw/The-Alpha-Group-Logo.png?rlkey=9uq6ajdknkr9ssfq5y55quv32&st=6zpxrsa4&raw=1', 'SALES', NULL, NULL, NULL),
	('569c7bd5-370e-4480-89cd-6ab7ffe29944', '2024-12-02 23:04:10.668329+00', '2024-12-10 18:56:40.392033+00', 'Southeast Leisure', 'https://www.dropbox.com/scl/fi/v6xxca0i8dsx599w6o4td/southeast_leisure.png?rlkey=u05tqfcxx89k0t3gy6ybrz73k&st=wmob8uw6&raw=1', 'SALES', NULL, NULL, NULL);


--
-- Data for Name: MaterialsAttributes; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO "public"."MaterialsAttributes" ("id", "created_at", "updated_at", "attribute_type", "product_filter", "attribute_option", "attribute_code", "add_on_price", "discount", "promo_code", "promotion_details", "images") VALUES
	('34c8766d-4577-4b00-90ec-b7e7e9f8d27c', '2024-11-20 21:14:59.076759+00', '2024-12-10 18:56:37.563498+00', 'Material', '24" Cazo Fire & Water Bowl', 'GFRC', '24RFW', NULL, NULL, NULL, NULL, NULL),
	('f86f20c2-ff4e-425c-9500-8722ca66967d', '2024-11-20 21:14:59.076759+00', '2024-12-10 18:56:37.563498+00', 'Material', '24" Cazo Fire & Water Bowl', 'Wood Grain', '24RWGFW', 40, NULL, NULL, NULL, NULL),
	('e9c42b3e-81b0-4c38-afe3-448742a43997', '2024-11-20 21:14:59.076759+00', '2024-12-10 18:56:37.563498+00', 'Material', '24" Cazo Fire & Water Bowl', 'Hammered Copper', '101-24NWCB', 394, NULL, NULL, NULL, NULL),
	('1f76eccd-c561-4539-90fd-bf2e1c47bfca', '2024-11-20 21:14:59.076759+00', '2024-12-10 18:56:37.563498+00', 'Material', '24" Cazo Fire & Water Bowl', 'Powder Coat', 'R24PCFW', 58, 0.15, 'BOWLXMAS24', '15% OFF Of any bowl in powder coat finish', NULL),
	('17a77de4-5cd9-46a7-8511-c82c960027b6', '2024-11-20 21:14:59.076759+00', '2024-12-10 18:56:37.563498+00', 'Material', '24" Cazo Fire Bowl', 'GFRC', '24RFO', NULL, NULL, NULL, NULL, 'Ash: https://www.dropbox.com/scl/fi/r05huanoa5keq5iimva7z/Cazo-Bowl-Fire-Ash.jpg?rlkey=c2yurybi26qae4jrol1lplerz&st=8kuipwbp&raw=1, Black: https://www.dropbox.com/scl/fi/fm5at1tlslnssib7ijxnb/Cazo-Bowl-Fire-Black.jpg?rlkey=z8469nz9adsand7175ahng9d1&st=t98vwmtw&raw=1, Chocolate: https://www.dropbox.com/scl/fi/l0357qev7j122wvvt27ev/Cazo-Bowl-Fire-Chocolate.jpg?rlkey=v1bc7qzwar009k1odhb6nbwjh&st=2k693p84&raw=1'),
	('66597377-f69c-4d20-a845-02e46a89cc3c', '2024-11-20 21:14:59.076759+00', '2024-12-10 18:56:37.563498+00', 'Material', '24" Cazo Fire Bowl', 'Wood Grain', '24RWGFO', 30, NULL, NULL, NULL, 'Ebony: https://www.dropbox.com/scl/fi/ejc8zljg7bo7dvja1xvsi/Cazo-Wood-Grain-Fire-Ebony.jpg?rlkey=dxind6v8yy2wcs2gonigqzae1&st=dtnduqq5&raw=1, Ivory: https://www.dropbox.com/scl/fi/ofac4b7g96lqr7ntz1tyw/Cazo-Wood-Grain-fire-ivory.jpg?rlkey=zlg2unt48y5r9retw9kfp0y9o&st=cl6xcjs0&raw=1, Oak: https://www.dropbox.com/scl/fi/9bscuj5dqlq0zum8acdqc/Cazo-Wood-Grain-Fire-Oak.jpg?rlkey=mki6ttcs6eka0zruppwywvvst&st=47kraczp&raw=1'),
	('9db62e96-c524-462c-bac2-c85e89f85288', '2024-11-20 21:14:59.076759+00', '2024-12-10 18:56:37.563498+00', 'Material', '24" Cazo Fire Bowl', 'Hammered Copper', '101-24NWF', 422, NULL, NULL, NULL, 'Copper: https://www.dropbox.com/scl/fi/8dn53w8khtgzs5v3rw7mc/Cazo-Copper-Fire-Bowl.jpg?rlkey=xskbp5rdi8g8xv5rqexv81y42&st=m3c1emcn&raw=1'),
	('87c89efa-84a8-4089-bdbe-c9f5693b0883', '2024-11-20 21:14:59.076759+00', '2024-12-10 18:56:37.563498+00', 'Material', '24" Cazo Fire Bowl', 'Powder Coat', 'R24PCFO', 121, 0.15, 'BOWLXMAS25', '15% OFF Of any bowl in powder coat finish', 'Java: https://www.dropbox.com/scl/fi/vga94upldqukz6jlipdsd/Cazo-Bowl-Fire-Java.jpg?rlkey=30xl6l9ge1wx8zkbt4dv31cii&st=6nyw8od1&raw=1, Pewter: https://www.dropbox.com/scl/fi/oz9hp598djiqzuvksp25o/Cazo-Bowl-Fire-Pewter.jpg?rlkey=4jdil6utkj2dmmg2iaq6lsxez&st=uz422avj&raw=1, Black: https://www.dropbox.com/scl/fi/slukpzokdjyhq7jhgh5oh/Cazo-Powder-Coated-Fire-only-black.jpg?rlkey=yk8wecsi2vq9f0wxd5d02v60p&st=dtsfmafv&raw=1'),
	('ec4d0211-fe9a-4484-837c-ff5c92f381c2', '2024-11-20 21:14:59.076759+00', '2024-12-10 18:56:37.563498+00', 'Material', '24" Cazo Planter & Water Bowl', 'GFRC', '24RPW', NULL, NULL, NULL, NULL, NULL),
	('b7e9b864-dfe2-463d-889c-f44b685004a4', '2024-11-20 21:14:59.076759+00', '2024-12-10 18:56:37.563498+00', 'Material', '24" Cazo Planter Bowl', 'GFRC', '24RP', NULL, NULL, NULL, NULL, NULL),
	('839a17a6-4ac0-48e3-8d13-93b5aa8d3f84', '2024-11-20 21:14:59.076759+00', '2024-12-10 18:56:37.563498+00', 'Material', '24" Cazo Planter Bowl', 'Wood Grain', '24RWGPO', 15, NULL, NULL, NULL, NULL),
	('f3a376a2-46fc-409a-93f0-930584418588', '2024-11-20 21:14:59.076759+00', '2024-12-10 18:56:37.563498+00', 'Material', '24" Cazo Planter Bowl', 'Hammered Copper', 'R24CPO', 391, NULL, NULL, NULL, NULL),
	('a28e2ca9-c4c5-4c08-b5f0-3fe197962ac2', '2024-11-20 21:14:59.076759+00', '2024-12-10 18:56:37.563498+00', 'Material', '24" Cazo Planter Bowl', 'Powder Coat', 'R24CPPO', 329, 0.15, 'BOWLXMAS26', '15% OFF Of any bowl in powder coat finish', NULL),
	('367bb55c-3235-4cab-be16-0965a7df9b76', '2024-11-20 21:14:59.076759+00', '2024-12-10 18:56:37.563498+00', 'Material', '30" Cazo 360° Water & Fire Bowl', 'Hammered Copper', '30FW360', NULL, NULL, NULL, NULL, NULL),
	('ca718e55-e71d-4337-998d-0ef35d3649c5', '2024-11-20 21:14:59.076759+00', '2024-12-10 18:56:37.563498+00', 'Material', '30" Cazo 4-Way Water & Fire Bowl', 'Hammered Copper', '4W30', NULL, NULL, NULL, NULL, NULL),
	('9bfa8625-a488-4a0d-84c0-7ecbdd2f50de', '2024-11-20 21:14:59.076759+00', '2024-12-10 18:56:37.563498+00', 'Material', '30" Cazo Fire & Water Bowl', 'Powder Coat', 'R30PCFW', NULL, 0.15, 'BOWLXMAS27', '15% OFF Of any bowl in powder coat finish', NULL),
	('003b51a3-2a4e-4b60-8033-075647d365f9', '2024-11-20 21:14:59.076759+00', '2024-12-10 18:56:37.563498+00', 'Material', '30" Cazo Fire & Water Bowl', 'Hammered Copper', '102-30NWCB', 621, NULL, NULL, NULL, NULL),
	('d699bcad-fe8d-4b19-a348-68ec1d429eac', '2024-11-20 21:14:59.076759+00', '2024-12-10 18:56:37.563498+00', 'Material', '30" Cazo Fire Bowl', 'Powder Coat', 'R30PCFO', NULL, 0.15, 'BOWLXMAS28', '15% OFF Of any bowl in powder coat finish', NULL),
	('4117d3aa-dd31-4841-8dd5-4a12a173a40f', '2024-11-20 21:14:59.076759+00', '2024-12-10 18:56:37.563498+00', 'Material', '36" Cazo Fire Bowl', 'Hammered Copper', '102-36NWF', 1454, NULL, NULL, NULL, NULL),
	('09f1facd-a916-4974-918c-7afd393073ce', '2024-11-20 21:14:59.076759+00', '2024-12-10 18:56:37.563498+00', 'Material', '36" Cazo Fire Bowl', 'Powder Coat', 'R36PCFO', 121, 0.15, 'BOWLXMAS30', '15% OFF Of any bowl in powder coat finish', NULL),
	('9ea4be97-f1eb-457f-bf24-ddc70b981099', '2024-11-20 21:14:59.076759+00', '2024-12-10 18:56:37.563498+00', 'Material', '48" Cazo Fire Bowl', 'GFRC', 'RFO', NULL, NULL, NULL, NULL, NULL),
	('6a353c8f-c6b5-4221-b70e-e555e5a30b93', '2024-11-20 21:14:59.076759+00', '2024-12-10 18:56:37.563498+00', 'Material', '48" Cazo Planter & Water Bowl', 'GFRC', 'RPW', NULL, NULL, NULL, NULL, NULL),
	('70a9a970-a914-4985-92b0-060b60d9ac1f', '2024-11-20 21:14:59.076759+00', '2024-12-10 18:56:37.563498+00', 'Material', '48" Cazo Water Bowl', 'GFRC', 'RWO', NULL, NULL, NULL, NULL, NULL),
	('d55fbd94-2737-4e98-822b-4d86441f9cde', '2024-11-20 21:14:59.076759+00', '2024-12-10 18:56:37.563498+00', 'Material', '24" Cazo Planter & Water Bowl', 'Wood Grain', '24RWGPW', 24, NULL, NULL, NULL, NULL),
	('b6764a8c-c215-4a39-b1e2-bfc93d0bce94', '2024-11-20 21:14:59.076759+00', '2024-12-10 18:56:37.563498+00', 'Material', '24" Cazo Planter & Water Bowl', 'Powder Coat', 'R24PCPW', 259, 0.15, 'BOWLXMAS31', '15% OFF Of any bowl in powder coat finish', NULL),
	('7eb7af3e-f484-4222-b502-dff0bbccb9d3', '2024-11-20 21:14:59.076759+00', '2024-12-10 18:56:37.563498+00', 'Material', '24" Cazo Planter & Water Bowl', 'Hammered Copper', 'R24CPW', 210, NULL, NULL, NULL, NULL),
	('c296d10a-0f0f-4029-97a5-5d01380140a9', '2024-11-20 21:14:59.076759+00', '2024-12-10 18:56:37.563498+00', 'Material', '24" Cazo Water Bowl', 'GFRC', '24RWO', NULL, NULL, NULL, NULL, NULL),
	('9246693e-4af7-4f16-8008-bb2cce2521f4', '2024-11-20 21:14:59.076759+00', '2024-12-10 18:56:37.563498+00', 'Material', '24" Cazo Water Bowl', 'Wood Grain', '24RWGWO', 19, NULL, NULL, NULL, NULL),
	('0aaaa546-a852-4425-be34-3bb24905b4ba', '2024-11-20 21:14:59.076759+00', '2024-12-10 18:56:37.563498+00', 'Material', '24" Cazo Water Bowl', 'Powder Coat', 'R24PCWO', 307, 0.15, 'BOWLXMAS32', '15% OFF Of any bowl in powder coat finish', NULL),
	('fa57bf67-e7f8-4c32-b17a-92ffed14418c', '2024-11-20 21:14:59.076759+00', '2024-12-10 18:56:37.563498+00', 'Material', '24" Cazo Water Bowl', 'Hammered Copper', 'R24CPWO', 487, NULL, NULL, NULL, NULL),
	('c4156c9e-6249-4488-91b0-d980e32600ce', '2024-11-20 21:14:59.076759+00', '2024-12-10 18:56:37.563498+00', 'Material', '30" Cazo Planter Bowl', 'Powder Coat', 'PCPO', NULL, 0.15, 'BOWLXMAS33', '15% OFF Of any bowl in powder coat finish', NULL),
	('d8c78265-9ff3-41a0-b9f3-3b1bb4b1cbf9', '2024-11-20 21:14:59.076759+00', '2024-12-10 18:56:37.563498+00', 'Material', '30" Cazo Planter Bowl', 'Hammered Copper', 'CPO', 121, NULL, NULL, NULL, NULL),
	('b1f08b28-ee12-4d50-9fb4-07c97cb7f05d', '2024-11-20 21:14:59.076759+00', '2024-12-10 18:56:37.563498+00', 'Material', '48" Cazo Fire & Water Bowl', 'GFRC', 'RFW', NULL, NULL, NULL, NULL, NULL),
	('bbcd155c-083d-49f6-8c43-f6592a09c421', '2024-11-20 21:14:59.076759+00', '2024-12-10 18:56:37.563498+00', 'Material', '48" Cazo Fire & Water Bowl - 360° Spill', 'GFRC', '48CZFW360', NULL, NULL, NULL, NULL, NULL),
	('7100228b-c244-4877-b586-7dd4b02f4db9', '2024-11-20 21:14:59.076759+00', '2024-12-10 18:56:37.563498+00', 'Material', '36" Cazo Planter & Water Bowl', 'Powder Coat', 'R36PCPW', 167, 0.15, 'BOWLXMAS34', '15% OFF Of any bowl in powder coat finish', NULL),
	('3640eee0-5a0a-4c23-a732-2badb05d8257', '2024-11-20 21:14:59.076759+00', '2024-12-10 18:56:37.563498+00', 'Material', '36" Cazo Fire & Water Bowl', 'Powder Coat', 'R36PCFW', NULL, 0.15, 'BOWLXMAS29', '15% OFF Of any bowl in powder coat finish', NULL),
	('e9a39f7e-c695-4276-bff2-bcd54be19752', '2024-11-20 21:14:59.076759+00', '2024-12-10 18:56:37.563498+00', 'Material', '36" Cazo Planter Bowl', 'Powder Coat', 'R36PCPO', 450, 0.15, 'BOWLXMAS35', '15% OFF Of any bowl in powder coat finish', NULL),
	('c09b9e64-6de9-427f-8d16-039208318d3d', '2024-11-20 21:14:59.076759+00', '2024-12-10 18:56:37.563498+00', 'Material', '30" Cazo Fire Bowl', 'Hammered Copper', '102-30NWF', 665, NULL, NULL, NULL, NULL),
	('9516d0f0-f590-4fc5-ac4c-42eb71af8b89', '2024-11-20 21:14:59.076759+00', '2024-12-10 18:56:37.563498+00', 'Material', '31" Cazo Fire & Water Bowl', 'GFRC', 'RFW', NULL, NULL, NULL, NULL, NULL),
	('6ed9e80e-f879-4456-a47c-f76e30ba8bba', '2024-11-20 21:14:59.076759+00', '2024-12-10 18:56:37.563498+00', 'Material', '31" Cazo Fire Bowl', 'GFRC', 'RFO', NULL, NULL, NULL, NULL, NULL),
	('f33ebefb-ce06-472a-9088-b20e7b72b683', '2024-11-20 21:14:59.076759+00', '2024-12-10 18:56:37.563498+00', 'Material', '32" Cazo Fire and Water Bowl', 'Wood Grain', 'RWGFW', NULL, NULL, NULL, NULL, NULL),
	('78a2d6fa-353f-43d4-a260-9806727b0cd8', '2024-11-20 21:14:59.076759+00', '2024-12-10 18:56:37.563498+00', 'Material', '32" Cazo Fire Bowl', 'Wood Grain', 'RWGFO', NULL, NULL, NULL, NULL, NULL),
	('48ad5225-ed1c-4af9-891a-f4f7472aaec8', '2024-11-20 21:14:59.076759+00', '2024-12-10 18:56:37.563498+00', 'Material', '36" Cazo 360° Water & Fire Bowl', 'Hammered Copper', '36FW360', NULL, NULL, NULL, NULL, NULL),
	('6c3dc32b-30cf-4d3f-8b01-f138a1be4257', '2024-11-20 21:14:59.076759+00', '2024-12-10 18:56:37.563498+00', 'Material', '36" Cazo 4-Way Water & Fire Bowl', 'Hammered Copper', '4W36', NULL, NULL, NULL, NULL, NULL),
	('985fcae1-b8de-47eb-89e5-159c598b90f6', '2024-11-20 21:14:59.076759+00', '2024-12-10 18:56:37.563498+00', 'Material', '36" Cazo Fire & Water Bowl', 'GFRC', '36RFW', NULL, NULL, NULL, NULL, NULL),
	('5c145497-63ba-4304-98c5-1a0657c943a8', '2024-11-20 21:14:59.076759+00', '2024-12-10 18:56:37.563498+00', 'Material', '36" Cazo Fire & Water Bowl', 'Hammered Copper', '102-36NWCB', 1557, NULL, NULL, NULL, NULL),
	('5f5e9a47-452b-4148-84f5-a4b5fd824ec9', '2024-11-20 21:14:59.076759+00', '2024-12-10 18:56:37.563498+00', 'Material', '36" Cazo Fire Bowl', 'GFRC', '36RFO', NULL, NULL, NULL, NULL, NULL),
	('9b740105-7ffe-4ebc-97bb-b4f528eef44e', '2024-12-10 18:52:04.280576+00', '2024-12-10 18:56:37.563498+00', 'Material', '24" Maya Fire Bowl', 'GFRC', 'RFO', NULL, NULL, NULL, NULL, NULL),
	('d3e1ed62-4c94-4cf0-a97b-501c9531566e', '2024-12-10 18:52:04.280576+00', '2024-12-10 18:56:37.563498+00', 'Material', '24" Maya Fire Bowl', 'Powder Coat', 'SQPFCO', 300, NULL, NULL, NULL, NULL),
	('c9c1213c-869d-4dce-ad17-1509ef7529fd', '2024-11-20 21:14:59.076759+00', '2024-12-10 18:56:37.563498+00', 'Material', '36" Cazo Planter & Water Bowl', 'Hammered Copper', 'R36CPW', 197, NULL, NULL, NULL, NULL),
	('d3b6897b-0cf2-4f98-aedf-f23a2a138fb7', '2024-11-20 21:14:59.076759+00', '2024-12-10 18:56:37.563498+00', 'Material', '36" Cazo Water Bowl', 'GFRC', '36RWO', NULL, NULL, NULL, NULL, NULL),
	('6d9bf1e1-9c85-48f3-9007-bd0865939182', '2024-11-20 21:14:59.076759+00', '2024-12-10 18:56:37.563498+00', 'Material', '36" Cazo Water Bowl', 'Powder Coat', 'R36PCWO', 452, 0.15, 'BOWLXMAS36', '15% OFF Of any bowl in powder coat finish', NULL),
	('149537d5-39a2-4322-9cd4-9a6f49ee2a47', '2024-11-20 21:14:59.076759+00', '2024-12-10 18:56:37.563498+00', 'Material', '30" Cazo Planter & Water Bowl', 'Powder Coat', 'PCPW', NULL, 0.15, 'BOWLXMAS37', '15% OFF Of any bowl in powder coat finish', NULL),
	('49f9c4b7-ad2e-426b-b2b9-b03ec2546a88', '2024-11-20 21:14:59.076759+00', '2024-12-10 18:56:37.563498+00', 'Material', '30" Cazo Planter & Water Bowl', 'Hammered Copper', 'CPW', 90, NULL, NULL, NULL, NULL),
	('9ff51154-ea2f-42a4-80c7-c79d07a5eeb9', '2024-11-20 21:14:59.076759+00', '2024-12-10 18:56:37.563498+00', 'Material', '30" Cazo Water Bowl', 'Powder Coat', 'PCWO', NULL, 0.15, 'BOWLXMAS38', '15% OFF Of any bowl in powder coat finish', NULL),
	('58e4ebee-7098-401a-8867-d9308ccac649', '2024-11-20 21:14:59.076759+00', '2024-12-10 18:56:37.563498+00', 'Material', '30" Cazo Water Bowl', 'Hammered Copper', 'CPWO', 260, NULL, NULL, NULL, NULL),
	('775c359a-a55a-470c-91d6-33b596532423', '2024-11-20 21:14:59.076759+00', '2024-12-10 18:56:37.563498+00', 'Material', '31" Cazo Planter & Water Bowl', 'GFRC', 'RPW', NULL, NULL, NULL, NULL, NULL),
	('55fe5bd9-74de-43f7-b039-6d0480ce66ce', '2024-11-20 21:14:59.076759+00', '2024-12-10 18:56:37.563498+00', 'Material', '31" Cazo Planter Bowl', 'GFRC', 'RP', NULL, NULL, NULL, NULL, NULL),
	('f80ee234-98b0-489c-be02-e96692c0b90b', '2024-11-20 21:14:59.076759+00', '2024-12-10 18:56:37.563498+00', 'Material', '31" Cazo Water Bowl', 'GFRC', 'RWO', NULL, NULL, NULL, NULL, NULL),
	('e2750dfd-6a2c-4328-9db5-a43169e8f24b', '2024-11-20 21:14:59.076759+00', '2024-12-10 18:56:37.563498+00', 'Material', '32" Cazo Planter & Water Bowl', 'Wood Grain', 'PW', NULL, NULL, NULL, NULL, NULL),
	('0358b3a1-1188-42c6-a75c-cbf95be8cb88', '2024-11-20 21:14:59.076759+00', '2024-12-10 18:56:37.563498+00', 'Material', '32" Cazo Planter Bowl', 'Wood Grain', 'PO', NULL, NULL, NULL, NULL, NULL),
	('cf7ed2d4-863e-421c-b37c-ac6568a2f2a0', '2024-11-20 21:14:59.076759+00', '2024-12-10 18:56:37.563498+00', 'Material', '32" Cazo Water Bowl', 'Wood Grain', 'WO', NULL, NULL, NULL, NULL, NULL),
	('06e4ea5d-0f37-4af4-8612-56a3de75979d', '2024-11-20 21:14:59.076759+00', '2024-12-10 18:56:37.563498+00', 'Material', '36" Cazo Planter & Water Bowl', 'GFRC', '36RPW', NULL, NULL, NULL, NULL, NULL),
	('97f064da-db5f-4043-811f-3866e30a295d', '2024-12-04 01:45:00.357575+00', '2024-12-10 18:56:37.563498+00', 'Material', '60" Del Mar Fire Pit', 'GFRC', NULL, NULL, NULL, NULL, NULL, NULL),
	('6eb14909-fea2-4cc5-8ba7-3a6055f08d83', '2024-11-20 21:14:59.076759+00', '2024-12-10 18:56:37.563498+00', 'Material', '36" Cazo Planter Bowl', 'GFRC', '36RP', NULL, NULL, NULL, NULL, NULL),
	('16ab990b-2fc3-46d8-b447-6dc80312c0d3', '2024-12-04 01:45:00.357575+00', '2024-12-10 18:56:37.563498+00', 'Material', '48" Del Mar Fire Pit', 'GFRC', 'GFRC48', NULL, NULL, NULL, NULL, NULL),
	('6fbbc9e9-f586-43b0-9f78-c9e74dde87a4', '2024-11-20 21:14:59.076759+00', '2024-12-10 18:56:37.563498+00', 'Material', '36" Cazo Planter Bowl', 'Hammered Copper', 'R36CPO', 510, NULL, NULL, NULL, NULL),
	('1eba1c63-e078-446d-a327-8ce07c4ed69a', '2024-11-20 21:14:59.076759+00', '2024-12-10 18:56:37.563498+00', 'Material', '36" Cazo Water Bowl', 'Hammered Copper', 'R36CPWO', 635, NULL, NULL, NULL, NULL),
	('063e8ef5-a3ca-414f-9a0a-9865de42a87c', '2024-11-20 21:14:59.076759+00', '2024-12-10 18:56:37.563498+00', 'Material', '48" Cazo Planter Bowl', 'GFRC', 'RP', NULL, NULL, NULL, NULL, NULL);


--
-- Data for Name: enums; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO "public"."enums" ("id", "created_at", "type", "value", "num_identifier", "customer_type") VALUES
	('67087a90-44d2-4e74-87b5-30a3896bbff6', '2024-12-18 22:17:13.319326+00', 'user_role', 'ADMIN', 1, NULL),
	('6e9c0d96-fea8-4208-a3e3-2ee79bab42c5', '2024-12-18 22:17:13.319326+00', 'user_role', 'SALES', 2, NULL),
	('9eb368f6-9dd9-494d-90ec-26291ef3ffda', '2024-12-18 22:17:13.319326+00', 'user_role', 'GROUP', 3, NULL),
	('0faa1786-880c-4430-b9fc-a3c0548c3c43', '2024-12-18 22:17:13.319326+00', 'user_role', 'MASTER_DISTRIBUTOR', 4, NULL),
	('2d3568ec-5901-4afc-8add-314a27fef58d', '2024-12-18 22:17:13.319326+00', 'user_role', 'DISTRIBUTOR', 5, NULL),
	('ceb542d6-a470-4ad3-83c8-5f4bb69be157', '2024-12-18 22:17:13.319326+00', 'user_role', 'DEALER', 6, NULL),
	('41a1e596-4ee5-4946-9bdb-ce75a90c31aa', '2024-12-18 22:17:13.319326+00', 'user_role', 'INTERNET', 7, NULL),
	('5c4e6212-49fd-482e-8ea0-2037fe95b82e', '2024-12-18 22:17:13.319326+00', 'user_role', 'LANDSCAPE', 8, NULL),
	('9b817ccf-3950-456e-a9f3-6bd2597e854d', '2024-12-18 22:17:13.319326+00', 'rfq_status', 'Working On Estimate', 1, 'ALL'),
	('43552736-2573-4108-9a42-719616a3d009', '2024-12-18 22:17:13.319326+00', 'rfq_status', 'Estimate Ready', 2, 'ALL'),
	('0f05c0b5-deec-43f2-90d0-1335fad2593b', '2024-12-18 22:17:13.319326+00', 'rfq_status', 'Estimate Accepted', 3, 'ALL'),
	('4d476977-d670-4977-bea4-c3e4960e67a5', '2024-12-18 22:17:13.319326+00', 'rfq_status', 'Estimate Declined', 4, 'ALL'),
	('f32022d3-eed2-438a-aa07-d0b1211690c5', '2024-12-18 22:17:13.319326+00', 'rfq_status', 'Estimate/PO Sent', 5, 'ALL'),
	('b16accda-c6ee-4502-b14f-5963b06f12d8', '2024-12-18 22:17:13.319326+00', 'rfq_status', 'Sales Order Ready', 6, 'NET'),
	('884a4b0f-5df5-4357-8052-98f4444e533f', '2024-12-18 22:17:13.319326+00', 'rfq_status', 'Invoice Ready / Not Paid', 7, 'ALL'),
	('ed8f0cba-dbfc-4015-8664-91288ce0f287', '2024-12-18 22:17:13.319326+00', 'rfq_status', 'Invoice Ready / Paid', 8, 'ALL'),
	('c4ac6b48-4450-4a95-a2c9-3d8034f0438c', '2024-12-18 22:17:13.319326+00', 'company_type', 'CIA', 1, NULL),
	('ce32b790-e13c-4566-a0a6-51dd8faf931c', '2024-12-18 22:17:13.319326+00', 'company_type', 'NET', 2, NULL),
	('60f9e4da-4b15-411f-8315-c11f49f8fe07', '2024-12-18 22:17:13.319326+00', 'net_term', '7', 1, NULL),
	('d70d99c5-d017-4e04-8f06-1645b29c6fd0', '2024-12-18 22:17:13.319326+00', 'net_term', '10', 2, NULL),
	('c80d0385-6161-4b0d-9aad-8dc86b92f62c', '2024-12-18 22:17:13.319326+00', 'net_term', '30', 3, NULL),
	('ba84408b-4404-41e8-ad5e-16fbfe90988a', '2024-12-18 22:17:13.319326+00', 'order_status', 'Order Created', 1, NULL),
	('3c5c27e5-be30-437c-b0d0-4fd0ab5d5178', '2024-12-18 22:17:13.319326+00', 'order_status', 'Order In Progress', 2, NULL),
	('12521742-b67f-43d0-b43a-c2c643276294', '2024-12-18 22:17:13.319326+00', 'order_status', 'Order Delayed', 3, NULL),
	('8a11764f-258c-43fd-bccf-4b7b86b42433', '2024-12-18 22:17:13.319326+00', 'order_status', 'Ready To Ship', 4, NULL),
	('31fa0b35-4f6d-4588-98c3-e76b2386f9f8', '2024-12-18 22:17:13.319326+00', 'order_status', 'Shipped', 5, NULL),
	('dec8a0ba-745d-409d-83fa-20a7cef4c615', '2024-12-18 22:17:13.319326+00', 'order-status', 'Delivered', 6, NULL),
	('309e0f9b-4d38-4e57-84f8-15ef5163079c', '2024-12-18 22:46:38.515756+00', 'rfq_status', 'RFQ Sent', 0, NULL);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO "public"."users" ("id", "first_name", "email", "last_name", "role", "company", "avatar_url") VALUES
	('4d9f3d20-b131-42dc-86ca-4564bfb248ee', 'Jami', 'jpittman@stellarsales.net', 'Pittman', 'SALES', '16096898-eb47-4d1c-9bfe-f18561a13007', 'https://www.dropbox.com/scl/fi/s340vb0dl4avkh7ropz77/Jami-Pittman-Headshot-01.png?rlkey=yxkb481yx87l9bukzpoxzi4g3&st=n2lm4dr6&raw=1'),
	('aafde422-c655-4c2e-a3fa-2dcfaa42db07', 'Chuck', 'chuck@woodland.com', 'Nitschke', 'DEALER', '8f031265-3d83-440e-9992-d9343ace13a1', 'https://www.dropbox.com/scl/fi/hxurt0gzuwmfvrluji2za/chuck_photo.jpg?rlkey=2mwcd8czhgygr52oqm9bc8oc6&st=06jbh4lm&raw=1'),
	('52cf7227-02ec-4bf1-83f8-e96537519cb4', 'Sean', 'sean@seleisure.com', 'Lautzenhiser', 'SALES', '569c7bd5-370e-4480-89cd-6ab7ffe29944', NULL),
	('b709f39c-7363-4b77-b981-24e383a96e4b', 'Jordan', 'jordan@stellar.com', 'Bailey', 'SALES', '16096898-eb47-4d1c-9bfe-f18561a13007', 'https://www.dropbox.com/scl/fi/eqrlh5x2590kna81xi0qc/jordan_stellar.jpg?rlkey=bbwwlid13x8ppk9u3w0dbnq45&st=vsetn5n5&raw=1'),
	('dd1719e8-2a25-4eeb-9814-ac991aaf961a', 'Bill', 'bill@seleisure.com', 'Shaffer', 'SALES', '569c7bd5-370e-4480-89cd-6ab7ffe29944', NULL),
	('d9489df7-1e52-44fe-add1-68f23c984231', 'Rodrigo', 'rodrigo@theoutdoorplus.com', 'Alvarenga', 'ADMIN', 'aab2dcff-2d61-46b2-b80d-eafc3df7ed29', NULL),
	('2456e232-48e4-467a-8cf6-eaba27c1948b', 'Jimmie', 'internet@top.com', 'G Dealer Rep', 'INTERNET', '8f031265-3d83-440e-9992-d9343ace13a1', NULL);


--
-- Data for Name: login_logs; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO "public"."login_logs" ("id", "login_time", "ip_address", "user_id", "user_agent") VALUES
	('fb587bd7-4933-4a30-b008-ad5d33964466', '2024-11-27 00:12:57.73105+00', '47.179.36.170/32', '2456e232-48e4-467a-8cf6-eaba27c1948b', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0'),
	('38541d17-1093-4a7a-b32e-50bbe1fc90e0', '2024-11-27 16:20:34.747028+00', '47.179.36.170/32', '2456e232-48e4-467a-8cf6-eaba27c1948b', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0'),
	('4fd3ddcb-f3e7-468f-9e9f-fcfffb24c3c4', '2024-11-27 16:29:10.098187+00', '47.179.36.170/32', '2456e232-48e4-467a-8cf6-eaba27c1948b', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0'),
	('ee15e9a6-c8b6-468f-88b1-b3e10b6a3e78', '2024-11-27 16:31:06.787713+00', '47.179.36.170/32', '2456e232-48e4-467a-8cf6-eaba27c1948b', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0'),
	('d2cfa5b3-be34-451e-b74a-eb593bac5c49', '2024-11-27 18:44:02.982696+00', '47.179.36.170/32', '2456e232-48e4-467a-8cf6-eaba27c1948b', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0'),
	('cbf2246e-8cd3-43ed-a2ce-ba30c9829882', '2024-12-02 23:33:41.789304+00', '47.179.36.170/32', '4d9f3d20-b131-42dc-86ca-4564bfb248ee', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0'),
	('9e8bd4f3-6234-40d1-8d5b-c96d39836ee2', '2024-12-02 23:38:40.2348+00', '47.179.36.170/32', '4d9f3d20-b131-42dc-86ca-4564bfb248ee', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0'),
	('3da28c3d-33c1-462d-8fab-5b1de08a6619', '2024-12-02 23:41:31.738963+00', '47.179.36.170/32', '4d9f3d20-b131-42dc-86ca-4564bfb248ee', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0'),
	('340603d6-c4e6-483b-8b2b-6cea5b53c750', '2024-12-02 23:44:12.405852+00', '47.179.36.170/32', '4d9f3d20-b131-42dc-86ca-4564bfb248ee', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0'),
	('2139c68e-a016-4b13-97ae-22177bf94b28', '2024-12-03 17:45:16.160852+00', '47.179.36.170/32', '4d9f3d20-b131-42dc-86ca-4564bfb248ee', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0'),
	('0e2aff65-1cb0-46df-b957-8e8033910fcc', '2024-12-03 19:04:58.140825+00', '47.179.36.170/32', '2456e232-48e4-467a-8cf6-eaba27c1948b', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0'),
	('1c5c4fa1-3fa9-4e2b-a79b-b47493132176', '2024-12-03 19:07:18.370342+00', '47.179.36.170/32', '4d9f3d20-b131-42dc-86ca-4564bfb248ee', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0'),
	('4c07277c-efd3-40d5-9da0-cdfa12534ca1', '2024-12-03 21:52:28.533096+00', '47.179.36.170/32', '4d9f3d20-b131-42dc-86ca-4564bfb248ee', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0'),
	('1719ecb9-e3bd-412a-a24d-7c7fe420746b', '2024-12-03 22:02:59.912159+00', '47.179.36.170/32', '4d9f3d20-b131-42dc-86ca-4564bfb248ee', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0'),
	('41ee3266-adeb-4f11-9651-9945bc419ebd', '2024-12-03 22:03:17.922979+00', '47.179.36.170/32', 'aafde422-c655-4c2e-a3fa-2dcfaa42db07', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0'),
	('97a89fd1-92e2-428e-92e1-ebc02f3a6d29', '2024-12-03 23:49:12.76102+00', '47.179.36.170/32', 'aafde422-c655-4c2e-a3fa-2dcfaa42db07', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0'),
	('b403d21f-d218-415f-b29c-92b9ab5b4fef', '2024-12-04 00:00:37.869209+00', '47.179.36.170/32', 'aafde422-c655-4c2e-a3fa-2dcfaa42db07', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0'),
	('44913fe8-9d66-4530-b207-854de9cc47b6', '2024-12-04 00:04:02.347104+00', '47.179.36.170/32', '4d9f3d20-b131-42dc-86ca-4564bfb248ee', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0'),
	('a8fc2d87-dd9d-41e8-9b11-51da63e852b8', '2024-12-04 00:09:03.562486+00', '47.179.36.170/32', 'aafde422-c655-4c2e-a3fa-2dcfaa42db07', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0'),
	('56c3e6d2-93ba-40d8-baf2-b2c90dfa60d7', '2024-12-04 00:31:07.956074+00', '47.179.36.170/32', '4d9f3d20-b131-42dc-86ca-4564bfb248ee', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0'),
	('b1e16283-93a9-4c62-a48a-e0791521ca90', '2024-12-04 00:35:26.013571+00', '47.179.36.170/32', '4d9f3d20-b131-42dc-86ca-4564bfb248ee', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
	('1160c634-fee4-476a-8efd-c223af27cda0', '2024-12-04 00:40:42.74534+00', '47.179.36.170/32', 'aafde422-c655-4c2e-a3fa-2dcfaa42db07', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
	('81b478ae-21aa-437c-b9ed-bb465ca83099', '2024-12-04 01:14:52.953201+00', '47.179.36.170/32', '4d9f3d20-b131-42dc-86ca-4564bfb248ee', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0'),
	('45f2a499-469e-417e-96ce-028a926fee3d', '2024-12-04 01:16:21.312166+00', '47.179.36.170/32', 'aafde422-c655-4c2e-a3fa-2dcfaa42db07', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0'),
	('030a8952-bae7-4793-87e5-0243d295898d', '2024-12-04 01:48:47.778153+00', '47.179.36.170/32', '4d9f3d20-b131-42dc-86ca-4564bfb248ee', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0'),
	('8d5cdd29-be1b-4e3c-b4ec-5e30275ddd8a', '2024-12-04 01:50:56.241202+00', '47.179.36.170/32', '4d9f3d20-b131-42dc-86ca-4564bfb248ee', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0'),
	('22a0faa9-c071-477b-8c31-1d1129387f26', '2024-12-04 16:46:42.798441+00', '47.179.36.170/32', '4d9f3d20-b131-42dc-86ca-4564bfb248ee', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0'),
	('9014cadd-da01-42da-86f3-2fa48d012d35', '2024-12-04 16:56:33.764879+00', '47.179.36.170/32', '52cf7227-02ec-4bf1-83f8-e96537519cb4', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0'),
	('0faeda66-b0ab-42b8-99fd-bbecffcbcf40', '2024-12-04 16:57:11.678103+00', '47.179.36.170/32', '52cf7227-02ec-4bf1-83f8-e96537519cb4', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0'),
	('049c7453-d004-4440-915c-1122dbe8c92c', '2024-12-04 17:12:25.147988+00', '47.179.36.170/32', 'aafde422-c655-4c2e-a3fa-2dcfaa42db07', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0'),
	('2f775fe7-eea3-43ac-a7eb-e9ed7ea8a303', '2024-12-04 18:21:08.642076+00', '47.179.36.170/32', '4d9f3d20-b131-42dc-86ca-4564bfb248ee', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0'),
	('1c21e0fc-6c1c-48c4-89f5-bc7c3e2678f9', '2024-12-04 18:21:42.510548+00', '47.179.36.170/32', '4d9f3d20-b131-42dc-86ca-4564bfb248ee', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0'),
	('f5f0eb3a-4d68-4da8-9050-329b9c50881c', '2024-12-04 18:53:39.030947+00', '47.179.36.170/32', '4d9f3d20-b131-42dc-86ca-4564bfb248ee', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0'),
	('153f078b-e622-44c9-89ec-64b50c9ffc53', '2024-12-04 19:43:14.856731+00', '47.179.36.170/32', '4d9f3d20-b131-42dc-86ca-4564bfb248ee', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0'),
	('88f2b157-7f93-4566-ac6a-1efbcf1854f3', '2024-12-04 22:46:47.277432+00', '47.179.36.170/32', 'aafde422-c655-4c2e-a3fa-2dcfaa42db07', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/18.1 Safari/605.1.15'),
	('e884eafd-ab88-4042-a6a1-d02035c121a6', '2024-12-05 00:19:30.034406+00', '47.179.36.170/32', 'b709f39c-7363-4b77-b981-24e383a96e4b', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36'),
	('1ea2ee73-76cd-4c29-b5e5-0542302fd186', '2024-12-05 22:35:35.663696+00', '47.179.36.170/32', '4d9f3d20-b131-42dc-86ca-4564bfb248ee', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0'),
	('d6242494-0521-4916-9b06-16f8f0294def', '2024-12-06 01:04:54.574257+00', '47.179.36.170/32', '4d9f3d20-b131-42dc-86ca-4564bfb248ee', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/18.0 Safari/605.1.15'),
	('021b1e21-84c7-48d4-aad9-9e52067e10a4', '2024-12-06 01:39:18.647306+00', '47.179.36.170/32', 'aafde422-c655-4c2e-a3fa-2dcfaa42db07', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/18.0 Safari/605.1.15'),
	('6ef40e71-58b4-431f-9d80-0f48b1334e1c', '2024-12-06 01:49:59.11924+00', '47.179.36.170/32', '4d9f3d20-b131-42dc-86ca-4564bfb248ee', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/18.0 Safari/605.1.15'),
	('526b8fa3-dcaf-4b4b-876e-d43b8f7d6c1c', '2024-12-06 16:27:52.436569+00', '47.179.36.170/32', '4d9f3d20-b131-42dc-86ca-4564bfb248ee', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/18.0 Safari/605.1.15'),
	('e991cb07-7534-4cc4-8784-487092da8d9c', '2024-12-06 17:59:31.812037+00', '47.179.36.170/32', '4d9f3d20-b131-42dc-86ca-4564bfb248ee', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0'),
	('a01714a3-5474-455d-9c67-7f277168d248', '2024-12-06 19:38:42.08201+00', '47.179.36.170/32', '4d9f3d20-b131-42dc-86ca-4564bfb248ee', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36'),
	('a4ecbee4-2199-4b10-bffb-ca33a942e8d1', '2024-12-06 19:38:48.673094+00', '47.179.36.170/32', '4d9f3d20-b131-42dc-86ca-4564bfb248ee', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36'),
	('414be686-cf49-472a-9738-d60efffb1a03', '2024-12-06 22:58:58.617237+00', '47.179.36.170/32', '4d9f3d20-b131-42dc-86ca-4564bfb248ee', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0'),
	('e9d312fb-d6c5-486e-a4c5-2a198f150e59', '2024-12-10 16:24:47.058232+00', '47.179.36.170/32', '4d9f3d20-b131-42dc-86ca-4564bfb248ee', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0'),
	('dc2334c1-15a6-4456-ab31-36270096e36a', '2024-12-10 18:03:32.286725+00', '47.179.36.170/32', 'aafde422-c655-4c2e-a3fa-2dcfaa42db07', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0'),
	('e53c310a-9cb9-4d0f-8f2d-866e3e9a7516', '2024-12-10 18:28:48.276056+00', '47.179.36.170/32', 'aafde422-c655-4c2e-a3fa-2dcfaa42db07', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0'),
	('235ee804-1327-4c90-990f-bcdbea10f02a', '2024-12-10 20:05:24.504764+00', '47.179.36.170/32', 'aafde422-c655-4c2e-a3fa-2dcfaa42db07', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0'),
	('a59a845f-b4e3-4919-b971-fb85b1f1f084', '2024-12-11 17:04:49.704215+00', '47.179.36.170/32', 'aafde422-c655-4c2e-a3fa-2dcfaa42db07', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0'),
	('711d863f-a9b1-4cef-8c98-8bc0b84453dd', '2024-12-13 00:10:35.610464+00', '47.179.36.170/32', 'aafde422-c655-4c2e-a3fa-2dcfaa42db07', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0'),
	('337be318-3262-422c-84de-9d9a6b94b405', '2024-12-17 00:32:38.568521+00', '47.179.36.170/32', 'd9489df7-1e52-44fe-add1-68f23c984231', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0'),
	('fdfe3010-d0e8-456b-8ac2-025b684bdc2d', '2024-12-17 16:36:02.054509+00', '47.179.36.170/32', 'd9489df7-1e52-44fe-add1-68f23c984231', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0'),
	('91baf7ad-f8d6-4702-b45f-6be29acfa760', '2024-12-17 21:42:39.573993+00', '47.179.36.170/32', 'd9489df7-1e52-44fe-add1-68f23c984231', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0'),
	('f9300859-8b1d-4298-96a7-8c813ddc4b35', '2024-12-18 00:31:56.605293+00', '47.179.36.170/32', 'd9489df7-1e52-44fe-add1-68f23c984231', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0'),
	('4ab2bec7-6793-4418-a2a3-bf24368c9e04', '2024-12-18 16:34:39.371325+00', '47.179.36.170/32', 'd9489df7-1e52-44fe-add1-68f23c984231', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0'),
	('10687484-077c-4681-83f2-af92315b2a7e', '2024-12-18 18:49:06.895209+00', '47.179.36.170/32', 'd9489df7-1e52-44fe-add1-68f23c984231', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0'),
	('730ce285-4ad9-4d11-9926-889fc5c47607', '2024-12-18 18:51:06.93606+00', '47.179.36.170/32', 'd9489df7-1e52-44fe-add1-68f23c984231', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0'),
	('a6f9ce3b-bca7-4a7b-8e7e-46a3eed943c0', '2024-12-18 18:51:19.171234+00', '47.179.36.170/32', 'aafde422-c655-4c2e-a3fa-2dcfaa42db07', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0'),
	('f304d39e-589f-4dd1-b4cf-cf09d1c81ce4', '2024-12-18 21:26:49.9578+00', '47.179.36.170/32', 'd9489df7-1e52-44fe-add1-68f23c984231', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0'),
	('f778f3af-bf3c-4021-974d-45f6473334be', '2024-12-18 22:38:19.27541+00', '47.179.36.170/32', 'aafde422-c655-4c2e-a3fa-2dcfaa42db07', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0');


--
-- Data for Name: order; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- Data for Name: rfq; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO "public"."rfq" ("id", "created_at", "updated_at", "company_information", "ship_to_information", "purchase_order_number", "items", "additional_notes", "company_id", "user_id", "rfq_number", "estimate_link", "purchase_order_link", "estimate_number", "sales_order_number", "invoice_number", "status") VALUES
	('a0abb0d1-3741-4b3e-8e4f-4a9c2a6c0e7c', '2024-12-18 23:46:39.320274+00', '2024-12-18 23:46:39.320274+00', '{"zip": "91761", "city": "Ontario", "name": "Woodland Direct", "email": "chuck@woodland.com", "phone": "4594568694", "state": "CA", "address": "Home", "contact": "Chuck Nitschke"}', '{"zip": "91761", "city": "Ontario", "name": "The Outdoor Plus Test", "email": "rodrigo@theoutdoorplus.com", "phone": "4594568694", "state": "CA", "address": "Home", "contact": "Rodrigo Alvarenga"}', '', '[{"sku": "OPT-CORGFRC48FSML-ASH-LP", "name": "48\" Del Mar Fire Pit - GFRC - Ash - Liquid Propane - Match Lit w/ Flame Sense", "price": 2190, "quantity": 2}, {"sku": "OPT-CS3010", "name": "30\" Polished SS Logs", "price": 643, "quantity": 1}, {"sku": "OPT-701", "name": "25lb bag - Black Glass - 1/2\"-3/4\"", "price": 85, "quantity": 1}]', 'Please review the quote and contact us for any questions.', '8f031265-3d83-440e-9992-d9343ace13a1', 'aafde422-c655-4c2e-a3fa-2dcfaa42db07', 'RFQ-WDCN02011', NULL, NULL, NULL, NULL, NULL, 'RFQ Sent');


--
-- Data for Name: buckets; Type: TABLE DATA; Schema: storage; Owner: supabase_storage_admin
--



--
-- Data for Name: objects; Type: TABLE DATA; Schema: storage; Owner: supabase_storage_admin
--



--
-- Data for Name: s3_multipart_uploads; Type: TABLE DATA; Schema: storage; Owner: supabase_storage_admin
--



--
-- Data for Name: s3_multipart_uploads_parts; Type: TABLE DATA; Schema: storage; Owner: supabase_storage_admin
--



--
-- Data for Name: secrets; Type: TABLE DATA; Schema: vault; Owner: supabase_admin
--



--
-- Name: refresh_tokens_id_seq; Type: SEQUENCE SET; Schema: auth; Owner: supabase_auth_admin
--

SELECT pg_catalog.setval('"auth"."refresh_tokens_id_seq"', 155, true);


--
-- Name: key_key_id_seq; Type: SEQUENCE SET; Schema: pgsodium; Owner: supabase_admin
--

SELECT pg_catalog.setval('"pgsodium"."key_key_id_seq"', 1, false);


--
-- PostgreSQL database dump complete
--

RESET ALL;
