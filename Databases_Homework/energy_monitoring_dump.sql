-- MySQL dump 10.13  Distrib 8.0.32, for Linux (x86_64)
--
-- Host: localhost    Database: ENERGY_MONITORING
-- ------------------------------------------------------
-- Server version	8.0.32-0buntu0.22.04.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `LOCAL_POWER_EVENTS`
--

DROP TABLE IF EXISTS `LOCAL_POWER_EVENTS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `LOCAL_POWER_EVENTS` (
  `local_id` int NOT NULL AUTO_INCREMENT,
  `local_event_time` datetime NOT NULL,
  `local_registration_timestamp` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `local_event_type` int DEFAULT NULL,
  PRIMARY KEY (`local_id`),
  KEY `local_event_type` (`local_event_type`),
  CONSTRAINT `LOCAL_POWER_EVENTS_ibfk_1` FOREIGN KEY (`local_event_type`) REFERENCES `POWER_EVENT_TYPES` (`type_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `LOCAL_POWER_EVENTS`
--

LOCK TABLES `LOCAL_POWER_EVENTS` WRITE;
/*!40000 ALTER TABLE `LOCAL_POWER_EVENTS` DISABLE KEYS */;
INSERT INTO `LOCAL_POWER_EVENTS` VALUES (1,'2023-01-27 12:59:57','2023-01-27 12:59:57',1),(2,'2023-01-27 13:00:02','2023-01-27 13:00:02',2),(3,'2023-01-27 13:00:07','2023-01-27 13:00:07',1);
/*!40000 ALTER TABLE `LOCAL_POWER_EVENTS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `MONITOR_HOSTS`
--

DROP TABLE IF EXISTS `MONITOR_HOSTS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `MONITOR_HOSTS` (
  `id` int NOT NULL,
  `name` varchar(20) NOT NULL,
  `comment` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `MONITOR_HOSTS`
--

LOCK TABLES `MONITOR_HOSTS` WRITE;
/*!40000 ALTER TABLE `MONITOR_HOSTS` DISABLE KEYS */;
INSERT INTO `MONITOR_HOSTS` VALUES (1,'R8ubuntu','Ubuntu 22.04.1 LTS host in Kyiv, Solomianka district'),(2,'KhM1Centos','Centos Stream 8 host in Khotiv, Kyivska Oblast');
/*!40000 ALTER TABLE `MONITOR_HOSTS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `POWER_EVENT_TYPES`
--

DROP TABLE IF EXISTS `POWER_EVENT_TYPES`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `POWER_EVENT_TYPES` (
  `type_id` int NOT NULL,
  `type_name` varchar(60) NOT NULL,
  `comment` varchar(255) NOT NULL,
  PRIMARY KEY (`type_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `POWER_EVENT_TYPES`
--

LOCK TABLES `POWER_EVENT_TYPES` WRITE;
/*!40000 ALTER TABLE `POWER_EVENT_TYPES` DISABLE KEYS */;
INSERT INTO `POWER_EVENT_TYPES` VALUES (1,'CleanPowerOn','When a node boots from a planned shutdown'),(2,'CleanPowerOff','When a node turns off as a result of a planned shutdown'),(3,'DirtyPowerOn','When a node turns on after an unexpected and unregistered shutdown');
/*!40000 ALTER TABLE `POWER_EVENT_TYPES` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-01-27 13:30:35
