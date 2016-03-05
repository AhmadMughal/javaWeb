-- MySQL dump 10.13  Distrib 5.7.11, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: webApp
-- ------------------------------------------------------
-- Server version	5.7.11-log

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
-- Table structure for table `marksentry`
--

DROP TABLE IF EXISTS `marksentry`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `marksentry` (
  `roll_no` int(11) DEFAULT NULL,
  `name` varchar(20) DEFAULT NULL,
  `acadamic_year` int(11) DEFAULT NULL,
  `course` varchar(20) DEFAULT NULL,
  `sc_1` varchar(20) DEFAULT NULL,
  `sc_2` varchar(20) DEFAULT NULL,
  `sc_3` varchar(20) DEFAULT NULL,
  `sc_4` varchar(20) DEFAULT NULL,
  `sc_5` varchar(20) DEFAULT NULL,
  `sc_6` varchar(20) DEFAULT NULL,
  `m1` int(11) DEFAULT NULL,
  `m2` int(11) DEFAULT NULL,
  `m3` int(11) DEFAULT NULL,
  `m4` int(11) DEFAULT NULL,
  `m5` int(11) DEFAULT NULL,
  `m6` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `marksentry`
--

LOCK TABLES `marksentry` WRITE;
/*!40000 ALTER TABLE `marksentry` DISABLE KEYS */;
INSERT INTO `marksentry` VALUES (11,'dd',22,'','sc01','sc03','sc01','sc01','sc01','sc01',22,22,33,44,55,33),(22,'Ali',2011,'JAva','sc01','sc02','sc02','sc02','sc01','sc03',33,88,22,66,0,33);
/*!40000 ALTER TABLE `marksentry` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `studententry`
--

DROP TABLE IF EXISTS `studententry`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `studententry` (
  `roll_no` int(11) DEFAULT NULL,
  `name` varchar(20) DEFAULT NULL,
  `fname` varchar(20) DEFAULT NULL,
  `address` varchar(30) DEFAULT NULL,
  `ay` int(11) DEFAULT NULL,
  `gender` varchar(20) DEFAULT NULL,
  `dept` varchar(20) DEFAULT NULL,
  `batch` varchar(20) DEFAULT NULL,
  `month` varchar(20) DEFAULT NULL,
  `day` varchar(20) DEFAULT NULL,
  `year` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `studententry`
--

LOCK TABLES `studententry` WRITE;
/*!40000 ALTER TABLE `studententry` DISABLE KEYS */;
INSERT INTO `studententry` VALUES (66,'','','',2012,'','it','','22/22/2012',NULL,NULL),(66,'','','',2012,'','it','','22/22/2012',NULL,NULL),(12,'Ahmad','Mughal','abc',2012,'male','IT','12','12/02/2012',NULL,NULL);
/*!40000 ALTER TABLE `studententry` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `username` varchar(20) DEFAULT NULL,
  `password` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES ('admin',123);
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-03-03  0:05:01
