-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: localhost    Database: big_event
-- ------------------------------------------------------
-- Server version	8.0.35

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
-- Table structure for table `visitorrecord`
--

DROP TABLE IF EXISTS `visitorrecord`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `visitorrecord` (
  `record_id` varchar(20) NOT NULL,
  `sno` varchar(11) NOT NULL,
  `visitor_name` varchar(20) DEFAULT NULL,
  `visit_time` datetime DEFAULT NULL,
  PRIMARY KEY (`record_id`),
  KEY `sno` (`sno`),
  CONSTRAINT `visitorrecord_ibfk_1` FOREIGN KEY (`sno`) REFERENCES `students` (`sno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `visitorrecord`
--

LOCK TABLES `visitorrecord` WRITE;
/*!40000 ALTER TABLE `visitorrecord` DISABLE KEYS */;
INSERT INTO `visitorrecord` VALUES ('1230123','212106282','何爸爸','2023-12-30 14:24:11'),('1230124','212106282','何妈妈','2023-12-30 14:24:20'),('1230125','212106282','何奶奶','2023-12-30 14:24:31'),('1230126','212106282','何姐姐','2023-12-30 14:24:47'),('1230127','212106282','何弟弟','2023-12-30 14:24:56'),('12311','212106282','七七','2023-12-30 17:25:17'),('2024010201','212106282','七七','2024-01-02 20:46:08'),('922004','1357435','李大七','2023-12-18 15:00:30'),('923030','123123','陈大一','2023-12-09 19:37:40');
/*!40000 ALTER TABLE `visitorrecord` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-01-03 13:40:42
