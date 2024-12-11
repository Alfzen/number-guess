--
-- PostgreSQL database dump
--

-- Dumped from database version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)
-- Dumped by pg_dump version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)

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
-- Name: users; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.users (
    user_id integer NOT NULL,
    username character varying(22) NOT NULL,
    games_played integer,
    best_game integer
);


ALTER TABLE public.users OWNER TO freecodecamp;

--
-- Name: users_user_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.users_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_user_id_seq OWNER TO freecodecamp;

--
-- Name: users_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.users_user_id_seq OWNED BY public.users.user_id;


--
-- Name: users user_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users ALTER COLUMN user_id SET DEFAULT nextval('public.users_user_id_seq'::regclass);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.users VALUES (3, 'user_1733927668528', 2, 265);
INSERT INTO public.users VALUES (25, 'user_1733928567777', 2, 261);
INSERT INTO public.users VALUES (2, 'user_1733927668529', 5, 223);
INSERT INTO public.users VALUES (5, 'user_1733927718629', 2, 514);
INSERT INTO public.users VALUES (24, 'user_1733928567778', 5, 89);
INSERT INTO public.users VALUES (4, 'user_1733927718630', 5, 144);
INSERT INTO public.users VALUES (7, 'user_1733927768621', 2, 310);
INSERT INTO public.users VALUES (27, 'user_1733928584224', 2, 31);
INSERT INTO public.users VALUES (6, 'user_1733927768622', 5, 116);
INSERT INTO public.users VALUES (9, 'user_1733927863922', 2, 494);
INSERT INTO public.users VALUES (26, 'user_1733928584225', 5, 191);
INSERT INTO public.users VALUES (8, 'user_1733927863923', 5, 402);
INSERT INTO public.users VALUES (12, 'user_1733927980267', 2, 616);
INSERT INTO public.users VALUES (11, 'user_1733927980268', 5, 169);
INSERT INTO public.users VALUES (29, 'user_1733928593658', 2, 901);
INSERT INTO public.users VALUES (14, 'user_1733928157434', 2, 348);
INSERT INTO public.users VALUES (13, 'user_1733928157435', 5, 123);
INSERT INTO public.users VALUES (10, 'Alf', 2, 9);
INSERT INTO public.users VALUES (28, 'user_1733928593659', 5, 127);
INSERT INTO public.users VALUES (16, 'user_1733928258629', 2, 5);
INSERT INTO public.users VALUES (15, 'user_1733928258630', 5, 449);
INSERT INTO public.users VALUES (17, 'alfi', 1, 10);
INSERT INTO public.users VALUES (1, 'alf', 4, 1);
INSERT INTO public.users VALUES (19, 'user_1733928384616', 2, 617);
INSERT INTO public.users VALUES (31, 'user_1733928600351', 2, 882);
INSERT INTO public.users VALUES (18, 'user_1733928384617', 5, 18);
INSERT INTO public.users VALUES (21, 'user_1733928497459', 2, 142);
INSERT INTO public.users VALUES (30, 'user_1733928600352', 5, 145);
INSERT INTO public.users VALUES (32, 'freecodecamp', 1, 9);
INSERT INTO public.users VALUES (20, 'user_1733928497460', 5, 1);
INSERT INTO public.users VALUES (23, 'user_1733928515490', 2, 752);
INSERT INTO public.users VALUES (22, 'user_1733928515491', 5, 265);
INSERT INTO public.users VALUES (34, 'user_1733928642021', 2, 668);
INSERT INTO public.users VALUES (33, 'user_1733928642022', 5, 189);
INSERT INTO public.users VALUES (36, 'user_1733928689002', 2, 9);
INSERT INTO public.users VALUES (35, 'user_1733928689003', 5, 58);
INSERT INTO public.users VALUES (38, 'user_1733928722268', 2, 440);
INSERT INTO public.users VALUES (37, 'user_1733928722269', 5, 123);


--
-- Name: users_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.users_user_id_seq', 38, true);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (user_id);


--
-- Name: users users_username_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key UNIQUE (username);


--
-- PostgreSQL database dump complete
--

