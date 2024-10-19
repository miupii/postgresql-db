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

DROP DATABASE universe;
--
-- Name: universe; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE universe WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE universe OWNER TO freecodecamp;

\connect universe

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
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(30) NOT NULL,
    age_in_millions_of_years numeric(6,1),
    galaxy_type text,
    number_of_stars_in_millions integer NOT NULL
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_galaxy_id_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(30) NOT NULL,
    age_in_millions_of_years numeric(6,1),
    habitable boolean,
    orbital_period_days integer NOT NULL,
    planet_id integer
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_moon_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_moon_id_seq OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_moon_id_seq OWNED BY public.moon.moon_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(30) NOT NULL,
    age_in_millions_of_years numeric(6,1),
    habitable boolean,
    number_of_moons integer NOT NULL,
    star_id integer
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_planet_id_seq OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_planet_id_seq OWNED BY public.planet.planet_id;


--
-- Name: planets_ive_visited; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planets_ive_visited (
    planets_ive_visited_id integer NOT NULL,
    name character varying(30) NOT NULL,
    has_aliens boolean
);


ALTER TABLE public.planets_ive_visited OWNER TO freecodecamp;

--
-- Name: planets_ive_visited_planets_ive_visited_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planets_ive_visited_planets_ive_visited_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planets_ive_visited_planets_ive_visited_id_seq OWNER TO freecodecamp;

--
-- Name: planets_ive_visited_planets_ive_visited_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planets_ive_visited_planets_ive_visited_id_seq OWNED BY public.planets_ive_visited.planets_ive_visited_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(30) NOT NULL,
    age_in_millions_of_years numeric(6,1),
    star_type text,
    number_of_planets integer NOT NULL,
    galaxy_id integer
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_star_id_seq OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_star_id_seq OWNED BY public.star.star_id;


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: planets_ive_visited planets_ive_visited_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planets_ive_visited ALTER COLUMN planets_ive_visited_id SET DEFAULT nextval('public.planets_ive_visited_planets_ive_visited_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', 13600.0, 'Spiral', 100);
INSERT INTO public.galaxy VALUES (2, 'Andromeda', 10000.0, 'Spiral', 1000);
INSERT INTO public.galaxy VALUES (3, 'Sombrero Galaxy', 13000.0, 'Spiral', 800);
INSERT INTO public.galaxy VALUES (4, 'Whirlpool Galaxy', 500.0, 'Spiral', 100);
INSERT INTO public.galaxy VALUES (5, 'Triangulum Galaxy', 12300.0, 'Spiral', 40);
INSERT INTO public.galaxy VALUES (6, 'Messier 87', 13700.0, 'Elliptical', 2000);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Phobos', 4500.0, false, 0, 1);
INSERT INTO public.moon VALUES (2, 'Deimos', 4500.0, false, 1, 1);
INSERT INTO public.moon VALUES (3, 'Sirius A-I', 300.0, false, 15, 2);
INSERT INTO public.moon VALUES (4, 'Centauri I', 5000.0, false, 12, 3);
INSERT INTO public.moon VALUES (5, 'Centauri II', 4000.0, true, 30, 4);
INSERT INTO public.moon VALUES (6, 'Andromeda I', 500.0, false, 40, 5);
INSERT INTO public.moon VALUES (7, 'Rigel A-I', 8.0, false, 26, 6);
INSERT INTO public.moon VALUES (8, 'Proxima I', 4500.0, true, 60, 7);
INSERT INTO public.moon VALUES (9, 'Proxima II', 4500.0, false, 45, 7);
INSERT INTO public.moon VALUES (10, 'HD 34445-I', 6700.0, false, 11, 8);
INSERT INTO public.moon VALUES (11, 'HD 34445-II', 6700.0, false, 20, 8);
INSERT INTO public.moon VALUES (12, 'HD 34445-III', 6600.0, true, 5, 9);
INSERT INTO public.moon VALUES (13, 'Andromeda II', 1000.0, false, 50, 10);
INSERT INTO public.moon VALUES (14, 'Rigel A-II', 7.0, false, 13, 11);
INSERT INTO public.moon VALUES (15, 'Alpha Centauri Bb2-I', 5000.0, true, 25, 12);
INSERT INTO public.moon VALUES (16, 'Centauri III', 4500.0, false, 35, 3);
INSERT INTO public.moon VALUES (17, 'Proxima III', 4500.0, false, 18, 7);
INSERT INTO public.moon VALUES (18, 'Sirius A-II', 300.0, false, 30, 2);
INSERT INTO public.moon VALUES (19, 'HD 34445-IV', 6600.0, true, 9, 9);
INSERT INTO public.moon VALUES (20, 'Alpha Centauri Bb2-II', 5000.0, false, 50, 12);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Proxima b', 4500.0, true, 0, 1);
INSERT INTO public.planet VALUES (2, 'Sirius Bb', 100.0, false, 1, 2);
INSERT INTO public.planet VALUES (3, 'Alpha Centauri Bb', 5000.0, false, 0, 3);
INSERT INTO public.planet VALUES (4, 'Alpha Centauri Cc', 4000.0, true, 2, 3);
INSERT INTO public.planet VALUES (5, 'M31-1', 500.0, false, 3, 4);
INSERT INTO public.planet VALUES (6, 'Rigel b', 5.0, false, 0, 5);
INSERT INTO public.planet VALUES (7, 'Proxima c', 4500.0, false, 1, 1);
INSERT INTO public.planet VALUES (8, 'HD 34445 b', 6700.0, false, 2, 6);
INSERT INTO public.planet VALUES (9, 'HD 34445 c', 6600.0, true, 1, 6);
INSERT INTO public.planet VALUES (10, 'M31-2', 1000.0, false, 0, 4);
INSERT INTO public.planet VALUES (11, 'Rigel c', 7.0, false, 0, 5);
INSERT INTO public.planet VALUES (12, 'Alpha Centauri Bb2', 5000.0, true, 0, 3);


--
-- Data for Name: planets_ive_visited; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planets_ive_visited VALUES (1, 'Earth', false);
INSERT INTO public.planets_ive_visited VALUES (2, 'Alpha Centauri A', true);
INSERT INTO public.planets_ive_visited VALUES (3, 'Proxima b', true);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Proxima Centauri', 4500.0, 'Red Dwarf', 1, 1);
INSERT INTO public.star VALUES (2, 'Sirius A', 300.0, 'A-type', 0, 1);
INSERT INTO public.star VALUES (3, 'Alpha Centauri A', 5000.0, 'G-type', 2, 1);
INSERT INTO public.star VALUES (4, 'M31-V1', 1000.0, 'Cepheid Variable', 0, 2);
INSERT INTO public.star VALUES (5, 'Rigel', 8.0, 'Blue Supergiant', 0, 1);
INSERT INTO public.star VALUES (6, 'HD 34445', 6700.0, 'G-type', 6, 3);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 20, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: planets_ive_visited_planets_ive_visited_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planets_ive_visited_planets_ive_visited_id_seq', 3, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: galaxy galaxy_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_name_key UNIQUE (name);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_name_key UNIQUE (name);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_name_key UNIQUE (name);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: planets_ive_visited planets_ive_visited_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planets_ive_visited
    ADD CONSTRAINT planets_ive_visited_name_key UNIQUE (name);


--
-- Name: planets_ive_visited planets_ive_visited_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planets_ive_visited
    ADD CONSTRAINT planets_ive_visited_pkey PRIMARY KEY (planets_ive_visited_id);


--
-- Name: star star_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_name_key UNIQUE (name);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: moon moon_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet planet_star_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_star_id_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

