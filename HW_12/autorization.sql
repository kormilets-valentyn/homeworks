-- MySQL dump 10.13  Distrib 5.7.28, for Linux (x86_64)
--
-- Host: localhost    Database: authorization
-- ------------------------------------------------------
-- Server version	5.7.28-0ubuntu0.18.04.4

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
-- Table structure for table `authorization`
--

DROP TABLE IF EXISTS `authorization`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `authorization` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `login` varchar(50) NOT NULL DEFAULT '',
  `password` varchar(255) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `authorization`
--

LOCK TABLES `authorization` WRITE;
/*!40000 ALTER TABLE `authorization` DISABLE KEYS */;
INSERT INTO `authorization` VALUES (1,'valentino','$2y$10$d3AuWKrTMN42m4NeA9fcr.qwwqLDPXW8nOnrosjKDMB7YyzHjUzmW','valik','v.kormilets@gmail.com'),(2,'asads','$2y$10$BpiW/cfE8HFK52eP7maXl.dL7M3rb9SrE2rm6u2zY1xbgA6JOP9D2','Valik','qwe@sdsf.ser'),(3,'sdfsagags','$2y$10$0xMRcnh3IB/qU3u8E8uzteWumbLd9R7rcgxroiVo1el/GyAiAqOyS','qwqw','qwe@sdsf.ser12313'),(4,'valik','$2y$10$q09dS.gFHwA8Hy51SQKa9OjTRR8CPveTl8Pe94ws/ek5y8TF12NhO','valik','v.kormilets@gmail.c123om'),(5,'qwerty','$2y$10$TtcBq72PnTu9VDup9nUg4OW0USfMime3kgJQN/7WdqlMsBfR3Csli','Valentino','v.kormilets@gmail.com123123'),(6,'kate','$2y$10$fLrQgEDblukFBnkx6BgSnuaFHn/HJnwJFFUjub3B8xoxtIxS1jbpe','KateGirl','kate@list.ru'),(7,'1212','$2y$10$Vl8RYDjYioX4nBOijP.zD.OQHiMIYu12hhLrKq8NDrTjJbGsONzBS','Valik','v.kormileqwets@gmail.com'),(8,'12121212','$2y$10$/xG65E3EOPj46dCjaYI/ROzhrLPGcChjg6kGZomeDPPr5OF4/g0cq','1212','v.kormilets@g12321mail.com'),(9,'valentino123','$2y$10$IAci6RXTrZBLBASoM0mRzOal5rwloLQMX1yZUYwsKjBi3ZmkfoW3C','Bob','v.kormil1212ets@gmail.com121212'),(10,'valentino123123','$2y$10$bo3Axvvbi1J/lu/WRUPIOeHh8ZmfcJXRsfPGrKeznQjzZp59EWoru','Bob','v.kormil1212e123ts@gmail.com121212'),(11,'valentino12312323','$2y$10$oNDS90MPTZGKSM3w696bNukjKXdu8fvAD2.W9QtJpVL5E4nwPx3nS','Bob','v.kormil1211232e123ts@gmail.com121212');
/*!40000 ALTER TABLE `authorization` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-11-26  0:34:38
