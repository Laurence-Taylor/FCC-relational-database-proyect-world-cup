--
-- PostgreSQL database dump
--

-- Dumped from database version 12.22 (Ubuntu 12.22-0ubuntu0.20.04.4)
-- Dumped by pg_dump version 12.22 (Ubuntu 12.22-0ubuntu0.20.04.4)

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
    winner_id integer NOT NULL,
    opponent_id integer NOT NULL,
    year integer NOT NULL,
    round character varying(40) NOT NULL,
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
    name character varying(100) NOT NULL
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

INSERT INTO public.games VALUES (25, 73, 74, 2018, 'Final', 4, 2);
INSERT INTO public.games VALUES (26, 75, 76, 2018, 'Third Place', 2, 0);
INSERT INTO public.games VALUES (27, 74, 76, 2018, 'Semi-Final', 2, 1);
INSERT INTO public.games VALUES (28, 73, 75, 2018, 'Semi-Final', 1, 0);
INSERT INTO public.games VALUES (29, 74, 77, 2018, 'Quarter-Final', 3, 2);
INSERT INTO public.games VALUES (30, 76, 78, 2018, 'Quarter-Final', 2, 0);
INSERT INTO public.games VALUES (31, 75, 79, 2018, 'Quarter-Final', 2, 1);
INSERT INTO public.games VALUES (32, 73, 80, 2018, 'Quarter-Final', 2, 0);
INSERT INTO public.games VALUES (33, 76, 81, 2018, 'Eighth-Final', 2, 1);
INSERT INTO public.games VALUES (34, 78, 82, 2018, 'Eighth-Final', 1, 0);
INSERT INTO public.games VALUES (35, 75, 83, 2018, 'Eighth-Final', 3, 2);
INSERT INTO public.games VALUES (36, 79, 84, 2018, 'Eighth-Final', 2, 0);
INSERT INTO public.games VALUES (37, 74, 85, 2018, 'Eighth-Final', 2, 1);
INSERT INTO public.games VALUES (38, 77, 86, 2018, 'Eighth-Final', 2, 1);
INSERT INTO public.games VALUES (39, 80, 87, 2018, 'Eighth-Final', 2, 1);
INSERT INTO public.games VALUES (40, 73, 88, 2018, 'Eighth-Final', 4, 3);
INSERT INTO public.games VALUES (41, 89, 88, 2014, 'Final', 1, 0);
INSERT INTO public.games VALUES (42, 90, 79, 2014, 'Third Place', 3, 0);
INSERT INTO public.games VALUES (43, 88, 90, 2014, 'Semi-Final', 1, 0);
INSERT INTO public.games VALUES (44, 89, 79, 2014, 'Semi-Final', 7, 1);
INSERT INTO public.games VALUES (45, 90, 91, 2014, 'Quarter-Final', 1, 0);
INSERT INTO public.games VALUES (46, 88, 75, 2014, 'Quarter-Final', 1, 0);
INSERT INTO public.games VALUES (47, 79, 81, 2014, 'Quarter-Final', 2, 1);
INSERT INTO public.games VALUES (48, 89, 73, 2014, 'Quarter-Final', 1, 0);
INSERT INTO public.games VALUES (49, 79, 92, 2014, 'Eighth-Final', 2, 1);
INSERT INTO public.games VALUES (50, 81, 80, 2014, 'Eighth-Final', 2, 0);
INSERT INTO public.games VALUES (51, 73, 93, 2014, 'Eighth-Final', 2, 0);
INSERT INTO public.games VALUES (52, 89, 94, 2014, 'Eighth-Final', 2, 1);
INSERT INTO public.games VALUES (53, 90, 84, 2014, 'Eighth-Final', 2, 1);
INSERT INTO public.games VALUES (54, 91, 95, 2014, 'Eighth-Final', 2, 1);
INSERT INTO public.games VALUES (55, 88, 82, 2014, 'Eighth-Final', 1, 0);
INSERT INTO public.games VALUES (56, 75, 96, 2014, 'Eighth-Final', 2, 1);


--
-- Data for Name: teams; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.teams VALUES (73, 'France');
INSERT INTO public.teams VALUES (74, 'Croatia');
INSERT INTO public.teams VALUES (75, 'Belgium');
INSERT INTO public.teams VALUES (76, 'England');
INSERT INTO public.teams VALUES (77, 'Russia');
INSERT INTO public.teams VALUES (78, 'Sweden');
INSERT INTO public.teams VALUES (79, 'Brazil');
INSERT INTO public.teams VALUES (80, 'Uruguay');
INSERT INTO public.teams VALUES (81, 'Colombia');
INSERT INTO public.teams VALUES (82, 'Switzerland');
INSERT INTO public.teams VALUES (83, 'Japan');
INSERT INTO public.teams VALUES (84, 'Mexico');
INSERT INTO public.teams VALUES (85, 'Denmark');
INSERT INTO public.teams VALUES (86, 'Spain');
INSERT INTO public.teams VALUES (87, 'Portugal');
INSERT INTO public.teams VALUES (88, 'Argentina');
INSERT INTO public.teams VALUES (89, 'Germany');
INSERT INTO public.teams VALUES (90, 'Netherlands');
INSERT INTO public.teams VALUES (91, 'Costa Rica');
INSERT INTO public.teams VALUES (92, 'Chile');
INSERT INTO public.teams VALUES (93, 'Nigeria');
INSERT INTO public.teams VALUES (94, 'Algeria');
INSERT INTO public.teams VALUES (95, 'Greece');
INSERT INTO public.teams VALUES (96, 'United States');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 56, true);


--
-- Name: teams_team_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.teams_team_id_seq', 96, true);


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
-- Name: games games_opponent_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_opponent_id_fkey FOREIGN KEY (opponent_id) REFERENCES public.teams(team_id);


--
-- Name: games games_winner_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_winner_id_fkey FOREIGN KEY (winner_id) REFERENCES public.teams(team_id);


--
-- PostgreSQL database dump complete
--

