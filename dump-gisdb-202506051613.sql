--
-- PostgreSQL database dump
--

-- Dumped from database version 17.5
-- Dumped by pg_dump version 17.5

-- Started on 2025-06-05 16:13:12

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET transaction_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

--
-- TOC entry 5 (class 2615 OID 2200)
-- Name: public; Type: SCHEMA; Schema: -; Owner: pg_database_owner
--

CREATE SCHEMA public;


ALTER SCHEMA public OWNER TO pg_database_owner;

--
-- TOC entry 5726 (class 0 OID 0)
-- Dependencies: 5
-- Name: SCHEMA public; Type: COMMENT; Schema: -; Owner: pg_database_owner
--

COMMENT ON SCHEMA public IS 'standard public schema';


SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- TOC entry 226 (class 1259 OID 25673)
-- Name: areas; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.areas (
    id integer NOT NULL,
    name text NOT NULL,
    population integer,
    geom public.geometry(Polygon,4326)
);


ALTER TABLE public.areas OWNER TO postgres;

--
-- TOC entry 225 (class 1259 OID 25672)
-- Name: areas_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.areas_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.areas_id_seq OWNER TO postgres;

--
-- TOC entry 5727 (class 0 OID 0)
-- Dependencies: 225
-- Name: areas_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.areas_id_seq OWNED BY public.areas.id;


--
-- TOC entry 224 (class 1259 OID 25664)
-- Name: points_of_interest; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.points_of_interest (
    id integer NOT NULL,
    name text NOT NULL,
    geom public.geometry(Point,4326),
    population character varying
);


ALTER TABLE public.points_of_interest OWNER TO postgres;

--
-- TOC entry 223 (class 1259 OID 25663)
-- Name: points_of_interest_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.points_of_interest_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.points_of_interest_id_seq OWNER TO postgres;

--
-- TOC entry 5728 (class 0 OID 0)
-- Dependencies: 223
-- Name: points_of_interest_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.points_of_interest_id_seq OWNED BY public.points_of_interest.id;


--
-- TOC entry 5559 (class 2604 OID 25676)
-- Name: areas id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.areas ALTER COLUMN id SET DEFAULT nextval('public.areas_id_seq'::regclass);


--
-- TOC entry 5558 (class 2604 OID 25667)
-- Name: points_of_interest id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.points_of_interest ALTER COLUMN id SET DEFAULT nextval('public.points_of_interest_id_seq'::regclass);


--
-- TOC entry 5720 (class 0 OID 25673)
-- Dependencies: 226
-- Data for Name: areas; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.areas (id, name, population, geom) FROM stdin;
\.


--
-- TOC entry 5718 (class 0 OID 25664)
-- Dependencies: 224
-- Data for Name: points_of_interest; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.points_of_interest (id, name, geom, population) FROM stdin;
2	Gedung Sate	0101000020E6100000A1BE654E97E75A40232D95B7239C1BC0	\N
3	Alun-Alun Bandung	0101000020E610000069A9BC1DE1E65A4072A774B0FEAF1BC0	\N
4	Trans Studio Bandung	0101000020E6100000AD86C43D96E85A4087FE092E56B41BC0	\N
5	P3D Kota Bandung I Pajajaran	0101000020E6100000A1BE654E97E75A40232D95B7239C1BC0	\N
6	P3D Kota Bandung III Soekarno Hatta	0101000020E6100000AD86C43D96E85A4087FE092E56B41BC0	\N
7	Bapenda Jawa Barat	0101000020E610000036A15A8E21E95A4041C7FDFD18C91BC0	\N
8	P3D Kota Bandung II Kawaluyaan	0101000020E6100000C22275F16DEA5A40CEDF844204BC1BC0	\N
10	P3D WILAYAH KABUPATEN BANDUNG II SOREANG	0101000020E610000038B64368A9E25A40AEA29AED65161CC0	2888464
\.


--
-- TOC entry 5557 (class 0 OID 24899)
-- Dependencies: 219
-- Data for Name: spatial_ref_sys; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.spatial_ref_sys (srid, auth_name, auth_srid, srtext, proj4text) FROM stdin;
\.


--
-- TOC entry 5729 (class 0 OID 0)
-- Dependencies: 225
-- Name: areas_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.areas_id_seq', 2, true);


--
-- TOC entry 5730 (class 0 OID 0)
-- Dependencies: 223
-- Name: points_of_interest_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.points_of_interest_id_seq', 10, true);


--
-- TOC entry 5566 (class 2606 OID 25680)
-- Name: areas areas_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.areas
    ADD CONSTRAINT areas_pkey PRIMARY KEY (id);


--
-- TOC entry 5564 (class 2606 OID 25671)
-- Name: points_of_interest points_of_interest_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.points_of_interest
    ADD CONSTRAINT points_of_interest_pkey PRIMARY KEY (id);


-- Completed on 2025-06-05 16:13:12

--
-- PostgreSQL database dump complete
--

