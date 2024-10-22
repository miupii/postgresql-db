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
    username character varying(22) NOT NULL,
    games_played integer,
    best_game integer
);


ALTER TABLE public.users OWNER TO freecodecamp;

--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.users VALUES ('user_1729618107117', 1, 817);
INSERT INTO public.users VALUES ('user_1729619229645', 1, 83);
INSERT INTO public.users VALUES ('user_1729618107118', 1, 838);
INSERT INTO public.users VALUES ('user_1729618490819', 1, 582);
INSERT INTO public.users VALUES ('user_1729619229646', 1, 746);
INSERT INTO public.users VALUES ('user_1729618490820', 1, 828);
INSERT INTO public.users VALUES ('user_1729618578260', 1, 193);
INSERT INTO public.users VALUES ('user_1729619247275', 1, 504);
INSERT INTO public.users VALUES ('user_1729618578261', 1, 187);
INSERT INTO public.users VALUES ('user_1729618693008', 1, 71);
INSERT INTO public.users VALUES ('user_1729619247276', 1, 808);
INSERT INTO public.users VALUES ('user_1729618693009', 1, 8);
INSERT INTO public.users VALUES ('user_1729618745017', 1, 711);
INSERT INTO public.users VALUES ('user_1729618745018', 1, 819);
INSERT INTO public.users VALUES ('user_1729618833223', 1, 631);
INSERT INTO public.users VALUES ('user_1729618833224', 1, 296);
INSERT INTO public.users VALUES ('Christina', 1, 9);
INSERT INTO public.users VALUES ('user_1729618971648', 1, 398);
INSERT INTO public.users VALUES ('user_1729618971649', 1, 198);
INSERT INTO public.users VALUES ('user_1729619001499', 1, 160);
INSERT INTO public.users VALUES ('user_1729619001500', 1, 750);
INSERT INTO public.users VALUES ('user_1729619157987', 1, 944);
INSERT INTO public.users VALUES ('user_1729619157988', 1, 497);


--
-- Name: users users_username_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key UNIQUE (username);


--
-- PostgreSQL database dump complete
--

