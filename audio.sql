--
-- PostgreSQL database dump
--

-- Dumped from database version 13.3
-- Dumped by pg_dump version 13.3

-- Started on 2021-06-23 16:01:14 IST

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
-- TOC entry 225 (class 1259 OID 16605)
-- Name: audio; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.audio (
    id integer NOT NULL,
    title character varying(255),
    description character varying(255),
    category character varying(255),
    audio_file character varying(255),
    creator_name character varying(255),
    creator_email character varying(255)
);


ALTER TABLE public.audio OWNER TO postgres;

--
-- TOC entry 224 (class 1259 OID 16603)
-- Name: audio_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.audio_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.audio_id_seq OWNER TO postgres;

--
-- TOC entry 3321 (class 0 OID 0)
-- Dependencies: 224
-- Name: audio_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.audio_id_seq OWNED BY public.audio.id;


--
-- TOC entry 3181 (class 2604 OID 16608)
-- Name: audio id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.audio ALTER COLUMN id SET DEFAULT nextval('public.audio_id_seq'::regclass);


--
-- TOC entry 3315 (class 0 OID 16605)
-- Dependencies: 225
-- Data for Name: audio; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.audio (id, title, description, category, audio_file, creator_name, creator_email) VALUES (1, 'Falling', 'This song is released in year 2018', 'English', 'falling_2K18', 'Harry Styles', 'harry@gmail.com');
INSERT INTO public.audio (id, title, description, category, audio_file, creator_name, creator_email) VALUES (2, 'Walls', 'This song is released in 2019', 'English', 'walls_2K19', 'Louis Tomlinson', 'louis@gmail.com');
INSERT INTO public.audio (id, title, description, category, audio_file, creator_name, creator_email) VALUES (3, 'Perfect', 'Performed by One Direction', 'English', 'perfect_one_dir', 'One Direction', 'one.direction@gmail.com');


--
-- TOC entry 3322 (class 0 OID 0)
-- Dependencies: 224
-- Name: audio_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.audio_id_seq', 6, true);


--
-- TOC entry 3183 (class 2606 OID 16613)
-- Name: audio audio_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.audio
    ADD CONSTRAINT audio_pkey PRIMARY KEY (id);


-- Completed on 2021-06-23 16:01:14 IST

--
-- PostgreSQL database dump complete
--

