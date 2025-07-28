-- MySQL dump 10.13  Distrib 8.0.42, for macos15.2 (arm64)
--
-- Host: localhost    Database: NailNow
-- ------------------------------------------------------
-- Server version	8.0.42

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
-- Table structure for table `Appointment`
--

DROP TABLE IF EXISTS `Appointment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Appointment` (
  `IdAppointment` int NOT NULL AUTO_INCREMENT,
  `IdClient` int DEFAULT NULL,
  `IdManicurist` int DEFAULT NULL,
  `DateTime` datetime DEFAULT NULL,
  `Status` varchar(30) DEFAULT NULL,
  `Location` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`IdAppointment`),
  KEY `IdClient` (`IdClient`),
  KEY `IdManicurist` (`IdManicurist`),
  CONSTRAINT `appointment_ibfk_1` FOREIGN KEY (`IdClient`) REFERENCES `Client` (`IdClient`),
  CONSTRAINT `appointment_ibfk_2` FOREIGN KEY (`IdManicurist`) REFERENCES `Manicurist` (`IdManicurist`)
) ENGINE=InnoDB AUTO_INCREMENT=202 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Appointment`
--

LOCK TABLES `Appointment` WRITE;
/*!40000 ALTER TABLE `Appointment` DISABLE KEYS */;
INSERT INTO `Appointment` VALUES (1,2,5,'2025-08-01 08:00:00','Confirmado','Sala 1'),(2,1,1,'2025-07-11 15:00:00','Confirmado','Sala 03'),(3,104,29,'2025-07-12 08:00:00','Pendente','Sala 2'),(4,109,42,'2025-07-12 08:30:00','Pendente','Sala 1'),(5,102,30,'2025-07-12 09:00:00','Confirmado','Sala 2'),(6,101,51,'2025-07-12 09:30:00','Pendente','Sala 2'),(7,104,5,'2025-07-12 10:00:00','Cancelado','Sala 2'),(8,103,51,'2025-07-12 10:30:00','Cancelado','Sala 1'),(9,109,17,'2025-07-12 11:00:00','Confirmado','Sala 1'),(10,106,51,'2025-07-12 11:30:00','Confirmado','Sala 5'),(11,105,4,'2025-07-12 12:00:00','Confirmado','Sala 4'),(12,108,50,'2025-07-12 12:30:00','Pendente','Sala 5'),(13,101,47,'2025-07-12 13:00:00','Cancelado','Sala 5'),(14,101,31,'2025-07-12 13:30:00','Pendente','Sala 4'),(15,102,6,'2025-07-12 14:00:00','Pendente','Sala 5'),(16,103,18,'2025-07-12 14:30:00','Cancelado','Sala 5'),(17,109,19,'2025-07-12 15:00:00','Pendente','Sala 5'),(18,109,47,'2025-07-12 15:30:00','Confirmado','Sala 4'),(19,106,30,'2025-07-12 16:00:00','Pendente','Sala 4'),(20,106,43,'2025-07-12 16:30:00','Pendente','Sala 3'),(21,108,5,'2025-07-12 17:00:00','Confirmado','Sala 1'),(22,102,48,'2025-07-12 17:30:00','Cancelado','Sala 3'),(23,101,38,'2025-07-12 18:00:00','Cancelado','Sala 5'),(24,107,23,'2025-07-12 18:30:00','Cancelado','Sala 4'),(25,106,7,'2025-07-12 19:00:00','Cancelado','Sala 5'),(26,108,15,'2025-07-12 19:30:00','Confirmado','Sala 3'),(27,104,28,'2025-07-12 20:00:00','Cancelado','Sala 5'),(28,105,2,'2025-07-12 20:30:00','Confirmado','Sala 3'),(29,101,12,'2025-07-12 21:00:00','Confirmado','Sala 5'),(30,101,6,'2025-07-12 21:30:00','Cancelado','Sala 5'),(31,107,30,'2025-07-12 22:00:00','Pendente','Sala 2'),(32,102,4,'2025-07-12 22:30:00','Confirmado','Sala 2'),(33,108,43,'2025-07-12 23:00:00','Pendente','Sala 4'),(34,104,49,'2025-07-12 23:30:00','Cancelado','Sala 1'),(35,105,44,'2025-07-13 00:00:00','Cancelado','Sala 5'),(36,101,15,'2025-07-13 00:30:00','Pendente','Sala 5'),(37,104,20,'2025-07-13 01:00:00','Confirmado','Sala 2'),(38,102,1,'2025-07-13 01:30:00','Pendente','Sala 4'),(39,107,35,'2025-07-13 02:00:00','Cancelado','Sala 2'),(40,107,48,'2025-07-13 02:30:00','Confirmado','Sala 4'),(41,102,21,'2025-07-13 03:00:00','Cancelado','Sala 4'),(42,102,26,'2025-07-13 03:30:00','Confirmado','Sala 3'),(43,105,43,'2025-07-29 08:00:00','Confirmado','Sala 2'),(44,109,5,'2025-07-29 08:30:00','Confirmado','Sala 1'),(45,108,19,'2025-07-29 09:00:00','Confirmado','Sala 2'),(46,108,5,'2025-07-29 09:30:00','Cancelado','Sala 2'),(47,104,28,'2025-07-29 10:00:00','Confirmado','Sala 5'),(48,103,18,'2025-07-29 10:30:00','Confirmado','Sala 1'),(49,105,39,'2025-07-29 11:00:00','Cancelado','Sala 5'),(50,108,45,'2025-07-29 11:30:00','Pendente','Sala 4'),(51,108,29,'2025-07-29 12:00:00','Confirmado','Sala 5'),(52,106,39,'2025-07-29 12:30:00','Pendente','Sala 1'),(53,101,49,'2025-07-30 08:00:00','Cancelado','Sala 3'),(54,109,42,'2025-07-30 08:30:00','Pendente','Sala 3'),(55,107,41,'2025-07-30 09:00:00','Pendente','Sala 1'),(56,106,21,'2025-07-30 09:30:00','Cancelado','Sala 1'),(57,107,45,'2025-07-30 10:00:00','Pendente','Sala 3'),(58,108,6,'2025-07-30 10:30:00','Pendente','Sala 3'),(59,109,1,'2025-07-30 11:00:00','Cancelado','Sala 5'),(60,104,34,'2025-07-30 11:30:00','Pendente','Sala 5'),(61,101,14,'2025-07-30 12:00:00','Pendente','Sala 5'),(62,108,45,'2025-07-30 12:30:00','Pendente','Sala 1'),(63,103,20,'2025-07-31 08:00:00','Cancelado','Sala 1'),(64,102,30,'2025-07-31 08:30:00','Confirmado','Sala 2'),(65,109,46,'2025-07-31 09:00:00','Pendente','Sala 4'),(66,108,36,'2025-07-31 09:30:00','Confirmado','Sala 4'),(67,109,48,'2025-07-31 10:00:00','Confirmado','Sala 1'),(68,109,18,'2025-07-31 10:30:00','Confirmado','Sala 3'),(69,103,29,'2025-07-31 11:00:00','Cancelado','Sala 4'),(70,109,25,'2025-07-31 11:30:00','Pendente','Sala 3'),(71,104,37,'2025-07-31 12:00:00','Pendente','Sala 2'),(72,108,46,'2025-07-31 12:30:00','Pendente','Sala 4'),(73,103,33,'2025-08-01 08:00:00','Cancelado','Sala 3'),(74,102,34,'2025-08-01 08:30:00','Pendente','Sala 1'),(75,102,31,'2025-08-01 09:00:00','Pendente','Sala 3'),(76,106,44,'2025-08-01 09:30:00','Cancelado','Sala 4'),(77,109,3,'2025-08-01 10:00:00','Cancelado','Sala 1'),(78,105,15,'2025-08-01 10:30:00','Cancelado','Sala 1'),(79,108,11,'2025-08-01 11:00:00','Cancelado','Sala 3'),(80,106,51,'2025-08-01 11:30:00','Confirmado','Sala 3'),(81,103,16,'2025-08-01 12:00:00','Cancelado','Sala 4'),(82,103,6,'2025-08-01 12:30:00','Cancelado','Sala 4'),(83,103,15,'2025-08-02 08:00:00','Pendente','Sala 3'),(84,108,19,'2025-08-02 08:30:00','Cancelado','Sala 5'),(85,108,23,'2025-08-02 09:00:00','Cancelado','Sala 3'),(86,105,13,'2025-08-02 09:30:00','Pendente','Sala 4'),(87,107,37,'2025-08-02 10:00:00','Pendente','Sala 5'),(88,101,43,'2025-08-02 10:30:00','Pendente','Sala 3'),(89,101,39,'2025-08-02 11:00:00','Cancelado','Sala 4'),(90,106,15,'2025-08-02 11:30:00','Cancelado','Sala 2'),(91,101,20,'2025-08-02 12:00:00','Pendente','Sala 1'),(92,105,21,'2025-08-02 12:30:00','Cancelado','Sala 4'),(93,109,24,'2025-08-03 08:00:00','Cancelado','Sala 5'),(94,108,19,'2025-08-03 08:30:00','Cancelado','Sala 3'),(95,102,10,'2025-08-03 09:00:00','Confirmado','Sala 4'),(96,101,17,'2025-08-03 09:30:00','Cancelado','Sala 1'),(97,107,41,'2025-08-03 10:00:00','Pendente','Sala 1'),(98,109,21,'2025-08-03 10:30:00','Cancelado','Sala 2'),(99,107,8,'2025-08-03 11:00:00','Confirmado','Sala 1'),(100,108,8,'2025-08-03 11:30:00','Confirmado','Sala 2'),(101,106,43,'2025-08-03 12:00:00','Cancelado','Sala 5'),(102,107,42,'2025-08-03 12:30:00','Confirmado','Sala 4'),(103,10,35,'2025-08-14 08:00:00','Confirmado','Sala 1'),(104,12,49,'2025-08-14 08:30:00','Pendente','Sala 3'),(105,2,37,'2025-08-14 09:00:00','Cancelado','Sala 2'),(106,3,25,'2025-08-14 09:30:00','Cancelado','Sala 4'),(107,5,7,'2025-08-14 10:00:00','Pendente','Sala 3'),(108,5,13,'2025-08-14 10:30:00','Cancelado','Sala 5'),(109,2,3,'2025-08-14 11:00:00','Confirmado','Sala 3'),(110,12,6,'2025-08-05 08:00:00','Pendente','Sala 1'),(111,19,26,'2025-08-05 08:30:00','Cancelado','Sala 1'),(112,8,22,'2025-08-05 09:00:00','Confirmado','Sala 1'),(113,12,23,'2025-08-05 09:30:00','Cancelado','Sala 2'),(114,5,17,'2025-08-05 10:00:00','Confirmado','Sala 2'),(115,16,30,'2025-08-05 10:30:00','Cancelado','Sala 5'),(116,20,21,'2025-08-05 11:00:00','Cancelado','Sala 3'),(117,3,31,'2025-08-05 11:30:00','Pendente','Sala 3'),(118,12,33,'2025-08-05 12:00:00','Confirmado','Sala 3'),(119,2,24,'2025-08-05 12:30:00','Pendente','Sala 1'),(120,19,36,'2025-08-06 08:00:00','Cancelado','Sala 1'),(121,11,39,'2025-08-06 08:30:00','Pendente','Sala 5'),(122,15,7,'2025-08-06 09:00:00','Pendente','Sala 1'),(123,8,46,'2025-08-06 09:30:00','Pendente','Sala 4'),(124,12,24,'2025-08-06 10:00:00','Pendente','Sala 4'),(125,2,51,'2025-08-06 10:30:00','Cancelado','Sala 3'),(126,4,36,'2025-08-06 11:00:00','Cancelado','Sala 4'),(127,5,22,'2025-08-06 11:30:00','Confirmado','Sala 5'),(128,13,9,'2025-08-06 12:00:00','Cancelado','Sala 1'),(129,11,9,'2025-08-06 12:30:00','Cancelado','Sala 5'),(130,17,24,'2025-08-07 08:00:00','Confirmado','Sala 3'),(131,11,50,'2025-08-07 08:30:00','Pendente','Sala 2'),(132,5,5,'2025-08-07 09:00:00','Pendente','Sala 1'),(133,11,50,'2025-08-07 09:30:00','Cancelado','Sala 2'),(134,6,45,'2025-08-07 10:00:00','Cancelado','Sala 2'),(135,12,44,'2025-08-07 10:30:00','Cancelado','Sala 2'),(136,15,15,'2025-08-07 11:00:00','Cancelado','Sala 2'),(137,12,44,'2025-08-07 11:30:00','Cancelado','Sala 4'),(138,17,34,'2025-08-07 12:00:00','Pendente','Sala 2'),(139,5,17,'2025-08-07 12:30:00','Confirmado','Sala 4'),(140,4,19,'2025-08-08 08:00:00','Confirmado','Sala 2'),(141,5,28,'2025-08-08 08:30:00','Confirmado','Sala 2'),(142,14,4,'2025-08-08 09:00:00','Pendente','Sala 5'),(143,3,24,'2025-08-08 09:30:00','Confirmado','Sala 1'),(144,5,9,'2025-08-08 10:00:00','Confirmado','Sala 3'),(145,16,29,'2025-08-08 10:30:00','Cancelado','Sala 1'),(146,9,14,'2025-08-08 11:00:00','Confirmado','Sala 5'),(147,4,50,'2025-08-08 11:30:00','Pendente','Sala 2'),(148,8,27,'2025-08-08 12:00:00','Cancelado','Sala 5'),(149,16,39,'2025-08-08 12:30:00','Cancelado','Sala 1'),(150,10,28,'2025-08-09 08:00:00','Confirmado','Sala 5'),(151,14,12,'2025-08-09 08:30:00','Cancelado','Sala 1'),(152,13,31,'2025-08-09 09:00:00','Confirmado','Sala 4'),(153,12,51,'2025-08-09 09:30:00','Confirmado','Sala 3'),(154,4,50,'2025-08-09 10:00:00','Cancelado','Sala 3'),(155,12,35,'2025-08-09 10:30:00','Pendente','Sala 2'),(156,5,5,'2025-08-09 11:00:00','Cancelado','Sala 4'),(157,7,3,'2025-08-09 11:30:00','Confirmado','Sala 1'),(158,13,35,'2025-08-09 12:00:00','Pendente','Sala 3'),(159,7,19,'2025-08-09 12:30:00','Pendente','Sala 1'),(160,14,26,'2025-08-10 08:00:00','Cancelado','Sala 4'),(161,16,45,'2025-08-10 08:30:00','Pendente','Sala 3'),(162,3,28,'2025-08-10 09:00:00','Cancelado','Sala 2'),(163,3,21,'2025-08-10 09:30:00','Cancelado','Sala 3'),(164,14,11,'2025-08-10 10:00:00','Cancelado','Sala 4'),(165,12,40,'2025-08-10 10:30:00','Pendente','Sala 3'),(166,12,33,'2025-08-10 11:00:00','Cancelado','Sala 2'),(167,20,44,'2025-08-10 11:30:00','Pendente','Sala 1'),(168,8,50,'2025-08-10 12:00:00','Cancelado','Sala 3'),(169,2,39,'2025-08-10 12:30:00','Confirmado','Sala 4'),(170,19,9,'2025-08-11 08:00:00','Cancelado','Sala 3'),(171,8,8,'2025-08-11 08:30:00','Confirmado','Sala 2'),(172,18,8,'2025-08-11 09:00:00','Pendente','Sala 3'),(173,16,13,'2025-08-11 09:30:00','Confirmado','Sala 2'),(174,6,46,'2025-08-11 10:00:00','Pendente','Sala 1'),(175,18,35,'2025-08-11 10:30:00','Pendente','Sala 3'),(176,6,51,'2025-08-11 11:00:00','Pendente','Sala 5'),(177,7,51,'2025-08-11 11:30:00','Confirmado','Sala 2'),(178,18,37,'2025-08-11 12:00:00','Pendente','Sala 4'),(179,3,20,'2025-08-11 12:30:00','Pendente','Sala 4'),(180,11,42,'2025-08-12 08:00:00','Confirmado','Sala 4'),(181,12,9,'2025-08-12 08:30:00','Cancelado','Sala 5'),(182,14,33,'2025-08-12 09:00:00','Confirmado','Sala 1'),(183,6,21,'2025-08-12 09:30:00','Cancelado','Sala 2'),(184,3,17,'2025-08-12 10:00:00','Confirmado','Sala 5'),(185,20,35,'2025-08-12 10:30:00','Confirmado','Sala 5'),(186,6,43,'2025-08-12 11:00:00','Cancelado','Sala 5'),(187,1,6,'2025-08-12 11:30:00','Confirmado','Sala 5'),(188,19,27,'2025-08-12 12:00:00','Cancelado','Sala 1'),(189,10,42,'2025-08-12 12:30:00','Pendente','Sala 4'),(190,10,30,'2025-08-13 08:00:00','Confirmado','Sala 1'),(191,14,31,'2025-08-13 08:30:00','Pendente','Sala 2'),(192,11,46,'2025-08-13 09:00:00','Pendente','Sala 3'),(193,17,36,'2025-08-13 09:30:00','Confirmado','Sala 3'),(194,4,18,'2025-08-13 10:00:00','Pendente','Sala 2'),(195,2,19,'2025-08-13 10:30:00','Pendente','Sala 5'),(196,11,37,'2025-08-13 11:00:00','Cancelado','Sala 3'),(197,16,33,'2025-08-13 11:30:00','Pendente','Sala 4'),(198,3,26,'2025-08-13 12:00:00','Cancelado','Sala 4'),(199,19,23,'2025-08-13 12:30:00','Confirmado','Sala 1'),(200,12,15,'2025-08-11 15:00:00','Confirmado','Sala 3'),(201,1,2,'2025-08-11 14:00:00','Confirmado','Sala 2');
/*!40000 ALTER TABLE `Appointment` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `trg_crear_review_automatica` AFTER INSERT ON `appointment` FOR EACH ROW BEGIN
  INSERT INTO Review (IdAppointment, Rating, Comment)
  VALUES (NEW.IdAppointment, NULL, 'Reseña pendiente');
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `AppointmentService`
--

DROP TABLE IF EXISTS `AppointmentService`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `AppointmentService` (
  `IdAppointment` int NOT NULL,
  `IdService` int NOT NULL,
  PRIMARY KEY (`IdAppointment`,`IdService`),
  KEY `IdService` (`IdService`),
  CONSTRAINT `appointmentservice_ibfk_1` FOREIGN KEY (`IdAppointment`) REFERENCES `Appointment` (`IdAppointment`),
  CONSTRAINT `appointmentservice_ibfk_2` FOREIGN KEY (`IdService`) REFERENCES `Service` (`IdService`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `AppointmentService`
--

LOCK TABLES `AppointmentService` WRITE;
/*!40000 ALTER TABLE `AppointmentService` DISABLE KEYS */;
INSERT INTO `AppointmentService` VALUES (3,1),(5,1),(9,1),(10,1),(11,1),(12,1),(13,1),(14,1),(15,1),(17,1),(19,1),(23,1),(24,1),(26,1),(27,1),(29,1),(32,1),(34,1),(36,1),(39,1),(49,1),(53,1),(57,1),(58,1),(59,1),(63,1),(71,1),(75,1),(78,1),(79,1),(83,1),(84,1),(90,1),(91,1),(95,1),(97,1),(98,1),(102,1),(106,1),(108,1),(112,1),(113,1),(114,1),(117,1),(118,1),(119,1),(121,1),(122,1),(132,1),(134,1),(139,1),(141,1),(143,1),(145,1),(147,1),(148,1),(151,1),(152,1),(154,1),(159,1),(161,1),(162,1),(164,1),(165,1),(167,1),(174,1),(176,1),(177,1),(178,1),(179,1),(186,1),(194,1),(197,1),(1,2),(4,2),(7,2),(8,2),(9,2),(10,2),(12,2),(18,2),(25,2),(29,2),(38,2),(43,2),(48,2),(52,2),(53,2),(63,2),(65,2),(72,2),(74,2),(81,2),(82,2),(86,2),(89,2),(90,2),(91,2),(92,2),(93,2),(97,2),(100,2),(101,2),(103,2),(112,2),(114,2),(120,2),(122,2),(123,2),(127,2),(130,2),(131,2),(133,2),(136,2),(142,2),(144,2),(149,2),(150,2),(155,2),(160,2),(166,2),(172,2),(178,2),(181,2),(182,2),(184,2),(185,2),(187,2),(191,2),(192,2),(195,2),(196,2),(198,2),(3,3),(4,3),(7,3),(16,3),(19,3),(24,3),(26,3),(28,3),(31,3),(32,3),(33,3),(35,3),(37,3),(39,3),(41,3),(45,3),(55,3),(56,3),(61,3),(64,3),(67,3),(68,3),(69,3),(71,3),(80,3),(83,3),(85,3),(87,3),(90,3),(91,3),(93,3),(95,3),(96,3),(98,3),(99,3),(102,3),(103,3),(105,3),(106,3),(107,3),(111,3),(124,3),(125,3),(126,3),(127,3),(135,3),(137,3),(141,3),(143,3),(151,3),(152,3),(156,3),(157,3),(159,3),(160,3),(161,3),(162,3),(169,3),(170,3),(172,3),(174,3),(177,3),(182,3),(183,3),(184,3),(192,3),(1,4),(2,4),(11,4),(12,4),(13,4),(14,4),(16,4),(17,4),(18,4),(19,4),(21,4),(29,4),(30,4),(33,4),(34,4),(40,4),(41,4),(44,4),(49,4),(51,4),(53,4),(55,4),(57,4),(58,4),(59,4),(60,4),(63,4),(65,4),(67,4),(68,4),(72,4),(73,4),(74,4),(75,4),(76,4),(80,4),(82,4),(85,4),(94,4),(95,4),(97,4),(98,4),(100,4),(102,4),(104,4),(109,4),(110,4),(116,4),(118,4),(119,4),(128,4),(133,4),(134,4),(136,4),(137,4),(140,4),(142,4),(146,4),(155,4),(161,4),(163,4),(164,4),(165,4),(168,4),(169,4),(171,4),(172,4),(173,4),(179,4),(190,4),(193,4),(197,4),(199,4),(2,5),(5,5),(6,5),(14,5),(17,5),(22,5),(24,5),(27,5),(28,5),(35,5),(39,5),(42,5),(44,5),(46,5),(50,5),(54,5),(57,5),(66,5),(68,5),(69,5),(81,5),(88,5),(89,5),(100,5),(101,5),(105,5),(106,5),(107,5),(108,5),(109,5),(115,5),(117,5),(119,5),(120,5),(123,5),(124,5),(126,5),(127,5),(128,5),(132,5),(133,5),(135,5),(138,5),(139,5),(140,5),(146,5),(149,5),(150,5),(151,5),(157,5),(163,5),(168,5),(171,5),(178,5),(180,5),(183,5),(185,5),(186,5),(188,5),(191,5),(199,5),(2,6),(5,6),(7,6),(8,6),(9,6),(11,6),(16,6),(20,6),(23,6),(26,6),(27,6),(28,6),(31,6),(32,6),(33,6),(37,6),(41,6),(45,6),(46,6),(47,6),(50,6),(60,6),(62,6),(64,6),(70,6),(72,6),(74,6),(75,6),(76,6),(77,6),(78,6),(81,6),(82,6),(85,6),(87,6),(96,6),(111,6),(112,6),(114,6),(115,6),(122,6),(123,6),(129,6),(130,6),(132,6),(134,6),(144,6),(146,6),(147,6),(148,6),(149,6),(153,6),(155,6),(158,6),(159,6),(162,6),(165,6),(170,6),(174,6),(175,6),(179,6),(180,6),(182,6),(185,6),(187,6),(188,6),(189,6),(195,6),(1,8);
/*!40000 ALTER TABLE `AppointmentService` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `trg_log_servicio_agregado` AFTER INSERT ON `appointmentservice` FOR EACH ROW BEGIN
  INSERT INTO Review (IdAppointment, Rating, Comment)
  VALUES (NEW.IdAppointment, NULL, 'Servicio añadido al turno');
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `Client`
--

DROP TABLE IF EXISTS `Client`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Client` (
  `IdClient` int NOT NULL AUTO_INCREMENT,
  `FirstName` varchar(50) DEFAULT NULL,
  `LastName` varchar(50) DEFAULT NULL,
  `CPF` varchar(20) DEFAULT NULL,
  `Email` varchar(100) DEFAULT NULL,
  `Address` varchar(255) DEFAULT NULL,
  `City` varchar(50) DEFAULT NULL,
  `Password` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`IdClient`)
) ENGINE=InnoDB AUTO_INCREMENT=111 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Client`
--

LOCK TABLES `Client` WRITE;
/*!40000 ALTER TABLE `Client` DISABLE KEYS */;
INSERT INTO `Client` VALUES (1,'Bruna','Maia','123.456.789-00','bruna@email.com','Rua das Flores, 123','São Paulo','senha123'),(2,'Carla','Oliveira','987.654.321-00','carla@email.com','Av. Brasil, 45','Rio de Janeiro','senha456'),(3,'Luiza','Ramos','987.654.178-00','luiza@hotmail.com','Av. Brasil, 45','Rio de Janeiro','hellooo456'),(4,'Victoria','Dias','108.765.178-00','vika@hotmail.com','Av. Paraiba, 99','Porto Alegre','helloworld'),(5,'Ana','Maria','789.765.178-22','ana@hotmail.com','Av. Buenos Aires, 908','Novo Hamburgo','aninha123'),(6,'Clara','Gomes','731.908.624-78','clara.gomes@gmail.com','Largo de Monteiro, 9','Jesus da Serra','V2Z8l1YM'),(7,'Julia','Rocha','869.740.135-66','julia.rocha@uol.com.br','Rua de Monteiro, 38','Pinto','W8ABdwWH'),(8,'Maysa','Vieira','429.760.185-02','maysa.vieira@hotmail.com','Trevo de Mendes, 200','Ferreira','PdUc3xYs'),(9,'Ana Julia','Caldeira','276.381.950-86','ana julia.caldeira@yahoo.com.br','Largo de Monteiro, 62','Lopes','GF3ONdFr'),(10,'Sophie','da Cruz','789.326.041-69','sophie.da cruz@bol.com.br','Favela Moraes, 1','Sales do Amparo','qQs4RaOZ'),(11,'Ana Julia','Nogueira','874.695.032-00','ana julia.nogueira@uol.com.br','Sítio Thomas da Conceição, 99','Santos do Norte','inW90BeJ'),(12,'Lívia','Silva','874.302.965-56','lívia.silva@uol.com.br','Vila Lorena Araújo, 474','Rocha','imNoF2Qu'),(13,'Brenda','Oliveira','367.850.124-90','brenda.oliveira@bol.com.br','Recanto de Souza, 35','Teixeira de Mendes','lid8LBFv'),(14,'Gabrielly','Rocha','584.207.316-17','gabrielly.rocha@hotmail.com','Lago Cardoso, 57','da Rosa de da Paz','8IcaFfrd'),(15,'Helena','Ribeiro','120.493.657-99','helena.ribeiro@yahoo.com.br','Via Cauã Carvalho, 138','Peixoto','mBks2BIm'),(16,'Melissa','Viana','872.643.905-00','melissa.viana@yahoo.com.br','Quadra de Fernandes, 60','da Mota da Serra','pV59U8mF'),(17,'Lavínia','Fogaça','540.296.178-67','lavínia.fogaça@uol.com.br','Passarela Santos, 51','das Neves de Goiás','S2NPukne'),(18,'Marcela','Moreira','190.645.827-85','marcela.moreira@hotmail.com','Praia de Correia, 89','Silva','7ZSbSoiO'),(19,'Amanda','Pereira','510.736.284-26','amanda.pereira@hotmail.com','Via de Peixoto, 86','Nascimento de Minas','r7zO8yEu'),(20,'Maria Alice','Nascimento','397.216.540-43','maria alice.nascimento@gmail.com','Pátio de Aragão, 23','Azevedo','h3j7Tvr3'),(21,'Maria Julia','Martins','342.581.967-46','maria julia.martins@gmail.com','Estação de Pereira, 670','Souza Alegre','6BNEDreS'),(22,'Joana','Farias','435.708.269-29','joana.farias@gmail.com','Viela Kamilly Barbosa, 4','Rocha','x0w37KjF'),(23,'Stephany','Gomes','675.298.310-03','stephany.gomes@ig.com.br','Favela Vicente Lopes, 40','Aragão','ZP9K4RUs'),(24,'Rebeca','Rodrigues','725.164.308-17','rebeca.rodrigues@bol.com.br','Viaduto Barros','Oliveira','29DS3dUh'),(25,'Alana','Aragão','849.073.162-40','alana.aragão@bol.com.br','Estrada Souza, 55','Cardoso da Praia','6hIp4zOs'),(46,'Maysa','Alves','217.639.045-80','maysa.alves@hotmail.com','Travessa de Ribeiro, 20','Viana Verde','0C0ooFkY'),(47,'Vitória','Cardoso','850.731.642-53','vitória.cardoso@yahoo.com.br','Ladeira de Porto','Dias de Moraes','Ba8lIMnG'),(48,'Isabelly','Cavalcanti','104.325.867-17','isabelly.cavalcanti@hotmail.com','Sítio Giovanna Silva, 11','Moraes','bK8CO5tu'),(49,'Bárbara','Cunha','498.310.562-05','bárbara.cunha@uol.com.br','Campo Thiago Fernandes, 47','Cavalcanti de Cunha','Kc4KAmry'),(50,'Maria','da Paz','752.398.640-47','maria.da paz@yahoo.com.br','Passarela Thomas Correia, 939','Vieira','wC0Xoqnf'),(51,'Eloah','da Costa','691.348.527-19','eloah.da costa@bol.com.br','Vila Esther Cardoso','Farias','b5dFuKn6'),(52,'Maitê','Silveira','837.295.140-32','maitê.silveira@uol.com.br','Pátio Davi Luiz Correia','Monteiro','4KL6io42'),(53,'Melissa','Cavalcanti','239.417.850-79','melissa.cavalcanti@uol.com.br','Estação Pinto, 40','Pereira de Nogueira','C0o3WsBg'),(54,'Natália','Rodrigues','856.437.012-35','natália.rodrigues@uol.com.br','Viela Jesus, 391','Costa de Goiás','N84aDQUf'),(55,'Beatriz','da Mata','570.628.349-47','beatriz.da mata@uol.com.br','Via de Sales, 77','Rodrigues de da Cunha','n12DSmZa'),(56,'Stephany','Viana','580.693.147-10','stephany.viana@ig.com.br','Feira de Jesus, 8','Monteiro de Minas','7DjDryQc'),(57,'Maria Alice','Freitas','982.756.431-55','maria alice.freitas@bol.com.br','Conjunto Oliveira, 5','Costela','J3qOEdwN'),(58,'Olivia','Moura','795.408.321-79','olivia.moura@gmail.com','Passarela de da Rosa, 83','Martins da Mata','5Rstl2cp'),(59,'Laura','Ramos','063.512.879-95','laura.ramos@ig.com.br','Chácara Vinicius da Cunha, 7','Dias das Pedras','0T1Eg0Wd'),(60,'Ana Julia','Dias','618.025.497-49','ana julia.dias@hotmail.com','Distrito de Campos, 390','Monteiro de da Rosa','gr2NktNx'),(61,'Emilly','Cardoso','384.650.279-00','emilly.cardoso@ig.com.br','Via Calebe Duarte, 26','Sales','t9CJNqQq'),(62,'Alexia','Campos','043.967.281-31','alexia.campos@uol.com.br','Chácara Luiza Teixeira, 592','Lima','19KQlegJ'),(63,'Elisa','Carvalho','617.490.235-80','elisa.carvalho@gmail.com','Conjunto de Alves','Sales','5iA7mQql'),(64,'Emanuelly','Souza','149.368.207-50','emanuelly.souza@bol.com.br','Esplanada Luiz Gustavo Cavalcanti, 913','Barbosa','TN90rHbj'),(65,'Elisa','Peixoto','541.820.639-70','elisa.peixoto@bol.com.br','Campo Bianca Gomes','Martins de Minas','8IOaFMyz'),(66,'Júlia','Araújo','385.760.241-44','júlia.araújo@ig.com.br','Colônia Juan Souza, 86','da Conceição','v4ChNyb5'),(67,'Maria Sophia','Caldeira','623.895.741-73','maria sophia.caldeira@yahoo.com.br','Fazenda Davi Lucas da Paz, 29','Cavalcanti','27MOoSq5'),(68,'Giovanna','da Conceição','135.840.297-32','giovanna.da conceição@gmail.com','Sítio Rafaela Vieira, 81','Cunha','1A8pbdda'),(69,'Ana Clara','da Paz','721.680.493-78','ana clara.da paz@hotmail.com','Passarela Cecília Araújo, 36','da Rosa da Serra','s24FIPo3'),(70,'Kamilly','da Paz','830.952.641-51','kamilly.da paz@yahoo.com.br','Largo de Nogueira, 12','das Neves do Sul','4WlBy6zG'),(71,'Isabella','da Luz','235.679.041-16','isabella.da luz@bol.com.br','Travessa da Mota, 58','Rodrigues','0DC0ub8i'),(72,'Maria Sophia','da Conceição','185.023.697-68','maria sophia.da conceição@yahoo.com.br','Praça Rodrigues, 92','das Neves Verde','2IM0hjql'),(73,'Mariana','das Neves','917.820.635-95','mariana.das neves@hotmail.com','Viaduto Melo, 50','Farias','m12RQLis'),(74,'Luana','das Neves','271.609.584-11','luana.das neves@gmail.com','Esplanada Vitor Gabriel da Cruz','Vieira','zth1eKt3'),(75,'Pietra','Vieira','849.210.756-11','pietra.vieira@hotmail.com','Aeroporto Ana Clara Carvalho','Rocha do Oeste','A1AqJOge'),(76,'Isadora','Nascimento','527.083.416-26','isadora.nascimento@yahoo.com.br','Distrito Castro, 6','Dias da Prata','0MqTsT4t'),(77,'Sophia','Porto','293.615.047-70','sophia.porto@ig.com.br','Vereda da Conceição, 245','Nogueira','K8MsmcrQ'),(78,'Ana Lívia','Castro','485.326.971-19','ana lívia.castro@gmail.com','Passarela Gustavo Henrique Nunes, 7','Duarte do Norte','1o7HIh6l'),(79,'Stephany','Martins','461.738.529-00','stephany.martins@bol.com.br','Avenida Eduarda da Cruz, 5','Cunha do Galho','B9pFSuAf'),(80,'Nina','Araújo','357.491.826-73','nina.araújo@yahoo.com.br','Vila Diego Gomes, 7','da Cruz','9eYGP1mg'),(81,'Melissa','da Luz','903.246.517-16','melissa.da luz@yahoo.com.br','Favela Bianca Jesus, 296','Silva','aH5RuHKH'),(82,'Manuela','Duarte','065.719.382-86','manuela.duarte@uol.com.br','Área Isis da Mota, 93','Moraes de Santos','s46FGvlB'),(83,'Isabella','das Neves','465.289.710-30','isabella.das neves@uol.com.br','Trecho de Cardoso','da Mota de Santos','WP19zVzm'),(84,'Raquel','da Mata','175.892.036-02','raquel.da mata@yahoo.com.br','Travessa da Cruz, 31','Pereira das Flores','6XjPtmW1'),(85,'Gabriela','Costela','164.905.283-98','gabriela.costela@ig.com.br','Rua de Mendes, 62','Moraes de da Mota','2DzDZVmi'),(86,'Stella','Teixeira','908.576.423-83','stella.teixeira@uol.com.br','Condomínio Gabriela Fernandes, 42','Jesus','f6bVp6id'),(87,'Maria','da Paz','483.257.609-74','maria.da paz@bol.com.br','Vila Rocha, 13','Carvalho','1wm4Sudv'),(88,'Ana Luiza','da Luz','045.672.389-74','ana luiza.da luz@gmail.com','Aeroporto Cunha, 65','Fogaça de Carvalho','5KfpgTQs'),(89,'Bruna','Cavalcanti','678.143.250-80','bruna.cavalcanti@ig.com.br','Conjunto de Rocha, 71','Barbosa de Campos','04WUiDks'),(90,'Luana','Monteiro','620.751.349-52','luana.monteiro@gmail.com','Largo Lucca Melo, 90','Vieira','6MZ5UJhk'),(91,'Júlia','Azevedo','890.674.235-56','júlia.azevedo@ig.com.br','Loteamento Thomas Barros, 67','Moreira de Porto','e01dnXDy'),(92,'Ana Lívia','Fernandes','938.071.564-10','ana lívia.fernandes@gmail.com','Área Luana Costa, 97','Sales','30QTVvxZ'),(93,'Mirella','Martins','869.451.273-46','mirella.martins@yahoo.com.br','Conjunto Oliveira, 984','Vieira do Oeste','i3v8iGBt'),(94,'Maria Luiza','Peixoto','846.709.531-84','maria luiza.peixoto@hotmail.com','Avenida de da Paz','da Cruz da Mata','gIk4E6bj'),(95,'Olivia','Barros','698.752.031-30','olivia.barros@hotmail.com','Fazenda Luana Moura, 489','Gonçalves','7xj7FvG9'),(96,'Letícia','da Costa','025.496.813-98','letícia.da costa@gmail.com','Largo de Souza, 92','Santos','2NDDKMDr'),(97,'Natália','Monteiro','738.052.961-77','natália.monteiro@yahoo.com.br','Lago de Araújo, 958','Rodrigues de Barbosa','J45UlXgD'),(98,'Cecília','Teixeira','612.037.954-16','cecília.teixeira@gmail.com','Sítio Danilo Dias, 76','Nunes de Pinto','f5dcAahm'),(99,'Isis','Novaes','072.415.386-17','isis.novaes@ig.com.br','Viela Yasmin Moura, 9','Costa','aX0AsuLP'),(100,'Caroline','Correia','207.548.936-00','caroline.correia@yahoo.com.br','Trecho Rodrigues','Moraes Grande','ct3RcDjZ'),(101,'Agatha','Lopes','396.271.548-73','agatha.lopes@uol.com.br','Residencial Gabrielly Cavalcanti, 29','Cunha da Prata','344Ix1aP'),(102,'Maria Cecília','Viana','725.314.809-60','maria cecília.viana@bol.com.br','Passarela Moreira, 303','Porto','w2xjFsDU'),(103,'Daniela','Barbosa','385.967.041-75','daniela.barbosa@gmail.com','Vereda de Freitas, 99','Nascimento','6pLNuWLs'),(104,'Laura','da Cunha','314.865.790-00','laura.da cunha@ig.com.br','Loteamento Milena Correia, 87','da Cruz','6ZAd2ZhG'),(105,'Rebeca','Gomes','137.485.906-01','rebeca.gomes@bol.com.br','Estação de Silva, 62','Campos de Dias','6MrVQ95e'),(106,'Aline','Melo','710.253.489-64','aline.melo@hotmail.com','Travessa da Luz, 101','Nova Esperança','N3yLpZqw'),(107,'Fernanda','Nunes','835.964.712-39','fernanda.nunes@uol.com.br','Rua José Dias, 22','Flor do Campo','Aq78PZlj'),(108,'Helena','Moura','124.508.379-84','helena.moura@gmail.com','Alameda São Jorge, 45','Aurora do Sul','pWq93LsN'),(109,'Bianca','Ribeiro','610.839.254-78','bianca.ribeiro@ig.com.br','Estrada das Laranjeiras, 98','Santa Clara','oKi72DfE'),(110,'Bruna','Zampirom','123.456.789-00','bruna@email.com','Rua das Flores, 123','São Paulo','senha123');
/*!40000 ALTER TABLE `Client` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Manicurist`
--

DROP TABLE IF EXISTS `Manicurist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Manicurist` (
  `IdManicurist` int NOT NULL AUTO_INCREMENT,
  `FirstName` varchar(50) DEFAULT NULL,
  `LastName` varchar(50) DEFAULT NULL,
  `CPF` varchar(20) DEFAULT NULL,
  `Email` varchar(100) DEFAULT NULL,
  `Address` varchar(255) DEFAULT NULL,
  `City` varchar(50) DEFAULT NULL,
  `Password` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`IdManicurist`)
) ENGINE=InnoDB AUTO_INCREMENT=53 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Manicurist`
--

LOCK TABLES `Manicurist` WRITE;
/*!40000 ALTER TABLE `Manicurist` DISABLE KEYS */;
INSERT INTO `Manicurist` VALUES (1,'Camila','Santos','321.654.987-00','camila@email.com','Rua Bela Vista, 99','Porto Alegre','senha789'),(2,'Mirella','Costela','980.653.417-48','mirella.costela@ig.com.br','Fazenda Camila Nascimento, 29','Cunha Paulista','7YbXF0h0'),(3,'Milena','da Rocha','569.013.274-80','milena.da rocha@bol.com.br','Ladeira de Novaes, 96','da Luz de Moura','F8Rhjrep'),(4,'Clara','Silva','650.137.489-84','clara.silva@bol.com.br','Campo Ferreira, 25','Nogueira','6ibTudRC'),(5,'Valentina','Silva','832.507.146-07','valentina.silva@hotmail.com','Passarela Thales Novaes','da Paz do Galho','45H0uLXw'),(6,'Maria Julia','Almeida','426.907.581-30','maria julia.almeida@yahoo.com.br','Jardim de Teixeira','Pires das Flores','FLm9tPyF'),(7,'Júlia','Moraes','890.521.674-94','júlia.moraes@ig.com.br','Campo Gabrielly da Luz, 65','Fogaça','v2XEFvEp'),(8,'Ana Vitória','Cardoso','708.632.415-90','ana vitória.cardoso@uol.com.br','Ladeira de Novaes, 39','Souza','6LrPS7rJ'),(9,'Maria Luiza','Castro','594.172.638-46','maria luiza.castro@bol.com.br','Estação Cecília Pereira, 66','Nunes Paulista','7ZF6GEQs'),(10,'Camila','Peixoto','725.638.490-47','camila.peixoto@uol.com.br','Esplanada de Caldeira','Fernandes','RK7UdF17'),(11,'Isabella','Martins','879.034.216-03','isabella.martins@hotmail.com','Pátio Lorena Nunes, 2','Mendes','ei3OtmKk'),(12,'Carolina','Aragão','234.560.178-71','carolina.aragão@gmail.com','Recanto Vieira','Araújo','66Q5vOEy'),(13,'Alícia','Moraes','578.642.309-38','alícia.moraes@bol.com.br','Vereda Rafaela Pinto, 684','Viana de Dias','1GI0OqLj'),(14,'Alana','Pinto','430.921.856-33','alana.pinto@uol.com.br','Via Nogueira, 53','Pereira','n3QGyWGB'),(15,'Ana Sophia','Ramos','974.583.160-39','ana sophia.ramos@hotmail.com','Alameda de da Mata','Gomes','4050DEmw'),(16,'Helena','Cardoso','204.638.579-92','helena.cardoso@yahoo.com.br','Aeroporto Felipe Farias, 47','da Paz','57COXw9y'),(17,'Maysa','Jesus','350.681.794-93','maysa.jesus@yahoo.com.br','Ladeira Costa','Farias do Sul','0gSlFzgK'),(18,'Pietra','Teixeira','127.984.560-02','pietra.teixeira@gmail.com','Morro Mirella Cunha, 80','Gonçalves de Viana','BL7HGuYs'),(19,'Emanuella','Viana','570.694.328-10','emanuella.viana@gmail.com','Vale Lucca Martins, 9','da Mota do Galho','7HYr5e2w'),(20,'Ana Lívia','Rodrigues','310.459.628-05','ana lívia.rodrigues@gmail.com','Trevo Cardoso, 4','Cardoso de Rezende','k0oLrcWj'),(21,'Manuela','Castro','136.974.520-61','manuela.castro@bol.com.br','Pátio de Cavalcanti, 757','da Cunha','VeX2vRmz'),(22,'Maria Fernanda','Viana','364.295.708-00','maria fernanda.viana@yahoo.com.br','Rua Cunha, 50','da Rosa','og5YAy92'),(23,'Isabelly','Farias','348.079.126-31','isabelly.farias@ig.com.br','Estação Carolina Castro, 740','Caldeira','5rrELbnm'),(24,'Marcela','Barbosa','582.741.903-60','marcela.barbosa@uol.com.br','Travessa de Santos, 4','Gonçalves das Flores','5Z2E5Vlk'),(25,'Luiza','Novaes','938.102.765-02','luiza.novaes@gmail.com','Praça Thomas Monteiro, 65','Lima','2LctvEg9'),(26,'Mariane','da Conceição','405.782.316-62','mariane.da conceição@yahoo.com.br','Setor de da Rosa, 98','Vieira do Amparo','9fNuXF3e'),(27,'Milena','Alves','164.582.039-42','milena.alves@ig.com.br','Parque Silva, 6','Teixeira de Carvalho','2Yi2GqUk'),(28,'Eduarda','Santos','409.387.256-29','eduarda.santos@yahoo.com.br','Conjunto de Carvalho, 48','Duarte Verde','uK2CNXjr'),(29,'Stella','da Conceição','925.047.631-07','stella.da conceição@hotmail.com','Largo Oliveira, 84','da Costa do Oeste','11EbbaEf'),(30,'Lívia','Ribeiro','526.371.408-44','lívia.ribeiro@gmail.com','Ladeira Oliveira, 43','da Luz','7TtQmbpi'),(31,'Lavínia','Ramos','036.594.827-65','lavínia.ramos@hotmail.com','Passarela Otávio Gomes, 72','Barros do Galho','2iOmwh8u'),(32,'Laís','da Paz','714.258.036-44','laís.da paz@ig.com.br','Núcleo de Cardoso, 368','Vieira das Flores','uZ09YBif'),(33,'Ana Vitória','Costela','304.895.726-00','ana vitória.costela@bol.com.br','Favela Ribeiro, 86','Almeida','c3p3Ri2q'),(34,'Ana Beatriz','Cavalcanti','628.574.139-55','ana beatriz.cavalcanti@gmail.com','Largo Vicente Nascimento','Pereira','T8rKCDCj'),(35,'Lara','Lopes','485.197.326-82','lara.lopes@uol.com.br','Vale Dias, 13','Araújo','7qnUzKYd'),(36,'Eloah','Campos','495.607.213-99','eloah.campos@ig.com.br','Alameda de da Luz, 65','Ribeiro de Azevedo','2tXKPekp'),(37,'Cecília','Melo','512.706.349-25','cecília.melo@bol.com.br','Estação Juliana Correia, 15','Oliveira de Minas','7wHI6mml'),(38,'Caroline','Mendes','784.621.053-07','caroline.mendes@hotmail.com','Quadra Nogueira, 510','Carvalho','6lk15ODb'),(39,'Natália','Costa','428.705.931-04','natália.costa@bol.com.br','Distrito Mariane Gomes, 232','Mendes da Prata','1u3N7Bhe'),(40,'Helena','da Paz','817.490.365-84','helena.da paz@yahoo.com.br','Quadra de Ribeiro, 33','Moreira das Flores','Kr2UWvTq'),(41,'Maitê','Cavalcanti','615.470.238-80','maitê.cavalcanti@uol.com.br','Feira Lavínia Farias, 727','Mendes','Q3ZLhWfs'),(42,'Maria Eduarda','Castro','724.309.581-04','maria eduarda.castro@yahoo.com.br','Viaduto de Caldeira, 4','Almeida','SIcR2Ven'),(43,'Ana Laura','Alves','986.712.053-12','ana laura.alves@gmail.com','Morro de Correia, 40','Novaes Alegre','6DM8mqMP'),(44,'Ana Julia','Aragão','276.108.349-04','ana julia.aragão@bol.com.br','Rodovia Ana Carolina Vieira, 66','da Mata','Z6EVPTMa'),(45,'Maria Luiza','Rocha','124.370.569-80','maria luiza.rocha@ig.com.br','Viaduto de Cardoso, 194','Teixeira do Sul','7ZKLOIAq'),(46,'Maria Luiza','da Cunha','904.657.812-76','maria luiza.da cunha@gmail.com','Campo de Freitas, 52','Fernandes do Sul','1TeMAfEB'),(47,'Bianca','da Costa','768.153.904-20','bianca.da costa@gmail.com','Condomínio Calebe da Cunha, 86','Ribeiro da Prata','3M8r0vRg'),(48,'Larissa','Fogaça','548.602.319-70','larissa.fogaça@ig.com.br','Estrada de Silveira, 62','Alves','61AnHB15'),(49,'Isis','da Mata','124.830.596-51','isis.da mata@ig.com.br','Jardim Igor Cardoso, 70','Melo do Norte','R4vIBU8f'),(50,'Raquel','Ferreira','109.842.367-40','raquel.ferreira@hotmail.com','Aeroporto de Azevedo, 34','Novaes Verde','w0RqmQXw'),(51,'Helena','Jesus','601.249.875-67','helena.jesus@ig.com.br','Sítio Barbosa, 53','Cavalcanti da Praia','7B21CEOu'),(52,'Camila','Santos','321.654.987-00','camila@email.com','Rua Bela Vista, 99','São Paulo','senha789');
/*!40000 ALTER TABLE `Manicurist` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Review`
--

DROP TABLE IF EXISTS `Review`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Review` (
  `IdReview` int NOT NULL AUTO_INCREMENT,
  `IdAppointment` int DEFAULT NULL,
  `Rating` int DEFAULT NULL,
  `Comment` text,
  PRIMARY KEY (`IdReview`),
  KEY `IdAppointment` (`IdAppointment`),
  CONSTRAINT `review_ibfk_1` FOREIGN KEY (`IdAppointment`) REFERENCES `Appointment` (`IdAppointment`)
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Review`
--

LOCK TABLES `Review` WRITE;
/*!40000 ALTER TABLE `Review` DISABLE KEYS */;
INSERT INTO `Review` VALUES (1,1,4,'Voltaria com certeza!'),(2,2,5,'Profissional incrível!'),(3,5,5,'Adorei o resultado final!'),(4,9,4,'Profissional incrível!'),(5,10,5,'Adorei o resultado final!'),(6,11,4,'Muito satisfeita com o serviço!'),(7,18,5,'Atendimento excelente!'),(8,21,4,'Atendimento excelente!'),(9,26,5,'Adorei o resultado final!'),(10,28,5,'Voltaria com certeza!'),(11,29,5,'Atendimento excelente!'),(12,32,4,'Muito satisfeita com o serviço!'),(13,37,4,'Adorei o resultado final!'),(14,40,5,'Profissional incrível!'),(15,42,4,'Voltaria com certeza!'),(16,43,4,'Muito satisfeita com o serviço!'),(17,44,4,'Voltaria com certeza!'),(18,45,5,'Profissional incrível!'),(19,47,4,'Atendimento excelente!'),(20,48,5,'Voltaria com certeza!'),(21,51,4,'Muito satisfeita com o serviço!'),(22,64,5,'Atendimento excelente!'),(23,66,4,'Voltaria com certeza!'),(24,67,4,'Adorei o resultado final!'),(25,68,4,'Profissional incrível!'),(26,80,4,'Voltaria com certeza!'),(27,95,4,'Voltaria com certeza!'),(28,99,5,'Voltaria com certeza!'),(29,100,5,'Adorei o resultado final!'),(30,102,4,'Atendimento excelente!'),(31,103,5,'Atendimento excelente!'),(32,109,4,'Adorei o resultado final!'),(33,112,4,'Atendimento excelente!'),(34,114,5,'Voltaria com certeza!'),(35,118,5,'Profissional incrível!'),(36,127,4,'Profissional incrível!'),(37,130,5,'Adorei o resultado final!'),(38,139,4,'Profissional incrível!'),(39,140,5,'Adorei o resultado final!'),(40,141,4,'Voltaria com certeza!'),(41,143,5,'Atendimento excelente!'),(42,144,5,'Muito satisfeita com o serviço!'),(43,146,4,'Atendimento excelente!'),(44,150,5,'Muito satisfeita com o serviço!'),(45,152,5,'Muito satisfeita com o serviço!'),(46,153,5,'Profissional incrível!'),(47,157,5,'Atendimento excelente!'),(48,169,4,'Atendimento excelente!'),(49,171,5,'Adorei o resultado final!'),(50,173,5,'Profissional incrível!'),(51,177,4,'Muito satisfeita com o serviço!'),(52,180,4,'Muito satisfeita com o serviço!'),(53,182,5,'Adorei o resultado final!'),(54,184,5,'Atendimento excelente!'),(55,185,4,'Atendimento excelente!'),(56,187,5,'Voltaria com certeza!'),(57,190,4,'Voltaria com certeza!'),(58,193,5,'Adorei o resultado final!'),(59,199,4,'Profissional incrível!'),(60,1,5,'Servicio excelente, muy puntual y profesional.');
/*!40000 ALTER TABLE `Review` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Service`
--

DROP TABLE IF EXISTS `Service`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Service` (
  `IdService` int NOT NULL AUTO_INCREMENT,
  `Name` varchar(100) DEFAULT NULL,
  `Description` text,
  `Price` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`IdService`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Service`
--

LOCK TABLES `Service` WRITE;
/*!40000 ALTER TABLE `Service` DISABLE KEYS */;
INSERT INTO `Service` VALUES (1,'EsmaltadoGel','unha gel',95.00),(2,'Manicure','Fazer maos',60.00),(3,'Pedicuria','Fazer Pés',48.00),(4,'Alongamento','unha alongada',150.00),(5,'MaoePe','mao e pé',100.00),(6,'Spa','Spa Pés',250.00),(7,'Podologia',NULL,160.00),(8,'Podología','Tratamiento especializado para pies',160.00);
/*!40000 ALTER TABLE `Service` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `vw_clientes_com_agendamentos`
--

DROP TABLE IF EXISTS `vw_clientes_com_agendamentos`;
/*!50001 DROP VIEW IF EXISTS `vw_clientes_com_agendamentos`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vw_clientes_com_agendamentos` AS SELECT 
 1 AS `FirstName`,
 1 AS `LastName`,
 1 AS `DateTime`,
 1 AS `Service`*/;
SET character_set_client = @saved_cs_client;

--
-- Final view structure for view `vw_clientes_com_agendamentos`
--

/*!50001 DROP VIEW IF EXISTS `vw_clientes_com_agendamentos`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_clientes_com_agendamentos` AS select `c`.`FirstName` AS `FirstName`,`c`.`LastName` AS `LastName`,`a`.`DateTime` AS `DateTime`,`s`.`Name` AS `Service` from (((`client` `c` join `appointment` `a` on((`c`.`IdClient` = `a`.`IdClient`))) join `appointmentservice` `aps` on((`a`.`IdAppointment` = `aps`.`IdAppointment`))) join `service` `s` on((`aps`.`IdService` = `s`.`IdService`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-07-28 18:25:47
