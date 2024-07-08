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
    name character varying(50) NOT NULL,
    diameter integer DEFAULT 0,
    type character varying(50),
    distance integer DEFAULT 0
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
    name character varying(50) NOT NULL,
    planet_id integer,
    diameter integer DEFAULT 0,
    type character varying(50),
    distance integer DEFAULT 0
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
    name character varying(50) NOT NULL,
    moons integer DEFAULT 0,
    poblation integer DEFAULT 0,
    hasmoon boolean DEFAULT false,
    haslife boolean DEFAULT false,
    radius numeric(10,2) DEFAULT 0 NOT NULL,
    description text NOT NULL,
    star_id integer,
    diameter integer DEFAULT 0,
    type character varying(50)
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
    name character varying(50) NOT NULL,
    galaxy_id integer,
    diameter integer DEFAULT 0,
    type character varying(50),
    distance integer DEFAULT 0
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: start_start_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.start_start_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.start_start_id_seq OWNER TO freecodecamp;

--
-- Name: start_start_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.start_start_id_seq OWNED BY public.star.star_id;


--
-- Name: systemsolar; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.systemsolar (
    systemsolar_id integer NOT NULL,
    name character varying(50) NOT NULL,
    type character varying(50),
    diameter integer DEFAULT 0,
    distance integer DEFAULT 0
);


ALTER TABLE public.systemsolar OWNER TO freecodecamp;

--
-- Name: systemsolar_systemsolar_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.systemsolar_systemsolar_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.systemsolar_systemsolar_id_seq OWNER TO freecodecamp;

--
-- Name: systemsolar_systemsolar_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.systemsolar_systemsolar_id_seq OWNED BY public.systemsolar.systemsolar_id;


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

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.start_start_id_seq'::regclass);


--
-- Name: systemsolar systemsolar_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.systemsolar ALTER COLUMN systemsolar_id SET DEFAULT nextval('public.systemsolar_systemsolar_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'andromeda', 220000, 'Galaxia espiral', 2500000);
INSERT INTO public.galaxy VALUES (2, 'sombrero', 140000, 'Galaxia espiral barrada', 28000000);
INSERT INTO public.galaxy VALUES (3, 'via lactea', 120000, 'Galaxia espiral', 11800000);
INSERT INTO public.galaxy VALUES (4, 'bode', 70000, 'Galaxia espiral', 23000000);
INSERT INTO public.galaxy VALUES (5, 'remolino', 70000, 'Galaxia espiral', 21000000);
INSERT INTO public.galaxy VALUES (6, 'oceano', 150000, 'Galaxia espiral', 26000000);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'a', 1, 2440, 'terrestre', 55679);
INSERT INTO public.moon VALUES (2, 'b', 1, 2440, 'terrestre', 55679);
INSERT INTO public.moon VALUES (3, 'c', 1, 2440, 'terrestre', 55679);
INSERT INTO public.moon VALUES (4, 'd', 1, 2440, 'terrestre', 55679);
INSERT INTO public.moon VALUES (5, 'e', 1, 2440, 'terrestre', 55679);
INSERT INTO public.moon VALUES (6, 'f', 1, 2440, 'terrestre', 55679);
INSERT INTO public.moon VALUES (7, 'g', 1, 2440, 'terrestre', 55679);
INSERT INTO public.moon VALUES (8, 'h', 1, 2440, 'terrestre', 55679);
INSERT INTO public.moon VALUES (9, 'i', 1, 2440, 'terrestre', 55679);
INSERT INTO public.moon VALUES (10, 'j', 1, 2440, 'terrestre', 55679);
INSERT INTO public.moon VALUES (11, 'k', 1, 2440, 'terrestre', 55679);
INSERT INTO public.moon VALUES (12, 'l', 1, 2440, 'terrestre', 55679);
INSERT INTO public.moon VALUES (13, 'm', 1, 2440, 'terrestre', 55679);
INSERT INTO public.moon VALUES (14, 'n', 1, 2440, 'terrestre', 55679);
INSERT INTO public.moon VALUES (15, 'o', 1, 2440, 'terrestre', 55679);
INSERT INTO public.moon VALUES (16, 'p', 1, 2440, 'terrestre', 55679);
INSERT INTO public.moon VALUES (17, 'q', 1, 2440, 'terrestre', 55679);
INSERT INTO public.moon VALUES (18, 'r', 1, 2440, 'terrestre', 55679);
INSERT INTO public.moon VALUES (19, 's', 1, 2440, 'terrestre', 55679);
INSERT INTO public.moon VALUES (20, 't', 1, 2440, 'terrestre', 55679);
INSERT INTO public.moon VALUES (21, 'v', 1, 2440, 'terrestre', 55679);
INSERT INTO public.moon VALUES (22, 'u', 1, 2440, 'terrestre', 55679);
INSERT INTO public.moon VALUES (23, 'y', 1, 2440, 'terrestre', 55679);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'mercurio', 2, 0, false, false, 2440.00, 'pequeño rocoso', 1, 2440, 'terrestre');
INSERT INTO public.planet VALUES (2, 'venus', 2, 0, false, false, 12440.00, 'pequeño rocoso', 1, 12440, 'terrestre');
INSERT INTO public.planet VALUES (3, 'tierra', 3, 1, true, true, 12440.00, 'pequeño rocoso y con agua', 1, 8840, 'terrestre');
INSERT INTO public.planet VALUES (4, 'marte', 2, 0, false, false, 12440.00, 'pequeño rocoso', 1, 12440, 'terrestre');
INSERT INTO public.planet VALUES (5, 'jupiter', 2, 0, false, false, 72440.00, 'pequeño rocoso', 1, 72440, 'terrestre');
INSERT INTO public.planet VALUES (6, 'saturno', 3, 3, false, false, 23440.00, 'pequeño rocoso', 1, 23440, 'terrestre');
INSERT INTO public.planet VALUES (7, 'urano', 2, 1, false, false, 17440.00, 'pequeño rocoso', 1, 17440, 'terrestre');
INSERT INTO public.planet VALUES (8, 'neptuno', 1, 3, false, false, 27440.00, 'pequeño rocoso', 1, 27440, 'terrestre');
INSERT INTO public.planet VALUES (9, 'hobos', 1, 3, false, false, 27440.00, 'pequeño rocoso', 1, 27440, 'terrestre');
INSERT INTO public.planet VALUES (10, 'curry', 1, 3, false, false, 27440.00, 'pequeño rocoso', 1, 27440, 'terrestre');
INSERT INTO public.planet VALUES (11, 'rame', 1, 3, false, false, 27440.00, 'pequeño rocoso', 1, 27440, 'terrestre');
INSERT INTO public.planet VALUES (12, 'water', 1, 3, false, false, 27440.00, 'pequeño rocoso', 1, 27440, 'terrestre');


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'sol', 2, 1392000, 'enana amarilla', 15000000);
INSERT INTO public.star VALUES (2, 'proxima centauro', 1, 1692000, 'enana ultrafria', 36700000);
INSERT INTO public.star VALUES (3, 'trappist-1', 3, 2392000, 'enana ultrafia', 25000000);
INSERT INTO public.star VALUES (4, 'sirio', 4, 1392000, 'gigante blanca', 850000000);
INSERT INTO public.star VALUES (5, 'betelguese', 1, 3392000, 'gigante roja', 600000000);
INSERT INTO public.star VALUES (6, 'rigel', 2, 392000, 'gigante azul', 810000000);


--
-- Data for Name: systemsolar; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.systemsolar VALUES (1, 'a', 'espiral', 2440, 55679);
INSERT INTO public.systemsolar VALUES (2, 'b', 'espiral', 2440, 55679);
INSERT INTO public.systemsolar VALUES (3, 'c', 'espiral', 2440, 55679);
INSERT INTO public.systemsolar VALUES (4, 'd', 'espiral', 2440, 55679);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 23, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: start_start_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.start_start_id_seq', 6, true);


--
-- Name: systemsolar_systemsolar_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.systemsolar_systemsolar_id_seq', 4, true);


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
-- Name: star start_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT start_pkey PRIMARY KEY (star_id);


--
-- Name: systemsolar systemsolar_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.systemsolar
    ADD CONSTRAINT systemsolar_name_key UNIQUE (name);


--
-- Name: systemsolar systemsolar_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.systemsolar
    ADD CONSTRAINT systemsolar_pkey PRIMARY KEY (systemsolar_id);


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

