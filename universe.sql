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
    name character varying(255) NOT NULL,
    galaxy_type text NOT NULL,
    has_atmosphere boolean,
    number_of_million_of_stars integer,
    number_of_million_of_planets integer
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
    name character varying(255),
    planet text NOT NULL,
    diameter_km integer NOT NULL,
    has_atmosphere boolean,
    orbital_period_days numeric(10,2)
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
    name character varying(255),
    planet_type text NOT NULL,
    has_life boolean NOT NULL,
    age_in_million_of_years integer
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
    name character varying(255) NOT NULL,
    star_type text NOT NULL,
    has_atmosphere boolean,
    age_in_million_of_years integer
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

INSERT INTO public.galaxy VALUES (1, 'Milky Way', 'Spiral', true, 200, 100000);
INSERT INTO public.galaxy VALUES (2, 'Andromeda', 'Spiral', true, 100, 100000);
INSERT INTO public.galaxy VALUES (3, 'Triangulum', 'Spiral', true, 50, 100000);
INSERT INTO public.galaxy VALUES (4, 'Messier 87', 'Elliptical', false, 1000, 1000);
INSERT INTO public.galaxy VALUES (5, 'Sombrero Galaxy', 'Spiral', true, 80, 10000);
INSERT INTO public.galaxy VALUES (6, 'Whirlpool Galaxy', 'Spiral', true, 30, 10000);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Europa', 'Jupiter', 3121, true, 3.55);
INSERT INTO public.moon VALUES (2, 'Titan', 'Saturn', 5150, true, 15.95);
INSERT INTO public.moon VALUES (3, 'Io', 'Jupiter', 3643, false, 1.77);
INSERT INTO public.moon VALUES (4, 'Callisto', 'Jupiter', 4821, false, 16.69);
INSERT INTO public.moon VALUES (5, 'Ganymede', 'Jupiter', 5268, false, 7.15);
INSERT INTO public.moon VALUES (6, 'Enceladus', 'Saturn', 504, true, 1.37);
INSERT INTO public.moon VALUES (7, 'Mimas', 'Saturn', 396, false, 0.94);
INSERT INTO public.moon VALUES (8, 'Tethys', 'Saturn', 1062, false, 1.89);
INSERT INTO public.moon VALUES (9, 'Dione', 'Saturn', 1123, false, 2.74);
INSERT INTO public.moon VALUES (10, 'Rhea', 'Saturn', 1528, false, 4.52);
INSERT INTO public.moon VALUES (11, 'Triton', 'Neptune', 2706, true, -5.88);
INSERT INTO public.moon VALUES (12, 'Nereid', 'Neptune', 340, false, 360.13);
INSERT INTO public.moon VALUES (13, 'Miranda', 'Uranus', 471, false, 1.41);
INSERT INTO public.moon VALUES (14, 'Ariel', 'Uranus', 1158, false, 2.52);
INSERT INTO public.moon VALUES (15, 'Umbriel', 'Uranus', 1169, false, 4.14);
INSERT INTO public.moon VALUES (16, 'Oberon', 'Uranus', 1523, false, 13.46);
INSERT INTO public.moon VALUES (17, 'Titania', 'Uranus', 1578, false, 8.71);
INSERT INTO public.moon VALUES (18, 'Phobos', 'Mars', 22, false, 0.32);
INSERT INTO public.moon VALUES (19, 'Deimos', 'Mars', 12, false, 1.26);
INSERT INTO public.moon VALUES (20, 'Charon', 'Pluto', 1212, false, 6.39);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Earth', 'Terrestrial', true, 4500);
INSERT INTO public.planet VALUES (2, 'Mars', 'Terrestrial', false, 4600);
INSERT INTO public.planet VALUES (3, 'Venus', 'Terrestrial', false, 4600);
INSERT INTO public.planet VALUES (4, 'Mercury', 'Terrestrial', false, 4600);
INSERT INTO public.planet VALUES (5, 'Jupiter', 'Gas Giant', false, 4600);
INSERT INTO public.planet VALUES (6, 'Saturn', 'Gas Giant', false, 4600);
INSERT INTO public.planet VALUES (7, 'Uranus', 'Ice Giant', false, 4600);
INSERT INTO public.planet VALUES (8, 'Neptune', 'Ice Giant', false, 4600);
INSERT INTO public.planet VALUES (9, 'Pluto', 'Dwarf Planet', false, 4600);
INSERT INTO public.planet VALUES (10, 'Titan', 'Moon of Saturn', false, 4500);
INSERT INTO public.planet VALUES (11, 'Europa', 'Moon of Jupiter', false, 4500);
INSERT INTO public.planet VALUES (12, 'Kepler-452b', 'Exoplanet', false, 6000);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sun', 'G-type Main Sequence', true, 4600);
INSERT INTO public.star VALUES (2, 'Sirius', 'A-type Main Sequence', false, 230);
INSERT INTO public.star VALUES (3, 'Betelgeuse', 'Red Supergiant', false, 80000000);
INSERT INTO public.star VALUES (4, 'Alpha Centauri A', 'G-type Main Sequence', true, 5500);
INSERT INTO public.star VALUES (5, 'Rigel', 'Blue Supergiant', false, 800000000);
INSERT INTO public.star VALUES (6, 'Polaris', 'Yellow Supergiant', false, 70000);


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
-- Name: galaxy galaxy_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_name UNIQUE (name);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_name UNIQUE (name);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_name UNIQUE (name);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_name UNIQUE (name);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: star fk_star; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

-- Add galaxy_id column to star table and set up foreign key reference to galaxy table
ALTER TABLE public.star
    ADD COLUMN galaxy_id integer;

-- Add the foreign key constraint for galaxy_id
ALTER TABLE public.star
    ADD CONSTRAINT fk_star_galaxy FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);

-- Add star_id column to planet table and set up foreign key reference to star table
ALTER TABLE public.planet
    ADD COLUMN star_id integer;

-- Add the foreign key constraint for star_id
ALTER TABLE public.planet
    ADD CONSTRAINT fk_planet_star FOREIGN KEY (star_id) REFERENCES public.star(star_id);

-- Add planet_id column to moon table and set up foreign key reference to planet table
ALTER TABLE public.moon
    ADD COLUMN planet_id integer;

-- Add the foreign key constraint for planet_id
ALTER TABLE public.moon
    ADD CONSTRAINT fk_moon_planet FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);

--
-- PostgreSQL database dump complete
--

