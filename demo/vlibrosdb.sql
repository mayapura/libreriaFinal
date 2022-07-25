-- MySQL dump 10.13  Distrib 8.0.25, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: vlibros
-- ------------------------------------------------------
-- Server version	8.0.25

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `libro`
--

DROP TABLE IF EXISTS `libro`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `libro` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `autor` varchar(255) DEFAULT NULL,
  `descripcion` varchar(255) DEFAULT NULL,
  `destacado` int DEFAULT NULL,
  `imagen` varchar(255) DEFAULT NULL,
  `precio` float DEFAULT NULL,
  `stock` int DEFAULT NULL,
  `titulo` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `libro`
--

LOCK TABLES `libro` WRITE;
/*!40000 ALTER TABLE `libro` DISABLE KEYS */;
INSERT INTO `libro` VALUES (2,'Simone St. James','In 1977, Claire Lake, Oregon, was shaken by the Lady Killer Murders: Two men, seemingly randomly, were murdered with the same gun, with strange notes left behind.',0,'https://i.gr-assets.com/images/S/compressed.photo.goodreads.com/books/1624553583l/58371432.jpg',3212,352,'The Book of Cold Cases'),(4,'V.E. Schwab','Everything casts a shadow. Even the world we live in. And as with every shadow, there is a place where it must touch.',1,'https://i.gr-assets.com/images/S/compressed.photo.goodreads.com/books/1635862579l/58064046.jpg',3212,213,'Gallant'),(5,'Jennifer L. Armentrout','From the desperation of golden crowns. Casteel Da Neer knows all too well that very few are as cunning or vicious as the Blood Queen.',0,'https://i.gr-assets.com/images/S/compressed.photo.goodreads.com/books/1635174962l/57815107._SY475_.jpg',2544,121,'The War of Two Queens'),(6,'Peng Shepherd','What is the purpose of a map?Nell Young is whole life and greatest passion is cartography. Her father, Dr. Daniel Young, is a legend in the field and Nell is personal hero.',1,'https://i.gr-assets.com/images/S/compressed.photo.goodreads.com/books/1634915484l/55004093.jpg',3226,222,'The Cartographers'),(7,'Dolly Parton','From America is most beloved superstar and its greatest storyteller a thriller about a young singer/songwriter on the rise and on the run, and determined to do whatever it takes to survive.',0,'https://i.gr-assets.com/images/S/compressed.photo.goodreads.com/books/1628699768l/58505877.jpg',4322,322,'Run Rose Run'),(9,'Monica  Murphy','Wren Beaumont is many things.Beautiful.Smart.Sweet.Innocent.At Lancaster Prep, the girls love her. They all want to be her friend.',1,'https://i.gr-assets.com/images/S/compressed.photo.goodreads.com/books/1644500865l/60306208._SY475_.jpg',2344,124,'A Million Kisses in Your Lifetime'),(10,'Ellery Lloyd','Alternate cover edition of ISBN 9780062997425.From the author of People Like Her comes a smart and sinister murder mystery set in the secretive world of exclusive celebrity clubs.',0,'https://i.gr-assets.com/images/S/compressed.photo.goodreads.com/books/1644230879l/58536005._SY475_.jpg',3322,221,'The Club');
/*!40000 ALTER TABLE `libro` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuario`
--

DROP TABLE IF EXISTS `usuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `usuario` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `apellido` varchar(255) DEFAULT NULL,
  `asunto` varchar(255) DEFAULT NULL,
  `dni` int DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `mensaje` varchar(255) DEFAULT NULL,
  `nombre` varchar(255) DEFAULT NULL,
  `telefono` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuario`
--

LOCK TABLES `usuario` WRITE;
/*!40000 ALTER TABLE `usuario` DISABLE KEYS */;
INSERT INTO `usuario` VALUES (1,'Ekeberg','Love',34002787,'viktoria.ekeberg@example.com','Trust d person who can sense ur sadness in ur smile,hear ur words in ur silence &feel ur luv in ur anger..coz thy r indeed ur true mate.','Viktoria',96998346),(2,'Naydonov','Quotes',35625783,'marina.naydonov@example.com','The worlds most happiest frnds never have the samecharacteristics .they just make the better understanding of theirdifferences.','Marina',96570687),(3,'Kelley','Friendship',34464634,'evan.kelley@example.com','Ur Friendship Is A Blank Cheque For MeIt’s An Asset Not LiabilityAlways A Credit Not A DebitAlways A Profit Not A Loss &I Hope It’ll Never Bounce.','Evan',96469269),(4,'White','Good Night',33542555,'lewis.white@example.com','Mistake is a single page in a part of lifeButRelation is a book of dictionary.So, Don\'t lose a full book for a single page.GD NYT .have a nice day.','Lewis',96350607),(5,'Rey','Good Morning',34735724,'marco.rey@example.com','You Worry About A TroubleIt Becomes DoubleBut Whn U Smile At ItIt Disappear Like BubbleSo Always Smile At Ur ProblemKEEP SMILINGGood Morning.','Marco',96061476),(6,'Rolland','Funny',32332455,'kelya.rolland@example.com','Father : Son, what do you want for your birthday?Son : Not that much dad, just a radio with a sports car around it.','Kelya',96435462),(7,'Burke','Random',35264174,'rebecca.burke@example.com','Sacred Hear t,Your sweet art,In my eyes I did craft,With my blood I made draft,I am your part from past till my last,If I loose you my Heart will blast.','Rebecca',96735331);
/*!40000 ALTER TABLE `usuario` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-07-24 17:55:56
