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
    name character varying(20) NOT NULL,
    radius numeric(5,1),
    type_id integer,
    age integer
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_id_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    planet_id integer NOT NULL,
    name character varying(20) NOT NULL,
    weight integer,
    radius integer,
    description text
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
-- Name: niggers; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.niggers (
    niggers_id integer NOT NULL,
    moon_id integer NOT NULL,
    name character varying(20) NOT NULL,
    work integer,
    nigga integer,
    imbored integer
);


ALTER TABLE public.niggers OWNER TO freecodecamp;

--
-- Name: niggers_nigger_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.niggers_nigger_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.niggers_nigger_id_seq OWNER TO freecodecamp;

--
-- Name: niggers_nigger_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.niggers_nigger_id_seq OWNED BY public.niggers.niggers_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    star_id integer,
    name character varying(20) NOT NULL,
    is_alive boolean,
    distance_from_star numeric(7,2)
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
    name character varying(20) NOT NULL,
    galaxy_id integer,
    description text,
    color character varying(15),
    is_double boolean
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_id_seq OWNER TO freecodecamp;

--
-- Name: star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_id_seq OWNED BY public.star.star_id;


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: niggers niggers_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.niggers ALTER COLUMN niggers_id SET DEFAULT nextval('public.niggers_nigger_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Andromeda', 46.6, 1, 513551);
INSERT INTO public.galaxy VALUES (3, 'smol', 1.0, 1, 1);
INSERT INTO public.galaxy VALUES (4, 'big boy', 9999.9, 9, 11111);
INSERT INTO public.galaxy VALUES (5, 'weird', 0.0, 0, 0);
INSERT INTO public.galaxy VALUES (6, 'unknown', NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (7, 'who knows bc i dont', NULL, 1, 999999);
INSERT INTO public.galaxy VALUES (8, 'uhhh idk', 100.0, 1999, 1);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (11, 5, 'Gutmann', 51497, 14488, 'mbnnnfuwlx');
INSERT INTO public.moon VALUES (12, 11, 'Stamm', 51353, 41963, 'pzudppdetb');
INSERT INTO public.moon VALUES (13, 11, 'Harber', 95334, 31382, 'obgraopnko');
INSERT INTO public.moon VALUES (14, 7, 'Bednar', 3528, 71809, 'gmmfpomaqk');
INSERT INTO public.moon VALUES (15, 9, 'Price', 56543, 65878, 'shzpnjkyph');
INSERT INTO public.moon VALUES (16, 3, 'Thiel', 14548, 38871, 'oezjnliajo');
INSERT INTO public.moon VALUES (17, 7, 'Braun', 17333, 78155, 'oxbidhxumo');
INSERT INTO public.moon VALUES (18, 8, 'Schumm', 68009, 94702, 'vwvwzyzdah');
INSERT INTO public.moon VALUES (19, 2, 'Tillman', 74747, 58784, 'jljquescpv');
INSERT INTO public.moon VALUES (20, 2, 'Sauer', 26406, 47614, 'kpqqsvixsj');
INSERT INTO public.moon VALUES (21, 1, 'Volkman', 13840, 67276, 'rbkskuh');
INSERT INTO public.moon VALUES (22, 4, 'Tromp', 59662, 40359, 'fxpgsak');
INSERT INTO public.moon VALUES (23, 12, 'Maggio', 53648, 9187, 'ussizfc');
INSERT INTO public.moon VALUES (24, 11, 'Balistreri', 98961, 76928, 'gdxqvbu');
INSERT INTO public.moon VALUES (25, 2, 'Terry', 77404, 88338, 'fcwydye');
INSERT INTO public.moon VALUES (26, 4, 'Barton', 44930, 35142, 'ardnjpg');
INSERT INTO public.moon VALUES (27, 10, 'Kovacek', 15366, 13660, 'znixzi');
INSERT INTO public.moon VALUES (28, 2, 'Witting', 56635, 91814, 'favlrm');
INSERT INTO public.moon VALUES (29, 9, 'Johnston', 31014, 91171, 'twvyqi');
INSERT INTO public.moon VALUES (30, 2, 'Huel', 81348, 83361, 'cchyrz');
INSERT INTO public.moon VALUES (31, 6, 'Von', 95556, 56628, 'dhuxjx');
INSERT INTO public.moon VALUES (32, 10, 'Corkery', 42799, 12050, 'cseayq');
INSERT INTO public.moon VALUES (33, 4, 'Lueilwitz', 32276, 7560, 'zzpzpd');
INSERT INTO public.moon VALUES (34, 9, 'Herman', 88625, 64075, 'nelrlo');
INSERT INTO public.moon VALUES (35, 2, 'Langosh', 85747, 32559, 'smtqsd');
INSERT INTO public.moon VALUES (36, 3, 'Lynch', 25081, 73480, 'bephpj');
INSERT INTO public.moon VALUES (37, 6, 'Predovic', 32927, 15558, 'uvrxfh');
INSERT INTO public.moon VALUES (38, 2, 'Beer', 69319, 80379, 'ibtonu');
INSERT INTO public.moon VALUES (39, 12, 'Mayer', 41141, 60338, 'xjoymn');
INSERT INTO public.moon VALUES (40, 3, 'Schaden', 8218, 82639, 'jxtogw');
INSERT INTO public.moon VALUES (41, 6, 'Sanford', 67, 26382, 'luxern');
INSERT INTO public.moon VALUES (42, 9, 'Hartmann', 32811, 4615, 'gvcmxp');
INSERT INTO public.moon VALUES (43, 2, 'Parker', 46636, 68247, 'lxaipp');
INSERT INTO public.moon VALUES (44, 7, 'Satterfield', 614, 9176, 'quvbme');
INSERT INTO public.moon VALUES (45, 12, 'Dach', 86752, 35057, 'qzazwy');
INSERT INTO public.moon VALUES (46, 5, 'Olson', 44747, 93453, 'ujadsp');
INSERT INTO public.moon VALUES (47, 8, 'Skiles', 17354, 80713, 'greitl');
INSERT INTO public.moon VALUES (48, 10, 'Stracke', 58680, 97533, 'xblkeb');
INSERT INTO public.moon VALUES (49, 9, 'Collins', 8194, 86379, 'jehouv');
INSERT INTO public.moon VALUES (51, 8, 'Wolf', 86115, 27580, 'msgcaq');
INSERT INTO public.moon VALUES (54, 5, 'Gorczany', 11541, 30161, 'nbiaid');
INSERT INTO public.moon VALUES (55, 3, 'Hane', 95597, 91783, 'ebthkh');
INSERT INTO public.moon VALUES (56, 10, 'Wintheiser', 8148, 66437, 'zhvwif');
INSERT INTO public.moon VALUES (57, 12, 'Ward', 67499, 38132, 'wrgblj');
INSERT INTO public.moon VALUES (58, 2, 'Huels', 63940, 59815, 'fmkkug');
INSERT INTO public.moon VALUES (59, 9, 'Lakin', 99152, 780, 'eimhdb');
INSERT INTO public.moon VALUES (61, 4, 'Kuvalis', 91253, 61906, 'iushho');
INSERT INTO public.moon VALUES (62, 6, 'Waters', 38427, 79368, 'egnajo');
INSERT INTO public.moon VALUES (63, 2, 'Lockman', 81686, 28911, 'xepoki');
INSERT INTO public.moon VALUES (64, 1, 'Abbott', 84548, 95044, 'uwfgfk');
INSERT INTO public.moon VALUES (65, 10, 'Weissnat', 16176, 83883, 'aauwrv');
INSERT INTO public.moon VALUES (66, 6, 'Larson', 58337, 2659, 'vukyco');
INSERT INTO public.moon VALUES (68, 4, 'Kris', 96566, 74322, 'bdrzwy');
INSERT INTO public.moon VALUES (69, 9, 'Kessler', 71425, 36423, 'bxstbk');
INSERT INTO public.moon VALUES (70, 9, 'Bayer', 19697, 53820, 'hxahpy');
INSERT INTO public.moon VALUES (72, 12, 'Brekke', 41092, 46154, 'ejrknd');
INSERT INTO public.moon VALUES (73, 9, 'Leffler', 53787, 1822, 'wkcbic');
INSERT INTO public.moon VALUES (75, 4, 'Klein', 23402, 60766, 'kaicag');
INSERT INTO public.moon VALUES (76, 1, 'Rowe', 64138, 53590, 'crbyae');
INSERT INTO public.moon VALUES (77, 1, 'Lubowitz', 72929, 84197, 'unaipq');
INSERT INTO public.moon VALUES (79, 4, 'McDermott', 39784, 21014, 'qkxunp');
INSERT INTO public.moon VALUES (80, 2, 'Pfeffer', 93838, 95937, 'sxeeaz');
INSERT INTO public.moon VALUES (81, 10, 'Goldner', 31289, 41637, 'lugpen');
INSERT INTO public.moon VALUES (82, 8, 'Pacocha', 82859, 49442, 'npolml');
INSERT INTO public.moon VALUES (83, 10, 'Douglas', 9467, 37528, 'fetmbn');
INSERT INTO public.moon VALUES (84, 8, 'Wilderman', 49124, 77663, 'qcteye');
INSERT INTO public.moon VALUES (85, 1, 'Emmerich', 90085, 66717, 'wplriv');
INSERT INTO public.moon VALUES (86, 2, 'Raynor', 50083, 72762, 'zymsqm');
INSERT INTO public.moon VALUES (87, 1, 'Conroy', 73337, 70852, 'irfwha');
INSERT INTO public.moon VALUES (90, 10, 'Schinner', 45072, 76460, 'ukayet');
INSERT INTO public.moon VALUES (91, 1, 'Swaniawski', 43994, 17632, 'ikohup');
INSERT INTO public.moon VALUES (92, 2, 'Hudson', 98911, 72404, 'bzbyjs');
INSERT INTO public.moon VALUES (93, 4, 'Marquardt', 77359, 15698, 'vqzypc');
INSERT INTO public.moon VALUES (94, 5, 'Kiehn', 47878, 3479, 'gogrxy');
INSERT INTO public.moon VALUES (95, 6, 'Rohan', 20278, 99643, 'qfqwlg');
INSERT INTO public.moon VALUES (97, 12, 'Krajcik', 24594, 34492, 'xqmjrq');
INSERT INTO public.moon VALUES (98, 10, 'Simonis', 73979, 9641, 'ladkoj');
INSERT INTO public.moon VALUES (99, 5, 'Ferry', 10185, 53771, 'qvbzly');
INSERT INTO public.moon VALUES (100, 10, 'Walker', 85642, 53822, 'tcrohg');
INSERT INTO public.moon VALUES (101, 9, 'Schuster', 97265, 24611, 'xfqawk');
INSERT INTO public.moon VALUES (102, 8, 'Jakubowski', 60346, 46791, 'joczht');
INSERT INTO public.moon VALUES (103, 9, 'Carroll', 95126, 55011, 'nhafkm');
INSERT INTO public.moon VALUES (104, 11, 'Nolan', 69146, 16093, 'yhfsux');
INSERT INTO public.moon VALUES (105, 7, 'Lindgren', 39353, 26542, 'fivbic');
INSERT INTO public.moon VALUES (106, 11, 'Swift', 57167, 25709, 'khwror');
INSERT INTO public.moon VALUES (107, 2, 'Mayert', 37241, 98436, 'xhwmsx');
INSERT INTO public.moon VALUES (108, 8, 'Armstrong', 59636, 83566, 'nwtjui');
INSERT INTO public.moon VALUES (109, 12, 'Kuhn', 97890, 16149, 'cyewjv');
INSERT INTO public.moon VALUES (110, 4, 'Gleichner', 33092, 74593, 'cclpok');
INSERT INTO public.moon VALUES (111, 11, 'Smith', 82790, 57088, 'akijyw');
INSERT INTO public.moon VALUES (112, 3, 'Wilkinson', 58471, 85045, 'uptgzq');
INSERT INTO public.moon VALUES (113, 3, 'Grady', 13275, 64095, 'edqcvz');
INSERT INTO public.moon VALUES (114, 3, 'Hagenes', 59727, 29988, 'dvysxy');
INSERT INTO public.moon VALUES (115, 1, 'Lesch', 77473, 18059, 'pmwqhl');
INSERT INTO public.moon VALUES (116, 11, 'Kub', 40705, 9112, 'vzyjhw');
INSERT INTO public.moon VALUES (117, 8, 'Conn', 57690, 16024, 'bauvjx');
INSERT INTO public.moon VALUES (118, 1, 'Rau', 74261, 86797, 'kglcze');
INSERT INTO public.moon VALUES (119, 3, 'Thompson', 54021, 95519, 'bdbjcm');
INSERT INTO public.moon VALUES (120, 8, 'Graham', 98958, 20143, 'velqmm');
INSERT INTO public.moon VALUES (123, 2, 'Bogisich', 81007, 45537, 'bbfjqv');
INSERT INTO public.moon VALUES (124, 4, 'Boehm', 30781, 41574, 'ndbynx');
INSERT INTO public.moon VALUES (125, 1, 'Cummings', 60426, 69796, 'fubnjs');
INSERT INTO public.moon VALUES (126, 7, 'Fahey', 38079, 1292, 'socvgm');
INSERT INTO public.moon VALUES (127, 7, 'McCullough', 49446, 37211, 'nkoelz');
INSERT INTO public.moon VALUES (129, 4, 'Nienow', 41882, 68298, 'eqzlwc');
INSERT INTO public.moon VALUES (130, 11, 'Hahn', 40842, 638, 'dqunrz');
INSERT INTO public.moon VALUES (131, 1, 'Christiansen', 13118, 27794, 'yoiwyr');
INSERT INTO public.moon VALUES (133, 2, 'Crist', 70251, 93590, 'msqvbs');
INSERT INTO public.moon VALUES (138, 12, 'Moen', 90700, 39117, 'onccwx');
INSERT INTO public.moon VALUES (139, 3, 'Kerluke', 92530, 84080, 'jbiwpn');
INSERT INTO public.moon VALUES (140, 4, 'Mitchell', 1198, 4862, 'qiqtse');
INSERT INTO public.moon VALUES (141, 8, 'Bartoletti', 63545, 10078, 'tisnai');
INSERT INTO public.moon VALUES (142, 7, 'Kertzmann', 87032, 3364, 'zrvors');
INSERT INTO public.moon VALUES (143, 10, 'Beatty', 44161, 30420, 'vpvjap');
INSERT INTO public.moon VALUES (144, 7, 'Jacobs', 60813, 68342, 'irvxyl');
INSERT INTO public.moon VALUES (145, 7, 'Franecki', 72094, 13463, 'xekzlh');
INSERT INTO public.moon VALUES (146, 3, 'McClure', 11170, 93642, 'twotug');
INSERT INTO public.moon VALUES (147, 11, 'Hessel', 50092, 67174, 'htspxx');
INSERT INTO public.moon VALUES (151, 5, 'Crooks', 43462, 75993, 'ecwuvt');


--
-- Data for Name: niggers; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.niggers VALUES (1, 72, 'Naomi', 89565, 75788, 74785);
INSERT INTO public.niggers VALUES (4, 72, 'Eleonore', 25878, 94152, 1608);
INSERT INTO public.niggers VALUES (5, 12, 'Gilbert', 6016, 75996, 81993);
INSERT INTO public.niggers VALUES (6, 115, 'Shyann', 27010, 61187, 49520);
INSERT INTO public.niggers VALUES (7, 23, 'Abigayle', 26457, 22752, 34738);
INSERT INTO public.niggers VALUES (8, 19, 'Florida', 58945, 95636, 57987);
INSERT INTO public.niggers VALUES (10, 86, 'Malvina', 44747, 7090, 86801);
INSERT INTO public.niggers VALUES (11, 79, 'Daphne', 24114, 26, 38091);
INSERT INTO public.niggers VALUES (12, 48, 'Austen', 38315, 99466, 70891);
INSERT INTO public.niggers VALUES (13, 58, 'Lilla', 85944, 49168, 94486);
INSERT INTO public.niggers VALUES (14, 20, 'Rodger', 26927, 60877, 22981);
INSERT INTO public.niggers VALUES (15, 64, 'Zander', 34483, 60739, 13994);
INSERT INTO public.niggers VALUES (16, 66, 'Trinity', 14080, 50089, 10627);
INSERT INTO public.niggers VALUES (18, 94, 'Wendy', 67707, 95243, 40948);
INSERT INTO public.niggers VALUES (19, 117, 'Scarlett', 4602, 13229, 90779);
INSERT INTO public.niggers VALUES (20, 37, 'Rachel', 64449, 95559, 22403);
INSERT INTO public.niggers VALUES (21, 42, 'Rod', 65293, 57563, 688);
INSERT INTO public.niggers VALUES (22, 31, 'Aaliyah', 65168, 73609, 90477);
INSERT INTO public.niggers VALUES (24, 115, 'Macie', 24877, 77935, 85177);
INSERT INTO public.niggers VALUES (25, 31, 'Imogene', 39745, 96309, 13967);
INSERT INTO public.niggers VALUES (26, 73, 'Evie', 74324, 85578, 46644);
INSERT INTO public.niggers VALUES (27, 84, 'Kris', 75243, 31736, 58841);
INSERT INTO public.niggers VALUES (28, 63, 'Earnestine', 83975, 85865, 51445);
INSERT INTO public.niggers VALUES (29, 97, 'Kamron', 35242, 24535, 41487);
INSERT INTO public.niggers VALUES (31, 117, 'Alexandria', 67123, 86555, 20909);
INSERT INTO public.niggers VALUES (32, 21, 'Jameson', 17656, 47701, 73178);
INSERT INTO public.niggers VALUES (34, 82, 'Ayana', 99004, 45141, 15404);
INSERT INTO public.niggers VALUES (35, 11, 'Maude', 96411, 11202, 22204);
INSERT INTO public.niggers VALUES (36, 21, 'Zackery', 21720, 34313, 57730);
INSERT INTO public.niggers VALUES (38, 83, 'Marianne', 23679, 90414, 60026);
INSERT INTO public.niggers VALUES (39, 103, 'Betty', 8170, 64973, 79482);
INSERT INTO public.niggers VALUES (41, 23, 'Sofia', 76658, 91219, 18045);
INSERT INTO public.niggers VALUES (42, 34, 'Amelia', 52720, 80882, 94716);
INSERT INTO public.niggers VALUES (43, 28, 'Alysha', 74534, 67222, 40462);
INSERT INTO public.niggers VALUES (44, 49, 'Lula', 81625, 67999, 99528);
INSERT INTO public.niggers VALUES (45, 19, 'Viviane', 33746, 92301, 8034);
INSERT INTO public.niggers VALUES (46, 70, 'Autumn', 64837, 53862, 36121);
INSERT INTO public.niggers VALUES (47, 24, 'Noemy', 49135, 63067, 74507);
INSERT INTO public.niggers VALUES (49, 28, 'Leonard', 77706, 45557, 10051);
INSERT INTO public.niggers VALUES (50, 40, 'Tyrique', 88750, 8864, 59924);
INSERT INTO public.niggers VALUES (51, 112, 'Kennedy', 92987, 54838, 54757);
INSERT INTO public.niggers VALUES (53, 110, 'Markus', 31807, 82724, 2853);
INSERT INTO public.niggers VALUES (54, 87, 'Finn', 84301, 57414, 3960);
INSERT INTO public.niggers VALUES (55, 75, 'Makayla', 80394, 78118, 77924);
INSERT INTO public.niggers VALUES (56, 51, 'Holden', 38439, 8794, 90010);
INSERT INTO public.niggers VALUES (57, 27, 'Sanford', 56631, 43605, 49347);
INSERT INTO public.niggers VALUES (58, 57, 'Leo', 5920, 44406, 25281);
INSERT INTO public.niggers VALUES (59, 59, 'Garrison', 94092, 39779, 85599);
INSERT INTO public.niggers VALUES (61, 16, 'Mireya', 24496, 61080, 17179);
INSERT INTO public.niggers VALUES (62, 11, 'Judah', 86306, 67677, 51720);
INSERT INTO public.niggers VALUES (63, 63, 'Zella', 15537, 7699, 70473);
INSERT INTO public.niggers VALUES (64, 94, 'Kelsie', 71280, 10219, 74975);
INSERT INTO public.niggers VALUES (65, 113, 'Dustin', 3916, 71346, 64208);
INSERT INTO public.niggers VALUES (66, 24, 'Robyn', 67843, 82588, 70505);
INSERT INTO public.niggers VALUES (67, 36, 'Luis', 44089, 56554, 61667);
INSERT INTO public.niggers VALUES (68, 13, 'Aileen', 23083, 71958, 99961);
INSERT INTO public.niggers VALUES (69, 62, 'Orrin', 58129, 43030, 60561);
INSERT INTO public.niggers VALUES (70, 75, 'Emie', 85379, 80902, 10258);
INSERT INTO public.niggers VALUES (71, 37, 'Daisha', 66641, 33196, 24962);
INSERT INTO public.niggers VALUES (72, 65, 'Kali', 69817, 52786, 5150);
INSERT INTO public.niggers VALUES (73, 61, 'Ashtyn', 53809, 44803, 38820);
INSERT INTO public.niggers VALUES (74, 90, 'Eduardo', 92794, 5340, 5665);
INSERT INTO public.niggers VALUES (75, 37, 'Royal', 7929, 94374, 88711);
INSERT INTO public.niggers VALUES (76, 39, 'Mack', 18179, 46051, 18960);
INSERT INTO public.niggers VALUES (77, 21, 'Zakary', 58853, 42939, 44226);
INSERT INTO public.niggers VALUES (78, 45, 'Wilbert', 39740, 47205, 24796);
INSERT INTO public.niggers VALUES (79, 69, 'Steve', 36051, 14647, 4584);
INSERT INTO public.niggers VALUES (80, 65, 'Cyril', 35464, 24669, 72721);
INSERT INTO public.niggers VALUES (81, 33, 'Jackson', 82912, 39605, 70018);
INSERT INTO public.niggers VALUES (82, 20, 'Iva', 44822, 43737, 4628);
INSERT INTO public.niggers VALUES (83, 118, 'Eva', 78129, 61077, 6909);
INSERT INTO public.niggers VALUES (84, 43, 'Lorna', 25166, 45117, 36595);
INSERT INTO public.niggers VALUES (85, 31, 'Madilyn', 72806, 84124, 54328);
INSERT INTO public.niggers VALUES (86, 95, 'Avery', 91117, 45824, 10372);
INSERT INTO public.niggers VALUES (87, 61, 'Nadia', 14229, 18204, 66296);
INSERT INTO public.niggers VALUES (88, 40, 'Mario', 92199, 91657, 8241);
INSERT INTO public.niggers VALUES (89, 112, 'Murphy', 39996, 74560, 35798);
INSERT INTO public.niggers VALUES (90, 73, 'Corbin', 71808, 14752, 57011);
INSERT INTO public.niggers VALUES (91, 32, 'Zachariah', 95273, 31805, 24489);
INSERT INTO public.niggers VALUES (92, 14, 'Linda', 1090, 20561, 88345);
INSERT INTO public.niggers VALUES (93, 33, 'Michele', 91034, 26460, 96221);
INSERT INTO public.niggers VALUES (94, 39, 'Pasquale', 22773, 13964, 32423);
INSERT INTO public.niggers VALUES (95, 49, 'Reyna', 20124, 60969, 36699);
INSERT INTO public.niggers VALUES (96, 24, 'Janessa', 86498, 9138, 77288);
INSERT INTO public.niggers VALUES (97, 119, 'Talon', 79070, 14649, 66359);
INSERT INTO public.niggers VALUES (98, 62, 'Dillan', 92602, 89280, 24021);
INSERT INTO public.niggers VALUES (99, 16, 'Norwood', 51206, 9975, 67498);
INSERT INTO public.niggers VALUES (100, 87, 'Ward', 5802, 70435, 29700);
INSERT INTO public.niggers VALUES (102, 39, 'Mary', 93500, 83676, 95477);
INSERT INTO public.niggers VALUES (105, 62, 'Floy', 40397, 70741, 88944);
INSERT INTO public.niggers VALUES (107, 28, 'Christelle', 21839, 31992, 35718);
INSERT INTO public.niggers VALUES (108, 104, 'Bonnie', 64550, 3397, 46258);
INSERT INTO public.niggers VALUES (109, 98, 'Anthony', 79047, 10811, 94390);
INSERT INTO public.niggers VALUES (110, 38, 'Rudy', 17467, 86022, 63457);
INSERT INTO public.niggers VALUES (111, 56, 'Nichole', 64774, 74638, 6717);
INSERT INTO public.niggers VALUES (112, 79, 'Clemens', 20550, 18522, 59650);
INSERT INTO public.niggers VALUES (113, 93, 'Velda', 85853, 79262, 61271);
INSERT INTO public.niggers VALUES (114, 103, 'Magdalen', 36186, 92008, 84446);
INSERT INTO public.niggers VALUES (115, 68, 'Lincoln', 25889, 58110, 72550);
INSERT INTO public.niggers VALUES (116, 56, 'Clay', 85076, 41730, 76985);
INSERT INTO public.niggers VALUES (117, 111, 'Nelson', 4187, 52101, 26132);
INSERT INTO public.niggers VALUES (118, 116, 'Leatha', 73583, 75612, 50526);
INSERT INTO public.niggers VALUES (119, 100, 'Ruby', 49743, 17860, 15083);
INSERT INTO public.niggers VALUES (120, 114, 'Landen', 4449, 95494, 54621);
INSERT INTO public.niggers VALUES (121, 21, 'May', 43810, 92153, 75335);
INSERT INTO public.niggers VALUES (122, 22, 'Giuseppe', 78394, 98016, 11929);
INSERT INTO public.niggers VALUES (124, 24, 'Karl', 37513, 28322, 45969);
INSERT INTO public.niggers VALUES (125, 75, 'Mariane', 60976, 37620, 62557);
INSERT INTO public.niggers VALUES (127, 48, 'Lorenza', 52978, 70953, 56249);
INSERT INTO public.niggers VALUES (128, 99, 'Graham', 17489, 99036, 74813);
INSERT INTO public.niggers VALUES (129, 11, 'Durward', 19741, 25738, 8061);
INSERT INTO public.niggers VALUES (130, 55, 'Foster', 14721, 30158, 55652);
INSERT INTO public.niggers VALUES (131, 94, 'Alvena', 26565, 47845, 228);
INSERT INTO public.niggers VALUES (132, 65, 'Camren', 3399, 93074, 91562);
INSERT INTO public.niggers VALUES (133, 23, 'Kaitlin', 11989, 55337, 7256);
INSERT INTO public.niggers VALUES (135, 114, 'Kiley', 38518, 82548, 27473);
INSERT INTO public.niggers VALUES (136, 61, 'Lew', 389, 12270, 64211);
INSERT INTO public.niggers VALUES (137, 104, 'Clementine', 81977, 9835, 88461);
INSERT INTO public.niggers VALUES (139, 68, 'Madaline', 442, 7747, 66262);
INSERT INTO public.niggers VALUES (140, 54, 'Gunnar', 823, 1364, 4767);
INSERT INTO public.niggers VALUES (142, 26, 'Mortimer', 46960, 61418, 10135);
INSERT INTO public.niggers VALUES (143, 70, 'Name', 86336, 48974, 54825);
INSERT INTO public.niggers VALUES (144, 72, 'Elmore', 64297, 32520, 91077);
INSERT INTO public.niggers VALUES (145, 104, 'Callie', 45384, 40725, 47285);
INSERT INTO public.niggers VALUES (147, 33, 'Else', 90182, 25758, 52938);
INSERT INTO public.niggers VALUES (149, 98, 'Rahul', 70330, 75557, 38818);
INSERT INTO public.niggers VALUES (152, 57, 'Luella', 95464, 36704, 27302);
INSERT INTO public.niggers VALUES (153, 54, 'Kelli', 12611, 96475, 75164);
INSERT INTO public.niggers VALUES (154, 82, 'Marilou', 83558, 45432, 87816);
INSERT INTO public.niggers VALUES (155, 31, 'Reina', 62759, 53746, 2086);
INSERT INTO public.niggers VALUES (156, 33, 'Aditya', 89248, 31773, 74111);
INSERT INTO public.niggers VALUES (157, 24, 'Immanuel', 3073, 83009, 84464);
INSERT INTO public.niggers VALUES (158, 46, 'Gladyce', 12178, 28487, 34974);
INSERT INTO public.niggers VALUES (159, 83, 'George', 15820, 42625, 99687);
INSERT INTO public.niggers VALUES (161, 57, 'Wilfrid', 88209, 14355, 85999);
INSERT INTO public.niggers VALUES (162, 100, 'Antoinette', 96206, 51984, 38766);
INSERT INTO public.niggers VALUES (163, 70, 'Adonis', 77986, 12803, 21503);
INSERT INTO public.niggers VALUES (164, 98, 'Beverly', 63583, 7824, 9952);
INSERT INTO public.niggers VALUES (165, 46, 'Nannie', 20576, 83826, 44056);
INSERT INTO public.niggers VALUES (166, 107, 'Katarina', 94406, 1187, 35847);
INSERT INTO public.niggers VALUES (168, 69, 'Maggie', 81481, 96982, 36035);
INSERT INTO public.niggers VALUES (169, 115, 'Nikki', 89871, 95496, 20565);
INSERT INTO public.niggers VALUES (171, 61, 'Berneice', 61175, 60894, 13956);
INSERT INTO public.niggers VALUES (172, 86, 'Jamison', 52322, 81221, 50104);
INSERT INTO public.niggers VALUES (173, 76, 'Brady', 56021, 6690, 27729);
INSERT INTO public.niggers VALUES (174, 46, 'Kyla', 54000, 80737, 10437);
INSERT INTO public.niggers VALUES (177, 72, 'Orland', 21780, 36275, 10115);
INSERT INTO public.niggers VALUES (178, 33, 'Kailee', 70611, 20498, 44272);
INSERT INTO public.niggers VALUES (179, 40, 'Nathaniel', 81391, 57599, 3447);
INSERT INTO public.niggers VALUES (180, 77, 'Anissa', 98118, 18155, 4867);
INSERT INTO public.niggers VALUES (181, 66, 'Devonte', 17692, 3833, 45764);
INSERT INTO public.niggers VALUES (183, 77, 'Evans', 63044, 5609, 11910);
INSERT INTO public.niggers VALUES (184, 105, 'Skyla', 62082, 22475, 97885);
INSERT INTO public.niggers VALUES (185, 59, 'Vincenzo', 924, 96916, 51147);
INSERT INTO public.niggers VALUES (186, 94, 'Arden', 65449, 67223, 42471);
INSERT INTO public.niggers VALUES (187, 58, 'Brooke', 10404, 8935, 63075);
INSERT INTO public.niggers VALUES (188, 39, 'Joany', 64745, 40827, 28229);
INSERT INTO public.niggers VALUES (189, 43, 'Kelsi', 24363, 67318, 70821);
INSERT INTO public.niggers VALUES (190, 17, 'Grant', 47008, 33731, 3445);
INSERT INTO public.niggers VALUES (191, 72, 'Kaleb', 2962, 84340, 72616);
INSERT INTO public.niggers VALUES (192, 70, 'Melany', 43803, 44745, 9368);
INSERT INTO public.niggers VALUES (193, 12, 'Doyle', 50616, 19649, 23411);
INSERT INTO public.niggers VALUES (194, 95, 'Marianna', 67984, 83108, 92684);
INSERT INTO public.niggers VALUES (195, 100, 'Raul', 71829, 47526, 87056);
INSERT INTO public.niggers VALUES (196, 28, 'Leola', 61519, 29219, 13164);
INSERT INTO public.niggers VALUES (197, 34, 'Lydia', 21658, 43676, 28803);
INSERT INTO public.niggers VALUES (198, 107, 'Myron', 99751, 94787, 35498);
INSERT INTO public.niggers VALUES (199, 81, 'Blanca', 86966, 8999, 61751);
INSERT INTO public.niggers VALUES (200, 92, 'Maybell', 29886, 27768, 40011);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 1, 'Mercury', false, 1000.00);
INSERT INTO public.planet VALUES (2, 1, 'Venus', false, 2421.00);
INSERT INTO public.planet VALUES (3, 1, 'Earth', true, 52341.00);
INSERT INTO public.planet VALUES (4, 1, 'Mars', true, 64981.00);
INSERT INTO public.planet VALUES (5, 1, 'Jupiter', false, 58121.00);
INSERT INTO public.planet VALUES (6, 1, 'Saturn', false, 9911.90);
INSERT INTO public.planet VALUES (7, 1, 'Uranus', false, 991.90);
INSERT INTO public.planet VALUES (8, 1, 'Pluto', false, 991.90);
INSERT INTO public.planet VALUES (9, 2, 'pera', false, 991.90);
INSERT INTO public.planet VALUES (10, 3, 'i31fa', false, 991.90);
INSERT INTO public.planet VALUES (11, 4, 'asfasfa', false, 991.90);
INSERT INTO public.planet VALUES (12, 5, 'aasdasdsfasfa', false, 991.90);
INSERT INTO public.planet VALUES (13, 6, 'aaassdasdsfasfa', false, 991.90);
INSERT INTO public.planet VALUES (15, 6, 'sfa', false, 991.90);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sun', 1, 'Our home!', 'yellow', false);
INSERT INTO public.star VALUES (2, 'Proxima Centauri', 1, 'Our dear neighbour!', 'red', false);
INSERT INTO public.star VALUES (3, 'Unknown', 3, NULL, 'void', true);
INSERT INTO public.star VALUES (5, 'CA3BEL315', 4, NULL, NULL, NULL);
INSERT INTO public.star VALUES (6, 'Weird couple', 6, 'they have intercourse... a lot', 'Pink', true);
INSERT INTO public.star VALUES (4, 'wtf', 1, NULL, NULL, NULL);


--
-- Name: galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_id_seq', 8, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 151, true);


--
-- Name: niggers_nigger_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.niggers_nigger_id_seq', 200, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 15, true);


--
-- Name: star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_id_seq', 6, true);


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
-- Name: niggers niggers_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.niggers
    ADD CONSTRAINT niggers_name_key UNIQUE (name);


--
-- Name: niggers niggers_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.niggers
    ADD CONSTRAINT niggers_pkey PRIMARY KEY (niggers_id);


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
-- Name: moon moon_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: niggers niggers_moon_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.niggers
    ADD CONSTRAINT niggers_moon_id_fkey FOREIGN KEY (moon_id) REFERENCES public.moon(moon_id);


--
-- Name: planet planet_star_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_star_id_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star star_location_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_location_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

