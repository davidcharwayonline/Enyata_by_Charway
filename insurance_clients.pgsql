--
-- PostgreSQL database dump
--

-- Dumped from database version 13.3 (Debian 13.3-1)
-- Dumped by pg_dump version 13.3 (Debian 13.3-1)

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
-- Name: incidents; Type: TABLE; Schema: public; Owner: davidcharway
--

CREATE TABLE public.incidents (
    id integer NOT NULL,
    client_id integer,
    incident_desc character varying(100),
    city character varying(50),
    country character varying(50),
    date timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    weather_report character varying
);


ALTER TABLE public.incidents OWNER TO davidcharway;

--
-- Name: incidents_id_seq; Type: SEQUENCE; Schema: public; Owner: davidcharway
--

CREATE SEQUENCE public.incidents_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.incidents_id_seq OWNER TO davidcharway;

--
-- Name: incidents_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: davidcharway
--

ALTER SEQUENCE public.incidents_id_seq OWNED BY public.incidents.id;


--
-- Name: users; Type: TABLE; Schema: public; Owner: davidcharway
--

CREATE TABLE public.users (
    id integer NOT NULL,
    client_id integer,
    incident_desc character varying(100),
    city character varying(50),
    country character varying(50),
    date timestamp without time zone,
    weather_report character varying
);


ALTER TABLE public.users OWNER TO davidcharway;

--
-- Name: users_id_seq; Type: SEQUENCE; Schema: public; Owner: davidcharway
--

CREATE SEQUENCE public.users_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_id_seq OWNER TO davidcharway;

--
-- Name: users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: davidcharway
--

ALTER SEQUENCE public.users_id_seq OWNED BY public.users.id;


--
-- Name: incidents id; Type: DEFAULT; Schema: public; Owner: davidcharway
--

ALTER TABLE ONLY public.incidents ALTER COLUMN id SET DEFAULT nextval('public.incidents_id_seq'::regclass);


--
-- Name: users id; Type: DEFAULT; Schema: public; Owner: davidcharway
--

ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);


--
-- Data for Name: incidents; Type: TABLE DATA; Schema: public; Owner: davidcharway
--

COPY public.incidents (id, client_id, incident_desc, city, country, date, weather_report) FROM stdin;
1	111	Pull request test 1	Accra	Ghana	2022-12-13 16:28:49.083764	Report{cod:[122,344],lat:[3453,4434]}
2	112	Pull request test 2	Accra2	Ghana2	2022-12-13 16:28:49.083764	Report2{cod:[122,344],lat:[3453,4434]}
3	113	Pull request test 3	Accra3	Ghana3	2022-12-13 16:28:49.083764	Report3{cod:[122,344],lat:[3453,4434]}
4	114	Pull request test 4	Accra4	Ghana4	2022-12-13 16:28:49.083764	Report4{cod:[122,344],lat:[3453,4434]}
5	115	Pull request test 5	Accra5	Ghana5	2022-12-13 16:28:49.083764	Report5{cod:[122,344],lat:[3453,4434]}
6	116	With CURL 1	AccraAPI	GhanaAPI	2022-12-13 17:24:50.429125	\N
7	117	With CURL 2	AccraAPI2	GhanaAPI2	2022-12-13 17:25:36.065111	\N
8	118	With CURL 4	AccraAPI4	GhanaAPI4	2022-12-13 19:52:28.433154	\N
9	118	With CURL 4	AccraAPI4	GhanaAPI4	2022-12-13 20:08:44.329003	\N
10	118	With CURL 4	AccraAPI4	GhanaAPI4	2022-12-13 20:11:07.931738	\N
12	118	With CURL 4	AccraAPI4	GhanaAPI4	2022-12-13 20:14:24.95531	\N
13	118	With CURL 4	AccraAPI4	GhanaAPI4	2022-12-13 20:14:28.166664	\N
11	118	With CURL 4	AccraAPI4	GhanaAPI4	2022-12-13 20:13:20.307574	Vibely
14	118	With CURL 4	AccraAPI4	GhanaAPI4	2022-12-13 20:53:36.910844	\N
15	118	With CURL 4	AccraAPI4	GhanaAPI4	2022-12-13 20:54:56.519182	Vibely
16	118	With CURL 4	AccraAPI4	GhanaAPI4	2022-12-13 20:57:07.859339	\N
17	118	With CURL 4	AccraAPI4	GhanaAPI4	2022-12-13 20:59:06.842407	{"coord":{"lon":-1.2028,"lat":7.9457},"weather":[{"id":801,"main":"Clouds","description":"few clouds","icon":"02n"}],"base":"stations","main":{"temp":302.18,"feels_like":300.84,"temp_min":302.18,"temp_max":302.18,"pressure":1011,"humidity":26,"sea_level":1011,"grnd_level":995},"visibility":10000,"wind":{"speed":0.9,"deg":33,"gust":1.01},"clouds":{"all":15},"dt":1670965146,"sys":{"country":"GH","sunrise":1670911743,"sunset":1670953739},"timezone":0,"id":2302547,"name":"Brong-Ahafo Region","cod":200}
18	118	With CURL 5	AccraAP5	GhanaAP5	2022-12-13 21:41:50.804353	{"coord":{"lon":-1.2028,"lat":7.9457},"weather":[{"id":801,"main":"Clouds","description":"few clouds","icon":"02n"}],"base":"stations","main":{"temp":301.7,"feels_like":300.48,"temp_min":301.7,"temp_max":301.7,"pressure":1011,"humidity":26,"sea_level":1011,"grnd_level":995},"visibility":10000,"wind":{"speed":0.6,"deg":1,"gust":0.73},"clouds":{"all":17},"dt":1670967712,"sys":{"country":"GH","sunrise":1670911743,"sunset":1670953739},"timezone":0,"id":2302547,"name":"Brong-Ahafo Region","cod":200}
19	118	With CURL 5	AccraAP5	GhanaAP5	2022-12-13 21:42:30.802525	{"coord":{"lon":-1.2028,"lat":7.9457},"weather":[{"id":801,"main":"Clouds","description":"few clouds","icon":"02n"}],"base":"stations","main":{"temp":301.7,"feels_like":300.48,"temp_min":301.7,"temp_max":301.7,"pressure":1011,"humidity":26,"sea_level":1011,"grnd_level":995},"visibility":10000,"wind":{"speed":0.6,"deg":1,"gust":0.73},"clouds":{"all":17},"dt":1670967712,"sys":{"country":"GH","sunrise":1670911743,"sunset":1670953739},"timezone":0,"id":2302547,"name":"Brong-Ahafo Region","cod":200}
\.


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: davidcharway
--

COPY public.users (id, client_id, incident_desc, city, country, date, weather_report) FROM stdin;
1	111	Pull request test 1	Accra	Ghana	\N	Report{cod:[122,344],lat:[3453,4434]}
2	112	Pull request test 2	Accra2	Ghana2	\N	Report2{cod:[122,344],lat:[3453,4434]}
3	113	Pull request test 3	Accra3	Ghana3	\N	Report3{cod:[122,344],lat:[3453,4434]}
4	114	Pull request test 4	Accra4	Ghana4	\N	Report4{cod:[122,344],lat:[3453,4434]}
5	115	Pull request test 5	Accra5	Ghana5	\N	Report5{cod:[122,344],lat:[3453,4434]}
\.


--
-- Name: incidents_id_seq; Type: SEQUENCE SET; Schema: public; Owner: davidcharway
--

SELECT pg_catalog.setval('public.incidents_id_seq', 19, true);


--
-- Name: users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: davidcharway
--

SELECT pg_catalog.setval('public.users_id_seq', 5, true);


--
-- Name: incidents incidents_pkey; Type: CONSTRAINT; Schema: public; Owner: davidcharway
--

ALTER TABLE ONLY public.incidents
    ADD CONSTRAINT incidents_pkey PRIMARY KEY (id);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: davidcharway
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);


--
-- PostgreSQL database dump complete
--

