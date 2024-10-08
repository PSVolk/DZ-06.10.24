-- MySQL dump 10.13  Distrib 8.0.19, for Win64 (x86_64)
--
-- Host: localhost    Database: academy
-- ------------------------------------------------------
-- Server version	8.0.39

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
-- Table structure for table `curators`
--

DROP TABLE IF EXISTS `curators`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `curators` (
  `Id` int NOT NULL AUTO_INCREMENT,
  `Name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `Surname` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  PRIMARY KEY (`Id`),
  CONSTRAINT `curators_chk_1` CHECK ((`Name` <> _utf8mb4'')),
  CONSTRAINT `curators_chk_2` CHECK ((`Surname` <> _utf8mb4''))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `curators`
--

LOCK TABLES `curators` WRITE;
/*!40000 ALTER TABLE `curators` DISABLE KEYS */;
/*!40000 ALTER TABLE `curators` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `departaments`
--

DROP TABLE IF EXISTS `departaments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `departaments` (
  `Id` int NOT NULL AUTO_INCREMENT,
  `Financing` decimal(10,2) NOT NULL DEFAULT '0.00',
  `Name` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `Building` enum('1','2','3','4','5') NOT NULL,
  `FacultyID` int NOT NULL,
  PRIMARY KEY (`Id`),
  UNIQUE KEY `Name` (`Name`),
  CONSTRAINT `fk_departament_faculties` FOREIGN KEY (`Id`) REFERENCES `faculties` (`Id`),
  CONSTRAINT `departaments_chk_1` CHECK ((`Financing` >= 0))
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `departaments`
--

LOCK TABLES `departaments` WRITE;
/*!40000 ALTER TABLE `departaments` DISABLE KEYS */;
INSERT INTO `departaments` VALUES (1,1000000.00,'Р‘СѓСЂРµРЅРёРµ','1',0),(2,1500000.00,'Р Р°Р·СЂР°Р±РѕС‚РєР° Рё СЌРєСЃРїР»СѓР°С‚Р°С†РёСЏ РјРµСЃС‚РѕСЂРѕР¶РґРµРЅРёР№','1',0),(3,2000000.00,'Р Р°Р·СЂР°Р±РѕС‚РєР° РїСЂРѕРіСЂР°РјРјРЅРѕРіРѕ РѕР±РµСЃРїРµС‡РµРЅРёСЏ','1',0),(4,2500000.00,'РњРѕРґРµР»РёСЂРѕРІР°РЅРёРµ РїСЂРѕС†РµСЃСЃРѕРІ (Р»Р°Р±РѕСЂР°С‚РѕСЂРёСЏ)','1',0);
/*!40000 ALTER TABLE `departaments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `faculties`
--

DROP TABLE IF EXISTS `faculties`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `faculties` (
  `Id` int NOT NULL AUTO_INCREMENT,
  `Dean` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `Name` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  PRIMARY KEY (`Id`),
  UNIQUE KEY `Dean` (`Dean`),
  UNIQUE KEY `Name` (`Name`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `faculties`
--

LOCK TABLES `faculties` WRITE;
/*!40000 ALTER TABLE `faculties` DISABLE KEYS */;
INSERT INTO `faculties` VALUES (1,'РђС…РјРµС‚С€РёРЅ РР»СЊС€Р°С‚','Р“РѕСЂРЅРѕ-РЅРµС„С‚СЏРЅРѕР№ С„Р°РєСѓР»СЊС‚РµС‚'),(2,'Р’РµРЅРµСЂР° Р¤Р°РјРёР»СЊРµРІР°','РўРµС…РЅРѕР»РѕРіРёС‡РµСЃРєРёР№ С„Р°РєСѓР»СЊС‚РµС‚'),(3,'Р›СЋС‚РѕРІ Р•РіРѕСЂ','Р¤Р°РєСѓР»СЊС‚РµС‚ С†РёС„РѕСЂРѕРІС‹С… СЃРёСЃС‚РµРј'),(4,'РќР°СЃС‚СЏ РРІР»РµРµРІР°','Р¤Р°РєСѓР»СЊС‚РµС‚ С‚СЂСѓР±РѕРїСЂРѕРІРѕРґРЅРѕРіРѕ С‚СЂР°РЅСЃРїРѕСЂС‚Р°'),(5,'Р’РѕР»РєРѕРІ РџР°РІРµР»','РђСЂС…РёС‚РµРєС‚СѓСЂРЅРѕ-СЃС‚СЂРѕРёС‚РµР»СЊРЅС‹Р№ С„Р°РєСѓР»СЊС‚РµС‚'),(6,'Р’Р°Р»РёС‚РѕРІ Р СѓСЃР»Р°РЅ','Р¤Р°РєСѓР»СЊС‚РµС‚ Р·Р°РѕС‡РЅРѕРіРѕ РѕР±СѓС‡РµРЅРёСЏ');
/*!40000 ALTER TABLE `faculties` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `groups1`
--

DROP TABLE IF EXISTS `groups1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `groups1` (
  `Id` int NOT NULL AUTO_INCREMENT,
  `Name` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `Rating` enum('0','1','2','3','4','5') NOT NULL,
  `Year` enum('0','1','2','3','4','5') NOT NULL,
  `departamentID` enum('1','2','3','4','5') NOT NULL,
  PRIMARY KEY (`Id`),
  UNIQUE KEY `Drilling` (`Name`)
) ENGINE=InnoDB AUTO_INCREMENT=1007 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `groups1`
--

LOCK TABLES `groups1` WRITE;
/*!40000 ALTER TABLE `groups1` DISABLE KEYS */;
INSERT INTO `groups1` VALUES (1001,'Р“Р‘-01-03','5','5','1'),(1002,'Р“Р‘-02-03','4','4','1'),(1003,'Р“Р‘-03-03','3','3','1'),(1004,'Р“Р‘-04-03','2','2','1'),(1005,'Р“Р‘-05-03','1','1','1'),(1006,'Р“Р‘-05-02','1','1','1');
/*!40000 ALTER TABLE `groups1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `groupscurators`
--

DROP TABLE IF EXISTS `groupscurators`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `groupscurators` (
  `Id` int NOT NULL AUTO_INCREMENT,
  `CuratorId` int NOT NULL,
  `GroupId` int NOT NULL,
  PRIMARY KEY (`Id`),
  KEY `fk_curator` (`CuratorId`),
  KEY `fk_group` (`GroupId`),
  CONSTRAINT `fk_curator` FOREIGN KEY (`CuratorId`) REFERENCES `curators` (`Id`),
  CONSTRAINT `fk_group` FOREIGN KEY (`GroupId`) REFERENCES `groups1` (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `groupscurators`
--

LOCK TABLES `groupscurators` WRITE;
/*!40000 ALTER TABLE `groupscurators` DISABLE KEYS */;
/*!40000 ALTER TABLE `groupscurators` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `groupslectures`
--

DROP TABLE IF EXISTS `groupslectures`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `groupslectures` (
  `Id` int NOT NULL AUTO_INCREMENT,
  `GroupId` int NOT NULL,
  `LectureId` int NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `groupslectures`
--

LOCK TABLES `groupslectures` WRITE;
/*!40000 ALTER TABLE `groupslectures` DISABLE KEYS */;
/*!40000 ALTER TABLE `groupslectures` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lectures`
--

DROP TABLE IF EXISTS `lectures`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `lectures` (
  `Id` int NOT NULL AUTO_INCREMENT,
  `Date` date NOT NULL,
  `SubjectId` int NOT NULL,
  `TeacherId` int NOT NULL,
  PRIMARY KEY (`Id`),
  CONSTRAINT `lectures_chk_1` CHECK ((`Date` <= _utf8mb4'2023-01-01'))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lectures`
--

LOCK TABLES `lectures` WRITE;
/*!40000 ALTER TABLE `lectures` DISABLE KEYS */;
/*!40000 ALTER TABLE `lectures` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `teachers`
--

DROP TABLE IF EXISTS `teachers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `teachers` (
  `Id` int NOT NULL AUTO_INCREMENT,
  `EmploymentDate` date NOT NULL,
  `IsAssistant` bit(1) NOT NULL DEFAULT b'0',
  `IsProfessor` bit(1) NOT NULL DEFAULT b'0',
  `Name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `Position` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `Premium` decimal(10,2) NOT NULL DEFAULT '0.00',
  `Salary` decimal(10,2) NOT NULL DEFAULT '0.00',
  `Surname` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  PRIMARY KEY (`Id`),
  CONSTRAINT `teachers_chk_1` CHECK ((`EmploymentDate` >= _utf8mb4'1990-01-01')),
  CONSTRAINT `teachers_chk_2` CHECK ((`Name` <> _utf8mb4'')),
  CONSTRAINT `teachers_chk_3` CHECK ((`Position` <> _utf8mb4'')),
  CONSTRAINT `teachers_chk_4` CHECK ((`Premium` >= 0)),
  CONSTRAINT `teachers_chk_5` CHECK ((`Salary` >= 0)),
  CONSTRAINT `teachers_chk_6` CHECK ((`Surname` <> _utf8mb4''))
) ENGINE=InnoDB AUTO_INCREMENT=10007 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `teachers`
--

LOCK TABLES `teachers` WRITE;
/*!40000 ALTER TABLE `teachers` DISABLE KEYS */;
INSERT INTO `teachers` VALUES (10001,'2015-01-20',_binary '\0',_binary '','РР»СЊС€Р°С‚','РџСЂРµРїРѕРґР°РІР°С‚РµР»СЊ',100000.00,200000.00,'РђС…РјРµС‚С€РёРЅ'),(10002,'2015-02-20',_binary '',_binary '\0','Р•РіРѕСЂ','РџСЂРµРїРѕРґР°РІР°С‚РµР»СЊ',150000.00,210000.00,'Р›СЋС‚РѕРІ'),(10003,'2016-03-20',_binary '',_binary '\0','РќР°СЃС‚СЏ','РџСЂРµРїРѕРґР°РІР°С‚РµР»СЊ',160000.00,220000.00,'РРІР»РµРІР°'),(10004,'2020-04-20',_binary '',_binary '\0','Р’РµРЅРµСЂР°','РџСЂРµРїРѕРґР°РІР°С‚РµР»СЊ',100000.00,150000.00,'Р“Р°Р»РёРµРІР°'),(10005,'2025-05-20',_binary '\0',_binary '','РџР°РІРµР»','РџСЂРµРїРѕРґР°РІР°С‚РµР»СЊ',100000.00,200000.00,'Р’РѕР»РєРѕРІ'),(10006,'2020-09-20',_binary '',_binary '\0','Р СѓСЃР»Р°РЅ','РџСЂРµРїРѕРґР°РІР°С‚РµР»СЊ',110000.00,205000.00,'Р’Р°Р»РёС‚РѕРІ');
/*!40000 ALTER TABLE `teachers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'academy'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-10-03 21:24:51
