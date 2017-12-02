CREATE DATABASE  IF NOT EXISTS `photoholic` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `photoholic`;
-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: localhost    Database: photoholic
-- ------------------------------------------------------
-- Server version	5.7.20-log

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
-- Table structure for table `comments`
--

DROP TABLE IF EXISTS `comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `comments` (
  `comment_id` int(11) NOT NULL AUTO_INCREMENT,
  `comment_text` varchar(1045) NOT NULL,
  `comment_user_id` int(11) DEFAULT NULL,
  `comment_photo_id` int(11) DEFAULT NULL,
  `comment_user_name` varchar(45) DEFAULT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`comment_id`),
  UNIQUE KEY `comment_id_UNIQUE` (`comment_id`),
  KEY `comment_user_id_idx` (`comment_user_id`),
  KEY `comment_photo_id_idx` (`comment_photo_id`),
  KEY `comment_user_name_idx` (`comment_user_name`),
  CONSTRAINT `comment_photo_id` FOREIGN KEY (`comment_photo_id`) REFERENCES `photos` (`photo_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `comment_user_id` FOREIGN KEY (`comment_user_id`) REFERENCES `users` (`user_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comments`
--

LOCK TABLES `comments` WRITE;
/*!40000 ALTER TABLE `comments` DISABLE KEYS */;
INSERT INTO `comments` VALUES (1,'Pretty picture <3',1,3,NULL,'2017-10-17 11:52:28'),(3,'It\'s a love story baby just sayyyy yessss',2,15,NULL,'2017-10-18 11:15:52'),(4,'Yayyy eclipse',1,16,NULL,'2017-10-21 14:39:43'),(5,'Dora, doesn\'t your mom wonder where her 5 year old is all the time and WHY ALL HER FRIENDS ARE ANIMALS?',8,33,'Menerah97','2017-10-24 04:20:16'),(6,'LOLOLOLOLOL. I can\'t believe you don\'t have friends in humans. Try being friendly with us too lolololololol',8,33,'Menerah97','2017-10-24 04:21:33'),(7,'lololololololol',8,33,'Menerah97','2017-10-24 04:25:24'),(8,'WE were both young when i first saw you, i closed my eyes and the flashback start I\'m standing there, on a balcony in summer air!',8,15,'Menerah97','2017-10-24 04:29:17'),(9,'I am in love with this movie!!',2,40,'Tom_cruise','2017-10-25 01:32:52'),(10,'hey shinu! <3',28,33,'Kaju','2017-10-29 23:42:40'),(11,'Woah!',28,40,'Kaju','2017-10-30 00:20:10'),(12,'wow',24,14,'Kavita','2017-11-03 10:10:11'),(13,'xoxoxoxox',32,14,'Sarthak0120','2017-11-03 14:04:41'),(14,'ShukranAllah, Walahamdulliah!',8,6,'Menerah97','2017-12-02 14:11:46'),(15,'You be the finest Dad in the Cosmos!',8,51,'Menerah97','2017-12-02 14:12:21'),(16,'Old Love ',8,6,'Menerah97','2017-12-02 14:34:37');
/*!40000 ALTER TABLE `comments` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-12-02 16:04:07
