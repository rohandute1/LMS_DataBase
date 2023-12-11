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
-- Table structure for table `fellowshipcandidate`
--

DROP TABLE IF EXISTS `fellowshipcandidate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `fellowshipcandidate` (
  `Id` int DEFAULT NULL,
  `CIC_ID` varchar(50) NOT NULL,
  `FirstName` varchar(255) DEFAULT NULL,
  `MiddleName` varchar(255) DEFAULT NULL,
  `LastName` varchar(255) DEFAULT NULL,
  `EmailId` varchar(255) DEFAULT NULL,
  `HiredCity` varchar(255) DEFAULT NULL,
  `Degree` varchar(255) DEFAULT NULL,
  `HiredDate` date DEFAULT NULL,
  `MobileNumber` varchar(20) DEFAULT NULL,
  `PermanentPincode` varchar(10) DEFAULT NULL,
  `HiredLab` varchar(255) DEFAULT NULL,
  `Attitude` varchar(255) DEFAULT NULL,
  `CommunicationRemark` varchar(255) DEFAULT NULL,
  `KnowledgeRemark` varchar(255) DEFAULT NULL,
  `AggregateRemark` varchar(255) DEFAULT NULL,
  `CreatorStamp` datetime DEFAULT NULL,
  `CreatorUser` int DEFAULT NULL,
  `BirthDate` date DEFAULT NULL,
  `IsBirthDateVerified` tinyint(1) DEFAULT NULL,
  `ParentName` varchar(255) DEFAULT NULL,
  `ParentOccupation` varchar(255) DEFAULT NULL,
  `ParentsMobileNumber` varchar(20) DEFAULT NULL,
  `ParentsAnnualSalary` decimal(10,2) DEFAULT NULL,
  `LocalAddress` varchar(255) DEFAULT NULL,
  `PermanentAddress` varchar(255) DEFAULT NULL,
  `PhotoPath` varchar(255) DEFAULT NULL,
  `JoiningDate` date DEFAULT NULL,
  `CandidateStatus` varchar(50) DEFAULT NULL,
  `PersonalInformation` text,
  `BankInformation` text,
  `EducationalInformation` text,
  `DocumentStatus` text,
  `Remark` text,
  PRIMARY KEY (`CIC_ID`),
  KEY `Id` (`Id`),
  CONSTRAINT `fellowshipcandidate_ibfk_1` FOREIGN KEY (`Id`) REFERENCES `hiredcandidate` (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fellowshipcandidate`
--

LOCK TABLES `fellowshipcandidate` WRITE;
/*!40000 ALTER TABLE `fellowshipcandidate` DISABLE KEYS */;
INSERT INTO `fellowshipcandidate` VALUES (1,'CIC00001','Amit','Rajat','Sharma','amit.sharma@gmail.com','Mumbai','B.Tech','2023-11-15','9876543210','400001','MumbaiLab','Positive','Excellent','Strong technical knowledge','Top performer','2023-12-10 15:59:44',NULL,'1999-04-10',1,'Rajat','Govt Servent','789654123',350000.00,'Dadar','Dadar-Mumbai','/.amit.jpg','2023-11-15','Active','B.Tech in Mechanical','Bank of Maharashtra','Passing year 2021','Done','Good'),(2,'CIC00002','Deepika','Rajesh','Chauhan','deepika.chauhan@gmail.com','Pune','MCA','2023-11-20','9876543220','110001','PuneLab','Positive','Good','In-depth domain knowledge','Highly skilled','2023-12-10 15:59:53',NULL,'2000-01-05',1,'Rajesh','Engineer','987456321',800000.00,'Sambhajinagar','Sambhajinagar','/.abc.jpg','2023-11-20','Active','Na','Bank of Badoda','Passing year 2022','Done','Good'),(3,'CIC00003','Rahul','Arjun','Verma','rahul.verma@yahoo.com','Mumbai','B.E','2023-11-25','9876543230','226001','MumbaiLab','Adaptable','Good','Solid technical understanding','Top performer','2023-12-10 16:00:04',NULL,'1998-08-17',1,'Arjun','Farmer','879456123',250000.00,'Nashik','Nashik','/.rahul.jpg','2023-11-25','Active','BE in E&TC','Central Bank Of India','Passing year 2020','Done','Good'),(4,'CIC00004','Sakshi','Rohit','Mishra','sakshi.mishra@hotmail.com','Bangalore','B.Sc','2023-12-01','9876543240','560001','BangloreLab','Energetic','Good','Sound technical skills','Highly skilled','2023-12-10 16:00:10',NULL,'2000-02-14',1,'Rohit','Pvt.Servent','978456123',500000.00,'Banglore','Banglore','/.akshi.jpg','2023-12-01','Active','B.Sc','Bank of Maharashtra','Passing year 2023','Done','Good'),(5,'CIC00005','Vijay','Amit','Negi','vijay.negi@gmail.com','Pune','M.Tech','2023-12-05','9876543250','600001','PuneLab','Proactive','Excellent','Extensive knowledge in the field','Outstanding','2023-12-10 16:00:16',NULL,'1997-10-14',1,'Amit','Business','9865321470',750000.00,'Pune','Pune','/.vijay.jpg','2023-12-05','Active','M.Tech','HDFC','Passing year 2023','Done','Good'),(6,'CIC00006','Shweta','Ankit','Yadav','shweta.yadav@gmail.com','Bangalore','BCA','2023-12-10','9876543260','500001','BangloreLab','Positive','Excellent','Good','Highly skilled','2023-12-10 16:00:22',NULL,'2001-07-14',1,'Ankit','Engineer','7895462330',600000.00,'Banglore','Banglore','/.shweta.jpg','2023-12-10','Active','BCA','Bank of Maharashtra','Passing year 2022','Done','Good'),(7,'CIC00007','Rajesh','Rohit','Gupta','rajesh.gupta@gmail.com','Bangalore','B.E','2023-12-15','9876543270','700001','BangloreLab','Flexible','Average','Good','Highly skilled','2023-12-10 16:00:27',NULL,'1999-05-24',1,'Rohit','Pvt.Servent','8889452136',3750000.00,'Banglore','Banglore','/.raiesh.jpg','2023-12-15','Active','BE in CS','ICICI','Passing year 2021','Done','Good');
/*!40000 ALTER TABLE `fellowshipcandidate` ENABLE KEYS */;
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
