-- MySQL dump 10.13  Distrib 5.7.38, for Linux (x86_64)
--
-- Host: localhost    Database: problem_tracking
-- ------------------------------------------------------
-- Server version	5.7.38-0ubuntu0.18.04.1

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
-- Table structure for table `constraints`
--

DROP TABLE IF EXISTS `constraints`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `constraints` (
  `probID` int(11) NOT NULL AUTO_INCREMENT,
  `parameter_type` varchar(255) DEFAULT NULL,
  `parameter` varchar(255) DEFAULT NULL,
  `frequency` int(11) DEFAULT NULL,
  PRIMARY KEY (`probID`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `constraints`
--

LOCK TABLES `constraints` WRITE;
/*!40000 ALTER TABLE `constraints` DISABLE KEYS */;
INSERT INTO `constraints` VALUES (1,'difficulty','Easy',10),(2,'difficulty','Medium',10),(3,'difficulty','Hard',10),(4,'topic','Array',10),(5,'topic','LinkedList',10),(6,'topic','Stacks',10),(7,'topic','Queues',10),(8,'topic','String',10),(9,'topic','Trees',10),(10,'topic','GraphsDS',10),(11,'topic','HashMap',10),(12,'topic','Bits',10),(13,'topic','Heaps',10),(14,'topic','Tries',10),(15,'topic','Recursion',10),(16,'topic','Searching',10),(17,'topic','Sorting',10),(18,'topic','DP',10),(19,'topic','Greedy',10),(20,'topic','GraphAlg',10),(21,'topic','Backtracking',10);
/*!40000 ALTER TABLE `constraints` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `problem_inventory`
--

DROP TABLE IF EXISTS `problem_inventory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `problem_inventory` (
  `idx` int(11) DEFAULT NULL,
  `probID` int(11) NOT NULL,
  `problem_name` varchar(255) DEFAULT NULL,
  `link` varchar(255) DEFAULT NULL,
  `difficulty` varchar(255) DEFAULT NULL,
  `topic` varchar(255) DEFAULT NULL,
  `blacklist` varchar(255) DEFAULT NULL,
  `notes` varchar(255) DEFAULT NULL,
  `company` varchar(255) DEFAULT NULL,
  `first_date` date DEFAULT NULL,
  `second_date` date DEFAULT NULL,
  `third_date` date DEFAULT NULL,
  `fourth_date` date DEFAULT NULL,
  `fifth_date` date DEFAULT NULL,
  PRIMARY KEY (`probID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `problem_inventory`
--

LOCK TABLES `problem_inventory` WRITE;
/*!40000 ALTER TABLE `problem_inventory` DISABLE KEYS */;
INSERT INTO `problem_inventory` VALUES (1,200,'binary search','some link here','easy','arrays, binary search','NO','divide and conquer approach',NULL,'2022-06-01',NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `problem_inventory` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-06-01 23:38:41
