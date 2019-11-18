-- MySQL dump 10.13  Distrib 8.0.18, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: codecamp4_university
-- ------------------------------------------------------
-- Server version	8.0.18

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
-- Table structure for table `address`
--

DROP TABLE IF EXISTS `address`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `address` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `number` varchar(45) DEFAULT NULL,
  `street` varchar(45) DEFAULT NULL,
  `sub_district` varchar(45) DEFAULT NULL,
  `district` varchar(45) DEFAULT NULL,
  `province` varchar(45) DEFAULT NULL,
  `zip_code` int(11) DEFAULT NULL,
  `student_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `student_address_id_idx` (`student_id`),
  CONSTRAINT `student_address_id` FOREIGN KEY (`student_id`) REFERENCES `student` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `address`
--

LOCK TABLES `address` WRITE;
/*!40000 ALTER TABLE `address` DISABLE KEYS */;
INSERT INTO `address` VALUES (1,'265','Street A','Sub district a','district A','Bangkok',10450,102452),(2,'175/4','Street B','Sub district b','district A','Bangkok',10450,102456),(3,'212','Street C','Sub district c','district A','Bangkok',10450,106523),(4,'21/7','Street D','Sub district d','district A','Bangkok',10450,102546),(5,'64/5','Street E','Sub district e','district A','Bangkok',10450,102335),(6,'11/23','Street G','Sub district f','district A','Bangkok',10450,150547),(7,'154','Street F','Sub district a','district B','Bangkok',10450,458195),(8,'9850','Street I','Sub district b','district B','Bangkok',10452,785412),(9,'21246','Street J','Sub district c','district B','Bangkok',10452,120456),(10,'514','Street K','Sub district d','district B','Bangkok',10450,104254),(11,'2179','Street M','Sub district e','district B','Bangkok',10452,102451),(12,'4165','Street N','Sub district f','district B','Bangkok',10450,156863),(13,'1857','Street L','Sub district g','district B','Bangkok',10453,122486);
/*!40000 ALTER TABLE `address` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `course`
--

DROP TABLE IF EXISTS `course`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `course` (
  `id` int(11) NOT NULL,
  `name` varchar(45) NOT NULL,
  `credit` int(11) NOT NULL,
  `faculty_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `faculty_id_course_idx` (`faculty_id`),
  CONSTRAINT `faculty_id_course` FOREIGN KEY (`faculty_id`) REFERENCES `faculty` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `course`
--

LOCK TABLES `course` WRITE;
/*!40000 ALTER TABLE `course` DISABLE KEYS */;
INSERT INTO `course` VALUES (202330,'Subject X',3,28),(202331,'Subject W',1,28),(202333,'Subject U',3,27),(202334,'Subject T',3,27),(202336,'Subject R',3,26),(202337,'Subject Q',3,26),(202339,'Subject O',3,25),(202340,'Subject N',3,25),(202342,'Subject L',3,24),(202343,'Subject K',1,24),(202345,'Subject I',3,22),(202346,'Subject H',3,22),(202350,'Subject D',3,21),(202351,'Subject C',3,21),(302329,'Subject Y',3,28),(302348,'Subject F',3,22),(302349,'Subject E',3,21),(501532,'Subject V',3,27),(501535,'Subject S',1,26),(501538,'Subject P',3,26),(501541,'Subject M',1,24),(501544,'Subject J',3,22),(501547,'Subject G',3,22),(501552,'Subject B',1,21),(501553,'Subject A',1,21);
/*!40000 ALTER TABLE `course` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `course_instructor`
--

DROP TABLE IF EXISTS `course_instructor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `course_instructor` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `instructor_id` int(11) NOT NULL,
  `course_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `course_id_idx` (`course_id`),
  KEY `instructor_id_idx` (`instructor_id`),
  CONSTRAINT `course_id_2` FOREIGN KEY (`course_id`) REFERENCES `course` (`id`),
  CONSTRAINT `instructor_id_2` FOREIGN KEY (`instructor_id`) REFERENCES `instructor` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `course_instructor`
--

LOCK TABLES `course_instructor` WRITE;
/*!40000 ALTER TABLE `course_instructor` DISABLE KEYS */;
INSERT INTO `course_instructor` VALUES (1,345,501553),(2,345,501552),(3,346,202351),(4,346,202350),(5,346,302349),(6,347,302348),(7,347,501547),(8,347,202346),(9,348,202345),(10,348,501544),(11,348,202343),(12,348,202342),(13,348,501541),(14,349,202340),(15,349,202339),(16,349,501538),(17,349,202337),(18,349,202336),(19,349,501535),(20,350,202334),(21,350,202333),(22,350,501532);
/*!40000 ALTER TABLE `course_instructor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `course_student`
--

DROP TABLE IF EXISTS `course_student`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `course_student` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `student_id` int(11) NOT NULL,
  `course_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `course_id_idx` (`course_id`),
  KEY `student_id_idx` (`student_id`),
  CONSTRAINT `course_id` FOREIGN KEY (`course_id`) REFERENCES `course` (`id`),
  CONSTRAINT `student_id` FOREIGN KEY (`student_id`) REFERENCES `student` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=63 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `course_student`
--

LOCK TABLES `course_student` WRITE;
/*!40000 ALTER TABLE `course_student` DISABLE KEYS */;
INSERT INTO `course_student` VALUES (1,102452,501553),(2,102452,501552),(3,102452,202351),(4,102456,202350),(5,102456,302349),(6,102456,302348),(7,106523,501547),(8,106523,202346),(9,106523,202345),(10,106523,501544),(11,102546,202343),(12,102546,202342),(13,102546,501541),(14,102546,202340),(15,102335,202339),(16,102335,501538),(17,102335,202337),(18,102335,501535),(19,150547,202334),(20,150547,202333),(21,150547,501532),(22,150547,202351),(23,458195,202350),(24,458195,302349),(25,458195,302348),(26,458195,501547),(27,458195,202346),(28,785412,202345),(29,785412,501544),(30,785412,202343),(31,785412,202342),(32,120456,501541),(33,120456,202340),(34,120456,202339),(35,120456,501538),(36,120456,202337),(37,104254,202336),(38,104254,501535),(39,104254,202334),(40,104254,202333),(41,102451,501532),(42,102451,501552),(43,102451,202351),(44,102451,202350),(45,102451,302349),(46,102451,302348),(47,156863,501547),(48,156863,202346),(49,156863,202345),(50,156863,501544),(51,156863,202343),(52,156863,202342),(53,156863,501541),(54,122486,202340),(55,122486,202339),(56,122486,501538),(57,122486,202337),(58,122486,202336),(59,122486,501535),(60,122486,202334),(61,122486,202333),(62,122486,501532);
/*!40000 ALTER TABLE `course_student` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `email`
--

DROP TABLE IF EXISTS `email`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `email` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(45) NOT NULL,
  `student_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `studen_id_email_idx` (`student_id`),
  CONSTRAINT `studen_id_email` FOREIGN KEY (`student_id`) REFERENCES `student` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `email`
--

LOCK TABLES `email` WRITE;
/*!40000 ALTER TABLE `email` DISABLE KEYS */;
INSERT INTO `email` VALUES (1,'alosal@gormail.com',102456),(2,'TheStraightGamer@gmail.com',106523),(3,'TheRambunctiousGamer@gmail.com',102546),(4,'TheUglyGamer@gmail.com',102335),(5,'TheInnocentGamer@gmail.com',150547),(6,'TheHurriedGamer@gmail.com',458195),(7,'SDoeol@gmail.com',785412),(8,'SOPEK@gmail.com',120456),(9,'asdsa@gmail.com',104254),(10,'asdsaeed@gmail.com',102451),(11,'oasdl@gmail.com',156863),(12,'sapdlkapsd@gmail.com',122486);
/*!40000 ALTER TABLE `email` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `faculty`
--

DROP TABLE IF EXISTS `faculty`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `faculty` (
  `id` int(11) NOT NULL,
  `name` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `faculty`
--

LOCK TABLES `faculty` WRITE;
/*!40000 ALTER TABLE `faculty` DISABLE KEYS */;
INSERT INTO `faculty` VALUES (21,'Faculty of Engineering'),(22,'Faculty of Communication Arts'),(23,'Faculty of Accouting'),(24,'Faculty of Education'),(25,'Faculty of Population Studies'),(26,'Faculty of Medicine'),(27,'Faculty of Psychology'),(28,'Faculty of Law');
/*!40000 ALTER TABLE `faculty` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `instructor`
--

DROP TABLE IF EXISTS `instructor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `instructor` (
  `id` int(11) NOT NULL,
  `name_en` varchar(45) NOT NULL,
  `name_th` varchar(45) NOT NULL,
  `academic_rank` varchar(45) NOT NULL,
  `expertise` varchar(45) NOT NULL,
  `degree` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `instructor`
--

LOCK TABLES `instructor` WRITE;
/*!40000 ALTER TABLE `instructor` DISABLE KEYS */;
INSERT INTO `instructor` VALUES (345,'Kru Oak','ครูโอ๊ค','computer engineering','programming','Bachelor Degree'),(346,'Kru Tum','ครูคั้ม','computer science','frontend','Bachelor Degree'),(347,'Kru Ah','ครูอ่า','computer science','algorithm','Bachelor Degree'),(348,'Kru Sonter','ครูซันเต๋อ','computer engineering','database','Bachelor Degree'),(349,'Kru Job','ครูจ๊อบ','bluefire engineering','base learning','Bachelor Degree'),(350,'Kru Boom','ครูบูม','Art and Design Engineering','UX/UI','Bachelor Degree');
/*!40000 ALTER TABLE `instructor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `phone_number`
--

DROP TABLE IF EXISTS `phone_number`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `phone_number` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `number` varchar(10) NOT NULL,
  `student_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `phone_number_idx` (`student_id`),
  CONSTRAINT `phone_number` FOREIGN KEY (`student_id`) REFERENCES `student` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phone_number`
--

LOCK TABLES `phone_number` WRITE;
/*!40000 ALTER TABLE `phone_number` DISABLE KEYS */;
INSERT INTO `phone_number` VALUES (1,'0214536875',102456),(2,'9599250986',106523),(3,'0179562017',102546),(4,'1876202471',102335),(5,'8704832566',150547),(6,'7365667899',458195),(7,'3177798794',785412),(8,'5805757427',120456),(9,'4785249472',104254),(10,'2731503493',102451),(11,'5365784653',156863),(12,'5365784678',122486);
/*!40000 ALTER TABLE `phone_number` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `student`
--

DROP TABLE IF EXISTS `student`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `student` (
  `id` int(11) NOT NULL,
  `name_en` varchar(45) NOT NULL,
  `name_th` varchar(45) NOT NULL,
  `line_id` varchar(20) DEFAULT NULL,
  `faculty_id` int(11) NOT NULL,
  `instructor_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `faculty_id_idx` (`faculty_id`),
  KEY `instructor_id_idx` (`instructor_id`),
  CONSTRAINT `faculty_id` FOREIGN KEY (`faculty_id`) REFERENCES `faculty` (`id`),
  CONSTRAINT `instructor_id` FOREIGN KEY (`instructor_id`) REFERENCES `instructor` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student`
--

LOCK TABLES `student` WRITE;
/*!40000 ALTER TABLE `student` DISABLE KEYS */;
INSERT INTO `student` VALUES (102335,'Mr. E','นาย ดอ','101154',21,346),(102451,'Mr. K','นาย บอ','1011654',27,349),(102452,'Mr. A','นาย กอ','10112',21,345),(102456,'Mr. B','นาย ขอ','10113',21,345),(102546,'Mr. D','นาย จอ','101185',21,345),(104254,'Mr. J','นายยอ','101154',26,348),(106523,'Mr. C','นาย คอ','10114',21,345),(120456,'Mr. I','นาย ผอ','101154',25,347),(122486,'Mr. M','นาย ฮอ','10161',28,350),(150547,'Mr. F','นาย รอ','101154',21,346),(156863,'Mr. L','นาย มอ','10161',27,350),(458195,'Mr. G','นาย ออ','101546',22,347),(785412,'Mr. H','นาย ฟอ','101154',23,347);
/*!40000 ALTER TABLE `student` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-11-04 15:10:08
