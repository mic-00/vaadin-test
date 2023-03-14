--
-- PostgreSQL database dump
--

-- Dumped from database version 15.2
-- Dumped by pg_dump version 15.2

-- Started on 2023-03-14 17:20:11

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
-- TOC entry 215 (class 1259 OID 16407)
-- Name: table; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."table" (
    id bigint NOT NULL,
    field character varying(50)
);


ALTER TABLE public."table" OWNER TO postgres;

--
-- TOC entry 214 (class 1259 OID 16406)
-- Name: table_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public."table" ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.table_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 3318 (class 0 OID 16407)
-- Dependencies: 215
-- Data for Name: table; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."table" (id, field) FROM stdin;
1	Hello World!
\.


--
-- TOC entry 3324 (class 0 OID 0)
-- Dependencies: 214
-- Name: table_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.table_id_seq', 1, true);


--
-- TOC entry 3174 (class 2606 OID 16411)
-- Name: table table_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."table"
    ADD CONSTRAINT table_pkey PRIMARY KEY (id);


-- Completed on 2023-03-14 17:20:11

--
-- PostgreSQL database dump complete
--

