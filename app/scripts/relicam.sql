-- MySQL dump 10.13  Distrib 5.5.27, for osx10.6 (i386)
--
-- Host: localhost    Database: relicam
-- ------------------------------------------------------
-- Server version	5.5.27

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `camera_locations`
--

DROP TABLE IF EXISTS `camera_locations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `camera_locations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `city` varchar(255) DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `cross_street` text,
  `latitude` decimal(16,12) DEFAULT NULL,
  `longitude` decimal(16,12) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `camera_locations`
--

LOCK TABLES `camera_locations` WRITE;
/*!40000 ALTER TABLE `camera_locations` DISABLE KEYS */;
INSERT INTO `camera_locations` VALUES (1,'Hollywood ','Florida ','USA','10th Ave and Hallandale Beach Blvd ',NULL,NULL,'redlight'),(2,'Clearwater ','Florida ','USA','119th St N and Ulmerton Rd ',NULL,NULL,'redlight'),(3,'Sarasota ','Florida ','USA','17th St and Lockwood Ridge Rd ',NULL,NULL,'redlight'),(4,'Hollywood ','Florida ','USA','1st Ave and Hallandale Beach Blvd ',NULL,NULL,'redlight'),(5,'Bradenton ','Florida ','USA','34th and 53rd ',NULL,NULL,'redlight'),(6,'Naples ','Florida ','USA','airport road and davis blvd ',NULL,NULL,'redlight'),(7,'Jacksonville ','Florida ','USA','Atlantic Blvd and Kernan Blvd ',NULL,NULL,'redlight'),(8,'Naperville ','Florida ','USA','Aurora Avenue and Fort Hill ',NULL,NULL,'redlight'),(9,'Jacksonville ','Florida ','USA','Beach Blvd and Atlantic Blvd ',NULL,NULL,'redlight'),(10,'Jacksonville ','Florida ','USA','Beach Blvd and Kernan Blvd ',NULL,NULL,'redlight'),(11,'Jacksonville ','Florida ','USA','Beach Blvd and San Pablo Rd ',NULL,NULL,'redlight'),(12,'Sarasota ','Florida ','USA','Bee Ridge Rd and Beneva Rd ',NULL,NULL,'redlight'),(13,'Sarasota ','Florida ','USA','Bee Ridge Rd and Cattlemen Rd ',NULL,NULL,'redlight'),(14,'Jacksonville ','Florida ','USA','Blanding Blvd and Youngerman Circle ',NULL,NULL,'redlight'),(15,'Brandon ','Florida ','USA','Bryan Rd and Lumsden Rd ',NULL,NULL,'redlight'),(16,'Daytona Beach ','Florida ','USA','Clyde Morris Blvd and Bellevue ',NULL,NULL,'redlight'),(17,'Sarasota ','Florida ','USA','Commercial Way and I-75 ',NULL,NULL,'redlight'),(18,'Palm Coast ','Florida ','USA','Cypress Point Pkwy and Belle Terre Pkwy ',NULL,NULL,'redlight'),(19,'Hollywood ','Florida ','USA','Dixie Hwy and Hallandale Beach Blvd ',NULL,NULL,'redlight'),(20,'Brandon ','Florida ','USA','Dr Martin Luther King Jr Blvd and S Kingsway Rd ',NULL,NULL,'redlight'),(21,'Largo ','Florida ','USA','e. bay and belcher ',NULL,NULL,'redlight'),(22,'Sarasota ','Florida ','USA','Fruitville Rd and Cattlemen Rd ',NULL,NULL,'redlight'),(23,'Sarasota ','Florida ','USA','Fruitville Rd and Honore Ave ',NULL,NULL,'redlight'),(24,'Florissant ','Florida ','USA','Hanley RD. and  Dunn RD. ',NULL,NULL,'redlight'),(25,'Sarasota ','Florida ','USA','Honore and University ',NULL,NULL,'redlight');
/*!40000 ALTER TABLE `camera_locations` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2015-04-15  9:28:02
