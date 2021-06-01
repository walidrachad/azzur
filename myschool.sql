-- MySQL dump 10.13  Distrib 5.5.62, for linux-glibc2.12 (x86_64)
--
-- Host: localhost    Database: myschool
-- ------------------------------------------------------
-- Server version	5.5.62

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `absent`
--

DROP TABLE IF EXISTS `absent`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `absent` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `class_id` bigint(20) DEFAULT NULL,
  `data` varchar(255) DEFAULT NULL,
  `note` varchar(255) DEFAULT NULL,
  `prof_id` bigint(20) DEFAULT NULL,
  `student_id` bigint(20) DEFAULT NULL,
  `time_finish` varchar(255) DEFAULT NULL,
  `time_start` varchar(255) DEFAULT NULL,
  `unity_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `absent`
--

LOCK TABLES `absent` WRITE;
/*!40000 ALTER TABLE `absent` DISABLE KEYS */;
INSERT INTO `absent` VALUES (36,25,'12-04-2021','',NULL,165,'','',NULL),(37,25,'12-04-2021','',NULL,176,'11:00 AM','10:00 AM',1),(38,25,'13-04-2021','test',NULL,176,'','',NULL),(39,25,'13-04-2021','absence',NULL,176,'11:30 AM','10:00 AM',2),(40,25,'12-04-2021','yes',NULL,176,'10:00 AM','8:00 AM',5),(41,25,'11-04-2021','ok',NULL,176,'12:00 AM','10:00 AM',3),(42,25,'12-04-2021','ok',NULL,176,'1:00 AM','11:00 AM',8),(43,25,'28-04-2021','',21,176,'12:01','11:00',10),(44,25,'13-05-2021','',NULL,165,'','',NULL),(45,1,'14-05-2021','',NULL,182,'5:00 AM','12:00 AM',10);
/*!40000 ALTER TABLE `absent` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `admin` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `email` varchar(255) DEFAULT NULL,
  `first_name` varchar(255) DEFAULT NULL,
  `is_valid` bit(1) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `token_notification` varchar(255) DEFAULT NULL,
  `school_code` varchar(255) DEFAULT NULL,
  `role_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin`
--

LOCK TABLES `admin` WRITE;
/*!40000 ALTER TABLE `admin` DISABLE KEYS */;
INSERT INTO `admin` VALUES (1,'walidrachad@gmail.com','administration','','école','administration','administration','walidrachad','fK1vMhV1SWCTFrCbwAAKEj:APA91bFs6wHdl9QkRzOIoczMYacLZXw5t68m6Rl8RtSdN9GkWuWK9fh6sKjBZJy_NKDGtdlwKgtbjyNo1RGJYasBXEAGfvAPtXVjOHYZQrFEIHDXcaZlASYkVV_Gs6fGee5gYO6mS58F','123456789',NULL),(2,'benjrad@gmail.com','mohamed','','benjrad','benjrad-951','benjrad','','','E0000001',4);
/*!40000 ALTER TABLE `admin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `affectation_attachment`
--

DROP TABLE IF EXISTS `affectation_attachment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `affectation_attachment` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `attachment_id` bigint(20) DEFAULT NULL,
  `message_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `affectation_attachment`
--

LOCK TABLES `affectation_attachment` WRITE;
/*!40000 ALTER TABLE `affectation_attachment` DISABLE KEYS */;
/*!40000 ALTER TABLE `affectation_attachment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `affectation_event`
--

DROP TABLE IF EXISTS `affectation_event`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `affectation_event` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `class_id` bigint(20) DEFAULT NULL,
  `event_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `affectation_event`
--

LOCK TABLES `affectation_event` WRITE;
/*!40000 ALTER TABLE `affectation_event` DISABLE KEYS */;
INSERT INTO `affectation_event` VALUES (28,1,21);
/*!40000 ALTER TABLE `affectation_event` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `affectation_message_recipient`
--

DROP TABLE IF EXISTS `affectation_message_recipient`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `affectation_message_recipient` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `message_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `affectation_message_recipient`
--

LOCK TABLES `affectation_message_recipient` WRITE;
/*!40000 ALTER TABLE `affectation_message_recipient` DISABLE KEYS */;
/*!40000 ALTER TABLE `affectation_message_recipient` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `affectation_prof`
--

DROP TABLE IF EXISTS `affectation_prof`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `affectation_prof` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `prof_id` bigint(20) DEFAULT NULL,
  `unity_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `affectation_prof`
--

LOCK TABLES `affectation_prof` WRITE;
/*!40000 ALTER TABLE `affectation_prof` DISABLE KEYS */;
/*!40000 ALTER TABLE `affectation_prof` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `affectation_role`
--

DROP TABLE IF EXISTS `affectation_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `affectation_role` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `role_id` bigint(20) DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=850 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `affectation_role`
--

LOCK TABLES `affectation_role` WRITE;
/*!40000 ALTER TABLE `affectation_role` DISABLE KEYS */;
INSERT INTO `affectation_role` VALUES (824,4,6),(825,4,972),(826,1,973),(827,1,974),(828,3,975),(829,3,976),(830,3,977),(831,3,978),(832,3,979),(833,3,980),(834,3,981),(835,3,982),(836,3,983),(837,3,984),(838,3,985),(839,3,986),(840,3,987),(841,3,988),(842,3,989),(843,3,990),(844,3,991),(845,1,992),(846,2,993),(847,3,994),(848,2,995),(849,1,995);
/*!40000 ALTER TABLE `affectation_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `affictation_message`
--

DROP TABLE IF EXISTS `affictation_message`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `affictation_message` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `favorite` bit(1) DEFAULT NULL,
  `is_seen` bit(1) DEFAULT NULL,
  `message_id` bigint(20) DEFAULT NULL,
  `recipient_id` bigint(20) DEFAULT NULL,
  `recipient_role` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sender_id` bigint(20) DEFAULT NULL,
  `sender_role` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `student_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3935 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `affictation_message`
--

LOCK TABLES `affictation_message` WRITE;
/*!40000 ALTER TABLE `affictation_message` DISABLE KEYS */;
INSERT INTO `affictation_message` VALUES (3890,'\0','\0',337,165,'Student',21,'Prof',165),(3891,'\0','\0',337,166,'Student',21,'Prof',166),(3892,'\0','\0',337,167,'Student',21,'Prof',167),(3893,'\0','\0',337,168,'Student',21,'Prof',168),(3894,'\0','\0',337,169,'Student',21,'Prof',169),(3895,'\0','\0',337,170,'Student',21,'Prof',170),(3896,'\0','\0',337,171,'Student',21,'Prof',171),(3897,'\0','\0',337,172,'Student',21,'Prof',172),(3898,'\0','\0',337,173,'Student',21,'Prof',173),(3899,'\0','\0',337,174,'Student',21,'Prof',174),(3900,'\0','\0',337,175,'Student',21,'Prof',175),(3901,'\0','',337,176,'Student',21,'Prof',176),(3902,'\0','\0',337,177,'Student',21,'Prof',177),(3903,'\0','\0',337,178,'Student',21,'Prof',178),(3904,'\0','\0',337,179,'Student',21,'Prof',179),(3905,'\0','\0',337,180,'Student',21,'Prof',180),(3906,'\0','\0',337,181,'Student',21,'Prof',181),(3907,'\0','',337,12,'Parent',21,'Prof',176),(3908,'\0','',338,12,'Parent',21,'Prof',176),(3909,'\0','\0',338,165,'Student',21,'Prof',165),(3910,'\0','\0',338,166,'Student',21,'Prof',166),(3911,'\0','\0',338,167,'Student',21,'Prof',167),(3912,'\0','\0',338,168,'Student',21,'Prof',168),(3913,'\0','\0',338,169,'Student',21,'Prof',169),(3914,'\0','\0',338,170,'Student',21,'Prof',170),(3915,'\0','\0',338,171,'Student',21,'Prof',171),(3916,'\0','\0',338,172,'Student',21,'Prof',172),(3917,'\0','\0',338,173,'Student',21,'Prof',173),(3918,'\0','\0',338,174,'Student',21,'Prof',174),(3919,'\0','\0',338,175,'Student',21,'Prof',175),(3920,'\0','\0',338,176,'Student',21,'Prof',176),(3921,'\0','\0',338,177,'Student',21,'Prof',177),(3922,'\0','\0',338,178,'Student',21,'Prof',178),(3923,'\0','\0',338,179,'Student',21,'Prof',179),(3924,'\0','\0',338,180,'Student',21,'Prof',180),(3925,'\0','\0',338,181,'Student',21,'Prof',181),(3926,'','',339,13,'Parent',1,'Admin',182),(3927,'\0','',340,13,'Parent',23,'Prof',182),(3928,'\0','',340,182,'Student',23,'Prof',182),(3929,'\0','',341,13,'Parent',23,'Prof',182),(3930,'\0','',341,182,'Student',23,'Prof',182),(3931,'\0','\0',342,182,'Student',23,'Prof',182),(3932,'\0','\0',342,13,'Parent',23,'Prof',182),(3933,'\0','\0',343,13,'Parent',1,'Admin',182),(3934,'\0','\0',343,182,'Student',1,'Admin',182);
/*!40000 ALTER TABLE `affictation_message` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `attachment`
--

DROP TABLE IF EXISTS `attachment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `attachment` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `download_url` varchar(255) DEFAULT NULL,
  `message_id` bigint(20) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `size` bigint(20) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=131 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `attachment`
--

LOCK TABLES `attachment` WRITE;
/*!40000 ALTER TABLE `attachment` DISABLE KEYS */;
INSERT INTO `attachment` VALUES (129,'https://myplannif1.ritsysteme.net:5000/downloadFile/8f3f36e0-9286-4362-b3c6-8d6d911f204a1621014025076.wav',340,'1621014025076.wav',573484,'audio/*'),(130,'https://myplannif1.ritsysteme.net:5000/downloadFile/a8f54638-cb85-4720-adce-8fbe559d3a211621014034833.jpeg',341,'1621014034833.jpeg',65973,'image/*');
/*!40000 ALTER TABLE `attachment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `classe`
--

DROP TABLE IF EXISTS `classe`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `classe` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `label` varchar(255) DEFAULT NULL,
  `nivaux_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `classe`
--

LOCK TABLES `classe` WRITE;
/*!40000 ALTER TABLE `classe` DISABLE KEYS */;
INSERT INTO `classe` VALUES (1,'PS-A',5),(2,'PS-B',5),(3,'PS-C',5),(4,'MS-A',6),(5,'MS-B',6),(6,'MS-C',6),(7,'GS-A',7),(8,'GS-B',7),(9,'GS-C',7),(10,'1AEP-A',8),(11,'1AEP-B',8),(12,'1AEP-C',8),(13,'2AEP-A',9),(14,'2AEP-B',9),(15,'2AEP-C',9),(16,'3AEP-A',10),(17,'3AEP-B',10),(18,'3AEP-C',10),(19,'4AEP-A',11),(20,'4AEP-B',11),(21,'4AEP-C',11),(22,'5AEP-A',12),(23,'5AEP-B',12),(24,'5AEP-C',12),(25,'6AEP-A',13),(26,'6AEP-B',13),(27,'6AEP-C',13),(28,'1APIC-A',14),(29,'1APIC-B',14),(30,'1APIC-B',14),(31,'1APIC-C',14),(32,'2APIC-A',15),(33,'2APIC-B',15),(34,'2APIC-C',15),(35,'3APIC-A',16),(36,'3APIC-B',16),(37,'3APIC-C',16),(38,'3APIC-C',16),(39,'TC-A',17),(40,'TC-B',17),(41,'TC-C',17),(42,'1BAC-A',18),(43,'1BAC-B',18),(44,'1BAC-C',18),(45,'2BAC-A',19),(46,'2BAC-B',19),(47,'2BAC-C',19),(48,'test',20);
/*!40000 ALTER TABLE `classe` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cycle`
--

DROP TABLE IF EXISTS `cycle`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cycle` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `label` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cycle`
--

LOCK TABLES `cycle` WRITE;
/*!40000 ALTER TABLE `cycle` DISABLE KEYS */;
INSERT INTO `cycle` VALUES (1,'PRESCOLAIRE'),(2,'PREMAIRE'),(3,'COLLEGE'),(4,'LYCEE');
/*!40000 ALTER TABLE `cycle` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `days`
--

DROP TABLE IF EXISTS `days`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `days` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `day` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `days`
--

LOCK TABLES `days` WRITE;
/*!40000 ALTER TABLE `days` DISABLE KEYS */;
/*!40000 ALTER TABLE `days` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `event`
--

DROP TABLE IF EXISTS `event`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `event` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `class_id` bigint(20) DEFAULT NULL,
  `date` varchar(255) DEFAULT NULL,
  `description` text,
  `img` varchar(255) DEFAULT NULL,
  `poster_first_name` varchar(255) DEFAULT NULL,
  `poster_id` bigint(20) DEFAULT NULL,
  `poster_last_name` varchar(255) DEFAULT NULL,
  `time` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `poster_role` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `event`
--

LOCK TABLES `event` WRITE;
/*!40000 ALTER TABLE `event` DISABLE KEYS */;
INSERT INTO `event` VALUES (21,NULL,'19/05/2021','Description','','Soufiane',23,'El hmieche','17:44','Test','Prof');
/*!40000 ALTER TABLE `event` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `message`
--

DROP TABLE IF EXISTS `message`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `message` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `create_at` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `first_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_valid` bit(1) DEFAULT NULL,
  `last_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `message` text COLLATE utf8mb4_unicode_ci,
  `sender_id` bigint(20) DEFAULT NULL,
  `sender_role` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `time` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=344 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `message`
--

LOCK TABLES `message` WRITE;
/*!40000 ALTER TABLE `message` DISABLE KEYS */;
INSERT INTO `message` VALUES (337,'12/04/2021','Hassan','','Touzani','bonjour',21,'Prof','16:44','d71c4fea-cbb9-4134-be3f-56052b183a9a'),(338,'28/04/2021','Hassan','','Touzani','Mhhc',21,'Prof','12:02','218b2360-a162-4e5f-ac6b-efb0b4a1b7ed'),(339,'14/05/2021','administration','','école','test',1,'Admin','17:26','f6c320b2-3a1d-2828-c0b4-7d3cad14551a'),(340,'14/05/2021','Soufiane','','El hmieche','',23,'Prof','17:40','d0a0dc71-89cf-4aeb-90fd-0a4ab32037ef'),(341,'14/05/2021','Soufiane','','El hmieche','',23,'Prof','17:40','d0a0dc71-89cf-4aeb-90fd-0a4ab32037ef'),(342,'19/05/2021','Soufiane','\0','El hmieche','Test',23,'Prof','11:48','59d9ed7c-a5f6-4621-9fd4-c5fe34b1cfe2'),(343,'23/05/2021','administration','','école','https://youtu.be/QGbAbqIiFfQ',1,'Admin','14:12','7882a370-7906-42d0-9359-0606d17415c8');
/*!40000 ALTER TABLE `message` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `message_recipient`
--

DROP TABLE IF EXISTS `message_recipient`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `message_recipient` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `class_id` bigint(20) DEFAULT NULL,
  `message_id` bigint(20) DEFAULT NULL,
  `message_to` varchar(255) DEFAULT NULL,
  `student_id` bigint(20) DEFAULT NULL,
  `recipient_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1692 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `message_recipient`
--

LOCK TABLES `message_recipient` WRITE;
/*!40000 ALTER TABLE `message_recipient` DISABLE KEYS */;
INSERT INTO `message_recipient` VALUES (1684,26,337,'Parent & Student',NULL,NULL),(1685,25,337,'Parent & Student',NULL,NULL),(1686,25,338,'Parent & Student',NULL,NULL),(1687,NULL,339,'Parent',182,NULL),(1688,1,340,'Parent & Student',NULL,NULL),(1689,1,341,'Parent & Student',NULL,NULL),(1690,1,342,'Parent & Student',NULL,NULL),(1691,1,343,'Parent & Student',NULL,NULL);
/*!40000 ALTER TABLE `message_recipient` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `news`
--

DROP TABLE IF EXISTS `news`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `news` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `date` varchar(255) DEFAULT NULL,
  `description` text,
  `first_name` varchar(255) DEFAULT NULL,
  `image_url` varchar(255) DEFAULT NULL,
  `is_valid` bit(1) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `poster_id` bigint(20) DEFAULT NULL,
  `role_name` varchar(255) DEFAULT NULL,
  `time` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=96 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `news`
--

LOCK TABLES `news` WRITE;
/*!40000 ALTER TABLE `news` DISABLE KEYS */;
INSERT INTO `news` VALUES (92,'28/04/2021','Bonjour l\'ecole a organisé une sortie scolaire','administration','https://myplannif1.ritsysteme.net:5000/downloadFile/9d9c3a7d-bb2c-4ed6-88cd-9782dc897fbbnew_image_1619610782998.jpg','','école',1,'Administration','11:53','Sortie Scolaire'),(93,'28/04/2021','Transport scolaire','Hassan','https://myplannif1.ritsysteme.net:5000/downloadFile/33fb6bad-ba96-4645-b711-7c2152917d3anew_image_1619610892736.jpg','','Touzani',21,'Prof','11:54','Transport scolaire');
/*!40000 ALTER TABLE `news` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nivaux`
--

DROP TABLE IF EXISTS `nivaux`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nivaux` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `cycle_id` bigint(20) DEFAULT NULL,
  `label` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nivaux`
--

LOCK TABLES `nivaux` WRITE;
/*!40000 ALTER TABLE `nivaux` DISABLE KEYS */;
INSERT INTO `nivaux` VALUES (5,1,'PS'),(6,1,'MS'),(7,1,'GS'),(8,2,'1AEP'),(9,2,'2AEP'),(10,2,'3AEP'),(11,2,'4AEP'),(12,2,'5AEP'),(13,2,'6AEP'),(14,3,'1APIC'),(15,3,'2APIC'),(16,3,'3APIC'),(17,4,'TC'),(18,4,'1BAC'),(19,4,'2BAC'),(20,1,'test');
/*!40000 ALTER TABLE `nivaux` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `notification`
--

DROP TABLE IF EXISTS `notification`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `notification` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `class_id` bigint(20) DEFAULT NULL,
  `date` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `first_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `last_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `message` mediumtext COLLATE utf8_unicode_ci,
  `role` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sender_id` bigint(20) DEFAULT NULL,
  `student_id` bigint(20) DEFAULT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `uuid` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3345 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notification`
--

LOCK TABLES `notification` WRITE;
/*!40000 ALTER TABLE `notification` DISABLE KEYS */;
INSERT INTO `notification` VALUES (3244,NULL,NULL,NULL,NULL,'veuillez valider linscription du Prof kadiri ahmed','admin',NULL,NULL,'validateAccount',2,NULL),(3246,NULL,NULL,NULL,NULL,'veuillez valider linscription du Prof Touzani Hassan','admin',NULL,NULL,'validateAccount',2,NULL),(3247,NULL,NULL,NULL,NULL,'Votre Compte a été valider Par l\'administration','prof',NULL,NULL,'accountAccepted',20,NULL),(3250,NULL,NULL,NULL,NULL,'veuillez valider linscription du Prof hilali hamada','admin',NULL,NULL,'validateAccount',2,NULL),(3252,NULL,NULL,NULL,NULL,'veuillez valider un compte  parent','admin',NULL,NULL,'validateAccount',2,NULL),(3253,NULL,NULL,NULL,NULL,'Votre Compte a été valider Par l\'administration','prof',NULL,NULL,'accountAccepted',22,NULL),(3256,NULL,NULL,NULL,NULL,'veuillez valider la publication deahmed kadiri','admin',NULL,NULL,'validatePost',2,NULL),(3258,NULL,NULL,NULL,NULL,'veuillez valider la publication deHassan Touzani','admin',NULL,NULL,'validatePost',2,NULL),(3259,NULL,NULL,NULL,NULL,'veuillez valider la publication de Hassan Touzani','admin',NULL,NULL,'validatePost',1,NULL),(3260,NULL,NULL,NULL,NULL,'veuillez valider la publication de Hassan Touzani','admin',NULL,NULL,'validatePost',2,NULL),(3262,NULL,'12/04/2021',NULL,NULL,'veuillez valider un message de Hassan Touzani','admin',NULL,NULL,'validateMessage',1,NULL),(3263,NULL,'12/04/2021',NULL,NULL,'veuillez valider un message de Hassan Touzani','admin',NULL,NULL,'validateMessage',2,NULL),(3264,NULL,'12/04/2021','Hassan','Touzani','bonjour','student',21,165,'message',165,NULL),(3265,NULL,'12/04/2021','Hassan','Touzani','bonjour','student',21,166,'message',166,NULL),(3266,NULL,'12/04/2021','Hassan','Touzani','bonjour','student',21,167,'message',167,NULL),(3267,NULL,'12/04/2021','Hassan','Touzani','bonjour','student',21,168,'message',168,NULL),(3268,NULL,'12/04/2021','Hassan','Touzani','bonjour','student',21,169,'message',169,NULL),(3269,NULL,'12/04/2021','Hassan','Touzani','bonjour','student',21,170,'message',170,NULL),(3270,NULL,'12/04/2021','Hassan','Touzani','bonjour','student',21,171,'message',171,NULL),(3271,NULL,'12/04/2021','Hassan','Touzani','bonjour','student',21,172,'message',172,NULL),(3272,NULL,'12/04/2021','Hassan','Touzani','bonjour','student',21,173,'message',173,NULL),(3273,NULL,'12/04/2021','Hassan','Touzani','bonjour','student',21,174,'message',174,NULL),(3274,NULL,'12/04/2021','Hassan','Touzani','bonjour','student',21,175,'message',175,NULL),(3276,NULL,'12/04/2021','Hassan','Touzani','bonjour','student',21,177,'message',177,NULL),(3277,NULL,'12/04/2021','Hassan','Touzani','bonjour','student',21,178,'message',178,NULL),(3278,NULL,'12/04/2021','Hassan','Touzani','bonjour','student',21,179,'message',179,NULL),(3279,NULL,'12/04/2021','Hassan','Touzani','bonjour','student',21,180,'message',180,NULL),(3280,NULL,'12/04/2021','Hassan','Touzani','bonjour','student',21,181,'message',181,NULL),(3283,NULL,NULL,NULL,NULL,'veuillez valider la publication deHassan Touzani','admin',NULL,NULL,'validatePost',1,NULL),(3284,NULL,NULL,NULL,NULL,'veuillez valider la publication deHassan Touzani','admin',NULL,NULL,'validatePost',2,NULL),(3285,NULL,NULL,NULL,NULL,'Votre Publication a été approuvée','prof',NULL,NULL,'postAccepted',21,NULL),(3292,NULL,NULL,NULL,NULL,'veuillez valider la publication deHassan Touzani','admin',NULL,NULL,'validatePost',1,NULL),(3293,NULL,NULL,NULL,NULL,'veuillez valider la publication deHassan Touzani','admin',NULL,NULL,'validatePost',2,NULL),(3295,NULL,'28/04/2021',NULL,NULL,'veuillez valider un message de Hassan Touzani','admin',NULL,NULL,'validateMessage',1,NULL),(3296,NULL,'28/04/2021',NULL,NULL,'veuillez valider un message de Hassan Touzani','admin',NULL,NULL,'validateMessage',2,NULL),(3298,NULL,'28/04/2021','Hassan','Touzani','Mhhc','student',21,165,'message',165,NULL),(3299,NULL,'28/04/2021','Hassan','Touzani','Mhhc','student',21,166,'message',166,NULL),(3300,NULL,'28/04/2021','Hassan','Touzani','Mhhc','student',21,167,'message',167,NULL),(3301,NULL,'28/04/2021','Hassan','Touzani','Mhhc','student',21,168,'message',168,NULL),(3302,NULL,'28/04/2021','Hassan','Touzani','Mhhc','student',21,169,'message',169,NULL),(3303,NULL,'28/04/2021','Hassan','Touzani','Mhhc','student',21,170,'message',170,NULL),(3304,NULL,'28/04/2021','Hassan','Touzani','Mhhc','student',21,171,'message',171,NULL),(3305,NULL,'28/04/2021','Hassan','Touzani','Mhhc','student',21,172,'message',172,NULL),(3306,NULL,'28/04/2021','Hassan','Touzani','Mhhc','student',21,173,'message',173,NULL),(3307,NULL,'28/04/2021','Hassan','Touzani','Mhhc','student',21,174,'message',174,NULL),(3308,NULL,'28/04/2021','Hassan','Touzani','Mhhc','student',21,175,'message',175,NULL),(3309,NULL,'28/04/2021','Hassan','Touzani','Mhhc','student',21,176,'message',176,NULL),(3310,NULL,'28/04/2021','Hassan','Touzani','Mhhc','student',21,177,'message',177,NULL),(3311,NULL,'28/04/2021','Hassan','Touzani','Mhhc','student',21,178,'message',178,NULL),(3312,NULL,'28/04/2021','Hassan','Touzani','Mhhc','student',21,179,'message',179,NULL),(3313,NULL,'28/04/2021','Hassan','Touzani','Mhhc','student',21,180,'message',180,NULL),(3314,NULL,'28/04/2021','Hassan','Touzani','Mhhc','student',21,181,'message',181,NULL),(3315,NULL,'28/04/2021',NULL,NULL,'Votre Message a été validé par l\'dministration','prof',21,NULL,'messageValid',21,'218b2360-a162-4e5f-ac6b-efb0b4a1b7ed'),(3316,NULL,NULL,NULL,NULL,'veuillez valider un compte  parent','admin',NULL,NULL,'validateAccount',1,NULL),(3317,NULL,NULL,NULL,NULL,'veuillez valider un compte  parent','admin',NULL,NULL,'validateAccount',2,NULL),(3319,NULL,NULL,NULL,NULL,'Veuillez valider une nouvelle Demande de El hmieche Soufiane','admin',NULL,NULL,'validateRequest',1,NULL),(3320,NULL,NULL,NULL,NULL,'Veuillez valider une nouvelle Demande de El hmieche Soufiane','admin',NULL,NULL,'validateRequest',2,NULL),(3324,NULL,NULL,NULL,NULL,'Veuillez valider la relation de Doha Talkhoukhtavec l\'éléveEl hmieche Soufiane','admin',NULL,NULL,'validateRelation',1,NULL),(3325,NULL,NULL,NULL,NULL,'Veuillez valider la relation de Doha Talkhoukhtavec l\'éléveEl hmieche Soufiane','admin',NULL,NULL,'validateRelation',2,NULL),(3327,NULL,'14-05-2021',NULL,NULL,'Veuillez Consultez labsence de votre enfant','parent',NULL,182,'absence',13,NULL),(3328,NULL,NULL,NULL,NULL,'veuillez valider linscription du Prof El hmieche Soufiane','admin',NULL,NULL,'validateAccount',1,NULL),(3329,NULL,NULL,NULL,NULL,'veuillez valider linscription du Prof El hmieche Soufiane','admin',NULL,NULL,'validateAccount',2,NULL),(3331,NULL,'14/05/2021',NULL,NULL,'veuillez valider un message de Soufiane El hmieche','admin',NULL,NULL,'validateMessage',1,NULL),(3332,NULL,'14/05/2021',NULL,NULL,'veuillez valider un message de Soufiane El hmieche','admin',NULL,NULL,'validateMessage',2,NULL),(3333,NULL,'14/05/2021',NULL,NULL,'veuillez valider un message de Soufiane El hmieche','admin',NULL,NULL,'validateMessage',1,NULL),(3334,NULL,'14/05/2021',NULL,NULL,'veuillez valider un message de Soufiane El hmieche','admin',NULL,NULL,'validateMessage',2,NULL),(3337,NULL,'14/05/2021',NULL,NULL,'Votre Message a été validé par l\'dministration','prof',23,NULL,'messageValid',23,'d0a0dc71-89cf-4aeb-90fd-0a4ab32037ef'),(3341,NULL,'19/05/2021',NULL,NULL,'veuillez valider un message de Soufiane El hmieche','admin',NULL,NULL,'validateMessage',1,NULL),(3342,NULL,'19/05/2021',NULL,NULL,'veuillez valider un message de Soufiane El hmieche','admin',NULL,NULL,'validateMessage',2,NULL),(3343,NULL,'23/05/2021','administration','école','https://youtu.be/QGbAbqIiFfQ','parent',1,182,'message',13,'7882a370-7906-42d0-9359-0606d17415c8'),(3344,NULL,'23/05/2021','administration','école','https://youtu.be/QGbAbqIiFfQ','student',1,182,'message',182,'7882a370-7906-42d0-9359-0606d17415c8');
/*!40000 ALTER TABLE `notification` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `parent`
--

DROP TABLE IF EXISTS `parent`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `parent` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `email` varchar(255) DEFAULT NULL,
  `is_valid` tinyint(1) DEFAULT '0',
  `last_name` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `role_id` bigint(20) DEFAULT NULL,
  `token_notification` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `parent`
--

LOCK TABLES `parent` WRITE;
/*!40000 ALTER TABLE `parent` DISABLE KEYS */;
INSERT INTO `parent` VALUES (12,'ettazi-k@gmail.com',1,'ettazi','karima','123','0674292929',2,'dGbSR-0_SReuo2WdKNYSPc:APA91bEvlYpt2jv-f57Ss7ae7TfXUzgQ8sTzhUTb11PQzuR-PxfVX2qDDz4Ga42AADezzXr0gZFVS4TeOug7JJUgrJJlsCLouOiiOQCnlvt1yAORLX-TQzVE_p-Y84v-9Z6a_Cp0CcGw'),(13,'elhmiechesoyfiane@Gmail.com',1,'El hmieche','Soufiane','0628958511','0628958511',2,'fkGj62tnRWaLQZ50cEnYd2:APA91bGAXgVECKqMVMzDNs75RATYG15eobhjGFQmwMhR53qAgDeE3Hj99PKVJYW7EU6pu25S6_0rm1Opqr2JDNYBV0JF6M4yreiusfdIY5o4AZM7er-pvdUWbt5W1g2dWlY_7Z8oaHga');
/*!40000 ALTER TABLE `parent` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `parent_relation`
--

DROP TABLE IF EXISTS `parent_relation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `parent_relation` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `is_valid` tinyint(1) DEFAULT '0',
  `parent` bigint(20) DEFAULT NULL,
  `student` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `parent_relation`
--

LOCK TABLES `parent_relation` WRITE;
/*!40000 ALTER TABLE `parent_relation` DISABLE KEYS */;
INSERT INTO `parent_relation` VALUES (24,1,12,176),(25,1,13,182),(26,1,13,180);
/*!40000 ALTER TABLE `parent_relation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `prof`
--

DROP TABLE IF EXISTS `prof`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `prof` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `affectation_prof_id` bigint(20) DEFAULT NULL,
  `auto_send` tinyint(1) DEFAULT '0',
  `email` varchar(255) DEFAULT NULL,
  `first_name` varchar(255) DEFAULT NULL,
  `is_valid` tinyint(1) DEFAULT '0',
  `last_name` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `role_id` bigint(20) DEFAULT NULL,
  `token_notification` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `prof`
--

LOCK TABLES `prof` WRITE;
/*!40000 ALTER TABLE `prof` DISABLE KEYS */;
INSERT INTO `prof` VALUES (20,NULL,0,'kadiri@gmail.com','ahmed',1,'kadiri','$2a$10$YKEXOQsS7Q3tXTtYj7gTNOPsfvfL2eCbd7dN.O6XQQaUD68I/d.xe','0674293947',NULL,1,'df4jG5TyRfuyrzewRYR1jn:APA91bGPksQJkZyc8-XCLBjlhBN6KC3FCb4XrFkEkQesLsuKbKLwcJQESXgJFRWiNlvv0Nly402OSf3YUElcIVjtkdUNfTqzgi5JmbmCtfSfXXzp8hG8wEkNZTEZ3vmgx5dPz-YcV3aR'),(21,NULL,0,'Hassan@gmail.com','Hassan',1,'Touzani','$2a$10$yIF8yhcRJm8J6rxVaDVwEOMD.t5.Sns2nylHTatcDg93oUbQ4mj6.','0661616166',NULL,1,''),(22,NULL,0,'hilali@gmail.com','hamada',1,'hilali','$2a$10$Wiy.QXBaLEeC1w/JYbneYudFKrHrqn8U0561wnszSjMZ6MtYVs3k.','0677889900',NULL,1,''),(23,NULL,0,'elhmiechesoyfiane@Gmail.com','Soufiane',1,'El hmieche','$2a$10$9t86LrR5bt1v.r1xhGHtL.IhmOhjo8ZiIQTO08V3hWlX9uSX/vhnG','0628958511',NULL,1,'fkGj62tnRWaLQZ50cEnYd2:APA91bGAXgVECKqMVMzDNs75RATYG15eobhjGFQmwMhR53qAgDeE3Hj99PKVJYW7EU6pu25S6_0rm1Opqr2JDNYBV0JF6M4yreiusfdIY5o4AZM7er-pvdUWbt5W1g2dWlY_7Z8oaHga');
/*!40000 ALTER TABLE `prof` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `request`
--

DROP TABLE IF EXISTS `request`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `request` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `code_massar` varchar(255) DEFAULT NULL,
  `create_at` varchar(255) DEFAULT NULL,
  `is_valid` bit(1) DEFAULT NULL,
  `parent_id` bigint(20) DEFAULT NULL,
  `request_category_id` bigint(20) DEFAULT NULL,
  `is_complete` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `request`
--

LOCK TABLES `request` WRITE;
/*!40000 ALTER TABLE `request` DISABLE KEYS */;
INSERT INTO `request` VALUES (33,'J131099','14/05/2021','',13,1,1);
/*!40000 ALTER TABLE `request` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `request_category`
--

DROP TABLE IF EXISTS `request_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `request_category` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `is_active` bit(1) DEFAULT NULL,
  `request` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `request_category`
--

LOCK TABLES `request_category` WRITE;
/*!40000 ALTER TABLE `request_category` DISABLE KEYS */;
INSERT INTO `request_category` VALUES (1,'','Attestation de scolarité');
/*!40000 ALTER TABLE `request_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `roles` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `student`
--

DROP TABLE IF EXISTS `student`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `student` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `class_id` bigint(20) DEFAULT NULL,
  `code_massar` varchar(255) DEFAULT NULL,
  `date_of_brits` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `first_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `role_id` bigint(20) DEFAULT NULL,
  `token_notification` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=183 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student`
--

LOCK TABLES `student` WRITE;
/*!40000 ALTER TABLE `student` DISABLE KEYS */;
INSERT INTO `student` VALUES (165,25,'B150005202','18/09/2009','DOAE.BOUDLALI@gmail.com','BOUDLALI','DOAE',NULL,3,NULL),(166,25,'B153005149','31/01/2010','Islam.Boutassoufra@gmail.com','Boutassoufra','Islam',NULL,3,NULL),(167,25,'B153005153','19/02/2010','Abdellah.Abbaaya@gmail.com','Abbaaya','Abdellah',NULL,3,NULL),(168,25,'B154005139','28/01/2010','Kawtar.Akabli@gmail.com','Akabli','Kawtar',NULL,3,NULL),(169,25,'B154005142','10/03/2009','Hamza.Hourag@gmail.com','Hourag','Hamza',NULL,3,NULL),(170,25,'B154005143','25/06/2009','MohamedAli.Aaddi@gmail.com','Aaddi','MohamedAli',NULL,3,NULL),(171,25,'B158006338','02/05/2009','ABDELHAMID.MHARZIALAOUI@gmail.com','MHARZIALAOUI','ABDELHAMID',NULL,3,NULL),(172,25,'B159003841','$2a$10$9yh4.C/.h0S9mlDNLW3UFOgV48cjifH5U8iDTsiiUhe2XaYOSJxou','Malak.Daghbar@gmail.com','Daghbar','Malak',NULL,3,NULL),(173,25,'B159003847','15/09/2009','Amira.Benamar@gmail.com','Benamar','Amira',NULL,3,NULL),(174,25,'B159005221','03/10/2009','ENNABIHA.ELHANSALI@gmail.com','ELHANSALI','ENNABIHA',NULL,3,NULL),(175,25,'B151004289','15/09/2009','SABRINE.BOURK@gmail.com','BOURK','SABRINE',NULL,3,NULL),(176,25,'B152005727','$2a$10$StxDbiviTDv0mTZPJEkUAehkFo2TmNLbqucgKRKqZDZEdmqhyPxl.','Maryam.Fillah@gmail.com','Fillah','Maryam',NULL,3,''),(177,25,'B156004723','23/06/2009','Mohamed.Lakouara@gmail.com','Lakouara','Mohamed',NULL,3,NULL),(178,25,'L153012381','17/11/2009','ABDELMOGHIT.CHAFII@gmail.com','CHAFII','ABDELMOGHIT',NULL,3,NULL),(179,25,'B159003856','25/05/2009','Mannina.ElMoutaouakil@gmail.com','ElMoutaouakil','Mannina',NULL,3,NULL),(180,25,'B156005157','27/11/2009','Doha.Talkhoukht@gmail.com','Talkhoukht','Doha',NULL,3,NULL),(181,2,'B159003837','28/04/2009','SaifEddine.Bouhafra@gmail.com','Bouhafra','SaifEddine',NULL,3,NULL),(182,1,'J131099','J131099','elhmieche.soufiane@gmail.com','soufiane','elhmieche','',3,'fkGj62tnRWaLQZ50cEnYd2:APA91bGAXgVECKqMVMzDNs75RATYG15eobhjGFQmwMhR53qAgDeE3Hj99PKVJYW7EU6pu25S6_0rm1Opqr2JDNYBV0JF6M4yreiusfdIY5o4AZM7er-pvdUWbt5W1g2dWlY_7Z8oaHga');
/*!40000 ALTER TABLE `student` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `time_table`
--

DROP TABLE IF EXISTS `time_table`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `time_table` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `class_id` bigint(20) DEFAULT NULL,
  `days_id` bigint(20) DEFAULT NULL,
  `prof_id` bigint(20) DEFAULT NULL,
  `time_finish` varchar(255) DEFAULT NULL,
  `time_start` varchar(255) DEFAULT NULL,
  `unity_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=50 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `time_table`
--

LOCK TABLES `time_table` WRITE;
/*!40000 ALTER TABLE `time_table` DISABLE KEYS */;
INSERT INTO `time_table` VALUES (31,25,1,20,'9:30','8:30',2),(32,25,1,21,'10:30','9:30',10),(33,25,1,20,'11:00','10:30',3),(34,25,1,20,'12:30','11:00',1),(35,25,1,20,'15:30','14:00',9),(36,25,1,21,'16:30','15:30',12),(37,25,2,22,'9:00','8:00',20),(38,25,2,20,'10:00','9:00',2),(39,25,2,21,'11:00','10:00',1),(40,25,2,22,'12:00','11:00',9),(41,25,2,20,'15:00','14:00',3),(42,25,2,20,'16:00','15:00',6),(43,25,2,21,'17:00','16:00',8),(44,25,1,22,'17:00','16:00',4),(45,25,3,20,'9:00','8:00',1),(46,25,3,20,'10:00','9:00',1),(47,1,1,20,'9:00','8:00',1),(48,1,1,21,'10:30','9:00',20),(49,1,2,22,'15:00','14:00',4);
/*!40000 ALTER TABLE `time_table` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `unity`
--

DROP TABLE IF EXISTS `unity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `unity` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `class_id` bigint(20) DEFAULT NULL,
  `color` varchar(255) DEFAULT NULL,
  `label` varchar(255) DEFAULT NULL,
  `prof_id` bigint(20) DEFAULT NULL,
  `unity_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=66 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `unity`
--

LOCK TABLES `unity` WRITE;
/*!40000 ALTER TABLE `unity` DISABLE KEYS */;
INSERT INTO `unity` VALUES (56,25,'#FF0000','français',20,2),(57,26,'#FF0000','français',20,2),(58,27,'#FF0000','français',20,2),(59,25,'#2EFEF7','informatique',21,10),(60,26,'#2EFEF7','informatique',21,10),(61,25,'#cef306','الرياضيات',22,20),(62,26,'#cef306','الرياضيات',22,20),(63,27,'#cef306','الرياضيات',22,20),(64,1,'#FF0000','français',23,2),(65,3,'#FF0000','français',23,2);
/*!40000 ALTER TABLE `unity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `unity_list`
--

DROP TABLE IF EXISTS `unity_list`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `unity_list` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `color` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `unity_list`
--

LOCK TABLES `unity_list` WRITE;
/*!40000 ALTER TABLE `unity_list` DISABLE KEYS */;
INSERT INTO `unity_list` VALUES (1,'#F6CECE','arabe'),(2,'#FF0000','français'),(3,'#80FF00','anglais'),(4,'#8181F7','mathématique'),(5,'#0040FF','physique chimie'),(6,'#BDBDBD','historique géographie'),(7,'#00FFFF','philosophie'),(8,'#088A08','education islamique'),(9,'#FFFF00','Svt'),(10,'#2EFEF7','informatique'),(11,'#F6CED8','education physique'),(12,'#173B0B','traduction'),(13,'#5858FA','comptabilité'),(14,'#F6CED8','economie'),(15,'#F7F8E0','DROIT-ORGANISATION'),(16,'#6E6E6E','ECONOMIE-GENERAL'),(20,'#cef306','الرياضيات');
/*!40000 ALTER TABLE `unity_list` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_role`
--

DROP TABLE IF EXISTS `user_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_role` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_role`
--

LOCK TABLES `user_role` WRITE;
/*!40000 ALTER TABLE `user_role` DISABLE KEYS */;
INSERT INTO `user_role` VALUES (1,'Prof'),(2,'Parent'),(3,'Student'),(4,'Admin'),(5,'super_admin');
/*!40000 ALTER TABLE `user_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_roles`
--

DROP TABLE IF EXISTS `user_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_roles` (
  `user_id` bigint(20) NOT NULL,
  `role_id` bigint(20) NOT NULL,
  PRIMARY KEY (`user_id`,`role_id`),
  KEY `FKh8ciramu9cc9q3qcqiv4ue8a6` (`role_id`),
  CONSTRAINT `FKh8ciramu9cc9q3qcqiv4ue8a6` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`),
  CONSTRAINT `FKhfh9dx7w3ubf1co1vdev94g3f` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_roles`
--

LOCK TABLES `user_roles` WRITE;
/*!40000 ALTER TABLE `user_roles` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `email` varchar(40) DEFAULT NULL,
  `name` varchar(40) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `username` varchar(15) DEFAULT NULL,
  `role_id` bigint(20) DEFAULT NULL,
  `last_name` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_sx468g52bpetvlad2j9y0lptc` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=996 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (6,'walidrachad@gmail.com','admin','$2a$10$CJWT1s.ZlsArxDHW.rLSWOeSC9GaWNEr7kLJ7E04jKz1gQOlb5YmW','administration',4,'administration'),(972,'benjrad@gmail.com','mohamed','$2a$10$JOa47s15JURoiLJc5tcpJu1nPdzd8EG6WhMb11VZcyK1nzEH6QCFm','benjrad',4,'benjrad'),(973,'kadiri@gmail.com','ahmed','$2a$10$2e3Ic1cDI6SBg6eiMC5H0u29XK43c6GfTS548DSEM8JhoKRA1jDUW','0674293947',1,'kadiri'),(974,'Hassan@gmail.com','Hassan','$2a$10$dQnvFTCmodnpF3bzvPeXrelZ2Mcp3DwXRlLs0rXLbiAoOFkxq7Fwe','0661616166',1,'Touzani'),(975,'DOAE.BOUDLALI@gmail.com','BOUDLALI','$2a$10$SdCzqLRI9huRCKsF.sY5AuXY0TXtw0bgZel003g.onAgPGecFhhIu','B150005202',3,'DOAE'),(976,'Islam.Boutassoufra@gmail.com','Boutassoufra','$2a$10$22DqOJ5TUjavBvYQTV95sewNQuzcB4ChXmotywOuOF8csCiEhZywG','B153005149',3,'Islam'),(977,'Abdellah.Abbaaya@gmail.com','Abbaaya','$2a$10$GvHYt/z66B0jDXPUVOsKtujd/LzY2SoR7G.bAdRc3A4NSRFKQOcou','B153005153',3,'Abdellah'),(978,'Kawtar.Akabli@gmail.com','Akabli','$2a$10$GTvdWC1CAxU7ojKlimAa8.dtAIIgGSPZGj2WRyJ0AZfBOg57mZ30O','B154005139',3,'Kawtar'),(979,'Hamza.Hourag@gmail.com','Hourag','$2a$10$VXqzni/L2jTRGCMXIcqSAuYkkUDP18aSKa1bYge.MXe3hZ5CQj24e','B154005142',3,'Hamza'),(980,'MohamedAli.Aaddi@gmail.com','Aaddi','$2a$10$TUkpuG.cwOptCqlxMiuNXOeaAbQ42zsBKfxIH/L7tnaKTsVlEBwfa','B154005143',3,'MohamedAli'),(981,'ABDELHAMID.MHARZIALAOUI@gmail.com','MHARZIALAOUI','$2a$10$/.FgXjGtRLKapUYo33QQ7uQstTgo7ZV3.KGAczVuIXZyliJt6Arz6','B158006338',3,'ABDELHAMID'),(982,'Malak.Daghbar@gmail.com','Daghbar','$2a$10$Ui/VHxjRfdckEyAoSgn3U.DFr2TsUevcHFRe.q0SShnHXvHn6s4Z2','B159003841',3,'Malak'),(983,'Amira.Benamar@gmail.com','Benamar','$2a$10$W.jNZtvNdEzwosXU3QRvPuWIoB7eYrgun9O3dSBlY9VxjDWGI4X9G','B159003847',3,'Amira'),(984,'ENNABIHA.ELHANSALI@gmail.com','ELHANSALI','$2a$10$ODcN/hkNo0NCgyPRiKoB4eGKrMwHCkLr/ELKBqETzjNLLsU92IsRC','B159005221',3,'ENNABIHA'),(985,'SABRINE.BOURK@gmail.com','BOURK','$2a$10$0/M5d7Cvco/8ceSKSJtNZ.8hLVKU7AuTW0fGvk7Td15EhTLREsMgu','B151004289',3,'SABRINE'),(986,'Maryam.Fillah@gmail.com','Fillah','$2a$10$zWQ6rgIQ3HPZ3oy6.9iqDeODY07c3T080uR8fMaQiO9MMqoI5IrF.','B152005727',3,'Maryam'),(987,'Mohamed.Lakouara@gmail.com','Lakouara','$2a$10$zmAJGqcxoQv13oaTs7sD5.AWXTqwnZoPdZ7imM7WpYrr55PDephJ.','B156004723',3,'Mohamed'),(988,'ABDELMOGHIT.CHAFII@gmail.com','CHAFII','$2a$10$nvalI.AHIPtscWUid.laiOKFEw5m4KLF5WuGH4RkuGybXii2.m/Zy','L153012381',3,'ABDELMOGHIT'),(989,'Mannina.ElMoutaouakil@gmail.com','ElMoutaouakil','$2a$10$IcknyYUrVKII2anEaisoQOobzS.InOmTHvyVQUTyBzDU4OnWTzRa2','B159003856',3,'Mannina'),(990,'Doha.Talkhoukht@gmail.com','Talkhoukht','$2a$10$.NC8LGVF3s..7pxk5JAmgupzpZee/3ZEshiIj1zcBkmZ9O/YT0T/a','B156005157',3,'Doha'),(991,'SaifEddine.Bouhafra@gmail.com','Bouhafra','$2a$10$Xbt0EQymzDGx.YYl9Mn9VOC7Zs248UZqGc50AZGUbDVvNo839bVX6','B159003837',3,'SaifEddine'),(992,'hilali@gmail.com','hamada','$2a$10$pbtocIcr0cAiLwWUGeQKUO8hbip7Um8gA7O1bQ9ji9xwmK6rKuaAC','0677889900',1,'hilali'),(993,'ettazi-k@gmail.com','karima','$2a$10$DiRjeZNab05uGNF6xzh0iuAOaXSYaNOyENdEjIWL2K7yXcSfgOnLe','0674292929',2,'ettazi'),(994,'elhmieche.soufiane@gmail.com','soufiane','$2a$10$Z0CXL.lI5QER43oVNsRku.8j9ak0dnqlkd/LnfFzpWtuzEE.xfhKi','J131099',3,'elhmieche'),(995,'elhmiechesoyfiane@Gmail.com','Soufiane','$2a$10$1jgIAA8zIx4taSBT6QrNQeRG9xflr3LUPwf4LMHOtD6hYebJgLGhW','0628958511',2,'El hmieche');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-06-01 20:52:06
