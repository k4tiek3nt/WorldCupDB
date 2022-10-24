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

DROP DATABASE worldcup;
--
-- Name: worldcup; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE worldcup WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE worldcup OWNER TO freecodecamp;

\connect worldcup

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
    year integer NOT NULL,
    round character varying(25) NOT NULL,
    winner_id integer NOT NULL,
    opponent_id integer NOT NULL,
    winner_goals integer NOT NULL,
    opponent_goals integer NOT NULL
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
-- Name: teams; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.teams (
    team_id integer NOT NULL,
    name character varying(50) NOT NULL
);


ALTER TABLE public.teams OWNER TO freecodecamp;

--
-- Name: teams_team_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.teams_team_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.teams_team_id_seq OWNER TO freecodecamp;

--
-- Name: teams_team_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.teams_team_id_seq OWNED BY public.teams.team_id;


--
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Name: teams team_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams ALTER COLUMN team_id SET DEFAULT nextval('public.teams_team_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (142, 2018, 'Final', 227, 228, 4, 2);
INSERT INTO public.games VALUES (143, 2018, 'Third Place', 229, 230, 2, 0);
INSERT INTO public.games VALUES (144, 2018, 'Semi-Final', 228, 230, 2, 1);
INSERT INTO public.games VALUES (145, 2018, 'Semi-Final', 227, 229, 1, 0);
INSERT INTO public.games VALUES (146, 2018, 'Quarter-Final', 228, 236, 3, 2);
INSERT INTO public.games VALUES (147, 2018, 'Quarter-Final', 230, 238, 2, 0);
INSERT INTO public.games VALUES (148, 2018, 'Quarter-Final', 229, 240, 2, 1);
INSERT INTO public.games VALUES (149, 2018, 'Quarter-Final', 227, 242, 2, 0);
INSERT INTO public.games VALUES (150, 2018, 'Eighth-Final', 230, 244, 2, 1);
INSERT INTO public.games VALUES (151, 2018, 'Eighth-Final', 238, 246, 1, 0);
INSERT INTO public.games VALUES (152, 2018, 'Eighth-Final', 229, 248, 3, 2);
INSERT INTO public.games VALUES (153, 2018, 'Eighth-Final', 240, 250, 2, 0);
INSERT INTO public.games VALUES (154, 2018, 'Eighth-Final', 228, 252, 2, 1);
INSERT INTO public.games VALUES (155, 2018, 'Eighth-Final', 236, 254, 2, 1);
INSERT INTO public.games VALUES (156, 2018, 'Eighth-Final', 242, 256, 2, 1);
INSERT INTO public.games VALUES (157, 2018, 'Eighth-Final', 227, 258, 4, 3);
INSERT INTO public.games VALUES (158, 2014, 'Final', 259, 258, 1, 0);
INSERT INTO public.games VALUES (159, 2014, 'Third Place', 261, 240, 3, 0);
INSERT INTO public.games VALUES (160, 2014, 'Semi-Final', 258, 261, 1, 0);
INSERT INTO public.games VALUES (161, 2014, 'Semi-Final', 259, 240, 7, 1);
INSERT INTO public.games VALUES (162, 2014, 'Quarter-Final', 261, 268, 1, 0);
INSERT INTO public.games VALUES (163, 2014, 'Quarter-Final', 258, 229, 1, 0);
INSERT INTO public.games VALUES (164, 2014, 'Quarter-Final', 240, 244, 2, 1);
INSERT INTO public.games VALUES (165, 2014, 'Quarter-Final', 259, 227, 1, 0);
INSERT INTO public.games VALUES (166, 2014, 'Eighth-Final', 240, 276, 2, 1);
INSERT INTO public.games VALUES (167, 2014, 'Eighth-Final', 244, 242, 2, 0);
INSERT INTO public.games VALUES (168, 2014, 'Eighth-Final', 227, 280, 2, 0);
INSERT INTO public.games VALUES (169, 2014, 'Eighth-Final', 259, 282, 2, 1);
INSERT INTO public.games VALUES (170, 2014, 'Eighth-Final', 261, 250, 2, 1);
INSERT INTO public.games VALUES (171, 2014, 'Eighth-Final', 268, 286, 2, 1);
INSERT INTO public.games VALUES (172, 2014, 'Eighth-Final', 258, 246, 1, 0);
INSERT INTO public.games VALUES (173, 2014, 'Eighth-Final', 229, 290, 2, 1);


--
-- Data for Name: teams; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.teams VALUES (227, 'France');
INSERT INTO public.teams VALUES (228, 'Croatia');
INSERT INTO public.teams VALUES (229, 'Belgium');
INSERT INTO public.teams VALUES (230, 'England');
INSERT INTO public.teams VALUES (236, 'Russia');
INSERT INTO public.teams VALUES (238, 'Sweden');
INSERT INTO public.teams VALUES (240, 'Brazil');
INSERT INTO public.teams VALUES (242, 'Uruguay');
INSERT INTO public.teams VALUES (244, 'Colombia');
INSERT INTO public.teams VALUES (246, 'Switzerland');
INSERT INTO public.teams VALUES (248, 'Japan');
INSERT INTO public.teams VALUES (250, 'Mexico');
INSERT INTO public.teams VALUES (252, 'Denmark');
INSERT INTO public.teams VALUES (254, 'Spain');
INSERT INTO public.teams VALUES (256, 'Portugal');
INSERT INTO public.teams VALUES (258, 'Argentina');
INSERT INTO public.teams VALUES (259, 'Germany');
INSERT INTO public.teams VALUES (261, 'Netherlands');
INSERT INTO public.teams VALUES (268, 'Costa Rica');
INSERT INTO public.teams VALUES (276, 'Chile');
INSERT INTO public.teams VALUES (280, 'Nigeria');
INSERT INTO public.teams VALUES (282, 'Algeria');
INSERT INTO public.teams VALUES (286, 'Greece');
INSERT INTO public.teams VALUES (290, 'United States');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 173, true);


--
-- Name: teams_team_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.teams_team_id_seq', 290, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- Name: teams teams_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT teams_name_key UNIQUE (name);


--
-- Name: teams teams_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT teams_pkey PRIMARY KEY (team_id);


--
-- Name: games fk_opponent_id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT fk_opponent_id FOREIGN KEY (opponent_id) REFERENCES public.teams(team_id);


--
-- Name: games fk_winner_id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT fk_winner_id FOREIGN KEY (winner_id) REFERENCES public.teams(team_id);


--
-- PostgreSQL database dump complete
--

