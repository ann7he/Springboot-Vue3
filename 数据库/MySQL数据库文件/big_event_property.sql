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
-- Table structure for table `property`
--

DROP TABLE IF EXISTS `property`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `property` (
  `property_no` varchar(20) NOT NULL,
  `dormitory_no` varchar(20) NOT NULL,
  `property_name` varchar(50) NOT NULL,
  `purchase_date` date NOT NULL,
  `status` varchar(20) NOT NULL,
  PRIMARY KEY (`property_no`),
  KEY `dormitory_no` (`dormitory_no`),
  CONSTRAINT `property_ibfk_1` FOREIGN KEY (`dormitory_no`) REFERENCES `dormitories` (`dormitory_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `property`
--

LOCK TABLES `property` WRITE;
/*!40000 ALTER TABLE `property` DISABLE KEYS */;
INSERT INTO `property` VALUES ('D1Y302','东一302','椅子','2020-09-01','使用中'),('D2C222','东二222','床','2020-09-01','使用中'),('D2C402','东二402','床','2023-09-02','使用中'),('D2Y422','东二422','椅子','2023-09-02','使用中'),('DSCA321','东三321','床A','2020-09-01','使用中'),('DSCB321','东三321','床B','2020-09-01','使用中'),('DSCC321','东三321','床C','2020-09-01','报修中'),('DSCD321','东三321','床D','2020-09-01','报修中'),('DSKT321','东三321','空调','2021-09-01','报修中'),('DSYA321','东三321','椅子A','2021-09-01','报修中'),('DSYB321','东三321','椅子B','2021-09-01','使用中'),('DSYC321','东三321','椅子C','2021-09-01','使用中'),('DSYD321','东三321','椅子D','2021-09-01','使用中');
/*!40000 ALTER TABLE `property` ENABLE KEYS */;
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
