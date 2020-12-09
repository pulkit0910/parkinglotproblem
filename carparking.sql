-- MySQL dump 10.16  Distrib 10.1.26-MariaDB, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: aps
-- ------------------------------------------------------
-- Server version	10.1.26-MariaDB-0+deb9u1


--
-- Table structure for table `car_car`
--

DROP TABLE IF EXISTS `car_car`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `car_car` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `regno` varchar(200) NOT NULL,
  `color` varchar(200) NOT NULL,
  `status` varchar(200) NOT NULL,
  `level` int(11) NOT NULL,
  `slot` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=141 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `car_car`
--

LOCK TABLES `car_car` WRITE;
/*!40000 ALTER TABLE `car_car` DISABLE KEYS */;
INSERT INTO `car_car` VALUES (140,'7878','white','in',1,1);
/*!40000 ALTER TABLE `car_car` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `car_parking`
--

DROP TABLE IF EXISTS `car_parking`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `car_parking` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `level` varchar(200) NOT NULL,
  `slot1` int(11) NOT NULL,
  `slot2` int(11) NOT NULL,
  `slot3` int(11) NOT NULL,
  `slot4` int(11) NOT NULL,
  `slot5` int(11) NOT NULL,
  `slot6` int(11) NOT NULL,
  `slot7` int(11) NOT NULL,
  `slot8` int(11) NOT NULL,
  `slot9` int(11) NOT NULL,
  `slot10` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `car_parking_level_ae9a4cb6_uniq` (`level`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `car_parking`
--

LOCK TABLES `car_parking` WRITE;
/*!40000 ALTER TABLE `car_parking` DISABLE KEYS */;
INSERT INTO `car_parking` VALUES (21,'1',1,0,0,0,0,0,0,0,0,0),(22,'2',0,0,0,0,0,0,0,0,0,0),(23,'3',0,0,0,0,0,0,0,0,0,0);
/*!40000 ALTER TABLE `car_parking` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES (1,'2018-11-16 12:09:14.451074','1','car object',1,'[{\"added\": {}}]',7,1),(2,'2018-11-16 12:09:23.380163','2','car object',1,'[{\"added\": {}}]',7,1),(3,'2018-11-16 12:10:41.316663','1','parking object',1,'[{\"added\": {}}]',8,1);
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(2,'auth','group'),(4,'auth','permission'),(3,'auth','user'),(7,'car','car'),(8,'car','parking'),(5,'contenttypes','contenttype'),(6,'sessions','session');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2018-11-16 11:03:09.497383'),(2,'auth','0001_initial','2018-11-16 11:03:18.086492'),(3,'admin','0001_initial','2018-11-16 11:03:19.660269'),(4,'admin','0002_logentry_remove_auto_add','2018-11-16 11:03:19.707542'),(5,'contenttypes','0002_remove_content_type_name','2018-11-16 11:03:20.876412'),(6,'auth','0002_alter_permission_name_max_length','2018-11-16 11:03:21.501597'),(7,'auth','0003_alter_user_email_max_length','2018-11-16 11:03:22.187668'),(8,'auth','0004_alter_user_username_opts','2018-11-16 11:03:22.232937'),(9,'auth','0005_alter_user_last_login_null','2018-11-16 11:03:22.645247'),(10,'auth','0006_require_contenttypes_0002','2018-11-16 11:03:22.689739'),(11,'auth','0007_alter_validators_add_error_messages','2018-11-16 11:03:22.734441'),(12,'auth','0008_alter_user_username_max_length','2018-11-16 11:03:23.581477'),(13,'sessions','0001_initial','2018-11-16 11:03:24.029369'),(14,'car','0001_initial','2018-11-16 11:58:18.113637'),(15,'car','0002_auto_20181116_1210','2018-11-16 12:10:22.534103'),(16,'car','0003_auto_20181116_1250','2018-11-16 12:50:06.877837'),(17,'car','0004_auto_20181116_1250','2018-11-16 12:50:51.131643'),(18,'car','0005_auto_20181116_1252','2018-11-16 12:52:50.574726'),(19,'car','0006_auto_20181116_1835','2018-11-16 18:35:34.118002'),(20,'car','0007_auto_20181116_1838','2018-11-16 18:40:57.660876'),(21,'car','0008_auto_20181116_1954','2018-11-16 19:54:13.717055'),(22,'car','0009_auto_20181116_2123','2018-11-16 21:23:57.695471');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-11-17 19:37:12