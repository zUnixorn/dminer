--
-- PostgreSQL database dump
--

-- Dumped from database version 13.3
-- Dumped by pg_dump version 13.3

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'SQL_ASCII';
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
    author bigint
);


ALTER TABLE public.messages OWNER TO dminer;

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

COPY public.messages (message_id, channel_id, guild_id, content, author) FROM stdin;
\.


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: dminer
--

COPY public.users (user_id, username) FROM stdin;
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
-- PostgreSQL database dump complete
--

