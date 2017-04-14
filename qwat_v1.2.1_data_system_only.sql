--
-- PostgreSQL database dump
--

-- Dumped from database version 9.5.6
-- Dumped by pg_dump version 9.5.6

-- Started on 2017-04-14 15:00:54 CEST

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

SET search_path = qwat_sys, pg_catalog;

--
-- TOC entry 4168 (class 0 OID 25428047)
-- Dependencies: 203
-- Data for Name: settings; Type: TABLE DATA; Schema: qwat_sys; Owner: postgres
--

COPY settings (id, name, type, value, v_min, v_max, v_not_null, description) FROM stdin;
1	srid	integer	21781	\N	\N	t	\N
\.


--
-- TOC entry 4177 (class 0 OID 0)
-- Dependencies: 202
-- Name: settings_id_seq; Type: SEQUENCE SET; Schema: qwat_sys; Owner: postgres
--

SELECT pg_catalog.setval('settings_id_seq', 1, true);


--
-- TOC entry 4170 (class 0 OID 25428066)
-- Dependencies: 205
-- Data for Name: versions; Type: TABLE DATA; Schema: qwat_sys; Owner: postgres
--

COPY versions (id, module, version) FROM stdin;
1	model.core	0.1.0
\.


--
-- TOC entry 4178 (class 0 OID 0)
-- Dependencies: 204
-- Name: versions_id_seq; Type: SEQUENCE SET; Schema: qwat_sys; Owner: postgres
--

SELECT pg_catalog.setval('versions_id_seq', 1, true);


-- Completed on 2017-04-14 15:00:54 CEST

--
-- PostgreSQL database dump complete
--

