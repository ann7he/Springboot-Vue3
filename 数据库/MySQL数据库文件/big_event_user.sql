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
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `id` int unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `username` varchar(20) NOT NULL COMMENT '用户名',
  `password` varchar(32) DEFAULT NULL COMMENT '密码',
  `nickname` varchar(10) DEFAULT '' COMMENT '昵称',
  `email` varchar(128) DEFAULT '' COMMENT '邮箱',
  `user_pic` varchar(128) DEFAULT '' COMMENT '头像',
  `create_time` datetime NOT NULL COMMENT '创建时间',
  `update_time` datetime NOT NULL COMMENT '修改时间',
  `role` enum('admin','engineer','student','未知') DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='用户表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'wangba','e10adc3949ba59abbe56e057f20f883e','','','','2023-11-11 17:20:34','2023-11-11 17:20:34','未知'),(2,'wan123','36f8554c5e2729405c3cecbe0d174bc6','wbabc','wb@itcast.cn','','2023-12-02 08:34:37','2023-12-02 23:28:18','未知'),(3,'Tomss','e10adc3949ba59abbe56e057f20f883e','Tom','Tomss@qq.com','http://an7.oss-cn-beijing.aliyuncs.com/349fa040-8e09-40f2-abc8-7a58fd764bc5.jpg','2023-12-02 20:41:54','2023-12-30 23:47:12','admin'),(4,'fancy','e10adc3949ba59abbe56e057f20f883e','fan','fancy@qq.com','http://an7.oss-cn-beijing.aliyuncs.com/3e9ab4d3-0988-40b5-9339-6f63f0c01c09.png','2023-12-07 14:38:53','2024-01-02 21:03:41','engineer'),(5,'fancy1','4297f44b13955235245b2497399d7a93','','','','2023-12-07 14:51:31','2023-12-07 14:51:31','未知'),(6,'fancy2','4297f44b13955235245b2497399d7a93','','','','2023-12-07 15:22:47','2023-12-07 15:22:47','未知'),(7,'何安琪123','e10adc3949ba59abbe56e057f20f883e','212106282','3307673738@qq.com','http://an7.oss-cn-beijing.aliyuncs.com/be290f6e-8a75-41f3-8160-bfdc3598ef99.jpg','2023-12-12 08:56:41','2023-12-27 15:39:11','student'),(8,'大妈123','e10adc3949ba59abbe56e057f20f883e','','','','2023-12-21 11:14:27','2023-12-21 11:14:27','admin'),(9,'何一一123','e10adc3949ba59abbe56e057f20f883e','','','','2023-12-30 18:00:40','2023-12-30 18:00:40','student'),(10,'student','cd73502828457d15655bbd7a63fb0bc8','','','','2023-12-30 22:42:04','2023-12-30 22:42:04','student'),(11,'admin','21232f297a57a5a743894a0e4a801fc3','','','','2023-12-30 22:44:56','2023-12-30 22:44:56','admin'),(12,'engineer','9d127ff383d595262c67036f50493133','','','','2023-12-30 22:46:24','2023-12-30 22:46:24','engineer');
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

-- Dump completed on 2024-01-03 13:40:41
