-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)
--
-- Host: localhost    Database: pariangan
-- ------------------------------------------------------
-- Server version	8.0.37

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
-- Table structure for table `atraction`
--

DROP TABLE IF EXISTS `atraction`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `atraction` (
  `id` varchar(2) NOT NULL,
  `name` varchar(40) NOT NULL,
  `category_atraction_id` varchar(2) NOT NULL,
  `open` time DEFAULT NULL,
  `close` time DEFAULT NULL,
  `price` int DEFAULT NULL,
  `employe` varchar(25) DEFAULT NULL,
  `contact_person` varchar(13) DEFAULT NULL,
  `description` text,
  `video_url` varchar(30) DEFAULT NULL,
  `geom` geometry DEFAULT NULL,
  `geom_area` geometry DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_attraction_category_attraction1_idx` (`category_atraction_id`),
  CONSTRAINT `fk_attraction_category_attraction1` FOREIGN KEY (`category_atraction_id`) REFERENCES `category_atraction` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `atraction`
--

LOCK TABLES `atraction` WRITE;
/*!40000 ALTER TABLE `atraction` DISABLE KEYS */;
INSERT INTO `atraction` VALUES ('01','Kuburan Panjang DT Tantejo','1','06:00:00','18:00:00',10000,'Pokdarwis Pariangan','082284978004','The length of this grave is around 24-25 m, based on the experience of the community and visitors who have measured the length of this grave, the results always change, sometimes it is 24, sometimes 25 m. The body that rests in this grave is Tantejo Gurhano, he was the one who first came up with the idea of ‚Äã‚Äãbuilding a bagonjoang house inspired by a boat that had sharp corners at both ends. Tantejo Gurhano is thought to have lived during the Hindu-Buddhist era, when she died her body was burned according to Hindu-Buddhist religious rituals and her ashes were scattered throughout this cemetery area.',NULL,_binary '\0\0\0\0\0\0\0Ú9^ûY@e/Œå]›ø',NULL),('02','Batu Agam','1','00:00:00','23:59:00',150000,'Pokdarwis Pariangan','082284978004','Agam stone is one of the relics in Pariangan which is included in the 3 sajarangan stones, where the agam stone is directed towards the agam area',NULL,_binary '\0\0\0\0\0\0\0åaÄY@ë$ÙLR›ø',NULL),('03','Batu 50 Kota','1','00:00:00','23:59:00',NULL,'Pokdarwis Pariangan','082284978004','The 50 Kota Stone is one of the relics in Pariangan which is included in the 3 Saurangan Stones, where the 50 Kota stones point towards the 50 Kota area.',NULL,_binary '\0\0\0\0\0\0\08ö+úáY@®Çõ÷∑]›ø',NULL),('04','Batu Tanah Datar','1','00:00:00','23:59:00',NULL,'Pokdarwis Pariangan','082284978004','The Tanah Datar Stone is one of the relics in Pariangan which is included in the 3 Sajarangan Stones, where the Tanah Datar stones point towards the Tanah Datar area.',NULL,_binary '\0\0\0\0\0\0\0\Èı\ƒ\∆~Y@†¿}\«^›ø',NULL),('05','Masjid Islah','1','03:00:00','21:00:00',NULL,'Nagari Tuo Pariangan',NULL,NULL,NULL,_binary '\0\0\0\0\0\0\0ˆJì1ÇY@@≠X≤V›ø',NULL),('06','Tabuah Larangan','2','00:00:00','23:59:00',NULL,'Nagari Tuo Pariangan',NULL,NULL,NULL,_binary '\0\0\0\0\0\0\0\ÓërúÄY@ªi\n\œZ›ø',NULL),('07','Panorama Pariangan','2','06:00:00','22:00:00',NULL,'Nagari Tuo Pariangan',NULL,NULL,NULL,_binary '\0\0\0\0\0\0\0AaíY@ød°•Ñ‹ø',NULL),('08','Surau Bandaro Kayo','2','03:00:00','21:00:00',NULL,'Nagari Tuo Pariangan',NULL,NULL,NULL,_binary '\0\0\0\0\0\0\0*çw\À~Y@ê≥∏fU›ø',NULL),('09','Surau Sampono Kayo','2','03:00:00','21:00:00',NULL,'Nagari Tuo Pariangan',NULL,NULL,NULL,_binary '\0\0\0\0\0\0\0\È5\Í\ﬂ}Y@\·ó˙ySQ›ø',NULL),('10','Surau Suri Maharajo','2','03:00:00','21:00:00',NULL,'Nagari Tuo Pariangan',NULL,NULL,NULL,_binary '\0\0\0\0\0\0\0\‚;îÅY@ˆl\ \”¡S›ø',NULL),('11','Surau Melayu','2','03:00:00','21:00:00',NULL,'Nagari Tuo Pariangan',NULL,NULL,NULL,_binary '\0\0\0\0\0\0\0∞à\Œ~Y@˜\€«ü\‚W›ø',NULL),('12','Surau Inyiak Janna','2','03:00:00','21:00:00',NULL,'Nagari Tuo Pariangan',NULL,NULL,NULL,_binary '\0\0\0\0\0\0\0_*”ªzY@\Ô8fU[\\›ø',NULL);
/*!40000 ALTER TABLE `atraction` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `atraction_gallery`
--

DROP TABLE IF EXISTS `atraction_gallery`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `atraction_gallery` (
  `id` varchar(2) NOT NULL,
  `atraction_id` varchar(2) NOT NULL,
  `url` text,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_attraction_gallery_attraction1_idx` (`atraction_id`),
  CONSTRAINT `fk_attraction_gallery_attraction1` FOREIGN KEY (`atraction_id`) REFERENCES `atraction` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `atraction_gallery`
--

LOCK TABLES `atraction_gallery` WRITE;
/*!40000 ALTER TABLE `atraction_gallery` DISABLE KEYS */;
INSERT INTO `atraction_gallery` VALUES ('10','05','1692055922_007a45c1d233ff7a8919.jpg','2023-08-14 23:32:19','2023-08-14 23:32:19'),('11','05','1692055917_d5d388cbc801a3110b1c.jpg','2023-08-14 23:32:19','2023-08-14 23:32:19'),('12','05','1692055909_bbf8f25d78a890cc78af.jpg','2023-08-14 23:32:19','2023-08-14 23:32:19'),('13','06','1692056207_b142a923bdadea03e9e4.jpg','2023-08-14 23:36:56','2023-08-14 23:36:56'),('14','06','1692056207_80f64c921479997b1266.jpg','2023-08-14 23:36:56','2023-08-14 23:36:56'),('15','07','1692056283_685cd5d959a2f186e393.jpg','2023-08-14 23:38:22','2023-08-14 23:38:22'),('16','07','1692056285_536adad70f31f3b21e01.jpg','2023-08-14 23:38:22','2023-08-14 23:38:22'),('17','08','1692084082_1c7ccf4a484492462697.jpg','2023-08-15 07:21:43','2023-08-15 07:21:43'),('18','08','1692084082_2fee6dc0d0a9f3fe6c5e.jpg','2023-08-15 07:21:43','2023-08-15 07:21:43'),('20','10','1692084339_0760f2d85a4a5748172a.jpg','2023-08-15 07:26:27','2023-08-15 07:26:27'),('21','11','1692084617_2bb7a5549801d4735f3d.jpg','2023-08-15 07:30:35','2023-08-15 07:30:35'),('22','11','1692084616_443fc4eefb5dc5522a43.jpg','2023-08-15 07:30:35','2023-08-15 07:30:35'),('23','12','1692084742_a09151aac44b3beb8005.jpg','2023-08-15 07:32:30','2023-08-15 07:32:30'),('24','12','1692084727_d6fc904eba70102c94f5.jpg','2023-08-15 07:32:30','2023-08-15 07:32:30'),('25','09','1692085853_acd350f44c83cb2dedcb.jpg','2023-08-15 07:51:07','2023-08-15 07:51:07'),('26','01','1702528160_22a103acb6695157b9ff.jpg','2023-12-14 04:29:37','2023-12-14 04:29:37'),('27','01','1702528161_a09a8e2c5e78d6d497d5.jpg','2023-12-14 04:29:37','2023-12-14 04:29:37'),('28','01','1702528163_d78ccd857056975fc3fb.jpg','2023-12-14 04:29:37','2023-12-14 04:29:37'),('29','02','1702528221_5df76ebbfe23570f6168.jpg','2023-12-14 04:31:59','2023-12-14 04:31:59'),('30','02','1702528222_4926150a5d097d38e1bb.jpg','2023-12-14 04:31:59','2023-12-14 04:31:59'),('31','02','1702528225_22710013986b8ea799dd.jpg','2023-12-14 04:31:59','2023-12-14 04:31:59'),('35','04','1702528405_fb652bf2675d9a6b741b.jpg','2023-12-14 04:34:19','2023-12-14 04:34:19'),('36','04','1702528406_1d439cdd32e458919dba.jpg','2023-12-14 04:34:19','2023-12-14 04:34:19'),('37','04','1702528404_833e5d4743d1abeb41d2.jpg','2023-12-14 04:34:19','2023-12-14 04:34:19'),('38','03','1702528483_30060976d1710b8ada96.jpg','2023-12-14 04:34:57','2023-12-14 04:34:57'),('39','03','1702528482_506f0c612a28f6b82889.jpg','2023-12-14 04:34:57','2023-12-14 04:34:57'),('40','03','1702528485_008fd1a02c3dba5d53c8.jpg','2023-12-14 04:34:57','2023-12-14 04:34:57');
/*!40000 ALTER TABLE `atraction_gallery` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `atraction_video`
--

DROP TABLE IF EXISTS `atraction_video`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `atraction_video` (
  `id` varchar(8) NOT NULL,
  `atraction_id` varchar(8) NOT NULL,
  `url` varchar(255) NOT NULL,
  `duration` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `atraction_video_atraction_id_foreign` (`atraction_id`),
  CONSTRAINT `atraction_video_atraction_id_foreign` FOREIGN KEY (`atraction_id`) REFERENCES `atraction` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `atraction_video`
--

LOCK TABLES `atraction_video` WRITE;
/*!40000 ALTER TABLE `atraction_video` DISABLE KEYS */;
/*!40000 ALTER TABLE `atraction_video` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_activation_attempts`
--

DROP TABLE IF EXISTS `auth_activation_attempts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_activation_attempts` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `ip_address` varchar(255) NOT NULL,
  `user_agent` varchar(255) NOT NULL,
  `token` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_activation_attempts`
--

LOCK TABLES `auth_activation_attempts` WRITE;
/*!40000 ALTER TABLE `auth_activation_attempts` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_activation_attempts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_groups`
--

DROP TABLE IF EXISTS `auth_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_groups` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_groups`
--

LOCK TABLES `auth_groups` WRITE;
/*!40000 ALTER TABLE `auth_groups` DISABLE KEYS */;
INSERT INTO `auth_groups` VALUES (1,'admin','Site Administrator'),(2,'user','Reguler User');
/*!40000 ALTER TABLE `auth_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_groups_permissions`
--

DROP TABLE IF EXISTS `auth_groups_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_groups_permissions` (
  `group_id` int unsigned NOT NULL DEFAULT '0',
  `permission_id` int unsigned NOT NULL DEFAULT '0',
  KEY `auth_groups_permissions_permission_id_foreign` (`permission_id`),
  KEY `group_id_permission_id` (`group_id`,`permission_id`),
  CONSTRAINT `auth_groups_permissions_group_id_foreign` FOREIGN KEY (`group_id`) REFERENCES `auth_groups` (`id`) ON DELETE CASCADE,
  CONSTRAINT `auth_groups_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `auth_permissions` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_groups_permissions`
--

LOCK TABLES `auth_groups_permissions` WRITE;
/*!40000 ALTER TABLE `auth_groups_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_groups_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_groups_users`
--

DROP TABLE IF EXISTS `auth_groups_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_groups_users` (
  `group_id` int unsigned NOT NULL DEFAULT '0',
  `user_id` int unsigned NOT NULL DEFAULT '0',
  KEY `auth_groups_users_user_id_foreign` (`user_id`),
  KEY `group_id_user_id` (`group_id`,`user_id`),
  CONSTRAINT `auth_groups_users_group_id_foreign` FOREIGN KEY (`group_id`) REFERENCES `auth_groups` (`id`) ON DELETE CASCADE,
  CONSTRAINT `auth_groups_users_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_groups_users`
--

LOCK TABLES `auth_groups_users` WRITE;
/*!40000 ALTER TABLE `auth_groups_users` DISABLE KEYS */;
INSERT INTO `auth_groups_users` VALUES (1,1),(1,2),(2,3),(2,4),(2,6),(2,7);
/*!40000 ALTER TABLE `auth_groups_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_logins`
--

DROP TABLE IF EXISTS `auth_logins`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_logins` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `ip_address` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `user_id` int unsigned DEFAULT NULL,
  `date` datetime NOT NULL,
  `success` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `email` (`email`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=232 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_logins`
--

LOCK TABLES `auth_logins` WRITE;
/*!40000 ALTER TABLE `auth_logins` DISABLE KEYS */;
INSERT INTO `auth_logins` VALUES (1,'::1','fauzanpiliang13@gmail.com',1,'2023-07-26 07:33:01',1),(2,'::1','fauzanpiliang13@gmail.com',1,'2023-07-27 09:28:51',1),(3,'::1','fauzanpiliang13@gmail.com',1,'2023-07-27 17:19:54',1),(4,'::1','  piliang13',NULL,'2023-08-04 22:16:11',0),(5,'::1','Piliang13',NULL,'2023-08-04 22:16:49',0),(6,'::1','fauzanpiliang13@gmail.com',1,'2023-08-04 22:17:42',1),(7,'::1','fauzanpiliang13@gmail.com',1,'2023-08-07 07:09:13',1),(8,'::1','fauzanpiliang13@gmail.com',1,'2023-08-07 12:34:51',1),(9,'::1','fauzanpiliang13@gmail.com',1,'2023-08-14 23:23:42',1),(10,'::1','fauzanpiliang13@gmail.com',1,'2023-08-15 07:15:36',1),(11,'::1','fauzanpiliang13@gmail.com',1,'2023-08-16 18:05:45',1),(12,'::1','admin',NULL,'2023-10-21 03:21:36',0),(13,'::1','m.agungmahardika12@gmail.com',2,'2023-10-21 03:22:11',1),(14,'::1','m.agungmahardika12@gmail.com',2,'2023-10-21 03:49:15',1),(15,'::1','m.agungmahardika12@gmail.com',2,'2023-10-21 03:50:14',1),(16,'::1','m.agungmahardika12@gmail.com',2,'2023-10-21 09:18:18',1),(17,'::1','m.agungmahardika12@gmail.com',2,'2023-10-22 05:50:36',1),(18,'::1','m.agungmahardika12@gmail.com',2,'2023-10-23 00:11:01',1),(19,'::1','m.agungmahardika12@gmail.com',2,'2023-10-23 04:28:36',1),(20,'::1','user@gmail.com',3,'2023-10-23 04:29:28',1),(21,'::1','admin',NULL,'2023-10-24 07:55:31',0),(22,'::1','admin',NULL,'2023-10-24 07:55:38',0),(23,'::1','m.agungmahardika12@gmail.com',NULL,'2023-10-24 07:55:55',0),(24,'::1','m.agungmahardika12@gmail.com',2,'2023-10-24 07:56:04',1),(25,'::1','user@gmail.com',NULL,'2023-10-24 07:58:15',0),(26,'::1','user@gmail.com',NULL,'2023-10-24 08:01:51',0),(27,'::1','user@gmail.com',NULL,'2023-10-24 08:09:56',0),(28,'::1','user@gmail.com',NULL,'2023-10-24 08:10:05',0),(29,'::1','user@gmail.com',NULL,'2023-10-24 08:10:18',0),(30,'::1','user@gmail.com',NULL,'2023-10-24 08:10:28',0),(31,'::1','user@gmail.com',NULL,'2023-10-24 08:11:56',0),(32,'::1','user@gmail.com',3,'2023-10-24 08:12:05',1),(33,'::1','m.agungmahardika12@gmail.com',NULL,'2023-10-24 11:34:43',0),(34,'::1','m.agungmahardika12@gmail.com',2,'2023-10-24 11:34:55',1),(35,'::1','m.agungmahardika12@gmail.com',2,'2023-10-24 16:51:57',1),(36,'::1','user@gmail.com',3,'2023-10-24 16:52:28',1),(37,'::1','user@gmail.com',3,'2023-10-25 03:03:20',1),(38,'::1','m.agungmahardika12@gmail.com',2,'2023-10-25 03:10:47',1),(39,'::1','m.agungmahardika12@gmail.com',2,'2023-10-25 10:14:39',1),(40,'::1','user@gmail.com',3,'2023-10-25 10:15:22',1),(41,'::1','m.agungmahardika12@gmail.com',2,'2023-10-25 10:37:26',1),(42,'::1','m.agungmahardika12@gmail.com',2,'2023-10-26 00:40:44',1),(43,'::1','m.agungmahardika12@gmail.com',2,'2023-10-26 01:08:30',1),(44,'::1','m.agungmahardika12@gmail.com',2,'2023-10-26 06:33:39',1),(45,'::1','user@gmail.com',3,'2023-10-26 06:46:15',1),(46,'::1','m.agungmahardika@gmail.com',NULL,'2023-10-26 06:49:28',0),(47,'::1','m.agungmahardika12@gmail.com',2,'2023-10-26 06:49:42',1),(48,'::1','user@gmail.com',3,'2023-10-27 00:31:04',1),(49,'::1','user@gmail.com',3,'2023-10-27 06:40:18',1),(50,'::1','user@gmail.com',NULL,'2023-10-27 10:44:32',0),(51,'::1','user@gmail.com',3,'2023-10-27 10:44:40',1),(52,'::1','user@gmail.com',3,'2023-10-27 13:38:25',1),(53,'::1','user@gmail.com',3,'2023-10-28 01:41:43',1),(54,'::1','m.agungmahardika12@gmail.com',2,'2023-10-28 02:25:05',1),(55,'::1','m.agungmahardika12@gmail.com',2,'2023-10-28 08:40:24',1),(56,'::1','user@gmail.com',3,'2023-10-29 06:34:41',1),(57,'::1','user@gmail.com',3,'2023-11-01 10:15:43',1),(58,'::1','admin@gmail.com',2,'2023-11-01 10:58:58',1),(59,'::1','user@gmail.com',NULL,'2023-11-02 02:07:54',0),(60,'::1','user@gmail.com',3,'2023-11-02 02:08:04',1),(61,'::1','admin@gmail.com',2,'2023-11-02 03:33:50',1),(62,'::1','user@gmail.com',3,'2023-11-02 10:11:38',1),(63,'::1','admin@gmail.com',2,'2023-11-02 10:39:11',1),(64,'::1','user@gmail.com',3,'2023-11-02 13:43:02',1),(65,'::1','admin@gmail.com',2,'2023-11-02 13:54:27',1),(66,'::1','user@gmail.com',3,'2023-11-03 04:05:20',1),(67,'::1','admin@gmail.com',2,'2023-11-03 04:55:26',1),(68,'::1','admin@gmail.com',NULL,'2023-11-04 02:48:00',0),(69,'::1','admin@gmail.com',2,'2023-11-04 02:48:12',1),(70,'::1','user@gmail.com',NULL,'2023-11-04 05:01:21',0),(71,'::1','user@gmail.com',3,'2023-11-04 05:01:28',1),(72,'::1','user@gmail.com',3,'2023-11-11 05:40:54',1),(73,'::1','admin@gmail.com',2,'2023-11-11 05:42:01',1),(74,'::1','tes@gmail.com',4,'2023-11-11 05:48:51',1),(75,'::1','user@gmail.com',3,'2023-11-11 05:49:16',1),(76,'::1','user@gmail.com',3,'2023-11-11 13:00:06',1),(77,'::1','admin@gmail.com',2,'2023-11-11 15:24:17',1),(78,'::1','user@gmail.com',3,'2023-11-12 03:07:50',1),(79,'::1','user@gmail.com',3,'2023-11-12 03:13:00',1),(80,'::1','admin@gmail.com',2,'2023-11-12 04:05:25',1),(81,'::1','user@gmail.com',3,'2023-11-12 09:09:43',1),(82,'::1','admin@gmail.com',2,'2023-11-12 09:10:38',1),(83,'::1','user@gmail.com',3,'2023-11-13 02:02:49',1),(84,'::1','admin@gmail.com',2,'2023-11-13 02:04:18',1),(85,'::1','admin@gmail.com',2,'2023-11-13 10:33:30',1),(86,'::1','user@gmail.com',3,'2023-11-13 11:01:20',1),(87,'::1','user@gmail.com',3,'2023-11-14 08:38:51',1),(88,'::1','admin@gmail.com',2,'2023-11-14 08:42:03',1),(89,'::1','user@gmail.com',3,'2023-11-14 14:19:05',1),(90,'::1','admin@gmail.com',2,'2023-11-14 14:19:17',1),(91,'::1','user@gmail.com',3,'2023-11-15 00:51:21',1),(92,'::1','user@gmail.com',3,'2023-11-15 05:18:48',1),(93,'::1','user@gmail.com',3,'2023-11-15 10:29:20',1),(94,'::1','user@gmail.com',3,'2023-11-15 11:10:26',1),(95,'::1','admin@gmail.com',2,'2023-11-15 13:17:19',1),(96,'::1','fauzanpiliang13@gmail.com',1,'2023-11-16 01:43:30',1),(97,'::1','fauzanpiliang13@gmail.com',1,'2023-11-16 04:19:04',1),(98,'::1','user@gmail.com',3,'2023-11-16 04:25:05',1),(99,'::1','fauzanpiliang13@gmail.com',1,'2023-11-16 04:26:51',1),(100,'::1','user@gmail.com',3,'2023-11-16 04:28:43',1),(101,'::1','fauzanpiliang13@gmail.com',1,'2023-11-16 04:30:38',1),(102,'::1','user@gmail.com',3,'2023-11-16 04:31:15',1),(103,'::1','fauzanpiliang13@gmail.com',1,'2023-11-17 03:56:48',1),(104,'::1','fauzanpiliang13@gmail.com',1,'2023-11-17 12:22:52',1),(105,'::1','user@gmail.com',3,'2023-11-18 01:44:16',1),(106,'::1','fauzanpiliang13@gmail.com',1,'2023-11-18 01:46:56',1),(107,'::1','fauzanpiliang13@gmail.com',1,'2023-11-18 01:50:27',1),(108,'::1','user@gmail.com',3,'2023-11-18 01:51:01',1),(109,'::1','fauzanpiliang13@gmail.com',1,'2023-11-18 01:56:28',1),(110,'::1','user@gmail.com',3,'2023-11-18 01:58:09',1),(111,'::1','fauzanpiliang13@gmail.com',1,'2023-11-18 02:00:44',1),(112,'::1','user@gmail.com',3,'2023-11-18 02:01:41',1),(113,'::1','fauzanpiliang13@gmail.com',1,'2023-11-18 02:34:21',1),(114,'::1','fauzanpiliang13@gmail.com',1,'2023-11-18 03:20:49',1),(115,'::1','user@gmail.com',3,'2023-11-18 03:25:35',1),(116,'::1','fauzanpiliang13@gmail.com',1,'2023-11-18 03:30:47',1),(117,'::1','user@gmail.com',3,'2023-11-18 03:31:50',1),(118,'::1','fauzanpiliang13@gmail.com',1,'2023-11-18 03:34:01',1),(119,'::1','user@gmail.com',3,'2023-11-18 03:54:38',1),(120,'::1','fauzanpiliang13@gmail.com',1,'2023-11-18 03:55:02',1),(121,'::1','user@gmail.com',3,'2023-11-18 03:55:41',1),(122,'::1','user@gmail.com',3,'2023-11-19 12:58:15',1),(123,'::1','fauzanpiliang13@gmail.com',1,'2023-11-21 02:32:46',1),(124,'::1','user123',NULL,'2023-11-21 02:36:10',0),(125,'::1','user123',NULL,'2023-11-21 02:36:40',0),(126,'::1','user123',NULL,'2023-11-21 02:36:55',0),(127,'::1','userrrr213@gmail.com',6,'2023-11-21 02:39:31',1),(128,'::1','fauzanpiliang13@gmail.com',1,'2023-11-21 07:24:09',1),(129,'::1','user123456',NULL,'2023-11-21 07:24:33',0),(130,'::1','user123456',NULL,'2023-11-21 07:24:58',0),(131,'::1','user123456',NULL,'2023-11-21 07:24:59',0),(132,'::1','user123456',NULL,'2023-11-21 07:25:59',0),(133,'::1','zikralucas@gmail.com',7,'2023-11-21 07:27:05',1),(134,'::1','fauzanpiliang13@gmail.com',1,'2023-11-22 09:22:08',1),(135,'::1','fauzanpiliang13@gmail.com',1,'2023-11-25 03:09:04',1),(136,'::1','fauzanpiliang13@gmail.com',1,'2023-11-25 03:10:23',1),(137,'::1','user123',NULL,'2023-11-25 03:10:32',0),(138,'::1','user123',NULL,'2023-11-25 03:10:42',0),(139,'::1','user123',NULL,'2023-11-25 03:10:57',0),(140,'::1','user123',NULL,'2023-11-25 03:11:20',0),(141,'::1','user123',NULL,'2023-11-25 03:11:29',0),(142,'::1','user123',NULL,'2023-11-25 03:11:39',0),(143,'::1','user123',NULL,'2023-11-25 03:12:02',0),(144,'::1','piliang1313',NULL,'2023-11-25 03:12:18',0),(145,'::1','zikralucas@gmail.com',7,'2023-11-25 03:12:28',1),(146,'::1','user123',NULL,'2023-11-26 13:42:27',0),(147,'::1','zikralucas@gmail.com',7,'2023-11-26 13:43:28',1),(148,'::1','fauzanpiliang13@gmail.com',1,'2023-11-26 13:43:41',1),(149,'::1','admin',NULL,'2023-12-02 22:11:24',0),(150,'::1','fauzanpiliang13@gmail.com',1,'2023-12-02 22:11:31',1),(151,'::1','user@gmail.com',3,'2023-12-03 08:27:09',1),(152,'::1','fauzanpiliang13@gmail.com',1,'2023-12-03 13:27:19',1),(153,'::1','user@gmail.com',3,'2023-12-14 04:07:46',1),(154,'::1','fauzanpiliang13@gmail.com',1,'2023-12-14 04:23:33',1),(155,'::1','fauzanpiliang13@gmail.com',1,'2023-12-19 06:52:44',1),(156,'::1','fauzanpiliang13@gmail.com',1,'2023-12-19 06:58:03',1),(157,'::1','fauzanpiliang13@gmail.com',1,'2023-12-24 08:07:32',1),(158,'::1','user@gmail.com',3,'2023-12-24 08:35:29',1),(159,'::1','user@gmail.com',3,'2023-12-25 07:19:01',1),(160,'::1','admin',NULL,'2023-12-25 07:40:26',0),(161,'::1','fauzanpiliang13@gmail.com',1,'2023-12-25 07:40:29',1),(162,'::1','admin',NULL,'2023-12-27 02:41:59',0),(163,'::1','fauzanpiliang13@gmail.com',1,'2023-12-27 02:42:04',1),(164,'::1','user@gmail.com',3,'2023-12-27 02:49:37',1),(165,'::1','fauzanpiliang13@gmail.com',1,'2023-12-27 03:05:05',1),(166,'::1','user@gmail.com',3,'2023-12-27 03:23:26',1),(167,'::1','fauzanpiliang13@gmail.com',1,'2023-12-27 03:36:31',1),(168,'::1','user@gmail.com',3,'2023-12-27 08:20:50',1),(169,'::1','user@gmail.com',3,'2023-12-27 08:21:51',1),(170,'::1','fauzanpiliang13@gmail.com',1,'2023-12-27 08:22:59',1),(171,'::1','user@gmail.com',3,'2023-12-27 08:23:38',1),(172,'::1','fauzanpiliang13@gmail.com',1,'2023-12-27 08:24:34',1),(173,'::1','user@gmail.com',3,'2023-12-27 08:25:04',1),(174,'::1','fauzanpiliang13@gmail.com',1,'2023-12-27 08:25:28',1),(175,'::1','user@gmail.com',3,'2023-12-27 08:28:23',1),(176,'::1','fauzanpiliang13@gmail.com',1,'2023-12-27 08:40:00',1),(177,'::1','user@gmail.com',3,'2023-12-27 10:36:17',1),(178,'::1','user@gmail.com',3,'2023-12-27 10:39:07',1),(179,'::1','user@gmail.com',3,'2023-12-27 18:52:51',1),(180,'::1','piliang13',NULL,'2024-01-01 01:52:10',0),(181,'::1','fauzanpiliang13@gmail.com',1,'2024-01-01 01:52:21',1),(182,'::1','fauzanpiliang13@gmail.com',1,'2024-01-05 07:54:19',1),(183,'::1','user@gmail.com',3,'2024-01-05 09:26:41',1),(184,'::1','fauzanpiliang13@gmail.com',1,'2024-01-05 09:29:45',1),(185,'::1','fauzanpiliang13@gmail.com',1,'2024-01-10 09:48:59',1),(186,'::1','fauzanpiliang13@gmail.com',1,'2024-02-03 01:42:51',1),(187,'::1','user@gmail.com',3,'2024-02-03 03:28:24',1),(188,'::1','fauzanpiliang13@gmail.com',1,'2024-02-03 03:37:51',1),(189,'::1','fauzanpiliang13@gmail.com',1,'2024-02-05 23:01:04',1),(190,'::1','user@gmail.com',3,'2024-02-06 23:28:48',1),(191,'::1','fauzanpiliang13@gmail.com',1,'2024-02-06 23:57:07',1),(192,'::1','user@gmail.com',3,'2024-02-07 00:05:02',1),(193,'::1','fauzanpiliang13@gmail.com',1,'2024-02-23 07:13:36',1),(194,'::1','fauzanpiliang13@gmail.com',1,'2024-04-27 08:32:12',1),(195,'::1','user@gmail.com',3,'2024-04-27 08:32:57',1),(196,'::1','fauzanpiliang13@gmail.com',1,'2024-04-27 10:06:36',1),(197,'::1','user@gmail.com',3,'2024-04-27 10:09:26',1),(198,'::1','fauzanpiliang13@gmail.com',1,'2024-04-27 10:16:01',1),(199,'::1','user@gmail.com',3,'2024-04-27 10:16:38',1),(200,'::1','fauzanpiliang13@gmail.com',1,'2024-04-27 10:18:17',1),(201,'::1','user@gmail.com',3,'2024-04-27 10:18:55',1),(202,'::1','fauzanpiliang13@gmail.com',1,'2024-04-27 14:20:17',1),(203,'::1','fauzanpiliang13@gmail.com',1,'2024-04-29 04:41:08',1),(204,'::1','user@gmail.com',3,'2024-04-29 04:44:32',1),(205,'::1','fauzanpiliang13@gmail.com',1,'2024-04-29 04:48:40',1),(206,'::1','user@gmail.com',3,'2024-04-29 04:49:28',1),(207,'::1','fauzanpiliang13@gmail.com',1,'2024-04-29 04:50:58',1),(208,'::1','user@gmail.com',3,'2024-04-29 04:51:32',1),(209,'::1','fauzanpiliang13@gmail.com',1,'2024-05-04 01:10:27',1),(210,'::1','user@gmail.com',3,'2024-05-04 01:12:03',1),(211,'::1','fauzanpiliang13@gmail.com',1,'2024-05-04 01:24:30',1),(212,'::1','user@gmail.com',3,'2024-05-04 01:31:01',1),(213,'::1','user123',NULL,'2024-05-04 01:33:43',0),(214,'::1','user123',NULL,'2024-05-04 01:33:52',0),(215,'::1','user123',NULL,'2024-05-04 01:34:07',0),(216,'::1','fauzanpiliang13@gmail.com',1,'2024-05-04 01:36:41',1),(217,'::1','user@gmail.com',3,'2024-05-04 01:37:52',1),(218,'::1','fauzanpiliang13@gmail.com',1,'2024-05-04 01:40:11',1),(219,'::1','user@gmail.com',3,'2024-05-04 01:42:00',1),(220,'::1','fauzanpiliang13@gmail.com',1,'2024-05-04 01:46:35',1),(221,'::1','fauzanpiliang13@gmail.com',1,'2024-05-04 02:05:03',1),(222,'::1','fauzanpiliang13@gmail.com',1,'2024-05-04 06:17:30',1),(223,'::1','fauzanpiliang13@gmail.com',1,'2024-05-04 07:43:19',1),(224,'::1','user@gmail.com',3,'2024-05-04 07:50:56',1),(225,'::1','fauzanpiliang13@gmail.com',1,'2024-05-04 08:19:51',1),(226,'::1','user@gmail.com',3,'2024-05-04 09:05:01',1),(227,'::1','user123',NULL,'2024-05-04 09:06:48',0),(228,'::1','user@gmail.com',3,'2024-05-04 09:06:59',1),(229,'::1','user@gmail.com',3,'2024-05-04 09:08:23',1),(230,'::1','user@gmail.com',3,'2024-05-05 02:14:39',1),(231,'::1','fauzanpiliang13@gmail.com',1,'2024-05-05 03:59:25',1);
/*!40000 ALTER TABLE `auth_logins` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_permissions`
--

DROP TABLE IF EXISTS `auth_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_permissions` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permissions`
--

LOCK TABLES `auth_permissions` WRITE;
/*!40000 ALTER TABLE `auth_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_reset_attempts`
--

DROP TABLE IF EXISTS `auth_reset_attempts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_reset_attempts` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `email` varchar(255) NOT NULL,
  `ip_address` varchar(255) NOT NULL,
  `user_agent` varchar(255) NOT NULL,
  `token` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_reset_attempts`
--

LOCK TABLES `auth_reset_attempts` WRITE;
/*!40000 ALTER TABLE `auth_reset_attempts` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_reset_attempts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_tokens`
--

DROP TABLE IF EXISTS `auth_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_tokens` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `selector` varchar(255) NOT NULL,
  `hashedValidator` varchar(255) NOT NULL,
  `user_id` int unsigned NOT NULL,
  `expires` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `auth_tokens_user_id_foreign` (`user_id`),
  KEY `selector` (`selector`),
  CONSTRAINT `auth_tokens_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_tokens`
--

LOCK TABLES `auth_tokens` WRITE;
/*!40000 ALTER TABLE `auth_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_users_permissions`
--

DROP TABLE IF EXISTS `auth_users_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_users_permissions` (
  `user_id` int unsigned NOT NULL DEFAULT '0',
  `permission_id` int unsigned NOT NULL DEFAULT '0',
  KEY `auth_users_permissions_permission_id_foreign` (`permission_id`),
  KEY `user_id_permission_id` (`user_id`,`permission_id`),
  CONSTRAINT `auth_users_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `auth_permissions` (`id`) ON DELETE CASCADE,
  CONSTRAINT `auth_users_permissions_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_users_permissions`
--

LOCK TABLES `auth_users_permissions` WRITE;
/*!40000 ALTER TABLE `auth_users_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_users_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `category_atraction`
--

DROP TABLE IF EXISTS `category_atraction`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `category_atraction` (
  `id` varchar(2) NOT NULL,
  `category` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category_atraction`
--

LOCK TABLES `category_atraction` WRITE;
/*!40000 ALTER TABLE `category_atraction` DISABLE KEYS */;
INSERT INTO `category_atraction` VALUES ('1','uniq'),('2','ordinary');
/*!40000 ALTER TABLE `category_atraction` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `culinary_place`
--

DROP TABLE IF EXISTS `culinary_place`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `culinary_place` (
  `id` varchar(2) NOT NULL,
  `name` varchar(25) NOT NULL,
  `culinary_placecol` varchar(45) DEFAULT NULL,
  `contact_person` varchar(13) DEFAULT NULL,
  `open` time DEFAULT NULL,
  `close` time DEFAULT NULL,
  `owner` varchar(25) DEFAULT NULL,
  `description` text,
  `geom` geometry DEFAULT NULL,
  `geom_area` geometry DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='									';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `culinary_place`
--

LOCK TABLES `culinary_place` WRITE;
/*!40000 ALTER TABLE `culinary_place` DISABLE KEYS */;
INSERT INTO `culinary_place` VALUES ('01','Kadai Ni Rosi',NULL,NULL,'08:00:00','19:00:00','Uni Rosi',NULL,_binary '\0\0\0\0\0\0\0\Z\„?¥ÅY@©—≥ríZ›ø',NULL),('02','Kadai Rafli',NULL,NULL,'08:00:00','19:00:00','Rafli',NULL,_binary '\0\0\0\0\0\0\0OóAåÇY@)ˆ¡\«Z›ø',NULL),('03','Kadai Hadis',NULL,NULL,'08:00:00','19:00:00','Hadis',NULL,_binary '\0\0\0\0\0\0\0\·Ò\Ì]ÉY@x{1[›ø',NULL),('04','Kadai Ulan',NULL,NULL,'08:00:00','19:00:00','Ulan',NULL,_binary '\0\0\0\0\0\0\0c(H\Ë~Y@nm\·y©X›ø',NULL),('05','Kadai Gudester',NULL,NULL,'08:00:00','19:00:00',NULL,NULL,_binary '\0\0\0\0\0\0\0\⁄\ lY@öà´ò‹ø',NULL),('06','Kadai Tanjuang Indah',NULL,NULL,'08:00:00','19:00:00',NULL,NULL,_binary '\0\0\0\0\0\0\0{\Ëq\Œ˛Y@i¸%Vá‹ø',NULL),('07','Kadai Tanjuang Putuih',NULL,NULL,'09:00:00','19:00:00',NULL,NULL,_binary '\0\0\0\0\0\0\0ˆáY@\⁄OJ1’Ü‹ø',NULL),('08','Kawan Daun Puncak Mortir',NULL,NULL,'09:00:00','19:00:00',NULL,NULL,_binary '\0\0\0\0\0\0\0UÃÖY@ê(\›+-Ç‹ø',NULL),('09','Palanta Kawa Daun A&F',NULL,NULL,'09:00:00','19:00:00',NULL,NULL,_binary '\0\0\0\0\0\0\0\n@\ÌY@)ë\Èu0á‹ø',NULL);
/*!40000 ALTER TABLE `culinary_place` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `culinary_place_gallery`
--

DROP TABLE IF EXISTS `culinary_place_gallery`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `culinary_place_gallery` (
  `id` varchar(2) NOT NULL,
  `culinary_place_id` varchar(2) NOT NULL,
  `url` text,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_culinary_place_gallery_culinary_place1_idx` (`culinary_place_id`),
  CONSTRAINT `fk_culinary_place_gallery_culinary_place1` FOREIGN KEY (`culinary_place_id`) REFERENCES `culinary_place` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `culinary_place_gallery`
--

LOCK TABLES `culinary_place_gallery` WRITE;
/*!40000 ALTER TABLE `culinary_place_gallery` DISABLE KEYS */;
INSERT INTO `culinary_place_gallery` VALUES ('04','02','1690452669_31557ba4be709eea0279.jpg','2023-07-27 10:11:26','2023-07-27 10:11:26'),('05','03','1690478453_c964c2d8a296a5bed5c4.jpg','2023-07-27 17:21:10','2023-07-27 17:21:10'),('06','03','1690478453_e37c573fe2c46858bbbc.jpg','2023-07-27 17:21:10','2023-07-27 17:21:10'),('07','04','1690478519_ca8e5f226af69a0f0099.jpg','2023-07-27 17:22:11','2023-07-27 17:22:11'),('08','04','1690478518_f97b7fa4630f02ab6b02.jpg','2023-07-27 17:22:11','2023-07-27 17:22:11'),('09','05','1690478610_2e236b3bfe9c2d2f3645.jpg','2023-07-27 17:23:52','2023-07-27 17:23:52'),('10','05','1690478611_2a267a42578e5036f728.jpg','2023-07-27 17:23:52','2023-07-27 17:23:52'),('11','06','1690478699_cf1eb74f831ab961087f.jpg','2023-07-27 17:25:22','2023-07-27 17:25:22'),('12','06','1690478700_f3d2f7e670f5fa18f3b2.jpg','2023-07-27 17:25:22','2023-07-27 17:25:22'),('13','06','1690478703_25be47d9a82c1eb8e8ca.jpg','2023-07-27 17:25:22','2023-07-27 17:25:22'),('14','07','1690478786_e03b41f0f229829b220f.jpg','2023-07-27 17:26:43','2023-07-27 17:26:43'),('15','07','1690478785_b778336f41d1e60e0776.jpg','2023-07-27 17:26:43','2023-07-27 17:26:43'),('16','07','1690478788_e06df0c4b5248d9b5806.jpg','2023-07-27 17:26:43','2023-07-27 17:26:43'),('17','08','1690478944_b51851a0cb6e07ecf03f.jpg','2023-07-27 17:29:16','2023-07-27 17:29:16'),('18','08','1690478945_bd40e47b543354a58e18.jpg','2023-07-27 17:29:16','2023-07-27 17:29:16'),('19','09','1690479006_fbf347b7f2c7605877dd.jpg','2023-07-27 17:30:14','2023-07-27 17:30:14'),('20','09','1690479007_1acfb4f70a18895824de.jpg','2023-07-27 17:30:14','2023-07-27 17:30:14'),('21','01','1698933660_6ab17298ecd55412ecd7.jpg','2023-11-02 14:01:08','2023-11-02 14:01:08'),('22','01','1698933662_fceb61c82540e4f4fd72.jpg','2023-11-02 14:01:08','2023-11-02 14:01:08'),('23','01','1698933660_6d5e49b469ec6f518857.jpg','2023-11-02 14:01:08','2023-11-02 14:01:08');
/*!40000 ALTER TABLE `culinary_place_gallery` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `culinary_place_video`
--

DROP TABLE IF EXISTS `culinary_place_video`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `culinary_place_video` (
  `id` varchar(8) NOT NULL,
  `culinary_place_id` varchar(8) NOT NULL,
  `url` varchar(255) NOT NULL,
  `duration` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `culinary_place_video_culinary_place_id_foreign` (`culinary_place_id`),
  CONSTRAINT `culinary_place_video_culinary_place_id_foreign` FOREIGN KEY (`culinary_place_id`) REFERENCES `culinary_place` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `culinary_place_video`
--

LOCK TABLES `culinary_place_video` WRITE;
/*!40000 ALTER TABLE `culinary_place_video` DISABLE KEYS */;
/*!40000 ALTER TABLE `culinary_place_video` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `detail_menu`
--

DROP TABLE IF EXISTS `detail_menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `detail_menu` (
  `id` varchar(8) NOT NULL,
  `menu_id` varchar(8) NOT NULL,
  `culinary_place_id` varchar(8) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `detail_menu_menu_id_foreign` (`menu_id`),
  KEY `detail_menu_culinary_place_id_foreign` (`culinary_place_id`),
  CONSTRAINT `detail_menu_culinary_place_id_foreign` FOREIGN KEY (`culinary_place_id`) REFERENCES `culinary_place` (`id`),
  CONSTRAINT `detail_menu_menu_id_foreign` FOREIGN KEY (`menu_id`) REFERENCES `menu` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `detail_menu`
--

LOCK TABLES `detail_menu` WRITE;
/*!40000 ALTER TABLE `detail_menu` DISABLE KEYS */;
/*!40000 ALTER TABLE `detail_menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `detail_package`
--

DROP TABLE IF EXISTS `detail_package`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `detail_package` (
  `id_package` varchar(2) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `id_day` varchar(2) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `activity` varchar(2) NOT NULL,
  `activity_type` varchar(1) DEFAULT NULL,
  `id_object` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `description` text,
  PRIMARY KEY (`id_package`,`id_day`,`activity`),
  KEY `fk_detail_package_package_day1_idx` (`id_package`,`id_day`),
  CONSTRAINT `fk_detail_package_package_day1` FOREIGN KEY (`id_package`, `id_day`) REFERENCES `package_day` (`id_package`, `day`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `detail_package`
--

LOCK TABLES `detail_package` WRITE;
/*!40000 ALTER TABLE `detail_package` DISABLE KEYS */;
INSERT INTO `detail_package` VALUES ('02','1','1','H','H2','Visit Homestay Datuak Rajo Paduko'),('03','1','1','H','H01','Visit Homestay Angku bandaharo kayo'),('03','1','2','A','A07','Visit Panorama Pariangan'),('03','1','3','A','A01','Visit Kuburan Panjang DT Tantejo'),('03','1','4','A','A02','Visit Batu Agam'),('03','1','5','A','A03','Visit Batu 50 Kota'),('03','1','6','A','A04','Visit Batu Tanah Datar'),('03','1','7','C','C02','Visit Kadai Rafli'),('03','1','8','H','H01','Visit Homestay Angku bandaharo kayo'),('03','2','1','H','H01','Visit Homestay Angku bandaharo kayo'),('03','2','2','A','A05','Visit Masjid Islah'),('03','2','3','A','A08','Visit Surau Bandaro Kayo'),('03','2','4','A','A10','Visit Surau Suri Maharajo'),('03','2','5','A','A11','Visit Surau Melayu'),('03','2','6','C','C05','Visit Kadai Gudester'),('03','2','7','S','S01','Visit Gallery Seni'),('03','2','8','H','H01','Visit Homestay Angku bandaharo kayo'),('04','1','1','H','H2','Visit Homestay Datuak Rajo Paduko'),('04','1','2','A','A07','Visit Panorama Pariangan'),('04','1','3','A','A01','Visit Kuburan Panjang DT Tantejo'),('04','1','4','A','A02','Visit Batu Agam'),('04','1','5','A','A03','Visit Batu 50 Kota'),('04','1','6','A','A04','Visit Batu Tanah Datar'),('04','1','7','C','C02','Visit Kadai Rafli'),('04','1','8','H','H2','Visit Homestay Datuak Rajo Paduko'),('04','2','1','H','H2','Visit Homestay Datuak Rajo Paduko'),('04','2','2','A','A05','Visit Masjid Islah'),('04','2','3','A','A08','Visit Surau Bandaro Kayo'),('04','2','4','A','A10','Visit Surau Suri Maharajo'),('04','2','5','A','A11','Visit Surau Melayu'),('04','2','6','A','A06','Visit Tabuah Larangan'),('04','2','7','C','C03','Visit Kadai Hadis'),('04','2','8','S','S01','Visit Gallery Seni'),('04','2','9','H','H2','Visit Homestay Datuak Rajo Paduko'),('05','1','1','A','A01','Visit Kuburan Panjang DT Tantejo'),('05','1','2','A','A11','Visit Surau Melayu'),('05','1','3','A','A02','Visit Batu Agam'),('05','1','4','A','A12','Visit Surau Inyiak Janna'),('05','1','5','H','H3','Visit Homestay Umega'),('06','1','1','H','H01','Visit Homestay Angku bandaharo kayo'),('06','1','2','A','A07','Visit Panorama Pariangan'),('06','1','3','A','A01','Visit Kuburan Panjang DT Tantejo'),('06','1','4','A','A02','Visit Batu Agam'),('06','1','5','A','A03','Visit Batu 50 Kota'),('06','1','6','A','A04','Visit Batu Tanah Datar'),('06','1','7','C','C02','Visit Kadai Rafli'),('06','1','8','H','H01','Visit Homestay Angku bandaharo kayo'),('06','2','1','H','H01','Visit Homestay Angku bandaharo kayo'),('06','2','2','A','A05','Visit Masjid Islah'),('06','2','3','A','A08','Visit Surau Bandaro Kayo'),('06','2','4','A','A10','Visit Surau Suri Maharajo'),('06','2','5','A','A11','Visit Surau Melayu'),('06','2','6','C','C05','Visit Kadai Gudester'),('06','2','7','S','S01','Visit Gallery Seni'),('06','2','8','H','H01','Visit Homestay Angku bandaharo kayo'),('06','3','1','A','A03','Visit Batu 50 Kota'),('06','3','2','A','A09','Visit Surau Sampono Kayo'),('07','1','1','A','A01','Visit Kuburan Panjang DT Tantejo');
/*!40000 ALTER TABLE `detail_package` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `detail_product`
--

DROP TABLE IF EXISTS `detail_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `detail_product` (
  `id` varchar(8) NOT NULL,
  `product_id` varchar(8) NOT NULL,
  `souvenir_place_id` varchar(8) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `detail_product_product_id_foreign` (`product_id`),
  KEY `detail_product_souvenir_place_id_foreign` (`souvenir_place_id`),
  CONSTRAINT `detail_product_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`),
  CONSTRAINT `detail_product_souvenir_place_id_foreign` FOREIGN KEY (`souvenir_place_id`) REFERENCES `souvenir_place` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `detail_product`
--

LOCK TABLES `detail_product` WRITE;
/*!40000 ALTER TABLE `detail_product` DISABLE KEYS */;
/*!40000 ALTER TABLE `detail_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `detail_service_package`
--

DROP TABLE IF EXISTS `detail_service_package`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `detail_service_package` (
  `id_service_package` varchar(2) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `id_package` varchar(2) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `status` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`id_service_package`,`id_package`),
  KEY `fk_detail_service_package_package1_idx` (`id_package`),
  CONSTRAINT `fk_detail_service_package_package1` FOREIGN KEY (`id_package`) REFERENCES `package` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_detail_service_package_service_package` FOREIGN KEY (`id_service_package`) REFERENCES `service_package` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `detail_service_package`
--

LOCK TABLES `detail_service_package` WRITE;
/*!40000 ALTER TABLE `detail_service_package` DISABLE KEYS */;
INSERT INTO `detail_service_package` VALUES ('01','02','include'),('01','04','exclude'),('02','03','include'),('02','04','include'),('02','06','include'),('03','03','include'),('03','04','include'),('03','06','include'),('03','07','include'),('04','03','include'),('04','04','include'),('04','06','include'),('05','03','include'),('05','04','include'),('05','06','include'),('06','03','include'),('06','04','include'),('06','05','include'),('06','06','include'),('07','03','exclude'),('07','04','exclude'),('08','03','include'),('08','04','include'),('08','06','include'),('09','03','exclude'),('09','05','include'),('10','03','exclude'),('10','04','exclude'),('10','07','include'),('11','03','exclude'),('11','04','exclude');
/*!40000 ALTER TABLE `detail_service_package` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `event`
--

DROP TABLE IF EXISTS `event`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `event` (
  `id` varchar(2) NOT NULL,
  `name` varchar(25) NOT NULL,
  `price` int DEFAULT NULL,
  `contact_person` varchar(13) DEFAULT NULL,
  `date_start` date DEFAULT NULL,
  `date_end` date DEFAULT NULL,
  `time_start` time DEFAULT NULL,
  `time_end` time DEFAULT NULL,
  `description` text,
  `geom` geometry DEFAULT NULL,
  `geom_area` geometry DEFAULT NULL,
  `video_url` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `event`
--

LOCK TABLES `event` WRITE;
/*!40000 ALTER TABLE `event` DISABLE KEYS */;
/*!40000 ALTER TABLE `event` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `event_gallery`
--

DROP TABLE IF EXISTS `event_gallery`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `event_gallery` (
  `id` varchar(2) NOT NULL,
  `event_id` varchar(2) NOT NULL,
  `url` text,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_event_gallery_event1_idx` (`event_id`),
  CONSTRAINT `fk_event_gallery_event1` FOREIGN KEY (`event_id`) REFERENCES `event` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `event_gallery`
--

LOCK TABLES `event_gallery` WRITE;
/*!40000 ALTER TABLE `event_gallery` DISABLE KEYS */;
/*!40000 ALTER TABLE `event_gallery` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `event_video`
--

DROP TABLE IF EXISTS `event_video`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `event_video` (
  `id` varchar(8) NOT NULL,
  `event_id` varchar(8) NOT NULL,
  `url` varchar(255) NOT NULL,
  `duration` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `event_video_event_id_foreign` (`event_id`),
  CONSTRAINT `event_video_event_id_foreign` FOREIGN KEY (`event_id`) REFERENCES `event` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `event_video`
--

LOCK TABLES `event_video` WRITE;
/*!40000 ALTER TABLE `event_video` DISABLE KEYS */;
/*!40000 ALTER TABLE `event_video` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `facility`
--

DROP TABLE IF EXISTS `facility`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `facility` (
  `id` varchar(2) NOT NULL,
  `name` varchar(25) NOT NULL,
  `area_size` int DEFAULT NULL,
  `geom` geometry DEFAULT NULL,
  `geom_area` geometry DEFAULT NULL,
  `open` time DEFAULT NULL,
  `close` time DEFAULT NULL,
  `description` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `facility`
--

LOCK TABLES `facility` WRITE;
/*!40000 ALTER TABLE `facility` DISABLE KEYS */;
INSERT INTO `facility` VALUES ('02','Parking Area 1',100,_binary '\0\0\0\0\0\0\0˘s\·rÇY@B\ﬁ≠9Y›ø',_binary '\Ê\0\0\0\0\0\0\0\0\0\0\0tGÖƒÅY@ägä\‚W›øsGÕÄY@q{gàY›øtGENÉY@ﬂÖ,•°Z›øsGE’ÉY@\∆K\ÁûY›øsGÖˇÇY@˜±\ËDY›øsGpÉY@@P\…)oX›øtGÖƒÅY@ägä\‚W›ø','05:00:00','21:00:00','Area parkir yang tersedia di sekitar Masjid Tuo Nagari Pariangan'),('03','Parking Area 2',60,_binary '\0\0\0\0\0\0\0\râΩHY@Hâ¿óñ‹ø',_binary '\Ê\0\0\0\0\0\0\0\0\0\0\0\…4\⁄VY@>\Ì$Yñ‹ø\…4z=Y@\Í\⁄1 Hò‹ø\»4∫ÉY@ÿ®k°™ó‹ø\…4z\ƒY@ë]:E¡ï‹ø\…4\⁄VY@>\Ì$Yñ‹ø','08:00:00','19:00:00','Area Parkir yang disediakan di sekitar Kadai Guidester'),('04','Lapangan Bola Suthan Suri',7000,_binary '\0\0\0\0\0\0\0BœÖY@≠˙\ZQÛ8›ø',_binary '\Ê\0\0\0\0\0\0\0\0\0\0\0\ﬂF¬üÄY@@~(\œ3›ø\ﬁFBˇÇY@Éî`<?›ø\›FÇôäY@\…ıiK\—<›ø\ﬂF\ràY@M`\Œ\‡à2›ø\ﬂF¬üÄY@@~(\œ3›ø','08:00:00','19:00:00','Lapangan bola yang terletak di jalan utama Nagari Tuo Pariangan'),('05','Pemandian Rangek Rajo',18,_binary '\0\0\0\0\0\0\0ÑFúxY@\œ ¨îT\\›ø',_binary '\Ê\0\0\0\0\0\0\0\0\0\0\0\ÓQ\œUwY@\Â\„iñF[›ø\ÏQ\ÔwY@?^”π\\›ø\ÌQ#yY@âQâ]›ø\ÌQ\œDyY@¥uˆ@[›ø\ÓQ\œUwY@\Â\„iñF[›ø','05:00:00','19:00:00','Pemandian Rangek Rajo khusus bagi wisatawan yang ingin berenang air hangat'),('06','Pemandian Air Panas',20,_binary '\0\0\0\0\0\0\0z/ÑY@ûtì\\›ø',NULL,'04:00:00','21:00:00','Pemandian gratis bagi wisatawan yang ingin menikmati hangatnya  air dari Nagari Tuo Pariangan'),('07','Toilet Umum',8,_binary '\0\0\0\0\0\0\0(ç$ÉY@\r;\›˝Z›ø',NULL,'04:00:00','21:00:00','Toilet umum yang ada di sekitaran Masjid Tuo Pariangan');
/*!40000 ALTER TABLE `facility` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `facility_gallery`
--

DROP TABLE IF EXISTS `facility_gallery`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `facility_gallery` (
  `id` varchar(2) NOT NULL,
  `facility_id` varchar(2) NOT NULL,
  `url` text,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_facility_gallery_facility1_idx` (`facility_id`),
  CONSTRAINT `fk_facility_gallery_facility1` FOREIGN KEY (`facility_id`) REFERENCES `facility` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `facility_gallery`
--

LOCK TABLES `facility_gallery` WRITE;
/*!40000 ALTER TABLE `facility_gallery` DISABLE KEYS */;
INSERT INTO `facility_gallery` VALUES ('03','03','1691188982_b8c665b11be9634fab8c.jpg','2023-08-04 22:43:48','2023-08-04 22:43:48'),('04','02','1691189103_18e6ab4401a474115407.jpg','2023-08-04 22:45:04','2023-08-04 22:45:04'),('05','02','1691189103_c5f4f273a30e49c945ff.jpg','2023-08-04 22:45:04','2023-08-04 22:45:04'),('06','04','1691189529_03441815c78e4867f623.jpg','2023-08-04 22:52:14','2023-08-04 22:52:14'),('07','04','1691189531_c35efc7b5963f6280cf4.jpg','2023-08-04 22:52:14','2023-08-04 22:52:14'),('08','04','1691189528_5064f5c0ccde82e5b0ba.jpg','2023-08-04 22:52:14','2023-08-04 22:52:14'),('09','05','1691191254_85cb2184414fbf8a648b.jpg','2023-08-04 23:22:02','2023-08-04 23:22:02'),('10','06','1691191445_0d0b2ec1b883cd4aedff.jpg','2023-08-04 23:25:01','2023-08-04 23:25:01'),('11','06','1691191446_8bfb1abf2af3425e7ee0.jpg','2023-08-04 23:25:01','2023-08-04 23:25:01'),('12','06','1691191448_162af295fdbac0feaa96.jpg','2023-08-04 23:25:01','2023-08-04 23:25:01'),('13','07','1691191674_48fde928b3f4a7ddff15.jpg','2023-08-04 23:28:33','2023-08-04 23:28:33'),('14','07','1691191674_abf5fdc9ad35adbf444f.jpg','2023-08-04 23:28:33','2023-08-04 23:28:33');
/*!40000 ALTER TABLE `facility_gallery` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `facility_video`
--

DROP TABLE IF EXISTS `facility_video`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `facility_video` (
  `id` varchar(8) NOT NULL,
  `facility_id` varchar(8) NOT NULL,
  `url` varchar(255) NOT NULL,
  `duration` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `facility_video_facility_id_foreign` (`facility_id`),
  CONSTRAINT `facility_video_facility_id_foreign` FOREIGN KEY (`facility_id`) REFERENCES `facility` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `facility_video`
--

LOCK TABLES `facility_video` WRITE;
/*!40000 ALTER TABLE `facility_video` DISABLE KEYS */;
/*!40000 ALTER TABLE `facility_video` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `homestay`
--

DROP TABLE IF EXISTS `homestay`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `homestay` (
  `id` varchar(50) NOT NULL,
  `name` varchar(50) NOT NULL,
  `area_size` varchar(50) DEFAULT NULL,
  `open` time DEFAULT NULL,
  `close` time DEFAULT NULL,
  `price` int DEFAULT '0',
  `description` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `geom` geometry DEFAULT NULL,
  `geom_area` geometry DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `homestay`
--

LOCK TABLES `homestay` WRITE;
/*!40000 ALTER TABLE `homestay` DISABLE KEYS */;
INSERT INTO `homestay` VALUES ('01','Homestay Angku bandaharo kayo','50','12:00:00','00:00:00',100000,'Homestay Angku Bandaharo Kayo',_binary '\0\0\0\0\0\0\0∏§ìzY@ßY¡\Î\n(›ø',_binary '\Ê\0\0\0\0\0\0\0\0\0\0\0±\Ê(úyY@Ú\∆\“ÒÉ\'›ø±\Ê\ËzY@\‹¢,*›ø±\Ê\Ë¨{Y@sí¢mâ)›ø±\Ê\Ë¯zY@‘ï^r@\'›ø±\Ê(úyY@Ú\∆\“ÒÉ\'›ø',NULL,NULL),('2','Homestay Datuak Rajo Paduko','50','12:00:00','00:00:00',100000,'Homestay Datuak Paduko Rajo',_binary '\0\0\0\0\0\0\0\’\‘.}öY@\ŸÖn@U›ø',_binary '\Ê\0\0\0\0\0\0\0\0\0\0\0¯É⁄ôY@UòRŒÜT›ø¯É±9öY@è¸›™,V›ø¯ÉëXõY@ïXwã\„U›ø˜É1õY@-Æ˜8T›ø¯É⁄ôY@UòRŒÜT›ø',NULL,NULL),('3','Homestay Umega','30','12:00:00','00:00:00',130000,'Homestay Umega',_binary '\0\0\0\0\0\0\0∑˙^Y@>©˛Z¡£‹ø',_binary '\Ê\0\0\0\0\0\0\0\0\0\0\0∞\·SY@\\gM\ﬁ◊£‹ø±\·Y@ñ0≥\Z••‹ø∞\·\\Y@\Œ\Í6\„£‹ø∞\·\\<Y@»∞\–\·¢‹ø∞\·SY@\\gM\ﬁ◊£‹ø',NULL,NULL);
/*!40000 ALTER TABLE `homestay` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `homestay_gallery`
--

DROP TABLE IF EXISTS `homestay_gallery`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `homestay_gallery` (
  `id` varchar(8) NOT NULL,
  `homestay_id` varchar(8) NOT NULL,
  `url` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `homestay_gallery_homestay_id_foreign` (`homestay_id`),
  CONSTRAINT `homestay_gallery_homestay_id_foreign` FOREIGN KEY (`homestay_id`) REFERENCES `homestay` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `homestay_gallery`
--

LOCK TABLES `homestay_gallery` WRITE;
/*!40000 ALTER TABLE `homestay_gallery` DISABLE KEYS */;
INSERT INTO `homestay_gallery` VALUES ('01','01','1700275190_4bf1a3534d5c0ce2ad02.jpg','2023-11-17 19:40:37','2023-11-17 19:40:37'),('02','01','1700275193_698d9a8c169922c93052.jpg','2023-11-17 19:40:37','2023-11-17 19:40:37'),('03','01','1700275191_5dab5cd1a2d79be50453.jpg','2023-11-17 19:40:37','2023-11-17 19:40:37'),('04','2','1700275310_12b49a47004410f87fd1.jpg','2023-11-17 19:42:32','2023-11-17 19:42:32'),('05','2','1700275311_f8784c124fb70325feb3.jpg','2023-11-17 19:42:32','2023-11-17 19:42:32'),('06','2','1700275311_4901ee6cb155fe142728.jpg','2023-11-17 19:42:32','2023-11-17 19:42:32'),('07','3','1700275436_4635d4a0b28f7d84ee23.jpg','2023-11-17 19:44:31','2023-11-17 19:44:31'),('08','3','1700275438_1f86025d50b69fce0dc1.jpg','2023-11-17 19:44:31','2023-11-17 19:44:31'),('09','3','1700275436_b1f89f795a1a46e43920.jpg','2023-11-17 19:44:31','2023-11-17 19:44:31');
/*!40000 ALTER TABLE `homestay_gallery` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu`
--

DROP TABLE IF EXISTS `menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `menu` (
  `id` varchar(8) NOT NULL,
  `name` varchar(255) NOT NULL,
  `price` varchar(255) NOT NULL,
  `menu_image` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu`
--

LOCK TABLES `menu` WRITE;
/*!40000 ALTER TABLE `menu` DISABLE KEYS */;
/*!40000 ALTER TABLE `menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `migrations` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `version` varchar(255) NOT NULL,
  `class` varchar(255) NOT NULL,
  `group` varchar(255) NOT NULL,
  `namespace` varchar(255) NOT NULL,
  `time` int NOT NULL,
  `batch` int unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=48 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'2017-11-20-223112','Myth\\Auth\\Database\\Migrations\\CreateAuthTables','default','Myth\\Auth',1690214058,1),(2,'2022-07-13-025921','App\\Database\\Migrations\\Pariangan','default','App',1690214058,1),(3,'2022-07-13-025948','App\\Database\\Migrations\\Event','default','App',1690214058,1),(4,'2022-07-13-030025','App\\Database\\Migrations\\CulinaryPlace','default','App',1690214058,1),(5,'2022-07-13-030048','App\\Database\\Migrations\\SouvenirPlace','default','App',1690214058,1),(6,'2022-07-13-030112','App\\Database\\Migrations\\WorshipPlace','default','App',1690214058,1),(7,'2022-07-13-030132','App\\Database\\Migrations\\Facility','default','App',1690214058,1),(8,'2022-07-13-030159','App\\Database\\Migrations\\Atraction','default','App',1690214058,1),(9,'2022-07-13-032655','App\\Database\\Migrations\\ParianganGallery','default','App',1690214058,1),(10,'2022-07-13-032926','App\\Database\\Migrations\\ParianganVideo','default','App',1690214058,1),(11,'2022-07-13-033252','App\\Database\\Migrations\\AtractionGallery','default','App',1690214058,1),(12,'2022-07-13-033459','App\\Database\\Migrations\\AtractionVideo','default','App',1690214058,1),(13,'2022-07-13-033634','App\\Database\\Migrations\\EventGallery','default','App',1690214058,1),(14,'2022-07-13-033742','App\\Database\\Migrations\\EventVideo','default','App',1690214058,1),(15,'2022-07-13-033829','App\\Database\\Migrations\\FacilityGallery','default','App',1690214058,1),(16,'2022-07-13-033839','App\\Database\\Migrations\\FacilityVideo','default','App',1690214058,1),(17,'2022-07-13-033936','App\\Database\\Migrations\\WorshipPlaceGallery','default','App',1690214058,1),(18,'2022-07-13-033956','App\\Database\\Migrations\\WorshipPlaceVideo','default','App',1690214058,1),(19,'2022-07-13-034414','App\\Database\\Migrations\\CulinaryPlaceGallery','default','App',1690214058,1),(20,'2022-07-13-034423','App\\Database\\Migrations\\CulinaryPlaceVideo','default','App',1690214058,1),(21,'2022-07-13-034537','App\\Database\\Migrations\\SouvenirPlaceGallery','default','App',1690214058,1),(22,'2022-07-13-034547','App\\Database\\Migrations\\SouvenirPlaceVideo','default','App',1690214058,1),(23,'2022-07-13-034817','App\\Database\\Migrations\\Product','default','App',1690214058,1),(24,'2022-07-13-035312','App\\Database\\Migrations\\DetailProduct','default','App',1690214058,1),(25,'2022-07-13-035640','App\\Database\\Migrations\\Menu','default','App',1690214058,1),(26,'2022-07-13-035731','App\\Database\\Migrations\\DetailMenu','default','App',1690214058,1),(27,'2022-07-18-040720','App\\Database\\Migrations\\ReviewAtraction','default','App',1690214058,1),(28,'2022-08-14-022634','App\\Database\\Migrations\\Comment','default','App',1690214058,1),(29,'2023-10-23-041428','App\\Database\\Migrations\\Reservation','default','App',1698034506,2),(30,'2023-10-23-041559','App\\Database\\Migrations\\ReservationStatus','default','App',1698034570,3),(31,'2023-10-24-130707','App\\Database\\Migrations\\Reservation','default','App',1698152838,4),(32,'2023-10-24-130939','App\\Database\\Migrations\\Reservation','default','App',1698152984,5),(33,'2023-10-26-001131','App\\Database\\Migrations\\Homestay','default','App',1698279621,6),(34,'2023-10-26-001152','App\\Database\\Migrations\\HomestayGallery','default','App',1698279621,6),(35,'2023-10-26-004717','App\\Database\\Migrations\\HomestayGallery','default','App',1698281248,7),(36,'2023-11-04-052631','App\\Database\\Migrations\\Country','default','App',1699076011,8),(37,'2023-11-04-052637','App\\Database\\Migrations\\Province','default','App',1699076011,8),(38,'2023-11-04-052644','App\\Database\\Migrations\\City','default','App',1699076011,8),(39,'2023-11-04-053207','App\\Database\\Migrations\\Subdistrict','default','App',1699076011,8),(40,'2023-11-04-053644','App\\Database\\Migrations\\Country','default','App',1699076256,9),(41,'2023-11-04-053651','App\\Database\\Migrations\\Province','default','App',1699076256,9),(42,'2023-11-04-053657','App\\Database\\Migrations\\City','default','App',1699076256,9),(43,'2023-11-04-053701','App\\Database\\Migrations\\Subdistrict','default','App',1699076256,9),(44,'2023-11-04-054836','App\\Database\\Migrations\\Country','default','App',1699076978,10),(45,'2023-11-04-054842','App\\Database\\Migrations\\City','default','App',1699076978,10),(46,'2023-11-04-054853','App\\Database\\Migrations\\Province','default','App',1699076978,10),(47,'2023-11-04-054901','App\\Database\\Migrations\\Subdistrict','default','App',1699076978,10);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `package`
--

DROP TABLE IF EXISTS `package`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `package` (
  `id` varchar(2) NOT NULL,
  `name` varchar(25) NOT NULL,
  `price` int DEFAULT NULL,
  `capacity` int DEFAULT NULL,
  `cp` varchar(13) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `description` text,
  `url` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci,
  `costum` tinyint NOT NULL DEFAULT '2',
  `date` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `package`
--

LOCK TABLES `package` WRITE;
/*!40000 ALTER TABLE `package` DISABLE KEYS */;
INSERT INTO `package` VALUES ('02','Makan Bajamba',200000,10,'082284978004','Makan bajamba is eating together in one container in the Rumah Gadang','1704445810_39e32a244e0188acf606.jpg',2,NULL),('03','2 Hari 1 Malam Solo',350000,1,'082284978004','This package provides an offer for tourists who want to travel to the Nagari Tuo Pariangan village for 2 days and one night, which guarantees that tourists will not feel lonely.','1704446598_077eda6497541fd1b44c.png',2,NULL),('04','2 Hari 1 Malam Group',800000,10,'082284978004','This package provides an offer for tourists who want to travel to the Nagari Tuo Pariangan village for 2 days and one night, which guarantees that tourists will not feel lonely.','1704446263_3d38b3f55a5fdb1676e0.png',2,NULL),('05','Costume Package By -user1',290000,1,NULL,NULL,'costum_package.jpg',1,NULL),('06','2 Hari 1 Malam Solo + Cos',0,1,NULL,NULL,'costum_package.jpg',1,NULL),('07','Costume Package By -user1',10000,1,NULL,NULL,'costum_package.jpg',1,NULL);
/*!40000 ALTER TABLE `package` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `package_day`
--

DROP TABLE IF EXISTS `package_day`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `package_day` (
  `id_package` varchar(2) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `day` varchar(2) NOT NULL,
  `description` text,
  PRIMARY KEY (`id_package`,`day`),
  KEY `fk_package_day_package1_idx` (`id_package`),
  CONSTRAINT `fk_package_day_package1` FOREIGN KEY (`id_package`) REFERENCES `package` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `package_day`
--

LOCK TABLES `package_day` WRITE;
/*!40000 ALTER TABLE `package_day` DISABLE KEYS */;
INSERT INTO `package_day` VALUES ('02','1',NULL),('03','1','Hari Pertama'),('03','2','Hari Kedua'),('04','1','Hari Pertama'),('04','2','Hari Kedua'),('05','1',NULL),('06','1','Hari Pertama'),('06','2','Hari Kedua'),('06','3',NULL),('07','1',NULL);
/*!40000 ALTER TABLE `package_day` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pariangan`
--

DROP TABLE IF EXISTS `pariangan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pariangan` (
  `id` varchar(2) NOT NULL,
  `name` varchar(25) NOT NULL,
  `status` varchar(25) DEFAULT NULL,
  `open` time DEFAULT NULL,
  `close` time DEFAULT NULL,
  `type_of_tourism` varchar(50) DEFAULT NULL,
  `address` text,
  `ticket_price` varchar(25) DEFAULT NULL,
  `contact_person` varchar(13) DEFAULT NULL,
  `description` text,
  `video_url` text,
  `geom` geometry DEFAULT NULL,
  `geom_area` geometry DEFAULT NULL,
  `facebook` varchar(50) DEFAULT NULL,
  `instagram` varchar(50) DEFAULT NULL,
  `youtube` varchar(50) DEFAULT NULL,
  `tiktok` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pariangan`
--

LOCK TABLES `pariangan` WRITE;
/*!40000 ALTER TABLE `pariangan` DISABLE KEYS */;
INSERT INTO `pariangan` VALUES ('1','Nagari Tuo Pariangan','oke','06:00:00','18:00:00','Eco Tourism, Education, Nature','Kec. Pariangan, Kab. Tanah Datar, Prov. Sumatera Barat','-','082218141289','Nagari Tuo Pariangan is one of the villages located in Tanah Datar Regency. Situated on the slopes of Mount Merapi in the Pariangan District of Tanah Datar Regency, Nagari Tuo Pariangan is positioned between the cities of Batusangkar and Padang Panjang. It is 95 kilometers north of Padang and 35 kilometers from Bukittinggi, covering an area of 17.97 square kilometers. Geographically, Nagari Tuo Pariangan is situated on the slopes of Mount Marapi, which is still active to this day. The traditional houses known as Rumah Gadang, used as residences by the villagers in Nagari Tuo Pariangan, are noteworthy. Despite their aged appearance, these houses still maintain their charm and uniqueness due to the distinctive Minang motifs. Interestingly, the villagers construct these houses using traditional methods without the use of nails.\r\n\r\nNagari Tuo Pariangan holds special significance for the Minangkabau community. Historical records in the Minang tambo (oral tradition) indicate that Nagari Tuo Pariangan is considered the original village of the Minangkabau ethnic group, referred to locally as Tampuk Tangkai Alam Minangkabau. This designation implies that the village is believed to be the place where life first emerged in the Minangkabau region hundreds of years ago.',NULL,_binary '\0\0\0\0\0\0\0Pª\Í\≈Y@íˆ\‘$Wı€ø',_binary '\Ê\0\0\0\0\0\0\0\0\0\0\0\0\0\0\¬\0\0\0\\∞2ø? Y@út\ÿ3:‹ø¥yfìç Y@Ä~‹øtp}≥( Y@˘NªÛü‹øÛ\Î\—e˚Y@\Óº‹øc∂S), Y@¥ë°z›ø´\Õˇ+ Y@xæ\0z›ø\«kÒ) Y@\‘\"i7z›øÃä–æ( Y@$q~y›øπj\∆X\‹Y@\⁄uoEbÇ›øp\Ô	\»\ÕY@à´\€\ÍÉ›øÒHººY@˝g•!Ù}›ø∞ø%\0Y@ˇ\«Y\Èˇf›ø∏Çï˘}Y@(ª™˝g›ø\–\ƒcı}Y@¸«õh¸g›øX+ßò^Y@˚\Á¯/Ñ›øÄ¸ﬁ¶øY@∞\" µ›ø?q\0˝æY@xˆ\Ì≥›øxvçÒºY@˛\ÀÚóqÆ›ø9˙©ªY@˘cü\ÿTß›øºFπY@¿Rn\Ï£›øåC∂Y@\«◊ûY†›øÖQ›∑µY@Ù\›ú›ø∏≥<¥Y@˘#\‰ÔÉò›ø,ã±≤Y@\‡∆ì›øê…áE±Y@Ñ[œê›øXoW˘ØY@@M-[\Îã›øîìx/≠Y@$qyá›ø4I¿C¨Y@˛7Q\\üÉ›ø¨,\nª®Y@˘Î∑á\Œ|›øÉßY@h™\›eu›ø‘ä^¸£Y@˝ü€∑ˇm›ø∏¢aå£Y@w-!Ùl›øï\“\·°Y@pVüg›ø\r\€>ö†Y@˛ßòJ?a›øˇPëûY@˘[ˇunZ›ø‹ì¿\ÊúY@¸˝b∂dU›øt(!˝õY@˝3•aùO›ø¿¥ó#öY@îî\Ã˚I›ø§êS*óY@\–\ÓêbÄD›ø\'uß\‡ïY@LÄ\Õ\ﬁ>›ø<Bı≈îY@Ûˇ™#G:›ø8\ÌQnëY@ˇwùy\ﬁ2›øÑy»îèY@˙\ÎS˙Æ-›ø˘ı\∆ZçY@à∑:•(›øc∏)‘âY@ºB\Ê\  ›ø<\∆NxâY@‹Å¶\ ›ø∏\‚ÜY@u\È_í\ ›ø4\‘PYÉY@Ûu˛\”\r›øâ\«1ÄY@p\Á\”t›øp¢Ö∫~Y@¸á\È1\0›ø¥\r\„|Y@˚c\Ã£¯‹ø¡ \«{zY@¯\√\Î\Ó‹øõï7\—xY@¥\ﬂ\Îµ\Í‹ø\»xîJxY@˚ü\Ê´\‰\„‹ø=m¡wY@¯≥∑læ\€‹ø=bà˜wY@¥C\÷‹øÄHBlzY@˙G≠≠é\“‹øP7\”\ŒzY@˙üåé\Œ‹ø\Ì∂\ÕuY@¨\Ô\√A\¬‹ø\Ë˙\ƒsY@∞ë\⁄zº‹ø`æâ|rY@˝S17µ‹ø#\…Q%oY@¯ìØp7≠‹ø0\‹ælY@\\ïõ®•‹ø\‰^ô∑jY@⁄®N≤û‹ø\È*\›]gY@ˇó)yò‹ø\Ê_&eY@˚á	@í‹ø\”jH\‹cY@\0°3ƒå‹øxÖà\Â`Y@ƒÑ‹øu\›[Y@L\Œı\"‹ø‹ÉˇcWY@˙Gú\À\√x‹øD\ﬂ,UY@	8wÃär‹øez˚sQY@ã∑\ﬂk‹ø`˝}kLY@-\Œf‹ø\«PòAFY@˝o)dù`‹ø†„íôAY@¯\„\ﬂ\‰m[‹øÄï!3<Y@˘S\ﬂe+T‹ø¨Q\Ìx8Y@B¶!O‹øø£3Y@Ωp\Á\¬H‹øXXN\Á/Y@ËøΩ!C‹ø\€¡wQ*Y@Tø>\ﬂ;‹ø\\\ƒU\n&Y@˚?\Ë4‹ø]éFÙ!Y@†´\ﬁ+‹ø\·∫Q\Z Y@\‰P+Ò%‹ø|Û&\ZY@¸>-P‹ø\–h\0Y@˙cjmu‹øu˜\ÕXY@˚üÄYF‹ø,úì\ÕY@	ß/˙\n‹ø\ËëY@˘W\ÁÑu‹ø\‡Tìñ\0Y@ˇS0Öb‹ø#∏%\Õ˙Y@tåÜ\Á\0‹ø\»ÚBïıY@Xt≤\‘˙€ø`Ïõ†ÚY@î;3¡€ø<A/7ÛY@¯ª∂»á\Í€ø`•≤ÚY@¸Å4≠\ﬁ€ø≠\À\ﬂÛY@\‹R\ﬂC\”€øda∑ÛY@îπ\ns\Ã€øπ6TåÛY@Ñî:\∆€ød3\nìÛY@>\Õ…ãL¿€ø∞ü£˙ÛY@PØ∂Ω∏€ø¯\Ï® ıY@¯\œXh≥€ødè.\€ÛY@˘ çT©€øl;ï\¬ÚY@ˇ\”0çp§€ø§g≥\ÍÛY@<yõ€øëb3Y@˚ç˘oî€ø¥øÄπÒY@\‹\Ê˘xç€ø\0\«!,ÙY@+°ª$Œä€ø¯\Ï® ıY@˙èy\‰Ü€ø\–I9©˘Y@_Å~€øáIL´¸Y@	\‰\‰4z€øåp\›\ﬁˇY@˚◊∏äw€ø\¬&SY@¯∑ØπYr€ø47)	Y@˙?L\‰\›l€øAt\ÌY@\\‘§\ f€ø±)$ÙY@;\–˘_€øF ªY@L\ÂaW€øx\ËOvY@d∂\–:O€øI¸Y@\\Õ¶\»F€øÑ(=xY@¸µºr=€øx\ÁxªY@~!<\⁄8€ø@¥Ÿ¢Y@¯/©¸\∆2€ø˚B\ZY@\‡\◊HÑ+€ø’ïR\·Y@¸«íÉ#€øg*≥˜Y@¯´s\”f€øp;\‘Y@	»Äi€ø¥¶°¸Y@¯7Ä\Í\ƒ\n€øÄ\–˝\ÊY@F^\÷\ƒ€øLBAY@˝Û\r\·˘⁄øO,¶Y@¯í◊îı⁄ø\Õ\—¡üY@H\ÿm\Ó⁄ø¡ıı\◊Y@˘ØÆ+\Ê⁄ø;\0—ÇY@˛\ﬂ\◊Y>\‹⁄øP2]Y@\Á\·¶\”⁄øWcS¯˝Y@†Ñú\ ⁄ø|;VÑˆY@∏r˚¿⁄øÀü\ÔY@<l\"3∏⁄øQñ\Ó	\ÌY@\0I¡Æ⁄øD\‚¸Ú\ÓY@¯œ†ë•⁄ø\0Ûn\—\ÓY@˝\Áˆ¥ô⁄ø\08ä\ÔY@˝Fã}ì⁄øt êY@ä≠†iâ⁄ø¥8)ÒY@ú~aCÅ⁄ø∏≥ûY@˙k\À6&z⁄øh†\»\ÓY@˜ó\Z\rÖt⁄ø§\‰?\ÓY@\0\0FM™l⁄ø%µ´\ÎY@î;ézc⁄ø\ƒ`‹≤\ËY@˛.\‰\\⁄ø‹ª}\ÈY@˛gØOJR⁄ø\›•\ÌY@¯\√Á∫ïJ⁄ømWKY@ˇ;®D⁄ø<ÒAÙY@	8‘•5<⁄ø\Ì\n•\ÂˆY@\»\'\–\Ã8⁄ø¯%Tp¯Y@¸s ¸\’-⁄ø\Z3â˙Y@hcë\À$⁄øùåc$˚Y@Ñp\'l\Z⁄øÄHBl˙Y@˝G\ \'u⁄øõ\√Iı¯Y@¿º}⁄øTH2´˜Y@¯˛(E⁄ø0ù\≈A¯Y@˚\◊öˇŸø•Üπ\Ó˜Y@˝è˛}ÙŸøw\‘y˘Y@\‰´?\ÍŸøèêQ˘Y@¯≥VÖ\·ŸøÅY°H˜Y@\‘\ÓWæ\€Ÿø \rñ†ıY@˚´±\«\‘Ÿøt\‡zπÙY@˜\'§W^\ÕŸø¨\nF%ıY@˚ˇICç\¬Ÿø\‹\Ì¢ûÙY@˙`∫ŸølÄ∞¯ÚY@^ô\\±Ÿø\œ\€\«¿Y@\‘«Øƒ®Ÿøõ\Í\ÔY@¯\√pÜ,úŸø‘º¡º\ÏY@˙#.\«+êŸø):∫\0\ÍY@\\sGŸø\‹w4\ƒ\ÁY@˚∑v≥P|ŸøT\»s\"\ÊY@˘ª4loŸøêÃ∑ô\ÂY@¯W≤tOhŸølÜC%\‰Y@˝;v]ŸøÛ±\Œ\„Y@(&6WŸø§Ü\‚Y@4\"OŸøΩI†\‡Y@På\‚IŸøÑ\–\Ê\›Y@˝\Ît¯µ?ŸøB\Ã%U\€Y@ˇ/xNi3Ÿø®¿Òk\⁄Y@¯g∫˘°-Ÿø=1\ÿY@˙/\Ë:C\'Ÿø\ƒ\Â \◊Y@˘\◊&¥ŸøπÒ8\÷Y@¯–ªgŸø®Kˇí\‘Y@PR\'†	Ÿød\–\ÁH\”Y@˚\'*=.Ÿø|\‰£ \”Y@\0N>\‚¸ÿøX∂¥ø\ÿY@¸#Aº¸ÿøTwCø\€Y@îU}S˝ÿøò=ø\ﬁY@tõí˝ÿø!¡!Ø\‚Y@ˇ\'`ß˝˚ÿø◊ª\”¯\‡Y@\‰jÜØä⁄øÛ\‡Ç«íY@˛ÀªZ£€ø\\∞2ø? Y@út\ÿ3:‹ø',NULL,'pokdarwis.pariangan',NULL,'pokdarwis.pariangan');
/*!40000 ALTER TABLE `pariangan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pariangan_gallery`
--

DROP TABLE IF EXISTS `pariangan_gallery`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pariangan_gallery` (
  `id` varchar(2) NOT NULL,
  `pariangan_id` varchar(2) NOT NULL,
  `url` text,
  PRIMARY KEY (`id`),
  KEY `fk_pariangan_gallery_pariangan1_idx` (`pariangan_id`),
  CONSTRAINT `fk_pariangan_gallery_pariangan1` FOREIGN KEY (`pariangan_id`) REFERENCES `pariangan` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pariangan_gallery`
--

LOCK TABLES `pariangan_gallery` WRITE;
/*!40000 ALTER TABLE `pariangan_gallery` DISABLE KEYS */;
/*!40000 ALTER TABLE `pariangan_gallery` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pariangan_video`
--

DROP TABLE IF EXISTS `pariangan_video`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pariangan_video` (
  `id` varchar(8) NOT NULL,
  `pariangan_id` varchar(8) NOT NULL,
  `url` varchar(255) NOT NULL,
  `duration` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `pariangan_video_pariangan_id_foreign` (`pariangan_id`),
  CONSTRAINT `pariangan_video_pariangan_id_foreign` FOREIGN KEY (`pariangan_id`) REFERENCES `pariangan` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pariangan_video`
--

LOCK TABLES `pariangan_video` WRITE;
/*!40000 ALTER TABLE `pariangan_video` DISABLE KEYS */;
/*!40000 ALTER TABLE `pariangan_video` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product` (
  `id` varchar(2) NOT NULL,
  `name` varchar(25) NOT NULL,
  `product_category_id` varchar(2) NOT NULL,
  `price` int DEFAULT NULL,
  `brosur_url` text,
  `description` text,
  PRIMARY KEY (`id`),
  KEY `fk_product_product_category1_idx` (`product_category_id`),
  CONSTRAINT `fk_product_product_category1` FOREIGN KEY (`product_category_id`) REFERENCES `product_category` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` VALUES ('01','Kawa Daun','1',5000,'1690227163_b8e2f1411fad1d3edcc0.png','Minuman dari daun kopi yang diseduh seperti teh . Daun kopi lokal pilihan awalnya dikeringkan dengan cara disangrai selama 12 jam. Saat akan diminum, daun kering ini dicampur dengan air dingin, lalu diseduh dengan air mendidih.'),('02','Dakak-Dakak','1',13000,'1690227228_3b568a3e3f1a268d7ec2.jpg','Sejenis panganan ringan khas Pariangan yang terbuat dari tepung beras. Rasanya gurih dan renyah sehingga bisa membuat siapa pun yang mencicipinya ketagihan.'),('03','Batik Pariangan','2',100000,'1690227308_db1e8769ec7f1a783c36.jpg','Batik Khas dari Pariangan, dan memiliki corak khas dari Pariangan');
/*!40000 ALTER TABLE `product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_category`
--

DROP TABLE IF EXISTS `product_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product_category` (
  `id` varchar(2) NOT NULL,
  `name` varchar(25) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_category`
--

LOCK TABLES `product_category` WRITE;
/*!40000 ALTER TABLE `product_category` DISABLE KEYS */;
INSERT INTO `product_category` VALUES ('1','Culinery'),('2','Souvenir');
/*!40000 ALTER TABLE `product_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reservation`
--

DROP TABLE IF EXISTS `reservation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `reservation` (
  `id` varchar(45) NOT NULL,
  `id_user` int unsigned NOT NULL,
  `id_package` varchar(50) NOT NULL,
  `request_date` date NOT NULL,
  `id_reservation_status` varchar(50) NOT NULL,
  `number_people` int DEFAULT '0',
  `check_in` timestamp NULL DEFAULT NULL,
  `total_price` bigint DEFAULT '0',
  `confirmed_at` timestamp NULL DEFAULT NULL,
  `confirmed_by` int DEFAULT NULL,
  `deposit` int DEFAULT '0',
  `canceled_at` timestamp NULL DEFAULT NULL,
  `canceled_by` int DEFAULT NULL,
  `proof_of_deposit` varchar(255) DEFAULT NULL,
  `deposit_date` varchar(255) DEFAULT NULL,
  `proof_of_payment` varchar(255) DEFAULT NULL,
  `payment_accepted_date` timestamp NULL DEFAULT NULL,
  `payment_accepted_by` int DEFAULT NULL,
  `proof_of_refund` varchar(255) DEFAULT NULL,
  `refund_date` timestamp NULL DEFAULT NULL,
  `refund_by` int DEFAULT NULL,
  `comment` varchar(255) DEFAULT NULL,
  `review` varchar(255) DEFAULT NULL,
  `rating` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`,`id_user`,`id_package`,`request_date`),
  KEY `reservation_id_user_foreign` (`id_user`),
  KEY `reservation_id_package_foreign` (`id_package`),
  KEY `reservation_id_reservation_status_foreign` (`id_reservation_status`),
  CONSTRAINT `reservation_id_package_foreign` FOREIGN KEY (`id_package`) REFERENCES `package` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `reservation_id_reservation_status_foreign` FOREIGN KEY (`id_reservation_status`) REFERENCES `reservation_status` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `reservation_id_user_foreign` FOREIGN KEY (`id_user`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reservation`
--

LOCK TABLES `reservation` WRITE;
/*!40000 ALTER TABLE `reservation` DISABLE KEYS */;
INSERT INTO `reservation` VALUES ('R001',3,'03','2024-10-17','3',1,NULL,350000,'2024-10-06 09:44:37',2,100000,'2024-10-06 09:45:25',3,'1728207894_cd856de97215ad52dba3.jpg','2024-10-06 16:45:01',NULL,'2024-10-06 09:45:09',2,NULL,NULL,NULL,NULL,NULL,NULL,'2024-10-06 02:44:22','2024-10-06 02:45:25'),('R002',3,'07','2024-10-13','1',1,NULL,10000,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-10-06 02:49:11','2024-10-06 02:49:11');
/*!40000 ALTER TABLE `reservation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reservation_status`
--

DROP TABLE IF EXISTS `reservation_status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `reservation_status` (
  `id` varchar(50) NOT NULL,
  `status` varchar(10) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reservation_status`
--

LOCK TABLES `reservation_status` WRITE;
/*!40000 ALTER TABLE `reservation_status` DISABLE KEYS */;
INSERT INTO `reservation_status` VALUES ('1','pending','2023-10-22 21:21:26','2023-10-22 21:21:26'),('2','confirmed','2023-10-22 21:21:26','2023-10-22 21:21:26'),('3','cancel','2023-10-22 21:21:26','2023-10-22 21:21:26'),('4','paid','2023-10-22 21:21:26','2023-10-22 21:21:26'),('5','finish','2023-10-22 21:21:26','2023-10-22 21:21:26');
/*!40000 ALTER TABLE `reservation_status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `review_atraction`
--

DROP TABLE IF EXISTS `review_atraction`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `review_atraction` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int unsigned NOT NULL,
  `atraction_id` varchar(8) DEFAULT NULL,
  `event_id` varchar(8) DEFAULT NULL,
  `comment` text,
  `rating` int NOT NULL,
  `created_date` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_date` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `review_atraction_user_id_foreign` (`user_id`),
  KEY `review_atraction_atraction_id_foreign` (`atraction_id`),
  KEY `review_event_user_id_foreign_idx` (`event_id`),
  CONSTRAINT `review_atraction_atraction_id_foreign` FOREIGN KEY (`atraction_id`) REFERENCES `atraction` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `review_atraction_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `review_event_event_id_foreign` FOREIGN KEY (`event_id`) REFERENCES `event` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `review_atraction`
--

LOCK TABLES `review_atraction` WRITE;
/*!40000 ALTER TABLE `review_atraction` DISABLE KEYS */;
INSERT INTO `review_atraction` VALUES (2,2,'01',NULL,'Mantap ini atraksinya',5,'2023-10-21 11:21:46','2023-10-23 09:33:02'),(3,2,'03',NULL,NULL,5,'2023-10-21 11:22:43','2023-10-21 11:22:43'),(16,3,'01',NULL,'asdas',5,'2023-10-24 15:12:16','2023-10-28 15:45:48');
/*!40000 ALTER TABLE `review_atraction` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `role`
--

DROP TABLE IF EXISTS `role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `role` (
  `id` varchar(2) NOT NULL,
  `name` varchar(25) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role`
--

LOCK TABLES `role` WRITE;
/*!40000 ALTER TABLE `role` DISABLE KEYS */;
/*!40000 ALTER TABLE `role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `service_package`
--

DROP TABLE IF EXISTS `service_package`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `service_package` (
  `id` varchar(2) NOT NULL,
  `name` varchar(25) NOT NULL,
  `price` int DEFAULT NULL,
  `is_group` tinyint DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `service_package`
--

LOCK TABLES `service_package` WRITE;
/*!40000 ALTER TABLE `service_package` DISABLE KEYS */;
INSERT INTO `service_package` VALUES ('01','Makan Bajamba',NULL,NULL),('02','Tour Guide',NULL,NULL),('03','Sepeda Motor dan Helm',NULL,NULL),('04','Homestay 1 Malam',NULL,NULL),('05','1 x makan malam ',NULL,NULL),('06','1 x sarapan',NULL,NULL),('07','Bahan Bakar',NULL,NULL),('08','Tiket Masuk dan Tiket Par',NULL,NULL),('09','Kebutuhan Pribadi',NULL,NULL),('10','Makan Siang',NULL,NULL),('11','Tips',NULL,NULL);
/*!40000 ALTER TABLE `service_package` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `souvenir_gallery`
--

DROP TABLE IF EXISTS `souvenir_gallery`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `souvenir_gallery` (
  `id` varchar(2) NOT NULL,
  `souvenir_place_id` varchar(2) NOT NULL,
  `url` text,
  PRIMARY KEY (`id`),
  KEY `fk_souvenir_gallery_souvenir_place1_idx` (`souvenir_place_id`),
  CONSTRAINT `fk_souvenir_gallery_souvenir_place1` FOREIGN KEY (`souvenir_place_id`) REFERENCES `souvenir_place` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `souvenir_gallery`
--

LOCK TABLES `souvenir_gallery` WRITE;
/*!40000 ALTER TABLE `souvenir_gallery` DISABLE KEYS */;
/*!40000 ALTER TABLE `souvenir_gallery` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `souvenir_place`
--

DROP TABLE IF EXISTS `souvenir_place`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `souvenir_place` (
  `id` varchar(2) NOT NULL,
  `name` varchar(25) NOT NULL,
  `contact_person` varchar(13) DEFAULT NULL,
  `owner` varchar(25) DEFAULT NULL,
  `geom` geometry DEFAULT NULL,
  `geom_area` geometry DEFAULT NULL,
  `open` time DEFAULT NULL,
  `close` time DEFAULT NULL,
  `description` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `souvenir_place`
--

LOCK TABLES `souvenir_place` WRITE;
/*!40000 ALTER TABLE `souvenir_place` DISABLE KEYS */;
INSERT INTO `souvenir_place` VALUES ('01','Gallery Seni',NULL,'Pokdarwis Pariangan',_binary '\0\0\0\0\0\0\0uÚu[öY@\0K\◊\·\"V›ø',_binary '\Ê\0\0\0\0\0\0\0\0\0\0\0∏ÄÙöY@eìΩ¡V›ø∑ÄîöY@<ù![V›ø∑ÄTlöY@ï5$\·OV›ø∑ÄªöY@éöG?V›ø∂Ä‘ØöY@πæ\'\"\‘U›ø∏ÄÙöY@eìΩ¡V›ø','09:00:00','19:00:00','Galery seni yang di sediakan oleh pihak pokdarwis pariangan kepada wisatawan yang ingin berbelanja souvenir khas dari Nagati Tuo Pariangan'),('02','Rumah Batik ','082218141289',NULL,_binary '\0\0\0\0\0\0\0öyì[jY@]Z\‰	\n›ø',_binary '\Ê\0\0\0\0\0\0\0\0\0\0\0æ¯˚iY@¥Ké*	›øøx^iY@	(\Ë6\n›øæ¯\ÌhY@™s\⁄f\‘\n›øø∏\‚hY@k\‰4›øæ∏wjY@\Èj$›øø≠kY@tn¥\»\Ì	›øæ¯˚iY@¥Ké*	›ø','09:00:00','18:00:00','Rumah Batilk Pariangan menyuguhkan wisatawan untuk mempelajari pembuatan batik dan menyediakan batik yang bisa dibeli oleh wisatawan.');
/*!40000 ALTER TABLE `souvenir_place` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `souvenir_place_gallery`
--

DROP TABLE IF EXISTS `souvenir_place_gallery`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `souvenir_place_gallery` (
  `id` varchar(8) NOT NULL,
  `souvenir_place_id` varchar(8) NOT NULL,
  `url` varchar(255) NOT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `souvenir_place_gallery_souvenir_place_id_foreign` (`souvenir_place_id`),
  CONSTRAINT `souvenir_place_gallery_souvenir_place_id_foreign` FOREIGN KEY (`souvenir_place_id`) REFERENCES `souvenir_place` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `souvenir_place_gallery`
--

LOCK TABLES `souvenir_place_gallery` WRITE;
/*!40000 ALTER TABLE `souvenir_place_gallery` DISABLE KEYS */;
INSERT INTO `souvenir_place_gallery` VALUES ('01','01','1690363851_afab95768b3d7a928094.jpg','2023-07-26 09:34:37','2023-07-26 09:34:37'),('02','01','1690363851_9f3a1b650e14a9b500dc.jpg','2023-07-26 09:34:37','2023-07-26 09:34:37'),('03','01','1690363855_cc2a831fdbfe92bd11ba.jpg','2023-07-26 09:34:37','2023-07-26 09:34:37'),('04','02','1690450368_4dcf3f33af84e2f5fc00.jpg','2023-07-27 09:33:34','2023-07-27 09:33:34'),('05','02','1690450347_85b3f4f4917edd4a63d2.jpg','2023-07-27 09:33:34','2023-07-27 09:33:34'),('06','02','1690450330_ae9c93542e36a4a32b80.jpg','2023-07-27 09:33:34','2023-07-27 09:33:34');
/*!40000 ALTER TABLE `souvenir_place_gallery` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `souvenir_place_video`
--

DROP TABLE IF EXISTS `souvenir_place_video`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `souvenir_place_video` (
  `id` varchar(8) NOT NULL,
  `souvenir_place_id` varchar(8) NOT NULL,
  `url` varchar(255) NOT NULL,
  `duration` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `souvenir_place_video_souvenir_place_id_foreign` (`souvenir_place_id`),
  CONSTRAINT `souvenir_place_video_souvenir_place_id_foreign` FOREIGN KEY (`souvenir_place_id`) REFERENCES `souvenir_place` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `souvenir_place_video`
--

LOCK TABLES `souvenir_place_video` WRITE;
/*!40000 ALTER TABLE `souvenir_place_video` DISABLE KEYS */;
/*!40000 ALTER TABLE `souvenir_place_video` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `email` varchar(255) NOT NULL,
  `username` varchar(30) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `contact` int DEFAULT NULL,
  `user_image` varchar(255) NOT NULL DEFAULT 'default.svg',
  `password_hash` varchar(255) NOT NULL,
  `reset_hash` varchar(255) DEFAULT NULL,
  `reset_at` datetime DEFAULT NULL,
  `reset_expires` datetime DEFAULT NULL,
  `activate_hash` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `status_message` varchar(255) DEFAULT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '0',
  `force_pass_reset` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'fauzanpiliang13@gmail.com','piliang13','fauzan',NULL,NULL,'default.svg','$2y$10$QysUxU6DHFbQT0/wvUR.7O.wePPStPJWIwF5QU5kR9wIIA97yjqwe',NULL,NULL,NULL,NULL,NULL,NULL,1,0,'2023-07-24 15:56:31','2023-07-24 15:56:31',NULL),(2,'admin@gmail.com','admin','admin','',0,'default.svg','$2y$10$hCY/AcGKsIGOLp8ZTyTi5u5tAxtFvRpw3I1EsA3tHyqUNHh.S/bs6',NULL,NULL,NULL,NULL,NULL,NULL,1,0,'2023-10-21 03:22:06','2023-10-21 03:22:06',NULL),(3,'user@gmail.com','user123','user','',0,'default.svg','$2y$10$NT0X7LvN2xBlmBzSj9FO5eUzmJlNhPwhHbpF1/DBta0mWlNBgNt6S',NULL,NULL,NULL,NULL,NULL,NULL,1,0,'2023-10-23 04:29:20','2023-10-23 04:29:20',NULL),(4,'tes@gmail.com','tess','tess',NULL,NULL,'default.svg','$2y$10$TNEYh2pB.L.yLRJCldYli.N5R5lkgcmubl.vA6capCZ1k0D2Nh75.',NULL,NULL,NULL,NULL,NULL,NULL,1,0,'2023-11-11 05:48:45','2023-11-11 05:48:45',NULL),(6,'userrrr213@gmail.com','user123456',NULL,NULL,NULL,'default.svg','$2y$10$uQI632w8mpt5D8J5WUVeOuFDt9jykI5ym4Dc8jF7kLMBSeGz2Gmh6',NULL,NULL,NULL,NULL,NULL,NULL,1,0,'2023-11-21 02:39:17','2023-11-21 02:39:17',NULL),(7,'zikralucas@gmail.com','piliang1313',NULL,NULL,NULL,'default.svg','$2y$10$5IhTsCurynN99YQEIVdoM.6Yn4lSlGL3znWWsIgD5jl/irv4Yy1My',NULL,NULL,NULL,NULL,NULL,NULL,1,0,'2023-11-21 07:26:55','2023-11-21 07:26:55',NULL);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `worship_place`
--

DROP TABLE IF EXISTS `worship_place`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `worship_place` (
  `id` varchar(2) NOT NULL,
  `name` varchar(25) NOT NULL,
  `category` varchar(25) DEFAULT NULL,
  `building_size` int DEFAULT NULL,
  `capacity` int DEFAULT NULL,
  `geom` geometry DEFAULT NULL,
  `geom_area` geometry DEFAULT NULL,
  `description` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `worship_place`
--

LOCK TABLES `worship_place` WRITE;
/*!40000 ALTER TABLE `worship_place` DISABLE KEYS */;
INSERT INTO `worship_place` VALUES ('01','Masjid Islah','Mesjid',400,200,_binary '\0\0\0\0\0\0\0Ç,v¡ÅY@ÀüoV›ø',_binary '\Ê\0\0\0\0\0\0\0\0\0\0\0Nø9’ÄY@v\Ë\ÊT›øNøy\“Y@ \⁄\Ï\’V›øOøπ¸~Y@\—i\À\Ë\ƒX›øÜ\0\ÈÉY@ô\√]\‰\‡Z›øÜ¿dÑY@\€\–c$[›øÜ@ÜY@Ω\‘4¨$W›øÜÄgÖY@†hÆ≠pV›øNø9’ÄY@v\Ë\ÊT›ø','Salah satu masjid tertua di Sumatra Barat yang berlokasi di Pariangan, Kabupaten Tanah Datar, Sumatra Barat. Letaknya berlokasikan 50 kilometer dari jalan utama Padang Panjang-Batusangkar'),('02','Masjid Taqwa Guguak','Masjid',344,160,_binary '\0\0\0\0\0\0\0usY@˚^ø7∏z‹ø',_binary '\Ê\0\0\0\0\0\0\0\0\0\0\0Ä\'VY@YUVπ\Zz‹øÅ\'ñ\∆Y@;\Â—¥c|‹øÅ\'VãY@p≠*Vµ{‹øÅ\'ñ\‚Y@\ﬁ\”kªy‹øÅ\'ñlY@a∫ìy‹øÄ\'VY@YUVπ\Zz‹ø','Salah Satu Masjid yang terletak di Panorama Pariangan'),('03','masjid','Musholla',300,300,_binary '\0\0\0\0\0\0\0nç•õY@˙ãÍæ≠Ö‹ø',_binary '\Ê\0\0\0\0\0\0\0\0\0\0\0zÜ$JY@JU\„\≈ÃÑ‹øzÜ$wY@\—’ìBxÜ‹øzÜ§Y@∑\ÌF∂Ñ‹øzÜ§\"Y@Å\"ÄH{É‹øzÜ$JY@JU\„\≈ÃÑ‹ø','asdadas');
/*!40000 ALTER TABLE `worship_place` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `worship_place_gallery`
--

DROP TABLE IF EXISTS `worship_place_gallery`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `worship_place_gallery` (
  `id` varchar(2) NOT NULL,
  `worship_place_id` varchar(2) NOT NULL,
  `url` text,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_worship_place_gallery_worship_place1_idx` (`worship_place_id`),
  CONSTRAINT `fk_worship_place_gallery_worship_place1` FOREIGN KEY (`worship_place_id`) REFERENCES `worship_place` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `worship_place_gallery`
--

LOCK TABLES `worship_place_gallery` WRITE;
/*!40000 ALTER TABLE `worship_place_gallery` DISABLE KEYS */;
INSERT INTO `worship_place_gallery` VALUES ('04','02','1690362876_abbd4b9a87fb7fa013dd.jpg','2023-07-26 09:15:05','2023-07-26 09:15:05'),('05','02','1690362877_2243368bf8765cf8b2d1.jpg','2023-07-26 09:15:05','2023-07-26 09:15:05'),('06','02','1690362879_d2a9f2c5d869c746e87f.jpg','2023-07-26 09:15:05','2023-07-26 09:15:05'),('07','01','1699872075_dd5bc1ae65f301d60326.jpg','2023-11-13 10:41:19','2023-11-13 10:41:19'),('08','01','1699872075_e9da6331ede3da2debbe.jpg','2023-11-13 10:41:19','2023-11-13 10:41:19'),('09','01','1699872076_f71397f178bdf0ddbe1c.jpg','2023-11-13 10:41:19','2023-11-13 10:41:19'),('10','03','1700274997_75c44932cc58ca589387.png','2023-11-18 02:36:57','2023-11-18 02:36:57');
/*!40000 ALTER TABLE `worship_place_gallery` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `worship_place_video`
--

DROP TABLE IF EXISTS `worship_place_video`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `worship_place_video` (
  `id` varchar(8) NOT NULL,
  `worship_place_id` varchar(8) NOT NULL,
  `url` varchar(255) NOT NULL,
  `duration` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `worship_place_video_worship_place_id_foreign` (`worship_place_id`),
  CONSTRAINT `worship_place_video_worship_place_id_foreign` FOREIGN KEY (`worship_place_id`) REFERENCES `worship_place` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `worship_place_video`
--

LOCK TABLES `worship_place_video` WRITE;
/*!40000 ALTER TABLE `worship_place_video` DISABLE KEYS */;
/*!40000 ALTER TABLE `worship_place_video` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-10-06 16:51:35
