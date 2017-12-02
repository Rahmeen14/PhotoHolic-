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
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_name` varchar(45) NOT NULL,
  `email_id` varchar(245) NOT NULL,
  `password` varchar(45) NOT NULL,
  `profile_pic` varchar(10000) DEFAULT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `DOB` date NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'taylor_swift','t@gmail.com','taylor','https://i.pinimg.com/736x/61/56/37/615637507eeab97c44f6ea3564607193--taylor-swift-at-grammy-taylor-swift-eyes.jpg','2017-10-17 02:07:16','1998-10-10'),(2,'Tom.Cruise','t@gmail.com','tom','https://media.gq.com/photos/55958e802ca275951298730d/master/w_704,h_964,c_limit/tom-cruise-hair-03.jpg','2017-10-17 02:10:52','1998-10-10'),(3,'pray_pray','p@gmail.com','pray','http://www.passion4people.org/wp-content/uploads/2011/01/pray.jpg','2017-10-17 02:13:49','1998-10-10'),(4,'Books: No Complains, No Demands','BooksBooks@gmail.com','books','http://blogs.lse.ac.uk/lsereviewofbooks/files/2016/02/Books-for-Survey.jpg','2017-10-17 02:21:55','1998-10-10'),(5,'galaxy_amaze','g@gmail.com','galaxy','http://www.samsung.com/global/galaxy/galaxy-s8/camera/images/galaxy-s8_camera-hdr_bg_l.jpg','2017-10-17 02:26:36','1998-10-10'),(6,'Selena_gomez','sel@gmail.com','selena','http://blog.godreports.com/wp-content/uploads/2017/04/selena-gomez-christian.jpg','2017-10-17 10:41:36','1998-10-10'),(7,'PageTurners','p@gmail.com','page','https://curzonblob.blob.core.windows.net/media/2429/the-page-turner-poster.jpg','2017-10-17 11:07:13','1998-10-10'),(8,'Menerah97','rahmeen@gmail.com','rahmeen','https://scontent.fdel10-1.fna.fbcdn.net/v/t1.0-9/15094382_1712822395701100_8963199975817432080_n.jpg?oh=6d407faedcaf4793bd69abc8189f7a3e&oe=5AB02DF2','2017-10-17 11:07:57','1998-10-10'),(9,'Mariyam_mary','mary@gmail.com','mariyam','https://i.pinimg.com/236x/2d/06/bf/2d06bf2fbc5a42ed036c09a392806549--islam-ramadan-allah-islam.jpg','2017-10-17 12:21:12','1997-10-12'),(10,'Arusha_Habib','Aru@gmail.com','arusha','https://cdn.designbump.com/wp-content/uploads/2014/06/cute_doll_pictures-e1481217326463.jpg','2017-10-18 11:10:33','1987-10-12'),(11,'Namreen_habib','nomscullen@gmail.com','namreen','http://images6.fanpop.com/image/photos/36900000/Niklaus-Mikaelson-the-vampire-diaries-and-the-originals-36918910-500-452.jpg','2017-10-18 11:19:23','1917-10-12'),(12,'Sarina','ras@gmail.com','sarina','http://image3.mouthshut.com/images/ImagesR/2016/7/Doraemon-925074132-5811623-2.jpg','2017-10-18 17:02:23','1987-10-12'),(13,'temp','t@gmail.com','t','http://cdn.diaperchamp.com/wp-content/uploads/2014/09/nuvaring-is-just-a-temporary-infertility.png','2017-10-18 17:32:34','2000-10-12'),(14,'Papa','fire@gmail.com','papa','https://scontent.fdel10-1.fna.fbcdn.net/v/t1.0-9/18671151_553626265026135_7249328366011580928_n.jpg?oh=1b1eb71a6380f666e2463d0b82dec0e4&oe=5AA409E9','2017-10-18 19:10:54','1977-10-12'),(15,'Robert_Frost','rob@gmail.com','rob','http://3.bp.blogspot.com/-AnGYp0Mf6_Y/Una82uncZaI/AAAAAAAACks/B1Ny-5fPqc4/s1600/robert-frost.jpg','2017-10-21 13:37:30','1908-10-03'),(16,'ShinChan','yoshinaga@hotmail.com','shinchan','https://cdn3.i-scmp.com/sites/default/files/images/methode/2017/05/26/8a1c0a2a-3f7a-11e7-8c27-b06d81bc1bba_600x_213724.JPG','2017-10-21 19:13:12','1987-10-12'),(17,'page3 hehehe','page@page.com','page','https://passtheknowledge.files.wordpress.com/2014/08/10351181_752393971487759_6484689680935630212_n.jpg','2017-10-21 19:31:31','1997-10-18'),(22,'Mansi','m@mains.com','mansi','https://scontent.fdel10-1.fna.fbcdn.net/v/t1.0-9/13495164_1128222383909729_8858978728582759719_n.jpg?oh=337ce4941ca57337c82a97ce4458d066&oe=5AA70967','2017-10-24 19:22:39','1997-12-20'),(23,'Anjali','anjali@gmail.com','anjali','https://scontent.fdel10-1.fna.fbcdn.net/v/t1.0-9/15078942_1233581436709857_1915196904789525626_n.jpg?oh=d514e8a874deaa3a85d551e40302e3f7&oe=5AAE3396','2017-10-24 19:31:55','1998-12-12'),(24,'Kavita','k@gmail.com','kavita','https://scontent.fdel10-1.fna.fbcdn.net/v/t1.0-9/21430147_348214102290786_3856545020089834582_n.jpg?oh=b8da1ba19bc2324915072687416dfcf9&oe=5A9F2CE8','2017-10-24 19:34:14','1997-09-03'),(25,'Animia','anii@hotmail.com','animia','https://myanimelist.cdn-dena.com/s/common/uploaded_files/1451893265-7f1411d12dfd8b0c9719792eb66e33cc.jpeg','2017-10-24 19:37:22','1234-02-12'),(27,'Akshita','aggakshita@gmail.com','akshita','https://scontent.fdel10-1.fna.fbcdn.net/v/t1.0-9/541140_296706197064854_22680653_n.jpg?oh=a1c65bdf3add487a4d984b5b3986ec70&oe=5AA1E0BA','2017-10-25 11:04:57','1998-01-10'),(28,'Kaju','mailtokajal29@gmail.com','kajal','https://scontent.fdel10-1.fna.fbcdn.net/v/t1.0-9/17630165_432006007132681_4252710180063157518_n.jpg?oh=9b3e57dee45683484962af6bf5d3e01e&oe=5A6A57B8','2017-10-29 23:29:25','1997-11-29'),(29,'CatIAm','cat@gmail.com','cat','https://cdn.pixabay.com/photo/2016/03/28/12/35/cat-1285634_960_720.png','2017-11-02 23:54:06','1990-03-12'),(30,'Willy_Wonka','charlie@chocolateFactory@gmail.com','charlie','https://i.ytimg.com/vi/1YXmZvEdv6k/hqdefault.jpg','2017-11-03 00:02:04','1998-02-01'),(31,'abc','m,','abc','https://images-na.ssl-images-amazon.com/images/S/sgp-catalog-images/region_GB/wb-7509036670209_SVOD-Full-Image_GalleryBackground-en-GB-1483993659541._RI_SX940_.jpg','2017-11-03 00:05:15','1990-02-12'),(32,'Sarthak0120','sarthak0120@gmail.com','sarthak','https://scontent.fdel11-1.fna.fbcdn.net/v/t1.0-9/13902554_1199922150057904_3870779733950575640_n.jpg?oh=b46f2d02b0b9129aec0e6a1daf3c55c8&oe=5A6BF490','2017-11-03 13:59:11','1998-07-31'),(33,'Teddy','asdfghj','sid','https://5.imimg.com/data5/NV/DU/MY-31484820/20-inch-heart-teddy-250x250.jpg','2017-11-03 15:02:32','1998-03-12'),(34,'Mom','mumma@rediff.com','mom','https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQRaHWQx7GFz5eER0u4XyESM7l3hK7x6V8cWE7zyCg2IOv9i61udw','2017-12-02 15:36:14','1980-12-04');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `photoholic`.`users_BEFORE_INSERT` 
BEFORE INSERT ON `users` 
FOR EACH ROW
BEGIN
IF  DATEDIFF(CURDATE(),NEW.DOB)< 15*365
then
SIGNAL sqlstate '45001' set message_text = "You're too young to be a PhotoHolic!";
elseif (new.user_name='admin') then
SIGNAL sqlstate '45001' set message_text = "admin is a reserved user_name in PhotoHolic. Sign up with another user_name!";
END IF;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-12-02 16:04:06
