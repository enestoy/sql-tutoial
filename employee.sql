--
-- PostgreSQL database dump
--

-- Dumped from database version 17.5
-- Dumped by pg_dump version 17.5

-- Started on 2025-07-04 13:00:15

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

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- TOC entry 220 (class 1259 OID 16711)
-- Name: employee; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.employee (
    id integer NOT NULL,
    name character varying(50),
    birthday date,
    email character varying(100)
);


ALTER TABLE public.employee OWNER TO postgres;

--
-- TOC entry 219 (class 1259 OID 16710)
-- Name: employee_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.employee_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.employee_id_seq OWNER TO postgres;

--
-- TOC entry 4799 (class 0 OID 0)
-- Dependencies: 219
-- Name: employee_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.employee_id_seq OWNED BY public.employee.id;


--
-- TOC entry 4644 (class 2604 OID 16714)
-- Name: employee id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.employee ALTER COLUMN id SET DEFAULT nextval('public.employee_id_seq'::regclass);


--
-- TOC entry 4793 (class 0 OID 16711)
-- Dependencies: 220
-- Data for Name: employee; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.employee (id, name, birthday, email) FROM stdin;
3	Angie Jertz	2005-11-12	young@example.com
4	Junie Howatt	2004-12-07	young@example.com
6	Annette Caen	2014-10-10	young@example.com
7	Clemente Lowell	2001-04-20	young@example.com
9	Carling McQuarter	2010-12-11	young@example.com
10	Emyle Biggen	2000-11-13	young@example.com
11	Abrahan Vallantine	2004-08-18	young@example.com
12	Lukas Boake	2015-01-14	young@example.com
14	Lewes Worral	2000-07-04	young@example.com
15	Shirlene Childes	2002-10-20	young@example.com
16	Otis Toffaloni	2005-11-02	young@example.com
17	Bondy St Pierre	2016-02-12	young@example.com
18	Stanley Wyson	2017-07-28	young@example.com
19	Carlyn Harbord	2018-08-17	young@example.com
20	Claudia Corsor	2004-03-06	young@example.com
23	Marietta Sheardown	2002-09-28	young@example.com
24	Rusty Woolmington	2005-02-09	young@example.com
25	Aleece Ancell	2005-06-16	young@example.com
26	Emmit Durrett	2013-10-13	young@example.com
27	Bobbi Austick	2011-09-14	young@example.com
28	Cherilyn Gater	2017-03-27	young@example.com
29	Kora Heyworth	2009-05-08	young@example.com
30	Mohammed Donkersley	2003-07-11	young@example.com
31	Lizzy Ebden	2009-11-20	young@example.com
32	Martainn Dunnaway	2016-01-28	young@example.com
33	Gustavo Lillecrap	2004-08-22	young@example.com
35	Bourke Heatlie	2017-07-04	young@example.com
36	Noel Juste	2012-10-22	young@example.com
38	Shina Dowding	2001-11-10	young@example.com
39	Glynis Plumridge	2003-04-14	young@example.com
40	Zsazsa Pounder	2002-06-30	young@example.com
44	Claudie Caroll	2008-03-24	young@example.com
45	Claudine Martine	2004-08-11	young@example.com
46	Clyve Cappel	2019-02-15	young@example.com
47	Jacquenetta Alger	2014-11-21	young@example.com
48	Henri Gerrelts	2005-06-19	young@example.com
49	Myrtia Michelmore	2004-03-25	young@example.com
1	Prue O'Carran	2013-09-08	young@example.com
\.


--
-- TOC entry 4800 (class 0 OID 0)
-- Dependencies: 219
-- Name: employee_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.employee_id_seq', 1, false);


--
-- TOC entry 4646 (class 2606 OID 16716)
-- Name: employee employee_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.employee
    ADD CONSTRAINT employee_pkey PRIMARY KEY (id);


-- Completed on 2025-07-04 13:00:15

--
-- PostgreSQL database dump complete
--

