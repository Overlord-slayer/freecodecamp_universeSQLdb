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
    has_life boolean,
    age_in_millions_of_years integer,
    distance_from_earth numeric(30,3),
    is_spherical boolean
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
    age_in_millions_of_years integer,
    diameter integer,
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
    name character varying(50) NOT NULL,
    age_in_millions_of_years integer,
    distance_from_earth numeric(30,2),
    diameter integer,
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
    name character varying(50) NOT NULL,
    age_in_millions_of_years integer,
    distance_from_earth numeric(30,3),
    diameter integer,
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
-- Name: state; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.state (
    state_id integer NOT NULL,
    name character varying(50) NOT NULL,
    has_life boolean,
    planet_type text,
    planet_id integer
);


ALTER TABLE public.state OWNER TO freecodecamp;

--
-- Name: state_state_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.state_state_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.state_state_id_seq OWNER TO freecodecamp;

--
-- Name: state_state_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.state_state_id_seq OWNED BY public.state.state_id;


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
-- Name: state state_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.state ALTER COLUMN state_id SET DEFAULT nextval('public.state_state_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', true, 13000, 0.000, true);
INSERT INTO public.galaxy VALUES (2, 'Andromeda', true, 10000, 2537000.000, true);
INSERT INTO public.galaxy VALUES (3, 'Triangulum', false, 3000, 3000000.000, false);
INSERT INTO public.galaxy VALUES (4, 'Messier 87', false, 12000, 53000000.000, true);
INSERT INTO public.galaxy VALUES (5, 'Sombrero', true, 8000, 28000000.000, true);
INSERT INTO public.galaxy VALUES (6, 'Whirlpool', false, 10000, 23000000.000, false);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (21, 'Io', 4500, 3643, 1);
INSERT INTO public.moon VALUES (22, 'Europa', 4000, 3122, 1);
INSERT INTO public.moon VALUES (23, 'Ganymede', 4700, 5268, 1);
INSERT INTO public.moon VALUES (24, 'Callisto', 4600, 4821, 1);
INSERT INTO public.moon VALUES (25, 'Titan', 4500, 5150, 2);
INSERT INTO public.moon VALUES (26, 'Enceladus', 4200, 504, 2);
INSERT INTO public.moon VALUES (27, 'Mimas', 4100, 396, 2);
INSERT INTO public.moon VALUES (28, 'Rhea', 4300, 1528, 2);
INSERT INTO public.moon VALUES (29, 'Triton', 5500, 2706, 3);
INSERT INTO public.moon VALUES (30, 'Charon', 4000, 1212, 3);
INSERT INTO public.moon VALUES (31, 'Dione', 4300, 1123, 2);
INSERT INTO public.moon VALUES (32, 'Iapetus', 4600, 1460, 2);
INSERT INTO public.moon VALUES (33, 'Titania', 3500, 1578, 4);
INSERT INTO public.moon VALUES (34, 'Oberon', 3400, 1523, 4);
INSERT INTO public.moon VALUES (35, 'Miranda', 3000, 471, 4);
INSERT INTO public.moon VALUES (36, 'Ariel', 3200, 1158, 4);
INSERT INTO public.moon VALUES (37, 'Umbriel', 3300, 1169, 4);
INSERT INTO public.moon VALUES (38, 'Phoebe', 4600, 220, 5);
INSERT INTO public.moon VALUES (39, 'Hyperion', 4400, 166, 5);
INSERT INTO public.moon VALUES (40, 'Atlas', 4800, 30, 5);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Zorath', 5200, 132.45, 4987, 1);
INSERT INTO public.planet VALUES (2, 'Veltrax', 4700, 284.78, 10980, 2);
INSERT INTO public.planet VALUES (3, 'Quintara', 3500, 900.65, 13456, 3);
INSERT INTO public.planet VALUES (4, 'Xandor', 4100, 2500.89, 7889, 4);
INSERT INTO public.planet VALUES (5, 'Cryonis', 3300, 720.34, 14789, 5);
INSERT INTO public.planet VALUES (6, 'Lunara', 5600, 1349.55, 8800, 6);
INSERT INTO public.planet VALUES (7, 'Galthera', 3800, 602.12, 12000, 1);
INSERT INTO public.planet VALUES (8, 'Nemoris', 4400, 4545.75, 10234, 2);
INSERT INTO public.planet VALUES (9, 'Phasora', 2950, 1678.23, 9700, 3);
INSERT INTO public.planet VALUES (10, 'Draygon', 4800, 812.66, 11550, 4);
INSERT INTO public.planet VALUES (11, 'Atheron', 2900, 1560.99, 9456, 5);
INSERT INTO public.planet VALUES (12, 'Varnax', 4300, 3567.89, 8902, 6);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sun', 4600, 0.000, 1392000, 1);
INSERT INTO public.star VALUES (2, 'Alpha Centauri', 6000, 419.000, 1340000, 2);
INSERT INTO public.star VALUES (3, 'Betelgeuse', 850, 640.000, 1080000, 1);
INSERT INTO public.star VALUES (4, 'Sirius', 200, 8.600, 2460000, 3);
INSERT INTO public.star VALUES (5, 'Proxima Centauri', 4500, 4.244, 200000, 2);
INSERT INTO public.star VALUES (6, 'Rigel', 800, 860.000, 1700000, 1);


--
-- Data for Name: state; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.state VALUES (11, 'Zephyria', true, 'Terrestrial', 5);
INSERT INTO public.state VALUES (12, 'Drakonia', false, 'Gas Giant', 12);
INSERT INTO public.state VALUES (13, 'Aetheros', true, 'Ice Giant', 7);
INSERT INTO public.state VALUES (14, 'Vortan', false, 'Terrestrial', 3);
INSERT INTO public.state VALUES (15, 'Lyraxis', true, 'Desert', 1);
INSERT INTO public.state VALUES (16, 'Thalassia', true, 'Oceanic', 8);
INSERT INTO public.state VALUES (17, 'Cryonix', false, 'Ice World', 6);
INSERT INTO public.state VALUES (18, 'Zypheron', false, 'Volcanic', 2);
INSERT INTO public.state VALUES (19, 'Nytheria', true, 'Forest', 10);
INSERT INTO public.state VALUES (20, 'Solara', false, 'Gas Giant', 4);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 40, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: state_state_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.state_state_id_seq', 20, true);


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
-- Name: state state_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.state
    ADD CONSTRAINT state_name_key UNIQUE (name);


--
-- Name: state state_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.state
    ADD CONSTRAINT state_pkey PRIMARY KEY (state_id);


--
-- Name: star fk_galaxy_id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT fk_galaxy_id FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id) ON DELETE CASCADE;


--
-- Name: moon fk_planet_id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT fk_planet_id FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id) ON DELETE CASCADE;


--
-- Name: state fk_planet_id_state; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.state
    ADD CONSTRAINT fk_planet_id_state FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id) ON DELETE CASCADE;


--
-- Name: planet fk_star_id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT fk_star_id FOREIGN KEY (star_id) REFERENCES public.star(star_id) ON DELETE CASCADE;


--
-- PostgreSQL database dump complete
--

