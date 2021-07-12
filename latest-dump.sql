--
-- PostgreSQL database dump
--

-- Dumped from database version 13.3
-- Dumped by pg_dump version 13.3

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
-- Name: activity_type; Type: TYPE; Schema: public; Owner: dminer
--

CREATE TYPE public.activity_type AS ENUM (
    'Playing',
    'Streaming',
    'Listening',
    'Watching',
    'Custom',
    'Competing',
    'Unknown'
);


ALTER TYPE public.activity_type OWNER TO dminer;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: activities; Type: TABLE; Schema: public; Owner: dminer
--

CREATE TABLE public.activities (
    user_id bigint NOT NULL,
    application_id bigint NOT NULL,
    assets text,
    details text,
    kind public.activity_type NOT NULL,
    activity_name text NOT NULL,
    party boolean NOT NULL,
    state text,
    start_timestamp bigint NOT NULL,
    end_timestamp bigint
);


ALTER TABLE public.activities OWNER TO dminer;

--
-- Name: messages; Type: TABLE; Schema: public; Owner: dminer
--

CREATE TABLE public.messages (
    message_id bigint NOT NULL,
    channel_id bigint NOT NULL,
    guild_id bigint,
    content text,
    author bigint,
    deleted boolean,
    "timestamp" bigint
);


ALTER TABLE public.messages OWNER TO dminer;

--
-- Name: updated_messages; Type: TABLE; Schema: public; Owner: dminer
--

CREATE TABLE public.updated_messages (
    message_id bigint NOT NULL,
    channel_id bigint NOT NULL,
    guild_id bigint,
    old_content text,
    new_content text,
    author bigint NOT NULL
);


ALTER TABLE public.updated_messages OWNER TO dminer;

--
-- Name: users; Type: TABLE; Schema: public; Owner: dminer
--

CREATE TABLE public.users (
    user_id bigint NOT NULL,
    username text
);


ALTER TABLE public.users OWNER TO dminer;

--
-- Data for Name: activities; Type: TABLE DATA; Schema: public; Owner: dminer
--

COPY public.activities (user_id, application_id, assets, details, kind, activity_name, party, state, start_timestamp, end_timestamp) FROM stdin;
\.


--
-- Data for Name: messages; Type: TABLE DATA; Schema: public; Owner: dminer
--

COPY public.messages (message_id, channel_id, guild_id, content, author, deleted, "timestamp") FROM stdin;
864120342960144454	470197424405872640	360783544668258314	test	191594115907977225	f	\N
864120366703181824	470197424405872640	360783544668258314	nani	261520809225355264	f	\N
864120406146547722	470197424405872640	360783544668258314	botus?	261520809225355264	f	\N
864121911751082004	604027466012557480	360783544668258314	https://cdn.discordapp.com/attachments/756597777265459280/864031797963522048/video0_18.mp4	325704347767799808	f	\N
864123423084380160	470197424405872640	360783544668258314	Ja	191594115907977225	f	\N
864123440818159617	470197424405872640	360783544668258314	Testing	191594115907977225	f	\N
864123456260800532	470197424405872640	360783544668258314	Und es funktioniert	191594115907977225	f	\N
864123460703092746	470197424405872640	360783544668258314	endlich	191594115907977225	f	\N
864123466385850398	470197424405872640	360783544668258314	wie läufts	261520809225355264	f	\N
864123486204198913	470197424405872640	360783544668258314	Langsam gut	191594115907977225	f	\N
864123514319536139	470197424405872640	360783544668258314	Botv5 ist gerostet	191594115907977225	f	\N
864125079884922880	470197424405872640	360783544668258314	Ist Rust ist das mal so viel geiler einen Bot zu schreiben als in Java	191594115907977225	f	\N
864125129016737793	470197424405872640	360783544668258314	zeih ma	261520809225355264	f	\N
864125163121672242	470197424405872640	360783544668258314	In wiefern Zeig mal	191594115907977225	f	\N
864125176257445911	470197424405872640	360783544668258314	Den code?	191594115907977225	f	\N
864125190538395659	470197424405872640	360783544668258314	join mal und zeig	261520809225355264	f	\N
864125220548902912	470197424405872640	360783544668258314	Joinen ist grade schlecht	191594115907977225	f	\N
864125248432766996	470197424405872640	360783544668258314	Ich hab noch Unterricht	191594115907977225	f	\N
864125251793453076	470197424405872640	360783544668258314	xddd	191594115907977225	f	\N
864125273841336351	470197424405872640	360783544668258314	bin grade in der Schule	191594115907977225	f	\N
864125287519092746	470197424405872640	360783544668258314	üfff	261520809225355264	f	\N
864125298265817109	470197424405872640	360783544668258314	aber naund	261520809225355264	f	\N
864125310688690207	470197424405872640	360783544668258314	komm ran hier#	261520809225355264	f	\N
864125323531649065	470197424405872640	360783544668258314	Stillarbeit	191594115907977225	f	\N
864125328628776960	470197424405872640	360783544668258314	musst ja nicht reden	261520809225355264	f	\N
864125343181832193	470197424405872640	360783544668258314	Zeige ich dir sobald ich zuhause bin	191594115907977225	f	\N
864125376669679627	470197424405872640	360783544668258314	langweiler	261520809225355264	f	\N
864125392717742090	470197424405872640	360783544668258314	Dann kann ich auch zu Dingen etwas sagen	191594115907977225	f	\N
864125434416070687	470197424405872640	360783544668258314	ach was, hast du Zeit dir Fragen auszudenken	191594115907977225	f	\N
864125437805461515	470197424405872640	360783544668258314	xddddd	191594115907977225	f	\N
864125505997373460	470197424405872640	360783544668258314	wie, wenn ich net mal weiß, wies geht xD	261520809225355264	f	\N
864125539732029450	470197424405872640	360783544668258314	also aussieht	261520809225355264	f	\N
864125562774356010	470197424405872640	360783544668258314	shhhhh	191594115907977225	f	\N
864126082597126165	470197424405872640	360783544668258314	ey joshua	191594115907977225	f	\N
864126118327877663	470197424405872640	360783544668258314	kannst du mir mal einen Gefallen tun	191594115907977225	f	\N
864126157741228055	470197424405872640	360783544668258314	wasn?	261520809225355264	f	\N
864126177207386152	470197424405872640	360783544668258314	mach gerade dimlets	261520809225355264	f	\N
864126194294063154	470197424405872640	360783544668258314	Mach mal auf einem Musikbot irgendwas an	191594115907977225	f	\N
864126244927832075	470197424405872640	360783544668258314	!play despasito	261520809225355264	f	\N
864126247863582720	470197424405872640	360783544668258314	:thumbsup: **Joined `Dräger` and bound to <#470197424405872640>**	235088799074484224	f	\N
864126248900231178	470197424405872640	360783544668258314	<:youtube:841353157489852487> **Searching** 🔎 `despasito`	235088799074484224	f	\N
864126251957747763	470197424405872640	360783544668258314	**Playing** 🎶 `Luis Fonsi - Despacito ft. Daddy Yankee` - Now!	235088799074484224	f	\N
864126314533224478	470197424405872640	360783544668258314	Reicht schon danke	191594115907977225	f	\N
864127637592997940	470197424405872640	360783544668258314	test delete	191594115907977225	f	\N
864128590202798121	470197424405872640	360783544668258314	2 delete	191594115907977225	f	\N
864134463372787712	470197424405872640	360783544668258314	test	191594115907977225	t	\N
864171822852603985	470197424405872640	360783544668258314	test	191594115907977225	t	\N
864181846806626314	470197424405872640	360783544668258314	test	191594115907977225	f	\N
864182072570937405	470197424405872640	360783544668258314	timestamp test	191594115907977225	f	1626107461319
\.


--
-- Data for Name: updated_messages; Type: TABLE DATA; Schema: public; Owner: dminer
--

COPY public.updated_messages (message_id, channel_id, guild_id, old_content, new_content, author) FROM stdin;
\.


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: dminer
--

COPY public.users (user_id, username) FROM stdin;
191594115907977225	flamion
261520809225355264	SirGodless
325704347767799808	FlareFlo🦆
235088799074484224	Rythm
\.


--
-- Name: activities activities_pkey; Type: CONSTRAINT; Schema: public; Owner: dminer
--

ALTER TABLE ONLY public.activities
    ADD CONSTRAINT activities_pkey PRIMARY KEY (user_id, start_timestamp);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: dminer
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (user_id);


--
-- Name: activities activities_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: dminer
--

ALTER TABLE ONLY public.activities
    ADD CONSTRAINT activities_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(user_id) ON DELETE CASCADE;


--
-- Name: messages messages_author_fkey; Type: FK CONSTRAINT; Schema: public; Owner: dminer
--

ALTER TABLE ONLY public.messages
    ADD CONSTRAINT messages_author_fkey FOREIGN KEY (author) REFERENCES public.users(user_id) ON DELETE CASCADE;


--
-- Name: updated_messages updated_messages_author_fkey; Type: FK CONSTRAINT; Schema: public; Owner: dminer
--

ALTER TABLE ONLY public.updated_messages
    ADD CONSTRAINT updated_messages_author_fkey FOREIGN KEY (author) REFERENCES public.users(user_id);


--
-- PostgreSQL database dump complete
--

