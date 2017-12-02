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
-- Table structure for table `hashtags`
--

DROP TABLE IF EXISTS `hashtags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hashtags` (
  `tag_id` int(11) NOT NULL AUTO_INCREMENT,
  `tag_name` varchar(45) DEFAULT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `tag_photo_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`tag_id`),
  KEY `tag_photo_id_idx` (`tag_photo_id`),
  CONSTRAINT `tag_photo_id` FOREIGN KEY (`tag_photo_id`) REFERENCES `photos` (`photo_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=113 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hashtags`
--

LOCK TABLES `hashtags` WRITE;
/*!40000 ALTER TABLE `hashtags` DISABLE KEYS */;
INSERT INTO `hashtags` VALUES (7,'MI4','2017-10-17 02:12:04',3),(8,'shooting','2017-10-17 02:12:04',3),(9,'fun','2017-10-17 02:12:04',3),(10,'award','2017-10-17 02:12:49',4),(11,'fun','2017-10-17 02:12:49',4),(12,'yay','2017-10-17 02:12:49',4),(16,'prayer','2017-10-17 02:19:25',6),(17,'namaz','2017-10-17 02:19:25',6),(18,'yay','2017-10-17 02:19:25',6),(19,'red','2017-10-17 02:27:51',7),(20,'fun','2017-10-17 02:27:51',7),(21,'yay','2017-10-17 02:27:51',7),(22,'yay','2017-10-17 10:38:52',8),(23,'old_books','2017-10-17 10:38:52',8),(24,'aroma_of_pages','2017-10-17 10:38:52',8),(25,'red','2017-10-17 10:38:52',8),(28,'award','2017-10-17 14:04:08',11),(29,'fun','2017-10-17 14:04:08',11),(30,'yay','2017-10-17 14:04:08',11),(35,'fun','2017-10-17 14:22:16',14),(36,'fun','2017-10-17 14:22:16',14),(37,'award','2017-10-17 14:22:16',14),(38,'love_story','2017-10-17 14:27:11',15),(39,'guitar','2017-10-17 14:27:11',15),(40,'lalalala','2017-10-17 14:27:11',15),(41,'yay','2017-10-17 14:56:48',16),(42,'moon','2017-10-17 14:56:48',16),(45,'chudail','2017-10-18 11:12:31',20),(46,'sunder_kapda','2017-10-18 11:12:31',20),(47,'webD','2017-10-18 11:14:26',21),(48,'JSLuv','2017-10-18 11:14:26',21),(49,'fun','2017-10-18 11:14:26',21),(50,'yay','2017-10-18 11:14:26',21),(51,'Family','2017-10-18 11:22:38',22),(52,'fun','2017-10-18 11:22:38',22),(54,'Mohabbatein','2017-10-18 19:16:32',24),(64,'Shero','2017-10-22 12:22:07',28),(65,'Noharas','2017-10-22 12:22:07',28),(66,'yoshinaga','2017-10-22 12:22:07',28),(71,'AaaoHumChalein','2017-10-22 12:34:11',33),(76,'Yay','2017-10-22 12:44:01',36),(77,'Beauty','2017-10-22 12:44:01',36),(79,'LOve','2017-10-24 19:21:24',40),(80,'fun','2017-10-24 19:21:24',40),(81,'yay','2017-10-24 19:21:24',40),(82,'WE','2017-10-29 23:33:01',41),(83,'SheDoesntCall','2017-10-29 23:33:01',41),(84,'Angry','2017-10-29 23:33:01',41),(85,'JhundAndCo','2017-10-29 23:35:06',42),(86,'LauruAndHerApplicationScreening','2017-10-29 23:35:06',42),(87,'pretty','2017-11-02 01:01:34',43),(88,'snowBubble','2017-11-02 01:01:34',43),(89,'Beaut','2017-11-02 01:01:34',43),(90,'motivated','2017-11-02 01:03:48',44),(91,'Let\'sDoSomething','2017-11-02 01:03:48',44),(92,'yay','2017-11-02 01:03:48',44),(98,'cute','2017-11-03 10:15:41',48),(99,'Rodiya','2017-11-03 14:02:22',49),(100,'BachGya','2017-11-03 14:02:22',49),(101,'AchievementUnlocked','2017-11-03 14:02:22',49),(102,'killpuppies ','2017-11-03 14:40:13',50),(103,'hatehim ','2017-11-03 14:40:13',50),(104,'chu','2017-11-03 14:40:13',50),(105,'ProudFather ','2017-11-03 17:08:22',51),(106,'MyQaynaat','2017-11-03 17:08:22',51),(110,'BookaholicForLife','2017-12-02 15:28:01',53),(111,'MyKids','2017-12-02 15:43:44',54),(112,'MyLife','2017-12-02 15:43:44',54);
/*!40000 ALTER TABLE `hashtags` ENABLE KEYS */;
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
