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
-- Table structure for table `photos`
--

DROP TABLE IF EXISTS `photos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `photos` (
  `photo_id` int(11) NOT NULL AUTO_INCREMENT,
  `image_url` varchar(1045) NOT NULL,
  `caption` varchar(1045) DEFAULT NULL,
  `posted_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `photo_user_id` int(11) DEFAULT NULL,
  `photo_tag_text` varchar(1045) DEFAULT NULL,
  `photo_user_name` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`photo_id`),
  UNIQUE KEY `photo_id_UNIQUE` (`photo_id`),
  KEY `photo_user_id_idx` (`photo_user_id`),
  CONSTRAINT `photo_user_id` FOREIGN KEY (`photo_user_id`) REFERENCES `users` (`user_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=55 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `photos`
--

LOCK TABLES `photos` WRITE;
/*!40000 ALTER TABLE `photos` DISABLE KEYS */;
INSERT INTO `photos` VALUES (3,'http://www.hindustantimes.com/rf/image_size_960x540/HT/p2/2017/08/14/Pictures/_6a01326e-80da-11e7-aa81-8a4dce36eef3.JPG','Mission impossible shot impossibly lol','2017-10-17 02:12:04',2,'#MI4#shooting#fun','Tom_cruise'),(4,'https://pmchollywoodlife.files.wordpress.com/2015/06/tom-cruise-does-own-stunts-ftr.jpg?w=600','Award is mine!','2017-10-17 02:12:49',2,'#award#fun#yay','Tom_cruise'),(6,'http://www.liesyoungwomenbelieve.com/wp-content/uploads/2014/08/man%2520praying.jpg','Say alhamdulillah, thank you Allah <3','2017-10-17 02:19:25',3,'#prayer#namaz#yay','pray_pray'),(7,'http://i.dailymail.co.uk/i/pix/2017/04/06/11/3F006CA900000578-4386078-image-a-15_1491475710861.jpg','Monster galaxy','2017-10-17 02:27:51',5,'#red#fun#yay','galaxy_amaze'),(8,'https://i.ebayimg.com/images/g/l6IAAOxyUrZS64di/s-l300.jpg','Books of that era <3','2017-10-17 10:38:52',4,'#yay#old_books#aroma_of_pages#red','Books-Books'),(11,'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTP5gbBJlpb9xTj7CYBT-p4e-oqjniHdvwe8tnMG0Srr-SfbxZ5','yayyy','2017-10-17 14:04:08',6,'#award#fun#yay','Selena_gomez'),(14,'http://www.billboard.com/files/styles/article_main_image/public/media/selena-gomez-bb30-2015-billboard-07-650.jpg','I\'m so sick of that same old love','2017-10-17 14:22:16',6,'#fun#fun#award','Selena_gomez'),(15,'https://www.walldevil.com/wallpapers/a31/taylor-swift-wallpapers-freewallpapers-love-reasult.jpg','It\'s a love story baby just say yes!','2017-10-17 14:27:11',1,'#love_story#guitar#lalalala','taylor_swift'),(16,'https://s7d2.scene7.com/is/image/SamsungUS/galaxy-note8_design_planet?$default-jpg$','An eclipse, Woah!!','2017-10-17 14:56:48',5,'#yay#moon','galaxy_amaze'),(20,'https://i.pinimg.com/736x/bc/60/7a/bc607ab25ee42e5adb3e9ae01c2cb7d4--gothic-dolls-corset-dresses.jpg','Chudail hu main... eheehehhehee','2017-10-18 11:12:31',10,'#chudail#sunder_kapda','Arusha_Habib'),(21,'https://www.javatpoint.com/images/javascript/javascript_logo.png','i love JS <3','2017-10-18 11:14:26',8,'#webD#JSLuv#fun#yay','Menerah97'),(22,'http://images6.fanpop.com/image/photos/34400000/Klaus-The-Originals-4-20-klaus-34461587-500-446.jpg','Family above all <3','2017-10-18 11:22:38',11,'#Family#fun','Namreen_habib'),(24,'https://static.pexels.com/photos/33109/fall-autumn-red-season.jpg','Autum <3','2017-10-18 19:16:32',14,'#Mohabbatein','Papa'),(28,'http://pa1.narvii.com/6356/9b0f76aacaeed5b8fb64d45a398c25a32669e4b3_hq.gif','Shinchan shinchan pyaara pyaara par  hai kitna cute','2017-10-22 12:22:07',12,'#Shero#Noharas#yoshinaga','Sarina'),(33,'https://i.ytimg.com/vi/kpfpt_VLN5c/maxresdefault.jpg','DoraTheExplorer!','2017-10-22 12:34:11',12,'#AaaoHumChalein','Sarina'),(36,'https://img.purch.com/w/660/aHR0cDovL3d3dy5zcGFjZS5jb20vaW1hZ2VzL2kvMDAwLzAxMy82NDEvb3JpZ2luYWwvc2FnaXRhcnJpdXMtZHdhcmYtZ2FsYXh5LXN0YXItc3RyZWFtcy5qcGc=','milkyWayy, allTheWayy','2017-10-22 12:44:01',5,'#Yay#Beauty','galaxy_amaze'),(40,'http://ll-c.ooyala.com/e1/9wMmZoYzE6ApkUTFe49SpItVZ2zpPW-a/promo328483561','Harry Potter, again, always','2017-10-24 19:21:24',8,'#LOve#fun#yay','Menerah97'),(41,'http://cdn.playbuzz.com/cdn/e2124e52-11da-4250-95fa-b6d5344b8d67/93dd56e5-9d08-41a8-842e-e51be1197d3d.jpg','Rahmeen and I, mae zada sunder wali','2017-10-29 23:33:01',28,'#WE#SheDoesntCall#Angry','Kaju'),(42,'https://pm1.narvii.com/5667/5e9d11e41d3c17bd1489dea1e5ca35b7498bb40b_hq.jpg','ThrowBacks To School','2017-10-29 23:35:06',28,'#JhundAndCo#LauruAndHerApplicationScreening','Kaju'),(43,'https://cdn.pixabay.com/photo/2017/01/06/19/15/soap-bubble-1958650_960_720.jpg','The circle of life','2017-11-02 01:01:34',1,'#pretty#snowBubble#Beaut','taylor_swift'),(44,'https://thumb7.shutterstock.com/display_pic_with_logo/2453201/421774795/stock-photo-motivation-concept-with-business-elements-and-related-keywords-421774795.jpg','Motivation, always','2017-11-02 01:03:48',1,'#motivated#Let\'sDoSomething#yay','taylor_swift'),(48,'https://i.pinimg.com/736x/f5/7e/00/f57e00306f3183cc39fa919fec41418b--teddy-bears-teddy-bear-dogs.jpg','Woof woof','2017-11-03 10:15:41',23,'#cute','Anjali'),(49,'http://www.newgenerationsalesgroup.com/images/calm.png','Attendance.beg(\"No detention, plissssss\");','2017-11-03 14:02:22',32,'#Rodiya#BachGya#AchievementUnlocked','Sarthak0120'),(50,'https://c2.staticflickr.com/4/3280/2787884480_239dd60420_z.jpg?zz=1','I am selling Karan kataria. 10 rs per organ','2017-11-03 14:40:13',32,'#killpuppies #hatehim #chu','Sarthak0120'),(51,'https://img0.etsystatic.com/148/1/9348934/il_340x270.1106735054_em36.jpg','My daughters, My pride','2017-11-03 17:08:22',14,'#ProudFather #MyQaynaat','Papa'),(53,'https://i0.wp.com/rbms.info/wp-content/uploads/2014/05/special-collections-books-700x300.jpg?fit=700%2C300','How i fall in love with pages!','2017-12-02 15:28:01',4,'#BookaholicForLife','Books: No Complains, No Demands'),(54,'https://pbs.twimg.com/profile_images/749603349260070912/ohsBUkhJ.jpg','How I love being a mom!','2017-12-02 15:43:44',34,'#MyKids#MyLife','Mom');
/*!40000 ALTER TABLE `photos` ENABLE KEYS */;
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
