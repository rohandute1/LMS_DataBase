CREATE DATABASE  IF NOT EXISTS `learner_management_system_db` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `learner_management_system_db`;
-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: localhost    Database: learner_management_system_db
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
-- Table structure for table `mentorideationmap`
--

DROP TABLE IF EXISTS `mentorideationmap`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mentorideationmap` (
  `Id` int NOT NULL AUTO_INCREMENT,
  `ParentMentorId` int DEFAULT NULL,
  `Mentor_Id` int DEFAULT NULL,
  `Status` varchar(50) DEFAULT NULL,
  `CreatorStamp` datetime DEFAULT NULL,
  `CreatorUser` int DEFAULT NULL,
  PRIMARY KEY (`Id`),
  KEY `ParentMentorId` (`ParentMentorId`),
  KEY `Mentor_Id` (`Mentor_Id`),
  CONSTRAINT `mentorideationmap_ibfk_1` FOREIGN KEY (`ParentMentorId`) REFERENCES `mentor` (`Id`),
  CONSTRAINT `mentorideationmap_ibfk_2` FOREIGN KEY (`Mentor_Id`) REFERENCES `mentor` (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mentorideationmap`
--

LOCK TABLES `mentorideationmap` WRITE;
/*!40000 ALTER TABLE `mentorideationmap` DISABLE KEYS */;
INSERT INTO `mentorideationmap` VALUES (1,1,2,'Active','2023-12-10 18:29:15',NULL),(2,1,3,'Active','2023-12-10 18:29:15',NULL),(3,5,7,'Active','2023-12-10 18:29:15',NULL);
/*!40000 ALTER TABLE `mentorideationmap` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-12-11 12:39:13