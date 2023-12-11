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
-- Table structure for table `hiredcandidate`
--

DROP TABLE IF EXISTS `hiredcandidate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hiredcandidate` (
  `Id` int NOT NULL AUTO_INCREMENT,
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
  `Status` varchar(50) DEFAULT NULL,
  `CreatorStamp` datetime DEFAULT NULL,
  `CreatorUser` int DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hiredcandidate`
--

LOCK TABLES `hiredcandidate` WRITE;
/*!40000 ALTER TABLE `hiredcandidate` DISABLE KEYS */;
INSERT INTO `hiredcandidate` VALUES (1,'Amit','Rajat','Sharma','amit.sharma@gmail.com','Mumbai','B.Tech','2023-11-15','9876543210','400001','MumbaiLab','Positive','Excellent','Strong technical knowledge','Top performer','Hired','2023-12-08 12:00:00',NULL),(2,'Deepika','Rajesh','Chauhan','deepika.chauhan@gmail.com','Pune','MCA','2023-11-20','9876543220','110001','PuneLab','Positive','Good','In-depth domain knowledge','Highly skilled','Hired','2023-12-08 12:15:00',NULL),(3,'Rahul','Arjun','Verma','rahul.verma@yahoo.com','Mumbai','B.E','2023-11-25','9876543230','226001','MumbaiLab','Adaptable','Good','Solid technical understanding','Top performer','Hired','2023-12-08 12:30:00',NULL),(4,'Sakshi','Rohit','Mishra','sakshi.mishra@hotmail.com','Bangalore','B.Sc','2023-12-01','9876543240','560001','BangloreLab','Energetic','Good','Sound technical skills','Highly skilled','Hired','2023-12-08 12:45:00',NULL),(5,'Vijay','Amit','Negi','vijay.negi@gmail.com','Pune','M.Tech','2023-12-05','9876543250','600001','PuneLab','Proactive','Excellent','Extensive knowledge in the field','Outstanding','Hired','2023-12-08 13:00:00',NULL),(6,'Shweta','Ankit','Yadav','shweta.yadav@gmail.com','Bangalore','BCA','2023-12-10','9876543260','500001','BangloreLab','Positive','Excellent','Good','Highly skilled','Hired','2023-12-08 13:15:00',NULL),(7,'Rajesh','Rohit','Gupta','rajesh.gupta@gmail.com','Bangalore','B.E','2023-12-15','9876543270','700001','BangloreLab','Flexible','Average','Good','Highly skilled','Hired','2023-12-08 13:30:00',NULL),(8,'Anjali','Rahul','Singh','anjali.singh@gmail.com','Pune','MCA','2023-12-20','9876543280','411001','Lab8','Positive','Good','Poor','Not UptoMark','Not-Hired','2023-12-08 13:45:00',NULL),(9,'Rajat','Amit','Yadav','rajat.shah@gmail.com','Mumbai','B.Tech','2023-12-25','9876543290','380001','Lab9','Adaptable','Excellent','Poor','Not UptoMark','Not-Hired','2023-12-08 14:00:00',NULL),(10,'Ananya','Vikas','Sharma','ananya.sharma@gmail.com','Pune','MCA','2023-12-30','9876543300','302001','Lab10','Optimistic','Average','Poor','Not UptoMark','Not-Hired','2023-12-08 14:15:00',NULL),(11,'Rohit','Vijay','Yadav','rohit.yadav@gmail.com','Bangalore','B.Sc','2024-01-05','9876543310','452001','Lab11','Energetic','Good','Poor','Top-notch','Not UptoMark','2023-12-08 14:30:00',NULL),(12,'Divya','Amit','Mishra','divya.mishra@gmail.com','Mumbai','BCA','2024-01-10','9876543320','462001','Lab12','Proactive','Excellent','Poor','Not UptoMark','Not-Hired','2023-12-08 14:45:00',NULL),(13,'Swati','Arjun','Gupta','swati.gupta@gmail.com','Bangalore','B.Tech','2024-01-15','9876543330','440001','Lab13','Assertive','Good','Poor','Not UptoMark','Not-Hired','2023-12-08 15:00:00',NULL),(14,'Arjun','Rajat','Sharma','arjun.sharma@gmail.com','Pune','M.Tech','2024-01-20','9876543340','641001','Lab14','Flexible','Excellent','Poor','Not UptoMark','Not-Hired','2023-12-08 15:15:00',NULL),(15,'Pooja','Rajesh','Verma','pooja.verma@gmail.com','Pune','BCA','2024-01-25','9876543350','530001','Lab15','Positive','Excellent','Poor','Not UptoMark','Not-Hired','2023-12-08 15:30:00',NULL),(16,'Vikas','Vijay','Singh','vikas.singh@gmail.com','Bangalore','B.E','2024-01-30','9876543360','800001','Lab16','Adaptable','Average','Poor','Not UptoMark','Not-Hired','2023-12-08 15:45:00',NULL),(17,'Sneha','Ankit','Verma','sneha.verma@gmail.com','Mumbai','MCA','2024-02-05','9876543370','695001','Lab17','Positive','Good','Poor','Not UptoMark','Not-Hired','2023-12-08 16:00:00',NULL),(18,'Rohit','Rahul','Yadav','rohit.yadav@gmail.com','Bangalore','B.Sc','2024-02-10','9876543380','682001','Lab18','Energetic','Excellent','Poor','Not UptoMark','Not-Hired','2023-12-08 16:15:00',NULL),(19,'Neetu','Rahul','Sharma','neetu.sharma@gmail.com','Mumbai','B.Tech','2024-02-15','9876543390','781001','Lab19','Proactive','Good','Poor','Not UptoMark','Not-Hired','2023-12-08 16:30:00',NULL),(20,'Ankit','Rajat','Yadav','ankit.yadav@gmail.com','Pune','BCA','2024-02-20','9876543400','793001','Lab20','Positive','Excellent','Poor','Not UptoMark','Not-Hired','2023-12-08 16:45:00',NULL);
/*!40000 ALTER TABLE `hiredcandidate` ENABLE KEYS */;
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
