--
-- PostgreSQL database dump
--

-- Dumped from database version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)
-- Dumped by pg_dump version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)

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

DROP DATABASE number_guess;
--
-- Name: number_guess; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE number_guess WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE number_guess OWNER TO freecodecamp;

\connect number_guess

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

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: user_info; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.user_info (
    user_id integer NOT NULL,
    username character varying(22),
    games_played integer NOT NULL,
    best_game integer
);


ALTER TABLE public.user_info OWNER TO freecodecamp;

--
-- Name: user_info_user_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.user_info_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.user_info_user_id_seq OWNER TO freecodecamp;

--
-- Name: user_info_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.user_info_user_id_seq OWNED BY public.user_info.user_id;


--
-- Name: user_info user_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.user_info ALTER COLUMN user_id SET DEFAULT nextval('public.user_info_user_id_seq'::regclass);


--
-- Data for Name: user_info; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.user_info VALUES (16, 'user_1688672169975', 5, 227);
INSERT INTO public.user_info VALUES (2, 'user_1688671356639', 2, 425);
INSERT INTO public.user_info VALUES (1, 'user_1688671356640', 5, 80);
INSERT INTO public.user_info VALUES (19, 'user_1688672257342', 2, 304);
INSERT INTO public.user_info VALUES (4, 'user_1688671418332', 2, 5);
INSERT INTO public.user_info VALUES (41, 'user_1688672560631', 1, 317);
INSERT INTO public.user_info VALUES (18, 'user_1688672257343', 5, 190);
INSERT INTO public.user_info VALUES (3, 'user_1688671418333', 5, 242);
INSERT INTO public.user_info VALUES (5, 'Val', 1, 11);
INSERT INTO public.user_info VALUES (7, 'user_1688671520157', 2, 182);
INSERT INTO public.user_info VALUES (40, 'user_1688672560632', 5, 391);
INSERT INTO public.user_info VALUES (6, 'user_1688671520158', 5, 47);
INSERT INTO public.user_info VALUES (21, 'user_1688672269192', 2, 210);
INSERT INTO public.user_info VALUES (9, 'user_1688671991863', 2, 474);
INSERT INTO public.user_info VALUES (20, 'user_1688672269193', 5, 126);
INSERT INTO public.user_info VALUES (8, 'user_1688671991864', 4, 159);
INSERT INTO public.user_info VALUES (11, 'user_1688672018097', 2, 230);
INSERT INTO public.user_info VALUES (43, 'user_1688672589266', 2, 898);
INSERT INTO public.user_info VALUES (10, 'user_1688672018098', 5, 58);
INSERT INTO public.user_info VALUES (23, 'user_1688672278228', 2, 7);
INSERT INTO public.user_info VALUES (13, 'user_1688672036080', 2, 287);
INSERT INTO public.user_info VALUES (22, 'user_1688672278229', 5, 206);
INSERT INTO public.user_info VALUES (12, 'user_1688672036081', 4, 238);
INSERT INTO public.user_info VALUES (42, 'user_1688672589267', 4, 194);
INSERT INTO public.user_info VALUES (15, 'user_1688672166171', 2, 295);
INSERT INTO public.user_info VALUES (14, 'user_1688672166172', 5, 121);
INSERT INTO public.user_info VALUES (25, 'user_1688672317229', 2, 697);
INSERT INTO public.user_info VALUES (17, 'user_1688672169974', 2, 339);
INSERT INTO public.user_info VALUES (45, 'user_1688672795087', 2, 330);
INSERT INTO public.user_info VALUES (24, 'user_1688672317230', 5, 79);
INSERT INTO public.user_info VALUES (27, 'user_1688672416221', 2, 146);
INSERT INTO public.user_info VALUES (44, 'user_1688672795088', 5, 33);
INSERT INTO public.user_info VALUES (26, 'user_1688672416222', 4, 151);
INSERT INTO public.user_info VALUES (29, 'user_1688672453108', 2, 126);
INSERT INTO public.user_info VALUES (47, 'user_1688672854865', 2, 269);
INSERT INTO public.user_info VALUES (28, 'user_1688672453109', 5, 1);
INSERT INTO public.user_info VALUES (31, 'user_1688672464562', 2, 251);
INSERT INTO public.user_info VALUES (46, 'user_1688672854866', 5, 393);
INSERT INTO public.user_info VALUES (30, 'user_1688672464563', 4, 434);
INSERT INTO public.user_info VALUES (33, 'user_1688672480047', 2, 72);
INSERT INTO public.user_info VALUES (32, 'user_1688672480048', 4, 122);
INSERT INTO public.user_info VALUES (49, 'user_1688672890950', 2, 71);
INSERT INTO public.user_info VALUES (35, 'user_1688672493213', 2, 689);
INSERT INTO public.user_info VALUES (48, 'user_1688672890951', 5, 220);
INSERT INTO public.user_info VALUES (34, 'user_1688672493214', 5, 237);
INSERT INTO public.user_info VALUES (37, 'user_1688672500395', 2, 17);
INSERT INTO public.user_info VALUES (51, 'user_1688672902443', 2, 249);
INSERT INTO public.user_info VALUES (36, 'user_1688672500396', 5, 12);
INSERT INTO public.user_info VALUES (50, 'user_1688672902444', 5, 309);
INSERT INTO public.user_info VALUES (39, 'user_1688672505454', 2, 269);
INSERT INTO public.user_info VALUES (38, 'user_1688672505455', 5, 109);


--
-- Name: user_info_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.user_info_user_id_seq', 51, true);


--
-- Name: user_info user_info_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.user_info
    ADD CONSTRAINT user_info_pkey PRIMARY KEY (user_id);


--
-- PostgreSQL database dump complete
--

