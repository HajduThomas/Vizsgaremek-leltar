/*M!999999\- enable the sandbox mode */ 
-- MariaDB dump 10.19  Distrib 10.11.15-MariaDB, for Linux (x86_64)
--
-- Host: localhost    Database: tester
-- ------------------------------------------------------
-- Server version	10.11.15-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `music`
--

DROP TABLE IF EXISTS `music`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `music` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) DEFAULT NULL,
  `artist` varchar(64) DEFAULT NULL,
  `duration` smallint(4) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `music`
--

LOCK TABLES `music` WRITE;
/*!40000 ALTER TABLE `music` DISABLE KEYS */;
INSERT INTO `music` VALUES
(1,'eye','Kanaria',134),
(2,'Exodus','KoruSe',184),
(3,'Faint','Linking Park',162),
(4,'Fired Up','Foret de Vin',206),
(5,'Hold The Night','NAOKI',180),
(6,'Divide My Heart','Hollywoord Undead',323),
(7,'How We Roll','undefined',285),
(8,'Ghost Rule','Deco*27',210),
(9,'Six Black Heavens Guns','Daisuke Ishiwatari / Naoki Hashimoto',283),
(10,'Lowrider','Cypress Hill',276),
(11,'Echo','Crusher-p',230),
(12,'Maw of the King','Cami-Cat',221),
(13,'Devil Trigger','Casey Edwards / Ali Edwards',405),
(14,'Throne','Bring Me The Horizon',191),
(15,'Kingslayer','Bring Me The Horizon / BABYMETAL',220),
(16,'Nasty * Nasty * Spell','Camellia',264),
(17,'God Only Knows','bitbreaker',287),
(18,'Judgement','meganeko',329),
(19,'KILLSWITCH','mekaloton',135),
(20,'Titanium','Mittsies',186),
(21,'WWW','Moe Shop / Edoga-Sullivan',210),
(22,'HUGE W','Mori Calliope',249),
(23,'Kinetic','Pete Cottrell',229),
(24,'reason','Rad Cat',165),
(25,'Latin Lingo','Cypress Hill',238),
(26,'Purple Pills','D12',304),
(27,'A Blast Beat','Dune',185),
(28,'Shield Sister','Garrett Williamson',155),
(29,'Lagtrain','girl_dm_ / darkbluecat',251),
(30,'Levitate','Hollywood Undead',204),
(31,'MoeChakkaFire','issey',155),
(32,'Methods of Madness','James Landino',118),
(33,'Extras (city pop cover)','jen',367);
/*!40000 ALTER TABLE `music` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mirelit`
--

DROP TABLE IF EXISTS `mirelit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `mirelit` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nev` varchar(100) NOT NULL,
  `tomeg` int(11) NOT NULL,
  `tomegfajta` varchar(100) NOT NULL,
  `darabszam` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mirelit`
--

LOCK TABLES `mirelit` WRITE;
/*!40000 ALTER TABLE `mirelit` DISABLE KEYS */;
INSERT INTO `mirelit` VALUES
(1,'Fagyasztott sonks pizza',100,'g',2),
(2,'Ndudvari szeznmagos rntott csirkemell',550,'g',5),
(3,'Fagyasztott Rntott Sajt',1000,'g',3),
(4,'Spar Fagyasztott Burgonya',1000,'g',3),
(5,'Fagyasztott KFC strips csirkemell',450,'g',5);
/*!40000 ALTER TABLE `mirelit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `showcase`
--

DROP TABLE IF EXISTS `showcase`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `showcase` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) DEFAULT NULL,
  `artist` varchar(64) DEFAULT NULL,
  `duration` varchar(6) DEFAULT NULL,
  `extra1` SMALLINT(4) DEFAULT NULL,
  `extra2` SMALLINT(4) DEFAULT NULL,
  `extra3` SMALLINT(4) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=332 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `showcase`
--

LOCK TABLES `showcase` WRITE;
/*!40000 ALTER TABLE `showcase` DISABLE KEYS */;
INSERT INTO `showcase` VALUES
(1,'Disclaimer','This list has been looped','0:00',0,0,0),
(2,'eye','Kanaria','2:14',1,1,1),
(3,'Exodus','KoruSe','3:04',2,2,2),
(4,'Faint','Linking Park','2:42',3,3,3),
(5,'Fired Up','Foret de Vin','3:26',4,4,4),
(6,'Hold The Night','NAOKI','3:00',5,5,5),
(7,'Divide My Heart','Hollywoord Undead','5:23',6,6,6),
(8,'How We Roll','undefined','4:45',7,7,7),
(9,'Ghost Rule','Deco*27','3:30',8,8,8),
(10,'Six Black Heavens Guns','Daisuke Ishiwatari / Naoki Hashimoto','4:43',9,9,9),
(11,'Lowrider','Cypress Hill','4:36',10,10,10),
(12,'Echo','Crusher-p','3:50',11,11,11),
(13,'Maw of the King','Cami-Cat','3:41',12,12,12),
(14,'Devil Trigger','Casey Edwards / Ali Edwards','6:45',13,13,13),
(15,'Throne','Bring Me The Horizon','3:11',14,14,14),
(16,'Kingslayer','Bring Me The Horizon / BABYMETAL','3:40',15,15,15),
(17,'Nasty * Nasty * Spell','Camellia','4:24',16,16,16),
(18,'God Only Knows','bitbreaker','4:47',17,17,17),
(19,'Judgement','meganeko','5:29',18,18,18),
(20,'KILLSWITCH','mekaloton','2:15',19,19,19),
(21,'Titanium','Mittsies','3:06',20,20,20),
(22,'WWW','Moe Shop / Edoga-Sullivan','3:30',21,21,21),
(23,'HUGE W','Mori Calliope','4:09',22,22,22),
(24,'Kinetic','Pete Cottrell','3:49',23,23,23),
(25,'reason','Rad Cat','2:45',24,24,24),
(26,'Latin Lingo','Cypress Hill','3:58',25,25,25),
(27,'Purple Pills','D12','5:04',26,26,26),
(28,'A Blast Beat','Dune','3:05',27,27,27),
(29,'Shield Sister','Garrett Williamson','2:35',28,28,28),
(30,'Lagtrain','girl_dm_ / darkbluecat','4:11',29,29,29),
(31,'Levitate','Hollywood Undead','3:24',30,30,30),
(32,'MoeChakkaFire','issey','2:35',31,31,31),
(33,'Methods of Madness','James Landino','1:58',32,32,32),
(34,'Extras (city pop cover)','jen','6:07',33,33,33),
(35,'eye','Kanaria','2:14',34,34,34),
(36,'Exodus','KoruSe','3:04',35,35,35),
(37,'Faint','Linking Park','2:42',36,36,36),
(38,'Fired Up','Foret de Vin','3:26',37,37,37),
(39,'Hold The Night','NAOKI','3:00',38,38,38),
(40,'Divide My Heart','Hollywoord Undead','5:23',39,39,39),
(41,'How We Roll','undefined','4:45',40,40,40),
(42,'Ghost Rule','Deco*27','3:30',41,41,41),
(43,'Six Black Heavens Guns','Daisuke Ishiwatari / Naoki Hashimoto','4:43',42,42,42),
(44,'Lowrider','Cypress Hill','4:36',43,43,43),
(45,'Echo','Crusher-p','3:50',44,44,44),
(46,'Maw of the King','Cami-Cat','3:41',45,45,45),
(47,'Devil Trigger','Casey Edwards / Ali Edwards','6:45',46,46,46),
(48,'Throne','Bring Me The Horizon','3:11',47,47,47),
(49,'Kingslayer','Bring Me The Horizon / BABYMETAL','3:40',48,48,48),
(50,'Nasty * Nasty * Spell','Camellia','4:24',49,49,49),
(51,'God Only Knows','bitbreaker','4:47',50,50,50),
(52,'Judgement','meganeko','5:29',51,51,51),
(53,'KILLSWITCH','mekaloton','2:15',52,52,52),
(54,'Titanium','Mittsies','3:06',53,53,53),
(55,'WWW','Moe Shop / Edoga-Sullivan','3:30',54,54,54),
(56,'HUGE W','Mori Calliope','4:09',55,55,55),
(57,'Kinetic','Pete Cottrell','3:49',56,56,56),
(58,'reason','Rad Cat','2:45',57,57,57),
(59,'Latin Lingo','Cypress Hill','3:58',58,58,58),
(60,'Purple Pills','D12','5:04',59,59,59),
(61,'A Blast Beat','Dune','3:05',60,60,60),
(62,'Shield Sister','Garrett Williamson','2:35',61,61,61),
(63,'Lagtrain','girl_dm_ / darkbluecat','4:11',62,62,62),
(64,'Levitate','Hollywood Undead','3:24',63,63,63),
(65,'MoeChakkaFire','issey','2:35',64,64,64),
(66,'Methods of Madness','James Landino','1:58',65,65,65),
(67,'Extras (city pop cover)','jen','6:07',66,66,66),
(68,'eye','Kanaria','2:14',67,67,67),
(69,'Exodus','KoruSe','3:04',68,68,68),
(70,'Faint','Linking Park','2:42',69,69,69),
(71,'Fired Up','Foret de Vin','3:26',70,70,70),
(72,'Hold The Night','NAOKI','3:00',71,71,71),
(73,'Divide My Heart','Hollywoord Undead','5:23',72,72,72),
(74,'How We Roll','undefined','4:45',73,73,73),
(75,'Ghost Rule','Deco*27','3:30',74,74,74),
(76,'Six Black Heavens Guns','Daisuke Ishiwatari / Naoki Hashimoto','4:43',75,75,75),
(77,'Lowrider','Cypress Hill','4:36',76,76,76),
(78,'Echo','Crusher-p','3:50',77,77,77),
(79,'Maw of the King','Cami-Cat','3:41',78,78,78),
(80,'Devil Trigger','Casey Edwards / Ali Edwards','6:45',79,79,79),
(81,'Throne','Bring Me The Horizon','3:11',80,80,80),
(82,'Kingslayer','Bring Me The Horizon / BABYMETAL','3:40',81,81,81),
(83,'Nasty * Nasty * Spell','Camellia','4:24',82,82,82),
(84,'God Only Knows','bitbreaker','4:47',83,83,83),
(85,'Judgement','meganeko','5:29',84,84,84),
(86,'KILLSWITCH','mekaloton','2:15',85,85,85),
(87,'Titanium','Mittsies','3:06',86,86,86),
(88,'WWW','Moe Shop / Edoga-Sullivan','3:30',87,87,87),
(89,'HUGE W','Mori Calliope','4:09',88,88,88),
(90,'Kinetic','Pete Cottrell','3:49',89,89,89),
(91,'reason','Rad Cat','2:45',90,90,90),
(92,'Latin Lingo','Cypress Hill','3:58',91,91,91),
(93,'Purple Pills','D12','5:04',92,92,92),
(94,'A Blast Beat','Dune','3:05',93,93,93),
(95,'Shield Sister','Garrett Williamson','2:35',94,94,94),
(96,'Lagtrain','girl_dm_ / darkbluecat','4:11',95,95,95),
(97,'Levitate','Hollywood Undead','3:24',96,96,96),
(98,'MoeChakkaFire','issey','2:35',97,97,97),
(99,'Methods of Madness','James Landino','1:58',98,98,98),
(100,'Extras (city pop cover)','jen','6:07',99,99,99),
(101,'eye','Kanaria','2:14',100,100,100),
(102,'Exodus','KoruSe','3:04',101,101,101),
(103,'Faint','Linking Park','2:42',102,102,102),
(104,'Fired Up','Foret de Vin','3:26',103,103,103),
(105,'Hold The Night','NAOKI','3:00',104,104,104),
(106,'Divide My Heart','Hollywoord Undead','5:23',105,105,105),
(107,'How We Roll','undefined','4:45',106,106,106),
(108,'Ghost Rule','Deco*27','3:30',107,107,107),
(109,'Six Black Heavens Guns','Daisuke Ishiwatari / Naoki Hashimoto','4:43',108,108,108),
(110,'Lowrider','Cypress Hill','4:36',109,109,109),
(111,'Echo','Crusher-p','3:50',110,110,110),
(112,'Maw of the King','Cami-Cat','3:41',111,111,111),
(113,'Devil Trigger','Casey Edwards / Ali Edwards','6:45',112,112,112),
(114,'Throne','Bring Me The Horizon','3:11',113,113,113),
(115,'Kingslayer','Bring Me The Horizon / BABYMETAL','3:40',114,114,114),
(116,'Nasty * Nasty * Spell','Camellia','4:24',115,115,115),
(117,'God Only Knows','bitbreaker','4:47',116,116,116),
(118,'Judgement','meganeko','5:29',117,117,117),
(119,'KILLSWITCH','mekaloton','2:15',118,118,118),
(120,'Titanium','Mittsies','3:06',119,119,119),
(121,'WWW','Moe Shop / Edoga-Sullivan','3:30',120,120,120),
(122,'HUGE W','Mori Calliope','4:09',121,121,121),
(123,'Kinetic','Pete Cottrell','3:49',122,122,122),
(124,'reason','Rad Cat','2:45',123,123,123),
(125,'Latin Lingo','Cypress Hill','3:58',124,124,124),
(126,'Purple Pills','D12','5:04',125,125,125),
(127,'A Blast Beat','Dune','3:05',126,126,126),
(128,'Shield Sister','Garrett Williamson','2:35',127,127,127),
(129,'Lagtrain','girl_dm_ / darkbluecat','4:11',128,128,128),
(130,'Levitate','Hollywood Undead','3:24',129,129,129),
(131,'MoeChakkaFire','issey','2:35',130,130,130),
(132,'Methods of Madness','James Landino','1:58',131,131,131),
(133,'Extras (city pop cover)','jen','6:07',132,132,132),
(134,'eye','Kanaria','2:14',133,133,133),
(135,'Exodus','KoruSe','3:04',134,134,134),
(136,'Faint','Linking Park','2:42',135,135,135),
(137,'Fired Up','Foret de Vin','3:26',136,136,136),
(138,'Hold The Night','NAOKI','3:00',137,137,137),
(139,'Divide My Heart','Hollywoord Undead','5:23',138,138,138),
(140,'How We Roll','undefined','4:45',139,139,139),
(141,'Ghost Rule','Deco*27','3:30',140,140,140),
(142,'Six Black Heavens Guns','Daisuke Ishiwatari / Naoki Hashimoto','4:43',141,141,141),
(143,'Lowrider','Cypress Hill','4:36',142,142,142),
(144,'Echo','Crusher-p','3:50',143,143,143),
(145,'Maw of the King','Cami-Cat','3:41',144,144,144),
(146,'Devil Trigger','Casey Edwards / Ali Edwards','6:45',145,145,145),
(147,'Throne','Bring Me The Horizon','3:11',146,146,146),
(148,'Kingslayer','Bring Me The Horizon / BABYMETAL','3:40',147,147,147),
(149,'Nasty * Nasty * Spell','Camellia','4:24',148,148,148),
(150,'God Only Knows','bitbreaker','4:47',149,149,149),
(151,'Judgement','meganeko','5:29',150,150,150),
(152,'KILLSWITCH','mekaloton','2:15',151,151,151),
(153,'Titanium','Mittsies','3:06',152,152,152),
(154,'WWW','Moe Shop / Edoga-Sullivan','3:30',153,153,153),
(155,'HUGE W','Mori Calliope','4:09',154,154,154),
(156,'Kinetic','Pete Cottrell','3:49',155,155,155),
(157,'reason','Rad Cat','2:45',156,156,156),
(158,'Latin Lingo','Cypress Hill','3:58',157,157,157),
(159,'Purple Pills','D12','5:04',158,158,158),
(160,'A Blast Beat','Dune','3:05',159,159,159),
(161,'Shield Sister','Garrett Williamson','2:35',160,160,160),
(162,'Lagtrain','girl_dm_ / darkbluecat','4:11',161,161,161),
(163,'Levitate','Hollywood Undead','3:24',162,162,162),
(164,'MoeChakkaFire','issey','2:35',163,163,163),
(165,'Methods of Madness','James Landino','1:58',164,164,164),
(166,'Extras (city pop cover)','jen','6:07',165,165,165),
(167,'eye','Kanaria','2:14',166,166,166),
(168,'Exodus','KoruSe','3:04',167,167,167),
(169,'Faint','Linking Park','2:42',168,168,168),
(170,'Fired Up','Foret de Vin','3:26',169,169,169),
(171,'Hold The Night','NAOKI','3:00',170,170,170),
(172,'Divide My Heart','Hollywoord Undead','5:23',171,171,171),
(173,'How We Roll','undefined','4:45',172,172,172),
(174,'Ghost Rule','Deco*27','3:30',173,173,173),
(175,'Six Black Heavens Guns','Daisuke Ishiwatari / Naoki Hashimoto','4:43',174,174,174),
(176,'Lowrider','Cypress Hill','4:36',175,175,175),
(177,'Echo','Crusher-p','3:50',176,176,176),
(178,'Maw of the King','Cami-Cat','3:41',177,177,177),
(179,'Devil Trigger','Casey Edwards / Ali Edwards','6:45',178,178,178),
(180,'Throne','Bring Me The Horizon','3:11',179,179,179),
(181,'Kingslayer','Bring Me The Horizon / BABYMETAL','3:40',180,180,180),
(182,'Nasty * Nasty * Spell','Camellia','4:24',181,181,181),
(183,'God Only Knows','bitbreaker','4:47',182,182,182),
(184,'Judgement','meganeko','5:29',183,183,183),
(185,'KILLSWITCH','mekaloton','2:15',184,184,184),
(186,'Titanium','Mittsies','3:06',185,185,185),
(187,'WWW','Moe Shop / Edoga-Sullivan','3:30',186,186,186),
(188,'HUGE W','Mori Calliope','4:09',187,187,187),
(189,'Kinetic','Pete Cottrell','3:49',188,188,188),
(190,'reason','Rad Cat','2:45',189,189,189),
(191,'Latin Lingo','Cypress Hill','3:58',190,190,190),
(192,'Purple Pills','D12','5:04',191,191,191),
(193,'A Blast Beat','Dune','3:05',192,192,192),
(194,'Shield Sister','Garrett Williamson','2:35',193,193,193),
(195,'Lagtrain','girl_dm_ / darkbluecat','4:11',194,194,194),
(196,'Levitate','Hollywood Undead','3:24',195,195,195),
(197,'MoeChakkaFire','issey','2:35',196,196,196),
(198,'Methods of Madness','James Landino','1:58',197,197,197),
(199,'Extras (city pop cover)','jen','6:07',198,198,198),
(200,'eye','Kanaria','2:14',199,199,199),
(201,'Exodus','KoruSe','3:04',200,200,200),
(202,'Faint','Linking Park','2:42',201,201,201),
(203,'Fired Up','Foret de Vin','3:26',202,202,202),
(204,'Hold The Night','NAOKI','3:00',203,203,203),
(205,'Divide My Heart','Hollywoord Undead','5:23',204,204,204),
(206,'How We Roll','undefined','4:45',205,205,205),
(207,'Ghost Rule','Deco*27','3:30',206,206,206),
(208,'Six Black Heavens Guns','Daisuke Ishiwatari / Naoki Hashimoto','4:43',207,207,207),
(209,'Lowrider','Cypress Hill','4:36',208,208,208),
(210,'Echo','Crusher-p','3:50',209,209,209),
(211,'Maw of the King','Cami-Cat','3:41',210,210,210),
(212,'Devil Trigger','Casey Edwards / Ali Edwards','6:45',211,211,211),
(213,'Throne','Bring Me The Horizon','3:11',212,212,212),
(214,'Kingslayer','Bring Me The Horizon / BABYMETAL','3:40',213,213,213),
(215,'Nasty * Nasty * Spell','Camellia','4:24',214,214,214),
(216,'God Only Knows','bitbreaker','4:47',215,215,215),
(217,'Judgement','meganeko','5:29',216,216,216),
(218,'KILLSWITCH','mekaloton','2:15',217,217,217),
(219,'Titanium','Mittsies','3:06',218,218,218),
(220,'WWW','Moe Shop / Edoga-Sullivan','3:30',219,219,219),
(221,'HUGE W','Mori Calliope','4:09',220,220,220),
(222,'Kinetic','Pete Cottrell','3:49',221,221,221),
(223,'reason','Rad Cat','2:45',222,222,222),
(224,'Latin Lingo','Cypress Hill','3:58',223,223,223),
(225,'Purple Pills','D12','5:04',224,224,224),
(226,'A Blast Beat','Dune','3:05',225,225,225),
(227,'Shield Sister','Garrett Williamson','2:35',226,226,226),
(228,'Lagtrain','girl_dm_ / darkbluecat','4:11',227,227,227),
(229,'Levitate','Hollywood Undead','3:24',228,228,228),
(230,'MoeChakkaFire','issey','2:35',229,229,229),
(231,'Methods of Madness','James Landino','1:58',230,230,230),
(232,'Extras (city pop cover)','jen','6:07',231,231,231),
(233,'eye','Kanaria','2:14',232,232,232),
(234,'Exodus','KoruSe','3:04',233,233,233),
(235,'Faint','Linking Park','2:42',234,234,234),
(236,'Fired Up','Foret de Vin','3:26',235,235,235),
(237,'Hold The Night','NAOKI','3:00',236,236,236),
(238,'Divide My Heart','Hollywoord Undead','5:23',237,237,237),
(239,'How We Roll','undefined','4:45',238,238,238),
(240,'Ghost Rule','Deco*27','3:30',239,239,239),
(241,'Six Black Heavens Guns','Daisuke Ishiwatari / Naoki Hashimoto','4:43',240,240,240),
(242,'Lowrider','Cypress Hill','4:36',241,241,241),
(243,'Echo','Crusher-p','3:50',242,242,242),
(244,'Maw of the King','Cami-Cat','3:41',243,243,243),
(245,'Devil Trigger','Casey Edwards / Ali Edwards','6:45',244,244,244),
(246,'Throne','Bring Me The Horizon','3:11',245,245,245),
(247,'Kingslayer','Bring Me The Horizon / BABYMETAL','3:40',246,246,246),
(248,'Nasty * Nasty * Spell','Camellia','4:24',247,247,247),
(249,'God Only Knows','bitbreaker','4:47',248,248,248),
(250,'Judgement','meganeko','5:29',249,249,249),
(251,'KILLSWITCH','mekaloton','2:15',250,250,250),
(252,'Titanium','Mittsies','3:06',251,251,251),
(253,'WWW','Moe Shop / Edoga-Sullivan','3:30',252,252,252),
(254,'HUGE W','Mori Calliope','4:09',253,253,253),
(255,'Kinetic','Pete Cottrell','3:49',254,254,254),
(256,'reason','Rad Cat','2:45',255,255,255),
(257,'Latin Lingo','Cypress Hill','3:58',256,256,256),
(258,'Purple Pills','D12','5:04',257,257,257),
(259,'A Blast Beat','Dune','3:05',258,258,258),
(260,'Shield Sister','Garrett Williamson','2:35',259,259,259),
(261,'Lagtrain','girl_dm_ / darkbluecat','4:11',260,260,260),
(262,'Levitate','Hollywood Undead','3:24',261,261,261),
(263,'MoeChakkaFire','issey','2:35',262,262,262),
(264,'Methods of Madness','James Landino','1:58',263,263,263),
(265,'Extras (city pop cover)','jen','6:07',264,264,264),
(266,'eye','Kanaria','2:14',265,265,265),
(267,'Exodus','KoruSe','3:04',266,266,266),
(268,'Faint','Linking Park','2:42',267,267,267),
(269,'Fired Up','Foret de Vin','3:26',268,268,268),
(270,'Hold The Night','NAOKI','3:00',269,269,269),
(271,'Divide My Heart','Hollywoord Undead','5:23',270,270,270),
(272,'How We Roll','undefined','4:45',271,271,271),
(273,'Ghost Rule','Deco*27','3:30',272,272,272),
(274,'Six Black Heavens Guns','Daisuke Ishiwatari / Naoki Hashimoto','4:43',273,273,273),
(275,'Lowrider','Cypress Hill','4:36',274,274,274),
(276,'Echo','Crusher-p','3:50',275,275,275),
(277,'Maw of the King','Cami-Cat','3:41',276,276,276),
(278,'Devil Trigger','Casey Edwards / Ali Edwards','6:45',277,277,277),
(279,'Throne','Bring Me The Horizon','3:11',278,278,278),
(280,'Kingslayer','Bring Me The Horizon / BABYMETAL','3:40',279,279,279),
(281,'Nasty * Nasty * Spell','Camellia','4:24',280,280,280),
(282,'God Only Knows','bitbreaker','4:47',281,281,281),
(283,'Judgement','meganeko','5:29',282,282,282),
(284,'KILLSWITCH','mekaloton','2:15',283,283,283),
(285,'Titanium','Mittsies','3:06',284,284,284),
(286,'WWW','Moe Shop / Edoga-Sullivan','3:30',285,285,285),
(287,'HUGE W','Mori Calliope','4:09',286,286,286),
(288,'Kinetic','Pete Cottrell','3:49',287,287,287),
(289,'reason','Rad Cat','2:45',288,288,288),
(290,'Latin Lingo','Cypress Hill','3:58',289,289,289),
(291,'Purple Pills','D12','5:04',290,290,290),
(292,'A Blast Beat','Dune','3:05',291,291,291),
(293,'Shield Sister','Garrett Williamson','2:35',292,292,292),
(294,'Lagtrain','girl_dm_ / darkbluecat','4:11',293,293,293),
(295,'Levitate','Hollywood Undead','3:24',294,294,294),
(296,'MoeChakkaFire','issey','2:35',295,295,295),
(297,'Methods of Madness','James Landino','1:58',296,296,296),
(298,'Extras (city pop cover)','jen','6:07',297,297,297),
(299,'eye','Kanaria','2:14',298,298,298),
(300,'Exodus','KoruSe','3:04',299,299,299),
(301,'Faint','Linking Park','2:42',300,300,300),
(302,'Fired Up','Foret de Vin','3:26',301,301,301),
(303,'Hold The Night','NAOKI','3:00',302,302,302),
(304,'Divide My Heart','Hollywoord Undead','5:23',303,303,303),
(305,'How We Roll','undefined','4:45',304,304,304),
(306,'Ghost Rule','Deco*27','3:30',305,305,305),
(307,'Six Black Heavens Guns','Daisuke Ishiwatari / Naoki Hashimoto','4:43',306,306,306),
(308,'Lowrider','Cypress Hill','4:36',307,307,307),
(309,'Echo','Crusher-p','3:50',308,308,308),
(310,'Maw of the King','Cami-Cat','3:41',309,309,309),
(311,'Devil Trigger','Casey Edwards / Ali Edwards','6:45',310,310,310),
(312,'Throne','Bring Me The Horizon','3:11',311,311,311),
(313,'Kingslayer','Bring Me The Horizon / BABYMETAL','3:40',312,312,312),
(314,'Nasty * Nasty * Spell','Camellia','4:24',313,313,313),
(315,'God Only Knows','bitbreaker','4:47',314,314,314),
(316,'Judgement','meganeko','5:29',315,315,315),
(317,'KILLSWITCH','mekaloton','2:15',316,316,316),
(318,'Titanium','Mittsies','3:06',317,317,317),
(319,'WWW','Moe Shop / Edoga-Sullivan','3:30',318,318,318),
(320,'HUGE W','Mori Calliope','4:09',319,319,319),
(321,'Kinetic','Pete Cottrell','3:49',320,320,320),
(322,'reason','Rad Cat','2:45',321,321,321),
(323,'Latin Lingo','Cypress Hill','3:58',322,322,322),
(324,'Purple Pills','D12','5:04',323,323,323),
(325,'A Blast Beat','Dune','3:05',324,324,324),
(326,'Shield Sister','Garrett Williamson','2:35',325,325,325),
(327,'Lagtrain','girl_dm_ / darkbluecat','4:11',326,326,326),
(328,'Levitate','Hollywood Undead','3:24',327,327,327),
(329,'MoeChakkaFire','issey','2:35',328,328,328),
(330,'Methods of Madness','James Landino','1:58',329,329,329),
(331,'Extras (city pop cover)','jen','6:07',330,330,330);
/*!40000 ALTER TABLE `showcase` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sizetest`
--

DROP TABLE IF EXISTS `sizetest`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `sizetest` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `col1` tinytext DEFAULT NULL,
  `col2` tinytext DEFAULT NULL,
  `col3` tinytext DEFAULT NULL,
  `col4` tinytext DEFAULT NULL,
  `col5` tinytext DEFAULT NULL,
  `col6` tinytext DEFAULT NULL,
  `col7` tinytext DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=257 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sizetest`
--

LOCK TABLES `sizetest` WRITE;
/*!40000 ALTER TABLE `sizetest` DISABLE KEYS */;
INSERT INTO `sizetest` VALUES
(1,'0','0','0','0','0','0','0'),
(2,'1','1','1','1','1','1','1'),
(3,'2','2','2','2','2','2','2'),
(4,'3','3','3','3','3','3','3'),
(5,'4','4','4','4','4','4','4'),
(6,'5','5','5','5','5','5','5'),
(7,'6','6','6','6','6','6','6'),
(8,'7','7','7','7','7','7','7'),
(9,'8','8','8','8','8','8','8'),
(10,'9','9','9','9','9','9','9'),
(11,'10','10','10','10','10','10','10'),
(12,'11','11','11','11','11','11','11'),
(13,'12','12','12','12','12','12','12'),
(14,'13','13','13','13','13','13','13'),
(15,'14','14','14','14','14','14','14'),
(16,'15','15','15','15','15','15','15'),
(17,'16','16','16','16','16','16','16'),
(18,'17','17','17','17','17','17','17'),
(19,'18','18','18','18','18','18','18'),
(20,'19','19','19','19','19','19','19'),
(21,'20','20','20','20','20','20','20'),
(22,'21','21','21','21','21','21','21'),
(23,'22','22','22','22','22','22','22'),
(24,'23','23','23','23','23','23','23'),
(25,'24','24','24','24','24','24','24'),
(26,'25','25','25','25','25','25','25'),
(27,'26','26','26','26','26','26','26'),
(28,'27','27','27','27','27','27','27'),
(29,'28','28','28','28','28','28','28'),
(30,'29','29','29','29','29','29','29'),
(31,'30','30','30','30','30','30','30'),
(32,'31','31','31','31','31','31','31'),
(33,'32','32','32','32','32','32','32'),
(34,'33','33','33','33','33','33','33'),
(35,'34','34','34','34','34','34','34'),
(36,'35','35','35','35','35','35','35'),
(37,'36','36','36','36','36','36','36'),
(38,'37','37','37','37','37','37','37'),
(39,'38','38','38','38','38','38','38'),
(40,'39','39','39','39','39','39','39'),
(41,'40','40','40','40','40','40','40'),
(42,'41','41','41','41','41','41','41'),
(43,'42','42','42','42','42','42','42'),
(44,'43','43','43','43','43','43','43'),
(45,'44','44','44','44','44','44','44'),
(46,'45','45','45','45','45','45','45'),
(47,'46','46','46','46','46','46','46'),
(48,'47','47','47','47','47','47','47'),
(49,'48','48','48','48','48','48','48'),
(50,'49','49','49','49','49','49','49'),
(51,'50','50','50','50','50','50','50'),
(52,'51','51','51','51','51','51','51'),
(53,'52','52','52','52','52','52','52'),
(54,'53','53','53','53','53','53','53'),
(55,'54','54','54','54','54','54','54'),
(56,'55','55','55','55','55','55','55'),
(57,'56','56','56','56','56','56','56'),
(58,'57','57','57','57','57','57','57'),
(59,'58','58','58','58','58','58','58'),
(60,'59','59','59','59','59','59','59'),
(61,'60','60','60','60','60','60','60'),
(62,'61','61','61','61','61','61','61'),
(63,'62','62','62','62','62','62','62'),
(64,'63','63','63','63','63','63','63'),
(65,'64','64','64','64','64','64','64'),
(66,'65','65','65','65','65','65','65'),
(67,'66','66','66','66','66','66','66'),
(68,'67','67','67','67','67','67','67'),
(69,'68','68','68','68','68','68','68'),
(70,'69','69','69','69','69','69','69'),
(71,'70','70','70','70','70','70','70'),
(72,'71','71','71','71','71','71','71'),
(73,'72','72','72','72','72','72','72'),
(74,'73','73','73','73','73','73','73'),
(75,'74','74','74','74','74','74','74'),
(76,'75','75','75','75','75','75','75'),
(77,'76','76','76','76','76','76','76'),
(78,'77','77','77','77','77','77','77'),
(79,'78','78','78','78','78','78','78'),
(80,'79','79','79','79','79','79','79'),
(81,'80','80','80','80','80','80','80'),
(82,'81','81','81','81','81','81','81'),
(83,'82','82','82','82','82','82','82'),
(84,'83','83','83','83','83','83','83'),
(85,'84','84','84','84','84','84','84'),
(86,'85','85','85','85','85','85','85'),
(87,'86','86','86','86','86','86','86'),
(88,'87','87','87','87','87','87','87'),
(89,'88','88','88','88','88','88','88'),
(90,'89','89','89','89','89','89','89'),
(91,'90','90','90','90','90','90','90'),
(92,'91','91','91','91','91','91','91'),
(93,'92','92','92','92','92','92','92'),
(94,'93','93','93','93','93','93','93'),
(95,'94','94','94','94','94','94','94'),
(96,'95','95','95','95','95','95','95'),
(97,'96','96','96','96','96','96','96'),
(98,'97','7','97','97','97','97','97'),
(99,'98','98','98','98','98','98','98'),
(100,'99','99','99','99','99','99','99'),
(101,'100','100','100','100','100','100','100'),
(102,'101','101','101','101','101','101','101'),
(103,'102','102','102','102','102','102','102'),
(104,'103','103','103','103','103','103','103'),
(105,'104','104','104','104','104','104','104'),
(106,'105','105','105','105','105','105','105'),
(107,'106','106','106','106','106','106','106'),
(108,'107','107','107','107','107','107','107'),
(109,'108','108','108','108','108','108','108'),
(110,'109','109','109','109','109','109','109'),
(111,'110','110','110','110','110','110','110'),
(112,'111','111','111','111','111','111','111'),
(113,'112','112','112','112','112','112','112'),
(114,'113','113','113','113','113','113','113'),
(115,'114','114','114','114','114','114','114'),
(116,'115','115','115','115','115','115','115'),
(117,'116','116','116','116','116','116','116'),
(118,'117','117','117','117','117','117','117'),
(119,'118','118','118','118','118','118','118'),
(120,'119','119','119','119','119','119','119'),
(121,'120','120','120','120','120','120','120'),
(122,'121','121','121','121','121','121','121'),
(123,'122','122','122','122','122','122','122'),
(124,'123','123','123','123','123','123','123'),
(125,'124','124','124','124','124','124','124'),
(126,'125','125','125','125','125','125','125'),
(127,'126','126','126','126','126','126','126'),
(128,'127','127','127','127','127','127','127'),
(129,'128','128','128','128','128','128','128'),
(130,'129','129','129','129','129','129','129'),
(131,'130','130','130','130','130','130','130'),
(132,'131','131','131','131','131','131','131'),
(133,'132','132','132','132','132','132','132'),
(134,'133','133','133','133','133','133','133'),
(135,'134','134','134','134','134','134','134'),
(136,'135','135','135','135','135','135','135'),
(137,'136','136','136','136','136','136','136'),
(138,'137','137','137','137','137','137','137'),
(139,'138','138','138','138','138','138','138'),
(140,'139','139','139','139','139','139','139'),
(141,'140','140','140','140','140','140','140'),
(142,'141','141','141','141','141','141','141'),
(143,'142','142','142','142','142','142','142'),
(144,'143','143','143','143','143','143','143'),
(145,'144','144','144','144','144','144','144'),
(146,'145','145','145','145','145','145','145'),
(147,'146','146','146','146','146','146','146'),
(148,'147','147','147','147','147','147','147'),
(149,'148','148','148','148','148','148','148'),
(150,'149','149','149','149','149','149','149'),
(151,'150','150','150','150','150','150','150'),
(152,'151','151','151','151','151','151','151'),
(153,'152','152','152','152','152','152','152'),
(154,'153','153','153','153','153','153','153'),
(155,'154','154','154','154','154','154','154'),
(156,'155','155','155','155','155','155','155'),
(157,'156','156','156','156','156','156','156'),
(158,'157','157','157','157','157','157','157'),
(159,'158','158','158','158','158','158','158'),
(160,'159','159','159','159','159','159','159'),
(161,'160','160','160','160','160','160','160'),
(162,'161','161','161','161','161','161','161'),
(163,'162','162','162','162','162','162','162'),
(164,'163','163','163','163','163','163','163'),
(165,'164','164','164','164','164','164','164'),
(166,'165','165','165','165','165','165','165'),
(167,'166','166','166','166','166','166','166'),
(168,'167','167','167','167','167','167','167'),
(169,'168','168','168','168','168','168','168'),
(170,'169','169','169','169','169','169','169'),
(171,'170','170','170','170','170','170','170'),
(172,'171','171','171','171','171','171','171'),
(173,'172','172','172','172','172','172','172'),
(174,'173','173','173','173','173','173','173'),
(175,'174','174','174','174','174','174','174'),
(176,'175','175','175','175','175','175','175'),
(177,'176','176','176','176','176','176','176'),
(178,'177','177','177','177','177','177','177'),
(179,'178','178','178','178','178','178','178'),
(180,'179','179','179','179','179','179','179'),
(181,'180','180','180','180','180','180','180'),
(182,'181','181','181','181','181','181','181'),
(183,'182','182','182','182','182','182','182'),
(184,'183','183','183','183','183','183','183'),
(185,'184','184','184','184','184','184','184'),
(186,'185','185','185','185','185','185','185'),
(187,'186','186','186','186','186','186','186'),
(188,'187','187','187','187','187','187','187'),
(189,'188','188','188','188','188','188','188'),
(190,'189','189','189','189','189','189','189'),
(191,'190','190','190','190','190','190','190'),
(192,'191','191','191','191','191','191','191'),
(193,'192','192','192','192','192','192','192'),
(194,'193','193','193','193','193','193','193'),
(195,'194','194','194','194','194','194','194'),
(196,'195','195','195','195','195','195','195'),
(197,'196','196','196','196','196','196','196'),
(198,'197','197','197','197','197','197','197'),
(199,'198','198','198','198','198','198','198'),
(200,'199','199','199','199','199','199','199'),
(201,'200','200','200','200','200','200','200'),
(202,'201','201','201','201','201','201','201'),
(203,'202','202','202','202','202','202','202'),
(204,'203','203','203','203','203','203','203'),
(205,'204','204','204','204','204','204','204'),
(206,'205','205','205','205','205','205','205'),
(207,'206','206','206','206','206','206','206'),
(208,'207','207','207','207','207','207','207'),
(209,'208','208','208','208','208','208','208'),
(210,'209','209','209','209','209','209','209'),
(211,'210','210','210','210','210','210','210'),
(212,'211','211','211','211','211','211','211'),
(213,'212','212','212','212','212','212','212'),
(214,'213','213','213','213','213','213','213'),
(215,'214','214','214','214','214','214','214'),
(216,'215','215','215','215','215','215','215'),
(217,'216','216','216','216','216','216','216'),
(218,'217','217','217','217','217','217','217'),
(219,'218','218','218','218','218','218','218'),
(220,'219','219','219','219','219','219','219'),
(221,'220','220','220','220','220','220','220'),
(222,'221','221','221','221','221','221','221'),
(223,'222','222','222','222','222','222','222'),
(224,'223','223','223','223','223','223','223'),
(225,'224','224','224','224','224','224','224'),
(226,'225','225','225','225','225','225','225'),
(227,'226','226','226','226','226','226','226'),
(228,'227','227','227','227','227','227','227'),
(229,'228','228','228','228','228','228','228'),
(230,'229','229','229','229','229','229','229'),
(231,'230','230','230','230','230','230','230'),
(232,'231','231','231','231','231','231','231'),
(233,'232','232','232','232','232','232','232'),
(234,'233','233','233','233','233','233','233'),
(235,'234','234','234','234','234','234','234'),
(236,'235','235','235','235','235','235','235'),
(237,'236','236','236','236','236','236','236'),
(238,'237','237','237','237','237','237','237'),
(239,'238','238','238','238','238','238','238'),
(240,'239','239','239','239','239','239','239'),
(241,'240','240','240','240','240','240','240'),
(242,'241','241','241','241','241','241','241'),
(243,'242','242','242','242','242','242','242'),
(244,'243','243','243','243','243','243','243'),
(245,'244','244','244','244','244','244','244'),
(246,'245','245','245','245','245','245','245'),
(247,'246','246','246','246','246','246','246'),
(248,'247','247','247','247','247','247','247'),
(249,'248','248','248','248','248','248','248'),
(250,'249','249','249','249','249','249','249'),
(251,'250','250','250','250','250','250','250'),
(252,'251','251','251','251','251','251','251'),
(253,'252','252','252','252','252','252','252'),
(254,'253','253','253','253','253','253','253'),
(255,'254','254','254','254','254','254','254'),
(256,'255','255','255','255','255','255','255');
/*!40000 ALTER TABLE `sizetest` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `szarazaruk`
--

DROP TABLE IF EXISTS `szarazaruk`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `szarazaruk` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nev` varchar(100) NOT NULL,
  `tomeg` int(11) NOT NULL,
  `tomegfajta` varchar(100) NOT NULL,
  `darabszam` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `szarazaruk`
--

LOCK TABLES `szarazaruk` WRITE;
/*!40000 ALTER TABLE `szarazaruk` DISABLE KEYS */;
INSERT INTO `szarazaruk` VALUES
(1,'Tndrkert Rzs',1000,'g',5),
(2,'Doritos BBQ',100,'g',10),
(3,'Drmi Mack Csoki',30,'g',25),
(4,'Lays csps csirke csipsz',65,'g',5),
(5,'Chio csipsz intense chili&lime',55,'g',5);
/*!40000 ALTER TABLE `szarazaruk` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tejtermek`
--

DROP TABLE IF EXISTS `tejtermek`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `tejtermek` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nev` varchar(100) NOT NULL,
  `tomeg` int(11) NOT NULL,
  `tomegfajta` varchar(100) NOT NULL,
  `darabszam` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tejtermek`
--

LOCK TABLES `tejtermek` WRITE;
/*!40000 ALTER TABLE `tejtermek` DISABLE KEYS */;
INSERT INTO `tejtermek` VALUES
(1,'Ferrero Kinder Maxi King',35,'g',9),
(2,'Ferrero Kinder Pingu Tejszelet',30,'g',6),
(3,'Abauj ESL Tej',1,'L',12),
(4,'Zott Jogobella ivjoghurt',250,'g',10),
(5,'ris Pttys tr rudi',51,'g',6);
/*!40000 ALTER TABLE `tejtermek` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `azonosito` varchar(100) DEFAULT NULL,
  `jelszo` varchar(100) DEFAULT NULL,
  `type` bit(4) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES
(1,'mate','69420', 1),
(2,'janos','mate2006', 2),
(3,'anna','ocsipok', 1),
(4,'lolcat','', 1),
(5,'thoma$','6_8!', 2),
(6,'malog','', 2);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vegyiaruk`
--

DROP TABLE IF EXISTS `vegyiaruk`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `vegyiaruk` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nev` varchar(100) NOT NULL,
  `tomeg` int(11) NOT NULL,
  `tomegfajta` varchar(100) NOT NULL,
  `darabszam` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vegyiaruk`
--

LOCK TABLES `vegyiaruk` WRITE;
/*!40000 ALTER TABLE `vegyiaruk` DISABLE KEYS */;
INSERT INTO `vegyiaruk` VALUES
(1,'CBA WC papr 6 tekercs',100,'',2),
(2,'WD-40',450,'ml',69),
(3,'Nivea Man izzadsgtl',150,'ml',2),
(4,'Schwarzkopf Taft Hajspray',250,'ml',2),
(5,'CBA szalvta',2,'',2);
/*!40000 ALTER TABLE `vegyiaruk` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-02-10 20:37:41
