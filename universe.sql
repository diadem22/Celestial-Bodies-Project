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
-- Name: alien; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.alien (
    alien_id integer NOT NULL,
    age numeric,
    name character varying(20) NOT NULL,
    speed integer,
    "character" text
);


ALTER TABLE public.alien OWNER TO freecodecamp;

--
-- Name: alien_alien_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.alien_alien_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.alien_alien_id_seq OWNER TO freecodecamp;

--
-- Name: alien_alien_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.alien_alien_id_seq OWNED BY public.alien.alien_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    has_allien boolean,
    no_of_stars integer,
    age_in_years integer,
    name character varying(20) NOT NULL
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
    name character varying(20) NOT NULL,
    is_spherical boolean,
    distance_from_planet integer,
    planet_id integer NOT NULL,
    mass integer
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
    has_life boolean,
    name character varying(20) NOT NULL,
    distance_from_the_sun integer,
    star_id integer NOT NULL,
    no_of_rings integer
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
    name character varying(20) NOT NULL,
    galaxy_id integer NOT NULL,
    is_boiling boolean,
    size integer,
    temperature integer
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
-- Name: alien alien_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.alien ALTER COLUMN alien_id SET DEFAULT nextval('public.alien_alien_id_seq'::regclass);


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
-- Data for Name: alien; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.alien VALUES (1, 120, 'alienA', 200, NULL);
INSERT INTO public.alien VALUES (2, 130, 'alienB', 300, NULL);
INSERT INTO public.alien VALUES (3, 140, 'alienC', 400, NULL);
INSERT INTO public.alien VALUES (4, 150, 'alienD', 500, NULL);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, true, 1000, 1500, 'Andromeda');
INSERT INTO public.galaxy VALUES (2, false, 500, 700, 'Virgo A');
INSERT INTO public.galaxy VALUES (3, false, 200, 500, 'Cygnus A');
INSERT INTO public.galaxy VALUES (4, true, 112, 400, 'Maffee');
INSERT INTO public.galaxy VALUES (5, false, 360, 1000, 'Magellanic Clouds');
INSERT INTO public.galaxy VALUES (6, true, 480, 1200, 'Milky Way');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (8, 'moonA', false, 100, 1, 1000);
INSERT INTO public.moon VALUES (9, 'moonB', true, 200, 1, 1100);
INSERT INTO public.moon VALUES (10, 'moonC', true, 300, 2, 1200);
INSERT INTO public.moon VALUES (11, 'moonD', false, 400, 2, 1300);
INSERT INTO public.moon VALUES (12, 'moonE', false, 500, 3, 1400);
INSERT INTO public.moon VALUES (13, 'moonF', true, 600, 3, 1500);
INSERT INTO public.moon VALUES (14, 'moonK', false, 700, 4, 1600);
INSERT INTO public.moon VALUES (15, 'moonG', true, 800, 4, 1700);
INSERT INTO public.moon VALUES (16, 'moonH', false, 900, 5, 1800);
INSERT INTO public.moon VALUES (17, 'moonI', false, 1000, 5, 1900);
INSERT INTO public.moon VALUES (18, 'moonJ', true, 1100, 6, 2000);
INSERT INTO public.moon VALUES (19, 'moonU', false, 1600, 5, 3000);
INSERT INTO public.moon VALUES (20, 'moonT', true, 1500, 6, 2900);
INSERT INTO public.moon VALUES (21, 'moonS', true, 1400, 7, 2800);
INSERT INTO public.moon VALUES (22, 'moonR', false, 1500, 8, 2700);
INSERT INTO public.moon VALUES (23, 'moonQ', false, 1600, 8, 2600);
INSERT INTO public.moon VALUES (24, 'moonP', true, 1600, 3, 2500);
INSERT INTO public.moon VALUES (25, 'moonO', false, 1700, 9, 2400);
INSERT INTO public.moon VALUES (26, 'moonN', true, 1800, 9, 2300);
INSERT INTO public.moon VALUES (27, 'moonM', false, 1800, 10, 2200);
INSERT INTO public.moon VALUES (28, 'moonL', false, 1900, 10, 2100);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, false, 'Mercury', 800, 1, 3);
INSERT INTO public.planet VALUES (2, false, 'Mars', 700, 1, 4);
INSERT INTO public.planet VALUES (3, false, 'Venus', 400, 2, 5);
INSERT INTO public.planet VALUES (4, true, 'Earth', 1000, 2, 1);
INSERT INTO public.planet VALUES (5, false, 'Jupiter', 3000, 3, 0);
INSERT INTO public.planet VALUES (6, false, 'Neptune', 4000, 3, 6);
INSERT INTO public.planet VALUES (7, false, 'Saturn', 2000, 4, 7);
INSERT INTO public.planet VALUES (8, false, 'Uranus', 800, 5, 2);
INSERT INTO public.planet VALUES (9, false, 'Plato', 800, 5, 2);
INSERT INTO public.planet VALUES (10, false, 'Random', 500, 6, 4);
INSERT INTO public.planet VALUES (11, false, 'Weird', 300, 6, 5);
INSERT INTO public.planet VALUES (12, false, 'NonExistent', 400, 6, 0);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sirius', 1, true, 8000, NULL);
INSERT INTO public.star VALUES (2, 'Vega', 2, false, 11500, NULL);
INSERT INTO public.star VALUES (3, 'Rigel', 3, true, 500, NULL);
INSERT INTO public.star VALUES (4, 'Aldebran', 4, false, 1500, NULL);
INSERT INTO public.star VALUES (5, 'Achenar', 5, false, 2000, NULL);
INSERT INTO public.star VALUES (6, 'Attair', 6, true, 3000, NULL);


--
-- Name: alien_alien_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.alien_alien_id_seq', 4, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 28, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: alien alien_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.alien
    ADD CONSTRAINT alien_name_key UNIQUE (name);


--
-- Name: alien alien_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.alien
    ADD CONSTRAINT alien_pkey PRIMARY KEY (alien_id);


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

