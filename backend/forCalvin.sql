--
-- PostgreSQL database dump
--

-- Dumped from database version 9.6.3
-- Dumped by pg_dump version 9.6.3

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

--
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: restaurant; Type: TABLE; Schema: public; Owner: personuser
--

CREATE TABLE restaurant (
    id integer NOT NULL,
    name text,
    address text,
    phone text,
    url text,
    image text,
    menu text,
    zipcode text,
    location text,
    costfor2 text,
    vegetarian boolean,
    kidfriendly boolean,
    reservations boolean,
    largegroups boolean,
    outdoorseating boolean,
    vegan boolean,
    weekend boolean,
    weekday boolean,
    boozybrunch boolean
);


ALTER TABLE restaurant OWNER TO personuser;

--
-- Name: restaurant_id_seq; Type: SEQUENCE; Schema: public; Owner: personuser
--

CREATE SEQUENCE restaurant_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE restaurant_id_seq OWNER TO personuser;

--
-- Name: restaurant_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: personuser
--

ALTER SEQUENCE restaurant_id_seq OWNED BY restaurant.id;


--
-- Name: restaurant id; Type: DEFAULT; Schema: public; Owner: personuser
--

ALTER TABLE ONLY restaurant ALTER COLUMN id SET DEFAULT nextval('restaurant_id_seq'::regclass);


--
-- Data for Name: restaurant; Type: TABLE DATA; Schema: public; Owner: personuser
--

COPY restaurant (id, name, address, phone, url, image, menu, zipcode, location, costfor2, vegetarian, kidfriendly, reservations, largegroups, outdoorseating, vegan, weekend, weekday, boozybrunch) FROM stdin;
15	Black Bean Co.	429 King St\nCharleston SC 29403	843-277-0990	http://www.getblackbean.com/	https://www.zomato.com/charleston-sc/black-bean-co-charleston/photos?utm_source=api_basic_user&utm_medium=api&utm_campaign=v2.1#tabtop	https://www.zomato.com/charleston-sc/black-bean-co-charleston/menu?utm_source=api_basic_user&utm_medium=api&utm_campaign=v2.1&openSwipeBox=menu&showMinimal=1#tabtop	29403	Charleston	10	t	\N	\N	\N	f	t	t	t	\N
14	Eli's Table	129 Meeting Street, Charleston 29401	(843) 405-5115	http://elistable.com/	https://www.zomato.com/charleston-sc/elis-table-charleston/photos?utm_source=api_basic_user&utm_medium=api&utm_campaign=v2.1#tabtop	https://www.zomato.com/charleston-sc/elis-table-charleston/menu?utm_source=api_basic_user&utm_medium=api&utm_campaign=v2.1&openSwipeBox=menu&showMinimal=1#tabtop	29401	Charleston	40	\N	\N	t	\N	t	\N	t	t	\N
1	Hominy Grill	207 Rutledge Ave, Charleston 29403	(843) 937-0930	https:/www.hominygrill.com	https://www.zomato.com/charleston-sc/hominy-grill-charleston/photos?utm_source=api_basic_user&utm_medium=api&utm_campaign=v2.1#tabtop	https://www.zomato.com/charleston-sc/hominy-grill-charleston/menu?utm_source=api_basic_user&utm_medium=api&utm_campaign=v2.1&openSwipeBox=menu&showMinimal=1#tabtop	29403	Charleston	25	t	t	f	\N	t	t	t	f	t
2	Fleet Landing	186 Concord St, Charleston 29401	(843) 722-8100 	https:/fleetlanding.net	https://www.zomato.com/charleston-sc/fleet-landing-charleston/photos?utm_source=api_basic_user&utm_medium=api&utm_campaign=v2.1#tabtop	https://www.zomato.com/charleston-sc/fleet-landing-charleston/menu?utm_source=api_basic_user&utm_medium=api&utm_campaign=v2.1&openSwipeBox=menu&showMinimal=1#tabtop	29401	Charleston	40	t	t	t	t	t	t	t	f	t
3	Husk	76 Queen St, Charleston 29401	(843) 577-2500	http://huskrestaurant.com/	https://www.zomato.com/charleston-sc/husk-charleston/photos?utm_source=api_basic_user&utm_medium=api&utm_campaign=v2.1#tabtop	https://www.zomato.com/charleston-sc/husk-charleston/menu?utm_source=api_basic_user&utm_medium=api&utm_campaign=v2.1&openSwipeBox=menu&showMinimal=1#tabtop	29401	Charleston	40	t	\N	t	\N	t	f	t	f	t
7	Toast!	717 Old Trolley Road \nSummerville, SC 29485	(843) 900-4422	http://www.toastofcharleston.com/	\N	https://www.zomato.com/charleston-sc/toast-charleston/menu?utm_source=api_basic_user&utm_medium=api&utm_campaign=v2.1&openSwipeBox=menu&showMinimal=1#tabtop	29485	Summerville	40	t	t	t	\N	f	t	t	t	t
6	Toast!	2026 Savannah Highway \nCharleston, SC 29407	(843) 556-0006	http://www.toastofcharleston.com/	\N	https://www.zomato.com/charleston-sc/toast-charleston/menu?utm_source=api_basic_user&utm_medium=api&utm_campaign=v2.1&openSwipeBox=menu&showMinimal=1#tabtop	29407	West Ashley	40	t	t	t	\N	f	t	t	t	t
5	Toast!	155 Meeting Street, Charleston 29401	(843) 534-0043	http://www.toastofcharleston.com/	https://www.zomato.com/charleston-sc/toast-charleston/photos?utm_source=api_basic_user&utm_medium=api&utm_campaign=v2.1#tabtop	https://www.zomato.com/charleston-sc/toast-charleston/menu?utm_source=api_basic_user&utm_medium=api&utm_campaign=v2.1&openSwipeBox=menu&showMinimal=1#tabtop	29401	Charleston	40	t	t	t	\N	f	t	t	t	t
4	The Early Bird Diner	1644 Savannah Hwy, Charleston 29407	(843) 277-2353	http://earlybirddiner.com/	https://www.zomato.com/charleston-sc/the-early-bird-diner-charleston/photos?utm_source=api_basic_user&utm_medium=api&utm_campaign=v2.1#tabtop	https://www.zomato.com/charleston-sc/the-early-bird-diner-charleston/menu?utm_source=api_basic_user&utm_medium=api&utm_campaign=v2.1&openSwipeBox=menu&showMinimal=1#tabtop	29407	West Ashley	25	\N	\N	f	\N	f	\N	t	t	t
8	Saffron Cafe & Bakery	333 E Bay St, Charleston 29401	(843) 722-5588	http://eatatsaffron.com/	https://www.zomato.com/charleston-sc/saffron-cafe-bakery-charleston/photos?utm_source=api_basic_user&utm_medium=api&utm_campaign=v2.1#tabtop	https://www.zomato.com/charleston-sc/saffron-cafe-bakery-charleston/menu?utm_source=api_basic_user&utm_medium=api&utm_campaign=v2.1&openSwipeBox=menu&showMinimal=1#tabtop	29401	Charleston	10	\N	\N	\N	\N	f	\N	t	t	\N
9	Caviar & Bananas	51 George St, Charleston 29401	(843) 577-7757	http://www.caviarandbananas.com/location/george-street/	https://www.zomato.com/charleston-sc/caviar-bananas-charleston/photos?utm_source=api_basic_user&utm_medium=api&utm_campaign=v2.1#tabtop	https://www.zomato.com/charleston-sc/caviar-bananas-charleston/menu?utm_source=api_basic_user&utm_medium=api&utm_campaign=v2.1&openSwipeBox=menu&showMinimal=1#tabtop	29401	Charleston	10	t	\N	\N	\N	f	t	t	t	f
10	Virginia's on King	412 King St, Charleston 29403	\N	http://www.holycityhospitality.com/virginias-on-king/	https://www.zomato.com/charleston-sc/virginias-on-king-peninsular-charleston-charleston/photos?utm_source=api_basic_user&utm_medium=api&utm_campaign=v2.1#tabtop	https://www.zomato.com/charleston-sc/virginias-on-king-peninsular-charleston-charleston/menu?utm_source=api_basic_user&utm_medium=api&utm_campaign=v2.1&openSwipeBox=menu&showMinimal=1#tabtop	29403	Charleston	40	\N	t	t	\N	f	\N	t	f	\N
11	Three Little Birds	65 Windermere Blvd, Charleston 29407	(843) 225-3065	http://www.threelittlebirdscafe.com/	https://www.zomato.com/charleston-sc/three-little-birds-charleston/photos?utm_source=api_basic_user&utm_medium=api&utm_campaign=v2.1#tabtop	https://www.zomato.com/charleston-sc/three-little-birds-charleston/menu?utm_source=api_basic_user&utm_medium=api&utm_campaign=v2.1&openSwipeBox=menu&showMinimal=1#tabtop	29407	West Ashley	10	t	\N	\N	\N	\N	t	t	t	\N
16	Blind Tiger Pub	36 Broad Street, Charleston 29403	(843)872-6700	http://blindtigerchs.com/	https://www.zomato.com/charleston-sc/blind-tiger-pub-peninsular-charleston-charleston/photos?utm_source=api_basic_user&utm_medium=api&utm_campaign=v2.1#tabtop	https://www.zomato.com/charleston-sc/blind-tiger-pub-peninsular-charleston-charleston/menu?utm_source=api_basic_user&utm_medium=api&utm_campaign=v2.1&openSwipeBox=menu&showMinimal=1#tabtop	29403	Charleston	45	\N	t	\N	t	t	\N	t	f	t
12	Triangle Char and Bar	828 Savannah Hwy, Charleston 29407	(843) 377--1300	http://trianglecharandbar.com/	https://www.zomato.com/charleston-sc/triangle-char-and-bar-charleston/photos?utm_source=api_basic_user&utm_medium=api&utm_campaign=v2.1#tabtop	https://www.zomato.com/charleston-sc/triangle-char-and-bar-charleston/menu?utm_source=api_basic_user&utm_medium=api&utm_campaign=v2.1&openSwipeBox=menu&showMinimal=1#tabtop	29407	West Ashley	25	\N	\N	t	\N	t	\N	t	f	t
13	Triangle Char and Bar	1440 Ben Sawyer Blvd. Mt.Pleasant, SC 29464	(843) 606-2900	http://trianglecharandbar.com/	https://www.zomato.com/charleston-sc/triangle-char-and-bar-charleston/photos?utm_source=api_basic_user&utm_medium=api&utm_campaign=v2.1#tabtop	https://www.zomato.com/charleston-sc/triangle-char-and-bar-charleston/menu?utm_source=api_basic_user&utm_medium=api&utm_campaign=v2.1&openSwipeBox=menu&showMinimal=1#tabtop	29464	Mt. Pleasant	25	\N	\N	\N	\N	\N	\N	t	f	t
17	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
18	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
19	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
20	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
\.


--
-- Name: restaurant_id_seq; Type: SEQUENCE SET; Schema: public; Owner: personuser
--

SELECT pg_catalog.setval('restaurant_id_seq', 1, true);


--
-- Name: restaurant name_pkey; Type: CONSTRAINT; Schema: public; Owner: personuser
--

ALTER TABLE ONLY restaurant
    ADD CONSTRAINT name_pkey PRIMARY KEY (id);


--
-- PostgreSQL database dump complete
--

