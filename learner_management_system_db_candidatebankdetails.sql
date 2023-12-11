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
-- Table structure for table `candidatebankdetails`
--

DROP TABLE IF EXISTS `candidatebankdetails`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `candidatebankdetails` (
  `Id` int NOT NULL AUTO_INCREMENT,
  `CandidateId` varchar(255) DEFAULT NULL,
  `Name` varchar(255) DEFAULT NULL,
  `AccountNumber` varchar(20) DEFAULT NULL,
  `IsAccountNumVerified` tinyint(1) DEFAULT NULL,
  `IfscCode` varchar(20) DEFAULT NULL,
  `IsIfscCodeVerified` tinyint(1) DEFAULT NULL,
  `PanNumber` varchar(20) DEFAULT NULL,
  `IsPanNumberVerified` tinyint(1) DEFAULT NULL,
  `AadhaarNum` varchar(20) DEFAULT NULL,
  `IsAadhaarNumVerified` tinyint(1) DEFAULT NULL,
  `CreatorStamp` datetime DEFAULT NULL,
  `CreatorUser` int DEFAULT NULL,
  PRIMARY KEY (`Id`),
  KEY `CandidateId` (`CandidateId`),
  CONSTRAINT `candidatebankdetails_ibfk_1` FOREIGN KEY (`CandidateId`) REFERENCES `fellowshipcandidate` (`CIC_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `candidatebankdetails`
--

LOCK TABLES `candidatebankdetails` WRITE;
/*!40000 ALTER TABLE `candidatebankdetails` DISABLE KEYS */;
INSERT INTO `candidatebankdetails` VALUES (1,'CIC00001','Amit Sharma','123456789012',1,'ABC123456',1,'ABCDE1234F',1,'987654321012',1,'2023-12-10 16:14:50',NULL),(2,'CIC00002','Deepika Chauhan','4445852569',1,'ABC857056',1,'ABCDE4444F',1,'987654321147',1,'2023-12-10 16:17:04',NULL),(3,'CIC00003','Rahul Verma','9632584710',1,'POC873456',1,'ABCDE3364F',1,'777654321012',1,'2023-12-10 16:19:41',NULL),(4,'CIC00004','Sakshi Mishra','555456789012',1,'AWU123456',1,'ABCD259234C',1,'875654321012',1,'2023-12-10 16:19:47',NULL),(5,'CIC00005','Vijay Negi','898956789012',1,'CBI13556',1,'PWCDE1234F',1,'854794321012',1,'2023-12-10 16:24:17',NULL),(6,'CIC00006','Shweta Yadav','784756789012',1,'GEF123456',1,'QRODE1234F',1,'55854321012',1,'2023-12-10 16:24:21',NULL),(7,'CIC00007','Rajesh Gupta','145247896321',1,'CCC123456',1,'MNOP1234F',1,'658745321012',1,'2023-12-10 16:24:24',NULL);
/*!40000 ALTER TABLE `candidatebankdetails` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-12-11 12:39:12
