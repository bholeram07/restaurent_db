--
-- PostgreSQL database dump
--

-- Dumped from database version 17rc1
-- Dumped by pg_dump version 17rc1

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
-- Name: bill; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.bill (
    id uuid NOT NULL,
    restaurant_id uuid,
    user_id uuid,
    date date,
    booking_id uuid,
    amount double precision,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);


ALTER TABLE public.bill OWNER TO postgres;

--
-- Name: book_tabel; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.book_tabel (
    id uuid NOT NULL,
    restaurent_id uuid,
    user_id uuid,
    date_of_booking date,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);


ALTER TABLE public.book_tabel OWNER TO postgres;

--
-- Name: restaurant_book; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.restaurant_book (
    id uuid NOT NULL,
    name character varying(26),
    location character varying(30),
    user_id uuid,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    user_arrived boolean
);


ALTER TABLE public.restaurant_book OWNER TO postgres;

--
-- Name: users; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.users (
    id uuid NOT NULL,
    name character varying(20),
    is_manager boolean,
    email character varying(25),
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);


ALTER TABLE public.users OWNER TO postgres;

--
-- Data for Name: bill; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.bill (id, restaurant_id, user_id, date, booking_id, amount, created_at, updated_at) FROM stdin;
123e4567-e89b-12d3-a456-426614174000	a4f5a1e5-dc12-4f77-a1d1-5eabf62f55c1	5f47ac20-1e6b-11ec-9621-0242ac130002	2024-10-01	1f47ac20-1e6b-11ec-9621-0242ac130002	1500	2024-09-24 17:50:08.332457	2024-09-24 17:50:08.332457
223e4567-e89b-12d3-a456-426614174001	f3c76d79-d54d-4f4e-9c12-7f5cded39b5c	5f47ac20-1e6b-11ec-9621-0242ac130003	2024-10-02	2f47ac20-1e6b-11ec-9621-0242ac130003	2000	2024-09-24 17:50:08.332457	2024-09-24 17:50:08.332457
323e4567-e89b-12d3-a456-426614174002	25f8be02-89fc-4f1f-9b5f-d5d0451a8c5a	5f47ac20-1e6b-11ec-9621-0242ac130004	2024-10-03	3f47ac20-1e6b-11ec-9621-0242ac130004	2500	2024-09-24 17:50:08.332457	2024-09-24 17:50:08.332457
423e4567-e89b-12d3-a456-426614174003	4c61f7ec-6ef6-45f2-b5d4-e865a7e48e74	5f47ac20-1e6b-11ec-9621-0242ac130005	2024-10-04	4f47ac20-1e6b-11ec-9621-0242ac130005	3000	2024-09-24 17:50:08.332457	2024-09-24 17:50:08.332457
523e4567-e89b-12d3-a456-426614174004	a2f4e8c0-6cb2-41e0-8733-cf66c9a4eb9f	5f47ac20-1e6b-11ec-9621-0242ac130006	2024-10-05	5f47ac20-1e6b-11ec-9621-0242ac130006	3500	2024-09-24 17:50:08.332457	2024-09-24 17:50:08.332457
\.


--
-- Data for Name: book_tabel; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.book_tabel (id, restaurent_id, user_id, date_of_booking, created_at, updated_at) FROM stdin;
1f47ac20-1e6b-11ec-9621-0242ac130002	a4f5a1e5-dc12-4f77-a1d1-5eabf62f55c1	5f47ac20-1e6b-11ec-9621-0242ac130002	2024-10-01	2024-09-24 17:45:29.582383	2024-09-24 17:45:29.582383
2f47ac20-1e6b-11ec-9621-0242ac130003	f3c76d79-d54d-4f4e-9c12-7f5cded39b5c	5f47ac20-1e6b-11ec-9621-0242ac130003	2024-10-02	2024-09-24 17:45:29.582383	2024-09-24 17:45:29.582383
3f47ac20-1e6b-11ec-9621-0242ac130004	25f8be02-89fc-4f1f-9b5f-d5d0451a8c5a	5f47ac20-1e6b-11ec-9621-0242ac130004	2024-10-03	2024-09-24 17:45:29.582383	2024-09-24 17:45:29.582383
4f47ac20-1e6b-11ec-9621-0242ac130005	4c61f7ec-6ef6-45f2-b5d4-e865a7e48e74	5f47ac20-1e6b-11ec-9621-0242ac130005	2024-10-04	2024-09-24 17:45:29.582383	2024-09-24 17:45:29.582383
5f47ac20-1e6b-11ec-9621-0242ac130006	a2f4e8c0-6cb2-41e0-8733-cf66c9a4eb9f	5f47ac20-1e6b-11ec-9621-0242ac130006	2024-10-05	2024-09-24 17:45:29.582383	2024-09-24 17:45:29.582383
\.


--
-- Data for Name: restaurant_book; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.restaurant_book (id, name, location, user_id, created_at, updated_at, user_arrived) FROM stdin;
4c61f7ec-6ef6-45f2-b5d4-e865a7e48e74	Biryani Palace	Hyderabad	5f47ac20-1e6b-11ec-9621-0242ac130005	2024-09-24 17:40:49.778313	2024-09-24 17:40:49.778313	\N
a4f5a1e5-dc12-4f77-a1d1-5eabf62f55c1	Spice Junction	New Delhi	5f47ac20-1e6b-11ec-9621-0242ac130002	2024-09-24 17:40:49.778313	2024-09-24 17:40:49.778313	t
f3c76d79-d54d-4f4e-9c12-7f5cded39b5c	Curry House	Mumbai	5f47ac20-1e6b-11ec-9621-0242ac130003	2024-09-24 17:40:49.778313	2024-09-24 17:40:49.778313	t
a2f4e8c0-6cb2-41e0-8733-cf66c9a4eb9f	South Indian Delights	Chennai	5f47ac20-1e6b-11ec-9621-0242ac130006	2024-09-24 17:40:49.778313	2024-09-24 17:40:49.778313	t
25f8be02-89fc-4f1f-9b5f-d5d0451a8c5a	Tandoori Nights	Bangalore	5f47ac20-1e6b-11ec-9621-0242ac130004	2024-09-24 17:40:49.778313	2024-09-24 17:40:49.778313	t
\.


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.users (id, name, is_manager, email, created_at, updated_at) FROM stdin;
5f47ac20-1e6b-11ec-9621-0242ac130003	Vivaan Patel	f	vivaan.patel@example.com	2024-09-24 17:38:18.015322	2024-09-24 17:38:18.015322
5f47ac20-1e6b-11ec-9621-0242ac130004	Reyansh Verma	f	reyansh.verma@example.com	2024-09-24 17:38:18.015322	2024-09-24 17:38:18.015322
5f47ac20-1e6b-11ec-9621-0242ac130006	Saanvi Gupta	f	saanvi.gupta@example.com	2024-09-24 17:38:18.015322	2024-09-24 17:38:18.015322
5f47ac20-1e6b-11ec-9621-0242ac130002	Aarav Sharma	f	aarav.sharma@example.com	2024-09-24 17:38:18.015322	2024-09-24 17:38:18.015322
5f47ac20-1e6b-11ec-9621-0242ac130005	Aditya Rao	f	aditya.rao@example.com	2024-09-24 17:38:18.015322	2024-09-24 17:38:18.015322
\.


--
-- Name: bill bill_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.bill
    ADD CONSTRAINT bill_pkey PRIMARY KEY (id);


--
-- Name: book_tabel book_tabel_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.book_tabel
    ADD CONSTRAINT book_tabel_pkey PRIMARY KEY (id);


--
-- Name: restaurant_book restaurant_book_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.restaurant_book
    ADD CONSTRAINT restaurant_book_pkey PRIMARY KEY (id);


--
-- Name: users users_email_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key UNIQUE (email);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);


--
-- Name: bill bill_booking_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.bill
    ADD CONSTRAINT bill_booking_id_fkey FOREIGN KEY (booking_id) REFERENCES public.book_tabel(id);


--
-- Name: bill bill_restaurant_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.bill
    ADD CONSTRAINT bill_restaurant_id_fkey FOREIGN KEY (restaurant_id) REFERENCES public.restaurant_book(id);


--
-- Name: bill bill_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.bill
    ADD CONSTRAINT bill_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(id);


--
-- Name: book_tabel book_tabel_restaurent_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.book_tabel
    ADD CONSTRAINT book_tabel_restaurent_id_fkey FOREIGN KEY (restaurent_id) REFERENCES public.restaurant_book(id);


--
-- Name: book_tabel book_tabel_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.book_tabel
    ADD CONSTRAINT book_tabel_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(id);


--
-- Name: restaurant_book restaurant_book_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.restaurant_book
    ADD CONSTRAINT restaurant_book_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(id);


--
-- PostgreSQL database dump complete
--

