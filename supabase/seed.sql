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
	('00000000-0000-0000-0000-000000000000', '9168dc8a-88ff-4bd7-8f8f-25872411d363', '{"action":"token_revoked","actor_id":"aafde422-c655-4c2e-a3fa-2dcfaa42db07","actor_username":"chuck@woodland.com","actor_via_sso":false,"log_type":"token"}', '2024-12-18 23:44:36.9968+00', ''),
	('00000000-0000-0000-0000-000000000000', '6dfedb91-11ad-443e-9778-3b545fa2ce3c', '{"action":"token_refreshed","actor_id":"aafde422-c655-4c2e-a3fa-2dcfaa42db07","actor_username":"chuck@woodland.com","actor_via_sso":false,"log_type":"token"}', '2024-12-19 18:16:39.51541+00', ''),
	('00000000-0000-0000-0000-000000000000', 'c42a2136-209e-497b-979c-e13c389e5799', '{"action":"token_revoked","actor_id":"aafde422-c655-4c2e-a3fa-2dcfaa42db07","actor_username":"chuck@woodland.com","actor_via_sso":false,"log_type":"token"}', '2024-12-19 18:16:39.529602+00', ''),
	('00000000-0000-0000-0000-000000000000', 'dc1516ef-6202-4c3e-88b1-1fe94251312d', '{"action":"token_refreshed","actor_id":"aafde422-c655-4c2e-a3fa-2dcfaa42db07","actor_username":"chuck@woodland.com","actor_via_sso":false,"log_type":"token"}', '2024-12-19 23:51:44.317394+00', ''),
	('00000000-0000-0000-0000-000000000000', '3d04eb3a-fa46-423d-b472-a01292e33b5c', '{"action":"token_revoked","actor_id":"aafde422-c655-4c2e-a3fa-2dcfaa42db07","actor_username":"chuck@woodland.com","actor_via_sso":false,"log_type":"token"}', '2024-12-19 23:51:44.326383+00', ''),
	('00000000-0000-0000-0000-000000000000', '14f10fd1-8012-49ab-9da0-86977aa65bb8', '{"action":"token_refreshed","actor_id":"aafde422-c655-4c2e-a3fa-2dcfaa42db07","actor_username":"chuck@woodland.com","actor_via_sso":false,"log_type":"token"}', '2024-12-20 15:19:44.66563+00', ''),
	('00000000-0000-0000-0000-000000000000', '2caf799a-6136-4ef7-b1ae-4be931b8edfe', '{"action":"token_revoked","actor_id":"aafde422-c655-4c2e-a3fa-2dcfaa42db07","actor_username":"chuck@woodland.com","actor_via_sso":false,"log_type":"token"}', '2024-12-20 15:19:44.682175+00', ''),
	('00000000-0000-0000-0000-000000000000', 'adb5e2b2-1ebe-40eb-a53a-4d13e476c86f', '{"action":"token_refreshed","actor_id":"aafde422-c655-4c2e-a3fa-2dcfaa42db07","actor_username":"chuck@woodland.com","actor_via_sso":false,"log_type":"token"}', '2024-12-20 15:19:44.86825+00', ''),
	('00000000-0000-0000-0000-000000000000', 'd3d4cbd2-00f2-4d44-a14d-3238f2e11fad', '{"action":"logout","actor_id":"aafde422-c655-4c2e-a3fa-2dcfaa42db07","actor_username":"chuck@woodland.com","actor_via_sso":false,"log_type":"account"}', '2024-12-20 15:19:44.998792+00', ''),
	('00000000-0000-0000-0000-000000000000', '9c98e797-4651-4b45-befc-957fcc42cb08', '{"action":"login","actor_id":"d9489df7-1e52-44fe-add1-68f23c984231","actor_username":"rodrigo@theoutdoorplus.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2024-12-20 15:19:54.433079+00', ''),
	('00000000-0000-0000-0000-000000000000', '73a31d76-648e-4371-a3be-49b598c116e4', '{"action":"user_signedup","actor_id":"00000000-0000-0000-0000-000000000000","actor_username":"service_role","actor_via_sso":false,"log_type":"team","traits":{"user_email":"jesus@theoutdoorplus.com","user_id":"3259b6db-971a-4b31-a6d2-43dbec6dba3f","user_phone":""}}', '2025-01-03 19:06:22.958072+00', ''),
	('00000000-0000-0000-0000-000000000000', '7506bcdc-4ffe-4d53-91c0-14e8c85450a7', '{"action":"user_deleted","actor_id":"00000000-0000-0000-0000-000000000000","actor_username":"service_role","actor_via_sso":false,"log_type":"team","traits":{"user_email":"jesus@theoutdoorplus.com","user_id":"3259b6db-971a-4b31-a6d2-43dbec6dba3f","user_phone":""}}', '2025-01-03 19:06:54.743697+00', ''),
	('00000000-0000-0000-0000-000000000000', 'b83d16ab-d893-419f-a117-aab09bc52824', '{"action":"user_signedup","actor_id":"00000000-0000-0000-0000-000000000000","actor_username":"service_role","actor_via_sso":false,"log_type":"team","traits":{"user_email":"jesus@theoutdoorplus.com","user_id":"d62c1453-900d-4d37-9e5a-0764720b61d4","user_phone":""}}', '2025-01-03 19:07:13.133413+00', ''),
	('00000000-0000-0000-0000-000000000000', '6265749a-e57a-4590-bf88-5d504500c10e', '{"action":"login","actor_id":"d62c1453-900d-4d37-9e5a-0764720b61d4","actor_username":"jesus@theoutdoorplus.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2025-01-03 19:07:18.016397+00', ''),
	('00000000-0000-0000-0000-000000000000', '69352332-4803-4588-bbf2-cbf5671b3d9b', '{"action":"login","actor_id":"d62c1453-900d-4d37-9e5a-0764720b61d4","actor_username":"jesus@theoutdoorplus.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2025-01-03 19:08:28.342825+00', ''),
	('00000000-0000-0000-0000-000000000000', '97a5c6b4-1b26-4208-97ed-9a385257a96b', '{"action":"user_modified","actor_id":"00000000-0000-0000-0000-000000000000","actor_username":"service_role","actor_via_sso":false,"log_type":"user","traits":{"user_email":"chuck@woodland.com","user_id":"aafde422-c655-4c2e-a3fa-2dcfaa42db07","user_phone":""}}', '2025-01-03 19:09:57.659311+00', ''),
	('00000000-0000-0000-0000-000000000000', '0f4a8eec-7a64-4ec8-8035-a94f02cb8858', '{"action":"user_modified","actor_id":"00000000-0000-0000-0000-000000000000","actor_username":"service_role","actor_via_sso":false,"log_type":"user","traits":{"user_email":"chuck@woodland.com","user_id":"aafde422-c655-4c2e-a3fa-2dcfaa42db07","user_phone":""}}', '2025-01-03 19:10:06.633002+00', ''),
	('00000000-0000-0000-0000-000000000000', '45882ae1-04fd-4ee8-805f-7a546ebdd2db', '{"action":"user_modified","actor_id":"00000000-0000-0000-0000-000000000000","actor_username":"service_role","actor_via_sso":false,"log_type":"user","traits":{"user_email":"chuck@woodland.com","user_id":"aafde422-c655-4c2e-a3fa-2dcfaa42db07","user_phone":""}}', '2025-01-03 19:10:41.394342+00', ''),
	('00000000-0000-0000-0000-000000000000', '209b33f9-82a6-407f-93a1-8521600ed8dd', '{"action":"login","actor_id":"d62c1453-900d-4d37-9e5a-0764720b61d4","actor_username":"jesus@theoutdoorplus.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2025-01-03 21:34:34.740381+00', ''),
	('00000000-0000-0000-0000-000000000000', '751d2478-c928-4ca8-8744-199ef1afbc97', '{"action":"user_modified","actor_id":"00000000-0000-0000-0000-000000000000","actor_username":"service_role","actor_via_sso":false,"log_type":"user","traits":{"user_email":"chuck@woodland.com","user_id":"aafde422-c655-4c2e-a3fa-2dcfaa42db07","user_phone":""}}', '2025-01-03 21:34:51.679425+00', ''),
	('00000000-0000-0000-0000-000000000000', '72a9ec94-7eb0-45b3-9126-333f00a5a498', '{"action":"user_modified","actor_id":"00000000-0000-0000-0000-000000000000","actor_username":"service_role","actor_via_sso":false,"log_type":"user","traits":{"user_email":"chuck@woodland.com","user_id":"aafde422-c655-4c2e-a3fa-2dcfaa42db07","user_phone":""}}', '2025-01-03 21:43:21.282888+00', ''),
	('00000000-0000-0000-0000-000000000000', '3ca3c312-7762-4c63-9cc8-0a4da37b1fea', '{"action":"user_deleted","actor_id":"00000000-0000-0000-0000-000000000000","actor_username":"service_role","actor_via_sso":false,"log_type":"team","traits":{"user_email":"rodrigo@theoutdoorplus.com","user_id":"d9489df7-1e52-44fe-add1-68f23c984231","user_phone":""}}', '2025-01-06 16:24:07.952158+00', ''),
	('00000000-0000-0000-0000-000000000000', '574a61ad-c6bf-40f9-8b5a-337922d2cbd5', '{"action":"user_signedup","actor_id":"00000000-0000-0000-0000-000000000000","actor_username":"service_role","actor_via_sso":false,"log_type":"team","traits":{"user_email":"rodrigo@theoutdoorplus.com","user_id":"dfa9232b-f6d1-4876-8808-0c44b226f297","user_phone":""}}', '2025-01-06 16:24:22.662029+00', ''),
	('00000000-0000-0000-0000-000000000000', '68e547cb-aa79-4cc4-949f-cc6c524f390c', '{"action":"login","actor_id":"dfa9232b-f6d1-4876-8808-0c44b226f297","actor_username":"rodrigo@theoutdoorplus.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2025-01-06 16:25:27.727919+00', ''),
	('00000000-0000-0000-0000-000000000000', '4bee9e0f-0732-4961-b1a6-699af13d1916', '{"action":"login","actor_id":"dfa9232b-f6d1-4876-8808-0c44b226f297","actor_username":"rodrigo@theoutdoorplus.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2025-01-06 16:25:40.813849+00', ''),
	('00000000-0000-0000-0000-000000000000', '23afc783-e519-4765-8031-f8306ab7d07a', '{"action":"login","actor_id":"dfa9232b-f6d1-4876-8808-0c44b226f297","actor_username":"rodrigo@theoutdoorplus.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2025-01-10 21:52:01.645735+00', ''),
	('00000000-0000-0000-0000-000000000000', '77d6a824-a940-42eb-8997-49f1f530e55c', '{"action":"logout","actor_id":"dfa9232b-f6d1-4876-8808-0c44b226f297","actor_username":"rodrigo@theoutdoorplus.com","actor_via_sso":false,"log_type":"account"}', '2025-01-10 21:52:12.505477+00', ''),
	('00000000-0000-0000-0000-000000000000', 'bb56860c-259d-4d16-8dcb-523a117765a6', '{"action":"login","actor_id":"dfa9232b-f6d1-4876-8808-0c44b226f297","actor_username":"rodrigo@theoutdoorplus.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2025-01-10 21:52:27.338258+00', ''),
	('00000000-0000-0000-0000-000000000000', '2ac535e1-4694-4e19-b395-760e4171f630', '{"action":"user_modified","actor_id":"00000000-0000-0000-0000-000000000000","actor_username":"service_role","actor_via_sso":false,"log_type":"user","traits":{"user_email":"chuck@woodland.com","user_id":"aafde422-c655-4c2e-a3fa-2dcfaa42db07","user_phone":""}}', '2025-01-10 21:52:45.849872+00', ''),
	('00000000-0000-0000-0000-000000000000', '1f75042b-106d-4645-ae00-af52fe63326e', '{"action":"logout","actor_id":"dfa9232b-f6d1-4876-8808-0c44b226f297","actor_username":"rodrigo@theoutdoorplus.com","actor_via_sso":false,"log_type":"account"}', '2025-01-10 21:52:49.389538+00', ''),
	('00000000-0000-0000-0000-000000000000', '89eb5ba0-7dee-4165-9f76-1817f649a70c', '{"action":"login","actor_id":"aafde422-c655-4c2e-a3fa-2dcfaa42db07","actor_username":"chuck@woodland.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2025-01-10 21:52:54.048716+00', ''),
	('00000000-0000-0000-0000-000000000000', '5b17c534-4fdd-4d19-a085-52f255a465e2', '{"action":"logout","actor_id":"aafde422-c655-4c2e-a3fa-2dcfaa42db07","actor_username":"chuck@woodland.com","actor_via_sso":false,"log_type":"account"}', '2025-01-10 21:53:07.429641+00', ''),
	('00000000-0000-0000-0000-000000000000', '83e35368-764e-4a63-8ce2-04d377adb749', '{"action":"login","actor_id":"dfa9232b-f6d1-4876-8808-0c44b226f297","actor_username":"rodrigo@theoutdoorplus.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2025-01-10 21:53:12.159622+00', ''),
	('00000000-0000-0000-0000-000000000000', 'a4f2ce63-f1b7-442e-862e-24560836541b', '{"action":"logout","actor_id":"dfa9232b-f6d1-4876-8808-0c44b226f297","actor_username":"rodrigo@theoutdoorplus.com","actor_via_sso":false,"log_type":"account"}', '2025-01-10 21:54:01.640473+00', ''),
	('00000000-0000-0000-0000-000000000000', '6e8f5098-44c0-4cb2-b835-fb0733f055f8', '{"action":"login","actor_id":"aafde422-c655-4c2e-a3fa-2dcfaa42db07","actor_username":"chuck@woodland.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2025-01-10 21:54:14.579554+00', ''),
	('00000000-0000-0000-0000-000000000000', '23b73f58-8d76-4024-a9eb-b1f80beb5bf4', '{"action":"logout","actor_id":"aafde422-c655-4c2e-a3fa-2dcfaa42db07","actor_username":"chuck@woodland.com","actor_via_sso":false,"log_type":"account"}', '2025-01-10 21:55:41.975353+00', ''),
	('00000000-0000-0000-0000-000000000000', '35a88267-fe5d-4d37-99a9-4cd0d95c56fa', '{"action":"login","actor_id":"dfa9232b-f6d1-4876-8808-0c44b226f297","actor_username":"rodrigo@theoutdoorplus.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2025-01-10 21:55:46.565826+00', ''),
	('00000000-0000-0000-0000-000000000000', 'a21ae8eb-b123-4368-b447-00a58c81e4da', '{"action":"login","actor_id":"dfa9232b-f6d1-4876-8808-0c44b226f297","actor_username":"rodrigo@theoutdoorplus.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2025-01-10 21:59:22.227609+00', ''),
	('00000000-0000-0000-0000-000000000000', 'ab19b560-226e-4c97-ae16-076a82032bb6', '{"action":"login","actor_id":"dfa9232b-f6d1-4876-8808-0c44b226f297","actor_username":"rodrigo@theoutdoorplus.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2025-01-10 21:59:30.157085+00', ''),
	('00000000-0000-0000-0000-000000000000', '2ed952bc-c219-4d30-ab96-443142028aa1', '{"action":"login","actor_id":"dfa9232b-f6d1-4876-8808-0c44b226f297","actor_username":"rodrigo@theoutdoorplus.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2025-01-10 21:59:51.498922+00', ''),
	('00000000-0000-0000-0000-000000000000', 'c941eb40-25d7-42c8-a896-02826ae4324a', '{"action":"token_refreshed","actor_id":"dfa9232b-f6d1-4876-8808-0c44b226f297","actor_username":"rodrigo@theoutdoorplus.com","actor_via_sso":false,"log_type":"token"}', '2025-01-11 00:09:01.507191+00', ''),
	('00000000-0000-0000-0000-000000000000', '5993a9cc-46c8-4ee6-adf7-ccdb7e21091d', '{"action":"token_revoked","actor_id":"dfa9232b-f6d1-4876-8808-0c44b226f297","actor_username":"rodrigo@theoutdoorplus.com","actor_via_sso":false,"log_type":"token"}', '2025-01-11 00:09:01.518609+00', ''),
	('00000000-0000-0000-0000-000000000000', 'e05687e8-f41c-4b63-97b0-f890c2458efb', '{"action":"token_refreshed","actor_id":"dfa9232b-f6d1-4876-8808-0c44b226f297","actor_username":"rodrigo@theoutdoorplus.com","actor_via_sso":false,"log_type":"token"}', '2025-01-13 17:00:38.106365+00', ''),
	('00000000-0000-0000-0000-000000000000', 'fc2564b1-16ef-41e3-986a-ea2cf3640dbb', '{"action":"token_revoked","actor_id":"dfa9232b-f6d1-4876-8808-0c44b226f297","actor_username":"rodrigo@theoutdoorplus.com","actor_via_sso":false,"log_type":"token"}', '2025-01-13 17:00:38.108941+00', ''),
	('00000000-0000-0000-0000-000000000000', 'dd871541-7102-4c32-9518-b783eb782c4b', '{"action":"login","actor_id":"dfa9232b-f6d1-4876-8808-0c44b226f297","actor_username":"rodrigo@theoutdoorplus.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2025-01-21 17:43:12.505836+00', ''),
	('00000000-0000-0000-0000-000000000000', '448cb50a-81e9-4435-b867-ac664f38e64a', '{"action":"login","actor_id":"dfa9232b-f6d1-4876-8808-0c44b226f297","actor_username":"rodrigo@theoutdoorplus.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2025-01-21 18:13:43.260861+00', ''),
	('00000000-0000-0000-0000-000000000000', '05f40017-60fc-4fe2-8e15-9b0870b8791b', '{"action":"login","actor_id":"dfa9232b-f6d1-4876-8808-0c44b226f297","actor_username":"rodrigo@theoutdoorplus.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2025-01-21 18:13:52.561797+00', ''),
	('00000000-0000-0000-0000-000000000000', '4c89c9a3-ed95-4cef-9655-bed69310391d', '{"action":"login","actor_id":"dfa9232b-f6d1-4876-8808-0c44b226f297","actor_username":"rodrigo@theoutdoorplus.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2025-01-21 18:17:41.434209+00', ''),
	('00000000-0000-0000-0000-000000000000', 'ee7b72fd-4814-495a-8c9e-e95a1ce249d7', '{"action":"login","actor_id":"dfa9232b-f6d1-4876-8808-0c44b226f297","actor_username":"rodrigo@theoutdoorplus.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2025-01-21 18:37:25.728262+00', ''),
	('00000000-0000-0000-0000-000000000000', '1fe88885-a1ed-4b1d-94f9-db55022cc4f4', '{"action":"login","actor_id":"dfa9232b-f6d1-4876-8808-0c44b226f297","actor_username":"rodrigo@theoutdoorplus.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2025-01-22 00:25:13.841542+00', ''),
	('00000000-0000-0000-0000-000000000000', '4341ec0c-6fae-44bd-a493-2b0c58510e2a', '{"action":"login","actor_id":"dfa9232b-f6d1-4876-8808-0c44b226f297","actor_username":"rodrigo@theoutdoorplus.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2025-01-22 00:32:18.844666+00', ''),
	('00000000-0000-0000-0000-000000000000', '96df4c35-dd68-4e83-9aba-cf73bc3edc19', '{"action":"login","actor_id":"dfa9232b-f6d1-4876-8808-0c44b226f297","actor_username":"rodrigo@theoutdoorplus.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2025-01-22 00:52:16.279251+00', ''),
	('00000000-0000-0000-0000-000000000000', '4b8a72e5-7d48-490c-b351-c6b68ed65a67', '{"action":"login","actor_id":"dfa9232b-f6d1-4876-8808-0c44b226f297","actor_username":"rodrigo@theoutdoorplus.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2025-01-22 01:00:32.582452+00', ''),
	('00000000-0000-0000-0000-000000000000', '3ba1d07b-0e0d-4197-b076-e61721806bdd', '{"action":"login","actor_id":"dfa9232b-f6d1-4876-8808-0c44b226f297","actor_username":"rodrigo@theoutdoorplus.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2025-01-22 01:02:14.31906+00', ''),
	('00000000-0000-0000-0000-000000000000', '293b3a3d-a597-4278-b828-1dbef50ac9b9', '{"action":"login","actor_id":"dfa9232b-f6d1-4876-8808-0c44b226f297","actor_username":"rodrigo@theoutdoorplus.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2025-01-23 16:21:21.50148+00', ''),
	('00000000-0000-0000-0000-000000000000', '4b9087f7-7f8e-42a9-ba25-bfc21b9f0f09', '{"action":"login","actor_id":"dfa9232b-f6d1-4876-8808-0c44b226f297","actor_username":"rodrigo@theoutdoorplus.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2025-01-23 20:03:57.142684+00', ''),
	('00000000-0000-0000-0000-000000000000', '52cff8f8-f138-4426-bd20-ed83df89b64c', '{"action":"login","actor_id":"dfa9232b-f6d1-4876-8808-0c44b226f297","actor_username":"rodrigo@theoutdoorplus.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2025-01-23 21:08:18.684013+00', ''),
	('00000000-0000-0000-0000-000000000000', 'cf82fbbc-ce5b-40f2-bfa6-963fde3bc292', '{"action":"login","actor_id":"dfa9232b-f6d1-4876-8808-0c44b226f297","actor_username":"rodrigo@theoutdoorplus.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2025-01-23 21:10:18.583363+00', ''),
	('00000000-0000-0000-0000-000000000000', '71649ae8-6cb3-477d-9461-30b67439728d', '{"action":"login","actor_id":"dfa9232b-f6d1-4876-8808-0c44b226f297","actor_username":"rodrigo@theoutdoorplus.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2025-01-23 21:19:25.373468+00', ''),
	('00000000-0000-0000-0000-000000000000', 'd4d2ae4d-3772-4fdb-ae94-794debab060f', '{"action":"login","actor_id":"dfa9232b-f6d1-4876-8808-0c44b226f297","actor_username":"rodrigo@theoutdoorplus.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2025-01-25 16:19:40.61204+00', ''),
	('00000000-0000-0000-0000-000000000000', '689570d5-b93e-4f44-835e-c73fcc03c1a7', '{"action":"login","actor_id":"dfa9232b-f6d1-4876-8808-0c44b226f297","actor_username":"rodrigo@theoutdoorplus.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2025-01-25 17:27:10.823955+00', ''),
	('00000000-0000-0000-0000-000000000000', 'd3fb8683-ddfd-4e56-94cc-f69e307d5327', '{"action":"login","actor_id":"dfa9232b-f6d1-4876-8808-0c44b226f297","actor_username":"rodrigo@theoutdoorplus.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2025-01-25 19:33:13.920351+00', ''),
	('00000000-0000-0000-0000-000000000000', '3784a834-24a4-4d9b-8870-b6a4cd614139', '{"action":"login","actor_id":"dfa9232b-f6d1-4876-8808-0c44b226f297","actor_username":"rodrigo@theoutdoorplus.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2025-01-27 16:53:12.513248+00', ''),
	('00000000-0000-0000-0000-000000000000', 'cb6d2459-9901-4f22-8267-01e789856faf', '{"action":"login","actor_id":"dfa9232b-f6d1-4876-8808-0c44b226f297","actor_username":"rodrigo@theoutdoorplus.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2025-01-27 17:55:25.113509+00', ''),
	('00000000-0000-0000-0000-000000000000', 'c1d752cd-e043-4fe3-9b0b-38e0d7e7e7a0', '{"action":"login","actor_id":"dfa9232b-f6d1-4876-8808-0c44b226f297","actor_username":"rodrigo@theoutdoorplus.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2025-01-28 00:16:36.476752+00', ''),
	('00000000-0000-0000-0000-000000000000', 'e0d022b9-62ed-495e-849d-abeac93cd4b4', '{"action":"login","actor_id":"dfa9232b-f6d1-4876-8808-0c44b226f297","actor_username":"rodrigo@theoutdoorplus.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2025-01-28 16:25:07.483541+00', ''),
	('00000000-0000-0000-0000-000000000000', '7957be1c-87fe-421c-9fc4-9db1ccff76e3', '{"action":"login","actor_id":"dfa9232b-f6d1-4876-8808-0c44b226f297","actor_username":"rodrigo@theoutdoorplus.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2025-01-28 18:29:22.056521+00', ''),
	('00000000-0000-0000-0000-000000000000', '71fa2a37-d987-471d-9e73-d0bb138bf89d', '{"action":"login","actor_id":"dfa9232b-f6d1-4876-8808-0c44b226f297","actor_username":"rodrigo@theoutdoorplus.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2025-01-28 20:55:20.46988+00', ''),
	('00000000-0000-0000-0000-000000000000', '15b77dc3-0377-4974-be61-71d633435e82', '{"action":"login","actor_id":"dfa9232b-f6d1-4876-8808-0c44b226f297","actor_username":"rodrigo@theoutdoorplus.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2025-01-28 22:27:14.750778+00', ''),
	('00000000-0000-0000-0000-000000000000', '4e78db34-6441-4c50-b9ab-f7114bd9564f', '{"action":"login","actor_id":"dfa9232b-f6d1-4876-8808-0c44b226f297","actor_username":"rodrigo@theoutdoorplus.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2025-01-29 01:06:00.120874+00', ''),
	('00000000-0000-0000-0000-000000000000', 'ae369503-f625-478f-9ee5-25e61cf606c6', '{"action":"login","actor_id":"dfa9232b-f6d1-4876-8808-0c44b226f297","actor_username":"rodrigo@theoutdoorplus.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2025-01-30 01:23:39.385343+00', ''),
	('00000000-0000-0000-0000-000000000000', 'b9d0d3a6-a7c9-49f6-ad7b-f09774ad6efa', '{"action":"login","actor_id":"dfa9232b-f6d1-4876-8808-0c44b226f297","actor_username":"rodrigo@theoutdoorplus.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2025-01-31 00:52:31.720464+00', ''),
	('00000000-0000-0000-0000-000000000000', '377403a2-d03a-472a-95de-46772e21db86', '{"action":"login","actor_id":"dfa9232b-f6d1-4876-8808-0c44b226f297","actor_username":"rodrigo@theoutdoorplus.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2025-02-01 00:07:06.081399+00', ''),
	('00000000-0000-0000-0000-000000000000', '9d9f4052-690b-4ce0-9ba8-fb0d588a3d64', '{"action":"login","actor_id":"dfa9232b-f6d1-4876-8808-0c44b226f297","actor_username":"rodrigo@theoutdoorplus.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2025-02-01 00:15:02.679869+00', ''),
	('00000000-0000-0000-0000-000000000000', '695403d7-979c-4ba8-935a-d12d3da1e016', '{"action":"login","actor_id":"dfa9232b-f6d1-4876-8808-0c44b226f297","actor_username":"rodrigo@theoutdoorplus.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2025-02-01 00:15:12.50804+00', ''),
	('00000000-0000-0000-0000-000000000000', '3444e390-9d90-4b69-a3f4-78efbff503c7', '{"action":"login","actor_id":"dfa9232b-f6d1-4876-8808-0c44b226f297","actor_username":"rodrigo@theoutdoorplus.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2025-02-01 17:38:44.118729+00', ''),
	('00000000-0000-0000-0000-000000000000', 'e17f0187-b7fd-4fc7-b23e-ebf270193fba', '{"action":"login","actor_id":"dfa9232b-f6d1-4876-8808-0c44b226f297","actor_username":"rodrigo@theoutdoorplus.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2025-02-01 20:06:15.797449+00', ''),
	('00000000-0000-0000-0000-000000000000', '9d2e3fb2-5365-46c1-8ba3-c503a0622159', '{"action":"token_refreshed","actor_id":"dfa9232b-f6d1-4876-8808-0c44b226f297","actor_username":"rodrigo@theoutdoorplus.com","actor_via_sso":false,"log_type":"token"}', '2025-02-01 20:09:35.144581+00', ''),
	('00000000-0000-0000-0000-000000000000', '45cbd634-050b-4c32-b5bc-6e2962a87b97', '{"action":"token_revoked","actor_id":"dfa9232b-f6d1-4876-8808-0c44b226f297","actor_username":"rodrigo@theoutdoorplus.com","actor_via_sso":false,"log_type":"token"}', '2025-02-01 20:09:35.145101+00', ''),
	('00000000-0000-0000-0000-000000000000', '4b0991b1-73b1-43fb-b611-d1cc04701474', '{"action":"login","actor_id":"dfa9232b-f6d1-4876-8808-0c44b226f297","actor_username":"rodrigo@theoutdoorplus.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2025-02-01 20:09:43.781847+00', ''),
	('00000000-0000-0000-0000-000000000000', 'e5f1aaa4-484d-4251-bf1c-2c3e36c6e335', '{"action":"token_refreshed","actor_id":"dfa9232b-f6d1-4876-8808-0c44b226f297","actor_username":"rodrigo@theoutdoorplus.com","actor_via_sso":false,"log_type":"token"}', '2025-02-03 15:48:20.797326+00', ''),
	('00000000-0000-0000-0000-000000000000', '40333785-5b1e-4406-b65b-b9a9c9f463b6', '{"action":"token_revoked","actor_id":"dfa9232b-f6d1-4876-8808-0c44b226f297","actor_username":"rodrigo@theoutdoorplus.com","actor_via_sso":false,"log_type":"token"}', '2025-02-03 15:48:20.798525+00', ''),
	('00000000-0000-0000-0000-000000000000', '4c86ec62-82aa-4eaa-ab4b-d9abdd49c87c', '{"action":"token_refreshed","actor_id":"dfa9232b-f6d1-4876-8808-0c44b226f297","actor_username":"rodrigo@theoutdoorplus.com","actor_via_sso":false,"log_type":"token"}', '2025-02-03 17:48:07.948084+00', ''),
	('00000000-0000-0000-0000-000000000000', '34d874d9-d756-443d-98e9-d3950471d7d2', '{"action":"token_revoked","actor_id":"dfa9232b-f6d1-4876-8808-0c44b226f297","actor_username":"rodrigo@theoutdoorplus.com","actor_via_sso":false,"log_type":"token"}', '2025-02-03 17:48:07.948895+00', ''),
	('00000000-0000-0000-0000-000000000000', '3e35ff12-698c-4ac3-8217-27895f28c339', '{"action":"logout","actor_id":"dfa9232b-f6d1-4876-8808-0c44b226f297","actor_username":"rodrigo@theoutdoorplus.com","actor_via_sso":false,"log_type":"account"}', '2025-02-03 17:48:08.026081+00', ''),
	('00000000-0000-0000-0000-000000000000', '1192cba0-7609-420e-9d83-c659b057d52a', '{"action":"login","actor_id":"dfa9232b-f6d1-4876-8808-0c44b226f297","actor_username":"rodrigo@theoutdoorplus.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2025-02-03 17:48:15.284413+00', ''),
	('00000000-0000-0000-0000-000000000000', 'b07cc729-f903-43e5-bea2-1243a5244a2f', '{"action":"user_modified","actor_id":"00000000-0000-0000-0000-000000000000","actor_username":"service_role","actor_via_sso":false,"log_type":"user","traits":{"user_email":"jordan@stellar.com","user_id":"b709f39c-7363-4b77-b981-24e383a96e4b","user_phone":""}}', '2025-02-03 17:48:41.406053+00', ''),
	('00000000-0000-0000-0000-000000000000', 'dd035e39-517f-477c-8c4a-e6d3e3628d88', '{"action":"user_modified","actor_id":"00000000-0000-0000-0000-000000000000","actor_username":"service_role","actor_via_sso":false,"log_type":"user","traits":{"user_email":"chuck@woodland.com","user_id":"aafde422-c655-4c2e-a3fa-2dcfaa42db07","user_phone":""}}', '2025-02-03 17:49:23.776871+00', ''),
	('00000000-0000-0000-0000-000000000000', 'ffea5cf9-89f3-4e13-b382-3b9ed72f80df', '{"action":"user_modified","actor_id":"00000000-0000-0000-0000-000000000000","actor_username":"service_role","actor_via_sso":false,"log_type":"user","traits":{"user_email":"jpittman@stellarsales.net","user_id":"4d9f3d20-b131-42dc-86ca-4564bfb248ee","user_phone":""}}', '2025-02-03 17:50:53.784322+00', ''),
	('00000000-0000-0000-0000-000000000000', 'da2f8d68-3226-4bbb-bc86-2b9ce69a710e', '{"action":"login","actor_id":"4d9f3d20-b131-42dc-86ca-4564bfb248ee","actor_username":"jpittman@stellarsales.net","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2025-02-03 17:53:04.53354+00', ''),
	('00000000-0000-0000-0000-000000000000', 'a8dacc1c-073a-421a-a76b-7eece3bfe608', '{"action":"login","actor_id":"aafde422-c655-4c2e-a3fa-2dcfaa42db07","actor_username":"chuck@woodland.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2025-02-03 17:53:22.303839+00', ''),
	('00000000-0000-0000-0000-000000000000', 'd954172b-fc09-41e1-b161-8f461c5c5ae8', '{"action":"login","actor_id":"dfa9232b-f6d1-4876-8808-0c44b226f297","actor_username":"rodrigo@theoutdoorplus.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2025-02-03 17:53:34.016984+00', ''),
	('00000000-0000-0000-0000-000000000000', '80400d49-68fe-4b41-ab85-280fe519e75f', '{"action":"token_refreshed","actor_id":"dfa9232b-f6d1-4876-8808-0c44b226f297","actor_username":"rodrigo@theoutdoorplus.com","actor_via_sso":false,"log_type":"token"}', '2025-02-03 19:54:12.3112+00', ''),
	('00000000-0000-0000-0000-000000000000', 'ba412eb7-4abc-4a48-9181-8c13a800f49c', '{"action":"token_revoked","actor_id":"dfa9232b-f6d1-4876-8808-0c44b226f297","actor_username":"rodrigo@theoutdoorplus.com","actor_via_sso":false,"log_type":"token"}', '2025-02-03 19:54:12.311751+00', ''),
	('00000000-0000-0000-0000-000000000000', '3fefdc76-0af4-49ae-afc8-a899b6e5a705', '{"action":"token_refreshed","actor_id":"dfa9232b-f6d1-4876-8808-0c44b226f297","actor_username":"rodrigo@theoutdoorplus.com","actor_via_sso":false,"log_type":"token"}', '2025-02-04 00:35:05.592535+00', ''),
	('00000000-0000-0000-0000-000000000000', '01ea190f-ec7e-42f4-a7e7-c2ca9c86d68f', '{"action":"token_revoked","actor_id":"dfa9232b-f6d1-4876-8808-0c44b226f297","actor_username":"rodrigo@theoutdoorplus.com","actor_via_sso":false,"log_type":"token"}', '2025-02-04 00:35:05.593582+00', ''),
	('00000000-0000-0000-0000-000000000000', '919e6967-ada7-4663-8da8-0945b1af02f6', '{"action":"logout","actor_id":"dfa9232b-f6d1-4876-8808-0c44b226f297","actor_username":"rodrigo@theoutdoorplus.com","actor_via_sso":false,"log_type":"account"}', '2025-02-04 00:35:05.68555+00', ''),
	('00000000-0000-0000-0000-000000000000', '2e01eae9-18ba-482f-8471-76f7ce8f899b', '{"action":"login","actor_id":"dfa9232b-f6d1-4876-8808-0c44b226f297","actor_username":"rodrigo@theoutdoorplus.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2025-02-04 00:35:09.799536+00', ''),
	('00000000-0000-0000-0000-000000000000', '13aac27c-c9f4-4eb3-88c9-f2546caab2f6', '{"action":"user_modified","actor_id":"00000000-0000-0000-0000-000000000000","actor_username":"service_role","actor_via_sso":false,"log_type":"user","traits":{"user_email":"jesus@theoutdoorplus.com","user_id":"d62c1453-900d-4d37-9e5a-0764720b61d4","user_phone":""}}', '2025-02-04 00:49:02.167015+00', ''),
	('00000000-0000-0000-0000-000000000000', '28d7b0e3-0f94-473f-975b-b5fafb17ec32', '{"action":"user_signedup","actor_id":"00000000-0000-0000-0000-000000000000","actor_username":"service_role","actor_via_sso":false,"log_type":"team","traits":{"user_email":"jains@theoutdoorplus.com","user_id":"4270f3e8-7539-44f0-a3da-703022bff3db","user_phone":""}}', '2025-02-04 00:51:15.516803+00', ''),
	('00000000-0000-0000-0000-000000000000', 'c16503ae-8efa-4830-bec8-b18174fd03f6', '{"action":"user_signedup","actor_id":"00000000-0000-0000-0000-000000000000","actor_username":"service_role","actor_via_sso":false,"log_type":"team","traits":{"user_email":"joe@theoutdoorplus.com","user_id":"3de1795e-2ef5-473f-a923-c29a41a015ae","user_phone":""}}', '2025-02-04 00:52:22.363014+00', ''),
	('00000000-0000-0000-0000-000000000000', '02d7e085-1aec-44d8-a0bf-b734140e0056', '{"action":"user_signedup","actor_id":"00000000-0000-0000-0000-000000000000","actor_username":"service_role","actor_via_sso":false,"log_type":"team","traits":{"user_email":"lupe@theoutdoorplus.com","user_id":"d745a622-6c4e-49a3-a839-a49879002e88","user_phone":""}}', '2025-02-04 00:53:47.881721+00', ''),
	('00000000-0000-0000-0000-000000000000', '240ffbbc-a7cb-466e-8641-198e4d144959', '{"action":"user_signedup","actor_id":"00000000-0000-0000-0000-000000000000","actor_username":"service_role","actor_via_sso":false,"log_type":"team","traits":{"user_email":"vince@theoutdoorplus.com","user_id":"b8ead642-d7dd-4202-8434-7d3d4c018330","user_phone":""}}', '2025-02-04 00:57:59.993715+00', ''),
	('00000000-0000-0000-0000-000000000000', 'ee55425e-9af2-4393-b838-ca50a8384d0a', '{"action":"token_refreshed","actor_id":"dfa9232b-f6d1-4876-8808-0c44b226f297","actor_username":"rodrigo@theoutdoorplus.com","actor_via_sso":false,"log_type":"token"}', '2025-02-04 16:25:45.076425+00', ''),
	('00000000-0000-0000-0000-000000000000', 'a87660cf-7a18-4bb3-ac5d-3c3b0e9ff683', '{"action":"token_revoked","actor_id":"dfa9232b-f6d1-4876-8808-0c44b226f297","actor_username":"rodrigo@theoutdoorplus.com","actor_via_sso":false,"log_type":"token"}', '2025-02-04 16:25:45.077024+00', ''),
	('00000000-0000-0000-0000-000000000000', '9d1b6e6a-3f17-4a3d-aac9-076811c5e44e', '{"action":"user_signedup","actor_id":"00000000-0000-0000-0000-000000000000","actor_username":"service_role","actor_via_sso":false,"log_type":"team","traits":{"user_email":"daniel@theoutdoorplus.com","user_id":"d8741294-20f3-4f75-8f64-1017831e4bcb","user_phone":""}}', '2025-02-04 16:30:31.431517+00', ''),
	('00000000-0000-0000-0000-000000000000', '12b3b32b-566f-4513-aec7-7a92e270daa8', '{"action":"token_refreshed","actor_id":"dfa9232b-f6d1-4876-8808-0c44b226f297","actor_username":"rodrigo@theoutdoorplus.com","actor_via_sso":false,"log_type":"token"}', '2025-02-04 18:11:30.972332+00', ''),
	('00000000-0000-0000-0000-000000000000', 'e1b97460-9dd9-4198-a3c5-d4e1934416de', '{"action":"token_revoked","actor_id":"dfa9232b-f6d1-4876-8808-0c44b226f297","actor_username":"rodrigo@theoutdoorplus.com","actor_via_sso":false,"log_type":"token"}', '2025-02-04 18:11:30.972881+00', ''),
	('00000000-0000-0000-0000-000000000000', '6f7e3e20-ecfb-4602-a64a-c6e23901eb44', '{"action":"user_signedup","actor_id":"00000000-0000-0000-0000-000000000000","actor_username":"service_role","actor_via_sso":false,"log_type":"team","traits":{"user_email":"daniel@theoutdoorplus.com","user_id":"0fd6ae12-24cc-4f62-b6c9-6a776a2e1b1e","user_phone":""}}', '2025-02-04 18:23:47.43934+00', ''),
	('00000000-0000-0000-0000-000000000000', '5aac0e2d-e8e0-4750-a9c2-2d365420632b', '{"action":"user_signedup","actor_id":"00000000-0000-0000-0000-000000000000","actor_username":"service_role","actor_via_sso":false,"log_type":"team","traits":{"user_email":"jesus@theoutdoorplus.com","user_id":"f40adc20-e16b-434d-9903-3c22df70079a","user_phone":""}}', '2025-02-04 18:24:58.325957+00', ''),
	('00000000-0000-0000-0000-000000000000', 'dbc7a4bb-79cc-47a8-b601-78a8d7393bfa', '{"action":"user_signedup","actor_id":"00000000-0000-0000-0000-000000000000","actor_username":"service_role","actor_via_sso":false,"log_type":"team","traits":{"user_email":"jains@theoutdoorplus.com","user_id":"2a9eaede-ce3d-4910-b597-9814d6c5872e","user_phone":""}}', '2025-02-04 18:25:17.553137+00', ''),
	('00000000-0000-0000-0000-000000000000', '5cd17768-aedf-45fe-b0cb-867cb81892c8', '{"action":"user_signedup","actor_id":"00000000-0000-0000-0000-000000000000","actor_username":"service_role","actor_via_sso":false,"log_type":"team","traits":{"user_email":"joe@theoutdoorplus.com","user_id":"7d359261-b3c0-44dc-a232-f8e08f92ae0d","user_phone":""}}', '2025-02-04 18:25:32.504058+00', ''),
	('00000000-0000-0000-0000-000000000000', '2b211729-7244-4dd4-8108-dcfd7697cfa0', '{"action":"user_signedup","actor_id":"00000000-0000-0000-0000-000000000000","actor_username":"service_role","actor_via_sso":false,"log_type":"team","traits":{"user_email":"lupe@theoutdoorplus.com","user_id":"ac7b47a1-b77e-4fad-b1fa-fca160d61009","user_phone":""}}', '2025-02-04 18:25:45.723809+00', ''),
	('00000000-0000-0000-0000-000000000000', '5c028352-3caa-4b95-a2fb-d8f45a307b2c', '{"action":"user_signedup","actor_id":"00000000-0000-0000-0000-000000000000","actor_username":"service_role","actor_via_sso":false,"log_type":"team","traits":{"user_email":"vince@theoutdoorplus.com","user_id":"7430693a-63c7-4e8e-807e-83e8a471de61","user_phone":""}}', '2025-02-04 18:26:00.498222+00', ''),
	('00000000-0000-0000-0000-000000000000', '1393bc72-421a-4daf-b0a3-3766f666b0b3', '{"action":"login","actor_id":"dfa9232b-f6d1-4876-8808-0c44b226f297","actor_username":"rodrigo@theoutdoorplus.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2025-02-04 19:45:24.042989+00', ''),
	('00000000-0000-0000-0000-000000000000', '6c39e0d9-4a6a-46a7-9534-30b98f286791', '{"action":"login","actor_id":"dfa9232b-f6d1-4876-8808-0c44b226f297","actor_username":"rodrigo@theoutdoorplus.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2025-02-04 20:09:50.519651+00', ''),
	('00000000-0000-0000-0000-000000000000', '57007079-3d32-42a9-af14-9b61854db6c9', '{"action":"login","actor_id":"dfa9232b-f6d1-4876-8808-0c44b226f297","actor_username":"rodrigo@theoutdoorplus.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2025-02-04 20:30:16.677411+00', ''),
	('00000000-0000-0000-0000-000000000000', '178f3bd2-51b3-40a5-a75b-9216706e34a4', '{"action":"token_refreshed","actor_id":"dfa9232b-f6d1-4876-8808-0c44b226f297","actor_username":"rodrigo@theoutdoorplus.com","actor_via_sso":false,"log_type":"token"}', '2025-02-04 21:56:17.033929+00', ''),
	('00000000-0000-0000-0000-000000000000', 'eede0046-bc94-4c1f-bb7b-f31e02ad1aa2', '{"action":"token_revoked","actor_id":"dfa9232b-f6d1-4876-8808-0c44b226f297","actor_username":"rodrigo@theoutdoorplus.com","actor_via_sso":false,"log_type":"token"}', '2025-02-04 21:56:17.034641+00', ''),
	('00000000-0000-0000-0000-000000000000', '16590f69-85de-4395-b22a-6c771a5ee3b7', '{"action":"logout","actor_id":"dfa9232b-f6d1-4876-8808-0c44b226f297","actor_username":"rodrigo@theoutdoorplus.com","actor_via_sso":false,"log_type":"account"}', '2025-02-04 21:56:17.114647+00', ''),
	('00000000-0000-0000-0000-000000000000', '8c3ad579-5300-4769-94e8-4e89615bf742', '{"action":"login","actor_id":"dfa9232b-f6d1-4876-8808-0c44b226f297","actor_username":"rodrigo@theoutdoorplus.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2025-02-04 23:06:20.638845+00', ''),
	('00000000-0000-0000-0000-000000000000', '6600f399-213a-4a7c-9e70-e48ab6e45cda', '{"action":"login","actor_id":"dfa9232b-f6d1-4876-8808-0c44b226f297","actor_username":"rodrigo@theoutdoorplus.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2025-02-04 23:44:39.951746+00', ''),
	('00000000-0000-0000-0000-000000000000', '7420aed5-57bb-4e0e-a060-221554848b82', '{"action":"token_refreshed","actor_id":"dfa9232b-f6d1-4876-8808-0c44b226f297","actor_username":"rodrigo@theoutdoorplus.com","actor_via_sso":false,"log_type":"token"}', '2025-02-05 00:04:24.235354+00', ''),
	('00000000-0000-0000-0000-000000000000', '3ea4a09d-16bd-4275-b71a-db31e2630fc1', '{"action":"token_revoked","actor_id":"dfa9232b-f6d1-4876-8808-0c44b226f297","actor_username":"rodrigo@theoutdoorplus.com","actor_via_sso":false,"log_type":"token"}', '2025-02-05 00:04:24.235925+00', ''),
	('00000000-0000-0000-0000-000000000000', '54b4d642-00df-462b-b3e4-517f4eda4de5', '{"action":"token_refreshed","actor_id":"dfa9232b-f6d1-4876-8808-0c44b226f297","actor_username":"rodrigo@theoutdoorplus.com","actor_via_sso":false,"log_type":"token"}', '2025-02-05 01:02:44.947686+00', ''),
	('00000000-0000-0000-0000-000000000000', '97b91aaa-5f13-40d8-b8e2-d6095521689d', '{"action":"token_revoked","actor_id":"dfa9232b-f6d1-4876-8808-0c44b226f297","actor_username":"rodrigo@theoutdoorplus.com","actor_via_sso":false,"log_type":"token"}', '2025-02-05 01:02:44.948303+00', ''),
	('00000000-0000-0000-0000-000000000000', 'd5670a8b-2f15-4c63-a4e2-c4ce397b43b8', '{"action":"login","actor_id":"dfa9232b-f6d1-4876-8808-0c44b226f297","actor_username":"rodrigo@theoutdoorplus.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2025-02-05 01:03:33.776256+00', ''),
	('00000000-0000-0000-0000-000000000000', '162d9546-2be1-4ccd-a437-e221b66fe710', '{"action":"token_refreshed","actor_id":"dfa9232b-f6d1-4876-8808-0c44b226f297","actor_username":"rodrigo@theoutdoorplus.com","actor_via_sso":false,"log_type":"token"}', '2025-02-05 16:19:42.736938+00', ''),
	('00000000-0000-0000-0000-000000000000', 'b8ffdb3d-7fa5-4fec-94a0-4966101b80a2', '{"action":"token_revoked","actor_id":"dfa9232b-f6d1-4876-8808-0c44b226f297","actor_username":"rodrigo@theoutdoorplus.com","actor_via_sso":false,"log_type":"token"}', '2025-02-05 16:19:42.737842+00', ''),
	('00000000-0000-0000-0000-000000000000', '35e371aa-b9f9-47e3-8469-20f8da59116f', '{"action":"login","actor_id":"dfa9232b-f6d1-4876-8808-0c44b226f297","actor_username":"rodrigo@theoutdoorplus.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2025-02-05 16:54:53.734309+00', ''),
	('00000000-0000-0000-0000-000000000000', '566df82b-33f2-4899-b7f2-0ac09b194175', '{"action":"token_refreshed","actor_id":"dfa9232b-f6d1-4876-8808-0c44b226f297","actor_username":"rodrigo@theoutdoorplus.com","actor_via_sso":false,"log_type":"token"}', '2025-02-05 17:18:11.036711+00', ''),
	('00000000-0000-0000-0000-000000000000', '449d5faf-03c8-491f-9a6d-d7af15a06d51', '{"action":"token_revoked","actor_id":"dfa9232b-f6d1-4876-8808-0c44b226f297","actor_username":"rodrigo@theoutdoorplus.com","actor_via_sso":false,"log_type":"token"}', '2025-02-05 17:18:11.037645+00', ''),
	('00000000-0000-0000-0000-000000000000', 'f39e0fae-a51c-47c3-86d5-495fc2ab1901', '{"action":"login","actor_id":"dfa9232b-f6d1-4876-8808-0c44b226f297","actor_username":"rodrigo@theoutdoorplus.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2025-02-05 18:41:40.978454+00', ''),
	('00000000-0000-0000-0000-000000000000', 'dc58b7c2-cf4e-41a9-b1a7-a60446432445', '{"action":"token_refreshed","actor_id":"dfa9232b-f6d1-4876-8808-0c44b226f297","actor_username":"rodrigo@theoutdoorplus.com","actor_via_sso":false,"log_type":"token"}', '2025-02-05 19:24:45.543743+00', ''),
	('00000000-0000-0000-0000-000000000000', '82477e26-8331-4947-bfdd-9d1ac5f859dd', '{"action":"token_revoked","actor_id":"dfa9232b-f6d1-4876-8808-0c44b226f297","actor_username":"rodrigo@theoutdoorplus.com","actor_via_sso":false,"log_type":"token"}', '2025-02-05 19:24:45.544536+00', ''),
	('00000000-0000-0000-0000-000000000000', 'aa5a1162-9271-4d01-b867-9703534307d8', '{"action":"user_signedup","actor_id":"00000000-0000-0000-0000-000000000000","actor_username":"service_role","actor_via_sso":false,"log_type":"team","traits":{"user_email":"liz@theoutdoorplus.com","user_id":"cda1d40a-de6a-407f-8d9f-c88f665b6cbf","user_phone":""}}', '2025-02-05 19:38:40.608179+00', ''),
	('00000000-0000-0000-0000-000000000000', '9161140d-f04f-4c86-a916-210c8354e2e3', '{"action":"login","actor_id":"dfa9232b-f6d1-4876-8808-0c44b226f297","actor_username":"rodrigo@theoutdoorplus.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2025-02-05 20:04:16.272048+00', ''),
	('00000000-0000-0000-0000-000000000000', '6ccd5cbb-81e9-4147-b59f-acd885d9849b', '{"action":"token_refreshed","actor_id":"dfa9232b-f6d1-4876-8808-0c44b226f297","actor_username":"rodrigo@theoutdoorplus.com","actor_via_sso":false,"log_type":"token"}', '2025-02-05 20:28:29.409124+00', ''),
	('00000000-0000-0000-0000-000000000000', '8e210fa8-7703-4237-9c97-ca29f7a748b5', '{"action":"token_revoked","actor_id":"dfa9232b-f6d1-4876-8808-0c44b226f297","actor_username":"rodrigo@theoutdoorplus.com","actor_via_sso":false,"log_type":"token"}', '2025-02-05 20:28:29.409814+00', ''),
	('00000000-0000-0000-0000-000000000000', '6be53483-b7c9-4a71-b488-be5118029e15', '{"action":"token_refreshed","actor_id":"dfa9232b-f6d1-4876-8808-0c44b226f297","actor_username":"rodrigo@theoutdoorplus.com","actor_via_sso":false,"log_type":"token"}', '2025-02-05 22:19:22.444868+00', ''),
	('00000000-0000-0000-0000-000000000000', '2d7f7ee9-c04f-4396-8f8e-519a92444e6c', '{"action":"token_revoked","actor_id":"dfa9232b-f6d1-4876-8808-0c44b226f297","actor_username":"rodrigo@theoutdoorplus.com","actor_via_sso":false,"log_type":"token"}', '2025-02-05 22:19:22.446459+00', ''),
	('00000000-0000-0000-0000-000000000000', 'daab1c8b-505f-4e37-a6b8-c89f9ecdc8cf', '{"action":"token_refreshed","actor_id":"dfa9232b-f6d1-4876-8808-0c44b226f297","actor_username":"rodrigo@theoutdoorplus.com","actor_via_sso":false,"log_type":"token"}', '2025-02-06 00:51:38.265655+00', ''),
	('00000000-0000-0000-0000-000000000000', '165b3df5-4323-45d2-8969-f9fc5f85a6ec', '{"action":"token_revoked","actor_id":"dfa9232b-f6d1-4876-8808-0c44b226f297","actor_username":"rodrigo@theoutdoorplus.com","actor_via_sso":false,"log_type":"token"}', '2025-02-06 00:51:38.266151+00', ''),
	('00000000-0000-0000-0000-000000000000', '77c17fd8-2d27-404f-969b-74cd50e6b239', '{"action":"login","actor_id":"dfa9232b-f6d1-4876-8808-0c44b226f297","actor_username":"rodrigo@theoutdoorplus.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2025-02-06 01:13:25.3848+00', ''),
	('00000000-0000-0000-0000-000000000000', '92321e3b-426d-4584-974c-6377546c7a76', '{"action":"login","actor_id":"cda1d40a-de6a-407f-8d9f-c88f665b6cbf","actor_username":"liz@theoutdoorplus.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2025-02-06 16:32:03.163093+00', ''),
	('00000000-0000-0000-0000-000000000000', '1dccd8e6-47ed-4e0d-84f2-5cb14ae5f861', '{"action":"token_refreshed","actor_id":"dfa9232b-f6d1-4876-8808-0c44b226f297","actor_username":"rodrigo@theoutdoorplus.com","actor_via_sso":false,"log_type":"token"}', '2025-02-06 16:47:32.828101+00', ''),
	('00000000-0000-0000-0000-000000000000', '799c35b5-8da7-4e65-8a2c-8288780d13be', '{"action":"token_revoked","actor_id":"dfa9232b-f6d1-4876-8808-0c44b226f297","actor_username":"rodrigo@theoutdoorplus.com","actor_via_sso":false,"log_type":"token"}', '2025-02-06 16:47:32.82912+00', ''),
	('00000000-0000-0000-0000-000000000000', '0e4125b8-3551-44fa-a10e-ad65f03b4dcd', '{"action":"login","actor_id":"dfa9232b-f6d1-4876-8808-0c44b226f297","actor_username":"rodrigo@theoutdoorplus.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2025-02-06 16:47:56.929795+00', ''),
	('00000000-0000-0000-0000-000000000000', '691d072f-65f3-4af2-a084-fe9f2d866c48', '{"action":"token_refreshed","actor_id":"cda1d40a-de6a-407f-8d9f-c88f665b6cbf","actor_username":"liz@theoutdoorplus.com","actor_via_sso":false,"log_type":"token"}', '2025-02-06 18:24:50.382685+00', ''),
	('00000000-0000-0000-0000-000000000000', '27ef9368-9a83-4e7c-b2fa-95b152b9c075', '{"action":"token_revoked","actor_id":"cda1d40a-de6a-407f-8d9f-c88f665b6cbf","actor_username":"liz@theoutdoorplus.com","actor_via_sso":false,"log_type":"token"}', '2025-02-06 18:24:50.383251+00', ''),
	('00000000-0000-0000-0000-000000000000', 'b18202df-e0a9-489e-90aa-3cbffdba7763', '{"action":"login","actor_id":"2a9eaede-ce3d-4910-b597-9814d6c5872e","actor_username":"jains@theoutdoorplus.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2025-02-06 18:33:11.541929+00', ''),
	('00000000-0000-0000-0000-000000000000', 'a8b884ee-54e3-4e46-92d4-f087dcd8d83f', '{"action":"user_signedup","actor_id":"00000000-0000-0000-0000-000000000000","actor_username":"service_role","actor_via_sso":false,"log_type":"team","traits":{"user_email":"ixv7299@gmail.com","user_id":"8a940c63-0073-433b-9d90-ecfc0b4a79b5","user_phone":""}}', '2025-02-06 18:36:55.025693+00', ''),
	('00000000-0000-0000-0000-000000000000', '02d62f46-d39d-4b27-a3cb-07e9a5bd44fe', '{"action":"login","actor_id":"dfa9232b-f6d1-4876-8808-0c44b226f297","actor_username":"rodrigo@theoutdoorplus.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2025-02-06 18:40:43.793768+00', ''),
	('00000000-0000-0000-0000-000000000000', '888034f8-9fcd-4ef4-9946-88311b42b3e5', '{"action":"login","actor_id":"2a9eaede-ce3d-4910-b597-9814d6c5872e","actor_username":"jains@theoutdoorplus.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2025-02-06 18:42:27.257342+00', ''),
	('00000000-0000-0000-0000-000000000000', 'a74a1e29-3161-40f8-97b6-472dfced1916', '{"action":"user_modified","actor_id":"00000000-0000-0000-0000-000000000000","actor_username":"service_role","actor_via_sso":false,"log_type":"user","traits":{"user_email":"ixv7299@gmail.com","user_id":"8a940c63-0073-433b-9d90-ecfc0b4a79b5","user_phone":""}}', '2025-02-06 18:44:13.013629+00', ''),
	('00000000-0000-0000-0000-000000000000', '86b506f3-0805-4eb9-9f47-34656139ea71', '{"action":"token_refreshed","actor_id":"dfa9232b-f6d1-4876-8808-0c44b226f297","actor_username":"rodrigo@theoutdoorplus.com","actor_via_sso":false,"log_type":"token"}', '2025-02-06 19:22:44.080174+00', ''),
	('00000000-0000-0000-0000-000000000000', 'e8fe9daf-29e8-492b-9051-b3018a3097af', '{"action":"token_revoked","actor_id":"dfa9232b-f6d1-4876-8808-0c44b226f297","actor_username":"rodrigo@theoutdoorplus.com","actor_via_sso":false,"log_type":"token"}', '2025-02-06 19:22:44.080813+00', ''),
	('00000000-0000-0000-0000-000000000000', '40218e0c-d7ce-457b-bb87-07e40251d4a2', '{"action":"logout","actor_id":"dfa9232b-f6d1-4876-8808-0c44b226f297","actor_username":"rodrigo@theoutdoorplus.com","actor_via_sso":false,"log_type":"account"}', '2025-02-06 19:22:44.148478+00', ''),
	('00000000-0000-0000-0000-000000000000', 'e9d8de5c-f487-4811-89ad-df8cc38db029', '{"action":"login","actor_id":"dfa9232b-f6d1-4876-8808-0c44b226f297","actor_username":"rodrigo@theoutdoorplus.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2025-02-06 19:22:47.714713+00', ''),
	('00000000-0000-0000-0000-000000000000', 'e2ac6c2c-5128-4e9d-96ab-a63af77a98ae', '{"action":"token_refreshed","actor_id":"cda1d40a-de6a-407f-8d9f-c88f665b6cbf","actor_username":"liz@theoutdoorplus.com","actor_via_sso":false,"log_type":"token"}', '2025-02-06 19:28:20.29346+00', ''),
	('00000000-0000-0000-0000-000000000000', '19d59d89-1e46-40d9-91e5-815e82af7592', '{"action":"token_revoked","actor_id":"cda1d40a-de6a-407f-8d9f-c88f665b6cbf","actor_username":"liz@theoutdoorplus.com","actor_via_sso":false,"log_type":"token"}', '2025-02-06 19:28:20.294429+00', ''),
	('00000000-0000-0000-0000-000000000000', 'b931c2af-844f-458e-a6ee-c7c32b265839', '{"action":"logout","actor_id":"dfa9232b-f6d1-4876-8808-0c44b226f297","actor_username":"rodrigo@theoutdoorplus.com","actor_via_sso":false,"log_type":"account"}', '2025-02-06 19:52:57.384062+00', ''),
	('00000000-0000-0000-0000-000000000000', 'f821fcfc-fa26-4f4e-81cf-d45bddaa7033', '{"action":"login","actor_id":"dfa9232b-f6d1-4876-8808-0c44b226f297","actor_username":"rodrigo@theoutdoorplus.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2025-02-06 19:53:11.474367+00', ''),
	('00000000-0000-0000-0000-000000000000', 'e1e85523-4a9c-4b0a-94bf-b9803c3cb03a', '{"action":"logout","actor_id":"dfa9232b-f6d1-4876-8808-0c44b226f297","actor_username":"rodrigo@theoutdoorplus.com","actor_via_sso":false,"log_type":"account"}', '2025-02-06 19:54:01.611932+00', ''),
	('00000000-0000-0000-0000-000000000000', '5e86c32d-9d38-410b-89d2-4dbbfe44ef2f', '{"action":"login","actor_id":"dfa9232b-f6d1-4876-8808-0c44b226f297","actor_username":"rodrigo@theoutdoorplus.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2025-02-06 19:54:07.319578+00', ''),
	('00000000-0000-0000-0000-000000000000', '6fad9262-9155-47af-807c-1dcfecd0fbdd', '{"action":"user_signedup","actor_id":"00000000-0000-0000-0000-000000000000","actor_username":"service_role","actor_via_sso":false,"log_type":"team","traits":{"user_email":"dealer@topdashboard.com","user_id":"39933bc3-319c-44a2-9b6c-6d0daecbd9a5","user_phone":""}}', '2025-02-06 19:55:29.113738+00', ''),
	('00000000-0000-0000-0000-000000000000', 'cc0235a0-1f64-4482-9b0d-7d2160c85ded', '{"action":"logout","actor_id":"dfa9232b-f6d1-4876-8808-0c44b226f297","actor_username":"rodrigo@theoutdoorplus.com","actor_via_sso":false,"log_type":"account"}', '2025-02-06 19:55:32.836217+00', ''),
	('00000000-0000-0000-0000-000000000000', 'cb494a9c-900a-4988-b1c9-2661c0ad9bd7', '{"action":"login","actor_id":"39933bc3-319c-44a2-9b6c-6d0daecbd9a5","actor_username":"dealer@topdashboard.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2025-02-06 19:55:38.807233+00', ''),
	('00000000-0000-0000-0000-000000000000', '407f2c9c-8b27-4cba-ad20-f974cfa01d8b', '{"action":"login","actor_id":"dfa9232b-f6d1-4876-8808-0c44b226f297","actor_username":"rodrigo@theoutdoorplus.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2025-02-06 20:08:54.607857+00', ''),
	('00000000-0000-0000-0000-000000000000', '4828d1a2-67a3-485d-8bad-db861ec76e99', '{"action":"token_refreshed","actor_id":"cda1d40a-de6a-407f-8d9f-c88f665b6cbf","actor_username":"liz@theoutdoorplus.com","actor_via_sso":false,"log_type":"token"}', '2025-02-06 20:49:17.540147+00', ''),
	('00000000-0000-0000-0000-000000000000', 'dbc0c094-b3bd-41fe-992c-be495b386377', '{"action":"token_revoked","actor_id":"cda1d40a-de6a-407f-8d9f-c88f665b6cbf","actor_username":"liz@theoutdoorplus.com","actor_via_sso":false,"log_type":"token"}', '2025-02-06 20:49:17.542297+00', ''),
	('00000000-0000-0000-0000-000000000000', 'd12df435-df97-41c7-8f02-df60133d0dbb', '{"action":"token_refreshed","actor_id":"39933bc3-319c-44a2-9b6c-6d0daecbd9a5","actor_username":"dealer@topdashboard.com","actor_via_sso":false,"log_type":"token"}', '2025-02-06 20:53:55.455867+00', ''),
	('00000000-0000-0000-0000-000000000000', 'ab83eadc-0807-480e-8eb3-79702c01f20e', '{"action":"token_revoked","actor_id":"39933bc3-319c-44a2-9b6c-6d0daecbd9a5","actor_username":"dealer@topdashboard.com","actor_via_sso":false,"log_type":"token"}', '2025-02-06 20:53:55.456741+00', ''),
	('00000000-0000-0000-0000-000000000000', '3e88a0a2-7f81-4312-b6a7-b0e875204d70', '{"action":"token_refreshed","actor_id":"39933bc3-319c-44a2-9b6c-6d0daecbd9a5","actor_username":"dealer@topdashboard.com","actor_via_sso":false,"log_type":"token"}', '2025-02-06 22:04:18.105827+00', ''),
	('00000000-0000-0000-0000-000000000000', '5c39fcaa-2aa2-4275-a2a6-d5d632f99772', '{"action":"token_revoked","actor_id":"39933bc3-319c-44a2-9b6c-6d0daecbd9a5","actor_username":"dealer@topdashboard.com","actor_via_sso":false,"log_type":"token"}', '2025-02-06 22:04:18.106359+00', ''),
	('00000000-0000-0000-0000-000000000000', 'b1f972f4-6948-441b-8dfc-6e66d526e484', '{"action":"token_refreshed","actor_id":"2a9eaede-ce3d-4910-b597-9814d6c5872e","actor_username":"jains@theoutdoorplus.com","actor_via_sso":false,"log_type":"token"}', '2025-02-06 22:10:33.100922+00', ''),
	('00000000-0000-0000-0000-000000000000', 'a687a770-9300-4290-9a4b-1f5462bb9d8b', '{"action":"token_revoked","actor_id":"2a9eaede-ce3d-4910-b597-9814d6c5872e","actor_username":"jains@theoutdoorplus.com","actor_via_sso":false,"log_type":"token"}', '2025-02-06 22:10:33.102338+00', ''),
	('00000000-0000-0000-0000-000000000000', 'cf894170-9c8a-4f6f-877f-16c0b95f42a3', '{"action":"logout","actor_id":"2a9eaede-ce3d-4910-b597-9814d6c5872e","actor_username":"jains@theoutdoorplus.com","actor_via_sso":false,"log_type":"account"}', '2025-02-06 22:10:33.412707+00', ''),
	('00000000-0000-0000-0000-000000000000', 'bcbed7f6-d7e5-4cee-b8a4-6e43b9f1ea09', '{"action":"login","actor_id":"39933bc3-319c-44a2-9b6c-6d0daecbd9a5","actor_username":"dealer@topdashboard.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2025-02-06 22:10:52.981992+00', ''),
	('00000000-0000-0000-0000-000000000000', '4b85ab12-ac18-4c3d-93ce-6ce76af0d95a', '{"action":"logout","actor_id":"39933bc3-319c-44a2-9b6c-6d0daecbd9a5","actor_username":"dealer@topdashboard.com","actor_via_sso":false,"log_type":"account"}', '2025-02-06 22:17:08.854126+00', ''),
	('00000000-0000-0000-0000-000000000000', '31d80ed3-a1da-478a-a748-692b70722289', '{"action":"login","actor_id":"39933bc3-319c-44a2-9b6c-6d0daecbd9a5","actor_username":"dealer@topdashboard.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2025-02-06 22:17:21.970099+00', ''),
	('00000000-0000-0000-0000-000000000000', 'd4368e18-d344-4cbc-accd-f97a3a8d5426', '{"action":"logout","actor_id":"39933bc3-319c-44a2-9b6c-6d0daecbd9a5","actor_username":"dealer@topdashboard.com","actor_via_sso":false,"log_type":"account"}', '2025-02-06 22:49:42.818921+00', ''),
	('00000000-0000-0000-0000-000000000000', '72115b8a-3061-4c88-a6c8-a697f02c6ce0', '{"action":"login","actor_id":"39933bc3-319c-44a2-9b6c-6d0daecbd9a5","actor_username":"dealer@topdashboard.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2025-02-06 22:49:52.651717+00', ''),
	('00000000-0000-0000-0000-000000000000', '920a00ae-0b11-479c-b3af-b5a899d4214c', '{"action":"logout","actor_id":"39933bc3-319c-44a2-9b6c-6d0daecbd9a5","actor_username":"dealer@topdashboard.com","actor_via_sso":false,"log_type":"account"}', '2025-02-06 22:54:31.454323+00', ''),
	('00000000-0000-0000-0000-000000000000', '09ac016d-2543-4d58-97f9-b4bf5b05ef7c', '{"action":"login","actor_id":"39933bc3-319c-44a2-9b6c-6d0daecbd9a5","actor_username":"dealer@topdashboard.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2025-02-06 22:54:33.811564+00', ''),
	('00000000-0000-0000-0000-000000000000', 'e9b4cc94-a66d-44fa-99c4-46758aa2e48c', '{"action":"logout","actor_id":"39933bc3-319c-44a2-9b6c-6d0daecbd9a5","actor_username":"dealer@topdashboard.com","actor_via_sso":false,"log_type":"account"}', '2025-02-06 22:56:45.941157+00', ''),
	('00000000-0000-0000-0000-000000000000', 'c262879f-5779-44c5-b2b8-8c6ed7d5eccc', '{"action":"login","actor_id":"39933bc3-319c-44a2-9b6c-6d0daecbd9a5","actor_username":"dealer@topdashboard.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2025-02-06 22:56:52.220862+00', ''),
	('00000000-0000-0000-0000-000000000000', '2d217b19-74db-4103-a807-ade513232324', '{"action":"logout","actor_id":"39933bc3-319c-44a2-9b6c-6d0daecbd9a5","actor_username":"dealer@topdashboard.com","actor_via_sso":false,"log_type":"account"}', '2025-02-06 22:59:17.118212+00', ''),
	('00000000-0000-0000-0000-000000000000', '883d8cae-8ad2-4e82-ad9b-2693ed2ef0fb', '{"action":"login","actor_id":"2a9eaede-ce3d-4910-b597-9814d6c5872e","actor_username":"jains@theoutdoorplus.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2025-02-06 22:59:20.949714+00', ''),
	('00000000-0000-0000-0000-000000000000', 'c928b34d-b0d0-4e3b-9184-89a51cdf540b', '{"action":"token_refreshed","actor_id":"cda1d40a-de6a-407f-8d9f-c88f665b6cbf","actor_username":"liz@theoutdoorplus.com","actor_via_sso":false,"log_type":"token"}', '2025-02-06 23:19:09.895398+00', ''),
	('00000000-0000-0000-0000-000000000000', 'f6934698-c5ab-42a9-a00d-216f5255734f', '{"action":"token_revoked","actor_id":"cda1d40a-de6a-407f-8d9f-c88f665b6cbf","actor_username":"liz@theoutdoorplus.com","actor_via_sso":false,"log_type":"token"}', '2025-02-06 23:19:09.903564+00', ''),
	('00000000-0000-0000-0000-000000000000', '077ce21d-a392-4fe3-87bb-4d21330e2283', '{"action":"token_refreshed","actor_id":"2a9eaede-ce3d-4910-b597-9814d6c5872e","actor_username":"jains@theoutdoorplus.com","actor_via_sso":false,"log_type":"token"}', '2025-02-07 00:13:25.724472+00', ''),
	('00000000-0000-0000-0000-000000000000', '38689b5c-4761-42e7-bcab-1b09c0c55f39', '{"action":"token_revoked","actor_id":"2a9eaede-ce3d-4910-b597-9814d6c5872e","actor_username":"jains@theoutdoorplus.com","actor_via_sso":false,"log_type":"token"}', '2025-02-07 00:13:25.726627+00', ''),
	('00000000-0000-0000-0000-000000000000', '266bf918-441b-4171-94e8-f0b9aeb68fb1', '{"action":"logout","actor_id":"2a9eaede-ce3d-4910-b597-9814d6c5872e","actor_username":"jains@theoutdoorplus.com","actor_via_sso":false,"log_type":"account"}', '2025-02-07 00:13:25.941028+00', ''),
	('00000000-0000-0000-0000-000000000000', '12312160-f8da-43f5-8932-d198545e110b', '{"action":"login","actor_id":"39933bc3-319c-44a2-9b6c-6d0daecbd9a5","actor_username":"dealer@topdashboard.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2025-02-07 00:13:29.279472+00', ''),
	('00000000-0000-0000-0000-000000000000', 'fdc8a753-7b7c-4ce3-8c80-aa802e7de77f', '{"action":"logout","actor_id":"39933bc3-319c-44a2-9b6c-6d0daecbd9a5","actor_username":"dealer@topdashboard.com","actor_via_sso":false,"log_type":"account"}', '2025-02-07 00:13:34.719788+00', ''),
	('00000000-0000-0000-0000-000000000000', 'bad30794-3757-4818-a822-d1cd2ac3c4ad', '{"action":"login","actor_id":"39933bc3-319c-44a2-9b6c-6d0daecbd9a5","actor_username":"dealer@topdashboard.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2025-02-07 00:13:45.37642+00', '');


--
-- Data for Name: flow_state; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--



--
-- Data for Name: users; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

INSERT INTO "auth"."users" ("instance_id", "id", "aud", "role", "email", "encrypted_password", "email_confirmed_at", "invited_at", "confirmation_token", "confirmation_sent_at", "recovery_token", "recovery_sent_at", "email_change_token_new", "email_change", "email_change_sent_at", "last_sign_in_at", "raw_app_meta_data", "raw_user_meta_data", "is_super_admin", "created_at", "updated_at", "phone", "phone_confirmed_at", "phone_change", "phone_change_token", "phone_change_sent_at", "email_change_token_current", "email_change_confirm_status", "banned_until", "reauthentication_token", "reauthentication_sent_at", "is_sso_user", "deleted_at", "is_anonymous") VALUES
	('00000000-0000-0000-0000-000000000000', 'dfa9232b-f6d1-4876-8808-0c44b226f297', 'authenticated', 'authenticated', 'rodrigo@theoutdoorplus.com', '$2a$10$ImeyMIZUpk5dkrNtunsIo.PD2ZypwLQkirzwX4atlsRG4ZMzTk5WC', '2025-01-06 16:24:22.666383+00', NULL, '', NULL, '', NULL, '', '', NULL, '2025-02-06 20:08:54.608554+00', '{"provider": "email", "providers": ["email"]}', '{"role": "ADMIN", "company": "aab2dcff-2d61-46b2-b80d-eafc3df7ed29", "last_name": "Alvarenga", "avatar_url": null, "first_name": "Rodrigo "}', NULL, '2025-01-06 16:24:22.609238+00', '2025-02-06 20:08:54.610141+00', NULL, NULL, '', '', NULL, '', 0, NULL, '', NULL, false, NULL, false),
	('00000000-0000-0000-0000-000000000000', 'f40adc20-e16b-434d-9903-3c22df70079a', 'authenticated', 'authenticated', 'jesus@theoutdoorplus.com', '$2a$10$LV9Z.wmobWz4CRZr.TINneHMaRHxkUYW8vOOW.q.x1BxbBeH65jq.', '2025-02-04 18:24:58.327062+00', NULL, '', NULL, '', NULL, '', '', NULL, NULL, '{"provider": "email", "providers": ["email"]}', '{"role": "ADMIN", "company": "aab2dcff-2d61-46b2-b80d-eafc3df7ed29", "last_name": "Estrada", "avatar_url": "", "first_name": "Jesus"}', NULL, '2025-02-04 18:24:58.323531+00', '2025-02-04 18:24:58.327878+00', NULL, NULL, '', '', NULL, '', 0, NULL, '', NULL, false, NULL, false),
	('00000000-0000-0000-0000-000000000000', '39933bc3-319c-44a2-9b6c-6d0daecbd9a5', 'authenticated', 'authenticated', 'dealer@topdashboard.com', '$2a$10$e5H9FpbWcUJJ2/wf51j04e/ZUSFsXUFRbftd2T9RTdX/KHfyErmvi', '2025-02-06 19:55:29.115295+00', NULL, '', NULL, '', NULL, '', '', NULL, '2025-02-07 00:13:45.377364+00', '{"provider": "email", "providers": ["email"]}', '{"role": "DEALER", "company": "424d8dc4-ee9c-44d4-9fb4-905f7ba5fbba", "last_name": "Account", "avatar_url": "", "first_name": "Xavier"}', NULL, '2025-02-06 19:55:29.109723+00', '2025-02-07 00:13:45.379455+00', NULL, NULL, '', '', NULL, '', 0, NULL, '', NULL, false, NULL, false),
	('00000000-0000-0000-0000-000000000000', '7d359261-b3c0-44dc-a232-f8e08f92ae0d', 'authenticated', 'authenticated', 'joe@theoutdoorplus.com', '$2a$10$e4Ah4rSULc7JlCeIM3AD0eMC10a/bQgGqyjd3FCXqkVhU.AjSdyJS', '2025-02-04 18:25:32.505131+00', NULL, '', NULL, '', NULL, '', '', NULL, NULL, '{"provider": "email", "providers": ["email"]}', '{"role": "ADMIN", "company": "aab2dcff-2d61-46b2-b80d-eafc3df7ed29", "last_name": "Estrada", "avatar_url": "", "first_name": "Joseph"}', NULL, '2025-02-04 18:25:32.50175+00', '2025-02-04 18:25:32.505387+00', NULL, NULL, '', '', NULL, '', 0, NULL, '', NULL, false, NULL, false),
	('00000000-0000-0000-0000-000000000000', '0fd6ae12-24cc-4f62-b6c9-6a776a2e1b1e', 'authenticated', 'authenticated', 'daniel@theoutdoorplus.com', '$2a$10$7Hh78bKZARmLA...T91OvuG923QbZLbt3wOMR5CLHt3lS2q9IcdpK', '2025-02-04 18:23:47.444019+00', NULL, '', NULL, '', NULL, '', '', NULL, NULL, '{"provider": "email", "providers": ["email"]}', '{"role": "SALES", "company": "aab2dcff-2d61-46b2-b80d-eafc3df7ed29", "last_name": "Molina", "avatar_url": "", "first_name": "Daniel"}', NULL, '2025-02-04 18:23:47.434111+00', '2025-02-04 18:23:47.444207+00', NULL, NULL, '', '', NULL, '', 0, NULL, '', NULL, false, NULL, false),
	('00000000-0000-0000-0000-000000000000', 'ac7b47a1-b77e-4fad-b1fa-fca160d61009', 'authenticated', 'authenticated', 'lupe@theoutdoorplus.com', '$2a$10$zGPGQaWrHs8uZlEW8EbrNui.WpZrUDZ0o9gy/lh.E8ULYjJUyvBye', '2025-02-04 18:25:45.724579+00', NULL, '', NULL, '', NULL, '', '', NULL, NULL, '{"provider": "email", "providers": ["email"]}', '{"role": "ADMIN", "company": "aab2dcff-2d61-46b2-b80d-eafc3df7ed29", "last_name": "Estrada", "avatar_url": "", "first_name": "Guadalupe"}', NULL, '2025-02-04 18:25:45.722048+00', '2025-02-04 18:25:45.724724+00', NULL, NULL, '', '', NULL, '', 0, NULL, '', NULL, false, NULL, false),
	('00000000-0000-0000-0000-000000000000', '7430693a-63c7-4e8e-807e-83e8a471de61', 'authenticated', 'authenticated', 'vince@theoutdoorplus.com', '$2a$10$mmVpMMGWdg4IKxozKq5AWey8KsAGTOF0naUCDtaAhO2iTNgAba0xC', '2025-02-04 18:26:00.49929+00', NULL, '', NULL, '', NULL, '', '', NULL, NULL, '{"provider": "email", "providers": ["email"]}', '{"role": "SALES", "company": "aab2dcff-2d61-46b2-b80d-eafc3df7ed29", "last_name": "Estrada", "avatar_url": "", "first_name": "Vince"}', NULL, '2025-02-04 18:26:00.495834+00', '2025-02-04 18:26:00.499568+00', NULL, NULL, '', '', NULL, '', 0, NULL, '', NULL, false, NULL, false),
	('00000000-0000-0000-0000-000000000000', '8a940c63-0073-433b-9d90-ecfc0b4a79b5', 'authenticated', 'authenticated', 'ixv7299@gmail.com', '$2a$10$9Ls4TRonm0EDl6hWcMvwO.yEFV4b87M0k7aq3Ksq9.f9xJt9dhmR.', '2025-02-06 18:36:55.026575+00', NULL, '', NULL, '', NULL, '', '', NULL, NULL, '{"provider": "email", "providers": ["email"]}', '{"role": "DEALER", "company": "424d8dc4-ee9c-44d4-9fb4-905f7ba5fbba", "last_name": "Villareal", "avatar_url": "", "first_name": "Xavier"}', NULL, '2025-02-06 18:36:55.023619+00', '2025-02-06 18:44:13.012003+00', NULL, NULL, '', '', NULL, '', 0, NULL, '', NULL, false, NULL, false),
	('00000000-0000-0000-0000-000000000000', 'cda1d40a-de6a-407f-8d9f-c88f665b6cbf', 'authenticated', 'authenticated', 'liz@theoutdoorplus.com', '$2a$10$VT/QfA90wLRmdPtPOnD.n.1JVnETylzh.yQWRe3uHszsQfvyMmg5O', '2025-02-05 19:38:40.609293+00', NULL, '', NULL, '', NULL, '', '', NULL, '2025-02-06 16:32:03.163727+00', '{"provider": "email", "providers": ["email"]}', '{"role": "SALES", "company": "aab2dcff-2d61-46b2-b80d-eafc3df7ed29", "last_name": "Nunez", "avatar_url": "", "first_name": "Liz"}', NULL, '2025-02-05 19:38:40.604952+00', '2025-02-06 23:19:09.926074+00', NULL, NULL, '', '', NULL, '', 0, NULL, '', NULL, false, NULL, false),
	('00000000-0000-0000-0000-000000000000', '2a9eaede-ce3d-4910-b597-9814d6c5872e', 'authenticated', 'authenticated', 'jains@theoutdoorplus.com', '$2a$10$swvVS0Ikrx8grU2RK9H5PePRCtMAt7igendhMKGxP2Y5CH64sx7SS', '2025-02-04 18:25:17.554115+00', NULL, '', NULL, '', NULL, '', '', NULL, '2025-02-06 22:59:20.950463+00', '{"provider": "email", "providers": ["email"]}', '{"role": "ADMIN", "company": "aab2dcff-2d61-46b2-b80d-eafc3df7ed29", "last_name": "Lopez", "avatar_url": "", "first_name": "Jains"}', NULL, '2025-02-04 18:25:17.551339+00', '2025-02-07 00:13:25.730629+00', NULL, NULL, '', '', NULL, '', 0, NULL, '', NULL, false, NULL, false);


--
-- Data for Name: identities; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

INSERT INTO "auth"."identities" ("provider_id", "user_id", "identity_data", "provider", "last_sign_in_at", "created_at", "updated_at", "id") VALUES
	('f40adc20-e16b-434d-9903-3c22df70079a', 'f40adc20-e16b-434d-9903-3c22df70079a', '{"sub": "f40adc20-e16b-434d-9903-3c22df70079a", "email": "jesus@theoutdoorplus.com", "email_verified": false, "phone_verified": false}', 'email', '2025-02-04 18:24:58.325242+00', '2025-02-04 18:24:58.325309+00', '2025-02-04 18:24:58.325309+00', 'f2f65a80-a3a7-4512-a072-67b6399bb8c2'),
	('2a9eaede-ce3d-4910-b597-9814d6c5872e', '2a9eaede-ce3d-4910-b597-9814d6c5872e', '{"sub": "2a9eaede-ce3d-4910-b597-9814d6c5872e", "email": "jains@theoutdoorplus.com", "email_verified": false, "phone_verified": false}', 'email', '2025-02-04 18:25:17.552471+00', '2025-02-04 18:25:17.552521+00', '2025-02-04 18:25:17.552521+00', '54ea145d-29d7-418a-a301-5028b640bfae'),
	('7d359261-b3c0-44dc-a232-f8e08f92ae0d', '7d359261-b3c0-44dc-a232-f8e08f92ae0d', '{"sub": "7d359261-b3c0-44dc-a232-f8e08f92ae0d", "email": "joe@theoutdoorplus.com", "email_verified": false, "phone_verified": false}', 'email', '2025-02-04 18:25:32.503281+00', '2025-02-04 18:25:32.50334+00', '2025-02-04 18:25:32.50334+00', 'bff13dcf-0237-42ac-8a98-c3e3dd21e893'),
	('ac7b47a1-b77e-4fad-b1fa-fca160d61009', 'ac7b47a1-b77e-4fad-b1fa-fca160d61009', '{"sub": "ac7b47a1-b77e-4fad-b1fa-fca160d61009", "email": "lupe@theoutdoorplus.com", "email_verified": false, "phone_verified": false}', 'email', '2025-02-04 18:25:45.723189+00', '2025-02-04 18:25:45.723244+00', '2025-02-04 18:25:45.723244+00', '9613acf3-5522-4ccb-a06f-59cf272e42ff'),
	('dfa9232b-f6d1-4876-8808-0c44b226f297', 'dfa9232b-f6d1-4876-8808-0c44b226f297', '{"sub": "dfa9232b-f6d1-4876-8808-0c44b226f297", "email": "rodrigo@theoutdoorplus.com", "email_verified": false, "phone_verified": false}', 'email', '2025-01-06 16:24:22.649539+00', '2025-01-06 16:24:22.64963+00', '2025-01-06 16:24:22.64963+00', 'a6b8c581-635f-458d-9793-75047a4bd510'),
	('7430693a-63c7-4e8e-807e-83e8a471de61', '7430693a-63c7-4e8e-807e-83e8a471de61', '{"sub": "7430693a-63c7-4e8e-807e-83e8a471de61", "email": "vince@theoutdoorplus.com", "email_verified": false, "phone_verified": false}', 'email', '2025-02-04 18:26:00.497495+00', '2025-02-04 18:26:00.497558+00', '2025-02-04 18:26:00.497558+00', '85dbe0ec-acd9-48cc-9a46-ac7d6fe89128'),
	('cda1d40a-de6a-407f-8d9f-c88f665b6cbf', 'cda1d40a-de6a-407f-8d9f-c88f665b6cbf', '{"sub": "cda1d40a-de6a-407f-8d9f-c88f665b6cbf", "email": "liz@theoutdoorplus.com", "email_verified": false, "phone_verified": false}', 'email', '2025-02-05 19:38:40.606206+00', '2025-02-05 19:38:40.60628+00', '2025-02-05 19:38:40.60628+00', '98f76d04-a42b-4c4b-8d9a-a5f18c97e85d'),
	('0fd6ae12-24cc-4f62-b6c9-6a776a2e1b1e', '0fd6ae12-24cc-4f62-b6c9-6a776a2e1b1e', '{"sub": "0fd6ae12-24cc-4f62-b6c9-6a776a2e1b1e", "email": "daniel@theoutdoorplus.com", "email_verified": false, "phone_verified": false}', 'email', '2025-02-04 18:23:47.438455+00', '2025-02-04 18:23:47.438508+00', '2025-02-04 18:23:47.438508+00', '11358d20-442f-49fb-8457-d4889efa18e6'),
	('8a940c63-0073-433b-9d90-ecfc0b4a79b5', '8a940c63-0073-433b-9d90-ecfc0b4a79b5', '{"sub": "8a940c63-0073-433b-9d90-ecfc0b4a79b5", "email": "ixv7299@gmail.com", "email_verified": false, "phone_verified": false}', 'email', '2025-02-06 18:36:55.024977+00', '2025-02-06 18:36:55.025021+00', '2025-02-06 18:36:55.025021+00', 'b6b6c930-c8dd-4fe5-9d41-704e4408693b'),
	('39933bc3-319c-44a2-9b6c-6d0daecbd9a5', '39933bc3-319c-44a2-9b6c-6d0daecbd9a5', '{"sub": "39933bc3-319c-44a2-9b6c-6d0daecbd9a5", "email": "dealer@topdashboard.com", "email_verified": false, "phone_verified": false}', 'email', '2025-02-06 19:55:29.112431+00', '2025-02-06 19:55:29.112477+00', '2025-02-06 19:55:29.112477+00', '730cfd8b-2565-464a-b2ae-73eba4dac489');


--
-- Data for Name: instances; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--



--
-- Data for Name: sessions; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

INSERT INTO "auth"."sessions" ("id", "user_id", "created_at", "updated_at", "factor_id", "aal", "not_after", "refreshed_at", "user_agent", "ip", "tag") VALUES
	('31f7ed17-e6d3-43b0-9db7-aeadb0f05695', 'cda1d40a-de6a-407f-8d9f-c88f665b6cbf', '2025-02-06 16:32:03.163796+00', '2025-02-06 23:19:09.931279+00', NULL, 'aal1', NULL, '2025-02-06 23:19:09.93115', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/132.0.0.0 Safari/537.36', '47.179.36.170', NULL),
	('0e2cb7a4-6738-465e-a8e8-891749d21d3b', '39933bc3-319c-44a2-9b6c-6d0daecbd9a5', '2025-02-07 00:13:45.37745+00', '2025-02-07 00:13:45.37745+00', NULL, 'aal1', NULL, NULL, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/132.0.0.0 Safari/537.36', '166.205.97.67', NULL),
	('4a682cc1-4a23-47cc-a06f-5f7635cb852a', 'dfa9232b-f6d1-4876-8808-0c44b226f297', '2025-02-06 20:08:54.608632+00', '2025-02-06 20:08:54.608632+00', NULL, 'aal1', NULL, NULL, 'Mozilla/5.0 (compatible; Google-Apps-Script; beanserver; +https://script.google.com; id: UAEmdDd-Sejrk1vcmhjCEEVKGjzSsLBP_0fo)', '47.179.36.170', NULL);


--
-- Data for Name: mfa_amr_claims; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

INSERT INTO "auth"."mfa_amr_claims" ("session_id", "created_at", "updated_at", "authentication_method", "id") VALUES
	('31f7ed17-e6d3-43b0-9db7-aeadb0f05695', '2025-02-06 16:32:03.165637+00', '2025-02-06 16:32:03.165637+00', 'password', 'b6ff8fa2-4ad1-456c-89b4-9ebbb6af2fa2'),
	('4a682cc1-4a23-47cc-a06f-5f7635cb852a', '2025-02-06 20:08:54.610578+00', '2025-02-06 20:08:54.610578+00', 'password', '8515581f-8fa0-4a3b-af64-de0c25830ced'),
	('0e2cb7a4-6738-465e-a8e8-891749d21d3b', '2025-02-07 00:13:45.380009+00', '2025-02-07 00:13:45.380009+00', 'password', '03119942-98e6-4713-861f-9acb32ca5abc');


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
	('00000000-0000-0000-0000-000000000000', 254, 'mbU-Z1OhLsFDKBZa9A9OHw', 'dfa9232b-f6d1-4876-8808-0c44b226f297', false, '2025-02-06 20:08:54.609328+00', '2025-02-06 20:08:54.609328+00', NULL, '4a682cc1-4a23-47cc-a06f-5f7635cb852a'),
	('00000000-0000-0000-0000-000000000000', 255, 'pfYhsfquD9AUlGyn1VCGhA', 'cda1d40a-de6a-407f-8d9f-c88f665b6cbf', true, '2025-02-06 20:49:17.544331+00', '2025-02-06 23:19:09.909817+00', 'wqMST4mYZOpb6bBvKlz1qg', '31f7ed17-e6d3-43b0-9db7-aeadb0f05695'),
	('00000000-0000-0000-0000-000000000000', 250, 'wqMST4mYZOpb6bBvKlz1qg', 'cda1d40a-de6a-407f-8d9f-c88f665b6cbf', true, '2025-02-06 19:28:20.298871+00', '2025-02-06 20:49:17.543845+00', 'wFl8raWjx999V2axpbZeMQ', '31f7ed17-e6d3-43b0-9db7-aeadb0f05695'),
	('00000000-0000-0000-0000-000000000000', 241, 'Tw8cmlTsRgs5-0HqN5iglg', 'cda1d40a-de6a-407f-8d9f-c88f665b6cbf', true, '2025-02-06 16:32:03.164457+00', '2025-02-06 18:24:50.383829+00', NULL, '31f7ed17-e6d3-43b0-9db7-aeadb0f05695'),
	('00000000-0000-0000-0000-000000000000', 265, 'SgzOk_e6IRRdhowbZWr9VA', 'cda1d40a-de6a-407f-8d9f-c88f665b6cbf', false, '2025-02-06 23:19:09.91332+00', '2025-02-06 23:19:09.91332+00', 'pfYhsfquD9AUlGyn1VCGhA', '31f7ed17-e6d3-43b0-9db7-aeadb0f05695'),
	('00000000-0000-0000-0000-000000000000', 268, 'm3ns0qGVCTnqOIN0tc4Rhw', '39933bc3-319c-44a2-9b6c-6d0daecbd9a5', false, '2025-02-07 00:13:45.378338+00', '2025-02-07 00:13:45.378338+00', NULL, '0e2cb7a4-6738-465e-a8e8-891749d21d3b'),
	('00000000-0000-0000-0000-000000000000', 244, 'wFl8raWjx999V2axpbZeMQ', 'cda1d40a-de6a-407f-8d9f-c88f665b6cbf', true, '2025-02-06 18:24:50.384104+00', '2025-02-06 19:28:20.298083+00', 'Tw8cmlTsRgs5-0HqN5iglg', '31f7ed17-e6d3-43b0-9db7-aeadb0f05695');


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
	('3db5ed3e-6126-49da-b610-fb97a8878cda', '2025-01-27 17:19:34.402309+00', '2025-02-06 20:09:36.222504+00', 'Bullet Burner', 'None', NULL, NULL, NULL, 'Fire Feature, Fire & Water', 'Gas Fire Bowl, Gas Fire Pit, Gas Fireplace, Gas Fire Sculpture, Gas Fire Table', NULL, 'Feature', NULL, NULL),
	('98d990cc-2b08-4de9-8725-cdf28f1ca38d', '2025-01-27 17:19:34.402309+00', '2025-02-06 20:09:36.222504+00', 'Canvas Cover', 'None', NULL, NULL, NULL, NULL, NULL, NULL, 'Feature', NULL, NULL),
	('ad4c3027-8343-42db-b7d0-71a22903a4f7', '2025-01-27 17:19:34.402309+00', '2025-02-06 20:09:36.222504+00', 'Fire Glass', 'None', NULL, NULL, NULL, 'Fire Feature, Fire & Water', 'Gas Fire Bowl, Gas Fire Pit, Gas Fireplace, Gas Fire Sculpture, Gas Fire Table', NULL, 'Feature, Pans & Burners', NULL, NULL),
	('f177aff4-2645-4ee4-be2f-08dd7085c5b8', '2025-01-27 17:19:34.402309+00', '2025-02-06 20:09:36.222504+00', 'Ornament', 'None', NULL, NULL, NULL, NULL, NULL, NULL, 'Feature, Pans & Burners', NULL, NULL),
	('e8588387-d1a7-4f70-852e-2be34a4f14d0', '2025-02-06 20:09:36.222504+00', '2025-02-06 20:09:36.222504+00', 'Bullet Burner', '8" Bullet Burner - Stainless Steel', NULL, NULL, '24"', 'Fire Feature, Fire & Water', 'Gas Fire Bowl', 98, 'Feature', 'OPT-BRDSS8', NULL),
	('8ae9a6ac-4a4d-4962-9ca4-e683150fefde', '2025-02-06 20:09:36.222504+00', '2025-02-06 20:09:36.222504+00', 'Canvas Cover', '24" Round Canvas Cover For Bowl', '24" Cazo Fire Bowl', NULL, '24', 'Fire Feature, Fire & Water', 'Gas Fire Bowl', 96, NULL, 'OPT-BCVR-24R-9H', NULL);


--
-- Data for Name: Announcements; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- Data for Name: Attributes; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO "public"."Attributes" ("id", "created_at", "updated_at", "attribute_type", "attribute_option", "add_on_price", "attribute_code", "code_identifier", "product_filter", "material_filter", "size_filter", "feature_filter", "feature_category_filter", "color_tones_filter") VALUES
	('8ebe3a13-8e4a-46a1-b561-407979986651', '2025-01-27 17:19:32.074797+00', '2025-02-06 20:09:35.184316+00', 'Color', 'Metallic Pearl', 180, '-MPR', 'CLR', NULL, 'GFRC', NULL, NULL, NULL, '1'),
	('335a8ca4-b46b-422f-95e9-b2857f9e49f8', '2025-01-27 17:19:32.074797+00', '2025-02-06 20:09:35.184316+00', 'Color', 'Soft White', NULL, '-STW', 'CLR', NULL, 'Powder Coat', NULL, NULL, NULL, '1'),
	('d96154ce-9afe-44f9-9403-cf041d21c13f', '2025-01-27 17:19:32.074797+00', '2025-02-06 20:09:35.184316+00', 'Color', 'Brown', NULL, '-BRN', 'CLR', NULL, 'GFRC', NULL, NULL, NULL, '1'),
	('77ecae34-475c-488f-8788-fafc24626407', '2025-01-27 17:19:32.074797+00', '2025-02-06 20:09:35.184316+00', 'Color', 'Gloss Black', NULL, '-BLK', 'CLR', NULL, 'Powder Coat', NULL, NULL, NULL, '1'),
	('1c3d8b98-42f9-410c-a411-a33b043db078', '2025-01-27 17:19:32.074797+00', '2025-02-06 20:09:35.184316+00', 'Color', 'Gray', NULL, '-GRY', 'CLR', NULL, 'Powder Coat', NULL, NULL, NULL, '1'),
	('7acd0866-facb-4657-b2d9-26b89dbdd771', '2025-01-27 17:19:32.074797+00', '2025-02-06 20:09:35.184316+00', 'Color', 'Java', NULL, '-JAV', 'CLR', NULL, 'Powder Coat', NULL, NULL, NULL, '1'),
	('bb1e56c9-68f7-4afa-b363-6a1683521e3d', '2025-01-27 17:19:32.074797+00', '2025-02-06 20:09:35.184316+00', 'Color', 'Metallic Silver', 180, '-MSV', 'CLR', NULL, 'GFRC', NULL, NULL, NULL, '1'),
	('2def9112-8ccb-4a3b-b5e8-1f736165ede0', '2025-01-27 17:19:32.074797+00', '2025-02-06 20:09:35.184316+00', 'Color', 'Metallic Slate', 180, '-MSL', 'CLR', NULL, 'GFRC', NULL, NULL, NULL, '1'),
	('1163c5f1-2f13-4be8-bb54-362ba47a244e', '2025-01-27 17:19:32.074797+00', '2025-02-06 20:09:35.184316+00', 'Color', 'Natural Gray', NULL, '-NGY', 'CLR', NULL, 'GFRC', NULL, NULL, NULL, '1'),
	('d96e0e16-297b-428d-a17e-0cc306240af9', '2025-01-27 17:19:32.074797+00', '2025-02-06 20:09:35.184316+00', 'Color', 'Rustic Coffee', 180, '-RCF', 'CLR', NULL, 'GFRC', NULL, NULL, NULL, '1'),
	('65d64d2a-ce13-43f8-9806-0ec402c2afdb', '2025-01-27 17:19:32.074797+00', '2025-02-06 20:09:35.184316+00', 'Color', 'Rustic Gray', 180, '-RGR', 'CLR', NULL, 'GFRC', NULL, NULL, NULL, '1'),
	('59c48185-ef51-4d02-9ec8-8ce13f17423f', '2025-01-27 17:19:32.074797+00', '2025-02-06 20:09:35.184316+00', 'Color', 'Rustic Moss Stone', 180, '-RMS', 'CLR', NULL, 'GFRC', NULL, NULL, NULL, '1'),
	('93b6fff0-88a9-47bb-b083-d513fa173ea1', '2025-01-27 17:19:32.074797+00', '2025-02-06 20:09:35.184316+00', 'Color', 'Rustic White', 180, '-RWH', 'CLR', NULL, 'GFRC', NULL, NULL, NULL, '1'),
	('83db008f-a04d-4236-8f8d-12ed760c7b81', '2025-01-27 17:19:32.074797+00', '2025-02-06 20:09:35.184316+00', 'Color', 'Black', NULL, '-BLK', 'CLR', NULL, 'GFRC', NULL, NULL, NULL, '1'),
	('5be7f236-68b0-4617-877e-4a50f85fb244', '2025-01-27 17:19:32.074797+00', '2025-02-06 20:09:35.184316+00', 'Color', 'Vanilla', NULL, '-VAN', 'CLR', NULL, 'GFRC', NULL, NULL, NULL, '1'),
	('d4d7fdc9-5a5d-49ce-ba5d-c61fcd4366c0', '2025-01-27 17:19:32.074797+00', '2025-02-06 20:09:35.184316+00', 'Color', 'Copper Vein', NULL, '-CPV', 'CLR', NULL, 'Powder Coat', NULL, NULL, NULL, '1'),
	('466037af-9d8d-4ecf-b555-8f1a29612816', '2025-01-27 17:19:32.074797+00', '2025-02-06 20:09:35.184316+00', 'Color', 'Chestnut', NULL, '-CST', 'CLR', NULL, 'GFRC', NULL, NULL, NULL, '1'),
	('38b08517-39f4-4270-a08f-3bd66961719e', '2025-01-27 17:19:32.074797+00', '2025-02-06 20:09:35.184316+00', 'Color', 'Chocolate', NULL, '-CHC', 'CLR', NULL, 'GFRC', NULL, NULL, NULL, '1'),
	('f67972ff-c8f4-44c8-ab31-24a2c1f89bc4', '2025-01-27 17:19:32.074797+00', '2025-02-06 20:09:35.184316+00', 'Color', 'Gray', NULL, '-GRY', 'CLR', NULL, 'GFRC', NULL, NULL, NULL, '1'),
	('5e1ab7ec-703c-4042-8874-b961f312ae39', '2025-01-27 17:19:32.074797+00', '2025-02-06 20:09:35.184316+00', 'Color', 'Limestone', NULL, '-LIM', 'CLR', NULL, 'GFRC', NULL, NULL, NULL, '1'),
	('51a349c6-c521-4ae8-868b-fed5be82fec8', '2025-01-27 17:19:32.074797+00', '2025-02-06 20:09:35.184316+00', 'Color', 'Metallic Bronze', 180, '-MBR', 'CLR', NULL, 'GFRC', NULL, NULL, NULL, '1'),
	('75be007e-8559-4d65-af3f-5d0cf698f258', '2025-01-27 17:19:32.074797+00', '2025-02-06 20:09:35.184316+00', 'Color', 'Metallic Copper', 180, '-MCP', 'CLR', NULL, 'GFRC', NULL, NULL, NULL, '1'),
	('d23af4d5-c43f-4964-82e9-ffeefa2e48e8', '2025-01-27 17:19:32.074797+00', '2025-02-06 20:09:35.184316+00', 'Gas Type', 'Liquid Propane', NULL, '-LP', 'GAS', NULL, NULL, NULL, 'Fire Feature, Fire And Water', 'Gas Fire Bowl, Gas Fire Pit, Gas Fireplace, Gas Fire Sculpture, Gas Fire Table', NULL),
	('4dc09a13-0aab-4d52-bdb5-1ef90137dc71', '2025-01-27 17:19:32.074797+00', '2025-02-06 20:09:35.184316+00', 'Ignition', 'Match Lit w/ Flame Sense', 591, 'FSML', 'IGN', NULL, NULL, NULL, 'Fire Feature', 'Gas Fire Pit, Gas Fireplace, Gas Fire Sculpture, Gas Fire Table', NULL),
	('6ed6b3ac-a266-44fb-aba4-a0efdc5d0031', '2025-01-27 17:19:32.074797+00', '2025-02-06 20:09:35.184316+00', 'Ignition', 'Match Lit', NULL, NULL, 'IGN', NULL, NULL, NULL, 'Fire Feature, Fire And Water', 'Gas Fire Bowl, Gas Fire Pit, Gas Fireplace, Gas Fire Sculpture, Gas Fire Table', NULL),
	('15154455-777e-4dd4-95dd-cf0bf2756f0c', '2025-02-04 23:45:07.842726+00', '2025-02-06 20:09:35.184316+00', 'Top Color', 'Sapphire Blue', NULL, '-SBL', 'TOPCLR', NULL, 'Powder Coat', NULL, NULL, NULL, '2'),
	('330ae5b8-00d5-4138-b47c-9410b786f529', '2025-02-04 23:45:07.842726+00', '2025-02-06 20:09:35.184316+00', 'Top Color', 'Soft White', NULL, '-STW', 'TOPCLR', NULL, 'Powder Coat', NULL, NULL, NULL, '2'),
	('877609a5-ae97-4f95-b603-5883ee98538e', '2025-02-04 23:45:07.842726+00', '2025-02-06 20:09:35.184316+00', 'Top Color', 'Rock Gray', NULL, '-RKY', 'TOPCLR', NULL, 'Powder Coat', NULL, NULL, NULL, '2'),
	('b2029077-7988-4082-b0ee-e69151305d19', '2025-02-04 23:45:07.842726+00', '2025-02-06 20:09:35.184316+00', 'Top Color', 'Pewter', NULL, '-PEW', 'TOPCLR', NULL, 'Powder Coat', NULL, NULL, NULL, '2'),
	('4c52f123-d7c6-4a7d-8413-57c72ff48432', '2025-02-04 23:45:07.842726+00', '2025-02-06 20:09:35.184316+00', 'Top Color', 'Matte Black', NULL, '-ONX', 'TOPCLR', NULL, 'Powder Coat', NULL, NULL, NULL, '2'),
	('913b092b-2217-4aaa-a60d-9b53fc659a3e', '2025-02-04 23:45:07.842726+00', '2025-02-06 20:09:35.184316+00', 'Top Color', 'Bronze Hammertone', NULL, '-BZHT', 'TOPCLR', NULL, 'Powder Coat', NULL, NULL, NULL, '2'),
	('fdaf35ce-58c7-4490-8faa-a77b8cec5bdc', '2025-02-04 23:45:07.842726+00', '2025-02-06 20:09:35.184316+00', 'Top Color', 'Copper Vein', NULL, '-CPV', 'TOPCLR', NULL, 'Powder Coat', NULL, NULL, NULL, '2'),
	('cb141a91-b911-4a4c-a917-05cf68ef6611', '2025-02-04 23:45:07.842726+00', '2025-02-06 20:09:35.184316+00', 'Top Color', 'Empire Bronze', NULL, '-EBZ', 'TOPCLR', NULL, 'Powder Coat', NULL, NULL, NULL, '2'),
	('98df0bbd-51f5-4bb8-90f0-fa05d82d250b', '2025-02-04 23:45:07.842726+00', '2025-02-06 20:09:35.184316+00', 'Top Color', 'Gloss Black', NULL, '-BLK', 'TOPCLR', NULL, 'Powder Coat', NULL, NULL, NULL, '2'),
	('6d1fe3c6-5463-4b49-b6ad-0f994c47dea1', '2025-02-04 23:45:07.842726+00', '2025-02-06 20:09:35.184316+00', 'Top Color', 'Gray Vein', NULL, '-GYV', 'TOPCLR', NULL, 'Powder Coat', NULL, NULL, NULL, '2'),
	('a4bd57de-9458-4af7-9cc6-5874c7c70a10', '2025-02-04 23:45:07.842726+00', '2025-02-06 20:09:35.184316+00', 'Top Color', 'White', NULL, '-WHT', 'TOPCLR', NULL, 'Powder Coat', NULL, NULL, NULL, '2'),
	('2a438d5f-79e6-4bc0-937c-4d6e3e537ae5', '2025-02-04 23:45:07.842726+00', '2025-02-06 20:09:35.184316+00', 'Top Color', 'White Vein', NULL, '-WHT', 'TOPCLR', NULL, 'Powder Coat', NULL, NULL, NULL, '2'),
	('87b38559-1df2-4ad2-b82a-18b79e6bb7ff', '2025-02-04 23:45:07.842726+00', '2025-02-06 20:09:35.184316+00', 'Top Color', 'Mist', NULL, '-MST', 'TOPCLR', NULL, 'Powder Coat', NULL, NULL, NULL, '2'),
	('a60a94d0-e101-4e97-97f6-9b93e8f27de9', '2025-02-04 23:45:07.842726+00', '2025-02-06 20:09:35.184316+00', 'Top Color', 'Gray', NULL, '-GRY', 'TOPCLR', NULL, 'Powder Coat', NULL, NULL, NULL, '2'),
	('57890420-c091-4996-a7a9-5bac085c55ef', '2025-02-04 23:45:07.842726+00', '2025-02-06 20:09:35.184316+00', 'Top Color', 'Olive Green', NULL, '-OGR', 'TOPCLR', NULL, 'Powder Coat', NULL, NULL, NULL, '2'),
	('9fe0b897-d3a7-4485-8841-abeb635fca1d', '2025-02-04 23:45:07.842726+00', '2025-02-06 20:09:35.184316+00', 'Top Color', 'Java', NULL, '-JAV', 'TOPCLR', NULL, 'Powder Coat', NULL, NULL, NULL, '2'),
	('7ed10028-b4b8-48e2-8ec3-6dccf1a035d6', '2025-02-04 23:45:07.842726+00', '2025-02-06 20:09:35.184316+00', 'Top Color', 'Graphite Gray', NULL, '-GGY', 'TOPCLR', NULL, 'Powder Coat', NULL, NULL, NULL, '2'),
	('a2f9a063-7e4c-40bc-99e1-a16bce2c3f72', '2025-02-04 23:45:07.842726+00', '2025-02-06 20:09:35.184316+00', 'Base Color', 'Mist', NULL, '-MST', 'BSCLR', NULL, 'Powder Coat, Wood Grain Top & Powder Coat Base, GFRC Top & Powder Coat Base', NULL, NULL, NULL, '2'),
	('7725381c-d7ef-41fb-b0de-3933044d429e', '2025-02-04 23:45:07.842726+00', '2025-02-06 20:09:35.184316+00', 'Base Color', 'Trophy Bronze', NULL, '-TBZ', 'BSCLR', NULL, 'Powder Coat, Wood Grain Top & Powder Coat Base, GFRC Top & Powder Coat Base', NULL, NULL, NULL, '2'),
	('4098ce2d-248a-4152-867d-814fefa2675d', '2025-02-04 23:45:07.842726+00', '2025-02-06 20:09:35.184316+00', 'Base Color', 'Graphite Gray', NULL, '-GGY', 'BSCLR', NULL, 'Powder Coat, Wood Grain Top & Powder Coat Base, GFRC Top & Powder Coat Base', NULL, NULL, NULL, '2'),
	('242ed698-5797-45ea-bd68-57607466c7d3', '2025-02-04 23:45:07.842726+00', '2025-02-06 20:09:35.184316+00', 'Base Color', 'White Vein', NULL, '-WHT', 'BSCLR', NULL, 'Powder Coat, Wood Grain Top & Powder Coat Base, GFRC Top & Powder Coat Base', NULL, NULL, NULL, '2'),
	('602e1eb5-1d02-4b94-b45f-2aa909ca5b2b', '2025-02-04 23:45:07.842726+00', '2025-02-06 20:09:35.184316+00', 'Base Color', 'White', NULL, '-WHT', 'BSCLR', NULL, 'Powder Coat, Wood Grain Top & Powder Coat Base, GFRC Top & Powder Coat Base', NULL, NULL, NULL, '2'),
	('20e4d27e-469d-4a4a-8229-0f7dc5251c9d', '2025-02-04 23:45:07.842726+00', '2025-02-06 20:09:35.184316+00', 'Base Color', 'Gray Vein', NULL, '-GYV', 'BSCLR', NULL, 'Powder Coat, Wood Grain Top & Powder Coat Base, GFRC Top & Powder Coat Base', NULL, NULL, NULL, '2'),
	('974052c3-055e-435b-af97-5f5a4a54a3f3', '2025-02-04 23:45:07.842726+00', '2025-02-06 20:09:35.184316+00', 'Base Color', 'Matte Black', NULL, '-ONX', 'BSCLR', NULL, 'Powder Coat, Wood Grain Top & Powder Coat Base, GFRC Top & Powder Coat Base', NULL, NULL, NULL, '2'),
	('fbbe3c5c-5d52-49e8-912f-3a93e36b6485', '2025-01-29 01:06:41.001312+00', '2025-02-06 20:09:35.184316+00', 'Color', 'Black & White', NULL, '-BWC', 'CLR', NULL, 'BW Powdercoat', NULL, NULL, NULL, '1'),
	('4362d9da-64ca-4059-95a0-bb4ccdb1e674', '2025-01-27 17:19:32.074797+00', '2025-02-06 20:09:35.184316+00', 'Color', 'Ash', NULL, '-ASH', 'CLR', NULL, 'GFRC', NULL, NULL, NULL, '1'),
	('a73b49d5-d63a-41f3-8dd0-ad8eddce4e63', '2025-01-27 17:19:32.074797+00', '2025-02-06 20:09:35.184316+00', 'Color', 'Trophy Bronze', NULL, '-TBZ', 'CLR', NULL, 'Powder Coat', NULL, NULL, NULL, '1'),
	('2792b17d-6330-4ffe-b8ac-6e96b24ea367', '2025-01-27 17:19:32.074797+00', '2025-02-06 20:09:35.184316+00', 'Color', 'Bronze Hammertone', NULL, '-BZHT', 'CLR', NULL, 'Powder Coat', NULL, NULL, NULL, '1'),
	('dd13f42b-a251-4b0f-9e83-103576311002', '2025-01-27 17:19:32.074797+00', '2025-02-06 20:09:35.184316+00', 'Color', 'Empire Bronze', NULL, '-EBZ', 'CLR', NULL, 'Powder Coat', NULL, NULL, NULL, '1'),
	('cea15f35-dc50-4027-b044-f54638b3e130', '2025-01-27 17:19:32.074797+00', '2025-02-06 20:09:35.184316+00', 'Color', 'Gold Vein', NULL, '-GDV', 'CLR', NULL, 'Powder Coat', NULL, NULL, NULL, '1'),
	('ba19cfe6-356d-430b-b133-e4b4dbdad438', '2025-01-27 17:19:32.074797+00', '2025-02-06 20:09:35.184316+00', 'Color', 'Graphite Gray', NULL, '-GGY', 'CLR', NULL, 'Powder Coat', NULL, NULL, NULL, '1'),
	('da81a806-39c7-4ad5-a34e-28cee51acbe3', '2025-01-27 17:19:32.074797+00', '2025-02-06 20:09:35.184316+00', 'Color', 'Gray Vein', NULL, '-GYV', 'CLR', NULL, 'Powder Coat', NULL, NULL, NULL, '1'),
	('c5b392df-5f9c-4c1b-9168-502f1a56ca78', '2025-01-27 17:19:32.074797+00', '2025-02-06 20:09:35.184316+00', 'Color', 'Matte Black', NULL, '-ONX', 'CLR', NULL, 'Powder Coat', NULL, NULL, NULL, '1'),
	('7edaaaca-21d0-4707-91c0-7f52c7e598ab', '2025-01-27 17:19:32.074797+00', '2025-02-06 20:09:35.184316+00', 'Color', 'Mist', NULL, '-MST', 'CLR', NULL, 'Powder Coat', NULL, NULL, NULL, '1'),
	('c73d31ec-5682-4000-b0b2-d0ffaf73222c', '2025-01-27 17:19:32.074797+00', '2025-02-06 20:09:35.184316+00', 'Color', 'Olive Green', NULL, '-OGR', 'CLR', NULL, 'Powder Coat', NULL, NULL, NULL, '1'),
	('9a5e634b-85ba-4797-8afa-f0640c64621e', '2025-01-27 17:19:32.074797+00', '2025-02-06 20:09:35.184316+00', 'Color', 'Pewter', NULL, '-PEW', 'CLR', NULL, 'Powder Coat', NULL, NULL, NULL, '1'),
	('517c1a9b-d958-4c5b-babf-1cf819f7662f', '2025-01-27 17:19:32.074797+00', '2025-02-06 20:09:35.184316+00', 'Color', 'Rock Gray', NULL, '-RKY', 'CLR', NULL, 'Powder Coat', NULL, NULL, NULL, '1'),
	('1911c08b-cf4d-4897-8ac7-b030112fdd8b', '2025-01-27 17:19:32.074797+00', '2025-02-06 20:09:35.184316+00', 'Color', 'Sapphire Blue', NULL, '-SBL', 'CLR', NULL, 'Powder Coat', NULL, NULL, NULL, '1'),
	('14972b26-43da-458f-b3ad-270659030517', '2025-01-27 17:19:32.074797+00', '2025-02-06 20:09:35.184316+00', 'Color', 'Silver Vein', NULL, '-SLV', 'CLR', NULL, 'Powder Coat', NULL, NULL, NULL, '1'),
	('9edfd97e-6e0c-4bbf-91de-4cbb6e22db73', '2025-01-27 17:19:32.074797+00', '2025-02-06 20:09:35.184316+00', 'Color', 'White Vein', NULL, '-WHT', 'CLR', NULL, 'Powder Coat', NULL, NULL, NULL, '1'),
	('98ce8526-4eec-4933-9a47-803cbf756a1d', '2025-01-27 17:19:32.074797+00', '2025-02-06 20:09:35.184316+00', 'Ignition', 'Spark Ignition w/ Flame Sense', 710, 'FSEN', 'IGN', NULL, NULL, NULL, 'Fire Feature', 'Gas Fire Pit, Gas Fireplace, Gas Fire Sculpture, Gas Fire Table', NULL),
	('438878ca-d3de-4cc6-92ca-78e0bae2c6e2', '2025-01-27 17:55:58.810259+00', '2025-02-06 20:09:35.184316+00', 'Ignition', 'Low Voltage Electronic Ignition', NULL, 'E12', 'IGN', '60" Olympian with Sedona - 360° Spill - Self Contained Unit', NULL, NULL, 'Fire And Water', 'Gas Self Contained Unit', NULL),
	('a16d0bbb-0ea9-4b6c-8c47-a520a60d4466', '2025-01-27 17:19:32.074797+00', '2025-02-06 20:09:35.184316+00', 'Ignition', 'Plug & Play', 1142, 'EKIT', 'IGN', NULL, NULL, NULL, 'Fire Feature', 'Gas Fire Pit, Gas Fireplace, Gas Fire Sculpture, Gas Fire Table', NULL),
	('8637ddc1-4b9c-4753-af46-792226e5b28e', '2025-02-04 23:45:07.842726+00', '2025-02-06 20:09:35.184316+00', 'Top Color', 'Trophy Bronze', NULL, '-TBZ', 'TOPCLR', NULL, 'Powder Coat', NULL, NULL, NULL, '2'),
	('7744736c-fed5-413f-b3c8-7dd7fc1fee4b', '2025-02-04 23:45:07.842726+00', '2025-02-06 20:09:35.184316+00', 'Base Color', 'Gold Vein', NULL, '-GDV', 'BSCLR', NULL, 'Powder Coat, Wood Grain Top & Powder Coat Base, GFRC Top & Powder Coat Base', NULL, NULL, NULL, '2'),
	('929a9bb2-9cec-42af-a9a5-33d3bc7e517a', '2025-02-04 23:45:07.842726+00', '2025-02-06 20:09:35.184316+00', 'Base Color', 'Soft White', NULL, '-STW', 'BSCLR', NULL, 'Powder Coat, Wood Grain Top & Powder Coat Base, GFRC Top & Powder Coat Base', NULL, NULL, NULL, '2'),
	('f37a5afb-802d-47e3-8d13-2ae83a5323cf', '2025-02-04 23:45:07.842726+00', '2025-02-06 20:09:35.184316+00', 'Base Color', 'Bronze Hammertone', NULL, '-BZHT', 'BSCLR', NULL, 'Powder Coat, Wood Grain Top & Powder Coat Base, GFRC Top & Powder Coat Base', NULL, NULL, NULL, '2'),
	('09263b70-8277-4562-9d6d-5ce06a845574', '2025-02-04 23:45:07.842726+00', '2025-02-06 20:09:35.184316+00', 'Base Color', 'Copper Vein', NULL, '-CPV', 'BSCLR', NULL, 'Powder Coat, Wood Grain Top & Powder Coat Base, GFRC Top & Powder Coat Base', NULL, NULL, NULL, '2'),
	('deb0ce34-b128-448b-88fd-7eec565374c9', '2025-02-04 23:45:07.842726+00', '2025-02-06 20:09:35.184316+00', 'Base Color', 'Gray', NULL, '-GRY', 'BSCLR', NULL, 'Powder Coat, Wood Grain Top & Powder Coat Base, GFRC Top & Powder Coat Base', NULL, NULL, NULL, '2'),
	('0d1320e8-8b06-4dce-9d5f-036575c7b175', '2025-02-04 23:45:07.842726+00', '2025-02-06 20:09:35.184316+00', 'Base Color', 'Empire Bronze', NULL, '-EBZ', 'BSCLR', NULL, 'Powder Coat, Wood Grain Top & Powder Coat Base, GFRC Top & Powder Coat Base', NULL, NULL, NULL, '2'),
	('7a0c2f1e-fe1c-4de8-9237-05a80273a8fe', '2025-02-04 23:45:07.842726+00', '2025-02-06 20:09:35.184316+00', 'Base Color', 'Gloss Black', NULL, '-BLK', 'BSCLR', NULL, 'Powder Coat, Wood Grain Top & Powder Coat Base, GFRC Top & Powder Coat Base', NULL, NULL, NULL, '2'),
	('ee0cf82f-e1bf-472f-a633-842ddbcac077', '2025-02-04 23:45:07.842726+00', '2025-02-06 20:09:35.184316+00', 'Base Color', 'Java', NULL, '-JAV', 'BSCLR', NULL, 'Powder Coat, Wood Grain Top & Powder Coat Base, GFRC Top & Powder Coat Base', NULL, NULL, NULL, '2'),
	('d03d0f6c-bbe8-48ce-9048-bbedd1943bde', '2025-02-04 23:45:07.842726+00', '2025-02-06 20:09:35.184316+00', 'Base Color', 'Olive Green', NULL, '-OGR', 'BSCLR', NULL, 'Powder Coat, Wood Grain Top & Powder Coat Base, GFRC Top & Powder Coat Base', NULL, NULL, NULL, '2'),
	('51e995bf-c7d3-43a4-a113-e99d83dcdee4', '2025-02-04 23:45:07.842726+00', '2025-02-06 20:09:35.184316+00', 'Base Color', 'Pewter', NULL, '-PEW', 'BSCLR', NULL, 'Powder Coat, Wood Grain Top & Powder Coat Base, GFRC Top & Powder Coat Base', NULL, NULL, NULL, '2'),
	('5b159edd-0a19-4e66-8f36-8a188d51c05d', '2025-02-04 23:45:07.842726+00', '2025-02-06 20:09:35.184316+00', 'Base Color', 'Silver Vein', NULL, '-SLV', 'BSCLR', NULL, 'Powder Coat, Wood Grain Top & Powder Coat Base, GFRC Top & Powder Coat Base', NULL, NULL, NULL, '2'),
	('723f118d-d0f2-4c02-9c75-78d91468b2ec', '2025-02-04 23:45:07.842726+00', '2025-02-06 20:09:35.184316+00', 'Base Color', 'Sapphire Blue', NULL, '-SBL', 'BSCLR', NULL, 'Powder Coat, Wood Grain Top & Powder Coat Base, GFRC Top & Powder Coat Base', NULL, NULL, NULL, '2'),
	('8d7067e9-e7f2-444b-acd0-543b56e04619', '2025-02-04 23:45:07.842726+00', '2025-02-06 20:09:35.184316+00', 'Base Color', 'Rock Gray', NULL, '-RKY', 'BSCLR', NULL, 'Powder Coat, Wood Grain Top & Powder Coat Base, GFRC Top & Powder Coat Base', NULL, NULL, NULL, '2'),
	('2da27c01-a681-4024-8547-fdfdabe731ce', '2025-01-27 17:19:32.074797+00', '2025-02-06 20:09:35.184316+00', 'Color', 'White', NULL, '-WHT', 'CLR', NULL, 'Powder Coat', NULL, NULL, NULL, '1'),
	('43a7ec55-e88b-4b65-9118-147b688208c0', '2025-01-27 17:19:32.074797+00', '2025-02-06 20:09:35.184316+00', 'Color', 'Ebony', NULL, '-EBN', 'CLR', NULL, 'Wood Grain', NULL, NULL, NULL, '1'),
	('a38d153d-e305-4e1e-8cd4-8e1733c6ceac', '2025-01-27 17:19:32.074797+00', '2025-02-06 20:09:35.184316+00', 'Color', 'Ivory', NULL, '-IVY', 'CLR', NULL, 'Wood Grain', NULL, NULL, NULL, '1'),
	('6fe83069-ddc0-4925-9e39-c13d5c402979', '2025-01-27 17:19:32.074797+00', '2025-02-06 20:09:35.184316+00', 'Color', 'Oak', NULL, '-OAK', 'CLR', NULL, 'Wood Grain', NULL, NULL, NULL, '1'),
	('313bf73b-f172-48d3-8ad0-07e637657632', '2025-01-27 17:19:32.074797+00', '2025-02-06 20:09:35.184316+00', 'Gas Type', 'Natural Gas', NULL, '-NG', 'GAS', NULL, NULL, NULL, 'Fire Feature, Fire And Water', 'Gas Fire Bowl, Gas Fire Pit, Gas Fireplace, Gas Fire Sculpture, Gas Fire Table', NULL),
	('16c20370-cda7-4289-b9cd-b5f75d39aebf', '2025-02-04 23:45:07.842726+00', '2025-02-06 20:09:35.184316+00', 'Top Color', 'Silver Vein', NULL, '-SLV', 'TOPCLR', NULL, 'Powder Coat', NULL, NULL, NULL, '2'),
	('c7c41668-ba32-4fb7-a9c3-085f017c9556', '2025-01-27 17:19:32.074797+00', '2025-02-06 20:09:35.184316+00', 'Ignition', 'Low Voltage Electronic Ignition', 1232, 'E12V', 'IGN', NULL, NULL, NULL, 'Fire Feature, Fire And Water', 'Gas Fire Bowl, Gas Fire Pit, Gas Fireplace, Gas Fire Sculpture, Gas Fire Table', NULL),
	('536b0f41-5465-4f4c-b04d-5f233e587847', '2025-02-05 20:04:34.100098+00', '2025-02-06 20:09:35.184316+00', 'Top Color', 'Metallic Bronze', 180, '-MBR', 'TOPCLR', NULL, 'GFRC Top & Powder Coat Base', NULL, NULL, NULL, '2'),
	('3c224784-70ea-47ff-86fe-ab14473fb806', '2025-02-05 20:04:34.100098+00', '2025-02-06 20:09:35.184316+00', 'Top Color', 'Metallic Copper', 180, '-MCP', 'TOPCLR', NULL, 'GFRC Top & Powder Coat Base', NULL, NULL, NULL, '2'),
	('f053b8c4-13d2-4dba-b8f4-da345683cbe2', '2025-02-05 20:04:34.100098+00', '2025-02-06 20:09:35.184316+00', 'Top Color', 'Metallic Pearl', 180, '-MPR', 'TOPCLR', NULL, 'GFRC Top & Powder Coat Base', NULL, NULL, NULL, '2'),
	('455a3738-c199-4ee4-8745-20032981721b', '2025-02-05 20:04:34.100098+00', '2025-02-06 20:09:35.184316+00', 'Top Color', 'Ash', NULL, '-ASH', 'TOPCLR', NULL, 'GFRC Top & Powder Coat Base', NULL, NULL, NULL, '2'),
	('255bfc46-d009-4a38-8e3b-f241f28cf2dc', '2025-02-05 20:04:34.100098+00', '2025-02-06 20:09:35.184316+00', 'Top Color', 'Ebony', NULL, '-EBN', 'TOPCLR', NULL, 'Wood Grain Top & Powder Coat Base', NULL, NULL, NULL, '2'),
	('2647636e-f1d3-470d-a08f-87d7e7be4047', '2025-02-05 20:04:34.100098+00', '2025-02-06 20:09:35.184316+00', 'Top Color', 'Ivory', NULL, '-IVY', 'TOPCLR', NULL, 'Wood Grain Top & Powder Coat Base', NULL, NULL, NULL, '2'),
	('13542d8b-afc2-4a75-8be3-610dc1afd1a7', '2025-02-05 20:04:34.100098+00', '2025-02-06 20:09:35.184316+00', 'Top Color', 'Oak', NULL, '-OAK', 'TOPCLR', NULL, 'Wood Grain Top & Powder Coat Base', NULL, NULL, NULL, '2'),
	('fc5c9106-5149-4b2e-bcf0-13fc92b2101f', '2025-02-05 20:04:34.100098+00', '2025-02-06 20:09:35.184316+00', 'Top Color', 'Metallic Silver', 180, '-MSV', 'TOPCLR', NULL, 'GFRC Top & Powder Coat Base', NULL, NULL, NULL, '2'),
	('7235ef3a-a18d-4e2e-bdf1-3d30489375be', '2025-02-05 20:04:34.100098+00', '2025-02-06 20:09:35.184316+00', 'Top Color', 'Metallic Slate', 180, '-MSL', 'TOPCLR', NULL, 'GFRC Top & Powder Coat Base', NULL, NULL, NULL, '2'),
	('582121ef-4551-4808-852e-c190f46ff4fe', '2025-02-05 20:04:34.100098+00', '2025-02-06 20:09:35.184316+00', 'Top Color', 'Natural Gray', NULL, '-NGY', 'TOPCLR', NULL, 'GFRC Top & Powder Coat Base', NULL, NULL, NULL, '2'),
	('dac296e4-3aba-4d79-86ca-3624a5294322', '2025-02-05 20:04:34.100098+00', '2025-02-06 20:09:35.184316+00', 'Top Color', 'Rustic Coffee', 180, '-RCF', 'TOPCLR', NULL, 'GFRC Top & Powder Coat Base', NULL, NULL, NULL, '2'),
	('3a95d0dd-3a6b-44e3-919d-fb033f3b1488', '2025-02-05 20:04:34.100098+00', '2025-02-06 20:09:35.184316+00', 'Top Color', 'Rustic Gray', 180, '-RGR', 'TOPCLR', NULL, 'GFRC Top & Powder Coat Base', NULL, NULL, NULL, '2'),
	('b70c2df4-583a-4cfa-9e3e-d35c36f1aa88', '2025-02-05 20:04:34.100098+00', '2025-02-06 20:09:35.184316+00', 'Top Color', 'Rustic Moss Stone', 180, '-RMS', 'TOPCLR', NULL, 'GFRC Top & Powder Coat Base', NULL, NULL, NULL, '2'),
	('ab0670e2-5762-49e4-bbd2-51f534b19204', '2025-02-05 20:04:34.100098+00', '2025-02-06 20:09:35.184316+00', 'Top Color', 'Rustic White', 180, '-RWH', 'TOPCLR', NULL, 'GFRC Top & Powder Coat Base', NULL, NULL, NULL, '2'),
	('d290c194-a059-4a2a-8e79-bc6fcac16bb3', '2025-02-05 20:04:34.100098+00', '2025-02-06 20:09:35.184316+00', 'Top Color', 'Black', NULL, '-BLK', 'TOPCLR', NULL, 'GFRC Top & Powder Coat Base', NULL, NULL, NULL, '2'),
	('993187ea-c369-486a-8931-c2610869e7fe', '2025-02-05 20:04:34.100098+00', '2025-02-06 20:09:35.184316+00', 'Top Color', 'Vanilla', NULL, '-VAN', 'TOPCLR', NULL, 'GFRC Top & Powder Coat Base', NULL, NULL, NULL, '2'),
	('9b9fe2e1-7731-47a6-9d52-cd460f2d835f', '2025-02-05 20:04:34.100098+00', '2025-02-06 20:09:35.184316+00', 'Top Color', 'Brown', NULL, '-BRN', 'TOPCLR', NULL, 'GFRC Top & Powder Coat Base', NULL, NULL, NULL, '2'),
	('17940999-350b-4214-ab3b-b1c56be14569', '2025-02-05 20:04:34.100098+00', '2025-02-06 20:09:35.184316+00', 'Top Color', 'Chestnut', NULL, '-CST', 'TOPCLR', NULL, 'GFRC Top & Powder Coat Base', NULL, NULL, NULL, '2'),
	('76a5222c-d14c-4b0a-b2cc-0ec7e12d591f', '2025-02-05 20:04:34.100098+00', '2025-02-06 20:09:35.184316+00', 'Top Color', 'Chocolate', NULL, '-CHC', 'TOPCLR', NULL, 'GFRC Top & Powder Coat Base', NULL, NULL, NULL, '2'),
	('d9362c1d-b35d-4b13-8140-25bc45822597', '2025-02-05 20:04:34.100098+00', '2025-02-06 20:09:35.184316+00', 'Top Color', 'Limestone', NULL, '-LIM', 'TOPCLR', NULL, 'GFRC Top & Powder Coat Base', NULL, NULL, NULL, '2'),
	('f70d451d-d338-4905-adec-e6b6a54347de', '2025-02-05 20:04:34.100098+00', '2025-02-06 20:09:35.184316+00', 'Top Color', 'Gray', NULL, '-GRY', 'TOPCLR', NULL, 'GFRC Top & Powder Coat Base', NULL, NULL, NULL, '2'),
	('cbb336fa-ec35-4748-92f4-f3956a6545ff', '2025-02-04 23:45:07.842726+00', '2025-02-06 20:09:35.184316+00', 'Top Color', 'Gold Vein', NULL, '-GDV', 'TOPCLR', NULL, 'Powder Coat', NULL, NULL, NULL, '2');


--
-- Data for Name: BaseProducts; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO "public"."BaseProducts" ("id", "created_at", "updated_at", "base_part_number", "product", "base_price_dealer", "base_price_map", "base_price_msrp", "base_price_distributor", "base_price_group", "base_price_internet", "base_price_landscape", "base_price_master_distributor", "code_formula", "product_shape", "specification_sheet", "size", "feature_type", "product_type", "fire_feature_category", "images", "color_tones") VALUES
	('8e312422-a5cb-4daa-ab9e-dfb52683488a', '2025-02-01 20:06:23.789783+00', '2025-02-06 20:09:31.928537+00', 'OPT-CTL108', '108" Catalina Fire Pit', 4472, 8230, 9053, 3802, 4115, 4920, 5367, 3578, 'OPT-CTL108{MAT}{IGN}{CLR}{GAS}', 'Rectangular', NULL, '108"', 'Fire Feature', 'Feature', 'Gas Fire Pit', NULL, '1'),
	('3aa8453c-e537-4348-baa6-27d3ebe09c0d', '2025-01-27 17:42:39.354374+00', '2025-02-06 20:09:31.928537+00', 'OPT-R24PCFW', '24" Cazo Fire & Water Bowl', 1304, 2400, 2640, 1109, 1200, 1435, 1565, 1044, 'OPT-{MAT}{IGN}{CLR}{GAS}', 'Round', NULL, '24"', 'Fire And Water', 'Feature', 'Gas Fire Bowl', NULL, '1'),
	('4db87585-9de0-47c6-8f54-d6ada4ca67bc', '2025-01-28 00:16:47.829279+00', '2025-02-06 20:09:31.928537+00', 'OPT-24SFW', '24" Maya Fire & Water Bowl', 1364, 2510, 2761, 1160, 1255, 1501, 1637, 1092, 'OPT-24S{MAT}{IGN}{CLR}{GAS}', 'Square', NULL, '24"', 'Fire And Water', 'Feature', 'Gas Fire Bowl', NULL, '1'),
	('248a20d8-d852-4eed-a2b4-efec9d56c2e3', '2025-01-28 00:16:47.829279+00', '2025-02-06 20:09:31.928537+00', 'OPT-SQ24FANDW', '24" Maya Fire & Water Bowl - Gravity Spill', 2200, 4048, 4453, 1870, 2024, 2420, 2640, 1760, 'OPT-SQ{MAT}{IGN}{CLR}{GAS}', 'Square', NULL, '24"', 'Fire And Water', 'Feature', 'Gas Fire Bowl', NULL, '1'),
	('c7e00e95-6bbe-48ba-a748-99d4bb94b67b', '2025-01-28 00:16:47.829279+00', '2025-02-06 20:09:31.928537+00', 'OPT-24SFWWS', '24" Maya Fire & Water Bowl - Wide Spill', 1964, 3614, 3976, 1670, 1807, 2161, 2357, 1572, 'OPT-24S{MAT}{IGN}{CLR}{GAS}', 'Square', NULL, '24"', 'Fire And Water', 'Feature', 'Gas Fire Bowl', NULL, '1'),
	('a56f8ba0-e6d3-4b0b-b17b-42e93357c2d2', '2025-01-28 00:16:47.829279+00', '2025-02-06 20:09:31.928537+00', 'OPT-24SQPCFWWV', '24" Maya Fire & Water - Wave Scupper', 1908, 3512, 3864, 1622, 1756, 2099, 2290, 1527, 'OPT-24SQPCFWWV{MAT}{IGN}{CLR}{GAS}', 'Square', NULL, '24"', 'Fire And Water', 'Feature', 'Gas Fire Bowl', NULL, '1'),
	('33b9d4e4-5bff-4ab4-ab77-90270be12dc9', '2025-01-28 00:16:47.829279+00', '2025-02-06 20:09:31.928537+00', 'OPT-24SP', '24" Maya Planter Bowl', 525, 966, 1063, 447, 483, 578, 630, 420, 'OPT-24S{MAT}{CLR}', 'Square', NULL, '24"', 'Planter Feature', 'Feature', NULL, NULL, '1'),
	('0fc90ccb-ce6c-4804-9561-40a0b01ae918', '2025-01-28 00:16:47.829279+00', '2025-02-06 20:09:31.928537+00', 'OPT-24SPW', '24" Maya Planter & Water Bowl', 841, 1548, 1703, 715, 774, 926, 1010, 673, 'OPT-24S{MAT}{CLR}', 'Square', NULL, '24"', 'Planter And Water', 'Feature', NULL, NULL, '1'),
	('8c16f3a2-5e47-436d-ad2a-1627e2b01cd3', '2025-01-28 00:16:47.829279+00', '2025-02-06 20:09:31.928537+00', 'OPT-24SWO', '24" Maya Water Bowl', 612, 1128, 1241, 521, 564, 674, 735, 490, 'OPT-24S{MAT}{CLR}', 'Square', NULL, '24"', 'Water Feature', 'Feature', NULL, NULL, '1'),
	('a5e4c604-181a-435a-9e46-2648a4a0c9f8', '2025-01-28 00:16:47.829279+00', '2025-02-06 20:09:31.928537+00', 'OPT-24SCWMT', '24" Maya Water Bowl - Wall Mounted', 1058, 1948, 2143, 900, 974, 1164, 1270, 847, 'OPT-24SCWMT{MAT}', 'Half-Squared', NULL, '24"', 'Water Feature', 'Feature', NULL, NULL, NULL),
	('2e6636d0-0baf-4026-98e1-df51d445bc84', '2025-01-28 00:16:47.829279+00', '2025-02-06 20:09:31.928537+00', 'OPT-24SQPCWS', '24" Maya Water Bowl - Wide Spillway', 1042, 1918, 2110, 886, 959, 1147, 1251, 834, 'OPT-24S{MAT}{CLR}', 'Square', NULL, '24"', 'Water Feature', 'Feature', NULL, NULL, '1'),
	('048c0ed0-f1c6-4071-8d4a-72cfbc2a1a09', '2025-01-29 01:06:38.056209+00', '2025-02-06 20:09:31.928537+00', 'OPT-PMD2414', '24" Moderna Planter', 365, 672, 740, 311, 336, 402, 438, 292, 'OPT-PMD2414{MAT}', 'Square', NULL, '24"', 'Planter Feature', 'Planter', NULL, NULL, '1'),
	('726cd109-a2e8-49f6-9914-395855dd890e', '2025-01-29 01:06:38.056209+00', '2025-02-06 20:09:31.928537+00', 'OPT-ROMFW24', '24" Roma Fire & Water Bowl', 1361, 2506, 2757, 1157, 1253, 1498, 1634, 1089, 'OPT-ROMFW24{MAT}{IGN}{CLR}{GAS}', 'Round', NULL, '24"', 'Fire And Water', 'Feature', 'Gas Fire Bowl', NULL, '1'),
	('5e2dbdda-5139-4f2d-a328-7b97efc0f0e0', '2025-01-29 01:06:38.056209+00', '2025-02-06 20:09:31.928537+00', 'OPT-PTSS24', '24" x 24" Tuscon Planter', 400, 736, 810, 340, 368, 440, 480, 320, 'OPT-PTSS24{MAT}', 'Square', NULL, '24" x 24"', 'Planter Feature', 'Planter', NULL, NULL, NULL),
	('18ed0d8b-b219-4a03-ba8c-c7f427708a7e', '2025-01-29 01:06:38.056209+00', '2025-02-06 20:09:31.928537+00', 'OPT-PTST2634', '26" x 26" Vertical Tuscon Planter', 800, 1472, 1620, 680, 736, 880, 960, 640, 'OPT-PTST2634{MAT}', 'Square', NULL, '26" x 26"', 'Planter Feature', 'Planter', NULL, NULL, NULL),
	('e87dd467-e3be-4e34-9d46-4f286ea36797', '2025-01-27 17:42:39.354374+00', '2025-02-06 20:09:31.928537+00', 'OPT-SED228', '28" Sedona 2.0 Fire Bowl', 1111, 2046, 2251, 945, 1023, 1223, 1334, 889, 'OPT-SED228{MAT}{IGN}{CLR}{GAS}', 'Round', NULL, '28"', 'Fire Feature', 'Feature', 'Gas Fire Bowl', NULL, '1'),
	('08bd4f9e-a18d-4d5b-a8f3-e50f215d00bb', '2025-01-27 17:42:39.354374+00', '2025-02-06 20:09:31.928537+00', 'OPT-SED228FW', '28" Sedona 2.0 Fire & Water Bowl', 1415, 2604, 2865, 1203, 1302, 1557, 1698, 1132, 'OPT-SED228FW{MAT}{IGN}{CLR}{GAS}', 'Round', NULL, '28"', 'Fire And Water', 'Feature', 'Gas Fire Bowl', NULL, '1'),
	('7e7913c4-593d-4a6b-a8b7-27aaab070397', '2025-01-27 17:42:39.354374+00', '2025-02-06 20:09:31.928537+00', 'OPT-SED2RP', '28" Sedona 2.0 Planter Bowl', 614, 1130, 1243, 522, 565, 676, 737, 492, 'OPT-SED2RP{MAT}{CLR}', 'Round', NULL, '28"', 'Planter Feature', 'Feature', NULL, NULL, '1'),
	('08d314f2-7e7a-49ac-ae2d-e2c5416252d6', '2025-01-27 17:42:39.354374+00', '2025-02-06 20:09:31.928537+00', 'OPT-SED2RPWB', '28" Sedona 2.0 Planter & Water Bowl', 899, 1656, 1822, 765, 828, 989, 1079, 720, 'OPT-SED2RPWB{MAT}{CLR}', 'Round', NULL, '28"', 'Planter And Water', 'Feature', NULL, NULL, '1'),
	('60948e20-34c2-41d7-97c9-4b59ffe3aef7', '2025-01-28 20:57:47.852302+00', '2025-02-06 20:09:31.928537+00', 'OPT-AVLFO30', '30" Avalon Fire Bowl', 1182, 2176, 2394, 1005, 1088, 1301, 1419, 946, 'OPT-{MAT}{IGN}{CLR}{GAS}', 'Square', NULL, '30"', 'Fire Feature', 'Feature', 'Gas Fire Bowl', NULL, '1'),
	('a16198a0-d235-4518-a055-ade3b32dd985', '2025-01-28 20:57:47.852302+00', '2025-02-06 20:09:31.928537+00', 'OPT-AVLFW30', '30" Avalon Fire & Water Bowl', 1481, 2726, 2999, 1259, 1363, 1630, 1778, 1185, 'OPT-{MAT}{IGN}{CLR}{GAS}', 'Square', NULL, '30"', 'Fire And Water', 'Feature', 'Gas Fire Bowl', NULL, '1'),
	('329009ca-0153-42ab-b11b-c9425a2ce31d', '2025-01-28 00:16:47.829279+00', '2025-02-06 20:09:31.928537+00', 'OPT-30SFO', '30" Maya Fire Bowl', 1182, 2176, 2394, 1005, 1088, 1301, 1419, 946, 'OPT-{MAT}{IGN}{CLR}{GAS}', 'Square', NULL, '30"', 'Fire Feature', 'Feature', 'Gas Fire Bowl', NULL, '1'),
	('780c9134-63cc-422e-a7d0-9ed32b69daf7', '2025-01-28 00:16:47.829279+00', '2025-02-06 20:09:31.928537+00', 'OPT-30SFW', '30" Maya Fire & Water Bowl', 1429, 2630, 2893, 1215, 1315, 1572, 1715, 1144, 'OPT-30S{MAT}{IGN}{CLR}{GAS}', 'Square', NULL, '30"', 'Fire And Water', 'Feature', 'Gas Fire Bowl', NULL, '1'),
	('c73d900f-59f7-4f87-a172-b1ea73d03626', '2025-02-01 20:06:23.789783+00', '2025-02-06 20:09:31.928537+00', 'OPT-UCTDR108PB', '108" Catalina Fire Pit - RTF', 3873, 7128, 7841, 3293, 3564, 4261, 4648, 3099, 'OPT-UCTDR108PB{MAT}{IGN}{CLR}{GAS}', 'Rectangular', NULL, '108"', 'Fire Feature', 'Feature', 'Gas Fire Pit', NULL, '1'),
	('9d52ddc1-ebad-47e9-bb6a-fece51db5fbd', '2025-01-27 17:42:39.354374+00', '2025-02-06 20:09:31.928537+00', 'OPT-24RP', '24" Cazo Planter Bowl', 593, 1092, 1202, 505, 546, 653, 712, 475, 'OPT-{MAT}{CLR}', 'Round', NULL, '24"', 'Planter Feature', 'Feature', NULL, NULL, '1'),
	('bced6cec-04f0-4778-8a95-83bc1b3e57ea', '2025-01-28 00:16:47.829279+00', '2025-02-06 20:09:31.928537+00', 'OPT-SQ30FANDW', '30" Maya Fire & Water Bowl - Gravity Spill', 2468, 4542, 4997, 2098, 2271, 2715, 2962, 1975, 'OPT-SQ{MAT}{IGN}{CLR}{GAS}', 'Square', NULL, '30"', 'Fire And Water', 'Feature', 'Gas Fire Bowl', NULL, '1'),
	('ab1a1c86-7f7a-4a9a-bfe1-a2953be5ce5f', '2025-01-28 00:16:47.829279+00', '2025-02-06 20:09:31.928537+00', 'OPT-30SFWWS', '30" Maya Fire & Water Bowl - Wide Spill', 2119, 3900, 4290, 1802, 1950, 2331, 2543, 1696, 'OPT-30S{MAT}{IGN}{CLR}{GAS}', 'Square', NULL, '30"', 'Fire And Water', 'Feature', 'Gas Fire Bowl', NULL, '1'),
	('716b8ade-6f54-4b96-9151-2820a726f0e7', '2025-01-28 00:16:47.829279+00', '2025-02-06 20:09:31.928537+00', 'OPT-30SP', '30" Maya Planter Bowl', 623, 1148, 1263, 530, 574, 686, 748, 499, 'OPT-30S{MAT}{CLR}', 'Square', NULL, '30"', 'Planter Feature', 'Feature', NULL, NULL, '1'),
	('5cd1b931-ecfc-4802-8d07-665d1851e8b3', '2025-01-28 00:16:47.829279+00', '2025-02-06 20:09:31.928537+00', 'OPT-30SPW', '30" Maya Planter & Water Bowl', 949, 1748, 1923, 807, 874, 1044, 1139, 760, 'OPT-30S{MAT}{CLR}', 'Square', NULL, '30"', 'Planter And Water', 'Feature', NULL, NULL, '1'),
	('be67ef25-7b6f-4d80-84e5-95f564e5c5bc', '2025-01-28 00:16:47.829279+00', '2025-02-06 20:09:31.928537+00', 'OPT-30SWO', '30" Maya Water Bowl', 658, 1212, 1334, 560, 606, 724, 790, 527, 'OPT-30S{MAT}{CLR}', 'Square', NULL, '30"', 'Water Feature', 'Feature', NULL, NULL, '1'),
	('f6e588a5-a9d9-4508-9cd5-fc3188f80464', '2025-01-28 00:16:47.829279+00', '2025-02-06 20:09:31.928537+00', 'OPT-30SQPCWS', '30" Maya Water Bowl - Wide Spillway', 1458, 2684, 2953, 1240, 1342, 1604, 1750, 1167, 'OPT-30S{MAT}{CLR}', 'Square', NULL, '30"', 'Water Feature', 'Feature', NULL, NULL, '1'),
	('1603f97e-c5b8-4544-88f3-ee9f06541f5c', '2025-01-29 01:06:38.056209+00', '2025-02-06 20:09:31.928537+00', 'OPT-PMD3020', '30" Moderna Planter', 733, 1350, 1485, 624, 675, 807, 880, 587, 'OPT-PMD3020{MAT}', 'Square', NULL, '30"', 'Planter Feature', 'Planter', NULL, NULL, NULL),
	('f5721780-ca46-41ef-af28-55fb114a848c', '2025-01-29 01:06:38.056209+00', '2025-02-06 20:09:31.928537+00', 'OPT-30NLPCF', '30" Nile Fire & Water Bowl', 3690, 6790, 7469, 3137, 3395, 4059, 4428, 2952, 'OPT-30NL{MAT}{IGN}{CLR}{GAS}', 'Square', NULL, '30"', 'Fire And Water', 'Feature', 'Gas Fire Bowl', NULL, '1'),
	('7bae7e44-bb69-4aa8-8ca7-2076124a2346', '2025-01-29 01:06:38.056209+00', '2025-02-06 20:09:31.928537+00', 'OPT-PSR3020', '30" Sierra Planter - 20" Tall', 801, 1474, 1622, 681, 737, 882, 962, 641, 'OPT-PSR3020{MAT}', 'Square', NULL, '30"', 'Planter Feature', 'Planter', NULL, NULL, NULL),
	('84cd7628-4c8a-4fbc-8524-15256f6fc064', '2025-01-29 01:06:38.056209+00', '2025-02-06 20:09:31.928537+00', 'OPT-PSR3030', '30" Sierra Planter - 30" Tall', 923, 1700, 1870, 785, 850, 1016, 1108, 739, 'OPT-PSR3030{MAT}', 'Square', NULL, '30"', 'Planter Feature', 'Planter', NULL, NULL, NULL),
	('635e4114-02ab-435a-9967-9491b66d7808', '2025-01-29 01:06:38.056209+00', '2025-02-06 20:09:31.928537+00', 'OPT-PTSS30', '30" x 20" Tuscon Planter', 795, 1464, 1611, 676, 732, 875, 954, 636, 'OPT-PTSS30{MAT}', 'Square', NULL, '30" x 20"', 'Planter Feature', 'Planter', NULL, NULL, NULL),
	('05034edd-b897-4917-b00b-c896adff5c32', '2025-01-28 20:57:47.852302+00', '2025-02-06 20:09:31.928537+00', 'OPT-AVTFPPC3030', '30" x 30" Avalon Tall Fire Pit', 1346, 2478, 2726, 1145, 1239, 1481, 1616, 1077, 'OPT-AVTFP{MAT}{IGN}{CLR}{GAS}', 'Square', NULL, '30"', 'Fire Feature', 'Feature', 'Gas Fire Pit', NULL, '1'),
	('f0e9f5ce-1610-4154-ac44-4f50b5fe0616', '2025-01-27 17:42:39.354374+00', '2025-02-06 20:09:31.928537+00', 'OPT-31RFO', '31" Cazo Fire Bowl', 1182, 2176, 2394, 1005, 1088, 1301, 1419, 946, 'OPT-31RFO{MAT}{IGN}{CLR}{GAS}', 'Round', NULL, '31"', 'Fire Feature', 'Feature', 'Gas Fire Bowl', NULL, '1'),
	('47e3c7b5-2f5e-4cbd-b1ad-e75a0537a44c', '2025-01-27 17:42:39.354374+00', '2025-02-06 20:09:31.928537+00', 'OPT-31RP', '31" Cazo Planter Bowl', 654, 1204, 1325, 556, 602, 720, 785, 524, 'OPT-{MAT}{CLR}', 'Round', NULL, '31"', 'Planter Feature', 'Feature', NULL, NULL, '1'),
	('695740d3-90b7-4ddb-829a-ac59e7d4f1ba', '2025-01-27 17:42:39.354374+00', '2025-02-06 20:09:31.928537+00', 'OPT-31RWO', '31" Cazo Water Bowl', 715, 1316, 1448, 608, 658, 787, 858, 572, 'OPT-31RWO{MAT}{CLR}', 'Round', NULL, '31"', 'Water Feature', 'Feature', NULL, NULL, '1'),
	('68294f3a-8e6a-433b-a7a2-5254a2e11298', '2025-01-29 01:06:38.056209+00', '2025-02-06 20:09:31.928537+00', 'OPT-31RCFO', '31" Remi Fire Bowl', 1755, 3230, 3553, 1492, 1615, 1931, 2106, 1404, 'OPT-31RCFO{MAT}{IGN}{GAS}', 'Round', NULL, '31"', 'Fire Feature', 'Feature', 'Gas Fire Bowl', NULL, '1'),
	('2ba2676f-13fc-4641-a5c1-f38b571ad0b4', '2025-01-29 01:06:38.056209+00', '2025-02-06 20:09:31.928537+00', 'OPT-31RCFW', '31" Remi Fire & Water Bowl', 1999, 3680, 4048, 1700, 1840, 2199, 2399, 1600, 'OPT-31RCFW{MAT}{IGN}GAS}', 'Round', NULL, '31"', 'Fire And Water', 'Feature', 'Gas Fire Bowl', NULL, '1'),
	('e22b08fd-ce2e-4b27-8c90-76b88262c696', '2025-01-29 01:06:38.056209+00', '2025-02-06 20:09:31.928537+00', 'OPT-31RCFOGS', '31" Remi Fire & Water Bowl - Gravity Spill', 2476, 4556, 5012, 2105, 2278, 2724, 2972, 1981, 'OPT-31RCFOGS{MAT}{IGN}{GAS}', 'Round', NULL, '31"', 'Fire And Water', 'Feature', 'Gas Fire Bowl', NULL, '1'),
	('d4a3ec0e-3173-435e-b5d7-570e0ab6ea12', '2025-01-29 01:06:38.056209+00', '2025-02-06 20:09:31.928537+00', 'OPT-31RCPO', '31" Remi Planter Bowl', 1313, 2416, 2658, 1117, 1208, 1445, 1576, 1051, 'OPT-31RCPO{MAT}', 'Round', NULL, '31"', 'Planter Feature', 'Feature', NULL, NULL, NULL),
	('67647f37-fcc9-433b-b7a8-dea3a6f2e123', '2025-01-29 01:06:38.056209+00', '2025-02-06 20:09:31.928537+00', 'OPT-31RCPW', '31" Remi Planter & Water Bowl', 1432, 2636, 2900, 1218, 1318, 1576, 1719, 1146, 'OPT-31RCPW{MAT}', 'Round', NULL, '31"', 'Planter And Water', 'Feature', NULL, NULL, NULL),
	('5693cdca-8643-45ba-a2ca-d262d41e7aa3', '2025-01-29 01:06:38.056209+00', '2025-02-06 20:09:31.928537+00', 'OPT-31RCWO', '31" Remi Water Bowl', 1442, 2654, 2920, 1226, 1327, 1587, 1731, 1154, 'OPT-31RCWO{MAT}', 'Round', NULL, '31"', 'Water Feature', 'Feature', NULL, NULL, NULL),
	('8d5cbf36-7a7f-4960-8ae7-1a11cb61740a', '2025-01-27 17:42:39.354374+00', '2025-02-06 20:09:31.928537+00', 'OPT-32RWGFW', '32" Cazo Fire and Water Bowl', 1446, 2662, 2929, 1230, 1331, 1591, 1736, 1157, 'OPT-32RWGFW{MAT}{IGN}{CLR}{GAS}', 'Round', NULL, '32"', 'Fire And Water', 'Feature', 'Gas Fire Bowl', NULL, '1'),
	('c286a669-958d-4e3d-911a-eafbcaa1653e', '2025-01-27 17:42:39.354374+00', '2025-02-06 20:09:31.928537+00', 'OPT-32RWGFO', '32" Cazo Fire Bowl', 1216, 2238, 2462, 1034, 1119, 1338, 1460, 973, 'OPT-32RWGFO{MAT}{IGN}{CLR}{GAS}', 'Round', NULL, '32"', 'Fire Feature', 'Feature', 'Gas Fire Bowl', NULL, '1'),
	('4d556990-c207-4e03-94d5-62067eeb57f3', '2025-02-01 20:06:23.789783+00', '2025-02-06 20:09:31.928537+00', 'OPT-MODPC10828', '108" Moderno Fire Pit', 3370, 6202, 6823, 2865, 3101, 3707, 4044, 2696, 'OPT-MOD{MAT}{IGN}{CLR}{GAS}', 'Rectangular', NULL, '108"', 'Fire Feature', 'Feature', 'Gas Fire Pit', NULL, '1'),
	('f3acb021-05d4-4cc4-a986-06bc46a2f4f6', '2025-01-31 00:53:49.307925+00', '2025-02-06 20:09:31.928537+00', 'OPT-UFRT108DRPB', '108" Pismo Fire Pit - RTF', 2960, 5448, 5993, 2516, 2724, 3256, 3552, 2368, 'OPT-UFRT108DRPB{MAT}{IGN}{CLR}{GAS}', 'Rectangular', NULL, '108"', 'Fire Feature', 'Feature', 'Gas Fire Pit', NULL, '1'),
	('f1198752-a30c-47de-b6e9-0c459619c0f3', '2025-02-01 20:06:23.789783+00', '2025-02-06 20:09:31.928537+00', 'OPT-CTL120', '120" Catalina Fire Pit', 4985, 9174, 10092, 4238, 4587, 5484, 5982, 3988, 'OPT-CTL120{MAT}{IGN}{CLR}{GAS}', 'Rectangular', NULL, '120"', 'Fire Feature', 'Feature', 'Gas Fire Pit', NULL, '1'),
	('758b620e-400d-4784-8d47-15d82bea7ae5', '2025-02-01 20:06:23.789783+00', '2025-02-06 20:09:31.928537+00', 'OPT-UCTDR120PB', '120" Catalina Fire Pit - RTF', 4294, 7902, 8693, 3650, 3951, 4724, 5153, 3436, 'OPT-UCTDR120PB{MAT}{IGN}{CLR}{GAS}', 'Rectangular', NULL, '120"', 'Fire Feature', 'Feature', 'Gas Fire Pit', NULL, '1'),
	('3a91acff-f099-45ef-aebb-84be64ad53fd', '2025-01-27 17:42:39.354374+00', '2025-02-06 20:09:31.928537+00', 'OPT-24RWO', '24" Cazo Water Bowl', 615, 1132, 1246, 523, 566, 677, 738, 492, 'OPT-{MAT}{CLR}', 'Round', NULL, '24"', 'Water Feature', 'Feature', NULL, NULL, '1'),
	('587769cd-83a1-45dc-85e2-bf2c57b462a8', '2025-01-27 17:42:39.354374+00', '2025-02-06 20:09:31.928537+00', 'OPT-R24CPWMT', '24" Cazo Water Bowl - Wall Mounted', 1058, 1948, 2143, 900, 974, 1164, 1270, 847, 'OPT-{MAT}', 'Semi-Round', NULL, '24"', 'Water Feature', 'Feature', NULL, NULL, NULL),
	('4e65dd7e-4e8d-44ec-a94d-ec23206807c4', '2025-01-27 17:42:39.354374+00', '2025-02-06 20:09:31.928537+00', 'OPT-32RWGPO', '32" Cazo Planter Bowl', 673, 1240, 1364, 573, 620, 741, 808, 539, 'OPT-32RWGPO{MAT}{CLR}', 'Round', NULL, '32"', 'Planter Feature', 'Feature', 'Gas Fire Bowl', NULL, '1'),
	('5dc5fa0d-9389-4b7e-83e3-8f0af88508a6', '2025-01-27 17:42:39.354374+00', '2025-02-06 20:09:31.928537+00', 'OPT-32RWGPW', '32" Cazo Planter & Water Bowl', 980, 1804, 1985, 833, 902, 1078, 1176, 784, 'OPT-32RWGPW{MAT}{CLR}', 'Round', NULL, '32"', 'Planter And Water', 'Feature', 'Gas Fire Bowl', NULL, '1'),
	('838473ce-fe0f-4fcd-a7d5-1714a53847cd', '2025-01-27 17:42:39.354374+00', '2025-02-06 20:09:31.928537+00', 'OPT-32RWGWO', '32" Cazo Water Bowl', 736, 1356, 1492, 626, 678, 810, 884, 589, 'OPT-32RWGWO{MAT}{CLR}', 'Round', NULL, '32"', 'Water Feature', 'Feature', 'Gas Fire Bowl', NULL, '1'),
	('66570186-9e3e-4cb1-87e9-56b23c363c81', '2025-01-29 01:06:38.056209+00', '2025-02-06 20:09:31.928537+00', 'OPT-FL3218', '32" Florence Fire Pit - 18" Tall', 1344, 2474, 2722, 1143, 1237, 1479, 1613, 1076, 'OPT-FL3218{MAT}{IGN}{CLR}{GAS}', 'Round', NULL, '32"', 'Fire Feature', 'Feature', 'Gas Fire Pit', NULL, '1'),
	('b1d3c0ae-173f-4011-a70d-76d859b64323', '2025-01-27 17:42:39.354374+00', '2025-02-06 20:09:31.928537+00', 'OPT-33RFO', '33" Sedona Fire Bowl', 1139, 2096, 2306, 969, 1048, 1253, 1367, 912, 'OPT-33RFO{MAT}{IGN}{CLR}{GAS}', 'Round', NULL, '33"', 'Fire Feature', 'Feature', 'Gas Fire Bowl', NULL, '1'),
	('7577397c-80e9-4104-8fd7-802a0c13579f', '2025-01-27 17:42:39.354374+00', '2025-02-06 20:09:31.928537+00', 'OPT-33RFW', '33" Sedona Fire & Water Bowl', 1417, 2608, 2869, 1205, 1304, 1559, 1701, 1134, 'OPT-33RFW{MAT}{IGN}{CLR}{GAS}', 'Round', NULL, '33"', 'Fire And Water', 'Feature', 'Gas Fire Bowl', NULL, '1'),
	('94e18368-ce2c-4bcf-8b45-c0a787ce0e0b', '2025-01-27 17:42:39.354374+00', '2025-02-06 20:09:31.928537+00', 'OPT-33RP', '33" Sedona Planter Bowl', 654, 1204, 1325, 556, 602, 720, 785, 524, 'OPT-33RP{MAT}{CLR}', 'Round', NULL, '33"', 'Planter Feature', 'Feature', NULL, NULL, '1'),
	('3cfa16ad-3287-45d1-9236-aad51fd75485', '2025-01-27 17:42:39.354374+00', '2025-02-06 20:09:31.928537+00', 'OPT-33RPW', '33" Sedona Planter & Water Bowl', 914, 1682, 1851, 777, 841, 1006, 1097, 732, 'OPT-33RPW{MAT}{CLR}', 'Round', NULL, '33"', 'Planter And Water', 'Feature', NULL, NULL, '1'),
	('df507d74-6b53-4665-a558-54ea67134f14', '2025-01-27 17:42:39.354374+00', '2025-02-06 20:09:31.928537+00', 'OPT-33RWO', '33" Sedona Water Bowl', 708, 1304, 1435, 602, 652, 779, 850, 567, 'OPT-33RWO{MAT}{CLR}', 'Round', NULL, '33"', 'Water Feature', 'Feature', NULL, NULL, '1'),
	('f5ceb244-ccad-4319-a6cc-30878b439df4', '2025-01-28 20:57:47.852302+00', '2025-02-06 20:09:31.928537+00', 'OPT-AVLFW36', '36" Avalon Fire & Water Bowl', 1551, 2854, 3140, 1319, 1427, 1707, 1862, 1241, 'OPT-{MAT}{IGN}{CLR}{GAS}', 'Square', NULL, '36"', 'Fire And Water', 'Feature', 'Gas Fire Bowl', NULL, '1'),
	('091ba991-8e5f-4f18-abe3-43fc65088326', '2025-01-28 20:57:47.852302+00', '2025-02-06 20:09:31.928537+00', 'OPT-AVLPO36', '36" Avalon Planter Bowl', 932, 1716, 1888, 793, 858, 1026, 1119, 746, 'OPT-AVLPO36{MAT}{CLR}', 'Square', NULL, '36"', 'Planter Feature', 'Feature', NULL, NULL, '1'),
	('ab304d0b-e1da-47b5-98ad-24cab11b32dd', '2025-01-28 20:57:47.852302+00', '2025-02-06 20:09:31.928537+00', 'OPT-AVLPW36', '36" Avalon Planter & Water Bowl', 1216, 2238, 2462, 1034, 1119, 1338, 1460, 973, 'OPT-AVLPW36{MAT}{CLR}', 'Square', NULL, '36"', 'Planter And Water', 'Feature', NULL, NULL, '1'),
	('886021c2-648b-4719-8ea1-da692536fc95', '2025-01-31 00:53:49.307925+00', '2025-02-06 20:09:31.928537+00', 'OPT-CBSQ36', '36" Cabo Square Fire Pit', 1402, 2580, 2838, 1192, 1290, 1543, 1683, 1122, 'OPT-CBSQ36{MAT}{IGN}{CLR}{GAS}', 'Square', NULL, '36"', 'Fire Feature', 'Feature', 'Gas Fire Pit', NULL, '1'),
	('8695ddca-17fe-4b3f-94c6-3e607b965f67', '2025-01-28 18:29:33.324897+00', '2025-02-06 20:09:31.928537+00', 'OPT-AVLPW24', '24" Avalon Planter & Water Bowl', 819, 1508, 1659, 697, 754, 901, 983, 656, 'OPT-AVLPW24{MAT}{CLR}', 'Square', NULL, '24"', 'Planter And Water', 'Feature', NULL, NULL, '1'),
	('ccb1dceb-e7a0-44aa-9af3-59b4eee25e04', '2025-01-27 17:42:39.354374+00', '2025-02-06 20:09:31.928537+00', 'OPT-24RFO', '24" Cazo Fire Bowl', 1057, 1946, 2141, 899, 973, 1163, 1269, 846, 'OPT-{MAT}{IGN}{CLR}{GAS}', 'Round', 'GFRC: https://www.dropbox.com/scl/fi/mb4021hbkazftu0vwt3w0/Cazo-Fire-Bowl-Spec-Sheets-GFRC.pdf?rlkey=j7tjyzl1abupfy7fh6jowatjb&st=jhnuj83q&raw=1', '24"', 'Fire Feature', 'Feature', 'Gas Fire Bowl', NULL, '1'),
	('ff8a03dc-1164-4974-80a5-32c2c56406e0', '2025-01-27 17:42:39.354374+00', '2025-02-06 20:09:31.928537+00', 'OPT-24RPW', '24" Cazo Plater & Water Bowl', 841, 1548, 1703, 715, 774, 926, 1010, 673, 'OPT-{MAT}{CLR}', 'Round', NULL, '24"', 'Planter And Water', 'Feature', NULL, NULL, '1'),
	('efbc63f8-7b5e-4e29-8e02-1625d2a83a3c', '2025-01-28 00:16:47.829279+00', '2025-02-06 20:09:31.928537+00', 'OPT-24SFO', '24" Maya Fire Bowl', 1057, 1946, 2141, 899, 973, 1163, 1269, 846, 'OPT-{MAT}{IGN}{CLR}{GAS}', 'Square', NULL, '24"', 'Fire Feature', 'Feature', 'Gas Fire Bowl', NULL, '1'),
	('85dcae0f-cc31-4e5d-a032-51a9f75a78f3', '2025-01-28 20:57:47.852302+00', '2025-02-06 20:09:31.928537+00', 'OPT-30AVPCFWTS', '30" Avalon Fire & Water Bowl - Twin Spill', 2285, 4206, 4627, 1943, 2103, 2514, 2742, 1828, 'OPT-30AV{MAT}{IGN}{CLR}{GAS}', 'Square', NULL, '30"', 'Fire And Water', 'Feature', 'Gas Fire Bowl', NULL, '1'),
	('764ae1fc-5861-4ae5-b787-ab202a398e93', '2025-01-28 20:57:47.852302+00', '2025-02-06 20:09:31.928537+00', 'OPT-30AVSSFWWS', '30" Avalon Fire & Water Bowl - Wide Spill', 2291, 4216, 4638, 1948, 2108, 2521, 2750, 1833, 'OPT-30AV{MAT}{IGN}{CLR}{GAS}', 'Square', NULL, '30"', 'Fire And Water', 'Feature', 'Gas Fire Bowl', NULL, '1'),
	('a95d78b5-9bda-4f1b-9d7e-681815e94ed8', '2025-01-28 20:57:47.852302+00', '2025-02-06 20:09:31.928537+00', 'OPT-AVLPO30', '30" Avalon Planter Bowl', 654, 1204, 1325, 556, 602, 720, 785, 524, 'OPT-AVLPO30{MAT}{CLR}', 'Square', NULL, '30"', 'Planter Feature', 'Feature', NULL, NULL, '1'),
	('ca84226d-c9a5-40aa-8b8c-cbefcc42e3ce', '2025-01-28 20:57:47.852302+00', '2025-02-06 20:09:31.928537+00', 'OPT-AVLPW30', '30" Avalon Planter & Water Bowl', 952, 1752, 1928, 810, 876, 1048, 1143, 762, 'OPT-AVLPW30{MAT}{CLR}', 'Square', NULL, '30"', 'Planter And Water', 'Feature', NULL, NULL, '1'),
	('f015a779-3a6d-4df3-8a0a-0faba339113c', '2025-01-28 20:57:47.852302+00', '2025-02-06 20:09:31.928537+00', 'OPT-AVLWO30', '30" Avalon Water Bowl', 783, 1442, 1587, 666, 721, 862, 940, 627, 'OPT-{MAT}{CLR}', 'Square', NULL, '30"', 'Water Feature', 'Feature', NULL, NULL, '1'),
	('e9420a88-411e-4cc7-8dc1-0a630a71ff53', '2025-01-27 17:42:39.354374+00', '2025-02-06 20:09:31.928537+00', 'OPT-30FW360', '30" Cazo 360° Fire & Water Bowl', 2762, 5084, 5593, 2348, 2542, 3039, 3315, 2210, 'OPT-30FW360{MAT}{IGN}{GAS}', 'Round', NULL, '30"', 'Fire And Water', 'Feature', 'Gas Fire Bowl', NULL, '1'),
	('deb96691-0570-43f5-8ea3-11153578cc2e', '2025-01-27 17:42:39.354374+00', '2025-02-06 20:09:31.928537+00', 'OPT-R30PCPO', '30" Cazo Planter Bowl', 1057, 1946, 2141, 899, 973, 1163, 1269, 846, 'OPT-R30{MAT}{CLR}', 'Round', NULL, '30"', 'Planter Feature', 'Feature', NULL, NULL, '1'),
	('2a23d733-2ddd-4f8e-bbad-ce80e0dbe305', '2025-01-27 17:42:39.354374+00', '2025-02-06 20:09:31.928537+00', 'OPT-36FW360', '36" Cazo 360° Fire & Water Bowl', 3525, 6486, 7135, 2997, 3243, 3878, 4230, 2820, 'OPT-36FW360{MAT}{IGN}{GAS}', 'Round', NULL, '36"', 'Fire And Water', 'Feature', 'Gas Fire Bowl', NULL, '1'),
	('7c472ce1-def3-4a82-844d-c194d1e31a6f', '2025-01-27 17:42:39.354374+00', '2025-02-06 20:09:31.928537+00', 'OPT-4W36', '36" Cazo 4-Way Fire & Water Bowl', 2979, 5482, 6031, 2533, 2741, 3277, 3575, 2384, 'OPT-4W36{MAT}{IGN}{GAS}', 'Round', NULL, '36"', 'Fire And Water', 'Feature', 'Gas Fire Bowl', NULL, '1'),
	('c29fd479-bebe-450e-b966-8c52fca8f878', '2025-01-27 17:42:39.354374+00', '2025-02-06 20:09:31.928537+00', 'OPT-36RFW', '36" Cazo Fire & Water Bowl', 1460, 2688, 2957, 1241, 1344, 1606, 1752, 1168, 'OPT-{MAT}{IGN}{CLR}{GAS}', 'Round', NULL, '36"', 'Fire And Water', 'Feature', 'Gas Fire Bowl', NULL, '1'),
	('02a0cb3f-fd49-4202-b562-7210871dfe01', '2025-01-27 17:42:39.354374+00', '2025-02-06 20:09:31.928537+00', 'OPT-36RP', '36" Cazo Planter Bowl', 841, 1548, 1703, 715, 774, 926, 1010, 673, 'OPT-{MAT}{CLR}', 'Round', NULL, '36"', 'Planter Feature', 'Feature', NULL, NULL, '1'),
	('8f9432f0-da3f-4c0d-b913-f88ee342062f', '2025-01-27 17:42:39.354374+00', '2025-02-06 20:09:31.928537+00', 'OPT-36RPW', '36" Cazo Planter & Water Bowl', 1288, 2370, 2607, 1095, 1185, 1417, 1546, 1031, 'OPT-{MAT}{CLR}', 'Round', NULL, '36"', 'Planter And Water', 'Feature', NULL, NULL, '1'),
	('6b0cf06a-143a-4d7d-a68a-c9f8b93f0e1e', '2025-01-27 17:42:39.354374+00', '2025-02-06 20:09:31.928537+00', 'OPT-36RWO', '36" Cazo Water Bowl', 964, 1774, 1952, 820, 887, 1061, 1157, 772, 'OPT-{MAT}{CLR}', 'Round', NULL, '36"', 'Water Feature', 'Feature', NULL, NULL, '1'),
	('a7271fd2-ff40-4ceb-8e5b-eb9fec0c6c85', '2025-01-28 16:25:18.197825+00', '2025-02-06 20:09:31.928537+00', 'OPT-36SFO', '36" Maya Fire Bowl', 1304, 2400, 2640, 1109, 1200, 1435, 1565, 1044, 'OPT-{MAT}{IGN}{CLR}{GAS}', 'Square', NULL, '36"', 'Fire Feature', 'Feature', 'Gas Fire Bowl', NULL, '1'),
	('26fde0a3-68fd-450a-a247-06dc9bbd7614', '2025-01-28 16:25:18.197825+00', '2025-02-06 20:09:31.928537+00', 'OPT-36SFW', '36" Maya Fire & Water Bowl', 1460, 2688, 2957, 1241, 1344, 1606, 1752, 1168, 'OPT-36S{MAT}{IGN}{CLR}{GAS}', 'Square', NULL, '36"', 'Fire And Water', 'Feature', 'Gas Fire Bowl', NULL, '1'),
	('9a623e79-dd21-422a-8352-06f780bbf0d6', '2025-01-28 16:25:18.197825+00', '2025-02-06 20:09:31.928537+00', 'OPT-36FW4WPC', '36" Maya Fire & Water Bowl - 4 Way Spill', 4270, 7858, 8644, 3630, 3929, 4697, 5124, 3416, 'OPT-36FW4W{MAT}{IGN}{CLR}{GAS}', 'Square', NULL, '36"', 'Fire And Water', 'Feature', 'Gas Fire Bowl', NULL, '1'),
	('6223a7a7-1275-47fd-90b5-c79c850a7b74', '2025-01-28 16:25:18.197825+00', '2025-02-06 20:09:31.928537+00', 'OPT-SQ36FANDW', '36" Maya Fire & Water Bowl - Gravity Spill', 2607, 4798, 5278, 2216, 2399, 2868, 3129, 2086, 'OPT-SQ{MAT}{IGN}{CLR}{GAS}', 'Square', NULL, '36"', 'Fire And Water', 'Feature', 'Gas Fire Bowl', NULL, '1'),
	('e915592a-fc0b-4239-9824-829b8d1e7cad', '2025-01-31 00:53:49.307925+00', '2025-02-06 20:09:31.928537+00', 'OPT-S36PB', '36" Quad Fire Pit - RTF', 1255, 2310, 2541, 1067, 1155, 1381, 1506, 1004, 'OPT-S36PB{MAT}{IGN}{CLR}{GAS}', 'Square', NULL, '36"', 'Fire Feature', 'Feature', 'Gas Fire Pit', NULL, '1'),
	('ac812308-7161-4a40-9b34-fa54842f14f0', '2025-01-27 17:42:39.354374+00', '2025-02-06 20:09:31.928537+00', 'OPT-4W30', '30" Cazo 4-Way Fire & Water Bowl', 2825, 5198, 5718, 2402, 2599, 3108, 3390, 2260, 'OPT-4W30{MAT}{IGN}{GAS}', 'Round', NULL, '30"', 'Fire And Water', 'Feature', 'Gas Fire Bowl', NULL, '1'),
	('6e798483-456a-4793-adc4-1c36824f878f', '2025-01-27 17:42:39.354374+00', '2025-02-06 20:09:31.928537+00', 'OPT-R30PCFO', '30" Cazo Fire Bowl', 1219, 2244, 2469, 1037, 1122, 1341, 1463, 976, 'OPT-{MAT}{IGN}{CLR}{GAS}', 'Round', NULL, '30"', 'Fire Feature', 'Feature', 'Gas Fire Bowl', NULL, '1'),
	('b57f23e2-1614-43dd-b974-c7df3aad7647', '2025-01-27 17:42:39.354374+00', '2025-02-06 20:09:31.928537+00', 'OPT-R30PCFW', '30" Cazo Fire & Water Bowl', 1356, 2496, 2746, 1153, 1248, 1492, 1628, 1085, 'OPT-{MAT}{IGN}{CLR}{GAS}', 'Round', NULL, '30"', 'Fire And Water', 'Feature', 'Gas Fire Bowl', NULL, '1'),
	('639d0f98-7a60-4412-9301-22afa8b69b14', '2025-01-27 17:42:39.354374+00', '2025-02-06 20:09:31.928537+00', 'OPT-R30PCPW', '30" Cazo Planter & Water Bowl', 1150, 2116, 2328, 978, 1058, 1265, 1380, 920, 'OPT-R30{MAT}{CLR}', 'Round', NULL, '30"', 'Planter And Water', 'Feature', NULL, NULL, '1'),
	('cd992928-52f8-40d0-841d-d11e8d031d36', '2025-01-27 17:42:39.354374+00', '2025-02-06 20:09:31.928537+00', 'OPT-R30PCWO', '30" Cazo Water Bowl', 1150, 2116, 2328, 978, 1058, 1265, 1380, 920, 'OPT-R30{MAT}{CLR}', 'Round', NULL, '30"', 'Water Feature', 'Feature', NULL, NULL, '1'),
	('e2682f43-f078-41c0-b913-22ba89567efa', '2025-01-27 17:42:39.354374+00', '2025-02-06 20:09:31.928537+00', 'OPT-R30CPWMT', '30" Cazo Water Bowl - Wall Mounted', 1413, 2600, 2860, 1202, 1300, 1555, 1696, 1131, 'OPT-R30CPWMT{MAT}', 'Semi-Round', NULL, '30"', 'Water Feature', 'Feature', NULL, NULL, NULL),
	('8873e35a-b57e-48eb-a44c-fac897ddc96d', '2025-01-27 18:50:49.58124+00', '2025-02-06 20:09:31.928537+00', 'OPT-LUNFO30', '30" Luna Fire Bowl', 1219, 2244, 2469, 1037, 1122, 1341, 1463, 976, 'OPT-LUNFO30{MAT}{IGN}{CLR}{GAS}', 'Round', NULL, '30"', 'Fire Feature', 'Feature', 'Gas Fire Bowl', NULL, '1'),
	('91011440-bae7-490b-99a3-ff7983fa8dab', '2025-01-27 18:50:49.58124+00', '2025-02-06 20:09:31.928537+00', 'OPT-LUN30', '30" Luna Fire Pit', 1253, 2306, 2537, 1066, 1153, 1379, 1504, 1003, 'OPT-LUN30{MAT}{IGN}{CLR}{GAS}', 'Round', NULL, '30"', 'Fire Feature', 'Feature', 'Gas Fire Pit', NULL, '1'),
	('dc57fe80-b99a-48ad-a19b-c1a0bcbd0681', '2025-01-27 18:50:49.58124+00', '2025-02-06 20:09:31.928537+00', 'OPT-LUNFW30', '30" Luna Fire & Water Bowl', 1473, 2712, 2984, 1253, 1356, 1621, 1768, 1179, 'OPT-LUNFW30{MAT}{IGN}{CLR}{GAS}', 'Round', NULL, '30"', 'Fire And Water', 'Feature', 'Gas Fire Bowl', NULL, '1'),
	('38eacd6b-b1af-4e8a-b58f-9ec3fe3102b9', '2025-01-27 18:50:49.58124+00', '2025-02-06 20:09:31.928537+00', 'OPT-LUNPO30', '30" Luna Planter Bowl', 623, 1148, 1263, 530, 574, 686, 748, 499, 'OPT-LUNPO30{MAT}{CLR}', 'Round', NULL, '30"', 'Planter Feature', 'Feature', NULL, NULL, '1'),
	('d44418ea-93a0-4ebf-8c71-0af1fa086c94', '2025-01-27 18:50:49.58124+00', '2025-02-06 20:09:31.928537+00', 'OPT-LUNPW30', '30" Luna Planter & Water Bowl', 896, 1650, 1815, 762, 825, 986, 1076, 717, 'OPT-LUNPW30{MAT}{CLR}', 'Round', NULL, '30"', 'Planter And Water', 'Feature', NULL, NULL, '1'),
	('6991ee6e-c2bc-43c8-a6c8-3cdcd9b7795a', '2025-01-27 18:50:49.58124+00', '2025-02-06 20:09:31.928537+00', 'OPT-LUNWO30', '30" Luna Water Bowl', 995, 1832, 2016, 846, 916, 1095, 1194, 796, 'OPT-LUNWO30{MAT}{CLR}', 'Round', NULL, '30"', 'Water Feature', 'Feature', NULL, NULL, '1'),
	('e7e7320f-c05d-4e09-bc25-a0b2528e5be6', '2025-01-27 17:42:39.354374+00', '2025-02-06 20:09:31.928537+00', 'OPT-27RFO', '27" Sedona Fire Bowl', 1057, 1946, 2141, 899, 973, 1163, 1269, 846, 'OPT-27R{MAT}{IGN}{CLR}{GAS}', 'Round', NULL, '27"', 'Fire Feature', 'Feature', 'Gas Fire Bowl', NULL, '1'),
	('21090126-1c6f-4c08-806b-fad8b9d4c9d2', '2025-01-27 17:42:39.354374+00', '2025-02-06 20:09:31.928537+00', 'OPT-27RFW', '27" Sedona Fire & Water Bowl', 1361, 2506, 2757, 1157, 1253, 1498, 1634, 1089, 'OPT-27R{MAT}{IGN}{CLR}{GAS}', 'Round', NULL, '27"', 'Fire And Water', 'Feature', 'Gas Fire Bowl', NULL, '1'),
	('5dbec7d7-b1f1-4cbd-89c2-eb4c9cb582aa', '2025-01-27 17:42:39.354374+00', '2025-02-06 20:09:31.928537+00', 'OPT-27RCPRFWGS', '27" Sedona Fire & Water Bowl - Gravity Spill', 2420, 4454, 4900, 2057, 2227, 2662, 2904, 1936, 'OPT-27R{MAT}{IGN}{GAS}', 'Round', NULL, '27"', 'Fire And Water', 'Feature', 'Gas Fire Bowl', NULL, '1'),
	('a8bc2fed-77ce-4b46-84db-878a703d760c', '2025-01-27 17:42:39.354374+00', '2025-02-06 20:09:31.928537+00', 'OPT-27RP', '27" Sedona Planter Bowl', 561, 1034, 1138, 477, 517, 618, 674, 449, 'OPT-27R{MAT}{CLR}', 'Round', NULL, '27"', 'Planter Feature', 'Feature', NULL, NULL, '1'),
	('87129bca-986e-4188-bcd5-5bc0b23950cd', '2025-01-27 17:42:39.354374+00', '2025-02-06 20:09:31.928537+00', 'OPT-27RPW', '27" Sedona Planter & Water Bowl', 845, 1556, 1712, 719, 778, 930, 1014, 676, 'OPT-27R{MAT}{CLR}', 'Round', NULL, '27"', 'Planter And Water', 'Feature', NULL, NULL, '1'),
	('7df06f5f-c8cd-4c77-aeff-6c956cc73732', '2025-01-27 17:42:39.354374+00', '2025-02-06 20:09:31.928537+00', 'OPT-27RWO', '27" Sedona Water Bowl', 654, 1204, 1325, 556, 602, 720, 785, 524, 'OPT-27R{MAT}{CLR}', 'Round', NULL, '27"', 'Water Feature', 'Feature', NULL, NULL, '1'),
	('52a1479e-bfc5-441a-8ed5-92ce634436b1', '2025-01-28 00:16:47.829279+00', '2025-02-06 20:09:31.928537+00', 'OPT-30SQPCFWWV', '30" Maya Fire & Water Bowl - Wave Scupper', 2245, 4132, 4546, 1909, 2066, 2470, 2694, 1796, 'OPT-30SQPCFWWV{MAT}{IGN}{CLR}{GAS}', 'Square', NULL, '30"', 'Fire And Water', 'Feature', 'Gas Fire Bowl', NULL, '1'),
	('bb1bc142-26ed-4b8a-9a5f-9b7768e7f6d6', '2025-01-28 00:16:47.829279+00', '2025-02-06 20:09:31.928537+00', 'OPT-MFW30GSS', '30" Maya Fire & Water Bowl - Wide Gravity Spill', 2458, 4524, 4977, 2090, 2262, 2704, 2950, 1967, 'OPT-{MAT}{IGN}{CLR}{GAS}', 'Square', NULL, '30"', 'Fire And Water', 'Feature', 'Gas Fire Bowl', NULL, '1'),
	('dc7f1fb7-78be-4306-a248-9c4a6bb80610', '2025-01-29 01:06:38.056209+00', '2025-02-06 20:09:31.928537+00', 'OPT-PTST3034', '30" x 30" Vertical Tuscon Planter', 922, 1698, 1868, 784, 849, 1015, 1107, 738, 'OPT-PTST3034{MAT}', 'Square', NULL, '30" x 30"', 'Planter Feature', 'Planter', NULL, NULL, NULL),
	('8e781307-c042-439f-a0ab-5a2c3103af14', '2025-01-27 17:42:39.354374+00', '2025-02-06 20:09:31.928537+00', 'OPT-31RFW', '31" Cazo Fire & Water Bowl', 1405, 2586, 2845, 1195, 1293, 1546, 1686, 1124, 'OPT-31RFW{MAT}{IGN}{CLR}{GAS}', 'Round', NULL, '31"', 'Fire And Water', 'Feature', 'Gas Fire Bowl', NULL, '1'),
	('b1c55a18-a528-437b-85db-13093b97343a', '2025-01-27 17:42:39.354374+00', '2025-02-06 20:09:31.928537+00', 'OPT-31RPW', '31" Cazo Planter & Water Bowl', 949, 1748, 1923, 807, 874, 1044, 1139, 760, 'OPT-{MAT}{CLR}', 'Round', NULL, '31"', 'Planter And Water', 'Feature', NULL, NULL, '1'),
	('0d0d97c5-84fb-4e42-9530-f4e21f6c7050', '2025-01-28 20:57:47.852302+00', '2025-02-06 20:09:31.928537+00', 'OPT-AVLWO36', '36" Avalon Water Bowl', 1022, 1882, 2071, 869, 941, 1125, 1227, 818, 'OPT-{MAT}{CLR}', 'Square', NULL, '36"', 'Water Feature', 'Feature', NULL, NULL, '1'),
	('43746aa7-4d6d-4d5a-a68a-3424c8590f6b', '2025-01-27 17:42:39.354374+00', '2025-02-06 20:09:31.928537+00', 'OPT-36RFO', '36" Cazo Fire Bowl', 1304, 2400, 2640, 1109, 1200, 1435, 1565, 1044, 'OPT-{MAT}{IGN}{CLR}{GAS}', 'Round', NULL, '36"', 'Fire Feature', 'Feature', 'Gas Fire Bowl', NULL, '1'),
	('4dea62af-bc6c-4512-a0bd-59bbbd6c2bfa', '2025-01-28 18:29:33.324897+00', '2025-02-06 20:09:31.928537+00', 'OPT-AVLPO24', '24" Avalon Planter Bowl', 593, 1092, 1202, 505, 546, 653, 712, 475, 'OPT-AVLPO24{MAT}{CLR}', 'Square', NULL, '24"', 'Planter Feature', 'Feature', NULL, NULL, '1'),
	('dd303240-0266-4c6d-bdae-47fb2c561ea1', '2025-01-28 00:16:47.829279+00', '2025-02-06 20:09:31.928537+00', 'OPT-30FW4WPC', '30" Maya Fire & Water Bowl - 4 Way Spill', 3837, 7062, 7769, 3262, 3531, 4221, 4605, 3070, 'OPT-30FW4W{MAT}{IGN}{CLR}{GAS}', 'Square', NULL, '30"', 'Fire And Water', 'Feature', 'Gas Fire Bowl', NULL, '1'),
	('2875ea16-f1df-4efb-a6b1-c6392f3d54ef', '2025-01-28 00:16:47.829279+00', '2025-02-06 20:09:31.928537+00', 'OPT-30SCWMT', '30" Maya Water Bowl - Wall Mounted', 1413, 2600, 2860, 1202, 1300, 1555, 1696, 1131, 'OPT-30SCWMT{MAT}', 'Half-Squared', NULL, '30"', 'Water Feature', 'Feature', NULL, NULL, '1'),
	('22ebfd9a-e48c-4215-a54e-c95262476a76', '2025-01-28 16:25:18.197825+00', '2025-02-06 20:09:31.928537+00', 'OPT-36SQPCFWWV', '36" Maya Fire & Water Bowl - Wave Scupper', 2448, 4506, 4957, 2081, 2253, 2693, 2938, 1959, 'OPT-36SQPCFWWV{MAT}{IGN}{CLR}{GAS}', 'Square', NULL, '36"', 'Fire And Water', 'Feature', 'Gas Fire Bowl', NULL, '1'),
	('f281afbb-3441-4cb9-abcf-82a4d4d05fe2', '2025-01-28 16:25:18.197825+00', '2025-02-06 20:09:31.928537+00', 'OPT-MFW36GSS', '36" Maya Fire & Water Bowl - Wide Gravity Spill', 2727, 5018, 5520, 2318, 2509, 3000, 3273, 2182, 'OPT-{MAT}{IGN}{CLR}{GAS}', 'Square', NULL, '36"', 'Fire And Water', 'Feature', 'Gas Fire Bowl', NULL, '1'),
	('5384eb97-c207-4cc2-ab87-3f204256b711', '2025-01-28 16:25:18.197825+00', '2025-02-06 20:09:31.928537+00', 'OPT-36SFWWS', '36" Maya Fire & Water Bowl - Wide Spill', 2380, 4380, 4818, 2023, 2190, 2618, 2856, 1904, 'OPT-36SFWWS{MAT}{IGN}{CLR}{GAS}', 'Square', NULL, '36"', 'Fire And Water', 'Feature', 'Gas Fire Bowl', NULL, '1'),
	('dbc864ad-700b-49b9-bc79-dc1861c2cd15', '2025-01-28 16:25:18.197825+00', '2025-02-06 20:09:31.928537+00', 'OPT-36SP', '36" Maya Planter Bowl', 720, 1326, 1459, 612, 663, 792, 864, 576, 'OPT-36S{MAT}{CLR}', 'Square', NULL, '36"', 'Planter Feature', 'Feature', NULL, NULL, '1'),
	('20a0d73d-c7d3-4b0a-abb2-2a72ff346e9f', '2025-01-28 16:25:18.197825+00', '2025-02-06 20:09:31.928537+00', 'OPT-36SPW', '36" Maya Planter & Water Bowl', 1288, 2370, 2607, 1095, 1185, 1417, 1546, 1031, 'OPT-36S{MAT}{CLR}', 'Square', NULL, '36"', 'Planter And Water', 'Feature', NULL, NULL, '1'),
	('5e87ec63-bfdb-4688-8c87-1015406a5f2d', '2025-01-28 16:25:18.197825+00', '2025-02-06 20:09:31.928537+00', 'OPT-36SWO', '36" Maya Water Bowl', 896, 1650, 1815, 762, 825, 986, 1076, 717, 'OPT-36S{MAT}{CLR}', 'Square', NULL, '36"', 'Water Feature', 'Feature', NULL, NULL, '1'),
	('4612e9aa-6e4e-43e7-bf93-4ac2694003fb', '2025-01-28 16:25:18.197825+00', '2025-02-06 20:09:31.928537+00', 'OPT-36SQPCWS', '36" Maya Water Bowl - Wide Spillway', 1795, 3304, 3635, 1526, 1652, 1975, 2154, 1436, 'OPT-36S{MAT}{CLR}', 'Square', NULL, '36"', 'Water Feature', 'Feature', NULL, NULL, '1'),
	('26b185af-bb2b-4bf5-8fd1-7ce94b9aa179', '2025-01-29 01:06:38.056209+00', '2025-02-06 20:09:31.928537+00', 'OPT-36NLPCF', '36" Nile Fire & Water Bowl', 4494, 8270, 9097, 3820, 4135, 4944, 5393, 3596, 'OPT-36NL{MAT}{IGN}{CLR}{GAS}', 'Square', NULL, '36"', 'Fire And Water', 'Feature', 'Gas Fire Bowl', NULL, '1'),
	('ad5066b1-dbdf-4b15-9036-178f0865cdc7', '2025-01-31 00:53:49.307925+00', '2025-02-06 20:09:31.928537+00', 'OPT-QD36', '36" Quad Fire Pit', 1191, 2192, 2412, 1013, 1096, 1311, 1430, 953, 'OPT-QD{MAT}{IGN}{CLR}{GAS}', 'Square', NULL, '36"', 'Fire Feature', 'Feature', 'Gas Fire Pit', NULL, '1'),
	('4db7bb03-35c3-4a9f-8e18-b40d6801d645', '2025-01-29 01:06:38.056209+00', '2025-02-06 20:09:31.928537+00', 'OPT-ROMPO36', '36" Roma Planter Bowl', 792, 1458, 1604, 674, 729, 872, 951, 634, 'OPT-ROMPO36{MAT}{CLR}', 'Round', NULL, '36"', 'Planter Feature', 'Feature', NULL, NULL, '1'),
	('9cd7c946-4b4f-40a2-9eb7-20f23e77e002', '2025-01-29 01:06:38.056209+00', '2025-02-06 20:09:31.928537+00', 'OPT-ROMPW36', '36" Roma Planter & Water Bowl', 972, 1790, 1969, 827, 895, 1070, 1167, 778, 'OPT-ROMPW36{MAT}{CLR}', 'Round', NULL, '36"', 'Planter And Water', 'Feature', NULL, NULL, '1'),
	('5abd93e4-8985-41bc-8eff-1c869cab8110', '2025-01-28 18:29:33.324897+00', '2025-02-06 20:09:31.928537+00', 'OPT-AVLFO24', '24" Avalon Fire Bowl', 1057, 1946, 2141, 899, 973, 1163, 1269, 846, 'OPT-{MAT}{IGN}{CLR}{GAS}', 'Square', NULL, '24"', 'Fire Feature', 'Feature', 'Gas Fire Bowl', NULL, '1'),
	('73b5ae47-1704-4b06-a6cc-8cc83ff66269', '2025-01-28 18:29:33.324897+00', '2025-02-06 20:09:31.928537+00', 'OPT-AVLFW24', '24" Avalon Fire & Water Bowl', 1366, 2514, 2766, 1162, 1257, 1503, 1640, 1093, 'OPT-{MAT}{IGN}{CLR}{GAS}', 'Square', NULL, '24"', 'Fire And Water', 'Feature', 'Gas Fire Bowl', NULL, '1'),
	('d1a2b3b8-020e-4d86-846e-91942957847e', '2025-01-28 18:29:33.324897+00', '2025-02-06 20:09:31.928537+00', 'OPT-24AVPCFWTS', '24" Avalon Fire & Water Bowl - Twin Spill', 2015, 3708, 4079, 1713, 1854, 2217, 2418, 1612, 'OPT-24AV{MAT}{IGN}{CLR}{GAS}', 'Square', NULL, '24"', 'Fire And Water', 'Feature', 'Gas Fire Bowl', NULL, '1'),
	('696ccdd1-ab65-412c-a4b9-b115b15e05b6', '2025-01-28 18:29:33.324897+00', '2025-02-06 20:09:31.928537+00', 'OPT-24AVCPFWWS', '24" Avalon Fire & Water Bowl - Wide Spill', 2167, 3988, 4387, 1842, 1994, 2384, 2601, 1734, 'OPT-24AV{MAT}{IGN}{CLR}{GAS}', 'Square', NULL, '24"', 'Fire And Water', 'Feature', 'Gas Fire Bowl', NULL, '1'),
	('050e4a44-9f42-4a75-8a08-72de70e7585b', '2025-01-28 18:29:33.324897+00', '2025-02-06 20:09:31.928537+00', 'OPT-AVLWO24', '24" Avalon Water Bowl', 685, 1262, 1389, 583, 631, 754, 822, 548, 'OPT-{MAT}{CLR}', 'Square', NULL, '24"', 'Water Feature', 'Feature', NULL, NULL, '1'),
	('56f9c003-1467-478a-99a8-c190e231bfbf', '2025-01-31 00:53:49.307925+00', '2025-02-06 20:09:31.928537+00', 'OPT-SQ36CS', '36" Redan Fire Pit', 1351, 2486, 2735, 1149, 1243, 1487, 1622, 1081, 'OPT-{MAT}{IGN}{CLR}{GAS}', 'Square', NULL, '36"', 'Fire Feature', 'Feature', 'Gas Fire Pit', NULL, '1'),
	('f08c4513-f6bb-40e5-9470-1f14350a8a06', '2025-01-29 01:06:38.056209+00', '2025-02-06 20:09:31.928537+00', 'OPT-ROMFO36', '36" Roma Fire Bowl', 1387, 2554, 2810, 1179, 1277, 1526, 1665, 1110, 'OPT-ROMFO36{MAT}{IGN}{CLR}{GAS}', 'Round', NULL, '36"', 'Fire Feature', 'Feature', 'Gas Fire Bowl', NULL, '1'),
	('22dd08ae-1047-41f5-aa78-3001a4e37e19', '2025-01-29 01:06:38.056209+00', '2025-02-06 20:09:31.928537+00', 'OPT-ROMFW36', '36" Roma Fire & Water Bowl', 1646, 3030, 3333, 1400, 1515, 1811, 1976, 1317, 'OPT-ROMFW36{MAT}{IGN}{CLR}{GAS}', 'Round', NULL, '36"', 'Fire And Water', 'Feature', 'Gas Fire Bowl', NULL, '1'),
	('a0831763-1a83-47ee-abc7-cabf66ffdcc2', '2025-01-29 01:06:38.056209+00', '2025-02-06 20:09:31.928537+00', 'OPT-ROMWO36', '36" Roma Water Bowl', 964, 1774, 1952, 820, 887, 1061, 1157, 772, 'OPT-ROMWO36{MAT}{CLR}', 'Round', NULL, '36"', 'Water Feature', 'Feature', NULL, NULL, '1'),
	('7ea3b3ee-2a89-4724-8594-3c02da4c5af1', '2025-01-27 17:42:39.354374+00', '2025-02-06 20:09:31.928537+00', 'OPT-36RPCFO', '36" Sedona Fire Bowl', 2077, 3822, 4205, 1766, 1911, 2285, 2493, 1662, 'OPT-36RPCFO{MAT}{IGN}{CLR}{GAS}', 'Round', NULL, '36"', 'Fire Feature', 'Feature', 'Gas Fire Bowl', NULL, '1'),
	('e4283d90-ae49-4801-8ae4-b2d2bd381ab2', '2025-01-27 17:42:39.354374+00', '2025-02-06 20:09:31.928537+00', 'OPT-36RPCRLFO', '36" Sedona Fire Bowl with Rounded Legs', 2420, 4454, 4900, 2057, 2227, 2662, 2904, 1936, 'OPT-36RPCRLFO{MAT}{IGN}{CLR}{GAS}', 'Round', NULL, '36"', 'Fire Feature', 'Feature', 'Gas Fire Bowl', NULL, '1'),
	('766150a1-0124-486d-860a-6fc6351ccbd1', '2025-01-27 17:42:39.354374+00', '2025-02-06 20:09:31.928537+00', 'OPT-36RPCFW', '36" Sedona Fire & Water Bowl', 2189, 4028, 4431, 1861, 2014, 2408, 2627, 1752, 'OPT-36RPCFW{MAT}{IGN}{CLR}{GAS}', 'Round', NULL, '36"', 'Fire Feature', 'Feature', 'Gas Fire Bowl', NULL, '1'),
	('11749582-ff3c-4b75-9a18-b521f8716377', '2025-01-27 17:42:39.354374+00', '2025-02-06 20:09:31.928537+00', 'OPT-36RPCPO', '36" Sedona Planter Bowl', 1682, 3096, 3406, 1430, 1548, 1851, 2019, 1346, 'OPT-36RPCPO{MAT}{CLR}', 'Round', NULL, '36"', 'Planter Feature', 'Feature', NULL, NULL, '1'),
	('fc630e79-9e01-490a-9dc7-500afabc9c85', '2025-01-27 17:42:39.354374+00', '2025-02-06 20:09:31.928537+00', 'OPT-36RPCPW', '36" Sedona Planter & Water Bowl', 1908, 3512, 3864, 1622, 1756, 2099, 2290, 1527, 'OPT-36RPCPW{MAT}{CLR}', 'Round', NULL, '36"', 'Planter And Water', 'Feature', NULL, NULL, '1'),
	('1f47e5bf-5f36-4175-8300-1104acb2c662', '2025-01-27 17:42:39.354374+00', '2025-02-06 20:09:31.928537+00', 'OPT-36RPCWO', '36" Sedona Water Bowl', 1682, 3096, 3406, 1430, 1548, 1851, 2019, 1346, 'OPT-36RPCWO{MAT}{CLR}', 'Round', NULL, '36"', 'Water Feature', 'Feature', NULL, NULL, '1'),
	('ad238b9d-93ac-46d1-80fa-a038adbae3d6', '2025-01-28 20:57:47.852302+00', '2025-02-06 20:09:31.928537+00', 'OPT-AVLFO36', '36" Avalon Fire Bowl', 1444, 2658, 2924, 1228, 1329, 1589, 1733, 1156, 'OPT-{MAT}{IGN}{CLR}{GAS}', 'Square', NULL, '36"', 'Fire Feature', 'Feature', 'Gas Fire Bowl', NULL, '1'),
	('0befa70b-07ce-4e91-8c6a-e7970aea7a90', '2025-01-28 20:57:47.852302+00', '2025-02-06 20:09:31.928537+00', 'OPT-36AVPCFWTS', '36" Avalon Fire & Water Bowl - Twin Spill', 3010, 5540, 6094, 2559, 2770, 3311, 3612, 2408, 'OPT-36AV{MAT}{IGN}{CLR}{GAS}', 'Square', NULL, '36"', 'Fire And Water', 'Feature', 'Gas Fire Bowl', NULL, '1'),
	('fef7ead9-dd9a-4ee3-8ca1-3e544f7751e3', '2025-01-28 20:57:47.852302+00', '2025-02-06 20:09:31.928537+00', 'OPT-36AVPCFWWS', '36" Avalon Fire & Water Bowl - Wide Spill', 2982, 5488, 6037, 2535, 2744, 3281, 3579, 2386, 'OPT-36AV{MAT}{IGN}{CLR}{GAS}', 'Square', NULL, '36"', 'Fire And Water', 'Feature', 'Gas Fire Bowl', NULL, '1'),
	('68f76f2e-0918-49fc-867d-233bcfe5c9be', '2025-01-28 20:57:47.852302+00', '2025-02-06 20:09:31.928537+00', 'OPT-AVTFPCS3636', '36" x 36" Avalon Tall Fire Pit', 1458, 2684, 2953, 1240, 1342, 1604, 1750, 1167, 'OPT-AVTFP{MAT}{IGN}{CLR}{GAS}', 'Square', NULL, '36"', 'Fire Feature', 'Feature', 'Gas Fire Pit', NULL, '1'),
	('4aab3259-bb25-43e3-821b-3a67570be3c1', '2025-01-27 18:50:49.58124+00', '2025-02-06 20:09:31.928537+00', 'OPT-LUNFO38', '38" Luna Fire Bowl', 1455, 2678, 2946, 1237, 1339, 1601, 1746, 1164, 'OPT-LUNFO38{MAT}{IGN}{CLR}{GAS}', 'Round', NULL, '38"', 'Fire Feature', 'Feature', 'Gas Fire Bowl', NULL, '1'),
	('d3a54a01-4c03-4220-a340-b110ccc9ed65', '2025-01-29 01:06:38.056209+00', '2025-02-06 20:09:31.928537+00', 'OPT-ROMFO24', '24" Roma Fire Bowl', 1057, 1946, 2141, 899, 973, 1163, 1269, 846, 'OPT-ROMFO24{MAT}{IGN}{CLR}{GAS}', 'Round', NULL, '24"', 'Fire Feature', 'Feature', 'Gas Fire Bowl', NULL, '1'),
	('2aba5e6f-6776-4b9d-bce1-b9e66d7bfd02', '2025-01-29 01:06:38.056209+00', '2025-02-06 20:09:31.928537+00', 'OPT-ROMPO24', '24" Roma Planter Bowl', 561, 1034, 1138, 477, 517, 618, 674, 449, 'OPT-ROMPO24{MAT}{CLR}', 'Round', NULL, '24"', 'Planter Feature', 'Feature', NULL, NULL, '1'),
	('a69ddf5d-da1c-4bd7-a3b8-671a8a85ff2a', '2025-01-29 01:06:38.056209+00', '2025-02-06 20:09:31.928537+00', 'OPT-ROMPW24', '24" Roma Planter & Water Bowl', 852, 1568, 1725, 725, 784, 938, 1023, 682, 'OPT-ROMPW24{MAT}{CLR}', 'Round', NULL, '24"', 'Planter And Water', 'Feature', NULL, NULL, '1'),
	('f6e57cd2-b818-4495-af71-363fcc8ee97c', '2025-01-29 01:06:38.056209+00', '2025-02-06 20:09:31.928537+00', 'OPT-ROMWO24', '24" Roma Water Bowl', 615, 1132, 1246, 523, 566, 677, 738, 492, 'OPT-ROMWO24{MAT}{CLR}', 'Round', NULL, '24"', 'Water Feature', 'Feature', NULL, NULL, '1'),
	('20ea6fae-dfec-4df7-a2f5-d5389a47ca88', '2025-01-27 18:50:49.58124+00', '2025-02-06 20:09:31.928537+00', 'OPT-LUN38', '38" Luna Fire Pit', 1429, 2630, 2893, 1215, 1315, 1572, 1715, 1144, 'OPT-LUN38{MAT}{IGN}{CLR}{GAS}', 'Round', NULL, '38"', 'Fire Feature', 'Feature', 'Gas Fire Pit', NULL, '1'),
	('a25e2d54-abd0-42a0-842a-5a150331ad00', '2025-01-27 18:50:49.58124+00', '2025-02-06 20:09:31.928537+00', 'OPT-LUNFW38', '38" Luna Fire & Water Bowl', 1733, 3190, 3509, 1474, 1595, 1907, 2080, 1387, 'OPT-LUNFW38{MAT}{IGN}{CLR}{GAS}', 'Round', NULL, '38"', 'Fire And Water', 'Feature', 'Gas Fire Bowl', NULL, '1'),
	('0e1f360d-532a-42a6-9fcd-93bb3aa9fb56', '2025-01-27 18:50:49.58124+00', '2025-02-06 20:09:31.928537+00', 'OPT-LUNPO38', '38" Luna Planter Bowl', 903, 1662, 1829, 768, 831, 994, 1084, 723, 'OPT-LUNPO38{MAT}{CLR}', 'Round', NULL, '38"', 'Planter Feature', 'Feature', NULL, NULL, '1'),
	('e9862b43-d6af-4ba5-918f-583c74a8ab0c', '2025-01-27 18:50:49.58124+00', '2025-02-06 20:09:31.928537+00', 'OPT-LUNPW38', '38" Luna Planter & Water Bowl', 1087, 2002, 2203, 924, 1001, 1196, 1305, 870, 'OPT-LUNPW38{MAT}{CLR}', 'Round', NULL, '38"', 'Planter And Water', 'Feature', NULL, NULL, '1'),
	('ae81381f-269e-42b9-b4ba-9ea5bd544e5f', '2025-01-27 18:50:49.58124+00', '2025-02-06 20:09:31.928537+00', 'OPT-LUNWO38', '38" Luna Water Bowl', 1224, 2254, 2480, 1041, 1127, 1347, 1469, 980, 'OPT-LUNWO38{MAT}{CLR}', 'Round', NULL, '38"', 'Water Feature', 'Feature', NULL, NULL, '1'),
	('8786195d-a3c4-4bdc-b38e-34730df33cdf', '2025-01-27 17:42:39.354374+00', '2025-02-06 20:09:31.928537+00', 'OPT-38FW360', '38" Sedona Fire & Water Bowl - 360° Spill', 2607, 4798, 5278, 2216, 2399, 2868, 3129, 2086, 'OPT-38FW360{MAT}{IGN}{CLR}{GAS}', 'Round', NULL, '38"', 'Fire And Water', 'Feature', 'Gas Fire Bowl', NULL, '1'),
	('b0385bec-0f2f-4c24-b3d9-f4d6138909b0', '2025-01-28 22:27:38.149771+00', '2025-02-06 20:09:31.928537+00', 'OPT-AVWLFP4242', '42" Avalon Fire Pit', 2112, 3888, 4277, 1796, 1944, 2324, 2535, 1690, 'OPT-AVWLFP4242{MAT}{IGN}{CLR}{GAS}', 'Square', NULL, '42"', 'Fire Feature', 'Feature', 'Gas Fire Pit', NULL, '1'),
	('6894107c-13ca-40ae-aee0-756b041eafb5', '2025-01-29 01:06:38.056209+00', '2025-02-06 20:09:31.928537+00', 'OPT-FL42', '42" Florence Fire Pit - 12" Tall', 1429, 2630, 2893, 1215, 1315, 1572, 1715, 1144, 'OPT-FL42{MAT}{IGN}{CLR}{GAS}', 'Round', NULL, '42"', 'Fire Feature', 'Feature', 'Gas Fire Pit', NULL, '1'),
	('0da6fa81-e078-4534-9838-c8f826f9bdce', '2025-01-31 00:53:49.307925+00', '2025-02-06 20:09:31.928537+00', 'OPT-QD42', '42" Quad Fire Pit', 1270, 2338, 2572, 1080, 1169, 1397, 1524, 1016, 'OPT-QD{MAT}{IGN}{CLR}{GAS}', 'Square', NULL, '42"', 'Fire Feature', 'Feature', 'Gas Fire Pit', NULL, '1'),
	('b1c2817a-3e8b-475e-9dde-c3a5a241611e', '2025-01-27 17:42:39.354374+00', '2025-02-06 20:09:31.928537+00', 'OPT-46RFW4W', '46" Sedona Fire & Water Pit - 4 Way Spill', 3453, 6354, 6990, 2936, 3177, 3799, 4144, 2763, 'OPT-46RFW4W{MAT}{IGN}{CLR}{GAS}', 'Round', NULL, '46"', 'Fire And Water', 'Feature', 'Gas Fire Bowl', NULL, '1'),
	('e60b7a18-205b-4c4d-87ab-3041419fa1bd', '2025-01-29 01:06:38.056209+00', '2025-02-06 20:09:31.928537+00', 'OPT-PSR4820', '46" Sierra Planter - 20" Tall', 1047, 1928, 2121, 890, 964, 1152, 1257, 838, 'OPT-PSR4820{MAT}', 'Square', NULL, '46"', 'Planter Feature', 'Planter', NULL, NULL, NULL),
	('93a17e4f-bebc-48f3-87ec-5a4c46609193', '2025-01-29 01:06:38.056209+00', '2025-02-06 20:09:31.928537+00', 'OPT-PMD2014', '20" Moderna Planter', 347, 640, 704, 295, 320, 382, 417, 278, 'OPT-PMD2014{MAT}', 'Square', NULL, '20"', 'Planter Feature', 'Planter', NULL, NULL, NULL),
	('bbd2432b-73d1-4376-8e7e-7a0969d16a2a', '2025-01-29 01:06:38.056209+00', '2025-02-06 20:09:31.928537+00', 'OPT-PSR4830', '46" Sierra Planter - 30" Tall', 1169, 2152, 2368, 994, 1076, 1286, 1403, 936, 'OPT-PSR4830{MAT}', 'Square', NULL, '46"', 'Planter Feature', 'Planter', NULL, NULL, NULL),
	('fd02c5d2-d148-4673-9c24-07935ffe00da', '2025-01-31 00:53:49.307925+00', '2025-02-06 20:09:31.928537+00', 'OPT-CBSQ48', '48" Cabo Square Fire Pit', 1887, 3474, 3822, 1604, 1737, 2076, 2265, 1510, 'OPT-CBSQ48{MAT}{IGN}{CLR}{GAS}', 'Square', NULL, '48"', 'Fire Feature', 'Feature', 'Gas Fire Pit', NULL, '1'),
	('e13c0efa-d218-4b15-8ea2-f63093babb61', '2025-02-01 20:06:23.789783+00', '2025-02-06 20:09:31.928537+00', 'OPT-CTL48', '48" Catalina Fire Pit', 1913, 3520, 3872, 1627, 1760, 2105, 2296, 1531, 'OPT-CTL48{MAT}{IGN}{CLR}{GAS}', 'Rectangular', NULL, '48"', 'Fire Feature', 'Feature', 'Gas Fire Pit', NULL, '1'),
	('ab717863-0a89-4e32-bb3d-4c90d7bf3442', '2025-01-27 17:42:39.354374+00', '2025-02-06 20:09:31.928537+00', 'OPT-48CZFW360', '48" Cazo 360° Fire & Water Bowl', 2857, 5258, 5784, 2429, 2629, 3143, 3429, 2286, 'OPT-48CZFW360{MAT}{CLR}', 'Round', NULL, '48"', 'Fire And Water', 'Feature', 'Gas Fire Bowl', NULL, '1'),
	('6938b053-1678-44e2-98b2-3eb7327ef0d3', '2025-01-27 17:42:39.354374+00', '2025-02-06 20:09:31.928537+00', 'OPT-48RFO', '48" Cazo Fire Bowl', 2136, 3932, 4326, 1816, 1966, 2350, 2564, 1709, 'OPT-48RFO{MAT}{CLR}', 'Round', NULL, '48"', 'Fire Feature', 'Feature', 'Gas Fire Bowl', NULL, '1'),
	('23fc885a-b434-4296-baa8-4ccbb08e231f', '2025-01-27 17:42:39.354374+00', '2025-02-06 20:09:31.928537+00', 'OPT-CZNL48', '48" Cazo Fire Pit - Narrow Ledge', 2201, 4050, 4455, 1871, 2025, 2422, 2642, 1761, 'OPT-{MAT}{IGN}{CLR}{GAS}', 'Round', NULL, '48"', 'Fire Feature', 'Feature', 'Gas Fire Pit', NULL, '1'),
	('6f63e5a0-0782-4037-ba1e-9f08bfd37049', '2025-01-27 17:42:39.354374+00', '2025-02-06 20:09:31.928537+00', 'OPT-CZ48', '48" Cazo Fire Pit - Wide Ledge', 2280, 4196, 4616, 1938, 2098, 2508, 2736, 1824, 'OPT-{MAT}{IGN}{CLR}{GAS}', 'Round', NULL, '48"', 'Fire Feature', 'Feature', 'Gas Fire Pit', NULL, '1'),
	('070f3972-c75f-4534-a477-e5c8fde7ccdc', '2025-01-27 17:42:39.354374+00', '2025-02-06 20:09:31.928537+00', 'OPT-48RFW', '48" Cazo Fire & Water Bowl', 2359, 4342, 4777, 2006, 2171, 2595, 2831, 1888, 'OPT-48RFW{MAT}{CLR}', 'Round', NULL, '48"', 'Planter And Water', 'Feature', 'Gas Fire Bowl', NULL, '1'),
	('858fdd92-7166-445f-b81e-567da28bd615', '2025-01-27 17:42:39.354374+00', '2025-02-06 20:09:31.928537+00', 'OPT-48RP', '48" Cazo Planter Bowl', 1583, 2914, 3206, 1346, 1457, 1742, 1900, 1267, 'OPT-48RP{MAT}{CLR}', 'Round', NULL, '48"', 'Planter Feature', 'Feature', NULL, NULL, '1'),
	('823ab0b3-be55-4d60-9d0c-712cc47eb58a', '2025-01-27 17:42:39.354374+00', '2025-02-06 20:09:31.928537+00', 'OPT-48RPW', '48" Cazo Planter & Water Bowl', 1761, 3242, 3567, 1497, 1621, 1938, 2114, 1409, 'OPT-48RPW{MAT}{CLR}', 'Round', NULL, '48"', 'Planter And Water', 'Feature', NULL, NULL, '1'),
	('3c1fef9f-e10b-4243-b4ca-ff7ae88e4822', '2025-01-27 17:42:39.354374+00', '2025-02-06 20:09:31.928537+00', 'OPT-48RWO', '48" Cazo Water Bowl', 1784, 3284, 3613, 1517, 1642, 1963, 2141, 1428, 'OPT-48RWO{MAT}{CLR}', 'Round', NULL, '48"', 'Water Feature', 'Feature', NULL, NULL, '1'),
	('583060aa-1355-4b08-9cdc-d56e95fb89f2', '2025-02-05 16:55:03.027666+00', '2025-02-06 20:09:31.928537+00', 'OPT-FRMCS4815', '48" Fremont Fire Pit - 15" Tall', 1665, 3064, 3371, 1416, 1532, 1832, 1998, 1332, 'OPT-FRM{MAT}{IGN}{CLR}{GAS}', 'Rectangular', NULL, '48"', 'Fire Feature', 'Feature', 'Gas Fire Pit', NULL, '1'),
	('6ede0bc1-196a-471c-9250-9ef85411231d', '2025-02-05 16:55:03.027666+00', '2025-02-06 20:09:31.928537+00', 'OPT-FRMCS4824', '48" Fremont Fire Pit - 24" Tall', 1784, 3284, 3613, 1517, 1642, 1963, 2141, 1428, 'OPT-FRM{MAT}{IGN}{CLR}{GAS}', 'Rectangular', NULL, '48"', 'Fire Feature', 'Feature', 'Gas Fire Pit', NULL, '1'),
	('697e7efe-b423-42d1-ad93-1d0ffa4b6b29', '2025-02-04 23:45:05.008125+00', '2025-02-06 20:09:31.928537+00', 'OPT-LAJCS48', '48" La Jolla Fire Pit', 1545, 2844, 3129, 1314, 1422, 1700, 1854, 1236, 'OPT-LAJ{MAT}{IGN}{CLR}{GAS}', 'Rectangular', NULL, '48"', 'Fire Feature', 'Feature', 'Gas Fire Pit', NULL, '1'),
	('60836bad-c1e0-44da-a5aa-2a060bb4227e', '2025-01-31 00:53:49.307925+00', '2025-02-06 20:09:31.928537+00', 'OPT-SQ48CS', '48" Redan Fire Pit', 1830, 3368, 3705, 1556, 1684, 2013, 2196, 1464, 'OPT-SQ{MAT}{IGN}{CLR}{GAS}', 'Square', NULL, '48"', 'Fire Feature', 'Feature', 'Gas Fire Pit', NULL, '1'),
	('b3b34c2d-cec1-4ae1-b788-a23b3dae8371', '2025-01-30 01:23:49.496815+00', '2025-02-06 20:09:31.928537+00', 'OPT-RGLCS48', '48" Regal Fire Pit', 1432, 2636, 2900, 1218, 1318, 1576, 1719, 1146, 'OPT-RGL{MAT}{IGN}{CLR}{GAS}', 'Rectangular', NULL, '48"', 'Fire Feature', 'Feature', 'Gas Fire Pit', NULL, '1'),
	('35b3d66b-7cba-4d44-8a9f-5ef2b7adb9dd', '2025-01-30 01:23:49.496815+00', '2025-02-06 20:09:31.928537+00', 'OPT-UFRT48PB', '48" Regal Fire Pit - RTF', 1364, 2510, 2761, 1160, 1255, 1501, 1637, 1092, 'OPT-UFRT48PB{MAT}{IGN}{CLR}{GAS}', 'Rectangular', NULL, '48"', 'Fire Feature', 'Feature', 'Gas Fire Pit', NULL, '1'),
	('10427b0e-f999-42b6-9086-49f3f0ad131b', '2025-02-06 01:15:31.521741+00', '2025-02-06 20:09:31.928537+00', 'OPT-SALCS48', '48" Salinas Fire Table', 1383, 2546, 2801, 1176, 1273, 1522, 1660, 1107, 'OPT-SAL{MAT}{CLR}{IGN}{GAS}', 'Rectangular', NULL, '48"', 'Fire Feature', 'Feature', 'Gas Fire Table', NULL, '1'),
	('2988b285-9a6b-4ad6-8499-918418cef495', '2025-01-27 17:42:39.354374+00', '2025-02-06 20:09:31.928537+00', 'OPT-48RPCFO', '48" Sedona Fire Pit', 2420, 4454, 4900, 2057, 2227, 2662, 2904, 1936, 'OPT-48RPCFO{MAT}{IGN}{CLR}{GAS}', 'Round', NULL, '48"', 'Fire Feature', 'Feature', 'Gas Fire Bowl', NULL, '1'),
	('b159b195-689a-4324-b579-1bf72951ec7e', '2025-01-27 17:42:39.354374+00', '2025-02-06 20:09:31.928537+00', 'OPT-SED48', '48" Sedona Fire Pit - Narrow Ledge', 1641, 3020, 3322, 1395, 1510, 1806, 1970, 1313, 'OPT-SED48{MAT}{IGN}{CLR}{GAS}', 'Round', NULL, '48"', 'Fire Feature', 'Feature', 'Gas Fire Pit', NULL, '1'),
	('c2fe9db2-e34b-435b-a361-5fa52fc28107', '2025-01-27 17:42:39.354374+00', '2025-02-06 20:09:31.928537+00', 'OPT-SEDWL48', '48" Sedona Fire Pit - Wide Ledge', 2169, 3992, 4392, 1844, 1996, 2386, 2603, 1736, 'OPT-SEDWL48{MAT}{IGN}{CLR}{GAS}', 'Round', NULL, '48"', 'Fire Feature', 'Feature', 'Gas Fire Pit', NULL, '1'),
	('75f4606f-3386-4d17-8a0c-871175921021', '2025-01-29 01:06:38.056209+00', '2025-02-06 20:09:31.928537+00', 'OPT-FL4224', '42" Florence Fire Pit - 24" Tall', 2041, 3756, 4132, 1735, 1878, 2246, 2450, 1633, 'OPT-FL4224{MAT}{IGN}{CLR}{GAS}', 'Round', NULL, '42"', 'Fire Feature', 'Feature', 'Gas Fire Pit', NULL, '1'),
	('8cecc7c1-29e6-4dc9-8dd0-b815c333f86d', '2025-01-29 01:06:38.056209+00', '2025-02-06 20:09:31.928537+00', 'OPT-FL4620', '46" Florence Fire Pit - 20" Tall', 2380, 4380, 4818, 2023, 2190, 2618, 2856, 1904, 'OPT-FL4620{MAT}{IGN}{CLR}{GAS}', 'Round', NULL, '46"', 'Fire Feature', 'Feature', 'Gas Fire Pit', NULL, '1'),
	('5515e994-480f-4e1d-9ebc-2ec88508fffa', '2025-01-29 01:06:38.056209+00', '2025-02-06 20:09:31.928537+00', 'OPT-RL48PB', '48" Florence Fire Pit - RTF', 1497, 2756, 3032, 1273, 1378, 1647, 1797, 1198, 'OPT-RL48PB{MAT}{IGN}{CLR}{GAS}', 'Round', NULL, '48"', 'Fire Feature', 'Feature', 'Gas Fire Pit', NULL, '1'),
	('063c3518-2713-4de1-9624-fb743390b3fd', '2025-02-01 20:06:23.789783+00', '2025-02-06 20:09:31.928537+00', 'OPT-CSTT4824', '48" Mesa Fire Pit', 1480, 2724, 2997, 1258, 1362, 1628, 1776, 1184, 'OPT-{MAT}{IGN}{CLR}{GAS}', 'Rectangular', NULL, '48"', 'Fire Feature', 'Feature', 'Gas Fire Pit', NULL, '1'),
	('07e61479-5fc0-4c0b-bad8-7c460bd287f7', '2025-02-01 20:06:23.789783+00', '2025-02-06 20:09:31.928537+00', 'OPT-MODPC4828', '48" Moderno Fire Pit', 1795, 3304, 3635, 1526, 1652, 1975, 2154, 1436, 'OPT-MOD{MAT}{IGN}{CLR}{GAS}', 'Rectangular', NULL, '48"', 'Fire Feature', 'Feature', 'Gas Fire Pit', NULL, '1'),
	('2f0dc9e5-4c86-448a-9e04-081800bc0e3b', '2025-01-31 00:53:49.307925+00', '2025-02-06 20:09:31.928537+00', 'OPT-R4824CS', '48" Pismo Fire Pit', 1356, 2496, 2746, 1153, 1248, 1492, 1628, 1085, 'OPT-{MAT}{IGN}{CLR}{GAS}', 'Rectangular', NULL, '48"', 'Fire Feature', 'Feature', 'Gas Fire Pit', NULL, '1'),
	('7242593d-bc18-4864-9e7b-25690ba483e3', '2025-01-31 00:53:49.307925+00', '2025-02-06 20:09:31.928537+00', 'OPT-UFRT48DRPB', '48" Pismo Fire Pit - RTF', 1519, 2796, 3076, 1292, 1398, 1671, 1823, 1216, 'OPT-UFRT48DRPB{MAT}{IGN}{CLR}{GAS}', 'Rectangular', NULL, '48"', 'Fire Feature', 'Feature', 'Gas Fire Pit', NULL, '1'),
	('f045bc28-5e22-4c53-9e9c-f8c4bfd6e132', '2025-01-31 00:53:49.307925+00', '2025-02-06 20:09:31.928537+00', 'OPT-S48PB', '48" Quad Fire Pit - RTF', 1466, 2698, 2968, 1247, 1349, 1613, 1760, 1173, 'OPT-S48PB{MAT}{IGN}{CLR}{GAS}', 'Square', NULL, '48"', 'Fire Feature', 'Feature', 'Gas Fire Pit', NULL, '1'),
	('1c34c0d7-cfb8-435d-bd6e-9afe7402f66f', '2025-01-27 17:42:39.354374+00', '2025-02-06 20:09:31.928537+00', 'OPT-48RPCRLFO', '48" Sedona Fire Pit with Rounded Legs', 2634, 4848, 5333, 2239, 2424, 2898, 3161, 2108, 'OPT-48RPCRLFO{MAT}{IGN}{CLR}{GAS}', 'Round', NULL, '48"', 'Fire Feature', 'Feature', 'Gas Fire Bowl', NULL, '1'),
	('3e4e7867-acc9-4709-b781-74df915ccac5', '2025-01-30 01:23:49.496815+00', '2025-02-06 20:09:31.928537+00', 'OPT-UFRT108PB', '108" Regal Fire Pit - RTF', 2790, 5134, 5648, 2372, 2567, 3069, 3348, 2232, 'OPT-UFRT108PB{MAT}{IGN}{CLR}{GAS}', 'Rectangular', NULL, '108"', 'Fire Feature', 'Feature', 'Gas Fire Pit', NULL, '1'),
	('5e1b06b8-d109-4cb0-b676-89a31a1dfa33', '2025-01-31 00:53:49.307925+00', '2025-02-06 20:09:31.928537+00', 'OPT-LBTCS48', '48" Eaves Fire Pit', 1219, 2244, 2469, 1037, 1122, 1341, 1463, 976, 'OPT-LBT{MAT}{IGN}{CLR}{GAS}', 'Rectangular', NULL, '48"', 'Fire Feature', 'Feature', 'Gas Fire Pit', NULL, '1'),
	('1daffb70-77a3-46e2-9b9a-00c43be676cf', '2025-01-27 17:42:39.354374+00', '2025-02-06 20:09:31.928537+00', 'OPT-48RPCFW', '48" Sedona Fire & Water Pit', 2560, 4712, 5184, 2176, 2356, 2816, 3072, 2048, 'OPT-48RPCFW{MAT}{IGN}{CLR}{GAS}', 'Round', NULL, '48"', 'Fire And Water', 'Feature', 'Gas Fire Bowl', NULL, '1'),
	('6c9cf75b-deac-468d-b1bf-3a64ac66dc78', '2025-01-27 17:42:39.354374+00', '2025-02-06 20:09:31.928537+00', 'OPT-48RPCPO', '48" Sedona Planter Bowl', 2133, 3926, 4319, 1814, 1963, 2347, 2560, 1707, 'OPT-48RPCPO{MAT}{CLR}', 'Round', NULL, '48"', 'Planter Feature', 'Feature', NULL, NULL, '1'),
	('e19acc76-79f8-4c27-aa80-a971c4a4ce98', '2025-01-27 17:42:39.354374+00', '2025-02-06 20:09:31.928537+00', 'OPT-48RPCPW', '48" Sedona Planter & Water Bowl', 2420, 4454, 4900, 2057, 2227, 2662, 2904, 1936, 'OPT-48RPCPW{MAT}{CLR}', 'Round', NULL, '48"', 'Planter And Water', 'Feature', NULL, NULL, '1'),
	('bbb40485-ff52-43ac-9c73-fd5756ce4b24', '2025-01-27 17:42:39.354374+00', '2025-02-06 20:09:31.928537+00', 'OPT-48RPCWO', '48" Sedona Water Bowl', 2369, 4360, 4796, 2014, 2180, 2606, 2843, 1896, 'OPT-48RPCWO{MAT}{CLR}', 'Round', NULL, '48"', 'Water Feature', 'Feature', NULL, NULL, '1'),
	('1abbdb8f-ff57-46b9-89ec-8cba0527489f', '2025-01-29 01:06:38.056209+00', '2025-02-06 20:09:31.928537+00', 'OPT-TEM48', '48" Tempe Fire Pit', 1507, 2774, 3052, 1281, 1387, 1658, 1809, 1206, 'OPT-TEM{MAT}{IGN}{CLR}{GAS}', 'Round', NULL, '48"', 'Fire Feature', 'Feature', 'Gas Fire Pit', NULL, '1'),
	('7c1f96db-8761-4397-8fd3-638e2e8702dc', '2025-02-04 23:45:05.008125+00', '2025-02-06 20:09:31.928537+00', 'OPT-RCRTN48', '48" Unity Fire Pit - 24" Tall', 1969, 3624, 3987, 1674, 1812, 2166, 2363, 1576, 'OPT-{MAT}{IGN}{CLR}{GAS}', 'Round', NULL, '48"', 'Fire Feature', 'Feature', 'Gas Fire Pit', NULL, '1'),
	('da0fe0c4-a272-4636-affe-0c80d0a24dd0', '2025-01-28 16:41:45.216124+00', '2025-02-06 20:09:31.928537+00', 'OPT-4820MFO', '48" x 20" Linear Maya Fire Bowl', 2261, 4162, 4579, 1922, 2081, 2488, 2714, 1809, 'OPT-4820M{MAT}{IGN}{CLR}{GAS}', 'Rectangular', NULL, '48" x 20"', 'Fire Feature', 'Feature', 'Gas Fire Bowl', NULL, '1'),
	('57ac329b-6160-4dfe-bf70-5e6cb08cb1e4', '2025-01-28 16:41:45.216124+00', '2025-02-06 20:09:31.928537+00', 'OPT-4820MPCFW', '48" x 20" Linear Maya Fire & Water Bowl', 2459, 4526, 4979, 2091, 2263, 2705, 2951, 1968, 'OPT-4820M{MAT}{IGN}{CLR}{GAS}', 'Rectangular', NULL, '48" x 20"', 'Fire And Water', 'Feature', 'Gas Fire Bowl', NULL, '1'),
	('ad0c174a-c5a1-410b-8d4d-57fde1491866', '2025-01-29 01:06:38.056209+00', '2025-02-06 20:09:31.928537+00', 'OPT-PMDR4824', '48" x 24" Moderna Rectangular Planter', 525, 966, 1063, 447, 483, 578, 630, 420, 'OPT-PMDR4824{MAT}', 'Rectangular', NULL, '48" x 24"', 'Planter Feature', 'Planter', NULL, NULL, NULL),
	('b5245e1c-0748-4886-96b6-808508a92b1e', '2025-01-29 01:06:38.056209+00', '2025-02-06 20:09:31.928537+00', 'OPT-PTSR4824', '48" x 24" Rectangular Tuscon Planter', 770, 1418, 1560, 655, 709, 847, 924, 616, 'OPT-PTSR4824{MAT}', 'Rectangular', NULL, '48" x 24"', 'Planter Feature', 'Planter', NULL, NULL, NULL),
	('bcdd0868-af0f-4e4d-aec4-9115c1135ba8', '2025-01-28 22:27:38.149771+00', '2025-02-06 20:09:31.928537+00', 'OPT-AVLCS4815', '48" x 28" Linear Avalon Fire Pit - 15" Tall', 1665, 3064, 3371, 1416, 1532, 1832, 1998, 1332, 'OPT-AVL{MAT}{IGN}{CLR}{GAS}', 'Rectangular', NULL, '48" x 28"', 'Fire Feature', 'Feature', 'Gas Fire Pit', NULL, '1'),
	('24a91358-57e3-47fc-85d8-90b0d020c020', '2025-01-28 22:27:38.149771+00', '2025-02-06 20:09:31.928537+00', 'OPT-AVLCS4824', '48" x 28" Linear Avalon Fire Pit - 24" Tall', 1784, 3284, 3613, 1517, 1642, 1963, 2141, 1428, 'OPT-AVL{MAT}{IGN}{CLR}{GAS}', 'Rectangular', NULL, '48" x 28"', 'Fire Feature', 'Feature', 'Gas Fire Pit', NULL, '1'),
	('bdadf852-6fe9-4e2a-9c23-3326755fb99c', '2025-01-31 00:53:49.307925+00', '2025-02-06 20:09:31.928537+00', 'OPT-RDN50', '50" Redan Fire Pit', 2219, 4084, 4493, 1887, 2042, 2441, 2663, 1776, 'OPT-RDN50{MAT}{IGN}{CLR}{GAS}', 'Square', NULL, '50"', 'Fire Feature', 'Feature', 'Gas Fire Pit', NULL, '1'),
	('22f12bda-0987-4d63-83ec-37e6d91f1b8f', '2025-01-29 01:06:38.056209+00', '2025-02-06 20:09:31.928537+00', 'OPT-FL54', '54" Florence Fire Pit - 20" Tall', 3446, 6342, 6977, 2930, 3171, 3791, 4136, 2757, 'OPT-FL54{MAT}{IGN}{CLR}{GAS}', 'Round', NULL, '54"', 'Fire Feature', 'Feature', 'Gas Fire Pit', NULL, '1'),
	('f87cd874-835a-44d2-85f6-02fd9a437baf', '2025-01-30 01:23:49.496815+00', '2025-02-06 20:09:31.928537+00', 'OPT-RGLCS54', '54" Regal Fire Pit', 1728, 3180, 3498, 1469, 1590, 1901, 2074, 1383, 'OPT-RGL{MAT}{IGN}{CLR}{GAS}', 'Rectangular', NULL, '54"', 'Fire Feature', 'Feature', 'Gas Fire Pit', NULL, '1'),
	('fafdd237-ca01-4570-b9a7-2254d38cc76c', '2025-01-31 00:53:49.307925+00', '2025-02-06 20:09:31.928537+00', 'OPT-CBLN56CS', '56" Cabo Linear Fire Pit', 1904, 3504, 3855, 1619, 1752, 2095, 2285, 1524, 'OPT-CBLN56{MAT}{IGN}{CLR}{GAS}', 'Rectangular', NULL, '56"', 'Fire Feature', 'Feature', 'Gas Fire Pit', NULL, '1'),
	('c57c5b36-8ea7-43af-8548-422c845013e9', '2025-02-05 20:04:30.563433+00', '2025-02-06 20:09:31.928537+00', 'OPT-ALMPC60-BWC', '60" Alameda Fire Table Black & White', 2133, 3926, 4319, 1814, 1963, 2347, 2560, 1707, 'OPT-ALMPC60{MAT}{CLR}{IGN}{GAS}', 'Rectangular', NULL, '60"', 'Fire Feature', 'Feature', 'Gas Fire Table', NULL, '1'),
	('66857292-4dad-4618-a9ba-ca818a28c052', '2025-02-06 01:15:31.521741+00', '2025-02-06 20:09:31.928537+00', 'OPT-BELCS60', '60" Bella Fire Table', 2009, 3698, 4068, 1708, 1849, 2210, 2411, 1608, 'OPT-BEL{MAT}{CLR}{IGN}{GAS}', 'Square', NULL, '60"', 'Fire Feature', 'Feature', 'Gas Fire Table', NULL, '1'),
	('824828d7-c65a-4e9f-8b20-1c80ce9bf498', '2025-02-06 01:15:31.521741+00', '2025-02-06 20:09:31.928537+00', 'OPT-ST60PB', '60" Bella Fire Table - RTF - 16" Tall', 1708, 3144, 3459, 1452, 1572, 1879, 2050, 1367, 'OPT-ST60PB{MAT}{CLR}{IGN}{GAS}', 'Square', NULL, '60"', 'Fire Feature', 'Feature', 'Gas Fire Table', NULL, '1'),
	('2625f20c-0040-416e-8e1f-0e1639996b21', '2025-02-06 01:15:31.521741+00', '2025-02-06 20:09:31.928537+00', 'OPT-ST60DRPB', '60" Bella Fire Table - RTF - 24" Tall', 1980, 3644, 4009, 1683, 1822, 2178, 2376, 1584, 'OPT-ST60DRPB{MAT}{CLR}{IGN}{GAS}', 'Square', NULL, '60"', 'Fire Feature', 'Feature', 'Gas Fire Table', NULL, '1'),
	('93099257-3592-4bc1-bf05-2029e261619f', '2025-02-06 01:15:31.521741+00', '2025-02-06 20:09:31.928537+00', 'OPT-BELLCS6036', '60" Bella Linear Fire Table', 1970, 3626, 3989, 1675, 1813, 2167, 2364, 1576, 'OPT-BELL{MAT}{CLR}{IGN}{GAS}', 'Rectangular', NULL, '60"', 'Fire Feature', 'Feature', 'Gas Fire Table', NULL, '1'),
	('60685228-b18b-4666-9767-8818164adc15', '2025-02-01 20:06:23.789783+00', '2025-02-06 20:09:31.928537+00', 'OPT-BGSR60', '60" Big Sur Fire Pit', 3829, 7046, 7751, 3255, 3523, 4212, 4595, 3064, 'OPT-BGSR60{MAT}{IGN}{CLR}{GAS}', 'Other', NULL, '60"', 'Fire Feature', 'Feature', 'Gas Fire Pit', NULL, '1'),
	('0fcb64f2-c17d-4f64-b1a5-71d44234a04e', '2025-02-01 20:06:23.789783+00', '2025-02-06 20:09:31.928537+00', 'OPT-BLWCS60', '60" Billow Fire Pit', 2183, 4018, 4420, 1856, 2009, 2402, 2620, 1747, 'OPT-BLW{MAT}{IGN}{CLR}{GAS}', 'Other', NULL, '60"', 'Fire Feature', 'Feature', 'Gas Fire Pit', NULL, '1'),
	('c0486473-f867-4ca4-b611-e80003098d36', '2025-02-01 20:06:23.789783+00', '2025-02-06 20:09:31.928537+00', 'OPT-CTL60', '60" Catalina Fire Pit', 2685, 4942, 5437, 2283, 2471, 2954, 3222, 2148, 'OPT-CTL60{MAT}{IGN}{CLR}{GAS}', 'Rectangular', NULL, '60"', 'Fire Feature', 'Feature', 'Gas Fire Pit', NULL, '1'),
	('b383a9bf-d93a-4fea-baa6-29e077b10a19', '2025-02-01 20:06:23.789783+00', '2025-02-06 20:09:31.928537+00', 'OPT-UCTDR60PB', '60" Catalina Fire Pit- RTF', 2148, 3954, 4350, 1826, 1977, 2363, 2578, 1719, 'OPT-UCTDR60PB{MAT}{IGN}{CLR}{GAS}', 'Rectangular', NULL, '60"', 'Fire Feature', 'Feature', 'Gas Fire Pit', NULL, '1'),
	('6cdd41a6-9193-493c-a637-453498fcd329', '2025-01-27 17:42:39.354374+00', '2025-02-06 20:09:31.928537+00', 'OPT-CZNL60', '60" Cazo Fire Pit - Narrow Ledge', 3829, 7046, 7751, 3255, 3523, 4212, 4595, 3064, 'OPT-CZNL{MAT}{IGN}{CLR}{GAS}', 'Round', NULL, '60"', 'Fire Feature', 'Feature', 'Gas Fire Pit', NULL, '1'),
	('81a923f9-bcaf-47dd-b49f-ba66ac70f899', '2025-01-27 17:42:39.354374+00', '2025-02-06 20:09:31.928537+00', 'OPT-CZPC60', '60" Cazo Fire Pit - Wide Ledge', 3960, 7288, 8017, 3366, 3644, 4356, 4752, 3168, 'OPT-CZ{MAT}{IGN}{CLR}{GAS}', 'Round', NULL, '60"', 'Fire Feature', 'Feature', 'Gas Fire Pit', NULL, '1'),
	('f60fc29d-6b0e-4e3e-b014-0c020a688c23', '2025-01-31 00:53:49.307925+00', '2025-02-06 20:09:31.928537+00', 'OPT-CORCS60', '60" Coronado Fire Pit', 1730, 3184, 3503, 1471, 1592, 1903, 2076, 1384, 'OPT-COR{MAT}{IGN}{CLR}{GAS}', 'Rectangular', NULL, '60"', 'Fire Feature', 'Feature', 'Gas Fire Pit', NULL, '1'),
	('331d9d34-32d6-44a8-a6c2-e6d132ad4c99', '2025-01-31 00:53:49.307925+00', '2025-02-06 20:09:31.928537+00', 'OPT-UC60PB', '60" Coronado Fire Pit - RTF', 1508, 2776, 3054, 1282, 1388, 1659, 1810, 1207, 'OPT-UC60PB{MAT}{IGN}{CLR}{GAS}', 'Rectangular', NULL, '60"', 'Fire Feature', 'Feature', 'Gas Fire Pit', NULL, '1'),
	('ed3c8f8d-cbf5-480b-a566-ce423060757e', '2025-01-31 00:53:49.307925+00', '2025-02-06 20:09:31.928537+00', 'OPT-LBTPC60', '60" Eaves Fire Pit', 1581, 2910, 3201, 1344, 1455, 1740, 1898, 1265, 'OPT-LBT{MAT}{IGN}{CLR}{GAS}', 'Rectangular', NULL, '60"', 'Fire Feature', 'Feature', 'Gas Fire Pit', NULL, '1'),
	('755f365e-1bd1-4023-a858-093b79a6716a', '2025-01-29 01:06:38.056209+00', '2025-02-06 20:09:31.928537+00', 'OPT-RL60PB', '60" Florence Fire Pit - RTF', 1529, 2814, 3096, 1300, 1407, 1682, 1835, 1224, 'OPT-RL60PB{MAT}{IGN}{CLR}{GAS}', 'Round', NULL, '60"', 'Fire Feature', 'Feature', 'Gas Fire Pit', NULL, '1'),
	('c48756bd-46ba-4397-8233-6ae8aa69b80d', '2025-02-01 20:06:23.789783+00', '2025-02-06 20:09:31.928537+00', 'OPT-60PCSQ', '60" Forma Fire Pit', 2111, 3886, 4275, 1795, 1943, 2323, 2534, 1689, 'OPT-60{MAT}{IGN}{CLR}{GAS}', 'Square', NULL, '60"', 'Fire Feature', 'Feature', 'Gas Fire Pit', NULL, '1'),
	('e212d9ec-525c-4f20-9359-9a91c10606ef', '2025-02-01 20:06:23.789783+00', '2025-02-06 20:09:31.928537+00', 'OPT-S60DRPB', '60" Forma Fire Pit - RTF', 2125, 3910, 4301, 1807, 1955, 2338, 2550, 1700, 'OPT-S60DRPB{MAT}{IGN}{CLR}{GAS}', 'Square', NULL, '60"', 'Fire Feature', 'Feature', 'Gas Fire Pit', NULL, '1'),
	('8a7989e8-70c2-4598-b4be-16722c94171e', '2025-02-05 16:55:03.027666+00', '2025-02-06 20:09:31.928537+00', 'OPT-FRMCS6015', '60" Fremont Fire Pit - 15" Tall', 1784, 3284, 3613, 1517, 1642, 1963, 2141, 1428, 'OPT-FRM{MAT}{IGN}{CLR}{GAS}', 'Rectangular', NULL, '60"', 'Fire Feature', 'Feature', 'Gas Fire Pit', NULL, '1'),
	('77a9d1dd-24a8-4cab-ad74-ccb0e586b08b', '2025-02-05 16:55:03.027666+00', '2025-02-06 20:09:31.928537+00', 'OPT-FRMCS6024', '60" Fremont Fire Pit - 24" Tall', 1904, 3504, 3855, 1619, 1752, 2095, 2285, 1524, 'OPT-FRM{MAT}{IGN}{CLR}{GAS}', 'Rectangular', NULL, '60"', 'Fire Feature', 'Feature', 'Gas Fire Pit', NULL, '1'),
	('f5f8bde3-f078-4b62-abcc-1420a8309d6d', '2025-02-04 23:45:05.008125+00', '2025-02-06 20:09:31.928537+00', 'OPT-LAJCS60', '60" La Jolla Fire Pit', 1904, 3504, 3855, 1619, 1752, 2095, 2285, 1524, 'OPT-LAJ{MAT}{IGN}{CLR}{GAS}', 'Rectangular', NULL, '60"', 'Fire Feature', 'Feature', 'Gas Fire Pit', NULL, '1'),
	('a052546a-6036-4221-86ff-d9613b68518a', '2025-02-06 01:15:31.521741+00', '2025-02-06 20:09:31.928537+00', 'OPT-MABCS60', '60" Mabel Fire Table', 2375, 4370, 4807, 2019, 2185, 2613, 2850, 1900, 'OPT-MAB{MAT}{CLR}{IGN}{GAS}', 'Round', NULL, '60"', 'Fire Feature', 'Feature', 'Gas Fire Table', NULL, '1'),
	('44cc5439-43da-4048-9ee8-5302796eeb2f', '2025-01-31 00:53:49.307925+00', '2025-02-06 20:09:31.928537+00', 'OPT-CORCS108', '108" Coronado Fire Pit', 2380, 4380, 4818, 2023, 2190, 2618, 2856, 1904, 'OPT-COR{MAT}{IGN}{CLR}{GAS}', 'Rectangular', NULL, '108"', 'Fire Feature', 'Feature', 'Gas Fire Pit', NULL, '1'),
	('ac8659ee-e15c-4032-8203-60e750cb2681', '2025-01-31 00:53:49.307925+00', '2025-02-06 20:09:31.928537+00', 'OPT-UC108PB', '108" Coronado Fire Pit - RTF', 3747, 6896, 7586, 3185, 3448, 4122, 4497, 2998, 'OPT-UC108PB{MAT}{IGN}{CLR}{GAS}', 'Rectangular', NULL, '108"', 'Fire Feature', 'Feature', 'Gas Fire Pit', NULL, '1'),
	('e77057d3-6e48-43d7-b1bc-7a7b26bccd1a', '2025-01-31 00:53:49.307925+00', '2025-02-06 20:09:31.928537+00', 'OPT-COR120', '120" Coronado Fire Pit', 4217, 7760, 8536, 3585, 3880, 4639, 5061, 3374, 'OPT-COR{MAT}{IGN}{CLR}{GAS}', 'Rectangular', NULL, '120"', 'Fire Feature', 'Feature', 'Gas Fire Pit', NULL, '1'),
	('0331f8e3-4cd7-4394-a71e-a77aaf347d4e', '2025-01-31 00:53:49.307925+00', '2025-02-06 20:09:31.928537+00', 'OPT-UC120PB', '120" Coronado Fire Pit - RTF', 3903, 7182, 7901, 3318, 3591, 4294, 4684, 3123, 'OPT-UC120PB{MAT}{IGN}{CLR}{GAS}', 'Rectangular', NULL, '120"', 'Fire Feature', 'Feature', 'Gas Fire Pit', NULL, '1'),
	('391dbcd6-91c7-4d69-a32e-661b66a1169e', '2025-01-31 00:53:49.307925+00', '2025-02-06 20:09:31.928537+00', 'OPT-CORCS48', '48" Coronado Fire Pit', 1431, 2634, 2898, 1217, 1317, 1575, 1718, 1145, 'OPT-COR{MAT}{IGN}{CLR}{GAS}', 'Rectangular', NULL, '48"', 'Fire Feature', 'Feature', 'Gas Fire Pit', NULL, '1'),
	('475ebbb1-7c6e-4d4b-b5e7-643873b454b0', '2025-02-01 20:06:23.789783+00', '2025-02-06 20:09:31.928537+00', 'OPT-BSPCS60', '60" Bispo Fire Pit', 1904, 3504, 3855, 1619, 1752, 2095, 2285, 1524, 'OPT-BSP{MAT}{IGN}{CLR}{GAS}', 'Oval', NULL, '60"', 'Fire Feature', 'Feature', 'Gas Fire Pit', NULL, '1'),
	('a5cfb913-18ed-4dbe-8876-64661d9c0af2', '2025-02-06 01:15:31.521741+00', '2025-02-06 20:09:31.928537+00', 'OPT-MABPC60-BWC', '60" Mabel Fire Table Black & White', 2374, 4370, 4807, 2018, 2185, 2612, 2849, 1900, 'OPT-MABPC60{MAT}{CLR}{IGN}{GAS}', 'Round', NULL, '60"', 'Fire Feature', 'Feature', 'Gas Fire Table', NULL, '1'),
	('88de9487-8507-452c-a4b0-19fe02d289af', '2025-02-06 01:15:31.521741+00', '2025-02-06 20:09:31.928537+00', 'OPT-RRL60PB', '60" Mabel Fire Table - RTF - 16" Tall', 1898, 3494, 3844, 1614, 1747, 2088, 2278, 1519, 'OPT-RRL60PB{MAT}{CLR}{IGN}{GAS}', 'Round', NULL, '60"', 'Fire Feature', 'Feature', 'Gas Fire Table', NULL, '1'),
	('68587106-06d7-439d-aa53-bc47710b5b38', '2025-02-06 01:15:31.521741+00', '2025-02-06 20:09:31.928537+00', 'OPT-RRL60DRPB', '60" Mabel Fire Tbale - RTF - 24" Tall', 2080, 3828, 4211, 1768, 1914, 2288, 2496, 1664, 'OPT-RRL60DRPB{MAT}{CLR}{IGN}{GAS}', 'Round', NULL, '60"', 'Fire Feature', 'Feature', 'Gas Fire Table', NULL, '1'),
	('eba5c7c5-2a5d-44fb-bdd3-c85da18e2e62', '2025-02-01 20:06:23.789783+00', '2025-02-06 20:09:31.928537+00', 'OPT-CSTT6024', '60" Mesa Fire Pit', 1819, 3348, 3683, 1547, 1674, 2001, 2183, 1456, 'OPT-{MAT}{IGN}{CLR}{GAS}', 'Rectangular', NULL, '60"', 'Fire Feature', 'Feature', 'Gas Fire Pit', NULL, '1'),
	('9c1147f3-8199-4010-a59d-a0c3817c301b', '2025-02-01 20:06:23.789783+00', '2025-02-06 20:09:31.928537+00', 'OPT-MODPC6028', '60" Moderno Fire Pit', 2020, 3718, 4090, 1717, 1859, 2222, 2424, 1616, 'OPT-MOD{MAT}{IGN}{CLR}{GAS}', 'Rectangular', NULL, '60"', 'Fire Feature', 'Feature', 'Gas Fire Pit', NULL, '1'),
	('1a7be254-3e60-4b85-8e24-c88ed9c8dde1', '2025-01-27 17:55:54.581147+00', '2025-02-06 20:09:31.928537+00', 'OPT-OLYSED60E12', '60" Olympian with Sedona - 360° Spill - Self Contained Unit', 10658, 19612, 21574, 9060, 9806, 11724, 12790, 8527, 'OPT-OLYSED60{MAT}{IGN}{CLR}{GAS}', 'Round', NULL, '60"', 'Fire And Water', 'Feature', 'Gas Self Contained Unit', NULL, '1'),
	('760f8e84-e06b-4a7a-9e33-56cca2846047', '2025-01-31 00:53:49.307925+00', '2025-02-06 20:09:31.928537+00', 'OPT-R6024CS', '60" Pismo Fire Pit', 1730, 3184, 3503, 1471, 1592, 1903, 2076, 1384, 'OPT-{MAT}{IGN}{CLR}{GAS}', 'Rectangular', NULL, '60"', 'Fire Feature', 'Feature', 'Gas Fire Pit', NULL, '1'),
	('0c8d341f-bfce-4d83-91ba-d0320e572e25', '2025-01-31 00:53:49.307925+00', '2025-02-06 20:09:31.928537+00', 'OPT-UFRT60DRPB', '60" Pismo Fire Pit - RTF', 1768, 3254, 3580, 1503, 1627, 1945, 2122, 1415, 'OPT-UFRT60DRPB{MAT}{IGN}{CLR}{GAS}', 'Rectangular', NULL, '60"', 'Fire Feature', 'Feature', 'Gas Fire Pit', NULL, '1'),
	('2b3828ef-cca2-4cad-85c2-ad09a5cb0800', '2025-01-31 00:53:49.307925+00', '2025-02-06 20:09:31.928537+00', 'OPT-S60PB', '60" Quad Fire Pit - RTF', 1948, 3586, 3945, 1656, 1793, 2143, 2338, 1559, 'OPT-S60PB{MAT}{IGN}{CLR}{GAS}', 'Square', NULL, '60"', 'Fire Feature', 'Feature', 'Gas Fire Pit', NULL, '1'),
	('016962d5-be2e-40b0-b4e7-d7e723d9a573', '2025-01-31 00:53:49.307925+00', '2025-02-06 20:09:31.928537+00', 'OPT-CBSQ60CS', '60" Cabo Square Fire Pit', 2326, 4280, 4708, 1978, 2140, 2559, 2792, 1861, 'OPT-CBSQ60{MAT}{IGN}{CLR}{GAS}', 'Square', NULL, '60"', 'Fire Feature', 'Feature', 'Gas Fire Pit', NULL, '1'),
	('867c3fe9-a4cf-4959-80d3-cc3ade89d4bf', '2025-02-05 20:04:30.563433+00', '2025-02-06 20:09:31.928537+00', 'OPT-ALMCS60', '60" Alameda Fire Table', 1969, 3624, 3987, 1674, 1812, 2166, 2363, 1576, 'OPT-ALM{MAT}{IGN}{TOPCLR}{BSCLR}{GAS}', 'Rectangular', NULL, '60"', 'Fire Feature', 'Feature', 'Gas Fire Table', NULL, '2'),
	('648a4d52-343a-49dd-9e83-ca23676e6007', '2025-02-01 20:06:23.789783+00', '2025-02-06 20:09:31.928537+00', 'OPT-3030SQCS', '30" Forma Fire Pit', 1356, 2496, 2746, 1153, 1248, 1492, 1628, 1085, 'OPT-30{MAT}{IGN}{CLR}{GAS}', 'Square', NULL, '30"', 'Fire Feature', 'Feature', 'Gas Fire Pit', NULL, '1'),
	('18ace58e-2387-442d-9d26-ed09732106bc', '2025-02-01 20:06:23.789783+00', '2025-02-06 20:09:31.928537+00', 'OPT-3636SQCS', '36" Forma Fire Pit', 1431, 2634, 2898, 1217, 1317, 1575, 1718, 1145, 'OPT-36{MAT}{IGN}{CLR}{GAS}', 'Square', NULL, '36"', 'Fire Feature', 'Feature', 'Gas Fire Pit', NULL, '1'),
	('40e3488a-7a0c-44dc-873d-7f4c136366f6', '2025-02-01 20:06:23.789783+00', '2025-02-06 20:09:31.928537+00', 'OPT-S36DRPB', '36" Forma Fire Pit - RTF', 1469, 2704, 2975, 1249, 1352, 1616, 1763, 1176, 'OPT-S36DRPB{MAT}{IGN}{CLR}{GAS}', 'Square', NULL, '36"', 'Fire Feature', 'Feature', 'Gas Fire Pit', NULL, '1'),
	('a90e424f-9470-42c8-81fc-342afc552db3', '2025-02-01 20:06:23.789783+00', '2025-02-06 20:09:31.928537+00', 'OPT-4242SQCS', '42" Forma Fire Pit', 1657, 3050, 3355, 1409, 1525, 1823, 1989, 1326, 'OPT-42{MAT}{IGN}{CLR}{GAS}', 'Square', NULL, '42"', 'Fire Feature', 'Feature', 'Gas Fire Pit', NULL, '1'),
	('69586609-3180-4662-942f-d8bb8f785071', '2025-02-01 20:06:23.789783+00', '2025-02-06 20:09:31.928537+00', 'OPT-BSPCS48', '48" Bispo Fire Pit', 1545, 2844, 3129, 1314, 1422, 1700, 1854, 1236, 'OPT-BSP{MAT}{IGN}{CLR}{GAS}', 'Oval', NULL, '48"', 'Fire Feature', 'Feature', 'Gas Fire Pit', NULL, '1'),
	('76154f9a-bffe-4d4e-9737-85232c5039a7', '2025-02-01 20:06:23.789783+00', '2025-02-06 20:09:31.928537+00', 'OPT-4848SQCS', '48" Forma Fire Pit', 1696, 3122, 3435, 1442, 1561, 1866, 2036, 1357, 'OPT-48{MAT}{IGN}{CLR}{GAS}', 'Square', NULL, '48"', 'Fire Feature', 'Feature', 'Gas Fire Pit', NULL, '1'),
	('4d9f8649-f384-4633-8cac-884c1fec1140', '2025-02-01 20:06:23.789783+00', '2025-02-06 20:09:31.928537+00', 'OPT-S48DRPB', '48" Forma Fire Pit - RTF', 1629, 2998, 3298, 1385, 1499, 1792, 1955, 1304, 'OPT-S48DRPB{MAT}{IGN}{CLR}{GAS}', 'Square', NULL, '48"', 'Fire Feature', 'Feature', 'Gas Fire Pit', NULL, '1'),
	('40c92168-0207-4e58-863f-cff10732149e', '2025-01-30 01:23:49.496815+00', '2025-02-06 20:09:31.928537+00', 'OPT-RGLCS60', '60" Regal Fire Pit', 1795, 3304, 3635, 1526, 1652, 1975, 2154, 1436, 'OPT-RGL{MAT}{IGN}{CLR}{GAS}', 'Rectangular', NULL, '60"', 'Fire Feature', 'Feature', 'Gas Fire Pit', NULL, '1'),
	('0e508cc0-35c6-4c29-aa23-cf534cb93cf8', '2025-01-30 01:23:49.496815+00', '2025-02-06 20:09:31.928537+00', 'OPT-UFRT60PB', '60" Regal Fire Pit - RTF', 1607, 2958, 3254, 1366, 1479, 1768, 1929, 1286, 'OPT-UFRT60PB{MAT}{IGN}{CLR}{GAS}', 'Rectangular', NULL, '60"', 'Fire Feature', 'Feature', 'Gas Fire Pit', NULL, '1'),
	('06e1456c-ddca-45f8-b055-bf4c610d4551', '2025-02-06 01:15:31.521741+00', '2025-02-06 20:09:31.928537+00', 'OPT-SALCS60', '60" Salinas Fire Table', 1730, 3184, 3503, 1471, 1592, 1903, 2076, 1384, 'OPT-SAL{MAT}{CLR}{IGN}{GAS}', 'Rectangular', NULL, '60"', 'Fire Feature', 'Feature', 'Gas Fire Table', NULL, '1'),
	('fa8fb09b-7bd9-438b-959e-e279bfd04e65', '2025-01-27 17:42:39.354374+00', '2025-02-06 20:09:31.928537+00', 'OPT-SED60', '60" Sedona FIre Pit - Narrow Ledge', 3829, 7046, 7751, 3255, 3523, 4212, 4595, 3064, 'OPT-SED60{MAT}{IGN}{CLR}{GAS}', 'Round', NULL, '60"', 'Fire Feature', 'Feature', 'Gas Fire Pit', NULL, '1'),
	('1c844360-98bb-4d4e-9c2d-3bb17b8fcd0a', '2025-01-27 17:42:39.354374+00', '2025-02-06 20:09:31.928537+00', 'OPT-SEDWL60', '60" Sedona Fire PIt - Wide Ledge', 4026, 7408, 8149, 3423, 3704, 4429, 4832, 3221, 'OPT-SEDWL60{MAT}{IGN}{CLR}{GAS}', 'Round', NULL, '60"', 'Fire Feature', 'Feature', 'Gas Fire Pit', NULL, '1'),
	('2089d633-5156-4c64-9b78-18904e54d898', '2025-01-27 17:42:39.354374+00', '2025-02-06 20:09:31.928537+00', 'OPT-60RFW4W', '60" Sedona Fire & Water Pit - 4 Way Spill', 4265, 7848, 8633, 3626, 3924, 4692, 5118, 3412, 'OPT-60RFW4W{MAT}{IGN}{CLR}{GAS}', 'Round', NULL, '60"', 'Fire And Water', 'Feature', 'Gas Fire Bowl', NULL, '1'),
	('02191e11-6c3a-4c4d-92fc-d2d653a7dfaf', '2025-02-04 23:45:05.008125+00', '2025-02-06 20:09:31.928537+00', 'OPT-UNYPC6018', '60" Unity Fire Pit - 18" Tall', 2362, 4348, 4783, 2008, 2174, 2599, 2835, 1890, 'OPT-{MAT}{IGN}{CLR}{GAS}', 'Round', NULL, '60"', 'Fire Feature', 'Feature', 'Gas Fire Pit', NULL, '1'),
	('e049a07b-eadd-4768-9089-3bbea5217b6e', '2025-02-04 23:45:05.008125+00', '2025-02-06 20:09:31.928537+00', 'OPT-UNYPC60', '60" Unity Fire Pit - 24" Tall', 2380, 4380, 4818, 2023, 2190, 2618, 2856, 1904, 'OPT-{MAT}{IGN}{CLR}{GAS}', 'Round', NULL, '60"', 'Fire Feature', 'Feature', 'Gas Fire Pit', NULL, '1'),
	('74d2feb0-a978-4226-a569-e6f3aa827673', '2025-02-04 23:45:05.008125+00', '2025-02-06 20:09:31.928537+00', 'OPT-RL60DRPB', '60" Unity Fire Pit - RTF', 2378, 4376, 4814, 2022, 2188, 2616, 2854, 1903, 'OPT-RL60DRPB{MAT}{IGN}{CLR}{GAS}', 'Round', NULL, '60"', 'Fire Feature', 'Feature', 'Gas Fire Pit', NULL, '1'),
	('5fe67f51-840a-441c-816a-8faa5819a96c', '2025-01-28 16:52:34.092497+00', '2025-02-06 20:09:31.928537+00', 'OPT-6020MPCFO', '60" x 20" Linear Maya Fire Bowl', 2583, 4754, 5230, 2196, 2377, 2842, 3100, 2067, 'OPT-6020M{MAT}{IGN}{CLR}{GAS}', 'Rectangular', NULL, '60" x 20"', 'Fire Feature', 'Feature', 'Gas Fire Bowl', NULL, '1'),
	('b3cc51b2-774e-4a8f-9330-65754e18d750', '2025-01-28 16:52:34.092497+00', '2025-02-06 20:09:31.928537+00', 'OPT-6020MPCFW', '60" x 20" Linear Maya Fire & Water Bowl', 2690, 4950, 5445, 2287, 2475, 2959, 3228, 2152, 'OPT-6020M{MAT}{IGN}{CLR}{GAS}', 'Rectangular', NULL, '60" x 20"', 'Fire And Water', 'Feature', 'Gas Fire Bowl', NULL, '1'),
	('338d0b7f-6ec1-4a05-ac2d-7f71bbcf2f03', '2025-01-29 01:06:38.056209+00', '2025-02-06 20:09:31.928537+00', 'OPT-PMDR6024', '60" x 24" Moderna Rectangular Planter', 770, 1418, 1560, 655, 709, 847, 924, 616, 'OPT-PMDR6024{MAT}', 'Rectangular', NULL, '60" x 24"', 'Planter Feature', 'Planter', NULL, NULL, NULL),
	('ebcf82c5-7e7b-4207-b6ef-8813a681ce96', '2025-01-28 22:27:38.149771+00', '2025-02-06 20:09:31.928537+00', 'OPT-AVLCS6015', '60" x 28" Linear Avalon Fire Pit - 15" Tall', 1784, 3284, 3613, 1517, 1642, 1963, 2141, 1428, 'OPT-AVL{MAT}{IGN}{CLR}{GAS}', 'Rectangular', NULL, '60" x 28"', 'Fire Feature', 'Feature', 'Gas Fire Pit', NULL, '1'),
	('e0db9ea3-6797-4730-aa04-cd48016e70b3', '2025-01-28 22:27:38.149771+00', '2025-02-06 20:09:31.928537+00', 'OPT-AVLCS6024', '60" x 28" Linear Avalon Fire Pit - 24" Tall', 1904, 3504, 3855, 1619, 1752, 2095, 2285, 1524, 'OPT-AVL{MAT}{IGN}{CLR}{GAS}', 'Rectangular', NULL, '60" x 28"', 'Fire Feature', 'Feature', 'Gas Fire Pit', NULL, '1'),
	('5746649c-989d-422c-adcd-b6f599838fb3', '2025-01-31 00:53:49.307925+00', '2025-02-06 20:09:31.928537+00', 'OPT-CBLN66', '66" Cabo Linear Fire Pit', 2169, 3992, 4392, 1844, 1996, 2386, 2603, 1736, 'OPT-CBLN66{MAT}{IGN}{CLR}{GAS}', 'Rectangular', NULL, '66"', 'Fire Feature', 'Feature', 'Gas Fire Pit', NULL, '1'),
	('296b1659-6dd9-4eb6-860e-3f04bacf12fe', '2025-02-01 20:06:23.789783+00', '2025-02-06 20:09:31.928537+00', 'OPT-BGSR72', '72" Big Sur Fire Pit', 4404, 8104, 8915, 3744, 4052, 4845, 5285, 3524, 'OPT-BGSR72{MAT}{IGN}{CLR}{GAS}', 'Other', NULL, '60"', 'Fire Feature', 'Feature', 'Gas Fire Pit', NULL, '1'),
	('5c501d47-f386-479e-83d2-1af96ecc2bef', '2025-02-01 20:06:23.789783+00', '2025-02-06 20:09:31.928537+00', 'OPT-BLWPC72', '72" Billow Fire Pit', 2437, 4486, 4935, 2072, 2243, 2681, 2925, 1950, 'OPT-BLW{MAT}{IGN}{CLR}{GAS}', 'Other', NULL, '72"', 'Fire Feature', 'Feature', 'Gas Fire Pit', NULL, '1'),
	('de0f4c2f-24a4-4aa9-802b-f322d2737106', '2025-02-01 20:06:23.789783+00', '2025-02-06 20:09:31.928537+00', 'OPT-BSPPC72', '72" Bispo Fire Pit', 2022, 3722, 4095, 1719, 1861, 2225, 2427, 1618, 'OPT-BSP{MAT}{IGN}{CLR}{GAS}', 'Oval', NULL, '72"', 'Fire Feature', 'Feature', 'Gas Fire Pit', NULL, '1'),
	('674d5bcd-0588-4b4d-9a10-614cd644651b', '2025-01-31 00:53:49.307925+00', '2025-02-06 20:09:31.928537+00', 'OPT-CRMCS7216', '72" Carmen Fire Pit - 16" Tall', 1732, 3188, 3507, 1473, 1594, 1906, 2079, 1386, 'OPT-CRM{MAT}{IGN}{CLR}{GAS}', 'Rectangular', NULL, '72"', 'Fire Feature', 'Feature', 'Gas Fire Pit', NULL, '1'),
	('69f0fe43-7830-496c-92a7-43df2afc7cca', '2025-01-31 00:53:49.307925+00', '2025-02-06 20:09:31.928537+00', 'OPT-CRMCS7224', '72" Carmen Fire Pit - 24" Tall', 1862, 3428, 3771, 1583, 1714, 2049, 2235, 1490, 'OPT-CRM{MAT}{IGN}{CLR}{GAS}', 'Rectangular', NULL, '72"', 'Fire Feature', 'Feature', 'Gas Fire Pit', NULL, '1'),
	('1cbdd37a-5801-42f6-971a-7f6ce4fa57f9', '2025-02-01 20:06:23.789783+00', '2025-02-06 20:09:31.928537+00', 'OPT-CTL72', '72" Catalina Fire Pit', 3259, 5998, 6598, 2771, 2999, 3585, 3911, 2608, 'OPT-CTL72{MAT}{IGN}{CLR}{GAS}', 'Rectangular', NULL, '72"', 'Fire Feature', 'Feature', 'Gas Fire Pit', NULL, '1'),
	('0a04173a-ea7f-480b-8bda-dada78598eea', '2025-02-01 20:06:23.789783+00', '2025-02-06 20:09:31.928537+00', 'OPT-UCTDR72PB', '72" Catalina Fire Pit - RTF', 2579, 4746, 5221, 2193, 2373, 2837, 3095, 2064, 'OPT-UCTDR72PB{MAT}{IGN}{CLR}{GAS}', 'Rectangular', NULL, '72"', 'Fire Feature', 'Feature', 'Gas Fire Pit', NULL, '1'),
	('9e0b42f7-71c1-4374-9c4b-14ed7da59b11', '2025-01-31 00:53:49.307925+00', '2025-02-06 20:09:31.928537+00', 'OPT-CORCS72', '72" Coronado Fire Pit', 1880, 3460, 3806, 1598, 1730, 2068, 2256, 1504, 'OPT-COR{MAT}{IGN}{CLR}{GAS}', 'Rectangular', NULL, '72"', 'Fire Feature', 'Feature', 'Gas Fire Pit', NULL, '1'),
	('9d2d1e46-4b0d-484e-8556-dfeee088e2db', '2025-01-31 00:53:49.307925+00', '2025-02-06 20:09:31.928537+00', 'OPT-UC72PB', '72" Coronado Fire Pit - RTF', 2264, 4166, 4583, 1925, 2083, 2491, 2717, 1812, 'OPT-UC72PB{MAT}{IGN}{CLR}{GAS}', 'Rectangular', NULL, '72"', 'Fire Feature', 'Feature', 'Gas Fire Pit', NULL, '1'),
	('d1be6fb2-a6fb-451f-acc4-7fcc913499dc', '2025-01-31 00:53:49.307925+00', '2025-02-06 20:09:31.928537+00', 'OPT-LBTCS72', '72" Eaves Fire Pit', 1857, 3418, 3760, 1579, 1709, 2043, 2229, 1486, 'OPT-LBT{MAT}{IGN}{CLR}{GAS}', 'Rectangular', NULL, '72"', 'Fire Feature', 'Feature', 'Gas Fire Pit', NULL, '1'),
	('5581639f-187e-4f5a-86d2-91b96696c3c3', '2025-01-29 01:06:38.056209+00', '2025-02-06 20:09:31.928537+00', 'OPT-FL72', '72" Florence Fire Pit - 20" Tall', 3829, 7046, 7751, 3255, 3523, 4212, 4595, 3064, 'OPT-FL72{MAT}{IGN}{CLR}{GAS}', 'Round', NULL, '72"', 'Fire Feature', 'Feature', 'Gas Fire Pit', NULL, '1'),
	('70411d3c-ac46-413d-b1cb-e233435b3ace', '2025-01-29 01:06:38.056209+00', '2025-02-06 20:09:31.928537+00', 'OPT-RL72PB', '72" Florence Fire Pit - RTF', 2051, 3774, 4152, 1744, 1887, 2257, 2462, 1641, 'OPT-RL72PB{MAT}{IGN}{CLR}{GAS}', 'Round', NULL, '72"', 'Fire Feature', 'Feature', 'Gas Fire Pit', NULL, '1'),
	('c9a545e0-479c-4222-9452-67af11ee3ca8', '2025-02-01 20:06:23.789783+00', '2025-02-06 20:09:31.928537+00', 'OPT-S72DRPB', '72" Forma Fire Pit - RTF', 2421, 4456, 4902, 2058, 2228, 2664, 2906, 1937, 'OPT-S72DRPB{MAT}{IGN}{CLR}{GAS}', 'Square', NULL, '72"', 'Fire Feature', 'Feature', 'Gas Fire Pit', NULL, '1'),
	('d5c47dda-f8f5-459a-8e1e-40aff1282b26', '2025-02-05 16:55:03.027666+00', '2025-02-06 20:09:31.928537+00', 'OPT-FRMCS7224', '72" Fremont Fire Pit - 24" Tall', 2256, 4152, 4568, 1918, 2076, 2482, 2708, 1805, 'OPT-FRM{MAT}{IGN}{CLR}{GAS}', 'Rectangular', NULL, '72"', 'Fire Feature', 'Feature', 'Gas Fire Pit', NULL, '1'),
	('a7f424ee-7b68-4e25-b01c-14431d54b11b', '2025-02-04 23:45:05.008125+00', '2025-02-06 20:09:31.928537+00', 'OPT-LAJPC72', '72" La Jolla Fire Pit', 2022, 3722, 4095, 1719, 1861, 2225, 2427, 1618, 'OPT-LAJ{MAT}{IGN}{CLR}{GAS}', 'Rectangular', NULL, '72"', 'Fire Feature', 'Feature', 'Gas Fire Pit', NULL, '1'),
	('9998ab91-d398-4867-b2dc-d66fd8d54ec3', '2025-02-06 01:15:31.521741+00', '2025-02-06 20:09:31.928537+00', 'OPT-RRL72PB', '72" Mabel Fire Table - RTF - 16" Tall', 2315, 4260, 4686, 1968, 2130, 2547, 2778, 1852, 'OPT-RRL72PB{MAT}{CLR}{IGN}{GAS}', 'Round', NULL, '72"', 'Fire Feature', 'Feature', 'Gas Fire Table', NULL, '1'),
	('f9e80b57-ef9e-4645-b3ef-90b78d690363', '2025-02-06 01:15:31.521741+00', '2025-02-06 20:09:31.928537+00', 'OPT-RRL72DRPB', '72" Mabel Fire Table - RTF - 24" Tall', 2504, 4608, 5069, 2129, 2304, 2755, 3005, 2004, 'OPT-RRL72DRPB{MAT}{CLR}{IGN}{GAS}', 'Round', NULL, '72"', 'Fire Feature', 'Feature', 'Gas Fire Table', NULL, '1'),
	('78ccc1d4-4a3f-4ec8-8b8d-694d6e9ff604', '2025-02-01 20:06:23.789783+00', '2025-02-06 20:09:31.928537+00', 'OPT-CSTT7224', '72" Mesa Fire Pit', 2217, 4080, 4488, 1885, 2040, 2439, 2661, 1774, 'OPT-{MAT}{IGN}{CLR}{GAS}', 'Rectangular', NULL, '72"', 'Fire Feature', 'Feature', 'Gas Fire Pit', NULL, '1'),
	('ae861e59-de00-47fb-b79b-52c3fc97dff6', '2025-02-01 20:06:23.789783+00', '2025-02-06 20:09:31.928537+00', 'OPT-MODPC7228', '72" Moderno Fire Pit', 2133, 3926, 4319, 1814, 1963, 2347, 2560, 1707, 'OPT-MOD{MAT}{IGN}{CLR}{GAS}', 'Rectangular', NULL, '72"', 'Fire Feature', 'Feature', 'Gas Fire Pit', NULL, '1'),
	('0d929ce6-87e4-4588-8615-a62cf6decac4', '2025-01-31 00:53:49.307925+00', '2025-02-06 20:09:31.928537+00', 'OPT-R7224CS', '72" Pismo Fire Pit', 2070, 3810, 4191, 1760, 1905, 2277, 2484, 1656, 'OPT-{MAT}{IGN}{CLR}{GAS}', 'Rectangular', NULL, '72"', 'Fire Feature', 'Feature', 'Gas Fire Pit', NULL, '1'),
	('a9116dd8-6807-4154-900b-79f075210ef5', '2025-01-31 00:53:49.307925+00', '2025-02-06 20:09:31.928537+00', 'OPT-UFRT72DRPB', '72" Pismo Fire Pit - RTF', 1969, 3624, 3987, 1674, 1812, 2166, 2363, 1576, 'OPT-UFRT72DRPB{MAT}{IGN}{CLR}{GAS}', 'Rectangular', NULL, '72"', 'Fire Feature', 'Feature', 'Gas Fire Pit', NULL, '1'),
	('6d12c1c2-b8c2-4f94-9bf4-6a1379a259e4', '2025-01-31 00:53:49.307925+00', '2025-02-06 20:09:31.928537+00', 'OPT-S72PB', '72" Quad Fire Pit - RTF', 2113, 3888, 4277, 1797, 1944, 2325, 2536, 1691, 'OPT-S72PB{MAT}{IGN}{CLR}{GAS}', 'Square', NULL, '72"', 'Fire Feature', 'Feature', 'Gas Fire Pit', NULL, '1'),
	('f20404d8-9ffd-404c-8d5e-09d87119c7c4', '2025-01-30 01:23:49.496815+00', '2025-02-06 20:09:31.928537+00', 'OPT-UFRT72PB', '72" Regal Fire Pit - RTF', 1809, 3330, 3663, 1538, 1665, 1990, 2171, 1448, 'OPT-UFRT72PB{MAT}{IGN}{CLR}{GAS}', 'Rectangular', NULL, '72"', 'Fire Feature', 'Feature', 'Gas Fire Pit', NULL, '1'),
	('bb594c96-d70b-4891-b745-a3995871e0d8', '2025-02-04 23:45:05.008125+00', '2025-02-06 20:09:31.928537+00', 'OPT-RCRTN7218', '72" Unity Fire Pit - 18" Tall', 2714, 4994, 5494, 2307, 2497, 2986, 3257, 2172, 'OPT-{MAT}{IGN}{CLR}{GAS}', 'Round', NULL, '72"', 'Fire Feature', 'Feature', 'Gas Fire Pit', NULL, '1'),
	('50b9fa37-1dc8-4ac8-ab96-22cf116bccd3', '2025-02-04 23:45:05.008125+00', '2025-02-06 20:09:31.928537+00', 'OPT-RCRTN72', '72" Unity Fire Pit - 24" Tall', 2771, 5100, 5610, 2356, 2550, 3049, 3326, 2217, 'OPT-{MAT}{IGN}{CLR}{GAS}', 'Round', NULL, '72"', 'Fire Feature', 'Feature', 'Gas Fire Pit', NULL, '1'),
	('97198925-2ecc-4c76-8beb-37756cbaf887', '2025-02-04 23:45:05.008125+00', '2025-02-06 20:09:31.928537+00', 'OPT-RL72DRPB', '72" Unity Fire Pit - RTF', 2502, 4604, 5065, 2127, 2302, 2753, 3003, 2002, 'OPT-RL72DRPB{MAT}{IGN}{CLR}{GAS}', 'Round', NULL, '72"', 'Fire Feature', 'Feature', 'Gas Fire Pit', NULL, '1'),
	('b7e00887-340a-45a2-b779-e7f7cca35df2', '2025-01-28 17:13:12.012064+00', '2025-02-06 20:09:31.928537+00', 'OPT-7220MPCFO', '72" x 20" Linear Maya Fire Bowl', 3145, 5788, 6367, 2674, 2894, 3460, 3774, 2516, 'OPT-7220M{MAT}{IGN}{CLR}{GAS}', 'Rectangular', NULL, '72" x 20"', 'Fire Feature', 'Feature', 'Gas Fire Bowl', NULL, '1'),
	('fb7102b8-9c2b-4cfd-a14d-5d0ee32c08fc', '2025-02-04 23:45:05.008125+00', '2025-02-06 20:09:31.928537+00', 'OPT-30RRCS', '30" Beverly Fire Pit', 1356, 2496, 2746, 1153, 1248, 1492, 1628, 1085, 'OPT-30{MAT}{IGN}{CLR}{GAS}', 'Round', NULL, '30"', 'Fire Feature', 'Feature', 'Gas Fire Pit', NULL, '1'),
	('fc906ad5-e632-44ef-8590-5bd162ead1a3', '2025-02-04 23:45:05.008125+00', '2025-02-06 20:09:31.928537+00', 'OPT-36RRCS', '36" Beverly Fire Pit', 1543, 2840, 3124, 1312, 1420, 1698, 1852, 1235, 'OPT-36{MAT}{IGN}{CLR}{GAS}', 'Round', NULL, '36"', 'Fire Feature', 'Feature', 'Gas Fire Pit', NULL, '1'),
	('1465fcc0-b4ab-487a-ae3f-df9fb7504263', '2025-02-06 01:15:31.521741+00', '2025-02-06 20:09:31.928537+00', 'OPT-MABCS36', '36" Mabel Fire Table', 1432, 2636, 2900, 1218, 1318, 1576, 1719, 1146, 'OPT-MAB{MAT}{CLR}{IGN}{GAS}', 'Round', NULL, '36"', 'Fire Feature', 'Feature', 'Gas Fire Table', NULL, '1'),
	('12b04657-7c03-45a7-98c8-ee8687b514fe', '2025-02-04 23:45:05.008125+00', '2025-02-06 20:09:31.928537+00', 'OPT-42RRCS', '42" Beverly Fire Pit', 1730, 3184, 3503, 1471, 1592, 1903, 2076, 1384, 'OPT-42{MAT}{IGN}{CLR}{GAS}', 'Round', NULL, '42"', 'Fire Feature', 'Feature', 'Gas Fire Pit', NULL, '1'),
	('0c141dd1-286b-4c22-97c7-1879e8f88221', '2025-02-04 23:45:05.008125+00', '2025-02-06 20:09:31.928537+00', 'OPT-ALMCS48', '48" Alameda Fire Table', 1857, 3418, 3760, 1579, 1709, 2043, 2229, 1486, 'OPT-ALM{MAT}{IGN}{TOPCLR}{BSCLR}{GAS}', 'Rectangular', NULL, '48"', 'Fire Feature', 'Feature', 'Gas Fire Table', NULL, '2'),
	('5847a80e-d0ab-4840-9d11-7d399e25f1ae', '2025-02-04 23:45:05.008125+00', '2025-02-06 20:09:31.928537+00', 'OPT-ALMPC48-BWC', '48" Alameda Fire Table Black & White', 1908, 3512, 3864, 1622, 1756, 2099, 2290, 1527, 'OPT-ALMPC48{MAT}{CLR}{IGN}{GAS}', 'Rectangular', NULL, '48"', 'Fire Feature', 'Feature', 'Gas Fire Table', NULL, '1'),
	('e84ed1c3-9c48-45cb-898d-32017f52cbb7', '2025-02-04 23:45:05.008125+00', '2025-02-06 20:09:31.928537+00', 'OPT-RCRTN4818', '48" Unity Fire Pit - 18" Tall', 1842, 3390, 3729, 1566, 1695, 2027, 2211, 1474, 'OPT-{MAT}{IGN}{CLR}{GAS}', 'Round', NULL, '48"', 'Fire Feature', 'Feature', 'Gas Fire Pit', NULL, '1'),
	('fcb3d931-646b-45c6-924f-3825da9ee348', '2025-02-04 23:45:05.008125+00', '2025-02-06 20:09:31.928537+00', 'OPT-RL48DRPB', '48" Unity Fire Pit - RTF', 1519, 2796, 3076, 1292, 1398, 1671, 1823, 1216, 'OPT-RL48DRPB{MAT}{IGN}{CLR}{GAS}', 'Round', NULL, '48"', 'Fire Feature', 'Feature', 'Gas Fire Pit', NULL, '1'),
	('e8a258c9-d4d4-4ff3-ada1-04609e2cabaa', '2025-02-05 16:55:03.027666+00', '2025-02-06 20:09:31.928537+00', 'OPT-FRMCS7215', '72" Fremont Fire Pit - 15" Tall', 2136, 3932, 4326, 1816, 1966, 2350, 2564, 1709, 'OPT-FRM{MAT}{IGN}{CLR}{GAS}', 'Rectangular', NULL, '72"', 'Fire Feature', 'Feature', 'Gas Fire Pit', NULL, '1'),
	('ea3c5074-df23-4b90-b8ec-3479b1ac957a', '2025-02-05 16:55:03.027666+00', '2025-02-06 20:09:31.928537+00', 'OPT-FRMCS8415', '84" Fremont Fire Pit - 15" Tall', 2261, 4162, 4579, 1922, 2081, 2488, 2714, 1809, 'OPT-FRM{MAT}{IGN}{CLR}{GAS}', 'Rectangular', NULL, '84"', 'Fire Feature', 'Feature', 'Gas Fire Pit', NULL, '1'),
	('407d917e-3aab-4ecb-bb3b-e73816123e6e', '2025-02-05 16:55:03.027666+00', '2025-02-06 20:09:31.928537+00', 'OPT-FRMCS8424', '84" Fremont Fire Pit - 24" Tall', 2380, 4380, 4818, 2023, 2190, 2618, 2856, 1904, 'OPT-FRM{MAT}{IGN}{CLR}{GAS}', 'Rectangular', NULL, '84"', 'Fire Feature', 'Feature', 'Gas Fire Pit', NULL, '1'),
	('4ee85db0-8d33-4ea1-8fa0-c8bf85402a0a', '2025-02-04 23:45:05.008125+00', '2025-02-06 20:09:31.928537+00', 'OPT-LAJPC84', '84" La Jolla Fire Pit', 2380, 4380, 4818, 2023, 2190, 2618, 2856, 1904, 'OPT-LAJ{MAT}{IGN}{CLR}{GAS}', 'Rectangular', NULL, '84"', 'Fire Feature', 'Feature', 'Gas Fire Pit', NULL, '1'),
	('22187faa-3c0d-4734-99fb-0dc36b563736', '2025-01-28 17:13:12.012064+00', '2025-02-06 20:09:31.928537+00', 'OPT-7220MPCFW', '72" x 20" Linear Maya Fire & Water Bowl', 3257, 5994, 6594, 2769, 2997, 3583, 3909, 2606, 'OPT-7220M{MAT}{IGN}{CLR}{GAS}', 'Rectangular', NULL, '72" x 20"', 'Fire And Water', 'Feature', 'Gas Fire Bowl', NULL, '1'),
	('4516629d-a681-4f8a-a8e9-c4eb2aaeef03', '2025-01-28 22:27:38.149771+00', '2025-02-06 20:09:31.928537+00', 'OPT-AVLCS7215', '72" x 28" Linear Avalon Fire Pit - 15" Tall', 2142, 3942, 4337, 1821, 1971, 2357, 2571, 1714, 'OPT-AVL{MAT}{IGN}{CLR}{GAS}', 'Rectangular', NULL, '72" x 28"', 'Fire Feature', 'Feature', 'Gas Fire Pit', NULL, '1'),
	('f6e46eaf-e1a9-4279-be94-4a622010cac0', '2025-01-28 22:27:38.149771+00', '2025-02-06 20:09:31.928537+00', 'OPT-AVLCS7224', '72" x 28" Linear Avalon Fire Pit - 24" Tall', 2261, 4162, 4579, 1922, 2081, 2488, 2714, 1809, 'OPT-AVL{MAT}{IGN}{CLR}{GAS}', 'Rectangular', NULL, '72" x 28"', 'Fire Feature', 'Feature', 'Gas Fire Pit', NULL, '1'),
	('e9906aa2-dc56-4c36-be51-afde40369e29', '2025-02-06 01:15:31.521741+00', '2025-02-06 20:09:31.928537+00', 'OPT-ALMCS78', '78" Alameda Fire Table', 2261, 4162, 4579, 1922, 2081, 2488, 2714, 1809, 'OPT-ALM{MAT}{IGN}{TOPCLR}{BSCLR}{GAS}', 'Rectangular', NULL, '78"', 'Fire Feature', 'Feature', 'Gas Fire Table', NULL, '2'),
	('cd544818-1e0e-42f7-870c-a718fe255e5a', '2025-02-06 01:15:31.521741+00', '2025-02-06 20:09:31.928537+00', 'OPT-ALMPC78-BWC', '78" Alameda Fire Table Black & White', 2470, 4546, 5001, 2100, 2273, 2717, 2964, 1976, 'OPT-ALMPC78{MAT}{CLR}{IGN}{GAS}', 'Rectangular', NULL, '78"', 'Fire Feature', 'Feature', 'Gas Fire Table', NULL, '1'),
	('8f7072b8-73c4-42f8-837d-b0817836cf19', '2025-02-01 20:06:23.789783+00', '2025-02-06 20:09:31.928537+00', 'OPT-BSPPC84', '84" Bispo Fire Pit', 2380, 4380, 4818, 2023, 2190, 2618, 2856, 1904, 'OPT-BSP{MAT}{IGN}{CLR}{GAS}', 'Oval', NULL, '84"', 'Fire Feature', 'Feature', 'Gas Fire Pit', NULL, '1'),
	('c800704c-1265-4acc-b8e0-80eeae97ba5a', '2025-02-01 20:06:23.789783+00', '2025-02-06 20:09:31.928537+00', 'OPT-CTL84', '84" Catalina Fire Pit', 3612, 6648, 7313, 3071, 3324, 3974, 4335, 2890, 'OPT-CTL84{MAT}{IGN}{CLR}{GAS}', 'Rectangular', NULL, '84"', 'Fire Feature', 'Feature', 'Gas Fire Pit', NULL, '1'),
	('ff74ac1c-cbf7-4064-9ecc-52c4c4022261', '2025-02-01 20:06:23.789783+00', '2025-02-06 20:09:31.928537+00', 'OPT-UCTDR84PB', '84" Catalina Fire Pit - RTF', 2928, 5388, 5927, 2489, 2694, 3221, 3514, 2343, 'OPT-UCTDR84PB{MAT}{IGN}{CLR}{GAS}', 'Rectangular', NULL, '84"', 'Fire Feature', 'Feature', 'Gas Fire Pit', NULL, '1'),
	('f0aac27d-2f89-4f18-a888-757347d7d2af', '2025-01-31 00:53:49.307925+00', '2025-02-06 20:09:31.928537+00', 'OPT-CORCS84', '84" Coronado Fire Pit', 2033, 3742, 4117, 1729, 1871, 2237, 2440, 1627, 'OPT-COR{MAT}{IGN}{CLR}{GAS}', 'Rectangular', NULL, '84"', 'Fire Feature', 'Feature', 'Gas Fire Pit', NULL, '1'),
	('a64da770-8dab-4f39-9115-b11a2b55f0d4', '2025-01-31 00:53:49.307925+00', '2025-02-06 20:09:31.928537+00', 'OPT-UC84PB', '84" Coronado Fire Pit - RTF', 2579, 4746, 5221, 2193, 2373, 2837, 3095, 2064, 'OPT-UC84PB{MAT}{IGN}{CLR}{GAS}', 'Rectangular', NULL, '84"', 'Fire Feature', 'Feature', 'Gas Fire Pit', NULL, '1'),
	('f02558d2-ced8-40e8-8bd3-8876ca76c605', '2025-02-06 01:15:31.521741+00', '2025-02-06 20:09:31.928537+00', 'OPT-MABPC36-BWC', '36" Mabel Fire Table Black & White', 1520, 2798, 3078, 1292, 1399, 1672, 1824, 1216, 'OPT-MABPC36{MAT}{CLR}{IGN}{GAS}', 'Round', NULL, '36"', 'Fire Feature', 'Feature', 'Gas Fire Table', NULL, '1'),
	('7ee7156a-f8fa-4bdf-98af-55dd757beeca', '2025-02-06 01:15:31.521741+00', '2025-02-06 20:09:31.928537+00', 'OPT-MABCS48', '48" Mabel Fire Table', 1969, 3624, 3987, 1674, 1812, 2166, 2363, 1576, 'OPT-MAB{MAT}{CLR}{IGN}{GAS}', 'Round', NULL, '48"', 'Fire Feature', 'Feature', 'Gas Fire Table', NULL, '1'),
	('b7463ca0-5f31-4cf2-b527-fea529e9374d', '2025-02-06 01:15:31.521741+00', '2025-02-06 20:09:31.928537+00', 'OPT-MABPC48-BWC', '48" Mabel Fire Table Black & White', 2020, 3718, 4090, 1717, 1859, 2222, 2424, 1616, 'OPT-MABPC48{MAT}{CLR}{IGN}{GAS}', 'Round', NULL, '48"', 'Fire Feature', 'Feature', 'Gas Fire Table', NULL, '1'),
	('b5e3c11a-f7ad-4424-aa2f-ba0258662e13', '2025-02-06 01:15:31.521741+00', '2025-02-06 20:09:31.928537+00', 'OPT-RRL48PB', '48" Mabel Fire Table - RTF - 16" Tall', 1609, 2962, 3259, 1368, 1481, 1770, 1931, 1288, 'OPT-RRL48PB{MAT}{CLR}{IGN}{GAS}', 'Round', NULL, '48"', 'Fire Feature', 'Feature', 'Gas Fire Table', NULL, '1'),
	('4d91889d-1faa-40c3-9de2-8a49798d9188', '2025-02-06 01:15:31.521741+00', '2025-02-06 20:09:31.928537+00', 'OPT-RRL48DRPB', '48" Mabel Fire Table - RTF - 24" Tall', 1746, 3214, 3536, 1485, 1607, 1921, 2096, 1397, 'OPT-RRL48DRPB{MAT}{CLR}{IGN}{GAS}', 'Round', NULL, '48"', 'Fire Feature', 'Feature', 'Gas Fire Table', NULL, '1'),
	('c52d93f3-84d2-4070-9d8a-b22d6a667300', '2025-01-29 01:06:38.056209+00', '2025-02-06 20:09:31.928537+00', 'OPT-RL84PB', '84" Florence Fire Pit - RTF', 2292, 4218, 4640, 1949, 2109, 2522, 2751, 1834, 'OPT-RL84PB{MAT}{IGN}{CLR}{GAS}', 'Round', NULL, '84"', 'Fire Feature', 'Feature', 'Gas Fire Pit', NULL, '1'),
	('dd8fb38b-f7bf-434c-9946-4e5100e85767', '2025-02-01 20:06:23.789783+00', '2025-02-06 20:09:31.928537+00', 'OPT-S84DRPB', '84" Forma Fire Pit - RTF', 2691, 4952, 5448, 2288, 2476, 2961, 3230, 2153, 'OPT-S84DRPB{MAT}{IGN}{CLR}{GAS}', 'Square', NULL, '84"', 'Fire Feature', 'Feature', 'Gas Fire Pit', NULL, '1'),
	('916019d1-ac69-4ffa-9c61-0712da5eaf33', '2025-02-06 01:15:31.521741+00', '2025-02-06 20:09:31.928537+00', 'OPT-RRL84PB', '84" Mabel Fire Table - RTF - 16" Tall', 2467, 4540, 4994, 2097, 2270, 2714, 2961, 1974, 'OPT-RRL84PB{MAT}{CLR}{IGN}{GAS}', 'Round', NULL, '84"', 'Fire Feature', 'Feature', 'Gas Fire Table', NULL, '1'),
	('63101af6-0b42-460d-a4d2-a024e1f1a069', '2025-02-06 01:15:31.521741+00', '2025-02-06 20:09:31.928537+00', 'OPT-RRL84DRPB', '84" Mabel Fire Table - RTF - 24" Tall', 2694, 4958, 5454, 2290, 2479, 2964, 3233, 2156, 'OPT-RRL84DRPB{MAT}{CLR}{IGN}{GAS}', 'Round', NULL, '84"', 'Fire Feature', 'Feature', 'Gas Fire Table', NULL, '1'),
	('abdf89ea-abcb-442c-ad7d-620d39870a09', '2025-02-01 20:06:23.789783+00', '2025-02-06 20:09:31.928537+00', 'OPT-CSTT8424', '84" Mesa Fire Pit', 2375, 4370, 4807, 2019, 2185, 2613, 2850, 1900, 'OPT-{MAT}{IGN}{CLR}{GAS}', 'Rectangular', NULL, '84"', 'Fire Feature', 'Feature', 'Gas Fire Pit', NULL, '1'),
	('5e6d2181-7ac7-460c-81ee-ca241f4b28e4', '2025-02-01 20:06:23.789783+00', '2025-02-06 20:09:31.928537+00', 'OPT-MODPC8428', '84" Moderno Fire Pit', 2583, 4754, 5230, 2196, 2377, 2842, 3100, 2067, 'OPT-MOD{MAT}{IGN}{CLR}{GAS}', 'Rectangular', NULL, '84"', 'Fire Feature', 'Feature', 'Gas Fire Pit', NULL, '1'),
	('97d668e3-43e1-4c40-a8bc-f2621458c522', '2025-01-31 00:53:49.307925+00', '2025-02-06 20:09:31.928537+00', 'OPT-R8424CS', '84" Pismo Fire Pit', 2338, 4302, 4733, 1988, 2151, 2572, 2806, 1871, 'OPT-{MAT}{IGN}{CLR}{GAS}', 'Rectangular', NULL, '84"', 'Fire Feature', 'Feature', 'Gas Fire Pit', NULL, '1'),
	('2ca6c0f0-3f82-40af-9c3f-4ce5430f98cc', '2025-01-31 00:53:49.307925+00', '2025-02-06 20:09:31.928537+00', 'OPT-UFRT84DRPB', '84" Pismo Fire Pit - RTF', 2257, 4154, 4570, 1919, 2077, 2483, 2709, 1806, 'OPT-UFRT84DRPB{MAT}{IGN}{CLR}{GAS}', 'Rectangular', NULL, '84"', 'Fire Feature', 'Feature', 'Gas Fire Pit', NULL, '1'),
	('24952bea-68d6-440b-88d5-bc3c80b00e60', '2025-02-06 01:15:31.521741+00', '2025-02-06 20:09:31.928537+00', 'OPT-BELSS36', '36" Bella Fire Table', 1545, 2844, 3129, 1314, 1422, 1700, 1854, 1236, 'OPT-BEL{MAT}{CLR}{IGN}{GAS}', 'Square', NULL, '36"', 'Fire Feature', 'Feature', 'Gas Fire Table', NULL, '1'),
	('8d7afb81-a1fd-419f-9e0a-4a3f7533f704', '2025-02-06 01:15:31.521741+00', '2025-02-06 20:09:31.928537+00', 'OPT-ST36PB', '36" Bella Fire Table - RTF - 16" Tall', 1269, 2336, 2570, 1079, 1168, 1396, 1523, 1016, 'OPT-ST36PB{MAT}{CLR}{IGN}{GAS}', 'Square', NULL, '36"', 'Fire Feature', 'Feature', 'Gas Fire Table', NULL, '1'),
	('362f98bf-dea3-41b7-bc4b-46a93218a8bc', '2025-02-06 01:15:31.521741+00', '2025-02-06 20:09:31.928537+00', 'OPT-ST36DRPB', '36" Bella Fire Table - RTF - 24" Tall', 1469, 2704, 2975, 1249, 1352, 1616, 1763, 1176, 'OPT-ST36DRPB{MAT}{CLR}{IGN}{GAS}', 'Square', NULL, '36"', 'Fire Feature', 'Feature', 'Gas Fire Table', NULL, '1'),
	('adb1b9b3-421c-4aa6-8096-f1082415f843', '2025-01-31 00:53:49.307925+00', '2025-02-06 20:09:31.928537+00', 'OPT-S84PB', '84" Quad Fire Pit - RTF', 2257, 4154, 4570, 1919, 2077, 2483, 2709, 1806, 'OPT-S84PB{MAT}{IGN}{CLR}{GAS}', 'Square', NULL, '84"', 'Fire Feature', 'Feature', 'Gas Fire Pit', NULL, '1'),
	('8845730f-ba52-44f0-b0de-df299a9db484', '2025-01-30 01:23:49.496815+00', '2025-02-06 20:09:31.928537+00', 'OPT-UFRT84PB', '84" Regal Fire Pit - RTF', 2097, 3860, 4246, 1783, 1930, 2307, 2517, 1678, 'OPT-UFRT84PB{MAT}{IGN}{CLR}{GAS}', 'Rectangular', NULL, '84"', 'Fire Feature', 'Feature', 'Gas Fire Pit', NULL, '1'),
	('d4d13e42-b54b-4158-8116-1c1426c21d5f', '2025-02-04 23:45:05.008125+00', '2025-02-06 20:09:31.928537+00', 'OPT-RL84DRPB', '84" Unity Fire Pit - RTF', 2580, 4748, 5223, 2193, 2374, 2838, 3096, 2064, 'OPT-RL84DRPB{MAT}{IGN}{CLR}{GAS}', 'Round', NULL, '84"', 'Fire Feature', 'Feature', 'Gas Fire Pit', NULL, '1'),
	('dacfd7ff-439e-4dce-bfbb-7ba506d0feef', '2025-01-28 22:27:38.149771+00', '2025-02-06 20:09:31.928537+00', 'OPT-AVLCS8415', '84" x 28" Linear Avalon Fire Pit - 15" Tall', 2261, 4162, 4579, 1922, 2081, 2488, 2714, 1809, 'OPT-AVL{MAT}{IGN}{CLR}{GAS}', 'Rectangular', NULL, '84" x 28"', 'Fire Feature', 'Feature', 'Gas Fire Pit', NULL, '1'),
	('873df634-702e-4026-93fb-da200f56b2c9', '2025-01-28 22:27:38.149771+00', '2025-02-06 20:09:31.928537+00', 'OPT-AVLCS8424', '84" x 28" Linear Avalon Fire Pit - 24" Tall', 2380, 4380, 4818, 2023, 2190, 2618, 2856, 1904, 'OPT-AVL{MAT}{IGN}{CLR}{GAS}', 'Rectangular', NULL, '84" x 28"', 'Fire Feature', 'Feature', 'Gas Fire Pit', NULL, '1'),
	('beac9a50-1f7d-4ee8-9547-cb16c043c4c7', '2025-01-31 00:53:49.307925+00', '2025-02-06 20:09:31.928537+00', 'OPT-CBLN90', '90" Cabo Linear Fire Pit', 2877, 5294, 5824, 2446, 2647, 3165, 3453, 2302, 'OPT-CBLN90{MAT}{IGN}{CLR}{GAS}', 'Rectangular', NULL, '90"', 'Fire Feature', 'Feature', 'Gas Fire Pit', NULL, '1'),
	('bcb0777f-45f0-4c50-9655-83da3863aedf', '2025-02-01 20:06:23.789783+00', '2025-02-06 20:09:31.928537+00', 'OPT-CTL96', '96" Catalina Fire Pit', 3963, 7292, 8022, 3369, 3646, 4360, 4756, 3171, 'OPT-CTL96{MAT}{IGN}{CLR}{GAS}', 'Rectangular', NULL, '96"', 'Fire Feature', 'Feature', 'Gas Fire Pit', NULL, '1'),
	('de3304d3-59eb-4458-b2c9-df32d13963a0', '2025-02-01 20:06:23.789783+00', '2025-02-06 20:09:31.928537+00', 'OPT-UCTDR96PB', '96" Catalina Fire Pit - RTF', 3406, 6268, 6895, 2896, 3134, 3747, 4088, 2725, 'OPT-UCTDR96PB{MAT}{IGN}{CLR}{GAS}', 'Rectangular', NULL, '96"', 'Fire Feature', 'Feature', 'Gas Fire Pit', NULL, '1'),
	('d3057fd0-51eb-44b6-b4d9-325682f8b988', '2025-01-31 00:53:49.307925+00', '2025-02-06 20:09:31.928537+00', 'OPT-CORCS96', '96" Coronado Fire Pit', 2182, 4016, 4418, 1855, 2008, 2401, 2619, 1746, 'OPT-COR{MAT}{IGN}{CLR}{GAS}', 'Rectangular', NULL, '96"', 'Fire Feature', 'Feature', 'Gas Fire Pit', NULL, '1'),
	('fa5e5bd9-2f57-4b2d-bc00-4c3de9e8944e', '2025-01-31 00:53:49.307925+00', '2025-02-06 20:09:31.928537+00', 'OPT-UC96PB', '96" Coronado Fire Pit - RTF', 3357, 6178, 6796, 2854, 3089, 3693, 4029, 2686, 'OPT-UC96PB{MAT}{IGN}{CLR}{GAS}', 'Rectangular', NULL, '96"', 'Fire Feature', 'Feature', 'Gas Fire Pit', NULL, '1'),
	('672c38c7-1d94-4396-b0e8-b3d97a413b44', '2025-02-04 23:45:05.008125+00', '2025-02-06 20:09:31.928537+00', 'OPT-LAJCS96', '96" La Jolla Fire Pit', 2959, 5446, 5991, 2516, 2723, 3255, 3551, 2368, 'OPT-LAJ{MAT}{IGN}{CLR}{GAS}', 'Rectangular', NULL, '96"', 'Fire Feature', 'Feature', 'Gas Fire Pit', NULL, '1'),
	('92ee5965-9217-4fab-b114-438390dc2154', '2025-02-01 20:06:23.789783+00', '2025-02-06 20:09:31.928537+00', 'OPT-MODPC9628', '96" Moderno Fire Pit', 2920, 5374, 5912, 2482, 2687, 3212, 3504, 2336, 'OPT-MOD{MAT}{IGN}{CLR}{GAS}', 'Rectangular', NULL, '96"', 'Fire Feature', 'Feature', 'Gas Fire Pit', NULL, '1'),
	('84c6cb93-21c1-4b01-a0c1-d5a492eb2b06', '2025-02-06 20:09:31.928537+00', '2025-02-06 20:09:31.928537+00', 'OPT-BELLCS4830', '48" x 30" Bella Linear Fire Table', 1718, 3162, 3479, 1461, 1581, 1890, 2062, 1375, 'OPT-BELL{MAT}{IGN}{CLR}{GAS}', 'Rectangular', NULL, '48" x 30"', 'Fire Feature', 'Feature', 'Gas Fire Table', NULL, '1'),
	('f71cb53f-1049-450c-912f-705d24a72454', '2025-02-06 20:09:31.928537+00', '2025-02-06 20:09:31.928537+00', 'OPT-ST48PB', '48" Bella Fire Table - RTF - 16" Tall', 1653, 3042, 3347, 1406, 1521, 1819, 1984, 1323, 'OPT-ST48PB{MAT}{IGN}{CLR}{GAS}', 'Square', NULL, '48"', 'Fire Feature', 'Feature', 'Gas Fire Table', NULL, '1'),
	('ac668789-1221-4a7b-9721-f796134c55a7', '2025-01-31 00:53:49.307925+00', '2025-02-06 20:09:31.928537+00', 'OPT-UFRT96DRPB', '96" Pismo Fire Pit - RTF', 2498, 4598, 5058, 2124, 2299, 2748, 2998, 1999, 'OPT-UFRT96DRPB{MAT}{IGN}{CLR}{GAS}', 'Rectangular', NULL, '96"', 'Fire Feature', 'Feature', 'Gas Fire Pit', NULL, '1'),
	('580bda29-6d8b-436e-bb14-e5ab67a9f4ca', '2025-01-30 01:23:49.496815+00', '2025-02-06 20:09:31.928537+00', 'OPT-UFRT96PB', '96" Regal Fire Pit - RTF', 2313, 4256, 4682, 1967, 2128, 2545, 2776, 1851, 'OPT-UFRT96PB{MAT}{IGN}{CLR}{GAS}', 'Rectangular', NULL, '96"', 'Fire Feature', 'Feature', 'Gas Fire Pit', NULL, '1'),
	('47a39b6a-f0bc-4843-8c72-325cadf94145', '2025-02-06 20:09:31.928537+00', '2025-02-06 20:09:31.928537+00', 'OPT-ST48DRPB', '48" Bella Fire Table - RTF - 24" Tall', 1740, 3202, 3523, 1479, 1601, 1914, 2088, 1392, 'OPT-ST48DRPB{MAT}{IGN}{CLR}{GAS}', 'Square', NULL, '48"', 'Fire Feature', 'Feature', 'Gas Fire Table', NULL, '1'),
	('68a7f960-f4cd-41ad-98ff-7f99f6e6fe3c', '2025-02-06 20:09:31.928537+00', '2025-02-06 20:09:31.928537+00', 'OPT-BELLCS7236', '72" x 36" Bella Linear Fire Table', 2054, 3780, 4158, 1746, 1890, 2260, 2465, 1644, 'OPT-BELL{MAT}{IGN}{CLR}{GAS}', 'Rectangular', NULL, '72" x 36"', 'Fire Feature', 'Feature', 'Gas Fire Table', NULL, '1'),
	('12dd4582-1f4c-4195-9600-7d979b66f53b', '2025-02-06 20:09:31.928537+00', '2025-02-06 20:09:31.928537+00', 'OPT-ST72PB', '72'' Bella Fire Table - RTF - 16" Tall', 2052, 3776, 4154, 1745, 1888, 2258, 2463, 1642, 'OPT-ST72PB{MAT}{IGN}{CLR}{GAS}', 'Square', NULL, '72"', 'Fire Feature', 'Feature', 'Gas Fire Table', NULL, '1'),
	('eea00f34-52a5-41ba-88b8-bac7a82ed979', '2025-02-06 20:09:31.928537+00', '2025-02-06 20:09:31.928537+00', 'OPT-ST72DRPB', '72" Bella Fire Table - RTF - 24" Tall', 2138, 3934, 4328, 1818, 1967, 2352, 2566, 1711, 'OPT-ST72DRPB{MAT}{IGN}{CLR}{GAS}', 'Square', NULL, '72"', 'Fire Feature', 'Feature', 'Gas Fire Table', NULL, '1'),
	('24bf47af-36ad-4140-a414-a9d5568feca4', '2025-02-06 20:09:31.928537+00', '2025-02-06 20:09:31.928537+00', 'OPT-ST84PB', '84" Bella Fire Table - RTF - 16" Tall', 2459, 4526, 4979, 2091, 2263, 2705, 2951, 1968, 'OPT-ST84PB{MAT}{IGN}{CLR}{GAS}', 'Square', NULL, '84"', 'Fire Feature', 'Feature', 'Gas Fire Table', NULL, '1'),
	('18a205b1-7a76-4135-b466-fc3db61d7c01', '2025-02-06 20:09:31.928537+00', '2025-02-06 20:09:31.928537+00', 'OPT-ST84DRPB', '84" Bella Fire Table - RTF - 24" Tall', 2620, 4822, 5305, 2227, 2411, 2882, 3144, 2096, 'OPT-ST84DRPB{MAT}{IGN}{CLR}{GAS}', 'Square', NULL, '84"', 'Fire Feature', 'Feature', 'Gas Fire Table', NULL, '1'),
	('e067ee36-d9eb-4196-9414-9140b295f629', '2025-02-06 20:09:31.928537+00', '2025-02-06 20:09:31.928537+00', 'OPT-SONMA38', '38" Sonoma Fire Pit', 1429, 2630, 2893, 1215, 1315, 1572, 1715, 1144, 'OPT-SONMA38{MAT}{IGN}{CLR}{GAS}', 'Round', NULL, '38"', 'Fire Feature', 'Feature', 'Gas Fire Pit', NULL, '1'),
	('d2e87b9d-8141-4def-ac75-f09c4c4819b1', '2025-02-06 20:09:31.928537+00', '2025-02-06 20:09:31.928537+00', 'OPT-RF37', '37" Sienna Fire Pit', 1429, 2630, 2893, 1215, 1315, 1572, 1715, 1144, 'OPT-RF37{MAT}{IGN}{CLR}{GAS}', 'Round', NULL, '37"', 'Fire Feature', 'Feature', 'Gas Fire Pit', NULL, '1');


--
-- Data for Name: Company; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO "public"."Company" ("id", "created_at", "updated_at", "name", "logo", "role", "parent_company", "company_type", "net_term", "active", "active_date", "inactive_date", "inactive_reason", "violation_level", "violations") VALUES
	('8f031265-3d83-440e-9992-d9343ace13a1', '2024-11-21 23:09:18.241036+00', '2025-01-21 18:18:25.412953+00', 'Woodland Direct', 'https://www.dropbox.com/scl/fi/8rrfeqnc4buby25n66b4j/woodlanddirect-logo-fullcolor-19138-4x.png?rlkey=5jicczcsuojwc9zxbv4uy76xo&st=nujvdlz7&raw=1', 'DEALER', NULL, NULL, NULL, true, '2025-01-21 00:43:22.253697+00', NULL, NULL, 0, NULL),
	('8bf48acf-c295-4086-87c7-682af7dc3683', '2024-11-21 23:09:18.241036+00', '2025-01-21 18:18:25.412953+00', 'Montana Fire Pits', 'https://www.dropbox.com/scl/fi/0a92a51zmprqcmr0gko3i/Montana_Fire_Pits.webp?rlkey=zxl8jabkzwx6vkt56k0um524p&st=u7vqgf9o&raw=1', 'INTERNET', NULL, NULL, NULL, true, '2025-01-21 00:43:22.253697+00', NULL, NULL, 0, NULL),
	('c2a235b0-f1be-4fe8-985c-c0a25349e0c1', '2024-11-21 23:09:18.241036+00', '2025-01-21 18:18:25.412953+00', 'Outdoor Direct', 'https://www.dropbox.com/scl/fi/s51omcrlgf6bats6o1k47/Outdoor-_Direct_-_Logo_Option_1_-_Light_1600x.webp?rlkey=p8d74v3n02ypda9vgsirgolx8&st=d7oa67un&raw=1', 'INTERNET', NULL, NULL, NULL, true, '2025-01-21 00:43:22.253697+00', NULL, NULL, 0, NULL),
	('76165984-46a1-4376-b7b4-e282df81cd5a', '2024-11-21 23:09:18.241036+00', '2025-01-21 18:18:25.412953+00', 'Starfire Direct', NULL, 'DEALER', NULL, NULL, NULL, true, '2025-01-21 00:43:22.253697+00', NULL, NULL, 0, NULL),
	('55bb29ab-8019-4e5d-8b53-f974c3ba990c', '2024-11-21 23:09:18.241036+00', '2025-01-21 18:18:25.412953+00', 'Poolcorp', NULL, 'DISTRIBUTOR', NULL, NULL, NULL, true, '2025-01-21 00:43:22.253697+00', NULL, NULL, 0, NULL),
	('5a85c99a-0b79-4979-85e6-f48de722a906', '2024-11-21 23:09:18.241036+00', '2025-01-21 18:18:25.412953+00', 'SCP', NULL, 'DISTRIBUTOR', NULL, NULL, NULL, true, '2025-01-21 00:43:22.253697+00', NULL, NULL, 0, NULL),
	('018f6ae5-845a-4706-8960-c81a8c59a949', '2024-11-21 23:09:18.241036+00', '2025-01-21 18:18:25.412953+00', 'Heritage', NULL, 'DISTRIBUTOR', NULL, NULL, NULL, true, '2025-01-21 00:43:22.253697+00', NULL, NULL, 0, NULL),
	('16096898-eb47-4d1c-9bfe-f18561a13007', '2024-12-02 23:04:10.668329+00', '2025-01-21 18:18:25.412953+00', 'Stellar Sales', 'https://www.dropbox.com/scl/fi/dtvtgdh67hkn07727jxfv/stellar-logo-blue.png?rlkey=i72u0xm9ozv0xpngnls2m806h&st=5mmjocxa&raw=1', 'SALES', NULL, NULL, NULL, true, '2025-01-21 00:43:22.253697+00', NULL, NULL, 0, NULL),
	('46ba6162-15f7-4c71-b267-827188ad76d4', '2024-12-02 23:04:10.668329+00', '2025-01-21 18:18:25.412953+00', 'Stellas Sales Alliance', 'https://www.dropbox.com/scl/fi/hiccoaugoky25c0aosywp/stellar-alliance-logo-dark.png?rlkey=8ctpwu33xpbcn11ej4whv5lkv&st=u7wc4zaq&raw=1', 'SALES', NULL, NULL, NULL, true, '2025-01-21 00:43:22.253697+00', NULL, NULL, 0, NULL),
	('04612755-bf20-48ee-b7eb-ab699bb28ed9', '2024-12-02 23:04:10.668329+00', '2025-01-21 18:18:25.412953+00', 'Blithe Sales', 'https://www.dropbox.com/scl/fi/33pq6ell1apwts0v2ojw1/Blithe_HeaderSmallwGlow-283x200.webp?rlkey=mdlhoidkvz2yf043sezly4fi6&st=vghayiqc&raw=1', 'SALES', NULL, NULL, NULL, true, '2025-01-21 00:43:22.253697+00', NULL, NULL, 0, NULL),
	('cb60cd06-974f-473b-bd7b-f978e19212e6', '2024-12-02 23:04:10.668329+00', '2025-01-21 18:18:25.412953+00', 'Mast Sales', 'https://www.dropbox.com/scl/fi/xm2v7g295ntijpgmzblt2/mast_sales_logo.webp?rlkey=9mckfg8z4tsvnfe08z718pb3r&st=87xk2xqh&raw=1', 'SALES', NULL, NULL, NULL, true, '2025-01-21 00:43:22.253697+00', NULL, NULL, 0, NULL),
	('4b05afcd-d16c-46c9-84ef-c14a6cd383cb', '2024-12-02 23:04:10.668329+00', '2025-01-21 18:18:25.412953+00', 'Alpha West Marketing Group', 'https://www.dropbox.com/scl/fi/cpnju4i01qxszoevse2cw/The-Alpha-Group-Logo.png?rlkey=9uq6ajdknkr9ssfq5y55quv32&st=6zpxrsa4&raw=1', 'SALES', NULL, NULL, NULL, true, '2025-01-21 00:43:22.253697+00', NULL, NULL, 0, NULL),
	('569c7bd5-370e-4480-89cd-6ab7ffe29944', '2024-12-02 23:04:10.668329+00', '2025-01-21 18:18:25.412953+00', 'Southeast Leisure', 'https://www.dropbox.com/scl/fi/v6xxca0i8dsx599w6o4td/southeast_leisure.png?rlkey=u05tqfcxx89k0t3gy6ybrz73k&st=wmob8uw6&raw=1', 'SALES', NULL, NULL, NULL, true, '2025-01-21 00:43:22.253697+00', NULL, NULL, 0, NULL),
	('aab2dcff-2d61-46b2-b80d-eafc3df7ed29', '2024-11-25 19:51:50.746642+00', '2025-02-03 19:59:38.188491+00', 'The Outdoor Plus', 'https://www.dropbox.com/scl/fi/1ehp1fjxb6lkwzdirye6r/2025-The-Outdoor-Plus-Logo-BlackOrange.png?rlkey=sb8h9ngnwhwjrldhvto2i7vmd&st=yq3wilah&raw=1', 'ADMIN', NULL, NULL, NULL, true, '2025-01-21 00:43:22.253697+00', NULL, NULL, 0, NULL),
	('db4992c9-afdf-405f-8179-f386ba3faa57', '2025-02-03 20:01:38.585594+00', '2025-02-03 20:01:59.223861+00', 'Normac Sales', 'https://www.dropbox.com/scl/fi/nzmzrxe54sssz2y0od2f8/normac_sales_canada.png?rlkey=tmdo2nj0a9dwpdwga0hx7a2d0&st=hyz7y6lm&raw=1', 'SALES', NULL, NULL, NULL, true, '2025-02-03 20:01:38.585594+00', NULL, NULL, 0, NULL),
	('424d8dc4-ee9c-44d4-9fb4-905f7ba5fbba', '2025-02-06 18:44:00.233432+00', '2025-02-06 18:44:00.233432+00', 'IXV Landscape', '', 'DEALER', NULL, NULL, NULL, true, '2025-02-06 18:44:00.233432+00', NULL, NULL, 0, NULL);


--
-- Data for Name: MaterialsAttributes; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO "public"."MaterialsAttributes" ("id", "created_at", "updated_at", "attribute_type", "product_filter", "attribute_option", "attribute_code", "add_on_price", "discount", "promo_code", "promotion_details", "images") VALUES
	('0cf519c7-920b-4b20-86ae-b93cba9e28bf', '2025-01-27 17:42:41.064712+00', '2025-02-06 20:09:33.981962+00', 'Material', '24" Cazo Fire & Water Bowl', 'Powder Coat', 'R24PCFW', NULL, NULL, NULL, NULL, NULL),
	('21293aaa-70fc-4d11-bd67-97c557e7565a', '2025-01-27 17:42:41.064712+00', '2025-02-06 20:09:33.981962+00', 'Material', '24" Cazo Fire & Water Bowl', 'GFRC', '24RFW', 60, NULL, NULL, NULL, NULL),
	('76bbe588-dad1-43fb-b1bc-37ee26e2960f', '2025-02-01 20:06:25.784914+00', '2025-02-06 20:09:33.981962+00', 'Material', '108" Catalina Fire Pit', 'Wood Grain', NULL, NULL, NULL, NULL, NULL, NULL),
	('ca777579-30e9-4b3c-b484-b3728a47813a', '2025-02-01 20:06:25.784914+00', '2025-02-06 20:09:33.981962+00', 'Material', '108" Catalina Fire Pit - RTF', 'Hardieboard & Steel Frame', NULL, NULL, NULL, NULL, NULL, NULL),
	('99bb74cb-7740-479a-bd7b-7a7c99b68de4', '2025-02-01 20:06:25.784914+00', '2025-02-06 20:09:33.981962+00', 'Material', '120" Catalina Fire Pit - RTF', 'Hardieboard & Steel Frame', NULL, NULL, NULL, NULL, NULL, NULL),
	('b01c1d5a-5930-40b2-b694-ce64c954a3c8', '2025-02-01 20:06:25.784914+00', '2025-02-06 20:09:33.981962+00', 'Material', '108" Moderno Fire Pit', 'Hammered Copper', 'HC10828', 1699, NULL, NULL, NULL, NULL),
	('8e1a92b6-26e0-4a49-bb4e-ca85f0efe1c2', '2025-02-01 20:06:25.784914+00', '2025-02-06 20:09:33.981962+00', 'Material', '108" Moderno Fire Pit', 'Powder Coat', 'PC10828', NULL, NULL, NULL, NULL, NULL),
	('ecbf3892-3b3f-4dcb-9707-7dbc85cf2fc3', '2025-02-01 20:06:25.784914+00', '2025-02-06 20:09:33.981962+00', 'Material', '108" Moderno Fire Pit', 'Stainless Steel', 'SS10828', 203, NULL, NULL, NULL, NULL),
	('2f149030-b45a-447d-a2c1-0684f3387f65', '2025-01-31 00:53:51.528745+00', '2025-02-06 20:09:33.981962+00', 'Material', '108" Pismo Fire Pit - RTF', 'Hardieboard & Steel Frame', NULL, NULL, NULL, NULL, NULL, NULL),
	('6ee33b45-c13a-4643-b9e2-ae3e776bde7f', '2025-02-01 20:06:25.784914+00', '2025-02-06 20:09:33.981962+00', 'Material', '120" Catalina Fire Pit', 'Wood Grain', NULL, NULL, NULL, NULL, NULL, NULL),
	('ffa742a6-9b53-48fa-84b1-07faa8dc49eb', '2025-01-27 17:42:41.064712+00', '2025-02-06 20:09:33.981962+00', 'Material', '24" Cazo Fire Bowl', 'GFRC', '24RFO', NULL, NULL, NULL, NULL, 'Ash: https://www.dropbox.com/scl/fi/r05huanoa5keq5iimva7z/Cazo-Bowl-Fire-Ash.jpg?rlkey=c2yurybi26qae4jrol1lplerz&st=8kuipwbp&raw=1, Black: https://www.dropbox.com/scl/fi/fm5at1tlslnssib7ijxnb/Cazo-Bowl-Fire-Black.jpg?rlkey=z8469nz9adsand7175ahng9d1&st=t98vwmtw&raw=1, Chocolate: https://www.dropbox.com/scl/fi/l0357qev7j122wvvt27ev/Cazo-Bowl-Fire-Chocolate.jpg?rlkey=v1bc7qzwar009k1odhb6nbwjh&st=2k693p84&raw=1'),
	('d8c3d104-4bdf-4291-a573-e14716cf5c41', '2025-01-27 17:42:41.064712+00', '2025-02-06 20:09:33.981962+00', 'Material', '24" Cazo Fire Bowl', 'Powder Coat', 'R24PCFO', 125, NULL, NULL, NULL, 'Java: https://www.dropbox.com/scl/fi/vga94upldqukz6jlipdsd/Cazo-Bowl-Fire-Java.jpg?rlkey=30xl6l9ge1wx8zkbt4dv31cii&st=6nyw8od1&raw=1, Pewter: https://www.dropbox.com/scl/fi/oz9hp598djiqzuvksp25o/Cazo-Bowl-Fire-Pewter.jpg?rlkey=4jdil6utkj2dmmg2iaq6lsxez&st=uz422avj&raw=1, Black: https://www.dropbox.com/scl/fi/slukpzokdjyhq7jhgh5oh/Cazo-Powder-Coated-Fire-only-black.jpg?rlkey=yk8wecsi2vq9f0wxd5d02v60p&st=dtsfmafv&raw=1'),
	('c25063ff-773b-4c55-8706-a68267290555', '2025-01-27 17:42:41.064712+00', '2025-02-06 20:09:33.981962+00', 'Material', '24" Cazo Fire Bowl', 'Hammered Copper', '101-24NWF', 435, NULL, NULL, NULL, 'Copper: https://www.dropbox.com/scl/fi/8dn53w8khtgzs5v3rw7mc/Cazo-Copper-Fire-Bowl.jpg?rlkey=xskbp5rdi8g8xv5rqexv81y42&st=m3c1emcn&raw=1'),
	('ab9a37df-0161-4f8f-a45e-f3314f37634b', '2025-01-27 17:42:41.064712+00', '2025-02-06 20:09:33.981962+00', 'Material', '24" Cazo Fire Bowl', 'Wood Grain', '24RWGFO', 31, NULL, NULL, NULL, 'Ebony: https://www.dropbox.com/scl/fi/ejc8zljg7bo7dvja1xvsi/Cazo-Wood-Grain-Fire-Ebony.jpg?rlkey=dxind6v8yy2wcs2gonigqzae1&st=dtnduqq5&raw=1, Ivory: https://www.dropbox.com/scl/fi/ofac4b7g96lqr7ntz1tyw/Cazo-Wood-Grain-fire-ivory.jpg?rlkey=zlg2unt48y5r9retw9kfp0y9o&st=cl6xcjs0&raw=1, Oak: https://www.dropbox.com/scl/fi/9bscuj5dqlq0zum8acdqc/Cazo-Wood-Grain-Fire-Oak.jpg?rlkey=mki6ttcs6eka0zruppwywvvst&st=47kraczp&raw=1'),
	('7f53df48-21ce-4129-9821-7607489b59ac', '2025-01-27 17:42:41.064712+00', '2025-02-06 20:09:33.981962+00', 'Material', '24" Cazo Fire & Water Bowl', 'Wood Grain', '24RWGFW', 101, NULL, NULL, NULL, NULL),
	('e501da33-16ba-4351-8db4-afada0100ec3', '2025-01-27 17:42:41.064712+00', '2025-02-06 20:09:33.981962+00', 'Material', '24" Cazo Fire & Water Bowl', 'Hammered Copper', '101-24NWCB', 466, NULL, NULL, NULL, NULL),
	('2a2bc07c-e173-4a3d-bf5b-f905d38f6c3a', '2025-01-27 17:42:41.064712+00', '2025-02-06 20:09:33.981962+00', 'Material', '24" Cazo Planter Bowl', 'Hammered Copper', 'R24CPO', 402, NULL, NULL, NULL, NULL),
	('aa27846f-7f39-4acc-b3b7-ec57ba6120b2', '2025-01-27 17:42:41.064712+00', '2025-02-06 20:09:33.981962+00', 'Material', '24" Cazo Planter Bowl', 'Powder Coat', 'R24PCPO', 339, NULL, NULL, NULL, NULL),
	('44e8426f-0e3a-4ee6-9f85-f16418f3fa0d', '2025-01-27 17:42:41.064712+00', '2025-02-06 20:09:33.981962+00', 'Material', '24" Cazo Planter Bowl', 'Wood Grain', '24RWGPO', 15, NULL, NULL, NULL, NULL),
	('ba4884d4-2a8b-4c1c-b7cb-10f0a1502453', '2025-01-27 17:42:41.064712+00', '2025-02-06 20:09:33.981962+00', 'Material', '24" Cazo Planter Bowl', 'GFRC', '24RP', NULL, NULL, NULL, NULL, NULL),
	('18fb2c62-6b9f-43cf-a18c-7d2685ced8e2', '2025-01-27 17:42:41.064712+00', '2025-02-06 20:09:33.981962+00', 'Material', '24" Cazo Plater & Water Bowl', 'Hammered Copper', 'R24CPW', 216, NULL, NULL, NULL, NULL),
	('97cf3f81-050b-461d-b5ca-6bd201f1c75a', '2025-01-27 17:42:41.064712+00', '2025-02-06 20:09:33.981962+00', 'Material', '24" Cazo Plater & Water Bowl', 'Powder Coat', 'R24PCPW', 267, NULL, NULL, NULL, NULL),
	('46a5db22-d41d-48ec-a586-10182589b21e', '2025-01-27 17:42:41.064712+00', '2025-02-06 20:09:33.981962+00', 'Material', '24" Cazo Plater & Water Bowl', 'GFRC', '24RPW', NULL, NULL, NULL, NULL, NULL),
	('f3937888-2ca7-43ba-b0cb-fe9ef01b23ec', '2025-01-27 17:42:41.064712+00', '2025-02-06 20:09:33.981962+00', 'Material', '24" Cazo Plater & Water Bowl', 'Wood Grain', '24RWGPW', 25, NULL, NULL, NULL, NULL),
	('6c9d0df0-f195-490c-ae1d-d07a21f68b62', '2025-01-27 17:42:41.064712+00', '2025-02-06 20:09:33.981962+00', 'Material', '24" Cazo Water Bowl', 'Hammered Copper', 'R24CPWO', 502, NULL, NULL, NULL, NULL),
	('2c708632-a3bb-49c2-8353-f66014e6f2a9', '2025-01-27 17:42:41.064712+00', '2025-02-06 20:09:33.981962+00', 'Material', '24" Cazo Water Bowl', 'GFRC', '24RWO', NULL, NULL, NULL, NULL, NULL),
	('4584fcd7-811b-472b-84ba-1de83ee191bb', '2025-01-27 17:42:41.064712+00', '2025-02-06 20:09:33.981962+00', 'Material', '24" Cazo Water Bowl', 'Wood Grain', '24RWGWO', 20, NULL, NULL, NULL, NULL),
	('38ebbd36-ee10-4e60-9115-847abeb1393c', '2025-01-27 17:42:41.064712+00', '2025-02-06 20:09:33.981962+00', 'Material', '24" Cazo Water Bowl', 'Powder Coat', 'R24PCWO', 317, NULL, NULL, NULL, NULL),
	('b2fbd640-60c7-454c-93b5-e73dcb072245', '2025-01-27 17:42:41.064712+00', '2025-02-06 20:09:33.981962+00', 'Material', '24" Cazo Water Bowl - Wall Mounted', 'Copper', 'R24CPWMT', NULL, NULL, NULL, NULL, NULL),
	('9532b962-18dd-4c89-9e39-3d3fb637cf09', '2025-01-28 00:16:50.542159+00', '2025-02-06 20:09:33.981962+00', 'Material', '24" Maya Fire & Water Bowl - Gravity Spill', 'Powder Coat', 'PC24FANDW', NULL, NULL, NULL, NULL, NULL),
	('e1822923-3f9b-47d3-ab4c-3fd274440420', '2025-01-28 00:16:50.542159+00', '2025-02-06 20:09:33.981962+00', 'Material', '24" Maya Fire & Water Bowl - Wide Spill', 'Wood Grain', 'WGFWWS', 8, NULL, NULL, NULL, NULL),
	('b4c2c702-2f3d-42a4-a5b7-30b41b7c8563', '2025-01-28 00:16:50.542159+00', '2025-02-06 20:09:33.981962+00', 'Material', '24" Maya Fire & Water Bowl - Wide Spill', 'GFRC', 'FWWS', NULL, NULL, NULL, NULL, NULL),
	('8e9507b0-a321-4c37-8425-a4b052bcd9fa', '2025-01-28 00:16:50.542159+00', '2025-02-06 20:09:33.981962+00', 'Material', '24" Maya Fire & Water - Wave Scupper', 'Powder Coat', NULL, NULL, NULL, NULL, NULL, NULL),
	('5b05cafa-dde7-4009-91ed-d4827fbef974', '2025-01-28 00:16:50.542159+00', '2025-02-06 20:09:33.981962+00', 'Material', '24" Maya Planter Bowl', 'Wood Grain', 'WGPO', 83, NULL, NULL, NULL, NULL),
	('854f406b-d1e8-4f40-9b88-568c4166bda9', '2025-01-28 00:16:50.542159+00', '2025-02-06 20:09:33.981962+00', 'Material', '24" Maya Planter Bowl', 'Stainless Steel', 'QSSPO', 583, NULL, NULL, NULL, NULL),
	('eda4ab1b-f63b-412d-9d6c-da4fc1ce590d', '2025-01-28 00:16:50.542159+00', '2025-02-06 20:09:33.981962+00', 'Material', '24" Maya Planter Bowl', 'Powder Coat', 'QPCPO', 532, NULL, NULL, NULL, NULL),
	('7f457548-ebc7-4dec-b589-7f7f81ee8c86', '2025-01-28 00:16:50.542159+00', '2025-02-06 20:09:33.981962+00', 'Material', '24" Maya Planter Bowl', 'Hammered Copper', 'CPO', 470, NULL, NULL, NULL, NULL),
	('1f1f2555-a521-4fa1-bbc1-7c187fafb1b0', '2025-01-28 00:16:50.542159+00', '2025-02-06 20:09:33.981962+00', 'Material', '24" Maya Planter Bowl', 'GFRC', 'P', NULL, NULL, NULL, NULL, NULL),
	('8d7e0bb4-cd97-4cb2-bdec-254620447658', '2025-01-28 00:16:50.542159+00', '2025-02-06 20:09:33.981962+00', 'Material', '24" Maya Planter & Water Bowl', 'Wood Grain', 'WGPW', 25, NULL, NULL, NULL, NULL),
	('06c027d2-25a1-43d1-91a6-d15846de1fc2', '2025-01-28 00:16:50.542159+00', '2025-02-06 20:09:33.981962+00', 'Material', '24" Maya Planter & Water Bowl', 'Hammered Copper', 'CPW', 216, NULL, NULL, NULL, NULL),
	('4af100c9-dbb1-47a9-825a-07f02f25642e', '2025-01-28 00:16:50.542159+00', '2025-02-06 20:09:33.981962+00', 'Material', '24" Maya Planter & Water Bowl', 'Powder Coat', 'QPCPW', 267, NULL, NULL, NULL, NULL),
	('3458aa95-b267-4825-84bb-04abf70a762c', '2025-01-28 00:16:50.542159+00', '2025-02-06 20:09:33.981962+00', 'Material', '24" Maya Planter & Water Bowl', 'Stainless Steel', 'QSSPW', 329, NULL, NULL, NULL, NULL),
	('4c117014-2c2a-4697-a930-d40f11d98fec', '2025-01-28 00:16:50.542159+00', '2025-02-06 20:09:33.981962+00', 'Material', '24" Maya Planter & Water Bowl', 'GFRC', 'PW', NULL, NULL, NULL, NULL, NULL),
	('e7be9459-024c-4ec9-8a01-4be17a016fa1', '2025-01-28 00:16:50.542159+00', '2025-02-06 20:09:33.981962+00', 'Material', '24" Maya Water Bowl', 'Hammered Copper', 'CW', 630, NULL, NULL, NULL, NULL),
	('ed30991e-8b9e-45f5-b200-441f62a0afc0', '2025-01-28 00:16:50.542159+00', '2025-02-06 20:09:33.981962+00', 'Material', '24" Maya Water Bowl', 'Stainless Steel', 'QSSWO', 630, NULL, NULL, NULL, NULL),
	('6b6d1001-5ace-49d8-a95a-3deff0bfdd97', '2025-01-28 00:16:50.542159+00', '2025-02-06 20:09:33.981962+00', 'Material', '24" Maya Water Bowl', 'Powder Coat', 'QPCWO', 383, NULL, NULL, NULL, NULL),
	('d8adadb6-d8c3-442a-a7d8-df9194b7ea22', '2025-01-28 00:16:50.542159+00', '2025-02-06 20:09:33.981962+00', 'Material', '24" Maya Water Bowl', 'GFRC', 'WO', NULL, NULL, NULL, NULL, NULL),
	('bd7da002-18b0-4b1c-98f7-ea0aaad1cfe9', '2025-01-28 00:16:50.542159+00', '2025-02-06 20:09:33.981962+00', 'Material', '24" Maya Water Bowl', 'Wood Grain', 'WGWO', 254, NULL, NULL, NULL, NULL),
	('224119f6-9391-4dbc-bfd4-07863a09e246', '2025-01-28 00:16:50.542159+00', '2025-02-06 20:09:33.981962+00', 'Material', '24" Maya Water Bowl - Wall Mounted', 'Copper', NULL, NULL, NULL, NULL, NULL, NULL),
	('cff6d8b6-05ed-4b4b-96d7-2bbaf402c0eb', '2025-01-28 00:16:50.542159+00', '2025-02-06 20:09:33.981962+00', 'Material', '24" Maya Water Bowl - Wide Spillway', 'Powder Coat', 'QPCWS', NULL, NULL, NULL, NULL, NULL),
	('da8a493a-fb80-43bc-948c-b444d82ccac3', '2025-01-28 00:16:50.542159+00', '2025-02-06 20:09:33.981962+00', 'Material', '24" Maya Water Bowl - Wide Spillway', 'Hammered Copper', 'CXW', 387, NULL, NULL, NULL, NULL),
	('da559997-d548-4398-ab98-cce396b37c1c', '2025-01-28 00:16:50.542159+00', '2025-02-06 20:09:33.981962+00', 'Material', '24" Maya Water Bowl - Wide Spillway', 'Stainless Steel', 'QSSWS', 387, NULL, NULL, NULL, NULL),
	('7793bf7b-641d-4547-9011-a8564e0a7167', '2025-01-29 01:06:39.793179+00', '2025-02-06 20:09:33.981962+00', 'Material', '24" Moderna Planter', 'Corten Steel', NULL, NULL, NULL, NULL, NULL, NULL),
	('7f062f06-387f-4d1c-899f-625f0a741f83', '2025-01-29 01:06:39.793179+00', '2025-02-06 20:09:33.981962+00', 'Material', '24" Roma Fire Bowl', 'GFRC', NULL, NULL, NULL, NULL, NULL, NULL),
	('ee34465b-5752-4e82-aa7e-c7436283f6a0', '2025-01-29 01:06:39.793179+00', '2025-02-06 20:09:33.981962+00', 'Material', '24" Roma Fire & Water Bowl', 'GFRC', NULL, NULL, NULL, NULL, NULL, NULL),
	('12b20e45-64d2-415c-a74b-cf6595b9de50', '2025-01-29 01:06:39.793179+00', '2025-02-06 20:09:33.981962+00', 'Material', '24" Roma Planter Bowl', 'GFRC', NULL, NULL, NULL, NULL, NULL, NULL),
	('76f4b2fc-78cd-41de-8dda-07622b0497a7', '2025-01-29 01:06:39.793179+00', '2025-02-06 20:09:33.981962+00', 'Material', '24" Roma Planter & Water Bowl', 'GFRC', NULL, NULL, NULL, NULL, NULL, NULL),
	('60ff8ee8-8cb5-4e71-ba6a-8f22adfd0e20', '2025-01-29 01:06:39.793179+00', '2025-02-06 20:09:33.981962+00', 'Material', '24" Roma Water Bowl', 'GFRC', NULL, NULL, NULL, NULL, NULL, NULL),
	('738154e4-933a-4306-bd21-f9aa144188ab', '2025-01-29 01:06:39.793179+00', '2025-02-06 20:09:33.981962+00', 'Material', '24" x 24" Tuscon Planter', 'Corten Steel', NULL, NULL, NULL, NULL, NULL, NULL),
	('d62734dd-0c3d-466a-8aa9-0c5afe3c33b4', '2025-01-29 01:06:39.793179+00', '2025-02-06 20:09:33.981962+00', 'Material', '26" x 26" Vertical Tuscon Planter', 'Corten Steel', NULL, NULL, NULL, NULL, NULL, NULL),
	('1ceeb097-501a-41b6-ba24-88e81672338d', '2025-01-27 17:42:41.064712+00', '2025-02-06 20:09:33.981962+00', 'Material', '27" Sedona Fire Bowl', 'GFRC', 'FO', NULL, NULL, NULL, NULL, NULL),
	('bdb5f6c8-74b6-4dd1-9935-c8cd02095b07', '2025-01-27 17:42:41.064712+00', '2025-02-06 20:09:33.981962+00', 'Material', '27" Sedona Fire Bowl', 'Powder Coat', 'PCFO', 179, NULL, NULL, NULL, NULL),
	('fb176231-f0d3-435c-a37b-16d9557cfeeb', '2025-01-27 17:42:41.064712+00', '2025-02-06 20:09:33.981962+00', 'Material', '27" Sedona Fire Bowl', 'Wood Grain', 'WGFO', 31, NULL, NULL, NULL, NULL),
	('9102d70f-34d2-4f60-9196-d7690636a24b', '2025-01-27 17:42:41.064712+00', '2025-02-06 20:09:33.981962+00', 'Material', '27" Sedona Fire Bowl', 'Hammered Copper', 'CPRFO', 608, NULL, NULL, NULL, NULL),
	('741c4e26-1859-43f6-a959-b7e8d09ad469', '2025-01-27 17:42:41.064712+00', '2025-02-06 20:09:33.981962+00', 'Material', '27" Sedona Fire & Water Bowl', 'GFRC', 'FW', NULL, NULL, NULL, NULL, NULL),
	('f6fdd773-9807-44ac-aa47-17dd5943b088', '2025-01-27 17:42:41.064712+00', '2025-02-06 20:09:33.981962+00', 'Material', '27" Sedona Fire & Water Bowl', 'Wood Grain', 'WGFW', 40, NULL, NULL, NULL, NULL),
	('c2fc1535-00b1-4d2c-9ad2-772920034a7e', '2025-01-27 17:42:41.064712+00', '2025-02-06 20:09:33.981962+00', 'Material', '27" Sedona Fire & Water Bowl', 'Hammered Copper', 'CPRFW', 524, NULL, NULL, NULL, NULL),
	('9d0e59de-377e-4cde-8996-47e72edb2d77', '2025-01-27 17:42:41.064712+00', '2025-02-06 20:09:33.981962+00', 'Material', '27" Sedona Fire & Water Bowl', 'Powder Coat', 'PCFW', 1, NULL, NULL, NULL, NULL),
	('20076a3a-96ab-4f20-969b-a43e6d9ec191', '2025-01-27 17:42:41.064712+00', '2025-02-06 20:09:33.981962+00', 'Material', '27" Sedona Fire & Water Bowl - Gravity Spill', 'Hammered Copper', 'CPRFWGS', NULL, NULL, NULL, NULL, NULL),
	('a051fec3-82c1-4637-8156-adcf91269922', '2025-01-27 17:42:41.064712+00', '2025-02-06 20:09:33.981962+00', 'Material', '27" Sedona Planter Bowl', 'Wood Grain', 'WGPO', 16, NULL, NULL, NULL, NULL),
	('270650ca-274c-4aa5-851b-f63e2f770dfb', '2025-01-27 17:42:41.064712+00', '2025-02-06 20:09:33.981962+00', 'Material', '27" Sedona Planter Bowl', 'GFRC', 'P', NULL, NULL, NULL, NULL, NULL),
	('e3a72c4e-d2aa-459b-bf5f-de9ba11d6a96', '2025-01-27 17:42:41.064712+00', '2025-02-06 20:09:33.981962+00', 'Material', '27" Sedona Planter Bowl', 'Powder Coat', 'PCPO', 1493, NULL, NULL, NULL, NULL),
	('4e86f0c5-f01f-48db-8a4a-1f2e30dd9ec3', '2025-01-27 17:42:41.064712+00', '2025-02-06 20:09:33.981962+00', 'Material', '27" Sedona Planter Bowl', 'Hammered Copper', 'CPRPO', 433, NULL, NULL, NULL, NULL),
	('8856478a-1d1a-4c20-8c0a-c17afb8dab59', '2025-01-27 17:42:41.064712+00', '2025-02-06 20:09:33.981962+00', 'Material', '27" Sedona Planter & Water Bowl', 'GFRC', 'PW', NULL, NULL, NULL, NULL, NULL),
	('d0f45d01-7c72-40fb-b723-1813c5dc7fea', '2025-01-27 17:42:41.064712+00', '2025-02-06 20:09:33.981962+00', 'Material', '27" Sedona Planter & Water Bowl', 'Hammered Copper', 'CPRPW', 242, NULL, NULL, NULL, NULL),
	('2aa1f590-98f0-4225-bbc6-04b78c1a4270', '2025-01-27 17:42:41.064712+00', '2025-02-06 20:09:33.981962+00', 'Material', '27" Sedona Planter & Water Bowl', 'Wood Grain', 'WGWP', 24, NULL, NULL, NULL, NULL),
	('8c749b97-6785-4a3a-863e-72c8f35b3dfd', '2025-01-27 17:42:41.064712+00', '2025-02-06 20:09:33.981962+00', 'Material', '27" Sedona Planter & Water Bowl', 'Powder Coat', 'PCPW', 303, NULL, NULL, NULL, NULL),
	('31bd15e0-bd96-4eaa-a2b2-53bea25b0079', '2025-01-27 17:42:41.064712+00', '2025-02-06 20:09:33.981962+00', 'Material', '27" Sedona Water Bowl', 'GFRC', 'WO', NULL, NULL, NULL, NULL, NULL),
	('ed97c218-5e98-4a2c-b6c2-ea02dbb05d2c', '2025-01-27 17:42:41.064712+00', '2025-02-06 20:09:33.981962+00', 'Material', '27" Sedona Water Bowl', 'Wood Grain', 'WGWO', 19, NULL, NULL, NULL, NULL),
	('abb0b395-6cdb-460a-86c0-c65b2a26ac6a', '2025-01-27 17:42:41.064712+00', '2025-02-06 20:09:33.981962+00', 'Material', '27" Sedona Water Bowl', 'Powder Coat', 'PCWO', 494, NULL, NULL, NULL, NULL),
	('894422e4-473c-462b-ba10-19ce6e27852e', '2025-01-27 17:42:41.064712+00', '2025-02-06 20:09:33.981962+00', 'Material', '27" Sedona Water Bowl', 'Hammered Copper', 'CPRWO', 463, NULL, NULL, NULL, NULL),
	('fdb9da5b-59ea-4893-95cd-70f6423ba603', '2025-01-27 17:42:41.064712+00', '2025-02-06 20:09:33.981962+00', 'Material', '28" Sedona 2.0 Fire Bowl', 'GFRC', NULL, NULL, NULL, NULL, NULL, NULL),
	('2deabf3d-2d35-4ba5-a8e0-0f121befa6e2', '2025-01-27 17:42:41.064712+00', '2025-02-06 20:09:33.981962+00', 'Material', '28" Sedona 2.0 Fire & Water Bowl', 'GFRC', NULL, NULL, NULL, NULL, NULL, NULL),
	('00fca83b-4737-4538-b83a-681621d584b6', '2025-01-27 17:42:41.064712+00', '2025-02-06 20:09:33.981962+00', 'Material', '28" Sedona 2.0 Planter Bowl', 'GFRC', NULL, NULL, NULL, NULL, NULL, NULL),
	('54643435-4f0b-4747-ac7d-7ff58019c198', '2025-01-27 17:42:41.064712+00', '2025-02-06 20:09:33.981962+00', 'Material', '28" Sedona 2.0 Planter & Water Bowl', 'GFRC', NULL, NULL, NULL, NULL, NULL, NULL),
	('849fdb24-7055-4ac2-ae0f-3f2fa157f943', '2025-01-28 20:57:49.620948+00', '2025-02-06 20:09:33.981962+00', 'Material', '30" Avalon Fire Bowl', 'Powder Coat', '30AVPCF', 945, NULL, NULL, NULL, NULL),
	('43ce7984-73c0-4e8f-a120-0591e606f738', '2025-01-28 20:57:49.620948+00', '2025-02-06 20:09:33.981962+00', 'Material', '30" Avalon Fire Bowl', 'Hammered Copper', '30AVCPF', 798, NULL, NULL, NULL, NULL),
	('6f412f26-1688-400d-8cb7-5b89822a3786', '2025-01-28 20:57:49.620948+00', '2025-02-06 20:09:33.981962+00', 'Material', '30" Avalon Fire Bowl', 'Stainless Steel', '30AVSSF', 798, NULL, NULL, NULL, NULL),
	('96305944-9710-405f-99ab-bf711acfd644', '2025-01-28 20:57:49.620948+00', '2025-02-06 20:09:33.981962+00', 'Material', '30" Avalon Fire Bowl', 'GFRC', 'AVLFO30', NULL, NULL, NULL, NULL, NULL),
	('a81f294f-067d-41f2-b520-99e2c4db3d0f', '2025-01-28 20:57:49.620948+00', '2025-02-06 20:09:33.981962+00', 'Material', '30" Avalon Fire & Water Bowl', 'Hammered Copper', '30AVCPFW', 810, NULL, NULL, NULL, NULL),
	('019acd1c-2919-4195-90ca-043145dc3a43', '2025-01-28 20:57:49.620948+00', '2025-02-06 20:09:33.981962+00', 'Material', '30" Avalon Fire & Water Bowl', 'Stainless Steel', '30AVSSFW', 810, NULL, NULL, NULL, NULL),
	('f81b9d39-8196-49a3-85f7-e7faaada18df', '2025-01-28 20:57:49.620948+00', '2025-02-06 20:09:33.981962+00', 'Material', '30" Avalon Fire & Water Bowl', 'Powder Coat', '30AVPCFW', 764, NULL, NULL, NULL, NULL),
	('7b05f0bf-be77-4c32-8989-0c7988fd2e3e', '2025-01-28 20:57:49.620948+00', '2025-02-06 20:09:33.981962+00', 'Material', '30" Avalon Fire & Water Bowl', 'GFRC', 'AVLFW30', NULL, NULL, NULL, NULL, NULL),
	('d985546d-fa08-4108-a2be-69433e0800e9', '2025-01-28 20:57:49.620948+00', '2025-02-06 20:09:33.981962+00', 'Material', '30" Avalon Fire & Water Bowl - Twin Spill', 'Hammered Copper', 'CPFWTS', 683, NULL, NULL, NULL, NULL),
	('f0157c58-89fd-4fca-af7a-6506c3da0961', '2025-01-28 20:57:49.620948+00', '2025-02-06 20:09:33.981962+00', 'Material', '30" Avalon Fire & Water Bowl - Twin Spill', 'Powder Coat', 'PCFWTS', NULL, NULL, NULL, NULL, NULL),
	('b7fc4fd3-6c7b-4aa4-b4f4-3de6964bee90', '2025-01-28 20:57:49.620948+00', '2025-02-06 20:09:33.981962+00', 'Material', '30" Avalon Fire & Water Bowl - Twin Spill', 'Stainless Steel', 'SSFWTS', 6, NULL, NULL, NULL, NULL),
	('853efc33-ad64-47cd-b91e-782ae729e339', '2025-01-28 20:57:49.620948+00', '2025-02-06 20:09:33.981962+00', 'Material', '30" Avalon Fire & Water Bowl - Wide Spill', 'Hammered Copper', 'CPFWWS', 677, NULL, NULL, NULL, NULL),
	('497bf4a9-4648-452e-83f8-01373393f9aa', '2025-01-28 20:57:49.620948+00', '2025-02-06 20:09:33.981962+00', 'Material', '30" Avalon Fire & Water Bowl - Wide Spill', 'Stainless Steel', 'SSFWWS', NULL, NULL, NULL, NULL, NULL),
	('a57db9e3-cc36-47f4-bfc1-f4bdc4355fda', '2025-01-28 20:57:49.620948+00', '2025-02-06 20:09:33.981962+00', 'Material', '30" Avalon Fire & Water Bowl - Wide Spill', 'Powder Coat', 'PCFWWS', 516, NULL, NULL, NULL, NULL),
	('bfda9863-e1db-4685-b612-5dd91c42d33f', '2025-01-28 20:57:49.620948+00', '2025-02-06 20:09:33.981962+00', 'Material', '30" Avalon Planter Bowl', 'GFRC', NULL, NULL, NULL, NULL, NULL, NULL),
	('10a543b2-510e-48b0-848b-77bd8d732478', '2025-01-28 20:57:49.620948+00', '2025-02-06 20:09:33.981962+00', 'Material', '30" Avalon Planter & Water Bowl', 'GFRC', NULL, NULL, NULL, NULL, NULL, NULL),
	('758c821e-1651-48db-be78-8a5f814db6ab', '2025-01-28 20:57:49.620948+00', '2025-02-06 20:09:33.981962+00', 'Material', '30" Avalon Water Bowl', 'Stainless Steel', '30AVSSWO', 768, NULL, NULL, NULL, NULL),
	('89c91816-d149-497a-9a92-d34b3c32c6c4', '2025-01-28 20:57:49.620948+00', '2025-02-06 20:09:33.981962+00', 'Material', '30" Avalon Water Bowl', 'GFRC', 'AVLWO30', NULL, NULL, NULL, NULL, NULL),
	('e383df24-d07f-487c-a846-4c353e637b13', '2025-01-28 20:57:49.620948+00', '2025-02-06 20:09:33.981962+00', 'Material', '30" Avalon Water Bowl', 'Hammered Copper', '30AVCPWO', 768, NULL, NULL, NULL, NULL),
	('43cd257d-e210-41d9-8bdd-42c1e1f99e7e', '2025-01-28 20:57:49.620948+00', '2025-02-06 20:09:33.981962+00', 'Material', '30" Avalon Water Bowl', 'Powder Coat', '30AVPCWO', 675, NULL, NULL, NULL, NULL),
	('8d257ec2-fdd3-4106-87e9-f4b59b419fe3', '2025-01-27 17:42:41.064712+00', '2025-02-06 20:09:33.981962+00', 'Material', '30" Cazo 360° Fire & Water Bowl', 'Hammered Copper', NULL, NULL, NULL, NULL, NULL, NULL),
	('fcebbb9b-e71b-45b3-bde7-bead84fa341a', '2025-01-27 17:42:41.064712+00', '2025-02-06 20:09:33.981962+00', 'Material', '30" Cazo 4-Way Fire & Water Bowl', 'Hammered Copper', NULL, NULL, NULL, NULL, NULL, NULL),
	('e9be6deb-6a00-4622-b59d-2b45bfad4d4d', '2025-01-27 17:42:41.064712+00', '2025-02-06 20:09:33.981962+00', 'Material', '30" Cazo Fire Bowl', 'Powder Coat', 'R30PCFO', NULL, NULL, NULL, NULL, NULL),
	('6579c0c5-5838-47d3-b601-4537e1e8d409', '2025-01-27 17:42:41.064712+00', '2025-02-06 20:09:33.981962+00', 'Material', '30" Cazo Fire Bowl', 'Hammered Copper', '102-30NWF', 685, NULL, NULL, NULL, NULL),
	('a626efb1-51dc-4c75-b3d0-73af885959dc', '2025-01-27 17:42:41.064712+00', '2025-02-06 20:09:33.981962+00', 'Material', '30" Cazo Fire & Water Bowl', 'Hammered Copper', '102-30NWCB', 640, NULL, NULL, NULL, NULL),
	('7e44fa66-f9b7-4cb0-8638-57ab598f08a1', '2025-01-27 17:42:41.064712+00', '2025-02-06 20:09:33.981962+00', 'Material', '30" Cazo Fire & Water Bowl', 'Powder Coat', 'R30PCFW', NULL, NULL, NULL, NULL, NULL),
	('594e9498-f740-454e-9c90-0f242943c516', '2025-01-27 17:42:41.064712+00', '2025-02-06 20:09:33.981962+00', 'Material', '30" Cazo Planter Bowl', 'Hammered Copper', 'CPO', 125, NULL, NULL, NULL, NULL),
	('491e1dd7-c307-4dba-871e-67693b240a29', '2025-01-27 17:42:41.064712+00', '2025-02-06 20:09:33.981962+00', 'Material', '30" Cazo Planter Bowl', 'Powder Coat', 'PCPO', NULL, NULL, NULL, NULL, NULL),
	('25d6afb1-57cb-4289-9565-f45408c4c6ca', '2025-01-27 17:42:41.064712+00', '2025-02-06 20:09:33.981962+00', 'Material', '30" Cazo Planter & Water Bowl', 'Hammered Copper', 'CPW', 93, NULL, NULL, NULL, NULL),
	('47e96825-7144-4190-b0d9-8b37bacaa325', '2025-01-27 17:42:41.064712+00', '2025-02-06 20:09:33.981962+00', 'Material', '30" Cazo Planter & Water Bowl', 'Powder Coat', 'PCPW', NULL, NULL, NULL, NULL, NULL),
	('75311794-99f8-4a44-98b6-188d11586524', '2025-01-28 00:16:50.542159+00', '2025-02-06 20:09:33.981962+00', 'Material', '24" Maya Fire Bowl', 'Powder Coat', '24SQPCFO', 218, NULL, NULL, NULL, NULL),
	('d83584b9-a5ad-45b7-81b5-82b282311d25', '2025-01-28 00:16:50.542159+00', '2025-02-06 20:09:33.981962+00', 'Material', '24" Maya Fire Bowl', 'Wood Grain', '24SWGFO', 31, NULL, NULL, NULL, NULL),
	('c799d57d-4f0a-4865-a65c-d3185e774f70', '2025-01-28 00:16:50.542159+00', '2025-02-06 20:09:33.981962+00', 'Material', '24" Maya Fire Bowl', 'Hammered Copper', '103-SQ24', 435, NULL, NULL, NULL, NULL),
	('08d92d74-5836-4cbf-b7a5-8dca22e100ce', '2025-01-28 00:16:50.542159+00', '2025-02-06 20:09:33.981962+00', 'Material', '24" Maya Fire Bowl', 'Stainless Steel', '24SQSSFO', 435, NULL, NULL, NULL, NULL),
	('c2fd7805-3ce0-466d-9044-7524ea6b1987', '2025-01-28 00:16:50.542159+00', '2025-02-06 20:09:33.981962+00', 'Material', '24" Maya Fire Bowl', 'GFRC', '24SFO', NULL, NULL, NULL, NULL, NULL),
	('f05a804d-17e1-4da1-9edc-932df1dcc721', '2025-01-28 00:16:50.542159+00', '2025-02-06 20:09:33.981962+00', 'Material', '24" Maya Fire & Water Bowl', 'GFRC', 'FW', NULL, NULL, NULL, NULL, NULL),
	('af52fa0a-6574-4e55-97fb-24e3d3ea7f7d', '2025-01-28 00:16:50.542159+00', '2025-02-06 20:09:33.981962+00', 'Material', '24" Maya Fire & Water Bowl', 'Powder Coat', 'QPCFW', 2, NULL, NULL, NULL, NULL),
	('44d2a99d-985d-4dba-9201-0b4e730ed58d', '2025-01-28 00:16:50.542159+00', '2025-02-06 20:09:33.981962+00', 'Material', '24" Maya Fire & Water Bowl', 'Wood Grain', 'WGFW', 41, NULL, NULL, NULL, NULL),
	('0c4d01ab-2cf7-437e-ab59-67f73b257f9a', '2025-01-28 00:16:50.542159+00', '2025-02-06 20:09:33.981962+00', 'Material', '24" Maya Fire & Water Bowl', 'Stainless Steel', 'QSSFW', 404, NULL, NULL, NULL, NULL),
	('ed088d2d-d0f8-4c8d-a6fc-d92de9ccb9f1', '2025-01-28 00:16:50.542159+00', '2025-02-06 20:09:33.981962+00', 'Material', '24" Maya Fire & Water Bowl', 'Hammered Copper', 'CFW', 404, NULL, NULL, NULL, NULL),
	('ad302370-fff6-4498-bd89-b4a5c24fc180', '2025-01-28 00:16:50.542159+00', '2025-02-06 20:09:33.981962+00', 'Material', '24" Maya Fire & Water Bowl - Gravity Spill', 'Hammered Copper', '24FANDW', NULL, NULL, NULL, NULL, NULL),
	('1a80a6f5-7fbb-4cb8-ac38-4e110a21c4a2', '2025-01-28 00:16:50.542159+00', '2025-02-06 20:09:33.981962+00', 'Material', '24" Maya Fire & Water Bowl - Gravity Spill', 'Stainless Steel', 'SS24FANDW', NULL, NULL, NULL, NULL, NULL),
	('b6c10252-85dc-413a-9d6e-f00d2dfdb371', '2025-01-27 17:42:41.064712+00', '2025-02-06 20:09:33.981962+00', 'Material', '30" Cazo Water Bowl', 'Hammered Copper', 'CPWO', 268, NULL, NULL, NULL, NULL),
	('21bc5a47-2bdf-48b1-bb3b-94d846cbe552', '2025-01-27 17:42:41.064712+00', '2025-02-06 20:09:33.981962+00', 'Material', '30" Cazo Water Bowl', 'Powder Coat', 'PCWO', NULL, NULL, NULL, NULL, NULL),
	('60437b04-a2bb-4044-bb6b-70ce0c34e0c3', '2025-01-27 17:42:41.064712+00', '2025-02-06 20:09:33.981962+00', 'Material', '30" Cazo Water Bowl - Wall Mounted', 'Copper', NULL, NULL, NULL, NULL, NULL, NULL),
	('315fe554-8781-41d7-a6e4-fbaa5a5553ee', '2025-02-01 20:06:25.784914+00', '2025-02-06 20:09:33.981962+00', 'Material', '30" Forma Fire Pit', 'Powder Coat', 'PCSQ', 75, NULL, NULL, NULL, NULL),
	('29a5343a-e81e-4024-b68b-fe4dc4d6bab1', '2025-02-01 20:06:25.784914+00', '2025-02-06 20:09:33.981962+00', 'Material', '30" Forma Fire Pit', 'Hammered Copper', '30SQCPR', 882, NULL, NULL, NULL, NULL),
	('6e6fc432-c9b9-479f-9ffc-23573ba25fe3', '2025-02-01 20:06:25.784914+00', '2025-02-06 20:09:33.981962+00', 'Material', '30" Forma Fire Pit', 'Corten Steel', '30SQCS', NULL, NULL, NULL, NULL, NULL),
	('19294aeb-b189-4b5e-be87-59c6ed466539', '2025-01-28 00:16:50.542159+00', '2025-02-06 20:09:33.981962+00', 'Material', '30" Maya Fire & Water Bowl - Wave Scupper', 'Powder Coat', NULL, NULL, NULL, NULL, NULL, NULL),
	('24e673f9-4a78-43fd-abaf-e6818f67aa77', '2025-01-28 00:16:50.542159+00', '2025-02-06 20:09:33.981962+00', 'Material', '30" Maya Fire & Water Bowl - Wide Gravity Spill', 'Stainless Steel', 'MFW30GSS', NULL, NULL, NULL, NULL, NULL),
	('99d5b0ec-a4f7-4b52-9acd-f82ee0f7e620', '2025-01-28 00:16:50.542159+00', '2025-02-06 20:09:33.981962+00', 'Material', '30" Maya Fire & Water Bowl - Wide Gravity Spill', 'Powder Coat', 'SQ30PCFWWS', 125, NULL, NULL, NULL, NULL),
	('f7cff7a0-feb9-415d-a482-109c92cff6d2', '2025-01-28 00:16:50.542159+00', '2025-02-06 20:09:33.981962+00', 'Material', '30" Maya Fire & Water Bowl - Wide Spill', 'GFRC', 'FWWS', NULL, NULL, NULL, NULL, NULL),
	('d36adacb-5011-4e83-9feb-a777d8dc9ce7', '2025-01-28 00:16:50.542159+00', '2025-02-06 20:09:33.981962+00', 'Material', '30" Maya Fire & Water Bowl - Wide Spill', 'Wood Grain', 'WGFWWS', 23, NULL, NULL, NULL, NULL),
	('e13675b0-3d00-4c3e-af6c-239ff4ce5e57', '2025-01-28 00:16:50.542159+00', '2025-02-06 20:09:33.981962+00', 'Material', '30" Maya Planter Bowl', 'Powder Coat', 'QPCPO', 681, NULL, NULL, NULL, NULL),
	('8ba77e2c-17e9-4571-82d7-7370c536c69f', '2025-01-28 00:16:50.542159+00', '2025-02-06 20:09:33.981962+00', 'Material', '30" Maya Planter Bowl', 'Hammered Copper', 'CPO', 559, NULL, NULL, NULL, NULL),
	('2107597f-b479-4ed6-b59e-4f9e920c2a14', '2025-01-28 00:16:50.542159+00', '2025-02-06 20:09:33.981962+00', 'Material', '30" Maya Planter Bowl', 'Wood Grain', 'WGPO', 50, NULL, NULL, NULL, NULL),
	('5e646070-ea66-4a79-b38d-6417cfd63837', '2025-01-28 00:16:50.542159+00', '2025-02-06 20:09:33.981962+00', 'Material', '30" Maya Planter Bowl', 'Stainless Steel', 'QSSPO', 671, NULL, NULL, NULL, NULL),
	('0655dab2-2dd8-46c5-a81f-fca70f987ab7', '2025-01-28 00:16:50.542159+00', '2025-02-06 20:09:33.981962+00', 'Material', '30" Maya Planter & Water Bowl', 'Hammered Copper', 'CPW', 294, NULL, NULL, NULL, NULL),
	('98461d18-b577-4454-be83-681bf252badd', '2025-01-28 00:16:50.542159+00', '2025-02-06 20:09:33.981962+00', 'Material', '30" Maya Planter & Water Bowl', 'Stainless Steel', 'QSSPW', 383, NULL, NULL, NULL, NULL),
	('e99dc226-b332-4d57-99c4-1301a51ca166', '2025-01-28 00:16:50.542159+00', '2025-02-06 20:09:33.981962+00', 'Material', '30" Maya Planter & Water Bowl', 'Powder Coat', 'QPCPW', 412, NULL, NULL, NULL, NULL),
	('496bf9ab-fd19-49e7-bb27-a3b5b7f7c3ee', '2025-01-28 00:16:50.542159+00', '2025-02-06 20:09:33.981962+00', 'Material', '30" Maya Planter & Water Bowl', 'Wood Grain', 'WGPW', 31, NULL, NULL, NULL, NULL),
	('4872acee-177c-4f75-bb2b-b8972dccc7a7', '2025-01-28 00:16:50.542159+00', '2025-02-06 20:09:33.981962+00', 'Material', '30" Maya Planter & Water Bowl', 'GFRC', 'PW', NULL, NULL, NULL, NULL, NULL),
	('ddf9daef-d072-4048-97bb-571ce6976917', '2025-01-28 00:16:50.542159+00', '2025-02-06 20:09:33.981962+00', 'Material', '30" Maya Water Bowl', 'Stainless Steel', 'QSSWO', 887, NULL, NULL, NULL, NULL),
	('6391df74-80a5-4e88-bffe-db6bd87e47a7', '2025-01-28 00:16:50.542159+00', '2025-02-06 20:09:33.981962+00', 'Material', '30" Maya Water Bowl', 'Wood Grain', 'WGWO', 322, NULL, NULL, NULL, NULL),
	('eb898233-fc19-4ecc-8cac-48c5b8aadd31', '2025-01-28 00:16:50.542159+00', '2025-02-06 20:09:33.981962+00', 'Material', '30" Maya Water Bowl', 'Hammered Copper', 'CW', 887, NULL, NULL, NULL, NULL),
	('ac57522a-6d05-4f32-9008-2fffa0b98553', '2025-01-28 00:16:50.542159+00', '2025-02-06 20:09:33.981962+00', 'Material', '30" Maya Water Bowl', 'Powder Coat', 'QPCWO', 578, NULL, NULL, NULL, NULL),
	('2f89c819-369a-4a37-b9d8-23fca17e6858', '2025-01-28 00:16:50.542159+00', '2025-02-06 20:09:33.981962+00', 'Material', '30" Maya Water Bowl', 'GFRC', 'WO', NULL, NULL, NULL, NULL, NULL),
	('dc82342f-ffd2-478b-928e-ea3f7383e6b1', '2025-01-28 00:16:50.542159+00', '2025-02-06 20:09:33.981962+00', 'Material', '30" Maya Water Bowl - Wall Mounted', 'Copper', NULL, NULL, NULL, NULL, NULL, NULL),
	('a6469346-c33f-4f31-a269-7ebe969310b7', '2025-01-28 00:16:50.542159+00', '2025-02-06 20:09:33.981962+00', 'Material', '30" Maya Water Bowl - Wide Spillway', 'Hammered Copper', 'CXW', 219, NULL, NULL, NULL, NULL),
	('2036d643-3cdb-4a91-90a0-dbf55c3a558d', '2025-01-28 00:16:50.542159+00', '2025-02-06 20:09:33.981962+00', 'Material', '30" Maya Water Bowl - Wide Spillway', 'Stainless Steel', 'QSSWS', 219, NULL, NULL, NULL, NULL),
	('c295f414-8502-479a-bcf2-fda10099cd8e', '2025-01-28 00:16:50.542159+00', '2025-02-06 20:09:33.981962+00', 'Material', '30" Maya Water Bowl - Wide Spillway', 'Powder Coat', 'QPCWS', NULL, NULL, NULL, NULL, NULL),
	('82ad2fc2-b870-4e9b-a32e-0c5ad5d86b97', '2025-01-29 01:06:39.793179+00', '2025-02-06 20:09:33.981962+00', 'Material', '30" Moderna Planter', 'Corten Steel', NULL, NULL, NULL, NULL, NULL, NULL),
	('2e432ad4-be03-4f89-8422-e62cceb0d33b', '2025-01-29 01:06:39.793179+00', '2025-02-06 20:09:33.981962+00', 'Material', '30" Nile Fire & Water Bowl', 'Hammered Copper', 'CPF', 2, NULL, NULL, NULL, NULL),
	('a1eadb1f-5314-4984-9b5d-c97a3c872aab', '2025-01-29 01:06:39.793179+00', '2025-02-06 20:09:33.981962+00', 'Material', '30" Nile Fire & Water Bowl', 'Powder Coat', 'PCF', NULL, NULL, NULL, NULL, NULL),
	('f98a6657-08a8-4a9f-ad51-682206f55bbd', '2025-01-29 01:06:39.793179+00', '2025-02-06 20:09:33.981962+00', 'Material', '30" Nile Fire & Water Bowl', 'Stainless Steel', 'SSF', 2, NULL, NULL, NULL, NULL),
	('f49bdcd6-d6fd-45b6-a1e5-4b3b82b18bf0', '2025-01-29 01:06:39.793179+00', '2025-02-06 20:09:33.981962+00', 'Material', '30" Sierra Planter - 20" Tall', 'Corten Steel', NULL, NULL, NULL, NULL, NULL, NULL),
	('be813ffa-b9d1-42ac-a652-63f42c938641', '2025-01-29 01:06:39.793179+00', '2025-02-06 20:09:33.981962+00', 'Material', '30" Sierra Planter - 30" Tall', 'Corten Steel', NULL, NULL, NULL, NULL, NULL, NULL),
	('e9732f81-07a0-43a6-91b3-e193a4c3dc82', '2025-02-01 20:06:25.784914+00', '2025-02-06 20:09:33.981962+00', 'Material', '30" Forma Fire Pit', 'Stainless Steel', '30SQSS', 451, NULL, NULL, NULL, NULL),
	('561616d7-1da1-4c5a-90d3-8f1e97addc57', '2025-01-27 18:50:53.018779+00', '2025-02-06 20:09:33.981962+00', 'Material', '30" Luna Fire Bowl', 'GFRC', NULL, NULL, NULL, NULL, NULL, NULL),
	('a1435bd4-6b6d-4bfd-8112-ec95e54ae828', '2025-01-27 18:50:53.018779+00', '2025-02-06 20:09:33.981962+00', 'Material', '30" Luna Fire Pit', 'GFRC', NULL, NULL, NULL, NULL, NULL, NULL),
	('2404559e-2e34-4cbd-a7e8-c733674fe52f', '2025-01-27 18:50:53.018779+00', '2025-02-06 20:09:33.981962+00', 'Material', '30" Luna Fire & Water Bowl', 'GFRC', NULL, NULL, NULL, NULL, NULL, NULL),
	('eec10161-68f4-4d5f-b9f7-a2f71736b5bf', '2025-01-27 18:50:53.018779+00', '2025-02-06 20:09:33.981962+00', 'Material', '30" Luna Planter Bowl', 'GFRC', NULL, NULL, NULL, NULL, NULL, NULL),
	('9d26bf77-1787-4d79-afd4-25f2f67dc200', '2025-01-27 18:50:53.018779+00', '2025-02-06 20:09:33.981962+00', 'Material', '30" Luna Planter & Water Bowl', 'GFRC', NULL, NULL, NULL, NULL, NULL, NULL),
	('3ad3c6c9-1543-4e74-b3de-7a627cd06ef3', '2025-01-27 18:50:53.018779+00', '2025-02-06 20:09:33.981962+00', 'Material', '30" Luna Water Bowl', 'GFRC', NULL, NULL, NULL, NULL, NULL, NULL),
	('cdaa4db9-01bc-4379-8fb4-d8250d24e618', '2025-01-28 00:16:50.542159+00', '2025-02-06 20:09:33.981962+00', 'Material', '30" Maya Fire Bowl', 'Hammered Copper', '103-SQ30', 659, NULL, NULL, NULL, NULL),
	('9a9297e5-f270-46d2-8a6c-29bd3e4e75fc', '2025-01-28 00:16:50.542159+00', '2025-02-06 20:09:33.981962+00', 'Material', '30" Maya Fire Bowl', 'Wood Grain', '30SWGFO', 34, NULL, NULL, NULL, NULL),
	('280b6ab2-f6aa-49ba-8afe-bcdbd38c319e', '2025-01-28 00:16:50.542159+00', '2025-02-06 20:09:33.981962+00', 'Material', '30" Maya Fire Bowl', 'Stainless Steel', '30SQSSFO', 659, NULL, NULL, NULL, NULL),
	('7a2318cf-207b-4c6f-87eb-f56e7fd86691', '2025-01-28 00:16:50.542159+00', '2025-02-06 20:09:33.981962+00', 'Material', '30" Maya Fire Bowl', 'GFRC', '30SFO', NULL, NULL, NULL, NULL, NULL),
	('a9ec379e-5d26-4272-b8b4-e5530bf5df34', '2025-01-28 00:16:50.542159+00', '2025-02-06 20:09:33.981962+00', 'Material', '30" Maya Fire Bowl', 'Powder Coat', '30SQPCFO', 216, NULL, NULL, NULL, NULL),
	('0f9a77c7-d966-4837-a26f-e64690df84cf', '2025-01-28 00:16:50.542159+00', '2025-02-06 20:09:33.981962+00', 'Material', '30" Maya Fire & Water Bowl', 'GFRC', 'FW', NULL, NULL, NULL, NULL, NULL),
	('9bfff5d7-b3e0-4060-a5e3-f49cd2e3a550', '2025-01-28 00:16:50.542159+00', '2025-02-06 20:09:33.981962+00', 'Material', '30" Maya Fire & Water Bowl', 'Powder Coat', 'QPCFW', NULL, NULL, NULL, NULL, NULL),
	('2f4cd4b6-399b-47fb-8803-45af4d067565', '2025-01-28 00:16:50.542159+00', '2025-02-06 20:09:33.981962+00', 'Material', '30" Maya Fire & Water Bowl', 'Wood Grain', 'WGFW', 28, NULL, NULL, NULL, NULL),
	('6c18ae9d-7016-4092-9f98-22cf17b604ac', '2025-01-28 00:16:50.542159+00', '2025-02-06 20:09:33.981962+00', 'Material', '30" Maya Fire & Water Bowl', 'Hammered Copper', 'CFW', 636, NULL, NULL, NULL, NULL),
	('859c3b86-160a-4a52-bca9-2b3201c599c1', '2025-01-28 00:16:50.542159+00', '2025-02-06 20:09:33.981962+00', 'Material', '30" Maya Fire & Water Bowl', 'Stainless Steel', 'QSSFW', 636, NULL, NULL, NULL, NULL),
	('6bf2a6fe-1147-440b-9f17-c428b2715beb', '2025-01-28 00:16:50.542159+00', '2025-02-06 20:09:33.981962+00', 'Material', '30" Maya Fire & Water Bowl - 4 Way Spill', 'Stainless Steel', 'SS', 39, NULL, NULL, NULL, NULL),
	('54758caf-b0df-4006-a425-42874226db4b', '2025-01-28 00:16:50.542159+00', '2025-02-06 20:09:33.981962+00', 'Material', '30" Maya Fire & Water Bowl - 4 Way Spill', 'Powder Coat', 'PC', NULL, NULL, NULL, NULL, NULL),
	('b628915b-db0c-4072-85c5-87a12e55b7ce', '2025-01-28 00:16:50.542159+00', '2025-02-06 20:09:33.981962+00', 'Material', '30" Maya Fire & Water Bowl - 4 Way Spill', 'Hammered Copper', NULL, 39, NULL, NULL, NULL, NULL),
	('3c440152-4351-4802-9c06-7ec4a82aa532', '2025-01-28 00:16:50.542159+00', '2025-02-06 20:09:33.981962+00', 'Material', '30" Maya Fire & Water Bowl - Gravity Spill', 'Hammered Copper', '30FANDW', NULL, NULL, NULL, NULL, NULL),
	('4a3840b2-bab0-4f13-8a92-a2851b3f98ed', '2025-01-28 00:16:50.542159+00', '2025-02-06 20:09:33.981962+00', 'Material', '30" Maya Fire & Water Bowl - Gravity Spill', 'Stainless Steel', 'SS30FANDW', NULL, NULL, NULL, NULL, NULL),
	('d911b16f-d625-4edc-8d0f-1ab618102b44', '2025-01-28 00:16:50.542159+00', '2025-02-06 20:09:33.981962+00', 'Material', '30" Maya Fire & Water Bowl - Wide Gravity Spill', 'Hammered Copper', 'SQ30FWWS', NULL, NULL, NULL, NULL, NULL),
	('5ed10f50-95aa-4a1d-8407-a7b5f1922cbf', '2025-01-29 01:06:39.793179+00', '2025-02-06 20:09:33.981962+00', 'Material', '30" x 20" Tuscon Planter', 'Corten Steel', NULL, NULL, NULL, NULL, NULL, NULL),
	('bb919754-b154-437f-a5d5-7029f2a62c29', '2025-01-28 20:57:49.620948+00', '2025-02-06 20:09:33.981962+00', 'Material', '30" x 30" Avalon Tall Fire Pit', 'Hammered Copper', 'CPR3030', 1799, NULL, NULL, NULL, NULL),
	('6ab787af-c039-4f05-9912-f10ac655dd1b', '2025-01-28 20:57:49.620948+00', '2025-02-06 20:09:33.981962+00', 'Material', '30" x 30" Avalon Tall Fire Pit', 'Corten Steel', 'CS3030', NULL, NULL, NULL, NULL, NULL),
	('8d298d91-73eb-49d5-8327-0d7889b69f0f', '2025-01-28 20:57:49.620948+00', '2025-02-06 20:09:33.981962+00', 'Material', '30" x 30" Avalon Tall Fire Pit', 'Powder Coat', 'PC3030', NULL, NULL, NULL, NULL, NULL),
	('0fed7122-d764-407f-a682-939f7cde7409', '2025-01-28 20:57:49.620948+00', '2025-02-06 20:09:33.981962+00', 'Material', '30" x 30" Avalon Tall Fire Pit', 'Stainless Steel', 'SS3030', 224, NULL, NULL, NULL, NULL),
	('33cabb69-df92-4d9e-afb3-4f2d1cf4eed4', '2025-01-29 01:06:39.793179+00', '2025-02-06 20:09:33.981962+00', 'Material', '30" x 30" Vertical Tuscon Planter', 'Corten Steel', NULL, NULL, NULL, NULL, NULL, NULL),
	('5a2d35b7-59e6-4a2b-9b79-03d2ea01c4aa', '2025-01-27 17:42:41.064712+00', '2025-02-06 20:09:33.981962+00', 'Material', '31" Cazo Fire Bowl', 'GFRC', NULL, NULL, NULL, NULL, NULL, NULL),
	('1f4a3fc2-2112-41ac-a62c-20df1fc54379', '2025-01-27 17:42:41.064712+00', '2025-02-06 20:09:33.981962+00', 'Material', '31" Cazo Fire & Water Bowl', 'GFRC', NULL, NULL, NULL, NULL, NULL, NULL),
	('30d12ef7-86e5-47c5-b28e-a6903e69a939', '2025-01-27 17:42:41.064712+00', '2025-02-06 20:09:33.981962+00', 'Material', '31" Cazo Planter Bowl', 'GFRC', '31RP', NULL, NULL, NULL, NULL, NULL),
	('fd596f15-f7e7-4728-a2a9-6299c38b5292', '2025-01-27 17:42:41.064712+00', '2025-02-06 20:09:33.981962+00', 'Material', '31" Cazo Planter & Water Bowl', 'GFRC', '31RPW', NULL, NULL, NULL, NULL, NULL),
	('811970db-77de-4e86-8838-906f58f4aeed', '2025-01-27 17:42:41.064712+00', '2025-02-06 20:09:33.981962+00', 'Material', '31" Cazo Water Bowl', 'GFRC', NULL, NULL, NULL, NULL, NULL, NULL),
	('557931ff-3c8c-4511-bd50-352c70444092', '2025-01-29 01:06:39.793179+00', '2025-02-06 20:09:33.981962+00', 'Material', '31" Remi Fire Bowl', 'Hammered Copper', NULL, NULL, NULL, NULL, NULL, NULL),
	('32717d51-796b-4c3f-8026-26d90f235b63', '2025-01-29 01:06:39.793179+00', '2025-02-06 20:09:33.981962+00', 'Material', '31" Remi Fire & Water Bowl', 'Hammered Copper', NULL, NULL, NULL, NULL, NULL, NULL),
	('190b3f69-77a0-422e-92fe-49531bd60cc2', '2025-01-29 01:06:39.793179+00', '2025-02-06 20:09:33.981962+00', 'Material', '31" Remi Fire & Water Bowl - Gravity Spill', 'Hammered Copper', NULL, NULL, NULL, NULL, NULL, NULL),
	('11bc49f4-f75c-44e8-9e59-55b916092b4e', '2025-01-29 01:06:39.793179+00', '2025-02-06 20:09:33.981962+00', 'Material', '31" Remi Planter Bowl', 'Hammered Copper', NULL, NULL, NULL, NULL, NULL, NULL),
	('89815675-78fd-41b5-81d0-07441e6fb092', '2025-01-29 01:06:39.793179+00', '2025-02-06 20:09:33.981962+00', 'Material', '31" Remi Planter & Water Bowl', 'Hammered Copper', NULL, NULL, NULL, NULL, NULL, NULL),
	('0e4f7790-619b-4e72-a650-1284e08e5e3a', '2025-01-29 01:06:39.793179+00', '2025-02-06 20:09:33.981962+00', 'Material', '31" Remi Water Bowl', 'Hammered Copper', NULL, NULL, NULL, NULL, NULL, NULL),
	('85bb62a9-7bf5-42d9-b188-811930b9d0c5', '2025-01-27 17:42:41.064712+00', '2025-02-06 20:09:33.981962+00', 'Material', '36" Cazo Planter & Water Bowl', 'GFRC', '36RPW', NULL, NULL, NULL, NULL, NULL),
	('fc92f618-6316-4f73-9492-eba46efa4dae', '2025-01-28 00:16:50.542159+00', '2025-02-06 20:09:33.981962+00', 'Material', '30" Maya Fire & Water Bowl - Gravity Spill', 'Powder Coat', 'PC30FANDW', 2, NULL, NULL, NULL, NULL),
	('c98fb4f1-0fea-40d5-b00f-f7c5f91f194d', '2025-01-28 00:16:50.542159+00', '2025-02-06 20:09:33.981962+00', 'Material', '30" Maya Planter Bowl', 'GFRC', 'P', NULL, NULL, NULL, NULL, NULL),
	('c0fe9239-db26-4eba-a3e2-3c6d4145b933', '2025-01-29 01:06:39.793179+00', '2025-02-06 20:09:33.981962+00', 'Material', '32" Florence Fire Pit - 18" Tall', 'GFRC', NULL, NULL, NULL, NULL, NULL, NULL),
	('07981d1d-19fb-49a8-a0c9-ab126b5ec96d', '2025-01-27 17:42:41.064712+00', '2025-02-06 20:09:33.981962+00', 'Material', '33" Sedona Fire Bowl', 'GFRC', NULL, NULL, NULL, NULL, NULL, NULL),
	('e638f934-e89d-4384-8f61-7b6ec4b4b644', '2025-01-27 17:42:41.064712+00', '2025-02-06 20:09:33.981962+00', 'Material', '33" Sedona Fire & Water Bowl', 'GFRC', NULL, NULL, NULL, NULL, NULL, NULL),
	('6e3afbad-9830-4bf5-9f7c-297124e332c4', '2025-01-27 17:42:41.064712+00', '2025-02-06 20:09:33.981962+00', 'Material', '33" Sedona Planter Bowl', 'GFRC', NULL, NULL, NULL, NULL, NULL, NULL),
	('f9d1612a-f13f-49d0-9b26-ebe152328984', '2025-01-27 17:42:41.064712+00', '2025-02-06 20:09:33.981962+00', 'Material', '33" Sedona Planter & Water Bowl', 'GFRC', NULL, NULL, NULL, NULL, NULL, NULL),
	('481db81c-3dd7-436a-89c1-382ef8946736', '2025-01-27 17:42:41.064712+00', '2025-02-06 20:09:33.981962+00', 'Material', '33" Sedona Water Bowl', 'GFRC', NULL, NULL, NULL, NULL, NULL, NULL),
	('afbb57eb-803e-4c3e-a3d3-b86596215918', '2025-01-28 20:57:49.620948+00', '2025-02-06 20:09:33.981962+00', 'Material', '36" Avalon Fire & Water Bowl', 'GFRC', 'AVLFW36', NULL, NULL, NULL, NULL, NULL),
	('ec14a904-a8ce-43f5-b6d9-485bd46516c2', '2025-01-28 20:57:49.620948+00', '2025-02-06 20:09:33.981962+00', 'Material', '36" Avalon Planter Bowl', 'GFRC', NULL, NULL, NULL, NULL, NULL, NULL),
	('07f9716e-b0d6-4a80-b859-d7e0b54f721b', '2025-01-28 20:57:49.620948+00', '2025-02-06 20:09:33.981962+00', 'Material', '36" Avalon Planter & Water Bowl', 'GFRC', NULL, NULL, NULL, NULL, NULL, NULL),
	('d1d1b612-c0be-4d04-9654-02c6dec0f22b', '2025-01-28 20:57:49.620948+00', '2025-02-06 20:09:33.981962+00', 'Material', '36" Avalon Water Bowl', 'Stainless Steel', '36AVSSWO', 748, NULL, NULL, NULL, NULL),
	('6de9bf0e-1a78-46d7-af2e-605a182a86a6', '2025-01-28 20:57:49.620948+00', '2025-02-06 20:09:33.981962+00', 'Material', '36" Avalon Water Bowl', 'Powder Coat', '36AVPCWO', 638, NULL, NULL, NULL, NULL),
	('d2d01f69-0b14-4ecf-8631-9002424ab7ee', '2025-01-28 20:57:49.620948+00', '2025-02-06 20:09:33.981962+00', 'Material', '36" Avalon Water Bowl', 'Hammered Copper', '36AVCPWO', 748, NULL, NULL, NULL, NULL),
	('7785c84e-3428-4b4d-b459-67932f3c282f', '2025-01-28 20:57:49.620948+00', '2025-02-06 20:09:33.981962+00', 'Material', '36" Avalon Water Bowl', 'GFRC', 'AVLWO36', NULL, NULL, NULL, NULL, NULL),
	('b1201af1-806b-421d-a2b5-613d94d358c3', '2025-01-31 00:53:51.528745+00', '2025-02-06 20:09:33.981962+00', 'Material', '36" Cabo Square Fire Pit', 'GFRC', NULL, NULL, NULL, NULL, NULL, NULL),
	('06ce5ee6-2789-4d15-a333-7bfb806d63c7', '2025-01-31 00:53:51.528745+00', '2025-02-06 20:09:33.981962+00', 'Material', '36" Cabo Square Fire Pit', 'Corten Steel', 'CS', 20, NULL, NULL, NULL, NULL),
	('9834db58-f904-4f06-97b9-7240688b3d2b', '2025-01-31 00:53:51.528745+00', '2025-02-06 20:09:33.981962+00', 'Material', '36" Cabo Square Fire Pit', 'Hammered Copper', 'CPR', 978, NULL, NULL, NULL, NULL),
	('d13d05db-9734-45d5-bd95-cc5dfd225cf2', '2025-01-31 00:53:51.528745+00', '2025-02-06 20:09:33.981962+00', 'Material', '36" Cabo Square Fire Pit', 'Stainless Steel', 'SS', 780, NULL, NULL, NULL, NULL),
	('6b29280a-3db7-4306-bc3f-9a439e8fd4d1', '2025-01-31 00:53:51.528745+00', '2025-02-06 20:09:33.981962+00', 'Material', '36" Cabo Square Fire Pit', 'Powder Coat', 'PC', 209, NULL, NULL, NULL, NULL),
	('42a894e7-71a1-4d38-a571-68f8f16dfefa', '2025-01-27 17:42:41.064712+00', '2025-02-06 20:09:33.981962+00', 'Material', '36" Cazo 360° Fire & Water Bowl', 'Hammered Copper', NULL, NULL, NULL, NULL, NULL, NULL),
	('8073efcd-d927-4093-82d9-8a4da3c8bbad', '2025-01-27 17:42:41.064712+00', '2025-02-06 20:09:33.981962+00', 'Material', '36" Cazo 4-Way Fire & Water Bowl', 'Hammered Copper', NULL, NULL, NULL, NULL, NULL, NULL),
	('2c0d3678-666c-4234-8b41-9c5790a455b2', '2025-01-27 17:42:41.064712+00', '2025-02-06 20:09:33.981962+00', 'Material', '36" Cazo Fire Bowl', 'Hammered Copper', '102-36NWF', 1498, NULL, NULL, NULL, NULL),
	('b567e3da-ced1-49e2-a185-8bc1379e37ae', '2025-01-27 17:42:41.064712+00', '2025-02-06 20:09:33.981962+00', 'Material', '36" Cazo Fire Bowl', 'Powder Coat', 'R36PCFO', 125, NULL, NULL, NULL, NULL),
	('ad0eae53-449b-481d-a625-db5749140138', '2025-01-27 17:42:41.064712+00', '2025-02-06 20:09:33.981962+00', 'Material', '36" Cazo Fire Bowl', 'GFRC', '36RFO', NULL, NULL, NULL, NULL, NULL),
	('8d43a9bc-baa8-47ae-8cc7-6f360664c60b', '2025-01-27 17:42:41.064712+00', '2025-02-06 20:09:33.981962+00', 'Material', '36" Cazo Fire & Water Bowl', 'Powder Coat', 'R36PCFW', NULL, NULL, NULL, NULL, NULL),
	('22cdcfd1-7ba5-4f75-98d3-b25381cc6698', '2025-01-27 17:42:41.064712+00', '2025-02-06 20:09:33.981962+00', 'Material', '36" Cazo Fire & Water Bowl', 'Hammered Copper', '102-36NWCB', 1604, NULL, NULL, NULL, NULL),
	('6d6dbf61-1cc2-481e-ae78-2018b3365596', '2025-01-27 17:42:41.064712+00', '2025-02-06 20:09:33.981962+00', 'Material', '36" Cazo Fire & Water Bowl', 'GFRC', '36RFW', NULL, NULL, NULL, NULL, NULL),
	('896e40f2-66b7-4e66-b621-67de5b5ccffb', '2025-01-27 17:42:41.064712+00', '2025-02-06 20:09:33.981962+00', 'Material', '36" Cazo Planter Bowl', 'Powder Coat', 'R36PCPO', 463, NULL, NULL, NULL, NULL),
	('55bb7339-8429-44ce-a27b-a59efb0c55b9', '2025-01-27 17:42:41.064712+00', '2025-02-06 20:09:33.981962+00', 'Material', '36" Cazo Planter Bowl', 'GFRC', '36RP', NULL, NULL, NULL, NULL, NULL),
	('49edd7d6-4c08-49ab-ac01-dd0ba7eb2e2c', '2025-01-27 17:42:41.064712+00', '2025-02-06 20:09:33.981962+00', 'Material', '36" Cazo Planter Bowl', 'Hammered Copper', 'R36CPO', 525, NULL, NULL, NULL, NULL),
	('0adf5cda-746e-45f2-b10c-1dc7005a56fa', '2025-01-27 17:42:41.064712+00', '2025-02-06 20:09:33.981962+00', 'Material', '36" Cazo Planter & Water Bowl', 'Hammered Copper', 'R36CPW', 203, NULL, NULL, NULL, NULL),
	('d530899e-bada-4633-8d66-ca5811683369', '2025-01-27 17:42:41.064712+00', '2025-02-06 20:09:33.981962+00', 'Material', '36" Cazo Planter & Water Bowl', 'Powder Coat', 'R36PCPW', 172, NULL, NULL, NULL, NULL),
	('4bef805c-0ddf-4340-89f7-abc66ffe9774', '2025-01-27 17:42:41.064712+00', '2025-02-06 20:09:33.981962+00', 'Material', '36" Cazo Water Bowl', 'Powder Coat', 'R36PCWO', 465, NULL, NULL, NULL, NULL),
	('f6d1f413-c37f-42fb-b1fd-94306e7e3396', '2025-01-27 17:42:41.064712+00', '2025-02-06 20:09:33.981962+00', 'Material', '36" Cazo Water Bowl', 'GFRC', '36RWO', NULL, NULL, NULL, NULL, NULL),
	('7f54ae7d-1c19-405a-a000-afa39e140cc9', '2025-01-27 17:42:41.064712+00', '2025-02-06 20:09:33.981962+00', 'Material', '36" Cazo Water Bowl', 'Hammered Copper', 'R36CPWO', 654, NULL, NULL, NULL, NULL),
	('13b7e970-c4de-42a9-b912-9d2bdff3e592', '2025-02-01 20:06:25.784914+00', '2025-02-06 20:09:33.981962+00', 'Material', '36" Forma Fire Pit', 'Hammered Copper', 'OPT-3636SQCPR', 949, NULL, NULL, NULL, NULL),
	('8013f4ad-fd89-4d2c-ba38-a60192e28f5d', '2025-01-28 16:25:19.558025+00', '2025-02-06 20:09:33.981962+00', 'Material', '36" Maya Fire & Water Bowl - 4 Way Spill', 'Hammered Copper', NULL, 24, NULL, NULL, NULL, NULL),
	('584f80d4-d45c-4798-80cc-981113390159', '2025-01-28 18:29:35.210798+00', '2025-02-06 20:09:33.981962+00', 'Material', '24" Avalon Fire & Water Bowl', 'Hammered Copper', '24AVCPFW', 553, NULL, NULL, NULL, NULL),
	('fa375cc0-2246-461a-b369-fff0ebd654f2', '2025-01-28 18:29:35.210798+00', '2025-02-06 20:09:33.981962+00', 'Material', '24" Avalon Fire & Water Bowl', 'Stainless Steel', '24AVSSFW', 553, NULL, NULL, NULL, NULL),
	('bf729a25-2bca-48f1-baf8-b01089e34473', '2025-01-28 18:29:35.210798+00', '2025-02-06 20:09:33.981962+00', 'Material', '24" Avalon Fire & Water Bowl', 'GFRC', 'AVLFW24', NULL, NULL, NULL, NULL, NULL),
	('b57f5a06-6a98-4100-933c-10283692b598', '2025-01-28 18:29:35.210798+00', '2025-02-06 20:09:33.981962+00', 'Material', '24" Avalon Fire & Water Bowl', 'Powder Coat', '24AVPCFW', 536, NULL, NULL, NULL, NULL),
	('f09e3fa4-f653-4c71-8d16-213f561f1a6a', '2025-01-28 18:29:35.210798+00', '2025-02-06 20:09:33.981962+00', 'Material', '24" Avalon Planter Bowl', 'GFRC', NULL, NULL, NULL, NULL, NULL, NULL),
	('b2d9601c-ae4e-4633-8af6-e7b57561eaa2', '2025-01-28 18:29:35.210798+00', '2025-02-06 20:09:33.981962+00', 'Material', '24" Avalon Planter & Water Bowl', 'GFRC', NULL, NULL, NULL, NULL, NULL, NULL),
	('03d167c6-3665-414e-8dee-4483538cd145', '2025-01-28 18:29:35.210798+00', '2025-02-06 20:09:33.981962+00', 'Material', '24" Avalon Water Bowl', 'Stainless Steel', '24AVSSWO', 619, NULL, NULL, NULL, NULL),
	('683fb51b-b997-4510-8af0-fead443bac2d', '2025-01-28 18:29:35.210798+00', '2025-02-06 20:09:33.981962+00', 'Material', '24" Avalon Water Bowl', 'Hammered Copper', '24AVCPWO', 619, NULL, NULL, NULL, NULL),
	('895525c6-b13e-466c-8381-115ba7b286ea', '2025-01-28 18:29:35.210798+00', '2025-02-06 20:09:33.981962+00', 'Material', '24" Avalon Water Bowl', 'Powder Coat', '24AVPCWO', 565, NULL, NULL, NULL, NULL),
	('d701d6bc-6dd7-4751-a7a1-09257d137c58', '2025-01-28 18:29:35.210798+00', '2025-02-06 20:09:33.981962+00', 'Material', '24" Avalon Water Bowl', 'GFRC', 'AVLWO24', NULL, NULL, NULL, NULL, NULL),
	('9f4a6c2a-864b-45cd-928c-3588ce9a776d', '2025-02-01 20:06:25.784914+00', '2025-02-06 20:09:33.981962+00', 'Material', '36" Forma Fire Pit', 'Powder Coat', 'OPT-36PCSQ', 150, NULL, NULL, NULL, NULL),
	('6b359f01-5f3d-4c81-976c-555bed152188', '2025-02-01 20:06:25.784914+00', '2025-02-06 20:09:33.981962+00', 'Material', '36" Forma Fire Pit', 'Stainless Steel', 'OPT-3636SQSS', 751, NULL, NULL, NULL, NULL),
	('aed8c742-b331-4cf4-9e2d-9928fc6fcec2', '2025-02-01 20:06:25.784914+00', '2025-02-06 20:09:33.981962+00', 'Material', '36" Forma Fire Pit', 'Corten Steel', 'OPT-3636SQCS', NULL, NULL, NULL, NULL, NULL),
	('3ea52982-34b6-44cb-a5f4-097648a4591d', '2025-02-01 20:06:25.784914+00', '2025-02-06 20:09:33.981962+00', 'Material', '36" Forma Fire Pit - RTF', 'Hardieboard & Steel Frame', NULL, NULL, NULL, NULL, NULL, NULL),
	('ad7e050c-2f1b-4875-ada8-4023be82619e', '2025-01-28 16:25:19.558025+00', '2025-02-06 20:09:33.981962+00', 'Material', '36" Maya Fire Bowl', 'Powder Coat', '36SQPCFO', 305, NULL, NULL, NULL, NULL),
	('b8a73487-c677-46ec-91f9-2ba38ee15d30', '2025-01-28 16:25:19.558025+00', '2025-02-06 20:09:33.981962+00', 'Material', '36" Maya Fire Bowl', 'Stainless Steel', '36SQSSFO', 999, NULL, NULL, NULL, NULL),
	('af62f32b-fb4f-428b-8ed0-618714b141ca', '2025-01-28 16:25:19.558025+00', '2025-02-06 20:09:33.981962+00', 'Material', '36" Maya Fire Bowl', 'Hammered Copper', '103-SQ36', 999, NULL, NULL, NULL, NULL),
	('d179f7ee-d5d2-40f6-b83f-21d78e6d9641', '2025-01-28 16:25:19.558025+00', '2025-02-06 20:09:33.981962+00', 'Material', '36" Maya Fire Bowl', 'GFRC', '36SFO', NULL, NULL, NULL, NULL, NULL),
	('9ba01dac-353a-4a7e-85c6-4386b10b516d', '2025-01-28 16:25:19.558025+00', '2025-02-06 20:09:33.981962+00', 'Material', '36" Maya Fire & Water Bowl', 'Hammered Copper', 'CFW', 826, NULL, NULL, NULL, NULL),
	('069011b3-1bd1-4d28-ade7-290565e6a4a8', '2025-01-28 16:25:19.558025+00', '2025-02-06 20:09:33.981962+00', 'Material', '36" Maya Fire & Water Bowl', 'Stainless Steel', 'QSSFW', 826, NULL, NULL, NULL, NULL),
	('54fede5c-d9c3-426e-aa5d-bdc37d3e0c8c', '2025-01-28 16:25:19.558025+00', '2025-02-06 20:09:33.981962+00', 'Material', '36" Maya Fire & Water Bowl', 'Powder Coat', 'QPCFW', 62, NULL, NULL, NULL, NULL),
	('d059b920-6194-4bf9-a887-6561aa7f5f81', '2025-01-28 16:25:19.558025+00', '2025-02-06 20:09:33.981962+00', 'Material', '36" Maya Fire & Water Bowl', 'GFRC', 'FW', NULL, NULL, NULL, NULL, NULL),
	('3bea820b-1d65-4da2-90a9-e9f6ada7adb6', '2025-01-28 16:25:19.558025+00', '2025-02-06 20:09:33.981962+00', 'Material', '36" Maya Fire & Water Bowl - 4 Way Spill', 'Stainless Steel', 'SS', 24, NULL, NULL, NULL, NULL),
	('13bcbc0c-6a66-4347-9c78-0e7734b71fdb', '2025-01-28 16:25:19.558025+00', '2025-02-06 20:09:33.981962+00', 'Material', '36" Maya Fire & Water Bowl - 4 Way Spill', 'Powder Coat', 'PC', NULL, NULL, NULL, NULL, NULL),
	('ee49274a-b74c-4459-825c-8b06655dc5fd', '2025-01-28 16:25:19.558025+00', '2025-02-06 20:09:33.981962+00', 'Material', '36" Maya Fire & Water Bowl - Gravity Spill', 'Stainless Steel', 'SS36FANDW', NULL, NULL, NULL, NULL, NULL),
	('adf07104-252a-44e2-b9ad-59cbc6301a83', '2025-01-28 16:25:19.558025+00', '2025-02-06 20:09:33.981962+00', 'Material', '36" Maya Fire & Water Bowl - Gravity Spill', 'Hammered Copper', '36FANDW', NULL, NULL, NULL, NULL, NULL),
	('ef2007bd-b533-4a80-9aec-bdea51bfad1c', '2025-01-28 16:25:19.558025+00', '2025-02-06 20:09:33.981962+00', 'Material', '36" Maya Fire & Water Bowl - Gravity Spill', 'Powder Coat', 'PC36FANDW', 83, NULL, NULL, NULL, NULL),
	('b0f8cea0-2d73-4508-aa73-3408efa2a0b1', '2025-01-28 16:25:19.558025+00', '2025-02-06 20:09:33.981962+00', 'Material', '36" Maya Fire & Water Bowl - Wave Scupper', 'Powder Coat', NULL, NULL, NULL, NULL, NULL, NULL),
	('6de8d981-82e0-45bb-9636-dcdf1cb32453', '2025-01-28 16:25:19.558025+00', '2025-02-06 20:09:33.981962+00', 'Material', '36" Maya Fire & Water Bowl - Wide Gravity Spill', 'Stainless Steel', 'MFW36GSS', NULL, NULL, NULL, NULL, NULL),
	('6e95d0c2-16e5-4f3d-9ed8-1b3860cadc2b', '2025-01-28 16:25:19.558025+00', '2025-02-06 20:09:33.981962+00', 'Material', '36" Maya Fire & Water Bowl - Wide Gravity Spill', 'Powder Coat', 'SQ36PCFWWS', 80, NULL, NULL, NULL, NULL),
	('d42f7fb3-6220-46ec-94b4-4859bead901a', '2025-01-28 16:25:19.558025+00', '2025-02-06 20:09:33.981962+00', 'Material', '36" Maya Fire & Water Bowl - Wide Spill', 'GFRC', NULL, NULL, NULL, NULL, NULL, NULL),
	('bef4c1e4-d151-4ac3-8475-6fe172ea1985', '2025-01-28 16:25:19.558025+00', '2025-02-06 20:09:33.981962+00', 'Material', '36" Maya Planter Bowl', 'Powder Coat', 'QPCPO', 709, NULL, NULL, NULL, NULL),
	('023fecac-16a4-4594-9264-e439fac2c82d', '2025-01-28 16:25:19.558025+00', '2025-02-06 20:09:33.981962+00', 'Material', '36" Maya Planter Bowl', 'Hammered Copper', 'CPO', 646, NULL, NULL, NULL, NULL),
	('d9b90146-b015-4ba8-8dc1-b3d245b124a5', '2025-01-28 16:25:19.558025+00', '2025-02-06 20:09:33.981962+00', 'Material', '36" Maya Planter Bowl', 'Stainless Steel', 'QSSPO', 646, NULL, NULL, NULL, NULL),
	('2ca45955-f6c8-4aba-8ce1-a24831fe5e32', '2025-01-28 16:25:19.558025+00', '2025-02-06 20:09:33.981962+00', 'Material', '36" Maya Planter Bowl', 'GFRC', 'P', NULL, NULL, NULL, NULL, NULL),
	('371b440c-c25c-49a7-a3ea-8f8cf7f3e2df', '2025-01-28 16:25:19.558025+00', '2025-02-06 20:09:33.981962+00', 'Material', '36" Maya Planter & Water Bowl', 'GFRC', 'PW', NULL, NULL, NULL, NULL, NULL),
	('9ab9a4a0-d589-4af9-9643-249f32a199e7', '2025-01-28 16:25:19.558025+00', '2025-02-06 20:09:33.981962+00', 'Material', '36" Maya Planter & Water Bowl', 'Powder Coat', 'QPCPW', 197, NULL, NULL, NULL, NULL),
	('44b9a4c3-fc1e-4c34-a090-6be8399ce3cd', '2025-01-28 16:25:19.558025+00', '2025-02-06 20:09:33.981962+00', 'Material', '36" Maya Water Bowl', 'Stainless Steel', 'QSSWO', 852, NULL, NULL, NULL, NULL),
	('d06a16d1-ee38-4078-925e-443ce0ab4e67', '2025-01-28 18:29:35.210798+00', '2025-02-06 20:09:33.981962+00', 'Material', '24" Avalon Fire Bowl', 'Stainless Steel', '24AVSSF', 552, NULL, NULL, NULL, NULL),
	('7c628166-bc1b-42ed-a534-e5fed6172715', '2025-01-28 18:29:35.210798+00', '2025-02-06 20:09:33.981962+00', 'Material', '24" Avalon Fire Bowl', 'Hammered Copper', '24AVCPF', 552, NULL, NULL, NULL, NULL),
	('2dfa5522-df24-41b7-8716-f321e4237553', '2025-01-28 18:29:35.210798+00', '2025-02-06 20:09:33.981962+00', 'Material', '24" Avalon Fire Bowl', 'Powder Coat', '24AVPCF', 773, NULL, NULL, NULL, NULL),
	('05c0e165-5857-45b6-ad7a-1010734084e3', '2025-01-28 18:29:35.210798+00', '2025-02-06 20:09:33.981962+00', 'Material', '24" Avalon Fire Bowl', 'GFRC', 'AVLFO24', NULL, NULL, NULL, NULL, NULL),
	('c08818ab-cfda-4722-8255-54334fb584a6', '2025-01-28 18:29:35.210798+00', '2025-02-06 20:09:33.981962+00', 'Material', '24" Avalon Fire & Water Bowl - Twin Spill', 'Hammered Copper', 'CPFWTS', 130, NULL, NULL, NULL, NULL),
	('86dba938-7298-49d5-bc3c-a4680dd084d2', '2025-01-28 18:29:35.210798+00', '2025-02-06 20:09:33.981962+00', 'Material', '24" Avalon Fire & Water Bowl - Twin Spill', 'Stainless Steel', 'SSFWTS', 17, NULL, NULL, NULL, NULL),
	('ef4bf18e-e3c5-4772-8d32-5cdde5d16275', '2025-01-28 18:29:35.210798+00', '2025-02-06 20:09:33.981962+00', 'Material', '24" Avalon Fire & Water Bowl - Twin Spill', 'Powder Coat', 'PCFWTS', NULL, NULL, NULL, NULL, NULL),
	('9ceafd11-7bd8-473a-9655-08d586e96bc9', '2025-01-28 18:29:35.210798+00', '2025-02-06 20:09:33.981962+00', 'Material', '24" Avalon Fire & Water Bowl - Wide Spill', 'Hammered Copper', 'CPFWWS', NULL, NULL, NULL, NULL, NULL),
	('02074909-3f0d-44c4-a59f-fe67bb4de9f0', '2025-01-28 18:29:35.210798+00', '2025-02-06 20:09:33.981962+00', 'Material', '24" Avalon Fire & Water Bowl - Wide Spill', 'Stainless Steel', 'SSFWWS', 135, NULL, NULL, NULL, NULL),
	('5e4f6b1b-5d61-4218-ad9a-2a430ebcde3a', '2025-01-28 18:29:35.210798+00', '2025-02-06 20:09:33.981962+00', 'Material', '24" Avalon Fire & Water Bowl - Wide Spill', 'Powder Coat', 'PCFWWS', 213, NULL, NULL, NULL, NULL),
	('e7a0283a-3f16-40a4-897a-d09eb83d437b', '2025-01-28 16:25:19.558025+00', '2025-02-06 20:09:33.981962+00', 'Material', '36" Maya Fire & Water Bowl - Wide Gravity Spill', 'Hammered Copper', 'SQ36FWWS', NULL, NULL, NULL, NULL, NULL),
	('0ef44d5d-50f6-4122-af04-65b63a9bdaaa', '2025-01-28 20:57:49.620948+00', '2025-02-06 20:09:33.981962+00', 'Material', '36" Avalon Fire Bowl', 'Powder Coat', '36AVPCF', 1020, NULL, NULL, NULL, NULL),
	('1ab3d309-f307-405b-a570-9406a5d9104c', '2025-01-28 20:57:49.620948+00', '2025-02-06 20:09:33.981962+00', 'Material', '36" Avalon Fire Bowl', 'Hammered Copper', '36AVCPF', 1628, NULL, NULL, NULL, NULL),
	('f9a5ebb4-828d-49e7-bc8a-985b79dbc8be', '2025-01-28 20:57:49.620948+00', '2025-02-06 20:09:33.981962+00', 'Material', '36" Avalon Fire Bowl', 'GFRC', 'AVLFO36', NULL, NULL, NULL, NULL, NULL),
	('043879cc-6b67-4ada-8123-3400ced35da6', '2025-01-28 20:57:49.620948+00', '2025-02-06 20:09:33.981962+00', 'Material', '36" Avalon Fire Bowl', 'Stainless Steel', '36AVSSF', 1628, NULL, NULL, NULL, NULL),
	('af6bd511-8300-412f-9083-ade71d148d20', '2025-01-28 20:57:49.620948+00', '2025-02-06 20:09:33.981962+00', 'Material', '36" Avalon Fire & Water Bowl', 'Stainless Steel', '36AVSSFW', 1459, NULL, NULL, NULL, NULL),
	('a9b2f0c5-93c9-4425-be5e-3876ea9a9158', '2025-01-28 20:57:49.620948+00', '2025-02-06 20:09:33.981962+00', 'Material', '36" Avalon Fire & Water Bowl', 'Powder Coat', '36AVPCFW', 1256, NULL, NULL, NULL, NULL),
	('fd3d7093-3a72-480a-a480-38d5a4c9d558', '2025-01-28 20:57:49.620948+00', '2025-02-06 20:09:33.981962+00', 'Material', '36" Avalon Fire & Water Bowl', 'Hammered Copper', '36AVCPFW', 1459, NULL, NULL, NULL, NULL),
	('be9cfc8b-646c-4277-b016-411fb6ff634c', '2025-01-28 20:57:49.620948+00', '2025-02-06 20:09:33.981962+00', 'Material', '36" Avalon Fire & Water Bowl - Twin Spill', 'Hammered Copper', 'CPFWTS', 247, NULL, NULL, NULL, NULL),
	('eea20982-3f84-4ac3-a533-6d726dc980e8', '2025-01-28 20:57:49.620948+00', '2025-02-06 20:09:33.981962+00', 'Material', '36" Avalon Fire & Water Bowl - Twin Spill', 'Stainless Steel', 'SSFWTS', 112, NULL, NULL, NULL, NULL),
	('d2449cf5-79b6-4097-9050-101219eb1a32', '2025-01-28 20:57:49.620948+00', '2025-02-06 20:09:33.981962+00', 'Material', '36" Avalon Fire & Water Bowl - Twin Spill', 'Powder Coat', 'PCFWTS', NULL, NULL, NULL, NULL, NULL),
	('a6f27ae7-f9b7-4980-9b06-8274c979c8cf', '2025-01-28 20:57:49.620948+00', '2025-02-06 20:09:33.981962+00', 'Material', '36" Avalon Fire & Water Bowl - Wide Spill', 'Powder Coat', 'PCFWWS', NULL, NULL, NULL, NULL, NULL),
	('9e8ac341-81a9-46ae-b186-00f120a66252', '2025-01-28 20:57:49.620948+00', '2025-02-06 20:09:33.981962+00', 'Material', '36" Avalon Fire & Water Bowl - Wide Spill', 'Hammered Copper', 'CPFWWS', 275, NULL, NULL, NULL, NULL),
	('593d498f-47e9-4b78-8d16-4436d09e7238', '2025-01-28 20:57:49.620948+00', '2025-02-06 20:09:33.981962+00', 'Material', '36" Avalon Fire & Water Bowl - Wide Spill', 'Stainless Steel', 'SSFWWS', 140, NULL, NULL, NULL, NULL),
	('1d0b4b2b-eec3-4d39-bf04-9ca3a9af9130', '2025-01-28 16:25:19.558025+00', '2025-02-06 20:09:33.981962+00', 'Material', '36" Maya Planter & Water Bowl', 'Stainless Steel', 'QSSPW', 281, NULL, NULL, NULL, NULL),
	('656dcb01-2ee4-40a5-b195-f2b13586a403', '2025-01-28 16:25:19.558025+00', '2025-02-06 20:09:33.981962+00', 'Material', '36" Maya Planter & Water Bowl', 'Hammered Copper', 'CPW', 203, NULL, NULL, NULL, NULL),
	('bc593323-0ff1-4d9a-81d6-a1abc8a632b5', '2025-01-28 16:25:19.558025+00', '2025-02-06 20:09:33.981962+00', 'Material', '36" Maya Water Bowl', 'GFRC', 'WO', NULL, NULL, NULL, NULL, NULL),
	('e6fa7b0d-3b07-400e-ba86-676ade47900f', '2025-01-28 16:25:19.558025+00', '2025-02-06 20:09:33.981962+00', 'Material', '36" Maya Water Bowl', 'Powder Coat', 'QPCWO', 589, NULL, NULL, NULL, NULL),
	('45ae8fad-75eb-4f0f-b515-8863c435c704', '2025-01-28 16:25:19.558025+00', '2025-02-06 20:09:33.981962+00', 'Material', '36" Maya Water Bowl', 'Hammered Copper', 'CW', 852, NULL, NULL, NULL, NULL),
	('b941ac99-daf1-4e1d-a4f1-a72d1193db1a', '2025-01-28 16:25:19.558025+00', '2025-02-06 20:09:33.981962+00', 'Material', '36" Maya Water Bowl - Wide Spillway', 'Stainless Steel', 'QSSWS', 24, NULL, NULL, NULL, NULL),
	('cba4b2b1-2d2a-4f0e-abee-5b03a9340e15', '2025-01-28 16:25:19.558025+00', '2025-02-06 20:09:33.981962+00', 'Material', '36" Maya Water Bowl - Wide Spillway', 'Powder Coat', 'QPCWS', NULL, NULL, NULL, NULL, NULL),
	('131a1a63-6720-4cf5-a748-becec2c8e351', '2025-01-28 16:25:19.558025+00', '2025-02-06 20:09:33.981962+00', 'Material', '36" Maya Water Bowl - Wide Spillway', 'Hammered Copper', 'CXW', 24, NULL, NULL, NULL, NULL),
	('42cbbf1f-1388-4e71-a3cc-39f139b0f616', '2025-01-29 01:06:39.793179+00', '2025-02-06 20:09:33.981962+00', 'Material', '36" Nile Fire & Water Bowl', 'Stainless Steel', 'SSF', 35, NULL, NULL, NULL, NULL),
	('3819ad2d-3f1c-4983-a35e-bf95f781f421', '2025-01-29 01:06:39.793179+00', '2025-02-06 20:09:33.981962+00', 'Material', '36" Nile Fire & Water Bowl', 'Powder Coat', 'PCF', NULL, NULL, NULL, NULL, NULL),
	('25d3dce5-5382-465c-8675-b98b69f77438', '2025-01-29 01:06:39.793179+00', '2025-02-06 20:09:33.981962+00', 'Material', '36" Nile Fire & Water Bowl', 'Hammered Copper', 'CPF', 35, NULL, NULL, NULL, NULL),
	('8bbb9430-57a9-4893-b088-9b7dee39f40b', '2025-01-31 00:53:51.528745+00', '2025-02-06 20:09:33.981962+00', 'Material', '36" Quad Fire Pit', 'Hammered Copper', 'CPR36', 1189, NULL, NULL, NULL, NULL),
	('27ddf97d-29fb-47e3-8f32-af0d01512347', '2025-01-31 00:53:51.528745+00', '2025-02-06 20:09:33.981962+00', 'Material', '36" Quad Fire Pit', 'GFRC', '36', NULL, NULL, NULL, NULL, NULL),
	('2c23e577-b493-4790-968b-b8d0fc2adb57', '2025-01-31 00:53:51.528745+00', '2025-02-06 20:09:33.981962+00', 'Material', '36" Quad Fire Pit', 'Corten Steel', 'CS36', 110, NULL, NULL, NULL, NULL),
	('6e0bcb89-42c2-470a-b0e6-6dd9f587460d', '2025-01-31 00:53:51.528745+00', '2025-02-06 20:09:33.981962+00', 'Material', '36" Quad Fire Pit', 'Stainless Steel', 'SS36', 862, NULL, NULL, NULL, NULL),
	('bfd5a05b-71db-4648-b04b-86f78eb40b71', '2025-01-31 00:53:51.528745+00', '2025-02-06 20:09:33.981962+00', 'Material', '36" Quad Fire Pit', 'Powder Coat', 'PC36', 277, NULL, NULL, NULL, NULL),
	('22d58ed8-f70b-46de-9016-c3e5a0da68b6', '2025-01-31 00:53:51.528745+00', '2025-02-06 20:09:33.981962+00', 'Material', '36" Quad Fire Pit - RTF', 'Hardieboard & Steel Frame', NULL, NULL, NULL, NULL, NULL, NULL),
	('b319b0d3-3a52-4497-8549-c403207514ac', '2025-01-29 01:06:39.793179+00', '2025-02-06 20:09:33.981962+00', 'Material', '36" Roma Fire Bowl', 'GFRC', NULL, NULL, NULL, NULL, NULL, NULL),
	('cca399cd-2d81-4dcf-8444-e1d70b9adc33', '2025-01-29 01:06:39.793179+00', '2025-02-06 20:09:33.981962+00', 'Material', '36" Roma Fire & Water Bowl', 'GFRC', NULL, NULL, NULL, NULL, NULL, NULL),
	('a83ba584-7e09-4963-a733-0b3f01586f48', '2025-01-29 01:06:39.793179+00', '2025-02-06 20:09:33.981962+00', 'Material', '36" Roma Planter Bowl', 'GFRC', NULL, NULL, NULL, NULL, NULL, NULL),
	('1d4a1d36-840b-41f8-a944-8671fcb6d97b', '2025-01-29 01:06:39.793179+00', '2025-02-06 20:09:33.981962+00', 'Material', '36" Roma Planter & Water Bowl', 'GFRC', NULL, NULL, NULL, NULL, NULL, NULL),
	('7b2ff8e2-71c6-403d-b98e-3be1c9fad7da', '2025-01-29 01:06:39.793179+00', '2025-02-06 20:09:33.981962+00', 'Material', '36" Roma Water Bowl', 'GFRC', NULL, NULL, NULL, NULL, NULL, NULL),
	('38be37c6-1f6d-42f6-a303-a09417d335b6', '2025-01-27 17:42:41.064712+00', '2025-02-06 20:09:33.981962+00', 'Material', '36" Sedona Fire Bowl', 'Powder Coat', NULL, NULL, NULL, NULL, NULL, NULL),
	('078de14d-2ab0-4b57-966f-b3a96dba555d', '2025-01-27 17:42:41.064712+00', '2025-02-06 20:09:33.981962+00', 'Material', '36" Sedona Fire Bowl with Rounded Legs', 'Powder Coat', NULL, NULL, NULL, NULL, NULL, NULL),
	('b5180696-0b29-456e-8b4d-541b8bd6dc0b', '2025-01-27 17:42:41.064712+00', '2025-02-06 20:09:33.981962+00', 'Material', '36" Sedona Fire & Water Bowl', 'Powder Coat', NULL, NULL, NULL, NULL, NULL, NULL),
	('2882a6b1-3e88-402f-a3ad-cba1df5f3cf5', '2025-01-27 17:42:41.064712+00', '2025-02-06 20:09:33.981962+00', 'Material', '36" Sedona Planter Bowl', 'Powder Coat', NULL, NULL, NULL, NULL, NULL, NULL),
	('8132a93f-c895-44a3-8c60-85382b03a3bd', '2025-01-27 17:42:41.064712+00', '2025-02-06 20:09:33.981962+00', 'Material', '36" Sedona Planter & Water Bowl', 'Powder Coat', NULL, NULL, NULL, NULL, NULL, NULL),
	('40b4d01b-7e4f-4f2e-aa48-52c257c779c8', '2025-01-27 17:42:41.064712+00', '2025-02-06 20:09:33.981962+00', 'Material', '36" Sedona Water Bowl', 'Powder Coat', NULL, NULL, NULL, NULL, NULL, NULL),
	('192288d7-d3ac-4364-99df-1505f20e2125', '2025-01-28 20:57:49.620948+00', '2025-02-06 20:09:33.981962+00', 'Material', '36" x 36" Avalon Tall Fire Pit', 'Corten Steel', 'CS3636', NULL, NULL, NULL, NULL, NULL),
	('237e98bd-e491-4a7b-b4b8-1cb292bfdbea', '2025-01-28 20:57:49.620948+00', '2025-02-06 20:09:33.981962+00', 'Material', '36" x 36" Avalon Tall Fire Pit', 'Stainless Steel', 'SS3636', 337, NULL, NULL, NULL, NULL),
	('6e58ddd5-5bd2-486e-92b3-a0554bbac59a', '2025-01-28 20:57:49.620948+00', '2025-02-06 20:09:33.981962+00', 'Material', '36" x 36" Avalon Tall Fire Pit', 'Hammered Copper', 'CPR3636', 1749, NULL, NULL, NULL, NULL),
	('1ac0e8ec-3d70-44d6-93a1-93e22be1db4f', '2025-01-29 01:06:39.793179+00', '2025-02-06 20:09:33.981962+00', 'Material', '46" Sierra Planter - 20" Tall', 'Corten Steel', NULL, NULL, NULL, NULL, NULL, NULL),
	('17fa66f5-b83f-44be-b975-664620c4a761', '2025-01-28 20:57:49.620948+00', '2025-02-06 20:09:33.981962+00', 'Material', '36" x 36" Avalon Tall Fire Pit', 'Powder Coat', 'PC3636', 112, NULL, NULL, NULL, NULL),
	('a5b5df40-d5c5-43ad-8cca-4a89d1045d66', '2025-01-27 18:50:53.018779+00', '2025-02-06 20:09:33.981962+00', 'Material', '38" Luna Fire Bowl', 'GFRC', NULL, NULL, NULL, NULL, NULL, NULL),
	('2bc7b629-df52-4b7d-9dba-507e0ae3ad1a', '2025-01-27 18:50:53.018779+00', '2025-02-06 20:09:33.981962+00', 'Material', '38" Luna Fire Pit', 'GFRC', NULL, NULL, NULL, NULL, NULL, NULL),
	('e9fcc791-b37b-4522-9e2c-cbd3aaf29a01', '2025-01-27 18:50:53.018779+00', '2025-02-06 20:09:33.981962+00', 'Material', '38" Luna Fire & Water Bowl', 'GFRC', NULL, NULL, NULL, NULL, NULL, NULL),
	('f53ffc97-b54a-4796-ad30-f6716890adba', '2025-01-27 18:50:53.018779+00', '2025-02-06 20:09:33.981962+00', 'Material', '38" Luna Planter Bowl', 'GFRC', NULL, NULL, NULL, NULL, NULL, NULL),
	('8dd6140c-b95a-42fc-ab4f-1a2b52c8b834', '2025-01-27 18:50:53.018779+00', '2025-02-06 20:09:33.981962+00', 'Material', '38" Luna Planter & Water Bowl', 'GFRC', NULL, NULL, NULL, NULL, NULL, NULL),
	('894c8950-b616-45f1-ad72-13a0c1caa415', '2025-01-27 18:50:53.018779+00', '2025-02-06 20:09:33.981962+00', 'Material', '38" Luna Water Bowl', 'GFRC', NULL, NULL, NULL, NULL, NULL, NULL),
	('53293f04-326d-4ee3-a488-abbb0700e541', '2025-01-27 17:42:41.064712+00', '2025-02-06 20:09:33.981962+00', 'Material', '38" Sedona Fire & Water Bowl - 360° Spill', 'GFRC', NULL, NULL, NULL, NULL, NULL, NULL),
	('babe1f41-fd3a-4bfd-b053-dbe46f37106f', '2025-01-28 22:27:41.897719+00', '2025-02-06 20:09:33.981962+00', 'Material', '42" Avalon Fire Pit', 'GFRC', NULL, NULL, NULL, NULL, NULL, NULL),
	('7808abc8-8f67-4de6-89a5-4d606d28177d', '2025-01-29 01:06:39.793179+00', '2025-02-06 20:09:33.981962+00', 'Material', '42" Florence Fire Pit - 12" Tall', 'GFRC', NULL, NULL, NULL, NULL, NULL, NULL),
	('eb5555b0-a298-4fbc-9908-99b80ffbd71f', '2025-01-29 01:06:39.793179+00', '2025-02-06 20:09:33.981962+00', 'Material', '42" Florence Fire Pit - 24" Tall', 'GFRC', NULL, NULL, NULL, NULL, NULL, NULL),
	('7e1bc8cf-5111-47be-9ca2-a8d39907b995', '2025-02-01 20:06:25.784914+00', '2025-02-06 20:09:33.981962+00', 'Material', '42" Forma Fire Pit', 'Stainless Steel', '42SQSS', 825, NULL, NULL, NULL, NULL),
	('625c739d-e3b3-4d03-a3d4-d05d0e6e7482', '2025-02-01 20:06:25.784914+00', '2025-02-06 20:09:33.981962+00', 'Material', '42" Forma Fire Pit', 'Hammered Copper', '42SQCPR', 1041, NULL, NULL, NULL, NULL),
	('80c7fab6-ef10-4ce4-9717-1b782edefd24', '2025-02-01 20:06:25.784914+00', '2025-02-06 20:09:33.981962+00', 'Material', '42" Forma Fire Pit', 'Corten Steel', '42SQCS', NULL, NULL, NULL, NULL, NULL),
	('62c35f9c-c0a7-4d80-a616-f0f0b3077bdb', '2025-02-01 20:06:25.784914+00', '2025-02-06 20:09:33.981962+00', 'Material', '42" Forma Fire Pit', 'Powder Coat', 'PCSQ', 120, NULL, NULL, NULL, NULL),
	('52119c72-c370-418a-9b9a-05720c8c8bc2', '2025-01-31 00:53:51.528745+00', '2025-02-06 20:09:33.981962+00', 'Material', '42" Quad Fire Pit', 'Hammered Copper', 'CPR42', 1707, NULL, NULL, NULL, NULL),
	('5a2d4f8b-87d7-4141-96f6-3740e9493229', '2025-01-31 00:53:51.528745+00', '2025-02-06 20:09:33.981962+00', 'Material', '42" Quad Fire Pit', 'Corten Steel', 'CS42', 436, NULL, NULL, NULL, NULL),
	('6fc0b8b8-13ab-464a-bb91-abf1bb0f34bc', '2025-01-31 00:53:51.528745+00', '2025-02-06 20:09:33.981962+00', 'Material', '42" Quad Fire Pit', 'Powder Coat', 'PC42', 752, NULL, NULL, NULL, NULL),
	('fb1be780-7f87-4caa-9ac5-4a81ee82cdeb', '2025-01-31 00:53:51.528745+00', '2025-02-06 20:09:33.981962+00', 'Material', '42" Quad Fire Pit', 'GFRC', '42', NULL, NULL, NULL, NULL, NULL),
	('b591ba99-cbff-4ace-809d-a16205c49ab0', '2025-01-31 00:53:51.528745+00', '2025-02-06 20:09:33.981962+00', 'Material', '42" Quad Fire Pit', 'Stainless Steel', 'SS42', 1582, NULL, NULL, NULL, NULL),
	('007be0fc-0a37-4462-a5f3-df51b6b80870', '2025-01-29 01:06:39.793179+00', '2025-02-06 20:09:33.981962+00', 'Material', '46" Florence Fire Pit - 20" Tall', 'GFRC', NULL, NULL, NULL, NULL, NULL, NULL),
	('e56df50b-682f-430b-9340-5015907de3e9', '2025-01-27 17:42:41.064712+00', '2025-02-06 20:09:33.981962+00', 'Material', '46" Sedona Fire & Water Pit - 4 Way Spill', 'GFRC', NULL, NULL, NULL, NULL, NULL, NULL),
	('957b7b0c-3409-4f5d-9c55-e1bf53f1c466', '2025-01-29 01:06:39.793179+00', '2025-02-06 20:09:33.981962+00', 'Material', '46" Sierra Planter - 30" Tall', 'Corten Steel', NULL, NULL, NULL, NULL, NULL, NULL),
	('20bcf61e-3ed5-4abd-8fc1-d5257cc29592', '2025-02-04 23:50:13.379228+00', '2025-02-06 20:09:33.981962+00', 'Material', '48" Alameda Fire Table Black & White', 'BW Powdercoat', NULL, NULL, NULL, NULL, NULL, NULL),
	('2be3a8bf-0b7f-40e8-b7ee-1ae458f11377', '2025-01-31 00:53:51.528745+00', '2025-02-06 20:09:33.981962+00', 'Material', '48" Cabo Square Fire Pit', 'Hammered Copper', 'CPR', 1251, NULL, NULL, NULL, NULL),
	('c2a0749f-5de2-49ff-ac53-4a2fd7427c1a', '2025-01-31 00:53:51.528745+00', '2025-02-06 20:09:33.981962+00', 'Material', '48" Cabo Square Fire Pit', 'GFRC', NULL, NULL, NULL, NULL, NULL, NULL),
	('f58d209b-2f15-4836-bde3-219fd59cb8fa', '2025-01-31 00:53:51.528745+00', '2025-02-06 20:09:33.981962+00', 'Material', '48" Cabo Square Fire Pit', 'Stainless Steel', 'SS', 1083, NULL, NULL, NULL, NULL),
	('c2a47409-fcb7-482e-95d0-0797bbab55b5', '2025-01-31 00:53:51.528745+00', '2025-02-06 20:09:33.981962+00', 'Material', '48" Cabo Square Fire Pit', 'Corten Steel', 'CS', 60, NULL, NULL, NULL, NULL),
	('87c0a1cc-d520-4480-8728-8ae3176449cd', '2025-02-01 20:06:25.784914+00', '2025-02-06 20:09:33.981962+00', 'Material', '48" Catalina Fire Pit', 'Wood Grain', NULL, NULL, NULL, NULL, NULL, NULL),
	('9f4cb0a9-d7f8-4661-9465-ea63257d613b', '2025-01-27 17:42:41.064712+00', '2025-02-06 20:09:33.981962+00', 'Material', '48" Cazo 360° Fire & Water Bowl', 'GFRC', NULL, NULL, NULL, NULL, NULL, NULL),
	('4860d5c1-a237-495c-a527-260e27de4cb7', '2025-01-27 17:42:41.064712+00', '2025-02-06 20:09:33.981962+00', 'Material', '48" Cazo Fire Pit - Narrow Ledge', 'GFRC', 'CZNL48', NULL, NULL, NULL, NULL, NULL),
	('c4902e67-3c7d-4585-9e08-307a32ff7dad', '2025-01-27 17:42:41.064712+00', '2025-02-06 20:09:33.981962+00', 'Material', '48" Cazo Fire Pit - Narrow Ledge', 'Stainless Steel', 'SS48FP', 645, NULL, NULL, NULL, NULL),
	('fa0348f4-ca2b-4fdf-bf40-c598bb2b6027', '2025-01-27 17:42:41.064712+00', '2025-02-06 20:09:33.981962+00', 'Material', '48" Cazo Fire Pit - Narrow Ledge', 'Powder Coat', 'CZNLPC48', 45, NULL, NULL, NULL, NULL),
	('6207bf8f-09d9-4294-b1dc-bfc9612a2e68', '2025-01-27 17:42:41.064712+00', '2025-02-06 20:09:33.981962+00', 'Material', '48" Cazo Fire Pit - Narrow Ledge', 'Hammered Copper', 'RHC48', 734, NULL, NULL, NULL, NULL),
	('5507d8d1-a3f7-49b8-a063-7f98c5bee710', '2025-01-27 17:42:41.064712+00', '2025-02-06 20:09:33.981962+00', 'Material', '48" Cazo Fire Pit - Wide Ledge', 'Hammered Copper', 'RS48', 1115, NULL, NULL, NULL, NULL),
	('1c5fc489-1e10-46dd-8a53-c512d6ec4aa2', '2025-01-27 17:42:41.064712+00', '2025-02-06 20:09:33.981962+00', 'Material', '48" Cazo Fire Pit - Wide Ledge', 'Powder Coat', 'CZPC48', 83, NULL, NULL, NULL, NULL),
	('a07def3e-7e2e-4c01-a3bd-fd41c44e8b0d', '2025-01-27 17:42:41.064712+00', '2025-02-06 20:09:33.981962+00', 'Material', '48" Cazo Fire Pit - Wide Ledge', 'GFRC', 'CZ48', NULL, NULL, NULL, NULL, NULL),
	('2e45ddb8-00c2-4a41-bac4-f9f8ab0def5c', '2025-01-27 17:42:41.064712+00', '2025-02-06 20:09:33.981962+00', 'Material', '48" Cazo Fire & Water Bowl', 'GFRC', NULL, NULL, NULL, NULL, NULL, NULL),
	('53370261-aec5-4161-a287-8c9377d28e46', '2025-01-27 17:42:41.064712+00', '2025-02-06 20:09:33.981962+00', 'Material', '48" Cazo Planter Bowl', 'GFRC', NULL, NULL, NULL, NULL, NULL, NULL),
	('750e7751-92bf-469d-8abd-97f424c018ed', '2025-01-27 17:42:41.064712+00', '2025-02-06 20:09:33.981962+00', 'Material', '48" Cazo Planter & Water Bowl', 'GFRC', NULL, NULL, NULL, NULL, NULL, NULL),
	('8a06de95-a45d-4d8c-bf78-43acd1be081c', '2025-01-27 17:42:41.064712+00', '2025-02-06 20:09:33.981962+00', 'Material', '48" Cazo Water Bowl', 'GFRC', NULL, NULL, NULL, NULL, NULL, NULL),
	('e403aa44-488f-4ea6-ae79-3d7cfd886bdc', '2025-01-31 00:53:51.528745+00', '2025-02-06 20:09:33.981962+00', 'Material', '48" Eaves Fire Pit', 'Stainless Steel', 'SS48', 171, NULL, NULL, NULL, NULL),
	('ce1d9da4-fb40-43c3-937e-f6793ddc3a8f', '2025-01-31 00:53:51.528745+00', '2025-02-06 20:09:33.981962+00', 'Material', '48" Eaves Fire Pit', 'Hammered Copper', 'CPR48', 388, NULL, NULL, NULL, NULL),
	('16d0bf86-1c6e-4a0f-9506-f49d34a45f4a', '2025-02-01 20:06:25.784914+00', '2025-02-06 20:09:33.981962+00', 'Material', '48" Forma Fire Pit', 'Powder Coat', 'PCSQ', 161, NULL, NULL, NULL, NULL),
	('e90cd9a8-a1d3-4def-b294-1d8d7760a487', '2025-02-01 20:06:25.784914+00', '2025-02-06 20:09:33.981962+00', 'Material', '48" Forma Fire Pit', 'Stainless Steel', '48SQSS', 857, NULL, NULL, NULL, NULL),
	('bc73e18f-b1c6-43e5-9d82-87df760112e4', '2025-01-29 01:06:39.793179+00', '2025-02-06 20:09:33.981962+00', 'Material', '20" Moderna Planter', 'Corten Steel', NULL, NULL, NULL, NULL, NULL, NULL),
	('b453976d-d77d-48ee-8072-18cf10bf737b', '2025-01-31 00:53:51.528745+00', '2025-02-06 20:09:33.981962+00', 'Material', '48" Cabo Square Fire Pit', 'Powder Coat', 'PC', 244, NULL, NULL, NULL, NULL),
	('61b0287f-df89-44f8-adca-df89973e27ea', '2025-01-27 17:42:41.064712+00', '2025-02-06 20:09:33.981962+00', 'Material', '48" Cazo Fire Bowl', 'GFRC', NULL, NULL, NULL, NULL, NULL, NULL),
	('929939cb-9295-4bf2-9925-7ddc36050e0a', '2025-01-31 00:53:51.528745+00', '2025-02-06 20:09:33.981962+00', 'Material', '48" Eaves Fire Pit', 'Corten Steel', 'CS48', NULL, NULL, NULL, NULL, NULL),
	('8d5bff50-2bb5-4780-a1d0-73acfd838495', '2025-01-31 00:53:51.528745+00', '2025-02-06 20:09:33.981962+00', 'Material', '48" Eaves Fire Pit', 'Powder Coat', 'PC48', 109, NULL, NULL, NULL, NULL),
	('38e742cc-6dfd-477c-b8b8-e2bea79a7bed', '2025-01-30 01:23:51.448608+00', '2025-02-06 20:09:33.981962+00', 'Material', '48" Florence Fire Pit - RTF', 'Hardieboard & Steel Frame', NULL, NULL, NULL, NULL, NULL, NULL),
	('ff2bfe4c-2e21-477e-9dc3-3eb5777da216', '2025-02-01 20:06:25.784914+00', '2025-02-06 20:09:33.981962+00', 'Material', '48" Forma Fire Pit', 'Corten Steel', '48SQCS', NULL, NULL, NULL, NULL, NULL),
	('44b3c0d4-a420-4b04-a0ed-274d794ec0b3', '2025-02-01 20:06:25.784914+00', '2025-02-06 20:09:33.981962+00', 'Material', '48" Forma Fire Pit', 'Hammered Copper', '48SQCPR', 1384, NULL, NULL, NULL, NULL),
	('57ece8c6-be40-41de-862b-a27e640b06fb', '2025-02-01 20:06:25.784914+00', '2025-02-06 20:09:33.981962+00', 'Material', '48" Forma Fire Pit - RTF', 'Hardieboard & Steel Frame', NULL, NULL, NULL, NULL, NULL, NULL),
	('81343339-ec54-4661-94fa-c2e8dc3ea21e', '2025-02-04 23:50:13.379228+00', '2025-02-06 20:09:33.981962+00', 'Material', '48" La Jolla Fire Pit', 'Hammered Copper', 'CPR48', 1908, NULL, NULL, NULL, NULL),
	('6991881f-48cf-4201-b0b4-288daad7debf', '2025-02-04 23:50:13.379228+00', '2025-02-06 20:09:33.981962+00', 'Material', '48" La Jolla Fire Pit', 'Powder Coat', 'PC48', 233, NULL, NULL, NULL, NULL),
	('8c442613-1a75-402c-bb95-e1b495052935', '2025-02-04 23:50:13.379228+00', '2025-02-06 20:09:33.981962+00', 'Material', '48" La Jolla Fire Pit', 'Stainless Steel', 'SS48', 477, NULL, NULL, NULL, NULL),
	('b08e85ac-a049-48f5-a237-e978e9e868c5', '2025-02-04 23:50:13.379228+00', '2025-02-06 20:09:33.981962+00', 'Material', '48" La Jolla Fire Pit', 'Corten Steel', 'CS48', NULL, NULL, NULL, NULL, NULL),
	('5d112289-2d4d-4436-a6cf-b1a66646ac12', '2025-02-06 01:15:35.129157+00', '2025-02-06 20:09:33.981962+00', 'Material', '48" Mabel Fire Table Black & White', 'BW Powdercoat', NULL, NULL, NULL, NULL, NULL, NULL),
	('40fe610b-8c94-486c-babe-ee12f052c61a', '2025-02-06 01:15:35.129157+00', '2025-02-06 20:09:33.981962+00', 'Material', '48" Mabel Fire Table - RTF - 16" Tall', 'Hardieboard & Steel Frame', NULL, NULL, NULL, NULL, NULL, NULL),
	('e1abb784-2030-4cdb-a261-2567d5d84e61', '2025-02-06 01:15:35.129157+00', '2025-02-06 20:09:33.981962+00', 'Material', '48" Mabel Fire Table - RTF - 24" Tall', 'Hardieboard & Steel Frame', NULL, NULL, NULL, NULL, NULL, NULL),
	('acf8b603-671a-40c0-8dc1-cf7b485911f6', '2025-02-01 20:06:25.784914+00', '2025-02-06 20:09:33.981962+00', 'Material', '48" Mesa Fire Pit', 'Hammered Copper', 'CPRTT4824', 2062, NULL, NULL, NULL, NULL),
	('76ff630d-19bc-4dae-aecd-498212b6f345', '2025-02-01 20:06:25.784914+00', '2025-02-06 20:09:33.981962+00', 'Material', '48" Mesa Fire Pit', 'Powder Coat', 'PCTT4824', 200, NULL, NULL, NULL, NULL),
	('cc91afae-625f-48c1-99bb-e16d1f75449a', '2025-02-01 20:06:25.784914+00', '2025-02-06 20:09:33.981962+00', 'Material', '48" Mesa Fire Pit', 'Stainless Steel', 'SSTT4824', 500, NULL, NULL, NULL, NULL),
	('1a5ef90a-fcfb-438f-9c38-8b38287532b2', '2025-02-01 20:06:25.784914+00', '2025-02-06 20:09:33.981962+00', 'Material', '48" Mesa Fire Pit', 'Corten Steel', 'CSTT4824', NULL, NULL, NULL, NULL, NULL),
	('da7526ec-0ccd-4f74-b558-e8d6a75df864', '2025-02-01 20:06:25.784914+00', '2025-02-06 20:09:33.981962+00', 'Material', '48" Moderno Fire Pit', 'Hammered Copper', 'HC4828', 627, NULL, NULL, NULL, NULL),
	('e792a672-0fe3-4cd4-bfdf-b590dd2d27ed', '2025-02-01 20:06:25.784914+00', '2025-02-06 20:09:33.981962+00', 'Material', '48" Moderno Fire Pit', 'Stainless Steel', 'SS4828', 454, NULL, NULL, NULL, NULL),
	('e309c6ad-1b24-447b-9303-92767d844bc8', '2025-02-01 20:06:25.784914+00', '2025-02-06 20:09:33.981962+00', 'Material', '48" Moderno Fire Pit', 'Powder Coat', 'PC4828', NULL, NULL, NULL, NULL, NULL),
	('0812b8b3-42a9-448b-a1fa-53624dd4adae', '2025-01-31 00:53:51.528745+00', '2025-02-06 20:09:33.981962+00', 'Material', '48" Pismo Fire Pit', 'Powder Coat', 'R4824PCR', 75, NULL, NULL, NULL, NULL),
	('99cc7b1c-26c3-415d-b874-fed5da420f9b', '2025-01-31 00:53:51.528745+00', '2025-02-06 20:09:33.981962+00', 'Material', '48" Pismo Fire Pit', 'Corten Steel', 'R4824CS', NULL, NULL, NULL, NULL, NULL),
	('8341fd46-9c64-4eb2-9881-44fbe22c55b3', '2025-01-31 00:53:51.528745+00', '2025-02-06 20:09:33.981962+00', 'Material', '48" Pismo Fire Pit', 'GFRC', '2448', 287, NULL, NULL, NULL, NULL),
	('4e6361ce-1a83-42d1-9c74-1c403f123a0d', '2025-01-31 00:53:51.528745+00', '2025-02-06 20:09:33.981962+00', 'Material', '48" Pismo Fire Pit', 'Hammered Copper', 'CPRT4824', 1315, NULL, NULL, NULL, NULL),
	('279671a0-5e9c-419e-8c72-fea188ac1a54', '2025-01-31 00:53:51.528745+00', '2025-02-06 20:09:33.981962+00', 'Material', '48" Pismo Fire Pit', 'Stainless Steel', 'R4824SS', 624, NULL, NULL, NULL, NULL),
	('08272cba-d69d-4189-a9c4-bc53a9783ea0', '2025-01-31 00:53:51.528745+00', '2025-02-06 20:09:33.981962+00', 'Material', '48" Pismo Fire Pit - RTF', 'Hardieboard & Steel Frame', NULL, NULL, NULL, NULL, NULL, NULL),
	('30110908-3f8d-41bd-94d3-23e476b53354', '2025-01-31 00:53:51.528745+00', '2025-02-06 20:09:33.981962+00', 'Material', '48" Quad Fire Pit - RTF', 'Hardieboard & Steel Frame', NULL, NULL, NULL, NULL, NULL, NULL),
	('78b5d8dd-6a11-4536-9ade-d9ba2aae9b42', '2025-01-31 00:53:51.528745+00', '2025-02-06 20:09:33.981962+00', 'Material', '48" Redan Fire Pit', 'Hammered Copper', '48CPM', 2164, NULL, NULL, NULL, NULL),
	('55c3c050-adf1-41f3-b765-e1b8455a6c04', '2025-01-31 00:53:51.528745+00', '2025-02-06 20:09:33.981962+00', 'Material', '48" Redan Fire Pit', 'Stainless Steel', '48CS', 1012, NULL, NULL, NULL, NULL),
	('3605b335-5dce-4c77-b948-eb13774b078d', '2025-01-31 00:53:51.528745+00', '2025-02-06 20:09:33.981962+00', 'Material', '48" Redan Fire Pit', 'Corten Steel', '48CS', NULL, NULL, NULL, NULL, NULL),
	('e98ae984-2ed4-40a2-949a-032d2f743bf2', '2025-01-31 00:53:51.528745+00', '2025-02-06 20:09:33.981962+00', 'Material', '48" Redan Fire Pit', 'Powder Coat', 'PC48', 415, NULL, NULL, NULL, NULL),
	('da3bad79-87ab-4334-8e4d-b8127b593584', '2025-01-30 01:23:51.448608+00', '2025-02-06 20:09:33.981962+00', 'Material', '48" Regal Fire Pit', 'Powder Coat', 'PC48', 22, NULL, NULL, NULL, NULL),
	('7bfda992-4c89-4b40-ae6f-b773ea83622c', '2025-01-30 01:23:51.448608+00', '2025-02-06 20:09:33.981962+00', 'Material', '48" Regal Fire Pit', 'Stainless Steel', 'SS48', 817, NULL, NULL, NULL, NULL),
	('3370f092-26ab-47d5-8b08-b4a531b19d63', '2025-01-30 01:23:51.448608+00', '2025-02-06 20:09:33.981962+00', 'Material', '48" Regal Fire Pit', 'GFRC', '48', 75, NULL, NULL, NULL, NULL),
	('db23b2ff-b965-4a95-b4c9-c6a200520b55', '2025-01-30 01:23:51.448608+00', '2025-02-06 20:09:33.981962+00', 'Material', '48" Regal Fire Pit', 'Corten Steel', 'CS48', NULL, NULL, NULL, NULL, NULL),
	('55ad523c-8dac-4915-a2aa-70792e70da50', '2025-01-30 01:23:51.448608+00', '2025-02-06 20:09:33.981962+00', 'Material', '48" Regal Fire Pit', 'Hammered Copper', 'CPR48', 990, NULL, NULL, NULL, NULL),
	('b565a8d8-2efb-45a5-b03d-36e726520df0', '2025-01-30 01:23:51.448608+00', '2025-02-06 20:09:33.981962+00', 'Material', '48" Regal Fire Pit - RTF', 'Hardieboard & Steel Frame', NULL, NULL, NULL, NULL, NULL, NULL),
	('94df4286-5938-4a93-8ec2-c76d337ef9fd', '2025-02-06 01:15:35.129157+00', '2025-02-06 20:09:33.981962+00', 'Material', '48" Salinas Fire Table', 'Hammered Copper', 'CPR48', 2190, NULL, NULL, NULL, NULL),
	('85ffc8cb-b428-4ed7-877c-6dd0b7ad1e91', '2025-02-06 01:15:35.129157+00', '2025-02-06 20:09:33.981962+00', 'Material', '48" Salinas Fire Table', 'Corten Steel', 'CS48', NULL, NULL, NULL, NULL, NULL),
	('07893000-28b8-48b1-83a5-f2e34138eb11', '2025-02-06 01:15:35.129157+00', '2025-02-06 20:09:33.981962+00', 'Material', '48" Salinas Fire Table', 'Stainless Steel', 'SS48', 1987, NULL, NULL, NULL, NULL),
	('a154aa10-8c57-43b7-b022-17dbb5cf6885', '2025-02-06 01:15:35.129157+00', '2025-02-06 20:09:33.981962+00', 'Material', '48" Salinas Fire Table', 'Powder Coat', 'PC48', 637, NULL, NULL, NULL, NULL),
	('51bd006e-8d19-45a3-b65b-7e9e6023e219', '2025-01-27 17:42:41.064712+00', '2025-02-06 20:09:33.981962+00', 'Material', '48" Sedona Fire Pit', 'Powder Coat', NULL, NULL, NULL, NULL, NULL, NULL),
	('7fc51eaf-4e90-45ca-8b49-b6b43bba8796', '2025-01-27 17:42:41.064712+00', '2025-02-06 20:09:33.981962+00', 'Material', '48" Sedona Fire Pit - Narrow Ledge', 'GFRC', NULL, NULL, NULL, NULL, NULL, NULL),
	('5d1b22aa-b15f-49c9-9d0d-ddcb5afe1c91', '2025-01-27 17:42:41.064712+00', '2025-02-06 20:09:33.981962+00', 'Material', '48" Sedona Fire Pit - Wide Ledge', 'GFRC', NULL, NULL, NULL, NULL, NULL, NULL),
	('02a29701-1909-4511-923f-d24584bbdab9', '2025-01-27 17:42:41.064712+00', '2025-02-06 20:09:33.981962+00', 'Material', '48" Sedona Fire Pit with Rounded Legs', 'Powder Coat', NULL, NULL, NULL, NULL, NULL, NULL),
	('d428fdf1-1a36-440b-9872-b46b9d361489', '2025-01-27 17:42:41.064712+00', '2025-02-06 20:09:33.981962+00', 'Material', '48" Sedona Fire & Water Pit', 'Powder Coat', NULL, NULL, NULL, NULL, NULL, NULL),
	('0e4b4ac2-ce94-4d16-ae93-317d46d6d425', '2025-01-27 17:42:41.064712+00', '2025-02-06 20:09:33.981962+00', 'Material', '48" Sedona Planter Bowl', 'Powder Coat', NULL, NULL, NULL, NULL, NULL, NULL),
	('ab4954a6-7cc8-46cc-8165-3a51724055bc', '2025-01-27 17:42:41.064712+00', '2025-02-06 20:09:33.981962+00', 'Material', '48" Sedona Planter & Water Bowl', 'Powder Coat', NULL, NULL, NULL, NULL, NULL, NULL),
	('82dff6f0-c842-41a8-833b-2d408aea6b89', '2025-01-27 17:42:41.064712+00', '2025-02-06 20:09:33.981962+00', 'Material', '48" Sedona Water Bowl', 'Powder Coat', NULL, NULL, NULL, NULL, NULL, NULL),
	('44271382-209d-448d-bf06-b8c6f3b95aed', '2025-01-29 01:06:39.793179+00', '2025-02-06 20:09:33.981962+00', 'Material', '48" Tempe Fire Pit', 'BW Powdercoat', 'PC48', 513, NULL, NULL, NULL, NULL),
	('f5bdc573-8f55-4003-8708-f42d06a500dc', '2025-01-29 01:06:39.793179+00', '2025-02-06 20:09:33.981962+00', 'Material', '48" Tempe Fire Pit', 'Stainless Steel', 'SS48', 1526, NULL, NULL, NULL, NULL),
	('3cddff8f-3b0d-44bd-af88-b0ada60e9c36', '2025-01-29 01:06:39.793179+00', '2025-02-06 20:09:33.981962+00', 'Material', '48" Tempe Fire Pit', 'Hammered Copper', 'CPR48', 2516, NULL, NULL, NULL, NULL),
	('c4e94489-03f4-4492-a87a-dfc7ff4f51a1', '2025-01-29 01:06:39.793179+00', '2025-02-06 20:09:33.981962+00', 'Material', '48" Tempe Fire Pit', 'Corten Steel', 'CS48', 125, NULL, NULL, NULL, NULL),
	('dede4d8f-3b3c-4579-ab62-210f3318d73c', '2025-01-29 01:06:39.793179+00', '2025-02-06 20:09:33.981962+00', 'Material', '48" Tempe Fire Pit', 'GFRC', '48', NULL, NULL, NULL, NULL, NULL),
	('e8c9e598-8358-4bb3-8f4e-3cd7e0a4e8da', '2025-01-29 01:06:39.793179+00', '2025-02-06 20:09:33.981962+00', 'Material', '48" Tempe Fire Pit', 'Powder Coat', 'PC48', 913, NULL, NULL, NULL, NULL),
	('ca5c0147-eeb8-4746-8380-90b89939b1c3', '2025-02-04 23:50:13.379228+00', '2025-02-06 20:09:33.981962+00', 'Material', '48" Unity Fire Pit - 18" Tall', 'Hammered Copper', 'UNYCP4818', 1731, NULL, NULL, NULL, NULL),
	('1be333d5-5fb1-49e5-b486-c7a75b9d98dd', '2025-02-04 23:50:13.379228+00', '2025-02-06 20:09:33.981962+00', 'Material', '48" Unity Fire Pit - 18" Tall', 'Powder Coat', 'UNYPC4818', 62, NULL, NULL, NULL, NULL),
	('83209750-adba-442e-99fa-9bd2482701fe', '2025-02-04 23:50:13.379228+00', '2025-02-06 20:09:33.981962+00', 'Material', '48" Unity Fire Pit - 18" Tall', 'Corten Steel', 'RCRTN4818', NULL, NULL, NULL, NULL, NULL),
	('045c3ec2-de03-46c1-ae87-37b533e224f3', '2025-02-04 23:50:13.379228+00', '2025-02-06 20:09:33.981962+00', 'Material', '48" Unity Fire Pit - 18" Tall', 'Stainless Steel', 'UNYSS4818', 819, NULL, NULL, NULL, NULL),
	('64dcac4d-318c-404f-b6c4-9fa1ac42bb78', '2025-02-04 23:50:13.379228+00', '2025-02-06 20:09:33.981962+00', 'Material', '48" Unity Fire Pit - 24" Tall', 'Powder Coat', 'UNYPC48', 127, NULL, NULL, NULL, NULL),
	('b290700f-771f-4b50-919f-94effe5c29a3', '2025-02-04 23:50:13.379228+00', '2025-02-06 20:09:33.981962+00', 'Material', '48" Unity Fire Pit - 24" Tall', 'Hammered Copper', 'UNYCP48', 1604, NULL, NULL, NULL, NULL),
	('da1c4310-3ea0-4b31-89f2-87e2f7500536', '2025-01-30 01:23:51.448608+00', '2025-02-06 20:09:33.981962+00', 'Material', '108" Regal Fire Pit - RTF', 'Hardieboard & Steel Frame', NULL, NULL, NULL, NULL, NULL, NULL),
	('a1844986-1382-4ddc-bdfd-5e3e8c73785f', '2025-01-31 00:53:51.528745+00', '2025-02-06 20:09:33.981962+00', 'Material', '36" Redan Fire Pit', 'Powder Coat', 'SQPC36', 224, NULL, NULL, NULL, NULL),
	('5fe1cb6d-433e-48d9-b265-81cb72b92091', '2025-01-31 00:53:51.528745+00', '2025-02-06 20:09:33.981962+00', 'Material', '36" Redan Fire Pit', 'Stainless Steel', 'SQ36SS', 669, NULL, NULL, NULL, NULL),
	('b38429ca-b7a2-4d6e-9c23-33e6be609b81', '2025-01-31 00:53:51.528745+00', '2025-02-06 20:09:33.981962+00', 'Material', '36" Redan Fire Pit', 'GFRC', 'RDN36', 249, NULL, NULL, NULL, NULL),
	('724b0eea-5d6f-41ba-98d5-f5c172323bcf', '2025-01-31 00:53:51.528745+00', '2025-02-06 20:09:33.981962+00', 'Material', '36" Redan Fire Pit', 'Corten Steel', 'SQ36CS', NULL, NULL, NULL, NULL, NULL),
	('ee2fc02b-d006-460c-befe-d9432cf83580', '2025-01-31 00:53:51.528745+00', '2025-02-06 20:09:33.981962+00', 'Material', '36" Redan Fire Pit', 'Hammered Copper', 'SQ36CPM', 1326, NULL, NULL, NULL, NULL),
	('3b6aaec8-2a9b-4f4a-af69-e8103273be55', '2025-01-31 00:53:51.528745+00', '2025-02-06 20:09:33.981962+00', 'Material', '108" Coronado Fire Pit', 'Corten Steel', 'CS108', NULL, NULL, NULL, NULL, NULL),
	('00c09604-ed7f-4c0e-80f5-23eedb7a1e2b', '2025-01-31 00:53:51.528745+00', '2025-02-06 20:09:33.981962+00', 'Material', '108" Coronado Fire Pit', 'Stainless Steel', 'SS108', 1193, NULL, NULL, NULL, NULL),
	('dd35c453-f1fe-4bd9-8033-d6ba4808c018', '2025-01-31 00:53:51.528745+00', '2025-02-06 20:09:33.981962+00', 'Material', '108" Coronado Fire Pit', 'Hammered Copper', 'CPR108', 2689, NULL, NULL, NULL, NULL),
	('39e700bb-6b18-4c40-8fcd-ce299bcca9a4', '2025-01-31 00:53:51.528745+00', '2025-02-06 20:09:33.981962+00', 'Material', '108" Coronado Fire Pit', 'Powder Coat', 'PC108', 805, NULL, NULL, NULL, NULL),
	('ef11ef9a-f8ae-498b-a94b-03d7819fd8ef', '2025-01-31 00:53:51.528745+00', '2025-02-06 20:09:33.981962+00', 'Material', '108" Coronado Fire Pit', 'Wood Grain', '108', 1577, NULL, NULL, NULL, NULL),
	('ca5eca05-e664-480a-8392-4782443bc92c', '2025-01-31 00:53:51.528745+00', '2025-02-06 20:09:33.981962+00', 'Material', '108" Coronado Fire Pit - RTF', 'Hardieboard & Steel Frame', NULL, NULL, NULL, NULL, NULL, NULL),
	('ee84fce6-732b-4109-a556-eb9c87b1a407', '2025-01-31 00:53:51.528745+00', '2025-02-06 20:09:33.981962+00', 'Material', '120" Coronado Fire Pit', 'Wood Grain', '120', NULL, NULL, NULL, NULL, NULL),
	('bc517d07-3740-415b-86cc-7713a0012e2e', '2025-01-31 00:53:51.528745+00', '2025-02-06 20:09:33.981962+00', 'Material', '120" Coronado Fire Pit - RTF', 'Hardieboard & Steel Frame', NULL, NULL, NULL, NULL, NULL, NULL),
	('6e13d9ec-b62c-49b0-ac70-0b51c3c0e8d5', '2025-01-31 00:53:51.528745+00', '2025-02-06 20:09:33.981962+00', 'Material', '48" Coronado Fire Pit', 'Hammered Copper', 'CPR48', 991, NULL, NULL, NULL, NULL),
	('7181801b-f00d-43a9-bb81-63c5bb0c1fc5', '2025-01-31 00:53:51.528745+00', '2025-02-06 20:09:33.981962+00', 'Material', '48" Coronado Fire Pit', 'Powder Coat', 'PC48', 226, NULL, NULL, NULL, NULL),
	('402f17d9-e85f-4006-966e-1bcdc24207a6', '2025-01-31 00:53:51.528745+00', '2025-02-06 20:09:33.981962+00', 'Material', '48" Coronado Fire Pit', 'Corten Steel', 'CS48', NULL, NULL, NULL, NULL, NULL),
	('08252686-0056-4cf2-8799-4bbd2dcefb23', '2025-01-31 00:53:51.528745+00', '2025-02-06 20:09:33.981962+00', 'Material', '48" Coronado Fire Pit', 'Stainless Steel', 'SS48', 818, NULL, NULL, NULL, NULL),
	('cd8ad455-c93e-4f22-8932-9ac58889a65d', '2025-01-31 00:53:51.528745+00', '2025-02-06 20:09:33.981962+00', 'Material', '48" Coronado Fire Pit', 'Wood Grain', '48', 353, NULL, NULL, NULL, NULL),
	('e6bc2cac-32c8-454f-a143-0bcb956569bf', '2025-02-04 23:50:13.379228+00', '2025-02-06 20:09:33.981962+00', 'Material', '48" Unity Fire Pit - 24" Tall', 'Corten Steel', 'RCRTN48', NULL, NULL, NULL, NULL, NULL),
	('3f633616-7472-4f2f-bfa6-f9869f834f01', '2025-02-04 23:50:13.379228+00', '2025-02-06 20:09:33.981962+00', 'Material', '48" Unity Fire Pit - 24" Tall', 'Stainless Steel', 'UNYSS48', 822, NULL, NULL, NULL, NULL),
	('623b2223-e589-4a3b-89c3-89d9ebf1ee9d', '2025-02-04 23:50:13.379228+00', '2025-02-06 20:09:33.981962+00', 'Material', '48" Unity Fire Pit - RTF', 'Hardieboard & Steel Frame', NULL, NULL, NULL, NULL, NULL, NULL),
	('804677d1-6563-4489-a11d-573dc305bc91', '2025-01-28 16:41:46.862099+00', '2025-02-06 20:09:33.981962+00', 'Material', '48" x 20" Linear Maya Fire Bowl', 'Powder Coat', 'PCFO', 91, NULL, NULL, NULL, NULL),
	('838a82b3-7338-4daa-9e4f-3b5d1eee69f2', '2025-01-28 16:41:46.862099+00', '2025-02-06 20:09:33.981962+00', 'Material', '48" x 20" Linear Maya Fire Bowl', 'GFRC', 'FO', NULL, NULL, NULL, NULL, NULL),
	('465da4f9-e3b2-4b6a-85ac-12621a8cb3e2', '2025-01-28 16:41:46.862099+00', '2025-02-06 20:09:33.981962+00', 'Material', '48" x 20" Linear Maya Fire Bowl', 'Hammered Copper', 'CFO', 716, NULL, NULL, NULL, NULL),
	('082ae6b0-eb50-4ce1-bf20-4c808141482e', '2025-01-28 16:41:46.862099+00', '2025-02-06 20:09:33.981962+00', 'Material', '48" x 20" Linear Maya Fire Bowl', 'Stainless Steel', 'SSFO', 716, NULL, NULL, NULL, NULL),
	('fec9a951-a729-4751-b7aa-aec516315881', '2025-01-28 16:41:46.862099+00', '2025-02-06 20:09:33.981962+00', 'Material', '48" x 20" Linear Maya Fire & Water Bowl', 'Hammered Copper', 'CFW', 1298, NULL, NULL, NULL, NULL),
	('a4a2961b-da12-4e97-a443-1095042389ec', '2025-01-28 16:41:46.862099+00', '2025-02-06 20:09:33.981962+00', 'Material', '48" x 20" Linear Maya Fire & Water Bowl', 'Powder Coat', 'PCFW', NULL, NULL, NULL, NULL, NULL),
	('8c977c5d-859d-4cc0-ac04-d706b7737c10', '2025-01-28 16:41:46.862099+00', '2025-02-06 20:09:33.981962+00', 'Material', '48" x 20" Linear Maya Fire & Water Bowl', 'GFRC', 'FW', 994, NULL, NULL, NULL, NULL),
	('964f977b-449f-4a41-a6f9-44d57fedd105', '2025-01-28 16:41:46.862099+00', '2025-02-06 20:09:33.981962+00', 'Material', '48" x 20" Linear Maya Fire & Water Bowl', 'Stainless Steel', 'SSFW', 1298, NULL, NULL, NULL, NULL),
	('8fb61003-8d0c-4302-9b7b-056b27371984', '2025-01-29 01:06:39.793179+00', '2025-02-06 20:09:33.981962+00', 'Material', '48" x 24" Moderna Rectangular Planter', 'Corten Steel', NULL, NULL, NULL, NULL, NULL, NULL),
	('2ad3a8ad-6dc7-4023-941b-8a10f167251b', '2025-01-29 01:06:39.793179+00', '2025-02-06 20:09:33.981962+00', 'Material', '48" x 24" Rectangular Tuscon Planter', 'Corten Steel', NULL, NULL, NULL, NULL, NULL, NULL),
	('dd6a659e-a1e2-4e7f-8ce5-1226ed4bcc3c', '2025-01-28 22:27:41.897719+00', '2025-02-06 20:09:33.981962+00', 'Material', '48" x 28" Linear Avalon Fire Pit - 15" Tall', 'Hammered Copper', 'CPR4815', 1670, NULL, NULL, NULL, NULL),
	('c80ef160-1144-4571-b7db-7895bf19d709', '2025-01-28 22:27:41.897719+00', '2025-02-06 20:09:33.981962+00', 'Material', '48" x 28" Linear Avalon Fire Pit - 15" Tall', 'Stainless Steel', 'SS4815', 829, NULL, NULL, NULL, NULL),
	('9c434091-62ce-4d09-92cf-bed16b29e71c', '2025-01-28 22:27:41.897719+00', '2025-02-06 20:09:33.981962+00', 'Material', '48" x 28" Linear Avalon Fire Pit - 15" Tall', 'Powder Coat', 'PC4815', 239, NULL, NULL, NULL, NULL),
	('6ac87013-7969-4eb8-8e85-383c6c47cf0f', '2025-01-28 22:27:41.897719+00', '2025-02-06 20:09:33.981962+00', 'Material', '48" x 28" Linear Avalon Fire Pit - 15" Tall', 'Corten Steel', 'CS4815', NULL, NULL, NULL, NULL, NULL),
	('99aca231-39ce-44cf-843b-3dbbefdff5e3', '2025-01-28 22:27:41.897719+00', '2025-02-06 20:09:33.981962+00', 'Material', '48" x 28" Linear Avalon Fire Pit - 24" Tall', 'Stainless Steel', 'SS4824', 830, NULL, NULL, NULL, NULL),
	('fcaed353-7f9e-42fa-aa8e-1cd3012f76a4', '2025-01-28 22:27:41.897719+00', '2025-02-06 20:09:33.981962+00', 'Material', '48" x 28" Linear Avalon Fire Pit - 24" Tall', 'Corten Steel', 'CS4824', NULL, NULL, NULL, NULL, NULL),
	('7451abb2-12b8-456e-aefa-87c177637506', '2025-01-28 22:27:41.897719+00', '2025-02-06 20:09:33.981962+00', 'Material', '48" x 28" Linear Avalon Fire Pit - 24" Tall', 'Powder Coat', 'PC4824', NULL, NULL, NULL, NULL, NULL),
	('ab21aa39-627e-4876-8cfd-e0e7aefc26ae', '2025-01-28 22:27:41.897719+00', '2025-02-06 20:09:33.981962+00', 'Material', '48" x 28" Linear Avalon Fire Pit - 24" Tall', 'GFRC', 'CPR4824', 1669, NULL, NULL, NULL, NULL),
	('f141ac51-1d67-432c-82d5-981f7ecb40b8', '2025-01-31 00:53:51.528745+00', '2025-02-06 20:09:33.981962+00', 'Material', '50" Redan Fire Pit', 'GFRC', NULL, NULL, NULL, NULL, NULL, NULL),
	('95d526af-acfa-4927-9001-23cd9d059a04', '2025-02-05 18:46:31.961623+00', '2025-02-06 20:09:33.981962+00', 'Material', '54" Florence Fire Pit - 20" Tall', 'GFRC', NULL, NULL, NULL, NULL, NULL, NULL),
	('a940505b-eb96-48e4-b8ef-6b71c648a0c9', '2025-01-30 01:23:51.448608+00', '2025-02-06 20:09:33.981962+00', 'Material', '54" Regal Fire Pit', 'GFRC', '54', 9, NULL, NULL, NULL, NULL),
	('1055ec42-e2f9-4e79-ac7e-76d89c352d4e', '2025-01-30 01:23:51.448608+00', '2025-02-06 20:09:33.981962+00', 'Material', '54" Regal Fire Pit', 'Corten Steel', 'CS54', NULL, NULL, NULL, NULL, NULL),
	('fccf3f15-8eac-424e-a62a-500d75889f88', '2025-01-30 01:23:51.448608+00', '2025-02-06 20:09:33.981962+00', 'Material', '54" Regal Fire Pit', 'Powder Coat', 'PC54', 79, NULL, NULL, NULL, NULL),
	('0966360c-0772-4cd6-a35a-85d38563ad95', '2025-01-30 01:23:51.448608+00', '2025-02-06 20:09:33.981962+00', 'Material', '54" Regal Fire Pit', 'Stainless Steel', 'SS54', 823, NULL, NULL, NULL, NULL),
	('f64cc37e-dbd7-4282-9abd-a3f802d0ef9a', '2025-01-30 01:23:51.448608+00', '2025-02-06 20:09:33.981962+00', 'Material', '54" Regal Fire Pit', 'Hammered Copper', 'CPR54', 1159, NULL, NULL, NULL, NULL),
	('38f31d50-6fb6-49a2-b200-b90c6302ece5', '2025-01-31 00:53:51.528745+00', '2025-02-06 20:09:33.981962+00', 'Material', '56" Cabo Linear Fire Pit', 'Corten Steel', 'CS', NULL, NULL, NULL, NULL, NULL),
	('57bc0383-3c37-44ba-b233-d72693579152', '2025-01-31 00:53:51.528745+00', '2025-02-06 20:09:33.981962+00', 'Material', '56" Cabo Linear Fire Pit', 'Stainless Steel', 'SS', 1407, NULL, NULL, NULL, NULL),
	('b75979b4-14da-4915-989f-9851060832bc', '2025-01-31 00:53:51.528745+00', '2025-02-06 20:09:33.981962+00', 'Material', '56" Cabo Linear Fire Pit', 'GFRC', NULL, 137, NULL, NULL, NULL, NULL),
	('305ae487-0544-4c3e-8119-a8fcfbca95e3', '2025-01-31 00:53:51.528745+00', '2025-02-06 20:09:33.981962+00', 'Material', '56" Cabo Linear Fire Pit', 'Hammered Copper', 'CPR', 1669, NULL, NULL, NULL, NULL),
	('1cc2672c-8dd5-4398-ae58-489fcad4fa09', '2025-01-31 00:53:51.528745+00', '2025-02-06 20:09:33.981962+00', 'Material', '56" Cabo Linear Fire Pit', 'Powder Coat', 'PC', 357, NULL, NULL, NULL, NULL),
	('eabccbc8-6952-443f-bebb-ac87b5e98e38', '2025-02-05 20:04:32.782283+00', '2025-02-06 20:09:33.981962+00', 'Material', '60" Alameda Fire Table', 'Corten Steel', 'CS60', NULL, NULL, NULL, NULL, NULL),
	('5de0d5c5-c970-415b-bbfe-42addd4873c1', '2025-02-05 20:04:32.782283+00', '2025-02-06 20:09:33.981962+00', 'Material', '60" Alameda Fire Table', 'GFRC Top & Powder Coat Base', 'GFRC60', 650, NULL, NULL, NULL, NULL),
	('86a531ee-52ee-41fd-9359-753326138214', '2025-02-05 20:04:32.782283+00', '2025-02-06 20:09:33.981962+00', 'Material', '60" Alameda Fire Table', 'Wood Grain Top & Powder Coat Base', 'WG60', 650, NULL, NULL, NULL, NULL),
	('63372646-b6fd-406e-80d2-080557a8ac70', '2025-02-05 20:04:32.782283+00', '2025-02-06 20:09:33.981962+00', 'Material', '60" Alameda Fire Table', 'Powder Coat', 'PC60', 292, NULL, NULL, NULL, NULL),
	('94532a4e-f535-4fbb-bd94-55dde581e01c', '2025-02-05 20:04:32.782283+00', '2025-02-06 20:09:33.981962+00', 'Material', '60" Alameda Fire Table Black & White', 'BW Powdercoat', NULL, NULL, NULL, NULL, NULL, NULL),
	('fe97dc17-5f9f-4079-ac54-4f919887e145', '2025-02-06 01:15:35.129157+00', '2025-02-06 20:09:33.981962+00', 'Material', '60" Bella Fire Table', 'Corten Steel', 'CS60', NULL, NULL, NULL, NULL, NULL),
	('0652b205-e7c5-4817-b1fa-40cf9422a8e4', '2025-02-06 01:15:35.129157+00', '2025-02-06 20:09:33.981962+00', 'Material', '60" Bella Fire Table', 'Hammered Copper', 'CPR60', 2350, NULL, NULL, NULL, NULL),
	('e6f4efc5-9cf5-42a8-aa3f-eab805566584', '2025-02-01 20:06:25.784914+00', '2025-02-06 20:09:33.981962+00', 'Material', '60" Big Sur Fire Pit', 'Wood Grain', NULL, NULL, NULL, NULL, NULL, NULL),
	('a7986bb3-0332-4730-bb78-e8da77bef88f', '2025-02-01 20:06:25.784914+00', '2025-02-06 20:09:33.981962+00', 'Material', '60" Billow Fire Pit', 'Stainless Steel', 'SS60', 1113, NULL, NULL, NULL, NULL),
	('cdfae0c4-55e2-481f-ac73-0abe085eb99d', '2025-02-01 20:06:25.784914+00', '2025-02-06 20:09:33.981962+00', 'Material', '60" Billow Fire Pit', 'Powder Coat', 'PC60', 34, NULL, NULL, NULL, NULL),
	('9aca243b-ff4a-4b65-a7a8-863803e5c06d', '2025-02-01 20:06:25.784914+00', '2025-02-06 20:09:33.981962+00', 'Material', '60" Billow Fire Pit', 'Hammered Copper', 'CPR60', 2087, NULL, NULL, NULL, NULL),
	('381af9d9-9572-4f62-980f-152a67f85f90', '2025-02-01 20:06:25.784914+00', '2025-02-06 20:09:33.981962+00', 'Material', '60" Billow Fire Pit', 'Corten Steel', 'CS60', NULL, NULL, NULL, NULL, NULL),
	('bdf653c1-e979-4fe3-85c0-30a0eccf0471', '2025-01-31 00:53:51.528745+00', '2025-02-06 20:09:33.981962+00', 'Material', '60" Cabo Square Fire Pit', 'Hammered Copper', 'CPR', 1669, NULL, NULL, NULL, NULL),
	('b4fd730a-9cae-4914-82bb-e8f53c66bf50', '2025-01-31 00:53:51.528745+00', '2025-02-06 20:09:33.981962+00', 'Material', '60" Cabo Square Fire Pit', 'Powder Coat', 'PC', 888, NULL, NULL, NULL, NULL),
	('74802900-fa70-472b-9df3-d05eaff740c2', '2025-01-31 00:53:51.528745+00', '2025-02-06 20:09:33.981962+00', 'Material', '60" Cabo Square Fire Pit', 'Corten Steel', 'CS', NULL, NULL, NULL, NULL, NULL),
	('2d1a1539-1aed-47f5-b32e-26a0e1eb74a7', '2025-01-31 00:53:51.528745+00', '2025-02-06 20:09:33.981962+00', 'Material', '60" Cabo Square Fire Pit', 'Stainless Steel', 'SS', 888, NULL, NULL, NULL, NULL),
	('42602b2f-8d9f-4c3f-9427-9be0cbc08439', '2025-02-01 20:06:25.784914+00', '2025-02-06 20:09:33.981962+00', 'Material', '60" Catalina Fire Pit', 'Wood Grain', NULL, NULL, NULL, NULL, NULL, NULL),
	('206e2e16-6923-4f21-a8c1-d356b00dea8a', '2025-02-01 20:06:25.784914+00', '2025-02-06 20:09:33.981962+00', 'Material', '60" Catalina Fire Pit- RTF', 'Hardieboard & Steel Frame', NULL, NULL, NULL, NULL, NULL, NULL),
	('96408afb-30b0-4bc9-91b1-45fc3c16f80e', '2025-01-27 17:42:41.064712+00', '2025-02-06 20:09:33.981962+00', 'Material', '60" Cazo Fire Pit - Narrow Ledge', 'Powder Coat', 'PC60', 3, NULL, NULL, NULL, NULL),
	('e872b348-54b3-44a3-940e-00c14683851f', '2025-01-27 17:42:41.064712+00', '2025-02-06 20:09:33.981962+00', 'Material', '60" Cazo Fire Pit - Narrow Ledge', 'GFRC', '60', NULL, NULL, NULL, NULL, NULL),
	('4d701248-08fb-4325-bd20-e9ac57c895c6', '2025-01-27 17:42:41.064712+00', '2025-02-06 20:09:33.981962+00', 'Material', '60" Cazo Fire Pit - Wide Ledge', 'Powder Coat', 'PC60', NULL, NULL, NULL, NULL, NULL),
	('f999bd89-cc58-433c-86f4-1207058ad06a', '2025-01-27 17:42:41.064712+00', '2025-02-06 20:09:33.981962+00', 'Material', '60" Cazo Fire Pit - Wide Ledge', 'GFRC', '60', 3, NULL, NULL, NULL, NULL),
	('067e788e-1df7-46a5-9280-0a8f65cda548', '2025-01-31 00:53:51.528745+00', '2025-02-06 20:09:33.981962+00', 'Material', '60" Coronado Fire Pit', 'Corten Steel', 'CS60', NULL, NULL, NULL, NULL, NULL),
	('ec70f7a5-0be0-40d7-9569-b2a4a5e5ef71', '2025-01-31 00:53:51.528745+00', '2025-02-06 20:09:33.981962+00', 'Material', '60" Coronado Fire Pit', 'Hammered Copper', 'CPR60', 1154, NULL, NULL, NULL, NULL),
	('f387f0d2-d617-44d8-b8d2-30e88e5e58a9', '2025-01-31 00:53:51.528745+00', '2025-02-06 20:09:33.981962+00', 'Material', '60" Coronado Fire Pit', 'Stainless Steel', 'SS60', 821, NULL, NULL, NULL, NULL),
	('76fc5513-4451-43c2-926b-bb645126e688', '2025-01-31 00:53:51.528745+00', '2025-02-06 20:09:33.981962+00', 'Material', '60" Coronado Fire Pit', 'Powder Coat', 'PC60', 77, NULL, NULL, NULL, NULL),
	('53c8c976-42c2-4dda-89df-c5187b85d927', '2025-01-31 00:53:51.528745+00', '2025-02-06 20:09:33.981962+00', 'Material', '60" Coronado Fire Pit', 'Wood Grain', '60', 1077, NULL, NULL, NULL, NULL),
	('644ca114-d8a4-4ef5-839b-02df7226a061', '2025-01-31 00:53:51.528745+00', '2025-02-06 20:09:33.981962+00', 'Material', '60" Coronado Fire Pit - RTF', 'Hardieboard & Steel Frame', NULL, NULL, NULL, NULL, NULL, NULL),
	('1a4c1349-aa67-408d-8744-4d069be16bab', '2025-01-31 00:53:51.528745+00', '2025-02-06 20:09:33.981962+00', 'Material', '60" Eaves Fire Pit', 'Powder Coat', 'PC60', NULL, NULL, NULL, NULL, NULL),
	('35cd5cec-bafa-4f54-8931-cf9eddcb189e', '2025-01-31 00:53:51.528745+00', '2025-02-06 20:09:33.981962+00', 'Material', '60" Eaves Fire Pit', 'Stainless Steel', 'SS60', 149, NULL, NULL, NULL, NULL),
	('4410c069-0c8f-4eb1-9f33-bff492e18b8f', '2025-01-31 00:53:51.528745+00', '2025-02-06 20:09:33.981962+00', 'Material', '60" Eaves Fire Pit', 'Hammered Copper', 'CPR60', 597, NULL, NULL, NULL, NULL),
	('a9c9dbbf-66a0-4738-ae9e-faa12a004df7', '2025-01-31 00:53:51.528745+00', '2025-02-06 20:09:33.981962+00', 'Material', '60" Eaves Fire Pit', 'Corten Steel', 'CS60', 84, NULL, NULL, NULL, NULL),
	('6224ed82-233d-4148-b252-dbd0e3a99c81', '2025-01-30 01:23:51.448608+00', '2025-02-06 20:09:33.981962+00', 'Material', '60" Florence Fire Pit - RTF', 'Hardieboard & Steel Frame', NULL, NULL, NULL, NULL, NULL, NULL),
	('cf9a17c8-a46b-4db9-9447-4587d3d3bb08', '2025-02-01 20:06:25.784914+00', '2025-02-06 20:09:33.981962+00', 'Material', '60" Forma Fire Pit', 'Stainless Steel', '60SQSS', 1015, NULL, NULL, NULL, NULL),
	('44f31690-4aa7-4783-9869-8c40fc1b4047', '2025-02-01 20:06:25.784914+00', '2025-02-06 20:09:33.981962+00', 'Material', '60" Forma Fire Pit', 'Hammered Copper', '60SQCPR', 1884, NULL, NULL, NULL, NULL),
	('38eb67f9-f6ab-4871-8642-30a33379915d', '2025-02-01 20:06:25.784914+00', '2025-02-06 20:09:33.981962+00', 'Material', '60" Forma Fire Pit', 'Powder Coat', 'PCSQ', NULL, NULL, NULL, NULL, NULL),
	('ced52c17-5895-47d1-b235-b3628feab9e5', '2025-02-01 20:06:25.784914+00', '2025-02-06 20:09:33.981962+00', 'Material', '60" Forma Fire Pit', 'Corten Steel', '60SQCS', 311, NULL, NULL, NULL, NULL),
	('990dac7c-3df6-4140-854c-0da0ea5cf132', '2025-02-01 20:06:25.784914+00', '2025-02-06 20:09:33.981962+00', 'Material', '60" Forma Fire Pit - RTF', 'Hardieboard & Steel Frame', NULL, NULL, NULL, NULL, NULL, NULL),
	('f958d6f7-d1bb-4a97-bf78-ae421fb20a1f', '2025-02-05 16:55:05.875537+00', '2025-02-06 20:09:33.981962+00', 'Material', '60" Fremont Fire Pit - 15" Tall', 'Hammered Copper', 'CPR6015', 1312, NULL, NULL, NULL, NULL),
	('b8fc6108-0ab9-45a2-be18-49d82c0853c4', '2025-02-04 23:50:13.379228+00', '2025-02-06 20:09:33.981962+00', 'Material', '60" La Jolla Fire Pit', 'Powder Coat', 'PC60', NULL, NULL, NULL, NULL, NULL),
	('30ab2042-0a9e-4b4b-b56b-1bfc44ea53da', '2025-02-04 23:50:13.379228+00', '2025-02-06 20:09:33.981962+00', 'Material', '60" La Jolla Fire Pit', 'Hammered Copper', 'CPR60', 1907, NULL, NULL, NULL, NULL),
	('13bc01b3-bf34-4ac9-9723-12e8100f0ba6', '2025-02-04 23:50:13.379228+00', '2025-02-06 20:09:33.981962+00', 'Material', '60" La Jolla Fire Pit', 'Stainless Steel', 'SS60', 660, NULL, NULL, NULL, NULL),
	('bcdfbbb5-a8b0-4915-8467-92c29fb1109c', '2025-02-04 23:50:13.379228+00', '2025-02-06 20:09:33.981962+00', 'Material', '60" La Jolla Fire Pit', 'Corten Steel', 'CS60', NULL, NULL, NULL, NULL, NULL),
	('93acc197-0aa3-4f0a-8ed8-272e3e1c775e', '2025-02-06 01:15:35.129157+00', '2025-02-06 20:09:33.981962+00', 'Material', '60" Mabel Fire Table', 'Hammered Copper', 'CPR60', 2271, NULL, NULL, NULL, NULL),
	('f6594763-fa29-46c1-b82f-ccd383f2ac20', '2025-02-06 01:15:35.129157+00', '2025-02-06 20:09:33.981962+00', 'Material', '60" Mabel Fire Table', 'Stainless Steel', 'SS60', 477, NULL, NULL, NULL, NULL),
	('56ce9f48-c97e-4bdc-9b72-1800d98daa5e', '2025-02-06 01:15:35.129157+00', '2025-02-06 20:09:33.981962+00', 'Material', '60" Mabel Fire Table', 'Powder Coat', 'PC60', 114, NULL, NULL, NULL, NULL),
	('162102d3-1ae3-4cec-ae36-e33b8cbf5a24', '2025-02-06 01:15:35.129157+00', '2025-02-06 20:09:33.981962+00', 'Material', '60" Mabel Fire Table', 'Corten Steel', 'CS60', NULL, NULL, NULL, NULL, NULL),
	('7c5c8b16-cc03-49ad-a9c4-0033328ea47f', '2025-02-06 01:15:35.129157+00', '2025-02-06 20:09:33.981962+00', 'Material', '60" Mabel Fire Table Black & White', 'BW Powdercoat', NULL, NULL, NULL, NULL, NULL, NULL),
	('d526a8f0-1b46-40c9-88cb-3d0db0fce61a', '2025-02-06 01:15:35.129157+00', '2025-02-06 20:09:33.981962+00', 'Material', '60" Mabel Fire Table - RTF - 16" Tall', 'Hardieboard & Steel Frame', NULL, NULL, NULL, NULL, NULL, NULL),
	('c05a18b5-68f5-4725-a150-c8085899d2f7', '2025-02-06 01:15:35.129157+00', '2025-02-06 20:09:33.981962+00', 'Material', '60" Mabel Fire Tbale - RTF - 24" Tall', 'Hardieboard & Steel Frame', NULL, NULL, NULL, NULL, NULL, NULL),
	('5a3b1d50-e6a0-4bf1-9340-22f2ad097ecf', '2025-02-01 20:06:25.784914+00', '2025-02-06 20:09:33.981962+00', 'Material', '60" Mesa Fire Pit', 'Stainless Steel', 'SSTT6024', 1234, NULL, NULL, NULL, NULL),
	('93e8bffb-23cc-4060-b4aa-110d738f772d', '2025-02-01 20:06:25.784914+00', '2025-02-06 20:09:33.981962+00', 'Material', '60" Mesa Fire Pit', 'Hammered Copper', 'CPRTT6024', 2158, NULL, NULL, NULL, NULL),
	('67e268fd-e3df-407f-81e3-1844b72f1bb3', '2025-02-01 20:06:25.784914+00', '2025-02-06 20:09:33.981962+00', 'Material', '60" Mesa Fire Pit', 'Powder Coat', 'PCTT6024', 129, NULL, NULL, NULL, NULL),
	('d565583d-9659-4cc6-8b3e-c7376320e509', '2025-02-01 20:06:25.784914+00', '2025-02-06 20:09:33.981962+00', 'Material', '60" Mesa Fire Pit', 'Corten Steel', 'CSTT6024', NULL, NULL, NULL, NULL, NULL),
	('9bcab13d-4bf6-4f5b-bbb2-ced479f8465b', '2025-02-01 20:06:25.784914+00', '2025-02-06 20:09:33.981962+00', 'Material', '60" Moderno Fire Pit', 'Hammered Copper', 'HC6028', 864, NULL, NULL, NULL, NULL),
	('7b4c6dae-8a48-4fb7-8a36-12eedee5b0f6', '2025-02-01 20:06:25.784914+00', '2025-02-06 20:09:33.981962+00', 'Material', '60" Moderno Fire Pit', 'Powder Coat', 'PC6028', NULL, NULL, NULL, NULL, NULL),
	('4e98444b-f206-4092-88f9-90f5f5a5aea0', '2025-02-01 20:06:25.784914+00', '2025-02-06 20:09:33.981962+00', 'Material', '60" Moderno Fire Pit', 'Stainless Steel', 'SS6028', 531, NULL, NULL, NULL, NULL),
	('34b73a74-0149-45ef-96a0-72361dc87f61', '2025-01-27 17:55:57.294807+00', '2025-02-06 20:09:33.981962+00', 'Material', '60" Olympian with Sedona - 360° Spill - Self Contained Unit', 'GFRC', NULL, NULL, NULL, NULL, NULL, NULL),
	('5c547094-c851-4a69-bba7-1836313e3aa5', '2025-01-31 00:53:51.528745+00', '2025-02-06 20:09:33.981962+00', 'Material', '60" Pismo Fire Pit', 'Powder Coat', 'R6024PCR', 150, NULL, NULL, NULL, NULL),
	('a42e0656-7e7d-413f-8682-4903dd7e61dd', '2025-01-31 00:53:51.528745+00', '2025-02-06 20:09:33.981962+00', 'Material', '60" Pismo Fire Pit', 'GFRC', '2460', 1077, NULL, NULL, NULL, NULL),
	('0da3bb52-13ae-48f7-b2d5-c63fefe7672b', '2025-01-31 00:53:51.528745+00', '2025-02-06 20:09:33.981962+00', 'Material', '60" Pismo Fire Pit', 'Hammered Copper', 'CPRT6024', 1402, NULL, NULL, NULL, NULL),
	('01ab32bf-2ecb-465b-ade6-a79290f7c026', '2025-01-31 00:53:51.528745+00', '2025-02-06 20:09:33.981962+00', 'Material', '60" Pismo Fire Pit', 'Stainless Steel', 'R6024SS', 1051, NULL, NULL, NULL, NULL),
	('7b9fe115-74f4-4902-8f7a-d13e04bc8605', '2025-01-31 00:53:51.528745+00', '2025-02-06 20:09:33.981962+00', 'Material', '60" Pismo Fire Pit', 'Corten Steel', 'R6024CS', NULL, NULL, NULL, NULL, NULL),
	('3868a9b4-2911-4678-b651-09a17262248d', '2025-01-31 00:53:51.528745+00', '2025-02-06 20:09:33.981962+00', 'Material', '60" Pismo Fire Pit - RTF', 'Hardieboard & Steel Frame', NULL, NULL, NULL, NULL, NULL, NULL),
	('02b6d385-d516-4872-819a-9c03f15f2ff7', '2025-01-31 00:53:51.528745+00', '2025-02-06 20:09:33.981962+00', 'Material', '60" Quad Fire Pit - RTF', 'Hardieboard & Steel Frame', NULL, NULL, NULL, NULL, NULL, NULL),
	('b8b4f5d0-1f1b-48da-b113-c60c6ce6a2b4', '2025-01-30 01:23:51.448608+00', '2025-02-06 20:09:33.981962+00', 'Material', '60" Regal Fire Pit', 'Stainless Steel', 'SS60', 788, NULL, NULL, NULL, NULL),
	('8361dbd0-62a5-4e16-a050-0e8fcb149396', '2025-01-30 01:23:51.448608+00', '2025-02-06 20:09:33.981962+00', 'Material', '60" Regal Fire Pit', 'GFRC', '60', 107, NULL, NULL, NULL, NULL),
	('dcdeda2e-abbd-46ee-bd82-d3c6a084fe31', '2025-01-30 01:23:51.448608+00', '2025-02-06 20:09:33.981962+00', 'Material', '60" Regal Fire Pit', 'Powder Coat', 'PC60', 45, NULL, NULL, NULL, NULL),
	('ed23efc5-65b4-4a9c-b19b-ea596865b0cc', '2025-01-30 01:23:51.448608+00', '2025-02-06 20:09:33.981962+00', 'Material', '60" Regal Fire Pit', 'Hammered Copper', 'CPR60', 1125, NULL, NULL, NULL, NULL),
	('d46ad209-c9f3-4508-a935-7fc8ff5905bd', '2025-01-30 01:23:51.448608+00', '2025-02-06 20:09:33.981962+00', 'Material', '60" Regal Fire Pit', 'Corten Steel', 'CS60', NULL, NULL, NULL, NULL, NULL),
	('381e2a6e-34bb-4b20-8ab7-63494ab6ba64', '2025-01-30 01:23:51.448608+00', '2025-02-06 20:09:33.981962+00', 'Material', '60" Regal Fire Pit - RTF', 'Hardieboard & Steel Frame', NULL, NULL, NULL, NULL, NULL, NULL),
	('b602bf5e-81c0-428d-8112-b70b5f181831', '2025-02-06 01:15:35.129157+00', '2025-02-06 20:09:33.981962+00', 'Material', '60" Salinas Fire Table', 'Powder Coat', 'PC60', 662, NULL, NULL, NULL, NULL),
	('e5648946-4dd8-48cb-8d87-af97db9bfcd5', '2025-02-06 01:15:35.129157+00', '2025-02-06 20:09:33.981962+00', 'Material', '60" Salinas Fire Table', 'Hammered Copper', 'CPR60', 2574, NULL, NULL, NULL, NULL),
	('54410758-c179-4fcb-90d6-a1357facf58a', '2025-02-06 01:15:35.129157+00', '2025-02-06 20:09:33.981962+00', 'Material', '60" Salinas Fire Table', 'Corten Steel', 'CS60', NULL, NULL, NULL, NULL, NULL),
	('82532555-b181-4429-9a0d-0a190743f736', '2025-02-06 01:15:35.129157+00', '2025-02-06 20:09:33.981962+00', 'Material', '60" Salinas Fire Table', 'Stainless Steel', 'SS60', 1945, NULL, NULL, NULL, NULL),
	('c10c7beb-6cec-4be2-a92b-fba809a7c3a7', '2025-01-27 17:42:41.064712+00', '2025-02-06 20:09:33.981962+00', 'Material', '60" Sedona FIre Pit - Narrow Ledge', 'GFRC', NULL, NULL, NULL, NULL, NULL, NULL),
	('4412a4f5-fc7a-4ce9-bf6e-f8a3b3b2eaac', '2025-01-27 17:42:41.064712+00', '2025-02-06 20:09:33.981962+00', 'Material', '60" Sedona Fire PIt - Wide Ledge', 'GFRC', NULL, NULL, NULL, NULL, NULL, NULL),
	('31573873-fb91-4de4-8acc-aa25a66ee8c5', '2025-01-27 17:42:41.064712+00', '2025-02-06 20:09:33.981962+00', 'Material', '60" Sedona Fire & Water Pit - 4 Way Spill', 'GFRC', NULL, NULL, NULL, NULL, NULL, NULL),
	('180b1dda-4fc5-43a2-9119-586c3d446c6d', '2025-02-04 23:50:13.379228+00', '2025-02-06 20:09:33.981962+00', 'Material', '60" Unity Fire Pit - 18" Tall', 'Hammered Copper', 'UNYCP6018', 1990, NULL, NULL, NULL, NULL),
	('d9541a64-65de-4131-83d9-dfdd1db27df4', '2025-02-04 23:50:13.379228+00', '2025-02-06 20:09:33.981962+00', 'Material', '60" Unity Fire Pit - 18" Tall', 'Powder Coat', 'UNYPC6018', NULL, NULL, NULL, NULL, NULL),
	('e0d7d93c-827d-4e0b-b3ac-3928b26c11e8', '2025-02-04 23:50:13.379228+00', '2025-02-06 20:09:33.981962+00', 'Material', '60" Unity Fire Pit - 18" Tall', 'Corten Steel', 'RCRTN6018', 58, NULL, NULL, NULL, NULL),
	('1f3518b3-543f-4261-b83b-4e391abe2114', '2025-02-04 23:50:13.379228+00', '2025-02-06 20:09:33.981962+00', 'Material', '60" Unity Fire Pit - 18" Tall', 'Stainless Steel', 'UNYSS6018', 1256, NULL, NULL, NULL, NULL),
	('3c64c48b-b899-460f-9705-5127871e39ff', '2025-02-04 23:50:13.379228+00', '2025-02-06 20:09:33.981962+00', 'Material', '60" Unity Fire Pit - 24" Tall', 'Powder Coat', 'UNYPC60', NULL, NULL, NULL, NULL, NULL),
	('ca19f99d-e8ee-44cc-a10f-4fd0ad0093c9', '2025-02-04 23:50:13.379228+00', '2025-02-06 20:09:33.981962+00', 'Material', '60" Unity Fire Pit - 24" Tall', 'Stainless Steel', 'UNYSS60', 1291, NULL, NULL, NULL, NULL),
	('c1090220-c7f9-4a14-b9f5-3e9e45f84f44', '2025-02-04 23:50:13.379228+00', '2025-02-06 20:09:33.981962+00', 'Material', '60" Unity Fire Pit - 24" Tall', 'Hammered Copper', 'UNYCP60', 2068, NULL, NULL, NULL, NULL),
	('b0402e33-84ce-4bfa-9b88-6d073c8f5396', '2025-02-04 23:50:13.379228+00', '2025-02-06 20:09:33.981962+00', 'Material', '60" Unity Fire Pit - 24" Tall', 'Corten Steel', 'RCRTN60', 136, NULL, NULL, NULL, NULL),
	('868161eb-f13f-47c1-bba1-a32a69caa74a', '2025-02-04 23:50:13.379228+00', '2025-02-06 20:09:33.981962+00', 'Material', '60" Unity Fire Pit - RTF', 'Hardieboard & Steel Frame', NULL, NULL, NULL, NULL, NULL, NULL),
	('19bab480-3adb-48a2-a848-798563619067', '2025-01-28 17:15:22.235493+00', '2025-02-06 20:09:33.981962+00', 'Material', '60" x 20" Linear Maya Fire Bowl', 'Powder Coat', 'PCFO', NULL, NULL, NULL, NULL, NULL),
	('4a4124a8-8b58-4fe0-bfc5-4df4ca980213', '2025-01-28 17:15:22.235493+00', '2025-02-06 20:09:33.981962+00', 'Material', '60" x 20" Linear Maya Fire Bowl', 'Hammered Copper', 'CFO', 990, NULL, NULL, NULL, NULL),
	('4ce60479-8f3e-4bc9-91f8-9dbe2a416d11', '2025-01-28 17:15:22.235493+00', '2025-02-06 20:09:33.981962+00', 'Material', '60" x 20" Linear Maya Fire Bowl', 'Stainless Steel', 'SSFO', 990, NULL, NULL, NULL, NULL),
	('73d8b669-68c6-4c18-8954-36d952b5c91f', '2025-01-28 22:27:41.897719+00', '2025-02-06 20:09:33.981962+00', 'Material', '60" x 28" Linear Avalon Fire Pit - 15" Tall', 'Powder Coat', 'PC6015', 238, NULL, NULL, NULL, NULL),
	('2bce3668-9720-4d8e-a0cb-a06bfdf9d365', '2025-01-28 22:27:41.897719+00', '2025-02-06 20:09:33.981962+00', 'Material', '60" x 28" Linear Avalon Fire Pit - 15" Tall', 'Corten Steel', 'CS6015', NULL, NULL, NULL, NULL, NULL),
	('725c6e15-36f7-456d-8391-80b357439a3b', '2025-01-28 22:27:41.897719+00', '2025-02-06 20:09:33.981962+00', 'Material', '60" x 28" Linear Avalon Fire Pit - 24" Tall', 'Powder Coat', 'PC6024', 118, NULL, NULL, NULL, NULL),
	('746e6087-58cf-4f7a-aff6-f0914c868484', '2025-01-28 22:27:41.897719+00', '2025-02-06 20:09:33.981962+00', 'Material', '60" x 28" Linear Avalon Fire Pit - 24" Tall', 'Stainless Steel', 'SS6024', 953, NULL, NULL, NULL, NULL),
	('28c76d48-982b-48cd-a81f-fd1b07fb3796', '2025-01-28 22:27:41.897719+00', '2025-02-06 20:09:33.981962+00', 'Material', '60" x 28" Linear Avalon Fire Pit - 24" Tall', 'Hammered Copper', 'CPR6024', 1902, NULL, NULL, NULL, NULL),
	('53c55878-f00e-4d8a-a134-309e45511daf', '2025-01-28 22:27:41.897719+00', '2025-02-06 20:09:33.981962+00', 'Material', '60" x 28" Linear Avalon Fire Pit - 24" Tall', 'Corten Steel', 'CS6024', NULL, NULL, NULL, NULL, NULL),
	('bd5cb324-53f2-46cd-9b29-0814939e2dc3', '2025-01-31 00:53:51.528745+00', '2025-02-06 20:09:33.981962+00', 'Material', '66" Cabo Linear Fire Pit', 'Powder Coat', 'PC', 473, NULL, NULL, NULL, NULL),
	('c8080147-44ee-4a6e-822b-bca55322abda', '2025-01-31 00:53:51.528745+00', '2025-02-06 20:09:33.981962+00', 'Material', '66" Cabo Linear Fire Pit', 'Stainless Steel', 'SS', 1588, NULL, NULL, NULL, NULL),
	('ee63267c-a159-463a-92f0-3f5ce6069739', '2025-01-31 00:53:51.528745+00', '2025-02-06 20:09:33.981962+00', 'Material', '66" Cabo Linear Fire Pit', 'Hammered Copper', 'CPR', 2041, NULL, NULL, NULL, NULL),
	('26f4af21-194c-4fec-a8a1-987a35c03230', '2025-01-31 00:53:51.528745+00', '2025-02-06 20:09:33.981962+00', 'Material', '66" Cabo Linear Fire Pit', 'Corten Steel', 'CS', 92, NULL, NULL, NULL, NULL),
	('9c81ba33-6d2e-45b6-8339-c245d32abc80', '2025-01-31 00:53:51.528745+00', '2025-02-06 20:09:33.981962+00', 'Material', '66" Cabo Linear Fire Pit', 'GFRC', NULL, NULL, NULL, NULL, NULL, NULL),
	('9caa81f9-13e3-4936-bac4-b530a84056e9', '2025-02-01 20:06:25.784914+00', '2025-02-06 20:09:33.981962+00', 'Material', '72" Big Sur Fire Pit', 'Wood Grain', NULL, NULL, NULL, NULL, NULL, NULL),
	('79de7e02-b04a-4e19-9405-85841912622c', '2025-02-01 20:06:25.784914+00', '2025-02-06 20:09:33.981962+00', 'Material', '72" Billow Fire Pit', 'Stainless Steel', 'SS72', 1128, NULL, NULL, NULL, NULL),
	('d5e05328-ae68-4341-a8f6-cb6c762181eb', '2025-02-01 20:06:25.784914+00', '2025-02-06 20:09:33.981962+00', 'Material', '72" Billow Fire Pit', 'Powder Coat', 'PC72', NULL, NULL, NULL, NULL, NULL),
	('2cc315a7-0c1f-42dd-9168-d37e3cc1d52f', '2025-02-01 20:06:25.784914+00', '2025-02-06 20:09:33.981962+00', 'Material', '72" Billow Fire Pit', 'Corten Steel', 'CS72', 80, NULL, NULL, NULL, NULL),
	('5673e3eb-1c5c-4671-ae24-0c88184fe0a2', '2025-02-01 20:06:25.784914+00', '2025-02-06 20:09:33.981962+00', 'Material', '72" Billow Fire Pit', 'Hammered Copper', 'CPR72', 2620, NULL, NULL, NULL, NULL),
	('ee3e6c49-10f6-4ec0-9721-2b4b4b005324', '2025-02-01 20:06:25.784914+00', '2025-02-06 20:09:33.981962+00', 'Material', '72" Bispo Fire Pit', 'Hammered Copper', 'CPR72', 2266, NULL, NULL, NULL, NULL),
	('fd597bec-feeb-4285-afa2-491ce868119f', '2025-02-01 20:06:25.784914+00', '2025-02-06 20:09:33.981962+00', 'Material', '72" Bispo Fire Pit', 'Corten Steel', 'CS72', 120, NULL, NULL, NULL, NULL),
	('db5df104-fd4e-413a-ac8f-6aed1472f9bd', '2025-02-01 20:06:25.784914+00', '2025-02-06 20:09:33.981962+00', 'Material', '72" Bispo Fire Pit', 'Stainless Steel', 'SS72', 716, NULL, NULL, NULL, NULL),
	('f5b37b79-3d48-4fdb-bc01-ae9d92ad2358', '2025-02-01 20:06:25.784914+00', '2025-02-06 20:09:33.981962+00', 'Material', '72" Bispo Fire Pit', 'Powder Coat', 'PC72', NULL, NULL, NULL, NULL, NULL),
	('9f2aea3a-7c8d-496c-a42b-3ccdc9087125', '2025-01-31 00:53:51.528745+00', '2025-02-06 20:09:33.981962+00', 'Material', '72" Carmen Fire Pit - 16" Tall', 'Hammered Copper', 'CPR7216', 781, NULL, NULL, NULL, NULL),
	('eaacbc9e-333a-4f08-9024-221b28279111', '2025-01-31 00:53:51.528745+00', '2025-02-06 20:09:33.981962+00', 'Material', '72" Carmen Fire Pit - 16" Tall', 'Stainless Steel', 'SS7216', 285, NULL, NULL, NULL, NULL),
	('c90bf58a-5794-4926-99bf-e2484eb4959c', '2025-01-31 00:53:51.528745+00', '2025-02-06 20:09:33.981962+00', 'Material', '72" Carmen Fire Pit - 16" Tall', 'Corten Steel', 'CS7216', NULL, NULL, NULL, NULL, NULL),
	('0aa1f3e7-11fb-4f09-a3bf-f475961d6fa3', '2025-01-31 00:53:51.528745+00', '2025-02-06 20:09:33.981962+00', 'Material', '72" Carmen Fire Pit - 16" Tall', 'GFRC', '7216', 563, NULL, NULL, NULL, NULL),
	('add2198a-7475-49c2-8174-e3b38bfdacbb', '2025-01-31 00:53:51.528745+00', '2025-02-06 20:09:33.981962+00', 'Material', '72" Carmen Fire Pit - 16" Tall', 'Powder Coat', 'PC7216', 247, NULL, NULL, NULL, NULL),
	('21a4b0c2-6f82-4460-ba3a-059a52a5a228', '2025-01-31 00:53:51.528745+00', '2025-02-06 20:09:33.981962+00', 'Material', '72" Carmen Fire Pit - 24" Tall', 'Powder Coat', 'PC7224', 379, NULL, NULL, NULL, NULL),
	('9695a569-754b-4b11-a605-ce28e5574449', '2025-01-31 00:53:51.528745+00', '2025-02-06 20:09:33.981962+00', 'Material', '72" Carmen Fire Pit - 24" Tall', 'GFRC', '7224', 691, NULL, NULL, NULL, NULL),
	('5eaa6e17-e5f3-487c-af80-6093f2548792', '2025-01-31 00:53:51.528745+00', '2025-02-06 20:09:33.981962+00', 'Material', '72" Carmen Fire Pit - 24" Tall', 'Hammered Copper', 'CPR7224', 1096, NULL, NULL, NULL, NULL),
	('d4654dfe-c09a-427c-a47c-243330e5ff0c', '2025-01-31 00:53:51.528745+00', '2025-02-06 20:09:33.981962+00', 'Material', '72" Carmen Fire Pit - 24" Tall', 'Stainless Steel', 'SS7224', 614, NULL, NULL, NULL, NULL),
	('821aee4a-42ef-438a-aee5-456e05dc0a87', '2025-01-31 00:53:51.528745+00', '2025-02-06 20:09:33.981962+00', 'Material', '72" Carmen Fire Pit - 24" Tall', 'Corten Steel', 'CS7224', NULL, NULL, NULL, NULL, NULL),
	('b01aa4a9-f804-4072-991e-0e910e9cf8e1', '2025-02-01 20:06:25.784914+00', '2025-02-06 20:09:33.981962+00', 'Material', '72" Catalina Fire Pit - RTF', 'Hardieboard & Steel Frame', NULL, NULL, NULL, NULL, NULL, NULL),
	('ef1488e9-f148-4d54-82a7-211e9f3613ec', '2025-01-31 00:53:51.528745+00', '2025-02-06 20:09:33.981962+00', 'Material', '72" Coronado Fire Pit', 'Powder Coat', 'PC72', 75, NULL, NULL, NULL, NULL),
	('04e57517-7b34-4f7b-b7e2-db76e67f9e4d', '2025-01-31 00:53:51.528745+00', '2025-02-06 20:09:33.981962+00', 'Material', '72" Coronado Fire Pit', 'Stainless Steel', 'SS72', 820, NULL, NULL, NULL, NULL),
	('db4e3c36-a54d-447e-9c34-95e7b9bdc403', '2025-01-31 00:53:51.528745+00', '2025-02-06 20:09:33.981962+00', 'Material', '72" Coronado Fire Pit', 'Corten Steel', 'CS72', NULL, NULL, NULL, NULL, NULL),
	('9dc9e72a-bdf3-4f50-8f2d-10726855a4ab', '2025-01-31 00:53:51.528745+00', '2025-02-06 20:09:33.981962+00', 'Material', '72" Coronado Fire Pit', 'Wood Grain', '72', 1184, NULL, NULL, NULL, NULL),
	('73639f1c-6a0d-4f8e-9185-cbd7e9579061', '2025-01-31 00:53:51.528745+00', '2025-02-06 20:09:33.981962+00', 'Material', '72" Coronado Fire Pit', 'Hammered Copper', 'CPR72', 1604, NULL, NULL, NULL, NULL),
	('0f84a3e1-9503-4d48-915c-11830d3c0e2c', '2025-01-31 00:53:51.528745+00', '2025-02-06 20:09:33.981962+00', 'Material', '72" Coronado Fire Pit - RTF', 'Hardieboard & Steel Frame', NULL, NULL, NULL, NULL, NULL, NULL),
	('bf34e7ba-12cc-439b-b9b0-52a24d5adf65', '2025-01-31 00:53:51.528745+00', '2025-02-06 20:09:33.981962+00', 'Material', '72" Eaves Fire Pit', 'Powder Coat', 'PC72', 137, NULL, NULL, NULL, NULL),
	('77c06a0f-5768-4264-948d-82d4d9fb10c7', '2025-01-31 00:53:51.528745+00', '2025-02-06 20:09:33.981962+00', 'Material', '72" Eaves Fire Pit', 'Corten Steel', 'CS72', NULL, NULL, NULL, NULL, NULL),
	('196b861d-2797-4b14-bb45-18be9d8673a4', '2025-01-31 00:53:51.528745+00', '2025-02-06 20:09:33.981962+00', 'Material', '72" Eaves Fire Pit', 'Hammered Copper', 'CPR72', 563, NULL, NULL, NULL, NULL),
	('661dd955-f8db-4687-95b6-728d03801473', '2025-01-31 00:53:51.528745+00', '2025-02-06 20:09:33.981962+00', 'Material', '72" Eaves Fire Pit', 'Stainless Steel', 'SS72', 495, NULL, NULL, NULL, NULL),
	('07b1272d-2acd-40eb-8eae-175225a6eb3b', '2025-01-29 01:06:39.793179+00', '2025-02-06 20:09:33.981962+00', 'Material', '72" Florence Fire Pit - 20" Tall', 'GFRC', NULL, NULL, NULL, NULL, NULL, NULL),
	('ec8d4b54-d1a7-4f3a-85f6-f902b8585796', '2025-01-29 01:06:39.793179+00', '2025-02-06 20:09:33.981962+00', 'Material', '72" Florence Fire Pit - RTF', 'Hardieboard & Steel Frame', NULL, NULL, NULL, NULL, NULL, NULL),
	('fdfff1ea-1cee-4888-8678-f978a8e51681', '2025-02-01 20:06:25.784914+00', '2025-02-06 20:09:33.981962+00', 'Material', '72" Forma Fire Pit - RTF', 'Hardieboard & Steel Frame', NULL, NULL, NULL, NULL, NULL, NULL),
	('19b44f64-4359-4303-acd2-43dd70322539', '2025-02-04 23:50:13.379228+00', '2025-02-06 20:09:33.981962+00', 'Material', '72" La Jolla Fire Pit', 'Powder Coat', 'PC72', NULL, NULL, NULL, NULL, NULL),
	('d172980f-8753-451d-9646-8407cb0c5a18', '2025-02-04 23:50:13.379228+00', '2025-02-06 20:09:33.981962+00', 'Material', '72" La Jolla Fire Pit', 'Hammered Copper', 'CPR72', 2331, NULL, NULL, NULL, NULL),
	('338131cc-5898-477d-a725-4cc38f3fec1f', '2025-02-04 23:50:13.379228+00', '2025-02-06 20:09:33.981962+00', 'Material', '72" La Jolla Fire Pit', 'Stainless Steel', 'SS72', 716, NULL, NULL, NULL, NULL),
	('e6db1765-3757-4d4d-9901-9b1b2972a167', '2025-02-04 23:50:13.379228+00', '2025-02-06 20:09:33.981962+00', 'Material', '72" La Jolla Fire Pit', 'Corten Steel', 'CS72', 120, NULL, NULL, NULL, NULL),
	('328af6fa-01f6-495c-9abf-6ae297aa3689', '2025-02-06 01:15:35.129157+00', '2025-02-06 20:09:33.981962+00', 'Material', '72" Mabel Fire Table - RTF - 16" Tall', 'Hardieboard & Steel Frame', NULL, NULL, NULL, NULL, NULL, NULL),
	('4fefca97-e2db-4b77-9980-eaff45204df2', '2025-02-06 01:15:35.129157+00', '2025-02-06 20:09:33.981962+00', 'Material', '72" Mabel Fire Table - RTF - 24" Tall', 'Hardieboard & Steel Frame', NULL, NULL, NULL, NULL, NULL, NULL),
	('2cd56534-42c0-41c7-8b71-bd24bfa4780e', '2025-02-01 20:06:25.784914+00', '2025-02-06 20:09:33.981962+00', 'Material', '72" Mesa Fire Pit', 'Stainless Steel', 'SSTT7224', 938, NULL, NULL, NULL, NULL),
	('17a39538-6008-4836-9a38-8594ba33c911', '2025-02-01 20:06:25.784914+00', '2025-02-06 20:09:33.981962+00', 'Material', '72" Mesa Fire Pit', 'Powder Coat', 'PCTT7224', 194, NULL, NULL, NULL, NULL),
	('a8b5bbf8-4308-478f-991a-7f92a2953d34', '2025-02-01 20:06:25.784914+00', '2025-02-06 20:09:33.981962+00', 'Material', '72" Mesa Fire Pit', 'Hammered Copper', 'CPRTT7224', 2179, NULL, NULL, NULL, NULL),
	('63f0847c-7842-4278-907e-2bb7b8a563e2', '2025-02-01 20:06:25.784914+00', '2025-02-06 20:09:33.981962+00', 'Material', '72" Mesa Fire Pit', 'Corten Steel', 'CSTT7224', NULL, NULL, NULL, NULL, NULL),
	('eb02b358-3e5a-4575-9d1a-db52970072dc', '2025-02-01 20:06:25.784914+00', '2025-02-06 20:09:33.981962+00', 'Material', '72" Moderno Fire Pit', 'Hammered Copper', 'HC7228', 1351, NULL, NULL, NULL, NULL),
	('473ed645-be28-4395-beea-1625b9e98d8d', '2025-02-01 20:06:25.784914+00', '2025-02-06 20:09:33.981962+00', 'Material', '72" Moderno Fire Pit', 'Powder Coat', 'PC7228', NULL, NULL, NULL, NULL, NULL),
	('481a0422-3e58-4495-8fa3-c80e7a0d9487', '2025-02-01 20:06:25.784914+00', '2025-02-06 20:09:33.981962+00', 'Material', '72" Moderno Fire Pit', 'Stainless Steel', 'SS7228', 567, NULL, NULL, NULL, NULL),
	('bcc11815-7bbe-4224-8e3c-9ca70f1cee9b', '2025-01-31 00:53:51.528745+00', '2025-02-06 20:09:33.981962+00', 'Material', '72" Pismo Fire Pit', 'Hammered Copper', 'CPRT7224', 1542, NULL, NULL, NULL, NULL),
	('2482d513-029e-4cf9-ba76-94d3542477c7', '2025-01-31 00:53:51.528745+00', '2025-02-06 20:09:33.981962+00', 'Material', '72" Pismo Fire Pit', 'Powder Coat', 'R7224PCR', 36, NULL, NULL, NULL, NULL),
	('83659f90-e121-43f0-8a29-9bdfe3aed9c7', '2025-01-31 00:53:51.528745+00', '2025-02-06 20:09:33.981962+00', 'Material', '72" Pismo Fire Pit', 'Corten Steel', 'R7224CS', NULL, NULL, NULL, NULL, NULL),
	('3078033c-582b-4811-b1b9-987988d3c03b', '2025-01-31 00:53:51.528745+00', '2025-02-06 20:09:33.981962+00', 'Material', '72" Pismo Fire Pit', 'Stainless Steel', 'R7224SS', 900, NULL, NULL, NULL, NULL),
	('0cff09cd-e8f3-46c9-82c5-e69adbc1fc57', '2025-01-31 00:53:51.528745+00', '2025-02-06 20:09:33.981962+00', 'Material', '72" Pismo Fire Pit - RTF', 'Hardieboard & Steel Frame', NULL, NULL, NULL, NULL, NULL, NULL),
	('1401a505-88d6-485a-901b-c980473eb001', '2025-01-31 00:53:51.528745+00', '2025-02-06 20:09:33.981962+00', 'Material', '72" Quad Fire Pit - RTF', 'Hardieboard & Steel Frame', NULL, NULL, NULL, NULL, NULL, NULL),
	('14a2ba0e-e28f-490d-a635-9d8af8af5d96', '2025-01-30 01:23:51.448608+00', '2025-02-06 20:09:33.981962+00', 'Material', '72" Regal Fire Pit - RTF', 'Hardieboard & Steel Frame', NULL, NULL, NULL, NULL, NULL, NULL),
	('d80fa2f6-412a-459a-add8-975cb77abd10', '2025-02-04 23:50:13.379228+00', '2025-02-06 20:09:33.981962+00', 'Material', '72" Unity Fire Pit - 18" Tall', 'Hammered Copper', 'UNYCP7218', 2301, NULL, NULL, NULL, NULL),
	('27f224cb-66b4-4399-ad2f-8eeec4d9b5e0', '2025-02-04 23:50:13.379228+00', '2025-02-06 20:09:33.981962+00', 'Material', '72" Unity Fire Pit - 18" Tall', 'Corten Steel', 'RCRTN7218', NULL, NULL, NULL, NULL, NULL),
	('2d8589d0-a11a-40ee-a726-ae955df736ca', '2025-02-04 23:50:13.379228+00', '2025-02-06 20:09:33.981962+00', 'Material', '72" Unity Fire Pit - 18" Tall', 'Stainless Steel', 'UNYSS7218', 1534, NULL, NULL, NULL, NULL),
	('496f3054-1f62-4c89-9325-5e40dd82ba57', '2025-02-04 23:50:13.379228+00', '2025-02-06 20:09:33.981962+00', 'Material', '72" Unity Fire Pit - 18" Tall', 'Powder Coat', 'UNYPC7218', 77, NULL, NULL, NULL, NULL),
	('6fd6d3eb-c23f-4df2-a0ba-c39097536ecf', '2025-02-04 23:50:13.379228+00', '2025-02-06 20:09:33.981962+00', 'Material', '72" Unity Fire Pit - 24" Tall', 'Hammered Copper', 'UNYCP72', 2489, NULL, NULL, NULL, NULL),
	('bc8814d0-a67f-4709-ad04-984c380b6fc2', '2025-02-04 23:50:13.379228+00', '2025-02-06 20:09:33.981962+00', 'Material', '72" Unity Fire Pit - 24" Tall', 'Powder Coat', 'UNYPC72', 151, NULL, NULL, NULL, NULL),
	('999eb523-fd0b-45c2-8f5d-d2e6cc7c7650', '2025-02-04 23:50:13.379228+00', '2025-02-06 20:09:33.981962+00', 'Material', '72" Unity Fire Pit - 24" Tall', 'Stainless Steel', 'UNYSS72', 1620, NULL, NULL, NULL, NULL),
	('fb60e2ad-de2a-4886-bb5c-58785c11ee1f', '2025-02-04 23:50:13.379228+00', '2025-02-06 20:09:33.981962+00', 'Material', '72" Unity Fire Pit - 24" Tall', 'Corten Steel', 'RCRTN72', NULL, NULL, NULL, NULL, NULL),
	('c88d51d9-f984-4a2d-9666-b7d6bc3968b3', '2025-02-04 23:50:13.379228+00', '2025-02-06 20:09:33.981962+00', 'Material', '72" Unity Fire Pit - RTF', 'Hardieboard & Steel Frame', NULL, NULL, NULL, NULL, NULL, NULL),
	('ea810c6e-a56c-4c38-a4c8-d0640a3063d5', '2025-01-28 17:15:22.235493+00', '2025-02-06 20:09:33.981962+00', 'Material', '72" x 20" Linear Maya Fire Bowl', 'Powder Coat', 'PCFO', NULL, NULL, NULL, NULL, NULL),
	('4d7001f5-3f35-42f7-835d-85f3df204593', '2025-02-01 20:06:25.784914+00', '2025-02-06 20:09:33.981962+00', 'Material', '48" Bispo Fire Pit', 'Corten Steel', 'CS48', NULL, NULL, NULL, NULL, NULL),
	('fb58f991-2c21-4235-a2de-e097e3162bca', '2025-02-01 20:06:25.784914+00', '2025-02-06 20:09:33.981962+00', 'Material', '48" Bispo Fire Pit', 'Stainless Steel', 'SS48', 477, NULL, NULL, NULL, NULL),
	('b2a358b5-fb8b-4a85-9d70-96cc0082c9cc', '2025-02-01 20:06:25.784914+00', '2025-02-06 20:09:33.981962+00', 'Material', '48" Bispo Fire Pit', 'Powder Coat', 'PC48', 233, NULL, NULL, NULL, NULL),
	('da966ac9-c7c4-4702-b7c5-feeb9a9cd860', '2025-02-01 20:06:25.784914+00', '2025-02-06 20:09:33.981962+00', 'Material', '48" Bispo Fire Pit', 'Hammered Copper', 'CPR48', 1790, NULL, NULL, NULL, NULL),
	('82167648-6b29-44a2-8ce9-2a00ca20a812', '2025-02-01 20:06:25.784914+00', '2025-02-06 20:09:33.981962+00', 'Material', '60" Bispo Fire Pit', 'Corten Steel', 'CS60', NULL, NULL, NULL, NULL, NULL),
	('5536731c-6b34-4a45-a607-dc129d93964f', '2025-02-01 20:06:25.784914+00', '2025-02-06 20:09:33.981962+00', 'Material', '60" Bispo Fire Pit', 'Powder Coat', 'PC60', NULL, NULL, NULL, NULL, NULL),
	('b7d08e38-2112-4d41-9d94-403487ab31f6', '2025-02-01 20:06:25.784914+00', '2025-02-06 20:09:33.981962+00', 'Material', '60" Bispo Fire Pit', 'Stainless Steel', 'SS60', 660, NULL, NULL, NULL, NULL),
	('d65fd916-8dd5-436d-8353-52f83992dfa9', '2025-02-01 20:06:25.784914+00', '2025-02-06 20:09:33.981962+00', 'Material', '60" Bispo Fire Pit', 'Hammered Copper', 'CPR60', 1907, NULL, NULL, NULL, NULL),
	('0e7b26db-08eb-4481-b0dd-23f5f5cb1256', '2025-01-28 17:15:22.235493+00', '2025-02-06 20:09:33.981962+00', 'Material', '60" x 20" Linear Maya Fire Bowl', 'GFRC', 'FO', NULL, NULL, NULL, NULL, NULL),
	('4826845a-fac0-48aa-b117-f9cd3847b99c', '2025-01-28 17:15:22.235493+00', '2025-02-06 20:09:33.981962+00', 'Material', '60" x 20" Linear Maya Fire & Water Bowl', 'GFRC', 'FW', 1192, NULL, NULL, NULL, NULL),
	('a2b02b8a-ae15-47e7-a4d0-cfb5f7ad2dcb', '2025-01-28 17:15:22.235493+00', '2025-02-06 20:09:33.981962+00', 'Material', '60" x 20" Linear Maya Fire & Water Bowl', 'Stainless Steel', 'SSFW', 1449, NULL, NULL, NULL, NULL),
	('acc96799-ae4b-4246-8ee2-abc80347de9f', '2025-01-28 17:15:22.235493+00', '2025-02-06 20:09:33.981962+00', 'Material', '60" x 20" Linear Maya Fire & Water Bowl', 'Powder Coat', 'PCFW', NULL, NULL, NULL, NULL, NULL),
	('e06fb96b-0576-46a2-a4cb-e639ca34eb73', '2025-01-28 17:15:22.235493+00', '2025-02-06 20:09:33.981962+00', 'Material', '60" x 20" Linear Maya Fire & Water Bowl', 'Hammered Copper', 'CFW', 1449, NULL, NULL, NULL, NULL),
	('0f086b72-22eb-4076-b052-5fdd5f85498e', '2025-01-29 01:06:39.793179+00', '2025-02-06 20:09:33.981962+00', 'Material', '60" x 24" Moderna Rectangular Planter', 'Corten Steel', NULL, NULL, NULL, NULL, NULL, NULL),
	('db50b519-17bf-4cd8-8461-c5a1e8f48f5d', '2025-01-28 22:27:41.897719+00', '2025-02-06 20:09:33.981962+00', 'Material', '60" x 28" Linear Avalon Fire Pit - 15" Tall', 'Stainless Steel', 'SS6015', 954, NULL, NULL, NULL, NULL),
	('8d7f443c-a3ae-4f7a-801f-a33901b9149c', '2025-01-28 22:27:41.897719+00', '2025-02-06 20:09:33.981962+00', 'Material', '60" x 28" Linear Avalon Fire Pit - 15" Tall', 'Hammered Copper', 'CPR6015', 1789, NULL, NULL, NULL, NULL),
	('d56903b0-0c60-4170-88ea-e42b3f8d5e8a', '2025-02-01 20:06:25.784914+00', '2025-02-06 20:09:33.981962+00', 'Material', '72" Catalina Fire Pit', 'Wood Grain', NULL, NULL, NULL, NULL, NULL, NULL),
	('7b1a3fd6-097a-4748-a996-621761cf4e6e', '2025-02-04 23:50:13.379228+00', '2025-02-06 20:09:33.981962+00', 'Material', '30" Beverly Fire Pit', 'Hammered Copper', 'RRCPR', 1598, NULL, NULL, NULL, NULL),
	('d8540e60-2938-47c9-9fd5-3b91727c741a', '2025-02-04 23:50:13.379228+00', '2025-02-06 20:09:33.981962+00', 'Material', '30" Beverly Fire Pit', 'Powder Coat', 'PCB', 75, NULL, NULL, NULL, NULL),
	('69334301-650a-4c95-9942-1ae70f60ea96', '2025-02-04 23:50:13.379228+00', '2025-02-06 20:09:33.981962+00', 'Material', '30" Beverly Fire Pit', 'Stainless Steel', 'RRSS', 451, NULL, NULL, NULL, NULL),
	('b107d903-3021-41b6-bdbe-b7a726888d38', '2025-02-04 23:50:13.379228+00', '2025-02-06 20:09:33.981962+00', 'Material', '30" Beverly Fire Pit', 'Corten Steel', 'RRCS', NULL, NULL, NULL, NULL, NULL),
	('f85d6536-9c75-446c-80a6-411d323ad662', '2025-02-04 23:50:13.379228+00', '2025-02-06 20:09:33.981962+00', 'Material', '36" Beverly Fire Pit', 'Corten Steel', 'RRCS', NULL, NULL, NULL, NULL, NULL),
	('5f3cc70d-d5aa-4a8a-9140-10f79dc7b96b', '2025-02-04 23:50:13.379228+00', '2025-02-06 20:09:33.981962+00', 'Material', '36" Beverly Fire Pit', 'Hammered Copper', 'RRCPR', 1545, NULL, NULL, NULL, NULL),
	('9be1a9c2-668c-467e-a62d-af70d94a3728', '2025-02-04 23:50:13.379228+00', '2025-02-06 20:09:33.981962+00', 'Material', '36" Beverly Fire Pit', 'Powder Coat', 'PCB', 61, NULL, NULL, NULL, NULL),
	('c4de85fd-9de6-4c93-ab66-79393a2309a6', '2025-02-04 23:50:13.379228+00', '2025-02-06 20:09:33.981962+00', 'Material', '36" Beverly Fire Pit', 'Stainless Steel', 'RRSS', 563, NULL, NULL, NULL, NULL),
	('4f244e7f-75d1-4672-94a9-89b005933709', '2025-02-04 23:50:13.379228+00', '2025-02-06 20:09:33.981962+00', 'Material', '42" Beverly Fire Pit', 'Stainless Steel', 'RRSS', 677, NULL, NULL, NULL, NULL),
	('165f5625-37b6-4cea-88f8-b232b9a22043', '2025-02-04 23:50:13.379228+00', '2025-02-06 20:09:33.981962+00', 'Material', '42" Beverly Fire Pit', 'Corten Steel', 'RRCS', NULL, NULL, NULL, NULL, NULL),
	('dc7a5a3b-7f55-483d-ad8b-bfa6384cfff3', '2025-02-04 23:50:13.379228+00', '2025-02-06 20:09:33.981962+00', 'Material', '42" Beverly Fire Pit', 'Powder Coat', 'PCB', 47, NULL, NULL, NULL, NULL),
	('3a3c8712-491c-47f8-a01e-47a53282e18e', '2025-02-04 23:50:13.379228+00', '2025-02-06 20:09:33.981962+00', 'Material', '42" Beverly Fire Pit', 'Hammered Copper', 'RRCSPR', 1972, NULL, NULL, NULL, NULL),
	('64bc5341-4a75-498e-9c7e-d08167eadc15', '2025-02-04 23:50:13.379228+00', '2025-02-06 20:09:33.981962+00', 'Material', '48" Alameda Fire Table', 'Powder Coat', 'PC48', 52, NULL, NULL, NULL, NULL),
	('dcd66c5b-3f71-4b93-9b91-4663a02572fc', '2025-02-04 23:50:13.379228+00', '2025-02-06 20:09:33.981962+00', 'Material', '48" Alameda Fire Table', 'Corten Steel', 'CS48', NULL, NULL, NULL, NULL, NULL),
	('19cd882f-1f2e-410b-802d-14340d4aab04', '2025-02-05 16:55:05.875537+00', '2025-02-06 20:09:33.981962+00', 'Material', '48" Fremont Fire Pit - 15" Tall', 'Stainless Steel', 'SS4815', 477, NULL, NULL, NULL, NULL),
	('4a2df1d2-61c9-45f9-81e9-4370097a4016', '2025-02-05 16:55:05.875537+00', '2025-02-06 20:09:33.981962+00', 'Material', '48" Fremont Fire Pit - 15" Tall', 'Corten Steel', 'CS4815', NULL, NULL, NULL, NULL, NULL),
	('a3aef15c-e9a1-4b60-a8ab-f3d81f605c5d', '2025-02-05 16:55:05.875537+00', '2025-02-06 20:09:33.981962+00', 'Material', '48" Fremont Fire Pit - 15" Tall', 'Powder Coat', 'PC4815', 119, NULL, NULL, NULL, NULL),
	('a0d93a61-8fdb-4815-af79-3064c204ebec', '2025-02-05 16:55:05.875537+00', '2025-02-06 20:09:33.981962+00', 'Material', '48" Fremont Fire Pit - 15" Tall', 'Hammered Copper', 'CPR4815', 1073, NULL, NULL, NULL, NULL),
	('0e275348-d62e-4e57-8b15-5093d0ed4295', '2025-02-05 16:55:05.875537+00', '2025-02-06 20:09:33.981962+00', 'Material', '48" Fremont Fire Pit - 24" Tall', 'Corten Steel', 'CS4824', NULL, NULL, NULL, NULL, NULL),
	('dc7b3e68-3dc5-408b-804b-ce5af27dd5f5', '2025-02-05 16:55:05.875537+00', '2025-02-06 20:09:33.981962+00', 'Material', '48" Fremont Fire Pit - 24" Tall', 'Stainless Steel', 'SS4824', 477, NULL, NULL, NULL, NULL),
	('2f3547fe-bbe4-45f8-8287-69273b03f6b9', '2025-02-05 16:55:05.875537+00', '2025-02-06 20:09:33.981962+00', 'Material', '48" Fremont Fire Pit - 24" Tall', 'Powder Coat', 'PC4824', NULL, NULL, NULL, NULL, NULL),
	('035cfb78-3abc-434a-9e88-01d8dc5d8ee2', '2025-02-05 16:55:05.875537+00', '2025-02-06 20:09:33.981962+00', 'Material', '48" Fremont Fire Pit - 24" Tall', 'Hammered Copper', 'CPR4824', 1073, NULL, NULL, NULL, NULL),
	('1ab85589-1ace-4f83-b308-3a7ada511bcf', '2025-02-05 16:55:05.875537+00', '2025-02-06 20:09:33.981962+00', 'Material', '60" Fremont Fire Pit - 15" Tall', 'Corten Steel', 'CS6015', NULL, NULL, NULL, NULL, NULL),
	('48f569c0-283a-48f4-a24e-347a45291945', '2025-01-28 17:15:22.235493+00', '2025-02-06 20:09:33.981962+00', 'Material', '72" x 20" Linear Maya Fire Bowl', 'Stainless Steel', 'SSFO', 1316, NULL, NULL, NULL, NULL),
	('f210faf4-0bf4-48c4-9d80-8c5fedbf7fda', '2025-01-28 17:15:22.235493+00', '2025-02-06 20:09:33.981962+00', 'Material', '72" x 20" Linear Maya Fire Bowl', 'Hammered Copper', 'CFO', 1316, NULL, NULL, NULL, NULL),
	('f55e28f3-c22a-437c-8586-f74442ca2973', '2025-01-28 17:15:22.235493+00', '2025-02-06 20:09:33.981962+00', 'Material', '72" x 20" Linear Maya Fire Bowl', 'GFRC', 'FO', 112, NULL, NULL, NULL, NULL),
	('013ea183-6047-4f6a-876c-2953a446b666', '2025-01-28 17:15:22.235493+00', '2025-02-06 20:09:33.981962+00', 'Material', '72" x 20" Linear Maya Fire & Water Bowl', 'Hammered Copper', 'CFW', 1837, NULL, NULL, NULL, NULL),
	('8bd751a2-e47e-4ef5-9f26-803d4a10bc8a', '2025-01-28 17:15:22.235493+00', '2025-02-06 20:09:33.981962+00', 'Material', '72" x 20" Linear Maya Fire & Water Bowl', 'Stainless Steel', 'SSFW', 1837, NULL, NULL, NULL, NULL),
	('ac4b9040-1717-4ca4-af5d-4abc254905d5', '2025-01-28 17:15:22.235493+00', '2025-02-06 20:09:33.981962+00', 'Material', '72" x 20" Linear Maya Fire & Water Bowl', 'Powder Coat', 'PCFW', NULL, NULL, NULL, NULL, NULL),
	('b3c77704-0255-4696-9f6b-9ee72591f49d', '2025-01-28 17:15:22.235493+00', '2025-02-06 20:09:33.981962+00', 'Material', '72" x 20" Linear Maya Fire & Water Bowl', 'GFRC', 'FW', 1102, NULL, NULL, NULL, NULL),
	('99899dc7-6e0d-4df8-aabb-7926ccac771f', '2025-01-28 22:27:41.897719+00', '2025-02-06 20:09:33.981962+00', 'Material', '72" x 28" Linear Avalon Fire Pit - 15" Tall', 'Powder Coat', 'PC7215', 119, NULL, NULL, NULL, NULL),
	('d736759b-f8c0-42e2-ab5e-7cb6c4c4558b', '2025-01-28 22:27:41.897719+00', '2025-02-06 20:09:33.981962+00', 'Material', '72" x 28" Linear Avalon Fire Pit - 15" Tall', 'Hammered Copper', 'CPR7215', 1788, NULL, NULL, NULL, NULL),
	('7196df37-c27a-4023-9713-1b6b3cd669e4', '2025-01-28 22:27:41.897719+00', '2025-02-06 20:09:33.981962+00', 'Material', '72" x 28" Linear Avalon Fire Pit - 15" Tall', 'Stainless Steel', 'SS7215', 948, NULL, NULL, NULL, NULL),
	('b89a1144-fdeb-42b6-8e4a-3cbe5af86629', '2025-01-28 22:27:41.897719+00', '2025-02-06 20:09:33.981962+00', 'Material', '72" x 28" Linear Avalon Fire Pit - 15" Tall', 'Corten Steel', 'CS7215', NULL, NULL, NULL, NULL, NULL),
	('f8d55378-c1f3-4b3f-a4c0-85e6b5a45104', '2025-01-28 22:27:41.897719+00', '2025-02-06 20:09:33.981962+00', 'Material', '72" x 28" Linear Avalon Fire Pit - 24" Tall', 'Hammered Copper', 'CPR7224', 1788, NULL, NULL, NULL, NULL),
	('d554b6d5-bde1-4e28-a7f1-eb9c5a7a2540', '2025-01-28 22:27:41.897719+00', '2025-02-06 20:09:33.981962+00', 'Material', '72" x 28" Linear Avalon Fire Pit - 24" Tall', 'Powder Coat', 'PC7224', 119, NULL, NULL, NULL, NULL),
	('ea9d6c07-ed93-4c83-9599-65c0df1dc14a', '2025-01-28 22:27:41.897719+00', '2025-02-06 20:09:33.981962+00', 'Material', '72" x 28" Linear Avalon Fire Pit - 24" Tall', 'Corten Steel', 'CS7224', NULL, NULL, NULL, NULL, NULL),
	('c2f6e276-cf88-4b41-9aa0-7438ae25e919', '2025-01-28 22:27:41.897719+00', '2025-02-06 20:09:33.981962+00', 'Material', '72" x 28" Linear Avalon Fire Pit - 24" Tall', 'Stainless Steel', 'SS7224', 948, NULL, NULL, NULL, NULL),
	('066917c6-2422-4d97-a1d9-89df1751942e', '2025-02-06 01:15:35.129157+00', '2025-02-06 20:09:33.981962+00', 'Material', '78" Alameda Fire Table', 'Wood Grain Top & Powder Coat Base', 'WG78', 462, NULL, NULL, NULL, NULL),
	('39eb6fe9-4bec-44f1-82e8-eb4b6b4946b3', '2025-02-06 01:15:35.129157+00', '2025-02-06 20:09:33.981962+00', 'Material', '78" Alameda Fire Table', 'Corten Steel', 'CS78', NULL, NULL, NULL, NULL, NULL),
	('34d3ecdb-b598-4167-9255-23b3ed0b5d7b', '2025-02-06 01:15:35.129157+00', '2025-02-06 20:09:33.981962+00', 'Material', '78" Alameda Fire Table Black & White', 'BW Powdercoat', NULL, NULL, NULL, NULL, NULL, NULL),
	('28067d89-faed-4557-ba90-55f759f22ea0', '2025-02-01 20:06:25.784914+00', '2025-02-06 20:09:33.981962+00', 'Material', '84" Bispo Fire Pit', 'Stainless Steel', 'SS84', 1193, NULL, NULL, NULL, NULL),
	('992395cd-223b-46a5-ba03-3e15059f5359', '2025-02-01 20:06:25.784914+00', '2025-02-06 20:09:33.981962+00', 'Material', '84" Bispo Fire Pit', 'Hammered Copper', 'CPR84', 2182, NULL, NULL, NULL, NULL),
	('f67b54a9-4673-4ab5-928b-b67641974583', '2025-02-01 20:06:25.784914+00', '2025-02-06 20:09:33.981962+00', 'Material', '84" Bispo Fire Pit', 'Powder Coat', 'PC84', NULL, NULL, NULL, NULL, NULL),
	('d64fd117-3410-452b-9ac5-cd04a9e47b3c', '2025-02-01 20:06:25.784914+00', '2025-02-06 20:09:33.981962+00', 'Material', '84" Bispo Fire Pit', 'Corten Steel', 'CS84', 184, NULL, NULL, NULL, NULL),
	('540a8e3b-215d-4e80-9867-be23fd0022bb', '2025-02-01 20:06:25.784914+00', '2025-02-06 20:09:33.981962+00', 'Material', '84" Catalina Fire Pit', 'Wood Grain', NULL, NULL, NULL, NULL, NULL, NULL),
	('c7f6c39f-5529-49e0-97ce-8eedd8b8f48e', '2025-02-01 20:06:25.784914+00', '2025-02-06 20:09:33.981962+00', 'Material', '84" Catalina Fire Pit - RTF', 'Hardieboard & Steel Frame', NULL, NULL, NULL, NULL, NULL, NULL),
	('e52a8829-998c-478d-8fe5-0177c33ed2de', '2025-01-31 00:53:51.528745+00', '2025-02-06 20:09:33.981962+00', 'Material', '84" Coronado Fire Pit', 'Wood Grain', '84', 1157, NULL, NULL, NULL, NULL),
	('230a49c7-fdac-412a-bddb-6ffb3e81aa40', '2025-01-31 00:53:51.528745+00', '2025-02-06 20:09:33.981962+00', 'Material', '84" Coronado Fire Pit', 'Corten Steel', 'CS84', NULL, NULL, NULL, NULL, NULL),
	('b1562781-c7e5-4ed8-a8d1-c88a3c7c1cc5', '2025-01-31 00:53:51.528745+00', '2025-02-06 20:09:33.981962+00', 'Material', '84" Coronado Fire Pit', 'Stainless Steel', 'SS84', 824, NULL, NULL, NULL, NULL),
	('7c5e1321-ae2c-482c-adfd-68506d1f8b86', '2025-01-31 00:53:51.528745+00', '2025-02-06 20:09:33.981962+00', 'Material', '84" Coronado Fire Pit', 'Hammered Copper', 'CPR84', 2051, NULL, NULL, NULL, NULL),
	('46accc84-5af1-4e67-949c-0a3d970e188c', '2025-01-31 00:53:51.528745+00', '2025-02-06 20:09:33.981962+00', 'Material', '84" Coronado Fire Pit', 'Powder Coat', 'PC84', 299, NULL, NULL, NULL, NULL),
	('6dc47ea0-da4f-49e8-ac92-5d26426539d5', '2025-01-31 00:53:51.528745+00', '2025-02-06 20:09:33.981962+00', 'Material', '84" Coronado Fire Pit - RTF', 'Hardieboard & Steel Frame', NULL, NULL, NULL, NULL, NULL, NULL),
	('b749ebec-59a0-4bf2-971a-74f0a8f76e54', '2025-01-30 01:23:51.448608+00', '2025-02-06 20:09:33.981962+00', 'Material', '84" Florence Fire Pit - RTF', 'Hardieboard & Steel Frame', NULL, NULL, NULL, NULL, NULL, NULL),
	('c7e8a09e-666e-4e64-a3b7-d09c3edaadb6', '2025-02-01 20:06:25.784914+00', '2025-02-06 20:09:33.981962+00', 'Material', '84" Forma Fire Pit - RTF', 'Hardieboard & Steel Frame', NULL, NULL, NULL, NULL, NULL, NULL),
	('08b32e62-89ff-4ffb-bb85-e7da30ac427b', '2025-02-05 16:55:05.875537+00', '2025-02-06 20:09:33.981962+00', 'Material', '84" Fremont Fire Pit - 15" Tall', 'Corten Steel', 'CS8415', NULL, NULL, NULL, NULL, NULL),
	('2da51d35-8f61-46a7-8ed9-cb9da8bf0ee5', '2025-02-05 16:55:05.875537+00', '2025-02-06 20:09:33.981962+00', 'Material', '84" Fremont Fire Pit - 15" Tall', 'Stainless Steel', 'SS8415', 953, NULL, NULL, NULL, NULL),
	('01412e66-f94e-4f5e-9891-a8715fae925d', '2025-02-05 16:55:05.875537+00', '2025-02-06 20:09:33.981962+00', 'Material', '84" Fremont Fire Pit - 15" Tall', 'Hammered Copper', 'CPR8415', 1496, NULL, NULL, NULL, NULL),
	('0362989d-9523-4107-9435-9f053626ffbf', '2025-02-05 16:55:05.875537+00', '2025-02-06 20:09:33.981962+00', 'Material', '84" Fremont Fire Pit - 15" Tall', 'Powder Coat', 'PC8415', 358, NULL, NULL, NULL, NULL),
	('8727f2c5-a122-4729-908f-44289b3a9d79', '2025-02-05 16:55:05.875537+00', '2025-02-06 20:09:33.981962+00', 'Material', '84" Fremont Fire Pit - 24" Tall', 'Stainless Steel', 'SS8424', 955, NULL, NULL, NULL, NULL),
	('175935bf-1e51-40d1-8702-964a0fb376b5', '2025-02-05 16:55:05.875537+00', '2025-02-06 20:09:33.981962+00', 'Material', '84" Fremont Fire Pit - 24" Tall', 'Hammered Copper', 'CPR8424', 1496, NULL, NULL, NULL, NULL),
	('2be264cc-f3b6-4449-8d73-b47705f45631', '2025-02-05 16:55:05.875537+00', '2025-02-06 20:09:33.981962+00', 'Material', '84" Fremont Fire Pit - 24" Tall', 'Powder Coat', 'PC8424', 239, NULL, NULL, NULL, NULL),
	('fe6789c7-8fd1-405b-920d-4193a75d2f82', '2025-02-05 16:55:05.875537+00', '2025-02-06 20:09:33.981962+00', 'Material', '84" Fremont Fire Pit - 24" Tall', 'Corten Steel', 'CS8424', NULL, NULL, NULL, NULL, NULL),
	('545482c5-8632-4b78-86ea-34a6cb407c15', '2025-02-04 23:50:13.379228+00', '2025-02-06 20:09:33.981962+00', 'Material', '84" La Jolla Fire Pit', 'Corten Steel', 'CS84', 184, NULL, NULL, NULL, NULL),
	('c3882dcd-128e-4edd-ae36-cc9576a8d8ee', '2025-02-04 23:50:13.379228+00', '2025-02-06 20:09:33.981962+00', 'Material', '84" La Jolla Fire Pit', 'Powder Coat', 'PC84', NULL, NULL, NULL, NULL, NULL),
	('c074bf5e-47ca-4f77-8b33-debea38a030f', '2025-02-05 18:46:31.961623+00', '2025-02-06 20:09:33.981962+00', 'Material', '32" Cazo Fire and Water Bowl', 'Wood Grain', NULL, NULL, NULL, NULL, NULL, NULL),
	('dc792fe7-dca2-4e46-bb3a-71d02e5e6cfa', '2025-02-05 18:46:31.961623+00', '2025-02-06 20:09:33.981962+00', 'Material', '32" Cazo Fire Bowl', 'Wood Grain', NULL, NULL, NULL, NULL, NULL, NULL),
	('6d375139-d15b-47b3-a89c-6a68feb8b384', '2025-02-05 18:46:31.961623+00', '2025-02-06 20:09:33.981962+00', 'Material', '32" Cazo Planter Bowl', 'Wood Grain', NULL, NULL, NULL, NULL, NULL, NULL),
	('4f328dde-7fa2-4e3c-9ae2-b4f1c6a41925', '2025-02-05 18:46:31.961623+00', '2025-02-06 20:09:33.981962+00', 'Material', '32" Cazo Planter & Water Bowl', 'Wood Grain', NULL, NULL, NULL, NULL, NULL, NULL),
	('cd490698-460b-4511-8895-5cf49d88bb5f', '2025-02-06 01:15:35.129157+00', '2025-02-06 20:09:33.981962+00', 'Material', '36" Mabel Fire Table', 'Corten Steel', 'CS36', NULL, NULL, NULL, NULL, NULL),
	('3c82cc98-85ca-491d-928e-992164b70fcf', '2025-02-06 01:15:35.129157+00', '2025-02-06 20:09:33.981962+00', 'Material', '36" Mabel Fire Table', 'Stainless Steel', 'SS36', 597, NULL, NULL, NULL, NULL),
	('67197ab1-4ef4-40d9-a71c-a3e05ad659c0', '2025-02-06 01:15:35.129157+00', '2025-02-06 20:09:33.981962+00', 'Material', '36" Mabel Fire Table', 'Hammered Copper', 'CPR36', 948, NULL, NULL, NULL, NULL),
	('a82f34d5-10bd-4b70-9224-14a6b1917f62', '2025-02-05 16:55:05.875537+00', '2025-02-06 20:09:33.981962+00', 'Material', '60" Fremont Fire Pit - 15" Tall', 'Powder Coat', 'PC6015', 120, NULL, NULL, NULL, NULL),
	('ab34ea45-fb72-455d-97dd-b8ef699f578c', '2025-02-05 16:55:05.875537+00', '2025-02-06 20:09:33.981962+00', 'Material', '60" Fremont Fire Pit - 15" Tall', 'Stainless Steel', 'SS6015', 477, NULL, NULL, NULL, NULL),
	('d74b072e-ce7f-43a2-acb8-876fe3890ee7', '2025-02-05 16:55:05.875537+00', '2025-02-06 20:09:33.981962+00', 'Material', '60" Fremont Fire Pit - 24" Tall', 'Hammered Copper', 'CPR6024', 1310, NULL, NULL, NULL, NULL),
	('d837251e-fb78-4e4d-9ae7-5795ad64bfaa', '2025-02-05 16:55:05.875537+00', '2025-02-06 20:09:33.981962+00', 'Material', '60" Fremont Fire Pit - 24" Tall', 'Corten Steel', 'CS6024', NULL, NULL, NULL, NULL, NULL),
	('d4dcb328-6b68-465f-a985-c6ea87b7aa67', '2025-02-05 16:55:05.875537+00', '2025-02-06 20:09:33.981962+00', 'Material', '60" Fremont Fire Pit - 24" Tall', 'Powder Coat', 'PC6024', 118, NULL, NULL, NULL, NULL),
	('15bab6fc-099a-454e-ad21-c192811fa971', '2025-02-05 16:55:05.875537+00', '2025-02-06 20:09:33.981962+00', 'Material', '60" Fremont Fire Pit - 24" Tall', 'Stainless Steel', 'SS6024', 476, NULL, NULL, NULL, NULL),
	('0aa74cfe-b2de-4d40-83b8-1fc5509f5863', '2025-02-05 16:55:05.875537+00', '2025-02-06 20:09:33.981962+00', 'Material', '72" Fremont Fire Pit - 15" Tall', 'Stainless Steel', 'SS7215', 721, NULL, NULL, NULL, NULL),
	('443a634a-523a-43cd-b7bd-6b97219c9ce2', '2025-02-05 16:55:05.875537+00', '2025-02-06 20:09:33.981962+00', 'Material', '72" Fremont Fire Pit - 15" Tall', 'Corten Steel', 'CS7215', NULL, NULL, NULL, NULL, NULL),
	('5dbb7e32-a8c5-4691-bb79-88694ad3d315', '2025-02-05 16:55:05.875537+00', '2025-02-06 20:09:33.981962+00', 'Material', '72" Fremont Fire Pit - 15" Tall', 'Powder Coat', 'PC7215', 125, NULL, NULL, NULL, NULL),
	('e5bfbeb2-8034-4ccf-9ad9-d215dc10ed64', '2025-02-05 16:55:05.875537+00', '2025-02-06 20:09:33.981962+00', 'Material', '72" Fremont Fire Pit - 15" Tall', 'Hammered Copper', 'CPR7215', 1317, NULL, NULL, NULL, NULL),
	('bacd01d8-5b58-41ed-8f6d-ecb82573f2a7', '2025-02-05 16:55:05.875537+00', '2025-02-06 20:09:33.981962+00', 'Material', '72" Fremont Fire Pit - 24" Tall', 'Powder Coat', 'PC7224', 124, NULL, NULL, NULL, NULL),
	('e4046c52-c22b-4216-829a-fd8c37a87275', '2025-02-05 16:55:05.875537+00', '2025-02-06 20:09:33.981962+00', 'Material', '72" Fremont Fire Pit - 24" Tall', 'Hammered Copper', 'CPR7224', 1282, NULL, NULL, NULL, NULL),
	('576cad97-0fbb-4263-8105-000ef62d2165', '2025-02-05 16:55:05.875537+00', '2025-02-06 20:09:33.981962+00', 'Material', '72" Fremont Fire Pit - 24" Tall', 'Stainless Steel', 'SS7224', 721, NULL, NULL, NULL, NULL),
	('5ff3411b-9a59-4ad9-adb8-007833452182', '2025-02-05 16:55:05.875537+00', '2025-02-06 20:09:33.981962+00', 'Material', '72" Fremont Fire Pit - 24" Tall', 'Corten Steel', 'CS7224', NULL, NULL, NULL, NULL, NULL),
	('7c91790e-56c7-48cf-b1b5-36b2f5d51112', '2025-02-06 01:15:35.129157+00', '2025-02-06 20:09:33.981962+00', 'Material', '78" Alameda Fire Table', 'GFRC Top & Powder Coat Base', 'GFRC78', 462, NULL, NULL, NULL, NULL),
	('e639fce1-e582-41f3-ba44-b21920fb821b', '2025-02-06 01:15:35.129157+00', '2025-02-06 20:09:33.981962+00', 'Material', '78" Alameda Fire Table', 'Powder Coat', 'PC78', 119, NULL, NULL, NULL, NULL),
	('653598a7-a99d-446e-bb2d-982cfb4c462c', '2025-02-04 23:50:13.379228+00', '2025-02-06 20:09:33.981962+00', 'Material', '84" La Jolla Fire Pit', 'Hammered Copper', 'CPR84', 2182, NULL, NULL, NULL, NULL),
	('05de16cc-9c12-4496-91ef-9fb32d1bebe3', '2025-02-04 23:50:13.379228+00', '2025-02-06 20:09:33.981962+00', 'Material', '84" La Jolla Fire Pit', 'Stainless Steel', 'SS84', 1193, NULL, NULL, NULL, NULL),
	('9369614e-6f01-47f1-a3fa-2a24dd30e89f', '2025-02-06 01:15:35.129157+00', '2025-02-06 20:09:33.981962+00', 'Material', '84" Mabel Fire Table - RTF - 16" Tall', 'Hardieboard & Steel Frame', NULL, NULL, NULL, NULL, NULL, NULL),
	('f47a6e7a-4f80-4134-8168-d606688bf25e', '2025-02-06 01:15:35.129157+00', '2025-02-06 20:09:33.981962+00', 'Material', '84" Mabel Fire Table - RTF - 24" Tall', 'Hardieboard & Steel Frame', NULL, NULL, NULL, NULL, NULL, NULL),
	('ca503581-8d1e-48a0-bea7-4a83c7cc020e', '2025-02-01 20:06:25.784914+00', '2025-02-06 20:09:33.981962+00', 'Material', '84" Mesa Fire Pit', 'Powder Coat', 'PCTT8424', 518, NULL, NULL, NULL, NULL),
	('8f2e15db-cd10-4d11-b6d6-220c13e2666c', '2025-02-01 20:06:25.784914+00', '2025-02-06 20:09:33.981962+00', 'Material', '84" Mesa Fire Pit', 'Corten Steel', 'CSTT8424', NULL, NULL, NULL, NULL, NULL),
	('4a7a102c-bfcb-4b52-a2e3-68d3e23b95bd', '2025-02-01 20:06:25.784914+00', '2025-02-06 20:09:33.981962+00', 'Material', '84" Mesa Fire Pit', 'Stainless Steel', 'SSTT8424', 1198, NULL, NULL, NULL, NULL),
	('1482f778-2663-4df0-99b1-27a23651abc7', '2025-02-01 20:06:25.784914+00', '2025-02-06 20:09:33.981962+00', 'Material', '84" Moderno Fire Pit', 'Powder Coat', 'PC8428', NULL, NULL, NULL, NULL, NULL),
	('b82828ca-9fd2-4ade-afb8-69ebd199085b', '2025-02-01 20:06:25.784914+00', '2025-02-06 20:09:33.981962+00', 'Material', '84" Moderno Fire Pit', 'Hammered Copper', 'HC8428', 1501, NULL, NULL, NULL, NULL),
	('1d85cf99-0c9c-46c3-b734-67d17bbf6fa0', '2025-02-01 20:06:25.784914+00', '2025-02-06 20:09:33.981962+00', 'Material', '84" Moderno Fire Pit', 'Stainless Steel', 'SS8428', 2583, NULL, NULL, NULL, NULL),
	('1e3143ab-9444-442a-93ac-7738e9b21aad', '2025-01-31 00:53:51.528745+00', '2025-02-06 20:09:33.981962+00', 'Material', '84" Pismo Fire Pit', 'Stainless Steel', 'R8424SS', 900, NULL, NULL, NULL, NULL),
	('67bd3974-5c7a-42a2-9914-e4581fe81918', '2025-01-31 00:53:51.528745+00', '2025-02-06 20:09:33.981962+00', 'Material', '84" Pismo Fire Pit', 'Powder Coat', 'R8424PCR', 40, NULL, NULL, NULL, NULL),
	('891e9dd0-c7ee-4036-bdc9-e2d9f2f11e7e', '2025-01-31 00:53:51.528745+00', '2025-02-06 20:09:33.981962+00', 'Material', '84" Pismo Fire Pit', 'Hammered Copper', 'CPRT8424', 1873, NULL, NULL, NULL, NULL),
	('e5c563d3-9afc-4b03-8d0d-e19cd4344bdb', '2025-01-31 00:53:51.528745+00', '2025-02-06 20:09:33.981962+00', 'Material', '84" Pismo Fire Pit', 'Corten Steel', 'R8424CS', NULL, NULL, NULL, NULL, NULL),
	('dc4efeb2-5864-4ba2-b13c-93b869e5b0a4', '2025-01-31 00:53:51.528745+00', '2025-02-06 20:09:33.981962+00', 'Material', '84" Pismo Fire Pit - RTF', 'Hardieboard & Steel Frame', NULL, NULL, NULL, NULL, NULL, NULL),
	('2daec01d-6513-4105-ab6f-f59125044666', '2025-02-05 18:46:31.961623+00', '2025-02-06 20:09:33.981962+00', 'Material', '32" Cazo Water Bowl', 'Wood Grain', NULL, NULL, NULL, NULL, NULL, NULL),
	('ab2d6b07-600b-42ce-9b06-06a5b80d7356', '2025-02-06 01:15:35.129157+00', '2025-02-06 20:09:33.981962+00', 'Material', '36" Bella Fire Table', 'Corten Steel', 'CS36', 59, NULL, NULL, NULL, NULL),
	('3ca445d5-745f-4f9e-81cd-bc6102e85fcd', '2025-02-06 01:15:35.129157+00', '2025-02-06 20:09:33.981962+00', 'Material', '36" Bella Fire Table', 'Hammered Copper', 'CPR36', 1972, NULL, NULL, NULL, NULL),
	('38281094-049c-4ecc-a9c5-48f6547b79a1', '2025-02-06 01:15:35.129157+00', '2025-02-06 20:09:33.981962+00', 'Material', '36" Bella Fire Table', 'Stainless Steel', 'SS36', NULL, NULL, NULL, NULL, NULL),
	('b5a25c22-51c7-4e11-91c9-9749a358730f', '2025-02-06 01:15:35.129157+00', '2025-02-06 20:09:33.981962+00', 'Material', '36" Bella Fire Table', 'Powder Coat', 'PC36', 716, NULL, NULL, NULL, NULL),
	('b9c1371c-0f89-4419-a54a-35c922eb2b82', '2025-02-06 01:15:35.129157+00', '2025-02-06 20:09:33.981962+00', 'Material', '36" Bella Fire Table - RTF - 16" Tall', 'Hardieboard & Steel Frame', NULL, NULL, NULL, NULL, NULL, NULL),
	('e03531ad-7e6b-47dc-ad69-cc791746da7a', '2025-02-06 01:15:35.129157+00', '2025-02-06 20:09:33.981962+00', 'Material', '36" Bella Fire Table - RTF - 24" Tall', 'Hardieboard & Steel Frame', NULL, NULL, NULL, NULL, NULL, NULL),
	('9146d4a9-80e3-482a-8d05-8617a9e1c819', '2025-02-06 01:15:35.129157+00', '2025-02-06 20:09:33.981962+00', 'Material', '36" Mabel Fire Table', 'Powder Coat', 'PC36', 113, NULL, NULL, NULL, NULL),
	('c7e3348a-20cd-4224-b709-ace8ce2d5104', '2025-02-06 01:15:35.129157+00', '2025-02-06 20:09:33.981962+00', 'Material', '36" Mabel Fire Table Black & White', 'BW Powdercoat', NULL, NULL, NULL, NULL, NULL, NULL),
	('184818d1-03ad-4b19-8c2d-39381bcd41fd', '2025-02-06 01:15:35.129157+00', '2025-02-06 20:09:33.981962+00', 'Material', '48" Mabel Fire Table', 'Corten Steel', 'CS48', NULL, NULL, NULL, NULL, NULL),
	('3997bdec-fb49-47a7-b284-9fe8de54c1c5', '2025-02-06 01:15:35.129157+00', '2025-02-06 20:09:33.981962+00', 'Material', '48" Mabel Fire Table', 'Powder Coat', 'PC48', 239, NULL, NULL, NULL, NULL),
	('d2400f55-6b7c-43cd-9f53-0426dcc047d0', '2025-02-06 01:15:35.129157+00', '2025-02-06 20:09:33.981962+00', 'Material', '48" Mabel Fire Table', 'Hammered Copper', 'CPR48', 1366, NULL, NULL, NULL, NULL),
	('62b1ece3-410d-4298-916b-50f31aabf296', '2025-02-06 01:15:35.129157+00', '2025-02-06 20:09:33.981962+00', 'Material', '48" Mabel Fire Table', 'Stainless Steel', 'SS48', 406, NULL, NULL, NULL, NULL),
	('ec098b09-6423-4009-b934-d8f1b7765497', '2025-01-31 00:53:51.528745+00', '2025-02-06 20:09:33.981962+00', 'Material', '84" Quad Fire Pit - RTF', 'Hardieboard & Steel Frame', NULL, NULL, NULL, NULL, NULL, NULL),
	('f830b4dc-19c1-441f-9eb0-3c30bdab82fe', '2025-01-30 01:23:51.448608+00', '2025-02-06 20:09:33.981962+00', 'Material', '84" Regal Fire Pit - RTF', 'Hardieboard & Steel Frame', NULL, NULL, NULL, NULL, NULL, NULL),
	('902b3cff-d82b-4e97-9cb1-c7b68c4ef465', '2025-02-04 23:50:13.379228+00', '2025-02-06 20:09:33.981962+00', 'Material', '84" Unity Fire Pit - RTF', 'Hardieboard & Steel Frame', NULL, NULL, NULL, NULL, NULL, NULL),
	('1e4c22e3-456a-408c-9810-bbe12c4621f0', '2025-01-28 22:27:41.897719+00', '2025-02-06 20:09:33.981962+00', 'Material', '84" x 28" Linear Avalon Fire Pit - 15" Tall', 'Stainless Steel', 'SS8415', 1192, NULL, NULL, NULL, NULL),
	('058475f4-2101-483f-a5b6-363df3aa0392', '2025-01-28 22:27:41.897719+00', '2025-02-06 20:09:33.981962+00', 'Material', '84" x 28" Linear Avalon Fire Pit - 15" Tall', 'Powder Coat', 'PC8415', 119, NULL, NULL, NULL, NULL),
	('af050fe1-323c-4913-bf42-c2d47f1b8b9f', '2025-01-28 22:27:41.897719+00', '2025-02-06 20:09:33.981962+00', 'Material', '84" x 28" Linear Avalon Fire Pit - 15" Tall', 'Hammered Copper', 'CPR8415', 1853, NULL, NULL, NULL, NULL),
	('dc6257cf-ba93-4e6e-81bf-269d6d443523', '2025-01-28 22:27:41.897719+00', '2025-02-06 20:09:33.981962+00', 'Material', '84" x 28" Linear Avalon Fire Pit - 15" Tall', 'Corten Steel', 'CS8415', NULL, NULL, NULL, NULL, NULL),
	('28777cf8-c6ff-41a9-9321-150c8a702ad6', '2025-01-28 22:27:41.897719+00', '2025-02-06 20:09:33.981962+00', 'Material', '84" x 28" Linear Avalon Fire Pit - 24" Tall', 'Powder Coat', 'PC8424', 239, NULL, NULL, NULL, NULL),
	('59adc9ee-944c-4519-9025-c833c0f1e19d', '2025-01-28 22:27:41.897719+00', '2025-02-06 20:09:33.981962+00', 'Material', '84" x 28" Linear Avalon Fire Pit - 24" Tall', 'Corten Steel', 'CS8424', NULL, NULL, NULL, NULL, NULL),
	('e87ce0ac-0748-402a-96ff-4ace00dfc2da', '2025-01-28 22:27:41.897719+00', '2025-02-06 20:09:33.981962+00', 'Material', '84" x 28" Linear Avalon Fire Pit - 24" Tall', 'Hammered Copper', 'CPR8424', 1871, NULL, NULL, NULL, NULL),
	('39f33850-7add-4d2a-8c50-d75477b2ec28', '2025-01-28 22:27:41.897719+00', '2025-02-06 20:09:33.981962+00', 'Material', '84" x 28" Linear Avalon Fire Pit - 24" Tall', 'Stainless Steel', 'SS8424', 1193, NULL, NULL, NULL, NULL),
	('e1cb21b3-7c4b-416e-89d0-bc69f73deef8', '2025-01-31 00:53:51.528745+00', '2025-02-06 20:09:33.981962+00', 'Material', '90" Cabo Linear Fire Pit', 'Corten Steel', 'CS', 696, NULL, NULL, NULL, NULL),
	('abc7568f-332b-42a5-880c-9e7f288ea03a', '2025-01-31 00:53:51.528745+00', '2025-02-06 20:09:33.981962+00', 'Material', '90" Cabo Linear Fire Pit', 'Powder Coat', 'PC', 576, NULL, NULL, NULL, NULL),
	('3a88568d-5d3e-4491-a1b8-6798b366ceea', '2025-01-31 00:53:51.528745+00', '2025-02-06 20:09:33.981962+00', 'Material', '90" Cabo Linear Fire Pit', 'Stainless Steel', 'SS', 2246, NULL, NULL, NULL, NULL),
	('edd26bfe-cde9-48cf-aaba-ee52f5dc0dce', '2025-01-31 00:53:51.528745+00', '2025-02-06 20:09:33.981962+00', 'Material', '90" Cabo Linear Fire Pit', 'Hammered Copper', 'CPR', 2907, NULL, NULL, NULL, NULL),
	('a1366f04-f7ed-4178-a6c2-1a1ae2081737', '2025-02-01 20:06:25.784914+00', '2025-02-06 20:09:33.981962+00', 'Material', '96" Catalina Fire Pit', 'Wood Grain', NULL, NULL, NULL, NULL, NULL, NULL),
	('fcdedf8c-7711-4f97-ae42-201400dafa2f', '2025-02-01 20:06:25.784914+00', '2025-02-06 20:09:33.981962+00', 'Material', '96" Catalina Fire Pit - RTF', 'Hardieboard & Steel Frame', NULL, NULL, NULL, NULL, NULL, NULL),
	('dfd08c83-48ec-44c2-bc1e-ad4a95005b6c', '2025-01-31 00:53:51.528745+00', '2025-02-06 20:09:33.981962+00', 'Material', '96" Coronado Fire Pit', 'Powder Coat', 'PC96', 503, NULL, NULL, NULL, NULL),
	('833c45b3-e6c5-46d9-8ddc-97c439e87f59', '2025-01-31 00:53:51.528745+00', '2025-02-06 20:09:33.981962+00', 'Material', '96" Coronado Fire Pit', 'Corten Steel', 'CS96', NULL, NULL, NULL, NULL, NULL),
	('de871907-3965-488b-ac9c-b990329546b7', '2025-01-31 00:53:51.528745+00', '2025-02-06 20:09:33.981962+00', 'Material', '96" Coronado Fire Pit', 'Hammered Copper', 'CPR96', 2502, NULL, NULL, NULL, NULL),
	('60606295-78c2-49d6-b7a9-1a5ffd422a3d', '2025-01-31 00:53:51.528745+00', '2025-02-06 20:09:33.981962+00', 'Material', '96" Coronado Fire Pit', 'Stainless Steel', 'SS96', 1051, NULL, NULL, NULL, NULL),
	('1d10875d-3640-4bec-b924-5226d77957ca', '2025-01-31 00:53:51.528745+00', '2025-02-06 20:09:33.981962+00', 'Material', '96" Coronado Fire Pit', 'Wood Grain', '96', 1391, NULL, NULL, NULL, NULL),
	('98bc13b3-cab6-4cfb-a264-1f6a0b1e7a74', '2025-01-31 00:53:51.528745+00', '2025-02-06 20:09:33.981962+00', 'Material', '96" Coronado Fire Pit - RTF', 'Hardieboard & Steel Frame', NULL, NULL, NULL, NULL, NULL, NULL),
	('6b28238e-7f49-47d0-95ae-1f829eacdb91', '2025-02-04 23:50:13.379228+00', '2025-02-06 20:09:33.981962+00', 'Material', '96" La Jolla Fire Pit', 'Powder Coat', 'PC96', 18, NULL, NULL, NULL, NULL),
	('c8369140-dfcf-4e2c-a7e8-f8a6dd867f74', '2025-02-04 23:50:13.379228+00', '2025-02-06 20:09:33.981962+00', 'Material', '96" La Jolla Fire Pit', 'Stainless Steel', 'SS96', 852, NULL, NULL, NULL, NULL),
	('1587c90b-b2f1-48d8-9913-d6fa18526bef', '2025-02-04 23:50:13.379228+00', '2025-02-06 20:09:33.981962+00', 'Material', '96" La Jolla Fire Pit', 'Hammered Copper', 'CPR96', 1805, NULL, NULL, NULL, NULL),
	('aad466f1-6131-4092-a88e-a36c25a8388b', '2025-02-04 23:50:13.379228+00', '2025-02-06 20:09:33.981962+00', 'Material', '96" La Jolla Fire Pit', 'Corten Steel', 'CS96', NULL, NULL, NULL, NULL, NULL),
	('f4d1936d-c596-4aff-b041-00f2ce8ae146', '2025-02-01 20:06:25.784914+00', '2025-02-06 20:09:33.981962+00', 'Material', '96" Moderno Fire Pit', 'Stainless Steel', 'SS9628', 313, NULL, NULL, NULL, NULL),
	('f4b47aa5-b55a-4beb-93d0-a6052745f345', '2025-02-01 20:06:25.784914+00', '2025-02-06 20:09:33.981962+00', 'Material', '96" Moderno Fire Pit', 'Hammered Copper', 'HC9628', 1764, NULL, NULL, NULL, NULL),
	('68e60b86-7c4e-4967-a0d1-2d784ea34e56', '2025-02-01 20:06:25.784914+00', '2025-02-06 20:09:33.981962+00', 'Material', '96" Moderno Fire Pit', 'Powder Coat', 'PC9628', NULL, NULL, NULL, NULL, NULL),
	('5934f9c5-c9d4-4b22-912c-44ad536b7764', '2025-01-31 00:53:51.528745+00', '2025-02-06 20:09:33.981962+00', 'Material', '96" Pismo Fire Pit - RTF', 'Hardieboard & Steel Frame', NULL, NULL, NULL, NULL, NULL, NULL),
	('f63f515a-b4b3-47fb-b178-ba689fc13383', '2025-01-30 01:23:51.448608+00', '2025-02-06 20:09:33.981962+00', 'Material', '96" Regal Fire Pit - RTF', 'Hardieboard & Steel Frame', NULL, NULL, NULL, NULL, NULL, NULL),
	('e288dec9-718e-48e5-9f4a-180c4c8bb334', '2025-02-06 20:09:33.981962+00', '2025-02-06 20:09:33.981962+00', 'Material', '48" x 30" Bella Linear Fire Table', 'Hammered Copper', 'CPR4830', 2417, NULL, NULL, NULL, NULL),
	('48d3ab01-19c9-4380-a1f7-5cff2672fffe', '2025-02-06 20:09:33.981962+00', '2025-02-06 20:09:33.981962+00', 'Material', '48" x 30" Bella Linear Fire Table', 'Corten Steel', 'CS4830', NULL, NULL, NULL, NULL, NULL),
	('fb0cea68-3e3c-4313-80a5-10e8bf046e69', '2025-02-06 20:09:33.981962+00', '2025-02-06 20:09:33.981962+00', 'Material', '48" x 30" Bella Linear Fire Table', 'Stainless Steel', 'SS4830', 662, NULL, NULL, NULL, NULL),
	('ea177ef1-3ce8-451a-8126-23e64207daa0', '2025-02-06 01:15:35.129157+00', '2025-02-06 20:09:33.981962+00', 'Material', '60" Bella Fire Table', 'Powder Coat', 'PC60', 1564, NULL, NULL, NULL, NULL),
	('8826cc22-6193-4262-90f6-0ff7fd83e931', '2025-02-06 01:15:35.129157+00', '2025-02-06 20:09:33.981962+00', 'Material', '60" Bella Fire Table', 'Stainless Steel', 'SS60', 252, NULL, NULL, NULL, NULL),
	('916448bc-9a71-4810-a21f-1dfb614a0fe6', '2025-02-06 01:15:35.129157+00', '2025-02-06 20:09:33.981962+00', 'Material', '60" Bella Fire Table - RTF - 16" Tall', 'Hardieboard & Steel Frame', NULL, NULL, NULL, NULL, NULL, NULL),
	('abcaaa20-95be-4598-95da-979c8f6e19b6', '2025-02-06 01:15:35.129157+00', '2025-02-06 20:09:33.981962+00', 'Material', '60" Bella Fire Table - RTF - 24" Tall', 'Hardieboard & Steel Frame', NULL, NULL, NULL, NULL, NULL, NULL),
	('68c3c7b0-159e-4156-9edf-07d9fe99ed18', '2025-02-06 01:15:35.129157+00', '2025-02-06 20:09:33.981962+00', 'Material', '60" Bella Linear Fire Table', 'Corten Steel', 'CS6036', NULL, NULL, NULL, NULL, NULL),
	('0f4b2a36-5984-4e1f-9a41-e901f3fa486d', '2025-02-06 01:15:35.129157+00', '2025-02-06 20:09:33.981962+00', 'Material', '60" Bella Linear Fire Table', 'Hammered Copper', 'CPR6036', 2334, NULL, NULL, NULL, NULL),
	('52e976b2-dff9-4517-b9fe-33b018a03ef6', '2025-02-06 01:15:35.129157+00', '2025-02-06 20:09:33.981962+00', 'Material', '60" Bella Linear Fire Table', 'Stainless Steel', 'SS6036', 970, NULL, NULL, NULL, NULL),
	('4ca41c67-74b6-45ae-bb46-cdc316947898', '2025-02-06 01:15:35.129157+00', '2025-02-06 20:09:33.981962+00', 'Material', '60" Bella Linear Fire Table', 'Powder Coat', 'PC6036', 291, NULL, NULL, NULL, NULL),
	('2012156f-1c7e-4dca-abe4-d0a3208cde65', '2025-02-01 20:06:25.784914+00', '2025-02-06 20:09:33.981962+00', 'Material', '84" Mesa Fire Pit', 'Hammered Copper', 'CPRTT8424', 2668, NULL, NULL, NULL, NULL),
	('a4814fa2-c0de-44a3-9cac-9fcecf229f07', '2025-01-31 00:53:51.528745+00', '2025-02-06 20:09:33.981962+00', 'Material', '90" Cabo Linear Fire Pit', 'GFRC', NULL, NULL, NULL, NULL, NULL, NULL),
	('78567ffc-95f1-40bb-991f-73e8353a7546', '2025-02-06 20:09:33.981962+00', '2025-02-06 20:09:33.981962+00', 'Material', '48" x 30" Bella Linear Fire Table', 'Powder Coat', 'PC4830', 60, NULL, NULL, NULL, NULL),
	('aea2aa1f-7979-4292-beb1-502a360326d5', '2025-02-06 20:09:33.981962+00', '2025-02-06 20:09:33.981962+00', 'Material', '48" Bella Fire Table - RTF - 16" Tall', 'Hardieboard & Steel Frame', NULL, NULL, NULL, NULL, NULL, NULL),
	('faf6a4f6-2bc1-4266-aaa1-f3a8f2fa0f7b', '2025-02-06 20:09:33.981962+00', '2025-02-06 20:09:33.981962+00', 'Material', '48" Bella Fire Table - RTF - 24" Tall', 'Hardieboard & Steel Frame', NULL, NULL, NULL, NULL, NULL, NULL),
	('3dd3c3a9-0824-47e5-a867-78d6bea5d09a', '2025-02-06 20:09:33.981962+00', '2025-02-06 20:09:33.981962+00', 'Material', '72" x 36" Bella Linear Fire Table', 'Hammered Copper', 'CPR7236', 2440, NULL, NULL, NULL, NULL),
	('7f9b7549-8cf3-4033-8ba1-e6eee6e4d98a', '2025-02-06 20:09:33.981962+00', '2025-02-06 20:09:33.981962+00', 'Material', '72" x 36" Bella Linear Fire Table', 'Corten Steel', 'CS7236', NULL, NULL, NULL, NULL, NULL),
	('a8c5be1b-77ae-4011-a8a5-ffbbfed416a8', '2025-02-06 20:09:33.981962+00', '2025-02-06 20:09:33.981962+00', 'Material', '72" x 36" Bella Linear Fire Table', 'Stainless Steel', 'SS7236', 1316, NULL, NULL, NULL, NULL),
	('f0e77ea8-7104-46ce-b45b-4a197af8a741', '2025-02-06 20:09:33.981962+00', '2025-02-06 20:09:33.981962+00', 'Material', '72" x 36" Bella Linear Fire Table', 'Powder Coat', 'PC7236', 703, NULL, NULL, NULL, NULL),
	('658e1b72-0c5d-47de-b76e-d6d589abb685', '2025-02-06 20:09:33.981962+00', '2025-02-06 20:09:33.981962+00', 'Material', '72'' Bella Fire Table - RTF - 16" Tall', 'Hardieboard & Steel Frame', NULL, NULL, NULL, NULL, NULL, NULL),
	('eb779382-dbab-4ede-973f-2b628cc4c42e', '2025-02-06 20:09:33.981962+00', '2025-02-06 20:09:33.981962+00', 'Material', '72" Bella Fire Table - RTF - 24" Tall', 'Hardieboard & Steel Frame', NULL, NULL, NULL, NULL, NULL, NULL),
	('dc485c6c-e22b-49d9-92de-eeb10f1737a1', '2025-02-06 20:09:33.981962+00', '2025-02-06 20:09:33.981962+00', 'Material', '84" Bella Fire Table - RTF - 16" Tall', 'Hardieboard & Steel Frame', NULL, NULL, NULL, NULL, NULL, NULL),
	('648ac8ce-cf60-47ba-9662-17b2ec3ca358', '2025-02-06 20:09:33.981962+00', '2025-02-06 20:09:33.981962+00', 'Material', '84" Bella Fire Table - RTF - 24" Tall', 'Hardieboard & Steel Frame', NULL, NULL, NULL, NULL, NULL, NULL),
	('cd1d7b6e-f5f1-4dbb-bb62-1cb470ed73ea', '2025-02-06 20:09:33.981962+00', '2025-02-06 20:09:33.981962+00', 'Material', '38" Sonoma Fire Pit', 'GFRC', NULL, NULL, NULL, NULL, NULL, NULL),
	('d9614378-f855-4236-a7d3-499fb00d38df', '2025-02-06 20:09:33.981962+00', '2025-02-06 20:09:33.981962+00', 'Material', '37" Sienna Fire Pit', 'GFRC', NULL, NULL, NULL, NULL, NULL, NULL);


--
-- Data for Name: emails; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO "public"."emails" ("id", "created_at", "updated_at", "html", "name", "type") VALUES
	(1, '2025-02-06 19:23:03.392433+00', '2025-02-06 19:23:03.392433+00', '{
  "root": {
    "type": "EmailLayout",
    "data": {
      "backdropColor": "#FFFFFF",
      "canvasColor": "#FFFFFF",
      "textColor": "#03124A",
      "fontFamily": "GEOMETRIC_SANS",
      "childrenIds": [
        "block_logo",
        "block_heading",
        "block-1736266932077",
        "block_quote_info_container",
        "block-1736267003839",
        "block-1736267045143",
        "block-1736267050445",
        "block-1736267054480",
        "block-1736267058140",
        "block-1736267062625",
        "block-1736267261955",
        "block-1736267265510",
        "block-1736267270048",
        "block-1736267465306",
        "block_full_items"
      ]
    }
  },
  "block_logo": {
    "type": "Image",
    "data": {
      "style": {
        "padding": {
          "top": 8,
          "bottom": 8,
          "right": 0,
          "left": 0
        },
        "backgroundColor": null,
        "textAlign": "center"
      },
      "props": {
        "width": 340,
        "height": null,
        "url": "https://www.dropbox.com/scl/fi/1ehp1fjxb6lkwzdirye6r/2025-The-Outdoor-Plus-Logo-BlackOrange.png?rlkey=sb8h9ngnwhwjrldhvto2i7vmd&st=zu0s4fas&raw=1",
        "contentAlignment": "middle"
      }
    }
  },
  "block_heading": {
    "type": "Heading",
    "data": {
      "props": {
        "text": "{{ customer.name }} has requested a quote. ",
        "level": "h2"
      },
      "style": {
        "color": null,
        "backgroundColor": null,
        "fontFamily": null,
        "fontWeight": "bold",
        "textAlign": "left",
        "padding": {
          "top": 16,
          "bottom": 0,
          "right": 24,
          "left": 24
        }
      }
    }
  },
  "block_quote_number_title": {
    "type": "Heading",
    "data": {
      "props": {
        "text": "Quote #",
        "level": "h3"
      },
      "style": {
        "color": null,
        "backgroundColor": null,
        "fontFamily": null,
        "fontWeight": "bold",
        "textAlign": "left",
        "padding": {
          "top": 0,
          "bottom": 8,
          "right": 0,
          "left": 0
        }
      }
    }
  },
  "block_quote_number": {
    "type": "Text",
    "data": {
      "style": {
        "color": null,
        "backgroundColor": null,
        "fontSize": 16,
        "fontFamily": null,
        "fontWeight": "normal",
        "textAlign": "left",
        "padding": {
          "top": 0,
          "bottom": 16,
          "right": 0,
          "left": 0
        }
      },
      "props": {
        "text": "{{ rfq_number }}"
      }
    }
  },
  "block_dashboard_link_title": {
    "type": "Heading",
    "data": {
      "props": {
        "text": "Dashboard Link",
        "level": "h3"
      },
      "style": {
        "color": null,
        "backgroundColor": null,
        "fontFamily": null,
        "fontWeight": "bold",
        "textAlign": "left",
        "padding": {
          "top": 8,
          "bottom": 8,
          "right": 0,
          "left": 0
        }
      }
    }
  },
  "block_dashboard_link": {
    "type": "Text",
    "data": {
      "style": {
        "color": null,
        "backgroundColor": null,
        "fontSize": 16,
        "fontFamily": null,
        "fontWeight": "normal",
        "textAlign": "left",
        "padding": {
          "top": 0,
          "bottom": 16,
          "right": 0,
          "left": 0
        }
      },
      "props": {
        "text": "{{ rfq_dashboard_link }}"
      }
    }
  },
  "block_NAzWgDcqGdpeHWrspZ8fz7": {
    "type": "Divider",
    "data": {
      "style": {
        "backgroundColor": null,
        "padding": {
          "top": 16,
          "bottom": 16,
          "right": 0,
          "left": 0
        }
      },
      "props": {
        "lineColor": "#EEEEEE",
        "lineHeight": 1
      }
    }
  },
  "block_quote_info_container": {
    "type": "Container",
    "data": {
      "style": {
        "backgroundColor": null,
        "borderColor": null,
        "borderRadius": null,
        "padding": {
          "top": 8,
          "bottom": 8,
          "right": 24,
          "left": 24
        }
      },
      "props": {
        "childrenIds": [
          "block_quote_number_title",
          "block_quote_number",
          "block_dashboard_link_title",
          "block_dashboard_link",
          "block_NAzWgDcqGdpeHWrspZ8fz7"
        ]
      }
    }
  },
  "block_total_text": {
    "type": "Text",
    "data": {
      "style": {
        "color": null,
        "backgroundColor": null,
        "fontSize": 16,
        "fontFamily": null,
        "fontWeight": "bold",
        "textAlign": "left",
        "padding": {
          "top": 0,
          "bottom": 0,
          "right": 0,
          "left": 0
        }
      },
      "props": {
        "text": "Total (USD)"
      }
    }
  },
  "block_total_text_container": {
    "type": "Container",
    "data": {
      "style": {
        "backgroundColor": null,
        "borderColor": null,
        "borderRadius": null,
        "padding": {
          "top": 0,
          "bottom": 0,
          "right": 0,
          "left": 0
        }
      },
      "props": {
        "childrenIds": [
          "block_total_text"
        ]
      }
    }
  },
  "block_total_value": {
    "type": "Text",
    "data": {
      "style": {
        "color": null,
        "backgroundColor": null,
        "fontSize": 16,
        "fontFamily": null,
        "fontWeight": "bold",
        "textAlign": "right",
        "padding": {
          "top": 0,
          "bottom": 0,
          "right": 0,
          "left": 0
        }
      },
      "props": {
        "text": "{{ total }}"
      }
    }
  },
  "block_total_value_container": {
    "type": "Container",
    "data": {
      "style": {
        "backgroundColor": null,
        "borderColor": null,
        "borderRadius": null,
        "padding": {
          "top": 0,
          "bottom": 0,
          "right": 0,
          "left": 0
        }
      },
      "props": {
        "childrenIds": [
          "block_total_value"
        ]
      }
    }
  },
  "block_65qW362ex9LdhQXx1dLSuq": {
    "type": "Container",
    "data": {
      "style": {
        "backgroundColor": null,
        "borderColor": null,
        "borderRadius": null,
        "padding": {
          "top": 0,
          "bottom": 0,
          "right": 0,
          "left": 0
        }
      },
      "props": {
        "childrenIds": []
      }
    }
  },
  "block_7FUnUJ6umTXZz3Mn54KLCY": {
    "type": "ColumnsContainer",
    "data": {
      "style": {
        "backgroundColor": null,
        "padding": {
          "top": 24,
          "bottom": 16,
          "right": 0,
          "left": 0
        }
      },
      "props": {
        "columnsCount": 2,
        "columns": [
          {
            "childrenIds": [
              "block_total_text_container"
            ]
          },
          {
            "childrenIds": [
              "block_total_value_container"
            ]
          },
          {
            "childrenIds": [
              "block_65qW362ex9LdhQXx1dLSuq"
            ]
          }
        ]
      }
    }
  },
  "block_full_items": {
    "type": "Container",
    "data": {
      "style": {
        "backgroundColor": null,
        "borderColor": null,
        "borderRadius": null,
        "padding": {
          "top": 8,
          "bottom": 8,
          "right": 8,
          "left": 8
        }
      },
      "props": {
        "childrenIds": [
          "block-1736267562711",
          "block-full_item_container_1",
          "block-item-divider",
          "block_7FUnUJ6umTXZz3Mn54KLCY"
        ]
      }
    }
  },
  "block_F9xbhy5omsUCjE9MuDfxJ5": {
    "type": "Divider",
    "data": {
      "style": {
        "backgroundColor": null,
        "padding": {
          "top": 16,
          "bottom": 16,
          "right": 0,
          "left": 0
        }
      },
      "props": {
        "lineColor": "#EEEEEE",
        "lineHeight": 1
      }
    }
  },
  "block-1736266932077": {
    "type": "Spacer",
    "data": {}
  },
  "block-1736267003839": {
    "type": "Container",
    "data": {
      "style": {
        "padding": {
          "top": 0,
          "bottom": 0,
          "right": 0,
          "left": 0
        }
      },
      "props": {
        "childrenIds": [
          "block-1736267009539"
        ]
      }
    }
  },
  "block-1736267009539": {
    "type": "Heading",
    "data": {
      "props": {
        "text": "Company Information",
        "level": "h2"
      },
      "style": {
        "padding": {
          "top": 16,
          "bottom": 16,
          "right": 24,
          "left": 24
        }
      }
    }
  },
  "block-1736267045143": {
    "type": "ColumnsContainer",
    "data": {
      "style": {
        "padding": {
          "top": 0,
          "bottom": 0,
          "right": 24,
          "left": 24
        }
      },
      "props": {
        "columnsCount": 2,
        "columnsGap": 16,
        "columns": [
          {
            "childrenIds": [
              "block-1736267072113"
            ]
          },
          {
            "childrenIds": [
              "block-company_information_name"
            ]
          },
          {
            "childrenIds": []
          }
        ]
      }
    }
  },
  "block-1736267050445": {
    "type": "ColumnsContainer",
    "data": {
      "style": {
        "padding": {
          "top": 0,
          "bottom": 0,
          "right": 24,
          "left": 24
        }
      },
      "props": {
        "columnsCount": 2,
        "columnsGap": 16,
        "columns": [
          {
            "childrenIds": [
              "block-1736267110566"
            ]
          },
          {
            "childrenIds": [
              "block-company_information_contact"
            ]
          },
          {
            "childrenIds": []
          }
        ]
      }
    }
  },
  "block-1736267054480": {
    "type": "ColumnsContainer",
    "data": {
      "style": {
        "padding": {
          "top": 0,
          "bottom": 0,
          "right": 24,
          "left": 24
        }
      },
      "props": {
        "columnsCount": 2,
        "columnsGap": 16,
        "columns": [
          {
            "childrenIds": [
              "block-1736267134566"
            ]
          },
          {
            "childrenIds": [
              "block-company_information_address"
            ]
          },
          {
            "childrenIds": []
          }
        ]
      }
    }
  },
  "block-1736267058140": {
    "type": "ColumnsContainer",
    "data": {
      "style": {
        "padding": {
          "top": 0,
          "bottom": 0,
          "right": 24,
          "left": 24
        }
      },
      "props": {
        "columnsCount": 2,
        "columnsGap": 16,
        "columns": [
          {
            "childrenIds": [
              "block-1736267247862"
            ]
          },
          {
            "childrenIds": [
              "block-company_information_city"
            ]
          },
          {
            "childrenIds": []
          }
        ]
      }
    }
  },
  "block-1736267062625": {
    "type": "ColumnsContainer",
    "data": {
      "style": {
        "padding": {
          "top": 0,
          "bottom": 0,
          "right": 24,
          "left": 24
        }
      },
      "props": {
        "columnsCount": 2,
        "columnsGap": 16,
        "columns": [
          {
            "childrenIds": [
              "block-1736267255265"
            ]
          },
          {
            "childrenIds": [
              "block-company_information_state"
            ]
          },
          {
            "childrenIds": []
          }
        ]
      }
    }
  },
  "block-1736267072113": {
    "type": "Text",
    "data": {
      "style": {
        "fontWeight": "bold",
        "padding": {
          "top": 16,
          "bottom": 16,
          "right": 24,
          "left": 24
        }
      },
      "props": {
        "text": "Company"
      }
    }
  },
  "block-company_information_name": {
    "type": "Text",
    "data": {
      "style": {
        "fontWeight": "normal",
        "padding": {
          "top": 16,
          "bottom": 16,
          "right": 24,
          "left": 24
        }
      },
      "props": {
        "text": "{{ company_information.name }}"
      }
    }
  },
  "block-1736267110566": {
    "type": "Text",
    "data": {
      "style": {
        "fontWeight": "bold",
        "padding": {
          "top": 16,
          "bottom": 16,
          "right": 24,
          "left": 24
        }
      },
      "props": {
        "text": "Contact"
      }
    }
  },
  "block-company_information_contact": {
    "type": "Text",
    "data": {
      "style": {
        "fontWeight": "normal",
        "padding": {
          "top": 16,
          "bottom": 16,
          "right": 24,
          "left": 24
        }
      },
      "props": {
        "text": "{{ company_information.contact }}"
      }
    }
  },
  "block-1736267134566": {
    "type": "Text",
    "data": {
      "style": {
        "fontWeight": "bold",
        "padding": {
          "top": 16,
          "bottom": 16,
          "right": 24,
          "left": 24
        }
      },
      "props": {
        "text": "Address"
      }
    }
  },
  "block-company_information_address": {
    "type": "Text",
    "data": {
      "style": {
        "fontWeight": "normal",
        "padding": {
          "top": 16,
          "bottom": 16,
          "right": 24,
          "left": 24
        }
      },
      "props": {
        "text": "{{ company_information.address }}"
      }
    }
  },
  "block-1736267247862": {
    "type": "Text",
    "data": {
      "style": {
        "fontWeight": "bold",
        "padding": {
          "top": 16,
          "bottom": 16,
          "right": 24,
          "left": 24
        }
      },
      "props": {
        "text": "City"
      }
    }
  },
  "block-1736267255265": {
    "type": "Text",
    "data": {
      "style": {
        "fontWeight": "bold",
        "padding": {
          "top": 16,
          "bottom": 16,
          "right": 24,
          "left": 24
        }
      },
      "props": {
        "text": "State"
      }
    }
  },
  "block-1736267261955": {
    "type": "ColumnsContainer",
    "data": {
      "style": {
        "padding": {
          "top": 0,
          "bottom": 0,
          "right": 24,
          "left": 24
        }
      },
      "props": {
        "columnsCount": 2,
        "columnsGap": 16,
        "columns": [
          {
            "childrenIds": [
              "block-1736267277743"
            ]
          },
          {
            "childrenIds": [
              "block-company_information_zip"
            ]
          },
          {
            "childrenIds": []
          }
        ]
      }
    }
  },
  "block-1736267265510": {
    "type": "ColumnsContainer",
    "data": {
      "style": {
        "padding": {
          "top": 0,
          "bottom": 0,
          "right": 24,
          "left": 24
        }
      },
      "props": {
        "columnsCount": 2,
        "columnsGap": 16,
        "columns": [
          {
            "childrenIds": [
              "block-1736267283750"
            ]
          },
          {
            "childrenIds": [
              "block-company_information_phone"
            ]
          },
          {
            "childrenIds": []
          }
        ]
      }
    }
  },
  "block-1736267270048": {
    "type": "ColumnsContainer",
    "data": {
      "style": {
        "padding": {
          "top": 0,
          "bottom": 0,
          "right": 24,
          "left": 24
        }
      },
      "props": {
        "columnsCount": 2,
        "columnsGap": 16,
        "columns": [
          {
            "childrenIds": [
              "block-1736267293508"
            ]
          },
          {
            "childrenIds": [
              "block-company_information_email"
            ]
          },
          {
            "childrenIds": []
          }
        ]
      }
    }
  },
  "block-1736267277743": {
    "type": "Text",
    "data": {
      "style": {
        "fontWeight": "bold",
        "padding": {
          "top": 16,
          "bottom": 16,
          "right": 24,
          "left": 24
        }
      },
      "props": {
        "text": "ZIP"
      }
    }
  },
  "block-1736267283750": {
    "type": "Text",
    "data": {
      "style": {
        "fontWeight": "bold",
        "padding": {
          "top": 16,
          "bottom": 16,
          "right": 24,
          "left": 24
        }
      },
      "props": {
        "text": "Phone"
      }
    }
  },
  "block-1736267293508": {
    "type": "Text",
    "data": {
      "style": {
        "fontWeight": "bold",
        "padding": {
          "top": 16,
          "bottom": 16,
          "right": 24,
          "left": 24
        }
      },
      "props": {
        "text": "Email"
      }
    }
  },
  "block-company_information_city": {
    "type": "Text",
    "data": {
      "style": {
        "fontWeight": "normal",
        "padding": {
          "top": 16,
          "bottom": 16,
          "right": 24,
          "left": 24
        }
      },
      "props": {
        "text": "{{ company_information.city }}"
      }
    }
  },
  "block-company_information_state": {
    "type": "Text",
    "data": {
      "style": {
        "fontWeight": "normal",
        "padding": {
          "top": 16,
          "bottom": 16,
          "right": 24,
          "left": 24
        }
      },
      "props": {
        "text": "{{ company_information.state }}"
      }
    }
  },
  "block-company_information_zip": {
    "type": "Text",
    "data": {
      "style": {
        "fontWeight": "normal",
        "padding": {
          "top": 16,
          "bottom": 16,
          "right": 24,
          "left": 24
        }
      },
      "props": {
        "text": "{{ company_information.zip }}"
      }
    }
  },
  "block-company_information_phone": {
    "type": "Text",
    "data": {
      "style": {
        "fontWeight": "normal",
        "padding": {
          "top": 16,
          "bottom": 16,
          "right": 24,
          "left": 24
        }
      },
      "props": {
        "text": "{{ company_information.phone }}"
      }
    }
  },
  "block-company_information_email": {
    "type": "Text",
    "data": {
      "style": {
        "fontWeight": "normal",
        "padding": {
          "top": 16,
          "bottom": 16,
          "right": 24,
          "left": 24
        }
      },
      "props": {
        "text": "{{ company_information.email }}"
      }
    }
  },
  "block-1736267465306": {
    "type": "ColumnsContainer",
    "data": {
      "style": {
        "padding": {
          "top": 0,
          "bottom": 0,
          "right": 24,
          "left": 24
        }
      },
      "props": {
        "columnsCount": 2,
        "columnsGap": 16,
        "columns": [
          {
            "childrenIds": [
              "block-1736267469034"
            ]
          },
          {
            "childrenIds": [
              "block-purchase_order_number"
            ]
          },
          {
            "childrenIds": []
          }
        ]
      }
    }
  },
  "block-1736267469034": {
    "type": "Text",
    "data": {
      "style": {
        "fontWeight": "bold",
        "padding": {
          "top": 16,
          "bottom": 16,
          "right": 24,
          "left": 24
        }
      },
      "props": {
        "text": "Purchase Order #"
      }
    }
  },
  "block-purchase_order_number": {
    "type": "Text",
    "data": {
      "style": {
        "fontWeight": "normal",
        "padding": {
          "top": 16,
          "bottom": 16,
          "right": 24,
          "left": 24
        }
      },
      "props": {
        "text": "{{ purchaseOrder }}"
      }
    }
  },
  "block-1736267562711": {
    "type": "ColumnsContainer",
    "data": {
      "style": {
        "padding": {
          "top": 0,
          "bottom": 0,
          "right": 0,
          "left": 0
        }
      },
      "props": {
        "columnsCount": 2,
        "columnsGap": 16,
        "columns": [
          {
            "childrenIds": [
              "block-1736267602064"
            ]
          },
          {
            "childrenIds": [
              "block-1736267583801"
            ]
          },
          {
            "childrenIds": []
          }
        ]
      }
    }
  },
  "block-1736267583801": {
    "type": "ColumnsContainer",
    "data": {
      "style": {
        "padding": {
          "top": 16,
          "bottom": 16,
          "right": 0,
          "left": 0
        }
      },
      "props": {
        "columnsCount": 2,
        "columnsGap": 8,
        "columns": [
          {
            "childrenIds": [
              "block-1736267616021"
            ]
          },
          {
            "childrenIds": [
              "block-1736267624998"
            ]
          },
          {
            "childrenIds": []
          }
        ]
      }
    }
  },
  "block-1736267602064": {
    "type": "Text",
    "data": {
      "style": {
        "fontWeight": "bold",
        "padding": {
          "top": 12,
          "bottom": 12,
          "right": 4,
          "left": 4
        }
      },
      "props": {
        "text": "Item"
      }
    }
  },
  "block-1736267616021": {
    "type": "Text",
    "data": {
      "style": {
        "fontWeight": "bold",
        "padding": {
          "top": 12,
          "bottom": 12,
          "right": 24,
          "left": 24
        }
      },
      "props": {
        "text": "Qty"
      }
    }
  },
  "block-1736267624998": {
    "type": "Text",
    "data": {
      "style": {
        "fontWeight": "bold",
        "padding": {
          "top": 12,
          "bottom": 12,
          "right": 8,
          "left": 8
        }
      },
      "props": {
        "text": "Est. Cost"
      }
    }
  },
  "block-full_item_container_1": {
    "type": "ColumnsContainer",
    "data": {
      "style": {
        "padding": {
          "top": 0,
          "bottom": 0,
          "right": 0,
          "left": 0
        }
      },
      "props": {
        "columnsCount": 2,
        "columnsGap": 16,
        "columns": [
          {
            "childrenIds": [
              "block-item_name_1",
              "block-item_sku_1"
            ]
          },
          {
            "childrenIds": [
              "block-item_details_1"
            ]
          },
          {
            "childrenIds": []
          }
        ]
      }
    }
  },
  "block-item_details_1": {
    "type": "ColumnsContainer",
    "data": {
      "style": {
        "padding": {
          "top": 8,
          "bottom": 8,
          "right": 0,
          "left": 0
        }
      },
      "props": {
        "columnsCount": 2,
        "columnsGap": 16,
        "columns": [
          {
            "childrenIds": [
              "block-item_quantity_1"
            ]
          },
          {
            "childrenIds": [
              "block-item_price_1"
            ]
          },
          {
            "childrenIds": []
          }
        ]
      }
    }
  },
  "block-item_quantity_1": {
    "type": "Text",
    "data": {
      "style": {
        "fontWeight": "normal",
        "padding": {
          "top": 16,
          "bottom": 16,
          "right": 24,
          "left": 24
        }
      },
      "props": {
        "text": "{{ item.quantity }}"
      }
    }
  },
  "block-item_price_1": {
    "type": "Text",
    "data": {
      "style": {
        "fontWeight": "normal",
        "padding": {
          "top": 16,
          "bottom": 16,
          "right": 8,
          "left": 8
        }
      },
      "props": {
        "text": "{{ item.price }}"
      }
    }
  },
  "block-item_name_1": {
    "type": "Text",
    "data": {
      "style": {
        "fontWeight": "normal",
        "padding": {
          "top": 0,
          "bottom": 0,
          "right": 4,
          "left": 4
        }
      },
      "props": {
        "text": "{{ item.name }}"
      }
    }
  },
  "block-item_sku_1": {
    "type": "Text",
    "data": {
      "style": {
        "fontWeight": "normal",
        "padding": {
          "top": 0,
          "bottom": 0,
          "right": 4,
          "left": 4
        }
      },
      "props": {
        "text": "SKU: {{ item.sku }}"
      }
    }
  },
  "block-item-divider": {
    "type": "Divider",
    "data": {
      "style": {
        "padding": {
          "top": 16,
          "bottom": 16,
          "right": 0,
          "left": 0
        }
      },
      "props": {
        "lineColor": "#CCCCCC"
      }
    }
  }
}', 'Default RFQ Email', NULL);


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

INSERT INTO "public"."users" ("id", "first_name", "email", "last_name", "role", "company", "avatar_url", "active", "active_date", "inactive_date", "inactive_reason") VALUES
	('dfa9232b-f6d1-4876-8808-0c44b226f297', 'Rodrigo ', 'rodrigo@theoutdoorplus.com', 'Alvarenga', 'ADMIN', 'aab2dcff-2d61-46b2-b80d-eafc3df7ed29', NULL, NULL, NULL, NULL, NULL),
	('0fd6ae12-24cc-4f62-b6c9-6a776a2e1b1e', 'Daniel', 'daniel@theoutdoorplus.com', 'Molina', 'SALES', 'aab2dcff-2d61-46b2-b80d-eafc3df7ed29', '', NULL, NULL, NULL, NULL),
	('f40adc20-e16b-434d-9903-3c22df70079a', 'Jesus', 'jesus@theoutdoorplus.com', 'Estrada', 'ADMIN', 'aab2dcff-2d61-46b2-b80d-eafc3df7ed29', '', NULL, NULL, NULL, NULL),
	('2a9eaede-ce3d-4910-b597-9814d6c5872e', 'Jains', 'jains@theoutdoorplus.com', 'Lopez', 'ADMIN', 'aab2dcff-2d61-46b2-b80d-eafc3df7ed29', '', NULL, NULL, NULL, NULL),
	('7d359261-b3c0-44dc-a232-f8e08f92ae0d', 'Joseph', 'joe@theoutdoorplus.com', 'Estrada', 'ADMIN', 'aab2dcff-2d61-46b2-b80d-eafc3df7ed29', '', NULL, NULL, NULL, NULL),
	('ac7b47a1-b77e-4fad-b1fa-fca160d61009', 'Guadalupe', 'lupe@theoutdoorplus.com', 'Estrada', 'ADMIN', 'aab2dcff-2d61-46b2-b80d-eafc3df7ed29', '', NULL, NULL, NULL, NULL),
	('7430693a-63c7-4e8e-807e-83e8a471de61', 'Vince', 'vince@theoutdoorplus.com', 'Estrada', 'SALES', 'aab2dcff-2d61-46b2-b80d-eafc3df7ed29', '', NULL, NULL, NULL, NULL),
	('cda1d40a-de6a-407f-8d9f-c88f665b6cbf', 'Liz', 'liz@theoutdoorplus.com', 'Nunez', 'SALES', 'aab2dcff-2d61-46b2-b80d-eafc3df7ed29', '', NULL, NULL, NULL, NULL),
	('8a940c63-0073-433b-9d90-ecfc0b4a79b5', 'Xavier', 'ixv7299@gmail.com', 'Villareal', 'DEALER', '424d8dc4-ee9c-44d4-9fb4-905f7ba5fbba', '', NULL, NULL, NULL, NULL),
	('39933bc3-319c-44a2-9b6c-6d0daecbd9a5', 'Xavier', 'dealer@topdashboard.com', 'Account', 'DEALER', '424d8dc4-ee9c-44d4-9fb4-905f7ba5fbba', '', NULL, NULL, NULL, NULL);


--
-- Data for Name: login_logs; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO "public"."login_logs" ("id", "login_time", "ip_address", "user_id", "user_agent") VALUES
	('99ace41c-975c-43c0-9a0e-8a2764a90194', '2025-02-04 00:35:09.80001+00', '47.179.36.170/32', 'dfa9232b-f6d1-4876-8808-0c44b226f297', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/132.0.0.0 Safari/537.36 Edg/132.0.0.0'),
	('f06e841c-0497-440d-88fc-44afc640b91b', '2025-02-04 19:45:24.044297+00', '47.179.36.170/32', 'dfa9232b-f6d1-4876-8808-0c44b226f297', 'Mozilla/5.0 (iPhone; CPU iPhone OS 18_2_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/18.2 Mobile/15E148 Safari/604.1'),
	('51b11c77-ecbe-4bbb-b38a-a60059be4440', '2025-02-04 20:09:50.520164+00', '47.179.36.170/32', 'dfa9232b-f6d1-4876-8808-0c44b226f297', 'Mozilla/5.0 (compatible; Google-Apps-Script; beanserver; +https://script.google.com; id: UAEmdDd-Sejrk1vcmhjCEEVKGjzSsLBP_0fo)'),
	('2c220ace-3adf-41f3-913f-30c993904c14', '2025-02-04 20:30:16.678037+00', '47.179.36.170/32', 'dfa9232b-f6d1-4876-8808-0c44b226f297', 'Mozilla/5.0 (iPhone; CPU iPhone OS 18_2_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/18.2 Mobile/15E148 Safari/604.1'),
	('ccc38cb9-18cb-4819-a766-e42904e84ef5', '2025-02-04 23:06:20.639482+00', '47.179.36.170/32', 'dfa9232b-f6d1-4876-8808-0c44b226f297', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/132.0.0.0 Safari/537.36 Edg/132.0.0.0'),
	('9c32a4e0-8e1b-4cc0-a66d-b459572e0924', '2025-02-04 23:44:39.952434+00', '47.179.36.170/32', 'dfa9232b-f6d1-4876-8808-0c44b226f297', 'Mozilla/5.0 (compatible; Google-Apps-Script; beanserver; +https://script.google.com; id: UAEmdDd-Sejrk1vcmhjCEEVKGjzSsLBP_0fo)'),
	('5badca18-6f9e-4202-94cd-9846aa5ea03d', '2025-02-05 01:03:33.776882+00', '47.179.36.170/32', 'dfa9232b-f6d1-4876-8808-0c44b226f297', 'Mozilla/5.0 (compatible; Google-Apps-Script; beanserver; +https://script.google.com; id: UAEmdDd-Sejrk1vcmhjCEEVKGjzSsLBP_0fo)'),
	('79bde53d-dc65-45ea-8fdd-ebd0c4f7903b', '2025-02-05 16:54:53.735198+00', '47.179.36.170/32', 'dfa9232b-f6d1-4876-8808-0c44b226f297', 'Mozilla/5.0 (compatible; Google-Apps-Script; beanserver; +https://script.google.com; id: UAEmdDd-Sejrk1vcmhjCEEVKGjzSsLBP_0fo)'),
	('3f477b93-e24a-4db3-b999-66edab3f3e7f', '2025-02-05 18:41:40.979215+00', '47.179.36.170/32', 'dfa9232b-f6d1-4876-8808-0c44b226f297', 'Mozilla/5.0 (compatible; Google-Apps-Script; beanserver; +https://script.google.com; id: UAEmdDd-Sejrk1vcmhjCEEVKGjzSsLBP_0fo)'),
	('d6254a65-35df-412b-9393-63f0b1632f9a', '2025-02-05 20:04:16.272676+00', '47.179.36.170/32', 'dfa9232b-f6d1-4876-8808-0c44b226f297', 'Mozilla/5.0 (compatible; Google-Apps-Script; beanserver; +https://script.google.com; id: UAEmdDd-Sejrk1vcmhjCEEVKGjzSsLBP_0fo)'),
	('58d28c5b-91a6-4e21-93a1-1b8234aa80e4', '2025-02-06 01:13:25.385547+00', '47.179.36.170/32', 'dfa9232b-f6d1-4876-8808-0c44b226f297', 'Mozilla/5.0 (compatible; Google-Apps-Script; beanserver; +https://script.google.com; id: UAEmdDd-Sejrk1vcmhjCEEVKGjzSsLBP_0fo)'),
	('9dd11c8c-3eb1-4182-9435-1ee354da35d1', '2025-02-06 16:32:03.163727+00', '47.179.36.170/32', 'cda1d40a-de6a-407f-8d9f-c88f665b6cbf', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/132.0.0.0 Safari/537.36'),
	('4901bc03-44a6-4f79-b817-4902a9df7edc', '2025-02-06 16:47:56.931002+00', '47.179.36.170/32', 'dfa9232b-f6d1-4876-8808-0c44b226f297', 'Mozilla/5.0 (compatible; Google-Apps-Script; beanserver; +https://script.google.com; id: UAEmdDd-Sejrk1vcmhjCEEVKGjzSsLBP_0fo)'),
	('90d0f5e0-b7b9-4930-b9c2-40c23df1d883', '2025-02-06 18:33:11.542624+00', '162.230.169.245/32', '2a9eaede-ce3d-4910-b597-9814d6c5872e', 'Mozilla/5.0 (iPad; CPU OS 18_2_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) CriOS/132.0.6834.100 Mobile/15E148 Safari/604.1'),
	('84d0ba6d-6625-4e43-917a-73f860541c40', '2025-02-06 18:40:43.794824+00', '47.179.36.170/32', 'dfa9232b-f6d1-4876-8808-0c44b226f297', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/132.0.0.0 Safari/537.36'),
	('45111bc2-6803-4cf8-aa98-3b007300288f', '2025-02-06 18:42:27.261183+00', '162.230.169.245/32', '2a9eaede-ce3d-4910-b597-9814d6c5872e', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/132.0.0.0 Safari/537.36'),
	('6cbf84b4-0704-48ba-abcd-2b1374530a27', '2025-02-06 19:22:47.715657+00', '47.179.36.170/32', 'dfa9232b-f6d1-4876-8808-0c44b226f297', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/132.0.0.0 Safari/537.36 Edg/132.0.0.0'),
	('2775218e-bbea-4c07-a80d-3ab2c2c3d295', '2025-02-06 19:53:11.475007+00', '47.179.36.170/32', 'dfa9232b-f6d1-4876-8808-0c44b226f297', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/132.0.0.0 Safari/537.36 Edg/132.0.0.0'),
	('26b327e3-e557-4974-ab98-83da6e968526', '2025-02-06 19:54:07.320293+00', '47.179.36.170/32', 'dfa9232b-f6d1-4876-8808-0c44b226f297', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/132.0.0.0 Safari/537.36 Edg/132.0.0.0'),
	('9cbbaeaa-7d4c-4f2c-adb9-5673ed7f631a', '2025-02-06 19:55:38.807901+00', '47.179.36.170/32', '39933bc3-319c-44a2-9b6c-6d0daecbd9a5', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/132.0.0.0 Safari/537.36 Edg/132.0.0.0'),
	('ba322395-9dce-434b-96dc-2dc7a355f291', '2025-02-06 20:08:54.608554+00', '47.179.36.170/32', 'dfa9232b-f6d1-4876-8808-0c44b226f297', 'Mozilla/5.0 (compatible; Google-Apps-Script; beanserver; +https://script.google.com; id: UAEmdDd-Sejrk1vcmhjCEEVKGjzSsLBP_0fo)'),
	('5c6d1323-2d71-4a9b-a2b3-0df0633ccd2e', '2025-02-06 22:10:52.98272+00', '12.75.41.21/32', '39933bc3-319c-44a2-9b6c-6d0daecbd9a5', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/132.0.0.0 Safari/537.36'),
	('b1f9ed52-97bc-4ba3-a731-37817fc6eac9', '2025-02-06 22:17:21.97179+00', '12.75.41.21/32', '39933bc3-319c-44a2-9b6c-6d0daecbd9a5', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/132.0.0.0 Safari/537.36'),
	('e8fdc38d-604a-430e-ba2d-fc48c57fa3bf', '2025-02-06 22:49:52.652342+00', '166.205.97.67/32', '39933bc3-319c-44a2-9b6c-6d0daecbd9a5', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/132.0.0.0 Safari/537.36'),
	('c4e5c79a-5d3e-4708-911a-e77c95ee0a5c', '2025-02-06 22:54:33.812632+00', '166.205.97.67/32', '39933bc3-319c-44a2-9b6c-6d0daecbd9a5', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/132.0.0.0 Safari/537.36'),
	('c7f2773d-09ec-452c-9cad-fe3dbd9d3c84', '2025-02-06 22:56:52.22186+00', '166.205.97.67/32', '39933bc3-319c-44a2-9b6c-6d0daecbd9a5', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/132.0.0.0 Safari/537.36'),
	('fa17ff54-487c-44c1-b09c-f87bbe49e655', '2025-02-06 22:59:20.950463+00', '166.205.97.67/32', '2a9eaede-ce3d-4910-b597-9814d6c5872e', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/132.0.0.0 Safari/537.36'),
	('3f605886-b5c1-450a-8129-d613d5653ebe', '2025-02-07 00:13:29.28039+00', '166.205.97.67/32', '39933bc3-319c-44a2-9b6c-6d0daecbd9a5', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/132.0.0.0 Safari/537.36'),
	('923d843e-41ca-4cd8-af71-e0b7c3d69661', '2025-02-07 00:13:45.377364+00', '166.205.97.67/32', '39933bc3-319c-44a2-9b6c-6d0daecbd9a5', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/132.0.0.0 Safari/537.36'),
	('182e1539-d87a-460f-935f-4188ea6bfda3', '2025-01-06 16:25:27.729703+00', '47.179.36.170/32', 'dfa9232b-f6d1-4876-8808-0c44b226f297', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0'),
	('a4d53b54-5acc-48ba-bbce-7aec43ea6302', '2025-01-06 16:25:40.816283+00', '47.179.36.170/32', 'dfa9232b-f6d1-4876-8808-0c44b226f297', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0'),
	('a6978294-4366-4cbc-b9ad-33087bb662c8', '2025-01-10 21:52:01.656352+00', '47.179.36.170/32', 'dfa9232b-f6d1-4876-8808-0c44b226f297', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0'),
	('6c358aaf-f005-4325-9ced-c3693f547f5c', '2025-01-10 21:52:27.338889+00', '47.179.36.170/32', 'dfa9232b-f6d1-4876-8808-0c44b226f297', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0'),
	('893a6105-5b04-464e-afd8-913a2affdd7e', '2025-01-10 21:53:12.160424+00', '47.179.36.170/32', 'dfa9232b-f6d1-4876-8808-0c44b226f297', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0'),
	('b86401e0-9c52-4df6-9491-df56ce6edbce', '2025-01-10 21:55:46.566425+00', '47.179.36.170/32', 'dfa9232b-f6d1-4876-8808-0c44b226f297', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0'),
	('02fb3f0f-c210-4530-8a30-f870a914c66d', '2025-01-10 21:59:22.228868+00', '47.179.36.170/32', 'dfa9232b-f6d1-4876-8808-0c44b226f297', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0'),
	('c9fdc6e0-c664-45ac-b770-4de16f5420f4', '2025-01-10 21:59:30.157735+00', '47.179.36.170/32', 'dfa9232b-f6d1-4876-8808-0c44b226f297', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0'),
	('53ff925a-3af5-4bc9-ac0b-fd0b214b2fd9', '2025-01-10 21:59:51.500954+00', '47.179.36.170/32', 'dfa9232b-f6d1-4876-8808-0c44b226f297', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0'),
	('539e1a4c-9567-4a5d-a18e-ae4d3582a7b1', '2025-01-21 17:43:12.51255+00', '47.179.36.170/32', 'dfa9232b-f6d1-4876-8808-0c44b226f297', 'Mozilla/5.0 (compatible; Google-Apps-Script; beanserver; +https://script.google.com; id: UAEmdDd-Sejrk1vcmhjCEEVKGjzSsLBP_0fo)'),
	('0bbeabb5-630d-4aa2-a022-f661587ca92f', '2025-01-21 18:13:43.261698+00', '47.179.36.170/32', 'dfa9232b-f6d1-4876-8808-0c44b226f297', 'Mozilla/5.0 (compatible; Google-Apps-Script; beanserver; +https://script.google.com; id: UAEmdDd-Sejrk1vcmhjCEEVKGjzSsLBP_0fo)'),
	('91394742-e6f8-462d-8d64-8f7e9f3ccf5e', '2025-01-21 18:13:52.562959+00', '47.179.36.170/32', 'dfa9232b-f6d1-4876-8808-0c44b226f297', 'Mozilla/5.0 (compatible; Google-Apps-Script; beanserver; +https://script.google.com; id: UAEmdDd-Sejrk1vcmhjCEEVKGjzSsLBP_0fo)'),
	('2367e60e-25c6-4cc2-a10e-8b60072bb3f9', '2025-01-21 18:17:41.435064+00', '47.179.36.170/32', 'dfa9232b-f6d1-4876-8808-0c44b226f297', 'Mozilla/5.0 (compatible; Google-Apps-Script; beanserver; +https://script.google.com; id: UAEmdDd-Sejrk1vcmhjCEEVKGjzSsLBP_0fo)'),
	('71c2ecd9-a7bd-464f-84b5-b707df4f6793', '2025-01-21 18:37:25.729169+00', '47.179.36.170/32', 'dfa9232b-f6d1-4876-8808-0c44b226f297', 'Mozilla/5.0 (compatible; Google-Apps-Script; beanserver; +https://script.google.com; id: UAEmdDd-Sejrk1vcmhjCEEVKGjzSsLBP_0fo)'),
	('fb4f7be2-a11d-4af4-b68b-376f8a97ea34', '2025-01-22 00:25:13.842336+00', '47.179.36.170/32', 'dfa9232b-f6d1-4876-8808-0c44b226f297', 'Mozilla/5.0 (compatible; Google-Apps-Script; beanserver; +https://script.google.com; id: UAEmdDd-Sejrk1vcmhjCEEVKGjzSsLBP_0fo)'),
	('335f3fe9-d9a0-4394-944f-4e2f09f3fe5f', '2025-01-22 00:32:18.846631+00', '47.179.36.170/32', 'dfa9232b-f6d1-4876-8808-0c44b226f297', 'Mozilla/5.0 (compatible; Google-Apps-Script; beanserver; +https://script.google.com; id: UAEmdDd-Sejrk1vcmhjCEEVKGjzSsLBP_0fo)'),
	('076958a4-83d9-49d4-a9e2-4c061c2752b7', '2025-01-22 00:52:16.279945+00', '47.179.36.170/32', 'dfa9232b-f6d1-4876-8808-0c44b226f297', 'Mozilla/5.0 (compatible; Google-Apps-Script; beanserver; +https://script.google.com; id: UAEmdDd-Sejrk1vcmhjCEEVKGjzSsLBP_0fo)'),
	('85c8c1c3-de3e-4181-8d02-b566d9141c3c', '2025-01-22 01:00:32.584041+00', '47.179.36.170/32', 'dfa9232b-f6d1-4876-8808-0c44b226f297', 'Mozilla/5.0 (compatible; Google-Apps-Script; beanserver; +https://script.google.com; id: UAEmdDd-Sejrk1vcmhjCEEVKGjzSsLBP_0fo)'),
	('a27049d8-1309-43c6-9b8a-e2d17e1f4032', '2025-01-22 01:02:14.319769+00', '47.179.36.170/32', 'dfa9232b-f6d1-4876-8808-0c44b226f297', 'Mozilla/5.0 (compatible; Google-Apps-Script; beanserver; +https://script.google.com; id: UAEmdDd-Sejrk1vcmhjCEEVKGjzSsLBP_0fo)'),
	('8ade03a9-89ef-41ea-8826-eef1d5f866e2', '2025-01-23 16:21:21.504769+00', '47.179.36.170/32', 'dfa9232b-f6d1-4876-8808-0c44b226f297', 'Mozilla/5.0 (compatible; Google-Apps-Script; beanserver; +https://script.google.com; id: UAEmdDd-Sejrk1vcmhjCEEVKGjzSsLBP_0fo)'),
	('4f29651f-2005-4bb5-a632-b9d86f4214d3', '2025-01-23 20:03:57.143355+00', '47.179.36.170/32', 'dfa9232b-f6d1-4876-8808-0c44b226f297', 'Mozilla/5.0 (compatible; Google-Apps-Script; beanserver; +https://script.google.com; id: UAEmdDd-Sejrk1vcmhjCEEVKGjzSsLBP_0fo)'),
	('da89c18a-6823-4f88-8ff0-c039c98f2ee9', '2025-01-23 21:08:18.684945+00', '47.179.36.170/32', 'dfa9232b-f6d1-4876-8808-0c44b226f297', 'Mozilla/5.0 (compatible; Google-Apps-Script; beanserver; +https://script.google.com; id: UAEmdDd-Sejrk1vcmhjCEEVKGjzSsLBP_0fo)'),
	('d094a382-1079-4990-af50-13ff4787b726', '2025-01-23 21:10:18.58493+00', '47.179.36.170/32', 'dfa9232b-f6d1-4876-8808-0c44b226f297', 'Mozilla/5.0 (compatible; Google-Apps-Script; beanserver; +https://script.google.com; id: UAEmdDd-Sejrk1vcmhjCEEVKGjzSsLBP_0fo)'),
	('b61add79-93ca-431e-830a-b7622894fad6', '2025-01-23 21:19:25.374125+00', '47.179.36.170/32', 'dfa9232b-f6d1-4876-8808-0c44b226f297', 'Mozilla/5.0 (compatible; Google-Apps-Script; beanserver; +https://script.google.com; id: UAEmdDd-Sejrk1vcmhjCEEVKGjzSsLBP_0fo)'),
	('cce86d83-5233-4c72-827c-ad61dec40fce', '2025-01-25 16:19:40.612812+00', '47.179.36.170/32', 'dfa9232b-f6d1-4876-8808-0c44b226f297', 'Mozilla/5.0 (compatible; Google-Apps-Script; beanserver; +https://script.google.com; id: UAEmdDd-Sejrk1vcmhjCEEVKGjzSsLBP_0fo)'),
	('0277210c-bce4-4345-8524-715899519911', '2025-01-25 17:27:10.82551+00', '47.179.36.170/32', 'dfa9232b-f6d1-4876-8808-0c44b226f297', 'Mozilla/5.0 (compatible; Google-Apps-Script; beanserver; +https://script.google.com; id: UAEmdDd-Sejrk1vcmhjCEEVKGjzSsLBP_0fo)'),
	('e4c431b4-97c8-4b64-9924-43eabd5d636c', '2025-01-25 19:33:13.920987+00', '47.179.36.170/32', 'dfa9232b-f6d1-4876-8808-0c44b226f297', 'Mozilla/5.0 (compatible; Google-Apps-Script; beanserver; +https://script.google.com; id: UAEmdDd-Sejrk1vcmhjCEEVKGjzSsLBP_0fo)'),
	('50782316-3638-434e-8c92-db387ce06406', '2025-01-27 16:53:12.514361+00', '47.179.36.170/32', 'dfa9232b-f6d1-4876-8808-0c44b226f297', 'Mozilla/5.0 (compatible; Google-Apps-Script; beanserver; +https://script.google.com; id: UAEmdDd-Sejrk1vcmhjCEEVKGjzSsLBP_0fo)'),
	('7662a804-5d4c-4f72-85b6-864ad3a66925', '2025-01-27 17:55:25.114248+00', '47.179.36.170/32', 'dfa9232b-f6d1-4876-8808-0c44b226f297', 'Mozilla/5.0 (compatible; Google-Apps-Script; beanserver; +https://script.google.com; id: UAEmdDd-Sejrk1vcmhjCEEVKGjzSsLBP_0fo)'),
	('dff39719-d316-4bf9-8887-595d0676bc0d', '2025-01-28 00:16:36.477467+00', '47.179.36.170/32', 'dfa9232b-f6d1-4876-8808-0c44b226f297', 'Mozilla/5.0 (compatible; Google-Apps-Script; beanserver; +https://script.google.com; id: UAEmdDd-Sejrk1vcmhjCEEVKGjzSsLBP_0fo)'),
	('1cf750d9-3aac-449f-8789-276e5a3cb0ac', '2025-01-28 16:25:07.484292+00', '47.179.36.170/32', 'dfa9232b-f6d1-4876-8808-0c44b226f297', 'Mozilla/5.0 (compatible; Google-Apps-Script; beanserver; +https://script.google.com; id: UAEmdDd-Sejrk1vcmhjCEEVKGjzSsLBP_0fo)'),
	('122e2179-350e-4414-b830-992570241e4e', '2025-01-28 18:29:22.057769+00', '47.179.36.170/32', 'dfa9232b-f6d1-4876-8808-0c44b226f297', 'Mozilla/5.0 (compatible; Google-Apps-Script; beanserver; +https://script.google.com; id: UAEmdDd-Sejrk1vcmhjCEEVKGjzSsLBP_0fo)'),
	('18d1bab0-0611-4c0c-b2d9-77537b12d2c8', '2025-01-28 20:55:20.470508+00', '47.179.36.170/32', 'dfa9232b-f6d1-4876-8808-0c44b226f297', 'Mozilla/5.0 (compatible; Google-Apps-Script; beanserver; +https://script.google.com; id: UAEmdDd-Sejrk1vcmhjCEEVKGjzSsLBP_0fo)'),
	('a38c55d2-c01b-4715-904a-887b0c01a187', '2025-01-28 22:27:14.751371+00', '47.179.36.170/32', 'dfa9232b-f6d1-4876-8808-0c44b226f297', 'Mozilla/5.0 (compatible; Google-Apps-Script; beanserver; +https://script.google.com; id: UAEmdDd-Sejrk1vcmhjCEEVKGjzSsLBP_0fo)'),
	('eb900609-666f-4072-a66d-0daef3dedac5', '2025-01-29 01:06:00.121743+00', '47.179.36.170/32', 'dfa9232b-f6d1-4876-8808-0c44b226f297', 'Mozilla/5.0 (compatible; Google-Apps-Script; beanserver; +https://script.google.com; id: UAEmdDd-Sejrk1vcmhjCEEVKGjzSsLBP_0fo)'),
	('32ff6f98-f6bb-48fb-b478-a5b9ff451d89', '2025-01-30 01:23:39.385914+00', '47.179.36.170/32', 'dfa9232b-f6d1-4876-8808-0c44b226f297', 'Mozilla/5.0 (compatible; Google-Apps-Script; beanserver; +https://script.google.com; id: UAEmdDd-Sejrk1vcmhjCEEVKGjzSsLBP_0fo)'),
	('d9036509-4022-418f-a7b7-ab2ba58d1239', '2025-01-31 00:52:31.721138+00', '47.179.36.170/32', 'dfa9232b-f6d1-4876-8808-0c44b226f297', 'Mozilla/5.0 (compatible; Google-Apps-Script; beanserver; +https://script.google.com; id: UAEmdDd-Sejrk1vcmhjCEEVKGjzSsLBP_0fo)'),
	('62276c48-868c-431d-9fa5-be2a3e211036', '2025-02-01 00:07:06.083953+00', '47.179.36.170/32', 'dfa9232b-f6d1-4876-8808-0c44b226f297', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/132.0.0.0 Safari/537.36 Edg/132.0.0.0'),
	('a19d2bc0-67f7-48e9-af82-254e800cca5d', '2025-02-01 00:15:02.700193+00', '47.179.36.170/32', 'dfa9232b-f6d1-4876-8808-0c44b226f297', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/132.0.0.0 Safari/537.36 Edg/132.0.0.0'),
	('18943c17-6615-4b6a-a64f-350f185c34d1', '2025-02-01 00:15:12.508644+00', '47.179.36.170/32', 'dfa9232b-f6d1-4876-8808-0c44b226f297', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/132.0.0.0 Safari/537.36 Edg/132.0.0.0'),
	('b760921f-7437-4c1d-a5e1-89238b2873e5', '2025-02-01 17:38:44.119344+00', '47.179.36.170/32', 'dfa9232b-f6d1-4876-8808-0c44b226f297', 'Mozilla/5.0 (compatible; Google-Apps-Script; beanserver; +https://script.google.com; id: UAEmdDd-Sejrk1vcmhjCEEVKGjzSsLBP_0fo)'),
	('cd6d9004-8f55-4778-842f-dc3c098e4b9c', '2025-02-01 20:06:15.798008+00', '47.179.36.170/32', 'dfa9232b-f6d1-4876-8808-0c44b226f297', 'Mozilla/5.0 (compatible; Google-Apps-Script; beanserver; +https://script.google.com; id: UAEmdDd-Sejrk1vcmhjCEEVKGjzSsLBP_0fo)'),
	('0b219d9b-38ce-431a-8de6-8b8d9f638fac', '2025-02-01 20:09:43.782423+00', '47.179.36.170/32', 'dfa9232b-f6d1-4876-8808-0c44b226f297', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/132.0.0.0 Safari/537.36 Edg/132.0.0.0'),
	('01421be3-47c1-49ff-aaff-ade522ef0243', '2025-02-03 17:48:15.286129+00', '47.179.36.170/32', 'dfa9232b-f6d1-4876-8808-0c44b226f297', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/132.0.0.0 Safari/537.36 Edg/132.0.0.0'),
	('18b8727c-b506-49e1-bdf8-2171246bdd06', '2025-02-03 17:53:34.017616+00', '47.179.36.170/32', 'dfa9232b-f6d1-4876-8808-0c44b226f297', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/18.0 Safari/605.1.15');


--
-- Data for Name: rfq; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO "public"."rfq" ("id", "created_at", "updated_at", "company_information", "ship_to_information", "purchase_order_number", "items", "additional_notes", "company_id", "user_id", "rfq_number", "estimate_link", "purchase_order_link", "estimate_number", "sales_order_number", "invoice_number", "status", "agent_assigned_id", "comments", "invoice_link", "sales_order_link", "updates", "estimate_signed", "invoice_payment_link", "private_notes") VALUES
	('8b893269-8e31-49ca-be9a-80a95c1ea8aa', '2025-02-06 20:53:41.917632+00', '2025-02-06 20:53:41.917632+00', '{"zip": "91761", "city": "Ontario", "name": "IXV Landscape", "email": "dealer@topdashboard.com", "phone": "4594568694", "state": "CA", "address": "Home", "contact": "Xavier Account"}', '{"zip": "91761", "city": "Ontario", "name": "IXV Landscape", "email": "dealer@topdashboard.com", "phone": "4594568694", "state": "CA", "address": "Home", "contact": "Xavier Account"}', '', '[{"sku": "OPT-24RFO-MPR-LP", "name": "24\" Cazo Fire Bowl - GFRC - Metallic Pearl - Liquid Propane - Match Lit", "price": 1237, "quantity": 1}]', 'Please review the quote and contact us for any questions.', '424d8dc4-ee9c-44d4-9fb4-905f7ba5fbba', '39933bc3-319c-44a2-9b6c-6d0daecbd9a5', 'RFQ-ILXA02011', NULL, NULL, NULL, NULL, NULL, 'RFQ Sent', NULL, NULL, NULL, NULL, '[{"avatar": "", "user_id": "39933bc3-319c-44a2-9b6c-6d0daecbd9a5", "update_id": "3dec1eca-85b3-4de3-84b2-a69dfc26c0f8", "user_name": "Xavier Account", "user_type": "CUSTOMER", "created_at": "2025-02-06T20:53:41.861Z", "action_text": "RFQ Created by Xavier Account", "user_initials": "XA"}]', false, NULL, '[]'),
	('7be8eb7d-3371-4a20-850b-d5f0b01913e0', '2025-02-06 22:17:57.522217+00', '2025-02-06 22:17:57.522217+00', '{"zip": "", "city": "", "name": "IXV Landscape", "email": "dealer@topdashboard.com", "phone": "", "state": "", "address": "", "contact": "Xavier Account"}', '{"zip": "91761", "city": "Ontario", "name": "The Outdoor Plus", "email": "jains@theoutdoorplus.com", "phone": "9094605579", "state": "California", "address": "701 S Dupont Ave", "contact": "Jesus Estrada"}', '', '[{"sku": "OPT-24RFO-MPR-LP", "name": "24\" Cazo Fire Bowl - GFRC - Metallic Pearl - Liquid Propane - Match Lit", "price": 1237, "quantity": 1}]', 'Please review the quote and contact us for any questions.', '424d8dc4-ee9c-44d4-9fb4-905f7ba5fbba', '39933bc3-319c-44a2-9b6c-6d0daecbd9a5', 'RFQ-ILXA02012', NULL, NULL, NULL, NULL, NULL, 'RFQ Sent', NULL, NULL, NULL, NULL, '[{"avatar": "", "user_id": "39933bc3-319c-44a2-9b6c-6d0daecbd9a5", "update_id": "d85153ab-86da-4bc9-b8a8-b828cdcc64eb", "user_name": "Xavier Account", "user_type": "CUSTOMER", "created_at": "2025-02-06T22:17:57.243Z", "action_text": "RFQ Created by Xavier Account", "user_initials": "XA"}]', false, NULL, '[]'),
	('c28d6527-2217-458e-82ac-88291351cb4a', '2025-02-07 00:14:27.577124+00', '2025-02-07 00:14:27.577124+00', '{"zip": "", "city": "", "name": "IXV Landscape", "email": "dealer@topdashboard.com", "phone": "", "state": "", "address": "", "contact": "Xavier Account"}', '{"zip": "91761", "city": "Ontario", "name": "The Outdoor Plus", "email": "jains@theoutdoorplus.com", "phone": "9094605579", "state": "California", "address": "701 S Dupont Ave", "contact": "Jesus Estrada"}', '', '[{"sku": "OPT-24RFO-MPR-LP", "name": "24\" Cazo Fire Bowl - GFRC - Metallic Pearl - Liquid Propane - Match Lit", "price": 1237, "quantity": 1}, {"sku": "OPT-BRDSS8", "name": "8\" Bullet Burner - Stainless Steel", "price": 98, "quantity": 1}]', 'Please review the quote and contact us for any questions.', '424d8dc4-ee9c-44d4-9fb4-905f7ba5fbba', '39933bc3-319c-44a2-9b6c-6d0daecbd9a5', 'RFQ-ILXA02013', NULL, NULL, NULL, NULL, NULL, 'RFQ Sent', NULL, NULL, NULL, NULL, '[{"avatar": "", "user_id": "39933bc3-319c-44a2-9b6c-6d0daecbd9a5", "update_id": "c8aed42a-f3b7-4468-b487-e31e084132b2", "user_name": "Xavier Account", "user_type": "CUSTOMER", "created_at": "2025-02-07T00:14:27.196Z", "action_text": "RFQ Created by Xavier Account", "user_initials": "XA"}]', false, NULL, '[]');


--
-- Data for Name: order; Type: TABLE DATA; Schema: public; Owner: postgres
--



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
-- Data for Name: hooks; Type: TABLE DATA; Schema: supabase_functions; Owner: supabase_functions_admin
--



--
-- Data for Name: secrets; Type: TABLE DATA; Schema: vault; Owner: supabase_admin
--



--
-- Name: refresh_tokens_id_seq; Type: SEQUENCE SET; Schema: auth; Owner: supabase_auth_admin
--

SELECT pg_catalog.setval('"auth"."refresh_tokens_id_seq"', 268, true);


--
-- Name: key_key_id_seq; Type: SEQUENCE SET; Schema: pgsodium; Owner: supabase_admin
--

SELECT pg_catalog.setval('"pgsodium"."key_key_id_seq"', 1, false);


--
-- Name: emails_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"public"."emails_id_seq"', 1, true);


--
-- Name: hooks_id_seq; Type: SEQUENCE SET; Schema: supabase_functions; Owner: supabase_functions_admin
--

-- SELECT pg_catalog.setval('"supabase_functions"."hooks_id_seq"', 1, false);


--
-- PostgreSQL database dump complete
--

RESET ALL;
