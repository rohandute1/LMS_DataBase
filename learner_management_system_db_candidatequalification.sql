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
-- Table structure for table `candidatequalification`
--

DROP TABLE IF EXISTS `candidatequalification`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `candidatequalification` (
  `Id` int NOT NULL AUTO_INCREMENT,
  `CandidateId` varchar(255) DEFAULT NULL,
  `Diploma` varchar(255) DEFAULT NULL,
  `DegreeName` varchar(255) DEFAULT NULL,
  `IsDegreeNameVerified` tinyint(1) DEFAULT NULL,
  `EmployeeDiscipline` varchar(255) DEFAULT NULL,
  `IsEmployeeDisciplineVerified` tinyint(1) DEFAULT NULL,
  `PassingYear` int DEFAULT NULL,
  `IsPassingYearVerified` tinyint(1) DEFAULT NULL,
  `AggrPer` decimal(5,2) DEFAULT NULL,
  `IsFinalYearPerVerified` tinyint(1) DEFAULT NULL,
  `FinalYearPer` decimal(5,2) DEFAULT NULL,
  `TrainingInstitute` varchar(255) DEFAULT NULL,
  `IsTrainingInstituteVerified` tinyint(1) DEFAULT NULL,
  `TrainingDurationMonth` int DEFAULT NULL,
  `IsTrainingDurationMonthVerified` tinyint(1) DEFAULT NULL,
  `OtherTraining` varchar(255) DEFAULT NULL,
  `IsOtherTrainingVerified` tinyint(1) DEFAULT NULL,
  `CreatorStamp` datetime DEFAULT NULL,
  `CreatorUser` int DEFAULT NULL,
  PRIMARY KEY (`Id`),
  KEY `CandidateId` (`CandidateId`),
  CONSTRAINT `candidatequalification_ibfk_1` FOREIGN KEY (`CandidateId`) REFERENCES `fellowshipcandidate` (`CIC_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `candidatequalification`
--

LOCK TABLES `candidatequalification` WRITE;
/*!40000 ALTER TABLE `candidatequalification` DISABLE KEYS */;
INSERT INTO `candidatequalification` VALUES (1,'CIC00001','Diploma In Mech','B.Tech',1,'Mechanical Industry',1,2021,1,75.50,1,78.00,'RSCOE',1,12,1,'No',1,'2023-12-10 16:40:15',NULL),(2,'CIC00002','12th CS','MCA',1,'IT Field',1,2022,1,68.25,1,87.21,'MIT',1,24,1,'Yes',1,'2023-12-10 16:46:29',NULL),(3,'CIC00003','Diploma In E&TC','BE',1,'No Experience',1,2020,1,69.50,1,75.40,'SKH',1,36,1,'No',1,'2023-12-10 16:50:54',NULL),(4,'CIC00004','12th','B.Sc',1,'Fresher',1,2023,1,68.50,1,75.00,'KJC',1,24,1,'No',1,'2023-12-10 17:01:36',NULL),(5,'CIC00005','BE','M.Tech',1,'Fresher',1,2023,1,77.50,1,84.00,'DYPCOE',1,24,1,'No',1,'2023-12-10 17:03:51',NULL),(6,'CIC00006','12th Comp','BCA',1,'Fresher',1,2023,1,80.50,1,88.00,'AMC',1,24,1,'No',1,'2023-12-10 17:06:15',NULL),(7,'CIC00007','Dipolma in CS','BE',1,'IT Company',1,2021,1,68.50,1,75.00,'RVCE',1,36,1,'No',1,'2023-12-10 17:08:15',NULL);
/*!40000 ALTER TABLE `candidatequalification` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-12-11 12:39:14
