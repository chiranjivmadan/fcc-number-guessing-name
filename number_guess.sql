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
-- Name: games; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.games (
    game_id integer NOT NULL,
    number_guesses integer NOT NULL,
    user_id integer
);


ALTER TABLE public.games OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.games_game_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.games_game_id_seq OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.games_game_id_seq OWNED BY public.games.game_id;


--
-- Name: users; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.users (
    user_id integer NOT NULL,
    username character varying(22) NOT NULL
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
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Name: users user_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users ALTER COLUMN user_id SET DEFAULT nextval('public.users_user_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (1, 11, 1);
INSERT INTO public.games VALUES (2, 1, 2);
INSERT INTO public.games VALUES (3, 345, 2);
INSERT INTO public.games VALUES (4, 346, 3);
INSERT INTO public.games VALUES (5, 452, 3);
INSERT INTO public.games VALUES (6, 73, 2);
INSERT INTO public.games VALUES (7, 343, 2);
INSERT INTO public.games VALUES (8, 972, 2);
INSERT INTO public.games VALUES (9, 1, 4);
INSERT INTO public.games VALUES (10, 209, 4);
INSERT INTO public.games VALUES (11, 1, 5);
INSERT INTO public.games VALUES (12, 813, 5);
INSERT INTO public.games VALUES (13, 679, 4);
INSERT INTO public.games VALUES (14, 966, 4);
INSERT INTO public.games VALUES (15, 903, 4);
INSERT INTO public.games VALUES (16, 861, 6);
INSERT INTO public.games VALUES (17, 757, 6);
INSERT INTO public.games VALUES (18, 466, 7);
INSERT INTO public.games VALUES (19, 188, 7);
INSERT INTO public.games VALUES (20, 703, 6);
INSERT INTO public.games VALUES (21, 928, 6);
INSERT INTO public.games VALUES (22, 472, 6);
INSERT INTO public.games VALUES (23, 13, 8);
INSERT INTO public.games VALUES (24, 13, 9);
INSERT INTO public.games VALUES (25, 466, 10);
INSERT INTO public.games VALUES (26, 3, 10);
INSERT INTO public.games VALUES (27, 82, 11);
INSERT INTO public.games VALUES (28, 499, 11);
INSERT INTO public.games VALUES (29, 48, 10);
INSERT INTO public.games VALUES (30, 596, 10);
INSERT INTO public.games VALUES (31, 579, 10);
INSERT INTO public.games VALUES (32, 164, 12);
INSERT INTO public.games VALUES (33, 522, 12);
INSERT INTO public.games VALUES (34, 630, 13);
INSERT INTO public.games VALUES (35, 130, 13);
INSERT INTO public.games VALUES (36, 144, 12);
INSERT INTO public.games VALUES (37, 48, 12);
INSERT INTO public.games VALUES (38, 598, 12);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.users VALUES (1, 'chiranjiv');
INSERT INTO public.users VALUES (2, 'user_1682621708897');
INSERT INTO public.users VALUES (3, 'user_1682621708896');
INSERT INTO public.users VALUES (4, 'user_1682621886207');
INSERT INTO public.users VALUES (5, 'user_1682621886206');
INSERT INTO public.users VALUES (6, 'user_1682621999004');
INSERT INTO public.users VALUES (7, 'user_1682621999003');
INSERT INTO public.users VALUES (8, 'farhan');
INSERT INTO public.users VALUES (9, 't');
INSERT INTO public.users VALUES (10, 'user_1682622153675');
INSERT INTO public.users VALUES (11, 'user_1682622153674');
INSERT INTO public.users VALUES (12, 'user_1682622184466');
INSERT INTO public.users VALUES (13, 'user_1682622184465');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 38, true);


--
-- Name: users_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.users_user_id_seq', 13, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


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
-- Name: games games_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(user_id);


--
-- PostgreSQL database dump complete
--

