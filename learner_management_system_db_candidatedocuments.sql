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
-- Table structure for table `candidatedocuments`
--

DROP TABLE IF EXISTS `candidatedocuments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `candidatedocuments` (
  `Id` int NOT NULL AUTO_INCREMENT,
  `CandidateId` varchar(50) DEFAULT NULL,
  `DocType` varchar(50) DEFAULT NULL,
  `DocPath` varchar(255) DEFAULT NULL,
  `Status` varchar(50) DEFAULT NULL,
  `CreatorStamp` datetime DEFAULT NULL,
  `CreatorUser` int DEFAULT NULL,
  PRIMARY KEY (`Id`),
  KEY `CandidateId` (`CandidateId`),
  CONSTRAINT `candidatedocuments_ibfk_1` FOREIGN KEY (`CandidateId`) REFERENCES `fellowshipcandidate` (`CIC_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `candidatedocuments`
--

LOCK TABLES `candidatedocuments` WRITE;
/*!40000 ALTER TABLE `candidatedocuments` DISABLE KEYS */;
INSERT INTO `candidatedocuments` VALUES (1,'CIC00001','Pancard','/docs/resume_amit_sharma.pdf','Received','2023-12-10 17:14:35',NULL),(2,'CIC00002','AdharCard','/docs/resume_deepika_chauhan.pdf','Received','2023-12-10 17:19:29',NULL),(3,'CIC00003','Pancard','/docs/resume_rahul_verma.pdf','Received','2023-12-10 17:19:34',NULL),(4,'CIC00004','Adharcard','/docs/resume_sakshi_mishra.pdf','Pending','2023-12-10 17:19:38',NULL),(5,'CIC00005','Pancard','/docs/resume_vijay_negi.pdf','Received','2023-12-10 17:19:41',NULL),(6,'CIC00006','AdharCard','/docs/resume_shweta_yadav.pdf','Received','2023-12-10 17:19:44',NULL),(7,'CIC00007','Voting Id','/docs/resume_rajesh_gupta.pdf','Received','2023-12-10 17:19:47',NULL);
/*!40000 ALTER TABLE `candidatedocuments` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-12-11 12:39:16
