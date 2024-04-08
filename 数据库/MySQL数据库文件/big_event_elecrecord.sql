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
-- Table structure for table `elecrecord`
--

DROP TABLE IF EXISTS `elecrecord`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `elecrecord` (
  `record_id` varchar(20) NOT NULL,
  `dormitory_no` varchar(20) NOT NULL,
  `date` varchar(30) NOT NULL,
  `consumption` varchar(20) DEFAULT NULL,
  `cost` varchar(20) DEFAULT NULL,
  `status` varchar(20) DEFAULT '未缴费',
  PRIMARY KEY (`record_id`),
  KEY `dormitory_no` (`dormitory_no`),
  CONSTRAINT `elecrecord_ibfk_1` FOREIGN KEY (`dormitory_no`) REFERENCES `dormitories` (`dormitory_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `elecrecord`
--

LOCK TABLES `elecrecord` WRITE;
/*!40000 ALTER TABLE `elecrecord` DISABLE KEYS */;
INSERT INTO `elecrecord` VALUES ('DE322','东二322','2023-12-12','80','28','未缴费'),('DE322_2401','东二322','2024-01-02','88','44','未缴费'),('DE402','东二402','2023-12-12','220','80','未缴费'),('DE421','东二421','2023-12-12','130','56','已缴费'),('DE422','东二422','2023-12-12','75','25','已缴费'),('DS32101','东三321','2023-12-30','45','32','已缴费'),('DS32102','东三321','2023-12-30','80','55','已缴费'),('DS32103','东三321','2023-12-30','120','80','已缴费'),('DS32104','东三321','2023-12-30','50','25','未缴费'),('DS321101','东三321','2024-01-01','50','22','未缴费'),('DY302','东一302','2023-12-25','130','88','未缴费'),('DY402','东一402','2023-12-25','30','25','未缴费');
/*!40000 ALTER TABLE `elecrecord` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-01-03 13:40:41
