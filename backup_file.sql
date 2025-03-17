/*M!999999\- enable the sandbox mode */ 
-- MariaDB dump 10.19-11.7.2-MariaDB, for osx10.19 (x86_64)
--
-- Host: localhost    Database: my_project_db
-- ------------------------------------------------------
-- Server version	11.7.2-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*M!100616 SET @OLD_NOTE_VERBOSITY=@@NOTE_VERBOSITY, NOTE_VERBOSITY=0 */;

--
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group`
--

LOCK TABLES `auth_group` WRITE;
/*!40000 ALTER TABLE `auth_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group_permissions`
--

DROP TABLE IF EXISTS `auth_group_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group_permissions` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group_permissions`
--

LOCK TABLES `auth_group_permissions` WRITE;
/*!40000 ALTER TABLE `auth_group_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_permission`
--

DROP TABLE IF EXISTS `auth_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=53 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES
(1,'Can add log entry',1,'add_logentry'),
(2,'Can change log entry',1,'change_logentry'),
(3,'Can delete log entry',1,'delete_logentry'),
(4,'Can view log entry',1,'view_logentry'),
(5,'Can add permission',2,'add_permission'),
(6,'Can change permission',2,'change_permission'),
(7,'Can delete permission',2,'delete_permission'),
(8,'Can view permission',2,'view_permission'),
(9,'Can add group',3,'add_group'),
(10,'Can change group',3,'change_group'),
(11,'Can delete group',3,'delete_group'),
(12,'Can view group',3,'view_group'),
(13,'Can add user',4,'add_user'),
(14,'Can change user',4,'change_user'),
(15,'Can delete user',4,'delete_user'),
(16,'Can view user',4,'view_user'),
(17,'Can add content type',5,'add_contenttype'),
(18,'Can change content type',5,'change_contenttype'),
(19,'Can delete content type',5,'delete_contenttype'),
(20,'Can view content type',5,'view_contenttype'),
(21,'Can add session',6,'add_session'),
(22,'Can change session',6,'change_session'),
(23,'Can delete session',6,'delete_session'),
(24,'Can view session',6,'view_session'),
(25,'Can add group',7,'add_group'),
(26,'Can change group',7,'change_group'),
(27,'Can delete group',7,'delete_group'),
(28,'Can view group',7,'view_group'),
(29,'Can add push information',8,'add_pushinformation'),
(30,'Can change push information',8,'change_pushinformation'),
(31,'Can delete push information',8,'delete_pushinformation'),
(32,'Can view push information',8,'view_pushinformation'),
(33,'Can add subscription info',9,'add_subscriptioninfo'),
(34,'Can change subscription info',9,'change_subscriptioninfo'),
(35,'Can delete subscription info',9,'delete_subscriptioninfo'),
(36,'Can view subscription info',9,'view_subscriptioninfo'),
(37,'Can add vendor',10,'add_vendor'),
(38,'Can change vendor',10,'change_vendor'),
(39,'Can delete vendor',10,'delete_vendor'),
(40,'Can view vendor',10,'view_vendor'),
(41,'Can add device',11,'add_device'),
(42,'Can change device',11,'change_device'),
(43,'Can delete device',11,'delete_device'),
(44,'Can view device',11,'view_device'),
(45,'Can add push subscription',12,'add_pushsubscription'),
(46,'Can change push subscription',12,'change_pushsubscription'),
(47,'Can delete push subscription',12,'delete_pushsubscription'),
(48,'Can view push subscription',12,'view_pushsubscription'),
(49,'Can add order',13,'add_order'),
(50,'Can change order',13,'change_order'),
(51,'Can delete order',13,'delete_order'),
(52,'Can view order',13,'view_order');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` VALUES
(1,'pbkdf2_sha256$870000$R5TKrelNHfLwRBOkBgOegj$lhjxG2cMRmOn/VLzZ8SMbI6OPqVd2Wq4w1++KyD2khw=','2025-03-14 10:00:48.628376',1,'iosdev','','','',1,1,'2025-03-14 10:00:31.014063');
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user_groups` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_groups`
--

LOCK TABLES `auth_user_groups` WRITE;
/*!40000 ALTER TABLE `auth_user_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_user_permissions`
--

DROP TABLE IF EXISTS `auth_user_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user_user_permissions` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_user_permissions`
--

LOCK TABLES `auth_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `auth_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL CHECK (`action_flag` >= 0),
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES
(1,'2025-03-14 10:02:16.158512','1','123',1,'[{\"added\": {}}]',10,1),
(2,'2025-03-14 10:02:48.585596','1','202502CAL050004B',1,'[{\"added\": {}}]',11,1),
(3,'2025-03-14 10:03:03.207012','2','202502CAL050005B',1,'[{\"added\": {}}]',11,1),
(4,'2025-03-14 10:36:57.280157','11','Token 1019',2,'[{\"changed\": {\"fields\": [\"Device\", \"Status\", \"Counter no\"]}}]',13,1),
(5,'2025-03-17 07:20:12.086730','9','Subscription for 3cb93ba6-5cc4-4e77-99d5-669c50e61388',3,'',12,1),
(6,'2025-03-17 07:20:12.086766','8','Subscription for c2a66d77-7185-4e68-87f5-d48025c64a5b',3,'',12,1),
(7,'2025-03-17 07:20:12.086784','7','Subscription for e62bfb46-2833-413f-8bad-57b26fc3294f',3,'',12,1),
(8,'2025-03-17 07:20:12.086799','6','Subscription for 392af68e-98de-47bf-8e62-90868334cc06',3,'',12,1),
(9,'2025-03-17 07:20:12.086813','5','Subscription for 5072fd47-bf30-4b1d-a1e9-7fd4c54bfc5a',3,'',12,1),
(10,'2025-03-17 07:20:12.086826','4','Subscription for 641fecb7-fbfc-4feb-a696-0c9b1b1f099a',3,'',12,1),
(11,'2025-03-17 07:20:12.086839','3','Subscription for 81ba3ae8-18db-45fc-b304-b05a7ad20e14',3,'',12,1),
(12,'2025-03-17 07:20:12.086851','2','Subscription for c065fa4b-d858-4433-8aef-0437f418b2ac',3,'',12,1),
(13,'2025-03-17 07:20:12.086863','1','Subscription for ddc1ab10-c052-40b4-b958-8624f0410409',3,'',12,1),
(14,'2025-03-17 07:20:27.138488','43','Token 1428',3,'',13,1),
(15,'2025-03-17 07:20:27.138522','42','Token 1247',3,'',13,1),
(16,'2025-03-17 07:20:27.138541','41','Token 1246',3,'',13,1),
(17,'2025-03-17 07:20:27.138556','40','Token 1245',3,'',13,1),
(18,'2025-03-17 07:20:27.138569','39','Token 2000',3,'',13,1),
(19,'2025-03-17 07:20:27.138582','38','Token 2500',3,'',13,1),
(20,'2025-03-17 07:20:27.138595','37','Token 1222',3,'',13,1),
(21,'2025-03-17 07:20:27.138609','36','Token 101',3,'',13,1),
(22,'2025-03-17 07:20:27.138622','35','Token 200',3,'',13,1),
(23,'2025-03-17 07:20:27.138635','34','Token 196',3,'',13,1),
(24,'2025-03-17 07:20:27.138648','33','Token 194',3,'',13,1),
(25,'2025-03-17 07:20:27.138660','32','Token 193',3,'',13,1),
(26,'2025-03-17 07:20:27.138672','31','Token 191',3,'',13,1),
(27,'2025-03-17 07:20:27.138684','30','Token 190',3,'',13,1),
(28,'2025-03-17 07:20:27.138697','29','Token 20',3,'',13,1),
(29,'2025-03-17 07:20:27.138709','28','Token 10',3,'',13,1),
(30,'2025-03-17 07:20:27.138721','27','Token 125',3,'',13,1),
(31,'2025-03-17 07:20:27.138734','26','Token 124',3,'',13,1),
(32,'2025-03-17 07:20:27.138747','25','Token 123',3,'',13,1),
(33,'2025-03-17 07:20:27.138759','24','Token 122',3,'',13,1),
(34,'2025-03-17 07:20:27.138771','23','Token 52725262',3,'',13,1),
(35,'2025-03-17 07:20:27.138783','22','Token 5272625',3,'',13,1),
(36,'2025-03-17 07:20:27.138795','21','Token 5382726',3,'',13,1),
(37,'2025-03-17 07:20:27.138808','20','Token 1026',3,'',13,1),
(38,'2025-03-17 07:20:27.138820','19','Token 1025',3,'',13,1),
(39,'2025-03-17 07:20:27.138832','18','Token 1024',3,'',13,1),
(40,'2025-03-17 07:20:27.138844','17','Token 1010',3,'',13,1),
(41,'2025-03-17 07:20:27.138856','16','Token 1022',3,'',13,1),
(42,'2025-03-17 07:20:27.138868','15','Token 1021',3,'',13,1),
(43,'2025-03-17 07:20:27.138879','14','Token 1020',3,'',13,1),
(44,'2025-03-17 07:20:27.138891','13','Token 1018',3,'',13,1),
(45,'2025-03-17 07:20:27.138903','12','Token 1012',3,'',13,1),
(46,'2025-03-17 07:20:27.138914','11','Token 1019',3,'',13,1),
(47,'2025-03-17 07:20:27.138926','10','Token 1006',3,'',13,1),
(48,'2025-03-17 07:20:27.138939','9','Token 1005',3,'',13,1),
(49,'2025-03-17 07:20:27.138952','8','Token 1004',3,'',13,1),
(50,'2025-03-17 07:20:27.138964','7','Token 1003',3,'',13,1),
(51,'2025-03-17 07:20:27.138976','6','Token 1002',3,'',13,1),
(52,'2025-03-17 07:20:27.138987','5','Token 1001',3,'',13,1),
(53,'2025-03-17 07:20:27.138999','4','Token 433',3,'',13,1),
(54,'2025-03-17 07:20:27.139011','3','Token 1000',3,'',13,1),
(55,'2025-03-17 07:20:27.139023','2','Token 565',3,'',13,1),
(56,'2025-03-17 07:20:27.139036','1','Token 456',3,'',13,1);
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES
(1,'admin','logentry'),
(3,'auth','group'),
(2,'auth','permission'),
(4,'auth','user'),
(5,'contenttypes','contenttype'),
(6,'sessions','session'),
(11,'vendors','device'),
(13,'vendors','order'),
(12,'vendors','pushsubscription'),
(10,'vendors','vendor'),
(7,'webpush','group'),
(8,'webpush','pushinformation'),
(9,'webpush','subscriptioninfo');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_migrations` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES
(1,'contenttypes','0001_initial','2025-03-14 09:56:57.734975'),
(2,'auth','0001_initial','2025-03-14 09:57:00.750784'),
(3,'admin','0001_initial','2025-03-14 09:57:01.283739'),
(4,'admin','0002_logentry_remove_auto_add','2025-03-14 09:57:01.290228'),
(5,'admin','0003_logentry_add_action_flag_choices','2025-03-14 09:57:01.295695'),
(6,'contenttypes','0002_remove_content_type_name','2025-03-14 09:57:01.760801'),
(7,'auth','0002_alter_permission_name_max_length','2025-03-14 09:57:01.972432'),
(8,'auth','0003_alter_user_email_max_length','2025-03-14 09:57:02.197727'),
(9,'auth','0004_alter_user_username_opts','2025-03-14 09:57:02.204439'),
(10,'auth','0005_alter_user_last_login_null','2025-03-14 09:57:02.436521'),
(11,'auth','0006_require_contenttypes_0002','2025-03-14 09:57:02.437674'),
(12,'auth','0007_alter_validators_add_error_messages','2025-03-14 09:57:02.444193'),
(13,'auth','0008_alter_user_username_max_length','2025-03-14 09:57:02.673991'),
(14,'auth','0009_alter_user_last_name_max_length','2025-03-14 09:57:02.911584'),
(15,'auth','0010_alter_group_name_max_length','2025-03-14 09:57:03.144899'),
(16,'auth','0011_update_proxy_permissions','2025-03-14 09:57:03.151045'),
(17,'auth','0012_alter_user_first_name_max_length','2025-03-14 09:57:03.380706'),
(18,'sessions','0001_initial','2025-03-14 09:57:03.711811'),
(19,'webpush','0001_initial','2025-03-14 09:57:04.673517'),
(20,'webpush','0002_auto_20190603_0005','2025-03-14 09:57:04.906843'),
(21,'webpush','0003_subscriptioninfo_user_agent','2025-03-14 09:57:05.361713'),
(22,'webpush','0004_auto_20220831_1500','2025-03-14 09:57:07.408448'),
(23,'webpush','0005_auto_20230614_1529','2025-03-14 09:57:09.439633'),
(24,'webpush','0006_alter_subscriptioninfo_user_agent','2025-03-14 09:57:09.442562'),
(25,'vendors','0001_initial','2025-03-14 09:59:32.783218');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES
('qajowa4ohqkb1fhdsytnjjh9vjfb8yq2','.eJxVjMsOwiAURP-FtSE8veDSvd9AuFyQqoGktCvjv9smXehuMufMvFmI61LDOvIcJmIXJtnpt8OYnrntgB6x3TtPvS3zhHxX-EEHv3XKr-vh_h3UOOq2NiWeRVbGSkRrfQFDPjnKBCJpBC2VF-ARSi5K6bglTS5JJzwU68izzxfjzzfA:1tt1qS:_C8e3-M9TKdH5hOu-sKtLfikgOKOS74XtFHET5OdufQ','2025-03-28 10:00:48.629744');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vendors_device`
--

DROP TABLE IF EXISTS `vendors_device`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `vendors_device` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `serial_no` varchar(255) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `vendor_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `vendors_device_vendor_id_80d1e485_fk_vendors_vendor_id` (`vendor_id`),
  CONSTRAINT `vendors_device_vendor_id_80d1e485_fk_vendors_vendor_id` FOREIGN KEY (`vendor_id`) REFERENCES `vendors_vendor` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vendors_device`
--

LOCK TABLES `vendors_device` WRITE;
/*!40000 ALTER TABLE `vendors_device` DISABLE KEYS */;
INSERT INTO `vendors_device` VALUES
(1,'202502CAL050004B','2025-03-14 10:02:48.585182','2025-03-14 10:02:48.585204',1),
(2,'202502CAL050005B','2025-03-14 10:03:03.206602','2025-03-14 10:03:03.206621',1);
/*!40000 ALTER TABLE `vendors_device` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vendors_order`
--

DROP TABLE IF EXISTS `vendors_order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `vendors_order` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `token_no` int(11) NOT NULL,
  `status` varchar(20) NOT NULL,
  `counter_no` int(11) NOT NULL,
  `updated_by` varchar(20) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `device_id` bigint(20) DEFAULT NULL,
  `vendor_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `token_no` (`token_no`),
  KEY `vendors_order_device_id_19b98022_fk_vendors_device_id` (`device_id`),
  KEY `vendors_order_vendor_id_a6e689bb_fk_vendors_vendor_id` (`vendor_id`),
  CONSTRAINT `vendors_order_device_id_19b98022_fk_vendors_device_id` FOREIGN KEY (`device_id`) REFERENCES `vendors_device` (`id`),
  CONSTRAINT `vendors_order_vendor_id_a6e689bb_fk_vendors_vendor_id` FOREIGN KEY (`vendor_id`) REFERENCES `vendors_vendor` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vendors_order`
--

LOCK TABLES `vendors_order` WRITE;
/*!40000 ALTER TABLE `vendors_order` DISABLE KEYS */;
INSERT INTO `vendors_order` VALUES
(44,1458,'ready',3,'client','2025-03-17 07:23:21.352951','2025-03-17 07:23:34.544689',NULL,1);
/*!40000 ALTER TABLE `vendors_order` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vendors_pushsubscription`
--

DROP TABLE IF EXISTS `vendors_pushsubscription`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `vendors_pushsubscription` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `browser_id` varchar(255) NOT NULL,
  `endpoint` longtext NOT NULL,
  `p256dh` longtext NOT NULL,
  `auth` longtext NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `browser_id` (`browser_id`),
  UNIQUE KEY `endpoint` (`endpoint`) USING HASH
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vendors_pushsubscription`
--

LOCK TABLES `vendors_pushsubscription` WRITE;
/*!40000 ALTER TABLE `vendors_pushsubscription` DISABLE KEYS */;
INSERT INTO `vendors_pushsubscription` VALUES
(10,'64082e1e-35d9-436c-9961-aeaebea0d6a0','https://web.push.apple.com/QOPIsoZaWJXbczT9tUukmjg_IAvvKy4LCJy9FYBwq9_cbjq5mumX2qd1c21dpBuR9hZ6EeHZPYVyvfcgqbtV6wyszkU1l71bkfO4033WVf5RP0liY023d6UajwK6KyWUj02zMBoYPpqXqs-Tp2oT0s-aruQNlZv5pmTirWqqzPM','BFdDNvcjRGG2gbwnEvdpzm9MR2ZYcoTjMLeoXvvYSDGc59NwLg3nJf9iS9JOCcQRvby2wALCEuN8BdTIHFXmPOQ','g5gWv4TBqAUvr5Q-MovjcQ');
/*!40000 ALTER TABLE `vendors_pushsubscription` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vendors_pushsubscription_tokens`
--

DROP TABLE IF EXISTS `vendors_pushsubscription_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `vendors_pushsubscription_tokens` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `pushsubscription_id` bigint(20) NOT NULL,
  `order_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `vendors_pushsubscription_pushsubscription_id_orde_7b93da7b_uniq` (`pushsubscription_id`,`order_id`),
  KEY `vendors_pushsubscrip_order_id_7fb17505_fk_vendors_o` (`order_id`),
  CONSTRAINT `vendors_pushsubscrip_order_id_7fb17505_fk_vendors_o` FOREIGN KEY (`order_id`) REFERENCES `vendors_order` (`id`),
  CONSTRAINT `vendors_pushsubscrip_pushsubscription_id_951d3ebe_fk_vendors_p` FOREIGN KEY (`pushsubscription_id`) REFERENCES `vendors_pushsubscription` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vendors_pushsubscription_tokens`
--

LOCK TABLES `vendors_pushsubscription_tokens` WRITE;
/*!40000 ALTER TABLE `vendors_pushsubscription_tokens` DISABLE KEYS */;
INSERT INTO `vendors_pushsubscription_tokens` VALUES
(50,10,44);
/*!40000 ALTER TABLE `vendors_pushsubscription_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vendors_vendor`
--

DROP TABLE IF EXISTS `vendors_vendor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `vendors_vendor` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `location` varchar(255) DEFAULT NULL,
  `vendor_id` int(11) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `vendor_id` (`vendor_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vendors_vendor`
--

LOCK TABLES `vendors_vendor` WRITE;
/*!40000 ALTER TABLE `vendors_vendor` DISABLE KEYS */;
INSERT INTO `vendors_vendor` VALUES
(1,'Fresh N BUY','kazhakuttam',123,'2025-03-14 10:02:16.157867','2025-03-14 10:02:16.157889');
/*!40000 ALTER TABLE `vendors_vendor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `webpush_group`
--

DROP TABLE IF EXISTS `webpush_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `webpush_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `webpush_group`
--

LOCK TABLES `webpush_group` WRITE;
/*!40000 ALTER TABLE `webpush_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `webpush_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `webpush_pushinformation`
--

DROP TABLE IF EXISTS `webpush_pushinformation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `webpush_pushinformation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) DEFAULT NULL,
  `subscription_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `webpush_pushinformation_user_id_5e083b7f_fk_auth_user_id` (`user_id`),
  KEY `webpush_pushinformation_group_id_262dcc9a_fk` (`group_id`),
  KEY `webpush_pushinformation_subscription_id_7989aa34_fk` (`subscription_id`),
  CONSTRAINT `webpush_pushinformation_group_id_262dcc9a_fk` FOREIGN KEY (`group_id`) REFERENCES `webpush_group` (`id`),
  CONSTRAINT `webpush_pushinformation_subscription_id_7989aa34_fk` FOREIGN KEY (`subscription_id`) REFERENCES `webpush_subscriptioninfo` (`id`),
  CONSTRAINT `webpush_pushinformation_user_id_5e083b7f_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `webpush_pushinformation`
--

LOCK TABLES `webpush_pushinformation` WRITE;
/*!40000 ALTER TABLE `webpush_pushinformation` DISABLE KEYS */;
/*!40000 ALTER TABLE `webpush_pushinformation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `webpush_subscriptioninfo`
--

DROP TABLE IF EXISTS `webpush_subscriptioninfo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `webpush_subscriptioninfo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `browser` varchar(100) NOT NULL,
  `endpoint` varchar(500) NOT NULL,
  `auth` varchar(100) NOT NULL,
  `p256dh` varchar(100) NOT NULL,
  `user_agent` varchar(500) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `webpush_subscriptioninfo`
--

LOCK TABLES `webpush_subscriptioninfo` WRITE;
/*!40000 ALTER TABLE `webpush_subscriptioninfo` DISABLE KEYS */;
/*!40000 ALTER TABLE `webpush_subscriptioninfo` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*M!100616 SET NOTE_VERBOSITY=@OLD_NOTE_VERBOSITY */;

-- Dump completed on 2025-03-17 13:06:05
