-- MySQL dump 10.14  Distrib 5.5.68-MariaDB, for Linux (x86_64)
--
-- Host: 10.22.102.3    Database: vgsbooking_be
-- ------------------------------------------------------
-- Server version	10.7.6-MariaDB-1:10.7.6+maria~ubu2004

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
-- Table structure for table `SequelizeMeta`
--

DROP TABLE IF EXISTS `SequelizeMeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `SequelizeMeta` (
  `name` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  PRIMARY KEY (`name`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `SequelizeMeta`
--

LOCK TABLES `SequelizeMeta` WRITE;
/*!40000 ALTER TABLE `SequelizeMeta` DISABLE KEYS */;
INSERT INTO `SequelizeMeta` VALUES ('20220712094206-roles.js'),('20220712094207-permissions.js'),('20220712094208-type_servies.js'),('20220712094210-admin_cms.js');
/*!40000 ALTER TABLE `SequelizeMeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `admin_cms`
--

DROP TABLE IF EXISTS `admin_cms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `admin_cms` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_name` varchar(255) DEFAULT NULL,
  `phone` varchar(255) NOT NULL,
  `password` varchar(255) DEFAULT NULL,
  `is_active` int(11) DEFAULT 0,
  `created_at` datetime DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  UNIQUE KEY `phone` (`phone`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin_cms`
--

LOCK TABLES `admin_cms` WRITE;
/*!40000 ALTER TABLE `admin_cms` DISABLE KEYS */;
INSERT INTO `admin_cms` VALUES (1,'Đặng Trung Kiên','0961187214',NULL,1,'2022-10-18 03:52:50','2022-10-18 03:52:50'),(2,'Tùng','0379617865',NULL,1,'2022-10-18 03:52:50','2022-10-18 03:52:50'),(3,'Trọng Khang','0352810651',NULL,1,'2022-10-18 03:52:50','2022-10-18 03:52:50'),(4,'Trương Thúy Giang','0967235214',NULL,1,'2022-10-18 03:52:50','2022-10-18 03:52:50'),(5,'Duy','0962743694',NULL,1,'2022-10-18 03:52:50','2022-10-18 03:52:50'),(6,'Đức','0985623333',NULL,1,'2022-10-18 03:52:50','2022-10-18 03:52:50'),(10,'Giang_SA','0974956762',NULL,1,'2022-10-25 07:58:52','2022-10-25 07:58:52'),(11,'Giang_KT','0967235213',NULL,1,'2022-10-25 08:31:35','2022-10-25 08:31:35'),(12,'Giang_Sale','0967235212',NULL,1,'2022-10-25 08:32:34','2022-10-25 08:32:34'),(13,'Sale','0967235215',NULL,1,'2022-10-25 08:54:25','2022-10-25 08:54:25');
/*!40000 ALTER TABLE `admin_cms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `admin_has_roles`
--

DROP TABLE IF EXISTS `admin_has_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `admin_has_roles` (
  `role_id` int(10) unsigned NOT NULL,
  `admin_id` int(10) unsigned NOT NULL,
  `admin_type` varchar(191) DEFAULT '',
  `parent_id` int(11) DEFAULT NULL,
  `level_super_admin_id` int(11) DEFAULT NULL,
  `level_admin_id` int(11) DEFAULT NULL,
  `level_super_agent_id` int(11) DEFAULT NULL,
  `level_agent_id` int(11) DEFAULT NULL,
  `level` int(11) NOT NULL,
  `type_services` int(10) unsigned NOT NULL,
  `discount` int(11) DEFAULT 0,
  `discount_by_id` int(11) DEFAULT NULL,
  `list_agent_id` int(11) DEFAULT 0,
  `list_super_agent_id` int(11) DEFAULT 0,
  PRIMARY KEY (`admin_id`),
  KEY `FK_admin_has_roles_roles` (`role_id`) USING BTREE,
  KEY `FK_admin_has_roles_admin_cms` (`admin_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin_has_roles`
--

LOCK TABLES `admin_has_roles` WRITE;
/*!40000 ALTER TABLE `admin_has_roles` DISABLE KEYS */;
INSERT INTO `admin_has_roles` VALUES (1,1,'Boss',0,0,0,0,0,1,0,0,0,0,0),(1,2,'Boss',0,0,0,0,0,1,0,0,0,0,0),(1,3,'Boss',0,0,0,0,0,1,0,0,0,0,0),(1,4,'Boss',0,0,0,0,0,1,0,0,0,0,0),(1,5,'Boss',0,0,0,0,0,1,0,0,0,0,0),(1,6,'Boss',0,0,0,0,0,1,0,0,0,0,0),(2,10,'App\\Model',4,4,0,0,0,2,1,0,4,0,0),(3,11,'App\\Model',10,10,0,0,0,3,1,0,10,0,0),(7,12,'App\\Model',10,10,0,0,0,3,1,0,10,0,0),(7,13,'App\\Model',10,10,0,0,0,3,1,0,10,0,0);
/*!40000 ALTER TABLE `admin_has_roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `admin_role_permission`
--

DROP TABLE IF EXISTS `admin_role_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `admin_role_permission` (
  `admin_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin_role_permission`
--

LOCK TABLES `admin_role_permission` WRITE;
/*!40000 ALTER TABLE `admin_role_permission` DISABLE KEYS */;
INSERT INTO `admin_role_permission` VALUES (1,1,1,'2022-10-18 03:52:50','2022-10-18 03:52:50'),(1,2,1,'2022-10-18 03:52:50','2022-10-18 03:52:50'),(1,3,1,'2022-10-18 03:52:50','2022-10-18 03:52:50'),(1,4,1,'2022-10-18 03:52:50','2022-10-18 03:52:50'),(2,1,1,'2022-10-18 03:52:50','2022-10-18 03:52:50'),(2,2,1,'2022-10-18 03:52:50','2022-10-18 03:52:50'),(2,3,1,'2022-10-18 03:52:50','2022-10-18 03:52:50'),(2,4,1,'2022-10-18 03:52:50','2022-10-18 03:52:50'),(3,1,1,'2022-10-18 03:52:50','2022-10-18 03:52:50'),(3,2,1,'2022-10-18 03:52:50','2022-10-18 03:52:50'),(3,3,1,'2022-10-18 03:52:50','2022-10-18 03:52:50'),(3,4,1,'2022-10-18 03:52:50','2022-10-18 03:52:50'),(4,1,1,'2022-10-18 03:52:50','2022-10-18 03:52:50'),(4,2,1,'2022-10-18 03:52:50','2022-10-18 03:52:50'),(4,3,1,'2022-10-18 03:52:50','2022-10-18 03:52:50'),(4,4,1,'2022-10-18 03:52:50','2022-10-18 03:52:50'),(5,1,1,'2022-10-18 03:52:50','2022-10-18 03:52:50'),(5,2,1,'2022-10-18 03:52:50','2022-10-18 03:52:50'),(5,3,1,'2022-10-18 03:52:50','2022-10-18 03:52:50'),(5,4,1,'2022-10-18 03:52:50','2022-10-18 03:52:50'),(6,1,1,'2022-10-18 03:52:50','2022-10-18 03:52:50'),(6,2,1,'2022-10-18 03:52:50','2022-10-18 03:52:50'),(6,3,1,'2022-10-18 03:52:50','2022-10-18 03:52:50'),(6,4,1,'2022-10-18 03:52:50','2022-10-18 03:52:50'),(10,2,2,'2022-10-25 07:58:52','2022-10-25 07:58:52'),(10,3,2,'2022-10-25 07:58:52','2022-10-25 07:58:52'),(10,5,2,'2022-10-25 07:58:52','2022-10-25 07:58:52'),(10,1,2,'2022-10-25 07:58:52','2022-10-25 07:58:52'),(10,4,2,'2022-10-25 07:58:52','2022-10-25 07:58:52'),(10,6,2,'2022-10-25 07:58:52','2022-10-25 07:58:52'),(10,7,2,'2022-10-25 07:58:52','2022-10-25 07:58:52'),(10,8,2,'2022-10-25 07:58:52','2022-10-25 07:58:52'),(11,6,3,'2022-10-25 08:31:36','2022-10-25 08:31:36'),(12,5,7,'2022-10-25 08:32:34','2022-10-25 08:32:34'),(12,7,7,'2022-10-25 08:32:34','2022-10-25 08:32:34'),(12,6,7,'2022-10-25 08:36:49','2022-10-25 08:36:49'),(13,5,7,'2022-10-25 08:54:25','2022-10-25 08:54:25'),(13,7,7,'2022-10-25 08:54:25','2022-10-25 08:54:25'),(13,6,7,'2022-10-25 08:54:25','2022-10-25 08:54:25');
/*!40000 ALTER TABLE `admin_role_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `permissions`
--

DROP TABLE IF EXISTS `permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `permissions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `permission_name` varchar(255) DEFAULT NULL,
  `descriptions` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `permissions`
--

LOCK TABLES `permissions` WRITE;
/*!40000 ALTER TABLE `permissions` DISABLE KEYS */;
INSERT INTO `permissions` VALUES (1,'create_account','Tạo tài khoản','2022-10-18 03:52:49','2022-10-18 03:52:49'),(2,'view_account','Xem tài khoản','2022-10-18 03:52:49','2022-10-18 03:52:49'),(3,'update_account','Sửa tài khoản','2022-10-18 03:52:49','2022-10-18 03:52:49'),(4,'delete_account','Xóa tài khoản','2022-10-18 03:52:49','2022-10-18 03:52:49'),(5,'upgrade_account','Nâng cấp tài khoản','2022-10-25 02:20:34','2022-10-25 02:20:34'),(6,'view_list_transaction_upgrade_vga','Xem danh sách giao dịch nâng cấp VGA','2022-10-25 02:21:43','2022-10-25 02:21:43'),(7,'view_pay_fee_deadline','Xem danh sách sắp hết hạn đóng phí','2022-10-25 02:27:04','2022-10-25 02:27:04'),(8,'confirm_upgrade_account','Xác nhận nâng cấp tài khoản','2022-10-25 02:50:25','2022-10-25 02:50:25');
/*!40000 ALTER TABLE `permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `role_has_permission`
--

DROP TABLE IF EXISTS `role_has_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `role_has_permission` (
  `role_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role_has_permission`
--

LOCK TABLES `role_has_permission` WRITE;
/*!40000 ALTER TABLE `role_has_permission` DISABLE KEYS */;
INSERT INTO `role_has_permission` VALUES (2,1,'2022-10-25 02:35:45','2022-10-25 02:35:45'),(2,2,'2022-10-25 02:35:45','2022-10-25 02:35:45'),(2,3,'2022-10-25 02:35:45','2022-10-25 02:35:45'),(2,4,'2022-10-25 02:35:46','2022-10-25 02:35:46'),(2,5,'2022-10-25 02:35:46','2022-10-25 02:35:46'),(2,6,'2022-10-25 02:35:46','2022-10-25 02:35:46'),(2,7,'2022-10-25 02:35:46','2022-10-25 02:35:46'),(3,6,'2022-10-25 02:36:10','2022-10-25 02:36:10'),(7,5,'2022-10-25 02:36:14','2022-10-25 02:36:14'),(2,8,'2022-10-25 02:55:31','2022-10-25 02:55:31'),(7,7,'2022-10-25 08:07:16','2022-10-25 08:07:16'),(7,6,'2022-10-25 08:36:49','2022-10-25 08:36:49');
/*!40000 ALTER TABLE `role_has_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `roles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `guard` varchar(50) DEFAULT NULL,
  `level` int(11) NOT NULL,
  `is_viewer` tinyint(4) NOT NULL DEFAULT 0,
  `type_services` int(10) unsigned NOT NULL DEFAULT 0,
  `created_at` datetime DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` VALUES (1,'Boss','boss',1,0,0,'2022-10-18 03:52:49','2022-10-18 03:52:49'),(2,'Super Admin Nâng Cấp Tài Khoản','super-admin-upgrade-account',2,0,1,'2022-10-18 03:52:49','2022-10-25 02:18:32'),(3,'Kế toán Nâng Cấp Tài Khoản','admin-view-upgrade-account',3,1,1,'2022-10-18 03:52:49','2022-10-25 03:28:47'),(7,'Sale Nâng Cấp Tài Khoản','sale-upgrade-account',3,0,1,'2022-10-25 02:18:15','2022-10-25 08:06:44');
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `type_services`
--

DROP TABLE IF EXISTS `type_services`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `type_services` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(250) DEFAULT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `type_services`
--

LOCK TABLES `type_services` WRITE;
/*!40000 ALTER TABLE `type_services` DISABLE KEYS */;
INSERT INTO `type_services` VALUES (1,'Nâng cấp tài khoản','2022-10-18 03:52:49','2022-10-18 03:52:49');
/*!40000 ALTER TABLE `type_services` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-10-26  4:49:09
