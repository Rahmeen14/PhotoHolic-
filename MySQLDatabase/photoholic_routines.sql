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
-- Temporary view structure for view `view2`
--

DROP TABLE IF EXISTS `view2`;
/*!50001 DROP VIEW IF EXISTS `view2`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `view2` AS SELECT 
 1 AS `user_id`,
 1 AS `user_name`,
 1 AS `email_id`,
 1 AS `password`,
 1 AS `profile_pic`,
 1 AS `created_at`,
 1 AS `photo_id`,
 1 AS `image_url`,
 1 AS `caption`,
 1 AS `posted_at`,
 1 AS `photo_user_id`,
 1 AS `photo_tag_text`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `admin_details_page`
--

DROP TABLE IF EXISTS `admin_details_page`;
/*!50001 DROP VIEW IF EXISTS `admin_details_page`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `admin_details_page` AS SELECT 
 1 AS `page_id`,
 1 AS `user__id`,
 1 AS `purpose`,
 1 AS `page_title`,
 1 AS `user_id`,
 1 AS `user_name`,
 1 AS `email_id`,
 1 AS `password`,
 1 AS `profile_pic`,
 1 AS `created_at`,
 1 AS `DOB`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `admin_details_person`
--

DROP TABLE IF EXISTS `admin_details_person`;
/*!50001 DROP VIEW IF EXISTS `admin_details_person`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `admin_details_person` AS SELECT 
 1 AS `user_id`,
 1 AS `user_name`,
 1 AS `email_id`,
 1 AS `DOB`,
 1 AS `profile_pic`,
 1 AS `created_at`,
 1 AS `person_id`,
 1 AS `first_name`,
 1 AS `last_name`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `new_view`
--

DROP TABLE IF EXISTS `new_view`;
/*!50001 DROP VIEW IF EXISTS `new_view`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `new_view` AS SELECT 
 1 AS `tag_id`,
 1 AS `tag_name`,
 1 AS `created_at`,
 1 AS `tag_photo_id`,
 1 AS `county`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `admin_details_photos`
--

DROP TABLE IF EXISTS `admin_details_photos`;
/*!50001 DROP VIEW IF EXISTS `admin_details_photos`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `admin_details_photos` AS SELECT 
 1 AS `photo_id`,
 1 AS `image_url`,
 1 AS `posted_at`,
 1 AS `photo_user_name`,
 1 AS `count`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `view1`
--

DROP TABLE IF EXISTS `view1`;
/*!50001 DROP VIEW IF EXISTS `view1`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `view1` AS SELECT 
 1 AS `photo_id`,
 1 AS `image_url`,
 1 AS `caption`,
 1 AS `posted_at`,
 1 AS `photo_user_id`,
 1 AS `photo_tag_text`,
 1 AS `like_user_id`,
 1 AS `like_photo_id`*/;
SET character_set_client = @saved_cs_client;

--
-- Final view structure for view `view2`
--

/*!50001 DROP VIEW IF EXISTS `view2`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `view2` AS select `users`.`user_id` AS `user_id`,`users`.`user_name` AS `user_name`,`users`.`email_id` AS `email_id`,`users`.`password` AS `password`,`users`.`profile_pic` AS `profile_pic`,`users`.`created_at` AS `created_at`,`photos`.`photo_id` AS `photo_id`,`photos`.`image_url` AS `image_url`,`photos`.`caption` AS `caption`,`photos`.`posted_at` AS `posted_at`,`photos`.`photo_user_id` AS `photo_user_id`,`photos`.`photo_tag_text` AS `photo_tag_text` from (`users` join `photos` on((`users`.`user_id` = `photos`.`photo_user_id`))) group by `users`.`user_id` order by count(0) desc limit 20 */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `admin_details_page`
--

/*!50001 DROP VIEW IF EXISTS `admin_details_page`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `admin_details_page` AS select `page`.`page_id` AS `page_id`,`page`.`user__id` AS `user__id`,`page`.`purpose` AS `purpose`,`page`.`page_title` AS `page_title`,`users`.`user_id` AS `user_id`,`users`.`user_name` AS `user_name`,`users`.`email_id` AS `email_id`,`users`.`password` AS `password`,`users`.`profile_pic` AS `profile_pic`,`users`.`created_at` AS `created_at`,`users`.`DOB` AS `DOB` from (`page` join `users`) where (`users`.`user_id` = `page`.`user__id`) order by `users`.`created_at` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `admin_details_person`
--

/*!50001 DROP VIEW IF EXISTS `admin_details_person`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `admin_details_person` AS select `a`.`user_id` AS `user_id`,`a`.`user_name` AS `user_name`,`a`.`email_id` AS `email_id`,`a`.`DOB` AS `DOB`,`a`.`profile_pic` AS `profile_pic`,`a`.`created_at` AS `created_at`,`b`.`person_id` AS `person_id`,`b`.`first_name` AS `first_name`,`b`.`last_name` AS `last_name` from (`users` `a` join `person` `b`) where (`a`.`user_id` = `b`.`userid`) order by `a`.`created_at` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `new_view`
--

/*!50001 DROP VIEW IF EXISTS `new_view`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `new_view` AS select `hashtags`.`tag_id` AS `tag_id`,`hashtags`.`tag_name` AS `tag_name`,`hashtags`.`created_at` AS `created_at`,`hashtags`.`tag_photo_id` AS `tag_photo_id`,count(0) AS `county` from `hashtags` group by `hashtags`.`tag_name` order by count(0) desc limit 20 */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `admin_details_photos`
--

/*!50001 DROP VIEW IF EXISTS `admin_details_photos`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `admin_details_photos` AS select `photos`.`photo_id` AS `photo_id`,`photos`.`image_url` AS `image_url`,`photos`.`posted_at` AS `posted_at`,`photos`.`photo_user_name` AS `photo_user_name`,count(0) AS `count` from (`photos` join `likes`) where (`likes`.`like_photo_id` = `photos`.`photo_id`) group by `photos`.`photo_id` order by `photos`.`posted_at` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `view1`
--

/*!50001 DROP VIEW IF EXISTS `view1`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `view1` AS select `photos`.`photo_id` AS `photo_id`,`photos`.`image_url` AS `image_url`,`photos`.`caption` AS `caption`,`photos`.`posted_at` AS `posted_at`,`photos`.`photo_user_id` AS `photo_user_id`,`photos`.`photo_tag_text` AS `photo_tag_text`,`likes`.`like_user_id` AS `like_user_id`,`likes`.`like_photo_id` AS `like_photo_id` from (`photos` join `likes` on((`photos`.`photo_id` = `likes`.`like_photo_id`))) group by `photos`.`photo_id` order by count(0) desc limit 20 */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Dumping events for database 'photoholic'
--

--
-- Dumping routines for database 'photoholic'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-12-02 16:04:08
