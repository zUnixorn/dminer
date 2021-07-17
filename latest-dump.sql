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
    application_id bigint,
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
    new_content text,
    modify_timestamp bigint NOT NULL
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
681192725152006160	401518684763586560	403244932292411412	Summoner's Rift (Normal)	Playing	League of Legends	f	In Game	1626296946000	\N
509017844537622532	445956193924546560	446301881636225042	QUICK MATCH match - Round 1 / 4	Playing	Rainbow Six Siege	f	\N	1626297082	\N
509017844537622532	356876590342340608	\N	\N	Playing	Tom Clancy's Rainbow Six Siege	f	\N	1626294628071	\N
361914328703696896	356877880938070016	\N	\N	Playing	Rocket League	f	\N	1626296019737	\N
152104114753372160	385537699366305792	\N	\N	Playing	Yu-Gi-Oh! Duel Links	f	\N	1626287689665	\N
281381884460662785	477175586805252107	481347538054545418	Playing	Playing	Among Us	t	In Game	1626295105000	\N
281381884460662785	477175586805252107	481347538054545418	\N	Playing	Among Us	t	In Menus	1626297132	\N
281381884460662785	477175586805252107	\N	\N	Playing	Among Us	f	\N	1626294959730	\N
281381884460662785	357607478105604096	\N	\N	Playing	War Thunder	f	\N	1626297161327	\N
509017844537622532	445956193924546560	446301881636225042	QUICK MATCH match - Round 1 / 4	Playing	Rainbow Six Siege	f	\N	1626297243	\N
509017844537622532	445956193924546560	446301881636225042	in MENU	Playing	Rainbow Six Siege	f	\N	1626297251	\N
509017844537622532	445956193924546560	446301881636225042	Looking for QUICK MATCH match	Playing	Rainbow Six Siege	f	\N	1626297260	\N
509017844537622532	445956193924546560	446301881636225042	in MENU	Playing	Rainbow Six Siege	f	\N	1626297268	\N
509017844537622532	445956193924546560	446301881636225042	QUICK MATCH match - Round 1 / 4	Playing	Rainbow Six Siege	f	\N	1626297272	\N
509017844537622532	445956193924546560	446301881636225042	QUICK MATCH match - Round 1 / 4	Playing	Rainbow Six Siege	f	\N	1626297336	\N
509017844537622532	445956193924546560	446301881636225042	QUICK MATCH match - Round 1 / 4	Playing	Rainbow Six Siege	f	\N	1626297497	\N
343815575065198604	464069837237518357	464105926178373632	faf | Ananas Land	Playing	Forged Alliance Forever	t	Hosting	1626297755	\N
242259852288720896	356876176465199104	\N	\N	Playing	Grand Theft Auto V	f	\N	1626298042247	\N
509017844537622532	445956193924546560	446301881636225042	in MENU	Playing	Rainbow Six Siege	f	\N	1626298071	\N
223666520943886336	463097721130188830	513734690272968717	TikToks, die etwas BEHAART sind (mit REZO und GNU)	Playing	YouTube	f	Renzo	1626298269	\N
509017844537622532	445956193924546560	446301881636225042	in MENU	Playing	Rainbow Six Siege	f	\N	1626298270	\N
509017844537622532	356876590342340608	\N	\N	Playing	Tom Clancy's Rainbow Six Siege	f	\N	1626298120357	\N
509017844537622532	445956193924546560	446301881636225042	in MENU	Playing	Rainbow Six Siege	f	\N	1626298272	\N
509017844537622532	445956193924546560	446301881636225042	in MENU	Playing	Rainbow Six Siege	f	\N	1626298275	\N
509017844537622532	445956193924546560	446301881636225042	Looking for QUICK MATCH match	Playing	Rainbow Six Siege	f	\N	1626298319	\N
509017844537622532	445956193924546560	446301881636225042	in MENU	Playing	Rainbow Six Siege	f	\N	1626298327	\N
509017844537622532	445956193924546560	446301881636225042	QUICK MATCH match - Round 1 / 4	Playing	Rainbow Six Siege	f	\N	1626298332	\N
271659253486452736	363426802640617482	\N	\N	Playing	Total War: WARHAMMER II	f	\N	1626288895602	\N
509017844537622532	445956193924546560	446301881636225042	QUICK MATCH match - Round 1 / 4	Playing	Rainbow Six Siege	f	\N	1626298362	\N
509017844537622532	445956193924546560	446301881636225042	QUICK MATCH match - Round 1 / 4	Playing	Rainbow Six Siege	f	\N	1626298392	\N
403571252402585601	357607478105604096	\N	\N	Playing	War Thunder	f	\N	1626293768685	\N
681192725152006160	356869127241072640	\N	\N	Playing	League of Legends	f	\N	1626296952393	\N
223666520943886336	463097721130188830	513734690272968717	TikToks, die etwas BEHAART sind (mit REZO und GNU)	Playing	YouTube	f	Renzo	1626298869	\N
509017844537622532	445956193924546560	446301881636225042	QUICK MATCH match - Round 1 / 4	Playing	Rainbow Six Siege	f	\N	1626298967	\N
509017844537622532	445956193924546560	446301881636225042	QUICK MATCH match - Round 1 / 4	Playing	Rainbow Six Siege	f	\N	1626299087	\N
223666520943886336	463097721130188830	513734690272968717	TikToks, die etwas BEHAART sind (mit REZO und GNU)	Playing	YouTube	f	Renzo	1626299179	\N
509017844537622532	445956193924546560	446301881636225042	QUICK MATCH match - Round 1 / 4	Playing	Rainbow Six Siege	f	\N	1626299271	\N
152104114753372160	789955899640381450	847380169080700928	Minecraft is loading	Playing	Better Minecraft	f	Game Starting...	1626299383000	\N
343815575065198604	464069837237518357	464105926178373632	faf | Ananas Land	Playing	Forged Alliance Forever	t	Playing	1626332329000	\N
343815575065198604	464069837237518357	464105926178373632	faf | Ananas Land	Playing	Forged Alliance Forever	t	Hosting	1626333610	\N
343815575065198604	464069837237518357	464105926178373632	faf | Ananas Land	Playing	Forged Alliance Forever	t	Hosting	1626333696	\N
343815575065198604	464069837237518357	464105926178373632	faf | Ananas Land	Playing	Forged Alliance Forever	t	Hosting	1626333700	\N
343815575065198604	464069837237518357	464105926178373632	faf | Ananas Land	Playing	Forged Alliance Forever	t	Playing	1626333739000	\N
152104114753372160	358425751197974528	\N	\N	Playing	Diablo III	f	\N	1626335056920	\N
411656316814098441	363445589247131668	\N	\N	Playing	ROBLOX	f	\N	1626334765426	\N
411656316814098441	363445589247131668	\N	\N	Playing	ROBLOX	f	\N	1626335897723	\N
509017844537622532	762434991303950386	\N	\N	Playing	Genshin Impact	f	\N	1626336037237	\N
206955935229280256	\N	\N	\N	Playing	%help || GC: 108033 || UC: 163580 || VC: 4 || Version: 5.9.0	f	\N	1626339809458	\N
206955935229280256	\N	\N	\N	Playing	%help || GC: 108032 || UC: 163700 || VC: 4 || Version: 5.9.0	f	\N	1626339883297	\N
325704347767799808	\N	\N	\N	Playing	Doing stuff	f	\N	1626340354979	\N
325704347767799808	\N	\N	\N	Playing	Doing stuff	f	\N	1626340359975	\N
343815575065198604	464069837237518357	464105926178373632	faf | Ananas Land	Playing	Forged Alliance Forever	t	Hosting	1626340372359	\N
411656316814098441	\N	\N	\N	Custom	Custom Status	f	snowfox 😳	1626343663128	\N
343815575065198604	\N	spotify:ab67616d0000b27384350b406522fc53c1b2a621	Astronaut In The Ocean	Listening	Spotify	t	Masked Wolf	1626344181099	1626344313879
509017844537622532	358422126602223616	\N	\N	Playing	Factorio	f	\N	1626344060374	\N
708309251562405908	\N	\N	\N	Custom	Custom Status	f	Wird aus Russland zurückgedrängt	1626344215745	\N
708309251562405908	445956193924546560	446301881636225042	Completing a TRAINING GROUNDS mission	Playing	Rainbow Six Siege	f	\N	1626344215747	\N
708309251562405908	356876590342340608	\N	\N	Playing	Tom Clancy's Rainbow Six Siege	f	\N	1626343155084	\N
206955935229280256	\N	\N	\N	Playing	%help || GC: 108034 || UC: 163931 || VC: 7 || Version: 5.9.0	f	\N	1626344299973	\N
343815575065198604	\N	spotify:ab67616d0000b273e2e352d89826aef6dbd5ff8f	What's Up Danger (with Black Caviar)	Listening	Spotify	t	Blackway; Black Caviar	1626344314443	1626344536749
509017844537622532	358422126602223616	\N	\N	Playing	Factorio	f	\N	1626344196223	\N
302519349489434624	\N	\N	\N	Custom	Custom Status	f	\N	1626344360630	\N
459713629441490945	\N	\N	\N	Custom	Custom Status	f	1:1	1626362334538	\N
459713629441490945	\N	spotify:ab67616d0000b27368f4797c1be17b662e2ee62e	SHUM	Listening	Spotify	t	Go_A	1626362289012	1626362461687
206955935229280256	\N	\N	\N	Playing	%help || GC: 108036 || UC: 162762 || VC: 2 || Version: 5.9.0	f	\N	1626362338327	\N
368355102949376000	\N	spotify:ab67616d0000b2732b66a1ebfcb7372056c3f6d8	205 - Das rätselhafte Erbe - Teil 34	Listening	Spotify	t	Die drei ???	1626362347566	1626362474326
708309251562405908	\N	\N	\N	Custom	Custom Status	f	Wird aus Russland zurückgedrängt	1626367415013	\N
708309251562405908	445956193924546560	446301881636225042	Looking for QUICK MATCH match	Playing	Rainbow Six Siege	f	\N	1626367415039	\N
708309251562405908	356876590342340608	\N	\N	Playing	Tom Clancy's Rainbow Six Siege	f	\N	1626363763455	\N
368355102949376000	\N	spotify:ab67616d0000b27335e64a6f05f6679c5b2f61e2	und der Fluch des Rubins - Dreipunkt taucht auf, Teil 2	Listening	Spotify	t	Die drei ???; Tim Grobe	1626367424948	1626367529777
708309251562405908	\N	\N	\N	Custom	Custom Status	f	Wird aus Russland zurückgedrängt	1626367432504	\N
708309251562405908	445956193924546560	446301881636225042	in MENU	Playing	Rainbow Six Siege	f	\N	1626367436605	\N
708309251562405908	\N	\N	\N	Custom	Custom Status	f	Wird aus Russland zurückgedrängt	1626367436759	\N
223666520943886336	463097721130188830	\N	\N	Playing	YouTube	f	\N	1626367474077	\N
223666520943886336	463097721130188830	513734690272968717	Oculus / Rift S broken, thanks to update v26 and beyond! Derp	Playing	YouTube	f	Chillst0rm	1626367483822	\N
261520809225355264	\N	\N	\N	Playing	GTFO	f	\N	1626367517018	\N
280050308611309569	\N	\N	\N	Playing	Mass Effect™ Legendary Edition	f	\N	1626373771172	\N
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626373772377	\N
361914328703696896	\N	spotify:ab67616d0000b27361a91ac8b2fa1b8ce1349a66	Broken	Listening	Spotify	t	DNMO; Sub Urban	1626373783642	1626373957775
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626373854092	\N
202407278618476545	\N	spotify:ab67616d0000b273ca593ba6b61b7a164ae408b9	The Voice in My Head	Listening	Spotify	t	P.T. Adamczyk	1626373919710	1626374107230
361914328703696896	\N	\N	\N	Custom	Custom Status	f	\N	1626373956492	\N
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626374027147	\N
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626374047115	\N
403571252402585601	\N	\N	\N	Custom	Custom Status	f	\N	1626377034525	\N
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626377062378	\N
223666520943886336	612704158826496028	612710277800001584	Google Images	Playing	Google	f	Searching for Bife de Cuadrill „Cordoba“	1626377076000	\N
202407278618476545	\N	spotify:ab67616d0000b273fe2beee506a7a2df05c766fb	Beyond the Smoke Screen	Listening	Spotify	t	Danshin; Arooj Aftab	1626377084659	1626377204159
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626377104260	\N
206955935229280256	\N	\N	\N	Playing	%help || GC: 108037 || UC: 172733 || VC: 2 || Version: 5.9.0	f	\N	1626377130065	\N
403571252402585601	\N	\N	\N	Custom	Custom Status	f	\N	1626377156279	\N
403571252402585601	\N	\N	\N	Custom	Custom Status	f	\N	1626377165494	\N
202407278618476545	\N	\N	\N	Custom	Custom Status	f	defekt aber nett	1626377204836	\N
403571252402585601	445956193924546560	446301881636225042	Looking for RANKED match	Playing	Rainbow Six Siege	f	\N	1626377205449	\N
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626377207069	\N
403571252402585601	445956193924546560	446301881636225042	Looking for RANKED match	Playing	Rainbow Six Siege	f	\N	1626377230421	\N
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626377230726	\N
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626377261443	\N
411656316814098441	\N	\N	\N	Custom	Custom Status	f	snowfox 😳	1626377305782	\N
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626377350223	\N
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626377381762	\N
403571252402585601	445956193924546560	446301881636225042	in MENU	Playing	Rainbow Six Siege	f	\N	1626377397545	\N
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626377405725	\N
708309251562405908	445956193924546560	446301881636225042	Looking for QUICK MATCH match	Playing	Rainbow Six Siege	f	\N	1626377477517	\N
403571252402585601	\N	\N	\N	Custom	Custom Status	f	\N	1626377524712	\N
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626377533213	\N
202407278618476545	\N	spotify:ab67616d0000b2734a75c6554b828131eaeb8ee1	Atgeir	Listening	Spotify	t	Danheim	1626377556144	1626377740594
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626377601723	\N
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626377610987	\N
434794201075417101	\N	\N	\N	Custom	Custom Status	f	\N	1626377619432	\N
434794201075417101	\N	\N	\N	Custom	Custom Status	f	\N	1626377739445	\N
547850369695219712	\N	spotify:ab67616d0000b27320b8492df1d99d496a2360ea	Falling Down	Listening	Spotify	t	Danell Arma	1626377766092	1626377908621
411656316814098441	\N	\N	\N	Custom	Custom Status	f	snowfox 😳	1626377871949	\N
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626378066202	\N
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626378079104	\N
361914328703696896	\N	spotify:ab67616d0000b27346fd34c6a67dd548eac0cce7	300 Words In A Minute	Listening	Spotify	t	TJ_beastboy	1626378082202	1626378153702
411656316814098441	\N	\N	\N	Custom	Custom Status	f	snowfox 😳	1626378081562	\N
371656565607890964	361968954954219521	365271016341110784	\N	Playing	Squad	t	\N	1626378096297	\N
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626378109723	\N
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626378129792	\N
361914328703696896	\N	\N	\N	Custom	Custom Status	f	\N	1626378151614	\N
434794201075417101	\N	\N	\N	Custom	Custom Status	f	\N	1626378152935	\N
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626378179974	\N
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626378183347	\N
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626378198297	\N
368355102949376000	\N	spotify:ab67616d0000b27335e64a6f05f6679c5b2f61e2	und der Fluch des Rubins - Ein Wort zum Schluss	Listening	Spotify	t	Die drei ???; Tim Grobe	1626378210269	1626378404695
459713629441490945	\N	\N	\N	Custom	Custom Status	f	1:1	1626378233056	\N
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626378245197	\N
708309251562405908	445956193924546560	446301881636225042	in MENU	Playing	Rainbow Six Siege	f	\N	1626367432515	\N
191594115907977225	\N	spotify:ab67616d0000b2733e2331ff09f59ea3c87fe5d6	Somethin' Stupid	Listening	Spotify	t	Frank Sinatra; Nancy Sinatra	1626367434278	1626367596771
708309251562405908	\N	\N	\N	Custom	Custom Status	f	Wird aus Russland zurückgedrängt	1626367436497	\N
708309251562405908	445956193924546560	446301881636225042	Looking for QUICK MATCH match	Playing	Rainbow Six Siege	f	\N	1626367436510	\N
708309251562405908	\N	\N	\N	Custom	Custom Status	f	Wird aus Russland zurückgedrängt	1626367436599	\N
708309251562405908	445956193924546560	446301881636225042	QUICK MATCH match - Round 1 / 4	Playing	Rainbow Six Siege	f	\N	1626367436770	\N
681192725152006160	401518684763586560	416719019576393738	Summoner's Rift (Ranked)	Playing	League of Legends	f	In Queue	1626367457000	\N
223666520943886336	463097721130188830	513734690272968717	Searching for:	Playing	YouTube	f	oculus rift s loading dots	1626367463000	\N
223666520943886336	463097721130188830	513734690272968717	Oculus / Rift S broken, thanks to update v26 and beyond! Derp	Playing	YouTube	f	Chillst0rm	1626367474794	1626367681000
223666520943886336	463097721130188830	513734690272968717	Oculus / Rift S broken, thanks to update v26 and beyond! Derp	Playing	YouTube	f	Chillst0rm	1626367475722	1626367682000
681192725152006160	\N	spotify:ab67616d0000b2733ae3374e6ff0eab6fe4d50a0	burrrrrr	Listening	Spotify	t	Lzr; bbno$; TrippyThaKid; Yung Bambi	1626367490854	1626367724741
223666520943886336	463097721130188830	513734690272968717	Oculus / Rift S broken, thanks to update v26 and beyond! Derp	Playing	YouTube	f	Chillst0rm	1626367493109	1626367694000
223666520943886336	463097721130188830	513734690272968717	Oculus / Rift S broken, thanks to update v26 and beyond! Derp	Playing	YouTube	f	Chillst0rm	1626367515857	\N
681192725152006160	\N	spotify:ab67616d0000b273d79cfa3155b50beb5dbeeb9a	Plain Jane	Listening	Spotify	t	A$AP Ferg	1626367529721	1626367703321
223666520943886336	463097721130188830	513734690272968717	Oculus / Rift S broken, thanks to update v26 and beyond! Derp	Playing	YouTube	f	Chillst0rm	1626367533060	1626367600000
368355102949376000	\N	spotify:ab67616d0000b27335e64a6f05f6679c5b2f61e2	und der Fluch des Rubins - Dreipunkt taucht auf, Teil 3	Listening	Spotify	t	Die drei ???; Tim Grobe	1626367529753	1626367633258
223666520943886336	463097721130188830	513734690272968717	Oculus / Rift S broken, thanks to update v26 and beyond! Derp	Playing	YouTube	f	Chillst0rm	1626367534186	1626367586000
223666520943886336	463097721130188830	513734690272968717	Oculus / Rift S broken, thanks to update v26 and beyond! Derp	Playing	YouTube	f	Chillst0rm	1626367534800	1626367576000
223666520943886336	463097721130188830	513734690272968717	Oculus / Rift S broken, thanks to update v26 and beyond! Derp	Playing	YouTube	f	Chillst0rm	1626367535824	1626367572000
223666520943886336	463097721130188830	\N	\N	Playing	YouTube	f	\N	1626367543607	\N
311607742542381068	\N	\N	\N	Custom	Custom Status	f	If I continue like this I will die before I am 30, the doctors said	1626367543714	\N
311607742542381068	359801269008859136	\N	\N	Playing	The Elder Scrolls V: Skyrim Special Edition	f	\N	1626366421398	\N
311607742542381068	\N	\N	\N	Custom	Custom Status	f	If I continue like this I will die before I am 30, the doctors said	1626367546986	\N
223666520943886336	463097721130188830	513734690272968717	Fix Oculus Quest 2 3-Dots Screen Stuck where You Can't Use the Headset	Playing	YouTube	f	SpookyFairy	1626367553130	1626367752000
223666520943886336	463097721130188830	513734690272968717	Fix Oculus Quest 2 3-Dots Screen Stuck where You Can't Use the Headset	Playing	YouTube	f	SpookyFairy	1626367554052	1626367751000
223666520943886336	463097721130188830	513734690272968717	Fix Oculus Quest 2 3-Dots Screen Stuck where You Can't Use the Headset	Playing	YouTube	f	SpookyFairy	1626367555280	1626367750000
223666520943886336	463097721130188830	513734690272968717	Fix Oculus Quest 2 3-Dots Screen Stuck where You Can't Use the Headset	Playing	YouTube	f	SpookyFairy	1626367555690	1626367751000
223666520943886336	463097721130188830	513734690272968717	Fix Oculus Quest 2 3-Dots Screen Stuck where You Can't Use the Headset	Playing	YouTube	f	SpookyFairy	1626367563575	1626367746000
223666520943886336	463097721130188830	513734690272968717	Fix Oculus Quest 2 3-Dots Screen Stuck where You Can't Use the Headset	Playing	YouTube	f	SpookyFairy	1626367574019	\N
223666520943886336	463097721130188830	513734690272968717	Fix Oculus Quest 2 3-Dots Screen Stuck where You Can't Use the Headset	Playing	YouTube	f	SpookyFairy	1626367584772	1626367757000
223666520943886336	463097721130188830	513734690272968717	Fix Oculus Quest 2 3-Dots Screen Stuck where You Can't Use the Headset	Playing	YouTube	f	SpookyFairy	1626367585131	1626367756000
223666520943886336	463097721130188830	513734690272968717	Fix Oculus Quest 2 3-Dots Screen Stuck where You Can't Use the Headset	Playing	YouTube	f	SpookyFairy	1626367585693	1626367757000
223666520943886336	463097721130188830	513734690272968717	Fix Oculus Quest 2 3-Dots Screen Stuck where You Can't Use the Headset	Playing	YouTube	f	SpookyFairy	1626367593169	1626367752000
191594115907977225	\N	spotify:ab67616d0000b27350bb7ca1fe7e98df87ce41d9	Strangers In The Night	Listening	Spotify	t	Frank Sinatra	1626367596941	1626367754807
681192725152006160	\N	spotify:ab67616d0000b273ecdad1ee6d530eb965d7c51e	Devil Eyes	Listening	Spotify	t	Hippie Sabotage	1626367602929	1626367734200
223666520943886336	463097721130188830	513734690272968717	Fix Oculus Quest 2 3-Dots Screen Stuck where You Can't Use the Headset	Playing	YouTube	f	SpookyFairy	1626367604638	1626367751000
223666520943886336	463097721130188830	513734690272968717	Fix Oculus Quest 2 3-Dots Screen Stuck where You Can't Use the Headset	Playing	YouTube	f	SpookyFairy	1626367605149	1626367750000
223666520943886336	463097721130188830	513734690272968717	Fix Oculus Quest 2 3-Dots Screen Stuck where You Can't Use the Headset	Playing	YouTube	f	SpookyFairy	1626367605662	\N
681192725152006160	\N	spotify:ab67616d0000b2738a6ccb507dd6a66f7f6e2440	Lalala	Listening	Spotify	t	Y2K; bbno$	1626367615006	1626367775632
681192725152006160	\N	spotify:ab67616d0000b27309cd3b75625ff85382613425	Ayy Macarena	Listening	Spotify	t	Tyga	1626367618966	1626367750572
459713629441490945	\N	\N	\N	Custom	Custom Status	f	1:1	1626367626141	\N
459713629441490945	755462309010211027	755900218624442479	Zombies | Spielt Rundenbasiert auf Mauer der Toten	Playing	Call of Duty: Black Ops Cold War	t	Spielt Mauer der Toten in Runde 9	1626366061000	\N
459713629441490945	783440677958189096	\N	\N	Playing	Call of Duty®: Black Ops Cold War	f	\N	1626365921661	\N
368355102949376000	\N	spotify:ab67616d0000b27335e64a6f05f6679c5b2f61e2	und der Fluch des Rubins - Dreipunkt taucht auf, Teil 4	Listening	Spotify	t	Die drei ???; Tim Grobe	1626367634250	1626367739515
223666520943886336	463097721130188830	513734690272968717	Fix Oculus Quest 2 3-Dots Screen Stuck where You Can't Use the Headset	Playing	YouTube	f	SpookyFairy	1626367651550	1626367794000
223666520943886336	463097721130188830	513734690272968717	Fix Oculus Quest 2 3-Dots Screen Stuck where You Can't Use the Headset	Playing	YouTube	f	SpookyFairy	1626367651724	1626367795000
223666520943886336	463097721130188830	513734690272968717	Fix Oculus Quest 2 3-Dots Screen Stuck where You Can't Use the Headset	Playing	YouTube	f	SpookyFairy	1626367652048	1626367794000
223666520943886336	463097721130188830	513734690272968717	Fix Oculus Quest 2 3-Dots Screen Stuck where You Can't Use the Headset	Playing	YouTube	f	SpookyFairy	1626367652868	1626367795000
223666520943886336	463097721130188830	513734690272968717	Fix Oculus Quest 2 3-Dots Screen Stuck where You Can't Use the Headset	Playing	YouTube	f	SpookyFairy	1626367653001	1626367794000
311607742542381068	\N	\N	\N	Custom	Custom Status	f	If I continue like this I will die before I am 30, the doctors said	1626367663926	\N
708309251562405908	\N	\N	\N	Custom	Custom Status	f	Wird aus Russland zurückgedrängt	1626367673865	\N
223666520943886336	463097721130188830	513734690272968717	Fix Oculus Quest 2 3-Dots Screen Stuck where You Can't Use the Headset	Playing	YouTube	f	SpookyFairy	1626367671504	1626367791000
223666520943886336	463097721130188830	513734690272968717	How to FIX black screen on OCULUS 2020	Playing	YouTube	f	Downloadable Content	1626367711560	1626367931000
681192725152006160	\N	spotify:ab67616d0000b2738fe5d04b06aff90f9fe796f5	PTSD	Listening	Spotify	t	Pop Smoke	1626367727399	1626367927225
223666520943886336	463097721130188830	513734690272968717	How to FIX black screen on OCULUS 2020	Playing	YouTube	f	Downloadable Content	1626367740931	1626367917000
223666520943886336	463097721130188830	513734690272968717	How to FIX black screen on OCULUS 2020	Playing	YouTube	f	Downloadable Content	1626367763357	\N
223666520943886336	463097721130188830	513734690272968717	OLYMPIADE MIT BASTI	Playing	YouTube	f	Papaplatte Gaming	1626367803190	1626367930000
459713629441490945	\N	\N	\N	Custom	Custom Status	f	1:1	1626367808003	\N
223666520943886336	463097721130188830	513734690272968717	OLYMPIADE MIT BASTI	Playing	YouTube	f	Papaplatte Gaming	1626367824797	1626367930000
223666520943886336	463097721130188830	513734690272968717	OLYMPIADE MIT BASTI	Playing	YouTube	f	Papaplatte Gaming	1626367844764	1626367930000
223666520943886336	463097721130188830	513734690272968717	OLYMPIADE MIT BASTI	Playing	YouTube	f	Papaplatte Gaming	1626367864732	1626367930000
361914328703696896	\N	\N	\N	Custom	Custom Status	f	\N	1626373781286	\N
368355102949376000	\N	spotify:ab67616d0000b27335e64a6f05f6679c5b2f61e2	und der Fluch des Rubins - Bob auf frischer Fährte, Teil 2	Listening	Spotify	t	Die drei ???; Tim Grobe	1626373836811	1626373936016
361914328703696896	445956193924546560	446301881636225042	Spielt ein „ENTDECKUNG“ - Runde 1/4	Playing	Rainbow Six Siege	f	\N	1626373956502	\N
403571252402585601	\N	\N	\N	Custom	Custom Status	f	\N	1626373958107	\N
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626374026533	\N
403571252402585601	445956193924546560	446301881636225042	Completing a TRAINING GROUNDS mission	Playing	Rainbow Six Siege	f	\N	1626377034536	\N
403571252402585601	\N	\N	\N	Custom	Custom Status	f	\N	1626377042821	\N
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626377051830	\N
361914328703696896	\N	spotify:ab67616d0000b273521a220fff194eafd39c0f66	Gagos	Listening	Spotify	t	TJ_beastboy; Mary Man	1626377111467	1626377432293
403571252402585601	356876590342340608	\N	\N	Playing	Tom Clancy's Rainbow Six Siege	f	\N	1626377161724	\N
403571252402585601	445956193924546560	446301881636225042	in MENU	Playing	Rainbow Six Siege	f	\N	1626377165505	\N
368355102949376000	\N	spotify:ab67616d0000b27335e64a6f05f6679c5b2f61e2	und der Fluch des Rubins - Überfall aus dem Hinterhalt, Teil 4	Listening	Spotify	t	Die drei ???; Tim Grobe	1626377169070	1626377353004
202407278618476545	\N	spotify:ab67616d0000b2732472601180911ff89445cbc8	Omen	Listening	Spotify	t	SIE Sound Team	1626377204136	1626377331469
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626377300496	\N
202407278618476545	\N	\N	\N	Custom	Custom Status	f	defekt aber nett	1626377332272	\N
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626377347049	\N
368355102949376000	\N	spotify:ab67616d0000b27335e64a6f05f6679c5b2f61e2	und der Fluch des Rubins - Überfall aus dem Hinterhalt, Teil 5	Listening	Spotify	t	Die drei ???; Tim Grobe	1626377353013	1626377554725
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626377368552	\N
361914328703696896	\N	spotify:ab67616d0000b273521a220fff194eafd39c0f66	Insomnia	Listening	Spotify	t	TJ_beastboy; Mary Man; Navy Westghost	1626377432770	1626377719236
547850369695219712	\N	spotify:ab67616d0000b27380b24b8fabe6b88f82ee924e	Hi Don't Cry	Listening	Spotify	t	Dwin; Lucky Luke; NOTSOBAD	1626377467936	1626377608888
708309251562405908	\N	\N	\N	Custom	Custom Status	f	Wird aus Russland zurückgedrängt	1626377485083	\N
708309251562405908	\N	\N	\N	Custom	Custom Status	f	Wird aus Russland zurückgedrängt	1626377489079	\N
708309251562405908	\N	\N	\N	Custom	Custom Status	f	Wird aus Russland zurückgedrängt	1626377489161	\N
708309251562405908	\N	\N	\N	Custom	Custom Status	f	Wird aus Russland zurückgedrängt	1626377489291	\N
403571252402585601	445956193924546560	446301881636225042	in MENU	Playing	Rainbow Six Siege	f	\N	1626377524723	\N
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626377594754	\N
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626377605716	\N
434794201075417101	\N	\N	\N	Custom	Custom Status	f	\N	1626377619944	\N
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626377692750	\N
361914328703696896	\N	\N	\N	Custom	Custom Status	f	\N	1626377717224	\N
202407278618476545	\N	\N	\N	Custom	Custom Status	f	defekt aber nett	1626377741493	\N
263407413737160718	\N	\N	\N	Custom	Custom Status	f	write this down	1626377795771	\N
368355102949376000	\N	spotify:ab67616d0000b27335e64a6f05f6679c5b2f61e2	und der Fluch des Rubins - Gebt mir das Feurige Auge, Teil 3	Listening	Spotify	t	Die drei ???; Tim Grobe	1626377827681	1626377946917
325704347767799808	607587875122446359	607911518234869760	Browsing wiki from:	Playing	GitHub	f	reactiflux / discord-irc	1626377850000	\N
325704347767799808	616940877042155531	842430731694899240	Durchstöbert...	Playing	Discord Web	f	\N	1626377854000	\N
361914328703696896	\N	\N	\N	Custom	Custom Status	f	\N	1626377891713	\N
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626378076340	\N
325704347767799808	616940877042155531	842430731694899240	Entwicklerportal	Playing	Discord Web	f	Bearbeitet App: Bot-testing-application	1626378011000	\N
202407278618476545	\N	spotify:ab67616d0000b2731c950be48e1ff2ac7d5320f0	Et Ratio Principalis	Listening	Spotify	t	Petri Alanko	1626378096534	1626378251787
371656565607890964	361968954954219521	784165549428178978	Tallil Outskirts	Playing	Squad	t	\N	1626378108000	\N
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626378109762	\N
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626378135629	\N
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626378173539	\N
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626378191027	\N
434794201075417101	\N	\N	\N	Custom	Custom Status	f	\N	1626378224820	\N
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626378235264	\N
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626378252366	\N
202407278618476545	\N	\N	\N	Custom	Custom Status	f	defekt aber nett	1626378252687	\N
223666520943886336	463097721130188830	513734690272968717	Fix Oculus Quest 2 3-Dots Screen Stuck where You Can't Use the Headset	Playing	YouTube	f	SpookyFairy	1626367672323	1626367790000
223666520943886336	463097721130188830	513734690272968717	Searching for:	Playing	YouTube	f	oculus rift s reset	1626367689000	\N
223666520943886336	463097721130188830	513734690272968717	How to FIX black screen on OCULUS 2020	Playing	YouTube	f	Downloadable Content	1626367702122	1626367936000
708309251562405908	445956193924546560	446301881636225042	in MENU	Playing	Rainbow Six Siege	f	\N	1626367707025	\N
708309251562405908	\N	\N	\N	Custom	Custom Status	f	Wird aus Russland zurückgedrängt	1626367711188	\N
708309251562405908	445956193924546560	446301881636225042	QUICK MATCH match - Round 1 / 4	Playing	Rainbow Six Siege	f	\N	1626367711339	\N
206955935229280256	\N	\N	\N	Playing	%help || GC: 108039 || UC: 171771 || VC: 0 || Version: 5.9.0	f	\N	1626367715536	\N
368355102949376000	\N	spotify:ab67616d0000b27335e64a6f05f6679c5b2f61e2	und der Fluch des Rubins - Dreipunkt taucht auf, Teil 5	Listening	Spotify	t	Die drei ???; Tim Grobe	1626367739529	1626367841436
191594115907977225	\N	spotify:ab67616d0000b273b9ea1c69fe9efbdc2df85a95	I've Got You Under My Skin - Remastered 1998	Listening	Spotify	t	Frank Sinatra	1626367754897	1626367978657
223666520943886336	463097721130188830	513734690272968717	How to FIX black screen on OCULUS 2020	Playing	YouTube	f	Downloadable Content	1626367761002	1626367907000
223666520943886336	463097721130188830	513734690272968717	How to FIX black screen on OCULUS 2020	Playing	YouTube	f	Downloadable Content	1626367783642	1626367925000
223666520943886336	463097721130188830	513734690272968717	How to FIX black screen on OCULUS 2020	Playing	YouTube	f	Downloadable Content	1626367784258	1626367925000
223666520943886336	463097721130188830	513734690272968717	OLYMPIADE MIT BASTI	Playing	YouTube	f	Papaplatte Gaming	1626367803807	1626367930000
223666520943886336	463097721130188830	513734690272968717	OLYMPIADE MIT BASTI	Playing	YouTube	f	Papaplatte Gaming	1626367823571	1626367929000
223666520943886336	463097721130188830	513734690272968717	OLYMPIADE MIT BASTI	Playing	YouTube	f	Papaplatte Gaming	1626367843536	1626367929000
206955935229280256	\N	\N	\N	Playing	%help || GC: 108039 || UC: 172100 || VC: 0 || Version: 5.9.0	f	\N	1626367850830	\N
223666520943886336	463097721130188830	513734690272968717	OLYMPIADE MIT BASTI	Playing	YouTube	f	Papaplatte Gaming	1626367863399	1626367929000
361914328703696896	445956193924546560	446301881636225042	Spielt ein „ENTDECKUNG“ - Runde 1/4	Playing	Rainbow Six Siege	f	\N	1626373781299	\N
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626373793062	\N
403571252402585601	\N	\N	\N	Custom	Custom Status	f	\N	1626373816306	\N
202407278618476545	\N	\N	\N	Custom	Custom Status	f	defekt aber nett	1626373824243	\N
202407278618476545	\N	\N	\N	Custom	Custom Status	f	defekt aber nett	1626373836377	\N
202407278618476545	\N	\N	\N	Custom	Custom Status	f	defekt aber nett	1626373839296	\N
302519349489434624	\N	\N	\N	Custom	Custom Status	f	\N	1626373930994	\N
368355102949376000	\N	spotify:ab67616d0000b27335e64a6f05f6679c5b2f61e2	und der Fluch des Rubins - Bob auf frischer Fährte, Teil 3	Listening	Spotify	t	Die drei ???; Tim Grobe	1626373935992	1626374035931
403571252402585601	\N	spotify:ab67616d0000b2738fcfedea64e1c78cd3d55001	Nauti	Listening	Spotify	t	187 Strassenbande; Gzuz; Sa4; Maxwell	1626373962787	1626374171098
708309251562405908	\N	\N	\N	Custom	Custom Status	f	Wird aus Russland zurückgedrängt	1626374056536	\N
403571252402585601	\N	spotify:ab67616d0000b273fad1e36d714dc0432efc9977	Glas für Glas	Listening	Spotify	t	LX; Maxwell; Estikay	1626377038882	1626377236701
403571252402585601	\N	\N	\N	Custom	Custom Status	f	\N	1626377064835	\N
403571252402585601	\N	\N	\N	Custom	Custom Status	f	\N	1626377066167	\N
202407278618476545	\N	\N	\N	Custom	Custom Status	f	defekt aber nett	1626377085420	\N
361914328703696896	\N	\N	\N	Custom	Custom Status	f	\N	1626377108867	\N
403571252402585601	\N	\N	\N	Custom	Custom Status	f	\N	1626377205442	\N
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626377209508	\N
403571252402585601	445956193924546560	446301881636225042	in MENU	Playing	Rainbow Six Siege	f	\N	1626377226327	\N
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626377227241	\N
403571252402585601	445956193924546560	446301881636225042	Looking for RANKED match	Playing	Rainbow Six Siege	f	\N	1626377230324	\N
403571252402585601	\N	\N	\N	Custom	Custom Status	f	\N	1626377230414	\N
547850369695219712	\N	spotify:ab67616d0000b27398e08d2097834f6a88c231c8	Need You Now	Listening	Spotify	t	Armin van Buuren; Jake Reese	1626377288394	1626377470135
276431762815451138	547786685795139585	573258041902891029	ledermann	Playing	CLion	t	Editing hs.rs	1626377322713	\N
206955935229280256	\N	\N	\N	Playing	%help || GC: 108038 || UC: 173352 || VC: 2 || Version: 5.9.0	f	\N	1626377352477	\N
206955935229280256	\N	\N	\N	Playing	%help || GC: 108037 || UC: 173372 || VC: 2 || Version: 5.9.0	f	\N	1626377363520	\N
403571252402585601	\N	\N	\N	Custom	Custom Status	f	\N	1626377397531	\N
361914328703696896	\N	\N	\N	Custom	Custom Status	f	\N	1626377430300	\N
223666520943886336	612704158826496028	612710277800001584	\N	Playing	Google	f	\N	1626377449000	\N
708309251562405908	445956193924546560	446301881636225042	in MENU	Playing	Rainbow Six Siege	f	\N	1626377450993	\N
708309251562405908	\N	\N	\N	Custom	Custom Status	f	Wird aus Russland zurückgedrängt	1626377477506	\N
206955935229280256	\N	\N	\N	Playing	%help || GC: 108037 || UC: 168562 || VC: 2 || Version: 5.9.0	f	\N	1626377484475	\N
411656316814098441	\N	\N	\N	Custom	Custom Status	f	snowfox 😳	1626377549288	\N
202407278618476545	\N	\N	\N	Custom	Custom Status	f	defekt aber nett	1626377556968	\N
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626377587586	\N
547850369695219712	\N	spotify:ab67616d0000b27319f1f25ed3e75a629899ef12	Uebok Gotta Run	Listening	Spotify	t	Apashe; INSTASAMKA	1626377605752	1626377769252
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626377761776	\N
325704347767799808	616940877042155531	842430731694899240	Entwicklerportal	Playing	Discord Web	f	Liest die Dokumentation	1626377839000	\N
325704347767799808	616940877042155531	842430731694899240	Entwicklerportal	Playing	Discord Web	f	Liest die Dokumentation	1626377852000	\N
325704347767799808	616940877042155531	842430731694899240	Entwicklerportal	Playing	Discord Web	f	Durchstöbert durch seine Apps	1626377866000	\N
384759010332770307	\N	\N	\N	Custom	Custom Status	f	Born to shit, forced to wipe...	1626377867649	\N
361914328703696896	\N	spotify:ab67616d0000b27346fd34c6a67dd548eac0cce7	DEMENTOR SWAGGER	Listening	Spotify	t	TJ_beastboy	1626377894198	1626378081698
368355102949376000	\N	spotify:ab67616d0000b27335e64a6f05f6679c5b2f61e2	und der Fluch des Rubins - Gebt mir das Feurige Auge, Teil 4	Listening	Spotify	t	Die drei ???; Tim Grobe	1626377947172	1626378079649
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626378067738	\N
361914328703696896	\N	\N	\N	Custom	Custom Status	f	\N	1626378079718	\N
371656565607890964	361968954954219521	784165549428178978	[Ger]  Operation Ko... - Tallil Outskirts (6/98)	Playing	Squad	t	\N	1626378096000	\N
424599087145549835	\N	\N	\N	Custom	Custom Status	f	Reliquit solum ab amicis.	1626382944422	\N
223666520943886336	463097721130188830	513734690272968717	Fix Oculus Quest 2 3-Dots Screen Stuck where You Can't Use the Headset	Playing	YouTube	f	SpookyFairy	1626367672733	1626367791000
708309251562405908	445956193924546560	446301881636225042	in MENU	Playing	Rainbow Six Siege	f	\N	1626367673871	\N
223666520943886336	463097721130188830	\N	\N	Playing	YouTube	f	\N	1626367701103	\N
708309251562405908	445956193924546560	446301881636225042	Looking for QUICK MATCH match	Playing	Rainbow Six Siege	f	\N	1626367701847	\N
223666520943886336	463097721130188830	513734690272968717	How to FIX black screen on OCULUS 2020	Playing	YouTube	f	Downloadable Content	1626367703454	1626367935000
708309251562405908	445956193924546560	446301881636225042	Looking for QUICK MATCH match	Playing	Rainbow Six Siege	f	\N	1626367711150	\N
223666520943886336	463097721130188830	513734690272968717	How to FIX black screen on OCULUS 2020	Playing	YouTube	f	Downloadable Content	1626367721066	1626367927000
223666520943886336	463097721130188830	513734690272968717	How to FIX black screen on OCULUS 2020	Playing	YouTube	f	Downloadable Content	1626367742091	1626367916000
223666520943886336	463097721130188830	513734690272968717	How to FIX black screen on OCULUS 2020	Playing	YouTube	f	Downloadable Content	1626367783678	1626367926000
223666520943886336	463097721130188830	513734690272968717	OLYMPIADE MIT BASTI	Playing	YouTube	f	Papaplatte Gaming	1626367803499	1626367929000
281381884460662785	\N	\N	\N	Custom	Custom Status	f	why does everyone i want to talk to hate me :(	1626367840054	\N
368355102949376000	\N	spotify:ab67616d0000b27335e64a6f05f6679c5b2f61e2	und der Fluch des Rubins - Dreipunkt taucht auf, Teil 6	Listening	Spotify	t	Die drei ???; Tim Grobe	1626367841432	1626367944792
368355102949376000	\N	spotify:ab67616d0000b27335e64a6f05f6679c5b2f61e2	und der Fluch des Rubins - Dreipunkt taucht auf, Teil 6	Listening	Spotify	t	Die drei ???; Tim Grobe	1626367842257	1626367945617
206955935229280256	\N	\N	\N	Playing	%help || GC: 108038 || UC: 172145 || VC: 1 || Version: 5.9.0	f	\N	1626367869239	\N
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626373815590	\N
403571252402585601	\N	spotify:ab67616d0000b2738fcfedea64e1c78cd3d55001	Keine Liebe	Listening	Spotify	t	187 Strassenbande; LX	1626373820972	1626373962484
202407278618476545	445956193924546560	446301881636225042	in MENU	Playing	Rainbow Six Siege	f	\N	1626373824254	\N
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626373833202	\N
202407278618476545	445956193924546560	446301881636225042	in MENU	Playing	Rainbow Six Siege	f	\N	1626373836387	\N
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626373847845	\N
202407278618476545	\N	\N	\N	Custom	Custom Status	f	defekt aber nett	1626373920345	\N
302519349489434624	357607133254254632	\N	\N	Playing	Dead by Daylight	f	\N	1626373932840	\N
361914328703696896	\N	spotify:ab67616d0000b27309545e98d9172b05b28f5c0a	when the flies fell	Listening	Spotify	t	Sub Urban	1626373958807	1626374074247
276431762815451138	547786685795139585	573258041902891029	ledermann	Playing	CLion	t	Editing hs.rs	1626373966998	\N
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626374048141	\N
708309251562405908	445956193924546560	446301881636225042	Completing a TRAINING GROUNDS mission	Playing	Rainbow Six Siege	f	\N	1626374056547	\N
403571252402585601	445956193924546560	446301881636225042	in MENU	Playing	Rainbow Six Siege	f	\N	1626377042831	\N
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626377045198	\N
681192725152006160	401518684763586560	416719019576393738	Summoner's Rift (Normal)	Playing	League of Legends	f	In Lobby	1626377139076	\N
403571252402585601	\N	\N	\N	Custom	Custom Status	f	\N	1626377226316	\N
403571252402585601	\N	\N	\N	Custom	Custom Status	f	\N	1626377230314	\N
202407278618476545	\N	spotify:ab67616d0000b273e93f1cfbda250721663f1474	Bancroft Shows Kovacs	Listening	Spotify	t	Jeff Russo	1626377331520	1626377556200
403571252402585601	\N	spotify:ab67616d0000b273d2c110c0a9b7dcc946929320	Alles echt	Listening	Spotify	t	Gzuz	1626377401876	1626377621036
708309251562405908	\N	\N	\N	Custom	Custom Status	f	Wird aus Russland zurückgedrängt	1626377450984	\N
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626377457231	\N
708309251562405908	445956193924546560	446301881636225042	in MENU	Playing	Rainbow Six Siege	f	\N	1626377485087	\N
708309251562405908	445956193924546560	446301881636225042	Looking for QUICK MATCH match	Playing	Rainbow Six Siege	f	\N	1626377489089	\N
708309251562405908	445956193924546560	446301881636225042	in MENU	Playing	Rainbow Six Siege	f	\N	1626377489164	\N
708309251562405908	445956193924546560	446301881636225042	QUICK MATCH match - Round 1 / 4	Playing	Rainbow Six Siege	f	\N	1626377489297	\N
368355102949376000	\N	spotify:ab67616d0000b27335e64a6f05f6679c5b2f61e2	und der Fluch des Rubins - Gebt mir das Feurige Auge, Teil 1	Listening	Spotify	t	Die drei ???; Tim Grobe	1626377554718	1626377678226
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626377587621	\N
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626377667460	\N
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626377677902	\N
368355102949376000	\N	spotify:ab67616d0000b27335e64a6f05f6679c5b2f61e2	und der Fluch des Rubins - Gebt mir das Feurige Auge, Teil 2	Listening	Spotify	t	Die drei ???; Tim Grobe	1626377678226	1626377807409
361914328703696896	\N	spotify:ab67616d0000b273e604402d6fc28915d6c5865e	W1NNER	Listening	Spotify	t	TJ_beastboy; Young Kira	1626377719735	1626377893735
202407278618476545	\N	spotify:ab67616d0000b273aac3514a0044cc02fc69b947	Svitjod	Listening	Spotify	t	Forndom	1626377740661	1626378096661
263407413737160718	\N	\N	\N	Custom	Custom Status	f	write this down	1626377815732	\N
384759010332770307	357607133254254632	\N	\N	Playing	Dead by Daylight	f	\N	1626377864359	\N
325704347767799808	616940877042155531	842430731694899240	Entwicklerportal	Playing	Discord Web	f	Bearbeitet App: undefined	1626377877000	\N
325704347767799808	616940877042155531	842430731694899240	Durchstöbert...	Playing	Discord Web	f	\N	1626378045000	\N
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626378081152	\N
368355102949376000	\N	spotify:ab67616d0000b27335e64a6f05f6679c5b2f61e2	und der Fluch des Rubins - Gebt mir das Feurige Auge, Teil 5	Listening	Spotify	t	Die drei ???; Tim Grobe	1626378079644	1626378210305
202407278618476545	\N	\N	\N	Custom	Custom Status	f	defekt aber nett	1626378097331	\N
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626378107674	\N
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626378127641	\N
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626378150504	\N
223666520943886336	463097721130188830	513734690272968717	Fix Oculus Quest 2 3-Dots Screen Stuck where You Can't Use the Headset	Playing	YouTube	f	SpookyFairy	1626367673017	1626367790000
223666520943886336	463097721130188830	513734690272968717	How to FIX black screen on OCULUS 2020	Playing	YouTube	f	Downloadable Content	1626367701820	1626367937000
708309251562405908	\N	\N	\N	Custom	Custom Status	f	Wird aus Russland zurückgedrängt	1626367707015	\N
681192725152006160	401518684763586560	416719019576393738	Summoner's Rift (Ranked)	Playing	League of Legends	f	In Champion Select	1626367710111	\N
708309251562405908	\N	\N	\N	Custom	Custom Status	f	Wird aus Russland zurückgedrängt	1626367711330	\N
223666520943886336	463097721130188830	513734690272968717	How to FIX black screen on OCULUS 2020	Playing	YouTube	f	Downloadable Content	1626367722192	1626367926000
681192725152006160	401518684763586560	416719019576393738	Summoner's Rift (Ranked)	Playing	League of Legends	f	In Champion Select	1626367727431	\N
223666520943886336	463097721130188830	513734690272968717	How to FIX black screen on OCULUS 2020	Playing	YouTube	f	Downloadable Content	1626367743389	1626367915000
223666520943886336	463097721130188830	513734690272968717	How to FIX black screen on OCULUS 2020	Playing	YouTube	f	Downloadable Content	1626367783232	1626367926000
223666520943886336	463097721130188830	513734690272968717	How to FIX black screen on OCULUS 2020	Playing	YouTube	f	Downloadable Content	1626367784679	1626367926000
223666520943886336	463097721130188830	513734690272968717	OLYMPIADE MIT BASTI	Playing	YouTube	f	Papaplatte Gaming	1626367804214	1626367929000
223666520943886336	463097721130188830	513734690272968717	OLYMPIADE MIT BASTI	Playing	YouTube	f	Papaplatte Gaming	1626367823662	1626367930000
223666520943886336	463097721130188830	513734690272968717	OLYMPIADE MIT BASTI	Playing	YouTube	f	Papaplatte Gaming	1626367843679	1626367930000
223666520943886336	463097721130188830	513734690272968717	OLYMPIADE MIT BASTI	Playing	YouTube	f	Papaplatte Gaming	1626367863709	1626367930000
361914328703696896	\N	\N	\N	Custom	Custom Status	f	\N	1626374071898	\N
361914328703696896	\N	\N	\N	Custom	Custom Status	f	\N	1626374077118	\N
361914328703696896	445956193924546560	446301881636225042	im MENÜ	Playing	Rainbow Six Siege	f	\N	1626374089724	\N
368355102949376000	\N	spotify:ab67616d0000b27335e64a6f05f6679c5b2f61e2	und der Fluch des Rubins - Bob auf frischer Fährte, Teil 4	Listening	Spotify	t	Die drei ???; Tim Grobe	1626374087854	1626374194102
403571252402585601	\N	spotify:ab67616d0000b273ebd4538e6787f7d7950d663d	Risiko	Listening	Spotify	t	Bonez MC; RAF Camora	1626374171281	1626374394662
708309251562405908	445956193924546560	446301881636225042	Completing a TRAINING GROUNDS mission	Playing	Rainbow Six Siege	f	\N	1626374167959	\N
708309251562405908	445956193924546560	446301881636225042	Completing a TRAINING GROUNDS mission	Playing	Rainbow Six Siege	f	\N	1626374176593	\N
202407278618476545	\N	\N	\N	Custom	Custom Status	f	defekt aber nett	1626374306802	\N
403571252402585601	\N	spotify:ab67616d0000b2730f54e8c8eba22364763a7e52	Gaspedal	Listening	Spotify	t	Maxwell	1626374395120	1626374548029
361914328703696896	\N	spotify:ab67616d0000b27387e6bb28f269597e09145121	Isolate	Listening	Spotify	t	Sub Urban	1626374437176	1626374579176
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626374461117	\N
263407413737160718	\N	\N	\N	Custom	Custom Status	f	write this down	1626374607856	\N
202407278618476545	\N	\N	\N	Custom	Custom Status	f	defekt aber nett	1626374657420	\N
547850369695219712	\N	spotify:ab67616d0000b273a2fbe529815d82b528a04c7c	Fragments	Listening	Spotify	t	IYRE	1626377905365	1626378184207
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626378086170	\N
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626378089241	\N
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626378096286	\N
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626378116378	\N
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626378141895	\N
434794201075417101	\N	\N	\N	Custom	Custom Status	f	\N	1626378152588	\N
459713629441490945	445956193924546560	446301881636225042	im MENÜ	Playing	Rainbow Six Siege	f	\N	1626378226980	\N
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626378242329	\N
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626378255232	\N
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626378269159	\N
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626378301004	\N
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626378351083	\N
361914328703696896	\N	\N	\N	Custom	Custom Status	f	\N	1626378352692	\N
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626378364288	\N
261520809225355264	531450167799447552	531577494935961601	In queue	Playing	Insurgency: Sandstorm	t	Big Money Domination	1626378404000	\N
708309251562405908	445956193924546560	446301881636225042	Looking for CUSTOM GAME match	Playing	Rainbow Six Siege	f	\N	1626378408036	\N
708309251562405908	\N	\N	\N	Custom	Custom Status	f	Wird aus Russland zurückgedrängt	1626378417638	\N
708309251562405908	445956193924546560	446301881636225042	CUSTOM GAME match - Round 1 / 6	Playing	Rainbow Six Siege	f	\N	1626378422667	\N
261520809225355264	531450167799447552	531577494935961601	Playing Big Money Domination	Playing	Insurgency: Sandstorm	t	Farmhouse Domination	1626378434000	\N
368355102949376000	\N	spotify:ab67616d0000b273ed42764d7a610b661a216504	204 - Der dunkle Wächter - Teil 01	Listening	Spotify	t	Die drei ???	1626378502450	1626378610223
403571252402585601	\N	\N	\N	Custom	Custom Status	f	\N	1626378528435	\N
547850369695219712	\N	spotify:ab67616d0000b273d1bb5336ebc19d1855bbdff3	Echoes - Slippy Remix	Listening	Spotify	t	WE ARE FURY; Micah Martin; Slippy	1626379905127	1626380091984
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626379916052	\N
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626379920253	\N
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626379924347	\N
325704347767799808	790655993809338398	798617001685024808	Witchcraft	Playing	YouTube Music	f	Pendulum	1626379972125	\N
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626379976161	\N
411656316814098441	\N	\N	\N	Custom	Custom Status	f	snowfox 😳	1626382948415	\N
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626383052659	\N
708309251562405908	\N	\N	\N	Custom	Custom Status	f	Wird aus Russland zurückgedrängt	1626367701842	\N
708309251562405908	\N	\N	\N	Custom	Custom Status	f	Wird aus Russland zurückgedrängt	1626367711139	\N
708309251562405908	445956193924546560	446301881636225042	in MENU	Playing	Rainbow Six Siege	f	\N	1626367711193	\N
223666520943886336	463097721130188830	513734690272968717	How to FIX black screen on OCULUS 2020	Playing	YouTube	f	Downloadable Content	1626367723426	1626367925000
223666520943886336	463097721130188830	513734690272968717	How to FIX black screen on OCULUS 2020	Playing	YouTube	f	Downloadable Content	1626367731613	1626367921000
223666520943886336	463097721130188830	513734690272968717	How to FIX black screen on OCULUS 2020	Playing	YouTube	f	Downloadable Content	1626367751581	1626367911000
223666520943886336	463097721130188830	513734690272968717	How to FIX black screen on OCULUS 2020	Playing	YouTube	f	Downloadable Content	1626367762128	1626367906000
206955935229280256	\N	\N	\N	Playing	%help || GC: 108040 || UC: 171944 || VC: 1 || Version: 5.9.0	f	\N	1626367788240	\N
223666520943886336	463097721130188830	513734690272968717	OLYMPIADE MIT BASTI	Playing	YouTube	f	Papaplatte Gaming	1626367804726	1626367930000
223666520943886336	463097721130188830	513734690272968717	OLYMPIADE MIT BASTI	Playing	YouTube	f	Papaplatte Gaming	1626367824182	1626367929000
223666520943886336	463097721130188830	513734690272968717	OLYMPIADE MIT BASTI	Playing	YouTube	f	Papaplatte Gaming	1626367844355	1626367929000
223666520943886336	463097721130188830	513734690272968717	OLYMPIADE MIT BASTI	Playing	YouTube	f	Papaplatte Gaming	1626367864323	1626367929000
223666520943886336	463097721130188830	513734690272968717	OLYMPIADE MIT BASTI	Playing	YouTube	f	Papaplatte Gaming	1626367883062	\N
223666520943886336	463097721130188830	513734690272968717	OLYMPIADE MIT BASTI	Playing	YouTube	f	Papaplatte Gaming	1626367907126	1626367962000
223666520943886336	463097721130188830	513734690272968717	OLYMPIADE MIT BASTI	Playing	YouTube	f	Papaplatte Gaming	1626367907740	1626367963000
223666520943886336	463097721130188830	513734690272968717	OLYMPIADE MIT BASTI	Playing	YouTube	f	Papaplatte Gaming	1626367908049	1626367962000
223666520943886336	463097721130188830	513734690272968717	OLYMPIADE MIT BASTI	Playing	YouTube	f	Papaplatte Gaming	1626367908866	1626367963000
223666520943886336	463097721130188830	513734690272968717	OLYMPIADE MIT BASTI	Playing	YouTube	f	Papaplatte Gaming	1626367909106	1626367962000
681192725152006160	\N	spotify:ab67616d0000b273c7aeddf4497d5583b5b81a4e	Wind - Naruto Ending Theme (From "Naruto")	Listening	Spotify	t	Geek Music	1626367926349	1626368138967
681192725152006160	401518684763586560	416719019576393738	Summoner's Rift (Ranked)	Playing	League of Legends	f	In Champion Select	1626367926492	\N
223666520943886336	463097721130188830	513734690272968717	OLYMPIADE MIT BASTI	Playing	YouTube	f	Papaplatte Gaming	1626367927811	1626367963000
223666520943886336	463097721130188830	513734690272968717	OLYMPIADE MIT BASTI	Playing	YouTube	f	Papaplatte Gaming	1626367927950	1626367962000
223666520943886336	463097721130188830	513734690272968717	OLYMPIADE MIT BASTI	Playing	YouTube	f	Papaplatte Gaming	1626367928835	1626367963000
223666520943886336	463097721130188830	513734690272968717	OLYMPIADE MIT BASTI	Playing	YouTube	f	Papaplatte Gaming	1626367928958	1626367962000
681192725152006160	401518684763586560	403245089037615114	Summoner's Rift (Ranked)	Playing	League of Legends	f	In Game	1626367937000	\N
368355102949376000	\N	spotify:ab67616d0000b27335e64a6f05f6679c5b2f61e2	und der Fluch des Rubins - Dreipunkt taucht auf, Teil 7	Listening	Spotify	t	Die drei ???; Tim Grobe	1626367944473	1626368044459
223666520943886336	463097721130188830	513734690272968717	OLYMPIADE MIT BASTI	Playing	YouTube	f	Papaplatte Gaming	1626367947887	1626367963000
223666520943886336	463097721130188830	513734690272968717	OLYMPIADE MIT BASTI	Playing	YouTube	f	Papaplatte Gaming	1626367948044	1626367962000
223666520943886336	463097721130188830	513734690272968717	OLYMPIADE MIT BASTI	Playing	YouTube	f	Papaplatte Gaming	1626367948700	1626367963000
223666520943886336	463097721130188830	513734690272968717	OLYMPIADE MIT BASTI	Playing	YouTube	f	Papaplatte Gaming	1626367948987	1626367962000
223666520943886336	463097721130188830	513734690272968717	Viewing home page	Playing	YouTube	f	\N	1626367957000	\N
223666520943886336	463097721130188830	\N	\N	Playing	YouTube	f	\N	1626367968618	\N
223666520943886336	463097721130188830	513734690272968717	shin show portion of his power	Playing	YouTube	f	RandoM ViDeO	1626367969282	1626368033000
223666520943886336	463097721130188830	513734690272968717	shin show portion of his power	Playing	YouTube	f	RandoM ViDeO	1626367969590	1626368032000
223666520943886336	463097721130188830	513734690272968717	shin show portion of his power	Playing	YouTube	f	RandoM ViDeO	1626367969707	1626368033000
191594115907977225	\N	spotify:ab67616d0000b273068a5559744d17bd5e871740	Come Fly With Me - Remastered	Listening	Spotify	t	Frank Sinatra	1626367978797	1626368177890
223666520943886336	463097721130188830	513734690272968717	shin show portion of his power	Playing	YouTube	f	RandoM ViDeO	1626367988739	1626368032000
223666520943886336	463097721130188830	513734690272968717	shin show portion of his power	Playing	YouTube	f	RandoM ViDeO	1626367989148	1626368033000
223666520943886336	463097721130188830	513734690272968717	shin show portion of his power	Playing	YouTube	f	RandoM ViDeO	1626367989557	1626368032000
223666520943886336	463097721130188830	513734690272968717	shin show portion of his power	Playing	YouTube	f	RandoM ViDeO	1626367990172	1626368033000
459713629441490945	\N	\N	\N	Custom	Custom Status	f	1:1	1626367990888	\N
223666520943886336	463097721130188830	513734690272968717	shin show portion of his power	Playing	YouTube	f	RandoM ViDeO	1626368008476	1626368032000
223666520943886336	463097721130188830	513734690272968717	shin show portion of his power	Playing	YouTube	f	RandoM ViDeO	1626368009218	1626368033000
223666520943886336	463097721130188830	513734690272968717	shin show portion of his power	Playing	YouTube	f	RandoM ViDeO	1626368009526	1626368032000
223666520943886336	463097721130188830	513734690272968717	shin show portion of his power	Playing	YouTube	f	RandoM ViDeO	1626368009941	1626368033000
223666520943886336	463097721130188830	513734690272968717	shin show portion of his power	Playing	YouTube	f	RandoM ViDeO	1626368028572	1626368032000
223666520943886336	463097721130188830	513734690272968717	shin show portion of his power	Playing	YouTube	f	RandoM ViDeO	1626368029289	1626368033000
223666520943886336	463097721130188830	513734690272968717	Viewing home page	Playing	YouTube	f	\N	1626368028000	\N
223666520943886336	463097721130188830	513734690272968717	Ich will Rang 1 werden! | Dead by Daylight	Playing	YouTube	f	HandOfUncut	1626368071812	1626369995000
223666520943886336	463097721130188830	513734690272968717	Ich will Rang 1 werden! | Dead by Daylight	Playing	YouTube	f	HandOfUncut	1626368072122	1626369994000
223666520943886336	463097721130188830	513734690272968717	Ich will Rang 1 werden! | Dead by Daylight	Playing	YouTube	f	HandOfUncut	1626368072810	1626369995000
223666520943886336	463097721130188830	513734690272968717	Ich will Rang 1 werden! | Dead by Daylight	Playing	YouTube	f	HandOfUncut	1626368072966	1626369994000
223666520943886336	463097721130188830	513734690272968717	Ich will Rang 1 werden! | Dead by Daylight	Playing	YouTube	f	HandOfUncut	1626368092060	1626369994000
223666520943886336	463097721130188830	513734690272968717	Ich will Rang 1 werden! | Dead by Daylight	Playing	YouTube	f	HandOfUncut	1626368092674	1626369995000
223666520943886336	463097721130188830	513734690272968717	Ich will Rang 1 werden! | Dead by Daylight	Playing	YouTube	f	HandOfUncut	1626368093084	1626369994000
368355102949376000	\N	spotify:ab67616d0000b27335e64a6f05f6679c5b2f61e2	und der Fluch des Rubins - Dreipunkt taucht auf, Teil 8	Listening	Spotify	t	Die drei ???; Tim Grobe	1626368104978	1626368209465
223666520943886336	463097721130188830	513734690272968717	Ich will Rang 1 werden! | Dead by Daylight	Playing	YouTube	f	HandOfUncut	1626368111823	1626369995000
223666520943886336	463097721130188830	513734690272968717	Ich will Rang 1 werden! | Dead by Daylight	Playing	YouTube	f	HandOfUncut	1626368112130	1626369994000
459713629441490945	\N	\N	\N	Custom	Custom Status	f	1:1	1626368112130	\N
223666520943886336	463097721130188830	513734690272968717	Ich will Rang 1 werden! | Dead by Daylight	Playing	YouTube	f	HandOfUncut	1626368132712	1626369995000
223666520943886336	463097721130188830	513734690272968717	Ich will Rang 1 werden! | Dead by Daylight	Playing	YouTube	f	HandOfUncut	1626368152783	1626369995000
673945530019217430	\N	\N	\N	Playing	🍞 commands for info	f	\N	1626368166203	\N
223666520943886336	463097721130188830	513734690272968717	Ich will Rang 1 werden! | Dead by Daylight	Playing	YouTube	f	HandOfUncut	1626368172751	1626369995000
223666520943886336	463097721130188830	513734690272968717	Ich will Rang 1 werden! | Dead by Daylight	Playing	YouTube	f	HandOfUncut	1626368192821	1626369997000
202407278618476545	445956193924546560	446301881636225042	in MENU	Playing	Rainbow Six Siege	f	\N	1626368195188	\N
223666520943886336	463097721130188830	513734690272968717	Ich will Rang 1 werden! | Dead by Daylight	Playing	YouTube	f	HandOfUncut	1626368211663	1626370013000
223666520943886336	463097721130188830	513734690272968717	Ich will Rang 1 werden! | Dead by Daylight	Playing	YouTube	f	HandOfUncut	1626368212891	\N
223666520943886336	463097721130188830	513734690272968717	Ich will Rang 1 werden! | Dead by Daylight	Playing	YouTube	f	HandOfUncut	1626368237775	1626370019000
361914328703696896	445956193924546560	446301881636225042	Spielt ein „ENTDECKUNG“ - Runde 1/4	Playing	Rainbow Six Siege	f	\N	1626374071908	\N
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626374075173	\N
361914328703696896	445956193924546560	446301881636225042	im MENÜ	Playing	Rainbow Six Siege	f	\N	1626374077129	\N
281381884460662785	\N	\N	\N	Custom	Custom Status	f	why does everyone i want to talk to hate me :(	1626374077528	\N
281381884460662785	\N	\N	\N	Custom	Custom Status	f	why does everyone i want to talk to hate me :(	1626374077938	\N
281381884460662785	\N	\N	\N	Custom	Custom Status	f	why does everyone i want to talk to hate me :(	1626374078757	\N
281381884460662785	\N	\N	\N	Custom	Custom Status	f	why does everyone i want to talk to hate me :(	1626374079474	\N
281381884460662785	\N	\N	\N	Custom	Custom Status	f	why does everyone i want to talk to hate me :(	1626374080190	\N
461265486655520788	\N	\N	\N	Playing	Fallout 69	f	\N	1626374081427	\N
206955935229280256	\N	\N	\N	Playing	%help || GC: 108038 || UC: 180387 || VC: 1 || Version: 5.9.0	f	\N	1626374084708	\N
202407278618476545	\N	\N	\N	Custom	Custom Status	f	defekt aber nett	1626374107941	\N
368355102949376000	\N	spotify:ab67616d0000b27335e64a6f05f6679c5b2f61e2	und der Fluch des Rubins - Bob auf frischer Fährte, Teil 5	Listening	Spotify	t	Die drei ???; Tim Grobe	1626374194378	1626374320926
361914328703696896	\N	spotify:ab67616d0000b27309545e98d9172b05b28f5c0a	Spring Fever	Listening	Spotify	t	Sub Urban	1626374268665	1626374436828
281381884460662785	\N	\N	\N	Custom	Custom Status	f	why does everyone i want to talk to hate me :(	1626374287280	\N
708309251562405908	\N	\N	\N	Custom	Custom Status	f	Wird aus Russland zurückgedrängt	1626374292419	\N
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626374295446	\N
202407278618476545	\N	spotify:ab67616d0000b273c07df17aa2ea058a75405c9e	Abigail Walker	Listening	Spotify	t	Marc Canham	1626374306088	1626374531994
368355102949376000	\N	spotify:ab67616d0000b27335e64a6f05f6679c5b2f61e2	und der Fluch des Rubins - Unerwartete Entdeckungen, Teil 1	Listening	Spotify	t	Die drei ???; Tim Grobe	1626374447994	1626374546307
281381884460662785	\N	\N	\N	Custom	Custom Status	f	why does everyone i want to talk to hate me :(	1626374505866	\N
202407278618476545	\N	\N	\N	Custom	Custom Status	f	defekt aber nett	1626374532695	\N
403571252402585601	\N	spotify:ab67616d0000b2733cbd4baf115240f2d6972456	Fuckst mich nur ab	Listening	Spotify	t	Bonez MC	1626374548524	1626374731455
361914328703696896	\N	\N	\N	Custom	Custom Status	f	\N	1626374577443	\N
708309251562405908	\N	\N	\N	Custom	Custom Status	f	Wird aus Russland zurückgedrängt	1626374620963	\N
708309251562405908	\N	\N	\N	Custom	Custom Status	f	Wird aus Russland zurückgedrängt	1626374628643	\N
708309251562405908	\N	\N	\N	Custom	Custom Status	f	Wird aus Russland zurückgedrängt	1626374632637	\N
708309251562405908	\N	\N	\N	Custom	Custom Status	f	Wird aus Russland zurückgedrängt	1626374632736	\N
708309251562405908	\N	\N	\N	Custom	Custom Status	f	Wird aus Russland zurückgedrängt	1626374633044	\N
368355102949376000	\N	spotify:ab67616d0000b27335e64a6f05f6679c5b2f61e2	und der Fluch des Rubins - Unerwartete Entdeckungen, Teil 3	Listening	Spotify	t	Die drei ???; Tim Grobe	1626374648308	1626374747761
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626378110029	\N
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626378141773	\N
434794201075417101	\N	\N	\N	Custom	Custom Status	f	\N	1626378152601	\N
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626378178331	\N
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626378195430	\N
206955935229280256	\N	\N	\N	Playing	%help || GC: 108037 || UC: 169800 || VC: 2 || Version: 5.9.0	f	\N	1626378202087	\N
459713629441490945	\N	\N	\N	Custom	Custom Status	f	1:1	1626378226969	\N
459713629441490945	445956193924546560	446301881636225042	Sucht nach „SCHNELLES MATCH“-Match	Playing	Rainbow Six Siege	f	\N	1626378233067	\N
371656565607890964	361968954954219521	365271016341110784	\N	Playing	Squad	t	\N	1626378245208	\N
371656565607890964	361968954954219521	784165549428178978	Tallil Outskirts	Playing	Squad	t	\N	1626378252000	\N
459713629441490945	445956193924546560	446301881636225042	im MENÜ	Playing	Rainbow Six Siege	f	\N	1626378252379	\N
459713629441490945	445956193924546560	446301881636225042	Sucht nach „SCHNELLES MATCH“-Match	Playing	Rainbow Six Siege	f	\N	1626378256165	\N
708309251562405908	445956193924546560	446301881636225042	in MENU	Playing	Rainbow Six Siege	f	\N	1626378279888	\N
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626378319644	\N
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626378320153	\N
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626378328959	\N
281381884460662785	\N	\N	\N	Custom	Custom Status	f	why does everyone i want to talk to hate me :(	1626379993445	\N
281381884460662785	\N	spotify:ab67616d0000b273062c6d2b78eb12c3ef42d89b	Los	Listening	Spotify	t	Nürnberg	1626380133659	1626380281146
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626381047263	\N
302519349489434624	444634001152671744	447590395983953920	\N	Playing	NeosVR	t	In private world	1626381043000	\N
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626381076855	\N
223666520943886336	356877880938070016	\N	\N	Playing	Rocket League	t	Hauptmenü	1626474336022	\N
434794201075417101	\N	\N	\N	Custom	Custom Status	f	deer drip bottom text	1626475236733	\N
223666520943886336	463097721130188830	513734690272968717	Ich will Rang 1 werden! | Dead by Daylight	Playing	YouTube	f	HandOfUncut	1626368112745	1626369995000
302519349489434624	\N	\N	\N	Custom	Custom Status	f	\N	1626368126568	\N
681192725152006160	\N	spotify:ab67616d0000b2730b7c6d46885f7434c99e6d8b	hot girl bummer	Listening	Spotify	t	blackbear	1626368171411	1626368359754
223666520943886336	463097721130188830	513734690272968717	Ich will Rang 1 werden! | Dead by Daylight	Playing	YouTube	f	HandOfUncut	1626368191695	\N
202407278618476545	\N	\N	\N	Custom	Custom Status	f	defekt aber nett	1626368195180	\N
368355102949376000	\N	spotify:ab67616d0000b27335e64a6f05f6679c5b2f61e2	und der Fluch des Rubins - Dreipunkt taucht auf, Teil 9	Listening	Spotify	t	Die drei ???; Tim Grobe	1626368209770	1626368328924
223666520943886336	463097721130188830	513734690272968717	Ich will Rang 1 werden! | Dead by Daylight	Playing	YouTube	f	HandOfUncut	1626368231739	1626370018000
361914328703696896	\N	spotify:ab67616d0000b27309545e98d9172b05b28f5c0a	Freak (feat. REI AMI)	Listening	Spotify	t	Sub Urban; REI AMI	1626374074181	1626374268181
461265486655520788	\N	\N	\N	Playing	Fallout 69	f	\N	1626374084093	\N
361914328703696896	\N	\N	\N	Custom	Custom Status	f	\N	1626374089714	\N
708309251562405908	445956193924546560	446301881636225042	in MENU	Playing	Rainbow Six Siege	f	\N	1626374151780	\N
403571252402585601	\N	\N	\N	Custom	Custom Status	f	\N	1626374166718	\N
708309251562405908	\N	\N	\N	Custom	Custom Status	f	Wird aus Russland zurückgedrängt	1626374167953	\N
708309251562405908	\N	\N	\N	Custom	Custom Status	f	Wird aus Russland zurückgedrängt	1626374176583	\N
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626374188836	\N
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626374215153	\N
361914328703696896	445956193924546560	446301881636225042	Sucht nach „OHNE RANG“-Match	Playing	Rainbow Six Siege	f	\N	1626374266370	\N
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626374274346	\N
368355102949376000	\N	spotify:ab67616d0000b27335e64a6f05f6679c5b2f61e2	und der Fluch des Rubins - Bob auf frischer Fährte, Teil 6	Listening	Spotify	t	Die drei ???; Tim Grobe	1626374320943	1626374448023
206955935229280256	\N	\N	\N	Playing	%help || GC: 108037 || UC: 180928 || VC: 1 || Version: 5.9.0	f	\N	1626374356260	\N
281381884460662785	\N	spotify:ab67616d0000b273f335d8387c3658831112f914	Cupid's Chokehold / Breakfast in America	Listening	Spotify	t	Gym Class Heroes	1626374507521	1626374751294
202407278618476545	\N	spotify:ab67616d0000b27340de461a2493b58a969498e5	All My Tears	Listening	Spotify	t	Ane Brun	1626374531980	1626374656833
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626374572938	\N
361914328703696896	\N	spotify:ab67616d0000b27309545e98d9172b05b28f5c0a	KMS	Listening	Spotify	t	Sub Urban	1626374579823	1626374740577
708309251562405908	445956193924546560	446301881636225042	Looking for DISCOVERY match	Playing	Rainbow Six Siege	f	\N	1626374620974	\N
708309251562405908	445956193924546560	446301881636225042	in MENU	Playing	Rainbow Six Siege	f	\N	1626374628654	\N
708309251562405908	445956193924546560	446301881636225042	Looking for DISCOVERY match	Playing	Rainbow Six Siege	f	\N	1626374632647	\N
708309251562405908	445956193924546560	446301881636225042	in MENU	Playing	Rainbow Six Siege	f	\N	1626374632742	\N
708309251562405908	445956193924546560	446301881636225042	DISCOVERY match - Round 1 / 4	Playing	Rainbow Six Siege	f	\N	1626374633050	\N
361914328703696896	\N	spotify:ab67616d0000b2730a2185dd8ac62ee20156a815	HU5TLE!!!	Listening	Spotify	t	TJ_beastboy; fliggsy	1626378154189	1626378354689
547850369695219712	\N	spotify:ab67616d0000b273d2c53381d722923dd8afd3fa	Astronaut In The Ocean	Listening	Spotify	t	Arem Ozguc; Arman Aydin; Jordan Rys	1626378181034	1626378337239
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626378200141	\N
434794201075417101	\N	\N	\N	Custom	Custom Status	f	\N	1626378224819	\N
681192725152006160	401518684763586560	416719019576393738	Howling Abyss (ARAM)	Playing	League of Legends	f	In Lobby	1626378248373	\N
371656565607890964	361968954954219521	784165549428178978	[Ger]  Operation Ko... - Tallil Outskirts (47/98)	Playing	Squad	t	\N	1626378249000	\N
202407278618476545	\N	spotify:ab67616d0000b27390b750beaeeb52c6cd6d32e1	The Junkyard - Markus	Listening	Spotify	t	John Paesano	1626378251808	1626378322828
459713629441490945	\N	\N	\N	Custom	Custom Status	f	1:1	1626378256155	\N
459713629441490945	445956193924546560	446301881636225042	im MENÜ	Playing	Rainbow Six Siege	f	\N	1626378256304	\N
708309251562405908	\N	\N	\N	Custom	Custom Status	f	Wird aus Russland zurückgedrängt	1626378279878	\N
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626378304793	\N
202407278618476545	\N	spotify:ab67616d0000b2736c81650e70bf2679e1fa03f7	I Name Thee Dea And Embrace Thee As My Daughter	Listening	Spotify	t	Marcin Przybyłowicz	1626378322791	1626378403291
368355102949376000	356875570916753438	\N	\N	Playing	Minecraft	f	\N	1626378326794	\N
361914328703696896	\N	\N	\N	Custom	Custom Status	f	\N	1626380166699	\N
368355102949376000	\N	spotify:ab67616d0000b273ed42764d7a610b661a216504	204 - Der dunkle Wächter - Teil 17	Listening	Spotify	t	Die drei ???	1626380184405	1626380305138
547850369695219712	\N	spotify:ab67616d0000b273c528e6e84a0844925945fbd9	Tell You	Listening	Spotify	t	Dallerium; ØGM	1626380296149	1626380474213
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626380369841	\N
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626380384338	\N
368355102949376000	\N	spotify:ab67616d0000b273ed42764d7a610b661a216504	204 - Der dunkle Wächter - Teil 19	Listening	Spotify	t	Die drei ???	1626380407002	1626380500695
403571252402585601	\N	\N	\N	Custom	Custom Status	f	\N	1626381130925	\N
403571252402585601	357607478105604096	\N	\N	Playing	War Thunder	f	\N	1626381155839	\N
411656316814098441	\N	\N	\N	Custom	Custom Status	f	snowfox 😳	1626381160106	\N
206955935229280256	\N	\N	\N	Playing	%help || GC: 108037 || UC: 177262 || VC: 3 || Version: 5.9.0	f	\N	1626381232503	\N
368355102949376000	\N	spotify:ab67616d0000b273ed42764d7a610b661a216504	204 - Der dunkle Wächter - Teil 27	Listening	Spotify	t	Die drei ???	1626381232799	1626381342225
281381884460662785	\N	spotify:ab67616d0000b27379e3a0d23afa32a305dea676	Обречен / Obrechen	Listening	Spotify	t	Molchat Doma	1626381261497	1626381510242
302519349489434624	\N	\N	\N	Custom	Custom Status	f	\N	1626381280733	\N
461265486655520788	\N	\N	\N	Playing	Skyrim Battle Royale	f	\N	1626381283419	\N
708309251562405908	\N	\N	\N	Custom	Custom Status	f	Wird aus Russland zurückgedrängt	1626381331729	\N
708309251562405908	\N	\N	\N	Custom	Custom Status	f	Wird aus Russland zurückgedrängt	1626381353028	\N
302519349489434624	\N	\N	\N	Custom	Custom Status	f	\N	1626381371460	\N
547850369695219712	\N	spotify:ab67616d0000b2737672109cd326608826c4b707	All Around Us	Listening	Spotify	t	Neelix; Durs	1626381441878	1626381666663
206955935229280256	\N	\N	\N	Playing	%help || GC: 108037 || UC: 177737 || VC: 1 || Version: 5.9.0	f	\N	1626381470582	\N
223666520943886336	463097721130188830	513734690272968717	Ich will Rang 1 werden! | Dead by Daylight	Playing	YouTube	f	HandOfUncut	1626368113052	1626369994000
223666520943886336	463097721130188830	513734690272968717	Ich will Rang 1 werden! | Dead by Daylight	Playing	YouTube	f	HandOfUncut	1626368131893	1626369995000
223666520943886336	463097721130188830	513734690272968717	Ich will Rang 1 werden! | Dead by Daylight	Playing	YouTube	f	HandOfUncut	1626368151764	1626369995000
223666520943886336	463097721130188830	513734690272968717	Ich will Rang 1 werden! | Dead by Daylight	Playing	YouTube	f	HandOfUncut	1626368171829	1626369995000
223666520943886336	463097721130188830	513734690272968717	Ich will Rang 1 werden! | Dead by Daylight	Playing	YouTube	f	HandOfUncut	1626368193128	1626369996000
202407278618476545	551675228691103796	730353022743347200	ProgrammUC.cs	Playing	Visual Studio	f	Idling LaunchControlService_ver2	1626365452737	\N
223666520943886336	463097721130188830	513734690272968717	Ich will Rang 1 werden! | Dead by Daylight	Playing	YouTube	f	HandOfUncut	1626368217601	1626370019000
223666520943886336	463097721130188830	513734690272968717	Ich will Rang 1 werden! | Dead by Daylight	Playing	YouTube	f	HandOfUncut	1626368237915	1626370018000
281381884460662785	\N	spotify:ab67616d0000b273af9453a8f1d70354e9f934d3	A Good Song Never Dies	Listening	Spotify	t	Saint Motel	1626374026170	1626374227183
281381884460662785	\N	spotify:ab67616d0000b2734ae1c4c5c45aabe565499163	Do I Wanna Know?	Listening	Spotify	t	Arctic Monkeys	1626374079541	1626374351935
281381884460662785	\N	spotify:ab67616d0000b2739d67f78dd1013a61e3e416f4	Heartache	Listening	Spotify	t	Biting Elbows	1626374081097	1626374304647
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626374105893	\N
202407278618476545	\N	spotify:ab67616d0000b273131830d267848232447ba5d5	Possession	Listening	Spotify	t	Nicholas Hooper	1626374107272	1626374306138
708309251562405908	\N	\N	\N	Custom	Custom Status	f	Wird aus Russland zurückgedrängt	1626374151770	\N
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626374155455	\N
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626374194377	\N
361914328703696896	\N	\N	\N	Custom	Custom Status	f	\N	1626374266359	\N
361914328703696896	\N	\N	\N	Custom	Custom Status	f	\N	1626374277515	\N
361914328703696896	\N	\N	\N	Custom	Custom Status	f	\N	1626374279050	\N
281381884460662785	\N	spotify:ab67616d0000b273822cf865426a24c2237f4747	Demons Are a Girl's Best Friend	Listening	Spotify	t	Powerwolf	1626374288961	1626374507041
708309251562405908	445956193924546560	446301881636225042	in MENU	Playing	Rainbow Six Siege	f	\N	1626374292431	\N
423162525350363136	356875057940791296	\N	\N	Playing	Counter-Strike: Global Offensive	f	\N	1626374324821	\N
272411073842511873	\N	\N	\N	Custom	Custom Status	f	Deal with stuff be on	1626374323390	\N
276431762815451138	547786685795139585	573258041902891029	ledermann	Playing	CLion	t	Editing hs.rs	1626374324054	\N
403571252402585601	\N	\N	\N	Custom	Custom Status	f	\N	1626374390564	\N
361914328703696896	\N	\N	\N	Custom	Custom Status	f	\N	1626374434903	\N
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626374482109	\N
403571252402585601	\N	\N	\N	Custom	Custom Status	f	\N	1626374543959	\N
368355102949376000	\N	spotify:ab67616d0000b27335e64a6f05f6679c5b2f61e2	und der Fluch des Rubins - Unerwartete Entdeckungen, Teil 2	Listening	Spotify	t	Die drei ???; Tim Grobe	1626374546327	1626374648327
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626374602634	\N
202407278618476545	\N	spotify:ab67616d0000b273e0976dbb561453c9081e43fe	Bertrand	Listening	Spotify	t	Jim Dooley	1626374656731	1626374881006
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626378251648	\N
459713629441490945	\N	\N	\N	Custom	Custom Status	f	1:1	1626378252366	\N
459713629441490945	\N	\N	\N	Custom	Custom Status	f	1:1	1626378256388	\N
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626378311551	\N
281381884460662785	\N	\N	\N	Custom	Custom Status	f	why does everyone i want to talk to hate me :(	1626380173594	\N
424599087145549835	\N	\N	\N	Custom	Custom Status	f	Reliquit solum ab amicis.	1626380189870	\N
325704347767799808	790655993809338398	798617001685024808	Witchcraft	Playing	YouTube Music	f	Pendulum	1626380225711	\N
281381884460662785	\N	spotify:ab67616d0000b2739e1cfc756886ac782e363d79	The Less I Know The Better	Listening	Spotify	t	Tame Impala	1626380281658	1626380497978
368355102949376000	\N	spotify:ab67616d0000b273ed42764d7a610b661a216504	204 - Der dunkle Wächter - Teil 18	Listening	Spotify	t	Die drei ???	1626380305125	1626380407058
509017844537622532	358422126602223616	\N	\N	Playing	Factorio	f	\N	1626380182901	\N
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626380450681	\N
325704347767799808	790655993809338398	798617001685024808	Big Daddy	Playing	YouTube Music	f	USAO	1626380500960	\N
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626380508639	\N
547850369695219712	\N	spotify:ab67616d0000b27320062cf8da0f580e9118b487	Waves - Robin Schulz Radio Edit	Listening	Spotify	t	Mr. Probz; Robin Schulz	1626381236956	1626381445089
302519349489434624	\N	\N	\N	Custom	Custom Status	f	\N	1626381275513	\N
461265486655520788	\N	\N	\N	Playing	Skyrim Battle Royale	f	\N	1626381281450	\N
206955935229280256	\N	\N	\N	Playing	%help || GC: 108038 || UC: 177417 || VC: 2 || Version: 5.9.0	f	\N	1626381298653	\N
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626381328025	\N
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626381347747	\N
302519349489434624	\N	\N	\N	Custom	Custom Status	f	\N	1626381373101	\N
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626381436893	\N
368355102949376000	\N	spotify:ab67616d0000b273ed42764d7a610b661a216504	204 - Der dunkle Wächter - Teil 29	Listening	Spotify	t	Die drei ???	1626381444710	1626381538643
325704347767799808	790655993809338398	798617001685024808	Uprising (The Indicator Remix)	Playing	YouTube Music	f	Magic Sword & The Indicator	1626381481343	\N
263407413737160718	\N	\N	\N	Custom	Custom Status	f	write this down	1626474353123	\N
281381884460662785	\N	\N	\N	Custom	Custom Status	f	why does everyone i want to talk to hate me :(	1626381509801	\N
281381884460662785	\N	spotify:ab67616d0000b2735a9ae8079372f44f36584931	Favorite Lover (Dead Astronauts Theme) - Original Mix	Listening	Spotify	t	Dead Astronauts	1626381511711	1626381803551
263407413737160718	\N	\N	\N	Custom	Custom Status	f	write this down	1626381566121	\N
325704347767799808	790655993809338398	798617001685024808	Uprising (The Indicator Remix)	Playing	YouTube Music	f	Magic Sword & The Indicator	1626381566234	\N
434794201075417101	\N	\N	\N	Custom	Custom Status	f	deer drip bottom text	1626526887669	\N
223666520943886336	463097721130188830	513734690272968717	Ich will Rang 1 werden! | Dead by Daylight	Playing	YouTube	f	HandOfUncut	1626368132143	1626369994000
223666520943886336	463097721130188830	513734690272968717	Ich will Rang 1 werden! | Dead by Daylight	Playing	YouTube	f	HandOfUncut	1626368151922	1626369994000
223666520943886336	463097721130188830	513734690272968717	Ich will Rang 1 werden! | Dead by Daylight	Playing	YouTube	f	HandOfUncut	1626368172136	1626369994000
191594115907977225	\N	spotify:ab67616d0000b273ff0dae802acb38075786b58c	The Way You Look Tonight	Listening	Spotify	t	Frank Sinatra	1626368178072	1626368380232
223666520943886336	463097721130188830	513734690272968717	Ich will Rang 1 werden! | Dead by Daylight	Playing	YouTube	f	HandOfUncut	1626368193743	1626369997000
202407278618476545	\N	spotify:ab67616d0000b273e0976dbb561453c9081e43fe	7th Ward	Listening	Spotify	t	Galactic	1626368139806	1626368450906
223666520943886336	463097721130188830	513734690272968717	Ich will Rang 1 werden! | Dead by Daylight	Playing	YouTube	f	HandOfUncut	1626368217909	1626370018000
223666520943886336	463097721130188830	513734690272968717	Ich will Rang 1 werden! | Dead by Daylight	Playing	YouTube	f	HandOfUncut	1626368238696	1626370019000
403571252402585601	\N	\N	\N	Custom	Custom Status	f	\N	1626374727278	\N
361914328703696896	\N	\N	\N	Custom	Custom Status	f	\N	1626374738702	\N
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626374866825	\N
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626374887100	\N
459713629441490945	\N	\N	\N	Custom	Custom Status	f	1:1	1626374912409	\N
276431762815451138	547786685795139585	573259879226277898	ledermann	Playing	CLion	t	Editing Cargo.toml	1626374915875	\N
368355102949376000	\N	spotify:ab67616d0000b27335e64a6f05f6679c5b2f61e2	und der Fluch des Rubins - Unerwartete Entdeckungen, Teil 5	Listening	Spotify	t	Die drei ???; Tim Grobe	1626374927162	1626375021971
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626375033225	\N
202407278618476545	\N	spotify:ab67616d0000b273fe2beee506a7a2df05c766fb	Stay With Me, Pt. 2	Listening	Spotify	t	Danshin; Arooj Aftab	1626375033103	1626375233693
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626375060017	\N
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626375075413	\N
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626375110332	\N
361914328703696896	\N	\N	\N	Custom	Custom Status	f	\N	1626375123643	\N
708309251562405908	445956193924546560	446301881636225042	in MENU	Playing	Rainbow Six Siege	f	\N	1626375128570	\N
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626375152221	\N
708309251562405908	445956193924546560	446301881636225042	in MENU	Playing	Rainbow Six Siege	f	\N	1626375177754	\N
708309251562405908	445956193924546560	446301881636225042	QUICK MATCH match - Round 1 / 4	Playing	Rainbow Six Siege	f	\N	1626375177908	\N
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626375210888	\N
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626375226248	\N
281381884460662785	\N	spotify:ab67616d0000b273db16db05648965be0768aabb	One	Listening	Spotify	t	Metallica	1626375232340	1626375679780
202407278618476545	\N	spotify:ab67616d0000b27346ac204a9d297ef8ed852674	What We Could Have Become	Listening	Spotify	t	Olivier Deriviere	1626375233730	1626375406743
459713629441490945	\N	\N	\N	Custom	Custom Status	f	1:1	1626378256297	\N
459713629441490945	445956193924546560	446301881636225042	Spielt ein „SCHNELLES MATCH“ - Runde 1/4	Playing	Rainbow Six Siege	f	\N	1626378256396	\N
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626378262297	\N
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626378294656	\N
206955935229280256	\N	\N	\N	Playing	%help || GC: 108036 || UC: 170119 || VC: 2 || Version: 5.9.0	f	\N	1626378319675	\N
202407278618476545	\N	\N	\N	Custom	Custom Status	f	defekt aber nett	1626378323635	\N
325704347767799808	790655993809338398	798617001685024808	Witchcraft	Playing	YouTube Music	f	Pendulum	1626380225710	\N
325704347767799808	790655993809338398	798617001685024808	Big Daddy	Playing	YouTube Music	f	USAO	1626380226016	\N
325704347767799808	790655993809338398	798617001685024808	Big Daddy	Playing	YouTube Music	f	USAO	1626380226905	1626380500905
509017844537622532	358422126602223616	\N	\N	Playing	Factorio	f	\N	1626380228524	\N
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626380449658	\N
281381884460662785	\N	\N	\N	Custom	Custom Status	f	why does everyone i want to talk to hate me :(	1626380497478	\N
325704347767799808	790655993809338398	798617001685024808	Heavygrinder - Break Free (Zardonic Remix)	Playing	YouTube Music	f	Zardonic	1626380501267	\N
325704347767799808	790655993809338398	798617001685024808	Heavygrinder - Break Free (Zardonic Remix)	Playing	YouTube Music	f	Zardonic	1626380502190	1626380844190
368355102949376000	\N	spotify:ab67616d0000b273ed42764d7a610b661a216504	204 - Der dunkle Wächter - Teil 28	Listening	Spotify	t	Die drei ???	1626381342193	1626381444686
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626381429736	\N
302519349489434624	\N	\N	\N	Custom	Custom Status	f	\N	1626381491677	\N
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626381506525	\N
368355102949376000	\N	spotify:ab67616d0000b273ed42764d7a610b661a216504	204 - Der dunkle Wächter - Teil 30	Listening	Spotify	t	Die drei ???	1626381538673	1626381658659
325704347767799808	790655993809338398	798617001685024808	Uprising (The Indicator Remix)	Playing	YouTube Music	f	Magic Sword & The Indicator	1626381566217	\N
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626381567657	\N
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626381648758	\N
368355102949376000	\N	spotify:ab67616d0000b273ed42764d7a610b661a216504	204 - Der dunkle Wächter - Teil 31	Listening	Spotify	t	Die drei ???	1626381658601	1626381758361
547850369695219712	\N	spotify:ab67616d0000b27375c86176f987387e830d29bb	Bang Bang	Listening	Spotify	t	Neelix	1626381663460	1626381894138
261520809225355264	427196986064764928	427223277530906624	1.12.2 with 96 Mods	Playing	Minecraft	f	Starting Minecraft	1626381668000	\N
263407413737160718	\N	\N	\N	Custom	Custom Status	f	write this down	1626381676201	\N
361914328703696896	\N	\N	\N	Custom	Custom Status	f	\N	1626381727708	\N
206955935229280256	\N	\N	\N	Playing	%help || GC: 108037 || UC: 178192 || VC: 2 || Version: 5.9.0	f	\N	1626381742661	\N
223666520943886336	463097721130188830	513734690272968717	Ich will Rang 1 werden! | Dead by Daylight	Playing	YouTube	f	HandOfUncut	1626368133020	1626369994000
223666520943886336	463097721130188830	513734690272968717	Ich will Rang 1 werden! | Dead by Daylight	Playing	YouTube	f	HandOfUncut	1626368153090	1626369994000
223666520943886336	463097721130188830	513734690272968717	Ich will Rang 1 werden! | Dead by Daylight	Playing	YouTube	f	HandOfUncut	1626368172955	1626369994000
223666520943886336	463097721130188830	513734690272968717	Ich will Rang 1 werden! | Dead by Daylight	Playing	YouTube	f	HandOfUncut	1626368193893	1626369996000
202407278618476545	\N	\N	\N	Playing	Tom Clancy's Rainbow Six Siege	f	\N	1626365597303	\N
223666520943886336	463097721130188830	513734690272968717	Ich will Rang 1 werden! | Dead by Daylight	Playing	YouTube	f	HandOfUncut	1626368218728	1626370019000
223666520943886336	463097721130188830	513734690272968717	Ich will Rang 1 werden! | Dead by Daylight	Playing	YouTube	f	HandOfUncut	1626368251701	1626370018000
223666520943886336	463097721130188830	513734690272968717	Ich will Rang 1 werden! | Dead by Daylight	Playing	YouTube	f	HandOfUncut	1626368257641	1626370019000
223666520943886336	463097721130188830	513734690272968717	Ich will Rang 1 werden! | Dead by Daylight	Playing	YouTube	f	HandOfUncut	1626368257845	1626370018000
223666520943886336	463097721130188830	513734690272968717	Ich will Rang 1 werden! | Dead by Daylight	Playing	YouTube	f	HandOfUncut	1626368258767	1626370019000
206955935229280256	\N	\N	\N	Playing	%help || GC: 108039 || UC: 173104 || VC: 0 || Version: 5.9.0	f	\N	1626368265935	\N
223666520943886336	463097721130188830	513734690272968717	Ich will Rang 1 werden! | Dead by Daylight	Playing	YouTube	f	HandOfUncut	1626368271567	1626370018000
223666520943886336	463097721130188830	513734690272968717	Ich will Rang 1 werden! | Dead by Daylight	Playing	YouTube	f	HandOfUncut	1626368277711	1626370019000
223666520943886336	463097721130188830	513734690272968717	Ich will Rang 1 werden! | Dead by Daylight	Playing	YouTube	f	HandOfUncut	1626368278024	1626370018000
223666520943886336	463097721130188830	513734690272968717	Ich will Rang 1 werden! | Dead by Daylight	Playing	YouTube	f	HandOfUncut	1626368278837	1626370019000
673945530019217430	\N	\N	\N	Playing	🍞 commands for info	f	\N	1626368284070	\N
223666520943886336	463097721130188830	513734690272968717	Ich will Rang 1 werden! | Dead by Daylight	Playing	YouTube	f	HandOfUncut	1626368291637	1626370018000
459713629441490945	\N	\N	\N	Custom	Custom Status	f	1:1	1626368292968	\N
223666520943886336	463097721130188830	513734690272968717	Ich will Rang 1 werden! | Dead by Daylight	Playing	YouTube	f	HandOfUncut	1626368297781	1626370019000
223666520943886336	463097721130188830	513734690272968717	Ich will Rang 1 werden! | Dead by Daylight	Playing	YouTube	f	HandOfUncut	1626368297894	1626370018000
223666520943886336	463097721130188830	513734690272968717	Ich will Rang 1 werden! | Dead by Daylight	Playing	YouTube	f	HandOfUncut	1626368298754	1626370019000
202407278618476545	\N	\N	\N	Custom	Custom Status	f	defekt aber nett	1626368299726	\N
202407278618476545	445956193924546560	446301881636225042	in MENU	Playing	Rainbow Six Siege	f	\N	1626368299739	\N
202407278618476545	\N	\N	\N	Custom	Custom Status	f	defekt aber nett	1626368301364	\N
206955935229280256	\N	\N	\N	Playing	%help || GC: 108038 || UC: 173177 || VC: 0 || Version: 5.9.0	f	\N	1626368304547	\N
202407278618476545	\N	\N	\N	Custom	Custom Status	f	defekt aber nett	1626368304681	\N
223666520943886336	463097721130188830	513734690272968717	Ich will Rang 1 werden! | Dead by Daylight	Playing	YouTube	f	HandOfUncut	1626368311707	1626370018000
361914328703696896	\N	\N	\N	Custom	Custom Status	f	\N	1626368312123	\N
361914328703696896	\N	\N	\N	Custom	Custom Status	f	\N	1626368315803	\N
223666520943886336	463097721130188830	513734690272968717	Ich will Rang 1 werden! | Dead by Daylight	Playing	YouTube	f	HandOfUncut	1626368317647	1626370019000
223666520943886336	463097721130188830	513734690272968717	Ich will Rang 1 werden! | Dead by Daylight	Playing	YouTube	f	HandOfUncut	1626368317954	1626370018000
223666520943886336	463097721130188830	513734690272968717	Ich will Rang 1 werden! | Dead by Daylight	Playing	YouTube	f	HandOfUncut	1626368318772	1626370019000
223666520943886336	463097721130188830	513734690272968717	Ich will Rang 1 werden! | Dead by Daylight	Playing	YouTube	f	HandOfUncut	1626368331675	1626370018000
368355102949376000	\N	spotify:ab67616d0000b27335e64a6f05f6679c5b2f61e2	und der Fluch des Rubins - Manches läßt sich kombinieren, Teil 1	Listening	Spotify	t	Die drei ???; Tim Grobe	1626368328915	1626368433013
223666520943886336	463097721130188830	513734690272968717	Ich will Rang 1 werden! | Dead by Daylight	Playing	YouTube	f	HandOfUncut	1626368337717	1626370019000
223666520943886336	463097721130188830	513734690272968717	Ich will Rang 1 werden! | Dead by Daylight	Playing	YouTube	f	HandOfUncut	1626368338024	1626370018000
223666520943886336	463097721130188830	513734690272968717	Ich will Rang 1 werden! | Dead by Daylight	Playing	YouTube	f	HandOfUncut	1626368338740	1626370019000
202407278618476545	\N	\N	\N	Custom	Custom Status	f	defekt aber nett	1626368339867	\N
202407278618476545	\N	spotify:ab67616d0000b2732542daaa35723d3a73dd67a5	The End Run	Listening	Spotify	t	Jack Wall	1626368339499	1626368517005
202407278618476545	\N	\N	\N	Custom	Custom Status	f	defekt aber nett	1626368349903	\N
202407278618476545	\N	\N	\N	Playing	Tom Clancy's Rainbow Six Siege	f	\N	1626368349490	\N
223666520943886336	463097721130188830	513734690272968717	Ich will Rang 1 werden! | Dead by Daylight	Playing	YouTube	f	HandOfUncut	1626368351540	1626370018000
459713629441490945	\N	\N	\N	Custom	Custom Status	f	1:1	1626368353486	\N
223666520943886336	463097721130188830	513734690272968717	Ich will Rang 1 werden! | Dead by Daylight	Playing	YouTube	f	HandOfUncut	1626368357685	1626370019000
223666520943886336	463097721130188830	513734690272968717	Ich will Rang 1 werden! | Dead by Daylight	Playing	YouTube	f	HandOfUncut	1626368358100	1626370018000
223666520943886336	463097721130188830	513734690272968717	Ich will Rang 1 werden! | Dead by Daylight	Playing	YouTube	f	HandOfUncut	1626368358710	1626370019000
681192725152006160	\N	spotify:ab67616d0000b2733ae3374e6ff0eab6fe4d50a0	burrrrrr	Listening	Spotify	t	Lzr; bbno$; TrippyThaKid; Yung Bambi	1626368358844	1626368592731
202407278618476545	\N	\N	\N	Custom	Custom Status	f	defekt aber nett	1626368362191	\N
202407278618476545	\N	spotify:ab67616d0000b27390b750beaeeb52c6cd6d32e1	Lost - Kara	Listening	Spotify	t	Philip Sheppard	1626368361781	1626368457447
223666520943886336	463097721130188830	513734690272968717	Ich will Rang 1 werden! | Dead by Daylight	Playing	YouTube	f	HandOfUncut	1626368371611	1626370018000
223666520943886336	463097721130188830	513734690272968717	Ich will Rang 1 werden! | Dead by Daylight	Playing	YouTube	f	HandOfUncut	1626368377755	1626370019000
223666520943886336	463097721130188830	513734690272968717	Ich will Rang 1 werden! | Dead by Daylight	Playing	YouTube	f	HandOfUncut	1626368377892	1626370018000
223666520943886336	463097721130188830	513734690272968717	Ich will Rang 1 werden! | Dead by Daylight	Playing	YouTube	f	HandOfUncut	1626368378676	1626370019000
191594115907977225	\N	spotify:ab67616d0000b273b9ea1c69fe9efbdc2df85a95	You Make Me Feel So Young - Remastered 1998	Listening	Spotify	t	Frank Sinatra	1626368380356	1626368557756
223666520943886336	463097721130188830	513734690272968717	Ich will Rang 1 werden! | Dead by Daylight	Playing	YouTube	f	HandOfUncut	1626368397725	1626370019000
223666520943886336	463097721130188830	513734690272968717	Ich will Rang 1 werden! | Dead by Daylight	Playing	YouTube	f	HandOfUncut	1626368397831	1626370018000
202407278618476545	\N	\N	\N	Custom	Custom Status	f	defekt aber nett	1626368398337	\N
202407278618476545	445956193924546560	446301881636225042	in MENU	Playing	Rainbow Six Siege	f	\N	1626368398345	\N
459713629441490945	\N	\N	\N	Custom	Custom Status	f	1:1	1626369805924	\N
223666520943886336	463097721130188830	513734690272968717	Ich will Rang 1 werden! | Dead by Daylight	Playing	YouTube	f	HandOfUncut	1626368398850	1626370019000
223666520943886336	463097721130188830	513734690272968717	Ich will Rang 1 werden! | Dead by Daylight	Playing	YouTube	f	HandOfUncut	1626368411866	1626370018000
223666520943886336	463097721130188830	513734690272968717	Ich will Rang 1 werden! | Dead by Daylight	Playing	YouTube	f	HandOfUncut	1626368417691	1626370019000
223666520943886336	463097721130188830	513734690272968717	Ich will Rang 1 werden! | Dead by Daylight	Playing	YouTube	f	HandOfUncut	1626368417979	1626370018000
223666520943886336	463097721130188830	513734690272968717	Ich will Rang 1 werden! | Dead by Daylight	Playing	YouTube	f	HandOfUncut	1626368418714	1626370019000
223666520943886336	463097721130188830	513734690272968717	Ich will Rang 1 werden! | Dead by Daylight	Playing	YouTube	f	HandOfUncut	1626368451585	1626370018000
223666520943886336	463097721130188830	513734690272968717	Ich will Rang 1 werden! | Dead by Daylight	Playing	YouTube	f	HandOfUncut	1626368457729	1626370019000
223666520943886336	463097721130188830	513734690272968717	Ich will Rang 1 werden! | Dead by Daylight	Playing	YouTube	f	HandOfUncut	1626368457828	1626370018000
202407278618476545	\N	\N	\N	Custom	Custom Status	f	defekt aber nett	1626368458241	\N
403571252402585601	\N	spotify:ab67616d0000b27398fe89796d91f0072c1953b8	Alles probiert	Listening	Spotify	t	RAF Camora; Bonez MC	1626374731928	1626375012550
361914328703696896	\N	spotify:ab67616d0000b273cec7c8ebb684882dbaf476f5	Cradles	Listening	Spotify	t	Sub Urban	1626374741053	1626374950882
272411073842511873	\N	\N	\N	Custom	Custom Status	f	Deal with stuff be on	1626374746097	\N
281381884460662785	\N	\N	\N	Custom	Custom Status	f	why does everyone i want to talk to hate me :(	1626374750295	\N
368355102949376000	\N	spotify:ab67616d0000b27335e64a6f05f6679c5b2f61e2	und der Fluch des Rubins - Unerwartete Entdeckungen, Teil 4	Listening	Spotify	t	Die drei ???; Tim Grobe	1626374819887	1626374926838
403571252402585601	\N	\N	\N	Custom	Custom Status	f	\N	1626374862633	\N
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626374865084	\N
272411073842511873	\N	\N	\N	Custom	Custom Status	f	Deal with stuff be on	1626374872818	\N
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626374886594	\N
361914328703696896	\N	\N	\N	Custom	Custom Status	f	\N	1626374949053	\N
403571252402585601	\N	spotify:ab67616d0000b27328c31f0e463fbf5227dbab32	Immer auf der Straße (feat. GZUZ)	Listening	Spotify	t	18 Karat; Gzuz	1626375013041	1626375166014
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626375029538	\N
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626375045922	\N
371656565607890964	361968954954219521	784165587878150184	Fallujah	Playing	Squad	t	\N	1626375056000	\N
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626375061384	\N
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626375084016	\N
708309251562405908	\N	\N	\N	Custom	Custom Status	f	Wird aus Russland zurückgedrängt	1626375128559	\N
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626375131743	\N
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626375154262	\N
708309251562405908	445956193924546560	446301881636225042	in MENU	Playing	Rainbow Six Siege	f	\N	1626375173625	\N
708309251562405908	\N	\N	\N	Custom	Custom Status	f	Wird aus Russland zurückgedrängt	1626375177749	\N
708309251562405908	\N	\N	\N	Custom	Custom Status	f	Wird aus Russland zurückgedrängt	1626375177901	\N
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626375192662	\N
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626375212629	\N
281381884460662785	\N	\N	\N	Custom	Custom Status	f	why does everyone i want to talk to hate me :(	1626375230856	\N
202407278618476545	\N	\N	\N	Custom	Custom Status	f	defekt aber nett	1626375234448	\N
547850369695219712	\N	spotify:ab67616d0000b27312050b28b5a2c9684fe3ceb1	The Best	Listening	Spotify	t	Hook N Sling; Galantis; Karen Harding	1626378334040	1626378492394
261520809225355264	484892481452769290	\N	\N	Playing	Insurgency: Sandstorm	f	\N	1626378353589	\N
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626378364902	\N
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626378375449	\N
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626378378316	\N
202407278618476545	\N	spotify:ab67616d0000b273fe2beee506a7a2df05c766fb	Screaming Lights	Listening	Spotify	t	Danshin; Arooj Aftab	1626378403301	1626378544116
261520809225355264	531450167799447552	531577494935961601	Playing a match	Playing	Insurgency: Sandstorm	t	\N	1626378413000	\N
261520809225355264	531450167799447552	531577494935961601	Playing Big Money Domination	Playing	Insurgency: Sandstorm	t	Farmhouse Domination	1626378431000	\N
403571252402585601	\N	\N	\N	Custom	Custom Status	f	\N	1626378527103	\N
202407278618476545	\N	\N	\N	Custom	Custom Status	f	defekt aber nett	1626378545125	\N
403571252402585601	\N	\N	\N	Custom	Custom Status	f	\N	1626380264109	\N
281381884460662785	\N	\N	\N	Custom	Custom Status	f	why does everyone i want to talk to hate me :(	1626380280493	\N
547850369695219712	\N	spotify:ab67616d0000b2731589793da15ac8bd0d14677b	No Right To Love You - Joel Corry Remix	Listening	Spotify	t	Rhys Lewis; Joel Corry	1626380470989	1626380650562
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626380531066	\N
708309251562405908	\N	\N	\N	Custom	Custom Status	f	Wird aus Russland zurückgedrängt	1626381353541	\N
325704347767799808	790655993809338398	798617001685024808	Become God	Playing	YouTube Music	f	GHOST DATA	1626381481030	\N
325704347767799808	790655993809338398	798617001685024808	Uprising (The Indicator Remix)	Playing	YouTube Music	f	Magic Sword & The Indicator	1626381482418	1626381809418
206955935229280256	\N	\N	\N	Playing	%help || GC: 108036 || UC: 177932 || VC: 1 || Version: 5.9.0	f	\N	1626381576771	\N
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626381616912	\N
361914328703696896	356877880938070016	\N	\N	Playing	Rocket League	f	\N	1626381730889	\N
368355102949376000	\N	spotify:ab67616d0000b273ed42764d7a610b661a216504	204 - Der dunkle Wächter - Teil 32	Listening	Spotify	t	Die drei ???	1626381758414	1626381860734
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626381798064	\N
423162525350363136	356875057940791296	\N	\N	Playing	Counter-Strike: Global Offensive	f	\N	1626381852497	\N
223666520943886336	463097721130188830	513734690272968717	Ich will Rang 1 werden! | Dead by Daylight	Playing	YouTube	f	HandOfUncut	1626368431619	1626370018000
361914328703696896	\N	\N	\N	Custom	Custom Status	f	\N	1626368433256	\N
368355102949376000	\N	spotify:ab67616d0000b27335e64a6f05f6679c5b2f61e2	und der Fluch des Rubins - Manches läßt sich kombinieren, Teil 2	Listening	Spotify	t	Die drei ???; Tim Grobe	1626368432975	1626368532866
223666520943886336	463097721130188830	513734690272968717	Ich will Rang 1 werden! | Dead by Daylight	Playing	YouTube	f	HandOfUncut	1626368437761	1626370019000
223666520943886336	463097721130188830	513734690272968717	Ich will Rang 1 werden! | Dead by Daylight	Playing	YouTube	f	HandOfUncut	1626368437857	1626370018000
223666520943886336	463097721130188830	513734690272968717	Ich will Rang 1 werden! | Dead by Daylight	Playing	YouTube	f	HandOfUncut	1626368438682	1626370019000
202407278618476545	445956193924546560	446301881636225042	in MENU	Playing	Rainbow Six Siege	f	\N	1626368458248	\N
202407278618476545	\N	spotify:ab67616d0000b27352f152eeed23833bd26b1e9b	Rise up Dead Man (Instrumental)	Listening	Spotify	t	Port Sulphur Band	1626368457837	1626368655837
223666520943886336	463097721130188830	513734690272968717	Ich will Rang 1 werden! | Dead by Daylight	Playing	YouTube	f	HandOfUncut	1626368458753	1626370019000
223666520943886336	463097721130188830	513734690272968717	Ich will Rang 1 werden! | Dead by Daylight	Playing	YouTube	f	HandOfUncut	1626368517737	1626370019000
223666520943886336	463097721130188830	513734690272968717	Ich will Rang 1 werden! | Dead by Daylight	Playing	YouTube	f	HandOfUncut	1626368517986	1626370018000
223666520943886336	463097721130188830	513734690272968717	Ich will Rang 1 werden! | Dead by Daylight	Playing	YouTube	f	HandOfUncut	1626368518760	1626370019000
223666520943886336	463097721130188830	513734690272968717	Ich will Rang 1 werden! | Dead by Daylight	Playing	YouTube	f	HandOfUncut	1626368531662	1626370018000
459713629441490945	\N	\N	\N	Custom	Custom Status	f	1:1	1626368534836	\N
368355102949376000	\N	spotify:ab67616d0000b27335e64a6f05f6679c5b2f61e2	und der Fluch des Rubins - Manches läßt sich kombinieren, Teil 3	Listening	Spotify	t	Die drei ???; Tim Grobe	1626368532843	1626368638643
223666520943886336	463097721130188830	513734690272968717	Ich will Rang 1 werden! | Dead by Daylight	Playing	YouTube	f	HandOfUncut	1626368537806	1626370019000
223666520943886336	463097721130188830	513734690272968717	Ich will Rang 1 werden! | Dead by Daylight	Playing	YouTube	f	HandOfUncut	1626368538119	1626370018000
223666520943886336	463097721130188830	513734690272968717	Ich will Rang 1 werden! | Dead by Daylight	Playing	YouTube	f	HandOfUncut	1626368538727	1626370019000
223666520943886336	463097721130188830	513734690272968717	Ich will Rang 1 werden! | Dead by Daylight	Playing	YouTube	f	HandOfUncut	1626368551631	1626370018000
223666520943886336	463097721130188830	513734690272968717	Ich will Rang 1 werden! | Dead by Daylight	Playing	YouTube	f	HandOfUncut	1626368557671	1626370019000
223666520943886336	463097721130188830	513734690272968717	Ich will Rang 1 werden! | Dead by Daylight	Playing	YouTube	f	HandOfUncut	1626368557978	1626370018000
223666520943886336	463097721130188830	513734690272968717	Ich will Rang 1 werden! | Dead by Daylight	Playing	YouTube	f	HandOfUncut	1626368558798	1626370019000
223666520943886336	463097721130188830	513734690272968717	Ich will Rang 1 werden! | Dead by Daylight	Playing	YouTube	f	HandOfUncut	1626368571701	1626370018000
223666520943886336	463097721130188830	513734690272968717	Ich will Rang 1 werden! | Dead by Daylight	Playing	YouTube	f	HandOfUncut	1626368577639	1626370019000
223666520943886336	463097721130188830	513734690272968717	Ich will Rang 1 werden! | Dead by Daylight	Playing	YouTube	f	HandOfUncut	1626368577948	1626370018000
223666520943886336	463097721130188830	513734690272968717	Ich will Rang 1 werden! | Dead by Daylight	Playing	YouTube	f	HandOfUncut	1626368578765	1626370019000
302519349489434624	\N	\N	\N	Custom	Custom Status	f	\N	1626368585115	\N
281381884460662785	\N	\N	\N	Custom	Custom Status	f	why does everyone i want to talk to hate me :(	1626368586240	\N
281381884460662785	530196305138417685	530196467688931339	In Lobby	Playing	PLAYERUNKNOWN'S BATTLEGROUNDS	t	\N	1626368586251	\N
302519349489434624	\N	\N	\N	Custom	Custom Status	f	\N	1626368586548	\N
223666520943886336	463097721130188830	513734690272968717	Ich will Rang 1 werden! | Dead by Daylight	Playing	YouTube	f	HandOfUncut	1626368591668	1626370018000
681192725152006160	\N	spotify:ab67616d0000b273d79cfa3155b50beb5dbeeb9a	Plain Jane	Listening	Spotify	t	A$AP Ferg	1626368593138	1626368766738
459713629441490945	\N	\N	\N	Custom	Custom Status	f	1:1	1626368595457	\N
223666520943886336	463097721130188830	513734690272968717	Ich will Rang 1 werden! | Dead by Daylight	Playing	YouTube	f	HandOfUncut	1626368597710	1626370019000
223666520943886336	463097721130188830	513734690272968717	Ich will Rang 1 werden! | Dead by Daylight	Playing	YouTube	f	HandOfUncut	1626368598017	1626370018000
223666520943886336	463097721130188830	513734690272968717	Ich will Rang 1 werden! | Dead by Daylight	Playing	YouTube	f	HandOfUncut	1626368598734	1626370019000
223666520943886336	463097721130188830	513734690272968717	Ich will Rang 1 werden! | Dead by Daylight	Playing	YouTube	f	HandOfUncut	1626368617680	1626370019000
223666520943886336	463097721130188830	513734690272968717	Ich will Rang 1 werden! | Dead by Daylight	Playing	YouTube	f	HandOfUncut	1626368618196	1626370018000
223666520943886336	463097721130188830	513734690272968717	Ich will Rang 1 werden! | Dead by Daylight	Playing	YouTube	f	HandOfUncut	1626368618702	1626370019000
223666520943886336	463097721130188830	513734690272968717	Ich will Rang 1 werden! | Dead by Daylight	Playing	YouTube	f	HandOfUncut	1626368631605	\N
261520809225355264	427196986064764928	427223277530906624	1.12.2 with 96 Mods	Playing	Minecraft	f	Starting Minecraft	1626368632000	\N
368355102949376000	\N	spotify:ab67616d0000b27335e64a6f05f6679c5b2f61e2	und der Fluch des Rubins - Manches läßt sich kombinieren, Teil 4	Listening	Spotify	t	Die drei ???; Tim Grobe	1626368638628	1626368737305
202407278618476545	\N	\N	\N	Custom	Custom Status	f	defekt aber nett	1626368656282	\N
202407278618476545	445956193924546560	446301881636225042	DISCOVERY match - Round 1 / 4	Playing	Rainbow Six Siege	f	\N	1626368656293	\N
202407278618476545	\N	spotify:ab67616d0000b2739c76320f77cb4c56e8e3da4b	Stalking	Listening	Spotify	t	Gustavo Santaolalla	1626368655837	1626368775156
223666520943886336	612704158826496028	612710277800001584	Google Images	Playing	Google	f	Searching for lkw simulator	1626368681000	\N
302519349489434624	\N	\N	\N	Custom	Custom Status	f	\N	1626368699085	\N
223666520943886336	463097721130188830	513734690272968717	Ich will Rang 1 werden! | Dead by Daylight	Playing	YouTube	f	HandOfUncut	1626368701536	\N
223666520943886336	463097721130188830	513734690272968717	Ich will Rang 1 werden! | Dead by Daylight	Playing	YouTube	f	HandOfUncut	1626368702265	1626370089000
223666520943886336	463097721130188830	513734690272968717	Ich will Rang 1 werden! | Dead by Daylight	Playing	YouTube	f	HandOfUncut	1626368702771	1626370090000
223666520943886336	463097721130188830	513734690272968717	Ich will Rang 1 werden! | Dead by Daylight	Playing	YouTube	f	HandOfUncut	1626368703386	1626370089000
223666520943886336	463097721130188830	513734690272968717	Ich will Rang 1 werden! | Dead by Daylight	Playing	YouTube	f	HandOfUncut	1626368721408	1626370100000
223666520943886336	463097721130188830	513734690272968717	Ich will Rang 1 werden! | Dead by Daylight	Playing	YouTube	f	HandOfUncut	1626368721716	1626370101000
223666520943886336	463097721130188830	513734690272968717	Ich will Rang 1 werden! | Dead by Daylight	Playing	YouTube	f	HandOfUncut	1626368722741	1626370100000
223666520943886336	463097721130188830	513734690272968717	Ich will Rang 1 werden! | Dead by Daylight	Playing	YouTube	f	HandOfUncut	1626368722826	1626370101000
223666520943886336	463097721130188830	513734690272968717	Ich will Rang 1 werden! | Dead by Daylight	Playing	YouTube	f	HandOfUncut	1626368723440	1626370100000
368355102949376000	\N	spotify:ab67616d0000b27335e64a6f05f6679c5b2f61e2	und der Fluch des Rubins - Manches läßt sich kombinieren, Teil 5	Listening	Spotify	t	Die drei ???; Tim Grobe	1626368737311	1626368836985
223666520943886336	463097721130188830	513734690272968717	Ich will Rang 1 werden! | Dead by Daylight	Playing	YouTube	f	HandOfUncut	1626368741684	1626370101000
223666520943886336	463097721130188830	513734690272968717	Ich will Rang 1 werden! | Dead by Daylight	Playing	YouTube	f	HandOfUncut	1626368742504	1626370100000
223666520943886336	463097721130188830	513734690272968717	Ich will Rang 1 werden! | Dead by Daylight	Playing	YouTube	f	HandOfUncut	1626368742771	1626370101000
223666520943886336	463097721130188830	513734690272968717	Ich will Rang 1 werden! | Dead by Daylight	Playing	YouTube	f	HandOfUncut	1626368743425	1626370100000
223666520943886336	463097721130188830	513734690272968717	Ich will Rang 1 werden! | Dead by Daylight	Playing	YouTube	f	HandOfUncut	1626368761754	1626370101000
223666520943886336	463097721130188830	513734690272968717	Ich will Rang 1 werden! | Dead by Daylight	Playing	YouTube	f	HandOfUncut	1626368762573	1626370100000
223666520943886336	463097721130188830	513734690272968717	Ich will Rang 1 werden! | Dead by Daylight	Playing	YouTube	f	HandOfUncut	1626368762718	1626370101000
223666520943886336	463097721130188830	513734690272968717	Ich will Rang 1 werden! | Dead by Daylight	Playing	YouTube	f	HandOfUncut	1626368763392	1626370100000
681192725152006160	\N	spotify:ab67616d0000b273ecdad1ee6d530eb965d7c51e	Devil Eyes	Listening	Spotify	t	Hippie Sabotage	1626368770913	1626368902184
276431762815451138	547786685795139585	573258041902891029	ledermann	Playing	CLion	t	Editing main.rs	1626364405788	\N
276431762815451138	547786685795139585	573258041902891029	ledermann	Playing	CLion	t	Editing main.rs	1626368772960	\N
202407278618476545	\N	\N	\N	Custom	Custom Status	f	defekt aber nett	1626368775475	\N
202407278618476545	445956193924546560	446301881636225042	DISCOVERY match - Round 1 / 4	Playing	Rainbow Six Siege	f	\N	1626368775486	\N
202407278618476545	\N	spotify:ab67616d0000b273ca593ba6b61b7a164ae408b9	The Streets Are Long-Ass Gutters	Listening	Spotify	t	Paul Leonard-Morgan	1626368775058	1626368943924
459713629441490945	\N	\N	\N	Custom	Custom Status	f	1:1	1626368776842	\N
223666520943886336	463097721130188830	513734690272968717	Ich will Rang 1 werden! | Dead by Daylight	Playing	YouTube	f	HandOfUncut	1626368781824	1626370101000
223666520943886336	463097721130188830	513734690272968717	Ich will Rang 1 werden! | Dead by Daylight	Playing	YouTube	f	HandOfUncut	1626368782541	1626370100000
223666520943886336	463097721130188830	513734690272968717	Ich will Rang 1 werden! | Dead by Daylight	Playing	YouTube	f	HandOfUncut	1626368782951	1626370101000
223666520943886336	463097721130188830	513734690272968717	Ich will Rang 1 werden! | Dead by Daylight	Playing	YouTube	f	HandOfUncut	1626368783462	1626370100000
223666520943886336	463097721130188830	513734690272968717	Ich will Rang 1 werden! | Dead by Daylight	Playing	YouTube	f	HandOfUncut	1626368801382	\N
271659253486452736	\N	\N	\N	Custom	Custom Status	f	Whoa, I got two hands! Brujo, I need two beers!	1626368804148	\N
263407413737160718	\N	\N	\N	Custom	Custom Status	f	write this down	1626368820020	\N
361914328703696896	\N	\N	\N	Custom	Custom Status	f	\N	1626368873779	\N
281381884460662785	\N	\N	\N	Custom	Custom Status	f	why does everyone i want to talk to hate me :(	1626368894669	\N
281381884460662785	530196305138417685	530196467688931339	In Lobby	Playing	PLAYERUNKNOWN'S BATTLEGROUNDS	t	\N	1626368894679	\N
302519349489434624	\N	\N	\N	Custom	Custom Status	f	\N	1626368899993	\N
368355102949376000	\N	spotify:ab67616d0000b27335e64a6f05f6679c5b2f61e2	und der Fluch des Rubins - Manches läßt sich kombinieren, Teil 6	Listening	Spotify	t	Die drei ???; Tim Grobe	1626368897330	1626369046214
708309251562405908	\N	\N	\N	Custom	Custom Status	f	Wird aus Russland zurückgedrängt	1626368929894	\N
708309251562405908	445956193924546560	446301881636225042	in MENU	Playing	Rainbow Six Siege	f	\N	1626368929905	\N
302519349489434624	\N	\N	\N	Custom	Custom Status	f	\N	1626368941261	\N
202407278618476545	\N	\N	\N	Custom	Custom Status	f	defekt aber nett	1626368944339	\N
202407278618476545	445956193924546560	446301881636225042	DISCOVERY match - Round 1 / 4	Playing	Rainbow Six Siege	f	\N	1626368944350	\N
202407278618476545	\N	spotify:ab67616d0000b2736c81650e70bf2679e1fa03f7	At War!	Listening	Spotify	t	Mikolai Stroinski	1626368943947	1626369037631
459713629441490945	\N	\N	\N	Custom	Custom Status	f	1:1	1626368958670	\N
423162525350363136	496568071713062928	\N	\N	Playing	DCS World	f	\N	1626368976498	\N
681192725152006160	\N	spotify:ab67616d0000b2738a6ccb507dd6a66f7f6e2440	Lalala	Listening	Spotify	t	Y2K; bbno$	1626368976516	1626369137142
281381884460662785	\N	\N	\N	Custom	Custom Status	f	why does everyone i want to talk to hate me :(	1626368991129	\N
281381884460662785	530196305138417685	530196467688931339	Playing	Playing	PLAYERUNKNOWN'S BATTLEGROUNDS	t	\N	1626368991140	\N
281381884460662785	\N	\N	\N	Custom	Custom Status	f	why does everyone i want to talk to hate me :(	1626369006182	\N
281381884460662785	530196305138417685	530196467688931339	Playing	Playing	PLAYERUNKNOWN'S BATTLEGROUNDS	t	\N	1626369006193	\N
202407278618476545	\N	\N	\N	Custom	Custom Status	f	defekt aber nett	1626369038031	\N
202407278618476545	445956193924546560	446301881636225042	DISCOVERY match - Round 1 / 4	Playing	Rainbow Six Siege	f	\N	1626369038042	\N
202407278618476545	\N	spotify:ab67616d0000b2736c81650e70bf2679e1fa03f7	The Tree When We Sat Once	Listening	Spotify	t	Mikolai Stroinski	1626369037561	1626369192856
202407278618476545	\N	\N	\N	Custom	Custom Status	f	defekt aber nett	1626369047756	\N
202407278618476545	445956193924546560	446301881636225042	in MENU	Playing	Rainbow Six Siege	f	\N	1626369047767	\N
368355102949376000	\N	spotify:ab67616d0000b27335e64a6f05f6679c5b2f61e2	und der Fluch des Rubins - Ein Herr mit schwarzem Schnurrbart, Teil 1	Listening	Spotify	t	Die drei ???; Tim Grobe	1626369046517	1626369147673
202407278618476545	\N	\N	\N	Custom	Custom Status	f	defekt aber nett	1626369053081	\N
202407278618476545	445956193924546560	446301881636225042	in MENU	Playing	Rainbow Six Siege	f	\N	1626369053088	\N
281381884460662785	\N	\N	\N	Custom	Custom Status	f	why does everyone i want to talk to hate me :(	1626369055743	\N
281381884460662785	530196305138417685	530196467688931339	Playing	Playing	PLAYERUNKNOWN'S BATTLEGROUNDS	t	\N	1626369051000	\N
202407278618476545	\N	\N	\N	Custom	Custom Status	f	defekt aber nett	1626369063628	\N
202407278618476545	445956193924546560	446301881636225042	in MENU	Playing	Rainbow Six Siege	f	\N	1626369063638	\N
202407278618476545	\N	\N	\N	Custom	Custom Status	f	defekt aber nett	1626369067827	\N
202407278618476545	445956193924546560	446301881636225042	DISCOVERY match - Round 1 / 4	Playing	Rainbow Six Siege	f	\N	1626369067838	\N
281381884460662785	\N	\N	\N	Custom	Custom Status	f	why does everyone i want to talk to hate me :(	1626369075609	\N
281381884460662785	530196305138417685	530196467688931339	Playing	Playing	PLAYERUNKNOWN'S BATTLEGROUNDS	t	\N	1626369050000	\N
281381884460662785	\N	\N	\N	Custom	Custom Status	f	why does everyone i want to talk to hate me :(	1626369085646	\N
302519349489434624	\N	\N	\N	Custom	Custom Status	f	\N	1626369107865	\N
302519349489434624	\N	\N	\N	Custom	Custom Status	f	\N	1626369109196	\N
281381884460662785	\N	\N	\N	Custom	Custom Status	f	why does everyone i want to talk to hate me :(	1626369115647	\N
281381884460662785	\N	\N	\N	Custom	Custom Status	f	why does everyone i want to talk to hate me :(	1626369125684	\N
281381884460662785	\N	\N	\N	Custom	Custom Status	f	why does everyone i want to talk to hate me :(	1626369126406	\N
281381884460662785	\N	\N	\N	Custom	Custom Status	f	why does everyone i want to talk to hate me :(	1626369145650	\N
272411073842511873	\N	\N	\N	Custom	Custom Status	f	Deal with stuff be on	1626374746130	\N
206955935229280256	\N	\N	\N	Playing	%help || GC: 108036 || UC: 181802 || VC: 3 || Version: 5.9.0	f	\N	1626374816854	\N
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626374852694	\N
272411073842511873	\N	\N	\N	Custom	Custom Status	f	Deal with stuff be on	1626374872766	\N
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626374873072	\N
202407278618476545	\N	spotify:ab67616d0000b27368e5e7cc9256ca8c0917a9dd	Vanishing Grace (Innocence)	Listening	Spotify	t	Gustavo Santaolalla; Alan Umstead	1626374881020	1626374936780
281381884460662785	\N	spotify:ab67616d0000b273bce53a924b756cbaf8aa245c	Invaders Must Die	Listening	Spotify	t	The Prodigy	1626374936802	1626375231828
202407278618476545	\N	spotify:ab67616d0000b27389c3692370b29d8fd4bab431	Vivienne	Listening	Spotify	t	Mikolai Stroinski	1626374936740	1626375033092
403571252402585601	\N	\N	\N	Custom	Custom Status	f	\N	1626375008444	\N
368355102949376000	\N	spotify:ab67616d0000b27335e64a6f05f6679c5b2f61e2	und der Fluch des Rubins - Unerwartete Entdeckungen, Teil 6	Listening	Spotify	t	Die drei ???; Tim Grobe	1626375022981	1626375120980
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626375031689	\N
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626375055446	\N
371656565607890964	361968954954219521	784165587878150184	[Ger]  Operation Ko... - Fallujah (40/98)	Playing	Squad	t	\N	1626375049000	\N
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626375065894	\N
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626375085050	\N
361914328703696896	\N	spotify:ab67616d0000b27309545e98d9172b05b28f5c0a	Isolate	Listening	Spotify	t	Sub Urban	1626375125978	1626375267978
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626375144635	\N
403571252402585601	\N	\N	\N	Custom	Custom Status	f	\N	1626375161864	\N
708309251562405908	\N	\N	\N	Custom	Custom Status	f	Wird aus Russland zurückgedrängt	1626375163682	\N
708309251562405908	\N	\N	\N	Custom	Custom Status	f	Wird aus Russland zurückgedrängt	1626375177609	\N
152104114753372160	357607133254254632	\N	\N	Playing	Dead by Daylight	f	\N	1626375178219	\N
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626375209278	\N
361914328703696896	\N	spotify:ab67616d0000b273e604402d6fc28915d6c5865e	BLA BLA BLA	Listening	Spotify	t	TJ_beastboy	1626378355181	1626378545181
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626378356002	\N
202407278618476545	\N	\N	\N	Custom	Custom Status	f	defekt aber nett	1626378404185	\N
368355102949376000	\N	spotify:ab67616d0000b27335e64a6f05f6679c5b2f61e2	und der Fluch des Rubins - Absage	Listening	Spotify	t	Die drei ???; Tim Grobe	1626378404782	1626378475302
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626378463822	\N
681192725152006160	401518684763586560	416719019576393738	Howling Abyss (ARAM)	Playing	League of Legends	f	In Queue	1626378504000	\N
411656316814098441	\N	\N	\N	Custom	Custom Status	f	snowfox 😳	1626378506418	\N
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626378527512	\N
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626380547023	\N
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626380574074	\N
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626380608889	\N
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626380620562	\N
271659253486452736	356869127241072640	\N	\N	Playing	League of Legends	f	\N	1626379221507	\N
271659253486452736	\N	\N	\N	Custom	Custom Status	f	Whoa, I got two hands! Brujo, I need two beers!	1626380781330	\N
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626380833451	\N
271659253486452736	\N	\N	\N	Custom	Custom Status	f	Whoa, I got two hands! Brujo, I need two beers!	1626380856696	\N
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626380926123	\N
681192725152006160	401518684763586560	416719019576393738	Howling Abyss (ARAM)	Playing	League of Legends	f	In Lobby	1626380929712	\N
206955935229280256	\N	\N	\N	Playing	%help || GC: 108035 || UC: 175971 || VC: 3 || Version: 5.9.0	f	\N	1626380936573	\N
361914328703696896	\N	\N	\N	Custom	Custom Status	f	\N	1626380971897	\N
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626380977016	\N
302519349489434624	\N	\N	\N	Custom	Custom Status	f	\N	1626380996881	\N
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626381010398	\N
281381884460662785	\N	spotify:ab67616d0000b27379e3a0d23afa32a305dea676	Ответа Нет / Otveta Net	Listening	Spotify	t	Molchat Doma	1626381018007	1626381260973
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626381029143	\N
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626381036817	\N
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626381070615	\N
206955935229280256	\N	\N	\N	Playing	%help || GC: 108036 || UC: 176314 || VC: 3 || Version: 5.9.0	f	\N	1626381122038	\N
302519349489434624	\N	\N	\N	Custom	Custom Status	f	\N	1626381132561	\N
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626381135223	\N
325704347767799808	790655993809338398	798617001685024808	Become God	Playing	YouTube Music	f	GHOST DATA	1626381197019	\N
281381884460662785	\N	\N	\N	Custom	Custom Status	f	why does everyone i want to talk to hate me :(	1626381260460	\N
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626381313501	\N
681192725152006160	\N	spotify:ab67616d0000b27309cd3b75625ff85382613425	Ayy Macarena	Listening	Spotify	t	Tyga	1626369137037	1626369268643
368355102949376000	\N	spotify:ab67616d0000b27335e64a6f05f6679c5b2f61e2	und der Fluch des Rubins - Ein Herr mit schwarzem Schnurrbart, Teil 2	Listening	Spotify	t	Die drei ???; Tim Grobe	1626369147638	1626369250190
281381884460662785	\N	\N	\N	Custom	Custom Status	f	why does everyone i want to talk to hate me :(	1626369175762	\N
202407278618476545	\N	\N	\N	Custom	Custom Status	f	defekt aber nett	1626369193370	\N
202407278618476545	445956193924546560	446301881636225042	DISCOVERY match - Round 1 / 4	Playing	Rainbow Six Siege	f	\N	1626369193395	\N
202407278618476545	\N	spotify:ab67616d0000b273a448ea1a88acc7cf5bb26ed1	Soul of Cinder	Listening	Spotify	t	Yuka Kitamura	1626369192949	1626369544869
361914328703696896	\N	\N	\N	Custom	Custom Status	f	\N	1626369194086	\N
281381884460662785	\N	\N	\N	Custom	Custom Status	f	why does everyone i want to talk to hate me :(	1626369195621	\N
424599087145549835	\N	\N	\N	Custom	Custom Status	f	Reliquit solum ab amicis.	1626369199416	\N
424599087145549835	\N	\N	\N	Custom	Custom Status	f	Reliquit solum ab amicis.	1626369201765	\N
281381884460662785	\N	\N	\N	Custom	Custom Status	f	why does everyone i want to talk to hate me :(	1626369205759	\N
708309251562405908	\N	\N	\N	Custom	Custom Status	f	Wird aus Russland zurückgedrängt	1626369217023	\N
708309251562405908	445956193924546560	446301881636225042	Looking for QUICK MATCH match	Playing	Rainbow Six Siege	f	\N	1626369217030	\N
708309251562405908	\N	\N	\N	Custom	Custom Status	f	Wird aus Russland zurückgedrängt	1626369222656	\N
708309251562405908	445956193924546560	446301881636225042	in MENU	Playing	Rainbow Six Siege	f	\N	1626369222666	\N
708309251562405908	\N	\N	\N	Custom	Custom Status	f	Wird aus Russland zurückgedrängt	1626369223269	\N
708309251562405908	445956193924546560	446301881636225042	QUICK MATCH match - Round 1 / 4	Playing	Rainbow Six Siege	f	\N	1626369223280	\N
281381884460662785	\N	\N	\N	Custom	Custom Status	f	why does everyone i want to talk to hate me :(	1626369245672	\N
206955935229280256	\N	\N	\N	Playing	%help || GC: 108038 || UC: 172868 || VC: 2 || Version: 5.9.0	f	\N	1626369250413	\N
368355102949376000	\N	spotify:ab67616d0000b27335e64a6f05f6679c5b2f61e2	und der Fluch des Rubins - Ein Herr mit schwarzem Schnurrbart, Teil 3	Listening	Spotify	t	Die drei ???; Tim Grobe	1626369250179	1626369353006
681192725152006160	356869127241072640	\N	\N	Playing	League of Legends	f	\N	1626367945504	\N
302519349489434624	\N	\N	\N	Custom	Custom Status	f	\N	1626369255836	\N
459713629441490945	\N	\N	\N	Custom	Custom Status	f	1:1	1626369260645	\N
311607742542381068	\N	\N	\N	Custom	Custom Status	f	If I continue like this I will die before I am 30, the doctors said	1626369262288	\N
681192725152006160	356869127241072640	\N	\N	Playing	League of Legends	f	\N	1626369263218	\N
281381884460662785	\N	\N	\N	Custom	Custom Status	f	why does everyone i want to talk to hate me :(	1626369265765	\N
311607742542381068	\N	\N	\N	Custom	Custom Status	f	If I continue like this I will die before I am 30, the doctors said	1626369266380	\N
681192725152006160	\N	spotify:ab67616d0000b2738fe5d04b06aff90f9fe796f5	PTSD	Listening	Spotify	t	Pop Smoke	1626369269389	1626369469215
281381884460662785	\N	\N	\N	Custom	Custom Status	f	why does everyone i want to talk to hate me :(	1626369285735	\N
681192725152006160	401518684763586560	416719019576393738	Summoner's Rift (Ranked)	Playing	League of Legends	f	In Lobby	1626369305463	\N
281381884460662785	\N	\N	\N	Custom	Custom Status	f	why does everyone i want to talk to hate me :(	1626369305804	\N
681192725152006160	401518684763586560	416719019576393738	Summoner's Rift (Ranked)	Playing	League of Legends	f	In Queue	1626369310000	\N
424599087145549835	\N	\N	\N	Custom	Custom Status	f	Reliquit solum ab amicis.	1626369319627	\N
459713629441490945	\N	\N	\N	Custom	Custom Status	f	1:1	1626369320959	\N
281381884460662785	\N	\N	\N	Custom	Custom Status	f	why does everyone i want to talk to hate me :(	1626369325771	\N
281381884460662785	\N	\N	\N	Custom	Custom Status	f	why does everyone i want to talk to hate me :(	1626369345844	\N
368355102949376000	\N	spotify:ab67616d0000b27335e64a6f05f6679c5b2f61e2	und der Fluch des Rubins - Ein Herr mit schwarzem Schnurrbart, Teil 4	Listening	Spotify	t	Die drei ???; Tim Grobe	1626369352981	1626369455017
459713629441490945	\N	\N	\N	Custom	Custom Status	f	1:1	1626369502522	\N
223666520943886336	463097721130188830	513734690272968717	REZO reagiert auf die ASOZIALSTEN FUSSBALL FANS!!	Playing	YouTube	f	Blauer Zerstörer	1626369505689	\N
681192725152006160	401518684763586560	416719019576393738	Summoner's Rift (Ranked)	Playing	League of Legends	f	In Lobby	1626369519102	\N
681192725152006160	\N	spotify:ab67616d0000b273c7aeddf4497d5583b5b81a4e	Wind - Naruto Ending Theme (From "Naruto")	Listening	Spotify	t	Geek Music	1626369469510	1626369682128
281381884460662785	\N	\N	\N	Custom	Custom Status	f	why does everyone i want to talk to hate me :(	1626369525963	\N
681192725152006160	401518684763586560	416719019576393738	Summoner's Rift (Ranked)	Playing	League of Legends	f	In Queue	1626369529000	\N
202407278618476545	\N	\N	\N	Custom	Custom Status	f	defekt aber nett	1626369545828	\N
202407278618476545	445956193924546560	446301881636225042	DISCOVERY match - Round 1 / 4	Playing	Rainbow Six Siege	f	\N	1626369545839	\N
202407278618476545	\N	spotify:ab67616d0000b2736582b0de8c4acde5f02f4f51	Collateral	Listening	Spotify	t	Gustavo Santaolalla	1626369545216	1626369687896
681192725152006160	401518684763586560	416719019576393738	Summoner's Rift (Ranked)	Playing	League of Legends	f	In Lobby	1626369564772	\N
223666520943886336	463097721130188830	513734690272968717	REZO reagiert auf die ASOZIALSTEN FUSSBALL FANS!!	Playing	YouTube	f	Blauer Zerstörer	1626369564929	1626369888000
223666520943886336	463097721130188830	513734690272968717	REZO reagiert auf die ASOZIALSTEN FUSSBALL FANS!!	Playing	YouTube	f	Blauer Zerstörer	1626369565694	1626369889000
223666520943886336	463097721130188830	513734690272968717	REZO reagiert auf die ASOZIALSTEN FUSSBALL FANS!!	Playing	YouTube	f	Blauer Zerstörer	1626369565817	1626369888000
223666520943886336	463097721130188830	513734690272968717	REZO reagiert auf die ASOZIALSTEN FUSSBALL FANS!!	Playing	YouTube	f	Blauer Zerstörer	1626369566820	1626369889000
223666520943886336	463097721130188830	513734690272968717	REZO reagiert auf die ASOZIALSTEN FUSSBALL FANS!!	Playing	YouTube	f	Blauer Zerstörer	1626369566935	1626369888000
223666520943886336	463097721130188830	513734690272968717	REZO reagiert auf die ASOZIALSTEN FUSSBALL FANS!!	Playing	YouTube	f	Blauer Zerstörer	1626369585766	1626369889000
281381884460662785	\N	\N	\N	Custom	Custom Status	f	why does everyone i want to talk to hate me :(	1626369585846	\N
223666520943886336	463097721130188830	513734690272968717	REZO reagiert auf die ASOZIALSTEN FUSSBALL FANS!!	Playing	YouTube	f	Blauer Zerstörer	1626369585877	1626369888000
681192725152006160	401518684763586560	416719019576393738	Summoner's Rift (Ranked)	Playing	League of Legends	f	In Lobby	1626369586686	\N
223666520943886336	463097721130188830	513734690272968717	REZO reagiert auf die ASOZIALSTEN FUSSBALL FANS!!	Playing	YouTube	f	Blauer Zerstörer	1626369586686	1626369889000
223666520943886336	463097721130188830	513734690272968717	REZO reagiert auf die ASOZIALSTEN FUSSBALL FANS!!	Playing	YouTube	f	Blauer Zerstörer	1626369587031	1626369888000
281381884460662785	\N	\N	\N	Custom	Custom Status	f	why does everyone i want to talk to hate me :(	1626369595801	\N
223666520943886336	463097721130188830	513734690272968717	REZO reagiert auf die ASOZIALSTEN FUSSBALL FANS!!	Playing	YouTube	f	Blauer Zerstörer	1626369605630	1626369889000
281381884460662785	\N	\N	\N	Custom	Custom Status	f	why does everyone i want to talk to hate me :(	1626369816164	\N
223666520943886336	463097721130188830	513734690272968717	REZO reagiert auf die ASOZIALSTEN FUSSBALL FANS!!	Playing	YouTube	f	Blauer Zerstörer	1626369605939	1626369888000
223666520943886336	463097721130188830	513734690272968717	REZO reagiert auf die ASOZIALSTEN FUSSBALL FANS!!	Playing	YouTube	f	Blauer Zerstörer	1626369606868	1626369888000
281381884460662785	\N	spotify:ab67616d0000b273bb6f1dc0ee9313f2c36a6c68	пластинки	Listening	Spotify	t	Дурной Вкус	1626374751807	1626374936315
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626374854947	\N
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626374876041	\N
202407278618476545	\N	\N	\N	Custom	Custom Status	f	defekt aber nett	1626374881674	\N
281381884460662785	\N	\N	\N	Custom	Custom Status	f	why does everyone i want to talk to hate me :(	1626374935228	\N
202407278618476545	\N	\N	\N	Custom	Custom Status	f	defekt aber nett	1626374937490	\N
361914328703696896	\N	spotify:ab67616d0000b27361a91ac8b2fa1b8ce1349a66	Broken	Listening	Spotify	t	DNMO; Sub Urban	1626374951363	1626375125496
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626375025849	\N
202407278618476545	\N	\N	\N	Custom	Custom Status	f	defekt aber nett	1626375033839	\N
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626375035579	\N
371656565607890964	361968954954219521	365271016341110784	\N	Playing	Squad	t	\N	1626375045934	\N
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626375060326	\N
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626375080226	\N
368355102949376000	\N	spotify:ab67616d0000b27335e64a6f05f6679c5b2f61e2	und der Fluch des Rubins - Unerwartete Entdeckungen, Teil 7	Listening	Spotify	t	Die drei ???; Tim Grobe	1626375120975	1626375222681
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626375137365	\N
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626375155490	\N
403571252402585601	\N	spotify:ab67616d0000b2739979f1a9fbacbe186954e7c0	20 Zoll MAE (feat. Bonez MC)	Listening	Spotify	t	Celo & Abdi; Bonez MC	1626375166497	1626375368443
708309251562405908	445956193924546560	446301881636225042	Looking for QUICK MATCH match	Playing	Rainbow Six Siege	f	\N	1626375163692	\N
708309251562405908	\N	\N	\N	Custom	Custom Status	f	Wird aus Russland zurückgedrängt	1626375173615	\N
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626375177199	\N
708309251562405908	445956193924546560	446301881636225042	Looking for QUICK MATCH match	Playing	Rainbow Six Siege	f	\N	1626375177615	\N
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626375199835	\N
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626375222050	\N
368355102949376000	\N	spotify:ab67616d0000b27335e64a6f05f6679c5b2f61e2	und der Fluch des Rubins - Unerwartete Entdeckungen, Teil 8	Listening	Spotify	t	Die drei ???; Tim Grobe	1626375222645	1626375388397
202407278618476545	\N	\N	\N	Custom	Custom Status	f	defekt aber nett	1626375237922	\N
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626378354355	\N
708309251562405908	\N	\N	\N	Custom	Custom Status	f	Wird aus Russland zurückgedrängt	1626378408029	\N
708309251562405908	\N	\N	\N	Custom	Custom Status	f	Wird aus Russland zurückgedrängt	1626378422655	\N
547850369695219712	\N	spotify:ab67616d0000b273e2da95597788cf948b4d1d07	I Ran	Listening	Spotify	t	Krayvent; BTMX	1626378489221	1626378706784
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626378497415	\N
152104114753372160	357607133254254632	\N	\N	Playing	Dead by Daylight	f	\N	1626378509088	\N
403571252402585601	445956193924546560	446301881636225042	Looking for UNRANKED match	Playing	Rainbow Six Siege	f	\N	1626378527114	\N
361914328703696896	\N	\N	\N	Custom	Custom Status	f	\N	1626378543180	\N
202407278618476545	\N	spotify:ab67616d0000b273e8d8d8b8fddfea0cc4ee0977	Waiting Room	Listening	Spotify	t	Tobias Lilja	1626378544213	1626378743413
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626380547095	\N
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626380582265	\N
368355102949376000	\N	spotify:ab67616d0000b273ed42764d7a610b661a216504	204 - Der dunkle Wächter - Teil 21	Listening	Spotify	t	Die drei ???	1626380606724	1626380715337
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626380633157	\N
403571252402585601	\N	\N	\N	Custom	Custom Status	f	\N	1626380655583	\N
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626380673098	\N
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626380688156	\N
368355102949376000	\N	spotify:ab67616d0000b273ed42764d7a610b661a216504	204 - Der dunkle Wächter - Teil 22	Listening	Spotify	t	Die drei ???	1626380715294	1626380817667
325704347767799808	357607478105604096	\N	\N	Playing	War Thunder	f	\N	1626380729681	\N
302519349489434624	\N	\N	\N	Custom	Custom Status	f	\N	1626380741701	\N
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626380788102	\N
325704347767799808	790655993809338398	798617001685024808	Different	Playing	YouTube Music	f	Pendulum	1626380844207	\N
411656316814098441	\N	\N	\N	Custom	Custom Status	f	snowfox 😳	1626380846866	\N
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626380881170	\N
368355102949376000	\N	spotify:ab67616d0000b273ed42764d7a610b661a216504	204 - Der dunkle Wächter - Teil 24	Listening	Spotify	t	Die drei ???	1626380926389	1626381031975
547850369695219712	\N	spotify:ab67616d0000b27320062cf8da0f580e9118b487	Waves - Robin Schulz Radio Edit	Listening	Spotify	t	Mr. Probz; Robin Schulz	1626380988294	1626381196427
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626381012958	\N
368355102949376000	\N	spotify:ab67616d0000b273ed42764d7a610b661a216504	204 - Der dunkle Wächter - Teil 25	Listening	Spotify	t	Die drei ???	1626381032027	1626381135587
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626381036873	\N
223666520943886336	463097721130188830	513734690272968717	REZO reagiert auf die ASOZIALSTEN FUSSBALL FANS!!	Playing	YouTube	f	Blauer Zerstörer	1626369606654	1626369889000
223666520943886336	463097721130188830	513734690272968717	REZO reagiert auf die ASOZIALSTEN FUSSBALL FANS!!	Playing	YouTube	f	Blauer Zerstörer	1626369626726	1626369889000
223666520943886336	463097721130188830	513734690272968717	REZO reagiert auf die ASOZIALSTEN FUSSBALL FANS!!	Playing	YouTube	f	Blauer Zerstörer	1626369627031	1626369888000
281381884460662785	\N	\N	\N	Custom	Custom Status	f	why does everyone i want to talk to hate me :(	1626369635940	\N
223666520943886336	463097721130188830	513734690272968717	REZO reagiert auf die ASOZIALSTEN FUSSBALL FANS!!	Playing	YouTube	f	Blauer Zerstörer	1626369645720	1626369889000
281381884460662785	\N	\N	\N	Custom	Custom Status	f	why does everyone i want to talk to hate me :(	1626369645847	\N
223666520943886336	463097721130188830	513734690272968717	REZO reagiert auf die ASOZIALSTEN FUSSBALL FANS!!	Playing	YouTube	f	Blauer Zerstörer	1626369645862	1626369888000
223666520943886336	463097721130188830	513734690272968717	REZO reagiert auf die ASOZIALSTEN FUSSBALL FANS!!	Playing	YouTube	f	Blauer Zerstörer	1626369646795	1626369889000
223666520943886336	463097721130188830	513734690272968717	REZO reagiert auf die ASOZIALSTEN FUSSBALL FANS!!	Playing	YouTube	f	Blauer Zerstörer	1626369647102	1626369888000
281381884460662785	\N	\N	\N	Custom	Custom Status	f	why does everyone i want to talk to hate me :(	1626369655909	\N
223666520943886336	463097721130188830	513734690272968717	REZO reagiert auf die ASOZIALSTEN FUSSBALL FANS!!	Playing	YouTube	f	Blauer Zerstörer	1626369665022	\N
223666520943886336	463097721130188830	513734690272968717	REZO reagiert auf die ASOZIALSTEN FUSSBALL FANS!!	Playing	YouTube	f	Blauer Zerstörer	1626369672607	1626369909000
223666520943886336	463097721130188830	513734690272968717	REZO reagiert auf die ASOZIALSTEN FUSSBALL FANS!!	Playing	YouTube	f	Blauer Zerstörer	1626369672701	1626369908000
459713629441490945	\N	\N	\N	Custom	Custom Status	f	1:1	1626369684683	\N
223666520943886336	463097721130188830	513734690272968717	REZO reagiert auf die ASOZIALSTEN FUSSBALL FANS!!	Playing	YouTube	f	Blauer Zerstörer	1626369685911	1626369909000
281381884460662785	\N	\N	\N	Custom	Custom Status	f	why does everyone i want to talk to hate me :(	1626369686005	\N
202407278618476545	\N	\N	\N	Custom	Custom Status	f	defekt aber nett	1626369687961	\N
202407278618476545	445956193924546560	446301881636225042	DISCOVERY match - Round 1 / 4	Playing	Rainbow Six Siege	f	\N	1626369687971	\N
202407278618476545	\N	spotify:ab67616d0000b27390b750beaeeb52c6cd6d32e1	Time To Take Action - Markus	Listening	Spotify	t	John Paesano	1626369687460	1626370019618
223666520943886336	463097721130188830	513734690272968717	REZO reagiert auf die ASOZIALSTEN FUSSBALL FANS!!	Playing	YouTube	f	Blauer Zerstörer	1626369691441	1626369908000
223666520943886336	463097721130188830	513734690272968717	REZO reagiert auf die ASOZIALSTEN FUSSBALL FANS!!	Playing	YouTube	f	Blauer Zerstörer	1626369691749	1626369909000
223666520943886336	463097721130188830	513734690272968717	REZO reagiert auf die ASOZIALSTEN FUSSBALL FANS!!	Playing	YouTube	f	Blauer Zerstörer	1626369692465	1626369908000
281381884460662785	\N	\N	\N	Custom	Custom Status	f	why does everyone i want to talk to hate me :(	1626369696049	\N
361914328703696896	\N	\N	\N	Custom	Custom Status	f	\N	1626369696459	\N
361914328703696896	356877880938070016	\N	\N	Playing	Rocket League	f	\N	1626369699439	\N
361914328703696896	\N	spotify:ab67616d0000b273f5594201858122e8f30fa7e3	Human	Listening	Spotify	t	dodie; Tom Walker	1626369682557	1626369885278
223666520943886336	463097721130188830	513734690272968717	REZO reagiert auf die ASOZIALSTEN FUSSBALL FANS!!	Playing	YouTube	f	Blauer Zerstörer	1626369705060	1626369909000
281381884460662785	\N	\N	\N	Custom	Custom Status	f	why does everyone i want to talk to hate me :(	1626369706084	\N
223666520943886336	463097721130188830	513734690272968717	REZO reagiert auf die ASOZIALSTEN FUSSBALL FANS!!	Playing	YouTube	f	Blauer Zerstörer	1626369711005	1626369911000
223666520943886336	463097721130188830	513734690272968717	REZO reagiert auf die ASOZIALSTEN FUSSBALL FANS!!	Playing	YouTube	f	Blauer Zerstörer	1626369711409	1626369910000
223666520943886336	463097721130188830	513734690272968717	REZO reagiert auf die ASOZIALSTEN FUSSBALL FANS!!	Playing	YouTube	f	Blauer Zerstörer	1626369711716	1626369911000
223666520943886336	463097721130188830	513734690272968717	REZO reagiert auf die ASOZIALSTEN FUSSBALL FANS!!	Playing	YouTube	f	Blauer Zerstörer	1626369712644	1626369910000
281381884460662785	\N	\N	\N	Custom	Custom Status	f	why does everyone i want to talk to hate me :(	1626369715920	\N
223666520943886336	463097721130188830	513734690272968717	REZO reagiert auf die ASOZIALSTEN FUSSBALL FANS!!	Playing	YouTube	f	Blauer Zerstörer	1626369725028	1626369911000
368355102949376000	\N	spotify:ab67616d0000b27335e64a6f05f6679c5b2f61e2	und der Fluch des Rubins - Ein Herr mit schwarzem Schnurrbart, Teil 7	Listening	Spotify	t	Die drei ???; Tim Grobe	1626369723325	1626369918296
223666520943886336	463097721130188830	513734690272968717	REZO reagiert auf die ASOZIALSTEN FUSSBALL FANS!!	Playing	YouTube	f	Blauer Zerstörer	1626369731417	1626369910000
223666520943886336	463097721130188830	513734690272968717	REZO reagiert auf die ASOZIALSTEN FUSSBALL FANS!!	Playing	YouTube	f	Blauer Zerstörer	1626369731786	1626369911000
223666520943886336	463097721130188830	513734690272968717	REZO reagiert auf die ASOZIALSTEN FUSSBALL FANS!!	Playing	YouTube	f	Blauer Zerstörer	1626369732450	1626369910000
281381884460662785	\N	\N	\N	Custom	Custom Status	f	why does everyone i want to talk to hate me :(	1626369735985	\N
223666520943886336	463097721130188830	513734690272968717	REZO reagiert auf die ASOZIALSTEN FUSSBALL FANS!!	Playing	YouTube	f	Blauer Zerstörer	1626369744996	1626369911000
281381884460662785	\N	\N	\N	Custom	Custom Status	f	why does everyone i want to talk to hate me :(	1626369746020	\N
202407278618476545	\N	\N	\N	Custom	Custom Status	f	defekt aber nett	1626369747762	\N
202407278618476545	445956193924546560	446301881636225042	in MENU	Playing	Rainbow Six Siege	f	\N	1626369747769	\N
223666520943886336	463097721130188830	513734690272968717	REZO reagiert auf die ASOZIALSTEN FUSSBALL FANS!!	Playing	YouTube	f	Blauer Zerstörer	1626369751447	1626369910000
223666520943886336	463097721130188830	513734690272968717	REZO reagiert auf die ASOZIALSTEN FUSSBALL FANS!!	Playing	YouTube	f	Blauer Zerstörer	1626369751754	1626369911000
223666520943886336	463097721130188830	513734690272968717	REZO reagiert auf die ASOZIALSTEN FUSSBALL FANS!!	Playing	YouTube	f	Blauer Zerstörer	1626369752471	1626369910000
281381884460662785	\N	\N	\N	Custom	Custom Status	f	why does everyone i want to talk to hate me :(	1626369756055	\N
424599087145549835	\N	\N	\N	Custom	Custom Status	f	Reliquit solum ab amicis.	1626369760869	\N
223666520943886336	463097721130188830	513734690272968717	REZO reagiert auf die ASOZIALSTEN FUSSBALL FANS!!	Playing	YouTube	f	Blauer Zerstörer	1626369764964	1626369912000
281381884460662785	\N	\N	\N	Custom	Custom Status	f	why does everyone i want to talk to hate me :(	1626369766091	\N
223666520943886336	463097721130188830	513734690272968717	TEMPLE RUN FÜR PC	Playing	YouTube	f	Papaplatte Gaming	1626369771006	\N
281381884460662785	\N	\N	\N	Custom	Custom Status	f	why does everyone i want to talk to hate me :(	1626369796094	\N
223666520943886336	463097721130188830	513734690272968717	Ich will Rang 1 werden! | Dead by Daylight	Playing	YouTube	f	HandOfUncut	1626369802259	1626371104000
223666520943886336	463097721130188830	513734690272968717	Ich will Rang 1 werden! | Dead by Daylight	Playing	YouTube	f	HandOfUncut	1626369802653	1626371105000
223666520943886336	463097721130188830	513734690272968717	Ich will Rang 1 werden! | Dead by Daylight	Playing	YouTube	f	HandOfUncut	1626369802751	1626371104000
223666520943886336	463097721130188830	513734690272968717	Ich will Rang 1 werden! | Dead by Daylight	Playing	YouTube	f	HandOfUncut	1626369803773	1626371105000
281381884460662785	530196305138417685	530196467688931339	Playing	Playing	PLAYERUNKNOWN'S BATTLEGROUNDS	t	\N	1626369052000	\N
223666520943886336	463097721130188830	513734690272968717	Ich will Rang 1 werden! | Dead by Daylight	Playing	YouTube	f	HandOfUncut	1626369822621	1626371106000
223666520943886336	463097721130188830	513734690272968717	Ich will Rang 1 werden! | Dead by Daylight	Playing	YouTube	f	HandOfUncut	1626369822778	1626371105000
223666520943886336	463097721130188830	513734690272968717	Ich will Rang 1 werden! | Dead by Daylight	Playing	YouTube	f	HandOfUncut	1626369823741	1626371106000
223666520943886336	463097721130188830	513734690272968717	Ich will Rang 1 werden! | Dead by Daylight	Playing	YouTube	f	HandOfUncut	1626369824049	1626371105000
281381884460662785	\N	\N	\N	Custom	Custom Status	f	why does everyone i want to talk to hate me :(	1626369825962	\N
202407278618476545	445956193924546560	446301881636225042	in MENU	Playing	Rainbow Six Siege	f	\N	1626369845563	\N
281381884460662785	\N	\N	\N	Custom	Custom Status	f	why does everyone i want to talk to hate me :(	1626369846063	\N
202407278618476545	\N	\N	\N	Custom	Custom Status	f	defekt aber nett	1626369856425	\N
371656565607890964	\N	\N	\N	Playing	Squad	f	\N	1626369863428	\N
281381884460662785	\N	\N	\N	Custom	Custom Status	f	why does everyone i want to talk to hate me :(	1626369866136	\N
202407278618476545	445956193924546560	446301881636225042	in MENU	Playing	Rainbow Six Siege	f	\N	1626369866660	\N
223666520943886336	463097721130188830	513734690272968717	Ich will Rang 1 werden! | Dead by Daylight	Playing	YouTube	f	HandOfUncut	1626369867876	1626371114000
223666520943886336	463097721130188830	513734690272968717	Ich will Rang 1 werden! | Dead by Daylight	Playing	YouTube	f	HandOfUncut	1626369868701	1626371115000
223666520943886336	463097721130188830	513734690272968717	Ich will Rang 1 werden! | Dead by Daylight	Playing	YouTube	f	HandOfUncut	1626369868964	1626371114000
202407278618476545	\N	\N	\N	Custom	Custom Status	f	defekt aber nett	1626369870649	\N
202407278618476545	445956193924546560	446301881636225042	Looking for DISCOVERY match	Playing	Rainbow Six Siege	f	\N	1626369870679	\N
281381884460662785	\N	\N	\N	Custom	Custom Status	f	why does everyone i want to talk to hate me :(	1626369876068	\N
281381884460662785	\N	\N	\N	Custom	Custom Status	f	why does everyone i want to talk to hate me :(	1626369916106	\N
281381884460662785	\N	\N	\N	Custom	Custom Status	f	why does everyone i want to talk to hate me :(	1626369956147	\N
281381884460662785	\N	\N	\N	Custom	Custom Status	f	why does everyone i want to talk to hate me :(	1626369966179	\N
281381884460662785	\N	\N	\N	Custom	Custom Status	f	why does everyone i want to talk to hate me :(	1626370016253	\N
202407278618476545	445956193924546560	446301881636225042	DISCOVERY match - Round 1 / 4	Playing	Rainbow Six Siege	f	\N	1626370020154	\N
202407278618476545	\N	spotify:ab67616d0000b27346ac204a9d297ef8ed852674	A Night at Home	Listening	Spotify	t	Olivier Deriviere	1626370019588	1626370197281
361914328703696896	\N	\N	\N	Custom	Custom Status	f	\N	1626375267004	\N
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626375284632	\N
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626375368481	\N
281381884460662785	\N	spotify:ab67616d0000b27346304d5208a59365ab06e589	Люди Надоели	Listening	Spotify	t	Molchat Doma	1626375371066	1626375549926
281381884460662785	\N	spotify:ab67616d0000b273d792d961638fd28f8d281947	Rasputin	Listening	Spotify	t	Boney M.	1626375373281	1626375593947
202407278618476545	\N	\N	\N	Custom	Custom Status	f	defekt aber nett	1626375407393	\N
423162525350363136	\N	spotify:ab67616d0000b273e6528f558720c4e08d294b43	Ride	Listening	Spotify	t	Damaged.	1626375407912	1626375572219
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626375442107	\N
361914328703696896	\N	spotify:ab67616d0000b273dd6483426d78d440f5d32528	PATCHWERK (with Two Feet)	Listening	Spotify	t	Sub Urban; Two Feet	1626375445923	1626375587514
361914328703696896	\N	\N	\N	Custom	Custom Status	f	\N	1626375456648	\N
403571252402585601	\N	\N	\N	Custom	Custom Status	f	\N	1626375545532	\N
202407278618476545	\N	\N	\N	Custom	Custom Status	f	defekt aber nett	1626375547272	\N
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626375582615	\N
223666520943886336	463097721130188830	513734690272968717	Ich will Rang 1 werden! | Dead by Daylight	Playing	YouTube	f	HandOfUncut	1626375634738	\N
361914328703696896	\N	\N	\N	Custom	Custom Status	f	\N	1626375696264	\N
361914328703696896	\N	\N	\N	Custom	Custom Status	f	\N	1626375711213	\N
361914328703696896	356944273133928458	\N	\N	Playing	Brawlhalla	f	\N	1626375719216	\N
202407278618476545	\N	spotify:ab67616d0000b2736c81650e70bf2679e1fa03f7	Cloak And Dagger	Listening	Spotify	t	Percival	1626375754623	1626375920776
223666520943886336	463097721130188830	513734690272968717	Ich will Rang 1 werden! | Dead by Daylight	Playing	YouTube	f	HandOfUncut	1626375764009	1626376954000
223666520943886336	463097721130188830	513734690272968717	Ich will Rang 1 werden! | Dead by Daylight	Playing	YouTube	f	HandOfUncut	1626375764981	1626376954000
223666520943886336	463097721130188830	513734690272968717	Ich will Rang 1 werden! | Dead by Daylight	Playing	YouTube	f	HandOfUncut	1626375783713	1626376955000
223666520943886336	463097721130188830	513734690272968717	Ich will Rang 1 werden! | Dead by Daylight	Playing	YouTube	f	HandOfUncut	1626375784634	1626376955000
459713629441490945	\N	\N	\N	Custom	Custom Status	f	1:1	1626375789242	\N
223666520943886336	463097721130188830	513734690272968717	Ich will Rang 1 werden! | Dead by Daylight	Playing	YouTube	f	HandOfUncut	1626375803173	1626376954000
223666520943886336	463097721130188830	513734690272968717	Ich will Rang 1 werden! | Dead by Daylight	Playing	YouTube	f	HandOfUncut	1626375805020	1626376954000
206955935229280256	\N	\N	\N	Playing	%help || GC: 108038 || UC: 183698 || VC: 3 || Version: 5.9.0	f	\N	1626375821805	\N
223666520943886336	463097721130188830	513734690272968717	Ich will Rang 1 werden! | Dead by Daylight	Playing	YouTube	f	HandOfUncut	1626375825067	1626376954000
223666520943886336	463097721130188830	513734690272968717	Ich will Rang 1 werden! | Dead by Daylight	Playing	YouTube	f	HandOfUncut	1626375844030	1626376954000
223666520943886336	463097721130188830	513734690272968717	Ich will Rang 1 werden! | Dead by Daylight	Playing	YouTube	f	HandOfUncut	1626375864944	1626376954000
361914328703696896	\N	spotify:ab67616d0000b273ac58e8fa77e1843927b0e01c	garette's revenge	Listening	Spotify	t	Aidan Vaughn	1626375877976	1626375999685
223666520943886336	463097721130188830	513734690272968717	Ich will Rang 1 werden! | Dead by Daylight	Playing	YouTube	f	HandOfUncut	1626375884996	1626376954000
223666520943886336	463097721130188830	513734690272968717	Ich will Rang 1 werden! | Dead by Daylight	Playing	YouTube	f	HandOfUncut	1626375904956	1626376954000
223666520943886336	463097721130188830	513734690272968717	Ich will Rang 1 werden! | Dead by Daylight	Playing	YouTube	f	HandOfUncut	1626375924719	1626376955000
206955935229280256	\N	\N	\N	Playing	%help || GC: 108039 || UC: 183931 || VC: 3 || Version: 5.9.0	f	\N	1626375933832	\N
223666520943886336	463097721130188830	513734690272968717	Ich will Rang 1 werden! | Dead by Daylight	Playing	YouTube	f	HandOfUncut	1626375943985	1626376954000
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626375950932	\N
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626369832343	\N
223666520943886336	463097721130188830	513734690272968717	Ich will Rang 1 werden! | Dead by Daylight	Playing	YouTube	f	HandOfUncut	1626369841866	\N
202407278618476545	\N	\N	\N	Custom	Custom Status	f	defekt aber nett	1626369845552	\N
223666520943886336	463097721130188830	513734690272968717	Ich will Rang 1 werden! | Dead by Daylight	Playing	YouTube	f	HandOfUncut	1626369847703	1626371115000
223666520943886336	463097721130188830	513734690272968717	Ich will Rang 1 werden! | Dead by Daylight	Playing	YouTube	f	HandOfUncut	1626369848010	1626371114000
223666520943886336	463097721130188830	513734690272968717	Ich will Rang 1 werden! | Dead by Daylight	Playing	YouTube	f	HandOfUncut	1626369848630	1626371115000
223666520943886336	463097721130188830	513734690272968717	Ich will Rang 1 werden! | Dead by Daylight	Playing	YouTube	f	HandOfUncut	1626369848922	1626371114000
281381884460662785	\N	\N	\N	Custom	Custom Status	f	why does everyone i want to talk to hate me :(	1626369856100	\N
202407278618476545	445956193924546560	446301881636225042	Looking for DISCOVERY match	Playing	Rainbow Six Siege	f	\N	1626369856432	\N
223666520943886336	463097721130188830	513734690272968717	Ich will Rang 1 werden! | Dead by Daylight	Playing	YouTube	f	HandOfUncut	1626369861834	1626371115000
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626369862448	\N
202407278618476545	\N	\N	\N	Custom	Custom Status	f	defekt aber nett	1626369866653	\N
202407278618476545	445956193924546560	446301881636225042	Looking for DISCOVERY match	Playing	Rainbow Six Siege	f	\N	1626369870655	\N
202407278618476545	\N	\N	\N	Custom	Custom Status	f	defekt aber nett	1626369870676	\N
223666520943886336	463097721130188830	513734690272968717	Ich will Rang 1 werden! | Dead by Daylight	Playing	YouTube	f	HandOfUncut	1626369881904	\N
361914328703696896	\N	\N	\N	Custom	Custom Status	f	\N	1626369883451	\N
361914328703696896	\N	spotify:ab67616d0000b27317add53ee7ef16ac10e6f8a9	Hug All Ur Friends	Listening	Spotify	t	Cavetown	1626369885825	1626370220926
223666520943886336	463097721130188830	513734690272968717	Ich will Rang 1 werden! | Dead by Daylight	Playing	YouTube	f	HandOfUncut	1626369887639	1626371120000
223666520943886336	463097721130188830	513734690272968717	Ich will Rang 1 werden! | Dead by Daylight	Playing	YouTube	f	HandOfUncut	1626369887992	1626371119000
223666520943886336	463097721130188830	513734690272968717	Ich will Rang 1 werden! | Dead by Daylight	Playing	YouTube	f	HandOfUncut	1626369888639	\N
281381884460662785	\N	\N	\N	Custom	Custom Status	f	why does everyone i want to talk to hate me :(	1626369906174	\N
368355102949376000	\N	spotify:ab67616d0000b27335e64a6f05f6679c5b2f61e2	und der Fluch des Rubins - Ein Herr mit schwarzem Schnurrbart, Teil 8	Listening	Spotify	t	Die drei ???; Tim Grobe	1626369918291	1626370110058
281381884460662785	\N	\N	\N	Custom	Custom Status	f	why does everyone i want to talk to hate me :(	1626369946127	\N
281381884460662785	\N	\N	\N	Custom	Custom Status	f	why does everyone i want to talk to hate me :(	1626369976215	\N
202407278618476545	\N	\N	\N	Custom	Custom Status	f	defekt aber nett	1626370020144	\N
281381884460662785	\N	\N	\N	Custom	Custom Status	f	why does everyone i want to talk to hate me :(	1626370036222	\N
223666520943886336	463097721130188830	513734690272968717	Ich will Rang 1 werden! | Dead by Daylight	Playing	YouTube	f	HandOfUncut	1626370040216	\N
206955935229280256	\N	\N	\N	Playing	%help || GC: 108039 || UC: 171312 || VC: 2 || Version: 5.9.0	f	\N	1626370050250	\N
206955935229280256	\N	\N	\N	Playing	%help || GC: 108038 || UC: 171331 || VC: 2 || Version: 5.9.0	f	\N	1626370057520	\N
223666520943886336	359508713658253318	\N	\N	Playing	Euro Truck Simulator 2	f	\N	1626370059523	\N
223666520943886336	463097721130188830	513734690272968717	Ich will Rang 1 werden! | Dead by Daylight	Playing	YouTube	f	HandOfUncut	1626370060296	\N
708309251562405908	\N	\N	\N	Custom	Custom Status	f	Wird aus Russland zurückgedrängt	1626370100835	\N
708309251562405908	445956193924546560	446301881636225042	in MENU	Playing	Rainbow Six Siege	f	\N	1626370100842	\N
708309251562405908	\N	\N	\N	Custom	Custom Status	f	Wird aus Russland zurückgedrängt	1626370103907	\N
708309251562405908	445956193924546560	446301881636225042	Looking for QUICK MATCH match	Playing	Rainbow Six Siege	f	\N	1626370103918	\N
459713629441490945	\N	\N	\N	Custom	Custom Status	f	1:1	1626370107696	\N
368355102949376000	\N	spotify:ab67616d0000b27335e64a6f05f6679c5b2f61e2	und der Fluch des Rubins - Bob hat eine Erleuchtung, Teil 1	Listening	Spotify	t	Die drei ???; Tim Grobe	1626370110105	1626370214286
206955935229280256	\N	\N	\N	Playing	%help || GC: 108038 || UC: 171469 || VC: 1 || Version: 5.9.0	f	\N	1626370116298	\N
708309251562405908	\N	\N	\N	Custom	Custom Status	f	Wird aus Russland zurückgedrängt	1626370118454	\N
708309251562405908	445956193924546560	446301881636225042	in MENU	Playing	Rainbow Six Siege	f	\N	1626370118464	\N
202407278618476545	\N	\N	\N	Custom	Custom Status	f	defekt aber nett	1626370197807	\N
202407278618476545	445956193924546560	446301881636225042	DISCOVERY match - Round 1 / 4	Playing	Rainbow Six Siege	f	\N	1626370197818	\N
202407278618476545	\N	spotify:ab67616d0000b2736c81650e70bf2679e1fa03f7	Welcome, Imlerith	Listening	Spotify	t	Mikolai Stroinski	1626370197276	1626370362520
368355102949376000	\N	spotify:ab67616d0000b27335e64a6f05f6679c5b2f61e2	und der Fluch des Rubins - Bob hat eine Erleuchtung, Teil 2	Listening	Spotify	t	Die drei ???; Tim Grobe	1626370214186	1626370312791
361914328703696896	\N	\N	\N	Custom	Custom Status	f	\N	1626370218805	\N
361914328703696896	\N	spotify:ab67616d0000b273e493173de9a081d38d1f2fca	Lonely Star	Listening	Spotify	t	Oh Wonder	1626370221389	1626370458775
206955935229280256	\N	\N	\N	Playing	%help || GC: 108037 || UC: 171892 || VC: 2 || Version: 5.9.0	f	\N	1626370274404	\N
459713629441490945	\N	\N	\N	Custom	Custom Status	f	1:1	1626370289353	\N
708309251562405908	\N	\N	\N	Custom	Custom Status	f	Wird aus Russland zurückgedrängt	1626370290991	\N
708309251562405908	445956193924546560	446301881636225042	in MENU	Playing	Rainbow Six Siege	f	\N	1626370291002	\N
281381884460662785	\N	\N	\N	Custom	Custom Status	f	why does everyone i want to talk to hate me :(	1626370296316	\N
708309251562405908	\N	\N	\N	Custom	Custom Status	f	Wird aus Russland zurückgedrängt	1626370297647	\N
708309251562405908	445956193924546560	446301881636225042	Completing a TRAINING GROUNDS mission	Playing	Rainbow Six Siege	f	\N	1626370297657	\N
206955935229280256	\N	\N	\N	Playing	%help || GC: 108038 || UC: 171980 || VC: 2 || Version: 5.9.0	f	\N	1626370302767	\N
281381884460662785	\N	\N	\N	Custom	Custom Status	f	why does everyone i want to talk to hate me :(	1626370306351	\N
281381884460662785	\N	\N	\N	Custom	Custom Status	f	why does everyone i want to talk to hate me :(	1626370356322	\N
202407278618476545	\N	\N	\N	Custom	Custom Status	f	defekt aber nett	1626370362978	\N
202407278618476545	445956193924546560	446301881636225042	DISCOVERY match - Round 1 / 4	Playing	Rainbow Six Siege	f	\N	1626370362991	\N
202407278618476545	\N	spotify:ab67616d0000b2736c81650e70bf2679e1fa03f7	Family Matters	Listening	Spotify	t	Marcin Przybyłowicz	1626370362478	1626370468360
281381884460662785	\N	\N	\N	Custom	Custom Status	f	why does everyone i want to talk to hate me :(	1626370456471	\N
361914328703696896	\N	\N	\N	Custom	Custom Status	f	\N	1626370456582	\N
361914328703696896	\N	spotify:ab67616d0000b2739211aff01fe46baf84da475c	Nothing Breaks Like A Heart	Listening	Spotify	t	Ten Fé	1626370459221	1626370655532
202407278618476545	\N	\N	\N	Custom	Custom Status	f	defekt aber nett	1626370468865	\N
281381884460662785	\N	\N	\N	Custom	Custom Status	f	why does everyone i want to talk to hate me :(	1626370476437	\N
361914328703696896	\N	spotify:ab67616d0000b27309545e98d9172b05b28f5c0a	Cliché	Listening	Spotify	t	Sub Urban	1626375268499	1626375445422
403571252402585601	\N	\N	\N	Custom	Custom Status	f	\N	1626375364385	\N
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626375365409	\N
423162525350363136	\N	spotify:ab67616d0000b273eb6f61d93514dfe530616a68	Animals	Listening	Spotify	t	Martin Garrix	1626375330751	1626375634979
423162525350363136	\N	spotify:ab67616d0000b273eb6f61d93514dfe530616a68	Animals	Listening	Spotify	t	Martin Garrix	1626375281922	1626375586150
368355102949376000	\N	spotify:ab67616d0000b27335e64a6f05f6679c5b2f61e2	und der Fluch des Rubins - Des Rätsels Lösung, Teil 1	Listening	Spotify	t	Die drei ???; Tim Grobe	1626375388347	1626375488670
423162525350363136	\N	spotify:ab67616d0000b273442b53773d50e1b5369bb16c	Sugar	Listening	Spotify	t	Maroon 5	1626375347255	1626375582748
202407278618476545	\N	spotify:ab67616d0000b2736c81650e70bf2679e1fa03f7	Silver For Monsters...	Listening	Spotify	t	Percival; Marcin Przybyłowicz	1626375406728	1626375546673
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626375421934	\N
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626375440551	\N
361914328703696896	\N	\N	\N	Custom	Custom Status	f	\N	1626375454395	\N
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626375481972	\N
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626375537338	\N
403571252402585601	\N	spotify:ab67616d0000b273508d1c07113a358443787abd	10 Jahre	Listening	Spotify	t	Gzuz; LX; Bonez MC; Maxwell	1626375550073	1626375777760
202407278618476545	\N	spotify:ab67616d0000b273e0976dbb561453c9081e43fe	Powered Down	Listening	Spotify	t	JD Mayer	1626375546608	1626375754569
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626375579220	\N
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626375691861	\N
361914328703696896	356944273133928458	\N	\N	Playing	Brawlhalla	f	\N	1626375699184	\N
223666520943886336	463097721130188830	513734690272968717	Ich will Rang 1 werden! | Dead by Daylight	Playing	YouTube	f	HandOfUncut	1626375723710	1626376955000
223666520943886336	463097721130188830	513734690272968717	Ich will Rang 1 werden! | Dead by Daylight	Playing	YouTube	f	HandOfUncut	1626375724628	1626376955000
368355102949376000	\N	spotify:ab67616d0000b27335e64a6f05f6679c5b2f61e2	und der Fluch des Rubins - Des Rätsels Lösung, Teil 4	Listening	Spotify	t	Die drei ???; Tim Grobe	1626375735522	1626375835896
361914328703696896	\N	spotify:ab67616d0000b273a21a30e9850057345cce3182	Waves	Listening	Spotify	t	chloe moriondo	1626375744376	1626375877448
223666520943886336	463097721130188830	513734690272968717	Ich will Rang 1 werden! | Dead by Daylight	Playing	YouTube	f	HandOfUncut	1626375744084	1626376954000
223666520943886336	463097721130188830	513734690272968717	Ich will Rang 1 werden! | Dead by Daylight	Playing	YouTube	f	HandOfUncut	1626375745011	1626376954000
223666520943886336	463097721130188830	513734690272968717	Ich will Rang 1 werden! | Dead by Daylight	Playing	YouTube	f	HandOfUncut	1626375803990	1626376954000
223666520943886336	463097721130188830	513734690272968717	Ich will Rang 1 werden! | Dead by Daylight	Playing	YouTube	f	HandOfUncut	1626375824037	1626376954000
368355102949376000	\N	spotify:ab67616d0000b27335e64a6f05f6679c5b2f61e2	und der Fluch des Rubins - Des Rätsels Lösung, Teil 5	Listening	Spotify	t	Die drei ???; Tim Grobe	1626375835964	1626375933360
223666520943886336	463097721130188830	513734690272968717	Ich will Rang 1 werden! | Dead by Daylight	Playing	YouTube	f	HandOfUncut	1626375844950	1626376954000
223666520943886336	463097721130188830	513734690272968717	Ich will Rang 1 werden! | Dead by Daylight	Playing	YouTube	f	HandOfUncut	1626375863997	1626376954000
361914328703696896	\N	\N	\N	Custom	Custom Status	f	\N	1626375875669	\N
223666520943886336	463097721130188830	513734690272968717	Ich will Rang 1 werden! | Dead by Daylight	Playing	YouTube	f	HandOfUncut	1626375884693	1626376955000
223666520943886336	463097721130188830	513734690272968717	Ich will Rang 1 werden! | Dead by Daylight	Playing	YouTube	f	HandOfUncut	1626375904649	1626376955000
223666520943886336	463097721130188830	513734690272968717	Ich will Rang 1 werden! | Dead by Daylight	Playing	YouTube	f	HandOfUncut	1626375923924	1626376954000
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626375927420	\N
223666520943886336	463097721130188830	513734690272968717	Ich will Rang 1 werden! | Dead by Daylight	Playing	YouTube	f	HandOfUncut	1626375943766	1626376955000
403571252402585601	\N	\N	\N	Custom	Custom Status	f	\N	1626375966498	\N
223666520943886336	463097721130188830	513734690272968717	Ich will Rang 1 werden! | Dead by Daylight	Playing	YouTube	f	HandOfUncut	1626375984276	1626376954000
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626375986566	\N
223666520943886336	463097721130188830	513734690272968717	Ich will Rang 1 werden! | Dead by Daylight	Playing	YouTube	f	HandOfUncut	1626376003772	1626376955000
403571252402585601	\N	spotify:ab67616d0000b27316109174ea85c36bb87f2d88	Topscout	Listening	Spotify	t	Gzuz	1626376014809	1626376162870
223666520943886336	463097721130188830	513734690272968717	Ich will Rang 1 werden! | Dead by Daylight	Playing	YouTube	f	HandOfUncut	1626376024051	1626376954000
361914328703696896	\N	\N	\N	Custom	Custom Status	f	\N	1626376026297	\N
403571252402585601	\N	spotify:ab67616d0000b273400cecaeedd03fc26b879a04	Ruhe nach dem Sturm	Listening	Spotify	t	Bonez MC; RAF Camora	1626376027871	1626376222746
361914328703696896	\N	\N	\N	Custom	Custom Status	f	\N	1626376043500	\N
223666520943886336	463097721130188830	513734690272968717	Ich will Rang 1 werden! | Dead by Daylight	Playing	YouTube	f	HandOfUncut	1626376045039	1626376954000
206955935229280256	\N	\N	\N	Playing	%help || GC: 108038 || UC: 184175 || VC: 3 || Version: 5.9.0	f	\N	1626376050157	\N
223666520943886336	463097721130188830	513734690272968717	Ich will Rang 1 werden! | Dead by Daylight	Playing	YouTube	f	HandOfUncut	1626376064700	1626376955000
223666520943886336	463097721130188830	513734690272968717	Ich will Rang 1 werden! | Dead by Daylight	Playing	YouTube	f	HandOfUncut	1626376084772	1626376955000
223666520943886336	463097721130188830	513734690272968717	Ich will Rang 1 werden! | Dead by Daylight	Playing	YouTube	f	HandOfUncut	1626376104022	1626376954000
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626376105971	\N
202407278618476545	\N	spotify:ab67616d0000b2736582b0de8c4acde5f02f4f51	The Island	Listening	Spotify	t	Mac Quayle	1626376105377	1626376359177
223666520943886336	463097721130188830	513734690272968717	Ich will Rang 1 werden! | Dead by Daylight	Playing	YouTube	f	HandOfUncut	1626376125013	1626376954000
261520809225355264	531450167799447552	531577494935961601	Main Menu	Playing	Insurgency: Sandstorm	t	\N	1626378373811	\N
202407278618476545	445956193924546560	446301881636225042	DISCOVERY match - Round 1 / 4	Playing	Rainbow Six Siege	f	\N	1626370468880	\N
202407278618476545	\N	spotify:ab67616d0000b273eb578e9b387f9880a3d46fd4	Trust Fades	Listening	Spotify	t	Nine Inch Nails	1626370468364	1626370661143
459713629441490945	\N	\N	\N	Custom	Custom Status	f	1:1	1626370471727	\N
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626370498146	\N
368355102949376000	\N	spotify:ab67616d0000b27335e64a6f05f6679c5b2f61e2	und der Fluch des Rubins - Bob hat eine Erleuchtung, Teil 4	Listening	Spotify	t	Die drei ???; Tim Grobe	1626370498846	1626370601459
281381884460662785	\N	\N	\N	Custom	Custom Status	f	why does everyone i want to talk to hate me :(	1626370526511	\N
459713629441490945	\N	\N	\N	Custom	Custom Status	f	1:1	1626370531733	\N
223666520943886336	359508713658253318	\N	\N	Playing	Euro Truck Simulator 2	f	\N	1626370535241	\N
223666520943886336	463097721130188830	513734690272968717	Ich will Rang 1 werden! | Dead by Daylight	Playing	YouTube	f	HandOfUncut	1626370535936	\N
281381884460662785	\N	\N	\N	Custom	Custom Status	f	why does everyone i want to talk to hate me :(	1626370536382	\N
271659253486452736	\N	\N	\N	Custom	Custom Status	f	Whoa, I got two hands! Brujo, I need two beers!	1626370541768	\N
271659253486452736	\N	\N	\N	Custom	Custom Status	f	Whoa, I got two hands! Brujo, I need two beers!	1626370541896	\N
271659253486452736	\N	\N	\N	Custom	Custom Status	f	Whoa, I got two hands! Brujo, I need two beers!	1626370551741	\N
281381884460662785	\N	\N	\N	Custom	Custom Status	f	why does everyone i want to talk to hate me :(	1626370556513	\N
271659253486452736	\N	\N	\N	Custom	Custom Status	f	Whoa, I got two hands! Brujo, I need two beers!	1626370562248	\N
206955935229280256	\N	\N	\N	Playing	%help || GC: 108039 || UC: 172651 || VC: 2 || Version: 5.9.0	f	\N	1626370564092	\N
281381884460662785	\N	\N	\N	Custom	Custom Status	f	why does everyone i want to talk to hate me :(	1626370566446	\N
271659253486452736	\N	\N	\N	Custom	Custom Status	f	Whoa, I got two hands! Brujo, I need two beers!	1626370573000	\N
202407278618476545	\N	\N	\N	Custom	Custom Status	f	defekt aber nett	1626370582728	\N
202407278618476545	445956193924546560	446301881636225042	in MENU	Playing	Rainbow Six Siege	f	\N	1626370582738	\N
271659253486452736	\N	\N	\N	Custom	Custom Status	f	Whoa, I got two hands! Brujo, I need two beers!	1626370586005	\N
281381884460662785	\N	\N	\N	Custom	Custom Status	f	why does everyone i want to talk to hate me :(	1626370586516	\N
271659253486452736	\N	\N	\N	Custom	Custom Status	f	Whoa, I got two hands! Brujo, I need two beers!	1626370594919	\N
368355102949376000	\N	spotify:ab67616d0000b27335e64a6f05f6679c5b2f61e2	und der Fluch des Rubins - Bob hat eine Erleuchtung, Teil 5	Listening	Spotify	t	Die drei ???; Tim Grobe	1626370601440	1626370701439
281381884460662785	\N	\N	\N	Custom	Custom Status	f	why does everyone i want to talk to hate me :(	1626370606587	\N
202407278618476545	\N	\N	\N	Custom	Custom Status	f	defekt aber nett	1626370613448	\N
202407278618476545	445956193924546560	446301881636225042	Looking for QUICK MATCH match	Playing	Rainbow Six Siege	f	\N	1626370613459	\N
202407278618476545	\N	\N	\N	Custom	Custom Status	f	defekt aber nett	1626370617442	\N
202407278618476545	445956193924546560	446301881636225042	Looking for QUICK MATCH match	Playing	Rainbow Six Siege	f	\N	1626370617453	\N
202407278618476545	\N	spotify:ab67616d0000b2736c81650e70bf2679e1fa03f7	Back On The Path	Listening	Spotify	t	Marcin Przybyłowicz; Percival	1626370616910	1626370778011
202407278618476545	\N	\N	\N	Custom	Custom Status	f	defekt aber nett	1626370626971	\N
202407278618476545	445956193924546560	446301881636225042	Looking for QUICK MATCH match	Playing	Rainbow Six Siege	f	\N	1626370626981	\N
384759010332770307	\N	\N	\N	Custom	Custom Status	f	Born to shit, forced to wipe...	1626370629430	\N
202407278618476545	\N	\N	\N	Custom	Custom Status	f	defekt aber nett	1626370633416	\N
202407278618476545	445956193924546560	446301881636225042	QUICK MATCH match - Round 1 / 4	Playing	Rainbow Six Siege	f	\N	1626370633423	\N
361914328703696896	\N	\N	\N	Custom	Custom Status	f	\N	1626370653398	\N
361914328703696896	\N	spotify:ab67616d0000b273691253f50c8d0c3a2d52363f	Wishful Drinking	Listening	Spotify	t	Tessa Violet	1626370656091	1626370851201
281381884460662785	\N	\N	\N	Custom	Custom Status	f	why does everyone i want to talk to hate me :(	1626370656559	\N
361914328703696896	\N	\N	\N	Custom	Custom Status	f	\N	1626370677652	\N
368355102949376000	\N	spotify:ab67616d0000b27335e64a6f05f6679c5b2f61e2	und der Fluch des Rubins - Bob hat eine Erleuchtung, Teil 6	Listening	Spotify	t	Die drei ???; Tim Grobe	1626370701426	1626370809748
281381884460662785	\N	\N	\N	Custom	Custom Status	f	why does everyone i want to talk to hate me :(	1626370726702	\N
281381884460662785	530196305138417685	530196467688931339	Playing	Playing	PLAYERUNKNOWN'S BATTLEGROUNDS	t	\N	1626369049000	\N
281381884460662785	\N	\N	\N	Custom	Custom Status	f	why does everyone i want to talk to hate me :(	1626370736952	\N
281381884460662785	530196305138417685	530196467688931339	In Lobby	Playing	PLAYERUNKNOWN'S BATTLEGROUNDS	t	\N	1626370736962	\N
368355102949376000	\N	spotify:ab67616d0000b27335e64a6f05f6679c5b2f61e2	und der Fluch des Rubins - Bob hat eine Erleuchtung, Teil 7	Listening	Spotify	t	Die drei ???; Tim Grobe	1626370809755	1626370928674
281381884460662785	\N	\N	\N	Custom	Custom Status	f	why does everyone i want to talk to hate me :(	1626370839546	\N
281381884460662785	530196305138417685	699492980658012270	Vikendi, 82/82	Playing	PLAYERUNKNOWN'S BATTLEGROUNDS	t	4 Squad	1626370839557	\N
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626370842006	\N
371656565607890964	361968954954219521	784165615006777374	Gorodok	Playing	Squad	t	\N	1626370842000	\N
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626370842925	\N
371656565607890964	361968954954219521	784165615006777374	[Ger]  Operation Ko... - Gorodok (6/98)	Playing	Squad	t	\N	1626370659000	\N
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626370846714	\N
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626370846850	\N
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626370847226	\N
361914328703696896	\N	\N	\N	Custom	Custom Status	f	\N	1626370849076	\N
361914328703696896	\N	spotify:ab67616d0000b27365e13a371ef600f3e0db2ede	S.o.s	Listening	Spotify	t	David Alexander	1626370851641	1626371033378
281381884460662785	\N	\N	\N	Custom	Custom Status	f	why does everyone i want to talk to hate me :(	1626370849117	\N
281381884460662785	530196305138417685	699492980658012270	Vikendi, 94/94	Playing	PLAYERUNKNOWN'S BATTLEGROUNDS	t	4 Squad	1626370849121	\N
281381884460662785	\N	\N	\N	Custom	Custom Status	f	why does everyone i want to talk to hate me :(	1626370859208	\N
281381884460662785	530196305138417685	699492980658012270	Vikendi, 95/95	Playing	PLAYERUNKNOWN'S BATTLEGROUNDS	t	4 Squad	1626370859218	\N
281381884460662785	\N	\N	\N	Custom	Custom Status	f	why does everyone i want to talk to hate me :(	1626370869347	\N
281381884460662785	530196305138417685	699492980658012270	Vikendi, 96/96	Playing	PLAYERUNKNOWN'S BATTLEGROUNDS	t	4 Squad	1626370869378	\N
206955935229280256	\N	\N	\N	Playing	%help || GC: 108040 || UC: 173392 || VC: 2 || Version: 5.9.0	f	\N	1626370876411	\N
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626370900885	\N
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626370903957	\N
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626370906004	\N
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626370908603	\N
281381884460662785	\N	\N	\N	Custom	Custom Status	f	why does everyone i want to talk to hate me :(	1626370909389	\N
281381884460662785	530196305138417685	699492980658012270	Vikendi, 95/95	Playing	PLAYERUNKNOWN'S BATTLEGROUNDS	t	4 Squad	1626370906000	\N
368355102949376000	\N	spotify:ab67616d0000b27335e64a6f05f6679c5b2f61e2	und der Fluch des Rubins - Bob hat eine Erleuchtung, Teil 8	Listening	Spotify	t	Die drei ???; Tim Grobe	1626370928826	1626371057154
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626370934677	\N
371656565607890964	361968954954219521	365271016341110784	\N	Playing	Squad	t	\N	1626370934687	\N
302519349489434624	\N	\N	\N	Custom	Custom Status	f	\N	1626370938976	\N
281381884460662785	\N	\N	\N	Custom	Custom Status	f	why does everyone i want to talk to hate me :(	1626370939386	\N
281381884460662785	530196305138417685	699492980658012270	Vikendi, 95/95	Playing	PLAYERUNKNOWN'S BATTLEGROUNDS	t	4 Squad	1626370905000	\N
302519349489434624	\N	\N	\N	Custom	Custom Status	f	\N	1626370940370	\N
281381884460662785	\N	\N	\N	Custom	Custom Status	f	why does everyone i want to talk to hate me :(	1626370949319	\N
459713629441490945	\N	\N	\N	Custom	Custom Status	f	1:1	1626370956180	\N
281381884460662785	\N	\N	\N	Custom	Custom Status	f	why does everyone i want to talk to hate me :(	1626370979425	\N
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626370989266	\N
371656565607890964	361968954954219521	784165615006777374	Gorodok	Playing	Squad	t	\N	1626370990000	\N
281381884460662785	\N	\N	\N	Custom	Custom Status	f	why does everyone i want to talk to hate me :(	1626370989316	\N
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626370991610	\N
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626370991664	\N
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626370991785	\N
281381884460662785	\N	\N	\N	Custom	Custom Status	f	why does everyone i want to talk to hate me :(	1626370999290	\N
281381884460662785	\N	\N	\N	Custom	Custom Status	f	why does everyone i want to talk to hate me :(	1626371009427	\N
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626371010042	\N
281381884460662785	\N	\N	\N	Custom	Custom Status	f	why does everyone i want to talk to hate me :(	1626371029293	\N
361914328703696896	\N	\N	\N	Custom	Custom Status	f	\N	1626371031254	\N
361914328703696896	\N	spotify:ab67616d0000b273991fc74daa3ee724afcb4766	Ways to Fall Apart	Listening	Spotify	t	DYSN	1626371033843	1626371237348
206955935229280256	\N	\N	\N	Playing	%help || GC: 108039 || UC: 173759 || VC: 3 || Version: 5.9.0	f	\N	1626371035232	\N
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626371038100	\N
281381884460662785	\N	\N	\N	Custom	Custom Status	f	why does everyone i want to talk to hate me :(	1626371049480	\N
281381884460662785	\N	\N	\N	Custom	Custom Status	f	why does everyone i want to talk to hate me :(	1626371059296	\N
206955935229280256	\N	\N	\N	Playing	%help || GC: 108038 || UC: 173809 || VC: 1 || Version: 5.9.0	f	\N	1626371060116	\N
281381884460662785	\N	\N	\N	Custom	Custom Status	f	why does everyone i want to talk to hate me :(	1626371069331	\N
206955935229280256	\N	\N	\N	Playing	%help || GC: 108039 || UC: 173836 || VC: 1 || Version: 5.9.0	f	\N	1626371075578	\N
281381884460662785	\N	\N	\N	Custom	Custom Status	f	why does everyone i want to talk to hate me :(	1626371079469	\N
281381884460662785	\N	\N	\N	Custom	Custom Status	f	why does everyone i want to talk to hate me :(	1626371089412	\N
361914328703696896	\N	\N	\N	Custom	Custom Status	f	\N	1626371098515	\N
281381884460662785	\N	\N	\N	Custom	Custom Status	f	why does everyone i want to talk to hate me :(	1626371099335	\N
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626371101690	\N
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626371109370	\N
281381884460662785	\N	\N	\N	Custom	Custom Status	f	why does everyone i want to talk to hate me :(	1626371109369	\N
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626371111726	\N
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626371113773	\N
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626371114899	\N
281381884460662785	\N	\N	\N	Custom	Custom Status	f	why does everyone i want to talk to hate me :(	1626371119406	\N
368355102949376000	\N	spotify:ab67616d0000b27335e64a6f05f6679c5b2f61e2	und der Fluch des Rubins - Mädchenstimme am Telefon, Teil 1	Listening	Spotify	t	Die drei ???; Tim Grobe	1626371118005	1626371217107
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626371122067	\N
281381884460662785	\N	\N	\N	Custom	Custom Status	f	why does everyone i want to talk to hate me :(	1626371129442	\N
206955935229280256	\N	\N	\N	Playing	%help || GC: 108038 || UC: 173950 || VC: 2 || Version: 5.9.0	f	\N	1626371131693	\N
673945530019217430	\N	\N	\N	Playing	🍞 commands for info	f	\N	1626371132717	\N
281381884460662785	\N	\N	\N	Custom	Custom Status	f	why does everyone i want to talk to hate me :(	1626371139373	\N
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626371141626	\N
281381884460662785	\N	\N	\N	Custom	Custom Status	f	why does everyone i want to talk to hate me :(	1626371149305	\N
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626371150351	\N
202407278618476545	\N	\N	\N	Custom	Custom Status	f	defekt aber nett	1626371158113	\N
202407278618476545	445956193924546560	446301881636225042	QUICK MATCH match - Round 1 / 4	Playing	Rainbow Six Siege	f	\N	1626371158123	\N
202407278618476545	\N	spotify:ab67616d0000b27326a3ebdb4e994b45773488ed	Hearts Of Stone	Listening	Spotify	t	Marcin Przybyłowicz	1626371157601	1626371331172
281381884460662785	\N	\N	\N	Custom	Custom Status	f	why does everyone i want to talk to hate me :(	1626371159443	\N
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626371169990	\N
281381884460662785	\N	\N	\N	Custom	Custom Status	f	why does everyone i want to talk to hate me :(	1626371179411	\N
271659253486452736	\N	\N	\N	Custom	Custom Status	f	Whoa, I got two hands! Brujo, I need two beers!	1626375268846	\N
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626375325065	\N
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626375353531	\N
281381884460662785	\N	\N	\N	Custom	Custom Status	f	why does everyone i want to talk to hate me :(	1626375369450	\N
281381884460662785	\N	\N	\N	Custom	Custom Status	f	why does everyone i want to talk to hate me :(	1626375370120	\N
281381884460662785	\N	\N	\N	Custom	Custom Status	f	why does everyone i want to talk to hate me :(	1626375370939	\N
281381884460662785	\N	\N	\N	Custom	Custom Status	f	why does everyone i want to talk to hate me :(	1626375371861	\N
281381884460662785	\N	\N	\N	Custom	Custom Status	f	why does everyone i want to talk to hate me :(	1626375372476	\N
423162525350363136	\N	spotify:ab67616d0000b273eb6f61d93514dfe530616a68	Animals	Listening	Spotify	t	Martin Garrix	1626375375056	1626375679284
423162525350363136	\N	spotify:ab67616d0000b273eb6f61d93514dfe530616a68	Animals	Listening	Spotify	t	Martin Garrix	1626375312304	1626375616532
423162525350363136	\N	spotify:ab67616d0000b273442b53773d50e1b5369bb16c	Animals	Listening	Spotify	t	Maroon 5	1626375384140	1626375615153
423162525350363136	\N	spotify:ab67616d0000b273442b53773d50e1b5369bb16c	Sugar	Listening	Spotify	t	Maroon 5	1626375404452	1626375639945
423162525350363136	\N	spotify:ab67616d0000b273a326968b5822fc237a04d52d	Paradise	Listening	Spotify	t	Sam Blacky	1626375412236	1626375579655
361914328703696896	\N	\N	\N	Custom	Custom Status	f	\N	1626375443848	\N
368355102949376000	\N	spotify:ab67616d0000b27335e64a6f05f6679c5b2f61e2	und der Fluch des Rubins - Des Rätsels Lösung, Teil 2	Listening	Spotify	t	Die drei ???; Tim Grobe	1626375518552	1626375622761
423162525350363136	\N	spotify:ab67616d0000b273e2b8011b024ff03eb6cbf30e	Shooting Star	Listening	Spotify	t	PALASTIC; Nina Chuba	1626375571354	1626375751654
281381884460662785	\N	\N	\N	Custom	Custom Status	f	why does everyone i want to talk to hate me :(	1626375608404	\N
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626375616596	\N
280050308611309569	\N	\N	\N	Playing	Mass Effect™ Legendary Edition	f	\N	1626375618736	\N
280050308611309569	\N	\N	\N	Playing	Mass Effect™ Legendary Edition	f	\N	1626375643903	\N
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626375666466	\N
281381884460662785	\N	\N	\N	Custom	Custom Status	f	why does everyone i want to talk to hate me :(	1626375667079	\N
361914328703696896	\N	spotify:ab67616d0000b2739eac1309cf19adbb9ad94b84	Why Can't I Have You	Listening	Spotify	t	Gloria Laing	1626375460703	1626375745912
223666520943886336	463097721130188830	513734690272968717	Ich will Rang 1 werden! | Dead by Daylight	Playing	YouTube	f	HandOfUncut	1626375763745	1626376955000
223666520943886336	463097721130188830	513734690272968717	Ich will Rang 1 werden! | Dead by Daylight	Playing	YouTube	f	HandOfUncut	1626375764667	1626376955000
459713629441490945	\N	\N	\N	Custom	Custom Status	f	1:1	1626375769070	\N
403571252402585601	\N	\N	\N	Custom	Custom Status	f	\N	1626375773780	\N
423162525350363136	\N	\N	\N	Playing	Transport Fever 2	f	\N	1626375777939	\N
223666520943886336	463097721130188830	513734690272968717	Ich will Rang 1 werden! | Dead by Daylight	Playing	YouTube	f	HandOfUncut	1626375784020	1626376954000
223666520943886336	463097721130188830	513734690272968717	Ich will Rang 1 werden! | Dead by Daylight	Playing	YouTube	f	HandOfUncut	1626375784977	1626376954000
223666520943886336	357607133254254632	\N	\N	Playing	Dead by Daylight	f	\N	1626375794337	\N
223666520943886336	463097721130188830	513734690272968717	Ich will Rang 1 werden! | Dead by Daylight	Playing	YouTube	f	HandOfUncut	1626375803683	1626376955000
223666520943886336	463097721130188830	513734690272968717	Ich will Rang 1 werden! | Dead by Daylight	Playing	YouTube	f	HandOfUncut	1626375823753	1626376955000
223666520943886336	463097721130188830	513734690272968717	Ich will Rang 1 werden! | Dead by Daylight	Playing	YouTube	f	HandOfUncut	1626375844643	1626376955000
223666520943886336	463097721130188830	513734690272968717	Ich will Rang 1 werden! | Dead by Daylight	Playing	YouTube	f	HandOfUncut	1626375863690	1626376955000
325704347767799808	614380482620293151	\N	\N	Playing	Bloons TD 6	f	\N	1626375882906	\N
223666520943886336	463097721130188830	513734690272968717	Ich will Rang 1 werden! | Dead by Daylight	Playing	YouTube	f	HandOfUncut	1626375883873	1626376955000
223666520943886336	463097721130188830	513734690272968717	Ich will Rang 1 werden! | Dead by Daylight	Playing	YouTube	f	HandOfUncut	1626375903727	1626376955000
202407278618476545	\N	spotify:ab67616d0000b2732472601180911ff89445cbc8	Cleric Beast	Listening	Spotify	t	SIE Sound Team	1626375920746	1626376105466
223666520943886336	463097721130188830	513734690272968717	Ich will Rang 1 werden! | Dead by Daylight	Playing	YouTube	f	HandOfUncut	1626375925074	1626376954000
223666520943886336	463097721130188830	513734690272968717	Ich will Rang 1 werden! | Dead by Daylight	Playing	YouTube	f	HandOfUncut	1626375944687	1626376955000
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626375958304	\N
223666520943886336	463097721130188830	513734690272968717	Ich will Rang 1 werden! | Dead by Daylight	Playing	YouTube	f	HandOfUncut	1626375963733	1626376955000
223666520943886336	463097721130188830	513734690272968717	Ich will Rang 1 werden! | Dead by Daylight	Playing	YouTube	f	HandOfUncut	1626375964655	1626376955000
223666520943886336	463097721130188830	513734690272968717	Ich will Rang 1 werden! | Dead by Daylight	Playing	YouTube	f	HandOfUncut	1626375965066	1626376954000
223666520943886336	463097721130188830	513734690272968717	Ich will Rang 1 werden! | Dead by Daylight	Playing	YouTube	f	HandOfUncut	1626375985043	1626376954000
223666520943886336	463097721130188830	513734690272968717	Ich will Rang 1 werden! | Dead by Daylight	Playing	YouTube	f	HandOfUncut	1626376004694	1626376955000
403571252402585601	\N	\N	\N	Custom	Custom Status	f	\N	1626376011055	\N
223666520943886336	463097721130188830	513734690272968717	Ich will Rang 1 werden! | Dead by Daylight	Playing	YouTube	f	HandOfUncut	1626376024969	1626376954000
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626376031008	\N
223666520943886336	463097721130188830	513734690272968717	Ich will Rang 1 werden! | Dead by Daylight	Playing	YouTube	f	HandOfUncut	1626376044045	1626376954000
206955935229280256	\N	\N	\N	Playing	%help || GC: 108039 || UC: 184166 || VC: 3 || Version: 5.9.0	f	\N	1626376047090	\N
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626376051590	\N
223666520943886336	463097721130188830	513734690272968717	Ich will Rang 1 werden! | Dead by Daylight	Playing	YouTube	f	HandOfUncut	1626376063675	1626376955000
206955935229280256	\N	\N	\N	Playing	%help || GC: 108035 || UC: 170267 || VC: 2 || Version: 5.9.0	f	\N	1626378376575	\N
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626371167430	\N
311607742542381068	\N	\N	\N	Custom	Custom Status	f	If I continue like this I will die before I am 30, the doctors said	1626371170719	\N
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626375362542	\N
403571252402585601	\N	spotify:ab67616d0000b27359c82301b3fb8b1c829182c2	Super Lemon Haze	Listening	Spotify	t	LX; Maxwell	1626375368942	1626375549587
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626375433403	\N
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626375449991	\N
361914328703696896	\N	spotify:ab67616d0000b273f113045fd418c5802647d45d	Losing My Love	Listening	Spotify	t	Verzache	1626375456547	1626375630278
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626375559457	\N
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626375601031	\N
281381884460662785	\N	spotify:ab67616d0000b2736f754c78ad0a1cb7fa2d6c4f	Bonkers	Listening	Spotify	t	Dizzee Rascal; Armand Van Helden	1626375609832	1626375787405
368355102949376000	\N	spotify:ab67616d0000b27335e64a6f05f6679c5b2f61e2	und der Fluch des Rubins - Des Rätsels Lösung, Teil 3	Listening	Spotify	t	Die drei ???; Tim Grobe	1626375623032	1626375735542
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626375636565	\N
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626375667081	\N
361914328703696896	\N	\N	\N	Custom	Custom Status	f	\N	1626375716251	\N
223666520943886336	463097721130188830	513734690272968717	Ich will Rang 1 werden! | Dead by Daylight	Playing	YouTube	f	HandOfUncut	1626375723092	1626376954000
223666520943886336	463097721130188830	513734690272968717	Ich will Rang 1 werden! | Dead by Daylight	Playing	YouTube	f	HandOfUncut	1626375723923	1626376954000
223666520943886336	463097721130188830	513734690272968717	Ich will Rang 1 werden! | Dead by Daylight	Playing	YouTube	f	HandOfUncut	1626375725037	1626376954000
361914328703696896	\N	\N	\N	Custom	Custom Status	f	\N	1626375742037	\N
223666520943886336	463097721130188830	513734690272968717	Ich will Rang 1 werden! | Dead by Daylight	Playing	YouTube	f	HandOfUncut	1626375743778	1626376955000
223666520943886336	463097721130188830	513734690272968717	Ich will Rang 1 werden! | Dead by Daylight	Playing	YouTube	f	HandOfUncut	1626375744698	1626376955000
202407278618476545	\N	\N	\N	Custom	Custom Status	f	defekt aber nett	1626375755348	\N
403571252402585601	\N	spotify:ab67616d0000b27377668f0673e28296429f6914	¿ Warum ?	Listening	Spotify	t	Gzuz	1626375778236	1626375970490
223666520943886336	463097721130188830	513734690272968717	Ich will Rang 1 werden! | Dead by Daylight	Playing	YouTube	f	HandOfUncut	1626375804709	1626376955000
223666520943886336	463097721130188830	513734690272968717	Ich will Rang 1 werden! | Dead by Daylight	Playing	YouTube	f	HandOfUncut	1626375824777	1626376955000
223666520943886336	463097721130188830	513734690272968717	Ich will Rang 1 werden! | Dead by Daylight	Playing	YouTube	f	HandOfUncut	1626375843721	1626376955000
223666520943886336	463097721130188830	513734690272968717	Ich will Rang 1 werden! | Dead by Daylight	Playing	YouTube	f	HandOfUncut	1626375864714	1626376955000
223666520943886336	463097721130188830	513734690272968717	Ich will Rang 1 werden! | Dead by Daylight	Playing	YouTube	f	HandOfUncut	1626375883923	1626376954000
223666520943886336	463097721130188830	513734690272968717	Ich will Rang 1 werden! | Dead by Daylight	Playing	YouTube	f	HandOfUncut	1626375904035	1626376954000
202407278618476545	\N	\N	\N	Custom	Custom Status	f	defekt aber nett	1626375921473	\N
223666520943886336	463097721130188830	513734690272968717	Ich will Rang 1 werden! | Dead by Daylight	Playing	YouTube	f	HandOfUncut	1626375923798	1626376955000
368355102949376000	\N	spotify:ab67616d0000b27335e64a6f05f6679c5b2f61e2	und der Fluch des Rubins - Des Rätsels Lösung, Teil 6	Listening	Spotify	t	Die drei ???; Tim Grobe	1626375933346	1626376038080
223666520943886336	463097721130188830	513734690272968717	Ich will Rang 1 werden! | Dead by Daylight	Playing	YouTube	f	HandOfUncut	1626375944994	1626376954000
223666520943886336	463097721130188830	513734690272968717	Ich will Rang 1 werden! | Dead by Daylight	Playing	YouTube	f	HandOfUncut	1626375964040	1626376954000
403571252402585601	\N	\N	\N	Custom	Custom Status	f	\N	1626375964653	\N
403571252402585601	\N	spotify:ab67616d0000b273ebd4538e6787f7d7950d663d	Von ihnen gelernt	Listening	Spotify	t	Bonez MC; RAF Camora	1626375970943	1626376203067
223666520943886336	463097721130188830	513734690272968717	Ich will Rang 1 werden! | Dead by Daylight	Playing	YouTube	f	HandOfUncut	1626375984009	1626376955000
361914328703696896	\N	spotify:ab67616d0000b2735b21c595586c237f0e71a041	The End	Listening	Spotify	t	Osias; Jakk.	1626376000137	1626376152178
223666520943886336	463097721130188830	513734690272968717	Ich will Rang 1 werden! | Dead by Daylight	Playing	YouTube	f	HandOfUncut	1626376005001	1626376954000
403571252402585601	\N	\N	\N	Custom	Custom Status	f	\N	1626376014625	\N
223666520943886336	463097721130188830	513734690272968717	Ich will Rang 1 werden! | Dead by Daylight	Playing	YouTube	f	HandOfUncut	1626376023842	1626376955000
368355102949376000	\N	spotify:ab67616d0000b27335e64a6f05f6679c5b2f61e2	und der Fluch des Rubins - Des Rätsels Lösung, Teil 7	Listening	Spotify	t	Die drei ???; Tim Grobe	1626376038009	1626376134177
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626376042068	\N
223666520943886336	463097721130188830	513734690272968717	Ich will Rang 1 werden! | Dead by Daylight	Playing	YouTube	f	HandOfUncut	1626376044732	1626376955000
223666520943886336	463097721130188830	513734690272968717	Ich will Rang 1 werden! | Dead by Daylight	Playing	YouTube	f	HandOfUncut	1626376064037	1626376954000
206955935229280256	\N	\N	\N	Playing	%help || GC: 108037 || UC: 184206 || VC: 3 || Version: 5.9.0	f	\N	1626376067257	\N
223666520943886336	463097721130188830	513734690272968717	Ich will Rang 1 werden! | Dead by Daylight	Playing	YouTube	f	HandOfUncut	1626376083974	1626376954000
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626376086508	\N
223666520943886336	463097721130188830	513734690272968717	Ich will Rang 1 werden! | Dead by Daylight	Playing	YouTube	f	HandOfUncut	1626376103714	1626376955000
403571252402585601	\N	\N	\N	Custom	Custom Status	f	\N	1626376104717	\N
223666520943886336	463097721130188830	513734690272968717	Ich will Rang 1 werden! | Dead by Daylight	Playing	YouTube	f	HandOfUncut	1626376124706	1626376955000
403571252402585601	\N	\N	\N	Custom	Custom Status	f	\N	1626376130027	\N
223666520943886336	463097721130188830	513734690272968717	Ich will Rang 1 werden! | Dead by Daylight	Playing	YouTube	f	HandOfUncut	1626376144675	1626376955000
403571252402585601	445956193924546560	446301881636225042	in MENU	Playing	Rainbow Six Siege	f	\N	1626376150617	\N
403571252402585601	\N	\N	\N	Custom	Custom Status	f	\N	1626376150688	\N
361914328703696896	\N	\N	\N	Custom	Custom Status	f	\N	1626376160953	\N
263407413737160718	\N	\N	\N	Custom	Custom Status	f	write this down	1626382960703	\N
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626371167943	\N
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626371171219	\N
223666520943886336	463097721130188830	513734690272968717	Ich will Rang 1 werden! | Dead by Daylight	Playing	YouTube	f	HandOfUncut	1626375984725	1626376955000
361914328703696896	\N	\N	\N	Custom	Custom Status	f	\N	1626375997830	\N
223666520943886336	463097721130188830	513734690272968717	Ich will Rang 1 werden! | Dead by Daylight	Playing	YouTube	f	HandOfUncut	1626376004010	1626376954000
403571252402585601	\N	\N	\N	Custom	Custom Status	f	\N	1626376010323	\N
223666520943886336	463097721130188830	513734690272968717	Ich will Rang 1 werden! | Dead by Daylight	Playing	YouTube	f	HandOfUncut	1626376024662	1626376955000
403571252402585601	\N	\N	\N	Custom	Custom Status	f	\N	1626376030291	\N
206955935229280256	\N	\N	\N	Playing	%help || GC: 108038 || UC: 184151 || VC: 3 || Version: 5.9.0	f	\N	1626376041356	\N
223666520943886336	463097721130188830	513734690272968717	Ich will Rang 1 werden! | Dead by Daylight	Playing	YouTube	f	HandOfUncut	1626376043607	1626376955000
223666520943886336	463097721130188830	513734690272968717	Ich will Rang 1 werden! | Dead by Daylight	Playing	YouTube	f	HandOfUncut	1626376065008	1626376954000
223666520943886336	463097721130188830	513734690272968717	Ich will Rang 1 werden! | Dead by Daylight	Playing	YouTube	f	HandOfUncut	1626376085104	1626376954000
223666520943886336	463097721130188830	513734690272968717	Ich will Rang 1 werden! | Dead by Daylight	Playing	YouTube	f	HandOfUncut	1626376104634	1626376955000
202407278618476545	\N	\N	\N	Custom	Custom Status	f	defekt aber nett	1626376106071	\N
403571252402585601	445956193924546560	446301881636225042	in MENU	Playing	Rainbow Six Siege	f	\N	1626376113757	\N
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626376120710	\N
223666520943886336	463097721130188830	513734690272968717	Ich will Rang 1 werden! | Dead by Daylight	Playing	YouTube	f	HandOfUncut	1626376123682	1626376955000
325704347767799808	\N	\N	\N	Playing	Armored Warfare	f	\N	1626376128004	\N
403571252402585601	445956193924546560	446301881636225042	Looking for DISCOVERY match	Playing	Rainbow Six Siege	f	\N	1626376130037	\N
223666520943886336	463097721130188830	513734690272968717	Ich will Rang 1 werden! | Dead by Daylight	Playing	YouTube	f	HandOfUncut	1626376143652	1626376955000
223666520943886336	463097721130188830	513734690272968717	Ich will Rang 1 werden! | Dead by Daylight	Playing	YouTube	f	HandOfUncut	1626376143926	1626376954000
403571252402585601	\N	\N	\N	Custom	Custom Status	f	\N	1626376146412	\N
403571252402585601	445956193924546560	446301881636225042	in MENU	Playing	Rainbow Six Siege	f	\N	1626376150692	\N
361914328703696896	\N	\N	\N	Custom	Custom Status	f	\N	1626376150771	\N
361914328703696896	\N	spotify:ab67616d0000b27346fd34c6a67dd548eac0cce7	K33P OUT	Listening	Spotify	t	TJ_beastboy	1626376163576	1626376329576
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626378388557	\N
708309251562405908	445956193924546560	446301881636225042	in MENU	Playing	Rainbow Six Siege	f	\N	1626378417648	\N
368355102949376000	\N	spotify:ab67616d0000b273ed42764d7a610b661a216504	204 - Der dunkle Wächter - Inhaltsangabe	Listening	Spotify	t	Die drei ???	1626378475496	1626378502202
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626378492799	\N
681192725152006160	401518684763586560	416719019576393738	Howling Abyss (ARAM)	Playing	League of Legends	f	In Champion Select	1626378519116	\N
403571252402585601	445956193924546560	446301881636225042	in MENU	Playing	Rainbow Six Siege	f	\N	1626378528450	\N
361914328703696896	\N	spotify:ab67616d0000b273521a220fff194eafd39c0f66	Mag ja sein..	Listening	Spotify	t	TJ_beastboy; Mary Man; Sierra Kidd	1626378545670	1626378764670
206955935229280256	\N	\N	\N	Playing	%help || GC: 108036 || UC: 170684 || VC: 2 || Version: 5.9.0	f	\N	1626378557973	\N
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626380557075	\N
403571252402585601	\N	\N	\N	Custom	Custom Status	f	\N	1626380584933	\N
403571252402585601	\N	\N	\N	Custom	Custom Status	f	\N	1626380593734	\N
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626380639506	\N
411656316814098441	\N	\N	\N	Custom	Custom Status	f	snowfox 😳	1626380652613	\N
206955935229280256	\N	\N	\N	Playing	%help || GC: 108036 || UC: 175460 || VC: 2 || Version: 5.9.0	f	\N	1626380670037	\N
271659253486452736	\N	\N	\N	Custom	Custom Status	f	Whoa, I got two hands! Brujo, I need two beers!	1626380688146	\N
271659253486452736	401518684763586560	416719019576393738	Kluft der Beschwörer	Playing	League of Legends	f	In Championauswahl	1626380781346	\N
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626380788805	\N
281381884460662785	\N	\N	\N	Custom	Custom Status	f	why does everyone i want to talk to hate me :(	1626380807852	\N
325704347767799808	790655993809338398	798617001685024808	Heavygrinder - Break Free (Zardonic Remix)	Playing	YouTube Music	f	Zardonic	1626380843797	\N
325704347767799808	790655993809338398	798617001685024808	Different	Playing	YouTube Music	f	Pendulum	1626380845046	1626381197046
271659253486452736	401518684763586560	403244974558281737	Kluft der Beschwörer	Playing	League of Legends	f	Im Spiel	1626380857000	\N
681192725152006160	356869127241072640	\N	\N	Playing	League of Legends	f	\N	1626379964535	\N
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626380963194	\N
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626381013367	\N
371656565607890964	361968954954219521	365271016341110784	\N	Playing	Squad	t	\N	1626381029154	\N
371656565607890964	361968954954219521	784165598195482654	[Ger]  Operation Ko... - Mutaha (26/98)	Playing	Squad	t	\N	1626381033000	\N
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626381036966	\N
403571252402585601	\N	\N	\N	Custom	Custom Status	f	\N	1626381048081	\N
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626381059252	\N
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626381083620	\N
403571252402585601	\N	\N	\N	Custom	Custom Status	f	\N	1626381135224	\N
403571252402585601	\N	\N	\N	Custom	Custom Status	f	\N	1626381150380	\N
325704347767799808	790655993809338398	798617001685024808	Become God	Playing	YouTube Music	f	GHOST DATA	1626381197012	\N
325704347767799808	790655993809338398	798617001685024808	Become God	Playing	YouTube Music	f	GHOST DATA	1626381197913	1626381480913
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626381227588	\N
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626381232573	\N
281381884460662785	\N	\N	\N	Custom	Custom Status	f	why does everyone i want to talk to hate me :(	1626371169376	\N
311607742542381068	\N	\N	\N	Custom	Custom Status	f	If I continue like this I will die before I am 30, the doctors said	1626371173970	\N
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626371182995	\N
281381884460662785	\N	\N	\N	Custom	Custom Status	f	why does everyone i want to talk to hate me :(	1626371189346	\N
281381884460662785	\N	\N	\N	Custom	Custom Status	f	why does everyone i want to talk to hate me :(	1626371199379	\N
281381884460662785	\N	\N	\N	Custom	Custom Status	f	why does everyone i want to talk to hate me :(	1626371209516	\N
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626371214532	\N
281381884460662785	\N	\N	\N	Custom	Custom Status	f	why does everyone i want to talk to hate me :(	1626371219347	\N
368355102949376000	\N	spotify:ab67616d0000b27335e64a6f05f6679c5b2f61e2	und der Fluch des Rubins - Mädchenstimme am Telefon, Teil 2	Listening	Spotify	t	Die drei ???; Tim Grobe	1626371217460	1626371320161
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626371221600	\N
281381884460662785	\N	\N	\N	Custom	Custom Status	f	why does everyone i want to talk to hate me :(	1626371229382	\N
302519349489434624	\N	\N	\N	Custom	Custom Status	f	\N	1626371238803	\N
281381884460662785	\N	\N	\N	Custom	Custom Status	f	why does everyone i want to talk to hate me :(	1626371239520	\N
403571252402585601	\N	\N	\N	Custom	Custom Status	f	\N	1626371261127	\N
403571252402585601	357607478105604096	\N	\N	Playing	War Thunder	f	\N	1626371266434	\N
403571252402585601	\N	\N	\N	Custom	Custom Status	f	\N	1626371268499	\N
403571252402585601	\N	spotify:ab67616d0000b2732bf6d612cf57f7cf38bb0cfd	Hoodnights	Listening	Spotify	t	BHZ; Ion Miles; Monk; Dead Dawg; Big Pat	1626371201481	1626371415745
281381884460662785	\N	\N	\N	Custom	Custom Status	f	why does everyone i want to talk to hate me :(	1626371269523	\N
403571252402585601	\N	\N	\N	Custom	Custom Status	f	\N	1626371269830	\N
403571252402585601	\N	\N	\N	Custom	Custom Status	f	\N	1626371281094	\N
403571252402585601	\N	spotify:ab67616d0000b273400cecaeedd03fc26b879a04	Dankbarkeit	Listening	Spotify	t	Bonez MC; RAF Camora	1626371279819	1626371489260
206955935229280256	\N	\N	\N	Playing	%help || GC: 108039 || UC: 174313 || VC: 2 || Version: 5.9.0	f	\N	1626371286624	\N
281381884460662785	\N	\N	\N	Custom	Custom Status	f	why does everyone i want to talk to hate me :(	1626371289491	\N
281381884460662785	\N	\N	\N	Custom	Custom Status	f	why does everyone i want to talk to hate me :(	1626371299411	\N
281381884460662785	\N	\N	\N	Custom	Custom Status	f	why does everyone i want to talk to hate me :(	1626371312735	\N
281381884460662785	\N	\N	\N	Custom	Custom Status	f	why does everyone i want to talk to hate me :(	1626371319597	\N
459713629441490945	\N	\N	\N	Custom	Custom Status	f	1:1	1626371320007	\N
368355102949376000	\N	spotify:ab67616d0000b27335e64a6f05f6679c5b2f61e2	und der Fluch des Rubins - Mädchenstimme am Telefon, Teil 3	Listening	Spotify	t	Die drei ???; Tim Grobe	1626371324207	1626371423399
202407278618476545	\N	\N	\N	Custom	Custom Status	f	defekt aber nett	1626371331782	\N
202407278618476545	445956193924546560	446301881636225042	QUICK MATCH match - Round 1 / 4	Playing	Rainbow Six Siege	f	\N	1626371331793	\N
202407278618476545	\N	spotify:ab67616d0000b273c07df17aa2ea058a75405c9e	Brooke Augustine	Listening	Spotify	t	Marc Canham	1626371331149	1626371471602
281381884460662785	\N	\N	\N	Custom	Custom Status	f	why does everyone i want to talk to hate me :(	1626371349497	\N
302519349489434624	\N	\N	\N	Custom	Custom Status	f	\N	1626371351033	\N
302519349489434624	\N	\N	\N	Custom	Custom Status	f	\N	1626371351648	\N
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626371356665	\N
281381884460662785	\N	\N	\N	Custom	Custom Status	f	why does everyone i want to talk to hate me :(	1626371359532	\N
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626371365170	\N
281381884460662785	\N	\N	\N	Custom	Custom Status	f	why does everyone i want to talk to hate me :(	1626371369573	\N
206955935229280256	\N	\N	\N	Playing	%help || GC: 108040 || UC: 174526 || VC: 2 || Version: 5.9.0	f	\N	1626371378067	\N
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626371383607	\N
311607742542381068	\N	\N	\N	Custom	Custom Status	f	If I continue like this I will die before I am 30, the doctors said	1626371413907	\N
281381884460662785	\N	\N	\N	Custom	Custom Status	f	why does everyone i want to talk to hate me :(	1626371419538	\N
368355102949376000	\N	spotify:ab67616d0000b27335e64a6f05f6679c5b2f61e2	und der Fluch des Rubins - Mädchenstimme am Telefon, Teil 4	Listening	Spotify	t	Die drei ???; Tim Grobe	1626371419286	1626371523006
281381884460662785	\N	\N	\N	Custom	Custom Status	f	why does everyone i want to talk to hate me :(	1626371429574	\N
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626371437265	\N
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626371438073	\N
202407278618476545	\N	\N	\N	Custom	Custom Status	f	defekt aber nett	1626371447295	\N
202407278618476545	445956193924546560	446301881636225042	in MENU	Playing	Rainbow Six Siege	f	\N	1626371447305	\N
281381884460662785	\N	\N	\N	Custom	Custom Status	f	why does everyone i want to talk to hate me :(	1626371449644	\N
202407278618476545	\N	\N	\N	Custom	Custom Status	f	defekt aber nett	1626371452921	\N
202407278618476545	445956193924546560	446301881636225042	Looking for QUICK MATCH match	Playing	Rainbow Six Siege	f	\N	1626371452932	\N
281381884460662785	\N	\N	\N	Custom	Custom Status	f	why does everyone i want to talk to hate me :(	1626371459577	\N
202407278618476545	\N	\N	\N	Custom	Custom Status	f	defekt aber nett	1626371460908	\N
202407278618476545	445956193924546560	446301881636225042	Looking for QUICK MATCH match	Playing	Rainbow Six Siege	f	\N	1626371460918	\N
281381884460662785	\N	\N	\N	Custom	Custom Status	f	why does everyone i want to talk to hate me :(	1626371462444	\N
202407278618476545	\N	\N	\N	Custom	Custom Status	f	defekt aber nett	1626371467359	\N
202407278618476545	445956193924546560	446301881636225042	QUICK MATCH match - Round 1 / 4	Playing	Rainbow Six Siege	f	\N	1626371467370	\N
202407278618476545	\N	\N	\N	Custom	Custom Status	f	defekt aber nett	1626371472889	\N
202407278618476545	445956193924546560	446301881636225042	QUICK MATCH match - Round 1 / 4	Playing	Rainbow Six Siege	f	\N	1626371472899	\N
202407278618476545	\N	spotify:ab67616d0000b273e1a6586d4a9a17f758054798	Man of the Flesh	Listening	Spotify	t	Rupert Gregson-Williams	1626371471544	1626371605277
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626371473196	\N
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626371473503	\N
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626371474937	\N
403571252402585601	\N	spotify:ab67616d0000b273d2c110c0a9b7dcc946929320	La La La	Listening	Spotify	t	Gzuz; Sa4	1626371489096	1626371647402
281381884460662785	\N	\N	\N	Custom	Custom Status	f	why does everyone i want to talk to hate me :(	1626371519685	\N
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626371534124	\N
281381884460662785	\N	\N	\N	Custom	Custom Status	f	why does everyone i want to talk to hate me :(	1626371559621	\N
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626371578872	\N
384759010332770307	\N	\N	\N	Custom	Custom Status	f	Born to shit, forced to wipe...	1626371597714	\N
202407278618476545	\N	spotify:ab67616d0000b273e0976dbb561453c9081e43fe	Swamp Blockade	Listening	Spotify	t	Brain	1626371605290	1626371814306
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626371623826	\N
403571252402585601	\N	spotify:ab67616d0000b2730ff55bd6dba6074d3804e53c	Jäger	Listening	Spotify	t	Luciano	1626371647897	1626371849523
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626371654034	\N
368355102949376000	\N	spotify:ab67616d0000b27335e64a6f05f6679c5b2f61e2	und der Fluch des Rubins - Mädchenstimme am Telefon, Teil 6	Listening	Spotify	t	Die drei ???; Tim Grobe	1626371665631	1626371802524
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626371708306	\N
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626371761758	\N
459713629441490945	755462309010211027	755900218624442479	Im Startbildschirm	Playing	Call of Duty: Black Ops Cold War	t	Im Startbildschirm	1626371791000	\N
202407278618476545	\N	\N	\N	Custom	Custom Status	f	defekt aber nett	1626371814938	\N
281381884460662785	\N	\N	\N	Custom	Custom Status	f	why does everyone i want to talk to hate me :(	1626371829752	\N
223666520943886336	463097721130188830	513734690272968717	Ich will Rang 1 werden! | Dead by Daylight	Playing	YouTube	f	HandOfUncut	1626376083725	1626376955000
403571252402585601	356876590342340608	\N	\N	Playing	Tom Clancy's Rainbow Six Siege	f	\N	1626376110222	\N
223666520943886336	463097721130188830	513734690272968717	Ich will Rang 1 werden! | Dead by Daylight	Playing	YouTube	f	HandOfUncut	1626376104914	1626376954000
403571252402585601	\N	\N	\N	Custom	Custom Status	f	\N	1626376113747	\N
223666520943886336	463097721130188830	513734690272968717	Ich will Rang 1 werden! | Dead by Daylight	Playing	YouTube	f	HandOfUncut	1626376124092	1626376954000
223666520943886336	463097721130188830	513734690272968717	Ich will Rang 1 werden! | Dead by Daylight	Playing	YouTube	f	HandOfUncut	1626376145026	1626376954000
403571252402585601	445956193924546560	446301881636225042	Looking for DISCOVERY match	Playing	Rainbow Six Siege	f	\N	1626376150316	\N
403571252402585601	\N	\N	\N	Custom	Custom Status	f	\N	1626376150610	\N
434794201075417101	\N	\N	\N	Custom	Custom Status	f	\N	1626378565817	\N
411656316814098441	\N	\N	\N	Custom	Custom Status	f	snowfox 😳	1626378582934	\N
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626378629093	\N
368355102949376000	\N	spotify:ab67616d0000b273ed42764d7a610b661a216504	204 - Der dunkle Wächter - Teil 02	Listening	Spotify	t	Die drei ???	1626378640524	1626378739310
411656316814098441	\N	\N	\N	Custom	Custom Status	f	snowfox 😳	1626378662782	\N
325704347767799808	790655993809338398	798617001685024808	Cobra	Playing	YouTube Music	f	Floxytek	1626378679986	\N
325704347767799808	790655993809338398	798617001685024808	Cobra	Playing	YouTube Music	f	Floxytek	1626378681177	1626378901177
547850369695219712	\N	spotify:ab67616d0000b273c8d578451c0bcc8ce02a8fbe	Cherry Cola	Listening	Spotify	t	Lucky Luke; Gaullin	1626378703588	1626378846203
202407278618476545	\N	\N	\N	Custom	Custom Status	f	defekt aber nett	1626378744088	\N
403571252402585601	445956193924546560	446301881636225042	in MENU	Playing	Rainbow Six Siege	f	\N	1626378747683	\N
311607742542381068	\N	\N	\N	Custom	Custom Status	f	If I continue like this I will die before I am 30, the doctors said	1626378757122	\N
361914328703696896	\N	\N	\N	Custom	Custom Status	f	\N	1626378762725	\N
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626378776344	\N
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626378801227	\N
311607742542381068	359801269008859136	\N	\N	Playing	The Elder Scrolls V: Skyrim Special Edition	f	\N	1626378813526	\N
547850369695219712	\N	spotify:ab67616d0000b273543c0db820721af8a40263b9	Why Do You Lie To Me (feat. Lil Baby) - Besomorph Remix	Listening	Spotify	t	Topic; A7S; Lil Baby; Besomorph	1626378843058	1626379001058
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626378847204	\N
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626378854081	\N
202407278618476545	\N	spotify:ab67616d0000b2731a3d2cdfcbaabab967f3468c	Distorted Reality	Listening	Spotify	t	Sascha Dikiciyan	1626378874840	1626379172800
261520809225355264	531450167799447552	531577494935961601	Playing Big Money Domination	Playing	Insurgency: Sandstorm	t	Refinery Domination	1626378896000	\N
325704347767799808	790655993809338398	798617001685024808	Cobra	Playing	YouTube Music	f	Floxytek	1626378900657	\N
325704347767799808	790655993809338398	798617001685024808	Climax (Extended Mix)	Playing	YouTube Music	f	USAO	1626378901067	\N
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626378910795	\N
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626378942641	\N
368355102949376000	\N	spotify:ab67616d0000b273ed42764d7a610b661a216504	204 - Der dunkle Wächter - Teil 05	Listening	Spotify	t	Die drei ???	1626378946884	1626379051337
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626378980839	\N
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626378995072	\N
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626379014116	\N
361914328703696896	\N	spotify:ab67616d0000b273521a220fff194eafd39c0f66	Natural Aimbot	Listening	Spotify	t	TJ_beastboy; Mary Man	1626379020444	1626379231644
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626379033879	\N
223666520943886336	356877880938070016	\N	\N	Playing	Rocket League	t	Hauptmenü	1626471185584	\N
403571252402585601	\N	\N	\N	Custom	Custom Status	f	\N	1626474093549	\N
403571252402585601	\N	\N	\N	Custom	Custom Status	f	\N	1626371484255	\N
281381884460662785	\N	\N	\N	Custom	Custom Status	f	why does everyone i want to talk to hate me :(	1626371489580	\N
261520809225355264	\N	\N	\N	Playing	Live/Wire	f	\N	1626371512926	\N
368355102949376000	\N	spotify:ab67616d0000b27335e64a6f05f6679c5b2f61e2	und der Fluch des Rubins - Mädchenstimme am Telefon, Teil 5	Listening	Spotify	t	Die drei ???; Tim Grobe	1626371523010	1626371665666
302519349489434624	\N	\N	\N	Custom	Custom Status	f	\N	1626371544056	\N
459713629441490945	\N	\N	\N	Custom	Custom Status	f	1:1	1626371561669	\N
281381884460662785	\N	\N	\N	Custom	Custom Status	f	why does everyone i want to talk to hate me :(	1626371579692	\N
206955935229280256	\N	\N	\N	Playing	%help || GC: 108038 || UC: 175005 || VC: 2 || Version: 5.9.0	f	\N	1626371597851	\N
281381884460662785	\N	\N	\N	Custom	Custom Status	f	why does everyone i want to talk to hate me :(	1626371629560	\N
403571252402585601	\N	\N	\N	Custom	Custom Status	f	\N	1626371643077	\N
281381884460662785	\N	\N	\N	Custom	Custom Status	f	why does everyone i want to talk to hate me :(	1626371649733	\N
371656565607890964	361968954954219521	784165615006777374	Gorodok	Playing	Squad	t	\N	1626371652000	\N
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626371654092	\N
281381884460662785	\N	\N	\N	Custom	Custom Status	f	why does everyone i want to talk to hate me :(	1626371709739	\N
281381884460662785	\N	\N	\N	Custom	Custom Status	f	why does everyone i want to talk to hate me :(	1626371749778	\N
459713629441490945	\N	\N	\N	Custom	Custom Status	f	1:1	1626371773944	\N
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626371783467	\N
459713629441490945	\N	\N	\N	Custom	Custom Status	f	1:1	1626371792171	\N
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626371796779	\N
202407278618476545	\N	spotify:ab67616d0000b2733434091975a24854d631c4dd	Formless	Listening	Spotify	t	Arkadiusz Reikowski	1626371814296	1626371974296
368355102949376000	\N	spotify:ab67616d0000b27335e64a6f05f6679c5b2f61e2	und der Fluch des Rubins - Eine Falle schnappt zu, Teil 1	Listening	Spotify	t	Die drei ???; Tim Grobe	1626371832095	1626371958599
368355102949376000	\N	spotify:ab67616d0000b27335e64a6f05f6679c5b2f61e2	und der Fluch des Rubins - Des Rätsels Lösung, Teil 8	Listening	Spotify	t	Die drei ???; Tim Grobe	1626376134141	1626376237366
403571252402585601	445956193924546560	446301881636225042	in MENU	Playing	Rainbow Six Siege	f	\N	1626376146423	\N
403571252402585601	\N	\N	\N	Custom	Custom Status	f	\N	1626376150304	\N
361914328703696896	\N	spotify:ab67616d0000b2735b21c595586c237f0e71a041	The End	Listening	Spotify	t	Osias; Jakk.	1626376109120	1626376261161
206955935229280256	\N	\N	\N	Playing	%help || GC: 108035 || UC: 170733 || VC: 2 || Version: 5.9.0	f	\N	1626378577381	\N
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626378644385	\N
434794201075417101	\N	\N	\N	Custom	Custom Status	f	\N	1626378644761	\N
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626378665445	\N
403571252402585601	445956193924546560	446301881636225042	Looking for RANKED match	Playing	Rainbow Six Siege	f	\N	1626378721674	\N
403571252402585601	\N	\N	\N	Custom	Custom Status	f	\N	1626378747672	\N
311607742542381068	\N	\N	\N	Custom	Custom Status	f	If I continue like this I will die before I am 30, the doctors said	1626378812192	\N
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626378840344	\N
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626378860217	\N
202407278618476545	\N	\N	\N	Custom	Custom Status	f	defekt aber nett	1626378875655	\N
261520809225355264	531450167799447552	531577494935961601	Playing Big Money Domination	Playing	Insurgency: Sandstorm	t	Refinery Domination	1626378895000	\N
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626378943052	\N
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626378985035	\N
302519349489434624	\N	\N	\N	Custom	Custom Status	f	\N	1626379024664	\N
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626379034903	\N
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626379104637	\N
708309251562405908	\N	\N	\N	Custom	Custom Status	f	Wird aus Russland zurückgedrängt	1626379118563	\N
325704347767799808	790655993809338398	798617001685024808	Climax (Extended Mix)	Playing	YouTube Music	f	USAO	1626379119178	\N
708309251562405908	445956193924546560	446301881636225042	Looking for CUSTOM GAME match	Playing	Rainbow Six Siege	f	\N	1626379140488	\N
708309251562405908	445956193924546560	446301881636225042	CUSTOM GAME match - Round 1 / 20	Playing	Rainbow Six Siege	f	\N	1626379150729	\N
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626379233763	\N
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626379304727	\N
361914328703696896	\N	\N	\N	Custom	Custom Status	f	\N	1626379343433	\N
202407278618476545	\N	\N	\N	Custom	Custom Status	f	defekt aber nett	1626379437334	\N
361914328703696896	\N	\N	\N	Custom	Custom Status	f	\N	1626379456893	\N
325704347767799808	790655993809338398	798617001685024808	Cthugha	Playing	YouTube Music	f	USAO	1626379476301	1626379631301
202407278618476545	\N	\N	\N	Custom	Custom Status	f	defekt aber nett	1626379528572	\N
271659253486452736	\N	\N	\N	Custom	Custom Status	f	Whoa, I got two hands! Brujo, I need two beers!	1626379540143	\N
325704347767799808	790655993809338398	798617001685024808	Hang'em All	Playing	YouTube Music	f	Carpenter Brut	1626379631501	\N
325704347767799808	790655993809338398	798617001685024808	Hang'em All	Playing	YouTube Music	f	Carpenter Brut	1626379632441	1626379972441
361914328703696896	\N	\N	\N	Custom	Custom Status	f	\N	1626379673468	\N
361914328703696896	\N	\N	\N	Custom	Custom Status	f	\N	1626379686269	\N
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626379693435	\N
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626379825838	\N
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626379870792	\N
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626379888097	\N
395303354923745281	356877880938070016	\N	\N	Playing	Rocket League	f	\N	1626467623807	\N
403571252402585601	357607478105604096	\N	\N	Playing	War Thunder	f	\N	1626473729771	\N
302519349489434624	\N	\N	\N	Custom	Custom Status	f	\N	1626371511946	\N
206955935229280256	\N	\N	\N	Playing	%help || GC: 108039 || UC: 174981 || VC: 2 || Version: 5.9.0	f	\N	1626371586553	\N
202407278618476545	445956193924546560	446301881636225042	QUICK MATCH match - Round 1 / 4	Playing	Rainbow Six Siege	f	\N	1626371605807	\N
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626371608876	\N
403571252402585601	\N	\N	\N	Custom	Custom Status	f	\N	1626371636831	\N
281381884460662785	\N	\N	\N	Custom	Custom Status	f	why does everyone i want to talk to hate me :(	1626371639698	\N
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626371651576	\N
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626371654218	\N
281381884460662785	\N	\N	\N	Custom	Custom Status	f	why does everyone i want to talk to hate me :(	1626371669599	\N
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626371699090	\N
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626371715781	\N
202407278618476545	445956193924546560	446301881636225042	in MENU	Playing	Rainbow Six Siege	f	\N	1626371728182	\N
281381884460662785	\N	\N	\N	Custom	Custom Status	f	why does everyone i want to talk to hate me :(	1626371729709	\N
459713629441490945	\N	\N	\N	Custom	Custom Status	f	1:1	1626371753669	\N
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626371757156	\N
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626371783567	\N
459713629441490945	755462309010211027	755900218624442479	Im Startbildschirm	Playing	Call of Duty: Black Ops Cold War	t	Im Startbildschirm	1626371786000	\N
281381884460662785	\N	\N	\N	Custom	Custom Status	f	why does everyone i want to talk to hate me :(	1626371799749	\N
459713629441490945	\N	\N	\N	Custom	Custom Status	f	1:1	1626371812446	\N
206955935229280256	\N	\N	\N	Playing	%help || GC: 108036 || UC: 175459 || VC: 2 || Version: 5.9.0	f	\N	1626371814597	\N
223666520943886336	463097721130188830	513734690272968717	Ich will Rang 1 werden! | Dead by Daylight	Playing	YouTube	f	HandOfUncut	1626376163722	1626376955000
223666520943886336	463097721130188830	513734690272968717	Ich will Rang 1 werden! | Dead by Daylight	Playing	YouTube	f	HandOfUncut	1626376185020	1626376954000
361914328703696896	356944273133928458	\N	\N	Playing	Brawlhalla	f	\N	1626376194638	\N
223666520943886336	463097721130188830	513734690272968717	Ich will Rang 1 werden! | Dead by Daylight	Playing	YouTube	f	HandOfUncut	1626376203656	1626376955000
403571252402585601	\N	spotify:ab67616d0000b273db56c05d9bbade40bd88568a	Mach den Booz	Listening	Spotify	t	Booz	1626376221907	1626376426282
223666520943886336	463097721130188830	513734690272968717	Ich will Rang 1 werden! | Dead by Daylight	Playing	YouTube	f	HandOfUncut	1626376225059	1626376954000
223666520943886336	463097721130188830	513734690272968717	Ich will Rang 1 werden! | Dead by Daylight	Playing	YouTube	f	HandOfUncut	1626376244001	1626376954000
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626376255167	\N
223666520943886336	463097721130188830	513734690272968717	Ich will Rang 1 werden! | Dead by Daylight	Playing	YouTube	f	HandOfUncut	1626376263765	1626376955000
223666520943886336	463097721130188830	513734690272968717	Ich will Rang 1 werden! | Dead by Daylight	Playing	YouTube	f	HandOfUncut	1626376284757	1626376955000
223666520943886336	463097721130188830	513734690272968717	Ich will Rang 1 werden! | Dead by Daylight	Playing	YouTube	f	HandOfUncut	1626376304725	1626376955000
223666520943886336	463097721130188830	513734690272968717	Ich will Rang 1 werden! | Dead by Daylight	Playing	YouTube	f	HandOfUncut	1626376325002	1626376954000
361914328703696896	\N	spotify:ab67616d0000b273e604402d6fc28915d6c5865e	1000x COOLER	Listening	Spotify	t	TJ_beastboy	1626376328548	1626376475548
223666520943886336	463097721130188830	513734690272968717	Ich will Rang 1 werden! | Dead by Daylight	Playing	YouTube	f	HandOfUncut	1626376343842	1626376955000
708309251562405908	445956193924546560	446301881636225042	Looking for QUICK MATCH match	Playing	Rainbow Six Siege	f	\N	1626376345692	\N
708309251562405908	\N	\N	\N	Custom	Custom Status	f	Wird aus Russland zurückgedrängt	1626376361253	\N
708309251562405908	\N	\N	\N	Custom	Custom Status	f	Wird aus Russland zurückgedrängt	1626376361385	\N
708309251562405908	\N	\N	\N	Custom	Custom Status	f	Wird aus Russland zurückgedrängt	1626376361693	\N
223666520943886336	463097721130188830	513734690272968717	Ich will Rang 1 werden! | Dead by Daylight	Playing	YouTube	f	HandOfUncut	1626376364014	1626376954000
223666520943886336	463097721130188830	513734690272968717	Ich will Rang 1 werden! | Dead by Daylight	Playing	YouTube	f	HandOfUncut	1626376383939	1626376954000
223666520943886336	463097721130188830	513734690272968717	Ich will Rang 1 werden! | Dead by Daylight	Playing	YouTube	f	HandOfUncut	1626376403916	1626376954000
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626376411628	\N
403571252402585601	445956193924546560	446301881636225042	DISCOVERY match - Round 1 / 4	Playing	Rainbow Six Siege	f	\N	1626376422390	\N
223666520943886336	463097721130188830	513734690272968717	Ich will Rang 1 werden! | Dead by Daylight	Playing	YouTube	f	HandOfUncut	1626376424020	1626376954000
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626376431800	\N
223666520943886336	463097721130188830	513734690272968717	Ich will Rang 1 werden! | Dead by Daylight	Playing	YouTube	f	HandOfUncut	1626376443783	1626376955000
223666520943886336	463097721130188830	513734690272968717	Ich will Rang 1 werden! | Dead by Daylight	Playing	YouTube	f	HandOfUncut	1626376463752	1626376955000
223666520943886336	463097721130188830	513734690272968717	Ich will Rang 1 werden! | Dead by Daylight	Playing	YouTube	f	HandOfUncut	1626376483731	1626376955000
223666520943886336	463097721130188830	513734690272968717	Ich will Rang 1 werden! | Dead by Daylight	Playing	YouTube	f	HandOfUncut	1626376484345	1626376954000
384759010332770307	\N	\N	\N	Custom	Custom Status	f	Born to shit, forced to wipe...	1626376485150	\N
223666520943886336	463097721130188830	513734690272968717	Ich will Rang 1 werden! | Dead by Daylight	Playing	YouTube	f	HandOfUncut	1626376503688	1626376955000
223666520943886336	463097721130188830	513734690272968717	Ich will Rang 1 werden! | Dead by Daylight	Playing	YouTube	f	HandOfUncut	1626376524929	1626376954000
681192725152006160	401518684763586560	403244932292411412	Howling Abyss (ARAM)	Playing	League of Legends	f	In Game	1626378590000	\N
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626378700261	\N
403571252402585601	\N	\N	\N	Custom	Custom Status	f	\N	1626378721663	\N
368355102949376000	\N	spotify:ab67616d0000b273ed42764d7a610b661a216504	204 - Der dunkle Wächter - Teil 03	Listening	Spotify	t	Die drei ???	1626378739641	1626378841134
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626378747695	\N
281381884460662785	\N	\N	\N	Custom	Custom Status	f	why does everyone i want to talk to hate me :(	1626371529823	\N
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626371555042	\N
384759010332770307	357607133254254632	\N	\N	Playing	Dead by Daylight	f	\N	1626371596659	\N
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626371597949	\N
202407278618476545	\N	\N	\N	Custom	Custom Status	f	defekt aber nett	1626371605803	\N
281381884460662785	\N	\N	\N	Custom	Custom Status	f	why does everyone i want to talk to hate me :(	1626371609592	\N
371656565607890964	361968954954219521	365271016341110784	\N	Playing	Squad	t	\N	1626371623836	\N
361914328703696896	\N	\N	\N	Custom	Custom Status	f	\N	1626371640197	\N
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626371653325	\N
281381884460662785	\N	\N	\N	Custom	Custom Status	f	why does everyone i want to talk to hate me :(	1626371659666	\N
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626371672056	\N
281381884460662785	\N	\N	\N	Custom	Custom Status	f	why does everyone i want to talk to hate me :(	1626371699704	\N
202407278618476545	\N	\N	\N	Custom	Custom Status	f	defekt aber nett	1626371728171	\N
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626371733803	\N
276431762815451138	547786685795139585	573258041902891029	ledermann	Playing	CLion	t	Editing hs.rs	1626371747091	\N
281381884460662785	\N	\N	\N	Custom	Custom Status	f	why does everyone i want to talk to hate me :(	1626371759710	\N
459713629441490945	\N	\N	\N	Custom	Custom Status	f	1:1	1626371787461	\N
206955935229280256	\N	\N	\N	Playing	%help || GC: 108037 || UC: 175409 || VC: 2 || Version: 5.9.0	f	\N	1626371787505	\N
202407278618476545	445956193924546560	446301881636225042	in MENU	Playing	Rainbow Six Siege	f	\N	1626371814946	\N
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626371828216	\N
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626371840094	\N
403571252402585601	\N	\N	\N	Custom	Custom Status	f	\N	1626371845214	\N
403571252402585601	\N	spotify:ab67616d0000b273d2c110c0a9b7dcc946929320	Hinterher	Listening	Spotify	t	Gzuz	1626371849989	1626372010455
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626371880235	\N
152104114753372160	357607133254254632	\N	\N	Playing	Dead by Daylight	f	\N	1626371881107	\N
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626371883205	\N
202407278618476545	\N	\N	\N	Custom	Custom Status	f	defekt aber nett	1626371885662	\N
202407278618476545	445956193924546560	446301881636225042	Looking for QUICK MATCH match	Playing	Rainbow Six Siege	f	\N	1626371885674	\N
281381884460662785	\N	\N	\N	Custom	Custom Status	f	why does everyone i want to talk to hate me :(	1626371889861	\N
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626371912286	\N
202407278618476545	\N	\N	\N	Custom	Custom Status	f	defekt aber nett	1626371913003	\N
202407278618476545	445956193924546560	446301881636225042	in MENU	Playing	Rainbow Six Siege	f	\N	1626371913009	\N
202407278618476545	\N	\N	\N	Custom	Custom Status	f	defekt aber nett	1626371916965	\N
202407278618476545	445956193924546560	446301881636225042	Looking for QUICK MATCH match	Playing	Rainbow Six Siege	f	\N	1626371916975	\N
202407278618476545	\N	\N	\N	Custom	Custom Status	f	defekt aber nett	1626371917049	\N
202407278618476545	445956193924546560	446301881636225042	Looking for QUICK MATCH match	Playing	Rainbow Six Siege	f	\N	1626371917056	\N
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626371932051	\N
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626371941367	\N
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626371942391	\N
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626371946692	\N
281381884460662785	\N	\N	\N	Custom	Custom Status	f	why does everyone i want to talk to hate me :(	1626371949868	\N
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626371954174	\N
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626371957137	\N
281381884460662785	\N	\N	\N	Custom	Custom Status	f	why does everyone i want to talk to hate me :(	1626371960414	\N
708309251562405908	\N	\N	\N	Custom	Custom Status	f	Wird aus Russland zurückgedrängt	1626371960926	\N
708309251562405908	445956193924546560	446301881636225042	Completing a TRAINING GROUNDS mission	Playing	Rainbow Six Siege	f	\N	1626371960932	\N
368355102949376000	\N	spotify:ab67616d0000b27335e64a6f05f6679c5b2f61e2	und der Fluch des Rubins - Eine Falle schnappt zu, Teil 2	Listening	Spotify	t	Die drei ???; Tim Grobe	1626371958902	1626372079796
708309251562405908	\N	\N	\N	Custom	Custom Status	f	Wird aus Russland zurückgedrängt	1626371965739	\N
708309251562405908	445956193924546560	446301881636225042	Completing a TRAINING GROUNDS mission	Playing	Rainbow Six Siege	f	\N	1626371965749	\N
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626371968094	\N
202407278618476545	\N	\N	\N	Custom	Custom Status	f	defekt aber nett	1626371974852	\N
202407278618476545	445956193924546560	446301881636225042	QUICK MATCH match - Round 1 / 4	Playing	Rainbow Six Siege	f	\N	1626371974860	\N
202407278618476545	\N	spotify:ab67616d0000b273e8d8d8b8fddfea0cc4ee0977	Togetherness II	Listening	Spotify	t	Tobias Lilja	1626371974298	1626372074298
281381884460662785	\N	\N	\N	Custom	Custom Status	f	why does everyone i want to talk to hate me :(	1626371980005	\N
403571252402585601	\N	\N	\N	Custom	Custom Status	f	\N	1626372006186	\N
403571252402585601	\N	spotify:ab67616d0000b273b0b6d4c4e28157e6ba6e0c0d	7	Listening	Spotify	t	Ufo361; Bonez MC	1626372010965	1626372159879
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626372019297	\N
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626372036088	\N
281381884460662785	\N	\N	\N	Custom	Custom Status	f	why does everyone i want to talk to hate me :(	1626372039978	\N
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626372045303	\N
281381884460662785	\N	\N	\N	Custom	Custom Status	f	why does everyone i want to talk to hate me :(	1626372049912	\N
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626372058513	\N
202407278618476545	\N	\N	\N	Custom	Custom Status	f	defekt aber nett	1626372074897	\N
368355102949376000	\N	spotify:ab67616d0000b27335e64a6f05f6679c5b2f61e2	und der Fluch des Rubins - Eine Falle schnappt zu, Teil 3	Listening	Spotify	t	Die drei ???; Tim Grobe	1626372079781	1626372203570
424599087145549835	\N	\N	\N	Custom	Custom Status	f	Reliquit solum ab amicis.	1626372101837	\N
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626372115140	\N
202407278618476545	445956193924546560	446301881636225042	QUICK MATCH match - Round 1 / 4	Playing	Rainbow Six Siege	f	\N	1626372127547	\N
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626372128964	\N
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626372138999	\N
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626372208835	\N
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626372224914	\N
281381884460662785	530196305138417685	530196467688931339	In Lobby	Playing	PLAYERUNKNOWN'S BATTLEGROUNDS	t	\N	1626372229961	\N
281381884460662785	\N	\N	\N	Custom	Custom Status	f	why does everyone i want to talk to hate me :(	1626372256707	\N
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626372267101	\N
281381884460662785	\N	\N	\N	Custom	Custom Status	f	why does everyone i want to talk to hate me :(	1626372301098	\N
281381884460662785	\N	spotify:ab67616d0000b2739d6b5d192fca30378f5079a0	Prikazano	Listening	Spotify	t	Super Besse	1626372303199	1626372516072
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626372307766	\N
403571252402585601	\N	\N	\N	Custom	Custom Status	f	\N	1626372314614	\N
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626372319120	\N
202407278618476545	445956193924546560	446301881636225042	QUICK MATCH match - Round 1 / 4	Playing	Rainbow Six Siege	f	\N	1626372337098	\N
708309251562405908	\N	\N	\N	Custom	Custom Status	f	Wird aus Russland zurückgedrängt	1626372337396	\N
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626372344003	\N
281381884460662785	406637848297472017	\N	\N	Playing	Escape from Tarkov	f	\N	1626372350942	\N
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626372389264	\N
368355102949376000	\N	spotify:ab67616d0000b27335e64a6f05f6679c5b2f61e2	und der Fluch des Rubins - Wir wissen wo ihr steckt, Teil 2	Listening	Spotify	t	Die drei ???; Tim Grobe	1626372431167	1626372529492
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626372466269	\N
403571252402585601	\N	spotify:ab67616d0000b273fad1e36d714dc0432efc9977	Laserpointer	Listening	Spotify	t	LX; Bonez MC	1626372472997	1626372653374
202407278618476545	\N	\N	\N	Custom	Custom Status	f	defekt aber nett	1626372499754	\N
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626372548291	\N
708309251562405908	445956193924546560	446301881636225042	Completing a TRAINING GROUNDS mission	Playing	Rainbow Six Siege	f	\N	1626372555777	\N
281381884460662785	\N	\N	\N	Custom	Custom Status	f	why does everyone i want to talk to hate me :(	1626372564060	\N
281381884460662785	\N	\N	\N	Custom	Custom Status	f	why does everyone i want to talk to hate me :(	1626372579422	\N
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626372593961	\N
223666520943886336	463097721130188830	513734690272968717	Ich will Rang 1 werden! | Dead by Daylight	Playing	YouTube	f	HandOfUncut	1626376163943	1626376954000
361914328703696896	\N	\N	\N	Custom	Custom Status	f	\N	1626376166613	\N
223666520943886336	463097721130188830	513734690272968717	Ich will Rang 1 werden! | Dead by Daylight	Playing	YouTube	f	HandOfUncut	1626376183906	1626376955000
361914328703696896	\N	\N	\N	Custom	Custom Status	f	\N	1626376191571	\N
223666520943886336	463097721130188830	513734690272968717	Ich will Rang 1 werden! | Dead by Daylight	Playing	YouTube	f	HandOfUncut	1626376203963	1626376954000
403571252402585601	445956193924546560	446301881636225042	DISCOVERY match - Round 1 / 4	Playing	Rainbow Six Siege	f	\N	1626376217412	\N
223666520943886336	463097721130188830	513734690272968717	Ich will Rang 1 werden! | Dead by Daylight	Playing	YouTube	f	HandOfUncut	1626376224034	1626376954000
223666520943886336	463097721130188830	513734690272968717	Ich will Rang 1 werden! | Dead by Daylight	Playing	YouTube	f	HandOfUncut	1626376244616	1626376955000
223666520943886336	463097721130188830	513734690272968717	Ich will Rang 1 werden! | Dead by Daylight	Playing	YouTube	f	HandOfUncut	1626376264073	1626376954000
368355102949376000	\N	spotify:ab67616d0000b27335e64a6f05f6679c5b2f61e2	und der Fluch des Rubins - Des Rätsels Lösung, Teil 9	Listening	Spotify	t	Die drei ???; Tim Grobe	1626376267534	1626376366245
223666520943886336	463097721130188830	513734690272968717	Ich will Rang 1 werden! | Dead by Daylight	Playing	YouTube	f	HandOfUncut	1626376285024	1626376954000
223666520943886336	463097721130188830	513734690272968717	Ich will Rang 1 werden! | Dead by Daylight	Playing	YouTube	f	HandOfUncut	1626376304874	1626376954000
708309251562405908	445956193924546560	446301881636225042	in MENU	Playing	Rainbow Six Siege	f	\N	1626376316509	\N
223666520943886336	463097721130188830	513734690272968717	Ich will Rang 1 werden! | Dead by Daylight	Playing	YouTube	f	HandOfUncut	1626376323670	1626376955000
223666520943886336	463097721130188830	513734690272968717	Ich will Rang 1 werden! | Dead by Daylight	Playing	YouTube	f	HandOfUncut	1626376343950	1626376954000
708309251562405908	\N	\N	\N	Custom	Custom Status	f	Wird aus Russland zurückgedrängt	1626376345682	\N
206955935229280256	\N	\N	\N	Playing	%help || GC: 108037 || UC: 184762 || VC: 3 || Version: 5.9.0	f	\N	1626376347628	\N
223666520943886336	463097721130188830	513734690272968717	Ich will Rang 1 werden! | Dead by Daylight	Playing	YouTube	f	HandOfUncut	1626376364630	1626376955000
223666520943886336	463097721130188830	513734690272968717	Ich will Rang 1 werden! | Dead by Daylight	Playing	YouTube	f	HandOfUncut	1626376365038	1626376954000
223666520943886336	463097721130188830	513734690272968717	Ich will Rang 1 werden! | Dead by Daylight	Playing	YouTube	f	HandOfUncut	1626376384699	1626376955000
223666520943886336	463097721130188830	513734690272968717	Ich will Rang 1 werden! | Dead by Daylight	Playing	YouTube	f	HandOfUncut	1626376404769	1626376955000
403571252402585601	\N	\N	\N	Custom	Custom Status	f	\N	1626376422379	\N
223666520943886336	463097721130188830	513734690272968717	Ich will Rang 1 werden! | Dead by Daylight	Playing	YouTube	f	HandOfUncut	1626376424738	1626376955000
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626372052062	\N
281381884460662785	\N	\N	\N	Custom	Custom Status	f	why does everyone i want to talk to hate me :(	1626372059946	\N
202407278618476545	\N	spotify:ab67616d0000b273e1a6586d4a9a17f758054798	Roundsman	Listening	Spotify	t	Rupert Gregson-Williams	1626372073290	1626372125983
708309251562405908	445956193924546560	446301881636225042	Completing a TRAINING GROUNDS mission	Playing	Rainbow Six Siege	f	\N	1626372085862	\N
202407278618476545	\N	\N	\N	Custom	Custom Status	f	defekt aber nett	1626372127536	\N
206955935229280256	\N	\N	\N	Playing	%help || GC: 108037 || UC: 176164 || VC: 0 || Version: 5.9.0	f	\N	1626372129050	\N
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626372141047	\N
403571252402585601	\N	spotify:ab67616d0000b273709a7fa7daf9ba4607c9eb31	Ausgezahlt	Listening	Spotify	t	Gzuz; RAF Camora	1626372160346	1626372318893
281381884460662785	\N	\N	\N	Custom	Custom Status	f	why does everyone i want to talk to hate me :(	1626372160093	\N
281381884460662785	\N	\N	\N	Custom	Custom Status	f	why does everyone i want to talk to hate me :(	1626372180062	\N
281381884460662785	\N	\N	\N	Custom	Custom Status	f	why does everyone i want to talk to hate me :(	1626372229950	\N
281381884460662785	\N	\N	\N	Custom	Custom Status	f	why does everyone i want to talk to hate me :(	1626372258806	\N
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626372267920	\N
281381884460662785	\N	\N	\N	Custom	Custom Status	f	why does everyone i want to talk to hate me :(	1626372301507	\N
281381884460662785	\N	\N	\N	Custom	Custom Status	f	why does everyone i want to talk to hate me :(	1626372310621	\N
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626372320349	\N
281381884460662785	\N	spotify:ab67616d0000b27383e260c313dc1ff1f17909cf	The Pretender	Listening	Spotify	t	Foo Fighters	1626372312557	1626372581930
202407278618476545	\N	\N	\N	Custom	Custom Status	f	defekt aber nett	1626372337086	\N
281381884460662785	\N	\N	\N	Custom	Custom Status	f	why does everyone i want to talk to hate me :(	1626372348918	\N
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626372354858	\N
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626372370218	\N
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626372394281	\N
403571252402585601	\N	\N	\N	Custom	Custom Status	f	\N	1626372468214	\N
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626372479173	\N
202407278618476545	\N	spotify:ab67616d0000b273858544fa6d76b5182a87888c	The Wrath	Listening	Spotify	t	Olivier Deriviere	1626372499103	1626372655409
708309251562405908	\N	\N	\N	Custom	Custom Status	f	Wird aus Russland zurückgedrängt	1626372555766	\N
368355102949376000	\N	spotify:ab67616d0000b27335e64a6f05f6679c5b2f61e2	und der Fluch des Rubins - Wir wissen wo ihr steckt, Teil 3	Listening	Spotify	t	Die drei ???; Tim Grobe	1626372553192	1626372652457
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626372599593	\N
223666520943886336	463097721130188830	513734690272968717	Ich will Rang 1 werden! | Dead by Daylight	Playing	YouTube	f	HandOfUncut	1626376164745	1626376955000
361914328703696896	\N	\N	\N	Custom	Custom Status	f	\N	1626376176620	\N
223666520943886336	463097721130188830	513734690272968717	Ich will Rang 1 werden! | Dead by Daylight	Playing	YouTube	f	HandOfUncut	1626376183993	1626376954000
223666520943886336	463097721130188830	513734690272968717	Ich will Rang 1 werden! | Dead by Daylight	Playing	YouTube	f	HandOfUncut	1626376204680	1626376955000
223666520943886336	463097721130188830	513734690272968717	Ich will Rang 1 werden! | Dead by Daylight	Playing	YouTube	f	HandOfUncut	1626376223726	1626376955000
325704347767799808	357607478105604096	\N	\N	Playing	War Thunder	f	\N	1626376243014	\N
223666520943886336	463097721130188830	513734690272968717	Ich will Rang 1 werden! | Dead by Daylight	Playing	YouTube	f	HandOfUncut	1626376243702	1626376955000
223666520943886336	463097721130188830	513734690272968717	Ich will Rang 1 werden! | Dead by Daylight	Playing	YouTube	f	HandOfUncut	1626376264999	1626376954000
206955935229280256	\N	\N	\N	Playing	%help || GC: 108038 || UC: 184642 || VC: 2 || Version: 5.9.0	f	\N	1626376275846	\N
223666520943886336	463097721130188830	513734690272968717	Ich will Rang 1 werden! | Dead by Daylight	Playing	YouTube	f	HandOfUncut	1626376284046	1626376954000
223666520943886336	463097721130188830	513734690272968717	Ich will Rang 1 werden! | Dead by Daylight	Playing	YouTube	f	HandOfUncut	1626376303969	1626376954000
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626376309489	\N
223666520943886336	463097721130188830	513734690272968717	Ich will Rang 1 werden! | Dead by Daylight	Playing	YouTube	f	HandOfUncut	1626376324637	1626376955000
223666520943886336	463097721130188830	513734690272968717	Ich will Rang 1 werden! | Dead by Daylight	Playing	YouTube	f	HandOfUncut	1626376345045	1626376954000
708309251562405908	\N	\N	\N	Custom	Custom Status	f	Wird aus Russland zurückgedrängt	1626376357260	\N
202407278618476545	\N	\N	\N	Custom	Custom Status	f	defekt aber nett	1626376360018	\N
708309251562405908	445956193924546560	446301881636225042	Looking for QUICK MATCH match	Playing	Rainbow Six Siege	f	\N	1626376361264	\N
708309251562405908	445956193924546560	446301881636225042	in MENU	Playing	Rainbow Six Siege	f	\N	1626376361391	\N
708309251562405908	445956193924546560	446301881636225042	QUICK MATCH match - Round 1 / 4	Playing	Rainbow Six Siege	f	\N	1626376361700	\N
223666520943886336	463097721130188830	513734690272968717	Ich will Rang 1 werden! | Dead by Daylight	Playing	YouTube	f	HandOfUncut	1626376363708	1626376955000
368355102949376000	\N	spotify:ab67616d0000b27335e64a6f05f6679c5b2f61e2	und der Fluch des Rubins - Des Rätsels Lösung, Teil 10	Listening	Spotify	t	Die drei ???; Tim Grobe	1626376366498	1626376471920
223666520943886336	463097721130188830	513734690272968717	Ich will Rang 1 werden! | Dead by Daylight	Playing	YouTube	f	HandOfUncut	1626376383777	1626376955000
223666520943886336	463097721130188830	513734690272968717	Ich will Rang 1 werden! | Dead by Daylight	Playing	YouTube	f	HandOfUncut	1626376403848	1626376955000
223666520943886336	463097721130188830	513734690272968717	Ich will Rang 1 werden! | Dead by Daylight	Playing	YouTube	f	HandOfUncut	1626376423713	1626376955000
223666520943886336	463097721130188830	513734690272968717	Ich will Rang 1 werden! | Dead by Daylight	Playing	YouTube	f	HandOfUncut	1626376445014	1626376954000
223666520943886336	463097721130188830	513734690272968717	Ich will Rang 1 werden! | Dead by Daylight	Playing	YouTube	f	HandOfUncut	1626376465083	1626376954000
361914328703696896	\N	spotify:ab67616d0000b27306ad90918f0674773d1e0359	KEiNE CHAiN	Listening	Spotify	t	TJ_beastboy; fliggsy	1626376476031	1626376630531
223666520943886336	463097721130188830	513734690272968717	Ich will Rang 1 werden! | Dead by Daylight	Playing	YouTube	f	HandOfUncut	1626376503995	1626376954000
251364645254856714	356875057940791296	\N	\N	Playing	Counter-Strike: Global Offensive	f	\N	1626372065510	\N
708309251562405908	\N	\N	\N	Custom	Custom Status	f	Wird aus Russland zurückgedrängt	1626372085854	\N
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626372088106	\N
281381884460662785	\N	\N	\N	Custom	Custom Status	f	why does everyone i want to talk to hate me :(	1626372110020	\N
202407278618476545	\N	spotify:ab67616d0000b2732472601180911ff89445cbc8	Amygdala	Listening	Spotify	t	SIE Sound Team	1626372125943	1626372335436
403571252402585601	\N	\N	\N	Custom	Custom Status	f	\N	1626372155597	\N
368355102949376000	\N	spotify:ab67616d0000b27335e64a6f05f6679c5b2f61e2	und der Fluch des Rubins - Eine Falle schnappt zu, Teil 4	Listening	Spotify	t	Die drei ???; Tim Grobe	1626372203590	1626372322413
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626372252150	\N
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626372281232	\N
281381884460662785	\N	\N	\N	Custom	Custom Status	f	why does everyone i want to talk to hate me :(	1626372302429	\N
281381884460662785	\N	spotify:ab67616d0000b2735ab6fb85fa93ef1a51dfe2f0	Следи за собой	Listening	Spotify	t	Kino	1626372305410	1626372603317
281381884460662785	\N	\N	\N	Custom	Custom Status	f	why does everyone i want to talk to hate me :(	1626372321066	\N
202407278618476545	\N	spotify:ab67616d0000b27346ac204a9d297ef8ed852674	White Chapel District	Listening	Spotify	t	Olivier Deriviere	1626372336427	1626372499027
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626372363971	\N
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626372378819	\N
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626372419984	\N
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626372434424	\N
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626372487261	\N
281381884460662785	\N	spotify:ab67616d0000b273af9453a8f1d70354e9f934d3	A Good Song Never Dies	Listening	Spotify	t	Saint Motel	1626372581204	1626372782217
459713629441490945	\N	\N	\N	Custom	Custom Status	f	1:1	1626372600515	\N
174186616422662144	\N	\N	\N	Playing	f.help | f.info	f	\N	1626372602367	\N
223666520943886336	463097721130188830	513734690272968717	Ich will Rang 1 werden! | Dead by Daylight	Playing	YouTube	f	HandOfUncut	1626376164874	1626376954000
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626376178433	\N
223666520943886336	463097721130188830	513734690272968717	Ich will Rang 1 werden! | Dead by Daylight	Playing	YouTube	f	HandOfUncut	1626376184726	1626376955000
223666520943886336	463097721130188830	513734690272968717	Ich will Rang 1 werden! | Dead by Daylight	Playing	YouTube	f	HandOfUncut	1626376205091	1626376954000
403571252402585601	\N	\N	\N	Custom	Custom Status	f	\N	1626376217401	\N
223666520943886336	463097721130188830	513734690272968717	Ich will Rang 1 werden! | Dead by Daylight	Playing	YouTube	f	HandOfUncut	1626376224750	1626376955000
223666520943886336	463097721130188830	513734690272968717	Ich will Rang 1 werden! | Dead by Daylight	Playing	YouTube	f	HandOfUncut	1626376245027	1626376954000
223666520943886336	463097721130188830	513734690272968717	Ich will Rang 1 werden! | Dead by Daylight	Playing	YouTube	f	HandOfUncut	1626376264686	1626376955000
223666520943886336	463097721130188830	513734690272968717	Ich will Rang 1 werden! | Dead by Daylight	Playing	YouTube	f	HandOfUncut	1626376283739	1626376955000
223666520943886336	463097721130188830	513734690272968717	Ich will Rang 1 werden! | Dead by Daylight	Playing	YouTube	f	HandOfUncut	1626376303670	1626376955000
708309251562405908	\N	\N	\N	Custom	Custom Status	f	Wird aus Russland zurückgedrängt	1626376316498	\N
223666520943886336	463097721130188830	513734690272968717	Ich will Rang 1 werden! | Dead by Daylight	Playing	YouTube	f	HandOfUncut	1626376324079	1626376954000
361914328703696896	\N	\N	\N	Custom	Custom Status	f	\N	1626376326021	\N
223666520943886336	463097721130188830	513734690272968717	Ich will Rang 1 werden! | Dead by Daylight	Playing	YouTube	f	HandOfUncut	1626376344763	1626376955000
708309251562405908	445956193924546560	446301881636225042	in MENU	Playing	Rainbow Six Siege	f	\N	1626376357271	\N
202407278618476545	\N	spotify:ab67616d0000b273b150dfbc6c16e125fe4b4887	Red Right Hand - From 'Peaky Blinders' Original Soundtrack	Listening	Spotify	t	PJ Harvey	1626376359249	1626376529942
223666520943886336	463097721130188830	513734690272968717	Ich will Rang 1 werden! | Dead by Daylight	Playing	YouTube	f	HandOfUncut	1626376385006	1626376954000
223666520943886336	463097721130188830	513734690272968717	Ich will Rang 1 werden! | Dead by Daylight	Playing	YouTube	f	HandOfUncut	1626376405077	1626376954000
403571252402585601	\N	spotify:ab67616d0000b27373c9decd9ef9985df5bb4a3d	Standard (feat. Trettmann, Gringo, Ufo361 & Gzuz)	Listening	Spotify	t	KitschKrieg; SFR; Trettmann; Gzuz; Gringo	1626376426774	1626376621960
223666520943886336	463097721130188830	513734690272968717	Ich will Rang 1 werden! | Dead by Daylight	Playing	YouTube	f	HandOfUncut	1626376425045	1626376954000
223666520943886336	463097721130188830	513734690272968717	Ich will Rang 1 werden! | Dead by Daylight	Playing	YouTube	f	HandOfUncut	1626376444682	1626376955000
223666520943886336	463097721130188830	513734690272968717	Ich will Rang 1 werden! | Dead by Daylight	Playing	YouTube	f	HandOfUncut	1626376464674	1626376955000
223666520943886336	463097721130188830	513734690272968717	Ich will Rang 1 werden! | Dead by Daylight	Playing	YouTube	f	HandOfUncut	1626376485159	1626376955000
223666520943886336	463097721130188830	513734690272968717	Ich will Rang 1 werden! | Dead by Daylight	Playing	YouTube	f	HandOfUncut	1626376485491	1626376954000
223666520943886336	463097721130188830	513734690272968717	Ich will Rang 1 werden! | Dead by Daylight	Playing	YouTube	f	HandOfUncut	1626376505226	1626376954000
223666520943886336	463097721130188830	513734690272968717	Ich will Rang 1 werden! | Dead by Daylight	Playing	YouTube	f	HandOfUncut	1626376524782	1626376955000
202407278618476545	\N	spotify:ab67616d0000b27371967a9479cb4e9d97439db4	The Enemy's Den	Listening	Spotify	t	Jason Graves	1626378743299	1626378874792
206955935229280256	\N	\N	\N	Playing	%help || GC: 108036 || UC: 171341 || VC: 2 || Version: 5.9.0	f	\N	1626378828158	\N
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626378840753	\N
368355102949376000	\N	spotify:ab67616d0000b273ed42764d7a610b661a216504	204 - Der dunkle Wächter - Teil 04	Listening	Spotify	t	Die drei ???	1626378841037	1626378946930
261520809225355264	531450167799447552	531577494935961601	Main Menu	Playing	Insurgency: Sandstorm	t	\N	1626378870859	\N
261520809225355264	531450167799447552	531577494935961601	Playing a match	Playing	Insurgency: Sandstorm	t	\N	1626378884000	\N
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626378920318	\N
281381884460662785	\N	\N	\N	Custom	Custom Status	f	why does everyone i want to talk to hate me :(	1626381802152	\N
202407278618476545	445956193924546560	446301881636225042	QUICK MATCH match - Round 1 / 4	Playing	Rainbow Six Siege	f	\N	1626372074908	\N
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626372077053	\N
281381884460662785	\N	\N	\N	Custom	Custom Status	f	why does everyone i want to talk to hate me :(	1626372099986	\N
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626372110839	\N
281381884460662785	\N	\N	\N	Custom	Custom Status	f	why does everyone i want to talk to hate me :(	1626372130030	\N
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626372256660	\N
281381884460662785	356873622985506820	\N	\N	Playing	PLAYERUNKNOWN'S BATTLEGROUNDS	f	\N	1626368482946	\N
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626372266692	\N
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626372295881	\N
281381884460662785	\N	spotify:ab67616d0000b2735149c948fde506624246a684	Kingslayer (feat. BABYMETAL)	Listening	Spotify	t	Bring Me The Horizon; BABYMETAL	1626372283841	1626372503882
281381884460662785	\N	\N	\N	Custom	Custom Status	f	why does everyone i want to talk to hate me :(	1626372303664	\N
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626372311133	\N
403571252402585601	\N	spotify:ab67616d0000b273709a7fa7daf9ba4607c9eb31	Was hat es gebracht	Listening	Spotify	t	Gzuz	1626372319372	1626372472490
368355102949376000	\N	spotify:ab67616d0000b27335e64a6f05f6679c5b2f61e2	und der Fluch des Rubins - Wir wissen wo ihr steckt, Teil 1	Listening	Spotify	t	Die drei ???; Tim Grobe	1626372322405	1626372431137
708309251562405908	445956193924546560	446301881636225042	Completing a TRAINING GROUNDS mission	Playing	Rainbow Six Siege	f	\N	1626372337409	\N
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626372388035	\N
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626372426412	\N
281381884460662785	\N	\N	\N	Custom	Custom Status	f	why does everyone i want to talk to hate me :(	1626372499036	\N
202407278618476545	445956193924546560	446301881636225042	QUICK MATCH match - Round 1 / 4	Playing	Rainbow Six Siege	f	\N	1626372499764	\N
206955935229280256	\N	\N	\N	Playing	%help || GC: 108038 || UC: 176968 || VC: 0 || Version: 5.9.0	f	\N	1626372511631	\N
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626372561975	\N
281381884460662785	357607478105604096	\N	\N	Playing	War Thunder	f	\N	1626372566063	\N
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626372587261	\N
281381884460662785	\N	\N	\N	Custom	Custom Status	f	why does everyone i want to talk to hate me :(	1626372633590	\N
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626372635746	\N
403571252402585601	\N	\N	\N	Custom	Custom Status	f	\N	1626372648992	\N
403571252402585601	\N	spotify:ab67616d0000b2735b03af85bf0c4316130ccac4	Zu echt	Listening	Spotify	t	Mortel; Bonez MC	1626372653853	1626372810837
202407278618476545	\N	\N	\N	Custom	Custom Status	f	defekt aber nett	1626372655914	\N
368355102949376000	\N	spotify:ab67616d0000b27335e64a6f05f6679c5b2f61e2	und der Fluch des Rubins - Wir wissen wo ihr steckt, Teil 4	Listening	Spotify	t	Die drei ???; Tim Grobe	1626372652767	1626372758418
202407278618476545	445956193924546560	446301881636225042	QUICK MATCH match - Round 1 / 4	Playing	Rainbow Six Siege	f	\N	1626372655924	\N
202407278618476545	\N	spotify:ab67616d0000b273e1a6586d4a9a17f758054798	On the Case	Listening	Spotify	t	Rupert Gregson-Williams	1626372655329	1626372728942
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626372668200	\N
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626372694232	\N
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626372721142	\N
206955935229280256	\N	\N	\N	Playing	%help || GC: 108037 || UC: 177414 || VC: 1 || Version: 5.9.0	f	\N	1626372723810	\N
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626372725136	\N
202407278618476545	\N	\N	\N	Custom	Custom Status	f	defekt aber nett	1626372729784	\N
202407278618476545	445956193924546560	446301881636225042	QUICK MATCH match - Round 1 / 4	Playing	Rainbow Six Siege	f	\N	1626372729795	\N
202407278618476545	\N	spotify:ab67616d0000b273ca593ba6b61b7a164ae408b9	You Shall Never Have to Forgive Me Again	Listening	Spotify	t	P.T. Adamczyk	1626372729011	1626372925411
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626372738447	\N
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626372745718	\N
368355102949376000	\N	spotify:ab67616d0000b27335e64a6f05f6679c5b2f61e2	und der Fluch des Rubins - Wir wissen wo ihr steckt, Teil 5	Listening	Spotify	t	Die drei ???; Tim Grobe	1626372758403	1626372886174
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626372765173	\N
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626372775618	\N
403571252402585601	\N	\N	\N	Custom	Custom Status	f	\N	1626372806645	\N
403571252402585601	\N	spotify:ab67616d0000b27377668f0673e28296429f6914	Nur mit den Echten	Listening	Spotify	t	Gzuz; Trettmann	1626372811315	1626373007119
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626372825589	\N
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626372830811	\N
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626372833066	\N
271659253486452736	\N	\N	\N	Custom	Custom Status	f	Whoa, I got two hands! Brujo, I need two beers!	1626372838901	\N
271659253486452736	406645134445248530	\N	\N	Playing	Northgard	f	\N	1626372839322	\N
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626372869319	\N
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626372871465	\N
361914328703696896	\N	\N	\N	Custom	Custom Status	f	\N	1626373571366	\N
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626372874498	\N
223666520943886336	463097721130188830	513734690272968717	Ich will Rang 1 werden! | Dead by Daylight	Playing	YouTube	f	HandOfUncut	1626376443885	1626376954000
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626376449413	\N
223666520943886336	463097721130188830	513734690272968717	Ich will Rang 1 werden! | Dead by Daylight	Playing	YouTube	f	HandOfUncut	1626376464069	1626376954000
361914328703696896	\N	\N	\N	Custom	Custom Status	f	\N	1626376473375	\N
368355102949376000	\N	spotify:ab67616d0000b27335e64a6f05f6679c5b2f61e2	und der Fluch des Rubins - Des Rätsels Lösung, Teil 11	Listening	Spotify	t	Die drei ???; Tim Grobe	1626376471903	1626376576185
384759010332770307	\N	\N	\N	Custom	Custom Status	f	Born to shit, forced to wipe...	1626376483728	\N
223666520943886336	463097721130188830	513734690272968717	Ich will Rang 1 werden! | Dead by Daylight	Playing	YouTube	f	HandOfUncut	1626376504712	1626376955000
223666520943886336	463097721130188830	513734690272968717	Ich will Rang 1 werden! | Dead by Daylight	Playing	YouTube	f	HandOfUncut	1626376524067	1626376954000
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626378762213	\N
361914328703696896	\N	spotify:ab67616d0000b273521a220fff194eafd39c0f66	9Leben	Listening	Spotify	t	TJ_beastboy; Mary Man; mokuba; Young Kira	1626378765152	1626379020005
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626378787198	\N
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626378853145	\N
325704347767799808	790655993809338398	798617001685024808	Climax (Extended Mix)	Playing	YouTube Music	f	USAO	1626378901795	1626379118795
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626378932811	\N
206955935229280256	\N	\N	\N	Playing	%help || GC: 108037 || UC: 171660 || VC: 2 || Version: 5.9.0	f	\N	1626378958718	\N
547850369695219712	\N	spotify:ab67616d0000b273a3ee119d6587d8f29c939a24	Monster - Robin Schulz Remix	Listening	Spotify	t	LUM!X; Gabry Ponte; Robin Schulz	1626378997862	1626379163809
271659253486452736	401518684763586560	416719019576393738	\N	Playing	League of Legends	f	In der Warteschlange	1626379068000	\N
459713629441490945	445956193924546560	446301881636225042	im MENÜ	Playing	Rainbow Six Siege	f	\N	1626379081216	\N
271659253486452736	401518684763586560	416719019576393738	Kluft der Beschwörer	Playing	League of Legends	f	In Championauswahl	1626379119201	\N
206955935229280256	\N	\N	\N	Playing	%help || GC: 108036 || UC: 172053 || VC: 2 || Version: 5.9.0	f	\N	1626379130135	\N
708309251562405908	\N	\N	\N	Custom	Custom Status	f	Wird aus Russland zurückgedrängt	1626379140477	\N
708309251562405908	445956193924546560	446301881636225042	in MENU	Playing	Rainbow Six Siege	f	\N	1626379146331	\N
708309251562405908	\N	\N	\N	Custom	Custom Status	f	Wird aus Russland zurückgedrängt	1626379150718	\N
202407278618476545	\N	spotify:ab67616d0000b2733434091975a24854d631c4dd	Main Theme	Listening	Spotify	t	Arkadiusz Reikowski; George Strezov; Penelopa Willman-Szynalik	1626379172821	1626379305121
271659253486452736	401518684763586560	403245048877023232	Kluft der Beschwörer	Playing	League of Legends	f	Im Spiel	1626379213000	\N
509017844537622532	358422126602223616	\N	\N	Playing	Factorio	f	\N	1626379109912	\N
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626379263152	\N
202407278618476545	\N	spotify:ab67616d0000b273e93f1cfbda250721663f1474	Passing the Book	Listening	Spotify	t	Jeff Russo	1626379305062	1626379436448
302519349489434624	444634001152671744	447590395983953920	\N	Playing	NeosVR	t	In private world	1626379318000	\N
325704347767799808	790655993809338398	798617001685024808	Chariot (Extended Mix)	Playing	YouTube Music	f	USAO	1626379334113	\N
361914328703696896	356875057940791296	\N	\N	Playing	Counter-Strike: Global Offensive	f	\N	1626379346559	\N
206955935229280256	\N	\N	\N	Playing	%help || GC: 108036 || UC: 172538 || VC: 2 || Version: 5.9.0	f	\N	1626379351318	\N
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626379380092	\N
202407278618476545	\N	spotify:ab67616d0000b2737fd4f2a96a14bd76d022dbec	Moral Insanity	Listening	Spotify	t	Hans Zimmer	1626379436433	1626379527646
368355102949376000	\N	spotify:ab67616d0000b273ed42764d7a610b661a216504	204 - Der dunkle Wächter - Teil 11	Listening	Spotify	t	Die drei ???	1626379573961	1626379674321
325704347767799808	790655993809338398	798617001685024808	Cthugha	Playing	YouTube Music	f	USAO	1626379631177	\N
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626379662818	\N
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626379698561	\N
459713629441490945	445956193924546560	446301881636225042	im MENÜ	Playing	Rainbow Six Siege	f	\N	1626379724167	\N
202407278618476545	\N	spotify:ab67616d0000b2737013b9d109f980054a1d7371	You Can Change the World	Listening	Spotify	t	Lorne Balfe	1626379765565	1626379900391
681192725152006160	401518684763586560	416719019576393738	Howling Abyss (ARAM)	Playing	League of Legends	f	In Lobby	1626379801603	\N
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626379823791	\N
361914328703696896	\N	spotify:ab67616d0000b273521a220fff194eafd39c0f66	Oh Damn	Listening	Spotify	t	TJ_beastboy; Mary Man	1626379859272	1626380126885
281381884460662785	\N	\N	\N	Custom	Custom Status	f	why does everyone i want to talk to hate me :(	1626379979950	\N
281381884460662785	\N	spotify:ab67616d0000b2736ba3687aec030cec6089ed2c	Судно (Борис Рижий)	Listening	Spotify	t	Molchat Doma	1626379994118	1626380135512
368355102949376000	\N	spotify:ab67616d0000b273ed42764d7a610b661a216504	204 - Der dunkle Wächter - Teil 15	Listening	Spotify	t	Die drei ???	1626380001174	1626380091414
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626380049786	\N
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626380083295	\N
361914328703696896	\N	spotify:ab67616d0000b273e604402d6fc28915d6c5865e	(Party) CRASHER	Listening	Spotify	t	TJ_beastboy	1626380127218	1626380361218
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626380568031	\N
206955935229280256	\N	\N	\N	Playing	%help || GC: 108035 || UC: 175262 || VC: 2 || Version: 5.9.0	f	\N	1626380590354	\N
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626380595065	\N
271659253486452736	\N	\N	\N	Custom	Custom Status	f	Whoa, I got two hands! Brujo, I need two beers!	1626380642272	\N
271659253486452736	\N	\N	\N	Custom	Custom Status	f	Whoa, I got two hands! Brujo, I need two beers!	1626380646700	\N
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626372878633	\N
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626372889998	\N
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626376511160	\N
223666520943886336	463097721130188830	513734690272968717	Ich will Rang 1 werden! | Dead by Daylight	Playing	YouTube	f	HandOfUncut	1626376523758	1626376955000
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626378957288	\N
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626378995582	\N
271659253486452736	\N	\N	\N	Custom	Custom Status	f	Whoa, I got two hands! Brujo, I need two beers!	1626379010742	\N
361914328703696896	\N	\N	\N	Custom	Custom Status	f	\N	1626379018215	\N
411656316814098441	\N	\N	\N	Custom	Custom Status	f	snowfox 😳	1626379055077	\N
271659253486452736	\N	\N	\N	Custom	Custom Status	f	Whoa, I got two hands! Brujo, I need two beers!	1626379070339	\N
708309251562405908	445956193924546560	446301881636225042	in MENU	Playing	Rainbow Six Siege	f	\N	1626379118570	\N
325704347767799808	790655993809338398	798617001685024808	Chariot (Extended Mix)	Playing	YouTube Music	f	USAO	1626379119588	\N
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626379126960	\N
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626379136176	\N
547850369695219712	\N	spotify:ab67616d0000b273a4a2cf26c43c1fd4d33a1e86	Amnesia (feat. GASHI)	Listening	Spotify	t	Loud Luxury; Ship Wrek; GASHI	1626379160635	1626379354183
361914328703696896	\N	\N	\N	Custom	Custom Status	f	\N	1626379229777	\N
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626379257725	\N
368355102949376000	\N	spotify:ab67616d0000b273ed42764d7a610b661a216504	204 - Der dunkle Wächter - Teil 08	Listening	Spotify	t	Die drei ???	1626379260257	1626379359790
302519349489434624	\N	\N	\N	Custom	Custom Status	f	\N	1626379309847	\N
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626379316914	\N
325704347767799808	790655993809338398	798617001685024808	Cyaegha	Playing	YouTube Music	f	USAO	1626379335188	1626379475188
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626379339126	\N
302519349489434624	\N	\N	\N	Custom	Custom Status	f	\N	1626379378045	\N
361914328703696896	\N	spotify:ab67616d0000b273521a220fff194eafd39c0f66	Grizzly^10	Listening	Spotify	t	TJ_beastboy; Mary Man	1626379459199	1626379688132
325704347767799808	790655993809338398	798617001685024808	Cthugha	Playing	YouTube Music	f	USAO	1626379475349	\N
202407278618476545	\N	spotify:ab67616d0000b2732472601180911ff89445cbc8	The Night Unfurls	Listening	Spotify	t	SIE Sound Team	1626379527681	1626379653561
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626379574557	\N
368355102949376000	\N	spotify:ab67616d0000b273ed42764d7a610b661a216504	204 - Der dunkle Wächter - Teil 12	Listening	Spotify	t	Die drei ???	1626379674158	1626379780918
547850369695219712	\N	spotify:ab67616d0000b273634a6f2dd178a9f2542c21a1	Mean to Me	Listening	Spotify	t	yuma.; LissA	1626379693499	1626379908353
459713629441490945	\N	\N	\N	Custom	Custom Status	f	1:1	1626379724155	\N
202407278618476545	\N	\N	\N	Custom	Custom Status	f	defekt aber nett	1626379766447	\N
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626379768910	\N
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626379845806	\N
361914328703696896	\N	\N	\N	Custom	Custom Status	f	\N	1626379856866	\N
681192725152006160	401518684763586560	416719019576393738	Howling Abyss (ARAM)	Playing	League of Legends	f	In Champion Select	1626379866388	\N
202407278618476545	\N	\N	\N	Custom	Custom Status	f	defekt aber nett	1626379884823	\N
368355102949376000	\N	spotify:ab67616d0000b273ed42764d7a610b661a216504	204 - Der dunkle Wächter - Teil 14	Listening	Spotify	t	Die drei ???	1626379887369	1626380001049
411656316814098441	\N	\N	\N	Custom	Custom Status	f	snowfox 😳	1626379918618	\N
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626379925166	\N
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626379946049	\N
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626379957423	\N
263407413737160718	\N	\N	\N	Custom	Custom Status	f	write this down	1626379965921	\N
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626379977287	\N
281381884460662785	\N	\N	\N	Custom	Custom Status	f	why does everyone i want to talk to hate me :(	1626379989576	\N
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626380002480	\N
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626380027162	\N
368355102949376000	\N	spotify:ab67616d0000b273ed42764d7a610b661a216504	204 - Der dunkle Wächter - Teil 16	Listening	Spotify	t	Die drei ???	1626380091257	1626380184417
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626380568082	\N
403571252402585601	356877880938070016	\N	\N	Playing	Rocket League	f	\N	1626380590382	\N
403571252402585601	356877880938070016	\N	\N	Playing	Rocket League	t	Hauptmenü	1626380593745	\N
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626380603612	\N
547850369695219712	\N	spotify:ab67616d0000b273ead13021d0f2957958081f28	Piece Of Your Heart	Listening	Spotify	t	MEDUZA; Goodboys	1626380647373	1626380800286
311607742542381068	\N	\N	\N	Custom	Custom Status	f	If I continue like this I will die before I am 30, the doctors said	1626380714873	\N
411656316814098441	\N	\N	\N	Custom	Custom Status	f	snowfox 😳	1626380756856	\N
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626380772222	\N
281381884460662785	\N	spotify:ab67616d0000b2733a9f76f51c9049765f7508ad	Друг	Listening	Spotify	t	Труд	1626380808935	1626381017496
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626380831608	\N
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626372885493	\N
206955935229280256	\N	\N	\N	Playing	%help || GC: 108038 || UC: 177837 || VC: 0 || Version: 5.9.0	f	\N	1626372907099	\N
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626372978779	\N
202407278618476545	\N	\N	\N	Custom	Custom Status	f	defekt aber nett	1626373078209	\N
202407278618476545	\N	\N	\N	Custom	Custom Status	f	defekt aber nett	1626373122060	\N
403571252402585601	\N	spotify:ab67616d0000b2734fe44ae80b389b33e4b8cf20	Schwarzer Rabe	Listening	Spotify	t	RAF Camora; Sprachtot	1626373170069	1626373339789
368355102949376000	\N	spotify:ab67616d0000b27335e64a6f05f6679c5b2f61e2	und der Fluch des Rubins - Justus im Verhör, Teil 4	Listening	Spotify	t	Die drei ???; Tim Grobe	1626373194865	1626373293567
434794201075417101	\N	\N	\N	Custom	Custom Status	f	\N	1626373213275	\N
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626373240007	\N
202407278618476545	445956193924546560	446301881636225042	QUICK MATCH match - Round 1 / 4	Playing	Rainbow Six Siege	f	\N	1626373254248	\N
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626373272276	\N
202407278618476545	\N	spotify:ab67616d0000b2731d108de1aeaa55a289193868	Corvo Attano's Theme	Listening	Spotify	t	Daniel Licht	1626373344946	1626373447511
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626373375990	\N
361914328703696896	\N	\N	\N	Custom	Custom Status	f	\N	1626373403329	\N
202407278618476545	\N	spotify:ab67616d0000b2731c950be48e1ff2ac7d5320f0	Finis Est Principium Alterius	Listening	Spotify	t	Petri Alanko	1626373447573	1626373617026
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626373479721	\N
361914328703696896	\N	\N	\N	Playing	Tom Clancy's Rainbow Six Siege	f	\N	1626373491212	\N
403571252402585601	\N	spotify:ab67616d0000b27377668f0673e28296429f6914	Bis dass der Tod uns scheidet	Listening	Spotify	t	Gzuz	1626373498457	1626373664095
361914328703696896	\N	\N	\N	Custom	Custom Status	f	\N	1626373532051	\N
361914328703696896	445956193924546560	446301881636225042	im MENÜ	Playing	Rainbow Six Siege	f	\N	1626373571377	\N
361914328703696896	\N	\N	\N	Custom	Custom Status	f	\N	1626373582425	\N
361914328703696896	445956193924546560	446301881636225042	Spielt ein „ENTDECKUNG“ - Runde 1/4	Playing	Rainbow Six Siege	f	\N	1626373612644	\N
202407278618476545	\N	\N	\N	Custom	Custom Status	f	defekt aber nett	1626373617549	\N
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626373680012	\N
271659253486452736	\N	\N	\N	Playing	Total War: WARHAMMER II	f	\N	1626373720815	\N
368355102949376000	\N	spotify:ab67616d0000b27335e64a6f05f6679c5b2f61e2	und der Fluch des Rubins - Bob auf frischer Fährte, Teil 1	Listening	Spotify	t	Die drei ???; Tim Grobe	1626373729627	1626373836938
271659253486452736	363426802640617482	\N	\N	Playing	Total War: WARHAMMER II	f	\N	1626373735897	\N
280050308611309569	\N	\N	\N	Playing	Mass Effect™ Legendary Edition	f	\N	1626373746029	\N
202407278618476545	\N	\N	\N	Custom	Custom Status	f	defekt aber nett	1626376530622	\N
223666520943886336	463097721130188830	513734690272968717	Ich will Rang 1 werden! | Dead by Daylight	Playing	YouTube	f	HandOfUncut	1626376543735	1626376955000
223666520943886336	463097721130188830	513734690272968717	Ich will Rang 1 werden! | Dead by Daylight	Playing	YouTube	f	HandOfUncut	1626376564001	1626376954000
368355102949376000	\N	spotify:ab67616d0000b27335e64a6f05f6679c5b2f61e2	und der Fluch des Rubins - Überfall aus dem Hinterhalt, Teil 1	Listening	Spotify	t	Die drei ???; Tim Grobe	1626376576184	1626376765790
223666520943886336	463097721130188830	513734690272968717	Ich will Rang 1 werden! | Dead by Daylight	Playing	YouTube	f	HandOfUncut	1626376584584	1626376955000
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626376585151	\N
384759010332770307	\N	\N	\N	Custom	Custom Status	f	Born to shit, forced to wipe...	1626376604365	\N
223666520943886336	463097721130188830	513734690272968717	Ich will Rang 1 werden! | Dead by Daylight	Playing	YouTube	f	HandOfUncut	1626376604759	1626376955000
403571252402585601	\N	spotify:ab67616d0000b273508d1c07113a358443787abd	Lebenslauf	Listening	Spotify	t	Bonez MC; Gzuz	1626376622442	1626376830402
223666520943886336	463097721130188830	513734690272968717	Ich will Rang 1 werden! | Dead by Daylight	Playing	YouTube	f	HandOfUncut	1626376624724	1626376955000
361914328703696896	\N	\N	\N	Custom	Custom Status	f	\N	1626376628408	\N
459713629441490945	\N	\N	\N	Custom	Custom Status	f	1:1	1626376639161	\N
223666520943886336	463097721130188830	513734690272968717	Ich will Rang 1 werden! | Dead by Daylight	Playing	YouTube	f	HandOfUncut	1626376644794	\N
276431762815451138	547786685795139585	573258041902891029	ledermann	Playing	CLion	t	Editing hs.rs	1626376653145	\N
191594115907977225	427196986064764928	427223277530906624	1.12.2 with 98 Mods	Playing	Minecraft	f	Starting Minecraft	1626376678000	\N
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626376684932	\N
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626376691077	\N
459713629441490945	356876590342340608	\N	\N	Playing	Tom Clancy's Rainbow Six Siege	f	\N	1626376702681	\N
202407278618476545	\N	\N	\N	Custom	Custom Status	f	defekt aber nett	1626376725896	\N
361914328703696896	356944273133928458	\N	\N	Playing	Brawlhalla	f	\N	1626376729755	\N
361914328703696896	\N	\N	\N	Custom	Custom Status	f	\N	1626376809962	\N
403571252402585601	\N	\N	\N	Custom	Custom Status	f	\N	1626376816312	\N
459713629441490945	445956193924546560	446301881636225042	Sucht nach „SCHNELLES MATCH“-Match	Playing	Rainbow Six Siege	f	\N	1626376845609	\N
459713629441490945	\N	\N	\N	Custom	Custom Status	f	1:1	1626376854731	\N
459713629441490945	\N	\N	\N	Custom	Custom Status	f	1:1	1626376859729	\N
459713629441490945	\N	\N	\N	Custom	Custom Status	f	1:1	1626376859847	\N
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626376860548	\N
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626376885943	\N
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626376959978	\N
368355102949376000	\N	spotify:ab67616d0000b273ed42764d7a610b661a216504	204 - Der dunkle Wächter - Teil 06	Listening	Spotify	t	Die drei ???	1626379051314	1626379149314
271659253486452736	\N	\N	\N	Custom	Custom Status	f	Whoa, I got two hands! Brujo, I need two beers!	1626379068291	\N
459713629441490945	\N	\N	\N	Custom	Custom Status	f	1:1	1626379081206	\N
271659253486452736	401518684763586560	416719019576393738	\N	Playing	League of Legends	f	In der Warteschlange	1626379083000	\N
403571252402585601	356877880938070016	\N	\N	Playing	Rocket League	t	Doppel in AquaDome	1626380655594	\N
368355102949376000	\N	spotify:ab67616d0000b27335e64a6f05f6679c5b2f61e2	und der Fluch des Rubins - Justus im Verhör, Teil 1	Listening	Spotify	t	Die drei ???; Tim Grobe	1626372886157	1626372992918
202407278618476545	\N	\N	\N	Custom	Custom Status	f	defekt aber nett	1626372926253	\N
202407278618476545	445956193924546560	446301881636225042	QUICK MATCH match - Round 1 / 4	Playing	Rainbow Six Siege	f	\N	1626372926281	\N
202407278618476545	\N	spotify:ab67616d0000b273ca593ba6b61b7a164ae408b9	Trouble Finds Trouble	Listening	Spotify	t	Paul Leonard-Morgan	1626372925420	1626373077580
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626372931269	\N
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626372935922	\N
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626372942222	\N
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626372982158	\N
368355102949376000	\N	spotify:ab67616d0000b27335e64a6f05f6679c5b2f61e2	und der Fluch des Rubins - Justus im Verhör, Teil 2	Listening	Spotify	t	Die drei ???; Tim Grobe	1626372992932	1626373090504
202407278618476545	\N	\N	\N	Custom	Custom Status	f	defekt aber nett	1626373001513	\N
202407278618476545	445956193924546560	446301881636225042	in MENU	Playing	Rainbow Six Siege	f	\N	1626373001524	\N
403571252402585601	\N	\N	\N	Custom	Custom Status	f	\N	1626373002843	\N
403571252402585601	\N	spotify:ab67616d0000b2732cb925c9447a0e5258846e1b	Turtlez	Listening	Spotify	t	Big Toe; Bonez MC	1626373007600	1626373169570
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626373060092	\N
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626373071248	\N
202407278618476545	445956193924546560	446301881636225042	in MENU	Playing	Rainbow Six Siege	f	\N	1626373078220	\N
202407278618476545	\N	spotify:ab67616d0000b2732472601180911ff89445cbc8	Celestial Emissary	Listening	Spotify	t	SIE Sound Team	1626373077615	1626373253375
368355102949376000	\N	spotify:ab67616d0000b27335e64a6f05f6679c5b2f61e2	und der Fluch des Rubins - Justus im Verhör, Teil 3	Listening	Spotify	t	Die drei ???; Tim Grobe	1626373090552	1626373194976
202407278618476545	\N	\N	\N	Custom	Custom Status	f	defekt aber nett	1626373114479	\N
202407278618476545	445956193924546560	446301881636225042	Looking for QUICK MATCH match	Playing	Rainbow Six Siege	f	\N	1626373114519	\N
202407278618476545	445956193924546560	446301881636225042	in MENU	Playing	Rainbow Six Siege	f	\N	1626373122071	\N
202407278618476545	\N	\N	\N	Custom	Custom Status	f	defekt aber nett	1626373126030	\N
202407278618476545	445956193924546560	446301881636225042	in MENU	Playing	Rainbow Six Siege	f	\N	1626373126040	\N
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626373128385	\N
206955935229280256	\N	\N	\N	Playing	%help || GC: 108037 || UC: 178342 || VC: 0 || Version: 5.9.0	f	\N	1626373146817	\N
403571252402585601	\N	\N	\N	Custom	Custom Status	f	\N	1626373165351	\N
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626373166478	\N
708309251562405908	\N	\N	\N	Custom	Custom Status	f	Wird aus Russland zurückgedrängt	1626373191054	\N
708309251562405908	445956193924546560	446301881636225042	Completing a TRAINING GROUNDS mission	Playing	Rainbow Six Siege	f	\N	1626373191065	\N
271659253486452736	\N	\N	\N	Custom	Custom Status	f	Whoa, I got two hands! Brujo, I need two beers!	1626373194501	\N
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626373219010	\N
206955935229280256	\N	\N	\N	Playing	%help || GC: 108038 || UC: 178535 || VC: 0 || Version: 5.9.0	f	\N	1626373238568	\N
202407278618476545	\N	\N	\N	Custom	Custom Status	f	defekt aber nett	1626373254234	\N
202407278618476545	\N	spotify:ab67616d0000b273858544fa6d76b5182a87888c	The Rats	Listening	Spotify	t	Olivier Deriviere	1626373253573	1626373345378
206955935229280256	\N	\N	\N	Playing	%help || GC: 108037 || UC: 178654 || VC: 0 || Version: 5.9.0	f	\N	1626373290490	\N
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626373292962	\N
403571252402585601	\N	\N	\N	Custom	Custom Status	f	\N	1626373335540	\N
403571252402585601	\N	spotify:ab67616d0000b27359c82301b3fb8b1c829182c2	Dealer	Listening	Spotify	t	LX; Maxwell	1626373340264	1626373497966
202407278618476545	\N	\N	\N	Custom	Custom Status	f	defekt aber nett	1626373345587	\N
202407278618476545	445956193924546560	446301881636225042	QUICK MATCH match - Round 1 / 4	Playing	Rainbow Six Siege	f	\N	1626373345598	\N
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626373355201	\N
368355102949376000	\N	spotify:ab67616d0000b27335e64a6f05f6679c5b2f61e2	und der Fluch des Rubins - Justus im Verhör, Teil 5	Listening	Spotify	t	Die drei ???; Tim Grobe	1626373354252	1626373472201
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626373376602	\N
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626373396980	\N
361914328703696896	\N	\N	\N	Custom	Custom Status	f	\N	1626373400256	\N
361914328703696896	\N	spotify:ab67616d0000b273991fc74daa3ee724afcb4766	Ways to Fall Apart	Listening	Spotify	t	DYSN	1626373336938	1626373540443
361914328703696896	\N	\N	\N	Custom	Custom Status	f	\N	1626373403635	\N
361914328703696896	\N	spotify:ab67616d0000b273cec7c8ebb684882dbaf476f5	Cradles	Listening	Spotify	t	Sub Urban	1626373406082	1626373615911
202407278618476545	\N	\N	\N	Custom	Custom Status	f	defekt aber nett	1626373448179	\N
202407278618476545	445956193924546560	446301881636225042	QUICK MATCH match - Round 1 / 4	Playing	Rainbow Six Siege	f	\N	1626373448190	\N
368355102949376000	\N	spotify:ab67616d0000b27335e64a6f05f6679c5b2f61e2	und der Fluch des Rubins - Justus im Verhör, Teil 6	Listening	Spotify	t	Die drei ???; Tim Grobe	1626373472486	1626373599503
361914328703696896	\N	\N	\N	Custom	Custom Status	f	\N	1626373488218	\N
403571252402585601	\N	\N	\N	Custom	Custom Status	f	\N	1626373493747	\N
206955935229280256	\N	\N	\N	Playing	%help || GC: 108036 || UC: 179089 || VC: 1 || Version: 5.9.0	f	\N	1626373499174	\N
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626373499966	\N
361914328703696896	445956193924546560	446301881636225042	im MENÜ	Playing	Rainbow Six Siege	f	\N	1626373532061	\N
361914328703696896	\N	\N	\N	Custom	Custom Status	f	\N	1626373562252	\N
361914328703696896	445956193924546560	446301881636225042	Sucht nach „OHNE RANG“-Match	Playing	Rainbow Six Siege	f	\N	1626373562265	\N
361914328703696896	\N	\N	\N	Custom	Custom Status	f	\N	1626373565530	\N
361914328703696896	445956193924546560	446301881636225042	im MENÜ	Playing	Rainbow Six Siege	f	\N	1626373565541	\N
361914328703696896	445956193924546560	446301881636225042	Spielt ein „ENTDECKUNG“ - Runde 1/4	Playing	Rainbow Six Siege	f	\N	1626373582436	\N
368355102949376000	\N	spotify:ab67616d0000b27335e64a6f05f6679c5b2f61e2	und der Fluch des Rubins - Justus im Verhör, Teil 7	Listening	Spotify	t	Die drei ???; Tim Grobe	1626373599465	1626373729543
202407278618476545	445956193924546560	446301881636225042	QUICK MATCH match - Round 1 / 4	Playing	Rainbow Six Siege	f	\N	1626373617559	\N
276431762815451138	547786685795139585	573258041902891029	ledermann	Playing	CLion	t	Editing hs.rs	1626373624274	\N
271659253486452736	\N	\N	\N	Custom	Custom Status	f	Whoa, I got two hands! Brujo, I need two beers!	1626373730405	\N
202407278618476545	\N	\N	\N	Custom	Custom Status	f	defekt aber nett	1626373735413	\N
202407278618476545	\N	spotify:ab67616d0000b273e0976dbb561453c9081e43fe	Plight	Listening	Spotify	t	Brain	1626376529918	1626376669177
223666520943886336	463097721130188830	513734690272968717	Ich will Rang 1 werden! | Dead by Daylight	Playing	YouTube	f	HandOfUncut	1626376545160	1626376954000
223666520943886336	463097721130188830	513734690272968717	Ich will Rang 1 werden! | Dead by Daylight	Playing	YouTube	f	HandOfUncut	1626376563694	1626376955000
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626376569007	\N
223666520943886336	463097721130188830	513734690272968717	Ich will Rang 1 werden! | Dead by Daylight	Playing	YouTube	f	HandOfUncut	1626376583976	1626376954000
403571252402585601	\N	\N	\N	Custom	Custom Status	f	\N	1626376618066	\N
223666520943886336	463097721130188830	513734690272968717	Ich will Rang 1 werden! | Dead by Daylight	Playing	YouTube	f	HandOfUncut	1626376624007	1626376954000
459713629441490945	\N	\N	\N	Custom	Custom Status	f	1:1	1626376626770	\N
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626376627794	\N
459713629441490945	\N	\N	\N	Custom	Custom Status	f	1:1	1626376638546	\N
223666520943886336	463097721130188830	513734690272968717	Ich will Rang 1 werden! | Dead by Daylight	Playing	YouTube	f	HandOfUncut	1626376643978	1626376954000
547850369695219712	\N	spotify:ab67616d0000b273a7b5dd69ce282b9e70938401	Candlelight	Listening	Spotify	t	LIZOT	1626376673984	1626376824756
459713629441490945	\N	\N	\N	Custom	Custom Status	f	1:1	1626376704389	\N
459713629441490945	445956193924546560	446301881636225042	im MENÜ	Playing	Rainbow Six Siege	f	\N	1626376719043	\N
361914328703696896	\N	\N	\N	Custom	Custom Status	f	\N	1626376726712	\N
361914328703696896	\N	\N	\N	Custom	Custom Status	f	\N	1626376756924	\N
403571252402585601	445956193924546560	446301881636225042	in MENU	Playing	Rainbow Six Siege	f	\N	1626376766695	\N
368355102949376000	\N	spotify:ab67616d0000b27335e64a6f05f6679c5b2f61e2	und der Fluch des Rubins - Überfall aus dem Hinterhalt, Teil 2	Listening	Spotify	t	Die drei ???; Tim Grobe	1626376765859	1626376944973
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626376824196	\N
403571252402585601	445956193924546560	446301881636225042	Completing a TRAINING GROUNDS mission	Playing	Rainbow Six Siege	f	\N	1626376826460	\N
459713629441490945	\N	\N	\N	Custom	Custom Status	f	1:1	1626376845598	\N
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626376861060	\N
361914328703696896	\N	spotify:ab67616d0000b27319915a3f2067b7d05ec79c8b	GEiSTESKRA$$	Listening	Spotify	t	TJ_beastboy; dyzzy.earth	1626376917978	1626377110978
547850369695219712	\N	spotify:ab67616d0000b2733852b314a98be5ccf31439be	Time To Let Go	Listening	Spotify	t	Metrik	1626376966048	1626377291565
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626376991312	\N
271659253486452736	\N	\N	\N	Custom	Custom Status	f	Whoa, I got two hands! Brujo, I need two beers!	1626379082827	\N
271659253486452736	\N	\N	\N	Custom	Custom Status	f	Whoa, I got two hands! Brujo, I need two beers!	1626379119197	\N
263407413737160718	\N	\N	\N	Custom	Custom Status	f	write this down	1626379148567	\N
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626379278000	\N
302519349489434624	\N	\N	\N	Playing	Neos VR	f	\N	1626379311787	\N
302519349489434624	444634001152671744	447590395983953920	\N	Playing	NeosVR	t	In private world	1626379371000	\N
368355102949376000	\N	spotify:ab67616d0000b273ed42764d7a610b661a216504	204 - Der dunkle Wächter - Teil 10	Listening	Spotify	t	Die drei ???	1626379463036	1626379573796
325704347767799808	790655993809338398	798617001685024808	Cyaegha	Playing	YouTube Music	f	USAO	1626379474914	\N
325704347767799808	790655993809338398	798617001685024808	Cthugha	Playing	YouTube Music	f	USAO	1626379475336	\N
547850369695219712	\N	spotify:ab67616d0000b2735c27813ae019011fcb370c78	Ride It	Listening	Spotify	t	Regard	1626379539030	1626379696635
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626379593411	\N
271659253486452736	401518684763586560	416719019576393738	\N	Playing	League of Legends	f	In der Warteschlange	1626380688000	\N
302519349489434624	444634001152671744	447590395983953920	\N	Playing	NeosVR	t	In private world	1626380716000	\N
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626380759314	\N
547850369695219712	\N	spotify:ab67616d0000b273824aa5da19fc1fed9105b799	Come Close	Listening	Spotify	t	Vini Vici; Neelix; MKLA	1626380797122	1626380991469
368355102949376000	\N	spotify:ab67616d0000b273ed42764d7a610b661a216504	204 - Der dunkle Wächter - Teil 23	Listening	Spotify	t	Die drei ???	1626380817694	1626380926427
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626380924280	\N
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626381007326	\N
281381884460662785	\N	\N	\N	Custom	Custom Status	f	why does everyone i want to talk to hate me :(	1626381017510	\N
547850369695219712	\N	spotify:ab67616d0000b27320062cf8da0f580e9118b487	Waves - Robin Schulz Radio Edit	Listening	Spotify	t	Mr. Probz; Robin Schulz	1626381046619	1626381254752
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626381056785	\N
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626381060164	\N
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626381089041	\N
368355102949376000	\N	spotify:ab67616d0000b273ed42764d7a610b661a216504	204 - Der dunkle Wächter - Teil 26	Listening	Spotify	t	Die drei ???	1626381135499	1626381232792
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626381159697	\N
325704347767799808	790655993809338398	798617001685024808	Different	Playing	YouTube Music	f	Pendulum	1626381196872	\N
708309251562405908	445956193924546560	446301881636225042	in MENU	Playing	Rainbow Six Siege	f	\N	1626381331740	\N
361914328703696896	\N	\N	\N	Custom	Custom Status	f	\N	1626373612633	\N
202407278618476545	\N	spotify:ab67616d0000b27368e5e7cc9256ca8c0917a9dd	All Gone (The Outside)	Listening	Spotify	t	Gustavo Santaolalla; Alan Umstead	1626373616942	1626373734848
206955935229280256	\N	\N	\N	Playing	%help || GC: 108037 || UC: 179391 || VC: 1 || Version: 5.9.0	f	\N	1626373636697	\N
403571252402585601	\N	spotify:ab67616d0000b2734e6a637c8f9a89284148b232	Wolke 7	Listening	Spotify	t	Gzuz; Bonez MC	1626373664569	1626373820489
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626373701516	\N
271659253486452736	\N	\N	\N	Custom	Custom Status	f	Whoa, I got two hands! Brujo, I need two beers!	1626373720461	\N
202407278618476545	445956193924546560	446301881636225042	QUICK MATCH match - Round 1 / 4	Playing	Rainbow Six Siege	f	\N	1626373735424	\N
271659253486452736	\N	\N	\N	Custom	Custom Status	f	Whoa, I got two hands! Brujo, I need two beers!	1626373735470	\N
223666520943886336	463097721130188830	513734690272968717	Ich will Rang 1 werden! | Dead by Daylight	Playing	YouTube	f	HandOfUncut	1626376544044	1626376954000
206955935229280256	\N	\N	\N	Playing	%help || GC: 108037 || UC: 179151 || VC: 3 || Version: 5.9.0	f	\N	1626376550484	\N
223666520943886336	463097721130188830	513734690272968717	Ich will Rang 1 werden! | Dead by Daylight	Playing	YouTube	f	HandOfUncut	1626376564718	1626376955000
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626376596049	\N
223666520943886336	463097721130188830	513734690272968717	Ich will Rang 1 werden! | Dead by Daylight	Playing	YouTube	f	HandOfUncut	1626376603733	1626376955000
223666520943886336	463097721130188830	513734690272968717	Ich will Rang 1 werden! | Dead by Daylight	Playing	YouTube	f	HandOfUncut	1626376605016	1626376954000
223666520943886336	463097721130188830	513734690272968717	Ich will Rang 1 werden! | Dead by Daylight	Playing	YouTube	f	HandOfUncut	1626376623188	1626376954000
223666520943886336	463097721130188830	513734690272968717	Ich will Rang 1 werden! | Dead by Daylight	Playing	YouTube	f	HandOfUncut	1626376625133	1626376954000
202407278618476545	\N	spotify:ab67616d0000b2736c81650e70bf2679e1fa03f7	Hjalmar's Axe	Listening	Spotify	t	Marcin Przybyłowicz	1626376669147	1626376725147
459713629441490945	\N	\N	\N	Custom	Custom Status	f	1:1	1626376719033	\N
361914328703696896	\N	\N	\N	Custom	Custom Status	f	\N	1626376721694	\N
403571252402585601	\N	\N	\N	Custom	Custom Status	f	\N	1626376766687	\N
361914328703696896	356875057940791296	\N	\N	Playing	Counter-Strike: Global Offensive	f	\N	1626376774862	\N
281381884460662785	357607478105604096	\N	\N	Playing	War Thunder	f	\N	1626376783752	\N
361914328703696896	\N	spotify:ab67616d0000b27346fd34c6a67dd548eac0cce7	PRETTY BOI	Listening	Spotify	t	TJ_beastboy	1626376812526	1626376917526
403571252402585601	\N	\N	\N	Custom	Custom Status	f	\N	1626376826449	\N
411656316814098441	\N	\N	\N	Custom	Custom Status	f	snowfox 😳	1626376873962	\N
202407278618476545	\N	spotify:ab67616d0000b273e8d8d8b8fddfea0cc4ee0977	The Man in the Hat	Listening	Spotify	t	Tobias Lilja	1626376940433	1626377085033
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626379111780	\N
276431762815451138	547786685795139585	573258041902891029	ledermann	Playing	CLion	t	Editing hs.rs	1626379114198	\N
325704347767799808	790655993809338398	798617001685024808	Chariot (Extended Mix)	Playing	YouTube Music	f	USAO	1626379120493	1626379334493
708309251562405908	\N	\N	\N	Custom	Custom Status	f	Wird aus Russland zurückgedrängt	1626379146320	\N
368355102949376000	\N	spotify:ab67616d0000b273ed42764d7a610b661a216504	204 - Der dunkle Wächter - Teil 07	Listening	Spotify	t	Die drei ???	1626379149265	1626379260251
202407278618476545	\N	\N	\N	Custom	Custom Status	f	defekt aber nett	1626379173714	\N
271659253486452736	\N	\N	\N	Custom	Custom Status	f	Whoa, I got two hands! Brujo, I need two beers!	1626379212976	\N
361914328703696896	\N	spotify:ab67616d0000b273521a220fff194eafd39c0f66	Gum-Gum-Kalash	Listening	Spotify	t	TJ_beastboy; Mary Man; gibbon don	1626379232163	1626379458709
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626379253322	\N
202407278618476545	\N	\N	\N	Custom	Custom Status	f	defekt aber nett	1626379305955	\N
302519349489434624	\N	\N	\N	Custom	Custom Status	f	\N	1626379333091	\N
325704347767799808	790655993809338398	798617001685024808	Chariot (Extended Mix)	Playing	YouTube Music	f	USAO	1626379334108	\N
361914328703696896	\N	\N	\N	Custom	Custom Status	f	\N	1626379338422	\N
547850369695219712	\N	spotify:ab67616d0000b273c27141817eaddf3c38f3b759	Rooftop	Listening	Spotify	t	yong casso; Saucyaf	1626379351013	1626379542263
368355102949376000	\N	spotify:ab67616d0000b273ed42764d7a610b661a216504	204 - Der dunkle Wächter - Teil 09	Listening	Spotify	t	Die drei ???	1626379359964	1626379463164
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626379387875	\N
206955935229280256	\N	\N	\N	Playing	%help || GC: 108036 || UC: 172651 || VC: 2 || Version: 5.9.0	f	\N	1626379396476	\N
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626379605269	\N
202407278618476545	\N	spotify:ab67616d0000b27346ac204a9d297ef8ed852674	Be Born Again	Listening	Spotify	t	Olivier Deriviere	1626379653562	1626379765655
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626379672035	\N
368355102949376000	\N	spotify:ab67616d0000b273ed42764d7a610b661a216504	204 - Der dunkle Wächter - Teil 13	Listening	Spotify	t	Die drei ???	1626379780890	1626379887396
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626379824615	\N
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626379913595	\N
325704347767799808	790655993809338398	798617001685024808	Hang'em All	Playing	YouTube Music	f	Carpenter Brut	1626379971759	\N
325704347767799808	790655993809338398	798617001685024808	Witchcraft	Playing	YouTube Music	f	Pendulum	1626379972123	\N
325704347767799808	790655993809338398	798617001685024808	Witchcraft	Playing	YouTube Music	f	Pendulum	1626379973022	1626380226022
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626380054906	\N
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626380078153	\N
281381884460662785	\N	\N	\N	Custom	Custom Status	f	why does everyone i want to talk to hate me :(	1626380132525	\N
325704347767799808	790655993809338398	798617001685024808	Different	Playing	YouTube Music	f	Pendulum	1626380844206	\N
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626380925816	\N
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626380931448	\N
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626380957662	\N
361914328703696896	\N	spotify:ab67616d0000b27309545e98d9172b05b28f5c0a	Spring Fever	Listening	Spotify	t	Sub Urban	1626373615011	1626373783174
403571252402585601	\N	\N	\N	Custom	Custom Status	f	\N	1626373659842	\N
202407278618476545	\N	spotify:ab67616d0000b273e8d8d8b8fddfea0cc4ee0977	The Nome in the Attic	Listening	Spotify	t	Tobias Lilja	1626373734824	1626373919624
223666520943886336	463097721130188830	513734690272968717	Ich will Rang 1 werden! | Dead by Daylight	Playing	YouTube	f	HandOfUncut	1626376544750	1626376955000
223666520943886336	463097721130188830	513734690272968717	Ich will Rang 1 werden! | Dead by Daylight	Playing	YouTube	f	HandOfUncut	1626376564885	1626376954000
547850369695219712	\N	spotify:ab67616d0000b273b594bfd2bc31ea5110ecf09f	Nobody Else	Listening	Spotify	t	HUTS; Sam Tinnesz	1626376517126	1626376678526
223666520943886336	463097721130188830	513734690272968717	Ich will Rang 1 werden! | Dead by Daylight	Playing	YouTube	f	HandOfUncut	1626376583663	1626376955000
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626376584632	\N
223666520943886336	463097721130188830	513734690272968717	Ich will Rang 1 werden! | Dead by Daylight	Playing	YouTube	f	HandOfUncut	1626376584993	1626376954000
223666520943886336	463097721130188830	513734690272968717	Ich will Rang 1 werden! | Dead by Daylight	Playing	YouTube	f	HandOfUncut	1626376604060	1626376954000
403571252402585601	445956193924546560	446301881636225042	DISCOVERY match - Round 1 / 4	Playing	Rainbow Six Siege	f	\N	1626376618077	\N
223666520943886336	463097721130188830	513734690272968717	Ich will Rang 1 werden! | Dead by Daylight	Playing	YouTube	f	HandOfUncut	1626376623700	1626376955000
361914328703696896	\N	spotify:ab67616d0000b27346fd34c6a67dd548eac0cce7	Alarm Code Red	Listening	Spotify	t	TJ_beastboy	1626376631016	1626376812016
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626376639474	\N
223666520943886336	463097721130188830	513734690272968717	Ich will Rang 1 werden! | Dead by Daylight	Playing	YouTube	f	HandOfUncut	1626376643668	1626376955000
202407278618476545	\N	\N	\N	Custom	Custom Status	f	defekt aber nett	1626376669880	\N
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626376722820	\N
202407278618476545	\N	spotify:ab67616d0000b2732472601180911ff89445cbc8	Hunter's Dream	Listening	Spotify	t	SIE Sound Team	1626376725153	1626376940139
361914328703696896	\N	\N	\N	Custom	Custom Status	f	\N	1626376771769	\N
281381884460662785	\N	\N	\N	Custom	Custom Status	f	why does everyone i want to talk to hate me :(	1626376781701	\N
403571252402585601	445956193924546560	446301881636225042	Completing a TRAINING GROUNDS mission	Playing	Rainbow Six Siege	f	\N	1626376816322	\N
547850369695219712	\N	spotify:ab67616d0000b2734cfc5c3cc00e2cc25a921d37	Sweet Dreams (Scott Rill Remix)	Listening	Spotify	t	Besomorph; Bolshiee; Scott Rill	1626376821658	1626376969314
403571252402585601	\N	spotify:ab67616d0000b2738800259a743b0b14bf1d7c59	Knöcheltief	Listening	Spotify	t	Trettmann; Gzuz; KitschKrieg; SFR	1626376830900	1626377038419
459713629441490945	445956193924546560	446301881636225042	im MENÜ	Playing	Rainbow Six Siege	f	\N	1626376854743	\N
459713629441490945	445956193924546560	446301881636225042	Sucht nach „SCHNELLES MATCH“-Match	Playing	Rainbow Six Siege	f	\N	1626376859739	\N
459713629441490945	445956193924546560	446301881636225042	Spielt ein „SCHNELLES MATCH“ - Runde 1/4	Playing	Rainbow Six Siege	f	\N	1626376859853	\N
361914328703696896	\N	\N	\N	Custom	Custom Status	f	\N	1626376915542	\N
202407278618476545	\N	\N	\N	Custom	Custom Status	f	defekt aber nett	1626376941248	\N
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626376959671	\N
368355102949376000	\N	spotify:ab67616d0000b27335e64a6f05f6679c5b2f61e2	und der Fluch des Rubins - Überfall aus dem Hinterhalt, Teil 3	Listening	Spotify	t	Die drei ???; Tim Grobe	1626376974946	1626377169312
202407278618476545	\N	\N	\N	Custom	Custom Status	f	defekt aber nett	1626379654423	\N
361914328703696896	\N	spotify:ab67616d0000b2734913c9eb7b258226a49c206b	TAKE THE LEAD	Listening	Spotify	t	TJ_beastboy	1626379688547	1626379858547
681192725152006160	356869127241072640	\N	\N	Playing	League of Legends	f	\N	1626378615777	\N
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626379802492	\N
681192725152006160	401518684763586560	416719019576393738	Howling Abyss (ARAM)	Playing	League of Legends	f	In Queue	1626379847000	\N
281381884460662785	\N	\N	\N	Custom	Custom Status	f	why does everyone i want to talk to hate me :(	1626379862293	\N
681192725152006160	401518684763586560	\N	Howling Abyss (ARAM)	Playing	League of Legends	f	In Game	1626379937000	\N
411656316814098441	\N	\N	\N	Custom	Custom Status	f	snowfox 😳	1626379955886	\N
411656316814098441	\N	\N	\N	Custom	Custom Status	f	snowfox 😳	1626379963773	\N
547850369695219712	\N	spotify:ab67616d0000b273e96161500dea0ebeb768228a	Young Ray Charles	Listening	Spotify	t	Stereotype; jacob.	1626380088842	1626380299361
361914328703696896	\N	\N	\N	Custom	Custom Status	f	\N	1626380124847	\N
325704347767799808	790655993809338398	798617001685024808	Big Daddy	Playing	YouTube Music	f	USAO	1626380226018	\N
263407413737160718	\N	\N	\N	Custom	Custom Status	f	write this down	1626380236058	\N
403571252402585601	\N	\N	\N	Custom	Custom Status	f	\N	1626380264240	\N
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626380442920	\N
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626380460102	\N
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626380486626	\N
281381884460662785	\N	spotify:ab67616d0000b273533fd0b248052d04e6b732c0	For Whom The Bell Tolls - Remastered	Listening	Spotify	t	Metallica	1626380498473	1626380808446
325704347767799808	790655993809338398	798617001685024808	Big Daddy	Playing	YouTube Music	f	USAO	1626380500979	\N
368355102949376000	\N	spotify:ab67616d0000b273ed42764d7a610b661a216504	204 - Der dunkle Wächter - Teil 20	Listening	Spotify	t	Die drei ???	1626380500893	1626380606866
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626380530143	\N
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626380976606	\N
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626381009073	\N
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626381027294	\N
403571252402585601	356877880938070016	\N	\N	Playing	Rocket League	t	Hauptmenü	1626381048092	\N
302519349489434624	\N	\N	\N	Custom	Custom Status	f	\N	1626381057502	\N
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626381067332	\N
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626381104708	\N
281381884460662785	\N	spotify:ab67616d0000b2731c95fa8094f7e123a43e5a82	Nochnoe Randevu	Listening	Spotify	t	Chernikovskaya Hata	1626381804057	1626382012057
368355102949376000	\N	spotify:ab67616d0000b273ed42764d7a610b661a216504	204 - Der dunkle Wächter - Teil 33	Listening	Spotify	t	Die drei ???	1626381860700	1626381963660
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626381935682	\N
411656316814098441	\N	\N	\N	Custom	Custom Status	f	snowfox 😳	1626381995426	\N
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626382017397	\N
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626382035931	\N
368355102949376000	\N	spotify:ab67616d0000b273ed42764d7a610b661a216504	204 - Der dunkle Wächter - Teil 35	Listening	Spotify	t	Die drei ???	1626382070489	1626382171729
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626382143064	\N
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626382242881	\N
251364645254856714	401518684763586560	403244850960662538	Heulende Schlucht (ARAM)	Playing	League of Legends	f	Im Spiel	1626381837000	\N
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626382305549	\N
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626382321421	\N
206955935229280256	\N	\N	\N	Playing	%help || GC: 104163 || UC: 175642 || VC: 5 || Version: 5.9.0	f	\N	1626382439079	\N
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626382458644	\N
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626382473383	\N
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626382512691	\N
281381884460662785	\N	\N	\N	Custom	Custom Status	f	why does everyone i want to talk to hate me :(	1626382526771	\N
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626382554893	\N
206955935229280256	\N	\N	\N	Playing	%help || GC: 108037 || UC: 176947 || VC: 4 || Version: 5.9.0	f	\N	1626382808742	\N
271659253486452736	\N	\N	\N	Custom	Custom Status	f	Whoa, I got two hands! Brujo, I need two beers!	1626382885951	\N
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626382996338	\N
271659253486452736	401518684763586560	403245068514754560	Kluft der Beschwörer	Playing	League of Legends	f	Im Spiel	1626383027000	\N
251364645254856714	356869127241072640	\N	\N	Playing	League of Legends	f	\N	1626381862271	\N
223666520943886336	356877880938070016	\N	\N	Playing	Rocket League	f	\N	1626469698274	\N
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626474424297	\N
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626474434019	\N
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626474454090	\N
403571252402585601	\N	spotify:ab67616d0000b273322adabca0b652da6ad1cdcc	Scusa	Listening	Spotify	t	RAF Camora; Ketama126	1626474465983	1626474625366
261520809225355264	484892481452769290	\N	\N	Playing	Insurgency: Sandstorm	f	\N	1626462126877	\N
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626474467560	\N
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626474481840	\N
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626474583216	\N
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626475243697	\N
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626475287626	\N
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626475402108	\N
403571252402585601	\N	\N	\N	Custom	Custom Status	f	\N	1626475467644	\N
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626475635478	\N
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626475842633	\N
223666520943886336	463097721130188830	513734690272968717	How to GET and USE DISCORD on PS4 (Easy Method!)	Playing	YouTube	f	YourSixStudios	1626475893472	1626476174000
223666520943886336	463097721130188830	513734690272968717	How to GET and USE DISCORD on PS4 (Easy Method!)	Playing	YouTube	f	YourSixStudios	1626475895170	1626476163000
223666520943886336	463097721130188830	513734690272968717	How to GET and USE DISCORD on PS4 (Easy Method!)	Playing	YouTube	f	YourSixStudios	1626475933359	1626476162000
681192725152006160	356869127241072640	\N	\N	Playing	League of Legends	f	\N	1626473439445	\N
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626475948514	\N
206955935229280256	\N	\N	\N	Playing	%help || GC: 108033 || UC: 204677 || VC: 5 || Version: 5.9.0	f	\N	1626478291633	\N
361914328703696896	356875057940791296	\N	\N	Playing	Counter-Strike: Global Offensive	f	\N	1626478347783	\N
223666520943886336	463097721130188830	513734690272968717	r/Holup | he/he	Playing	YouTube	f	EmKay	1626478381333	1626479070000
223666520943886336	463097721130188830	513734690272968717	r/Holup | he/he	Playing	YouTube	f	EmKay	1626478382766	1626479072000
223666520943886336	463097721130188830	513734690272968717	r/Holup | he/he	Playing	YouTube	f	EmKay	1626478400482	\N
434794201075417101	\N	\N	\N	Custom	Custom Status	f	deer drip bottom text	1626478666927	\N
403571252402585601	\N	\N	\N	Custom	Custom Status	f	\N	1626479028415	\N
403571252402585601	\N	\N	\N	Custom	Custom Status	f	\N	1626479029115	\N
361914328703696896	\N	\N	\N	Custom	Custom Status	f	\N	1626479374715	\N
325704347767799808	790655993809338398	798617001685024808	Uprising (The Indicator Remix)	Playing	YouTube Music	f	Magic Sword & The Indicator	1626480730532	1626481057532
434794201075417101	\N	\N	\N	Custom	Custom Status	f	deer drip bottom text	1626480746041	\N
325704347767799808	357607478105604096	\N	\N	Playing	War Thunder	f	\N	1626480768927	\N
206955935229280256	\N	\N	\N	Playing	%help || GC: 65300 || UC: 9922 || VC: 1 || Version: 5.9.0	f	\N	1626480803406	\N
206955935229280256	\N	\N	\N	Playing	%help || GC: 108039 || UC: 116065 || VC: 5 || Version: 5.9.0	f	\N	1626523099187	\N
403571252402585601	\N	\N	\N	Custom	Custom Status	f	\N	1626537875775	\N
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626381822629	\N
547850369695219712	\N	spotify:ab67616d0000b2730df78e6e88fdefb1f8f90d55	Piece Of Your Heart - Alok Remix	Listening	Spotify	t	MEDUZA; Alok; Goodboys	1626381890979	1626382057430
276431762815451138	547786685795139585	573258041902891029	ledermann	Playing	CLion	t	Editing hs.rs	1626381922806	\N
206955935229280256	\N	\N	\N	Playing	%help || GC: 108040 || UC: 207676 || VC: 6 || Version: 5.9.0	f	\N	1626474405449	\N
371656565607890964	361968954954219521	365271016341110784	\N	Playing	Squad	t	\N	1626474414167	\N
371656565607890964	361968954954219521	784165611663392788	✪✪✪ GERMAN SQ... - Yehorivka (71/99)	Playing	Squad	t	\N	1626474416000	\N
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626474422049	\N
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626474447435	\N
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626474494947	\N
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626474529643	\N
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626474555978	\N
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626475252611	\N
403571252402585601	445956193924546560	446301881636225042	in MENU	Playing	Rainbow Six Siege	f	\N	1626475255080	\N
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626475255778	\N
223666520943886336	612704158826496028	612710277800001584	Searching for gta crossplay	Playing	Google	f	Ungefähr 928.000 Ergebnisse (0,42 Sekunden)	1626475317000	\N
434794201075417101	\N	\N	\N	Custom	Custom Status	f	deer drip bottom text	1626475356234	\N
403571252402585601	445956193924546560	446301881636225042	in MENU	Playing	Rainbow Six Siege	f	\N	1626475490908	\N
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626475597937	\N
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626475618945	\N
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626475638675	\N
223666520943886336	463097721130188830	513734690272968717	How to GET and USE DISCORD on PS4 (Easy Method!)	Playing	YouTube	f	YourSixStudios	1626475913289	1626476162000
202407278618476545	\N	\N	\N	Custom	Custom Status	f	defekt aber nett	1626475923734	\N
223666520943886336	463097721130188830	513734690272968717	How to GET and USE DISCORD on PS4 (Easy Method!)	Playing	YouTube	f	YourSixStudios	1626475953328	1626476162000
361914328703696896	\N	\N	\N	Custom	Custom Status	f	\N	1626478349386	\N
403571252402585601	\N	\N	\N	Custom	Custom Status	f	\N	1626479039154	\N
403571252402585601	356877880938070016	\N	\N	Playing	Rocket League	t	Hauptmenü	1626479048381	\N
403571252402585601	356877880938070016	\N	\N	Playing	Rocket League	t	Doppel in Wasteland (Nacht)	1626479089850	\N
403571252402585601	356877880938070016	\N	\N	Playing	Rocket League	t	Hauptmenü	1626479287874	\N
206955935229280256	\N	\N	\N	Playing	%help || GC: 108030 || UC: 206498 || VC: 5 || Version: 5.9.0	f	\N	1626479290637	\N
403571252402585601	\N	spotify:ab67616d0000b273322adabca0b652da6ad1cdcc	Regen	Listening	Spotify	t	RAF Camora	1626479292271	1626479469951
411656316814098441	\N	\N	\N	Custom	Custom Status	f	snowfox 😳	1626479412501	\N
403571252402585601	\N	spotify:ab67616d0000b273322adabca0b652da6ad1cdcc	Generation X	Listening	Spotify	t	RAF Camora	1626479469988	1626479636308
206955935229280256	\N	\N	\N	Playing	%help || GC: 72998 || UC: 11141 || VC: 0 || Version: 5.9.0	f	\N	1626480893616	\N
206955935229280256	\N	\N	\N	Playing	%help || GC: 76898 || UC: 11828 || VC: 0 || Version: 5.9.0	f	\N	1626480939695	\N
325704347767799808	357607478105604096	\N	\N	Playing	War Thunder	f	\N	1626480968933	\N
281381884460662785	357607478105604096	\N	\N	Playing	War Thunder	f	\N	1626441148631	\N
206955935229280256	\N	\N	\N	Playing	%help || GC: 87717 || UC: 13960 || VC: 0 || Version: 5.9.0	f	\N	1626481073944	\N
206955935229280256	\N	\N	\N	Playing	%help || GC: 93636 || UC: 15206 || VC: 0 || Version: 5.9.0	f	\N	1626481147669	\N
206955935229280256	\N	\N	\N	Playing	%help || GC: 97487 || UC: 15927 || VC: 0 || Version: 5.9.0	f	\N	1626481205019	\N
223666520943886336	463097721130188830	513734690272968717	r/Holup | he/he	Playing	YouTube	f	EmKay	1626481334663	\N
206955935229280256	\N	\N	\N	Playing	%help || GC: 108028 || UC: 18998 || VC: 0 || Version: 5.9.0	f	\N	1626481492963	\N
223666520943886336	463097721130188830	513734690272968717	r/Holup | he/he	Playing	YouTube	f	EmKay	1626481679636	\N
281381884460662785	\N	\N	\N	Custom	Custom Status	f	Я….жду ответа, больше надежд нету. Скоро….кончится лето. Это….	1626481811016	\N
223666520943886336	802958789555781663	802961390007615488	Durchstöbert...	Playing	Twitch	f	Startseite	1626481918000	\N
223666520943886336	802958789555781663	802961390007615488	long time no see babe	Playing	Twitch	f	Vylerria	1626481924885	\N
223666520943886336	802958789555781663	802961390007615488	ALINITY IS HERE FIREBALL FRIDAY FT SPECIAL GUESTS !POBOX	Playing	Twitch	f	Mizkif	1626481935000	\N
223666520943886336	802958789555781663	802961390007615488	ALINITY IS HERE FIREBALL FRIDAY FT SPECIAL GUESTS !POBOX	Playing	Twitch	f	Mizkif	1626482004247	\N
223666520943886336	802958789555781663	802961390007615488	[EN V-Tuber] I think I'm fine now? | 1 Year Of Daily Consecutive streams in 11 days~!	Playing	Twitch	f	Skye_Hime	1626482004967	\N
223666520943886336	802958789555781663	802961390007615488	[EN V-Tuber] I think I'm fine now? | 1 Year Of Daily Consecutive streams in 11 days~!	Playing	Twitch	f	Skye_Hime	1626482002000	\N
223666520943886336	802958789555781663	\N	\N	Playing	Twitch	f	\N	1626482025034	\N
223666520943886336	802958789555781663	802961390007615488	Need To Mow! 24/7 lawn mow stream from the robot!	Playing	Twitch	f	NeedToMow	1626482026272	\N
223666520943886336	802958789555781663	802961390007615488	Suchen nach:	Playing	Twitch	f	lawn mowing	1626482034000	\N
223666520943886336	802958789555781663	802961390007615488	Need To Mow! 24/7 lawn mow stream from the robot!	Playing	Twitch	f	NeedToMow	1626482045717	\N
223666520943886336	802958789555781663	\N	\N	Playing	Twitch	f	\N	1626482070076	\N
223666520943886336	802958789555781663	802961390007615488	euro truck simulator 2/making money/multiplayer	Playing	Twitch	f	armstrong_gaming69	1626482071112	\N
461265486655520788	\N	\N	\N	Playing	Skyrim	f	\N	1626482083406	\N
202407278618476545	\N	\N	\N	Custom	Custom Status	f	defekt aber nett	1626521112853	\N
202407278618476545	\N	spotify:ab67616d0000b273f6e7575b064e5a66dc88bee2	Sticky	Listening	Spotify	t	Frank Carter & The Rattlesnakes	1626522108540	1626522262673
202407278618476545	\N	spotify:ab67616d0000b273d6c8d2bdaf8abd08c1493654	Vortex	Listening	Spotify	t	Nova Twins	1626522262674	1626522451567
202407278618476545	\N	\N	\N	Custom	Custom Status	f	defekt aber nett	1626522285314	\N
281381884460662785	\N	\N	\N	Custom	Custom Status	f	Я….жду ответа, больше надежд нету. Скоро….кончится лето. Это….	1626523623985	\N
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626381843193	\N
376398434758033409	356875057940791296	\N	\N	Playing	Counter-Strike: Global Offensive	f	\N	1626381855206	\N
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626381878544	\N
261520809225355264	531450167799447552	531577494935961601	Playing Firefight	Playing	Insurgency: Sandstorm	t	Ministry Firefight	1626474409000	\N
223666520943886336	463097721130188830	513734690272968717	I Game is AMAZING to Speedrun…	Playing	YouTube	f	JameskiiLive	1626474415383	\N
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626474421884	\N
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626474444772	\N
403571252402585601	\N	\N	\N	Custom	Custom Status	f	\N	1626474494129	\N
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626474529456	\N
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626474543262	\N
206955935229280256	\N	\N	\N	Playing	%help || GC: 108033 || UC: 211036 || VC: 7 || Version: 5.9.0	f	\N	1626476893367	\N
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626476896640	\N
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626476945890	\N
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626476976666	\N
223666520943886336	463097721130188830	513734690272968717	Viewing home page	Playing	YouTube	f	\N	1626479607000	\N
361914328703696896	\N	\N	\N	Custom	Custom Status	f	\N	1626479620033	\N
223666520943886336	463097721130188830	513734690272968717	Ehe Te Nandayo! (￣^￣)	Playing	YouTube	f	Hodakaa	1626479629182	1626479629000
403571252402585601	\N	\N	\N	Custom	Custom Status	f	\N	1626479637679	\N
223666520943886336	463097721130188830	513734690272968717	Same Anime Characters Voice Actress With One Piece's Tony Tony Chopper	Playing	YouTube	f	Rearm Renkar	1626479704621	\N
223666520943886336	463097721130188830	513734690272968717	Same Anime Characters Voice Actress With One Piece's Tony Tony Chopper	Playing	YouTube	f	Rearm Renkar	1626479720827	1626479856000
223666520943886336	463097721130188830	513734690272968717	Same Anime Characters Voice Actress With One Piece's Tony Tony Chopper	Playing	YouTube	f	Rearm Renkar	1626479724309	1626479851000
403571252402585601	\N	\N	\N	Custom	Custom Status	f	\N	1626479775406	\N
272411073842511873	\N	\N	\N	Custom	Custom Status	f	Deal with stuff be on	1626479780528	\N
325704347767799808	790655993809338398	798617001685024808	Uprising (The Indicator Remix)	Playing	YouTube Music	f	Magic Sword & The Indicator	1626480953420	\N
325704347767799808	790655993809338398	798617001685024808	Uprising (The Indicator Remix)	Playing	YouTube Music	f	Magic Sword & The Indicator	1626480968515	\N
281381884460662785	\N	\N	\N	Custom	Custom Status	f	Я….жду ответа, больше надежд нету. Скоро….кончится лето. Это….	1626481019978	\N
223666520943886336	463097721130188830	513734690272968717	r/Holup | he/he	Playing	YouTube	f	EmKay	1626481247003	\N
206955935229280256	\N	\N	\N	Playing	%help || GC: 105126 || UC: 17278 || VC: 0 || Version: 5.9.0	f	\N	1626481291848	\N
223666520943886336	\N	\N	\N	Playing	SteamVR	f	\N	1626481332860	\N
223666520943886336	463097721130188830	513734690272968717	r/Holup | he/he	Playing	YouTube	f	EmKay	1626481344493	\N
206955935229280256	\N	\N	\N	Playing	%help || GC: 108030 || UC: 18291 || VC: 0 || Version: 5.9.0	f	\N	1626481380734	\N
223666520943886336	463097721130188830	513734690272968717	r/Holup | he/he	Playing	YouTube	f	EmKay	1626481434594	\N
597188981964144680	802958789555781663	802961390007615488	Durchstöbert...	Playing	Twitch	f	Startseite	1626481855000	\N
597188981964144680	802958789555781663	802961390007615488	FIRST TIME DOING THE PANTHEONS	Playing	Twitch	f	SmallAnt	1626481881000	\N
223666520943886336	618138980273094695	\N	\N	Playing	Amazon	f	\N	1626481949563	\N
202407278618476545	\N	spotify:ab67616d0000b27391461f085f2cb7fd2c1f8feb	Black Glass	Listening	Spotify	t	The Blinders	1626521110217	1626521486989
343815575065198604	\N	spotify:ab67616d0000b273e98305cbad1616f5e1b14a56	Mad World	Listening	Spotify	t	Palaye Royale	1626521164043	1626521375040
202407278618476545	\N	\N	\N	Custom	Custom Status	f	defekt aber nett	1626521215647	\N
206955935229280256	\N	\N	\N	Playing	%help || GC: 108036 || UC: 112345 || VC: 5 || Version: 5.9.0	f	\N	1626521244324	\N
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626521270021	\N
206955935229280256	\N	\N	\N	Playing	%help || GC: 108037 || UC: 112605 || VC: 5 || Version: 5.9.0	f	\N	1626521361931	\N
280050308611309569	\N	\N	\N	Playing	Stellaris	f	\N	1626521441502	\N
202407278618476545	\N	spotify:ab67616d0000b273b6fe46beecf024a1253e82e4	Spit It Out	Listening	Spotify	t	Slaves	1626521487258	1626521649220
202407278618476545	\N	\N	\N	Custom	Custom Status	f	defekt aber nett	1626521651875	\N
206955935229280256	\N	\N	\N	Playing	%help || GC: 108040 || UC: 113329 || VC: 4 || Version: 5.9.0	f	\N	1626521847043	\N
206955935229280256	\N	\N	\N	Playing	%help || GC: 104063 || UC: 113039 || VC: 4 || Version: 5.9.0	f	\N	1626521966748	\N
424599087145549835	\N	\N	\N	Custom	Custom Status	f	Reliquit solum ab amicis.	1626522028189	\N
202407278618476545	\N	\N	\N	Custom	Custom Status	f	defekt aber nett	1626522111235	\N
271659253486452736	\N	\N	\N	Custom	Custom Status	f	Whoa, I got two hands! Brujo, I need two beers!	1626522136529	\N
206955935229280256	\N	\N	\N	Playing	%help || GC: 106095 || UC: 113314 || VC: 4 || Version: 5.9.0	f	\N	1626522225205	\N
202407278618476545	\N	\N	\N	Custom	Custom Status	f	defekt aber nett	1626522281423	\N
202407278618476545	\N	spotify:ab67616d0000b273178ed3a665dbf47a233246b0	End Of	Listening	Spotify	t	Biffy Clyro	1626522282594	1626522560020
281381884460662785	\N	\N	\N	Custom	Custom Status	f	Я….жду ответа, больше надежд нету. Скоро….кончится лето. Это….	1626523632383	\N
281381884460662785	\N	spotify:ab67616d0000b273f9be2fb0d9f9c2b9c3f24a4b	Афган	Listening	Spotify	t	Валерий Петряев	1626523524238	1626523917624
281381884460662785	\N	\N	\N	Custom	Custom Status	f	Я….жду ответа, больше надежд нету. Скоро….кончится лето. Это….	1626523734168	\N
206955935229280256	\N	\N	\N	Playing	%help || GC: 65301 || UC: 11468 || VC: 0 || Version: 5.9.0	f	\N	1626524030307	\N
206955935229280256	\N	\N	\N	Playing	%help || GC: 67200 || UC: 11860 || VC: 0 || Version: 5.9.0	f	\N	1626524060724	\N
206955935229280256	\N	\N	\N	Playing	%help || GC: 80844 || UC: 14598 || VC: 0 || Version: 5.9.0	f	\N	1626524233469	\N
281381884460662785	\N	\N	\N	Custom	Custom Status	f	Я….жду ответа, больше надежд нету. Скоро….кончится лето. Это….	1626525407072	\N
281381884460662785	\N	\N	\N	Custom	Custom Status	f	Я….жду ответа, больше надежд нету. Скоро….кончится лето. Это….	1626525424172	\N
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626381888066	\N
206955935229280256	\N	\N	\N	Playing	%help || GC: 108038 || UC: 178501 || VC: 2 || Version: 5.9.0	f	\N	1626381905781	\N
423162525350363136	356875057940791296	\N	\N	Playing	Counter-Strike: Global Offensive	f	\N	1626381959816	\N
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626474414155	\N
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626474421730	\N
302519349489434624	\N	\N	\N	Custom	Custom Status	f	\N	1626474422858	\N
261520809225355264	531450167799447552	531577494935961601	Main Menu	Playing	Insurgency: Sandstorm	t	\N	1626474427267	\N
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626474441801	\N
403571252402585601	\N	\N	\N	Custom	Custom Status	f	\N	1626474460242	\N
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626474469183	\N
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626474484707	\N
191594115907977225	\N	spotify:ab67616d0000b2735c21d73934bb9760a2f791a2	That's Life	Listening	Spotify	t	Frank Sinatra	1626474519097	1626474706137
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626474525462	\N
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626474597757	\N
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626476913045	\N
361914328703696896	\N	\N	\N	Custom	Custom Status	f	\N	1626476961764	\N
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626476971490	\N
223666520943886336	463097721130188830	513734690272968717	Searching for:	Playing	YouTube	f	ehe te nandayo	1626479612000	\N
223666520943886336	463097721130188830	513734690272968717	Ehe Te Nandayo! (￣^￣)	Playing	YouTube	f	Hodakaa	1626479620680	1626479628000
223666520943886336	463097721130188830	513734690272968717	Ehe Te Nandayo! (￣^￣)	Playing	YouTube	f	Hodakaa	1626479634094	\N
403571252402585601	356877880938070016	\N	\N	Playing	Rocket League	t	Doppel in Forbidden Temple	1626479637689	\N
272411073842511873	\N	\N	\N	Custom	Custom Status	f	Deal with stuff be on	1626479661231	\N
223666520943886336	463097721130188830	513734690272968717	Same Anime Characters Voice Actress With One Piece's Tony Tony Chopper	Playing	YouTube	f	Rearm Renkar	1626479674236	1626479814000
223666520943886336	463097721130188830	513734690272968717	Ehe Te Nandayo! (￣^￣)	Playing	YouTube	f	Hodakaa	1626479682223	\N
403571252402585601	\N	\N	\N	Custom	Custom Status	f	\N	1626479743765	\N
403571252402585601	\N	\N	\N	Custom	Custom Status	f	\N	1626479761480	\N
403571252402585601	\N	\N	\N	Custom	Custom Status	f	\N	1626479768546	\N
403571252402585601	\N	\N	\N	Custom	Custom Status	f	\N	1626479769365	\N
325704347767799808	790655993809338398	798617001685024808	Uprising (The Indicator Remix)	Playing	YouTube Music	f	Magic Sword & The Indicator	1626480953417	\N
325704347767799808	790655993809338398	798617001685024808	Uprising (The Indicator Remix)	Playing	YouTube Music	f	Magic Sword & The Indicator	1626480968489	\N
206955935229280256	\N	\N	\N	Playing	%help || GC: 80843 || UC: 12626 || VC: 0 || Version: 5.9.0	f	\N	1626480991457	\N
206955935229280256	\N	\N	\N	Playing	%help || GC: 102215 || UC: 16808 || VC: 0 || Version: 5.9.0	f	\N	1626481255393	\N
206955935229280256	\N	\N	\N	Playing	%help || GC: 108029 || UC: 17881 || VC: 0 || Version: 5.9.0	f	\N	1626481328918	\N
206955935229280256	\N	\N	\N	Playing	%help || GC: 108028 || UC: 18064 || VC: 0 || Version: 5.9.0	f	\N	1626481349499	\N
206955935229280256	\N	\N	\N	Playing	%help || GC: 108029 || UC: 18254 || VC: 0 || Version: 5.9.0	f	\N	1626481374587	\N
206955935229280256	\N	\N	\N	Playing	%help || GC: 108029 || UC: 18353 || VC: 0 || Version: 5.9.0	f	\N	1626481393327	\N
223666520943886336	477657966095630346	\N	\N	Playing	Offworld Trading Company	f	\N	1626481452861	\N
223666520943886336	700136079562375258	\N	\N	Playing	VALORANT	f	\N	1626481738011	\N
597188981964144680	802958789555781663	802961390007615488	FIRST TIME DOING THE PANTHEONS	Playing	Twitch	f	SmallAnt	1626481862000	\N
223666520943886336	463097721130188830	513734690272968717	r/Holup | he/he	Playing	YouTube	f	EmKay	1626481904815	\N
223666520943886336	463097721130188830	513734690272968717	When They Ask If You Can Mow A Small Forest	Playing	YouTube	f	Copper Creek Cuts Lawn Care	1626557672505	\N
325704347767799808	357607478105604096	\N	\N	Playing	War Thunder	f	\N	1626481989368	\N
191594115907977225	\N	spotify:ab67616d0000b2736ea38148a2bf3d8514b4f1de	Phantasmagoria	Listening	Spotify	t	Ashbury Heights	1626521346484	1626521681190
202407278618476545	\N	\N	\N	Custom	Custom Status	f	defekt aber nett	1626521489975	\N
206955935229280256	\N	\N	\N	Playing	%help || GC: 108037 || UC: 112444 || VC: 4 || Version: 5.9.0	f	\N	1626521523460	\N
280050308611309569	\N	\N	\N	Playing	Mass Effect™ Legendary Edition	f	\N	1626521656903	\N
206955935229280256	\N	\N	\N	Playing	%help || GC: 108039 || UC: 112945 || VC: 4 || Version: 5.9.0	f	\N	1626521699485	\N
202407278618476545	\N	spotify:ab67616d0000b273e2e1a948d463d0da7ab63573	Who Do You Work For	Listening	Spotify	t	ZIG MENTALITY	1626521857227	1626522108552
206955935229280256	\N	\N	\N	Playing	%help || GC: 108041 || UC: 113567 || VC: 4 || Version: 5.9.0	f	\N	1626522237493	\N
202407278618476545	\N	\N	\N	Custom	Custom Status	f	defekt aber nett	1626522265352	\N
202407278618476545	\N	spotify:ab67616d0000b273e9498969e6059351b59606cc	Jack Jones	Listening	Spotify	t	Kid Kapichi	1626522268087	1626522484953
202407278618476545	\N	\N	\N	Custom	Custom Status	f	defekt aber nett	1626522286542	\N
206955935229280256	\N	\N	\N	Playing	%help || GC: 90700 || UC: 16735 || VC: 0 || Version: 5.9.0	f	\N	1626524355244	\N
206955935229280256	\N	\N	\N	Playing	%help || GC: 93639 || UC: 17457 || VC: 0 || Version: 5.9.0	f	\N	1626524393007	\N
206955935229280256	\N	\N	\N	Playing	%help || GC: 96556 || UC: 18173 || VC: 0 || Version: 5.9.0	f	\N	1626524430807	\N
424599087145549835	\N	\N	\N	Custom	Custom Status	f	Reliquit solum ab amicis.	1626524435298	\N
206955935229280256	\N	\N	\N	Playing	%help || GC: 97492 || UC: 18423 || VC: 0 || Version: 5.9.0	f	\N	1626524451887	\N
206955935229280256	\N	\N	\N	Playing	%help || GC: 99403 || UC: 18796 || VC: 0 || Version: 5.9.0	f	\N	1626524467657	\N
206955935229280256	\N	\N	\N	Playing	%help || GC: 102221 || UC: 19422 || VC: 0 || Version: 5.9.0	f	\N	1626524505238	\N
206955935229280256	\N	\N	\N	Playing	%help || GC: 105134 || UC: 20186 || VC: 0 || Version: 5.9.0	f	\N	1626524554594	\N
206955935229280256	\N	\N	\N	Playing	%help || GC: 108040 || UC: 20752 || VC: 0 || Version: 5.9.0	f	\N	1626524580708	\N
261520809225355264	531450167799447552	531577494935961601	Main Menu	Playing	Insurgency: Sandstorm	t	\N	1626525043860	\N
202407278618476545	\N	\N	\N	Custom	Custom Status	f	defekt aber nett	1626525090862	\N
461265486655520788	\N	\N	\N	Playing	Skyrims of Catan	f	\N	1626525284806	\N
281381884460662785	\N	spotify:ab67616d0000b273f9be2fb0d9f9c2b9c3f24a4b	Афган	Listening	Spotify	t	Валерий Петряев	1626525195667	1626525589053
368355102949376000	\N	spotify:ab67616d0000b273ed42764d7a610b661a216504	204 - Der dunkle Wächter - Teil 34	Listening	Spotify	t	Die drei ???	1626381963669	1626382070469
281381884460662785	\N	\N	\N	Custom	Custom Status	f	why does everyone i want to talk to hate me :(	1626382010545	\N
281381884460662785	\N	spotify:ab67616d0000b273c2126d315c0afeff9ab6d1d9	Город устал	Listening	Spotify	t	Ploho	1626382012558	1626382230758
206955935229280256	\N	\N	\N	Playing	%help || GC: 108039 || UC: 178716 || VC: 3 || Version: 5.9.0	f	\N	1626382025257	\N
547850369695219712	\N	spotify:ab67616d0000b2732c7d317db586410df1fcbd8a	Circles	Listening	Spotify	t	Skan	1626382054289	1626382316689
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626382080578	\N
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626382143044	\N
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626382167721	\N
368355102949376000	\N	spotify:ab67616d0000b273ed42764d7a610b661a216504	204 - Der dunkle Wächter - Teil 36	Listening	Spotify	t	Die drei ???	1626382171593	1626382265713
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626382204788	\N
281381884460662785	\N	\N	\N	Custom	Custom Status	f	why does everyone i want to talk to hate me :(	1626382229799	\N
281381884460662785	\N	spotify:ab67616d0000b2736ba3687aec030cec6089ed2c	Танцевать	Listening	Spotify	t	Molchat Doma	1626382231279	1626382434124
459713629441490945	\N	\N	\N	Custom	Custom Status	f	1:1	1626382246362	\N
459713629441490945	445956193924546560	446301881636225042	im MENÜ	Playing	Rainbow Six Siege	f	\N	1626382246374	\N
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626382252717	\N
368355102949376000	\N	spotify:ab67616d0000b273ed42764d7a610b661a216504	204 - Der dunkle Wächter - Teil 37	Listening	Spotify	t	Die drei ???	1626382265752	1626382389658
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626382283328	\N
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626382294592	\N
547850369695219712	\N	spotify:ab67616d0000b273c606e20343c104bc1c0b6eaf	Streetside	Listening	Spotify	t	Bru-C; Bou	1626382313427	1626382532855
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626382364736	\N
368355102949376000	\N	spotify:ab67616d0000b273ed42764d7a610b661a216504	204 - Der dunkle Wächter - Teil 38	Listening	Spotify	t	Die drei ???	1626382389725	1626382496151
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626382423616	\N
281381884460662785	\N	\N	\N	Custom	Custom Status	f	why does everyone i want to talk to hate me :(	1626382432934	\N
281381884460662785	\N	spotify:ab67616d0000b273f6eb0b8162b9874571149808	Horsepower - F.O.O.L & TOKYO ROSE Remix	Listening	Spotify	t	MUZZ; F.O.O.L; TOKYO ROSE	1626382434645	1626382635565
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626382446657	\N
206955935229280256	\N	\N	\N	Playing	%help || GC: 108038 || UC: 176173 || VC: 4 || Version: 5.9.0	f	\N	1626382472667	\N
368355102949376000	\N	spotify:ab67616d0000b273ed42764d7a610b661a216504	204 - Der dunkle Wächter - Teil 39	Listening	Spotify	t	Die drei ???	1626382496054	1626382584374
403571252402585601	\N	\N	\N	Custom	Custom Status	f	\N	1626382521409	\N
547850369695219712	\N	spotify:ab67616d0000b273b763e817fb1fa6ea54c8559b	Core (That's Who We Are)	Listening	Spotify	t	VIZE; Papa Roach	1626382529674	1626382708583
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626382531757	\N
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626382534095	\N
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626382556634	\N
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626382566566	\N
368355102949376000	\N	spotify:ab67616d0000b273ed42764d7a610b661a216504	204 - Der dunkle Wächter - Teil 40	Listening	Spotify	t	Die drei ???	1626382584375	1626382676028
281381884460662785	\N	\N	\N	Custom	Custom Status	f	why does everyone i want to talk to hate me :(	1626382627802	\N
281381884460662785	356875057940791296	\N	\N	Playing	Counter-Strike: Global Offensive	f	\N	1626382629949	\N
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626382652686	\N
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626382673574	\N
368355102949376000	\N	spotify:ab67616d0000b273ed42764d7a610b661a216504	204 - Der dunkle Wächter - Outro	Listening	Spotify	t	Die drei ???	1626382676022	1626382780088
547850369695219712	\N	spotify:ab67616d0000b2736eddff56e14564e7cdddb620	Fuck You	Listening	Spotify	t	Silent Child	1626382705426	1626382888759
368355102949376000	\N	spotify:ab67616d0000b27365cacd099215a7ecb6f1ee78	und der seltsame Wecker (feat. Henning May) - Ansage	Listening	Spotify	t	Die drei ???; Henning May	1626382780296	1626382794976
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626382794508	\N
368355102949376000	\N	spotify:ab67616d0000b27365cacd099215a7ecb6f1ee78	und der seltsame Wecker (feat. Henning May) - Ein paar Worte zuvor	Listening	Spotify	t	Die drei ???; Henning May	1626382795242	1626382891362
206955935229280256	\N	\N	\N	Playing	%help || GC: 108036 || UC: 176957 || VC: 4 || Version: 5.9.0	f	\N	1626382814175	\N
271659253486452736	\N	\N	\N	Custom	Custom Status	f	Whoa, I got two hands! Brujo, I need two beers!	1626382837619	\N
271659253486452736	356869127241072640	\N	\N	Playing	League of Legends	f	\N	1626380862633	\N
271659253486452736	\N	\N	\N	Custom	Custom Status	f	Whoa, I got two hands! Brujo, I need two beers!	1626382849497	\N
547850369695219712	\N	spotify:ab67616d0000b273c44a7bc8c30e65feb947b4a0	One More Night	Listening	Spotify	t	Mike Gudmann; Sk-Hall; Medon	1626382885529	1626383041973
271659253486452736	401518684763586560	416719019576393738	\N	Playing	League of Legends	f	In der Warteschlange	1626382886000	\N
368355102949376000	\N	spotify:ab67616d0000b27365cacd099215a7ecb6f1ee78	und der seltsame Wecker (feat. Henning May) - Der Schrei aus dem Wecker, Teil 1	Listening	Spotify	t	Die drei ???; Henning May	1626382891409	1626383040345
271659253486452736	\N	\N	\N	Custom	Custom Status	f	Whoa, I got two hands! Brujo, I need two beers!	1626382927935	\N
271659253486452736	401518684763586560	416719019576393738	Kluft der Beschwörer	Playing	League of Legends	f	In Championauswahl	1626382927948	\N
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626382935615	\N
424599087145549835	\N	\N	\N	Custom	Custom Status	f	Reliquit solum ab amicis.	1626382947292	\N
271659253486452736	\N	\N	\N	Custom	Custom Status	f	Whoa, I got two hands! Brujo, I need two beers!	1626383026648	\N
368355102949376000	\N	spotify:ab67616d0000b27365cacd099215a7ecb6f1ee78	und der seltsame Wecker (feat. Henning May) - Der Schrei aus dem Wecker, Teil 2	Listening	Spotify	t	Die drei ???; Henning May	1626383040308	1626383193784
681192725152006160	401518684763586560	416719019576393738	Summoner's Rift (Ranked)	Playing	League of Legends	f	In Lobby	1626383121471	\N
281381884460662785	\N	\N	\N	Custom	Custom Status	f	why does everyone i want to talk to hate me :(	1626383170213	\N
403571252402585601	\N	\N	\N	Custom	Custom Status	f	\N	1626383186091	\N
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626383249778	\N
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626383256332	\N
206955935229280256	\N	\N	\N	Playing	%help || GC: 108036 || UC: 177953 || VC: 4 || Version: 5.9.0	f	\N	1626383375488	\N
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626474448833	\N
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626474461769	\N
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626474464739	\N
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626474474057	\N
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626474496688	\N
191594115907977225	\N	spotify:ab67616d0000b27380aa6a82fce614eea8357253	My Way	Listening	Spotify	t	Frank Sinatra	1626474297887	1626474574687
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626474533348	\N
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626474557104	\N
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626477012148	\N
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626477037538	\N
361914328703696896	\N	\N	\N	Custom	Custom Status	f	\N	1626477127865	\N
223666520943886336	463097721130188830	\N	\N	Playing	YouTube	f	\N	1626479620030	\N
223666520943886336	463097721130188830	513734690272968717	Ehe Te Nandayo! (￣^￣)	Playing	YouTube	f	Hodakaa	1626479629492	1626479628000
403571252402585601	\N	spotify:ab67616d0000b273322adabca0b652da6ad1cdcc	Intro	Listening	Spotify	t	RAF Camora	1626479636466	1626479742249
223666520943886336	612704158826496028	612710277800001584	Searching for paimon japanese voice actor	Playing	Google	f	Ungefähr 26.200 Ergebnisse (0,67 Sekunden)	1626479650000	\N
272411073842511873	\N	\N	\N	Custom	Custom Status	f	Deal with stuff be on	1626479660309	\N
223666520943886336	612704158826496028	612710277800001584	Searching for chopper voice actor	Playing	Google	f	Ungefähr 16.500.000 Ergebnisse (1,07 Sekunden)	1626479660000	\N
223666520943886336	463097721130188830	513734690272968717	Same Anime Characters Voice Actress With One Piece's Tony Tony Chopper	Playing	YouTube	f	Rearm Renkar	1626479720424	1626479855000
223666520943886336	463097721130188830	513734690272968717	Same Anime Characters Voice Actress With One Piece's Tony Tony Chopper	Playing	YouTube	f	Rearm Renkar	1626479721238	1626479855000
223666520943886336	463097721130188830	513734690272968717	Same Anime Characters Voice Actress With One Piece's Tony Tony Chopper	Playing	YouTube	f	Rearm Renkar	1626479724662	\N
403571252402585601	356877880938070016	\N	\N	Playing	Rocket League	t	Doppel in Forbidden Temple	1626479743777	\N
403571252402585601	356877880938070016	\N	\N	Playing	Rocket League	t	Hauptmenü	1626479761491	\N
403571252402585601	356877880938070016	\N	\N	Playing	Rocket League	f	\N	1626479038436	\N
206955935229280256	\N	\N	\N	Playing	%help || GC: 84818 || UC: 13387 || VC: 0 || Version: 5.9.0	f	\N	1626481038101	\N
206955935229280256	\N	\N	\N	Playing	%help || GC: 90697 || UC: 14575 || VC: 0 || Version: 5.9.0	f	\N	1626481111522	\N
206955935229280256	\N	\N	\N	Playing	%help || GC: 96551 || UC: 15679 || VC: 0 || Version: 5.9.0	f	\N	1626481183509	\N
206955935229280256	\N	\N	\N	Playing	%help || GC: 99397 || UC: 16234 || VC: 0 || Version: 5.9.0	f	\N	1626481219656	\N
223666520943886336	425441688152965142	\N	\N	Playing	Obduction	f	\N	1626481342796	\N
223666520943886336	463097721130188830	513734690272968717	r/Holup | he/he	Playing	YouTube	f	EmKay	1626481454573	\N
206955935229280256	\N	\N	\N	Playing	%help || GC: 108029 || UC: 19159 || VC: 0 || Version: 5.9.0	f	\N	1626481515899	\N
281381884460662785	\N	\N	\N	Custom	Custom Status	f	Я….жду ответа, больше надежд нету. Скоро….кончится лето. Это….	1626481739336	\N
223666520943886336	463097721130188830	513734690272968717	r/Holup | he/he	Playing	YouTube	f	EmKay	1626481739757	\N
223666520943886336	802958789555781663	\N	\N	Playing	Twitch	f	\N	1626481924065	\N
223666520943886336	802958789555781663	802961390007615488	long time no see babe	Playing	Twitch	f	Vylerria	1626481922000	\N
325704347767799808	790655993809338398	798617001685024808	Uprising (The Indicator Remix)	Playing	YouTube Music	f	Magic Sword & The Indicator	1626481969342	\N
325704347767799808	\N	\N	\N	Playing	YouTube Music	f	\N	1626481969371	\N
223666520943886336	802958789555781663	802961390007615488	ALINITY IS HERE FIREBALL FRIDAY FT SPECIAL GUESTS !POBOX	Playing	Twitch	f	Mizkif	1626482004577	\N
223666520943886336	802958789555781663	802961390007615488	[EN V-Tuber] I think I'm fine now? | 1 Year Of Daily Consecutive streams in 11 days~!	Playing	Twitch	f	Skye_Hime	1626482005678	\N
223666520943886336	802958789555781663	802961390007615488	Betrachtet Kategorie:	Playing	Twitch	f	Lawn Mowing Simulator (undefined)	1626482019000	\N
223666520943886336	802958789555781663	802961390007615488	Need To Mow! 24/7 lawn mow stream from the robot!	Playing	Twitch	f	NeedToMow	1626482025647	\N
223666520943886336	802958789555781663	802961390007615488	Need To Mow! 24/7 lawn mow stream from the robot!	Playing	Twitch	f	NeedToMow	1626482023000	\N
223666520943886336	802958789555781663	\N	\N	Playing	Twitch	f	\N	1626482045000	\N
223666520943886336	802958789555781663	802961390007615488	Need To Mow! 24/7 lawn mow stream from the robot!	Playing	Twitch	f	NeedToMow	1626482044000	1626654825000
223666520943886336	802958789555781663	802961390007615488	Betrachtet Kategorie:	Playing	Twitch	f	Euro Truck Simulator 2 (undefined)	1626482060000	\N
223666520943886336	802958789555781663	802961390007615488	euro truck simulator 2/making money/multiplayer	Playing	Twitch	f	armstrong_gaming69	1626482070704	\N
223666520943886336	802958789555781663	802961390007615488	euro truck simulator 2/making money/multiplayer	Playing	Twitch	f	armstrong_gaming69	1626482068000	\N
461265486655520788	\N	\N	\N	Playing	Skyrim	f	\N	1626482085038	\N
280050308611309569	363408909962182683	\N	\N	Playing	Stellaris	f	\N	1626521446419	\N
403571252402585601	\N	\N	\N	Custom	Custom Status	f	\N	1626538486589	\N
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626383010675	\N
206955935229280256	\N	\N	\N	Playing	%help || GC: 108038 || UC: 177577 || VC: 5 || Version: 5.9.0	f	\N	1626383146968	\N
547850369695219712	\N	spotify:ab67616d0000b2731a9e9661275b59bea10c7e8f	Slide Thru [E.P.O Remix]	Listening	Spotify	t	AR; E.P.O	1626383157633	1626383482077
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626383166834	\N
424599087145549835	\N	\N	\N	Custom	Custom Status	f	Reliquit solum ab amicis.	1626383317874	\N
681192725152006160	401518684763586560	416719019576393738	Summoner's Rift (Ranked)	Playing	League of Legends	f	In Champion Select	1626383392932	\N
403571252402585601	\N	\N	\N	Custom	Custom Status	f	\N	1626474619774	\N
263407413737160718	\N	\N	\N	Custom	Custom Status	f	write this down	1626474644143	\N
302519349489434624	\N	\N	\N	Custom	Custom Status	f	\N	1626474677015	\N
403571252402585601	\N	\N	\N	Custom	Custom Status	f	\N	1626474760164	\N
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626474762831	\N
206955935229280256	\N	\N	\N	Playing	%help || GC: 108039 || UC: 208202 || VC: 5 || Version: 5.9.0	f	\N	1626474781565	\N
223666520943886336	463097721130188830	513734690272968717	FINAL FANTASY XIV: Stormblood Trailer	Playing	YouTube	f	FINAL FANTASY XIV	1626474834608	1626475082000
223666520943886336	612704158826496028	612710277800001584	Google Images	Playing	Google	f	Searching for a	1626474852000	\N
461265486655520788	\N	\N	\N	Playing	Skyrim for graphing calculator	f	\N	1626474884689	\N
223666520943886336	463097721130188830	513734690272968717	FINAL FANTASY XIV: Stormblood Trailer	Playing	YouTube	f	FINAL FANTASY XIV	1626474926421	1626475158000
223666520943886336	463097721130188830	513734690272968717	FINAL FANTASY XIV: Stormblood Trailer	Playing	YouTube	f	FINAL FANTASY XIV	1626474927412	1626475149000
403571252402585601	\N	spotify:ab67616d0000b273322adabca0b652da6ad1cdcc	Ich kenne meinen Wert	Listening	Spotify	t	RAF Camora	1626474930652	1626475104568
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626477028118	\N
361914328703696896	356875057940791296	\N	\N	Playing	Counter-Strike: Global Offensive	f	\N	1626477126247	\N
272411073842511873	\N	\N	\N	Custom	Custom Status	f	Deal with stuff be on	1626479661373	\N
223666520943886336	463097721130188830	513734690272968717	Same Anime Characters Voice Actress With One Piece's Tony Tony Chopper	Playing	YouTube	f	Rearm Renkar	1626479674748	1626479815000
403571252402585601	\N	spotify:ab67616d0000b273322adabca0b652da6ad1cdcc	Chromosom	Listening	Spotify	t	RAF Camora	1626479742545	1626479865547
424599087145549835	\N	\N	\N	Custom	Custom Status	f	Reliquit solum ab amicis.	1626482294037	\N
223666520943886336	802958789555781663	802961390007615488	Dumb People Do Dumb Things - TEC Hub - https://discord.gg/tuU6hHZ	Playing	Twitch	f	TheEuropeanCanadian	1626482885089	\N
206955935229280256	\N	\N	\N	Playing	%help || GC: 108038 || UC: 112464 || VC: 4 || Version: 5.9.0	f	\N	1626521529303	\N
280050308611309569	\N	\N	\N	Playing	Mass Effect™ Legendary Edition	f	\N	1626521626801	\N
202407278618476545	\N	spotify:ab67616d0000b273d217deb99144003749e7798a	Sleepwalker	Listening	Spotify	t	Tigercub	1626521649175	1626521857239
191594115907977225	\N	spotify:ab67616d0000b273f9d05a5e122d8388297afc25	Whore of Babylon	Listening	Spotify	t	Cvlt Ov the Svn	1626521681388	1626521857521
202407278618476545	\N	\N	\N	Custom	Custom Status	f	defekt aber nett	1626521859946	\N
424599087145549835	\N	\N	\N	Custom	Custom Status	f	Reliquit solum ab amicis.	1626521892099	\N
206955935229280256	\N	\N	\N	Playing	%help || GC: 108041 || UC: 113547 || VC: 4 || Version: 5.9.0	f	\N	1626522003203	\N
424599087145549835	\N	\N	\N	Custom	Custom Status	f	Reliquit solum ab amicis.	1626522189160	\N
202407278618476545	\N	\N	\N	Custom	Custom Status	f	defekt aber nett	1626522270775	\N
202407278618476545	\N	\N	\N	Custom	Custom Status	f	defekt aber nett	1626522287362	\N
202407278618476545	\N	\N	\N	Custom	Custom Status	f	defekt aber nett	1626522453972	\N
424599087145549835	\N	spotify:ab67616d0000b273379352b72b8e75bd7a40b8a2	Faster Than The Flame	Listening	Spotify	t	Powerwolf	1626524433625	1626524682585
424599087145549835	\N	\N	\N	Custom	Custom Status	f	Reliquit solum ab amicis.	1626524531661	\N
206955935229280256	\N	\N	\N	Playing	%help || GC: 105133 || UC: 20076 || VC: 0 || Version: 5.9.0	f	\N	1626524542511	\N
206955935229280256	\N	\N	\N	Playing	%help || GC: 108041 || UC: 21041 || VC: 0 || Version: 5.9.0	f	\N	1626524616354	\N
261520809225355264	484892481452769290	\N	\N	Playing	Insurgency: Sandstorm	f	\N	1626524661675	\N
261520809225355264	484892481452769290	\N	\N	Playing	Insurgency: Sandstorm	f	\N	1626524672559	\N
206955935229280256	\N	\N	\N	Playing	%help || GC: 108042 || UC: 22159 || VC: 0 || Version: 5.9.0	f	\N	1626524749871	\N
261520809225355264	531450167799447552	531577494935961601	Main Menu	Playing	Insurgency: Sandstorm	t	\N	1626524759905	\N
261520809225355264	531450167799447552	531577494935961601	In queue	Playing	Insurgency: Sandstorm	t	Firefight	1626524974000	\N
384759010332770307	\N	\N	\N	Custom	Custom Status	f	Born to shit, forced to wipe...	1626524982932	\N
261520809225355264	531450167799447552	531577494935961601	Playing a match	Playing	Insurgency: Sandstorm	t	\N	1626524984000	\N
261520809225355264	531450167799447552	531577494935961601	Playing Firefight	Playing	Insurgency: Sandstorm	t	Outskirts Firefight (East)	1626524998000	\N
261520809225355264	531450167799447552	531577494935961601	Playing Firefight	Playing	Insurgency: Sandstorm	t	Outskirts Firefight (East)	1626525000000	\N
261520809225355264	531450167799447552	531577494935961601	Playing a match	Playing	Insurgency: Sandstorm	t	\N	1626525059000	\N
202407278618476545	\N	\N	\N	Custom	Custom Status	f	defekt aber nett	1626525070894	\N
261520809225355264	531450167799447552	531577494935961601	Playing Firefight	Playing	Insurgency: Sandstorm	t	Precinct Firefight (East)	1626525071000	\N
261520809225355264	531450167799447552	531577494935961601	Playing Firefight	Playing	Insurgency: Sandstorm	t	Precinct Firefight (East)	1626525072000	\N
331758759699546112	\N	\N	\N	Custom	Custom Status	f	\N	1626525191428	\N
461265486655520788	\N	\N	\N	Playing	Skyrims of Catan	f	\N	1626525282656	\N
147395304549908480	\N	\N	\N	Custom	Custom Status	f	My Life = Existential Dread and fear of missing out	1626525299449	\N
147395304549908480	\N	\N	\N	Custom	Custom Status	f	My Life = Existential Dread and fear of missing out	1626525299757	\N
276431762815451138	547786685795139585	627852580411932672	duden-schaber	Playing	CLion	t	\N	1626525367988	\N
331758759699546112	\N	\N	\N	Custom	Custom Status	f	\N	1626525390586	\N
271659253486452736	\N	\N	\N	Custom	Custom Status	f	Whoa, I got two hands! Brujo, I need two beers!	1626525403590	\N
281381884460662785	\N	\N	\N	Custom	Custom Status	f	Я….жду ответа, больше надежд нету. Скоро….кончится лето. Это….	1626525404204	\N
281381884460662785	\N	\N	\N	Custom	Custom Status	f	Я….жду ответа, больше надежд нету. Скоро….кончится лето. Это….	1626525404614	\N
281381884460662785	\N	\N	\N	Custom	Custom Status	f	Я….жду ответа, больше надежд нету. Скоро….кончится лето. Это….	1626525405638	\N
281381884460662785	\N	\N	\N	Custom	Custom Status	f	Я….жду ответа, больше надежд нету. Скоро….кончится лето. Это….	1626525406457	\N
206955935229280256	\N	\N	\N	Playing	%help || GC: 108037 || UC: 177330 || VC: 4 || Version: 5.9.0	f	\N	1626383020414	\N
547850369695219712	\N	spotify:ab67616d0000b27352fe7829e4b7fbb158b0b8fe	Sweet Dreams (Are Made of This)	Listening	Spotify	t	Steve Void; Koosen; Strange Fruits Music	1626383038814	1626383160814
251364645254856714	401518684763586560	416719019576393738	Heulende Schlucht (ARAM)	Playing	League of Legends	f	In der Lobby	1626383176152	\N
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626383192536	\N
368355102949376000	\N	spotify:ab67616d0000b27365cacd099215a7ecb6f1ee78	und der seltsame Wecker (feat. Henning May) - Der Schrei aus dem Wecker, Teil 3	Listening	Spotify	t	Die drei ???; Henning May	1626383193837	1626383303125
206955935229280256	\N	\N	\N	Playing	%help || GC: 108037 || UC: 177776 || VC: 4 || Version: 5.9.0	f	\N	1626383254693	\N
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626383300062	\N
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626383336920	\N
403571252402585601	\N	spotify:ab67616d0000b273322adabca0b652da6ad1cdcc	Zombie	Listening	Spotify	t	RAF Camora	1626474625364	1626474765887
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626474644278	\N
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626474658172	\N
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626474796924	\N
223666520943886336	463097721130188830	513734690272968717	FINAL FANTASY XIV: Stormblood Trailer	Playing	YouTube	f	FINAL FANTASY XIV	1626474834900	1626475083000
206955935229280256	\N	\N	\N	Playing	%help || GC: 108039 || UC: 208383 || VC: 5 || Version: 5.9.0	f	\N	1626474913456	\N
223666520943886336	463097721130188830	513734690272968717	FINAL FANTASY XIV: Stormblood Trailer	Playing	YouTube	f	FINAL FANTASY XIV	1626474926768	1626475159000
403571252402585601	\N	\N	\N	Custom	Custom Status	f	\N	1626474931478	\N
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626474934960	\N
361914328703696896	\N	\N	\N	Custom	Custom Status	f	\N	1626477490044	\N
403571252402585601	\N	\N	\N	Custom	Custom Status	f	\N	1626477514620	\N
403571252402585601	\N	\N	\N	Custom	Custom Status	f	\N	1626477532338	\N
206955935229280256	\N	\N	\N	Playing	%help || GC: 108034 || UC: 212052 || VC: 5 || Version: 5.9.0	f	\N	1626477678255	\N
263407413737160718	\N	\N	\N	Custom	Custom Status	f	write this down	1626479847190	\N
223666520943886336	363445589247131668	\N	\N	Playing	ROBLOX	f	\N	1626480077639	\N
325704347767799808	790655993809338398	798617001685024808	Uprising (The Indicator Remix)	Playing	YouTube Music	f	Magic Sword & The Indicator	1626480729878	\N
325704347767799808	790655993809338398	798617001685024808	Uprising (The Indicator Remix)	Playing	YouTube Music	f	Magic Sword & The Indicator	1626480758550	\N
325704347767799808	790655993809338398	798617001685024808	Uprising (The Indicator Remix)	Playing	YouTube Music	f	Magic Sword & The Indicator	1626480768867	\N
206955935229280256	\N	\N	\N	Playing	Loading...	f	\N	1626480793263	\N
206955935229280256	\N	\N	\N	Playing	%help || GC: 69125 || UC: 10483 || VC: 1 || Version: 5.9.0	f	\N	1626480848354	\N
206955935229280256	\N	\N	\N	Playing	%help || GC: 108028 || UC: 25061 || VC: 0 || Version: 5.9.0	f	\N	1626482508667	\N
223666520943886336	802958789555781663	802961390007615488	♦ #Unvernünftig ♦ !socials ♦ !merch ♦	Playing	Twitch	f	Greifenberg	1626482176000	\N
223666520943886336	802958789555781663	802961390007615488	♦ #Unvernünftig ♦ !socials ♦ !merch ♦	Playing	Twitch	f	Greifenberg	1626482884395	\N
223666520943886336	802958789555781663	802961390007615488	Dumb People Do Dumb Things - TEC Hub - https://discord.gg/tuU6hHZ	Playing	Twitch	f	TheEuropeanCanadian	1626482882000	\N
424599087145549835	\N	\N	\N	Custom	Custom Status	f	Reliquit solum ab amicis.	1626522678529	\N
424599087145549835	\N	\N	\N	Custom	Custom Status	f	Reliquit solum ab amicis.	1626522679962	\N
271659253486452736	\N	\N	\N	Custom	Custom Status	f	Whoa, I got two hands! Brujo, I need two beers!	1626522735992	\N
281381884460662785	\N	\N	\N	Custom	Custom Status	f	Я….жду ответа, больше надежд нету. Скоро….кончится лето. Это….	1626522774076	\N
281381884460662785	\N	\N	\N	Custom	Custom Status	f	Я….жду ответа, больше надежд нету. Скоро….кончится лето. Это….	1626522894387	\N
202407278618476545	\N	\N	\N	Custom	Custom Status	f	defekt aber nett	1626522969069	\N
202407278618476545	\N	spotify:ab67616d0000b273fa0b74121608a007af87a3fe	Breathe	Listening	Spotify	t	The Prodigy	1626522981686	1626523317966
202407278618476545	\N	\N	\N	Custom	Custom Status	f	defekt aber nett	1626523000269	\N
281381884460662785	\N	spotify:ab67616d0000b273f9be2fb0d9f9c2b9c3f24a4b	Афган	Listening	Spotify	t	Валерий Петряев	1626523493465	1626523886851
281381884460662785	\N	\N	\N	Custom	Custom Status	f	Я….жду ответа, больше надежд нету. Скоро….кончится лето. Это….	1626523662590	\N
281381884460662785	\N	\N	\N	Custom	Custom Status	f	Я….жду ответа, больше надежд нету. Скоро….кончится лето. Это….	1626523732427	\N
281381884460662785	357607478105604096	\N	\N	Playing	War Thunder	f	\N	1626523733539	\N
206955935229280256	\N	\N	\N	Playing	Loading...	f	\N	1626524019146	\N
206955935229280256	\N	\N	\N	Playing	%help || GC: 69125 || UC: 12188 || VC: 0 || Version: 5.9.0	f	\N	1626524077720	\N
206955935229280256	\N	\N	\N	Playing	%help || GC: 73000 || UC: 12970 || VC: 0 || Version: 5.9.0	f	\N	1626524125334	\N
206955935229280256	\N	\N	\N	Playing	%help || GC: 76899 || UC: 13798 || VC: 0 || Version: 5.9.0	f	\N	1626524180733	\N
206955935229280256	\N	\N	\N	Playing	%help || GC: 84822 || UC: 15353 || VC: 0 || Version: 5.9.0	f	\N	1626524280879	\N
206955935229280256	\N	\N	\N	Playing	%help || GC: 87721 || UC: 15995 || VC: 0 || Version: 5.9.0	f	\N	1626524317436	\N
281381884460662785	\N	spotify:ab67616d0000b273071e664ea5b965c6b3880bb5	В наших глазах	Listening	Spotify	t	Kino	1626525403750	1626525627648
281381884460662785	\N	spotify:ab67616d0000b2738289eab28962a35e96b1c4f6	По краю острова	Listening	Spotify	t	Ploho; Molchat Doma	1626525405439	1626525626834
281381884460662785	\N	spotify:ab67616d0000b273d30fcf6340831edbafb45e38	Seek & Destroy - Remastered	Listening	Spotify	t	Metallica	1626525407418	1626525822138
206955935229280256	\N	\N	\N	Playing	%help || GC: 108043 || UC: 28019 || VC: 0 || Version: 5.9.0	f	\N	1626525578695	\N
261520809225355264	531450167799447552	531577494935961601	Main Menu	Playing	Insurgency: Sandstorm	t	\N	1626525627438	\N
206955935229280256	\N	\N	\N	Playing	%help || GC: 105148 || UC: 27674 || VC: 0 || Version: 5.9.0	f	\N	1626525681304	\N
206955935229280256	\N	\N	\N	Playing	%help || GC: 108044 || UC: 28249 || VC: 0 || Version: 5.9.0	f	\N	1626525705362	\N
206955935229280256	\N	\N	\N	Playing	%help || GC: 108044 || UC: 28568 || VC: 0 || Version: 5.9.0	f	\N	1626525816273	\N
281381884460662785	\N	\N	\N	Custom	Custom Status	f	Я….жду ответа, больше надежд нету. Скоро….кончится лето. Это….	1626525822407	\N
681192725152006160	401518684763586560	416719019576393738	Summoner's Rift (Ranked)	Playing	League of Legends	f	In Queue	1626383147000	\N
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626383167244	\N
368355102949376000	\N	spotify:ab67616d0000b27365cacd099215a7ecb6f1ee78	und der seltsame Wecker (feat. Henning May) - Der Schrei aus dem Wecker, Teil 4	Listening	Spotify	t	Die drei ???; Henning May	1626383303061	1626383400527
302519349489434624	\N	\N	\N	Custom	Custom Status	f	\N	1626383339582	\N
302519349489434624	\N	spotify:ab67616d0000b2736b55388fe3b6755327d657fa	BLUE CLAPPER	Listening	Spotify	t	hololive IDOL PROJECT	1626383341171	1626383591102
424599087145549835	\N	\N	\N	Custom	Custom Status	f	Reliquit solum ab amicis.	1626383387915	\N
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626383396926	\N
368355102949376000	\N	spotify:ab67616d0000b27365cacd099215a7ecb6f1ee78	und der seltsame Wecker (feat. Henning May) - Der Schrei aus dem Wecker, Teil 5	Listening	Spotify	t	Die drei ???; Henning May	1626383400527	1626383495037
708309251562405908	\N	\N	\N	Custom	Custom Status	f	Wird aus Russland zurückgedrängt	1626419187528	\N
708309251562405908	445956193924546560	446301881636225042	in MENU	Playing	Rainbow Six Siege	f	\N	1626419187544	\N
708309251562405908	356876590342340608	\N	\N	Playing	Tom Clancy's Rainbow Six Siege	f	\N	1626415879771	\N
708309251562405908	\N	\N	\N	Custom	Custom Status	f	Wird aus Russland zurückgedrängt	1626419191680	\N
708309251562405908	445956193924546560	446301881636225042	Looking for QUICK MATCH match	Playing	Rainbow Six Siege	f	\N	1626419191688	\N
708309251562405908	\N	\N	\N	Custom	Custom Status	f	Wird aus Russland zurückgedrängt	1626419191741	\N
708309251562405908	445956193924546560	446301881636225042	in MENU	Playing	Rainbow Six Siege	f	\N	1626419191742	\N
708309251562405908	\N	\N	\N	Custom	Custom Status	f	Wird aus Russland zurückgedrängt	1626419191992	\N
708309251562405908	445956193924546560	446301881636225042	QUICK MATCH match - Round 1 / 4	Playing	Rainbow Six Siege	f	\N	1626419191996	\N
343815575065198604	700136079562375258	\N	\N	Playing	VALORANT	f	\N	1626419241935	\N
343815575065198604	\N	spotify:ab67616d0000b27317c6a62b4a3dfc26ce558505	Hate Me!	Listening	Spotify	t	MASN	1626419157668	1626419312424
281381884460662785	\N	\N	\N	Custom	Custom Status	f	Я….жду ответа, больше надежд нету. Скоро….кончится лето. Это….	1626419256607	\N
343815575065198604	\N	spotify:ab67616d0000b273da302483df4ba826de4c6151	summer nights	Listening	Spotify	t	Skinny Atlas; Laeland; Snøw	1626419312770	1626419484907
223666520943886336	608065709741965327	832321366312091648	One Piece - CP9 (207-325)	Playing	Crunchyroll	f	Staffel 4,\n            Folge 239 - “Die Wächter der Wasserstadt”	1626468541427	1626469260000
223666520943886336	608065709741965327	832321366312091648	One Piece - CP9 (207-325)	Playing	Crunchyroll	f	Staffel 4,\n            Folge 239 - “Die Wächter der Wasserstadt”	1626468541823	1626469261000
223666520943886336	608065709741965327	832321366312091648	One Piece - CP9 (207-325)	Playing	Crunchyroll	f	Staffel 4,\n            Folge 239 - “Die Wächter der Wasserstadt”	1626468561380	1626469260000
223666520943886336	608065709741965327	832321366312091648	One Piece - CP9 (207-325)	Playing	Crunchyroll	f	Staffel 4,\n            Folge 239 - “Die Wächter der Wasserstadt”	1626468561693	1626469261000
223666520943886336	608065709741965327	832321366312091648	One Piece - CP9 (207-325)	Playing	Crunchyroll	f	Staffel 4,\n            Folge 239 - “Die Wächter der Wasserstadt”	1626468581451	1626469260000
223666520943886336	608065709741965327	832321366312091648	One Piece - CP9 (207-325)	Playing	Crunchyroll	f	Staffel 4,\n            Folge 239 - “Die Wächter der Wasserstadt”	1626468581772	1626469261000
311607742542381068	\N	\N	\N	Custom	Custom Status	f	If I continue like this I will die before I am 30, the doctors said	1626468584215	\N
311607742542381068	\N	spotify:ab67616d0000b27304cde6f3d9f0268f586f37d0	Zettai Ryouiki	Listening	Spotify	t	Shiki-TMNS; PiNKII	1626468583068	1626468736641
311607742542381068	401518684763586560	403244943809708032	Summoner's Rift (Ranked)	Playing	League of Legends	f	In Game	1626467163000	\N
547850369695219712	\N	spotify:ab67616d0000b273b72ebf805e704e4463b79629	Endurance	Listening	Spotify	t	Any Given Day	1626468425794	1626468711060
206955935229280256	\N	\N	\N	Playing	%help || GC: 108036 || UC: 197718 || VC: 4 || Version: 5.9.0	f	\N	1626468586368	\N
302519349489434624	\N	\N	\N	Custom	Custom Status	f	\N	1626468586518	\N
302519349489434624	432559364772200479	812446429800431627	🚚 Санкт-Петербург ➡ Genève | Volvo FH at 0 km/h	Playing	Euro Truck Simulator 2	f	🌐 Simulation 2 (2093/4200) 🎮 ID:  455 📍 Kunda	1626467975064	1626477454064
302519349489434624	379996627764641792	384031143768489984	Logging in	Playing	TruckersMP	f	Near: Kunda | Volvo FH	1626468586529	\N
223666520943886336	608065709741965327	832321366312091648	One Piece - CP9 (207-325)	Playing	Crunchyroll	f	Staffel 4,\n            Folge 239 - “Die Wächter der Wasserstadt”	1626468602149	1626469260000
223666520943886336	608065709741965327	832321366312091648	One Piece - CP9 (207-325)	Playing	Crunchyroll	f	Staffel 4,\n            Folge 239 - “Die Wächter der Wasserstadt”	1626468602285	1626469261000
206955935229280256	\N	\N	\N	Playing	%help || GC: 108035 || UC: 197757 || VC: 4 || Version: 5.9.0	f	\N	1626468615556	\N
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626470957234	\N
223666520943886336	463097721130188830	513734690272968717	I Game is AMAZING to Speedrun…	Playing	YouTube	f	JameskiiLive	1626471185608	\N
395303354923745281	\N	spotify:ab67616d0000b2738f2285b4044165960022c4c5	End of Me	Listening	Spotify	t	Ashes Remain	1626471238711	1626471409137
403571252402585601	\N	spotify:ab67616d0000b273322adabca0b652da6ad1cdcc	Benzin	Listening	Spotify	t	RAF Camora; Ufo361	1626474765878	1626474937273
223666520943886336	463097721130188830	513734690272968717	FINAL FANTASY XIV: Stormblood Trailer	Playing	YouTube	f	FINAL FANTASY XIV	1626474834386	1626475083000
223666520943886336	463097721130188830	513734690272968717	FINAL FANTASY XIV: Stormblood Trailer	Playing	YouTube	f	FINAL FANTASY XIV	1626474835049	1626475078000
206955935229280256	\N	\N	\N	Playing	%help || GC: 108040 || UC: 208288 || VC: 5 || Version: 5.9.0	f	\N	1626474841162	\N
223666520943886336	612704158826496028	612710277800001584	Google Images	Playing	Google	f	Searching for meme	1626474849000	\N
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626474882838	\N
461265486655520788	\N	\N	\N	Playing	Skyrim for graphing calculator	f	\N	1626474883362	\N
223666520943886336	463097721130188830	513734690272968717	FINAL FANTASY XIV: Stormblood Trailer	Playing	YouTube	f	FINAL FANTASY XIV	1626474926256	1626475159000
223666520943886336	463097721130188830	513734690272968717	FINAL FANTASY XIV: Stormblood Trailer	Playing	YouTube	f	FINAL FANTASY XIV	1626474927104	1626475154000
361914328703696896	\N	\N	\N	Custom	Custom Status	f	\N	1626477493833	\N
403571252402585601	445956193924546560	446301881636225042	Looking for RANKED match	Playing	Rainbow Six Siege	f	\N	1626477514627	\N
403571252402585601	445956193924546560	446301881636225042	in MENU	Playing	Rainbow Six Siege	f	\N	1626477532350	\N
223666520943886336	363445589247131668	\N	\N	Playing	ROBLOX	f	\N	1626479882699	\N
361914328703696896	\N	\N	\N	Custom	Custom Status	f	\N	1626480124795	\N
361914328703696896	\N	\N	\N	Playing	Apex Legends	f	\N	1626480158267	\N
325704347767799808	\N	\N	\N	Playing	YouTube Music	f	\N	1626480728998	\N
403571252402585601	\N	spotify:ab67616d0000b273322adabca0b652da6ad1cdcc	Realität	Listening	Spotify	t	RAF Camora	1626474098227	1626474282439
384759010332770307	\N	\N	\N	Custom	Custom Status	f	Born to shit, forced to wipe...	1626474149449	\N
272411073842511873	\N	\N	\N	Custom	Custom Status	f	Deal with stuff be on	1626474191076	\N
302519349489434624	\N	\N	\N	Custom	Custom Status	f	\N	1626474197065	\N
223666520943886336	463097721130188830	513734690272968717	Searching for:	Playing	YouTube	f	need for speed heat s200	1626474272000	\N
403571252402585601	\N	spotify:ab67616d0000b273322adabca0b652da6ad1cdcc	Wenn es schlecht läuft	Listening	Spotify	t	RAF Camora	1626474283448	1626474465996
223666520943886336	463097721130188830	513734690272968717	Searching for:	Playing	YouTube	f	need for speed heat sx20	1626474282000	\N
223666520943886336	463097721130188830	\N	\N	Playing	YouTube	f	\N	1626474294359	\N
223666520943886336	463097721130188830	513734690272968717	Building a 240sx S13 in NFS HEAT!	Playing	YouTube	f	od orion	1626474305416	1626474954000
223666520943886336	463097721130188830	513734690272968717	Building a 240sx S13 in NFS HEAT!	Playing	YouTube	f	od orion	1626474314522	1626474884000
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626474997999	\N
403571252402585601	\N	\N	\N	Custom	Custom Status	f	\N	1626475045244	\N
403571252402585601	445956193924546560	446301881636225042	in MENU	Playing	Rainbow Six Siege	f	\N	1626475056528	\N
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626475100336	\N
403571252402585601	445956193924546560	446301881636225042	in MENU	Playing	Rainbow Six Siege	f	\N	1626475105486	\N
403571252402585601	\N	spotify:ab67616d0000b273322adabca0b652da6ad1cdcc	Vergesse nie die Street	Listening	Spotify	t	RAF Camora; Ahmad Amin	1626475104575	1626475254176
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626475109535	\N
403571252402585601	445956193924546560	446301881636225042	Looking for RANKED match	Playing	Rainbow Six Siege	f	\N	1626475127177	\N
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626475128188	\N
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626475162492	\N
403571252402585601	445956193924546560	446301881636225042	in MENU	Playing	Rainbow Six Siege	f	\N	1626475183905	\N
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626475189526	\N
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626475192602	\N
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626475218616	\N
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626475229052	\N
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626475238583	\N
403571252402585601	\N	spotify:ab67616d0000b273322adabca0b652da6ad1cdcc	Ebbe	Listening	Spotify	t	RAF Camora	1626475254142	1626475466670
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626475333193	\N
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626475367653	\N
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626475458838	\N
403571252402585601	445956193924546560	446301881636225042	in MENU	Playing	Rainbow Six Siege	f	\N	1626475467656	\N
403571252402585601	\N	\N	\N	Custom	Custom Status	f	\N	1626475490896	\N
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626475541577	\N
206955935229280256	\N	\N	\N	Playing	%help || GC: 108036 || UC: 209392 || VC: 5 || Version: 5.9.0	f	\N	1626475622271	\N
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626475756719	\N
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626475884828	\N
223666520943886336	463097721130188830	513734690272968717	How to GET and USE DISCORD on PS4 (Easy Method!)	Playing	YouTube	f	YourSixStudios	1626475894396	1626476168000
223666520943886336	463097721130188830	513734690272968717	How to GET and USE DISCORD on PS4 (Easy Method!)	Playing	YouTube	f	YourSixStudios	1626475934690	1626476163000
223666520943886336	463097721130188830	513734690272968717	How to GET and USE DISCORD on PS4 (Easy Method!)	Playing	YouTube	f	YourSixStudios	1626475954660	1626476163000
206955935229280256	\N	\N	\N	Playing	%help || GC: 108033 || UC: 212369 || VC: 5 || Version: 5.9.0	f	\N	1626477957602	\N
325704347767799808	357607478105604096	\N	\N	Playing	War Thunder	f	\N	1626478218536	\N
223666520943886336	463097721130188830	513734690272968717	Viewing home page	Playing	YouTube	f	\N	1626478263000	\N
361914328703696896	\N	\N	\N	Custom	Custom Status	f	\N	1626478315900	\N
223666520943886336	463097721130188830	\N	\N	Playing	YouTube	f	\N	1626478380516	\N
223666520943886336	463097721130188830	513734690272968717	r/Holup | he/he	Playing	YouTube	f	EmKay	1626478382001	1626479071000
223666520943886336	463097721130188830	513734690272968717	r/Holup | he/he	Playing	YouTube	f	EmKay	1626478382908	1626479071000
434794201075417101	\N	\N	\N	Custom	Custom Status	f	deer drip bottom text	1626478666936	\N
206955935229280256	\N	\N	\N	Playing	%help || GC: 108031 || UC: 205637 || VC: 5 || Version: 5.9.0	f	\N	1626478910434	\N
403571252402585601	\N	\N	\N	Custom	Custom Status	f	\N	1626479048367	\N
403571252402585601	\N	\N	\N	Custom	Custom Status	f	\N	1626479089839	\N
403571252402585601	\N	\N	\N	Custom	Custom Status	f	\N	1626479287863	\N
403571252402585601	356877880938070016	\N	\N	Playing	Rocket League	t	Hauptmenü	1626479293524	\N
403571252402585601	356877880938070016	\N	\N	Playing	Rocket League	t	Doppel in Forbidden Temple	1626479315130	\N
361914328703696896	\N	\N	\N	Custom	Custom Status	f	\N	1626479364615	\N
403571252402585601	356877880938070016	\N	\N	Playing	Rocket League	t	Doppel in Forbidden Temple	1626479471188	\N
223666520943886336	363445589247131668	\N	\N	Playing	ROBLOX	f	\N	1626479897612	\N
434794201075417101	\N	\N	\N	Custom	Custom Status	f	deer drip bottom text	1626480746097	\N
325704347767799808	790655993809338398	798617001685024808	Uprising (The Indicator Remix)	Playing	YouTube Music	f	Magic Sword & The Indicator	1626480768868	\N
223666520943886336	802958789555781663	802961390007615488	♦ #Unvernünftig ♦ !socials ♦ !merch ♦	Playing	Twitch	f	Greifenberg	1626482884087	\N
223666520943886336	802958789555781663	802961390007615488	Dumb People Do Dumb Things - TEC Hub - https://discord.gg/tuU6hHZ	Playing	Twitch	f	TheEuropeanCanadian	1626482885396	\N
281381884460662785	\N	\N	\N	Playing	Netflix	f	\N	1626489164244	\N
424599087145549835	\N	\N	\N	Custom	Custom Status	f	Reliquit solum ab amicis.	1626522798746	\N
206955935229280256	\N	\N	\N	Playing	%help || GC: 108045 || UC: 30034 || VC: 0 || Version: 5.9.0	f	\N	1626526047377	\N
384759010332770307	357607133254254632	\N	\N	Playing	Dead by Daylight	f	\N	1626472643781	\N
272411073842511873	\N	\N	\N	Custom	Custom Status	f	Deal with stuff be on	1626474190186	\N
272411073842511873	\N	\N	\N	Custom	Custom Status	f	Deal with stuff be on	1626474190100	\N
206955935229280256	\N	\N	\N	Playing	%help || GC: 108039 || UC: 207334 || VC: 5 || Version: 5.9.0	f	\N	1626474190880	\N
272411073842511873	\N	\N	\N	Custom	Custom Status	f	Deal with stuff be on	1626474190937	\N
223666520943886336	463097721130188830	513734690272968717	Viewing home page	Playing	YouTube	f	\N	1626474270000	\N
223666520943886336	356877880938070016	\N	\N	Playing	Rocket League	t	Hauptmenü	1626474272035	\N
223666520943886336	356877880938070016	\N	\N	Playing	Rocket League	t	Hauptmenü	1626474274491	\N
403571252402585601	\N	\N	\N	Custom	Custom Status	f	\N	1626474277655	\N
223666520943886336	463097721130188830	513734690272968717	Searching for:	Playing	YouTube	f	need for speed heat sx200	1626474281000	\N
223666520943886336	356877880938070016	\N	\N	Playing	Rocket League	t	Hauptmenü	1626474282686	\N
223666520943886336	356877880938070016	\N	\N	Playing	Rocket League	t	Hauptmenü	1626474284112	\N
223666520943886336	356877880938070016	\N	\N	Playing	Rocket League	t	Hauptmenü	1626474284416	\N
223666520943886336	463097721130188830	513734690272968717	Searching for:	Playing	YouTube	f	need for speed heat 240sx	1626474289000	\N
223666520943886336	356877880938070016	\N	\N	Playing	Rocket League	t	Hauptmenü	1626474292002	\N
223666520943886336	356877880938070016	\N	\N	Playing	Rocket League	t	Hauptmenü	1626474294347	\N
223666520943886336	356877880938070016	\N	\N	Playing	Rocket League	t	Hauptmenü	1626474302743	\N
223666520943886336	463097721130188830	513734690272968717	Searching for:	Playing	YouTube	f	need for speed heat 240sx	1626474293000	\N
223666520943886336	356877880938070016	\N	\N	Playing	Rocket League	t	Hauptmenü	1626474304073	\N
223666520943886336	463097721130188830	513734690272968717	Building a 240sx S13 in NFS HEAT!	Playing	YouTube	f	od orion	1626474304085	1626474955000
223666520943886336	356877880938070016	\N	\N	Playing	Rocket League	t	Hauptmenü	1626474305404	\N
272411073842511873	\N	\N	\N	Custom	Custom Status	f	Deal with stuff be on	1626474309976	\N
403571252402585601	356876590342340608	\N	\N	Playing	Tom Clancy's Rainbow Six Siege	f	\N	1626475044516	\N
223666520943886336	356877880938070016	\N	\N	Playing	Rocket League	t	Hauptmenü	1626474311959	\N
223666520943886336	463097721130188830	513734690272968717	Building a 240sx S13 in NFS HEAT!	Playing	YouTube	f	od orion	1626474311971	1626474879000
223666520943886336	356877880938070016	\N	\N	Playing	Rocket League	t	Hauptmenü	1626474314518	\N
223666520943886336	356877880938070016	\N	\N	Playing	Rocket League	t	Hauptmenü	1626474322710	\N
223666520943886336	463097721130188830	513734690272968717	Searching for:	Playing	YouTube	f	need for speed heat 240sx	1626474320000	\N
403571252402585601	\N	\N	\N	Custom	Custom Status	f	\N	1626475056514	\N
302519349489434624	\N	\N	\N	Custom	Custom Status	f	\N	1626475059682	\N
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626475093782	\N
403571252402585601	\N	\N	\N	Custom	Custom Status	f	\N	1626475105475	\N
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626475109407	\N
403571252402585601	\N	\N	\N	Custom	Custom Status	f	\N	1626475127164	\N
206955935229280256	\N	\N	\N	Playing	%help || GC: 108038 || UC: 208701 || VC: 5 || Version: 5.9.0	f	\N	1626475130441	\N
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626475143446	\N
403571252402585601	\N	\N	\N	Custom	Custom Status	f	\N	1626475183894	\N
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626475191779	\N
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626475194373	\N
276431762815451138	547786685795139585	627852580411932672	duden-schaber	Playing	CLion	t	\N	1626475206249	\N
434794201075417101	\N	\N	\N	Custom	Custom Status	f	deer drip bottom text	1626475236050	\N
434794201075417101	\N	\N	\N	Custom	Custom Status	f	deer drip bottom text	1626475236093	\N
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626475237039	\N
403571252402585601	\N	\N	\N	Custom	Custom Status	f	\N	1626475255068	\N
206955935229280256	\N	\N	\N	Playing	%help || GC: 108037 || UC: 208879 || VC: 5 || Version: 5.9.0	f	\N	1626475280565	\N
223666520943886336	463097721130188830	513734690272968717	When They Ask If You Can Mow A Small Forest	Playing	YouTube	f	Copper Creek Cuts Lawn Care	1626557682541	\N
223666520943886336	463097721130188830	513734690272968717	I Game is AMAZING to Speedrun…	Playing	YouTube	f	JameskiiLive	1626475436310	\N
403571252402585601	\N	spotify:ab67616d0000b273322adabca0b652da6ad1cdcc	Kapuze im Club	Listening	Spotify	t	RAF Camora; 187 Strassenbande; Gzuz; Maxwell; LX	1626475466696	1626475755298
302519349489434624	\N	\N	\N	Custom	Custom Status	f	\N	1626475524380	\N
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626475762426	\N
223666520943886336	612704158826496028	612710277800001584	Searching for discord ps4	Playing	Google	f	Ungefähr 72.800.000 Ergebnisse (0,33 Sekunden)	1626475885000	\N
223666520943886336	463097721130188830	513734690272968717	How to GET and USE DISCORD on PS4 (Easy Method!)	Playing	YouTube	f	YourSixStudios	1626475914671	1626476163000
202407278618476545	\N	\N	\N	Custom	Custom Status	f	defekt aber nett	1626475921529	\N
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626475932853	\N
361914328703696896	\N	\N	\N	Custom	Custom Status	f	\N	1626478195580	\N
361914328703696896	\N	\N	\N	Custom	Custom Status	f	\N	1626478328597	\N
206955935229280256	\N	\N	\N	Playing	%help || GC: 108032 || UC: 205383 || VC: 5 || Version: 5.9.0	f	\N	1626478752339	\N
384759010332770307	\N	\N	\N	Custom	Custom Status	f	Born to shit, forced to wipe...	1626478964501	\N
403571252402585601	\N	\N	\N	Custom	Custom Status	f	\N	1626479028098	\N
403571252402585601	\N	spotify:ab67616d0000b273322adabca0b652da6ad1cdcc	Kapuze im Club	Listening	Spotify	t	RAF Camora; 187 Strassenbande; Gzuz; Maxwell; LX	1626479004864	1626479293466
403571252402585601	\N	\N	\N	Custom	Custom Status	f	\N	1626479293512	\N
403571252402585601	\N	\N	\N	Custom	Custom Status	f	\N	1626479315118	\N
361914328703696896	356875057940791296	\N	\N	Playing	Counter-Strike: Global Offensive	f	\N	1626479373060	\N
403571252402585601	\N	\N	\N	Custom	Custom Status	f	\N	1626479471176	\N
361914328703696896	\N	\N	\N	Custom	Custom Status	f	\N	1626480159816	\N
281381884460662785	\N	\N	\N	Custom	Custom Status	f	Я….жду ответа, больше надежд нету. Скоро….кончится лето. Это….	1626522931669	\N
202407278618476545	\N	spotify:ab67616d0000b273adcf6de9eb4254a2192a9224	verbal warnings	Listening	Spotify	t	Cody Frost	1626522799168	1626522982248
202407278618476545	\N	\N	\N	Custom	Custom Status	f	defekt aber nett	1626522984370	\N
281381884460662785	\N	\N	\N	Custom	Custom Status	f	Я….жду ответа, больше надежд нету. Скоро….кончится лето. Это….	1626523052085	\N
206955935229280256	\N	\N	\N	Playing	%help || GC: 108040 || UC: 115988 || VC: 5 || Version: 5.9.0	f	\N	1626523066624	\N
281381884460662785	\N	spotify:ab67616d0000b27316d6f039fafd389911261ada	Welcome Home (Sanitarium) - Remastered	Listening	Spotify	t	Metallica	1626525821315	1626526208461
202407278618476545	\N	\N	\N	Custom	Custom Status	f	defekt aber nett	1626525921016	\N
281381884460662785	\N	\N	\N	Custom	Custom Status	f	Я….жду ответа, больше надежд нету. Скоро….кончится лето. Это….	1626525985118	\N
206955935229280256	\N	\N	\N	Playing	%help || GC: 108049 || UC: 134687 || VC: 4 || Version: 5.9.0	f	\N	1626557685507	\N
411656316814098441	\N	\N	\N	Custom	Custom Status	f	snowfox 😳	1626557696157	\N
202407278618476545	\N	\N	\N	Custom	Custom Status	f	defekt aber nett	1626557701697	\N
223666520943886336	463097721130188830	513734690272968717	When They Ask If You Can Mow A Small Forest	Playing	YouTube	f	Copper Creek Cuts Lawn Care	1626557722476	\N
411656316814098441	\N	\N	\N	Custom	Custom Status	f	snowfox 😳	1626557756266	\N
223666520943886336	463097721130188830	513734690272968717	When They Ask If You Can Mow A Small Forest	Playing	YouTube	f	Copper Creek Cuts Lawn Care	1626557782483	\N
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626557881808	\N
206955935229280256	\N	\N	\N	Playing	%help || GC: 108044 || UC: 30579 || VC: 0 || Version: 5.9.0	f	\N	1626526143018	\N
281381884460662785	\N	\N	\N	Custom	Custom Status	f	Я….жду ответа, больше надежд нету. Скоро….кончится лето. Это….	1626526210101	\N
281381884460662785	\N	spotify:ab67616d0000b273533fd0b248052d04e6b732c0	For Whom The Bell Tolls - Remastered	Listening	Spotify	t	Metallica	1626526208953	1626526518926
708309251562405908	\N	\N	\N	Custom	Custom Status	f	Wird aus Russland zurückgedrängt	1626526230060	\N
223666520943886336	463097721130188830	513734690272968717	Viewing home page	Playing	YouTube	f	\N	1626526294000	\N
223666520943886336	463097721130188830	\N	\N	Playing	YouTube	f	\N	1626526313617	\N
223666520943886336	463097721130188830	513734690272968717	Roblox Minigames are Hilarious...	Playing	YouTube	f	JameskiiLive	1626526314240	1626527045000
223666520943886336	463097721130188830	513734690272968717	Roblox Minigames are Hilarious...	Playing	YouTube	f	JameskiiLive	1626526314754	1626527044000
223666520943886336	463097721130188830	513734690272968717	Roblox Minigames are Hilarious...	Playing	YouTube	f	JameskiiLive	1626526315015	1626527045000
223666520943886336	463097721130188830	513734690272968717	Roblox Minigames are Hilarious...	Playing	YouTube	f	JameskiiLive	1626526317098	1626527044000
206955935229280256	\N	\N	\N	Playing	%help || GC: 108045 || UC: 31815 || VC: 0 || Version: 5.9.0	f	\N	1626526333508	\N
223666520943886336	463097721130188830	513734690272968717	Roblox Minigames are Hilarious...	Playing	YouTube	f	JameskiiLive	1626526333592	1626527045000
223666520943886336	463097721130188830	513734690272968717	Roblox Minigames are Hilarious...	Playing	YouTube	f	JameskiiLive	1626526334814	1626527044000
223666520943886336	463097721130188830	513734690272968717	Roblox Minigames are Hilarious...	Playing	YouTube	f	JameskiiLive	1626526334962	1626527045000
223666520943886336	463097721130188830	513734690272968717	Roblox Minigames are Hilarious...	Playing	YouTube	f	JameskiiLive	1626526354781	1626527044000
223666520943886336	463097721130188830	513734690272968717	Roblox Minigames are Hilarious...	Playing	YouTube	f	JameskiiLive	1626526355190	1626527045000
206955935229280256	\N	\N	\N	Playing	%help || GC: 108046 || UC: 31922 || VC: 0 || Version: 5.9.0	f	\N	1626526355229	\N
223666520943886336	463097721130188830	513734690272968717	Roblox Minigames are Hilarious...	Playing	YouTube	f	JameskiiLive	1626526374749	1626527044000
223666520943886336	463097721130188830	513734690272968717	Roblox Minigames are Hilarious...	Playing	YouTube	f	JameskiiLive	1626526375056	1626527045000
202407278618476545	\N	\N	\N	Custom	Custom Status	f	defekt aber nett	1626526381098	\N
276431762815451138	547786685795139585	627852580411932672	duden-schaber	Playing	CLion	t	\N	1626526362978	\N
223666520943886336	463097721130188830	513734690272968717	Roblox Minigames are Hilarious...	Playing	YouTube	f	JameskiiLive	1626526394819	1626527044000
223666520943886336	463097721130188830	513734690272968717	Roblox Minigames are Hilarious...	Playing	YouTube	f	JameskiiLive	1626526395080	1626527045000
223666520943886336	463097721130188830	513734690272968717	Roblox Minigames are Hilarious...	Playing	YouTube	f	JameskiiLive	1626526415111	1626527044000
223666520943886336	463097721130188830	513734690272968717	Roblox Minigames are Hilarious...	Playing	YouTube	f	JameskiiLive	1626526415135	1626527045000
223666520943886336	463097721130188830	513734690272968717	Roblox Minigames are Hilarious...	Playing	YouTube	f	JameskiiLive	1626526434755	1626527044000
223666520943886336	463097721130188830	513734690272968717	Roblox Minigames are Hilarious...	Playing	YouTube	f	JameskiiLive	1626526435163	1626527045000
223666520943886336	463097721130188830	513734690272968717	Roblox Minigames are Hilarious...	Playing	YouTube	f	JameskiiLive	1626526454835	1626527044000
223666520943886336	463097721130188830	513734690272968717	Roblox Minigames are Hilarious...	Playing	YouTube	f	JameskiiLive	1626526455133	1626527045000
223666520943886336	463097721130188830	513734690272968717	Roblox Minigames are Hilarious...	Playing	YouTube	f	JameskiiLive	1626526474794	1626527044000
223666520943886336	463097721130188830	513734690272968717	Roblox Minigames are Hilarious...	Playing	YouTube	f	JameskiiLive	1626526475100	1626527045000
708309251562405908	\N	\N	\N	Custom	Custom Status	f	Wird aus Russland zurückgedrängt	1626526485443	\N
223666520943886336	463097721130188830	513734690272968717	Roblox Minigames are Hilarious...	Playing	YouTube	f	JameskiiLive	1626526494762	1626527044000
223666520943886336	463097721130188830	513734690272968717	Roblox Minigames are Hilarious...	Playing	YouTube	f	JameskiiLive	1626526495068	1626527045000
206955935229280256	\N	\N	\N	Playing	%help || GC: 108045 || UC: 32874 || VC: 0 || Version: 5.9.0	f	\N	1626526504108	\N
223666520943886336	463097721130188830	513734690272968717	Roblox Minigames are Hilarious...	Playing	YouTube	f	JameskiiLive	1626526514832	1626527044000
223666520943886336	463097721130188830	513734690272968717	Roblox Minigames are Hilarious...	Playing	YouTube	f	JameskiiLive	1626526515140	1626527045000
281381884460662785	\N	\N	\N	Custom	Custom Status	f	Я….жду ответа, больше надежд нету. Скоро….кончится лето. Это….	1626526520464	\N
281381884460662785	\N	spotify:ab67616d0000b2734d4b0fd5a0ed3b40fecc4d87	F**K All the Perfect People	Listening	Spotify	t	Chip Taylor; The New Ukrainians	1626526519435	1626526777941
281381884460662785	\N	\N	\N	Custom	Custom Status	f	Я….жду ответа, больше надежд нету. Скоро….кончится лето. Это….	1626526528048	\N
281381884460662785	\N	spotify:ab67616d0000b2739dfef8cac4e0cfd5f9b9a388	The Walker	Listening	Spotify	t	Fitz and The Tantrums	1626526526983	1626526760116
281381884460662785	\N	\N	\N	Custom	Custom Status	f	Я….жду ответа, больше надежд нету. Скоро….кончится лето. Это….	1626526528861	\N
281381884460662785	\N	\N	\N	Custom	Custom Status	f	Я….жду ответа, больше надежд нету. Скоро….кончится лето. Это….	1626526529884	\N
281381884460662785	\N	spotify:ab67616d0000b273a715d32590424cd667879ba3	Eifersucht	Listening	Spotify	t	Rammstein	1626526528911	1626526744777
281381884460662785	\N	\N	\N	Custom	Custom Status	f	Я….жду ответа, больше надежд нету. Скоро….кончится лето. Это….	1626526530908	\N
223666520943886336	463097721130188830	513734690272968717	Roblox Minigames are Hilarious...	Playing	YouTube	f	JameskiiLive	1626526534801	1626527044000
223666520943886336	463097721130188830	513734690272968717	Roblox Minigames are Hilarious...	Playing	YouTube	f	JameskiiLive	1626526534959	1626527045000
223666520943886336	463097721130188830	513734690272968717	Roblox Minigames are Hilarious...	Playing	YouTube	f	JameskiiLive	1626526535721	1626527044000
223666520943886336	463097721130188830	513734690272968717	Roblox Minigames are Hilarious...	Playing	YouTube	f	JameskiiLive	1626526537052	1626527045000
281381884460662785	\N	\N	\N	Custom	Custom Status	f	Я….жду ответа, больше надежд нету. Скоро….кончится лето. Это….	1626526540437	\N
281381884460662785	\N	spotify:ab67616d0000b27314030d39d060db78d004f2ed	Unperson	Listening	Spotify	t	Nothing But Thieves	1626526530462	1626526734998
223666520943886336	463097721130188830	513734690272968717	Roblox Minigames are Hilarious...	Playing	YouTube	f	JameskiiLive	1626526554768	1626527044000
223666520943886336	463097721130188830	513734690272968717	Roblox Minigames are Hilarious...	Playing	YouTube	f	JameskiiLive	1626526555178	1626527045000
223666520943886336	463097721130188830	513734690272968717	Roblox Minigames are Hilarious...	Playing	YouTube	f	JameskiiLive	1626526555793	1626527044000
223666520943886336	463097721130188830	513734690272968717	Roblox Minigames are Hilarious...	Playing	YouTube	f	JameskiiLive	1626526557024	1626527045000
223666520943886336	463097721130188830	513734690272968717	Roblox Minigames are Hilarious...	Playing	YouTube	f	JameskiiLive	1626526575759	1626527044000
223666520943886336	463097721130188830	513734690272968717	Roblox Minigames are Hilarious...	Playing	YouTube	f	JameskiiLive	1626526577094	1626527045000
223666520943886336	463097721130188830	513734690272968717	Roblox Minigames are Hilarious...	Playing	YouTube	f	JameskiiLive	1626526594806	1626527044000
223666520943886336	463097721130188830	513734690272968717	Roblox Minigames are Hilarious...	Playing	YouTube	f	JameskiiLive	1626526595113	1626527045000
223666520943886336	463097721130188830	513734690272968717	Roblox Minigames are Hilarious...	Playing	YouTube	f	JameskiiLive	1626526595728	1626527044000
223666520943886336	463097721130188830	513734690272968717	Roblox Minigames are Hilarious...	Playing	YouTube	f	JameskiiLive	1626526597058	1626527045000
206955935229280256	\N	\N	\N	Playing	%help || GC: 108044 || UC: 33497 || VC: 0 || Version: 5.9.0	f	\N	1626526606377	\N
223666520943886336	463097721130188830	513734690272968717	Roblox Minigames are Hilarious...	Playing	YouTube	f	JameskiiLive	1626526614774	1626527044000
223666520943886336	463097721130188830	513734690272968717	Roblox Minigames are Hilarious...	Playing	YouTube	f	JameskiiLive	1626526615139	1626527045000
223666520943886336	463097721130188830	513734690272968717	Roblox Minigames are Hilarious...	Playing	YouTube	f	JameskiiLive	1626526615798	1626527044000
223666520943886336	463097721130188830	513734690272968717	Roblox Minigames are Hilarious...	Playing	YouTube	f	JameskiiLive	1626526617032	1626527045000
223666520943886336	463097721130188830	513734690272968717	Roblox Minigames are Hilarious...	Playing	YouTube	f	JameskiiLive	1626526634844	1626527044000
223666520943886336	463097721130188830	513734690272968717	Roblox Minigames are Hilarious...	Playing	YouTube	f	JameskiiLive	1626526635151	1626527045000
223666520943886336	463097721130188830	513734690272968717	Roblox Minigames are Hilarious...	Playing	YouTube	f	JameskiiLive	1626526635766	1626527044000
223666520943886336	463097721130188830	513734690272968717	Roblox Minigames are Hilarious...	Playing	YouTube	f	JameskiiLive	1626526637097	1626527045000
223666520943886336	463097721130188830	513734690272968717	Roblox Minigames are Hilarious...	Playing	YouTube	f	JameskiiLive	1626526654812	1626527044000
223666520943886336	463097721130188830	513734690272968717	Roblox Minigames are Hilarious...	Playing	YouTube	f	JameskiiLive	1626526655116	1626527045000
223666520943886336	463097721130188830	513734690272968717	Roblox Minigames are Hilarious...	Playing	YouTube	f	JameskiiLive	1626526655740	1626527044000
223666520943886336	463097721130188830	513734690272968717	Roblox Minigames are Hilarious...	Playing	YouTube	f	JameskiiLive	1626526657167	1626527045000
206955935229280256	\N	\N	\N	Playing	%help || GC: 108044 || UC: 33524 || VC: 0 || Version: 5.9.0	f	\N	1626526665564	\N
223666520943886336	463097721130188830	513734690272968717	Roblox Minigames are Hilarious...	Playing	YouTube	f	JameskiiLive	1626526674780	1626527044000
223666520943886336	463097721130188830	513734690272968717	Roblox Minigames are Hilarious...	Playing	YouTube	f	JameskiiLive	1626526675190	1626527045000
223666520943886336	463097721130188830	513734690272968717	Roblox Minigames are Hilarious...	Playing	YouTube	f	JameskiiLive	1626526675804	1626527044000
223666520943886336	463097721130188830	513734690272968717	Roblox Minigames are Hilarious...	Playing	YouTube	f	JameskiiLive	1626526677033	1626527045000
223666520943886336	463097721130188830	513734690272968717	Roblox Minigames are Hilarious...	Playing	YouTube	f	JameskiiLive	1626526694850	1626527044000
223666520943886336	463097721130188830	513734690272968717	Roblox Minigames are Hilarious...	Playing	YouTube	f	JameskiiLive	1626526695006	1626527045000
223666520943886336	463097721130188830	513734690272968717	Roblox Minigames are Hilarious...	Playing	YouTube	f	JameskiiLive	1626526695675	1626527044000
223666520943886336	463097721130188830	513734690272968717	Roblox Minigames are Hilarious...	Playing	YouTube	f	JameskiiLive	1626526697103	1626527045000
223666520943886336	463097721130188830	513734690272968717	Roblox Minigames are Hilarious...	Playing	YouTube	f	JameskiiLive	1626526714741	1626527044000
223666520943886336	463097721130188830	513734690272968717	Roblox Minigames are Hilarious...	Playing	YouTube	f	JameskiiLive	1626526715342	1626527045000
223666520943886336	463097721130188830	513734690272968717	Roblox Minigames are Hilarious...	Playing	YouTube	f	JameskiiLive	1626526715764	1626527044000
223666520943886336	463097721130188830	513734690272968717	Roblox Minigames are Hilarious...	Playing	YouTube	f	JameskiiLive	1626526716987	1626527045000
281381884460662785	\N	spotify:ab67616d0000b273cf84c5b276431b473e924802	Enter Sandman	Listening	Spotify	t	Metallica	1626526734234	1626527065500
223666520943886336	463097721130188830	513734690272968717	Roblox Minigames are Hilarious...	Playing	YouTube	f	JameskiiLive	1626526754960	1626527044000
223666520943886336	463097721130188830	513734690272968717	Roblox Minigames are Hilarious...	Playing	YouTube	f	JameskiiLive	1626526755055	1626527045000
223666520943886336	463097721130188830	513734690272968717	Roblox Minigames are Hilarious...	Playing	YouTube	f	JameskiiLive	1626526755735	1626527044000
223666520943886336	463097721130188830	513734690272968717	Roblox Minigames are Hilarious...	Playing	YouTube	f	JameskiiLive	1626526774723	1626527044000
223666520943886336	463097721130188830	513734690272968717	Roblox Minigames are Hilarious...	Playing	YouTube	f	JameskiiLive	1626526775058	1626527045000
223666520943886336	463097721130188830	513734690272968717	Roblox Minigames are Hilarious...	Playing	YouTube	f	JameskiiLive	1626526775644	1626527044000
223666520943886336	463097721130188830	513734690272968717	Roblox Minigames are Hilarious...	Playing	YouTube	f	JameskiiLive	1626526776978	1626527045000
223666520943886336	463097721130188830	513734690272968717	When They Ask If You Can Mow A Small Forest	Playing	YouTube	f	Copper Creek Cuts Lawn Care	1626557692474	\N
206955935229280256	\N	\N	\N	Playing	%help || GC: 108050 || UC: 134722 || VC: 4 || Version: 5.9.0	f	\N	1626557700356	\N
223666520943886336	463097721130188830	513734690272968717	When They Ask If You Can Mow A Small Forest	Playing	YouTube	f	Copper Creek Cuts Lawn Care	1626557732512	\N
223666520943886336	463097721130188830	513734690272968717	When They Ask If You Can Mow A Small Forest	Playing	YouTube	f	Copper Creek Cuts Lawn Care	1626557752582	\N
223666520943886336	463097721130188830	513734690272968717	When They Ask If You Can Mow A Small Forest	Playing	YouTube	f	Copper Creek Cuts Lawn Care	1626557762643	\N
223666520943886336	463097721130188830	513734690272968717	When They Ask If You Can Mow A Small Forest	Playing	YouTube	f	Copper Creek Cuts Lawn Care	1626557792518	\N
223666520943886336	382624125287399424	848636446137909298	In the menus	Playing	FiveM	f	\N	1626557842000	\N
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626557876537	\N
202407278618476545	\N	\N	\N	Custom	Custom Status	f	defekt aber nett	1626557885494	\N
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626557897583	\N
223666520943886336	463097721130188830	513734690272968717	Roblox Minigames are Hilarious...	Playing	YouTube	f	JameskiiLive	1626526734786	1626527044000
223666520943886336	463097721130188830	513734690272968717	Roblox Minigames are Hilarious...	Playing	YouTube	f	JameskiiLive	1626526735093	1626527045000
281381884460662785	\N	\N	\N	Custom	Custom Status	f	Я….жду ответа, больше надежд нету. Скоро….кончится лето. Это….	1626526735247	\N
223666520943886336	463097721130188830	513734690272968717	Roblox Minigames are Hilarious...	Playing	YouTube	f	JameskiiLive	1626526735714	1626527044000
206955935229280256	\N	\N	\N	Playing	%help || GC: 108045 || UC: 33996 || VC: 0 || Version: 5.9.0	f	\N	1626526735731	\N
223666520943886336	463097721130188830	513734690272968717	Roblox Minigames are Hilarious...	Playing	YouTube	f	JameskiiLive	1626526737039	1626527045000
281381884460662785	\N	\N	\N	Custom	Custom Status	f	Я….жду ответа, больше надежд нету. Скоро….кончится лето. Это….	1626526738780	\N
223666520943886336	463097721130188830	513734690272968717	Roblox Minigames are Hilarious...	Playing	YouTube	f	JameskiiLive	1626526757109	1626527045000
223666520943886336	463097721130188830	513734690272968717	Roblox Minigames are Hilarious...	Playing	YouTube	f	JameskiiLive	1626526794793	1626527044000
223666520943886336	463097721130188830	513734690272968717	Roblox Minigames are Hilarious...	Playing	YouTube	f	JameskiiLive	1626526795100	1626527045000
223666520943886336	463097721130188830	513734690272968717	Roblox Minigames are Hilarious...	Playing	YouTube	f	JameskiiLive	1626526795720	1626527044000
223666520943886336	463097721130188830	513734690272968717	Roblox Minigames are Hilarious...	Playing	YouTube	f	JameskiiLive	1626526797046	1626527045000
223666520943886336	463097721130188830	513734690272968717	Roblox Minigames are Hilarious...	Playing	YouTube	f	JameskiiLive	1626526814760	1626527044000
223666520943886336	463097721130188830	513734690272968717	Roblox Minigames are Hilarious...	Playing	YouTube	f	JameskiiLive	1626526815068	1626527045000
223666520943886336	463097721130188830	513734690272968717	Roblox Minigames are Hilarious...	Playing	YouTube	f	JameskiiLive	1626526815794	1626527044000
223666520943886336	463097721130188830	513734690272968717	Roblox Minigames are Hilarious...	Playing	YouTube	f	JameskiiLive	1626526817013	1626527045000
223666520943886336	463097721130188830	513734690272968717	Roblox Minigames are Hilarious...	Playing	YouTube	f	JameskiiLive	1626526834831	1626527044000
223666520943886336	463097721130188830	513734690272968717	Roblox Minigames are Hilarious...	Playing	YouTube	f	JameskiiLive	1626526835139	1626527045000
223666520943886336	463097721130188830	513734690272968717	Roblox Minigames are Hilarious...	Playing	YouTube	f	JameskiiLive	1626526835650	1626527044000
223666520943886336	463097721130188830	513734690272968717	Roblox Minigames are Hilarious...	Playing	YouTube	f	JameskiiLive	1626526837007	1626527045000
223666520943886336	463097721130188830	513734690272968717	Roblox Minigames are Hilarious...	Playing	YouTube	f	JameskiiLive	1626526854799	1626527044000
223666520943886336	463097721130188830	513734690272968717	Roblox Minigames are Hilarious...	Playing	YouTube	f	JameskiiLive	1626526855106	1626527045000
223666520943886336	463097721130188830	513734690272968717	Roblox Minigames are Hilarious...	Playing	YouTube	f	JameskiiLive	1626526855726	1626527044000
223666520943886336	463097721130188830	513734690272968717	Roblox Minigames are Hilarious...	Playing	YouTube	f	JameskiiLive	1626526856950	1626527045000
223666520943886336	463097721130188830	513734690272968717	Roblox Minigames are Hilarious...	Playing	YouTube	f	JameskiiLive	1626526874769	1626527044000
223666520943886336	463097721130188830	513734690272968717	Roblox Minigames are Hilarious...	Playing	YouTube	f	JameskiiLive	1626526875074	1626527045000
223666520943886336	463097721130188830	513734690272968717	Roblox Minigames are Hilarious...	Playing	YouTube	f	JameskiiLive	1626526875688	1626527044000
223666520943886336	463097721130188830	513734690272968717	Roblox Minigames are Hilarious...	Playing	YouTube	f	JameskiiLive	1626526877122	1626527045000
223666520943886336	463097721130188830	513734690272968717	Roblox Minigames are Hilarious...	Playing	YouTube	f	JameskiiLive	1626526894735	1626527044000
223666520943886336	463097721130188830	513734690272968717	Roblox Minigames are Hilarious...	Playing	YouTube	f	JameskiiLive	1626526895043	1626527045000
223666520943886336	463097721130188830	513734690272968717	Roblox Minigames are Hilarious...	Playing	YouTube	f	JameskiiLive	1626526895769	1626527044000
223666520943886336	463097721130188830	513734690272968717	Roblox Minigames are Hilarious...	Playing	YouTube	f	JameskiiLive	1626526896987	1626527045000
206955935229280256	\N	\N	\N	Playing	%help || GC: 108046 || UC: 35337 || VC: 0 || Version: 5.9.0	f	\N	1626526926069	\N
223666520943886336	463097721130188830	513734690272968717	Roblox Minigames are Hilarious...	Playing	YouTube	f	JameskiiLive	1626526934670	1626527044000
223666520943886336	463097721130188830	513734690272968717	Roblox Minigames are Hilarious...	Playing	YouTube	f	JameskiiLive	1626526935080	1626527045000
223666520943886336	463097721130188830	513734690272968717	Roblox Minigames are Hilarious...	Playing	YouTube	f	JameskiiLive	1626526935680	1626527044000
223666520943886336	463097721130188830	513734690272968717	Roblox Minigames are Hilarious...	Playing	YouTube	f	JameskiiLive	1626526937026	1626527045000
281381884460662785	\N	\N	\N	Custom	Custom Status	f	Я….жду ответа, больше надежд нету. Скоро….кончится лето. Это….	1626526952488	\N
206955935229280256	\N	\N	\N	Playing	%help || GC: 108046 || UC: 36596 || VC: 0 || Version: 5.9.0	f	\N	1626527126678	\N
331758759699546112	\N	\N	\N	Custom	Custom Status	f	\N	1626527165897	\N
206955935229280256	\N	\N	\N	Playing	%help || GC: 108047 || UC: 37070 || VC: 0 || Version: 5.9.0	f	\N	1626527199272	\N
206955935229280256	\N	\N	\N	Playing	%help || GC: 108048 || UC: 37343 || VC: 0 || Version: 5.9.0	f	\N	1626527241562	\N
281381884460662785	\N	spotify:ab67616d0000b273cf84c5b276431b473e924802	Enter Sandman	Listening	Spotify	t	Metallica	1626527255419	1626527586685
281381884460662785	\N	spotify:ab67616d0000b273f9f25d15ed72233099c84822	C'est la vie	Listening	Spotify	t	Weathers	1626527258861	1626527452885
281381884460662785	\N	spotify:ab67616d0000b273533fd0b248052d04e6b732c0	Ride The Lightning - Remastered	Listening	Spotify	t	Metallica	1626527260649	1626527657635
202407278618476545	\N	spotify:ab67616d0000b2739629ba33993ebe7e29152959	The Empire of Winds	Listening	Spotify	t	Alpine Universe	1626557701377	1626557885612
223666520943886336	463097721130188830	513734690272968717	When They Ask If You Can Mow A Small Forest	Playing	YouTube	f	Copper Creek Cuts Lawn Care	1626557742549	\N
223666520943886336	463097721130188830	513734690272968717	When They Ask If You Can Mow A Small Forest	Playing	YouTube	f	Copper Creek Cuts Lawn Care	1626557802554	\N
223666520943886336	463097721130188830	513734690272968717	When They Ask If You Can Mow A Small Forest	Playing	YouTube	f	Copper Creek Cuts Lawn Care	1626557826717	\N
206955935229280256	\N	\N	\N	Playing	%help || GC: 108051 || UC: 135061 || VC: 4 || Version: 5.9.0	f	\N	1626557875357	\N
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626557879766	\N
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626557881865	\N
272411073842511873	\N	\N	\N	Custom	Custom Status	f	Deal with stuff be on	1626557884880	\N
202407278618476545	\N	spotify:ab67616d0000b2736b5119f8a4e3d705cf832131	Rún	Listening	Spotify	t	SKÁLD	1626557885165	1626558045565
223666520943886336	463097721130188830	513734690272968717	Roblox Minigames are Hilarious...	Playing	YouTube	f	JameskiiLive	1626526914806	1626527044000
223666520943886336	463097721130188830	513734690272968717	Roblox Minigames are Hilarious...	Playing	YouTube	f	JameskiiLive	1626526915112	1626527045000
223666520943886336	463097721130188830	513734690272968717	Roblox Minigames are Hilarious...	Playing	YouTube	f	JameskiiLive	1626526915726	1626527044000
223666520943886336	463097721130188830	513734690272968717	Roblox Minigames are Hilarious...	Playing	YouTube	f	JameskiiLive	1626526917160	1626527045000
223666520943886336	463097721130188830	513734690272968717	Roblox Minigames are Hilarious...	Playing	YouTube	f	JameskiiLive	1626526954843	1626527044000
223666520943886336	463097721130188830	513734690272968717	Roblox Minigames are Hilarious...	Playing	YouTube	f	JameskiiLive	1626526955560	1626527045000
223666520943886336	463097721130188830	513734690272968717	Roblox Minigames are Hilarious...	Playing	YouTube	f	JameskiiLive	1626526955867	1626527044000
223666520943886336	463097721130188830	513734690272968717	Roblox Minigames are Hilarious...	Playing	YouTube	f	JameskiiLive	1626526956993	1626527045000
223666520943886336	463097721130188830	513734690272968717	Roblox Minigames are Hilarious...	Playing	YouTube	f	JameskiiLive	1626526974820	1626527044000
223666520943886336	463097721130188830	513734690272968717	Roblox Minigames are Hilarious...	Playing	YouTube	f	JameskiiLive	1626526975118	1626527045000
223666520943886336	463097721130188830	513734690272968717	Roblox Minigames are Hilarious...	Playing	YouTube	f	JameskiiLive	1626526975739	1626527044000
223666520943886336	463097721130188830	513734690272968717	Roblox Minigames are Hilarious...	Playing	YouTube	f	JameskiiLive	1626526977064	\N
206955935229280256	\N	\N	\N	Playing	%help || GC: 108045 || UC: 36339 || VC: 0 || Version: 5.9.0	f	\N	1626527088168	\N
281381884460662785	\N	\N	\N	Custom	Custom Status	f	Я….жду ответа, больше надежд нету. Скоро….кончится лето. Это….	1626527258663	\N
281381884460662785	\N	\N	\N	Custom	Custom Status	f	Я….жду ответа, больше надежд нету. Скоро….кончится лето. Это….	1626527259994	\N
281381884460662785	\N	\N	\N	Custom	Custom Status	f	Я….жду ответа, больше надежд нету. Скоро….кончится лето. Это….	1626527260711	\N
281381884460662785	\N	\N	\N	Custom	Custom Status	f	Я….жду ответа, больше надежд нету. Скоро….кончится лето. Это….	1626527261735	\N
206955935229280256	\N	\N	\N	Playing	%help || GC: 108040 || UC: 77378 || VC: 4 || Version: 5.9.0	f	\N	1626537781202	\N
281381884460662785	\N	\N	\N	Custom	Custom Status	f	Я….жду ответа, больше надежд нету. Скоро….кончится лето. Это….	1626537782486	\N
281381884460662785	\N	spotify:ab67616d0000b273227121222b49f0d8e06e77c4	Blue Monday	Listening	Spotify	t	New Order	1626537781660	1626538230820
206955935229280256	\N	\N	\N	Playing	%help || GC: 108039 || UC: 77572 || VC: 4 || Version: 5.9.0	f	\N	1626537823551	\N
403571252402585601	445956193924546560	446301881636225042	in MENU	Playing	Rainbow Six Siege	f	\N	1626537875803	\N
403571252402585601	\N	\N	\N	Custom	Custom Status	f	\N	1626537877925	\N
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626537934446	\N
423162525350363136	\N	\N	\N	Playing	Transport Fever 2	f	\N	1626519083538	\N
206955935229280256	\N	\N	\N	Playing	%help || GC: 108039 || UC: 78470 || VC: 4 || Version: 5.9.0	f	\N	1626538059989	\N
202407278618476545	\N	\N	\N	Custom	Custom Status	f	defekt aber nett	1626538085588	\N
311607742542381068	\N	\N	\N	Custom	Custom Status	f	If I continue like this I will die before I am 30, the doctors said	1626538125934	\N
311607742542381068	\N	\N	\N	Custom	Custom Status	f	If I continue like this I will die before I am 30, the doctors said	1626538129927	\N
281381884460662785	\N	spotify:ab67616d0000b27388711f9c8ab67aaf2aa5c759	Дальше действовать будем мы	Listening	Spotify	t	Kino	1626538231331	1626538468237
371656565607890964	359508404034600990	\N	\N	Playing	Space Engineers	f	\N	1626538284766	\N
206955935229280256	\N	\N	\N	Playing	%help || GC: 108040 || UC: 79422 || VC: 3 || Version: 5.9.0	f	\N	1626538297555	\N
311607742542381068	\N	\N	\N	Custom	Custom Status	f	If I continue like this I will die before I am 30, the doctors said	1626538371796	\N
281381884460662785	\N	\N	\N	Custom	Custom Status	f	Я….жду ответа, больше надежд нету. Скоро….кончится лето. Это….	1626538391763	\N
202407278618476545	\N	\N	\N	Custom	Custom Status	f	defekt aber nett	1626538424634	\N
223666520943886336	463097721130188830	513734690272968717	When They Ask If You Can Mow A Small Forest	Playing	YouTube	f	Copper Creek Cuts Lawn Care	1626557702509	\N
223666520943886336	463097721130188830	513734690272968717	When They Ask If You Can Mow A Small Forest	Playing	YouTube	f	Copper Creek Cuts Lawn Care	1626557812590	\N
223666520943886336	463097721130188830	513734690272968717	When They Ask If You Can Mow A Small Forest	Playing	YouTube	f	Copper Creek Cuts Lawn Care	1626557850902	\N
371656565607890964	361968954954219521	784165615006777374	Gorodok	Playing	Squad	t	\N	1626557876000	\N
223666520943886336	463097721130188830	513734690272968717	When They Ask If You Can Mow A Small Forest	Playing	YouTube	f	Copper Creek Cuts Lawn Care	1626557904757	\N
206955935229280256	\N	\N	\N	Playing	%help || GC: 108038 || UC: 77932 || VC: 4 || Version: 5.9.0	f	\N	1626537916973	\N
423162525350363136	\N	spotify:ab67616d0000b2734958dc3c8e7aa7db22f55af3	Benz Truck (гелик)	Listening	Spotify	t	Lil Peep	1626538032790	1626538192776
202407278618476545	\N	spotify:ab67616d0000b2732ca340ca25a7bcf5552f6525	Colossus	Listening	Spotify	t	IDLES	1626538082273	1626538421312
311607742542381068	359801269008859136	\N	\N	Playing	The Elder Scrolls V: Skyrim Special Edition	f	\N	1626534113016	\N
311607742542381068	\N	\N	\N	Custom	Custom Status	f	If I continue like this I will die before I am 30, the doctors said	1626538128494	\N
423162525350363136	\N	spotify:ab67616d0000b2732ab4e27992f7a4779994d9be	xan (feat. Ion Miles, Big Pat, Monk & Longus Mongus)	Listening	Spotify	t	Dead Dawg; BHZ; Ion Miles; Big Pat; Monk	1626538193271	1626538415547
281381884460662785	\N	\N	\N	Custom	Custom Status	f	Я….жду ответа, больше надежд нету. Скоро….кончится лето. Это….	1626538232335	\N
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626538284858	\N
206955935229280256	\N	\N	\N	Playing	%help || GC: 108041 || UC: 79619 || VC: 3 || Version: 5.9.0	f	\N	1626538344352	\N
311607742542381068	\N	\N	\N	Custom	Custom Status	f	If I continue like this I will die before I am 30, the doctors said	1626538347220	\N
311607742542381068	\N	\N	\N	Custom	Custom Status	f	If I continue like this I will die before I am 30, the doctors said	1626538373030	\N
425770845198090272	356875057940791296	\N	\N	Playing	Counter-Strike: Global Offensive	f	\N	1626538412318	\N
423162525350363136	\N	spotify:ab67616d0000b2736a9a1646460821d889a4435a	Bass	Listening	Spotify	t	RIN	1626538416004	1626538610353
202407278618476545	\N	spotify:ab67616d0000b273fb0228d34fedbdd4e54c22fc	Sockets	Listening	Spotify	t	Slaves	1626538421285	1626538627565
223666520943886336	463097721130188830	513734690272968717	When They Ask If You Can Mow A Small Forest	Playing	YouTube	f	Copper Creek Cuts Lawn Care	1626557712543	\N
223666520943886336	463097721130188830	513734690272968717	When They Ask If You Can Mow A Small Forest	Playing	YouTube	f	Copper Creek Cuts Lawn Care	1626557772653	\N
371656565607890964	361968954954219521	784165615006777374	✪✪✪ GERMAN SQ... - Gorodok (8/99)	Playing	Squad	t	\N	1626556482000	\N
272411073842511873	\N	\N	\N	Custom	Custom Status	f	Deal with stuff be on	1626557884910	\N
223666520943886336	463097721130188830	513734690272968717	When They Ask If You Can Mow A Small Forest	Playing	YouTube	f	Copper Creek Cuts Lawn Care	1626557896861	\N
223666520943886336	382624125287399424	848636446137909298	In the menus	Playing	FiveM	f	\N	1626557896000	\N
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626538545261	\N
597188981964144680	705139844883677224	705140011946737806	Browsing...	Playing	Prime Video	f	\N	1626536502000	\N
281381884460662785	\N	\N	\N	Custom	Custom Status	f	Я….жду ответа, больше надежд нету. Скоро….кончится лето. Это….	1626538614794	\N
281381884460662785	\N	\N	\N	Playing	Netflix	f	\N	1626538614638	\N
202407278618476545	\N	\N	\N	Custom	Custom Status	f	defekt aber nett	1626538631584	\N
202407278618476545	\N	spotify:ab67616d0000b2737d2ce8cc1f139508462ddada	Give Me The Sun	Listening	Spotify	t	Strange Bones	1626538628282	1626538772762
206955935229280256	\N	\N	\N	Playing	%help || GC: 108040 || UC: 80955 || VC: 3 || Version: 5.9.0	f	\N	1626538703468	\N
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626538755692	\N
371656565607890964	356876590342340608	\N	\N	Playing	Tom Clancy's Rainbow Six Siege	f	\N	1626538755714	\N
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626538772383	\N
371656565607890964	445956193924546560	446301881636225042	im MENÜ	Playing	Rainbow Six Siege	f	\N	1626538772397	\N
202407278618476545	\N	\N	\N	Custom	Custom Status	f	defekt aber nett	1626538775308	\N
202407278618476545	\N	spotify:ab67616d0000b273e9498969e6059351b59606cc	Jack Jones	Listening	Spotify	t	Kid Kapichi	1626538772017	1626538988883
206955935229280256	\N	\N	\N	Playing	%help || GC: 108039 || UC: 81272 || VC: 4 || Version: 5.9.0	f	\N	1626538780268	\N
403571252402585601	\N	\N	\N	Custom	Custom Status	f	\N	1626538782009	\N
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626538876528	\N
371656565607890964	445956193924546560	446301881636225042	Sucht nach „SCHNELLES MATCH“-Match	Playing	Rainbow Six Siege	f	\N	1626538876539	\N
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626538903458	\N
371656565607890964	445956193924546560	446301881636225042	im MENÜ	Playing	Rainbow Six Siege	f	\N	1626538903470	\N
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626538907042	\N
371656565607890964	445956193924546560	446301881636225042	Sucht nach „SCHNELLES MATCH“-Match	Playing	Rainbow Six Siege	f	\N	1626538907050	\N
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626538907067	\N
371656565607890964	445956193924546560	446301881636225042	im MENÜ	Playing	Rainbow Six Siege	f	\N	1626538907072	\N
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626538907175	\N
371656565607890964	445956193924546560	446301881636225042	Spielt ein „SCHNELLES MATCH“ - Runde 1/4	Playing	Rainbow Six Siege	f	\N	1626538907183	\N
206955935229280256	\N	\N	\N	Playing	%help || GC: 108039 || UC: 80818 || VC: 4 || Version: 5.9.0	f	\N	1626538921787	\N
206955935229280256	\N	\N	\N	Playing	%help || GC: 108040 || UC: 81036 || VC: 4 || Version: 5.9.0	f	\N	1626538970635	\N
202407278618476545	\N	\N	\N	Custom	Custom Status	f	defekt aber nett	1626538992235	\N
202407278618476545	\N	spotify:ab67616d0000b273a71e3ab7f5673bfbb3f9d8f9	One More Day Won’t Hurt	Listening	Spotify	t	Slaves	1626538988836	1626539155836
434794201075417101	\N	\N	\N	Custom	Custom Status	f	deer drip bottom text	1626539031560	\N
434794201075417101	\N	\N	\N	Custom	Custom Status	f	deer drip bottom text	1626539031601	\N
223666520943886336	608065709741965327	832321366312091648	Browsing...	Playing	Crunchyroll	f	\N	1626537181000	\N
459713629441490945	\N	\N	\N	Custom	Custom Status	f	1:1	1626539103080	\N
281381884460662785	\N	\N	\N	Custom	Custom Status	f	Я….жду ответа, больше надежд нету. Скоро….кончится лето. Это….	1626539125458	\N
281381884460662785	\N	spotify:ab67616d0000b27388711f9c8ab67aaf2aa5c759	Дальше действовать будем мы	Listening	Spotify	t	Kino	1626538966245	1626539203151
281381884460662785	\N	\N	\N	Custom	Custom Status	f	Я….жду ответа, больше надежд нету. Скоро….кончится лето. Это….	1626539125867	\N
281381884460662785	\N	spotify:ab67616d0000b27326695b7ddc3264a22f36cd8b	Sleep Alone	Listening	Spotify	t	Two Door Cinema Club	1626539124576	1626539361016
281381884460662785	\N	\N	\N	Custom	Custom Status	f	Я….жду ответа, больше надежд нету. Скоро….кончится лето. Это….	1626539126173	\N
281381884460662785	\N	\N	\N	Custom	Custom Status	f	Я….жду ответа, больше надежд нету. Скоро….кончится лето. Это….	1626539126993	\N
459713629441490945	\N	\N	\N	Custom	Custom Status	f	1:1	1626539151471	\N
459713629441490945	363427839137153024	\N	\N	Playing	Dying Light	f	\N	1626539151495	\N
202407278618476545	\N	\N	\N	Custom	Custom Status	f	defekt aber nett	1626539159150	\N
202407278618476545	\N	spotify:ab67616d0000b27369fa5923bf59ceede0fa396e	Glitterati	Listening	Spotify	t	Kid Kapichi	1626539155793	1626539343886
276431762815451138	547786685795139585	627852580411932672	duden-schaber	Playing	CLion	t	\N	1626537022639	\N
276431762815451138	547786685795139585	627852580411932672	duden-schaber	Playing	CLion	t	\N	1626539199092	\N
281381884460662785	\N	\N	\N	Custom	Custom Status	f	Я….жду ответа, больше надежд нету. Скоро….кончится лето. Это….	1626539335806	\N
281381884460662785	\N	spotify:ab67616d0000b273ed32602d9145d51e00a2df72	Undercover Martyn	Listening	Spotify	t	Two Door Cinema Club	1626539334782	1626539501355
202407278618476545	\N	\N	\N	Custom	Custom Status	f	defekt aber nett	1626539347260	\N
202407278618476545	\N	spotify:ab67616d0000b273d6c8d2bdaf8abd08c1493654	Vortex	Listening	Spotify	t	Nova Twins	1626539343913	1626539532806
423162525350363136	356875057940791296	\N	\N	Playing	Counter-Strike: Global Offensive	f	\N	1626539362492	\N
206955935229280256	\N	\N	\N	Playing	%help || GC: 108041 || UC: 82580 || VC: 3 || Version: 5.9.0	f	\N	1626539372550	\N
403571252402585601	\N	\N	\N	Custom	Custom Status	f	\N	1626539380129	\N
403571252402585601	\N	spotify:ab67616d0000b273322adabca0b652da6ad1cdcc	Kapuze im Club	Listening	Spotify	t	RAF Camora; 187 Strassenbande; Gzuz; Maxwell; LX	1626539377348	1626539665950
403571252402585601	\N	\N	\N	Custom	Custom Status	f	\N	1626539386477	\N
325704347767799808	357607478105604096	\N	\N	Playing	War Thunder	f	\N	1626537014811	\N
281381884460662785	\N	\N	\N	Custom	Custom Status	f	Я….жду ответа, больше надежд нету. Скоро….кончится лето. Это….	1626539413511	\N
281381884460662785	357607478105604096	\N	\N	Playing	War Thunder	f	\N	1626539413348	\N
281381884460662785	\N	\N	\N	Custom	Custom Status	f	Я….жду ответа, больше надежд нету. Скоро….кончится лето. Это….	1626539502909	\N
281381884460662785	\N	spotify:ab67616d0000b273736145b97bab8fa92cb6113f	Blasphemy	Listening	Spotify	t	Bring Me The Horizon	1626539501884	1626539776897
206955935229280256	\N	\N	\N	Playing	%help || GC: 108040 || UC: 83191 || VC: 3 || Version: 5.9.0	f	\N	1626539526870	\N
206955935229280256	\N	\N	\N	Playing	%help || GC: 108039 || UC: 83230 || VC: 3 || Version: 5.9.0	f	\N	1626539534244	\N
202407278618476545	\N	\N	\N	Custom	Custom Status	f	defekt aber nett	1626539536185	\N
325704347767799808	802958789555781663	802961390007615488	Betrachtet Drops Inventar...	Playing	Twitch	f	\N	1626557923000	\N
202407278618476545	\N	\N	\N	Custom	Custom Status	f	defekt aber nett	1626558011958	\N
223666520943886336	463097721130188830	513734690272968717	When They Ask If You Can Mow A Small Forest	Playing	YouTube	f	Copper Creek Cuts Lawn Care	1626558107294	\N
223666520943886336	463097721130188830	513734690272968717	When They Ask If You Can Mow A Small Forest	Playing	YouTube	f	Copper Creek Cuts Lawn Care	1626558137298	\N
223666520943886336	463097721130188830	513734690272968717	When They Ask If You Can Mow A Small Forest	Playing	YouTube	f	Copper Creek Cuts Lawn Care	1626558147333	\N
223666520943886336	463097721130188830	513734690272968717	When They Ask If You Can Mow A Small Forest	Playing	YouTube	f	Copper Creek Cuts Lawn Care	1626558167301	\N
202407278618476545	\N	spotify:ab67616d0000b273d217deb99144003749e7798a	Sleepwalker	Listening	Spotify	t	Tigercub	1626539531793	1626539739857
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626539590868	\N
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626539624764	\N
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626539651488	\N
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626539655686	\N
461265486655520788	\N	\N	\N	Playing	Oblivion Mobile	f	\N	1626539681798	\N
281381884460662785	\N	\N	\N	Custom	Custom Status	f	Я….жду ответа, больше надежд нету. Скоро….кончится лето. Это….	1626539702998	\N
311607742542381068	\N	\N	\N	Custom	Custom Status	f	If I continue like this I will die before I am 30, the doctors said	1626539723679	\N
411656316814098441	\N	\N	\N	Custom	Custom Status	f	snowfox 😳	1626557971100	\N
202407278618476545	\N	\N	\N	Custom	Custom Status	f	defekt aber nett	1626558045858	\N
223666520943886336	463097721130188830	513734690272968717	When They Ask If You Can Mow A Small Forest	Playing	YouTube	f	Copper Creek Cuts Lawn Care	1626558058355	\N
223666520943886336	463097721130188830	513734690272968717	When They Ask If You Can Mow A Small Forest	Playing	YouTube	f	Copper Creek Cuts Lawn Care	1626558096952	\N
223666520943886336	463097721130188830	513734690272968717	When They Ask If You Can Mow A Small Forest	Playing	YouTube	f	Copper Creek Cuts Lawn Care	1626558098751	\N
411656316814098441	\N	\N	\N	Custom	Custom Status	f	snowfox 😳	1626558130844	\N
223666520943886336	463097721130188830	513734690272968717	When They Ask If You Can Mow A Small Forest	Playing	YouTube	f	Copper Creek Cuts Lawn Care	1626558222408	\N
271659253486452736	\N	\N	\N	Custom	Custom Status	f	Whoa, I got two hands! Brujo, I need two beers!	1626558248195	\N
223666520943886336	463097721130188830	513734690272968717	When They Ask If You Can Mow A Small Forest	Playing	YouTube	f	Copper Creek Cuts Lawn Care	1626558342455	\N
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626558345678	\N
223666520943886336	463097721130188830	513734690272968717	When They Ask If You Can Mow A Small Forest	Playing	YouTube	f	Copper Creek Cuts Lawn Care	1626558417565	\N
223666520943886336	463097721130188830	513734690272968717	When They Ask If You Can Mow A Small Forest	Playing	YouTube	f	Copper Creek Cuts Lawn Care	1626558477571	\N
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626558496278	\N
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626558518324	\N
223666520943886336	463097721130188830	513734690272968717	When They Ask If You Can Mow A Small Forest	Playing	YouTube	f	Copper Creek Cuts Lawn Care	1626558537580	\N
261520809225355264	531450167799447552	531577494935961601	Main Menu	Playing	Insurgency: Sandstorm	t	\N	1626558616628	\N
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626558645300	\N
261520809225355264	531450167799447552	531577494935961601	In queue	Playing	Insurgency: Sandstorm	t	Survival	1626558652000	\N
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626558842931	\N
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626558864230	\N
223666520943886336	463097721130188830	513734690272968717	When They Ask If You Can Mow A Small Forest	Playing	YouTube	f	Copper Creek Cuts Lawn Care	1626558922806	\N
223666520943886336	463097721130188830	513734690272968717	When They Ask If You Can Mow A Small Forest	Playing	YouTube	f	Copper Creek Cuts Lawn Care	1626558967964	\N
223666520943886336	463097721130188830	513734690272968717	When They Ask If You Can Mow A Small Forest	Playing	YouTube	f	Copper Creek Cuts Lawn Care	1626559027970	\N
272411073842511873	\N	\N	\N	Custom	Custom Status	f	Deal with stuff be on	1626559050326	\N
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626559136306	\N
206955935229280256	\N	\N	\N	Playing	%help || GC: 108038 || UC: 83439 || VC: 3 || Version: 5.9.0	f	\N	1626539582060	\N
461265486655520788	\N	\N	\N	Playing	Oblivion Mobile	f	\N	1626539683333	\N
191594115907977225	\N	spotify:ab67616d0000b273b505667bcff9407f104d9320	The Wolf	Listening	Spotify	t	SIAMES	1626539712261	1626539899206
202407278618476545	\N	\N	\N	Custom	Custom Status	f	defekt aber nett	1626539744267	\N
411656316814098441	\N	\N	\N	Custom	Custom Status	f	snowfox 😳	1626557973969	\N
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626558016463	\N
202407278618476545	\N	spotify:ab67616d0000b273aeb9adc5196c8bc89d705821	Hausbrjótr - Skullcrusher	Listening	Spotify	t	Einar Selvik	1626558045544	1626558361424
223666520943886336	463097721130188830	513734690272968717	When They Ask If You Can Mow A Small Forest	Playing	YouTube	f	Copper Creek Cuts Lawn Care	1626558182353	\N
223666520943886336	463097721130188830	513734690272968717	When They Ask If You Can Mow A Small Forest	Playing	YouTube	f	Copper Creek Cuts Lawn Care	1626558217374	\N
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626558311580	\N
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626558315983	\N
223666520943886336	463097721130188830	513734690272968717	When They Ask If You Can Mow A Small Forest	Playing	YouTube	f	Copper Creek Cuts Lawn Care	1626558332400	\N
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626558339841	\N
206955935229280256	\N	\N	\N	Playing	%help || GC: 108051 || UC: 130281 || VC: 5 || Version: 5.9.0	f	\N	1626558387662	\N
223666520943886336	463097721130188830	513734690272968717	When They Ask If You Can Mow A Small Forest	Playing	YouTube	f	Copper Creek Cuts Lawn Care	1626558392478	\N
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626558412034	\N
261520809225355264	531450167799447552	531577494935961601	Playing Survival	Playing	Insurgency: Sandstorm	t	Outskirts Survival	1626558680000	\N
261520809225355264	531450167799447552	531577494935961601	Playing Survival	Playing	Insurgency: Sandstorm	t	Outskirts Survival	1626558687000	\N
223666520943886336	463097721130188830	513734690272968717	When They Ask If You Can Mow A Small Forest	Playing	YouTube	f	Copper Creek Cuts Lawn Care	1626558697731	\N
223666520943886336	463097721130188830	513734690272968717	When They Ask If You Can Mow A Small Forest	Playing	YouTube	f	Copper Creek Cuts Lawn Care	1626558722716	\N
281381884460662785	\N	\N	\N	Custom	Custom Status	f	Я….жду ответа, больше надежд нету. Скоро….кончится лето. Это….	1626558822963	\N
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626558894336	\N
272411073842511873	\N	\N	\N	Custom	Custom Status	f	Deal with stuff be on	1626558900787	\N
223666520943886336	463097721130188830	513734690272968717	When They Ask If You Can Mow A Small Forest	Playing	YouTube	f	Copper Creek Cuts Lawn Care	1626558907958	\N
371656565607890964	445956193924546560	446301881636225042	im MENÜ	Playing	Rainbow Six Siege	f	\N	1626539590880	\N
206955935229280256	\N	\N	\N	Playing	%help || GC: 108039 || UC: 83535 || VC: 4 || Version: 5.9.0	f	\N	1626539610629	\N
371656565607890964	445956193924546560	446301881636225042	Sucht nach „ENTDECKUNG“-Match	Playing	Rainbow Six Siege	f	\N	1626539624776	\N
371656565607890964	445956193924546560	446301881636225042	im MENÜ	Playing	Rainbow Six Siege	f	\N	1626539651500	\N
371656565607890964	445956193924546560	446301881636225042	Spielt ein „ENTDECKUNG“ - Runde 1/4	Playing	Rainbow Six Siege	f	\N	1626539655697	\N
202407278618476545	\N	spotify:ab67616d0000b2733e1fc2bcc91f5e3d777e411b	Rotten Blossom	Listening	Spotify	t	Frank Carter & The Rattlesnakes	1626539740807	1626539898619
202407278618476545	\N	\N	\N	Custom	Custom Status	f	defekt aber nett	1626539902059	\N
202407278618476545	\N	spotify:ab67616d0000b2735836e46b3ddabc65c8d80d16	Jungle	Listening	Spotify	t	Strange Bones	1626539898687	1626540079430
434794201075417101	\N	\N	\N	Custom	Custom Status	f	deer drip bottom text	1626539963705	\N
509017844537622532	478576776990425110	\N	Connected	Playing	Parsec	f	\N	1626539843000	\N
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626540056580	\N
371656565607890964	445956193924546560	446301881636225042	im MENÜ	Playing	Rainbow Six Siege	f	\N	1626540056592	\N
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626540060779	\N
371656565607890964	445956193924546560	446301881636225042	Sucht nach „OHNE RANG“-Match	Playing	Rainbow Six Siege	f	\N	1626540060794	\N
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626540079518	\N
371656565607890964	445956193924546560	446301881636225042	im MENÜ	Playing	Rainbow Six Siege	f	\N	1626540079529	\N
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626542086145	\N
371656565607890964	367827983903490050	373344233077211136	\N	Playing	osu!	f	Idle	1626542086175	\N
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626542097202	\N
371656565607890964	367827983903490050	373344233077211136	dj TAKA - quaver [Reform's Insane]	Playing	osu!	f	Clicking circles	1626542097213	\N
206955935229280256	\N	\N	\N	Playing	%help || GC: 108044 || UC: 89649 || VC: 4 || Version: 5.9.0	f	\N	1626542099351	\N
202407278618476545	\N	\N	\N	Custom	Custom Status	f	defekt aber nett	1626542154852	\N
202407278618476545	\N	spotify:ab67616d0000b273b6fe46beecf024a1253e82e4	Same Again	Listening	Spotify	t	Slaves	1626542151353	1626542375545
202407278618476545	\N	\N	\N	Custom	Custom Status	f	defekt aber nett	1626542158847	\N
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626542219261	\N
371656565607890964	367827983903490050	373344233077211136	\N	Playing	osu!	f	Idle	1626542219273	\N
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626542230219	\N
371656565607890964	367827983903490050	373344233077211136	beatMARIO - Night of Knights [iyasine's Lunatic]	Playing	osu!	f	Clicking circles	1626542230231	\N
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626542308245	\N
371656565607890964	367827983903490050	373344233077211136	\N	Playing	osu!	f	Idle	1626542308258	\N
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626542322282	\N
371656565607890964	367827983903490050	373344233077211136	Yuuzuki Tsubaki - midnight cookie [Lunatic]	Playing	osu!	f	Clicking circles	1626542322294	\N
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626542350231	\N
371656565607890964	367827983903490050	373344233077211136	\N	Playing	osu!	f	Idle	1626542350243	\N
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626542359345	\N
371656565607890964	367827983903490050	373344233077211136	TheFatRat ft. Laura Brehm - MAYDAY (Nightcore Mix) [Collab Insane]	Playing	osu!	f	Clicking circles	1626542359357	\N
424599087145549835	\N	\N	\N	Custom	Custom Status	f	Reliquit solum ab amicis.	1626542401840	\N
403571252402585601	\N	\N	\N	Custom	Custom Status	f	\N	1626542466865	\N
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626542467378	\N
371656565607890964	367827983903490050	373344233077211136	\N	Playing	osu!	f	Idle	1626542467390	\N
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626542475365	\N
371656565607890964	367827983903490050	373344233077211136	Yooh - LegenD. [EXHAUST]	Playing	osu!	f	Clicking circles	1626542475377	\N
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626542636443	\N
371656565607890964	367827983903490050	373344233077211136	\N	Playing	osu!	f	Idle	1626542636454	\N
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626542650467	\N
371656565607890964	367827983903490050	373344233077211136	THE ORAL CIGARETTES - Kyouran Hey Kids!! [Insane]	Playing	osu!	f	Clicking circles	1626542650479	\N
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626542752566	\N
371656565607890964	367827983903490050	373344233077211136	\N	Playing	osu!	f	Idle	1626542752607	\N
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626542756558	\N
371656565607890964	367827983903490050	373344233077211136	Altria Pendragon (Santa Alter) (CV : Ayako Kawasumi) - Jingle Bells [Merry Christmas]	Playing	osu!	f	Clicking circles	1626542756571	\N
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626542768538	\N
371656565607890964	367827983903490050	373344233077211136	\N	Playing	osu!	f	Idle	1626542768550	\N
202407278618476545	\N	\N	\N	Custom	Custom Status	f	defekt aber nett	1626542769354	\N
202407278618476545	\N	spotify:ab67616d0000b27320e2b7acdeffc65d97c92729	Grima	Listening	Spotify	t	Danheim	1626542765820	1626542962871
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626542773554	\N
371656565607890964	367827983903490050	373344233077211136	Andrea Boma Boccarusso - Iconic Metal Riff Compilation [Perennial]	Playing	osu!	f	Clicking circles	1626542773572	\N
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626542777545	\N
371656565607890964	367827983903490050	373344233077211136	\N	Playing	osu!	f	Idle	1626542777553	\N
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626542780516	\N
202407278618476545	\N	\N	\N	Custom	Custom Status	f	defekt aber nett	1626542826186	\N
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626542891618	\N
371656565607890964	367827983903490050	373344233077211136	Panda Eyes & Teminite - Highscore [Another]	Playing	osu!	f	Clicking circles	1626542896647	\N
371656565607890964	367827983903490050	373344233077211136	\N	Playing	osu!	f	Idle	1626542948667	\N
206955935229280256	\N	\N	\N	Playing	%help || GC: 108043 || UC: 92466 || VC: 4 || Version: 5.9.0	f	\N	1626542948916	\N
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626542950707	\N
202407278618476545	\N	spotify:ab67616d0000b2734a75c6554b828131eaeb8ee1	Berserkir	Listening	Spotify	t	Danheim	1626542962071	1626543197533
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626543010709	\N
371656565607890964	367827983903490050	373344233077211136	Demetori - Hartmann no Youkai Shoujo ~ Todestrieb und Lebenstrieb [Lunatic]	Playing	osu!	f	Clicking circles	1626543013692	\N
424599087145549835	\N	\N	\N	Custom	Custom Status	f	Reliquit solum ab amicis.	1626543046884	\N
424599087145549835	\N	\N	\N	Custom	Custom Status	f	Reliquit solum ab amicis.	1626543048397	\N
271659253486452736	\N	\N	\N	Custom	Custom Status	f	Whoa, I got two hands! Brujo, I need two beers!	1626543061294	\N
371656565607890964	367827983903490050	373344233077211136	\N	Playing	osu!	f	Idle	1626543064681	\N
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626543071842	\N
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626543092833	\N
371656565607890964	367827983903490050	373344233077211136	LEAF XCEED Music Division - Fur Elise [Champion]	Playing	osu!	f	Clicking circles	1626543104725	\N
424599087145549835	\N	\N	\N	Custom	Custom Status	f	Reliquit solum ab amicis.	1626543167073	\N
206955935229280256	\N	\N	\N	Playing	%help || GC: 108042 || UC: 93238 || VC: 4 || Version: 5.9.0	f	\N	1626543181410	\N
202407278618476545	\N	\N	\N	Custom	Custom Status	f	defekt aber nett	1626543200968	\N
371656565607890964	367827983903490050	373344233077211136	\N	Playing	osu!	f	Idle	1626543210810	\N
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626543221857	\N
343815575065198604	356875057940791296	\N	\N	Playing	Counter-Strike: Global Offensive	f	\N	1626543296744	\N
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626543329889	\N
371656565607890964	367827983903490050	373344233077211136	XX:me - Darling [Insane]	Playing	osu!	f	Clicking circles	1626543333894	\N
281381884460662785	\N	\N	\N	Custom	Custom Status	f	Я….жду ответа, больше надежд нету. Скоро….кончится лето. Это….	1626543379762	\N
281381884460662785	356875057940791296	\N	\N	Playing	Counter-Strike: Global Offensive	f	\N	1626543384677	\N
371656565607890964	367827983903490050	373344233077211136	\N	Playing	osu!	f	Idle	1626543399025	\N
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626543406996	\N
202407278618476545	\N	spotify:ab67616d0000b2733c0d29b67102e459b3fecfd8	Hefna	Listening	Spotify	t	Danheim	1626543422086	1626543713672
281381884460662785	\N	\N	\N	Custom	Custom Status	f	Я….жду ответа, больше надежд нету. Скоро….кончится лето. Это….	1626543481855	\N
371656565607890964	367827983903490050	373344233077211136	\N	Playing	osu!	f	Idle	1626543537056	\N
202407278618476545	\N	\N	\N	Custom	Custom Status	f	defekt aber nett	1626543548307	\N
371656565607890964	367827983903490050	373344233077211136	DM Ashura - Classical Insanity [Presto]	Playing	osu!	f	Clicking circles	1626543550071	\N
206955935229280256	\N	\N	\N	Playing	%help || GC: 108043 || UC: 94423 || VC: 5 || Version: 5.9.0	f	\N	1626543560492	\N
459713629441490945	\N	\N	\N	Custom	Custom Status	f	1:1	1626543561415	\N
371656565607890964	367827983903490050	373344233077211136	\N	Playing	osu!	f	Idle	1626543583042	\N
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626543590086	\N
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626543641022	\N
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626543647037	\N
371656565607890964	367827983903490050	373344233077211136	\N	Playing	osu!	f	Idle	1626543650122	\N
202407278618476545	\N	\N	\N	Custom	Custom Status	f	defekt aber nett	1626543662795	\N
202407278618476545	\N	spotify:ab67616d0000b2733c0d29b67102e459b3fecfd8	Hefna	Listening	Spotify	t	Danheim	1626543422432	1626543714018
202407278618476545	\N	\N	\N	Custom	Custom Status	f	defekt aber nett	1626543724743	\N
202407278618476545	\N	\N	\N	Custom	Custom Status	f	defekt aber nett	1626543773690	\N
371656565607890964	367827983903490050	373344233077211136	grandson - Blood // Water [Insane]	Playing	osu!	f	Clicking circles	1626543775236	\N
371656565607890964	367827983903490050	373344233077211136	\N	Playing	osu!	f	Idle	1626543814251	\N
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626543818233	\N
202407278618476545	\N	\N	\N	Custom	Custom Status	f	defekt aber nett	1626543820794	\N
371656565607890964	367827983903490050	373344233077211136	\N	Playing	osu!	f	Idle	1626543836267	\N
371656565607890964	367827983903490050	373344233077211136	Freddie Dredd - Evil Fantasy [MadX's Insane]	Playing	osu!	f	Clicking circles	1626543845279	\N
202407278618476545	\N	\N	\N	Custom	Custom Status	f	defekt aber nett	1626543852946	\N
371656565607890964	367827983903490050	373344233077211136	\N	Playing	osu!	f	Idle	1626543876307	\N
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626543889197	\N
202407278618476545	\N	\N	\N	Custom	Custom Status	f	defekt aber nett	1626543924832	\N
371656565607890964	367827983903490050	373344233077211136	\N	Playing	osu!	f	Idle	1626543994372	\N
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626544007267	\N
202407278618476545	\N	\N	\N	Custom	Custom Status	f	defekt aber nett	1626544131785	\N
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626544158338	\N
371656565607890964	367827983903490050	373344233077211136	\N	Playing	osu!	f	Idle	1626544178385	\N
371656565607890964	367827983903490050	373344233077211136	\N	Playing	osu!	f	AFK	1626544179448	\N
371656565607890964	367827983903490050	373344233077211136	EZFG - Hurting for a Very Hurtful Pain [Insane]	Playing	osu!	f	Clicking circles	1626544183403	\N
371656565607890964	367827983903490050	373344233077211136	Andrea Boma Boccarusso - Iconic Metal Riff Compilation [Perennial]	Playing	osu!	f	Clicking circles	1626542780527	\N
202407278618476545	\N	spotify:ab67616d0000b27320e2b7acdeffc65d97c92729	Grima	Listening	Spotify	t	Danheim	1626542766119	1626542963170
459713629441490945	\N	\N	\N	Custom	Custom Status	f	1:1	1626542880764	\N
371656565607890964	367827983903490050	373344233077211136	\N	Playing	osu!	f	Idle	1626542891630	\N
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626542896636	\N
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626542948655	\N
371656565607890964	367827983903490050	373344233077211136	Ho-Ong-I - Hide and Seek [Insane Collab]	Playing	osu!	f	Clicking circles	1626542950718	\N
202407278618476545	\N	\N	\N	Custom	Custom Status	f	defekt aber nett	1626542965653	\N
371656565607890964	367827983903490050	373344233077211136	\N	Playing	osu!	f	Idle	1626543010721	\N
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626543013681	\N
271659253486452736	363426802640617482	\N	\N	Playing	Total War: WARHAMMER II	f	\N	1626535206519	\N
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626543064674	\N
371656565607890964	367827983903490050	373344233077211136	LEAF XCEED Music Division - Fur Elisa [Insane]	Playing	osu!	f	Clicking circles	1626543071853	\N
371656565607890964	367827983903490050	373344233077211136	\N	Playing	osu!	f	Idle	1626543092845	\N
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626543104713	\N
202407278618476545	\N	spotify:ab67616d0000b2738bbf4969da60102bfbf8b9fc	Ivar's Revenge (Danish Viking Music)	Listening	Spotify	t	Danheim	1626543197461	1626543422021
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626543210798	\N
371656565607890964	367827983903490050	373344233077211136	UNDEAD CORPORATION - Everything will freeze [Insane]	Playing	osu!	f	Clicking circles	1626543221872	\N
371656565607890964	367827983903490050	373344233077211136	\N	Playing	osu!	f	Idle	1626543329900	\N
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626543333882	\N
281381884460662785	\N	\N	\N	Playing	Netflix	f	\N	1626543379635	\N
281381884460662785	\N	\N	\N	Custom	Custom Status	f	Я….жду ответа, больше надежд нету. Скоро….кончится лето. Это….	1626543384775	\N
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626543399013	\N
371656565607890964	367827983903490050	373344233077211136	DM Ashura - Classical Insanity [Presto]	Playing	osu!	f	Clicking circles	1626543407008	\N
202407278618476545	\N	\N	\N	Custom	Custom Status	f	defekt aber nett	1626543425633	\N
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626543537044	\N
202407278618476545	\N	spotify:ab67616d0000b2733c0d29b67102e459b3fecfd8	Hefna	Listening	Spotify	t	Danheim	1626543422490	1626543714076
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626543550060	\N
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626543583021	\N
371656565607890964	367827983903490050	373344233077211136	Cranky - Chandelier - King [Hard]	Playing	osu!	f	Clicking circles	1626543590098	\N
371656565607890964	367827983903490050	373344233077211136	\N	Playing	osu!	f	Idle	1626543641033	\N
371656565607890964	367827983903490050	373344233077211136	Hiroyuki Sawano feat. Mika Kobayashi - Bios [Insane]	Playing	osu!	f	Clicking circles	1626543647049	\N
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626543650110	\N
202407278618476545	\N	spotify:ab67616d0000b2733c0d29b67102e459b3fecfd8	Hefna	Listening	Spotify	t	Danheim	1626543422485	1626543714071
202407278618476545	\N	\N	\N	Custom	Custom Status	f	defekt aber nett	1626543709464	\N
202407278618476545	\N	spotify:ab67616d0000b273e6bd10b0b76e143e001e53f7	Vindöld	Listening	Spotify	t	Danheim	1626543721173	1626543928774
281381884460662785	\N	\N	\N	Custom	Custom Status	f	Я….жду ответа, больше надежд нету. Скоро….кончится лето. Это….	1626543727819	\N
202407278618476545	\N	spotify:ab67616d0000b273e6bd10b0b76e143e001e53f7	Vindöld	Listening	Spotify	t	Danheim	1626543714528	1626543922129
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626543775225	\N
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626543814240	\N
371656565607890964	367827983903490050	373344233077211136	Kitazawa Kyouhei feat. Hatsune Miku - ONIRIC [HOLLOW INSANE]	Playing	osu!	f	Clicking circles	1626543818244	\N
202407278618476545	\N	spotify:ab67616d0000b273e6bd10b0b76e143e001e53f7	Vindöld	Listening	Spotify	t	Danheim	1626543714515	1626543922116
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626543836255	\N
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626543845267	\N
202407278618476545	\N	spotify:ab67616d0000b273e6bd10b0b76e143e001e53f7	Vindöld	Listening	Spotify	t	Danheim	1626543714577	1626543922178
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626543876295	\N
371656565607890964	367827983903490050	373344233077211136	C-Show - On the FM [Ayyri's Hyper]	Playing	osu!	f	Clicking circles	1626543889209	\N
202407278618476545	\N	spotify:ab67616d0000b273e6bd10b0b76e143e001e53f7	Tyrfing	Listening	Spotify	t	Danheim	1626543921255	1626544128313
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626543994360	\N
371656565607890964	367827983903490050	373344233077211136	\N	Playing	osu!	f	Idle	1626544007278	\N
206955935229280256	\N	\N	\N	Playing	%help || GC: 108043 || UC: 93759 || VC: 5 || Version: 5.9.0	f	\N	1626544049964	\N
202407278618476545	\N	spotify:ab67616d0000b273e6bd10b0b76e143e001e53f7	Tyr	Listening	Spotify	t	Danheim	1626544128239	1626544348254
371656565607890964	367827983903490050	373344233077211136	\N	Playing	osu!	f	AFK	1626544158349	\N
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626544178373	\N
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626544179437	\N
371656565607890964	367827983903490050	373344233077211136	\N	Playing	osu!	f	Idle	1626544243510	\N
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626544183391	\N
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626544243498	\N
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626544262447	\N
206955935229280256	\N	\N	\N	Playing	%help || GC: 108043 || UC: 93760 || VC: 4 || Version: 5.9.0	f	\N	1626544276063	\N
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626544480554	\N
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626544484548	\N
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626544490591	\N
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626557996290	\N
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626557999783	\N
223666520943886336	382624125287399424	848636446137909298	FiveM King of the Hill | PVP | Server 1 | Public Beta 0.6 | KOTH	Playing	FiveM	f	Connecting...	1626558056000	\N
223666520943886336	463097721130188830	513734690272968717	When They Ask If You Can Mow A Small Forest	Playing	YouTube	f	Copper Creek Cuts Lawn Care	1626558262430	\N
223666520943886336	463097721130188830	513734690272968717	When They Ask If You Can Mow A Small Forest	Playing	YouTube	f	Copper Creek Cuts Lawn Care	1626558327454	\N
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626558333392	\N
223666520943886336	463097721130188830	513734690272968717	When They Ask If You Can Mow A Small Forest	Playing	YouTube	f	Copper Creek Cuts Lawn Care	1626558377529	\N
206955935229280256	\N	\N	\N	Playing	%help || GC: 108050 || UC: 130294 || VC: 5 || Version: 5.9.0	f	\N	1626558391758	\N
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626558441657	\N
223666520943886336	463097721130188830	513734690272968717	When They Ask If You Can Mow A Small Forest	Playing	YouTube	f	Copper Creek Cuts Lawn Care	1626558487608	\N
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626558496725	\N
223666520943886336	463097721130188830	513734690272968717	When They Ask If You Can Mow A Small Forest	Playing	YouTube	f	Copper Creek Cuts Lawn Care	1626558532663	\N
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626558624820	\N
261520809225355264	531450167799447552	531577494935961601	Playing a match	Playing	Insurgency: Sandstorm	t	\N	1626558660000	\N
223666520943886336	463097721130188830	513734690272968717	When They Ask If You Can Mow A Small Forest	Playing	YouTube	f	Copper Creek Cuts Lawn Care	1626558682884	\N
223666520943886336	463097721130188830	513734690272968717	When They Ask If You Can Mow A Small Forest	Playing	YouTube	f	Copper Creek Cuts Lawn Care	1626558762755	\N
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626558844979	\N
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626558995711	\N
223666520943886336	463097721130188830	513734690272968717	When They Ask If You Can Mow A Small Forest	Playing	YouTube	f	Copper Creek Cuts Lawn Care	1626559043029	\N
281381884460662785	\N	\N	\N	Custom	Custom Status	f	Я….жду ответа, больше надежд нету. Скоро….кончится лето. Это….	1626559126477	\N
371656565607890964	367827983903490050	373344233077211136	Foreground Eclipse - Truths, Ironies, The Secret Lyrics [Lunatic]	Playing	osu!	f	Clicking circles	1626544262459	\N
202407278618476545	\N	\N	\N	Custom	Custom Status	f	defekt aber nett	1626544351816	\N
206955935229280256	\N	\N	\N	Playing	%help || GC: 108044 || UC: 94303 || VC: 4 || Version: 5.9.0	f	\N	1626544426693	\N
371656565607890964	367827983903490050	373344233077211136	\N	Playing	osu!	f	Idle	1626544480566	\N
371656565607890964	367827983903490050	373344233077211136	\N	Playing	osu!	f	Idle	1626544484559	\N
371656565607890964	367827983903490050	373344233077211136	Children of Bodom - You're Better Off Dead [Gabdu09's Hard]	Playing	osu!	f	Clicking circles	1626544490603	\N
223666520943886336	463097721130188830	513734690272968717	When They Ask If You Can Mow A Small Forest	Playing	YouTube	f	Copper Creek Cuts Lawn Care	1626558097102	\N
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626558343630	\N
223666520943886336	463097721130188830	513734690272968717	When They Ask If You Can Mow A Small Forest	Playing	YouTube	f	Copper Creek Cuts Lawn Care	1626558462621	\N
223666520943886336	463097721130188830	513734690272968717	When They Ask If You Can Mow A Small Forest	Playing	YouTube	f	Copper Creek Cuts Lawn Care	1626558592669	\N
223666520943886336	463097721130188830	513734690272968717	When They Ask If You Can Mow A Small Forest	Playing	YouTube	f	Copper Creek Cuts Lawn Care	1626558637726	\N
206955935229280256	\N	\N	\N	Playing	%help || GC: 108051 || UC: 130969 || VC: 5 || Version: 5.9.0	f	\N	1626558688615	\N
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626558863411	\N
272411073842511873	\N	\N	\N	Custom	Custom Status	f	Deal with stuff be on	1626559050291	\N
223666520943886336	463097721130188830	513734690272968717	When They Ask If You Can Mow A Small Forest	Playing	YouTube	f	Copper Creek Cuts Lawn Care	1626559053058	\N
206955935229280256	\N	\N	\N	Playing	%help || GC: 108050 || UC: 131909 || VC: 4 || Version: 5.9.0	f	\N	1626559089612	\N
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626559115837	\N
223666520943886336	463097721130188830	513734690272968717	When They Ask If You Can Mow A Small Forest	Playing	YouTube	f	Copper Creek Cuts Lawn Care	1626559128014	\N
281381884460662785	\N	\N	\N	Custom	Custom Status	f	Я….жду ответа, больше надежд нету. Скоро….кончится лето. Это….	1626544277394	\N
276431762815451138	547786685795139585	627852580411932672	duden-schaber	Playing	CLion	t	\N	1626544281297	\N
202407278618476545	\N	spotify:ab67616d0000b273e6bd10b0b76e143e001e53f7	Temple of Odin	Listening	Spotify	t	Danheim	1626544348229	1626544551168
202407278618476545	\N	\N	\N	Custom	Custom Status	f	defekt aber nett	1626544554692	\N
202407278618476545	\N	spotify:ab67616d0000b273e6bd10b0b76e143e001e53f7	Munarvagr	Listening	Spotify	t	Danheim	1626544551108	1626544747819
206955935229280256	\N	\N	\N	Playing	%help || GC: 108043 || UC: 95638 || VC: 4 || Version: 5.9.0	f	\N	1626544657093	\N
459713629441490945	\N	\N	\N	Custom	Custom Status	f	1:1	1626544670506	\N
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626544747716	\N
371656565607890964	367827983903490050	373344233077211136	\N	Playing	osu!	f	Idle	1626544747729	\N
202407278618476545	\N	\N	\N	Custom	Custom Status	f	defekt aber nett	1626544751505	\N
202407278618476545	\N	spotify:ab67616d0000b273e6bd10b0b76e143e001e53f7	Jörmungandr	Listening	Spotify	t	Danheim	1626544747868	1626544932873
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626544770755	\N
371656565607890964	367827983903490050	373344233077211136	J.Fla - Believer [Insane]	Playing	osu!	f	Clicking circles	1626544770766	\N
459713629441490945	\N	\N	\N	Custom	Custom Status	f	1:1	1626544875715	\N
459713629441490945	631914894446297148	\N	\N	Playing	Call of Duty®: Modern Warfare®	f	\N	1626544875925	\N
459713629441490945	\N	\N	\N	Custom	Custom Status	f	1:1	1626544923536	\N
459713629441490945	631914894446297148	642443832318754826	Im Hauptmenü	Playing	Call of Duty®: Modern Warfare®	t	\N	1626544923000	\N
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626544923740	\N
371656565607890964	367827983903490050	373344233077211136	\N	Playing	osu!	f	Idle	1626544923748	\N
202407278618476545	\N	\N	\N	Custom	Custom Status	f	defekt aber nett	1626544936411	\N
202407278618476545	\N	spotify:ab67616d0000b273e6bd10b0b76e143e001e53f7	Floki's Last Journey	Listening	Spotify	t	Danheim	1626544932862	1626545183058
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626544946780	\N
371656565607890964	367827983903490050	373344233077211136	J.Fla - Believer [Insane]	Playing	osu!	f	Clicking circles	1626544946793	\N
206955935229280256	\N	\N	\N	Playing	%help || GC: 108042 || UC: 96686 || VC: 4 || Version: 5.9.0	f	\N	1626544950879	\N
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626545046825	\N
371656565607890964	367827983903490050	373344233077211136	J.Fla - Believer [Insane]	Playing	osu!	f	Clicking circles	1626545046836	\N
459713629441490945	\N	\N	\N	Custom	Custom Status	f	1:1	1626545060956	\N
459713629441490945	\N	\N	\N	Custom	Custom Status	f	1:1	1626545061264	\N
459713629441490945	\N	\N	\N	Custom	Custom Status	f	1:1	1626545076214	\N
459713629441490945	631914894446297148	\N	\N	Playing	Call of Duty®: Modern Warfare®	f	\N	1626545076463	\N
272411073842511873	\N	\N	\N	Custom	Custom Status	f	Deal with stuff be on	1626545093622	\N
272411073842511873	\N	\N	\N	Custom	Custom Status	f	Deal with stuff be on	1626545093930	\N
459713629441490945	\N	\N	\N	Custom	Custom Status	f	1:1	1626545132737	\N
459713629441490945	631914894446297148	642443832318754826	Im Hauptmenü	Playing	Call of Duty®: Modern Warfare®	t	\N	1626545132000	\N
202407278618476545	\N	\N	\N	Custom	Custom Status	f	defekt aber nett	1626545139700	\N
459713629441490945	\N	\N	\N	Custom	Custom Status	f	1:1	1626545151977	\N
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626545220909	\N
371656565607890964	367827983903490050	373344233077211136	\N	Playing	osu!	f	Idle	1626545220920	\N
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626545236981	\N
371656565607890964	367827983903490050	373344233077211136	J.Fla - Believer [Insane]	Playing	osu!	f	Clicking circles	1626545236993	\N
206955935229280256	\N	\N	\N	Playing	%help || GC: 108041 || UC: 97765 || VC: 4 || Version: 5.9.0	f	\N	1626545279272	\N
206955935229280256	\N	\N	\N	Playing	%help || GC: 108042 || UC: 97984 || VC: 4 || Version: 5.9.0	f	\N	1626545353614	\N
271659253486452736	\N	\N	\N	Custom	Custom Status	f	Whoa, I got two hands! Brujo, I need two beers!	1626545413928	\N
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626545416181	\N
371656565607890964	367827983903490050	373344233077211136	\N	Playing	osu!	f	Idle	1626545416194	\N
206955935229280256	\N	\N	\N	Playing	%help || GC: 108041 || UC: 98192 || VC: 5 || Version: 5.9.0	f	\N	1626545425807	\N
152104114753372160	357607133254254632	\N	\N	Playing	Dead by Daylight	f	\N	1626545432293	\N
206955935229280256	\N	\N	\N	Playing	%help || GC: 108042 || UC: 98232 || VC: 5 || Version: 5.9.0	f	\N	1626545438094	\N
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626545443010	\N
371656565607890964	367827983903490050	373344233077211136	Banya - Beethoven Virus [Insane]	Playing	osu!	f	Clicking circles	1626545443021	\N
281381884460662785	\N	\N	\N	Custom	Custom Status	f	Я….жду ответа, больше надежд нету. Скоро….кончится лето. Это….	1626545476596	\N
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626545505999	\N
371656565607890964	367827983903490050	373344233077211136	\N	Playing	osu!	f	Idle	1626545506011	\N
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626545509078	\N
371656565607890964	367827983903490050	373344233077211136	Knife Party & Tom Morello - Battle Sirens (RIOT Remix) [Insane]	Playing	osu!	f	Clicking circles	1626545509090	\N
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626545566094	\N
371656565607890964	367827983903490050	373344233077211136	\N	Playing	osu!	f	Idle	1626545566106	\N
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626545568042	\N
371656565607890964	367827983903490050	373344233077211136	S3RL - Bass Slut (Original Mix) [Tari's Insane]	Playing	osu!	f	Clicking circles	1626545568050	\N
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626545604060	\N
371656565607890964	367827983903490050	373344233077211136	\N	Playing	osu!	f	Idle	1626545604072	\N
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626545610126	\N
371656565607890964	367827983903490050	373344233077211136	Unlucky Morpheus - Angreifer [Inanity Wrath]	Playing	osu!	f	Clicking circles	1626545610138	\N
459713629441490945	\N	\N	\N	Custom	Custom Status	f	1:1	1626545622210	\N
459713629441490945	\N	\N	\N	Custom	Custom Status	f	1:1	1626545628148	\N
371656565607890964	367827983903490050	373344233077211136	\N	Playing	osu!	f	Idle	1626545723188	\N
371656565607890964	367827983903490050	373344233077211136	among drip - among drip [insane drip]	Playing	osu!	f	Clicking circles	1626545726158	\N
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626545780314	\N
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626545782260	\N
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626545793217	\N
223666520943886336	463097721130188830	513734690272968717	When They Ask If You Can Mow A Small Forest	Playing	YouTube	f	Copper Creek Cuts Lawn Care	1626558232426	\N
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626558318543	\N
223666520943886336	463097721130188830	513734690272968717	When They Ask If You Can Mow A Small Forest	Playing	YouTube	f	Copper Creek Cuts Lawn Care	1626558347518	\N
223666520943886336	463097721130188830	513734690272968717	When They Ask If You Can Mow A Small Forest	Playing	YouTube	f	Copper Creek Cuts Lawn Care	1626558407530	\N
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626558522113	\N
223666520943886336	463097721130188830	513734690272968717	When They Ask If You Can Mow A Small Forest	Playing	YouTube	f	Copper Creek Cuts Lawn Care	1626558577616	\N
261520809225355264	484892481452769290	\N	\N	Playing	Insurgency: Sandstorm	f	\N	1626558594780	\N
261520809225355264	531450167799447552	531577494935961601	In queue	Playing	Insurgency: Sandstorm	t	Survival	1626558643000	\N
261520809225355264	531450167799447552	531577494935961601	Main Menu	Playing	Insurgency: Sandstorm	t	\N	1626558648167	\N
223666520943886336	463097721130188830	513734690272968717	When They Ask If You Can Mow A Small Forest	Playing	YouTube	f	Copper Creek Cuts Lawn Care	1626558842934	\N
272411073842511873	\N	\N	\N	Custom	Custom Status	f	Deal with stuff be on	1626558900833	\N
223666520943886336	463097721130188830	513734690272968717	When They Ask If You Can Mow A Small Forest	Playing	YouTube	f	Copper Creek Cuts Lawn Care	1626559068009	\N
223666520943886336	463097721130188830	513734690272968717	When They Ask If You Can Mow A Small Forest	Playing	YouTube	f	Copper Creek Cuts Lawn Care	1626559098114	\N
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626559116451	\N
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626545704231	\N
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626545707201	\N
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626545758195	\N
371656565607890964	367827983903490050	373344233077211136	GTA feat. Sam Bruno - Red Lips (Mendus Remix) [Light Insane]	Playing	osu!	f	Clicking circles	1626545780325	\N
371656565607890964	367827983903490050	373344233077211136	\N	Playing	osu!	f	Idle	1626545782274	\N
371656565607890964	367827983903490050	373344233077211136	GTA feat. Sam Bruno - Red Lips (Mendus Remix) [Light Insane]	Playing	osu!	f	Clicking circles	1626545793229	\N
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626545834286	\N
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626545839297	\N
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626545861313	\N
371656565607890964	367827983903490050	\N	\N	Playing	osu!	f	\N	1626541694711	\N
423162525350363136	\N	\N	\N	Playing	Transport Fever 2	f	\N	1626546087203	\N
311607742542381068	\N	\N	\N	Custom	Custom Status	f	If I continue like this I will die before I am 30, the doctors said	1626546197286	\N
311607742542381068	\N	\N	\N	Custom	Custom Status	f	If I continue like this I will die before I am 30, the doctors said	1626546199989	\N
403571252402585601	\N	\N	\N	Custom	Custom Status	f	\N	1626546241216	\N
371656565607890964	367827983903490050	373344233077211136	\N	Playing	osu!	f	Idle	1626545704243	\N
371656565607890964	367827983903490050	373344233077211136	Leonz - Among Us Trap Remix [among drip]	Playing	osu!	f	Clicking circles	1626545707212	\N
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626545723175	\N
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626545726146	\N
261520809225355264	427196986064764928	427223277530906624	1.12.2 with 96 Mods	Playing	Minecraft	f	Starting Minecraft	1626545754000	\N
371656565607890964	367827983903490050	373344233077211136	\N	Playing	osu!	f	Idle	1626545758207	\N
371656565607890964	367827983903490050	373344233077211136	\N	Playing	osu!	f	Idle	1626545834298	\N
371656565607890964	367827983903490050	373344233077211136	dj TAKA - quaver [Yuri-'s Expert]	Playing	osu!	f	Clicking circles	1626545839304	\N
371656565607890964	367827983903490050	373344233077211136	\N	Playing	osu!	f	Idle	1626545861325	\N
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626545870119	\N
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626545875341	\N
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626545940262	\N
371656565607890964	535371564850479134	\N	\N	Playing	Sea of Thieves	f	\N	1626545940507	\N
403571252402585601	\N	\N	\N	Custom	Custom Status	f	\N	1626545947226	\N
206955935229280256	\N	\N	\N	Playing	%help || GC: 108043 || UC: 100795 || VC: 5 || Version: 5.9.0	f	\N	1626546322418	\N
424599087145549835	\N	\N	\N	Custom	Custom Status	f	Reliquit solum ab amicis.	1626546357345	\N
424599087145549835	\N	\N	\N	Custom	Custom Status	f	Reliquit solum ab amicis.	1626546359796	\N
202407278618476545	\N	\N	\N	Custom	Custom Status	f	defekt aber nett	1626546378740	\N
202407278618476545	\N	spotify:ab67616d0000b273e6bd10b0b76e143e001e53f7	Floki's Last Journey	Listening	Spotify	t	Danheim	1626546175592	1626546425788
202407278618476545	\N	\N	\N	Custom	Custom Status	f	defekt aber nett	1626546384678	\N
202407278618476545	\N	\N	\N	Playing	Tom Clancy's Rainbow Six Siege	f	\N	1626546384763	\N
202407278618476545	\N	\N	\N	Custom	Custom Status	f	defekt aber nett	1626546413583	\N
202407278618476545	\N	spotify:ab67616d0000b27310a4a67d20e263ae5662bf37	U-Gra	Listening	Spotify	t	Nytt Land	1626546413739	1626546774315
202407278618476545	\N	\N	\N	Custom	Custom Status	f	defekt aber nett	1626546418981	\N
202407278618476545	\N	\N	\N	Custom	Custom Status	f	defekt aber nett	1626546423761	\N
202407278618476545	\N	\N	\N	Custom	Custom Status	f	defekt aber nett	1626546437721	\N
202407278618476545	445956193924546560	446301881636225042	in MENU	Playing	Rainbow Six Siege	f	\N	1626546437732	\N
206955935229280256	\N	\N	\N	Playing	%help || GC: 108042 || UC: 101261 || VC: 5 || Version: 5.9.0	f	\N	1626546478885	\N
459713629441490945	\N	\N	\N	Custom	Custom Status	f	1:1	1626546485130	\N
459713629441490945	\N	\N	\N	Custom	Custom Status	f	1:1	1626546486848	\N
202407278618476545	\N	\N	\N	Custom	Custom Status	f	defekt aber nett	1626546487997	\N
202407278618476545	445956193924546560	446301881636225042	Looking for QUICK MATCH match	Playing	Rainbow Six Siege	f	\N	1626546488008	\N
202407278618476545	\N	\N	\N	Custom	Custom Status	f	defekt aber nett	1626546495683	\N
202407278618476545	445956193924546560	446301881636225042	in MENU	Playing	Rainbow Six Siege	f	\N	1626546495694	\N
202407278618476545	\N	\N	\N	Custom	Custom Status	f	defekt aber nett	1626546499774	\N
202407278618476545	445956193924546560	446301881636225042	in MENU	Playing	Rainbow Six Siege	f	\N	1626546499782	\N
459713629441490945	\N	\N	\N	Custom	Custom Status	f	1:1	1626546511906	\N
459713629441490945	631914894446297148	\N	\N	Playing	Call of Duty®: Modern Warfare®	f	\N	1626546512192	\N
459713629441490945	\N	\N	\N	Custom	Custom Status	f	1:1	1626546540120	\N
459713629441490945	631914894446297148	642443832318754826	Im Hauptmenü	Playing	Call of Duty®: Modern Warfare®	t	\N	1626546540000	\N
424599087145549835	\N	\N	\N	Custom	Custom Status	f	Reliquit solum ab amicis.	1626546559781	\N
459713629441490945	\N	\N	\N	Custom	Custom Status	f	1:1	1626546560019	\N
459713629441490945	\N	\N	\N	Custom	Custom Status	f	1:1	1626546661154	\N
206955935229280256	\N	\N	\N	Playing	%help || GC: 108043 || UC: 109716 || VC: 5 || Version: 5.9.0	f	\N	1626546699508	\N
459713629441490945	\N	\N	\N	Custom	Custom Status	f	1:1	1626546715021	\N
206955935229280256	\N	\N	\N	Playing	%help || GC: 108042 || UC: 109845 || VC: 5 || Version: 5.9.0	f	\N	1626546734065	\N
311607742542381068	\N	\N	\N	Custom	Custom Status	f	If I continue like this I will die before I am 30, the doctors said	1626546770724	\N
202407278618476545	\N	\N	\N	Custom	Custom Status	f	defekt aber nett	1626546774519	\N
202407278618476545	445956193924546560	446301881636225042	QUICK MATCH match - Round 1 / 4	Playing	Rainbow Six Siege	f	\N	1626546774530	\N
202407278618476545	\N	spotify:ab67616d0000b2736cee2127503614808992dbc0	Hemkomst	Listening	Spotify	t	Forndom	1626546774556	1626547114689
403571252402585601	\N	\N	\N	Custom	Custom Status	f	\N	1626546847319	\N
461265486655520788	\N	\N	\N	Playing	Skyrim	f	\N	1626546881316	\N
461265486655520788	\N	\N	\N	Playing	Skyrim	f	\N	1626546883262	\N
311607742542381068	\N	\N	\N	Custom	Custom Status	f	If I continue like this I will die before I am 30, the doctors said	1626546968460	\N
311607742542381068	\N	\N	\N	Custom	Custom Status	f	If I continue like this I will die before I am 30, the doctors said	1626546971940	\N
325704347767799808	612299892764966923	612299971852632083	Steam Store	Playing	Steam	f	\N	1626547064305	\N
202407278618476545	\N	\N	\N	Custom	Custom Status	f	defekt aber nett	1626547114538	\N
202407278618476545	445956193924546560	446301881636225042	QUICK MATCH match - Round 1 / 4	Playing	Rainbow Six Siege	f	\N	1626547114550	\N
202407278618476545	\N	spotify:ab67616d0000b27310b6f56b0f52382f2d159e93	In Maidjan	Listening	Spotify	t	Heilung	1626547114701	1626547873061
459713629441490945	\N	\N	\N	Custom	Custom Status	f	1:1	1626547244221	\N
202407278618476545	\N	\N	\N	Custom	Custom Status	f	defekt aber nett	1626547427252	\N
202407278618476545	445956193924546560	446301881636225042	in MENU	Playing	Rainbow Six Siege	f	\N	1626547427263	\N
206955935229280256	\N	\N	\N	Playing	%help || GC: 108043 || UC: 111851 || VC: 6 || Version: 5.9.0	f	\N	1626547430589	\N
206955935229280256	\N	\N	\N	Playing	%help || GC: 108042 || UC: 111985 || VC: 6 || Version: 5.9.0	f	\N	1626547481480	\N
206955935229280256	\N	\N	\N	Playing	%help || GC: 108043 || UC: 112203 || VC: 6 || Version: 5.9.0	f	\N	1626547564321	\N
202407278618476545	\N	\N	\N	Custom	Custom Status	f	defekt aber nett	1626547621870	\N
202407278618476545	445956193924546560	446301881636225042	Looking for QUICK MATCH match	Playing	Rainbow Six Siege	f	\N	1626547621882	\N
202407278618476545	\N	\N	\N	Custom	Custom Status	f	defekt aber nett	1626547639688	\N
202407278618476545	445956193924546560	446301881636225042	in MENU	Playing	Rainbow Six Siege	f	\N	1626547639717	\N
202407278618476545	\N	\N	\N	Custom	Custom Status	f	defekt aber nett	1626547643581	\N
202407278618476545	445956193924546560	446301881636225042	Looking for QUICK MATCH match	Playing	Rainbow Six Siege	f	\N	1626547643593	\N
202407278618476545	\N	\N	\N	Custom	Custom Status	f	defekt aber nett	1626547643598	\N
202407278618476545	445956193924546560	446301881636225042	in MENU	Playing	Rainbow Six Siege	f	\N	1626547643603	\N
202407278618476545	\N	\N	\N	Custom	Custom Status	f	defekt aber nett	1626547643718	\N
202407278618476545	\N	\N	\N	Custom	Custom Status	f	defekt aber nett	1626547872953	\N
276431762815451138	547786685795139585	627852580411932672	duden-schaber	Playing	CLion	t	\N	1626547981278	\N
311607742542381068	\N	\N	\N	Custom	Custom Status	f	If I continue like this I will die before I am 30, the doctors said	1626548073350	\N
202407278618476545	445956193924546560	446301881636225042	QUICK MATCH match - Round 1 / 4	Playing	Rainbow Six Siege	f	\N	1626548133983	\N
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626548141650	\N
202407278618476545	445956193924546560	446301881636225042	QUICK MATCH match - Round 1 / 4	Playing	Rainbow Six Siege	f	\N	1626548146585	\N
202407278618476545	\N	spotify:ab67616d0000b27386f07381f363520cded34c09	Norupo	Listening	Spotify	t	Heilung	1626548149543	1626548407515
202407278618476545	\N	spotify:ab67616d0000b273f3c6f21516d14abde956e245	Andvevarljod	Listening	Spotify	t	Wardruna	1626548421825	1626549037905
280050308611309569	363428336749379604	\N	\N	Playing	Tom Clancy's Ghost Recon Wildlands	f	\N	1626548789341	\N
403571252402585601	\N	\N	\N	Custom	Custom Status	f	\N	1626548811549	\N
202407278618476545	445956193924546560	446301881636225042	in MENU	Playing	Rainbow Six Siege	f	\N	1626547643727	\N
206955935229280256	\N	\N	\N	Playing	%help || GC: 108044 || UC: 112442 || VC: 7 || Version: 5.9.0	f	\N	1626547649518	\N
202407278618476545	445956193924546560	446301881636225042	QUICK MATCH match - Round 1 / 4	Playing	Rainbow Six Siege	f	\N	1626547872966	\N
206955935229280256	\N	\N	\N	Playing	%help || GC: 108044 || UC: 113465 || VC: 5 || Version: 5.9.0	f	\N	1626547995630	\N
202407278618476545	\N	spotify:ab67616d0000b27317ea37b44f24c3a8ed426daf	Runar	Listening	Spotify	t	Danheim	1626548134048	1626548394604
202407278618476545	\N	\N	\N	Custom	Custom Status	f	defekt aber nett	1626548145440	\N
202407278618476545	\N	\N	\N	Custom	Custom Status	f	defekt aber nett	1626548146568	\N
202407278618476545	445956193924546560	446301881636225042	QUICK MATCH match - Round 1 / 4	Playing	Rainbow Six Siege	f	\N	1626548165438	\N
202407278618476545	\N	spotify:ab67616d0000b27386f07381f363520cded34c09	Norupo	Listening	Spotify	t	Heilung	1626548164362	1626548422334
206955935229280256	\N	\N	\N	Playing	%help || GC: 108045 || UC: 113964 || VC: 4 || Version: 5.9.0	f	\N	1626548181907	\N
325704347767799808	\N	\N	\N	Playing	Armored Warfare	f	\N	1626548299235	\N
202407278618476545	445956193924546560	446301881636225042	QUICK MATCH match - Round 1 / 4	Playing	Rainbow Six Siege	f	\N	1626548421834	\N
380055690397351948	\N	\N	\N	Playing	pythonProject – KlassenUndMethoden.py	f	\N	1626548835038	\N
509017844537622532	762434991303950386	\N	\N	Playing	Genshin Impact	f	\N	1626548687189	\N
202407278618476545	\N	\N	\N	Custom	Custom Status	f	defekt aber nett	1626549234564	\N
202407278618476545	445956193924546560	446301881636225042	Looking for QUICK MATCH match	Playing	Rainbow Six Siege	f	\N	1626549342098	\N
202407278618476545	\N	\N	\N	Custom	Custom Status	f	defekt aber nett	1626549354165	\N
206955935229280256	\N	\N	\N	Playing	%help || GC: 108045 || UC: 112806 || VC: 6 || Version: 5.9.0	f	\N	1626547774036	\N
202407278618476545	\N	\N	\N	Custom	Custom Status	f	defekt aber nett	1626548133971	\N
202407278618476545	445956193924546560	446301881636225042	QUICK MATCH match - Round 1 / 4	Playing	Rainbow Six Siege	f	\N	1626548145451	\N
202407278618476545	\N	spotify:ab67616d0000b27317ea37b44f24c3a8ed426daf	Runar	Listening	Spotify	t	Danheim	1626548135516	1626548396072
202407278618476545	\N	\N	\N	Custom	Custom Status	f	defekt aber nett	1626548154040	\N
202407278618476545	\N	spotify:ab67616d0000b2733325634104d8398766fd51ef	Relics Of The Natural Realm	Listening	Spotify	t	Sojourner	1626547872959	1626548192959
459713629441490945	\N	\N	\N	Custom	Custom Status	f	1:1	1626548070073	\N
202407278618476545	445956193924546560	446301881636225042	QUICK MATCH match - Round 1 / 4	Playing	Rainbow Six Siege	f	\N	1626548154057	\N
202407278618476545	\N	\N	\N	Custom	Custom Status	f	defekt aber nett	1626548165407	\N
202407278618476545	\N	\N	\N	Custom	Custom Status	f	defekt aber nett	1626548175340	\N
202407278618476545	445956193924546560	446301881636225042	QUICK MATCH match - Round 1 / 4	Playing	Rainbow Six Siege	f	\N	1626548175357	\N
459713629441490945	\N	\N	\N	Custom	Custom Status	f	1:1	1626548328940	\N
325704347767799808	446063355594145823	\N	\N	Playing	Armored Warfare	f	\N	1626548344207	\N
202407278618476545	\N	\N	\N	Custom	Custom Status	f	defekt aber nett	1626548421817	\N
206955935229280256	\N	\N	\N	Playing	%help || GC: 108044 || UC: 115573 || VC: 3 || Version: 5.9.0	f	\N	1626548759947	\N
202407278618476545	\N	\N	\N	Custom	Custom Status	f	defekt aber nett	1626548838294	\N
202407278618476545	445956193924546560	446301881636225042	in MENU	Playing	Rainbow Six Siege	f	\N	1626548838309	\N
459713629441490945	\N	\N	\N	Custom	Custom Status	f	1:1	1626548952656	\N
202407278618476545	\N	\N	\N	Custom	Custom Status	f	defekt aber nett	1626549037955	\N
202407278618476545	\N	spotify:ab67616d0000b27396b9ee126546a779a7dcd98b	Fimbulvetr	Listening	Spotify	t	SKÁLD	1626549037966	1626549234712
202407278618476545	445956193924546560	446301881636225042	in MENU	Playing	Rainbow Six Siege	f	\N	1626549037973	\N
302519349489434624	\N	spotify:ab67616d0000b27330e1f2c9f60984d9ac200792	Silentphobia	Listening	Spotify	t	t+pazolite; Sakuzyo	1626549219308	1626549375721
202407278618476545	\N	spotify:ab67616d0000b2736f2f89c62364155bc27b961c	Grótti	Listening	Spotify	t	SKÁLD	1626549234601	1626549407667
202407278618476545	445956193924546560	446301881636225042	in MENU	Playing	Rainbow Six Siege	f	\N	1626549234581	\N
302519349489434624	383226320970055681	565945768817590282	Idling	Playing	Visual Studio Code	f	\N	1626549286447	\N
302519349489434624	383226320970055681	565945768817590282	Idling	Playing	Visual Studio Code	f	\N	1626549290055	\N
459713629441490945	\N	\N	\N	Custom	Custom Status	f	1:1	1626549312488	\N
202407278618476545	\N	\N	\N	Custom	Custom Status	f	defekt aber nett	1626549342082	\N
202407278618476545	\N	\N	\N	Custom	Custom Status	f	defekt aber nett	1626549350172	\N
202407278618476545	445956193924546560	446301881636225042	in MENU	Playing	Rainbow Six Siege	f	\N	1626549350188	\N
202407278618476545	445956193924546560	446301881636225042	in MENU	Playing	Rainbow Six Siege	f	\N	1626549354180	\N
302519349489434624	\N	spotify:ab67616d0000b27330e1f2c9f60984d9ac200792	Silentphobia	Listening	Spotify	t	t+pazolite; Sakuzyo	1626549374964	1626549531377
302519349489434624	\N	spotify:ab67616d0000b27330e1f2c9f60984d9ac200792	Silentphobia	Listening	Spotify	t	t+pazolite; Sakuzyo	1626549314807	1626549471220
302519349489434624	383226320970055681	565944082401198090	Editing stack.c	Playing	Visual Studio Code	f	Workspace: C	1626550187746	\N
302519349489434624	\N	spotify:ab67616d0000b273751bbdbda7bca23181255fe1	Cheatreal - #TPZREMAKE	Listening	Spotify	t	t+pazolite	1626550318252	1626550611887
206955935229280256	\N	\N	\N	Playing	%help || GC: 108045 || UC: 120226 || VC: 5 || Version: 5.9.0	f	\N	1626550524901	\N
206955935229280256	\N	\N	\N	Playing	%help || GC: 108044 || UC: 120317 || VC: 5 || Version: 5.9.0	f	\N	1626550558591	\N
206955935229280256	\N	\N	\N	Playing	%help || GC: 108045 || UC: 120378 || VC: 5 || Version: 5.9.0	f	\N	1626550588901	\N
302519349489434624	\N	spotify:ab67616d0000b273751bbdbda7bca23181255fe1	Elder Dragon Legend - #TPZREMAKE	Listening	Spotify	t	t+pazolite; Kabocha	1626550611942	1626550821084
403571252402585601	\N	\N	\N	Custom	Custom Status	f	\N	1626550613784	\N
403571252402585601	445956193924546560	446301881636225042	in MENU	Playing	Rainbow Six Siege	f	\N	1626550613797	\N
403571252402585601	356876590342340608	\N	\N	Playing	Tom Clancy's Rainbow Six Siege	f	\N	1626549634722	\N
403571252402585601	\N	\N	\N	Custom	Custom Status	f	\N	1626550632011	\N
403571252402585601	356877880938070016	\N	\N	Playing	Rocket League	f	\N	1626550632071	\N
403571252402585601	445956193924546560	446301881636225042	in MENU	Playing	Rainbow Six Siege	f	\N	1626550632028	\N
403571252402585601	\N	\N	\N	Custom	Custom Status	f	\N	1626550636824	\N
202407278618476545	\N	\N	\N	Custom	Custom Status	f	defekt aber nett	1626550637644	\N
202407278618476545	\N	spotify:ab67616d0000b273e8e2573af291804f4c5b718a	Ég felé	Listening	Spotify	t	The Moon & The Nightspirit	1626550637607	1626550994567
403571252402585601	\N	\N	\N	Custom	Custom Status	f	\N	1626550641437	\N
403571252402585601	356877880938070016	\N	\N	Playing	Rocket League	t	Hauptmenü	1626550641449	\N
325704347767799808	356888961353908224	\N	\N	Playing	World of Tanks	f	\N	1626549864873	\N
325704347767799808	790655993809338398	798617001685024808	Jay Eskar & Nova - Split	Playing	YouTube Music	f	Future House Records	1626550662355	\N
325704347767799808	790655993809338398	798617001685024808	Korn ft. Skrillex - Get Up (sucker punch)	Playing	YouTube Music	f	Izzybll	1626550662737	\N
325704347767799808	790655993809338398	798617001685024808	Korn ft. Skrillex - Get Up (sucker punch)	Playing	YouTube Music	f	Izzybll	1626550662531	1626550886531
403571252402585601	\N	\N	\N	Custom	Custom Status	f	\N	1626550670922	\N
403571252402585601	356877880938070016	\N	\N	Playing	Rocket League	t	Doppel in Urban Central (Dämmerung)	1626550670934	\N
403571252402585601	\N	\N	\N	Custom	Custom Status	f	\N	1626552125001	\N
403571252402585601	\N	spotify:ab67616d0000b273322adabca0b652da6ad1cdcc	Chromosom	Listening	Spotify	t	RAF Camora	1626552093753	1626552216755
403571252402585601	445956193924546560	446301881636225042	QUICK MATCH match - Round 1 / 4	Playing	Rainbow Six Siege	f	\N	1626552125043	\N
403571252402585601	356876590342340608	\N	\N	Playing	Tom Clancy's Rainbow Six Siege	f	\N	1626551572635	\N
403571252402585601	\N	\N	\N	Custom	Custom Status	f	\N	1626552125512	\N
403571252402585601	\N	spotify:ab67616d0000b273322adabca0b652da6ad1cdcc	Zukunft	Listening	Spotify	t	RAF Camora	1626552124581	1626552282164
403571252402585601	445956193924546560	446301881636225042	QUICK MATCH match - Round 1 / 4	Playing	Rainbow Six Siege	f	\N	1626552125524	\N
302519349489434624	\N	spotify:ab67616d0000b273c7d0787f1bb803286ac7d090	Count down 321	Listening	Spotify	t	t+pazolite	1626552153258	1626552379631
302519349489434624	\N	spotify:ab67616d0000b273c7d0787f1bb803286ac7d090	Count down 321	Listening	Spotify	t	t+pazolite	1626552155633	1626552382006
325704347767799808	790655993809338398	798617001685024808	Bazaar (Official Sunburn Goa 2015 Anthem)	Playing	YouTube Music	f	KSHMR	1626552246362	\N
325704347767799808	790655993809338398	798617001685024808	Nebula Jam	Playing	YouTube Music	f	The Enigma TNG	1626552246858	\N
325704347767799808	790655993809338398	798617001685024808	Nebula Jam	Playing	YouTube Music	f	The Enigma TNG	1626552246863	\N
325704347767799808	790655993809338398	798617001685024808	Nebula Jam	Playing	YouTube Music	f	The Enigma TNG	1626552246601	1626552624601
206955935229280256	\N	\N	\N	Playing	%help || GC: 108048 || UC: 124476 || VC: 3 || Version: 5.9.0	f	\N	1626552266217	\N
403571252402585601	\N	\N	\N	Custom	Custom Status	f	\N	1626552464047	\N
403571252402585601	445956193924546560	446301881636225042	QUICK MATCH match - Round 1 / 4	Playing	Rainbow Six Siege	f	\N	1626552464070	\N
403571252402585601	\N	\N	\N	Custom	Custom Status	f	\N	1626552464660	\N
403571252402585601	\N	spotify:ab67616d0000b273322adabca0b652da6ad1cdcc	Realität	Listening	Spotify	t	RAF Camora	1626552282672	1626552466884
403571252402585601	\N	\N	\N	Custom	Custom Status	f	\N	1626552466521	\N
403571252402585601	445956193924546560	446301881636225042	QUICK MATCH match - Round 1 / 4	Playing	Rainbow Six Siege	f	\N	1626552464674	\N
403571252402585601	\N	spotify:ab67616d0000b273322adabca0b652da6ad1cdcc	Wenn es schlecht läuft	Listening	Spotify	t	RAF Camora	1626552465735	1626552648283
411656316814098441	\N	\N	\N	Custom	Custom Status	f	snowfox 😳	1626552534290	\N
202407278618476545	\N	spotify:ab67616d0000b2732a4d13f6db07175c63cee77a	Urzala	Listening	Spotify	t	Theodor Bastard	1626552605546	1626552849799
325704347767799808	790655993809338398	798617001685024808	Nebula Jam	Playing	YouTube Music	f	The Enigma TNG	1626552625750	\N
325704347767799808	790655993809338398	798617001685024808	Metal Gear Rising: Revengeance - The Only Thing I Know For Real (Samuel Boss Battle) Extended	Playing	YouTube Music	f	DJ ReAct	1626552626513	1626552941513
403571252402585601	\N	spotify:ab67616d0000b273322adabca0b652da6ad1cdcc	Scusa	Listening	Spotify	t	RAF Camora; Ketama126	1626552648233	1626552807616
403571252402585601	\N	\N	\N	Custom	Custom Status	f	\N	1626552793566	\N
403571252402585601	\N	\N	\N	Custom	Custom Status	f	\N	1626552794082	\N
403571252402585601	357607478105604096	\N	\N	Playing	War Thunder	f	\N	1626552804265	\N
202407278618476545	\N	\N	\N	Custom	Custom Status	f	defekt aber nett	1626552849785	\N
202407278618476545	\N	spotify:ab67616d0000b273bf5f985a8c688989f29636f4	Norðrljós	Listening	Spotify	t	SKÁLD	1626552942107	1626553142893
325704347767799808	790655993809338398	798617001685024808	What's Wrong	Playing	YouTube Music	f	PVRIS	1626552943075	\N
403571252402585601	\N	\N	\N	Custom	Custom Status	f	\N	1626552949010	\N
411656316814098441	363445589247131668	\N	\N	Playing	ROBLOX	f	\N	1626553114900	\N
403571252402585601	\N	spotify:ab67616d0000b273322adabca0b652da6ad1cdcc	Ich kenne meinen Wert	Listening	Spotify	t	RAF Camora	1626553119530	1626553293446
202407278618476545	\N	\N	\N	Custom	Custom Status	f	defekt aber nett	1626553143057	\N
206955935229280256	\N	\N	\N	Playing	%help || GC: 108050 || UC: 124969 || VC: 3 || Version: 5.9.0	f	\N	1626553172548	\N
325704347767799808	790655993809338398	798617001685024808	Forget Me	Playing	YouTube Music	f	Baulander	1626553246893	\N
325704347767799808	790655993809338398	798617001685024808	Forget Me	Playing	YouTube Music	f	Baulander	1626553246705	1626553432705
302519349489434624	425437076188561408	\N	\N	Playing	Batman: Arkham Knight	f	\N	1626553362327	\N
403571252402585601	445956193924546560	446301881636225042	in MENU	Playing	Rainbow Six Siege	f	\N	1626553369576	\N
325704347767799808	790655993809338398	798617001685024808	Escape	Playing	YouTube Music	f	Rameses B	1626553434231	1626553753231
403571252402585601	\N	spotify:ab67616d0000b273322adabca0b652da6ad1cdcc	Ebbe	Listening	Spotify	t	RAF Camora	1626553442999	1626553655527
206955935229280256	\N	\N	\N	Playing	%help || GC: 108050 || UC: 125795 || VC: 4 || Version: 5.9.0	f	\N	1626553516105	\N
459713629441490945	\N	\N	\N	Custom	Custom Status	f	1:1	1626553546819	\N
403571252402585601	445956193924546560	446301881636225042	in MENU	Playing	Rainbow Six Siege	f	\N	1626553656501	\N
325704347767799808	790655993809338398	798617001685024808	Escape	Playing	YouTube Music	f	Rameses B	1626553754078	\N
403571252402585601	445956193924546560	446301881636225042	QUICK MATCH match - Round 1 / 4	Playing	Rainbow Six Siege	f	\N	1626552466536	\N
202407278618476545	\N	\N	\N	Custom	Custom Status	f	defekt aber nett	1626552605765	\N
325704347767799808	790655993809338398	798617001685024808	Nebula Jam	Playing	YouTube Music	f	The Enigma TNG	1626552625751	\N
325704347767799808	790655993809338398	798617001685024808	Metal Gear Rising: Revengeance - The Only Thing I Know For Real (Samuel Boss Battle) Extended	Playing	YouTube Music	f	DJ ReAct	1626552626257	\N
325704347767799808	790655993809338398	798617001685024808	Metal Gear Rising: Revengeance - The Only Thing I Know For Real (Samuel Boss Battle) Extended	Playing	YouTube Music	f	DJ ReAct	1626552626258	\N
403571252402585601	\N	\N	\N	Custom	Custom Status	f	\N	1626552649082	\N
403571252402585601	445956193924546560	446301881636225042	QUICK MATCH match - Round 1 / 4	Playing	Rainbow Six Siege	f	\N	1626552649095	\N
459713629441490945	\N	\N	\N	Custom	Custom Status	f	1:1	1626552736734	\N
459713629441490945	\N	\N	\N	Playing	3D Aim Trainer	f	\N	1626552737062	\N
459713629441490945	\N	\N	\N	Custom	Custom Status	f	1:1	1626552746770	\N
206955935229280256	\N	\N	\N	Playing	%help || GC: 108048 || UC: 123886 || VC: 3 || Version: 5.9.0	f	\N	1626552748818	\N
424599087145549835	\N	\N	\N	Custom	Custom Status	f	Reliquit solum ab amicis.	1626552754859	\N
403571252402585601	\N	\N	\N	Custom	Custom Status	f	\N	1626552804217	\N
403571252402585601	\N	\N	\N	Custom	Custom Status	f	\N	1626552808517	\N
325704347767799808	357607478105604096	\N	\N	Playing	War Thunder	f	\N	1626552815799	\N
202407278618476545	\N	spotify:ab67616d0000b273ab3ee3b1149d140422a8e877	Leaving Valhalla	Listening	Spotify	t	Jesper Kyd	1626552849667	1626552942053
411656316814098441	\N	\N	\N	Custom	Custom Status	f	snowfox 😳	1626552930577	\N
411656316814098441	\N	\N	\N	Custom	Custom Status	f	snowfox 😳	1626552932113	\N
202407278618476545	\N	\N	\N	Custom	Custom Status	f	defekt aber nett	1626552942251	\N
325704347767799808	790655993809338398	798617001685024808	Metal Gear Rising: Revengeance - The Only Thing I Know For Real (Samuel Boss Battle) Extended	Playing	YouTube Music	f	DJ ReAct	1626552942561	\N
325704347767799808	790655993809338398	798617001685024808	What's Wrong	Playing	YouTube Music	f	PVRIS	1626552942903	1626553244903
403571252402585601	\N	spotify:ab67616d0000b273322adabca0b652da6ad1cdcc	Benzin	Listening	Spotify	t	RAF Camora; Ufo361	1626552948139	1626553119534
411656316814098441	\N	\N	\N	Custom	Custom Status	f	snowfox 😳	1626553033828	\N
411656316814098441	363445589247131668	\N	\N	Playing	ROBLOX	f	\N	1626553034650	\N
411656316814098441	\N	\N	\N	Custom	Custom Status	f	snowfox 😳	1626553083978	\N
411656316814098441	\N	\N	\N	Custom	Custom Status	f	snowfox 😳	1626553114170	\N
403571252402585601	\N	\N	\N	Custom	Custom Status	f	\N	1626553120427	\N
206955935229280256	\N	\N	\N	Playing	%help || GC: 108049 || UC: 124858 || VC: 3 || Version: 5.9.0	f	\N	1626553134597	\N
202407278618476545	\N	spotify:ab67616d0000b273bf8c9af07a996d4e245b19af	Kvitravn	Listening	Spotify	t	Wardruna	1626553142910	1626553520656
302519349489434624	\N	spotify:ab67616d0000b273c7d0787f1bb803286ac7d090	Count down 321	Listening	Spotify	t	t+pazolite	1626553166961	1626553393334
302519349489434624	\N	spotify:ab67616d0000b273751bbdbda7bca23181255fe1	TROPICAL A GOGO - #TPZREMAKE	Listening	Spotify	t	t+pazolite	1626553186900	1626553388125
403571252402585601	\N	\N	\N	Custom	Custom Status	f	\N	1626553219447	\N
325704347767799808	790655993809338398	798617001685024808	What's Wrong	Playing	YouTube Music	f	PVRIS	1626553246594	\N
411656316814098441	\N	\N	\N	Custom	Custom Status	f	snowfox 😳	1626553249245	\N
403571252402585601	\N	\N	\N	Custom	Custom Status	f	\N	1626553294301	\N
403571252402585601	\N	spotify:ab67616d0000b273322adabca0b652da6ad1cdcc	Vergesse nie die Street	Listening	Spotify	t	RAF Camora; Ahmad Amin	1626553293410	1626553443011
206955935229280256	\N	\N	\N	Playing	%help || GC: 108051 || UC: 125300 || VC: 4 || Version: 5.9.0	f	\N	1626553317957	\N
403571252402585601	\N	\N	\N	Custom	Custom Status	f	\N	1626553359573	\N
403571252402585601	356876590342340608	\N	\N	Playing	Tom Clancy's Rainbow Six Siege	f	\N	1626553359701	\N
403571252402585601	\N	\N	\N	Custom	Custom Status	f	\N	1626553369565	\N
325704347767799808	790655993809338398	798617001685024808	Forget Me	Playing	YouTube Music	f	Baulander	1626553433875	\N
325704347767799808	790655993809338398	798617001685024808	Escape	Playing	YouTube Music	f	Rameses B	1626553434279	\N
325704347767799808	790655993809338398	798617001685024808	Escape	Playing	YouTube Music	f	Rameses B	1626553434311	\N
403571252402585601	\N	\N	\N	Custom	Custom Status	f	\N	1626553443907	\N
403571252402585601	445956193924546560	446301881636225042	in MENU	Playing	Rainbow Six Siege	f	\N	1626553443918	\N
202407278618476545	\N	\N	\N	Custom	Custom Status	f	defekt aber nett	1626553520809	\N
202407278618476545	\N	spotify:ab67616d0000b27368997330f0ac85dd828b9236	Skugge	Listening	Spotify	t	Wardruna	1626553520644	1626553918910
206955935229280256	\N	\N	\N	Playing	%help || GC: 108049 || UC: 125846 || VC: 4 || Version: 5.9.0	f	\N	1626553533405	\N
311607742542381068	\N	\N	\N	Custom	Custom Status	f	If I continue like this I will die before I am 30, the doctors said	1626553589314	\N
272411073842511873	\N	\N	\N	Custom	Custom Status	f	Deal with stuff be on	1626553653929	\N
272411073842511873	\N	\N	\N	Custom	Custom Status	f	Deal with stuff be on	1626553653954	\N
403571252402585601	\N	\N	\N	Custom	Custom Status	f	\N	1626553656490	\N
403571252402585601	\N	spotify:ab67616d0000b273322adabca0b652da6ad1cdcc	Kapuze im Club	Listening	Spotify	t	RAF Camora; 187 Strassenbande; Gzuz; Maxwell; LX	1626553655514	1626553944116
403571252402585601	\N	\N	\N	Custom	Custom Status	f	\N	1626553673282	\N
403571252402585601	445956193924546560	446301881636225042	in MENU	Playing	Rainbow Six Siege	f	\N	1626553673293	\N
411656316814098441	\N	\N	\N	Custom	Custom Status	f	snowfox 😳	1626553721308	\N
411656316814098441	\N	\N	\N	Custom	Custom Status	f	snowfox 😳	1626553732984	\N
325704347767799808	790655993809338398	798617001685024808	Escape	Playing	YouTube Music	f	Rameses B	1626553754079	\N
325704347767799808	790655993809338398	798617001685024808	Pretty Maids - Future World - HQ Audio	Playing	YouTube Music	f	Hard Rock & Heavy Metal	1626553754496	\N
325704347767799808	790655993809338398	798617001685024808	Pretty Maids - Future World - HQ Audio	Playing	YouTube Music	f	Hard Rock & Heavy Metal	1626553754397	1626554076397
202407278618476545	\N	\N	\N	Custom	Custom Status	f	defekt aber nett	1626553919656	\N
202407278618476545	\N	spotify:ab67616d0000b2738e6227e4767ca1951138f3eb	Ymir	Listening	Spotify	t	Gealdýr; Danheim	1626553919488	1626554177067
152104114753372160	477657966095630346	\N	\N	Playing	Offworld Trading Company	f	\N	1626553942428	\N
403571252402585601	\N	\N	\N	Custom	Custom Status	f	\N	1626553945052	\N
403571252402585601	445956193924546560	446301881636225042	in MENU	Playing	Rainbow Six Siege	f	\N	1626553945059	\N
403571252402585601	\N	spotify:ab67616d0000b273322adabca0b652da6ad1cdcc	Regen	Listening	Spotify	t	RAF Camora	1626553944068	1626554121748
202407278618476545	\N	\N	\N	Custom	Custom Status	f	defekt aber nett	1626554071170	\N
325704347767799808	790655993809338398	798617001685024808	Pretty Maids - Future World - HQ Audio	Playing	YouTube Music	f	Hard Rock & Heavy Metal	1626554077574	\N
325704347767799808	790655993809338398	798617001685024808	Pretty Maids - Future World - HQ Audio	Playing	YouTube Music	f	Hard Rock & Heavy Metal	1626554077575	\N
325704347767799808	790655993809338398	798617001685024808	Polyushko Polye	Playing	YouTube Music	f	Little Big	1626554077970	\N
325704347767799808	790655993809338398	798617001685024808	Polyushko Polye	Playing	YouTube Music	f	Little Big	1626554077682	1626554320682
325704347767799808	790655993809338398	798617001685024808	Polyushko Polye	Playing	YouTube Music	f	Little Big	1626554077896	1626554320896
461265486655520788	\N	\N	\N	Playing	Skyrim with guns	f	\N	1626554083086	\N
281381884460662785	\N	spotify:ab67616d0000b273736145b97bab8fa92cb6113f	Blasphemy	Listening	Spotify	t	Bring Me The Horizon	1626553929488	1626554204501
281381884460662785	\N	spotify:ab67616d0000b273eaa8721ebcf45d4316d4c823	PHONKY TOWN	Listening	Spotify	t	PlayaPhonk	1626554128847	1626554270220
202407278618476545	\N	\N	\N	Custom	Custom Status	f	defekt aber nett	1626554176614	\N
403571252402585601	445956193924546560	446301881636225042	in MENU	Playing	Rainbow Six Siege	f	\N	1626554289338	\N
325704347767799808	790655993809338398	798617001685024808	Polyushko Polye	Playing	YouTube Music	f	Little Big	1626554321998	\N
281381884460662785	\N	spotify:ab67616d0000b2732c089cd086880132464adcbf	The Love Market	Listening	Spotify	t	Filmmaker	1626554359125	1626554601948
281381884460662785	\N	\N	\N	Custom	Custom Status	f	Я….жду ответа, больше надежд нету. Скоро….кончится лето. Это….	1626554367475	\N
281381884460662785	\N	\N	\N	Playing	Netflix	f	\N	1626554377039	\N
403571252402585601	445956193924546560	446301881636225042	in MENU	Playing	Rainbow Six Siege	f	\N	1626554395320	\N
223666520943886336	463097721130188830	513734690272968717	When They Ask If You Can Mow A Small Forest	Playing	YouTube	f	Copper Creek Cuts Lawn Care	1626554427763	1626554909000
223666520943886336	463097721130188830	513734690272968717	When They Ask If You Can Mow A Small Forest	Playing	YouTube	f	Copper Creek Cuts Lawn Care	1626554447936	1626554910000
223666520943886336	463097721130188830	513734690272968717	When They Ask If You Can Mow A Small Forest	Playing	YouTube	f	Copper Creek Cuts Lawn Care	1626554468524	1626554909000
223666520943886336	463097721130188830	513734690272968717	When They Ask If You Can Mow A Small Forest	Playing	YouTube	f	Copper Creek Cuts Lawn Care	1626554507430	1626554910000
403571252402585601	445956193924546560	446301881636225042	in MENU	Playing	Rainbow Six Siege	f	\N	1626554518292	\N
325704347767799808	790655993809338398	798617001685024808	MC Thunder II (Dancing Like a Ninja)	Playing	YouTube Music	f	Eskimo Callboy	1626554521359	\N
223666520943886336	463097721130188830	513734690272968717	When They Ask If You Can Mow A Small Forest	Playing	YouTube	f	Copper Creek Cuts Lawn Care	1626554528013	1626554910000
281381884460662785	\N	\N	\N	Custom	Custom Status	f	Я….жду ответа, больше надежд нету. Скоро….кончится лето. Это….	1626554552590	\N
223666520943886336	463097721130188830	513734690272968717	When They Ask If You Can Mow A Small Forest	Playing	YouTube	f	Copper Creek Cuts Lawn Care	1626554569075	1626554910000
411656316814098441	\N	\N	\N	Custom	Custom Status	f	snowfox 😳	1626554597337	\N
223666520943886336	463097721130188830	513734690272968717	When They Ask If You Can Mow A Small Forest	Playing	YouTube	f	Copper Creek Cuts Lawn Care	1626554627545	1626554909000
202407278618476545	\N	\N	\N	Custom	Custom Status	f	defekt aber nett	1626554654688	\N
223666520943886336	463097721130188830	513734690272968717	When They Ask If You Can Mow A Small Forest	Playing	YouTube	f	Copper Creek Cuts Lawn Care	1626554668915	1626554910000
461265486655520788	\N	\N	\N	Playing	Skyrim with guns	f	\N	1626554081140	\N
276431762815451138	547786685795139585	627852580411932672	duden-schaber	Playing	CLion	t	\N	1626554082614	\N
191594115907977225	\N	spotify:ab67616d0000b2730f3661d1ead65b628e037b31	Walls	Listening	Spotify	t	CRX	1626554098505	1626554256731
403571252402585601	\N	\N	\N	Custom	Custom Status	f	\N	1626554122701	\N
281381884460662785	\N	spotify:ab67616d0000b2736ba3687aec030cec6089ed2c	Коммерсанты	Listening	Spotify	t	Molchat Doma	1626554130436	1626554359619
281381884460662785	\N	\N	\N	Custom	Custom Status	f	Я….жду ответа, больше надежд нету. Скоро….кончится лето. Это….	1626554149347	\N
202407278618476545	\N	spotify:ab67616d0000b27351f849b894f8928b7c6a3c9c	House Carpenter	Listening	Spotify	t	Myrkur	1626554176473	1626554394584
191594115907977225	\N	spotify:ab67616d0000b27361572c340247a1c651a240d7	Zombie	Listening	Spotify	t	Bad Pony	1626554256650	1626554515524
325704347767799808	790655993809338398	798617001685024808	Polyushko Polye	Playing	YouTube Music	f	Little Big	1626554322017	\N
325704347767799808	790655993809338398	798617001685024808	Pickle - Sing It (Official Music Video)	Playing	YouTube Music	f	Spinnin' Records	1626554322505	\N
281381884460662785	\N	spotify:ab67616d0000b27330d45198d0c9e8841f9a9578	Chop Suey!	Listening	Spotify	t	System Of A Down	1626554328183	1626554538423
281381884460662785	\N	\N	\N	Custom	Custom Status	f	Я….жду ответа, больше надежд нету. Скоро….кончится лето. Это….	1626554360693	\N
202407278618476545	\N	spotify:ab67616d0000b273bd239ccc5fd8b735326d8ab4	Spatle Ǣghwas	Listening	Spotify	t	Sowulo	1626554394449	1626554654449
403571252402585601	\N	spotify:ab67616d0000b273322adabca0b652da6ad1cdcc	Chromosom	Listening	Spotify	t	RAF Camora	1626554394341	1626554517343
325704347767799808	790655993809338398	798617001685024808	Pickle - Sing It (Official Music Video)	Playing	YouTube Music	f	Spinnin' Records	1626554322563	1626554520563
223666520943886336	463097721130188830	513734690272968717	When They Ask If You Can Mow A Small Forest	Playing	YouTube	f	Copper Creek Cuts Lawn Care	1626554428025	1626554910000
223666520943886336	463097721130188830	513734690272968717	When They Ask If You Can Mow A Small Forest	Playing	YouTube	f	Copper Creek Cuts Lawn Care	1626554448551	1626554909000
223666520943886336	463097721130188830	513734690272968717	When They Ask If You Can Mow A Small Forest	Playing	YouTube	f	Copper Creek Cuts Lawn Care	1626554487360	1626554910000
223666520943886336	463097721130188830	513734690272968717	When They Ask If You Can Mow A Small Forest	Playing	YouTube	f	Copper Creek Cuts Lawn Care	1626554507840	1626554909000
403571252402585601	\N	spotify:ab67616d0000b273322adabca0b652da6ad1cdcc	Zukunft	Listening	Spotify	t	RAF Camora	1626554517320	1626554674903
325704347767799808	790655993809338398	798617001685024808	Pickle - Sing It (Official Music Video)	Playing	YouTube Music	f	Spinnin' Records	1626554520950	\N
223666520943886336	463097721130188830	513734690272968717	When They Ask If You Can Mow A Small Forest	Playing	YouTube	f	Copper Creek Cuts Lawn Care	1626554527399	1626554910000
459713629441490945	\N	\N	\N	Custom	Custom Status	f	1:1	1626554530777	\N
223666520943886336	463097721130188830	513734690272968717	When They Ask If You Can Mow A Small Forest	Playing	YouTube	f	Copper Creek Cuts Lawn Care	1626554547573	1626554909000
223666520943886336	463097721130188830	513734690272968717	When They Ask If You Can Mow A Small Forest	Playing	YouTube	f	Copper Creek Cuts Lawn Care	1626554548498	1626554909000
191594115907977225	\N	spotify:ab67616d0000b273889741e4d5cfc40e4610770c	Blast Doors	Listening	Spotify	t	Everything Everything	1626554551513	1626554761739
281381884460662785	\N	\N	\N	Custom	Custom Status	f	Я….жду ответа, больше надежд нету. Скоро….кончится лето. Это….	1626554551974	\N
325704347767799808	790655993809338398	798617001685024808	MC Thunder II (Dancing Like a Ninja)	Playing	YouTube Music	f	Eskimo Callboy	1626554521229	1626554769229
223666520943886336	463097721130188830	513734690272968717	When They Ask If You Can Mow A Small Forest	Playing	YouTube	f	Copper Creek Cuts Lawn Care	1626554567418	1626554909000
223666520943886336	463097721130188830	513734690272968717	When They Ask If You Can Mow A Small Forest	Playing	YouTube	f	Copper Creek Cuts Lawn Care	1626554588019	1626554910000
223666520943886336	463097721130188830	513734690272968717	When They Ask If You Can Mow A Small Forest	Playing	YouTube	f	Copper Creek Cuts Lawn Care	1626554608090	1626554910000
223666520943886336	463097721130188830	513734690272968717	When They Ask If You Can Mow A Small Forest	Playing	YouTube	f	Copper Creek Cuts Lawn Care	1626554648032	1626554910000
223666520943886336	463097721130188830	513734690272968717	When They Ask If You Can Mow A Small Forest	Playing	YouTube	f	Copper Creek Cuts Lawn Care	1626554668511	1626554909000
223666520943886336	463097721130188830	513734690272968717	When They Ask If You Can Mow A Small Forest	Playing	YouTube	f	Copper Creek Cuts Lawn Care	1626557452039	\N
202407278618476545	\N	\N	\N	Custom	Custom Status	f	defekt aber nett	1626557510308	\N
223666520943886336	463097721130188830	513734690272968717	When They Ask If You Can Mow A Small Forest	Playing	YouTube	f	Copper Creek Cuts Lawn Care	1626557532424	\N
223666520943886336	463097721130188830	513734690272968717	When They Ask If You Can Mow A Small Forest	Playing	YouTube	f	Copper Creek Cuts Lawn Care	1626557572563	\N
223666520943886336	463097721130188830	513734690272968717	When They Ask If You Can Mow A Small Forest	Playing	YouTube	f	Copper Creek Cuts Lawn Care	1626557622535	\N
403571252402585601	445956193924546560	446301881636225042	in MENU	Playing	Rainbow Six Siege	f	\N	1626557640053	\N
223666520943886336	463097721130188830	513734690272968717	When They Ask If You Can Mow A Small Forest	Playing	YouTube	f	Copper Creek Cuts Lawn Care	1626557662572	\N
403571252402585601	\N	spotify:ab67616d0000b273322adabca0b652da6ad1cdcc	Generation X	Listening	Spotify	t	RAF Camora	1626554121789	1626554288109
281381884460662785	\N	\N	\N	Custom	Custom Status	f	Я….жду ответа, больше надежд нету. Скоро….кончится лето. Это….	1626554130601	\N
281381884460662785	\N	\N	\N	Custom	Custom Status	f	Я….жду ответа, больше надежд нету. Скоро….кончится лето. Это….	1626554131829	\N
281381884460662785	\N	\N	\N	Custom	Custom Status	f	Я….жду ответа, больше надежд нету. Скоро….кончится лето. Это….	1626554132346	\N
403571252402585601	\N	\N	\N	Custom	Custom Status	f	\N	1626554289327	\N
223666520943886336	463097721130188830	513734690272968717	Viewing home page	Playing	YouTube	f	\N	1626554319000	\N
325704347767799808	790655993809338398	798617001685024808	Pickle - Sing It (Official Music Video)	Playing	YouTube Music	f	Spinnin' Records	1626554328310	\N
281381884460662785	\N	\N	\N	Custom	Custom Status	f	Я….жду ответа, больше надежд нету. Скоро….кончится лето. Это….	1626554359176	\N
281381884460662785	\N	\N	\N	Custom	Custom Status	f	Я….жду ответа, больше надежд нету. Скоро….кончится лето. Это….	1626554379123	\N
403571252402585601	\N	\N	\N	Custom	Custom Status	f	\N	1626554395309	\N
223666520943886336	463097721130188830	\N	\N	Playing	YouTube	f	\N	1626554426601	\N
223666520943886336	463097721130188830	513734690272968717	When They Ask If You Can Mow A Small Forest	Playing	YouTube	f	Copper Creek Cuts Lawn Care	1626554447424	1626554910000
223666520943886336	463097721130188830	513734690272968717	When They Ask If You Can Mow A Small Forest	Playing	YouTube	f	Copper Creek Cuts Lawn Care	1626554467598	1626554909000
223666520943886336	463097721130188830	513734690272968717	When They Ask If You Can Mow A Small Forest	Playing	YouTube	f	Copper Creek Cuts Lawn Care	1626554488076	1626554910000
223666520943886336	463097721130188830	513734690272968717	When They Ask If You Can Mow A Small Forest	Playing	YouTube	f	Copper Creek Cuts Lawn Care	1626554508572	1626554909000
223666520943886336	463097721130188830	513734690272968717	When They Ask If You Can Mow A Small Forest	Playing	YouTube	f	Copper Creek Cuts Lawn Care	1626554527524	1626554909000
223666520943886336	463097721130188830	513734690272968717	When They Ask If You Can Mow A Small Forest	Playing	YouTube	f	Copper Creek Cuts Lawn Care	1626554548902	1626554910000
459713629441490945	\N	\N	\N	Custom	Custom Status	f	1:1	1626554557709	\N
325704347767799808	790655993809338398	798617001685024808	MC Thunder II (Dancing Like a Ninja)	Playing	YouTube Music	f	Eskimo Callboy	1626554521214	1626554769214
223666520943886336	463097721130188830	513734690272968717	When They Ask If You Can Mow A Small Forest	Playing	YouTube	f	Copper Creek Cuts Lawn Care	1626554567822	1626554910000
223666520943886336	463097721130188830	513734690272968717	When They Ask If You Can Mow A Small Forest	Playing	YouTube	f	Copper Creek Cuts Lawn Care	1626554588537	1626554909000
223666520943886336	463097721130188830	513734690272968717	When They Ask If You Can Mow A Small Forest	Playing	YouTube	f	Copper Creek Cuts Lawn Care	1626554609523	1626554909000
223666520943886336	463097721130188830	513734690272968717	When They Ask If You Can Mow A Small Forest	Playing	YouTube	f	Copper Creek Cuts Lawn Care	1626554647519	1626554909000
202407278618476545	\N	spotify:ab67616d0000b273b7f1aa8cd57403c67f6a5d65	Två Systrar	Listening	Spotify	t	Garmarna	1626554654467	1626555007254
325704347767799808	790655993809338398	798617001685024808	Pickle - Sing It (Official Music Video)	Playing	YouTube Music	f	Spinnin' Records	1626554322246	1626554520246
281381884460662785	\N	\N	\N	Custom	Custom Status	f	Я….жду ответа, больше надежд нету. Скоро….кончится лето. Это….	1626554328231	\N
325704347767799808	790655993809338398	798617001685024808	Pickle - Sing It (Official Music Video)	Playing	YouTube Music	f	Spinnin' Records	1626554328286	\N
281381884460662785	\N	\N	\N	Custom	Custom Status	f	Я….жду ответа, больше надежд нету. Скоро….кончится лето. Это….	1626554334785	\N
281381884460662785	\N	\N	\N	Custom	Custom Status	f	Я….жду ответа, больше надежд нету. Скоро….кончится лето. Это….	1626554361510	\N
281381884460662785	\N	spotify:ab67616d0000b2735ab6fb85fa93ef1a51dfe2f0	Лето	Listening	Spotify	t	Kino	1626554367317	1626554721988
202407278618476545	\N	\N	\N	Custom	Custom Status	f	defekt aber nett	1626554394688	\N
223666520943886336	463097721130188830	513734690272968717	When They Ask If You Can Mow A Small Forest	Playing	YouTube	f	Copper Creek Cuts Lawn Care	1626554428583	1626554909000
223666520943886336	463097721130188830	513734690272968717	When They Ask If You Can Mow A Small Forest	Playing	YouTube	f	Copper Creek Cuts Lawn Care	1626554467495	1626554910000
223666520943886336	463097721130188830	513734690272968717	When They Ask If You Can Mow A Small Forest	Playing	YouTube	f	Copper Creek Cuts Lawn Care	1626554487557	1626554909000
223666520943886336	463097721130188830	513734690272968717	When They Ask If You Can Mow A Small Forest	Playing	YouTube	f	Copper Creek Cuts Lawn Care	1626554508055	1626554910000
191594115907977225	\N	spotify:ab67616d0000b273386f0312b36cf1940308a178	She Dances In The Dark	Listening	Spotify	t	Nightstop	1626554515683	1626554728371
403571252402585601	\N	\N	\N	Custom	Custom Status	f	\N	1626554518285	\N
325704347767799808	790655993809338398	798617001685024808	MC Thunder II (Dancing Like a Ninja)	Playing	YouTube Music	f	Eskimo Callboy	1626554521129	1626554769129
223666520943886336	463097721130188830	513734690272968717	When They Ask If You Can Mow A Small Forest	Playing	YouTube	f	Copper Creek Cuts Lawn Care	1626554528530	1626554909000
223666520943886336	463097721130188830	513734690272968717	When They Ask If You Can Mow A Small Forest	Playing	YouTube	f	Copper Creek Cuts Lawn Care	1626554546957	1626554910000
223666520943886336	463097721130188830	513734690272968717	When They Ask If You Can Mow A Small Forest	Playing	YouTube	f	Copper Creek Cuts Lawn Care	1626554547920	1626554910000
281381884460662785	\N	\N	\N	Playing	Netflix	f	\N	1626554552695	\N
223666520943886336	463097721130188830	513734690272968717	When They Ask If You Can Mow A Small Forest	Playing	YouTube	f	Copper Creek Cuts Lawn Care	1626554587506	1626554909000
223666520943886336	463097721130188830	513734690272968717	When They Ask If You Can Mow A Small Forest	Playing	YouTube	f	Copper Creek Cuts Lawn Care	1626554607578	1626554909000
223666520943886336	463097721130188830	513734690272968717	When They Ask If You Can Mow A Small Forest	Playing	YouTube	f	Copper Creek Cuts Lawn Care	1626554628057	1626554910000
403571252402585601	\N	\N	\N	Custom	Custom Status	f	\N	1626554675878	\N
223666520943886336	463097721130188830	513734690272968717	When They Ask If You Can Mow A Small Forest	Playing	YouTube	f	Copper Creek Cuts Lawn Care	1626554688587	1626554909000
223666520943886336	463097721130188830	513734690272968717	When They Ask If You Can Mow A Small Forest	Playing	YouTube	f	Copper Creek Cuts Lawn Care	1626554729742	1626554909000
403571252402585601	\N	spotify:ab67616d0000b273322adabca0b652da6ad1cdcc	Wenn es schlecht läuft	Listening	Spotify	t	RAF Camora	1626554801907	1626554984455
403571252402585601	\N	spotify:ab67616d0000b273322adabca0b652da6ad1cdcc	Wenn es schlecht läuft	Listening	Spotify	t	RAF Camora	1626554770463	1626554953011
403571252402585601	\N	spotify:ab67616d0000b273322adabca0b652da6ad1cdcc	Regen	Listening	Spotify	t	RAF Camora	1626554776850	1626554954530
403571252402585601	\N	spotify:ab67616d0000b273322adabca0b652da6ad1cdcc	Regen	Listening	Spotify	t	RAF Camora	1626554745154	1626554922834
403571252402585601	445956193924546560	446301881636225042	in MENU	Playing	Rainbow Six Siege	f	\N	1626554858978	\N
281381884460662785	\N	spotify:ab67616d0000b2735fcdafb582a7cd669692bc5d	The Sun and the Rainfall	Listening	Spotify	t	Depeche Mode	1626554871244	1626555176737
403571252402585601	445956193924546560	446301881636225042	in MENU	Playing	Rainbow Six Siege	f	\N	1626554930968	\N
403571252402585601	445956193924546560	446301881636225042	Looking for RANKED match	Playing	Rainbow Six Siege	f	\N	1626554945509	\N
403571252402585601	445956193924546560	446301881636225042	Looking for RANKED match	Playing	Rainbow Six Siege	f	\N	1626554950123	\N
403571252402585601	445956193924546560	446301881636225042	Looking for RANKED match	Playing	Rainbow Six Siege	f	\N	1626554954111	\N
403571252402585601	445956193924546560	446301881636225042	in MENU	Playing	Rainbow Six Siege	f	\N	1626554954141	\N
325704347767799808	790655993809338398	798617001685024808	Forgotten Sounds - Samurai	Playing	YouTube Music	f	M1ST1K	1626555004790	\N
202407278618476545	\N	spotify:ab67616d0000b273cf7775e4b725ae47b3a36603	Valhalla Rising	Listening	Spotify	t	Nytt Land	1626555007243	1626555430774
325704347767799808	790655993809338398	798617001685024808	Forgotten Sounds - Samurai	Playing	YouTube Music	f	M1ST1K	1626555010631	\N
459713629441490945	356875570916753438	\N	\N	Playing	Minecraft	f	\N	1626555036218	\N
281381884460662785	\N	spotify:ab67616d0000b273bce53a924b756cbaf8aa245c	Invaders Must Die	Listening	Spotify	t	The Prodigy	1626555177215	1626555472241
325704347767799808	790655993809338398	798617001685024808	Forgotten Sounds - Samurai	Playing	YouTube Music	f	M1ST1K	1626555215026	\N
325704347767799808	790655993809338398	798617001685024808	Infinite	Playing	YouTube Music	f	Habstrakt	1626555215243	\N
403571252402585601	445956193924546560	446301881636225042	in MENU	Playing	Rainbow Six Siege	f	\N	1626554675889	\N
223666520943886336	463097721130188830	513734690272968717	When They Ask If You Can Mow A Small Forest	Playing	YouTube	f	Copper Creek Cuts Lawn Care	1626554708953	1626554910000
325704347767799808	790655993809338398	798617001685024808	MC Thunder II (Dancing Like a Ninja)	Playing	YouTube Music	f	Eskimo Callboy	1626554769995	\N
325704347767799808	790655993809338398	798617001685024808	Warning Signs	Playing	YouTube Music	f	Hex Cougar	1626554770309	1626555003309
206955935229280256	\N	\N	\N	Playing	%help || GC: 108048 || UC: 128718 || VC: 4 || Version: 5.9.0	f	\N	1626554775308	\N
325704347767799808	790655993809338398	798617001685024808	Warning Signs	Playing	YouTube Music	f	Hex Cougar	1626554776335	\N
281381884460662785	\N	\N	\N	Custom	Custom Status	f	Я….жду ответа, больше надежд нету. Скоро….кончится лето. Это….	1626554871322	\N
403571252402585601	\N	spotify:ab67616d0000b273322adabca0b652da6ad1cdcc	Chromosom	Listening	Spotify	t	RAF Camora	1626554782858	1626554905860
403571252402585601	445956193924546560	446301881636225042	in MENU	Playing	Rainbow Six Siege	f	\N	1626554883044	\N
403571252402585601	445956193924546560	446301881636225042	in MENU	Playing	Rainbow Six Siege	f	\N	1626554883151	\N
403571252402585601	445956193924546560	446301881636225042	Looking for RANKED match	Playing	Rainbow Six Siege	f	\N	1626554900453	\N
403571252402585601	\N	\N	\N	Custom	Custom Status	f	\N	1626554930955	\N
403571252402585601	\N	\N	\N	Custom	Custom Status	f	\N	1626554945496	\N
403571252402585601	\N	\N	\N	Custom	Custom Status	f	\N	1626554950110	\N
403571252402585601	\N	\N	\N	Custom	Custom Status	f	\N	1626554954098	\N
403571252402585601	\N	\N	\N	Custom	Custom Status	f	\N	1626554954135	\N
434794201075417101	\N	\N	\N	Custom	Custom Status	f	deer drip bottom text	1626555002123	\N
459713629441490945	\N	\N	\N	Custom	Custom Status	f	1:1	1626555036837	\N
403571252402585601	445956193924546560	446301881636225042	in MENU	Playing	Rainbow Six Siege	f	\N	1626555048601	\N
272411073842511873	\N	\N	\N	Custom	Custom Status	f	Deal with stuff be on	1626555081895	\N
325704347767799808	790655993809338398	798617001685024808	Forgotten Sounds - Samurai	Playing	YouTube Music	f	M1ST1K	1626555215027	\N
223666520943886336	463097721130188830	513734690272968717	When They Ask If You Can Mow A Small Forest	Playing	YouTube	f	Copper Creek Cuts Lawn Care	1626555216661	\N
325704347767799808	790655993809338398	798617001685024808	Infinite	Playing	YouTube Music	f	Habstrakt	1626555215371	1626555449371
403571252402585601	\N	spotify:ab67616d0000b273322adabca0b652da6ad1cdcc	Realität	Listening	Spotify	t	RAF Camora	1626554674874	1626554859086
459713629441490945	\N	\N	\N	Custom	Custom Status	f	1:1	1626554716121	\N
325704347767799808	790655993809338398	798617001685024808	MC Thunder II (Dancing Like a Ninja)	Playing	YouTube Music	f	Eskimo Callboy	1626554769997	\N
325704347767799808	790655993809338398	798617001685024808	Warning Signs	Playing	YouTube Music	f	Hex Cougar	1626554770500	\N
403571252402585601	\N	\N	\N	Custom	Custom Status	f	\N	1626554802865	\N
403571252402585601	\N	\N	\N	Custom	Custom Status	f	\N	1626554803775	\N
403571252402585601	\N	\N	\N	Custom	Custom Status	f	\N	1626554812069	\N
403571252402585601	\N	\N	\N	Custom	Custom Status	f	\N	1626554857541	\N
403571252402585601	\N	\N	\N	Custom	Custom Status	f	\N	1626554858149	\N
403571252402585601	\N	\N	\N	Custom	Custom Status	f	\N	1626554858968	\N
403571252402585601	445956193924546560	446301881636225042	in MENU	Playing	Rainbow Six Siege	f	\N	1626554877518	\N
325704347767799808	790655993809338398	798617001685024808	Warning Signs	Playing	YouTube Music	f	Hex Cougar	1626555004174	\N
403571252402585601	\N	spotify:ab67616d0000b273322adabca0b652da6ad1cdcc	Intro	Listening	Spotify	t	RAF Camora	1626555047566	1626555153349
223666520943886336	463097721130188830	513734690272968717	When They Ask If You Can Mow A Small Forest	Playing	YouTube	f	Copper Creek Cuts Lawn Care	1626555092337	\N
325704347767799808	790655993809338398	798617001685024808	Infinite	Playing	YouTube Music	f	Habstrakt	1626555215061	1626555449061
459713629441490945	\N	\N	\N	Custom	Custom Status	f	1:1	1626555246244	\N
223666520943886336	463097721130188830	513734690272968717	When They Ask If You Can Mow A Small Forest	Playing	YouTube	f	Copper Creek Cuts Lawn Care	1626554688986	1626554910000
223666520943886336	463097721130188830	513734690272968717	When They Ask If You Can Mow A Small Forest	Playing	YouTube	f	Copper Creek Cuts Lawn Care	1626554730252	1626554910000
403571252402585601	\N	\N	\N	Custom	Custom Status	f	\N	1626554781759	\N
403571252402585601	\N	\N	\N	Custom	Custom Status	f	\N	1626554877504	\N
403571252402585601	\N	\N	\N	Custom	Custom Status	f	\N	1626554883032	\N
403571252402585601	\N	spotify:ab67616d0000b273322adabca0b652da6ad1cdcc	Generation X	Listening	Spotify	t	RAF Camora	1626554882154	1626555048474
325704347767799808	790655993809338398	798617001685024808	Forgotten Sounds - Samurai	Playing	YouTube Music	f	M1ST1K	1626555010632	\N
403571252402585601	445956193924546560	446301881636225042	in MENU	Playing	Rainbow Six Siege	f	\N	1626555106889	\N
459713629441490945	\N	\N	\N	Custom	Custom Status	f	1:1	1626555126130	\N
281381884460662785	\N	\N	\N	Custom	Custom Status	f	Я….жду ответа, больше надежд нету. Скоро….кончится лето. Это….	1626555177330	\N
325704347767799808	790655993809338398	798617001685024808	Infinite	Playing	YouTube Music	f	Habstrakt	1626555215244	\N
223666520943886336	382624125287399424	848636446137909298	In the menus	Playing	FiveM	f	\N	1626555216000	\N
223666520943886336	463097721130188830	513734690272968717	When They Ask If You Can Mow A Small Forest	Playing	YouTube	f	Copper Creek Cuts Lawn Care	1626554708549	1626554909000
223666520943886336	463097721130188830	513734690272968717	When They Ask If You Can Mow A Small Forest	Playing	YouTube	f	Copper Creek Cuts Lawn Care	1626554748069	\N
191594115907977225	\N	spotify:ab67616d0000b273641b5951708827ba3fbc8863	Brother (SLDGHMR Remix)	Listening	Spotify	t	Stuck in the Sound	1626554762284	1626554993314
223666520943886336	612704158826496028	612710277800001584	Searching for fivem	Playing	Google	f	Ungefähr 6.950.000 Ergebnisse (0,37 Sekunden)	1626554761000	\N
403571252402585601	445956193924546560	446301881636225042	in MENU	Playing	Rainbow Six Siege	f	\N	1626554781769	\N
325704347767799808	790655993809338398	798617001685024808	Warning Signs	Playing	YouTube Music	f	Hex Cougar	1626554771185	1626555004185
403571252402585601	445956193924546560	446301881636225042	in MENU	Playing	Rainbow Six Siege	f	\N	1626554802876	\N
403571252402585601	445956193924546560	446301881636225042	in MENU	Playing	Rainbow Six Siege	f	\N	1626554803792	\N
403571252402585601	445956193924546560	446301881636225042	in MENU	Playing	Rainbow Six Siege	f	\N	1626554812083	\N
403571252402585601	445956193924546560	446301881636225042	in MENU	Playing	Rainbow Six Siege	f	\N	1626554857556	\N
403571252402585601	445956193924546560	446301881636225042	in MENU	Playing	Rainbow Six Siege	f	\N	1626554858163	\N
403571252402585601	\N	\N	\N	Custom	Custom Status	f	\N	1626554883137	\N
403571252402585601	\N	\N	\N	Custom	Custom Status	f	\N	1626554900440	\N
223666520943886336	382624125287399424	848636446137909298	In the menus	Playing	FiveM	f	\N	1626554873000	\N
325704347767799808	790655993809338398	798617001685024808	Forgotten Sounds - Samurai	Playing	YouTube Music	f	M1ST1K	1626555004530	1626555213530
202407278618476545	\N	\N	\N	Custom	Custom Status	f	defekt aber nett	1626555007434	\N
325704347767799808	790655993809338398	798617001685024808	Forgotten Sounds - Samurai	Playing	YouTube Music	f	M1ST1K	1626555005008	1626555214008
403571252402585601	\N	\N	\N	Custom	Custom Status	f	\N	1626555048582	\N
272411073842511873	\N	\N	\N	Custom	Custom Status	f	Deal with stuff be on	1626555081915	\N
403571252402585601	\N	\N	\N	Custom	Custom Status	f	\N	1626555106882	\N
223666520943886336	463097721130188830	513734690272968717	When They Ask If You Can Mow A Small Forest	Playing	YouTube	f	Copper Creek Cuts Lawn Care	1626555240931	\N
223666520943886336	694907641662537798	770758579543736361	RSM FREEROAM #1 | NOT RP | FREEROAM/DRIFT/RACE | 250+ Custom NPCs | 700+ Custom Vehicles | 40+ Custom Weapons ...	Playing	RSM Freeroam	f	On foot near Vespucci Blvd	1626555474000	\N
281381884460662785	\N	\N	\N	Custom	Custom Status	f	Я….жду ответа, больше надежд нету. Скоро….кончится лето. Это….	1626555614889	\N
325704347767799808	790655993809338398	798617001685024808	Computa - Reconnect	Playing	YouTube Music	f	The Dub Rebellion	1626555672174	\N
325704347767799808	790655993809338398	798617001685024808	Computa - Reconnect	Playing	YouTube Music	f	The Dub Rebellion	1626555672187	\N
223666520943886336	463097721130188830	513734690272968717	When They Ask If You Can Mow A Small Forest	Playing	YouTube	f	Copper Creek Cuts Lawn Care	1626555701106	\N
223666520943886336	463097721130188830	513734690272968717	When They Ask If You Can Mow A Small Forest	Playing	YouTube	f	Copper Creek Cuts Lawn Care	1626555721074	\N
325704347767799808	790655993809338398	798617001685024808	Computa - Reconnect	Playing	YouTube Music	f	The Dub Rebellion	1626555671874	1626555930874
223666520943886336	463097721130188830	513734690272968717	When They Ask If You Can Mow A Small Forest	Playing	YouTube	f	Copper Creek Cuts Lawn Care	1626555761112	\N
223666520943886336	463097721130188830	513734690272968717	When They Ask If You Can Mow A Small Forest	Playing	YouTube	f	Copper Creek Cuts Lawn Care	1626555781185	\N
223666520943886336	463097721130188830	513734690272968717	When They Ask If You Can Mow A Small Forest	Playing	YouTube	f	Copper Creek Cuts Lawn Care	1626555831257	\N
223666520943886336	463097721130188830	513734690272968717	When They Ask If You Can Mow A Small Forest	Playing	YouTube	f	Copper Creek Cuts Lawn Care	1626555871213	\N
223666520943886336	463097721130188830	513734690272968717	When They Ask If You Can Mow A Small Forest	Playing	YouTube	f	Copper Creek Cuts Lawn Care	1626555901297	\N
325704347767799808	790655993809338398	798617001685024808	Computa - Reconnect	Playing	YouTube Music	f	The Dub Rebellion	1626555931714	\N
223666520943886336	463097721130188830	513734690272968717	When They Ask If You Can Mow A Small Forest	Playing	YouTube	f	Copper Creek Cuts Lawn Care	1626555941336	\N
223666520943886336	463097721130188830	513734690272968717	When They Ask If You Can Mow A Small Forest	Playing	YouTube	f	Copper Creek Cuts Lawn Care	1626555981274	\N
223666520943886336	463097721130188830	513734690272968717	When They Ask If You Can Mow A Small Forest	Playing	YouTube	f	Copper Creek Cuts Lawn Care	1626556001445	\N
223666520943886336	463097721130188830	513734690272968717	When They Ask If You Can Mow A Small Forest	Playing	YouTube	f	Copper Creek Cuts Lawn Care	1626556051313	\N
223666520943886336	463097721130188830	513734690272968717	When They Ask If You Can Mow A Small Forest	Playing	YouTube	f	Copper Creek Cuts Lawn Care	1626556091454	\N
223666520943886336	463097721130188830	513734690272968717	When They Ask If You Can Mow A Small Forest	Playing	YouTube	f	Copper Creek Cuts Lawn Care	1626556111297	\N
202407278618476545	\N	spotify:ab67616d0000b2734e0cbdda687814ea9674085f	Østavind	Listening	Spotify	t	Kjell Braaten	1626556159490	1626556353323
223666520943886336	463097721130188830	513734690272968717	When They Ask If You Can Mow A Small Forest	Playing	YouTube	f	Copper Creek Cuts Lawn Care	1626556171327	\N
272411073842511873	\N	\N	\N	Custom	Custom Status	f	Deal with stuff be on	1626556178286	\N
325704347767799808	790655993809338398	798617001685024808	Innocence	Playing	YouTube Music	f	Mewone!	1626556188434	\N
223666520943886336	463097721130188830	513734690272968717	When They Ask If You Can Mow A Small Forest	Playing	YouTube	f	Copper Creek Cuts Lawn Care	1626556261335	\N
223666520943886336	463097721130188830	513734690272968717	When They Ask If You Can Mow A Small Forest	Playing	YouTube	f	Copper Creek Cuts Lawn Care	1626556301482	\N
223666520943886336	463097721130188830	513734690272968717	When They Ask If You Can Mow A Small Forest	Playing	YouTube	f	Copper Creek Cuts Lawn Care	1626556351549	\N
223666520943886336	463097721130188830	513734690272968717	When They Ask If You Can Mow A Small Forest	Playing	YouTube	f	Copper Creek Cuts Lawn Care	1626556371517	\N
223666520943886336	463097721130188830	513734690272968717	When They Ask If You Can Mow A Small Forest	Playing	YouTube	f	Copper Creek Cuts Lawn Care	1626556391491	\N
325704347767799808	790655993809338398	798617001685024808	Innocence	Playing	YouTube Music	f	Mewone!	1626556415369	\N
325704347767799808	790655993809338398	798617001685024808	Das Land der Vollidioten	Playing	YouTube Music	f	Frei.Wild	1626556415927	1626556641927
223666520943886336	463097721130188830	513734690272968717	When They Ask If You Can Mow A Small Forest	Playing	YouTube	f	Copper Creek Cuts Lawn Care	1626556431525	\N
272411073842511873	\N	\N	\N	Custom	Custom Status	f	Deal with stuff be on	1626556440743	\N
223666520943886336	463097721130188830	513734690272968717	When They Ask If You Can Mow A Small Forest	Playing	YouTube	f	Copper Creek Cuts Lawn Care	1626556471561	\N
223666520943886336	463097721130188830	513734690272968717	When They Ask If You Can Mow A Small Forest	Playing	YouTube	f	Copper Creek Cuts Lawn Care	1626556521654	\N
223666520943886336	463097721130188830	513734690272968717	When They Ask If You Can Mow A Small Forest	Playing	YouTube	f	Copper Creek Cuts Lawn Care	1626556561571	\N
223666520943886336	463097721130188830	513734690272968717	When They Ask If You Can Mow A Small Forest	Playing	YouTube	f	Copper Creek Cuts Lawn Care	1626556611486	\N
325704347767799808	790655993809338398	798617001685024808	Kein Mitleid	Playing	YouTube Music	f	Eisbrecher	1626556641773	1626556971773
325704347767799808	790655993809338398	798617001685024808	Kein Mitleid	Playing	YouTube Music	f	Eisbrecher	1626556642390	1626556972390
223666520943886336	463097721130188830	513734690272968717	When They Ask If You Can Mow A Small Forest	Playing	YouTube	f	Copper Creek Cuts Lawn Care	1626556671549	\N
223666520943886336	463097721130188830	513734690272968717	When They Ask If You Can Mow A Small Forest	Playing	YouTube	f	Copper Creek Cuts Lawn Care	1626556731657	\N
223666520943886336	463097721130188830	513734690272968717	When They Ask If You Can Mow A Small Forest	Playing	YouTube	f	Copper Creek Cuts Lawn Care	1626556771695	\N
223666520943886336	463097721130188830	513734690272968717	When They Ask If You Can Mow A Small Forest	Playing	YouTube	f	Copper Creek Cuts Lawn Care	1626556821769	\N
411656316814098441	\N	\N	\N	Custom	Custom Status	f	snowfox 😳	1626556840300	\N
223666520943886336	463097721130188830	513734690272968717	When They Ask If You Can Mow A Small Forest	Playing	YouTube	f	Copper Creek Cuts Lawn Care	1626556921711	\N
223666520943886336	463097721130188830	513734690272968717	When They Ask If You Can Mow A Small Forest	Playing	YouTube	f	Copper Creek Cuts Lawn Care	1626556971786	\N
325704347767799808	790655993809338398	798617001685024808	Chasm	Playing	YouTube Music	f	Audiovista	1626556973835	\N
411656316814098441	\N	\N	\N	Custom	Custom Status	f	snowfox 😳	1626556995153	\N
281381884460662785	\N	\N	\N	Custom	Custom Status	f	Я….жду ответа, больше надежд нету. Скоро….кончится лето. Это….	1626557008040	\N
271659253486452736	\N	\N	\N	Custom	Custom Status	f	Whoa, I got two hands! Brujo, I need two beers!	1626557025150	\N
223666520943886336	463097721130188830	513734690272968717	When They Ask If You Can Mow A Small Forest	Playing	YouTube	f	Copper Creek Cuts Lawn Care	1626557041723	\N
371656565607890964	\N	\N	\N	Playing	Squad	f	\N	1626557094305	\N
223666520943886336	463097721130188830	513734690272968717	When They Ask If You Can Mow A Small Forest	Playing	YouTube	f	Copper Creek Cuts Lawn Care	1626557101730	\N
223666520943886336	463097721130188830	513734690272968717	When They Ask If You Can Mow A Small Forest	Playing	YouTube	f	Copper Creek Cuts Lawn Care	1626555570990	\N
325704347767799808	802958789555781663	802961390007615488	BLOOD GOD DROPS- GET YOUR EU DROPS HERE NOW BAJS. DONT WASTE A MOMENT. WANT $1000? NEED TO IMPRESS YOUR MOM? ENTER MY !CONTEST N	Playing	Twitch	f	cyr	1626555576000	\N
325704347767799808	790655993809338398	798617001685024808	OK	Playing	YouTube Music	f	8 Graves	1626555450418	1626555670418
281381884460662785	\N	spotify:ab67616d0000b27360cf7c8dd93815ccd6cb4830	Can You Feel My Heart	Listening	Spotify	t	Bring Me The Horizon	1626555614745	1626555842891
223666520943886336	463097721130188830	513734690272968717	When They Ask If You Can Mow A Small Forest	Playing	YouTube	f	Copper Creek Cuts Lawn Care	1626555621036	\N
223666520943886336	463097721130188830	513734690272968717	When They Ask If You Can Mow A Small Forest	Playing	YouTube	f	Copper Creek Cuts Lawn Care	1626555630968	\N
223666520943886336	463097721130188830	513734690272968717	When They Ask If You Can Mow A Small Forest	Playing	YouTube	f	Copper Creek Cuts Lawn Care	1626555651040	\N
223666520943886336	463097721130188830	513734690272968717	When They Ask If You Can Mow A Small Forest	Playing	YouTube	f	Copper Creek Cuts Lawn Care	1626555691071	\N
411656316814098441	\N	\N	\N	Custom	Custom Status	f	snowfox 😳	1626555713103	\N
223666520943886336	463097721130188830	513734690272968717	When They Ask If You Can Mow A Small Forest	Playing	YouTube	f	Copper Creek Cuts Lawn Care	1626555731622	\N
223666520943886336	463097721130188830	513734690272968717	When They Ask If You Can Mow A Small Forest	Playing	YouTube	f	Copper Creek Cuts Lawn Care	1626555751079	\N
152104114753372160	363413310474813450	\N	\N	Playing	Wizard101	f	\N	1626555774184	\N
223666520943886336	463097721130188830	513734690272968717	When They Ask If You Can Mow A Small Forest	Playing	YouTube	f	Copper Creek Cuts Lawn Care	1626555811289	\N
223666520943886336	463097721130188830	513734690272968717	When They Ask If You Can Mow A Small Forest	Playing	YouTube	f	Copper Creek Cuts Lawn Care	1626555841192	\N
223666520943886336	463097721130188830	513734690272968717	When They Ask If You Can Mow A Small Forest	Playing	YouTube	f	Copper Creek Cuts Lawn Care	1626555861260	\N
281381884460662785	\N	\N	\N	Custom	Custom Status	f	Я….жду ответа, больше надежд нету. Скоро….кончится лето. Это….	1626555888804	\N
223666520943886336	463097721130188830	513734690272968717	When They Ask If You Can Mow A Small Forest	Playing	YouTube	f	Copper Creek Cuts Lawn Care	1626555891265	\N
202407278618476545	\N	spotify:ab67616d0000b273745265e35e7eeccf123ade76	Leaves of Yggdrasil	Listening	Spotify	t	Myrkur	1626555919128	1626556159465
223666520943886336	463097721130188830	513734690272968717	When They Ask If You Can Mow A Small Forest	Playing	YouTube	f	Copper Creek Cuts Lawn Care	1626555961304	\N
223666520943886336	463097721130188830	513734690272968717	When They Ask If You Can Mow A Small Forest	Playing	YouTube	f	Copper Creek Cuts Lawn Care	1626555971340	\N
223666520943886336	463097721130188830	513734690272968717	When They Ask If You Can Mow A Small Forest	Playing	YouTube	f	Copper Creek Cuts Lawn Care	1626556041278	\N
223666520943886336	463097721130188830	513734690272968717	When They Ask If You Can Mow A Small Forest	Playing	YouTube	f	Copper Creek Cuts Lawn Care	1626556081316	\N
411656316814098441	\N	\N	\N	Custom	Custom Status	f	snowfox 😳	1626556111125	\N
223666520943886336	463097721130188830	513734690272968717	When They Ask If You Can Mow A Small Forest	Playing	YouTube	f	Copper Creek Cuts Lawn Care	1626556151304	\N
223666520943886336	463097721130188830	513734690272968717	When They Ask If You Can Mow A Small Forest	Playing	YouTube	f	Copper Creek Cuts Lawn Care	1626556161395	\N
223666520943886336	463097721130188830	513734690272968717	When They Ask If You Can Mow A Small Forest	Playing	YouTube	f	Copper Creek Cuts Lawn Care	1626556181463	\N
325704347767799808	790655993809338398	798617001685024808	Foxhunt - The Undead [Tasty Release]	Playing	YouTube Music	f	Tasty	1626556188026	\N
325704347767799808	790655993809338398	798617001685024808	Innocence	Playing	YouTube Music	f	Mewone!	1626556188433	\N
325704347767799808	790655993809338398	798617001685024808	Innocence	Playing	YouTube Music	f	Mewone!	1626556188382	1626556414382
223666520943886336	463097721130188830	513734690272968717	When They Ask If You Can Mow A Small Forest	Playing	YouTube	f	Copper Creek Cuts Lawn Care	1626556191400	\N
223666520943886336	463097721130188830	513734690272968717	When They Ask If You Can Mow A Small Forest	Playing	YouTube	f	Copper Creek Cuts Lawn Care	1626556241470	\N
223666520943886336	463097721130188830	513734690272968717	When They Ask If You Can Mow A Small Forest	Playing	YouTube	f	Copper Creek Cuts Lawn Care	1626556281508	\N
223666520943886336	463097721130188830	513734690272968717	When They Ask If You Can Mow A Small Forest	Playing	YouTube	f	Copper Creek Cuts Lawn Care	1626556331479	\N
202407278618476545	\N	\N	\N	Custom	Custom Status	f	defekt aber nett	1626556353596	\N
223666520943886336	463097721130188830	513734690272968717	When They Ask If You Can Mow A Small Forest	Playing	YouTube	f	Copper Creek Cuts Lawn Care	1626556361482	\N
411656316814098441	\N	\N	\N	Custom	Custom Status	f	snowfox 😳	1626556415358	\N
325704347767799808	790655993809338398	798617001685024808	Das Land der Vollidioten	Playing	YouTube Music	f	Frei.Wild	1626556415916	1626556641916
223666520943886336	463097721130188830	513734690272968717	When They Ask If You Can Mow A Small Forest	Playing	YouTube	f	Copper Creek Cuts Lawn Care	1626556421593	\N
223666520943886336	463097721130188830	513734690272968717	When They Ask If You Can Mow A Small Forest	Playing	YouTube	f	Copper Creek Cuts Lawn Care	1626556461527	\N
411656316814098441	\N	\N	\N	Custom	Custom Status	f	snowfox 😳	1626556507910	\N
223666520943886336	463097721130188830	513734690272968717	When They Ask If You Can Mow A Small Forest	Playing	YouTube	f	Copper Creek Cuts Lawn Care	1626556531464	\N
223666520943886336	463097721130188830	513734690272968717	When They Ask If You Can Mow A Small Forest	Playing	YouTube	f	Copper Creek Cuts Lawn Care	1626556541513	\N
223666520943886336	463097721130188830	513734690272968717	When They Ask If You Can Mow A Small Forest	Playing	YouTube	f	Copper Creek Cuts Lawn Care	1626556591574	\N
325704347767799808	790655993809338398	798617001685024808	Kein Mitleid	Playing	YouTube Music	f	Eisbrecher	1626556642166	\N
325704347767799808	790655993809338398	798617001685024808	Kein Mitleid	Playing	YouTube Music	f	Eisbrecher	1626556642385	1626556972385
223666520943886336	463097721130188830	513734690272968717	When They Ask If You Can Mow A Small Forest	Playing	YouTube	f	Copper Creek Cuts Lawn Care	1626556691721	\N
272411073842511873	\N	\N	\N	Custom	Custom Status	f	Deal with stuff be on	1626556715999	\N
223666520943886336	463097721130188830	513734690272968717	When They Ask If You Can Mow A Small Forest	Playing	YouTube	f	Copper Creek Cuts Lawn Care	1626556741692	\N
223666520943886336	463097721130188830	513734690272968717	When They Ask If You Can Mow A Small Forest	Playing	YouTube	f	Copper Creek Cuts Lawn Care	1626556751727	\N
223666520943886336	463097721130188830	513734690272968717	When They Ask If You Can Mow A Small Forest	Playing	YouTube	f	Copper Creek Cuts Lawn Care	1626556801698	\N
223666520943886336	463097721130188830	513734690272968717	When They Ask If You Can Mow A Small Forest	Playing	YouTube	f	Copper Creek Cuts Lawn Care	1626556861710	\N
223666520943886336	463097721130188830	513734690272968717	When They Ask If You Can Mow A Small Forest	Playing	YouTube	f	Copper Creek Cuts Lawn Care	1626556891707	\N
223666520943886336	463097721130188830	513734690272968717	When They Ask If You Can Mow A Small Forest	Playing	YouTube	f	Copper Creek Cuts Lawn Care	1626555580896	\N
223666520943886336	463097721130188830	513734690272968717	When They Ask If You Can Mow A Small Forest	Playing	YouTube	f	Copper Creek Cuts Lawn Care	1626555590931	\N
223666520943886336	463097721130188830	513734690272968717	When They Ask If You Can Mow A Small Forest	Playing	YouTube	f	Copper Creek Cuts Lawn Care	1626555600961	\N
223666520943886336	463097721130188830	513734690272968717	When They Ask If You Can Mow A Small Forest	Playing	YouTube	f	Copper Creek Cuts Lawn Care	1626555610997	\N
206955935229280256	\N	\N	\N	Playing	%help || GC: 108050 || UC: 130465 || VC: 5 || Version: 5.9.0	f	\N	1626555635569	\N
223666520943886336	463097721130188830	513734690272968717	When They Ask If You Can Mow A Small Forest	Playing	YouTube	f	Copper Creek Cuts Lawn Care	1626555641100	\N
325704347767799808	802958789555781663	802961390007615488	Betrachtet Drops Inventar...	Playing	Twitch	f	\N	1626555642000	\N
223666520943886336	463097721130188830	513734690272968717	When They Ask If You Can Mow A Small Forest	Playing	YouTube	f	Copper Creek Cuts Lawn Care	1626555661068	\N
325704347767799808	790655993809338398	798617001685024808	Computa - Reconnect	Playing	YouTube Music	f	The Dub Rebellion	1626555671445	1626555930445
202407278618476545	\N	spotify:ab67616d0000b273248316f770aef04c725cc84b	Appalachia	Listening	Spotify	t	Osi And The Jupiter	1626555680088	1626555919137
223666520943886336	463097721130188830	513734690272968717	When They Ask If You Can Mow A Small Forest	Playing	YouTube	f	Copper Creek Cuts Lawn Care	1626555711141	\N
223666520943886336	463097721130188830	513734690272968717	When They Ask If You Can Mow A Small Forest	Playing	YouTube	f	Copper Creek Cuts Lawn Care	1626555741144	\N
223666520943886336	463097721130188830	513734690272968717	When They Ask If You Can Mow A Small Forest	Playing	YouTube	f	Copper Creek Cuts Lawn Care	1626555791115	\N
223666520943886336	463097721130188830	513734690272968717	When They Ask If You Can Mow A Small Forest	Playing	YouTube	f	Copper Creek Cuts Lawn Care	1626555821228	\N
223666520943886336	463097721130188830	513734690272968717	When They Ask If You Can Mow A Small Forest	Playing	YouTube	f	Copper Creek Cuts Lawn Care	1626555851338	\N
202407278618476545	\N	\N	\N	Custom	Custom Status	f	defekt aber nett	1626555919420	\N
223666520943886336	463097721130188830	513734690272968717	When They Ask If You Can Mow A Small Forest	Playing	YouTube	f	Copper Creek Cuts Lawn Care	1626555921266	\N
223666520943886336	463097721130188830	513734690272968717	When They Ask If You Can Mow A Small Forest	Playing	YouTube	f	Copper Creek Cuts Lawn Care	1626555951372	\N
223666520943886336	463097721130188830	513734690272968717	When They Ask If You Can Mow A Small Forest	Playing	YouTube	f	Copper Creek Cuts Lawn Care	1626555991307	\N
223666520943886336	463097721130188830	513734690272968717	When They Ask If You Can Mow A Small Forest	Playing	YouTube	f	Copper Creek Cuts Lawn Care	1626556011377	\N
223666520943886336	463097721130188830	513734690272968717	When They Ask If You Can Mow A Small Forest	Playing	YouTube	f	Copper Creek Cuts Lawn Care	1626556061451	\N
223666520943886336	463097721130188830	513734690272968717	When They Ask If You Can Mow A Small Forest	Playing	YouTube	f	Copper Creek Cuts Lawn Care	1626556101489	\N
223666520943886336	463097721130188830	513734690272968717	When They Ask If You Can Mow A Small Forest	Playing	YouTube	f	Copper Creek Cuts Lawn Care	1626556121355	\N
223666520943886336	463097721130188830	513734690272968717	When They Ask If You Can Mow A Small Forest	Playing	YouTube	f	Copper Creek Cuts Lawn Care	1626556131492	\N
202407278618476545	\N	\N	\N	Custom	Custom Status	f	defekt aber nett	1626556159751	\N
223666520943886336	463097721130188830	513734690272968717	When They Ask If You Can Mow A Small Forest	Playing	YouTube	f	Copper Creek Cuts Lawn Care	1626556201432	\N
223666520943886336	463097721130188830	513734690272968717	When They Ask If You Can Mow A Small Forest	Playing	YouTube	f	Copper Creek Cuts Lawn Care	1626556211364	\N
223666520943886336	463097721130188830	513734690272968717	When They Ask If You Can Mow A Small Forest	Playing	YouTube	f	Copper Creek Cuts Lawn Care	1626556251505	\N
223666520943886336	463097721130188830	513734690272968717	When They Ask If You Can Mow A Small Forest	Playing	YouTube	f	Copper Creek Cuts Lawn Care	1626556291443	\N
223666520943886336	463097721130188830	513734690272968717	When They Ask If You Can Mow A Small Forest	Playing	YouTube	f	Copper Creek Cuts Lawn Care	1626556341413	\N
223666520943886336	463097721130188830	513734690272968717	When They Ask If You Can Mow A Small Forest	Playing	YouTube	f	Copper Creek Cuts Lawn Care	1626556381449	\N
325704347767799808	790655993809338398	798617001685024808	Innocence	Playing	YouTube Music	f	Mewone!	1626556415383	\N
325704347767799808	790655993809338398	798617001685024808	Das Land der Vollidioten	Playing	YouTube Music	f	Frei.Wild	1626556415173	1626556641173
206955935229280256	\N	\N	\N	Playing	%help || GC: 108049 || UC: 132132 || VC: 4 || Version: 5.9.0	f	\N	1626556446368	\N
223666520943886336	463097721130188830	513734690272968717	When They Ask If You Can Mow A Small Forest	Playing	YouTube	f	Copper Creek Cuts Lawn Care	1626556491529	\N
223666520943886336	463097721130188830	513734690272968717	When They Ask If You Can Mow A Small Forest	Playing	YouTube	f	Copper Creek Cuts Lawn Care	1626556501564	\N
223666520943886336	463097721130188830	513734690272968717	When They Ask If You Can Mow A Small Forest	Playing	YouTube	f	Copper Creek Cuts Lawn Care	1626556551644	\N
223666520943886336	463097721130188830	513734690272968717	When They Ask If You Can Mow A Small Forest	Playing	YouTube	f	Copper Creek Cuts Lawn Care	1626556601611	\N
325704347767799808	790655993809338398	798617001685024808	Das Land der Vollidioten	Playing	YouTube Music	f	Frei.Wild	1626556641856	\N
223666520943886336	463097721130188830	513734690272968717	When They Ask If You Can Mow A Small Forest	Playing	YouTube	f	Copper Creek Cuts Lawn Care	1626556651581	\N
202407278618476545	\N	spotify:ab67616d0000b273986184e18323ff0ebb5dad3b	Helvegen	Listening	Spotify	t	Wardruna	1626556672530	1626557104396
223666520943886336	463097721130188830	513734690272968717	When They Ask If You Can Mow A Small Forest	Playing	YouTube	f	Copper Creek Cuts Lawn Care	1626556681687	\N
223666520943886336	463097721130188830	513734690272968717	When They Ask If You Can Mow A Small Forest	Playing	YouTube	f	Copper Creek Cuts Lawn Care	1626556721930	\N
223666520943886336	463097721130188830	513734690272968717	When They Ask If You Can Mow A Small Forest	Playing	YouTube	f	Copper Creek Cuts Lawn Care	1626556781832	\N
223666520943886336	463097721130188830	513734690272968717	When They Ask If You Can Mow A Small Forest	Playing	YouTube	f	Copper Creek Cuts Lawn Care	1626556831602	\N
223666520943886336	463097721130188830	513734690272968717	When They Ask If You Can Mow A Small Forest	Playing	YouTube	f	Copper Creek Cuts Lawn Care	1626556841738	\N
223666520943886336	463097721130188830	513734690272968717	When They Ask If You Can Mow A Small Forest	Playing	YouTube	f	Copper Creek Cuts Lawn Care	1626556871950	\N
223666520943886336	463097721130188830	513734690272968717	When They Ask If You Can Mow A Small Forest	Playing	YouTube	f	Copper Creek Cuts Lawn Care	1626556931746	\N
325704347767799808	790655993809338398	798617001685024808	Kein Mitleid	Playing	YouTube Music	f	Eisbrecher	1626556972432	\N
325704347767799808	790655993809338398	798617001685024808	Chasm	Playing	YouTube Music	f	Audiovista	1626556973836	\N
271659253486452736	\N	\N	\N	Playing	Total War: WARHAMMER II	f	\N	1626557024780	\N
223666520943886336	463097721130188830	513734690272968717	When They Ask If You Can Mow A Small Forest	Playing	YouTube	f	Copper Creek Cuts Lawn Care	1626555671004	\N
325704347767799808	790655993809338398	798617001685024808	OK	Playing	YouTube Music	f	8 Graves	1626555671221	\N
325704347767799808	790655993809338398	798617001685024808	OK	Playing	YouTube Music	f	8 Graves	1626555671248	\N
325704347767799808	790655993809338398	798617001685024808	Computa - Reconnect	Playing	YouTube Music	f	The Dub Rebellion	1626555671623	\N
202407278618476545	\N	\N	\N	Custom	Custom Status	f	defekt aber nett	1626555680316	\N
223666520943886336	463097721130188830	513734690272968717	When They Ask If You Can Mow A Small Forest	Playing	YouTube	f	Copper Creek Cuts Lawn Care	1626555681138	\N
411656316814098441	\N	\N	\N	Custom	Custom Status	f	snowfox 😳	1626555738889	\N
223666520943886336	463097721130188830	513734690272968717	When They Ask If You Can Mow A Small Forest	Playing	YouTube	f	Copper Creek Cuts Lawn Care	1626555771147	\N
281381884460662785	\N	\N	\N	Custom	Custom Status	f	Я….жду ответа, больше надежд нету. Скоро….кончится лето. Это….	1626555793263	\N
223666520943886336	463097721130188830	513734690272968717	When They Ask If You Can Mow A Small Forest	Playing	YouTube	f	Copper Creek Cuts Lawn Care	1626555801253	\N
411656316814098441	\N	\N	\N	Custom	Custom Status	f	snowfox 😳	1626555843746	\N
223666520943886336	463097721130188830	513734690272968717	When They Ask If You Can Mow A Small Forest	Playing	YouTube	f	Copper Creek Cuts Lawn Care	1626555881296	\N
223666520943886336	463097721130188830	513734690272968717	When They Ask If You Can Mow A Small Forest	Playing	YouTube	f	Copper Creek Cuts Lawn Care	1626555911231	\N
411656316814098441	\N	\N	\N	Custom	Custom Status	f	snowfox 😳	1626555919420	\N
223666520943886336	463097721130188830	513734690272968717	When They Ask If You Can Mow A Small Forest	Playing	YouTube	f	Copper Creek Cuts Lawn Care	1626555931301	\N
325704347767799808	790655993809338398	798617001685024808	Foxhunt - The Undead [Tasty Release]	Playing	YouTube Music	f	Tasty	1626555932327	\N
325704347767799808	790655993809338398	798617001685024808	Foxhunt - The Undead [Tasty Release]	Playing	YouTube Music	f	Tasty	1626555932344	\N
325704347767799808	790655993809338398	798617001685024808	Foxhunt - The Undead [Tasty Release]	Playing	YouTube Music	f	Tasty	1626555932090	1626556187090
325704347767799808	790655993809338398	798617001685024808	Foxhunt - The Undead [Tasty Release]	Playing	YouTube Music	f	Tasty	1626555932998	1626556187998
223666520943886336	463097721130188830	513734690272968717	When They Ask If You Can Mow A Small Forest	Playing	YouTube	f	Copper Creek Cuts Lawn Care	1626556021414	\N
223666520943886336	463097721130188830	513734690272968717	When They Ask If You Can Mow A Small Forest	Playing	YouTube	f	Copper Creek Cuts Lawn Care	1626556031345	\N
223666520943886336	463097721130188830	513734690272968717	When They Ask If You Can Mow A Small Forest	Playing	YouTube	f	Copper Creek Cuts Lawn Care	1626556071281	\N
223666520943886336	463097721130188830	513734690272968717	When They Ask If You Can Mow A Small Forest	Playing	YouTube	f	Copper Creek Cuts Lawn Care	1626556141432	\N
272411073842511873	\N	\N	\N	Custom	Custom Status	f	Deal with stuff be on	1626556178344	\N
223666520943886336	463097721130188830	513734690272968717	When They Ask If You Can Mow A Small Forest	Playing	YouTube	f	Copper Creek Cuts Lawn Care	1626556221403	\N
325704347767799808	790655993809338398	798617001685024808	Innocence	Playing	YouTube Music	f	Mewone!	1626556189357	1626556415357
223666520943886336	463097721130188830	513734690272968717	When They Ask If You Can Mow A Small Forest	Playing	YouTube	f	Copper Creek Cuts Lawn Care	1626556231435	\N
223666520943886336	463097721130188830	513734690272968717	When They Ask If You Can Mow A Small Forest	Playing	YouTube	f	Copper Creek Cuts Lawn Care	1626556271472	\N
223666520943886336	463097721130188830	513734690272968717	When They Ask If You Can Mow A Small Forest	Playing	YouTube	f	Copper Creek Cuts Lawn Care	1626556311715	\N
223666520943886336	463097721130188830	513734690272968717	When They Ask If You Can Mow A Small Forest	Playing	YouTube	f	Copper Creek Cuts Lawn Care	1626556321444	\N
202407278618476545	\N	spotify:ab67616d0000b2734428ac807699089c3883ef08	Slow Motion	Listening	Spotify	t	Kalandra	1626556353244	1626556672536
223666520943886336	463097721130188830	513734690272968717	When They Ask If You Can Mow A Small Forest	Playing	YouTube	f	Copper Creek Cuts Lawn Care	1626556401520	\N
223666520943886336	463097721130188830	513734690272968717	When They Ask If You Can Mow A Small Forest	Playing	YouTube	f	Copper Creek Cuts Lawn Care	1626556411453	\N
325704347767799808	790655993809338398	798617001685024808	Das Land der Vollidioten	Playing	YouTube Music	f	Frei.Wild	1626556415430	\N
325704347767799808	790655993809338398	798617001685024808	Das Land der Vollidioten	Playing	YouTube Music	f	Frei.Wild	1626556415563	\N
223666520943886336	463097721130188830	513734690272968717	When They Ask If You Can Mow A Small Forest	Playing	YouTube	f	Copper Creek Cuts Lawn Care	1626556511497	\N
223666520943886336	463097721130188830	513734690272968717	When They Ask If You Can Mow A Small Forest	Playing	YouTube	f	Copper Creek Cuts Lawn Care	1626556571615	\N
223666520943886336	463097721130188830	513734690272968717	When They Ask If You Can Mow A Small Forest	Playing	YouTube	f	Copper Creek Cuts Lawn Care	1626556621679	\N
223666520943886336	463097721130188830	513734690272968717	When They Ask If You Can Mow A Small Forest	Playing	YouTube	f	Copper Creek Cuts Lawn Care	1626556661616	\N
202407278618476545	\N	\N	\N	Custom	Custom Status	f	defekt aber nett	1626556672776	\N
223666520943886336	463097721130188830	513734690272968717	When They Ask If You Can Mow A Small Forest	Playing	YouTube	f	Copper Creek Cuts Lawn Care	1626556761660	\N
223666520943886336	463097721130188830	513734690272968717	When They Ask If You Can Mow A Small Forest	Playing	YouTube	f	Copper Creek Cuts Lawn Care	1626556811734	\N
223666520943886336	463097721130188830	513734690272968717	When They Ask If You Can Mow A Small Forest	Playing	YouTube	f	Copper Creek Cuts Lawn Care	1626556901745	\N
223666520943886336	463097721130188830	513734690272968717	When They Ask If You Can Mow A Small Forest	Playing	YouTube	f	Copper Creek Cuts Lawn Care	1626556911778	\N
223666520943886336	463097721130188830	513734690272968717	When They Ask If You Can Mow A Small Forest	Playing	YouTube	f	Copper Creek Cuts Lawn Care	1626556961749	\N
325704347767799808	790655993809338398	798617001685024808	Chasm	Playing	YouTube Music	f	Audiovista	1626556972894	1626557180894
223666520943886336	463097721130188830	513734690272968717	When They Ask If You Can Mow A Small Forest	Playing	YouTube	f	Copper Creek Cuts Lawn Care	1626557031733	\N
271659253486452736	363426802640617482	\N	\N	Playing	Total War: WARHAMMER II	f	\N	1626557034784	\N
223666520943886336	463097721130188830	513734690272968717	When They Ask If You Can Mow A Small Forest	Playing	YouTube	f	Copper Creek Cuts Lawn Care	1626557061798	\N
223666520943886336	463097721130188830	513734690272968717	When They Ask If You Can Mow A Small Forest	Playing	YouTube	f	Copper Creek Cuts Lawn Care	1626557091803	\N
202407278618476545	\N	\N	\N	Custom	Custom Status	f	defekt aber nett	1626557104800	\N
411656316814098441	\N	\N	\N	Custom	Custom Status	f	snowfox 😳	1626557149035	\N
223666520943886336	463097721130188830	513734690272968717	When They Ask If You Can Mow A Small Forest	Playing	YouTube	f	Copper Creek Cuts Lawn Care	1626557171770	\N
223666520943886336	463097721130188830	513734690272968717	When They Ask If You Can Mow A Small Forest	Playing	YouTube	f	Copper Creek Cuts Lawn Care	1626557211811	\N
223666520943886336	463097721130188830	513734690272968717	When They Ask If You Can Mow A Small Forest	Playing	YouTube	f	Copper Creek Cuts Lawn Care	1626556441560	\N
223666520943886336	463097721130188830	513734690272968717	When They Ask If You Can Mow A Small Forest	Playing	YouTube	f	Copper Creek Cuts Lawn Care	1626556451491	\N
223666520943886336	463097721130188830	513734690272968717	When They Ask If You Can Mow A Small Forest	Playing	YouTube	f	Copper Creek Cuts Lawn Care	1626556481601	\N
223666520943886336	463097721130188830	513734690272968717	When They Ask If You Can Mow A Small Forest	Playing	YouTube	f	Copper Creek Cuts Lawn Care	1626556581541	\N
223666520943886336	463097721130188830	513734690272968717	When They Ask If You Can Mow A Small Forest	Playing	YouTube	f	Copper Creek Cuts Lawn Care	1626556631612	\N
223666520943886336	463097721130188830	513734690272968717	When They Ask If You Can Mow A Small Forest	Playing	YouTube	f	Copper Creek Cuts Lawn Care	1626556641545	\N
325704347767799808	790655993809338398	798617001685024808	Kein Mitleid	Playing	YouTube Music	f	Eisbrecher	1626556642164	\N
223666520943886336	463097721130188830	513734690272968717	When They Ask If You Can Mow A Small Forest	Playing	YouTube	f	Copper Creek Cuts Lawn Care	1626556701644	\N
223666520943886336	463097721130188830	513734690272968717	When They Ask If You Can Mow A Small Forest	Playing	YouTube	f	Copper Creek Cuts Lawn Care	1626556711689	\N
223666520943886336	463097721130188830	513734690272968717	When They Ask If You Can Mow A Small Forest	Playing	YouTube	f	Copper Creek Cuts Lawn Care	1626556791766	\N
223666520943886336	463097721130188830	513734690272968717	When They Ask If You Can Mow A Small Forest	Playing	YouTube	f	Copper Creek Cuts Lawn Care	1626556851669	\N
223666520943886336	463097721130188830	513734690272968717	When They Ask If You Can Mow A Small Forest	Playing	YouTube	f	Copper Creek Cuts Lawn Care	1626556881674	\N
223666520943886336	463097721130188830	513734690272968717	When They Ask If You Can Mow A Small Forest	Playing	YouTube	f	Copper Creek Cuts Lawn Care	1626556941782	\N
325704347767799808	790655993809338398	798617001685024808	Chasm	Playing	YouTube Music	f	Audiovista	1626556972818	\N
223666520943886336	463097721130188830	513734690272968717	When They Ask If You Can Mow A Small Forest	Playing	YouTube	f	Copper Creek Cuts Lawn Care	1626556981717	\N
223666520943886336	463097721130188830	513734690272968717	When They Ask If You Can Mow A Small Forest	Playing	YouTube	f	Copper Creek Cuts Lawn Care	1626556992981	\N
223666520943886336	463097721130188830	513734690272968717	When They Ask If You Can Mow A Small Forest	Playing	YouTube	f	Copper Creek Cuts Lawn Care	1626557001788	\N
223666520943886336	463097721130188830	513734690272968717	When They Ask If You Can Mow A Small Forest	Playing	YouTube	f	Copper Creek Cuts Lawn Care	1626557021755	\N
271659253486452736	\N	\N	\N	Custom	Custom Status	f	Whoa, I got two hands! Brujo, I need two beers!	1626557030047	\N
223666520943886336	463097721130188830	513734690272968717	When They Ask If You Can Mow A Small Forest	Playing	YouTube	f	Copper Creek Cuts Lawn Care	1626557051758	\N
202407278618476545	\N	spotify:ab67616d0000b2730b7755618f8abce8c2d19e31	Jaun Zuria	Listening	Spotify	t	Tartalo Music	1626557104402	1626557253789
223666520943886336	463097721130188830	513734690272968717	When They Ask If You Can Mow A Small Forest	Playing	YouTube	f	Copper Creek Cuts Lawn Care	1626557111867	\N
223666520943886336	463097721130188830	513734690272968717	When They Ask If You Can Mow A Small Forest	Playing	YouTube	f	Copper Creek Cuts Lawn Care	1626557161838	\N
223666520943886336	463097721130188830	513734690272968717	When They Ask If You Can Mow A Small Forest	Playing	YouTube	f	Copper Creek Cuts Lawn Care	1626557191841	\N
223666520943886336	463097721130188830	513734690272968717	When They Ask If You Can Mow A Small Forest	Playing	YouTube	f	Copper Creek Cuts Lawn Care	1626557221946	\N
223666520943886336	463097721130188830	513734690272968717	When They Ask If You Can Mow A Small Forest	Playing	YouTube	f	Copper Creek Cuts Lawn Care	1626557281953	\N
223666520943886336	463097721130188830	513734690272968717	When They Ask If You Can Mow A Small Forest	Playing	YouTube	f	Copper Creek Cuts Lawn Care	1626557361927	\N
223666520943886336	463097721130188830	513734690272968717	When They Ask If You Can Mow A Small Forest	Playing	YouTube	f	Copper Creek Cuts Lawn Care	1626557412005	\N
223666520943886336	463097721130188830	513734690272968717	When They Ask If You Can Mow A Small Forest	Playing	YouTube	f	Copper Creek Cuts Lawn Care	1626557421933	\N
223666520943886336	463097721130188830	513734690272968717	When They Ask If You Can Mow A Small Forest	Playing	YouTube	f	Copper Creek Cuts Lawn Care	1626557472109	\N
223666520943886336	463097721130188830	513734690272968717	When They Ask If You Can Mow A Small Forest	Playing	YouTube	f	Copper Creek Cuts Lawn Care	1626557482144	\N
202407278618476545	\N	spotify:ab67616d0000b273e7eb40017bdb66e422875eb7	Floki Appears to Kill Athelstan	Listening	Spotify	t	Trevor Morris	1626557509887	1626557700953
223666520943886336	463097721130188830	513734690272968717	When They Ask If You Can Mow A Small Forest	Playing	YouTube	f	Copper Creek Cuts Lawn Care	1626557542457	\N
206955935229280256	\N	\N	\N	Playing	%help || GC: 108049 || UC: 134507 || VC: 4 || Version: 5.9.0	f	\N	1626557584746	\N
206955935229280256	\N	\N	\N	Playing	%help || GC: 108050 || UC: 134528 || VC: 4 || Version: 5.9.0	f	\N	1626557594782	\N
223666520943886336	463097721130188830	513734690272968717	When They Ask If You Can Mow A Small Forest	Playing	YouTube	f	Copper Creek Cuts Lawn Care	1626556951714	\N
325704347767799808	790655993809338398	798617001685024808	Kein Mitleid	Playing	YouTube Music	f	Eisbrecher	1626556972402	\N
223666520943886336	463097721130188830	513734690272968717	When They Ask If You Can Mow A Small Forest	Playing	YouTube	f	Copper Creek Cuts Lawn Care	1626557011822	\N
206955935229280256	\N	\N	\N	Playing	%help || GC: 108050 || UC: 133327 || VC: 4 || Version: 5.9.0	f	\N	1626557034040	\N
223666520943886336	463097721130188830	513734690272968717	When They Ask If You Can Mow A Small Forest	Playing	YouTube	f	Copper Creek Cuts Lawn Care	1626557081761	\N
371656565607890964	\N	\N	\N	Custom	Custom Status	f	Wenn deine Götter je einen Kosenamen für mich hatten wäre mein alias der große rote Drache	1626557093842	\N
223666520943886336	463097721130188830	513734690272968717	When They Ask If You Can Mow A Small Forest	Playing	YouTube	f	Copper Creek Cuts Lawn Care	1626557131837	\N
223666520943886336	463097721130188830	513734690272968717	When They Ask If You Can Mow A Small Forest	Playing	YouTube	f	Copper Creek Cuts Lawn Care	1626557201774	\N
152104114753372160	363413310474813450	\N	\N	Playing	Wizard101	f	\N	1626557210568	\N
223666520943886336	463097721130188830	513734690272968717	When They Ask If You Can Mow A Small Forest	Playing	YouTube	f	Copper Creek Cuts Lawn Care	1626557251847	\N
223666520943886336	463097721130188830	513734690272968717	When They Ask If You Can Mow A Small Forest	Playing	YouTube	f	Copper Creek Cuts Lawn Care	1626557271919	\N
223666520943886336	463097721130188830	513734690272968717	When They Ask If You Can Mow A Small Forest	Playing	YouTube	f	Copper Creek Cuts Lawn Care	1626557291886	\N
223666520943886336	463097721130188830	513734690272968717	When They Ask If You Can Mow A Small Forest	Playing	YouTube	f	Copper Creek Cuts Lawn Care	1626557331823	\N
271659253486452736	\N	\N	\N	Custom	Custom Status	f	Whoa, I got two hands! Brujo, I need two beers!	1626557035064	\N
223666520943886336	463097721130188830	513734690272968717	When They Ask If You Can Mow A Small Forest	Playing	YouTube	f	Copper Creek Cuts Lawn Care	1626557071726	\N
223666520943886336	463097721130188830	513734690272968717	When They Ask If You Can Mow A Small Forest	Playing	YouTube	f	Copper Creek Cuts Lawn Care	1626557121778	\N
281381884460662785	\N	\N	\N	Custom	Custom Status	f	Я….жду ответа, больше надежд нету. Скоро….кончится лето. Это….	1626557134803	\N
223666520943886336	463097721130188830	513734690272968717	When They Ask If You Can Mow A Small Forest	Playing	YouTube	f	Copper Creek Cuts Lawn Care	1626557231879	\N
202407278618476545	\N	\N	\N	Custom	Custom Status	f	defekt aber nett	1626557254097	\N
206955935229280256	\N	\N	\N	Playing	%help || GC: 108048 || UC: 133840 || VC: 4 || Version: 5.9.0	f	\N	1626557287635	\N
223666520943886336	463097721130188830	513734690272968717	When They Ask If You Can Mow A Small Forest	Playing	YouTube	f	Copper Creek Cuts Lawn Care	1626557321995	\N
223666520943886336	463097721130188830	513734690272968717	When They Ask If You Can Mow A Small Forest	Playing	YouTube	f	Copper Creek Cuts Lawn Care	1626557371987	\N
206955935229280256	\N	\N	\N	Playing	%help || GC: 108049 || UC: 133453 || VC: 4 || Version: 5.9.0	f	\N	1626557105515	\N
223666520943886336	463097721130188830	513734690272968717	When They Ask If You Can Mow A Small Forest	Playing	YouTube	f	Copper Creek Cuts Lawn Care	1626557141876	\N
223666520943886336	463097721130188830	513734690272968717	When They Ask If You Can Mow A Small Forest	Playing	YouTube	f	Copper Creek Cuts Lawn Care	1626557151905	\N
223666520943886336	463097721130188830	513734690272968717	When They Ask If You Can Mow A Small Forest	Playing	YouTube	f	Copper Creek Cuts Lawn Care	1626557181808	\N
223666520943886336	463097721130188830	513734690272968717	When They Ask If You Can Mow A Small Forest	Playing	YouTube	f	Copper Creek Cuts Lawn Care	1626557241915	\N
223666520943886336	463097721130188830	513734690272968717	When They Ask If You Can Mow A Small Forest	Playing	YouTube	f	Copper Creek Cuts Lawn Care	1626557261882	\N
223666520943886336	463097721130188830	513734690272968717	When They Ask If You Can Mow A Small Forest	Playing	YouTube	f	Copper Creek Cuts Lawn Care	1626557351892	\N
202407278618476545	\N	spotify:ab67616d0000b273fe8486ef323449bebac0315a	Wulfwiga	Listening	Spotify	t	Sowulo	1626557253757	1626557509943
223666520943886336	463097721130188830	513734690272968717	When They Ask If You Can Mow A Small Forest	Playing	YouTube	f	Copper Creek Cuts Lawn Care	1626557301831	\N
223666520943886336	463097721130188830	513734690272968717	When They Ask If You Can Mow A Small Forest	Playing	YouTube	f	Copper Creek Cuts Lawn Care	1626557311957	\N
223666520943886336	463097721130188830	513734690272968717	When They Ask If You Can Mow A Small Forest	Playing	YouTube	f	Copper Creek Cuts Lawn Care	1626557341856	\N
223666520943886336	463097721130188830	513734690272968717	When They Ask If You Can Mow A Small Forest	Playing	YouTube	f	Copper Creek Cuts Lawn Care	1626557391948	\N
223666520943886336	463097721130188830	513734690272968717	When They Ask If You Can Mow A Small Forest	Playing	YouTube	f	Copper Creek Cuts Lawn Care	1626557382000	\N
223666520943886336	463097721130188830	513734690272968717	When They Ask If You Can Mow A Small Forest	Playing	YouTube	f	Copper Creek Cuts Lawn Care	1626557442011	\N
223666520943886336	463097721130188830	513734690272968717	When They Ask If You Can Mow A Small Forest	Playing	YouTube	f	Copper Creek Cuts Lawn Care	1626557502317	\N
411656316814098441	\N	\N	\N	Custom	Custom Status	f	snowfox 😳	1626557527075	\N
223666520943886336	463097721130188830	513734690272968717	When They Ask If You Can Mow A Small Forest	Playing	YouTube	f	Copper Creek Cuts Lawn Care	1626557562528	\N
223666520943886336	463097721130188830	513734690272968717	When They Ask If You Can Mow A Small Forest	Playing	YouTube	f	Copper Creek Cuts Lawn Care	1626557612499	\N
403571252402585601	\N	\N	\N	Custom	Custom Status	f	\N	1626557624198	\N
223666520943886336	463097721130188830	513734690272968717	When They Ask If You Can Mow A Small Forest	Playing	YouTube	f	Copper Creek Cuts Lawn Care	1626557632455	\N
223666520943886336	463097721130188830	513734690272968717	When They Ask If You Can Mow A Small Forest	Playing	YouTube	f	Copper Creek Cuts Lawn Care	1626557652538	\N
223666520943886336	463097721130188830	513734690272968717	When They Ask If You Can Mow A Small Forest	Playing	YouTube	f	Copper Creek Cuts Lawn Care	1626557401967	\N
411656316814098441	\N	\N	\N	Custom	Custom Status	f	snowfox 😳	1626557419166	\N
223666520943886336	463097721130188830	513734690272968717	When They Ask If You Can Mow A Small Forest	Playing	YouTube	f	Copper Creek Cuts Lawn Care	1626557462074	\N
271659253486452736	\N	\N	\N	Custom	Custom Status	f	Whoa, I got two hands! Brujo, I need two beers!	1626557480708	\N
403571252402585601	445956193924546560	446301881636225042	Looking for RANKED match	Playing	Rainbow Six Siege	f	\N	1626557624211	\N
223666520943886336	463097721130188830	513734690272968717	When They Ask If You Can Mow A Small Forest	Playing	YouTube	f	Copper Creek Cuts Lawn Care	1626557431968	\N
223666520943886336	463097721130188830	513734690272968717	When They Ask If You Can Mow A Small Forest	Playing	YouTube	f	Copper Creek Cuts Lawn Care	1626557492180	\N
223666520943886336	463097721130188830	513734690272968717	When They Ask If You Can Mow A Small Forest	Playing	YouTube	f	Copper Creek Cuts Lawn Care	1626557512327	\N
223666520943886336	463097721130188830	513734690272968717	When They Ask If You Can Mow A Small Forest	Playing	YouTube	f	Copper Creek Cuts Lawn Care	1626557522285	\N
223666520943886336	463097721130188830	513734690272968717	When They Ask If You Can Mow A Small Forest	Playing	YouTube	f	Copper Creek Cuts Lawn Care	1626557552494	\N
223666520943886336	463097721130188830	513734690272968717	When They Ask If You Can Mow A Small Forest	Playing	YouTube	f	Copper Creek Cuts Lawn Care	1626557582496	\N
223666520943886336	463097721130188830	513734690272968717	When They Ask If You Can Mow A Small Forest	Playing	YouTube	f	Copper Creek Cuts Lawn Care	1626557592531	\N
223666520943886336	463097721130188830	513734690272968717	When They Ask If You Can Mow A Small Forest	Playing	YouTube	f	Copper Creek Cuts Lawn Care	1626557602568	\N
403571252402585601	\N	\N	\N	Custom	Custom Status	f	\N	1626557640041	\N
223666520943886336	463097721130188830	513734690272968717	When They Ask If You Can Mow A Small Forest	Playing	YouTube	f	Copper Creek Cuts Lawn Care	1626557642503	\N
403571252402585601	445956193924546560	446301881636225042	in MENU	Playing	Rainbow Six Siege	f	\N	1626554122712	\N
281381884460662785	\N	\N	\N	Custom	Custom Status	f	Я….жду ответа, больше надежд нету. Скоро….кончится лето. Это….	1626554129370	\N
281381884460662785	\N	\N	\N	Custom	Custom Status	f	Я….жду ответа, больше надежд нету. Скоро….кончится лето. Это….	1626554129987	\N
271659253486452736	\N	\N	\N	Custom	Custom Status	f	Whoa, I got two hands! Brujo, I need two beers!	1626554130292	\N
281381884460662785	\N	spotify:ab67616d0000b273bb6f1dc0ee9313f2c36a6c68	пластинки	Listening	Spotify	t	Дурной Вкус	1626554142730	1626554327238
403571252402585601	\N	spotify:ab67616d0000b273322adabca0b652da6ad1cdcc	Intro	Listening	Spotify	t	RAF Camora	1626554288285	1626554394068
325704347767799808	790655993809338398	798617001685024808	Pickle - Sing It (Official Music Video)	Playing	YouTube Music	f	Spinnin' Records	1626554322506	\N
281381884460662785	\N	\N	\N	Custom	Custom Status	f	Я….жду ответа, больше надежд нету. Скоро….кончится лето. Это….	1626554359975	\N
281381884460662785	\N	spotify:ab67616d0000b273fbdd507790b0517dbc4dfce9	Звезды	Listening	Spotify	t	Molchat Doma	1626554360652	1626554590947
281381884460662785	\N	\N	\N	Custom	Custom Status	f	Я….жду ответа, больше надежд нету. Скоро….кончится лето. Это….	1626554386805	\N
223666520943886336	463097721130188830	513734690272968717	When They Ask If You Can Mow A Small Forest	Playing	YouTube	f	Copper Creek Cuts Lawn Care	1626554427456	1626554910000
223666520943886336	463097721130188830	513734690272968717	When They Ask If You Can Mow A Small Forest	Playing	YouTube	f	Copper Creek Cuts Lawn Care	1626554447541	1626554909000
223666520943886336	463097721130188830	513734690272968717	When They Ask If You Can Mow A Small Forest	Playing	YouTube	f	Copper Creek Cuts Lawn Care	1626554468007	1626554910000
223666520943886336	463097721130188830	513734690272968717	When They Ask If You Can Mow A Small Forest	Playing	YouTube	f	Copper Creek Cuts Lawn Care	1626554488493	1626554909000
459713629441490945	\N	\N	\N	Custom	Custom Status	f	1:1	1626554528150	\N
281381884460662785	\N	spotify:ab67616d0000b2735ab6fb85fa93ef1a51dfe2f0	Лето	Listening	Spotify	t	Kino	1626554518521	1626554873192
223666520943886336	463097721130188830	513734690272968717	When They Ask If You Can Mow A Small Forest	Playing	YouTube	f	Copper Creek Cuts Lawn Care	1626554568443	1626554909000
223666520943886336	463097721130188830	513734690272968717	When They Ask If You Can Mow A Small Forest	Playing	YouTube	f	Copper Creek Cuts Lawn Care	1626554588926	1626554910000
223666520943886336	463097721130188830	513734690272968717	When They Ask If You Can Mow A Small Forest	Playing	YouTube	f	Copper Creek Cuts Lawn Care	1626554627033	1626554910000
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
864184618717937717	571061785763905536	360783544668258314	test	191594115907977225	t	1626108068265
864187143094140999	571061785763905536	360783544668258314		191594115907977225	f	1626108670110
864187161327042600	571061785763905536	360783544668258314	<@276431762815451138>	191594115907977225	f	1626108674457
864187167558074368	571061785763905536	360783544668258314	:))	191594115907977225	f	1626108675942
864197963920441355	470197424405872640	360783544668258314	!clean	191594115907977225	f	1626111249984
864197966755659826	470197424405872640	360783544668258314	♻ **Cleared `15` messages**	235088799074484224	t	1626111250632
864216859707179028	675395799584079893	360783544668258314	https://paypal.me/pools/c/8Amij3xs8B	191594115907977225	f	1626115754987
864216872349466664	675395799584079893	360783544668258314	<@191594115907977225> pinned a message to this channel. See all the pins.	191594115907977225	f	1626115757996
864217236634206240	571061785763905536	360783544668258314		191594115907977225	f	1626115844938
864223728061906974	571061785763905536	360783544668258314	!clean	191594115907977225	f	1626117392512
864223729218748467	571061785763905536	360783544668258314	<:x2:814990341052432435> **No messages found to prune**	235088799074484224	f	1626117392782
864223763414515722	571061785763905536	360783544668258314	!clean	191594115907977225	f	1626117400937
864223765390819350	571061785763905536	360783544668258314	♻ **Cleared `3` messages**	235088799074484224	t	1626117401402
864233014170222652	470197424405872640	360783544668258314	!clean	191594115907977225	t	1626119606455
864232996773298177	470197424405872640	360783544668258314	📭 **Successfully disconnected**	235088799074484224	t	1626119602335
864232996047290424	470197424405872640	360783544668258314	!fuckoff	191594115907977225	t	1626119602135
864232887401316372	470197424405872640	360783544668258314	**Playing** 🎶 `Oliver Tree - Again & Again [Lyric Video]` - Now!	235088799074484224	t	1626119576229
864232884469235732	470197424405872640	360783544668258314	<:youtube:841353157489852487> **Searching** 🔎 `https://www.youtube.com/watch?v=qipBONFC_jE`	235088799074484224	t	1626119575536
864232883803521074	470197424405872640	360783544668258314	!play https://www.youtube.com/watch?v=qipBONFC_jE	191594115907977225	t	1626119575401
864232677950750720	470197424405872640	360783544668258314	:thumbsup: **Joined `Cum Gaming` and bound to <#470197424405872640>**	235088799074484224	t	1626119526305
864232674474197004	470197424405872640	360783544668258314	!join	191594115907977225	t	1626119525473
864233017362481202	470197424405872640	360783544668258314	♻ **Cleared `8` messages**	235088799074484224	t	1626119607205
864233310783668254	470197424405872640	360783544668258314	!clean	191594115907977225	t	1626119677175
864233297299374110	470197424405872640	360783544668258314	📭 **Successfully disconnected**	235088799074484224	t	1626119673955
864233296439541771	470197424405872640	360783544668258314	!fuckoff	191594115907977225	t	1626119673840
864233268907606079	470197424405872640	360783544668258314	**Playing** 🎶 `Oliver Tree - Again & Again [Lyric Video]` - Now!	235088799074484224	t	1626119667179
864233266382372874	470197424405872640	360783544668258314	<:youtube:841353157489852487> **Searching** 🔎 `https://www.youtube.com/watch?v=qipBONFC_jE`	235088799074484224	t	1626119666576
864233265896489000	470197424405872640	360783544668258314	!play https://www.youtube.com/watch?v=qipBONFC_jE	191594115907977225	t	1626119666463
864233312306724864	470197424405872640	360783544668258314	♻ **Cleared `8` messages**	235088799074484224	t	1626119677527
864233358836891658	768507786429595718	360783544668258314	!clean	191594115907977225	t	1626119688627
864182072570937405	470197424405872640	360783544668258314	timestamp test	191594115907977225	t	1626107461319
864181846806626314	470197424405872640	360783544668258314	test	191594115907977225	t	\N
864233359932784650	768507786429595718	360783544668258314	<:x2:814990341052432435> **No messages found to prune**	235088799074484224	t	1626119688890
864233400675467274	728707133671211118	360783544668258314	<:x2:814990341052432435> **No messages found to prune**	235088799074484224	t	1626119698596
864233533215604757	675395799584079893	360783544668258314	<:x2:814990341052432435> **No messages found to prune**	235088799074484224	t	1626119730255
864233556171030529	604027466012557480	360783544668258314	!clean	191594115907977225	t	1626119735733
864233368614076426	768507786429595718	360783544668258314	!clean	191594115907977225	t	1626119690969
864233408942571561	728707133671211118	360783544668258314	!clean	191594115907977225	t	1626119700574
864233413795381258	728707133671211118	360783544668258314	♻ **Cleared `3` messages**	235088799074484224	t	1626119701722
864233532276998164	675395799584079893	360783544668258314	!clean	191594115907977225	t	1626119729973
864233557073592341	604027466012557480	360783544668258314	<:x2:814990341052432435> **No messages found to prune**	235088799074484224	t	1626119735947
864233369961234432	768507786429595718	360783544668258314	♻ **Cleared `3` messages**	235088799074484224	t	1626119691277
864233399546544138	728707133671211118	360783544668258314	!clean	191594115907977225	t	1626119698329
864233538844884992	675395799584079893	360783544668258314	!clean	191594115907977225	t	1626119731537
864233540463231037	675395799584079893	360783544668258314	♻ **Cleared `3` messages**	235088799074484224	t	1626119731926
864233562294190120	604027466012557480	360783544668258314	!clean	191594115907977225	t	1626119737140
864233563560607754	604027466012557480	360783544668258314	♻ **Cleared `3` messages**	235088799074484224	t	1626119737427
864233581417070633	571061785763905536	360783544668258314	!clean	191594115907977225	t	1626119741799
864233577179512883	571061785763905536	360783544668258314	<:x2:814990341052432435> **No messages found to prune**	235088799074484224	t	1626119740760
864233576374468628	571061785763905536	360783544668258314	!clean	191594115907977225	t	1626119740487
864233583240806440	571061785763905536	360783544668258314	♻ **Cleared `3` messages**	235088799074484224	t	1626119742174
864233604857724969	703324468004782191	360783544668258314	!clean	191594115907977225	t	1626119747340
864233600795148298	703324468004782191	360783544668258314	<:x2:814990341052432435> **No messages found to prune**	235088799074484224	t	1626119746310
864233599615238194	703324468004782191	360783544668258314	!clean	191594115907977225	t	1626119746024
864233606561005578	703324468004782191	360783544668258314	♻ **Cleared `3` messages**	235088799074484224	t	1626119747684
864233639277101066	733773598367416402	360783544668258314	!clean	191594115907977225	f	1626119755482
864233633530642452	733773598367416402	360783544668258314	<:x2:814990341052432435> **No messages found to prune**	235088799074484224	t	1626119754119
864233632099729429	733773598367416402	360783544668258314	!clean	191594115907977225	t	1626119753848
864233641004892220	733773598367416402	360783544668258314	♻ **Cleared `3` messages**	235088799074484224	t	1626119755907
864399637384396820	470197424405872640	360783544668258314	test	191594115907977225	t	1626159333482
864399672390975519	470197424405872640	360783544668258314	test	191594115907977225	t	1626159341880
864400306133794826	470197424405872640	360783544668258314	test 3	191594115907977225	t	1626159492919
864400229340282922	470197424405872640	360783544668258314	test	191594115907977225	t	1626159474617
864400286742216754	470197424405872640	360783544668258314	Test 1	191594115907977225	t	1626159488214
864400296197619742	470197424405872640	360783544668258314	Test 2	191594115907977225	t	1626159490563
864413569423507476	470197424405872640	360783544668258314	test	191594115907977225	t	1626162655078
864411696278143018	470197424405872640	360783544668258314	test	191594115907977225	t	1626162208569
864627999121735720	470197424405872640	360783544668258314	~ping	191594115907977225	f	1626213777162
864627999495028747	470197424405872640	360783544668258314	Pong!	564564723614351360	f	1626213777345
864629699296755752	470197424405872640	360783544668258314	sdaads	191594115907977225	f	1626214182505
864629708422774784	470197424405872640	360783544668258314	~ping	191594115907977225	f	1626214184690
864629709174079528	470197424405872640	360783544668258314	Pong!	564564723614351360	f	1626214184857
864630288670654495	470197424405872640	360783544668258314	~ping	191594115907977225	f	1626214323079
864630289665884190	470197424405872640	360783544668258314	Pong!	564564723614351360	f	1626214323290
864630626232303636	470197424405872640	360783544668258314	~latency	191594115907977225	f	1626214403493
864630626967355452	470197424405872640	360783544668258314	The shard latency is Some(120.4893ms)	564564723614351360	f	1626214403673
864631629757284382	470197424405872640	360783544668258314	~ping	191594115907977225	f	1626214642764
864631630614102026	470197424405872640	360783544668258314	Pong!	564564723614351360	f	1626214642960
864632406610935819	470197424405872640	360783544668258314	~help	191594115907977225	f	1626214828007
864632407973429310	470197424405872640	360783544668258314		564564723614351360	f	1626214828297
864632445386620949	470197424405872640	360783544668258314	~help ping	191594115907977225	f	1626214837238
864632446221811752	470197424405872640	360783544668258314		564564723614351360	f	1626214837894
864634239525978134	470197424405872640	360783544668258314	~ping	191594115907977225	f	1626215265026
864634240556990494	470197424405872640	360783544668258314	Pong!	564564723614351360	f	1626215265216
864634248874688512	470197424405872640	360783544668258314	~help	191594115907977225	f	1626215267177
864634249646571521	470197424405872640	360783544668258314		564564723614351360	f	1626215267389
864793518110277633	470197424405872640	360783544668258314	-ping	191594115907977225	f	1626253241968
864793519674884096	470197424405872640	360783544668258314	Pong!	564564723614351360	f	1626253242267
864793528764989450	470197424405872640	360783544668258314	-help	191594115907977225	f	1626253244428
864793529753927690	470197424405872640	360783544668258314		564564723614351360	f	1626253244663
864793553195237426	470197424405872640	360783544668258314	-help ping	191594115907977225	f	1626253250256
864793554043011072	470197424405872640	360783544668258314		564564723614351360	f	1626253250483
864794797461209098	470197424405872640	360783544668258314	-ping	191594115907977225	f	1626253546915
864794798300987392	470197424405872640	360783544668258314	Pong!	564564723614351360	f	1626253547129
864794805590556682	470197424405872640	360783544668258314	test	191594115907977225	f	1626253548836
864794886666321950	470197424405872640	360783544668258314	-ping	191594115907977225	f	1626253568180
864794887216300054	470197424405872640	360783544668258314	Pong!	564564723614351360	f	1626253568373
864797945090277376	470197424405872640	360783544668258314	-help	191594115907977225	f	1626254297520
864797946629193768	470197424405872640	360783544668258314		564564723614351360	f	1626254297726
864797946822131733	470197424405872640	360783544668258314		564564723614351360	f	1626254297810
864797966933688330	470197424405872640	360783544668258314	-help ping	191594115907977225	f	1626254302640
864797967717498911	470197424405872640	360783544668258314		564564723614351360	f	1626254302847
864797967826026508	470197424405872640	360783544668258314		564564723614351360	f	1626254302873
864798050656583691	470197424405872640	360783544668258314	-help	191594115907977225	f	1626254322710
864798052371529748	470197424405872640	360783544668258314		564564723614351360	f	1626254323017
864798066140512277	470197424405872640	360783544668258314	-help ping	191594115907977225	f	1626254326302
864798067236667393	470197424405872640	360783544668258314		564564723614351360	f	1626254326530
864799205599608832	470197424405872640	360783544668258314	-ping	191594115907977225	f	1626254597968
864799206694322246	470197424405872640	360783544668258314	Pong!	564564723614351360	f	1626254598170
864799226243186688	470197424405872640	360783544668258314	-help	191594115907977225	f	1626254602883
864799227497414697	470197424405872640	360783544668258314		564564723614351360	f	1626254603193
864799252478820372	470197424405872640	360783544668258314	-help latency	191594115907977225	f	1626254609129
864799253780234260	470197424405872640	360783544668258314		564564723614351360	f	1626254609434
864824372719910932	470197424405872640	360783544668258314	-help	191594115907977225	f	1626260598195
864824373776744448	470197424405872640	360783544668258314		564564723614351360	f	1626260598492
864824373475278870	470197424405872640	360783544668258314		564564723614351360	f	1626260598493
864824477052829706	470197424405872640	360783544668258314	-hate	191594115907977225	f	1626260623168
864824478400118784	470197424405872640	360783544668258314	"No. Stop this theoretical idiocy.  We've tried it. I objected before people tried it, and it turns out that it was a horrible idea.... So this "people should check for allocation failures" is bullshit. It's a computer science myth. ... So no. ...Get over it. I refuse to go through that circus again. It's stupid."\n**Hatelevel**: 0.9146180484990464	564564723614351360	f	1626260623481
864858464429408286	470197424405872640	360783544668258314	-help	191594115907977225	f	1626268726334
864858465636974592	470197424405872640	360783544668258314		564564723614351360	f	1626268726641
864858486105440277	470197424405872640	360783544668258314	-ping	191594115907977225	f	1626268731543
864858487275520040	470197424405872640	360783544668258314	Pong!	564564723614351360	f	1626268731757
864858497258094592	470197424405872640	360783544668258314	The shard latency is 18446744073709551615s	564564723614351360	t	1626268734136
864858495886163979	470197424405872640	360783544668258314	-latency	191594115907977225	t	1626268733906
864858599960477696	470197424405872640	360783544668258314	-hate	191594115907977225	f	1626268758693
864858601280372736	470197424405872640	360783544668258314	"The whole "it's more convenient to use sleeping locks" argument is PURE AND UTTER SHIT when it comes to really core code. ... Seriously. Your argument is bad, but more importantly, it is *dangerously* bad. It's crap that results in bad code: and the bad code is almost impossible to fix up later..."\n**Hatelevel**: 0.8521992066383708	564564723614351360	f	1626268758999
864858651574665247	470197424405872640	360783544668258314	-hate	191594115907977225	f	1626268771018
864858652867166268	470197424405872640	360783544668258314	"...End of discussion. Seriously. Your whinging about "support costs" is just crying over the fact that you have users. Deal with it. ...And dammit, I really never *ever* want to hear arguments against fixing regressions ever again. It really is the #1 rule for the kernel. There is *no* excuse for that NAK. There is only "sorry"."\n**Hatelevel**: 0.8547854359966223	564564723614351360	f	1626268771287
864858769480220682	470197424405872640	360783544668258314	-hate	191594115907977225	f	1626268799053
864858770680971274	470197424405872640	360783544668258314	"That's just disgusting crazy talk. Christ, David, get a grip on yourself. ..."\n**Hatelevel**: 0.5617764857509643	564564723614351360	f	1626268799345
864859089430773770	470197424405872640	360783544668258314	-test	191594115907977225	f	1626268875428
864859983409971241	470197424405872640	360783544668258314	-help	191594115907977225	f	1626269088485
864859984457367592	470197424405872640	360783544668258314		564564723614351360	f	1626269088733
864859992401248306	470197424405872640	360783544668258314	-ping	191594115907977225	f	1626269090615
864859993043763212	470197424405872640	360783544668258314	Pong!	564564723614351360	f	1626269090880
864860002396930058	470197424405872640	360783544668258314	-hate	191594115907977225	f	1626269092994
864860003616555038	470197424405872640	360783544668258314	"No. Really. No. ... Thomas, you're in denial. ... Your argument "it has a question mark in front of it" objection is bogus. ... I'm just saying that your arguments to ignore CPU0 are pretty damn weak."\n**Hatelevel**: 0.6418009529098407	564564723614351360	f	1626269093342
864860313089998880	470197424405872640	360783544668258314	-test	191594115907977225	f	1626269167116
864860315208384512	470197424405872640	360783544668258314	Sorry, couldn't find a command named test\n\n With the help command you can list all available commands	564564723614351360	f	1626269167578
864860457780117544	470197424405872640	360783544668258314	-test	191594115907977225	f	1626269201678
864860459155718166	470197424405872640	360783544668258314	Sorry, couldn't find a command named `test`\n\n With the `help` command you can list all available commands	564564723614351360	f	1626269201985
864860478823202847	470197424405872640	360783544668258314	-help	191594115907977225	f	1626269206662
864860480036012033	470197424405872640	360783544668258314		564564723614351360	f	1626269206925
864860636532703253	470197424405872640	360783544668258314	-test	191594115907977225	f	1626269244276
864860637690724362	470197424405872640	360783544668258314	Sorry, couldn't find a command named '`test`'\n\n With the '`help`' command you can list all available commands	564564723614351360	f	1626269244482
864861002351509524	470197424405872640	360783544668258314	-test	191594115907977225	f	1626269331421
864861003275304980	470197424405872640	360783544668258314	Sorry, couldn't find a command named '`test`'\n\n With the `help` command you can list all available commands	564564723614351360	f	1626269331728
864976671676432384	571061785763905536	360783544668258314	-hate	191594115907977225	f	1626296908560
864976672466272307	571061785763905536	360783544668258314	"That's f*cking sad. You know *why* it's sad? ... Now, that should make you think about THE ABSOLUTE CRAP YOU MARK FOR -stable! ... Listen to yourself. In fact, there is a damn good solution": don't mark crap for stable, and don't send crap to me after -rc4. ... Greg, the reason you get a lot of stable patches seems to be that you make it easy to act as a door-mat. ... You may need to learn to shout at people."\n**Hatelevel**: 0.5947676945714664	564564723614351360	f	1626296908773
864981586687950858	571061785763905536	360783544668258314		564564723614351360	f	1626298080380
864981585178394634	571061785763905536	360783544668258314	-help pign	191594115907977225	f	1626298080013
865128458283515915	571061785763905536	360783544668258314	-help	191594115907977225	f	1626333097790
865128459227496498	571061785763905536	360783544668258314		564564723614351360	f	1626333098002
865128465899323393	571061785763905536	360783544668258314	-ping	191594115907977225	f	1626333099591
865128466999541810	571061785763905536	360783544668258314	Pong!	564564723614351360	f	1626333099973
865128478714363914	571061785763905536	360783544668258314	-help ping	191594115907977225	f	1626333102735
865128479851020319	571061785763905536	360783544668258314		564564723614351360	f	1626333102944
865136602716438528	571061785763905536	360783544668258314	-help	191594115907977225	f	1626335039825
865136604364668928	571061785763905536	360783544668258314		564564723614351360	f	1626335040034
865136642527461407	571061785763905536	360783544668258314	-hate	191594115907977225	f	1626335049219
865136644683989002	571061785763905536	360783544668258314	"Kay, this needs to be fixed. ... Of course, I'd also suggest that whoever was the genius who thought it was a good idea to read things ONE F*CKING BYTE AT A TIME with system calls for each byte should be retroactively aborted. Who the f*ck does idiotic things like that? How did they noty die as babies, considering that they were likely too stupid to find a tit to suck on?"\n**Hatelevel**: 0.6210100248236998	564564723614351360	f	1626335049658
865141805561806872	571061785763905536	360783544668258314	😄	191594115907977225	t	1626336280125
865156971455971329	470197424405872640	360783544668258314	-help	191594115907977225	f	1626339895921
865156972487114774	470197424405872640	360783544668258314		564564723614351360	f	1626339896293
865157019640266782	470197424405872640	360783544668258314	-math add 2 2	191594115907977225	f	1626339907458
865157020645982228	470197424405872640	360783544668258314	4	564564723614351360	f	1626339907647
865157052392144926	470197424405872640	360783544668258314	-math add 48756248735629376523976523945276345 1256243523764	191594115907977225	f	1626339915238
865157053277929472	470197424405872640	360783544668258314	48756248735629380000000000000000000	564564723614351360	f	1626339915448
865157110593224734	470197424405872640	360783544668258314	-math add 75632947654238756 27843562987562498752643876235743752762878582874545743785728756243587264359827365982746593756293756294375692435	191594115907977225	f	1626339929165
865157111582294067	470197424405872640	360783544668258314	27843562987562500000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000	564564723614351360	f	1626339929369
865157150350639124	470197424405872640	360783544668258314	-math add 5 d	191594115907977225	f	1626339938585
865157179124613141	470197424405872640	360783544668258314	-math add max_int	325704347767799808	f	1626339945550
865158920321630219	470197424405872640	360783544668258314	-math add 2 2	191594115907977225	f	1626340360685
865158921992011806	470197424405872640	360783544668258314	4	564564723614351360	f	1626340360996
865158940396748800	470197424405872640	360783544668258314	-math add 2 b	191594115907977225	f	1626340365394
865172672942178324	470197424405872640	360783544668258314	-math divide 2 2	191594115907977225	f	1626343639525
865172674086830110	470197424405872640	360783544668258314	1	564564723614351360	f	1626343639728
865172715141201920	470197424405872640	360783544668258314	-math + 2 (-2)	191594115907977225	f	1626343649556
865172741039718420	470197424405872640	360783544668258314	-math + 2 -2	191594115907977225	f	1626343655679
865172741912133642	470197424405872640	360783544668258314	0	564564723614351360	f	1626343655904
865174738552881164	470197424405872640	360783544668258314	-math repl 2 + 5 - 1	191594115907977225	t	1626344131972
865279232618790913	673943049533128714	673943048358461525	-shill	191594115907977225	f	1626369043803
865279234258763776	673943049533128714	673943048358461525		564564723614351360	f	1626369044099
865279250750636043	673943049533128714	673943048358461525	where pfp	191594115907977225	f	1626369048076
865174874083426324	470197424405872640	360783544668258314	6	564564723614351360	f	1626344164330
865174872648056853	470197424405872640	360783544668258314	-math repl 2 + 5 -1	191594115907977225	t	1626344164025
865174739253460993	470197424405872640	360783544668258314	Sorry, couldn't find a command named '`math`'\n\n With the `help` command you can list all available commands	564564723614351360	t	1626344132181
865175078797705217	470197424405872640	360783544668258314	-math eval 2 + 5 % 2	191594115907977225	f	1626344213176
865175080076836865	470197424405872640	360783544668258314	3	564564723614351360	f	1626344213484
865175153255120956	470197424405872640	360783544668258314	-math eval 2 + 5 - 2 * (1 / 2)	191594115907977225	f	1626344230892
865175154061869067	470197424405872640	360783544668258314	6	564564723614351360	f	1626344231200
865250974493573160	673943049533128714	673943048358461525	-deer	191594115907977225	f	1626362307990
865250975203721226	673943049533128714	673943048358461525	Sorry, couldn't find a command named '`deer`'\n\n With the `help` command you can list all available commands	564564723614351360	f	1626362308225
865251066374389800	673943049533128714	673943048358461525	-deer	191594115907977225	f	1626362329929
865251067376697394	673943049533128714	673943048358461525		564564723614351360	f	1626362330239
865251429747916811	673943049533128714	673943048358461525	-deer	191594115907977225	f	1626362416661
865251431043563530	673943049533128714	673943048358461525		564564723614351360	f	1626362416868
865251517475586068	673943049533128714	673943048358461525	-deer	191594115907977225	f	1626362437448
865251518257430548	673943049533128714	673943048358461525		564564723614351360	f	1626362437653
865251522715189248	673943049533128714	673943048358461525	best bot feature	434794201075417101	f	1626362438779
865251537974853632	673943049533128714	673943048358461525	-durr	191594115907977225	f	1626362442342
865251537919934484	673943049533128714	673943048358461525	10/10	434794201075417101	f	1626362442350
865251538879774731	673943049533128714	673943048358461525		564564723614351360	f	1626362442568
865251546157416479	673943049533128714	673943048358461525	xd	191594115907977225	f	1626362444412
865251559775273011	673943049533128714	673943048358461525	~deeb	434794201075417101	f	1626362447586
865251560745336833	673943049533128714	673943048358461525	Sorry, couldn't find a command named '`deeb`'\n\n With the `help` command you can list all available commands	558412881574494239	f	1626362447791
865272875019927553	673943049533128714	673943048358461525	should i change your invite embed up somehow?	191594115907977225	f	1626367528590
865273946827653120	673943049533128714	673943048358461525	you could use a direct link and make it a hyperlink	434794201075417101	f	1626367783548
865274595786489897	673943049533128714	673943048358461525	🍞 invite	434794201075417101	f	1626367938213
865274596663230474	673943049533128714	673943048358461525		673945530019217430	f	1626367938423
865275561151561728	673943049533128714	673943048358461525	🍞 shill	434794201075417101	f	1626368168369
865275561861054515	673943049533128714	673943048358461525		673945530019217430	f	1626368168596
865276131786883072	673943049533128714	673943048358461525	[test](https://doc.rust-lang.org/book/title-page.html)	191594115907977225	t	1626368304423
865276187214217266	673943049533128714	673943048358461525	How do you make that click here	191594115907977225	f	1626368317632
865276528827695155	673943049533128714	673943048358461525	embed.set_thumbnail(url=(bot_pfp))\n                embed.add_field(name="""I am definitely not being held at gunpoint right now, why don't you check out this very cool \nand awesome Reisrundfunk bot that does some things:""", value="[click here!](https://discordapp.com/oauth2/authorize?&client_id=673945530019217430&scope=bot&permissions=67620032)", inline=True)	434794201075417101	f	1626368399113
865276532699955251	673943049533128714	673943048358461525	-shill	191594115907977225	f	1626368400099
865276533659402291	673943049533128714	673943048358461525	Sorry, couldn't find a command named '`shill`'\n\n With the `help` command you can list all available commands	564564723614351360	f	1626368400331
865276559044378635	673943049533128714	673943048358461525	oh right	191594115907977225	f	1626368406300
865276562806145024	673943049533128714	673943048358461525	one sec	191594115907977225	f	1626368407194
865276607954026529	673943049533128714	673943048358461525	-durr	191594115907977225	f	1626368418046
865276608793411606	673943049533128714	673943048358461525	Sorry, couldn't find a command named '`durr`'\n\n With the `help` command you can list all available commands	564564723614351360	f	1626368418251
865276618980851783	673943049533128714	673943048358461525	huh	191594115907977225	f	1626368420672
865277200223043634	673943049533128714	673943048358461525	~durr	191594115907977225	f	1626368559173
865277201078681642	673943049533128714	673943048358461525	Sorry, couldn't find a command named '`durr`'\n\n With the `help` command you can list all available commands	558412881574494239	f	1626368559370
865277212018343936	673943049533128714	673943048358461525	-durr	191594115907977225	f	1626368561983
865277212822994954	673943049533128714	673943048358461525	Sorry, couldn't find a command named '`durr`'\n\n With the `help` command you can list all available commands	564564723614351360	f	1626368562175
865277223708000267	673943049533128714	673943048358461525	wha	191594115907977225	f	1626368564852
865277240724160512	673943049533128714	673943048358461525	-deer	191594115907977225	f	1626368568810
865277241519767602	673943049533128714	673943048358461525		564564723614351360	f	1626368569010
865277249867350036	673943049533128714	673943048358461525	ohhh	191594115907977225	f	1626368570998
865277253550342154	673943049533128714	673943048358461525	wait	191594115907977225	f	1626368571872
865277293156892712	673943049533128714	673943048358461525		191594115907977225	f	1626368581314
865277320385265706	673943049533128714	673943048358461525	deeber	434794201075417101	f	1626368587841
865277454516355092	673943049533128714	673943048358461525	it's compiling	191594115907977225	f	1626368619774
865277460623130654	673943049533128714	673943048358461525	done	191594115907977225	f	1626368621228
865277466494894080	673943049533128714	673943048358461525	-durr	191594115907977225	f	1626368622629
865277467417641020	673943049533128714	673943048358461525		564564723614351360	f	1626368622855
865277474173616209	673943049533128714	673943048358461525	~deeb	434794201075417101	f	1626368624535
865277475265445918	673943049533128714	673943048358461525	Sorry, couldn't find a command named '`deeb`'\n\n With the `help` command you can list all available commands	558412881574494239	f	1626368624735
865277505727234060	673943049533128714	673943048358461525	~shill	434794201075417101	f	1626368632052
865277506675277825	673943049533128714	673943048358461525	Sorry, couldn't find a command named '`shill`'\n\n With the `help` command you can list all available commands	558412881574494239	f	1626368632253
865277551978086420	673943049533128714	673943048358461525	tilde is the one on the server	191594115907977225	f	1626368643012
865277567220187166	673943049533128714	673943048358461525	minus is testing bot	191594115907977225	f	1626368646651
865277579845566464	673943049533128714	673943048358461525	oh	434794201075417101	f	1626368649667
865277632995393567	673943049533128714	673943048358461525	tbh it's hard to tell the difference	434794201075417101	f	1626368662465
865277646769750027	673943049533128714	673943048358461525	-shill	434794201075417101	f	1626368665658
865277647810723840	673943049533128714	673943048358461525		564564723614351360	f	1626368665863
865277710300741633	673943049533128714	673943048358461525	it should've added the pfp	191594115907977225	f	1626368680782
865277717989031996	673943049533128714	673943048358461525	<:thonk:641359643083538442>	191594115907977225	f	1626368682600
865277783398940672	673943049533128714	673943048358461525	yus	434794201075417101	f	1626368698181
865277854014636042	673943049533128714	673943048358461525	also you can update deer bot to get the funny shill command	434794201075417101	f	1626368715033
865277995895488562	673943049533128714	673943048358461525	you mean that at gunpoint?	191594115907977225	f	1626368748884
865278067034685452	673943049533128714	673943048358461525	-shill	191594115907977225	f	1626368765856
865278067956776981	673943049533128714	673943048358461525		564564723614351360	f	1626368766043
865278117135253504	673943049533128714	673943048358461525	yes	434794201075417101	f	1626368777761
865279270418513950	673943049533128714	673943048358461525	\\>:)	191594115907977225	f	1626369052725
865279528133853194	673943049533128714	673943048358461525	-shill	191594115907977225	f	1626369114170
865279529023176774	673943049533128714	673943048358461525		564564723614351360	f	1626369114377
865279663613018152	673943049533128714	673943048358461525	-shill	191594115907977225	f	1626369146458
865279664368123934	673943049533128714	673943048358461525		564564723614351360	f	1626369146644
865279741669539870	673943049533128714	673943048358461525	🍞 shill	434794201075417101	f	1626369165072
865279873030291487	673943049533128714	673943048358461525	-shill	191594115907977225	f	1626369196391
865279873965752330	673943049533128714	673943048358461525		564564723614351360	f	1626369196615
865279957567930368	673943049533128714	673943048358461525	why does your bot have my text though	434794201075417101	f	1626369216538
865281330841649172	673943049533128714	673943048358461525	i thought i should add that	191594115907977225	f	1626369543973
865281333760491531	673943049533128714	673943048358461525	ahhhh	191594115907977225	f	1626369544733
865281370958725120	673943049533128714	673943048358461525	oh wait	191594115907977225	f	1626369553539
865281380521738291	673943049533128714	673943048358461525	update deerbot	191594115907977225	f	1626369555794
865281407789563975	673943049533128714	673943048358461525	ffs	191594115907977225	f	1626369562289
865281430216900609	673943049533128714	673943048358461525	yes will do soon	191594115907977225	f	1626369567709
865281453621248024	673943049533128714	673943048358461525	-shill	191594115907977225	f	1626369573301
865281454434418689	673943049533128714	673943048358461525		564564723614351360	f	1626369573495
865281478741065809	673943049533128714	673943048358461525	agreed	434794201075417101	f	1626369579263
865281689945505824	673943049533128714	673943048358461525	-shill	191594115907977225	f	1626369629577
865281690755006484	673943049533128714	673943048358461525		564564723614351360	f	1626369629761
865281755640889344	673943049533128714	673943048358461525	-shill	191594115907977225	f	1626369645221
865281756281307187	673943049533128714	673943048358461525		564564723614351360	f	1626369645436
865281906144968754	673943049533128714	673943048358461525	-shill	191594115907977225	f	1626369681126
865281907120799765	673943049533128714	673943048358461525		564564723614351360	f	1626369681400
865282132913422366	673943049533128714	673943048358461525	getting there	434794201075417101	f	1626369735187
865282284981452851	673943049533128714	673943048358461525	btw check this out https://www.steamdeck.com/en/	434794201075417101	f	1626369771505
865283413656862751	708271503463940106	\N	-shill	191594115907977225	f	1626370040587
865283415036002334	708271503463940106	\N		564564723614351360	f	1626370040867
865284065263353886	708271503463940106	\N	-shill	191594115907977225	f	1626370195925
865284066181775370	708271503463940106	\N		564564723614351360	f	1626370196100
865285983461048380	708271503463940106	\N	-shill	191594115907977225	f	1626370653218
865285984279461958	708271503463940106	\N		564564723614351360	f	1626370653409
865286262821486593	708271503463940106	\N	-shill	191594115907977225	f	1626370719885
865286448563486770	708271503463940106	\N	-shill	191594115907977225	f	1626370764092
865286547702939648	708271503463940106	\N	-shill	191594115907977225	f	1626370787737
865286549390360616	708271503463940106	\N		564564723614351360	f	1626370788194
865286611171672094	708271503463940106	\N	-shill	191594115907977225	f	1626370802864
865286612685684750	708271503463940106	\N		564564723614351360	f	1626370803318
865286890047799316	708271503463940106	\N	-shill	191594115907977225	f	1626370869383
865287101280288780	708271503463940106	\N	-shill	191594115907977225	f	1626370919792
865287103137841192	708271503463940106	\N		564564723614351360	f	1626370920223
865287315076677632	708271503463940106	\N	-shill	191594115907977225	f	1626370970694
865287316960313344	708271503463940106	\N		564564723614351360	f	1626370971215
865287539179257886	708271503463940106	\N	-shill	191594115907977225	f	1626371024121
865287648280838144	708271503463940106	\N	-shill	191594115907977225	f	1626371050113
865287651028631552	708271503463940106	\N		564564723614351360	f	1626371051489
865287738740047923	673943049533128714	673943048358461525	finally	191594115907977225	f	1626371071718
865287747781787668	673943049533128714	673943048358461525	-shill	191594115907977225	f	1626371073851
865287749333811201	673943049533128714	673943048358461525		564564723614351360	f	1626371074347
865287815343767584	673943049533128714	673943048358461525	nice	434794201075417101	f	1626371089998
865287837855252500	673943049533128714	673943048358461525	🍞 shill	434794201075417101	f	1626371095339
865288036413341756	673943049533128714	673943048358461525		191594115907977225	f	1626371142647
865288042315120640	673943049533128714	673943048358461525	try now	191594115907977225	f	1626371144057
865288082240176159	673943049533128714	673943048358461525	🍞 shill	434794201075417101	f	1626371153664
865288083263324171	673943049533128714	673943048358461525		673945530019217430	f	1626371153834
865291858850480128	604027466012557480	360783544668258314	https://cdn.discordapp.com/attachments/333103977283715075/865290961906696202/video0-7.mp4	191594115907977225	f	1626372053981
865307789496942613	604027466012557480	360783544668258314	https://cdn.discordapp.com/attachments/272834881808105475/865291142433472568/video0.mp4	325704347767799808	f	1626375852133
865309171297288192	604027466012557480	360783544668258314	https://cdn.discordapp.com/attachments/272834881808105475/865309109536423976/funny.mp4	325704347767799808	f	1626376181533
865309576903917568	604027466012557480	360783544668258314	<@!191594115907977225> <@!276431762815451138>	325704347767799808	f	1626376278225
865311689838034984	604027466012557480	360783544668258314	https://twitter.com/Steam/status/1415718021469925378?s=20	191594115907977225	f	1626376781977
865312170941612082	604027466012557480	360783544668258314		325704347767799808	f	1626376896688
865316019115261952	604027466012557480	360783544668258314	https://cdn.discordapp.com/attachments/272834881808105475/865314582100312064/0JgTJ4yIy839BXKR-4.mp4	325704347767799808	f	1626377814129
865317011046006794	470197424405872640	360783544668258314	<@865316281242615858> just joined... or did they?	865316281242615858	f	1626378050617
865317168081534986	470197424405872640	360783544668258314	Swoooosh. <@865316281242615858> just landed.	865316281242615858	f	1626378088071
865317895735345152	571061785763905536	360783544668258314	<@!191594115907977225> wo datenbank	325704347767799808	f	1626378261543
865318160684941372	604027466012557480	360783544668258314	https://cdn.discordapp.com/attachments/692497159186153482/865036607723274320/aaaa.mp4	325704347767799808	f	1626378324716
865325063237664768	604027466012557480	360783544668258314		191594115907977225	f	1626379970374
865333192512897044	571061785763905536	360783544668258314	~math eval 1 / 0	191594115907977225	f	1626381908512
865333196220268564	571061785763905536	360783544668258314	inf	558412881574494239	f	1626381909427
865336398260600912	571061785763905536	360783544668258314	https://www.steamdeck.com/de/	191594115907977225	f	1626382672867
865489607877591070	470197424405872640	360783544668258314	-ping	191594115907977225	f	1626419202624
865489608380252172	470197424405872640	360783544668258314	Pong!	564564723614351360	f	1626419202855
865706683862745138	470197424405872640	360783544668258314	-join	191594115907977225	f	1626470958072
865706684664381470	470197424405872640	360783544668258314	Sorry, couldn't find a command named '`join`'\n\n With the `help` command you can list all available commands	564564723614351360	f	1626470958253
865707449420087316	470197424405872640	360783544668258314	-join	191594115907977225	f	1626471140587
865707553677115442	470197424405872640	360783544668258314	-join	191594115907977225	f	1626471165451
865707554335227977	470197424405872640	360783544668258314	Not in a voice channel	564564723614351360	f	1626471165643
865707903704891412	470197424405872640	360783544668258314	-join	191594115907977225	f	1626471248893
865707908317839380	470197424405872640	360783544668258314	Joined channel	564564723614351360	f	1626471250004
865719525243355166	470197424405872640	360783544668258314	-join	191594115907977225	f	1626474019644
865719531242127370	470197424405872640	360783544668258314	Joined channel	564564723614351360	f	1626474021070
865719535684419634	470197424405872640	360783544668258314	-leave	191594115907977225	f	1626474022129
865719536431267840	470197424405872640	360783544668258314	Sorry, couldn't find a command named '`leave`'\n\n With the `help` command you can list all available commands	564564723614351360	f	1626474022317
865719554624454656	470197424405872640	360783544668258314	Sorry, couldn't find a command named '`fuckoff`'\n\n With the `help` command you can list all available commands	564564723614351360	f	1626474026660
865719553501691915	470197424405872640	360783544668258314	-fuckoff	191594115907977225	f	1626474026463
865719722774757426	470197424405872640	360783544668258314	-leave	191594115907977225	f	1626474066735
865719723709956097	470197424405872640	360783544668258314	Not in a voice channel	564564723614351360	f	1626474066989
865719738218971146	470197424405872640	360783544668258314	-join	191594115907977225	f	1626474070446
865719743520047124	470197424405872640	360783544668258314	Joined channel	564564723614351360	f	1626474071694
865719753255288842	470197424405872640	360783544668258314	-leave	191594115907977225	f	1626474074016
865719753988636712	470197424405872640	360783544668258314	Left voice channel	564564723614351360	f	1626474074190
865719764558282793	470197424405872640	360783544668258314	-join	191594115907977225	f	1626474076710
865719769294700555	470197424405872640	360783544668258314	Joined channel	564564723614351360	f	1626474077856
865719775165808671	470197424405872640	360783544668258314	-fuckoff	191594115907977225	f	1626474079231
865719776046743593	470197424405872640	360783544668258314	Left voice channel	564564723614351360	f	1626474079476
865722100282294302	470197424405872640	360783544668258314	-join	191594115907977225	f	1626474633576
865722106347126815	470197424405872640	360783544668258314	Joined channel	564564723614351360	f	1626474635032
865723397766119515	470197424405872640	360783544668258314	-play https://youtu.be/DMoCM_FgLP8	191594115907977225	f	1626474942994
865723399367294986	470197424405872640	360783544668258314	Sorry, couldn't find a command named '`play`'\n\n With the `help` command you can list all available commands	564564723614351360	f	1626474943287
865723473162797066	470197424405872640	360783544668258314	-fuckoff	191594115907977225	f	1626474960908
865723473908858930	470197424405872640	360783544668258314	Left voice channel	564564723614351360	f	1626474961065
865723527079788565	470197424405872640	360783544668258314	-join	191594115907977225	f	1626474973824
865723532515082270	470197424405872640	360783544668258314	Joined channel	564564723614351360	f	1626474975035
865723545761349642	470197424405872640	360783544668258314	-play https://youtu.be/DMoCM_FgLP8	191594115907977225	f	1626474978193
865723556474257428	470197424405872640	360783544668258314	Playing song	564564723614351360	f	1626474980814
865725044185497600	191594334037082112	191594334037082112	-join	191594115907977225	f	1626475335445
865725048815878165	191594334037082112	191594334037082112	Joined channel	564564723614351360	f	1626475336652
865725065533849601	191594334037082112	191594334037082112	-play https://youtu.be/DMoCM_FgLP8	191594115907977225	f	1626475340546
865725070835187743	191594334037082112	191594334037082112	Playing song	564564723614351360	f	1626475341822
865731848360689714	470197424405872640	360783544668258314	-join	191594115907977225	f	1626476957675
865731853649444864	470197424405872640	360783544668258314	Joined channel	564564723614351360	f	1626476958921
865731872252100660	470197424405872640	360783544668258314	-play https://youtu.be/DMoCM_FgLP8	191594115907977225	f	1626476963441
865731877909954582	470197424405872640	360783544668258314	Playing song	564564723614351360	f	1626476964710
865732076161597450	470197424405872640	360783544668258314	-join	191594115907977225	f	1626477011981
865732079512453160	470197424405872640	360783544668258314	Joined channel	564564723614351360	f	1626477012767
865732085397323817	470197424405872640	360783544668258314	-queue https://youtu.be/DMoCM_FgLP8	191594115907977225	f	1626477014252
865732090587119616	470197424405872640	360783544668258314	Added song to queue: position 1	564564723614351360	f	1626477015409
865733623684792350	470197424405872640	360783544668258314	-join	191594115907977225	f	1626477380924
865733628280963113	470197424405872640	360783544668258314	Joined channel	564564723614351360	f	1626477382051
865733652514996264	470197424405872640	360783544668258314	-play https://youtu.be/DMoCM_FgLP8	191594115907977225	f	1626477387798
865733657561792522	470197424405872640	360783544668258314	Playing song	564564723614351360	f	1626477388998
865733684341637151	470197424405872640	360783544668258314	-leave	191594115907977225	f	1626477395442
865733685340012564	470197424405872640	360783544668258314	Left voice channel	564564723614351360	f	1626477395621
865733693292544011	470197424405872640	360783544668258314	-join	191594115907977225	f	1626477397514
865733697768259584	470197424405872640	360783544668258314	Joined channel	564564723614351360	f	1626477398586
865733716973322271	470197424405872640	360783544668258314	-queue https://youtu.be/DMoCM_FgLP8	191594115907977225	f	1626477403187
865733722221051904	470197424405872640	360783544668258314	Now playing the song	564564723614351360	f	1626477404416
865733753954893875	470197424405872640	360783544668258314	-queue https://youtu.be/DMoCM_FgLP8	191594115907977225	f	1626477412033
865733759042060308	470197424405872640	360783544668258314	Added song to queue: position 2	564564723614351360	f	1626477413200
865733772221349899	470197424405872640	360783544668258314	-queue https://youtu.be/DMoCM_FgLP8	191594115907977225	f	1626477416366
865733777207459840	470197424405872640	360783544668258314	Added song to queue: position 3	564564723614351360	f	1626477417536
865733779947913216	470197424405872640	360783544668258314	-queue https://youtu.be/DMoCM_FgLP8	191594115907977225	f	1626477418202
865733784891293696	470197424405872640	360783544668258314	Added song to queue: position 4	564564723614351360	f	1626477419354
865735058953994271	470197424405872640	360783544668258314	-fuckoff	191594115907977225	f	1626477723132
865735060060635137	470197424405872640	360783544668258314	Left voice channel	564564723614351360	f	1626477723426
865735065254363136	470197424405872640	360783544668258314	-join	191594115907977225	f	1626477724617
865735069540286465	470197424405872640	360783544668258314	Joined channel	564564723614351360	f	1626477725709
865735077345099777	470197424405872640	360783544668258314	-play https://open.spotify.com/track/6zRBNkFmcNLgb3mOLmUK8i?si=084f5c5a71944ae0	191594115907977225	f	1626477727601
865735081657237504	470197424405872640	360783544668258314	Error sourcing ffmpeg	564564723614351360	f	1626477728530
865735151794257920	470197424405872640	360783544668258314	-play https://music.youtube.com/watch?v=vULkm8PIPII&feature=share	191594115907977225	f	1626477745250
865735156340883516	470197424405872640	360783544668258314	Playing song	564564723614351360	f	1626477746333
865735624435040286	470197424405872640	360783544668258314	-join	191594115907977225	f	1626477857928
865735628720439357	470197424405872640	360783544668258314	Joined channel	564564723614351360	f	1626477859039
865735656779808768	470197424405872640	360783544668258314	-play https://music.youtube.com/watch?v=vULkm8PIPII&feature=share	191594115907977225	f	1626477865650
865735661025099808	470197424405872640	360783544668258314	Playing song	564564723614351360	f	1626477866713
865735708488499221	470197424405872640	360783544668258314	-join	191594115907977225	f	1626477878026
865735713075888139	470197424405872640	360783544668258314	Joined channel	564564723614351360	f	1626477879170
865735721109422130	470197424405872640	360783544668258314	-play -play https://music.youtube.com/watch?v=vULkm8PIPII&feature=share	191594115907977225	f	1626477880992
865735721792438292	470197424405872640	360783544668258314	Must provide a valid URL	564564723614351360	f	1626477881137
865735726762295327	470197424405872640	360783544668258314	-play https://music.youtube.com/watch?v=vULkm8PIPII&feature=share	191594115907977225	f	1626477882335
865735731149012993	470197424405872640	360783544668258314	Playing song	564564723614351360	f	1626477883407
865735782709592105	191594334037082112	191594334037082112	-join	191594115907977225	f	1626477895743
865735787529240576	191594334037082112	191594334037082112	Joined channel	564564723614351360	f	1626477896815
865735790042546186	191594334037082112	191594334037082112	-play https://music.youtube.com/watch?v=vULkm8PIPII&feature=share	191594115907977225	f	1626477897416
865735794538053662	191594334037082112	191594334037082112	Playing song	564564723614351360	f	1626477898489
865736421011357697	470197424405872640	360783544668258314	-queue https://music.youtube.com/watch?v=RCKX2ojobbk&feature=share	191594115907977225	f	1626478047895
865736425989996595	470197424405872640	360783544668258314	Now playing the song	564564723614351360	f	1626478049030
865736491354423328	470197424405872640	360783544668258314	-leave	191594115907977225	f	1626478064635
865736492332875786	470197424405872640	360783544668258314	Left voice channel	564564723614351360	f	1626478064861
865736503559716904	470197424405872640	360783544668258314	-join	191594115907977225	f	1626478067528
865736508300197938	470197424405872640	360783544668258314	Joined channel	564564723614351360	f	1626478068656
865736520056307742	470197424405872640	360783544668258314	-queue https://music.youtube.com/watch?v=RCKX2ojobbk&feature=share	191594115907977225	f	1626478071472
865736524766773268	470197424405872640	360783544668258314	Now playing the song	564564723614351360	f	1626478072599
865739630553202718	470197424405872640	360783544668258314	-leave	191594115907977225	f	1626478813057
865736688734699561	470197424405872640	360783544668258314	-queue https://music.youtube.com/watch?v=9Ov2naIy4E0&feature=share	191594115907977225	f	1626478111728
865739631253127188	470197424405872640	360783544668258314	Left voice channel	564564723614351360	f	1626478813219
865739637066694687	470197424405872640	360783544668258314	Not in a voice channel to play in	564564723614351360	f	1626478814686
865739655924023336	470197424405872640	360783544668258314	Joined channel	564564723614351360	f	1626478819095
865739664925130772	470197424405872640	360783544668258314	Now playing the song	564564723614351360	f	1626478821240
865740825399787540	470197424405872640	360783544668258314	-queue https://music.youtube.com/watch?v=8JShhdEsi0Y&feature=share	191594115907977225	f	1626479097924
865741409663451156	470197424405872640	360783544668258314	-queue https://music.youtube.com/watch?v=mSFKMCMTcow&feature=share	191594115907977225	f	1626479237218
865736693793554464	470197424405872640	360783544668258314	Added song to queue: position 2	564564723614351360	f	1626478112888
865739529504030761	470197424405872640	360783544668258314	-queue https://music.youtube.com/watch?v=9Ov2naIy4E0&feature=share	191594115907977225	f	1626478789081
865739535156248577	470197424405872640	360783544668258314	Now playing the song	564564723614351360	f	1626478790404
865739612819685376	470197424405872640	360783544668258314	-queue https://music.youtube.com/watch?v=8bzcqRIhxLE&feature=share	191594115907977225	f	1626478808820
865739617440628736	470197424405872640	360783544668258314	Added song to queue: position 2	564564723614351360	f	1626478809925
865741774786134036	470197424405872640	360783544668258314	-queue https://music.youtube.com/watch?v=46ZBq010DDs&feature=share	191594115907977225	f	1626479324273
865741779264733205	470197424405872640	360783544668258314	Added song to queue: position 2	564564723614351360	f	1626479325347
865739636726824980	470197424405872640	360783544668258314	-queue https://music.youtube.com/watch?v=8bzcqRIhxLE&feature=share	191594115907977225	f	1626478814521
865739650550464583	470197424405872640	360783544668258314	-join	191594115907977225	f	1626478817896
865739659807424572	470197424405872640	360783544668258314	-queue https://music.youtube.com/watch?v=8bzcqRIhxLE&feature=share	191594115907977225	f	1626478820035
865740830491672595	470197424405872640	360783544668258314	Now playing the song	564564723614351360	f	1626479099218
865741414373392395	470197424405872640	360783544668258314	Added song to queue: position 2	564564723614351360	f	1626479238386
865742523238055988	470197424405872640	360783544668258314	-join	191594115907977225	f	1626479502806
865742528564822016	470197424405872640	360783544668258314	Joined channel	564564723614351360	f	1626479503985
865742542892826664	470197424405872640	360783544668258314	-queue https://music.youtube.com/watch?v=mSFKMCMTcow&feature=share	191594115907977225	f	1626479507427
865742547540639815	470197424405872640	360783544668258314	Now playing the song	564564723614351360	f	1626479508508
865742566905479178	470197424405872640	360783544668258314	-queue https://music.youtube.com/watch?v=46ZBq010DDs&feature=share	191594115907977225	f	1626479513119
865742571309760562	470197424405872640	360783544668258314	Added song to queue: position 2	564564723614351360	f	1626479514169
865742585543524362	470197424405872640	360783544668258314	-skip	191594115907977225	f	1626479517576
865742586425769996	470197424405872640	360783544668258314	Sorry, couldn't find a command named '`skip`'\n\n With the `help` command you can list all available commands	564564723614351360	f	1626479517777
865742715156299802	470197424405872640	360783544668258314	-join	191594115907977225	f	1626479548558
865742720428670996	470197424405872640	360783544668258314	Joined channel	564564723614351360	f	1626479549719
865742753689370647	470197424405872640	360783544668258314	-queue https://music.youtube.com/watch?v=mSFKMCMTcow&feature=share	191594115907977225	f	1626479557734
865742758378340352	470197424405872640	360783544668258314	Now playing the song	564564723614351360	f	1626479558774
865742781645455431	470197424405872640	360783544668258314	-queue https://music.youtube.com/watch?v=46ZBq010DDs&feature=share	191594115907977225	f	1626479564405
865742786782298133	470197424405872640	360783544668258314	Added song to queue: position 2	564564723614351360	f	1626479565556
865743068972056597	470197424405872640	360783544668258314	-skip	191594115907977225	f	1626479632914
865744224893009970	470197424405872640	360783544668258314	-queue	191594115907977225	f	1626479908409
865744226599567370	470197424405872640	360783544668258314	Must provide a URL to a video or audio	564564723614351360	f	1626479908812
865744235483103262	470197424405872640	360783544668258314	-queue https://music.youtube.com/watch?v=ZeWtgD55ntY&list=RDAMVMpH1QKqT9y6c	191594115907977225	f	1626479910951
865744241204658207	470197424405872640	360783544668258314	Now playing the song	564564723614351360	f	1626479912348
865744297961193492	470197424405872640	360783544668258314	-skip	191594115907977225	f	1626479925850
865744318862196786	470197424405872640	360783544668258314	-queue https://music.youtube.com/watch?v=ZeWtgD55ntY&list=RDAMVMpH1QKqT9y6c	191594115907977225	f	1626479930816
865744323882647613	470197424405872640	360783544668258314	Now playing the song	564564723614351360	f	1626479932020
865744534910402581	470197424405872640	360783544668258314	-queue https://music.youtube.com/watch?v=wy9r2qeouiQ&feature=share	191594115907977225	f	1626479982351
865744539531739146	470197424405872640	360783544668258314	Added song to queue: position 2	564564723614351360	f	1626479983419
865744578368110594	470197424405872640	360783544668258314	-queue https://music.youtube.com/watch?v=Ot-q9ma28Hs&feature=share	191594115907977225	f	1626479992747
865744583466811392	470197424405872640	360783544668258314	Added song to queue: position 3	564564723614351360	f	1626479993911
865746248420818966	470197424405872640	360783544668258314	-queue https://music.youtube.com/watch?v=Ot-q9ma28Hs&feature=share	191594115907977225	f	1626480390896
865746253392773210	470197424405872640	360783544668258314	Added song to queue: position 2	564564723614351360	f	1626480392038
865747638644113408	470197424405872640	360783544668258314	-skip	191594115907977225	f	1626480722305
865747816776728598	470197424405872640	360783544668258314	-que https://music.youtube.com/watch?v=v2AC41dglnM&feature=share	325704347767799808	f	1626480764838
865747818274750474	470197424405872640	360783544668258314	Sorry, couldn't find a command named '`que`'\n\n With the `help` command you can list all available commands	564564723614351360	f	1626480765139
865748504513216542	470197424405872640	360783544668258314	-join	191594115907977225	f	1626480928739
865748509273096202	470197424405872640	360783544668258314	Joined channel	564564723614351360	f	1626480929865
865748524242698260	470197424405872640	360783544668258314	-play https://music.youtube.com/watch?v=v2AC41dglnM&feature=share	325704347767799808	f	1626480933445
865748529992564746	470197424405872640	360783544668258314	Now playing the song	564564723614351360	f	1626480934809
865748541816307742	470197424405872640	360783544668258314	nö	325704347767799808	f	1626480937631
865748648024342539	470197424405872640	360783544668258314	-play https://music.youtube.com/watch?v=QBM_zTM3pmU&feature=share	325704347767799808	f	1626480963041
865748653372604426	470197424405872640	360783544668258314	Added song to queue: position 2	564564723614351360	f	1626480964241
865917606371655710	470197424405872640	360783544668258314	-join	191594115907977225	f	1626521245455
865917612697714738	470197424405872640	360783544668258314	Joined channel	564564723614351360	f	1626521246958
865917643940298782	470197424405872640	360783544668258314	-play https://dfasjd	191594115907977225	f	1626521254444
865917647304523786	470197424405872640	360783544668258314	Error sourcing ffmpeg	564564723614351360	f	1626521255210
865922952120631367	470197424405872640	360783544668258314	-play https://www.youtube.com/playlist?list=PLaezaJE24aTF6Z4eAdMGNb-ObUqwCSDNg	191594115907977225	f	1626522520046
865923077736890368	470197424405872640	360783544668258314	-join	191594115907977225	f	1626522549935
865923084275417088	470197424405872640	360783544668258314	Joined channel	564564723614351360	f	1626522551465
865923092764819466	470197424405872640	360783544668258314	-play https://www.youtube.com/playlist?list=PLaezaJE24aTF6Z4eAdMGNb-ObUqwCSDNg	191594115907977225	f	1626522553490
865923220351877150	470197424405872640	360783544668258314	Now playing the song	564564723614351360	f	1626522583908
865923309329842227	470197424405872640	360783544668258314	-play https://music.youtube.com/watch?v=46ZBq010DDs&feature=share	191594115907977225	f	1626522605160
865923314257494046	470197424405872640	360783544668258314	Added song to queue: position 2	564564723614351360	f	1626522606302
865923354200113163	470197424405872640	360783544668258314	-skip	191594115907977225	f	1626522615844
865923379542360103	470197424405872640	360783544668258314	-skip	191594115907977225	f	1626522621866
865923403370463252	470197424405872640	360783544668258314	-play https://www.youtube.com/playlist?list=PLaezaJE24aTF6Z4eAdMGNb-ObUqwCSDNg	191594115907977225	f	1626522627554
865923525793021952	470197424405872640	360783544668258314	Now playing the song	564564723614351360	f	1626522656732
865923613239672852	470197424405872640	360783544668258314	-skip	191594115907977225	f	1626522677594
865923631645196288	470197424405872640	360783544668258314	-play https://www.youtube.com/playlist?list=PLaezaJE24aTF6Z4eAdMGNb-ObUqwCSDNg	191594115907977225	f	1626522681967
865923759214690324	470197424405872640	360783544668258314	Now playing the song	564564723614351360	f	1626522712384
865928276501200907	470197424405872640	360783544668258314	-leave	191594115907977225	f	1626523789410
865928278073278474	470197424405872640	360783544668258314	Left voice channel	564564723614351360	f	1626523789738
865985807470690324	470197424405872640	360783544668258314	-help	191594115907977225	f	1626537505571
865985808086335519	470197424405872640	360783544668258314		564564723614351360	f	1626537505754
865989364596604968	470197424405872640	360783544668258314	-join	191594115907977225	f	1626538353668
865989371026472971	470197424405872640	360783544668258314	Joined channel	564564723614351360	f	1626538355251
865989408222347305	470197424405872640	360783544668258314	-play https://www.youtube.com/playlist?list=PLaezaJE24aTF6Z4eAdMGNb-ObUqwCSDNg	191594115907977225	f	1626538364116
865989526404595713	470197424405872640	360783544668258314	Now playing the song	564564723614351360	f	1626538392304
865989933612662807	470197424405872640	360783544668258314	-join	191594115907977225	f	1626538489321
865989934351253535	470197424405872640	360783544668258314	Sorry, couldn't find a command named '`join`'\n\n With the `help` command you can list all available commands	564564723614351360	f	1626538489516
865990455823826954	604027466012557480	360783544668258314	https://cdn.discordapp.com/attachments/844680532292927518/865849212703866900/deez.mp4	325704347767799808	f	1626538613832
865990874776731678	604027466012557480	360783544668258314	https://cdn.discordapp.com/attachments/286936902957924363/865757963439833098/1.mov	325704347767799808	f	1626538713693
865990938382696458	604027466012557480	360783544668258314	https://cdn.discordapp.com/attachments/286936902957924363/865757964275154974/2.mov	325704347767799808	f	1626538728859
865990956663046144	604027466012557480	360783544668258314	https://cdn.discordapp.com/attachments/286936902957924363/865757965083738143/3.mov	325704347767799808	f	1626538733212
866020042251173909	604027466012557480	360783544668258314	https://cdn.discordapp.com/attachments/541671795539836928/865669873249550396/video0.mp4	325704347767799808	f	1626545667718
866025589446279198	675395799584079893	360783544668258314	https://fxtwitter.com/Taurevanime/status/1416287909141942275?s=19	325704347767799808	f	1626546990164
866040243169001522	470197424405872640	360783544668258314	-join	191594115907977225	f	1626550483849
866040248315412495	470197424405872640	360783544668258314	Joined <#796795595846320139>	564564723614351360	f	1626550485058
866040249545392139	470197424405872640	360783544668258314	Joined channel	564564723614351360	f	1626550485350
866040311918362665	470197424405872640	360783544668258314	-fuckoff	191594115907977225	f	1626550500237
866040312744247296	470197424405872640	360783544668258314	Left voice channel	564564723614351360	f	1626550500411
866047162068369441	470197424405872640	360783544668258314	-join	191594115907977225	f	1626552133481
866047166258479154	470197424405872640	360783544668258314	Joined <#796795595846320139>	564564723614351360	f	1626552134384
866047203352641536	470197424405872640	360783544668258314	-play https://www.youtube.com/playlist?list=PLaezaJE24aTF6Z4eAdMGNb-ObUqwCSDNg	191594115907977225	f	1626552143226
866047206527205387	470197424405872640	360783544668258314	Added to queue: Beyond - A Chillwave Mix	564564723614351360	f	1626552144044
866047557431984158	470197424405872640	360783544668258314	-join	191594115907977225	f	1626552227653
866047562401316864	470197424405872640	360783544668258314	Joined <#796795595846320139>	564564723614351360	f	1626552228831
866047573487386645	470197424405872640	360783544668258314	-play https://www.youtube.com/playlist?list=PLaezaJE24aTF6Z4eAdMGNb-ObUqwCSDNg	191594115907977225	f	1626552231481
866048142188609547	470197424405872640	360783544668258314	-join	191594115907977225	f	1626552367069
866048146097307668	470197424405872640	360783544668258314	Joined <#796795595846320139>	564564723614351360	f	1626552368004
866048158072700938	470197424405872640	360783544668258314	-play https://www.youtube.com/playlist?list=PLaezaJE24aTF6Z4eAdMGNb-ObUqwCSDNg	191594115907977225	f	1626552370848
866048160845398026	470197424405872640	360783544668258314	Added to queue: Beyond - A Chillwave Mix	564564723614351360	f	1626552371503
866051930651230230	675395799584079893	360783544668258314		325704347767799808	f	1626553270327
866052337398841355	675395799584079893	360783544668258314		325704347767799808	f	1626553367360
866052469288992788	675395799584079893	360783544668258314		325704347767799808	f	1626553398718
866052526113030154	604027466012557480	360783544668258314	https://cdn.discordapp.com/attachments/272834881808105475/866052259380854814/video0-12.mp4	325704347767799808	f	1626553412263
866053866856513557	470197424405872640	360783544668258314	-leave	191594115907977225	f	1626553731982
866053868538298388	470197424405872640	360783544668258314	Left voice channel	564564723614351360	f	1626553732310
866053878213771284	470197424405872640	360783544668258314	-join	191594115907977225	f	1626553734616
866053881875136563	470197424405872640	360783544668258314	Joined <#796795595846320139>	564564723614351360	f	1626553735507
866053902712176710	470197424405872640	360783544668258314	-play https://www.youtube.com/watch?v=yW0QKrvJPaU	191594115907977225	f	1626553740453
866053905513971752	470197424405872640	360783544668258314	Added to queue: [Electro Swing] A Friend Like Me (Sim Gretina Remix)	564564723614351360	f	1626553741121
866053919440633887	470197424405872640	360783544668258314	-queue	191594115907977225	f	1626553744540
866053920459194419	470197424405872640	360783544668258314	Sorry, couldn't find a command named '`queue`'\n\n With the `help` command you can list all available commands	564564723614351360	f	1626553744722
866053948250390528	470197424405872640	360783544668258314	-leave	191594115907977225	f	1626553751314
866053949010345994	470197424405872640	360783544668258314	Left voice channel	564564723614351360	f	1626553751491
866054020132503562	470197424405872640	360783544668258314	-join	191594115907977225	f	1626553768458
866054022611861525	470197424405872640	360783544668258314	Joined <#796795595846320139>	564564723614351360	f	1626553769039
866054060171984938	470197424405872640	360783544668258314	-play https://www.youtube.com/watch?v=yW0QKrvJPaU	191594115907977225	f	1626553778077
866054063019393024	470197424405872640	360783544668258314	Added to queue: [Electro Swing] A Friend Like Me (Sim Gretina Remix)	564564723614351360	f	1626553778673
866054242794995773	470197424405872640	360783544668258314	-join	191594115907977225	f	1626553821662
866054247216316416	470197424405872640	360783544668258314	Joined <#796795595846320139>	564564723614351360	f	1626553822604
866054254313865236	470197424405872640	360783544668258314	-play https://www.youtube.com/watch?v=yW0QKrvJPaU	191594115907977225	f	1626553824280
866054258272239646	470197424405872640	360783544668258314	Added to queue: [Electro Swing] A Friend Like Me (Sim Gretina Remix)	564564723614351360	f	1626553825250
866060188763029544	470197424405872640	360783544668258314	-play	191594115907977225	f	1626555239141
866060192323469312	470197424405872640	360783544668258314	Could not find any video of the search query.	564564723614351360	f	1626555239982
866060221415817286	470197424405872640	360783544668258314	-play https://www.youtube.com/playlist?list=PLaezaJE24aTF6Z4eAdMGNb-ObUqwCSDNg	191594115907977225	f	1626555246928
866060223444811777	470197424405872640	360783544668258314	Added to queue: Beyond - A Chillwave Mix	564564723614351360	f	1626555247447
866060249949405215	470197424405872640	360783544668258314	-skip	191594115907977225	f	1626555253759
866062051554230312	470197424405872640	360783544668258314	-join	191594115907977225	f	1626555683249
866062056883748884	470197424405872640	360783544668258314	Joined <#796795595846320139>	564564723614351360	f	1626555684521
866062066561712208	470197424405872640	360783544668258314	-play https://www.youtube.com/playlist?list=PLaezaJE24aTF6Z4eAdMGNb-ObUqwCSDNg	191594115907977225	f	1626555686835
866062068997423105	470197424405872640	360783544668258314	Added to queue: Beyond - A Chillwave Mix	564564723614351360	f	1626555687504
866062186405167133	470197424405872640	360783544668258314	-skip	191594115907977225	f	1626555715501
866062187512594432	470197424405872640	360783544668258314	Skipped: Beyond - A Chillwave Mix	564564723614351360	f	1626555715663
866062216839168000	470197424405872640	360783544668258314	-skip	191594115907977225	f	1626555722659
866062217568452608	470197424405872640	360783544668258314	Skipped: 'E P O C H' | A Synthwave Mix	564564723614351360	f	1626555722835
866062252008669234	470197424405872640	360783544668258314	-leave	191594115907977225	f	1626555731524
866062254415544371	470197424405872640	360783544668258314	Left voice channel	564564723614351360	f	1626555731889
866062265622593566	470197424405872640	360783544668258314	-join	191594115907977225	f	1626555734546
866062270748688415	470197424405872640	360783544668258314	Joined <#796795595846320139>	564564723614351360	f	1626555735738
866062275836248064	470197424405872640	360783544668258314	-play https://www.youtube.com/playlist?list=PLaezaJE24aTF6Z4eAdMGNb-ObUqwCSDNg	191594115907977225	f	1626555736864
866062278063161384	470197424405872640	360783544668258314	Added to queue: Beyond - A Chillwave Mix	564564723614351360	f	1626555737341
866062296890212402	470197424405872640	360783544668258314	-skip	191594115907977225	f	1626555741757
866062297667076126	470197424405872640	360783544668258314	Skipped: Beyond - A Chillwave Mix	564564723614351360	f	1626555741957
866062301568303135	470197424405872640	360783544668258314	-skip	191594115907977225	f	1626555742950
866062302389338183	470197424405872640	360783544668258314	Skipped: 'E P O C H' | A Synthwave Mix	564564723614351360	f	1626555743173
866062307490791485	470197424405872640	360783544668258314	-skip	191594115907977225	f	1626555744310
866062308430184508	470197424405872640	360783544668258314	Skipped: 'Back To The 80's' | Best of Synthwave And Retro Electro Music Mix for 2 Hours | Vol. 3	564564723614351360	f	1626555744502
866066341039046678	571061785763905536	360783544668258314		191594115907977225	f	1626556705997
866067170106540032	571061785763905536	360783544668258314		191594115907977225	f	1626556903592
866067466160308245	470197424405872640	360783544668258314	-play https://www.youtube.com/watch?v=26SKP1UrEQ0&list=RDEMaZGEHuwTMiobcjDXKXcOow&start_radio=1	191594115907977225	f	1626556974200
866067469771603980	470197424405872640	360783544668258314	Added to queue: Eisbrecher - Das Gesetz (Official Lyric Video)	564564723614351360	f	1626556975124
866067512700698667	470197424405872640	360783544668258314	-leave	191594115907977225	f	1626556985275
866067512969658449	470197424405872640	360783544668258314	Left voice channel	564564723614351360	f	1626556985424
866067532687605791	470197424405872640	360783544668258314	-play https://www.youtube.com/watch?v=26SKP1UrEQ0&list=RDEMaZGEHuwTMiobcjDXKXcOow&start_radio=1	191594115907977225	f	1626556990055
866067535110864917	470197424405872640	360783544668258314	Added to queue: Eisbrecher - Das Gesetz (Official Lyric Video)	564564723614351360	f	1626556990703
866070696290811974	470197424405872640	360783544668258314	-skip	191594115907977225	f	1626557744287
866067522982117426	470197424405872640	360783544668258314	-join	191594115907977225	f	1626556987718
866067526529843221	470197424405872640	360783544668258314	Joined <#796795595846320139>	564564723614351360	f	1626556988628
866070697516597278	470197424405872640	360783544668258314	Skipped: EISBRECHER - Megamix	564564723614351360	f	1626557744573
\.


--
-- Data for Name: updated_messages; Type: TABLE DATA; Schema: public; Owner: dminer
--

COPY public.updated_messages (message_id, new_content, modify_timestamp) FROM stdin;
864411696278143018	test edited	1626162213727
864411696278143018	test edited 2	1626162271789
864413569423507476	test edit	1626162658870
864413569423507476	test edit 3	1626162697885
864413569423507476	test edit 4	1626162866949
865276528827695155	```python\nembed.set_thumbnail(url=(bot_pfp))\nembed.add_field(name="""I am definitely not being held at gunpoint right now, why don't you check out this very cool \nand awesome Reisrundfunk bot that does some things:""", value="[click here!](https://discordapp.com/oauth2/authorize?&client_id=673945530019217430&scope=bot&permissions=67620032)", inline=True)```	1626368445423
865279270418513950	\\>:(	1626369055846
\.


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: dminer
--

COPY public.users (user_id, username) FROM stdin;
191594115907977225	flamion
261520809225355264	SirGodless
325704347767799808	FlareFlo🦆
235088799074484224	Rythm
564564723614351360	Botti
150726330974076929	\N
411656316814098441	\N
295876172057804800	\N
251364645254856714	\N
681192725152006160	\N
259742638758952965	\N
263407413737160718	\N
305364718762328074	\N
206955935229280256	\N
302519349489434624	\N
509017844537622532	\N
242259852288720896	Schleppo420
361914328703696896	\N
152104114753372160	\N
281381884460662785	\N
449306494328897546	\N
371656565607890964	\N
343815575065198604	\N
597188981964144680	\N
286148958219272192	WeebLeader
225320760296734726	\N
223666520943886336	\N
271659253486452736	\N
424599087145549835	\N
403571252402585601	\N
434794201075417101	\N
459713629441490945	\N
303629271371612161	niklaspunkt
147395304549908480	Roboticred
423209678097481728	SaintCrimson
350315230389207040	Röeöeper
325680267085873152	\N
708309251562405908	\N
830906925075136522	EulePlunder555
368355102949376000	\N
422416366742667264	\N
558412881574494239	Reisrundfunk
311607742542381068	\N
518082750088085509	\N
673945530019217430	Deer Bot
388739473489526784	\N
202407278618476545	\N
423162525350363136	\N
276431762815451138	\N
127491498034987008	\N
280050308611309569	\N
547850369695219712	RoxxorDx
384759010332770307	𝓓𝓮𝓿𝓲𝓵
380055690397351948	\N
258231386945748993	Blemd
376398434758033409	\N
174186616422662144	\N
358593765264588800	Gott
461265486655520788	\N
272411073842511873	Matter
266214587794194433	\N
865316281242615858	Bot-testing-application
286192633380864001	\N
395303354923745281	\N
785456098907127839	\N
331758759699546112	\N
425770845198090272	\N
182588639471992832	\N
415062217596076033	\N
\.


--
-- Name: activities activities_pkey; Type: CONSTRAINT; Schema: public; Owner: dminer
--

ALTER TABLE ONLY public.activities
    ADD CONSTRAINT activities_pkey PRIMARY KEY (user_id, start_timestamp);


--
-- Name: messages message_id_unique; Type: CONSTRAINT; Schema: public; Owner: dminer
--

ALTER TABLE ONLY public.messages
    ADD CONSTRAINT message_id_unique UNIQUE (message_id);


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
-- Name: updated_messages updated_messages_message_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: dminer
--

ALTER TABLE ONLY public.updated_messages
    ADD CONSTRAINT updated_messages_message_id_fkey FOREIGN KEY (message_id) REFERENCES public.messages(message_id);


--
-- PostgreSQL database dump complete
--

