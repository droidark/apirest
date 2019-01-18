--
-- PostgreSQL database dump
--

-- Dumped from database version 11.1
-- Dumped by pg_dump version 11.1

-- Started on 2019-01-18 15:53:36

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

--
-- TOC entry 199 (class 1259 OID 16466)
-- Name: hibernate_sequence; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.hibernate_sequence
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.hibernate_sequence OWNER TO postgres;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- TOC entry 197 (class 1259 OID 16458)
-- Name: ra_technology; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.ra_technology (
    tech_id integer NOT NULL,
    name character varying(45),
    is_active boolean
);


ALTER TABLE public.ra_technology OWNER TO postgres;

--
-- TOC entry 196 (class 1259 OID 16453)
-- Name: ra_user; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.ra_user (
    id_user integer NOT NULL,
    name character varying(45),
    email character varying(45),
    phone character varying(45),
    city character varying(45)
);


ALTER TABLE public.ra_user OWNER TO postgres;

--
-- TOC entry 198 (class 1259 OID 16463)
-- Name: ra_user_technology; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.ra_user_technology (
    id_user integer NOT NULL,
    tech_id integer NOT NULL
);


ALTER TABLE public.ra_user_technology OWNER TO postgres;

--
-- TOC entry 2821 (class 0 OID 16458)
-- Dependencies: 197
-- Data for Name: ra_technology; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.ra_technology (tech_id, name, is_active) FROM stdin;
5	fire	f
\.


--
-- TOC entry 2820 (class 0 OID 16453)
-- Dependencies: 196
-- Data for Name: ra_user; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.ra_user (id_user, name, email, phone, city) FROM stdin;
1	John	abc@xyz.com	1234567890	NY
2	Jane	abc@xyz.com	1234567890	CA
4	Jane	abc@xyz.com	1234567890	CA
\.


--
-- TOC entry 2822 (class 0 OID 16463)
-- Dependencies: 198
-- Data for Name: ra_user_technology; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.ra_user_technology (id_user, tech_id) FROM stdin;
1	5
\.


--
-- TOC entry 2829 (class 0 OID 0)
-- Dependencies: 199
-- Name: hibernate_sequence; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.hibernate_sequence', 7, true);


--
-- TOC entry 2696 (class 2606 OID 16462)
-- Name: ra_technology ra_technology_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ra_technology
    ADD CONSTRAINT ra_technology_pkey PRIMARY KEY (tech_id);


--
-- TOC entry 2694 (class 2606 OID 16469)
-- Name: ra_user ra_user_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ra_user
    ADD CONSTRAINT ra_user_pkey PRIMARY KEY (id_user);


--
-- TOC entry 2698 (class 2606 OID 16475)
-- Name: ra_user_technology fk5x37ouuecvcvhknrmf07myuov; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ra_user_technology
    ADD CONSTRAINT fk5x37ouuecvcvhknrmf07myuov FOREIGN KEY (id_user) REFERENCES public.ra_user(id_user);


--
-- TOC entry 2697 (class 2606 OID 16470)
-- Name: ra_user_technology fkaygvuxjxhfvyymtl07ard37nh; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ra_user_technology
    ADD CONSTRAINT fkaygvuxjxhfvyymtl07ard37nh FOREIGN KEY (tech_id) REFERENCES public.ra_technology(tech_id);


-- Completed on 2019-01-18 15:53:36

--
-- PostgreSQL database dump complete
--

