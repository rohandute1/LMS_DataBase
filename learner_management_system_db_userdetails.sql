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
-- Table structure for table `userdetails`
--

DROP TABLE IF EXISTS `userdetails`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `userdetails` (
  `Id` int NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `first_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `Password` varchar(255) DEFAULT NULL,
  `contact_number` varchar(20) DEFAULT NULL,
  `verified` tinyint(1) DEFAULT NULL,
  `creator_stamp` datetime DEFAULT NULL,
  `creator_user` int DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `userdetails`
--

LOCK TABLES `userdetails` WRITE;
/*!40000 ALTER TABLE `userdetails` DISABLE KEYS */;
INSERT INTO `userdetails` VALUES (1,'ganesh.bhide@gmail.com','Ganesh','Bhide','password123','9876543210',1,'2023-12-08 12:00:00',NULL),(2,'ritvik.Daitya@gmail.com','Ritvik','Daitya','securepwd456','9876543220',0,'2023-12-08 12:15:00',NULL),(3,'rahul.sharma@yahoo.com','Rahul','Sharma','strongpass789','9876543230',1,'2023-12-08 12:30:00',NULL),(4,'priya.jain@hotmail.com','Priya','Jain','safe1234','9876543240',0,'2023-12-08 12:45:00',NULL),(5,'vikram.singh@gmail.com','Vikram','Singh','secret5678','9876543250',1,'2023-12-08 13:00:00',NULL),(6,'ananya.mishra@gmail.com','Ananya','Mishra','protected4321','9876543260',1,'2023-12-08 13:15:00',NULL),(7,'suresh.kumar@gmail.com','Suresh','Kumar','confidential876','9876543270',1,'2023-12-08 13:30:00',NULL),(8,'neha.verma@gmail.com','Neha','Verma','hidden7890','9876543280',0,'2023-12-08 13:45:00',NULL),(9,'akash.shah@gmail.com','Akash','Shah','securepass123','9876543290',1,'2023-12-08 14:00:00',NULL),(10,'anika.mittal@gmail.com','Anika','Mittal','strongpwd456','9876543300',1,'2023-12-08 14:15:00',NULL),(11,'manoj.patel@gmail.com','Manoj','Patel','safe7890','9876543310',1,'2023-12-08 14:30:00',NULL),(12,'divya.singh@gmail.com','Divya','Singh','secret1234','9876543320',0,'2023-12-08 14:45:00',NULL),(13,'swati.mishra@gmail.com','Swati','Mishra','protected5678','9876543330',1,'2023-12-08 15:00:00',NULL),(14,'arjun.gupta@gmail.com','Arjun','Gupta','confidential4321','9876543340',1,'2023-12-08 15:15:00',NULL),(15,'pooja.sharma@gmail.com','Pooja','Sharma','hidden876','9876543350',1,'2023-12-08 15:30:00',NULL),(16,'vikas.yadav@gmail.com','Vikas','Yadav','securepass789','9876543360',0,'2023-12-08 15:45:00',NULL),(17,'sneha.singh@gmail.com','Sneha','Singh','strongpwd123','9876543370',1,'2023-12-08 16:00:00',NULL),(18,'rohit.malik@gmail.com','Rohit','Malik','safe4567','9876543380',1,'2023-12-08 16:15:00',NULL),(19,'neetu.verma@gmail.com','Neetu','Verma','secret8901','9876543390',1,'2023-12-08 16:30:00',NULL),(20,'ankit.agarwal@gmail.com','Ankit','Agarwal','protected2345','9876543400',0,'2023-12-08 16:45:00',NULL);
/*!40000 ALTER TABLE `userdetails` ENABLE KEYS */;
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
