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
-- Name: blackhole; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.blackhole (
    blackhole_id integer NOT NULL,
    name character varying(21) NOT NULL,
    size integer NOT NULL,
    descript text
);


ALTER TABLE public.blackhole OWNER TO freecodecamp;

--
-- Name: blackhole_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.blackhole_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.blackhole_id_seq OWNER TO freecodecamp;

--
-- Name: blackhole_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.blackhole_id_seq OWNED BY public.blackhole.blackhole_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(20) NOT NULL,
    age integer,
    distance_from_earth numeric,
    size integer
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_id_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(20) NOT NULL,
    age integer,
    distance_from_earth numeric,
    has_life boolean,
    planet_id integer
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_id_seq OWNER TO freecodecamp;

--
-- Name: moon_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_id_seq OWNED BY public.moon.moon_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(20) NOT NULL,
    age integer,
    distance_from_earth numeric,
    has_life boolean,
    star_id integer
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_id_seq OWNER TO freecodecamp;

--
-- Name: planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_id_seq OWNED BY public.planet.planet_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(20) NOT NULL,
    age integer,
    distance_from_earth numeric,
    size integer,
    galaxy_id integer
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_id_seq OWNER TO freecodecamp;

--
-- Name: star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_id_seq OWNED BY public.star.star_id;


--
-- Name: blackhole blackhole_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.blackhole ALTER COLUMN blackhole_id SET DEFAULT nextval('public.blackhole_id_seq'::regclass);


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_id_seq'::regclass);


--
-- Data for Name: blackhole; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.blackhole VALUES (1, 'CSDCNJ-9', 66664, NULL);
INSERT INTO public.blackhole VALUES (2, 'ERUKJ-4', 66664, NULL);
INSERT INTO public.blackhole VALUES (3, 'PAMWT-7', 66664, NULL);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milkey Way', 14, 0.00, NULL);
INSERT INTO public.galaxy VALUES (2, 'Andromeda', 15, 1.36, NULL);
INSERT INTO public.galaxy VALUES (3, 'skugdfg', 9, 2.87, NULL);
INSERT INTO public.galaxy VALUES (4, 'Andromeda4', 15, 1.36, NULL);
INSERT INTO public.galaxy VALUES (5, 'skugdfg5', 9, 2.87, NULL);
INSERT INTO public.galaxy VALUES (7, 'Andromeda7', 15, 1.36, NULL);
INSERT INTO public.galaxy VALUES (6, 'skugdfg6', 9, 2.87, NULL);
INSERT INTO public.galaxy VALUES (8, 'Andromeda7', 15, 1.36, NULL);
INSERT INTO public.galaxy VALUES (9, 'skugdfg6', 9, 2.87, NULL);
INSERT INTO public.galaxy VALUES (11, 'Andromeda7', 15, 1.36, NULL);
INSERT INTO public.galaxy VALUES (10, 'skugdfg6', 9, 2.87, NULL);
INSERT INTO public.galaxy VALUES (12, 'Andromeda7', 15, 1.36, NULL);
INSERT INTO public.galaxy VALUES (13, 'skugdfg6', 9, 2.87, NULL);
INSERT INTO public.galaxy VALUES (14, 'Andromeda7', 15, 1.36, NULL);
INSERT INTO public.galaxy VALUES (15, 'skugdfg6', 9, 2.87, NULL);
INSERT INTO public.galaxy VALUES (16, 'Andromeda7', 15, 1.36, NULL);
INSERT INTO public.galaxy VALUES (17, 'skugdfg6', 9, 2.87, NULL);
INSERT INTO public.galaxy VALUES (18, 'Andromeda7', 15, 1.36, NULL);
INSERT INTO public.galaxy VALUES (19, 'skugdfg6', 9, 2.87, NULL);
INSERT INTO public.galaxy VALUES (20, 'Andromeda7', 15, 1.36, NULL);
INSERT INTO public.galaxy VALUES (21, 'skugdfg6', 9, 2.87, NULL);
INSERT INTO public.galaxy VALUES (22, 'Andromeda7', 15, 1.36, NULL);
INSERT INTO public.galaxy VALUES (23, 'skugdfg6', 9, 2.87, NULL);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Moon', 5, 0.01, false, 1);
INSERT INTO public.moon VALUES (2, 'skdhfsk', 5, 0.36, true, 2);
INSERT INTO public.moon VALUES (3, 'uwhuew', 7, 0.87, false, 3);
INSERT INTO public.moon VALUES (4, 'Mafdgrs', 5, 0.36, true, 4);
INSERT INTO public.moon VALUES (5, 'Vezuznus', 7, 0.87, false, 5);
INSERT INTO public.moon VALUES (6, 'reteMars', 5, 0.36, true, 6);
INSERT INTO public.moon VALUES (7, 'Venweweus', 7, 0.87, false, 7);
INSERT INTO public.moon VALUES (8, 'Mauiiurs', 5, 0.36, true, 8);
INSERT INTO public.moon VALUES (9, 'werwVenus', 7, 0.87, false, 9);
INSERT INTO public.moon VALUES (10, 'Marfgfds', 5, 0.36, true, 10);
INSERT INTO public.moon VALUES (11, 'Vhhmmenus', 7, 0.87, false, 11);
INSERT INTO public.moon VALUES (12, 'Marcvbs', 5, 0.36, true, 12);
INSERT INTO public.moon VALUES (13, 'Venuhkhss', 7, 0.87, false, 13);
INSERT INTO public.moon VALUES (14, 'Mafdgrs', 5, 0.36, true, 14);
INSERT INTO public.moon VALUES (15, 'Vezuznus', 7, 0.87, false, 15);
INSERT INTO public.moon VALUES (16, 'reteMars', 5, 0.36, true, 16);
INSERT INTO public.moon VALUES (17, 'Venweweus', 7, 0.87, false, 17);
INSERT INTO public.moon VALUES (18, 'Mauiiurs', 5, 0.36, true, 18);
INSERT INTO public.moon VALUES (19, 'werwVenus', 7, 0.87, false, 19);
INSERT INTO public.moon VALUES (20, 'Marfgfds', 5, 0.36, true, 20);
INSERT INTO public.moon VALUES (21, 'Vhhmmenus', 7, 0.87, false, 21);
INSERT INTO public.moon VALUES (22, 'Marcvbs', 5, 0.36, true, 22);
INSERT INTO public.moon VALUES (23, 'Venuhkhss', 7, 0.87, false, 23);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Earth', 5, 0.00, true, 1);
INSERT INTO public.planet VALUES (2, 'Mars', 5, 0.36, true, 2);
INSERT INTO public.planet VALUES (3, 'Venus', 7, 0.87, false, 3);
INSERT INTO public.planet VALUES (4, 'Mafdgrs', 5, 0.36, true, 4);
INSERT INTO public.planet VALUES (5, 'Vezuznus', 7, 0.87, false, 5);
INSERT INTO public.planet VALUES (6, 'reteMars', 5, 0.36, true, 6);
INSERT INTO public.planet VALUES (7, 'Venweweus', 7, 0.87, false, 7);
INSERT INTO public.planet VALUES (8, 'Mauiiurs', 5, 0.36, true, 8);
INSERT INTO public.planet VALUES (9, 'werwVenus', 7, 0.87, false, 9);
INSERT INTO public.planet VALUES (10, 'Marfgfds', 5, 0.36, true, 10);
INSERT INTO public.planet VALUES (11, 'Vhhmmenus', 7, 0.87, false, 11);
INSERT INTO public.planet VALUES (12, 'Marcvbs', 5, 0.36, true, 12);
INSERT INTO public.planet VALUES (13, 'Venuhkhss', 7, 0.87, false, 13);
INSERT INTO public.planet VALUES (14, 'Mafdgrs', 5, 0.36, true, 14);
INSERT INTO public.planet VALUES (15, 'Vezuznus', 7, 0.87, false, 15);
INSERT INTO public.planet VALUES (16, 'reteMars', 5, 0.36, true, 16);
INSERT INTO public.planet VALUES (17, 'Venweweus', 7, 0.87, false, 17);
INSERT INTO public.planet VALUES (18, 'Mauiiurs', 5, 0.36, true, 18);
INSERT INTO public.planet VALUES (19, 'werwVenus', 7, 0.87, false, 19);
INSERT INTO public.planet VALUES (20, 'Marfgfds', 5, 0.36, true, 20);
INSERT INTO public.planet VALUES (21, 'Vhhmmenus', 7, 0.87, false, 21);
INSERT INTO public.planet VALUES (22, 'Marcvbs', 5, 0.36, true, 22);
INSERT INTO public.planet VALUES (23, 'Venuhkhss', 7, 0.87, false, 23);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sun', 10, 0.03, NULL, 1);
INSERT INTO public.star VALUES (2, 'Sun2', 15, 1.36, NULL, 2);
INSERT INTO public.star VALUES (3, 'Sun3', 9, 2.87, NULL, 3);
INSERT INTO public.star VALUES (4, 'Sun4', 15, 1.36, NULL, 4);
INSERT INTO public.star VALUES (5, 'Sun5', 9, 2.87, NULL, 5);
INSERT INTO public.star VALUES (6, 'Sun6', 15, 1.36, NULL, 6);
INSERT INTO public.star VALUES (7, 'Sun7', 9, 2.87, NULL, 7);
INSERT INTO public.star VALUES (8, 'Sun6', 15, 1.36, NULL, 8);
INSERT INTO public.star VALUES (9, 'Sun7', 9, 2.87, NULL, 9);
INSERT INTO public.star VALUES (10, 'Sun6', 15, 1.36, NULL, 10);
INSERT INTO public.star VALUES (11, 'Sun7', 9, 2.87, NULL, 11);
INSERT INTO public.star VALUES (12, 'Sun6', 15, 1.36, NULL, 12);
INSERT INTO public.star VALUES (13, 'Sun7', 9, 2.87, NULL, 13);
INSERT INTO public.star VALUES (14, 'Sun6', 15, 1.36, NULL, 14);
INSERT INTO public.star VALUES (15, 'Sun7', 9, 2.87, NULL, 15);
INSERT INTO public.star VALUES (16, 'Sun6', 15, 1.36, NULL, 16);
INSERT INTO public.star VALUES (17, 'Sun7', 9, 2.87, NULL, 17);
INSERT INTO public.star VALUES (18, 'Sun6', 15, 1.36, NULL, 18);
INSERT INTO public.star VALUES (19, 'Sun7', 9, 2.87, NULL, 19);
INSERT INTO public.star VALUES (20, 'Sun6', 15, 1.36, NULL, 20);
INSERT INTO public.star VALUES (21, 'Sun7', 9, 2.87, NULL, 21);
INSERT INTO public.star VALUES (22, 'Sun6', 15, 1.36, NULL, 22);
INSERT INTO public.star VALUES (23, 'Sun7', 9, 2.87, NULL, 23);


--
-- Name: blackhole_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.blackhole_id_seq', 1, false);


--
-- Name: galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_id_seq', 1, false);


--
-- Name: moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_id_seq', 1, false);


--
-- Name: planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_id_seq', 1, false);


--
-- Name: star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_id_seq', 1, true);


--
-- Name: blackhole blackhole_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.blackhole
    ADD CONSTRAINT blackhole_pkey PRIMARY KEY (blackhole_id);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: blackhole unique_id; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.blackhole
    ADD CONSTRAINT unique_id UNIQUE (blackhole_id);


--
-- Name: moon unique_id2; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT unique_id2 UNIQUE (moon_id);


--
-- Name: planet unique_planet_id; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT unique_planet_id UNIQUE (planet_id);


--
-- Name: galaxy unique_size; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT unique_size UNIQUE (size);


--
-- Name: star unique_size1; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT unique_size1 UNIQUE (size);


--
-- Name: star fk_galaxy; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT fk_galaxy FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- Name: moon fk_planet; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT fk_planet FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet fk_star; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT fk_star FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- PostgreSQL database dump complete
--

