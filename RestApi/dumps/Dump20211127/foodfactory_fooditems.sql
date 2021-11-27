-- MySQL dump 10.13  Distrib 8.0.27, for Win64 (x86_64)
--
-- Host: localhost    Database: foodfactory
-- ------------------------------------------------------
-- Server version	8.0.27

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
-- Table structure for table `fooditems`
--

DROP TABLE IF EXISTS `fooditems`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `fooditems` (
  `id` int NOT NULL AUTO_INCREMENT,
  `categoryid` int DEFAULT NULL,
  `name` varchar(45) DEFAULT NULL,
  `description` varchar(500) DEFAULT NULL,
  `price` decimal(10,0) DEFAULT NULL,
  `currency_id` int DEFAULT NULL,
  `active` tinyint(1) DEFAULT '1',
  `toppings` json DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=armscii8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fooditems`
--

LOCK TABLES `fooditems` WRITE;
/*!40000 ALTER TABLE `fooditems` DISABLE KEYS */;
INSERT INTO `fooditems` VALUES (1,24,'Pizza Margherita',NULL,33,1,1,'{\"toppings\": [1, 2]}'),(2,24,'Pizza Diavola',NULL,35,1,1,'{\"toppings\": [1, 3]}'),(3,25,'Pasta quattro formaggi',NULL,35,2,1,'{\"toppings\": [3, 2]}'),(4,25,'Pasta bolognese',NULL,37,2,1,'{\"toppings\": [1, 3]}');
/*!40000 ALTER TABLE `fooditems` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-11-27 12:38:16
