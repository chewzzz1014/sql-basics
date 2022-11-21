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
    name character varying(35) NOT NULL,
    has_life boolean,
    is_spherical boolean,
    description text,
    age_in_millions_of_years integer,
    galaxy_types integer,
    distance_from_earth numeric(20,10)
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
    name character varying(35) NOT NULL,
    has_life boolean,
    is_spherical boolean,
    description text,
    age_in_millions_of_years integer,
    moon_types integer,
    distance_from_earth numeric(20,10),
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
-- Name: nebula; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.nebula (
    nebula_id integer NOT NULL,
    name character varying(20) NOT NULL,
    description character varying(20)
);


ALTER TABLE public.nebula OWNER TO freecodecamp;

--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(35) NOT NULL,
    has_life boolean,
    is_spherical boolean,
    description text,
    age_in_millions_of_years integer,
    planet_types integer,
    distance_from_earth numeric(20,10),
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
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(35) NOT NULL,
    has_life boolean,
    is_spherical boolean,
    description text,
    age_in_millions_of_years integer,
    star_types integer,
    distance_from_earth numeric(20,10),
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
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'galaxy_1', true, true, 'our galaxy 1', 100000000, 1, 10000334.2334400000);
INSERT INTO public.galaxy VALUES (2, 'galaxy_2', true, true, 'our galaxy 2', 200000000, 2, 20000334.2334400000);
INSERT INTO public.galaxy VALUES (3, 'galaxy_3', true, true, 'our galaxy 3', 300000000, 3, 30000334.2334400000);
INSERT INTO public.galaxy VALUES (4, 'galaxy_4', true, true, 'our galaxy 4', 400000000, 4, 40000334.2334400000);
INSERT INTO public.galaxy VALUES (5, 'galaxy_5', true, true, 'our galaxy 5', 500000000, 5, 50000334.2334400000);
INSERT INTO public.galaxy VALUES (6, 'galaxy_6', true, true, 'our galaxy 6', 600000000, 6, 50000334.2334400000);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'moon_1', true, true, 'our moon', 100000000, 1, 10000334.2334400000, 1);
INSERT INTO public.moon VALUES (2, 'moon_2', true, true, 'our moon', 100000000, 1, 10000334.2334400000, 1);
INSERT INTO public.moon VALUES (3, 'moon_3', true, true, 'our moon', 100000000, 1, 10000334.2334400000, 1);
INSERT INTO public.moon VALUES (4, 'moon_4', true, true, 'our moon', 100000000, 1, 10000334.2334400000, 1);
INSERT INTO public.moon VALUES (5, 'moon_5', true, true, 'our moon', 100000000, 1, 10000334.2334400000, 1);
INSERT INTO public.moon VALUES (6, 'moon_6', true, true, 'our moon', 100000000, 1, 10000334.2334400000, 1);
INSERT INTO public.moon VALUES (7, 'moon_7', true, true, 'our moon', 100000000, 1, 10000334.2334400000, 1);
INSERT INTO public.moon VALUES (8, 'moon_8', true, true, 'our moon', 100000000, 1, 10000334.2334400000, 1);
INSERT INTO public.moon VALUES (9, 'moon9', true, true, 'our moon', 100000000, 1, 10000334.2334400000, 1);
INSERT INTO public.moon VALUES (10, 'moon_1-', true, true, 'our moon', 100000000, 1, 10000334.2334400000, 1);
INSERT INTO public.moon VALUES (11, 'moon_11', true, true, 'our moon', 100000000, 1, 10000334.2334400000, 1);
INSERT INTO public.moon VALUES (12, 'moon_12', true, true, 'our moon', 100000000, 1, 10000334.2334400000, 1);
INSERT INTO public.moon VALUES (13, 'moon_13', true, true, 'our moon', 100000000, 1, 10000334.2334400000, 1);
INSERT INTO public.moon VALUES (14, 'moon_14', true, true, 'our moon', 100000000, 1, 10000334.2334400000, 1);
INSERT INTO public.moon VALUES (15, 'moon_15', true, true, 'our moon', 100000000, 1, 10000334.2334400000, 1);
INSERT INTO public.moon VALUES (16, 'moon_16', true, true, 'our moon', 100000000, 1, 10000334.2334400000, 1);
INSERT INTO public.moon VALUES (17, 'moon_17', true, true, 'our moon', 100000000, 1, 10000334.2334400000, 1);
INSERT INTO public.moon VALUES (18, 'moon_18', true, true, 'our moon', 100000000, 1, 10000334.2334400000, 1);
INSERT INTO public.moon VALUES (19, 'moon_19', true, true, 'our moon', 100000000, 1, 10000334.2334400000, 1);
INSERT INTO public.moon VALUES (20, 'moon_20', true, true, 'our moon', 100000000, 1, 10000334.2334400000, 1);


--
-- Data for Name: nebula; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.nebula VALUES (1, 'NEBULA 1', 'MMMMM 1');
INSERT INTO public.nebula VALUES (2, 'NEBULA 2', 'MMMMM 2');
INSERT INTO public.nebula VALUES (3, 'NEBULA 3', 'MMMMM 3');


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'plant_1', true, true, 'our planet 1', 100000000, 1, 10000334.2334400000, 1);
INSERT INTO public.planet VALUES (2, 'plant_2', true, true, 'our planet 1', 100000000, 1, 10000334.2334400000, 1);
INSERT INTO public.planet VALUES (3, 'plant32', true, true, 'our planet 1', 100000000, 1, 10000334.2334400000, 1);
INSERT INTO public.planet VALUES (4, 'plant_4', true, true, 'our planet 1', 100000000, 1, 10000334.2334400000, 1);
INSERT INTO public.planet VALUES (5, 'plant_5', true, true, 'our planet 1', 100000000, 1, 10000334.2334400000, 1);
INSERT INTO public.planet VALUES (6, 'plant_6', true, true, 'our planet 1', 100000000, 1, 10000334.2334400000, 1);
INSERT INTO public.planet VALUES (7, 'plant_7', true, true, 'our planet 1', 100000000, 1, 10000334.2334400000, 1);
INSERT INTO public.planet VALUES (8, 'plant_8', true, true, 'our planet 1', 100000000, 1, 10000334.2334400000, 1);
INSERT INTO public.planet VALUES (9, 'plant_9', true, true, 'our planet 1', 100000000, 1, 10000334.2334400000, 1);
INSERT INTO public.planet VALUES (10, 'plant_10', true, true, 'our planet 1', 100000000, 1, 10000334.2334400000, 1);
INSERT INTO public.planet VALUES (11, 'plant_11', true, true, 'our planet 1', 100000000, 1, 10000334.2334400000, 1);
INSERT INTO public.planet VALUES (12, 'plant_12', true, true, 'our planet 1', 100000000, 1, 10000334.2334400000, 1);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'star_1', true, true, 'our star 1', 100000000, 1, 10000334.2334400000, 1);
INSERT INTO public.star VALUES (2, 'star_2', true, true, 'our star 2', 200000000, 2, 20000334.2334400000, 2);
INSERT INTO public.star VALUES (3, 'star_3', true, true, 'our star 3', 300000000, 3, 30000334.2334400000, 3);
INSERT INTO public.star VALUES (4, 'star_4', true, true, 'our star 4', 400000000, 4, 40000334.2334400000, 4);
INSERT INTO public.star VALUES (5, 'star_5', true, true, 'our star 5', 500000000, 5, 50000334.2334400000, 5);
INSERT INTO public.star VALUES (6, 'star_6', true, true, 'our star 6', 600000000, 6, 60000334.2334400000, 6);


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
-- Name: nebula nebula_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.nebula
    ADD CONSTRAINT nebula_name_key UNIQUE (name);


--
-- Name: nebula nebula_nebula_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.nebula
    ADD CONSTRAINT nebula_nebula_id_key UNIQUE (nebula_id);


--
-- Name: nebula nebula_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.nebula
    ADD CONSTRAINT nebula_pkey PRIMARY KEY (nebula_id);


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
-- Name: planet planet_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_galaxy_id_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

