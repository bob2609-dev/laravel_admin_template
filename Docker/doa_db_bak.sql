

 drop database  if  exists ca_portal_db;

create database  if not exists ca_portal_db;

use ca_portal_db;


-- Table structure for table `AOBs`
DROP TABLE IF EXISTS `AOBs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `AOBs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `AOB_UID` varchar(255) NOT NULL,
  `AOB_title` longtext NOT NULL,
  `AOB_details` longtext NOT NULL,
  `pack_id` int NOT NULL,
  `related_evaluation` varchar(255) DEFAULT NULL,
  `allocated_time` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `minutes` longtext,
  `aob_summary` longtext,
  `approval_status` int DEFAULT NULL,
  `proposed_implementation_date` datetime DEFAULT NULL,
  `approved_implementation_date` datetime DEFAULT NULL,
  `implementation_approval` int NOT NULL DEFAULT '1',
  `implementation_status` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `AOBs`
--

LOCK TABLES `AOBs` WRITE;
/*!40000 ALTER TABLE `AOBs` DISABLE KEYS */;
INSERT INTO `AOBs` VALUES (1,'XYZ','AOB Test title','Some details here',2,'A132-B345',12,'2022-06-08 16:35:12','2022-06-08 16:35:13','1','a',NULL,NULL,NULL,1,0),(2,'61A-451','My New AOB Title','<p><strong>AOB Description test</strong></p><p>&nbsp;</p><p>Some Details Here</p>',2,NULL,15,'2022-06-08 18:12:44','2022-06-08 18:12:44','2','b',NULL,NULL,NULL,1,0),(3,'D71-9BD','Some AOB title','<p>AOB Details here blah blah blah</p>',2,NULL,15,'2022-06-08 18:24:07','2022-06-08 18:24:07','34','c',NULL,NULL,NULL,1,0),(4,'FF7-A5E','Some AOB titlesds','<p>AOB Details here blah blah blah</p>',2,NULL,15,'2022-06-08 18:27:23','2022-06-08 18:27:23','4','d',NULL,NULL,NULL,1,0),(5,'9BF-5E4','Some AOB titlesdsaasas','<p>AOB Details here blah blah blahasas</p>',2,'C3E-1C1',15,'2022-06-08 18:28:20','2022-06-08 18:28:20','5','e',NULL,NULL,NULL,1,0),(6,'4C5-253','Some AOB titlesdsaasas','<p>AOB Details here blah blah blahasas</p>',2,'C3E-1C1',15,'2022-06-08 18:30:18','2022-06-08 18:30:18','6','f',NULL,NULL,NULL,1,0),(7,'8CD-F30','test 332','<p>asas</p>',2,'EC6-63D',15,'2022-06-08 18:31:04','2022-06-08 18:31:04','7','g',NULL,NULL,NULL,1,0),(8,'567-307','test 332','<p>asas</p>',2,'EC6-63D',15,'2022-06-08 18:31:32','2022-06-08 18:31:32','8','h',NULL,NULL,NULL,1,0),(9,'0BE-011','test 332','<p>asas</p>',2,'EC6-63D',15,'2022-06-08 18:36:06','2022-06-08 18:36:06','9','i',NULL,NULL,NULL,1,0),(10,'CCC-8F2','test 332','<p>asas</p>',2,'EC6-63D',15,'2022-06-08 18:36:22','2022-06-08 18:36:22','10','j',NULL,NULL,NULL,1,0),(11,'E9A-468','test 332','<p>asas</p>',2,'EC6-63D',15,'2022-06-08 18:37:31','2022-06-08 18:37:31','11','k',NULL,NULL,NULL,1,0),(12,'F16-BCF','test 332','<p>asas</p>',2,'998-EA1',15,'2022-06-08 18:40:36','2022-06-08 18:40:36','12','l',NULL,NULL,NULL,1,0),(13,'B50-BD3','ssd','<p>sd</p>',2,NULL,15,'2022-06-09 18:20:20','2022-06-09 18:20:20','13','m',NULL,NULL,NULL,1,0),(14,'91A-E99','Test AOB','<p>123</p>',1,NULL,15,'2022-06-13 16:19:31','2022-06-13 16:19:31','<p>test 1234567s</p>','<p>nZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZz</p>',2,'2022-06-16 00:20:51','2022-06-29 21:05:30',2,4),(15,'5F1-7FA','test','<p>tes</p>',1,NULL,15,'2022-06-13 17:41:58','2022-06-13 17:41:58','<p>15ddsds&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;sds</p>','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis vulputate convallis lacus, eget cursus odio fringilla at. Curabitur ac vulputate lorem. Praesent justo magna, convallis et semper vel, sagittis et enim. Suspendisse sit amet metus sed velit varius efficitur. Nullam quis elit quam. Proin vel interdum est. <b>Vivamus lacinia diam ante, eu laoreet ex laoreet id.</b>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis vulputate convallis lacus, eget cursus odio fringilla at. Curabitur ac vulputate lorem. Praesent justo magna, convallis et semper vel, sagittis et enim. Suspendisse sit amet metus sed velit varius efficitur. Nullam quis elit quam. Proin vel interdum est. <b>Vivamus lacinia diam ante, eu laoreet ex laoreet id.</hr><hr/></b>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis vulputate convallis lacus, eget cursus odio fringilla at. Curabitur ac vulputate lorem. Praesent justo magna, convallis et semper vel, sagittis et enim. Suspendisse sit amet metus sed velit varius efficitur. Nullam quis elit quam. Proin vel interdum est. <b>Vivamus lacinia diam ante, eu laoreet ex laoreet id.</b>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis vulputate convallis lacus, eget cursus odio fringilla at. Curabitur ac vulputate lorem. Praesent justo magna, convallis et semper vel, sagittis et enim. Suspendisse sit amet metus sed velit varius efficitur. Nullam quis elit quam. Proin vel interdum est. <b>Vivamus lacinia diam ante, eu laoreet ex laoreet id.</hr><hr/></b>',2,'2022-06-16 00:20:51','2022-08-31 21:00:15',2,0),(16,'CF6-C4A','sdsd','<p>ssdsd</p>',1,NULL,15,'2022-06-14 16:45:46','2022-06-14 16:45:46','<p>16dd</p>','<p>p</p>',2,'2022-06-30 00:47:10','2022-06-30 19:13:42',2,0),(17,'B7C-DBB','Nothing Here','<p>My AOB Details</p>',1,NULL,15,'2022-06-14 17:05:37','2022-06-14 17:05:37','<p>17</p>','<p>q</p>',2,'2022-06-30 22:23:55','2022-06-26 21:50:59',2,0);
/*!40000 ALTER TABLE `AOBs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ad_user_role`
--

DROP TABLE IF EXISTS `ad_user_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ad_user_role` (
  `ad_user_id` bigint unsigned NOT NULL,
  `role_id` bigint unsigned NOT NULL,
  `user_unique_id` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ad_user_role`
--

LOCK TABLES `ad_user_role` WRITE;
/*!40000 ALTER TABLE `ad_user_role` DISABLE KEYS */;
INSERT INTO `ad_user_role` VALUES (4,2,'23ER-89Y'),(4,1,'23ER-89Y'),(4,3,'23ER-89Y'),(3,1,'6224-62F'),(3,2,'6224-62F'),(3,3,'6224-62F'),(1,1,'A202-BDF'),(5,1,'5CC6-32D'),(2,2,'B10B-B0E');
/*!40000 ALTER TABLE `ad_user_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ad_users`
--

DROP TABLE IF EXISTS `ad_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ad_users` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `ad_username` varchar(255) NOT NULL,
  `active` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_unique_id` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ad_users`
--

LOCK TABLES `ad_users` WRITE;
/*!40000 ALTER TABLE `ad_users` DISABLE KEYS */;
INSERT INTO `ad_users` VALUES (1,'Bohdan',1,'2022-07-17 19:32:40','2022-07-17 19:32:40','A202-BDF'),(2,'MWAIMU-AD$',2,'2022-07-17 19:33:41','2022-07-17 19:33:41','B10B-B0E'),(3,'mwaimu',1,'2022-07-17 19:34:58','2022-07-17 19:34:58','6224-62F'),(4,'Administrator',1,'2022-07-19 06:44:44','2022-07-19 06:44:46','23ER-89Y'),(5,'Benajah',1,'2022-07-19 13:55:51','2022-07-19 13:55:51','5CC6-32D');
/*!40000 ALTER TABLE `ad_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aob_stakeholders`
--

DROP TABLE IF EXISTS `aob_stakeholders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `aob_stakeholders` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `AOB_UID` varchar(255) NOT NULL,
  `stakeholder_name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aob_stakeholders`
--

LOCK TABLES `aob_stakeholders` WRITE;
/*!40000 ALTER TABLE `aob_stakeholders` DISABLE KEYS */;
INSERT INTO `aob_stakeholders` VALUES (1,'61A-451','Test Stakeholder -- insert to DB','2022-06-08 18:12:44','2022-06-08 18:12:44'),(2,'D71-9BD','bob269','2022-06-08 18:24:07','2022-06-08 18:24:07'),(3,'FF7-A5E','bob269','2022-06-08 18:27:23','2022-06-08 18:27:23'),(4,'9BF-5E4','bob269','2022-06-08 18:28:20','2022-06-08 18:28:20'),(5,'4C5-253','bob269','2022-06-08 18:30:19','2022-06-08 18:30:19'),(6,'8CD-F30','ssfa','2022-06-08 18:31:05','2022-06-08 18:31:05'),(7,'567-307','ssfa','2022-06-08 18:31:32','2022-06-08 18:31:32'),(8,'0BE-011','ssfa','2022-06-08 18:36:06','2022-06-08 18:36:06'),(9,'CCC-8F2','ssfa','2022-06-08 18:36:22','2022-06-08 18:36:22'),(10,'E9A-468','ssfa','2022-06-08 18:37:31','2022-06-08 18:37:31'),(11,'F16-BCF','ssfa','2022-06-08 18:40:36','2022-06-08 18:40:36'),(12,'B50-BD3','sd','2022-06-09 18:20:20','2022-06-09 18:20:20'),(13,'91A-E99','Stakeholder 1','2022-06-13 16:19:31','2022-06-13 16:19:31'),(14,'91A-E99','SH2','2022-06-13 16:19:51','2022-06-13 16:19:51'),(15,'5F1-7FA','ter','2022-06-13 17:41:58','2022-06-13 17:41:58'),(16,'91A-E99','123','2022-06-13 18:11:06','2022-06-13 18:11:06'),(17,'CF6-C4A','sdsd','2022-06-14 16:45:46','2022-06-14 16:45:46'),(18,'B7C-DBB','SH 1','2022-06-14 17:05:37','2022-06-14 17:05:37'),(19,'91A-E99','342','2022-06-14 18:27:33','2022-06-14 18:27:33'),(20,'5F1-7FA','test','2022-06-14 20:45:29','2022-06-14 20:45:29');
/*!40000 ALTER TABLE `aob_stakeholders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `approval_statuses`
--

DROP TABLE IF EXISTS `approval_statuses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `approval_statuses` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `approval_statuses`
--

LOCK TABLES `approval_statuses` WRITE;
/*!40000 ALTER TABLE `approval_statuses` DISABLE KEYS */;
INSERT INTO `approval_statuses` VALUES (1,'Pending Approval','Not Yet Approved...','2022-05-29 21:00:00','2022-05-29 21:00:00'),(2,'Approved','Approved.','2022-05-29 21:00:00','2022-05-29 21:00:00'),(3,'Denied','Denied..','2022-05-29 21:00:00','2022-05-29 21:00:00');
/*!40000 ALTER TABLE `approval_statuses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `change_categories`
--

DROP TABLE IF EXISTS `change_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `change_categories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `category_name` varchar(255) NOT NULL,
  `category_description` longtext NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `change_categories`
--

LOCK TABLES `change_categories` WRITE;
/*!40000 ALTER TABLE `change_categories` DISABLE KEYS */;
INSERT INTO `change_categories` VALUES (1,'Standard Change','Standard Change','2022-05-12 17:12:30','2022-05-12 17:12:31'),(2,'Normal Change','Normal Change','2022-05-12 17:12:52','2022-05-12 17:12:53'),(3,'Emergency Change','Emergency Change','2022-05-12 17:13:17','2022-05-12 17:13:18');
/*!40000 ALTER TABLE `change_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `communication_mappings`
--

DROP TABLE IF EXISTS `communication_mappings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `communication_mappings` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `comm_UID` varchar(255) NOT NULL,
  `item_UID` varchar(255) NOT NULL,
  `item_type` varchar(255) NOT NULL,
  `implementation_status` int NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `communication_mappings`
--

LOCK TABLES `communication_mappings` WRITE;
/*!40000 ALTER TABLE `communication_mappings` DISABLE KEYS */;
INSERT INTO `communication_mappings` VALUES (1,'7BF-544A-AFB','91A-E99','AOB',4,'2022-06-28 16:05:33','2022-06-28 16:05:33'),(2,'7BF-544A-AFB','5F1-7FA','AOB',0,'2022-06-28 16:05:33','2022-06-28 16:05:33'),(3,'7BF-544A-AFB','CF6-C4A','AOB',0,'2022-06-28 16:05:33','2022-06-28 16:05:33'),(4,'7BF-544A-AFB','B7C-DBB','AOB',0,'2022-06-28 16:05:33','2022-06-28 16:05:33'),(5,'351-6EEB-1EF','91A-E99','AOB',0,'2022-06-28 19:02:45','2022-06-28 19:02:45'),(6,'351-6EEB-1EF','5F1-7FA','AOB',0,'2022-06-28 19:02:45','2022-06-28 19:02:45'),(7,'351-6EEB-1EF','CF6-C4A','AOB',0,'2022-06-28 19:02:45','2022-06-28 19:02:45'),(8,'351-6EEB-1EF','B7C-DBB','AOB',0,'2022-06-28 19:02:45','2022-06-28 19:02:45'),(12,'67A-2A37-1CB','B62-8F0','Evaluation',0,'2022-06-28 19:04:57','2022-06-28 19:04:57'),(13,'67A-2A37-1CB','998-EA1','Evaluation',0,'2022-06-28 19:04:57','2022-06-28 19:04:57'),(14,'67A-2A37-1CB','FAC-5DC','Evaluation',0,'2022-06-28 19:04:57','2022-06-28 19:04:57'),(15,'67A-2A37-1CB','91A-E99','AOB',0,'2022-06-28 19:04:57','2022-06-28 19:04:57'),(16,'67A-2A37-1CB','5F1-7FA','AOB',0,'2022-06-28 19:04:57','2022-06-28 19:04:57'),(17,'67A-2A37-1CB','CF6-C4A','AOB',0,'2022-06-28 19:04:57','2022-06-28 19:04:57'),(18,'67A-2A37-1CB','B7C-DBB','AOB',0,'2022-06-28 19:04:57','2022-06-28 19:04:57'),(22,'F35-776A-72F','B62-8F0','Evaluation',0,'2022-06-29 18:39:41','2022-06-29 18:39:41'),(23,'F35-776A-72F','998-EA1','Evaluation',0,'2022-06-29 18:39:41','2022-06-29 18:39:41'),(24,'F35-776A-72F','FAC-5DC','Evaluation',0,'2022-06-29 18:39:41','2022-06-29 18:39:41'),(25,'F35-776A-72F','91A-E99','AOB',0,'2022-06-29 18:39:42','2022-06-29 18:39:42'),(26,'F35-776A-72F','5F1-7FA','AOB',0,'2022-06-29 18:39:42','2022-06-29 18:39:42'),(27,'F35-776A-72F','CF6-C4A','AOB',0,'2022-06-29 18:39:42','2022-06-29 18:39:42'),(28,'F35-776A-72F','B7C-DBB','AOB',0,'2022-06-29 18:39:42','2022-06-29 18:39:42'),(29,'FCB-8F43-A7E','B62-8F0','Evaluation',2,'2022-07-03 12:11:15','2022-07-03 12:11:15'),(30,'FCB-8F43-A7E','998-EA1','Evaluation',0,'2022-07-03 12:11:15','2022-07-03 12:11:15'),(31,'FCB-8F43-A7E','FAC-5DC','Evaluation',0,'2022-07-03 12:11:15','2022-07-03 12:11:15'),(32,'FCB-8F43-A7E','91A-E99','AOB',4,'2022-07-03 12:11:16','2022-07-03 12:11:16'),(33,'FCB-8F43-A7E','5F1-7FA','AOB',0,'2022-07-03 12:11:16','2022-07-03 12:11:16'),(34,'FCB-8F43-A7E','CF6-C4A','AOB',0,'2022-07-03 12:11:16','2022-07-03 12:11:16'),(35,'FCB-8F43-A7E','B7C-DBB','AOB',0,'2022-07-03 12:11:16','2022-07-03 12:11:16'),(39,'92D-2B66-D06','B62-8F0','Evaluation',0,'2022-07-19 14:33:00','2022-07-19 14:33:00'),(40,'92D-2B66-D06','998-EA1','Evaluation',0,'2022-07-19 14:33:00','2022-07-19 14:33:00'),(41,'92D-2B66-D06','FAC-5DC','Evaluation',0,'2022-07-19 14:33:00','2022-07-19 14:33:00'),(42,'92D-2B66-D06','91A-E99','AOB',0,'2022-07-19 14:33:01','2022-07-19 14:33:01'),(43,'92D-2B66-D06','5F1-7FA','AOB',0,'2022-07-19 14:33:01','2022-07-19 14:33:01'),(44,'92D-2B66-D06','CF6-C4A','AOB',0,'2022-07-19 14:33:01','2022-07-19 14:33:01'),(45,'92D-2B66-D06','B7C-DBB','AOB',0,'2022-07-19 14:33:01','2022-07-19 14:33:01');
/*!40000 ALTER TABLE `communication_mappings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `communications`
--

DROP TABLE IF EXISTS `communications`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `communications` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `comm_UID` varchar(255) NOT NULL,
  `comm_title` varchar(255) NOT NULL DEFAULT 'Change Communication -  June - 28-06-2022',
  `pack_ref` int NOT NULL,
  `comm_status` int NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `communications`
--

LOCK TABLES `communications` WRITE;
/*!40000 ALTER TABLE `communications` DISABLE KEYS */;
INSERT INTO `communications` VALUES (1,'7BF-544A-AFB','Change Communication -  June - 28-06-2022',1,1,'2022-06-28 16:05:33','2022-06-28 16:05:33'),(2,'351-6EEB-1EF','Change Communication -  June - 28-06-2022',1,1,'2022-06-28 19:02:45','2022-06-28 19:02:45'),(3,'67A-2A37-1CB','Change Communication -  June - 28-06-2022',1,1,'2022-06-28 19:04:57','2022-06-28 19:04:57'),(4,'F35-776A-72F','Change Communication - June : 29-06-2022',1,1,'2022-06-29 18:39:40','2022-06-29 18:39:40'),(5,'FCB-8F43-A7E','Change Communication - July : 03-07-2022',1,1,'2022-07-03 12:11:15','2022-07-03 12:11:15'),(6,'92D-2B66-D06','Change Communication - July : 19-07-2022',1,1,'2022-07-19 14:32:59','2022-07-19 14:32:59');
/*!40000 ALTER TABLE `communications` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `evaluation_evaluators`
--

DROP TABLE IF EXISTS `evaluation_evaluators`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `evaluation_evaluators` (
  `evaluation_id` varchar(255) NOT NULL,
  `evaluator_id` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `evaluation_evaluators`
--

LOCK TABLES `evaluation_evaluators` WRITE;
/*!40000 ALTER TABLE `evaluation_evaluators` DISABLE KEYS */;
INSERT INTO `evaluation_evaluators` VALUES ('B62-8F0','1'),('2','1'),('AFF-758','1'),('B62-8F0','2'),('C3E-1C1','4'),('B62-8F0','4');
/*!40000 ALTER TABLE `evaluation_evaluators` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `evaluation_packs`
--

DROP TABLE IF EXISTS `evaluation_packs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `evaluation_packs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `evaluation_id` varchar(255) NOT NULL,
  `pack_id` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `minutes` longtext,
  `approval_status` varchar(255) DEFAULT NULL,
  `CAB_summary` longtext,
  `proposed_implementation_date_time` datetime DEFAULT NULL,
  `approval_comments` longtext,
  `approved_implementation_date_time` datetime DEFAULT NULL,
  `implementation_approval` int NOT NULL DEFAULT '1',
  `implementation_status` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `evaluation_packs`
--

LOCK TABLES `evaluation_packs` WRITE;
/*!40000 ALTER TABLE `evaluation_packs` DISABLE KEYS */;
INSERT INTO `evaluation_packs` VALUES (7,'B62-8F0','1','2022-05-26 20:44:05','2022-05-26 20:44:05','<p>Test Minutessds</p>','2','<b>Nulla vitae velit sapien. Donec sem erat, sodales aliquet volutpat luctus, semper sed quam. Donec dapibus nibh non sapien hendrerit, semper cursus nunc interdum. Vivamus maximus at ligula sit amet feugiat. Aliquam nec est quis orci cursus dapibus id nec eros. Mauris elementum orci eget leo consectetur euismod sed nec augue. Fusce eu dictum dolor. Suspendisse hendrerit mauris lectus, ac posuere nisl pulvinar at. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus justo lectus, porttitor et bibendum vestibulum, pharetra faucibus nibh. Vivamus sodales, nibh nec luctus eleifend, libero dui consectetur velit, ut placerat neque eros quis velit. Fusce pharetra purus sollicitudin sem cursus, eget ultrices arcu cursus. In hac habitasse platea dictumst. Vivamus tincidunt convallis leo, vel consectetur odio ullamcorper vitae.</b>','2022-10-20 23:49:05',NULL,'2022-10-20 23:49:05',2,2),(8,'B62-8F0','4','2022-05-26 20:54:32','2022-05-26 20:54:32','Test Minutes','1','Test Summary',NULL,NULL,NULL,1,0),(9,'998-EA1','1','2022-05-28 10:11:38','2022-05-28 10:11:38','Test Minutes','2','<p>test</p>','2022-06-30 20:24:31',NULL,'2020-06-30 20:24:56',2,0),(10,'B62-8F0','7','2022-05-28 14:53:19','2022-05-28 14:53:19','Test Minutes','3','test',NULL,NULL,NULL,1,0),(11,'B62-8F0','6','2022-05-28 14:57:00','2022-05-28 14:57:00','Test Minutes','3','test',NULL,NULL,NULL,1,0),(12,'B62-8F0','7','2022-05-28 14:57:15','2022-05-28 14:57:15','Test Minutes','3','test',NULL,NULL,NULL,1,0),(13,'B62-8F0','16','2022-05-28 15:07:49','2022-05-28 15:07:49','Test Minutes','3','test',NULL,NULL,NULL,1,0),(14,'B62-8F0','2','2022-06-08 16:36:24','2022-06-08 16:36:24',NULL,'1','some summary',NULL,NULL,NULL,1,0),(15,'FAC-5DC','1','2022-06-09 18:54:47','2022-06-09 18:54:47','<p>yeaaaaaahhh</p>','2','<p>summary two</p>','2022-06-30 20:24:01',NULL,'2022-06-30 20:24:01',2,0);
/*!40000 ALTER TABLE `evaluation_packs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `evaluations`
--

DROP TABLE IF EXISTS `evaluations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `evaluations` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `eval_UID` varchar(255) NOT NULL,
  `change_id` varchar(255) NOT NULL,
  `change_title` longtext NOT NULL,
  `change_category` varchar(255) NOT NULL,
  `change_description` longtext NOT NULL,
  `evaluation_date` date NOT NULL,
  `risk_event_likelihood` int NOT NULL DEFAULT '1',
  `risk_event_impact` int NOT NULL DEFAULT '1',
  `risk_rating` int NOT NULL DEFAULT '1',
  `risk_description` longtext,
  `discussion` longtext,
  `recommendation` longtext,
  `uat_results` int NOT NULL DEFAULT '1',
  `plans` int NOT NULL DEFAULT '1',
  `department_approval` int NOT NULL DEFAULT '1',
  `preliminary_approval` int NOT NULL DEFAULT '1',
  `NOC_alignment` int NOT NULL DEFAULT '1',
  `SD_alignment` int NOT NULL DEFAULT '1',
  `CX_alignment` int NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `evaluations`
--

LOCK TABLES `evaluations` WRITE;
/*!40000 ALTER TABLE `evaluations` DISABLE KEYS */;
INSERT INTO `evaluations` VALUES (1,'B62-8F0','ID-001','First Test Evaluation','1','<p>Some Description of the change.</p>','2022-05-12',2,5,10,NULL,'<p>test</p>','<strong>recommended for CAB</strong>',1,1,1,2,1,1,3,'2022-05-12 16:58:07','2022-05-12 16:58:07'),(2,'AFF-758','ID-002','Second Evaluation Test - from Interface','0','<p>Trying to push data from UI</p>','2022-05-05',2,3,6,NULL,NULL,NULL,1,1,1,1,1,1,1,'2022-05-12 16:59:56','2022-05-12 16:59:56'),(26,'C3E-1C1','ID-PROJECT GREEN COLA','Testing Different ID Column','1','<p>test 2222s</p>','2022-05-26',1,3,3,NULL,'<p>test 444</p>',NULL,1,1,1,1,1,1,1,'2022-05-18 18:34:01','2022-05-18 18:34:01'),(27,'45E-9C2','ID-PROJECT GREEN COLA','00123 TEST','1','<p>sd</p>','2022-05-14',5,2,25,NULL,NULL,NULL,1,1,1,1,1,1,1,'2022-05-19 16:33:24','2022-05-19 16:33:24'),(28,'EC6-63D','ID-PROJECT GREEN COLA','Testing Different ID Column','1','<p>New Description</p>','2022-05-26',4,5,20,NULL,'<p>sdsdsdssdsd</p>',NULL,1,1,1,1,1,1,1,'2022-05-24 16:32:42','2022-05-24 16:32:42'),(29,'998-EA1','9876','Testing new Date Picker','1','<p><span style=\"color:#a6e22e;\">enableSelect2</span></p>','2022-05-27',1,1,1,NULL,NULL,NULL,1,1,1,1,1,1,1,'2022-05-28 10:08:14','2022-05-28 10:08:14'),(30,'FAC-5DC','9876','00123 TEST','1','<p>test</p>','2022-06-15',3,3,9,NULL,'<p>ok</p>',NULL,1,1,1,1,1,1,1,'2022-06-09 18:53:50','2022-06-09 18:53:50'),(31,'04D-88E','9876xxxx','some test','2','<p>okay</p>','2022-06-17',1,1,1,NULL,NULL,NULL,1,1,1,1,1,1,1,'2022-06-09 18:56:33','2022-06-09 18:56:33'),(32,'73B-E53','Test CACHING','Test CACHING','1','<p>Test CACHING</p>','2022-07-13',1,1,1,NULL,NULL,NULL,1,1,1,1,1,1,1,'2022-07-12 18:00:39','2022-07-12 18:00:39'),(33,'284-506','Test CACHING 2','Test CACHING 2','1','<p>Test CACHING 2</p>','2022-07-22',1,1,1,NULL,NULL,NULL,1,1,1,1,1,1,1,'2022-07-12 18:04:20','2022-07-12 18:04:20');
/*!40000 ALTER TABLE `evaluations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `evaluators`
--

DROP TABLE IF EXISTS `evaluators`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `evaluators` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `evaluator_name` varchar(255) NOT NULL,
  `function_unit` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `evaluators`
--

LOCK TABLES `evaluators` WRITE;
/*!40000 ALTER TABLE `evaluators` DISABLE KEYS */;
INSERT INTO `evaluators` VALUES (1,'Bob Mwaimu','Change Administration','2','2022-05-23 18:24:24','2022-05-23 18:24:24'),(2,'Bob','Test','1','2022-05-23 19:50:45','2022-05-23 19:50:45'),(3,'test','test11','2','2022-05-23 19:51:29','2022-05-23 19:51:29'),(4,'123','321','2','2022-05-23 19:52:09','2022-05-23 19:52:09'),(5,'sds','sdsd','1','2022-05-23 19:52:42','2022-05-23 19:52:42'),(6,'asa','sasa','1','2022-05-23 19:54:14','2022-05-23 19:54:14'),(7,'sdsd','sdsd','1','2022-05-23 19:54:47','2022-05-23 19:54:47'),(8,'xcxc','xcxc','1','2022-05-23 19:54:54','2022-05-23 19:54:54'),(9,'www','eeee','1','2022-05-23 19:55:16','2022-05-23 19:55:16'),(10,'asas','sdsd','1','2022-05-23 19:56:57','2022-05-23 19:56:57'),(11,'Tester','Test','2','2022-05-25 16:22:24','2022-05-25 16:22:24'),(12,'123test','123','1','2022-07-11 09:09:04','2022-07-11 09:09:04'),(13,'sdsd','sdsd','1','2022-07-11 09:43:19','2022-07-11 09:43:19'),(14,'4223','2323223','1','2022-07-11 10:12:58','2022-07-11 10:12:58'),(15,'Test3','Test3','2','2022-07-19 14:31:01','2022-07-19 14:31:01');
/*!40000 ALTER TABLE `evaluators` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `failed_jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `failed_jobs`
--

LOCK TABLES `failed_jobs` WRITE;
/*!40000 ALTER TABLE `failed_jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `failed_jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `implementation_logs`
--

DROP TABLE IF EXISTS `implementation_logs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `implementation_logs` (
  `entry_id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `item_UID` varchar(255) NOT NULL,
  `comm_UID` varchar(255) NOT NULL,
  `implementation_status` int NOT NULL DEFAULT '0',
  `actual_date_time` datetime NOT NULL DEFAULT '2022-07-05 19:18:53',
  `comments` longtext NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `item_type` varchar(255) NOT NULL,
  PRIMARY KEY (`entry_id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `implementation_logs`
--

LOCK TABLES `implementation_logs` WRITE;
/*!40000 ALTER TABLE `implementation_logs` DISABLE KEYS */;
INSERT INTO `implementation_logs` VALUES (1,'B62-8F0','FCB-8F43-A7E',0,'2022-07-05 19:18:53','change Added to Change Implementation Communication','2022-07-03 12:11:16','2022-07-03 12:11:16','Evaluation'),(2,'998-EA1','FCB-8F43-A7E',0,'2022-07-05 19:18:53','change Added to Change Implementation Communication','2022-07-03 12:11:16','2022-07-03 12:11:16','Evaluation'),(3,'FAC-5DC','FCB-8F43-A7E',0,'2022-07-05 19:18:53','change Added to Change Implementation Communication','2022-07-03 12:11:16','2022-07-03 12:11:16','Evaluation'),(4,'91A-E99','FCB-8F43-A7E',0,'2022-07-05 19:18:53','AOB Added to Change Implementation Communication','2022-07-03 12:11:16','2022-07-03 12:11:16','AOB'),(5,'5F1-7FA','FCB-8F43-A7E',0,'2022-07-05 19:18:53','AOB Added to Change Implementation Communication','2022-07-03 12:11:16','2022-07-03 12:11:16','AOB'),(6,'CF6-C4A','FCB-8F43-A7E',0,'2022-07-05 19:18:53','AOB Added to Change Implementation Communication','2022-07-03 12:11:16','2022-07-03 12:11:16','AOB'),(7,'B7C-DBB','FCB-8F43-A7E',0,'2022-07-05 19:18:53','AOB Added to Change Implementation Communication','2022-07-03 12:11:16','2022-07-03 12:11:16','AOB'),(11,'B62-8F0','FCB-8F43-A7E',2,'2022-07-26 19:29:22','<p>testzzz</p>','2022-07-05 16:29:27','2022-07-05 16:29:27','Evaluation'),(12,'91A-E99','FCB-8F43-A7E',0,'2022-07-05 19:29:45','<p>check check</p>','2022-07-05 16:29:56','2022-07-05 16:29:56','AOB'),(13,'91A-E99','FCB-8F43-A7E',4,'2022-07-05 19:29:45','<p>check check</p>','2022-07-05 16:30:03','2022-07-05 16:30:03','AOB'),(14,'91A-E99','FCB-8F43-A7E',4,'2022-07-05 19:29:45','<p>check check 432</p>','2022-07-05 16:32:53','2022-07-05 16:32:53','AOB'),(15,'B62-8F0','92D-2B66-D06',0,'2022-07-05 19:18:53','change Added to Change Implementation Communication','2022-07-19 14:33:01','2022-07-19 14:33:01','Evaluation'),(16,'998-EA1','92D-2B66-D06',0,'2022-07-05 19:18:53','change Added to Change Implementation Communication','2022-07-19 14:33:01','2022-07-19 14:33:01','Evaluation'),(17,'FAC-5DC','92D-2B66-D06',0,'2022-07-05 19:18:53','change Added to Change Implementation Communication','2022-07-19 14:33:01','2022-07-19 14:33:01','Evaluation'),(18,'91A-E99','92D-2B66-D06',0,'2022-07-05 19:18:53','AOB Added to Change Implementation Communication','2022-07-19 14:33:03','2022-07-19 14:33:03','AOB'),(19,'5F1-7FA','92D-2B66-D06',0,'2022-07-05 19:18:53','AOB Added to Change Implementation Communication','2022-07-19 14:33:03','2022-07-19 14:33:03','AOB'),(20,'CF6-C4A','92D-2B66-D06',0,'2022-07-05 19:18:53','AOB Added to Change Implementation Communication','2022-07-19 14:33:03','2022-07-19 14:33:03','AOB'),(21,'B7C-DBB','92D-2B66-D06',0,'2022-07-05 19:18:53','AOB Added to Change Implementation Communication','2022-07-19 14:33:03','2022-07-19 14:33:03','AOB'),(25,'91A-E99','7BF-544A-AFB',4,'2024-07-23 15:49:20','<p>test</p>','2022-07-21 12:49:32','2022-07-21 12:49:32','AOB');
/*!40000 ALTER TABLE `implementation_logs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `implementation_roles`
--

DROP TABLE IF EXISTS `implementation_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `implementation_roles` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `role_name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `implementation_roles`
--

LOCK TABLES `implementation_roles` WRITE;
/*!40000 ALTER TABLE `implementation_roles` DISABLE KEYS */;
INSERT INTO `implementation_roles` VALUES (1,'Implementer','2022-06-30 19:03:03','2022-06-30 19:03:04'),(2,'Monitor','2022-06-30 19:03:18','2022-06-30 19:03:19');
/*!40000 ALTER TABLE `implementation_roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `implementation_stakeholders`
--

DROP TABLE IF EXISTS `implementation_stakeholders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `implementation_stakeholders` (
  `entry_id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `comm_UID` varchar(255) NOT NULL,
  `item_UID` varchar(255) NOT NULL,
  `stakeholder_name` varchar(255) NOT NULL,
  `implementation_role` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`entry_id`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `implementation_stakeholders`
--

LOCK TABLES `implementation_stakeholders` WRITE;
/*!40000 ALTER TABLE `implementation_stakeholders` DISABLE KEYS */;
INSERT INTO `implementation_stakeholders` VALUES (1,'7BF-544A-AFB','91A-E99','dfdf','2','2022-07-02 12:42:15','2022-07-02 12:42:15'),(2,'7BF-544A-AFB','91A-E99','dfdf','1','2022-07-02 12:45:02','2022-07-02 12:45:02'),(3,'7BF-544A-AFB','91A-E99','dfdfzzz','1','2022-07-02 12:50:19','2022-07-02 12:50:19'),(4,'7BF-544A-AFB','91A-E99','sss','2','2022-07-02 12:54:18','2022-07-02 12:54:18'),(5,'7BF-544A-AFB','91A-E99','zzz','1','2022-07-02 12:55:32','2022-07-02 12:55:32'),(6,'7BF-544A-AFB','91A-E99','asadefsf','1','2022-07-02 13:36:28','2022-07-02 13:36:28'),(7,'7BF-544A-AFB','5F1-7FA','ssfs63','1','2022-07-02 13:40:09','2022-07-02 13:40:09'),(8,'7BF-544A-AFB','5F1-7FA','ssds','2','2022-07-02 16:28:39','2022-07-02 16:28:39'),(9,'7BF-544A-AFB','5F1-7FA','sds','1','2022-07-02 16:44:08','2022-07-02 16:44:08'),(10,'7BF-544A-AFB','5F1-7FA','sdsd','1','2022-07-02 16:46:15','2022-07-02 16:46:15'),(11,'7BF-544A-AFB','5F1-7FA','sdsdsdssf','2','2022-07-02 16:46:33','2022-07-02 16:46:33'),(12,'7BF-544A-AFB','91A-E99','cvcn nfx','1','2022-07-02 16:48:57','2022-07-02 16:48:57'),(13,'7BF-544A-AFB','91A-E99','vxcxcx','2','2022-07-02 16:54:40','2022-07-02 16:54:40'),(14,'7BF-544A-AFB','91A-E99','vbvbvbvbvbvb','1','2022-07-02 17:37:18','2022-07-02 17:37:18'),(15,'7BF-544A-AFB','91A-E99','sdsdsgfndvxxdgdfdf','2','2022-07-02 17:37:50','2022-07-02 17:37:50'),(16,'7BF-544A-AFB','91A-E99','zzzzzzzz','2','2022-07-02 17:38:17','2022-07-02 17:38:17'),(17,'7BF-544A-AFB','91A-E99','zzzzzzzzz','2','2022-07-02 17:39:16','2022-07-02 17:39:16'),(18,'7BF-544A-AFB','91A-E99','zzzzzz','1','2022-07-02 17:39:40','2022-07-02 17:39:40'),(19,'7BF-544A-AFB','5F1-7FA','cvcvcv','2','2022-07-02 17:41:02','2022-07-02 17:41:02'),(20,'7BF-544A-AFB','5F1-7FA','cvcvcvxx','2','2022-07-02 17:41:09','2022-07-02 17:41:09'),(21,'7BF-544A-AFB','91A-E99','gglgdsfgjn x','1','2022-07-02 17:41:58','2022-07-02 17:41:58'),(22,'7BF-544A-AFB','91A-E99','xcbbmb,b','2','2022-07-02 17:43:12','2022-07-02 17:43:12'),(23,'7BF-544A-AFB','CF6-C4A','x','1','2022-07-02 17:44:05','2022-07-02 17:44:05'),(24,'7BF-544A-AFB','B7C-DBB','sdsd','1','2022-07-02 18:02:49','2022-07-02 18:02:49'),(25,'7BF-544A-AFB','B7C-DBB','tfdfd','2','2022-07-02 18:03:18','2022-07-02 18:03:18'),(26,'7BF-544A-AFB','CF6-C4A','dsdsd','1','2022-07-02 18:10:34','2022-07-02 18:10:34'),(27,'7BF-544A-AFB','CF6-C4A','dfdgdg','2','2022-07-02 18:10:44','2022-07-02 18:10:44'),(28,'7BF-544A-AFB','CF6-C4A','dfdgdgrtr','2','2022-07-02 18:10:55','2022-07-02 18:10:55'),(29,'7BF-544A-AFB','91A-E99','dffd','1','2022-07-02 18:19:06','2022-07-02 18:19:06'),(30,'7BF-544A-AFB','B7C-DBB','ssgdsss','1','2022-07-02 23:24:43','2022-07-02 23:24:43'),(31,'7BF-544A-AFB','CF6-C4A','ssfsdsdsfsgdgdgdfdfdgdfdfsdsdsd','1','2022-07-02 23:31:43','2022-07-02 23:31:43'),(32,'7BF-544A-AFB','91A-E99','aaa!@#@','1','2022-07-03 10:33:41','2022-07-03 10:33:41'),(33,'7BF-544A-AFB','5F1-7FA','test','1','2022-07-11 13:12:32','2022-07-11 13:12:32'),(34,'FCB-8F43-A7E','B62-8F0','test','1','2022-07-11 13:23:34','2022-07-11 13:23:34');
/*!40000 ALTER TABLE `implementation_stakeholders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `implementation_statuses`
--

DROP TABLE IF EXISTS `implementation_statuses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `implementation_statuses` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `status_code` varchar(255) NOT NULL,
  `status_name` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `implementation_statuses`
--

LOCK TABLES `implementation_statuses` WRITE;
/*!40000 ALTER TABLE `implementation_statuses` DISABLE KEYS */;
INSERT INTO `implementation_statuses` VALUES (1,'0','Pending Implementation','Change implementation has not started','2022-06-30 17:02:48','2022-06-30 17:02:49'),(2,'1','Implementation Phase','Change Implementaion is underway','2022-06-30 17:03:29','2022-06-30 17:03:30'),(3,'2','Implementation Completed','Change Implementation has completed successfully','2022-06-30 17:04:06','2022-06-30 17:04:07'),(4,'3\n','Post Implementation Monitoring','Change is being Monitored ','2022-07-03 11:21:20','2022-07-03 11:21:21'),(5,'4','Rolled Back','Change was Rolled Back','2022-07-03 11:23:00','2022-07-03 11:23:01');
/*!40000 ALTER TABLE `implementation_statuses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `involved_components`
--

DROP TABLE IF EXISTS `involved_components`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `involved_components` (
  `component_id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `eval_UID` varchar(255) NOT NULL,
  `component_name` varchar(255) NOT NULL,
  `downtime_minutes` int NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`component_id`)
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `involved_components`
--

LOCK TABLES `involved_components` WRITE;
/*!40000 ALTER TABLE `involved_components` DISABLE KEYS */;
INSERT INTO `involved_components` VALUES (10,'AFF-758','test',0,'2022-05-16 18:25:58','2022-05-16 18:25:58'),(15,'B62-8F0','sddAnother Test',3,'2022-05-17 17:16:46','2022-05-17 17:16:46'),(18,'B62-8F0','sddAnother Test',3,'2022-05-17 17:16:48','2022-05-17 17:16:48');
/*!40000 ALTER TABLE `involved_components` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `migrations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'2014_10_12_000000_create_users_table',1),(2,'2014_10_12_100000_create_password_resets_table',1),(3,'2019_08_19_000000_create_failed_jobs_table',1),(4,'2019_12_14_000001_create_personal_access_tokens_table',1),(5,'2022_04_09_125031_create_roles_table',1),(6,'2022_04_09_125127_create_role_users_table',1),(7,'2022_04_09_125208_create_permissions_table',1),(8,'2022_04_09_125306_create_role_permissions_table',1),(9,'2022_04_28_135712_create_ad_users_table',1),(11,'2022_05_05_130425_create_evaluations_table',1),(12,'2022_05_05_144408_create_involved_components_table',1),(13,'2022_05_05_153112_create_stakeholders_table',1),(14,'2022_05_11_213444_create_change_categories_table',1),(19,'2022_05_18_200934_create_evaluators_table',2),(20,'2022_05_18_201005_create_evaluation_evaluators_table',2),(21,'2022_05_19_081039_update_eval_id_column_on_evaluations_table',3),(22,'2022_05_23_223511_add_status_column_to_evaluators_table',4),(23,'2022_05_25_112647_create_prerequisite_statuses_table',5),(24,'2022_05_25_190735_create_packs_table',6),(25,'2022_05_25_191701_create_evaluation_packs_table',6),(26,'2022_05_25_222738_create_status_codes_table',7),(27,'2022_05_29_221154_add_columns_to_evaluation_packs_table',8),(28,'2022_05_30_190145_create_approval_statuses_table',9),(30,'2022_06_08_111656_create_a_o_b__stakeholders_table',11),(31,'2022_06_07_083202_create_a_o_b_s_table',12),(32,'2022_06_13_113046_add_columns_to__a_o_bs_table',13),(33,'2022_06_14_212127_add_summary_column_to__a_o_bs_table',14),(34,'2022_06_16_205215_create_summaries_table',15),(35,'2022_06_23_092021_add_implementation_approval_column_to_evaluation_packs_table',15),(36,'2022_06_23_092059_add_implementation_approval_column_to__a_o_bs_table',15),(37,'2022_06_27_202112_create_communications_table',16),(38,'2022_06_28_095123_create_communication_mappings_table',16),(39,'2022_06_30_104108_create_implementation_statuses_table',17),(40,'2022_06_30_195507_add_implementation_status_column_to_evaluation_packs_table',18),(41,'2022_06_30_201701_add_implementation_status_column_to__a_o_bs_table',19),(42,'2022_06_30_215112_create_implementation_stakeholders_table',20),(43,'2022_06_30_215438_create_implementation_roles_table',20),(44,'2022_07_03_142808_create_implementation_logs_table',21),(45,'2022_07_03_150045_add_item_type_to_implementation_logs',22),(46,'2022_07_03_150617_update_defaul_value_for_implementation_status__to_implementation_logs',23),(47,'2022_07_05_142002_add_actual_date_column_to_implementation_logs_table',24),(48,'2022_07_05_143135_add_implementation_status_to_communication_mappings_table',24),(49,'2022_07_17_185318_add_unique_id_column_to_ad_users_table',25),(50,'2022_07_17_185450_add_unique_id_column_to_ad_users_role_table',26),(51,'2022_04_28_135945_create_ad_user_roles_table',27);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `packs`
--

DROP TABLE IF EXISTS `packs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `packs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `description` varchar(255) NOT NULL,
  `CAB_date` date NOT NULL,
  `pack_status` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `packs`
--

LOCK TABLES `packs` WRITE;
/*!40000 ALTER TABLE `packs` DISABLE KEYS */;
INSERT INTO `packs` VALUES (1,'Pack One test','2022-05-12',2,'2022-05-25 19:22:09','2022-05-25 19:22:09'),(2,'test Pack','2022-05-19',1,'2022-05-26 15:49:56','2022-05-26 15:49:56'),(3,'test Pack 2','2022-05-31',2,'2022-05-26 15:50:30','2022-05-26 15:50:30'),(4,'Test table reload with all setup','2022-05-27',2,'2022-05-26 15:58:21','2022-05-26 15:58:21'),(5,'Test table reload with all setup','2022-05-27',1,'2022-05-26 15:58:29','2022-05-26 15:58:29'),(6,'aahhhh','2022-05-26',1,'2022-05-26 15:58:57','2022-05-26 15:58:57'),(7,'test','2022-05-12',1,'2022-05-26 16:00:40','2022-05-26 16:00:40'),(8,'test','2022-05-12',1,'2022-05-26 16:00:43','2022-05-26 16:00:43'),(9,'test','2022-05-12',1,'2022-05-26 16:00:50','2022-05-26 16:00:50'),(10,'another test','2022-05-12',1,'2022-05-26 16:01:40','2022-05-26 16:01:40'),(11,'another test 11','2022-05-12',1,'2022-05-26 16:01:51','2022-05-26 16:01:51'),(12,'another test 12','2022-05-12',1,'2022-05-26 16:15:28','2022-05-26 16:15:28'),(13,'Pack Number 6','2022-05-30',1,'2022-05-28 09:53:49','2022-05-28 09:53:49'),(14,'pack 14','2022-05-31',1,'2022-05-28 09:55:50','2022-05-28 09:55:50'),(15,'15th CAB','2022-05-31',1,'2022-05-28 09:57:53','2022-05-28 09:57:53'),(16,'16th CAB','2022-05-24',1,'2022-05-28 09:58:30','2022-05-28 09:58:30');
/*!40000 ALTER TABLE `packs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_resets`
--

LOCK TABLES `password_resets` WRITE;
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `permissions`
--

DROP TABLE IF EXISTS `permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `permissions` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `permission_name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `permissions`
--

LOCK TABLES `permissions` WRITE;
/*!40000 ALTER TABLE `permissions` DISABLE KEYS */;
INSERT INTO `permissions` VALUES (1,'CanViewDashboard','2022-05-12 16:56:07','2022-05-12 16:56:09'),(2,'CanCreateEvaluationItem','2022-05-15 09:10:05','2022-05-15 09:10:06'),(3,'CanEditEvaluation','2022-05-15 09:27:38','2022-05-15 09:27:39'),(4,'CanSaveStakeholder','2022-05-16 16:32:52','2022-05-16 16:32:56'),(5,'HasAdminRights','2022-05-16 16:38:01','2022-05-16 16:38:02'),(6,'CanEditAOB','2022-06-15 19:57:57','2022-06-15 19:57:58'),(7,'CanViewUsers','2022-07-13 17:25:26','2022-07-13 17:25:27');
/*!40000 ALTER TABLE `permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `personal_access_tokens`
--

DROP TABLE IF EXISTS `personal_access_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `personal_access_tokens` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint unsigned NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `personal_access_tokens`
--

LOCK TABLES `personal_access_tokens` WRITE;
/*!40000 ALTER TABLE `personal_access_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `personal_access_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `prerequisite_statuses`
--

DROP TABLE IF EXISTS `prerequisite_statuses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `prerequisite_statuses` (
  `entry_id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `status_code` varchar(255) NOT NULL,
  `status_name` varchar(255) NOT NULL,
  `status_description` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`entry_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `prerequisite_statuses`
--

LOCK TABLES `prerequisite_statuses` WRITE;
/*!40000 ALTER TABLE `prerequisite_statuses` DISABLE KEYS */;
INSERT INTO `prerequisite_statuses` VALUES (1,'1','Pending','Not Started or Partially Completed','2022-05-25 15:52:57','2022-05-25 15:52:57'),(2,'2','Completed','Completed','2022-05-25 15:52:57','2022-05-25 15:52:57'),(3,'3','Not Applicable','Not Required in this case','2022-05-25 15:52:57','2022-05-25 15:52:57');
/*!40000 ALTER TABLE `prerequisite_statuses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `risk_impact`
--

DROP TABLE IF EXISTS `risk_impact`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `risk_impact` (
  `entry_id` int NOT NULL AUTO_INCREMENT,
  `rating` int DEFAULT NULL,
  `description` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`entry_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `risk_impact`
--

LOCK TABLES `risk_impact` WRITE;
/*!40000 ALTER TABLE `risk_impact` DISABLE KEYS */;
INSERT INTO `risk_impact` VALUES (1,1,'Negligible'),(2,2,'Minor'),(3,3,'Moderate'),(4,4,'Major'),(5,5,'Severe');
/*!40000 ALTER TABLE `risk_impact` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `risk_likelihood`
--

DROP TABLE IF EXISTS `risk_likelihood`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `risk_likelihood` (
  `entry_id` int NOT NULL AUTO_INCREMENT,
  `rating` int DEFAULT NULL,
  `description` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`entry_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `risk_likelihood`
--

LOCK TABLES `risk_likelihood` WRITE;
/*!40000 ALTER TABLE `risk_likelihood` DISABLE KEYS */;
INSERT INTO `risk_likelihood` VALUES (1,1,'Rare'),(2,2,'Unlikely'),(3,3,'Moderate'),(4,4,'Likely'),(5,5,'Almost Certain');
/*!40000 ALTER TABLE `risk_likelihood` ENABLE KEYS */;
UNLOCK TABLES;

---- Table structure for table `roles`

--

DROP TABLE IF EXISTS `roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `roles` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `role_name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

-- Table structure for table `role_permissions`

DROP TABLE IF EXISTS `role_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `role_permissions` (
  `permission_id` bigint unsigned NOT NULL,
  `role_id` bigint unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role_permissions`
--

LOCK TABLES `role_permissions` WRITE;
/*!40000 ALTER TABLE `role_permissions` DISABLE KEYS */;
INSERT INTO `role_permissions` VALUES (1,1),(2,1),(3,1),(4,1),(5,1),(1,2),(6,1),(7,1);
/*!40000 ALTER TABLE `role_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `role_user`
--

DROP TABLE IF EXISTS `role_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `role_user` (
  `user_id` bigint unsigned NOT NULL,
  `role_id` bigint unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role_user`
--

LOCK TABLES `role_user` WRITE;
/*!40000 ALTER TABLE `role_user` DISABLE KEYS */;
INSERT INTO `role_user` VALUES (1,1),(2,2),(1,2);
/*!40000 ALTER TABLE `role_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles`
--

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` VALUES (1,'admin','2022-05-12 16:55:41','2022-05-12 16:55:42'),(2,'user','2022-05-17 18:18:19','2022-05-17 18:18:20'),(3,'LAM\n','2022-07-17 13:35:56','2022-07-17 13:35:57');
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stakeholders`
--

DROP TABLE IF EXISTS `stakeholders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `stakeholders` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `eval_UID` varchar(255) NOT NULL,
  `stakeholder_name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stakeholders`
--

LOCK TABLES `stakeholders` WRITE;
/*!40000 ALTER TABLE `stakeholders` DISABLE KEYS */;
INSERT INTO `stakeholders` VALUES (42,'B62-8F0','Test Stakeholder','2022-05-17 18:26:53','2022-05-17 18:26:53'),(43,'B62-8F0','yrd','2022-05-17 18:28:53','2022-05-17 18:28:53'),(44,'B62-8F0','dfdf','2022-05-17 18:28:55','2022-05-17 18:28:55'),(45,'04D-88E','Test 0','2022-06-09 18:56:40','2022-06-09 18:56:40'),(46,'04D-88E','Another Stakeholder','2022-06-09 18:56:43','2022-06-09 18:56:43');
/*!40000 ALTER TABLE `stakeholders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `status_codes`
--

DROP TABLE IF EXISTS `status_codes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `status_codes` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `status_code` int NOT NULL,
  `description` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `status_codes`
--

LOCK TABLES `status_codes` WRITE;
/*!40000 ALTER TABLE `status_codes` DISABLE KEYS */;
INSERT INTO `status_codes` VALUES (1,1,'Active','2022-05-25 19:29:21','2022-05-25 19:29:19'),(2,2,'Inactive','2022-05-25 19:29:39','2022-05-25 19:29:41');
/*!40000 ALTER TABLE `status_codes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `summaries`
--

DROP TABLE IF EXISTS `summaries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `summaries` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `summaries`
--

LOCK TABLES `summaries` WRITE;
/*!40000 ALTER TABLE `summaries` DISABLE KEYS */;
/*!40000 ALTER TABLE `summaries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'admin','admin','admin@nmbtz.com',NULL,'$2y$10$ekhA.ImcZPiXeMuzFe80pu6dMdiwFcDVELu6Qaldrwo8QJYbOuKh.',NULL,'2022-05-12 16:54:58','2022-05-12 16:54:58'),(2,'tester123','tester123','test123@nmbtz.com',NULL,'$2y$10$0gIjEkfBhyHBk13EE8MOXuzdzZlKIXkp2LaNM82xQc3N8UJD.gffO',NULL,'2022-05-17 18:17:11','2022-05-17 18:17:11');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'ca_portal_db'
--
/*!50003 DROP PROCEDURE IF EXISTS `proc_addImplementationLog` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `proc_addImplementationLog`(IN commUID varchar(255),
                                           IN itemUID varchar(255),
                                           IN itemType varchar(255),
                                           IN newStatus integer,
                                           IN selectedDate datetime,
                                           IN submittedComments longtext)
begin

    set @total_rows = 0;
    insert into implementation_logs(item_UID, comm_UID, implementation_status,
                                    actual_date_time, comments,
                                    created_at, updated_at, item_type)
    values (itemUID, commUID, newStatus,
            selectedDate, submittedComments, now(), now(), itemType);


    set @rows_inserted = (select ROW_COUNT());
    set @total_rows = @total_rows + @rows_inserted;

    update communication_mappings
    set implementation_status = newStatus
    where comm_UID = commUID
      and item_UID = itemUID
      and item_type = itemType;


#     get pack_ID

    set @packRef = (select pack_ref from communications where comm_UID = commUID);
    if (itemType = 'Evaluation') then
        update evaluation_packs
        set implementation_status = newStatus
        where pack_id = @packRef
          and evaluation_id = itemUID;


        set @rows_inserted = (select ROW_COUNT());
        set @total_rows = @total_rows + @rows_inserted;
    end if;

    if (itemType = 'AOB') then
        update AOBs
        set implementation_status = newStatus
        where pack_id = @packRef
          and AOB_UID = itemUID;

        set @rows_inserted = (select ROW_COUNT());
        set @total_rows = @total_rows + @rows_inserted;
    end if;


    set @rows_inserted = (select ROW_COUNT());
    set @total_rows = @total_rows + @rows_inserted;


    set @rows_inserted = @total_rows;
#     set @rows_inserted = (select ROW_COUNT());
    if (@rows_inserted > 0) then
        SELECT @rows_inserted as rows_inserted, 1 as success, 'Implementation Item updated' as message;

    elseif (@rows_inserted < 1) then

        SELECT @rows_inserted as rows_inserted, 0 as success, 'Implementation Item Failed to update' as message;

    end if;

end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `proc_approveAOB` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `proc_approveAOB`(IN packID varchar(255), IN aobUID varchar(255),IN approvalAction integer)
BEGIN


    set @approveImplementationDate = (select approved_implementation_date
                                      from AOBs
                                      where AOB_UID = aobUID
                                        and pack_id = packID);


    if (@approveImplementationDate is null or @approveImplementationDate = '') then
        update AOBs
        set approved_implementation_date = proposed_implementation_date,
            implementation_approval=approvalAction
        where AOB_UID = aobUID
          and pack_id = packID;
    else
        update AOBs
        set implementation_approval=approvalAction
        where AOB_UID = aobUID
          and pack_id = packID;
    end if;


    set @rows_updated = (select ROW_COUNT());

    if (@rows_updated > 0) then

        set @message = 'Saved update successfully!';

        SELECT @rows_updated as rows_updated,
               1             as success,
               @message      as message;

    elseif (@rows_updated < 1) then

        set @message = 'Saving  not done!';
        SELECT @rows_updated as rows_updated,
               0             as success,
               @message      as message;

    end if;


END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `proc_approveChange` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `proc_approveChange`(IN packID varchar(255), IN evalUID varchar(255),IN approvalAction integer)
BEGIN


    set @approveImplementationDate = (select approved_implementation_date_time
                                      from evaluation_packs
                                      where evaluation_id = evalUID
                                        and pack_id = packID);


    if (@approveImplementationDate is null or @approveImplementationDate = '') then
        update evaluation_packs
        set approved_implementation_date_time = proposed_implementation_date_time,
            implementation_approval=approvalAction
        where evaluation_id = evalUID
          and pack_id = packID;
    else
        update evaluation_packs
        set implementation_approval=approvalAction
        where evaluation_id = evalUID
          and pack_id = packID;
    end if;


    set @rows_updated = (select ROW_COUNT());

    if (@rows_updated > 0) then

        set @message = 'Saved update successfully!';

        SELECT @rows_updated as rows_updated,
               1             as success,
               @message      as message;

    elseif (@rows_updated < 1) then

        set @message = 'Saving  not done!';
        SELECT @rows_updated as rows_updated,
               0             as success,
               @message      as message;

    end if;


END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `proc_getEvaluationPackDetails` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'IGNORE_SPACE,ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `proc_getEvaluationPackDetails`(IN packID int, IN evalUID varchar(255))
BEGIN

    select * from evaluation_packs where pack_ID = packID and evaluation_id= evalUID;



END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `proc_getRiskRating` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `proc_getRiskRating`(IN evalUID varchar(255))
begin



select risk_event_impact,
       risk_event_likelihood,
       risk_rating,
       concat('r',risk_event_likelihood,'_','i',risk_event_impact) as rating
from evaluations where eval_UID=evalUID;

end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `proc_initiateCommunication` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `proc_initiateCommunication`(IN packID integer)
begin

    SET @new_comm_UID = (SELECT CONCAT(UPPER(LEFT(MD5(UUID()), 3)), '-', UPPER(LEFT(MD5(RAND()), 4)), '-',
                                       UPPER(LEFT(MD5(RAND()), 3))));

    SET @UID_exists = (SELECT COUNT(*)
                       from communications
                       WHERE communications.comm_UID = @new_comm_UID
                       GROUP BY comm_UID
                       limit 1);


    WHILE @UID_exists > 0
        DO

            SET @new_comm_UID = (SELECT CONCAT(UPPER(LEFT(MD5(UUID()), 3)), '-', UPPER(LEFT(MD5(RAND()), 4)), '-',
                                               UPPER(LEFT(MD5(RAND()), 3))));
            SET @UID_exists = (SELECT COUNT(*)
                               from communications
                               WHERE communications.comm_UID = @new_comm_UID
                               GROUP BY comm_UID
                               limit 1);


        END WHILE;

    set @communication_title =
            (select concat('Change Communication - ', MONTHNAME(now()), ' : ', DATE_FORMAT(now(), '%d-%m-%Y')));

    insert into communications(comm_UID, comm_title, pack_ref, created_at, updated_at)
        value (
               @new_comm_UID,
               @communication_title,
               packID,
               now(),
               now()
        );

    -- #
-- #     set @rows_inserted = (select ROW_COUNT());
-- #     if (@rows_inserted > 0) then
-- #         SELECT @rows_inserted as rows_inserted, 1 as success, 'Communication Item Initiated' as message;
-- #
-- #     elseif (@rows_inserted < 1) then
-- #
-- #         SELECT @rows_inserted as rows_inserted, 0 as success, 'Communication Item Failed to Initiate' as message;
-- #
-- #     end if;

    call proc_mapCommunicationItems(@new_comm_UID, packID);


end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `proc_insertBasicDetails` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `proc_insertBasicDetails`(IN evalDate date,IN changeId varchar(50), IN changeTitle varchar(255),
                                         IN changeDescription longtext, IN changeCategory int
                                         )
BEGIN


    SET @new_eval_UID = (SELECT CONCAT(UPPER(LEFT(MD5(UUID()), 3)), '-', UPPER(LEFT(MD5(RAND()), 3))));

    SET @UID_exists = (SELECT COUNT(*)
                       from evaluations
                       WHERE evaluations.eval_UID = @new_eval_UID
                       GROUP BY eval_uid
                       limit 1);


    WHILE @UID_exists > 0
        DO

            SET @new_eval_UID = (SELECT CONCAT(UPPER(LEFT(MD5(UUID()), 3)), '-', UPPER(LEFT(MD5(RAND()), 3))));
            SET @UID_exists = (SELECT COUNT(*)
                               from evaluations
                               WHERE evaluations.eval_UID = @new_eval_UID
                               GROUP BY eval_uid
                               limit 1);


        END WHILE;

    INSERT INTO evaluations (
        evaluation_date,
        change_id,
        eval_UID,
        change_title,
        change_description,
        change_category,
        created_at,
        updated_at)

    VALUES (
        evalDate,
        changeId,
        @new_eval_UID,
        changeTitle,
        changeDescription,
        changeCategory,
        now(),
        now()
        );

    SELECT @new_eval_UID as eval_UID, 1 as success;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `proc_insertComponent` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `proc_insertComponent`(IN evalUID varchar(255), IN componentName varchar(255), IN componentDowntime integer)
BEGIN


    insert into involved_components(eval_UID, component_name, downtime_minutes,created_at, updated_at)
    values (evalUID, componentName,componentDowntime ,now(), now());

    set @rows_inserted = (select ROW_COUNT());


    if (@rows_inserted > 0) then
        SELECT @rows_inserted as rows_inserted, 1 as success;

    elseif (@rows_inserted < 1) then

        SELECT @rows_inserted as rows_inserted, 0 as success;

    end if;


END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `proc_insertStakeholder` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `proc_insertStakeholder`(IN eval_UID varchar(25), IN stakeholderName varchar(255))
BEGIN


    insert into stakeholders(eval_UID, stakeholder_name, created_at, updated_at)
    values (eval_UID, stakeholderName, now(), now());

    set @rows_inserted = (select ROW_COUNT());


    if (@rows_inserted > 0) then
        SELECT @rows_inserted as rows_inserted, 1 as success;

    elseif (@rows_inserted < 1) then

        SELECT @rows_inserted as rows_inserted, 0 as success;

    end if;


END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `proc_MapADUser` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `proc_MapADUser`(IN submitted_AD_username varchar(255),
                                IN roleToMap integer)
begin


    set @rows_inserted = 0;
    set @userExists = (select count(*) from ad_users where ad_username = submitted_AD_username);


#     if user mapping does not exist
    if (@userExists = 0) then
#         generate new Unique ID
        SET @new_unique_id = (SELECT CONCAT(UPPER(LEFT(MD5(UUID()), 4)), '-', UPPER(LEFT(MD5(RAND()), 3))));
        SET @UID_exists = (SELECT COUNT(*)
                           from ad_users
                           WHERE user_unique_id = @new_unique_id);
        # check if generated unique ID exists, if exists generate new one
        while @UID_exists > 0
            DO
                SET @new_unique_id = (SELECT CONCAT(UPPER(LEFT(MD5(UUID()), 4)), '-', UPPER(LEFT(MD5(RAND()), 3))));

                SET @UID_exists = (SELECT COUNT(*)
                                   from ad_users
                                   WHERE user_unique_id = @new_unique_id);
            end while;


        #         select @new_unique_id;
#         insert new mapping

        insert into ad_users(ad_username, active, created_at, updated_at, user_unique_id)
        values (submitted_AD_username, 1, now(), now(), @new_unique_id);
        #         select @userExists as existingCount;
        #         get UserID for user to Map
        set @selectedUserID = (select id from ad_users where user_unique_id = @new_unique_id);

#         select @new_unique_id;
        #         select  @selectedUserID;
        call proc_mapUserRolesToADUser(@new_unique_id, @selectedUserID, roleToMap);
        set @rows_inserted = (select ROW_COUNT());


    elseif (@userExists > 0) then
        set @selectedUserID = (select id from ad_users where ad_username = submitted_AD_username);

        set @existing_unique_id = (select user_unique_id from ad_users where id = @selectedUserID);

        #             select @selectedUserID;
        call proc_mapUserRolesToADUser(@existing_unique_id, @selectedUserID, roleToMap);

    end if;


    #     if
#         (@rows_inserted > 0)
#     then
#         SELECT @rows_inserted as rows_inserted, 1 as success, 'Change Added to Pack' as message;
#
#     elseif
#         (@rows_inserted < 1)
#     then
#
#         SELECT @rows_inserted as rows_inserted, 0 as success, 'Mapping Exists' as message;
#
#     end if;

end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `proc_mapCommunicationItems` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `proc_mapCommunicationItems`(IN commUID varchar(255), packID integer)
begin


    insert into communication_mappings(comm_UID, item_UID, item_type, created_at, updated_at)
    select commUID, evaluation_id, 'Evaluation', now(), now()
    from evaluation_packs
    where pack_id = packID
      and implementation_approval = 2;

    insert into communication_mappings(comm_UID, item_UID, item_type, created_at, updated_at)
    select commUID, AOB_UID, 'AOB', now(), now()
    from AOBs
    where pack_id = packID
      and implementation_approval = 2;


    insert into implementation_logs( item_UID, comm_UID, comments, created_at, updated_at, item_type)
    select evaluation_id,commUID,  'change Added to Change Implementation Communication', now(), now(),'Evaluation'
    from evaluation_packs
    where pack_id = packID
      and implementation_approval = 2;

    insert into implementation_logs( item_UID, comm_UID, comments, created_at, updated_at, item_type)
    select AOB_UID,commUID,  'AOB Added to Change Implementation Communication', now(), now(),'AOB'
    from AOBs
    where pack_id = packID
      and implementation_approval = 2;




    set @rows_inserted = (select ROW_COUNT());
    if (@rows_inserted > 0) then
        SELECT @rows_inserted as rows_inserted, 1 as success, 'Communication Item Initiated' as message;

    elseif (@rows_inserted < 1) then

        SELECT @rows_inserted as rows_inserted, 0 as success, 'Communication Item Failed to Initiate' as message;

    end if;

end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `proc_mapEvaluationToPack` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `proc_mapEvaluationToPack`(IN packID integer,
                                          IN evalUID varchar(255))
begin

    set @mappingExists = (select count(*) from evaluation_packs where evaluation_id = evalUID and pack_id = packID);
    set @rows_inserted = 0;

    if (@mappingExists = 0) then
        insert into evaluation_packs(evaluation_id, pack_id, created_at, updated_at)
        values (evalUID, packID, now(), now());
        set @rows_inserted = (select ROW_COUNT());

    elseif (@mappingExists > 1) then
        set @reason = (select 'Mapping already exists');

        set @rows_inserted = (select ROW_COUNT());
        #         SELECT @rows_inserted as rows_inserted, 0 as success, 'Change Not added' as message;



    end if;


    if (@rows_inserted > 0) then
        SELECT @rows_inserted as rows_inserted, 1 as success, 'Change Added to Pack' as message;

    elseif (@rows_inserted < 1) then

        SELECT @rows_inserted as rows_inserted, 0 as success, 'Mapping Exists' as message;

    end if;

end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `proc_mapUserRolesToADUser` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `proc_mapUserRolesToADUser`(IN UserUniqueID varchar(255), IN UserID integer,
                                IN roleToMap integer)
begin


    set @rows_inserted = 0;
    set @mappingExists = (select count(*)
                          from ad_user_role
                          where ad_user_id = UserID
                            and user_unique_id = UserUniqueID
                            and role_id = roleToMap);

#     if user mapping does not exist
    if (@mappingExists = 0) then
        insert into ad_user_role(ad_user_id, role_id, user_unique_id)
        VALUES (UserID, roleToMap, UserUniqueID);
        DO sleep(2);
        set @rows_inserted = (select ROW_COUNT());

    elseif (@userExists > 1) then
        set @rows_inserted = 0;
    end if;




end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `proc_removeADUserRoles` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `proc_removeADUserRoles`(IN submitted_AD_username varchar(255))
begin


    set @rows_inserted = 0;
    set @userExists = (select count(*) from ad_users where ad_username = submitted_AD_username);

    if (@userExists > 0) then

        set @selectedUserID = (select id from ad_users where ad_username = submitted_AD_username);

        set @existing_unique_id = (select user_unique_id from ad_users where id = @selectedUserID);

        delete from ad_user_role where user_unique_id=@existing_unique_id and ad_user_id=@selectedUserID;

        --             select @selectedUserID;
#         call proc_mapUserRolesToADUser(@existing_unique_id, @selectedUserID, roleToMap);

    end if;


end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `proc_removeItem` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `proc_removeItem`(IN evalUID varchar(255), IN itemType varchar(255), IN item_ID int)
BEGIN

    SET @itemType = itemType;

    if @itemType = 'component' then

        delete from involved_components where eval_UID = evalUID and component_id = item_ID;

    elseif @itemType = 'stakeholder' then

        delete from stakeholders where eval_UID = evalUID and id = item_ID;
    elseif @itemType = 'evaluator' then

        delete from evaluation_evaluators where evaluation_id = evalUID and evaluator_id = item_ID;

elseif @itemType = 'evaluation member' then

        update evaluators set status =0 where  id = item_ID;


    end if;


    set @rows_inserted = (select ROW_COUNT());


    if (@rows_inserted > 0) then
        SELECT @rows_inserted as rows_inserted, 1 as success;

    elseif (@rows_inserted < 1) then

        SELECT @rows_inserted as rows_inserted, 0 as success;

    end if;


END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `proc_saveAOBMinutes` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `proc_saveAOBMinutes`(IN aobUID varchar(255),
                                     IN aobMinutes varchar(255),
                                     IN submittedApprovalStatus integer)
BEGIN


    update AOBs
    set minutes         = aobMinutes,
        approval_status = submittedApprovalStatus
    where AOB_UID = aobUID;


    set @rows_updated = (select ROW_COUNT());

    if (@rows_updated > 0) then

        set @message = 'Saved Minutes successfully!';

        SELECT @rows_updated as rows_updated,
               1             as success,
               @message      as message;

    elseif (@rows_updated < 1) then

        set @message = 'Saving minutes not done!';
        SELECT @rows_updated as rows_updated,
               0             as success,
               @message      as message;

    end if;


END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `proc_saveAOBStakeholderMapping` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `proc_saveAOBStakeholderMapping`(
    IN aobUID varchar(255),
    IN aobStakeholder varchar(255))
BEGIN


    insert into aob_stakeholders(AOB_UID, stakeholder_name, created_at, updated_at)
    values (aobUID,
            aobStakeholder,
            now(),
            now());


            set @rows_inserted = (select ROW_COUNT());

     if (@rows_inserted > 0) then

        set @message = 'Mapping done successfully!';

        SELECT @rows_inserted as rows_inserted,
               1              as success,
               @message       as message;

    elseif (@rows_inserted < 1) then

        set @message = 'Mapping not done!';
        SELECT @rows_inserted as rows_inserted,
               0              as success,
             'Save was not complete!' as message,
               @message       as message;

    end if;



END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `proc_saveAOBSummary` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `proc_saveAOBSummary`(IN aobUID varchar(255),
                                     IN aobSummary varchar(255),
                                     IN ProposedDateTime datetime)
BEGIN


    update AOBs
    set aob_summary         = aobSummary,
        proposed_implementation_date = ProposedDateTime
    where AOB_UID = aobUID;


    set @rows_updated = (select ROW_COUNT());

    if (@rows_updated > 0) then

        set @message = 'Saved Summary successfully!';

        SELECT @rows_updated as rows_updated,
               1             as success,
               @message      as message;

    elseif (@rows_updated < 1) then

        set @message = 'Saving Summary not done!';
        SELECT @rows_updated as rows_updated,
               0             as success,
               @message      as message;

    end if;


END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `proc_saveApproveAOBDate` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `proc_saveApproveAOBDate`(IN aobUID varchar(255),
                                     IN new_date datetime)
BEGIN


    update AOBs
    set approved_implementation_date         = new_date
     where AOB_UID = aobUID;


    set @rows_updated = (select ROW_COUNT());

    if (@rows_updated > 0) then

        set @message = 'Saved Date successfully!';

        SELECT @rows_updated as rows_updated,
               1             as success,
               @message      as message;

    elseif (@rows_updated < 1) then

        set @message = 'Saving Date not done!';
        SELECT @rows_updated as rows_updated,
               0             as success,
               @message      as message;

    end if;


END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `proc_saveApprovedSummaryDate` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `proc_saveApprovedSummaryDate`(IN packID varchar(255),IN evalUID varchar(255),
                                     IN new_date datetime)
BEGIN


    update evaluation_packs
    set approved_implementation_date_time         = new_date
     where evaluation_id = evalUID and pack_id = packID;


    set @rows_updated = (select ROW_COUNT());

    if (@rows_updated > 0) then

        set @message = 'Saved Date successfully!';

        SELECT @rows_updated as rows_updated,
               1             as success,
               @message      as message;

    elseif (@rows_updated < 1) then

        set @message = 'Saving Date not done!';
        SELECT @rows_updated as rows_updated,
               0             as success,
               @message      as message;

    end if;


END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `proc_saveCABMinutes` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `proc_saveCABMinutes`(
    IN packId integer,
    IN evalUID varchar(255),
    IN CABMinutes longtext,
    IN newApprovalStatus integer
)
BEGIN

    update evaluation_packs
    set minutes        = CABMinutes,
        approval_status=newApprovalStatus

    where pack_id = packId
      and evaluation_id = evalUID;

    set @rows_updated = (select ROW_COUNT());
    if (@rows_updated > 0) then
        SELECT @rows_updated as rows_updated, 1 as success, 'Successfully Saved!' as message;

    elseif (@rows_updated < 1) then

        SELECT @rows_updated as rows_updated, 0 as success, 'No Update was done!' as message;

    end if;


END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `proc_saveEvaluationEvaluator` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `proc_saveEvaluationEvaluator`(IN eval_UID varchar(255), IN evaluatorId varchar(255))
BEGIN
    set @message = '';
    set @reason = '';
    set @mapping_exists =
            (select count(*) from evaluation_evaluators where evaluation_id = eval_UID and evaluator_id = evaluatorId);

    if (@mapping_exists = 0) then
        insert into evaluation_evaluators(evaluation_id, evaluator_id)
        values (eval_UID, evaluatorId);

        set @rows_inserted = (select ROW_COUNT());

#          if (@rows_inserted > 0) then
        SET @new_row_inserted = (select count(*)
                                 from evaluation_evaluators
                                 where evaluation_id = eval_UID
                                   and evaluator_id = evaluatorId);

        set @message = 'Successfully linked evaluator to evaluation item';
        SELECT @rows_inserted    as new_row_count,
               @new_row_inserted as new_rows_inserted,
               1                 as success,
               @message          as message,
               @reason           as reason;

        if (@rows_inserted = 0) then

            set @message = 'Database side error failed to insert data';
            SELECT @rows_inserted    as new_row_count,
                   @new_row_inserted as new_rows_inserted,
                   1                 as success,
                   @message          as message,
                   @reason           as reason;

        end if;


    elseif (@mapping_exists > 0) then
        set @rows_inserted = (select ROW_COUNT());
        set @message = 'Mapping Failed';
        set @reason = 'Evaluator mapping already exists';

        SELECT @rows_inserted as rows_inserted, 1 as success, @message as message, @reason as reason;

    end if;


END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `proc_saveImplementationStakeholder` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `proc_saveImplementationStakeholder`(IN itemUID varchar(255),
                                                    IN commUID varchar(255),
                                                    IN stakeholderName varchar(255),
                                                    IN stakeholderRole integer)
begin


    set @mapping_exists = (select count(*)
                           from implementation_stakeholders
                           where item_UID = itemUID
                             and comm_UID = commUID
                             and stakeholder_name = stakeholderName
                             and implementation_role = stakeholderRole);

    if (@mapping_exists < 1) then

        insert into implementation_stakeholders(comm_UID, item_UID, stakeholder_name, implementation_role, created_at,
                                                updated_at)
            value (
                   commUID,
                   itemUID,
                   stakeholderName,
                   stakeholderRole,
                   now(),
                   now()
            );
        set @rows_inserted = (select ROW_COUNT());
        if (@rows_inserted > 0) then
            SELECT @rows_inserted as rows_inserted, 1 as success, 'Team Member Added Successfully' as message;

        elseif (@rows_inserted < 1) then

            SELECT @rows_inserted as rows_inserted, 0 as success, 'Failed to Add Team Member' as message;

        end if;


    else


        set @rows_inserted = (select ROW_COUNT());
        if (@rows_inserted > 0) then
            SELECT @rows_inserted as rows_inserted, 1 as success, 'Team Member Added Successfully' as message;

        elseif (@rows_inserted < 1) then

            SELECT @rows_inserted as rows_inserted, 0 as success, 'Failed to Add Team Member' as message;

        end if;

    end if;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `proc_saveNewEvaluator` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `proc_saveNewEvaluator`( IN evaluatorName varchar(255), IN evaluatorUnitFunction varchar(255))
BEGIN


insert into evaluators(evaluator_name, function_unit, created_at, updated_at)
values
    (
        evaluatorName,
        evaluatorUnitFunction,
        now(),
        now()
    );

set @rows_inserted = (select ROW_COUNT());


    if (@rows_inserted > 0) then
SELECT @rows_inserted as rows_inserted, 1 as success;

elseif (@rows_inserted < 1) then

SELECT @rows_inserted as rows_inserted, 0 as success;

end if;


END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `proc_savePack` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `proc_savePack`(IN submitted_CAB_Date varchar(255),
                               IN packDescription varchar(255))
begin

 insert into packs(description, CAB_date, pack_status, created_at,updated_at)
 values (packDescription,submitted_CAB_Date,1,now(),now());


    set @rows_inserted = (select ROW_COUNT());
    if (@rows_inserted > 0) then
        SELECT @rows_inserted as rows_inserted, 1 as success, 'pack saved' as message;

    elseif (@rows_inserted < 1) then

        SELECT @rows_inserted as rows_inserted, 0 as success, 'pack not saved' as message;

    end if;

end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `proc_savePackAOB` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `proc_savePackAOB`(IN packId integer,
                                  IN aobTitle varchar(255),
                                  IN aobDetails longtext,
                                  IN aobEvalUID varchar(255),
                                  IN aobStakeholder varchar(255))
BEGIN


    SET @new_AOB_UID = (SELECT CONCAT(UPPER(LEFT(MD5(UUID()), 4)), '-', UPPER(LEFT(MD5(RAND()), 4)), '-',
                                       UPPER(LEFT(MD5(RAND()), 3))));

    SET @AOB_UID_exists = (SELECT COUNT(*)
                           from AOBs
                           WHERE AOBs.AOB_UID = @new_AOB_UID
                           GROUP BY AOB_UID
                           limit 1);

    WHILE @AOB_UID_exists > 0
        DO
            SET @new_AOB_UID = (SELECT CONCAT(UPPER(LEFT(MD5(UUID()), 4)), '-', UPPER(LEFT(MD5(RAND()), 4)), '-',
                                               UPPER(LEFT(MD5(RAND()), 3))));
            SET @AOB_UID_exists = (SELECT COUNT(*)
                                   from AOBs
                                   WHERE AOBs.AOB_UID = @new_AOB_UID
                                   GROUP BY AOB_UID
                                   limit 1);
        END WHILE;

    if (aobEvalUID = '0') then

        set @relatedEvaluation = null;
    else
        set @relatedEvaluation = aobEvalUID;
        set @pack_AOB_evaluation_mapping_exists =
                (select count(*) from AOBs where pack_id = packId and related_evaluation = aobEvalUID);

    end if;

    if (@pack_AOB_evaluation_mapping_exists < 1) then
        insert into AOBs(AOB_UID, AOB_title, AOB_details, pack_id,
                         related_evaluation, allocated_time, created_at, updated_at)
        values (@new_AOB_UID, aobTitle, aobDetails, packId,
                @relatedEvaluation, 15, now(), now());

        call proc_saveAOBStakeholderMapping(@new_AOB_UID, aobStakeholder);
        set @rows_inserted = (select ROW_COUNT());

        set @message = 'AOB added successfully!';

    elseif (@relatedEvaluation is null) then
        insert into AOBs(AOB_UID, AOB_title, AOB_details, pack_id,
                         related_evaluation, allocated_time, created_at, updated_at)
        values (@new_AOB_UID, aobTitle, aobDetails, packId,
                @relatedEvaluation, 15, now(), now());

        call proc_saveAOBStakeholderMapping(@new_AOB_UID, aobStakeholder);
        set @rows_inserted = (select ROW_COUNT());

        set @message = 'AOB added successfully!';

    else
        set @rows_inserted = (select ROW_COUNT());

        set @message = 'mapping already exists!';

    end if;


    if (@rows_inserted > 0) then


        SELECT @rows_inserted as rows_inserted,
               1              as success,
               @message       as message,
               aobEvalUID,
               @pack_AOB_evaluation_mapping_exists;

    elseif (@rows_inserted < 1) then

        SELECT @rows_inserted as rows_inserted,
               0              as success,
#                'Save was not complete!' as message,
               @message       as message,
               aobEvalUID,
               @pack_AOB_evaluation_mapping_exists;

    end if;


END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `proc_saveSummaryDetails` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `proc_saveSummaryDetails`(
    IN packId integer,
    IN evalUID varchar(255),
    IN CABSummary longtext,
    IN proposedImplementationDate datetime
)
BEGIN

    update evaluation_packs
    set CAB_summary                      = CABSummary,
        proposed_implementation_date_time=proposedImplementationDate

    where pack_id = packId
      and evaluation_id = evalUID;

    set @rows_updated = (select ROW_COUNT());
    if (@rows_updated > 0) then
        SELECT @rows_updated as rows_updated, 1 as success, 'Successfully Saved!' as message;

    elseif (@rows_updated < 1) then

        SELECT @rows_updated as rows_updated, 0 as success, 'No Update was done!' as message;

    end if;


END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `proc_setImpactAndLikelihood` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `proc_setImpactAndLikelihood`(
    IN evalUID varchar(255),
    IN likelihood_rating integer,
    IN impact_rating integer
)
begin

    update evaluations
    set risk_event_likelihood=likelihood_rating,
        risk_event_impact=impact_rating,
        risk_rating = (likelihood_rating * impact_rating)
    where eval_UID = evalUID;

    set @rows_inserted = (select ROW_COUNT());
    if (@rows_inserted > 0) then
        SELECT @rows_inserted as rows_updated, 1 as success, 'Impact and Likelihood Updated' as message;

    elseif (@rows_inserted < 1) then

        SELECT @rows_inserted as rows_updated, 0 as success, 'Impact and Likelihood not changed' as message;

    end if;

end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `proc_setPrerequisiteStatus` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `proc_setPrerequisiteStatus`(
    IN evalUID varchar(255),
    IN prerequisiteType varchar(255),
    IN newStatus integer
)
begin


    set @message = '';

    if (prerequisiteType = 'dept_approval') then
        update evaluations set department_approval = newStatus where eval_UID = evalUID;
        set @message = 'Department Approval Status Updated';


    elseif (prerequisiteType = 'uat_results') then
        update evaluations set uat_results = newStatus where eval_UID = evalUID;
        set @message = 'UAT Results Status Updated';


    elseif (prerequisiteType = 'plans') then
        update evaluations set plans = newStatus where eval_UID = evalUID;
        set @message = 'Implementation & Rollback plan Status Updated';


    elseif (prerequisiteType = 'preliminary_approval') then
        update evaluations set preliminary_approval = newStatus where eval_UID = evalUID;

        set @rows_inserted = (select ROW_COUNT());

        set @message = 'Preliminary Approval Status Updated';


    elseif (prerequisiteType = 'noc_alignment') then
        update evaluations set NOC_alignment = newStatus where eval_UID = evalUID;
        set @rows_inserted = (select ROW_COUNT());

        set @message = 'NOC Alignment Status Updated';


    elseif (prerequisiteType = 'SD_alignment') then
        update evaluations set SD_alignment = newStatus where eval_UID = evalUID;
        set @rows_inserted = (select ROW_COUNT());

        set @message = 'SD Alignment Status Updated';


    elseif (prerequisiteType = 'CX_alignment') then
        update evaluations set CX_alignment = newStatus where eval_UID = evalUID;
        set @rows_inserted = (select ROW_COUNT());

        set @message = 'CX Alignment Status Updated';


    end if;


    if (@rows_inserted > 0) then
        SELECT @rows_inserted as rows_updated,
               1              as success,
               @message       as message;

    elseif (@rows_inserted < 1) then

        SELECT @rows_inserted                            as rows_updated,
               0                                         as success,
               concat(prerequisiteType, ' not updated!') as message;

    end if;

end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `proc_togglePackStatus` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `proc_togglePackStatus`(IN packID integer,
                               IN new_status integer)
begin

 update packs set pack_status = new_status where id=packID;


    set @rows_updated = (select ROW_COUNT());
    if (@rows_updated > 0) then
        SELECT @rows_updated as rows_updated, 1 as success, 'status updated' as message;

    elseif (@rows_updated < 1) then

        SELECT @rows_updated as rows_updated, 0 as success, 'status not updated' as message;

    end if;

end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `proc_updateADUserStatus` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `proc_updateADUserStatus`(IN submitted_AD_username varchar(255), IN new_status integer)
begin


    set @rows_inserted = 0;
    set @userExists = (select count(*) from ad_users where ad_username = submitted_AD_username);

    if (@userExists > 0) then

        set @selectedUserID = (select id from ad_users where ad_username = submitted_AD_username);

        set @existing_unique_id = (select user_unique_id from ad_users where id = @selectedUserID);

        update ad_users set active=new_status where id = @selectedUserID and user_unique_id = @existing_unique_id;

        set @rows_updated = (SELECT ROW_COUNT());
        --             select @selectedUserID;
#         call proc_mapUserRolesToADUser(@existing_unique_id, @selectedUserID, roleToMap);

    end if;


    if (@rows_updated > 0) then
        select @rows_updated as success, 'successfully updated' as message;
    else
        select @rows_updated as success, 'failed to update status' as message;

    end if;

end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `proc_updateEvaluationItem` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;


DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `proc_updateEvaluationItem`(IN evalUID varchar(255),
                                           IN evalDate date,
                                           IN changeId varchar(255),
                                           IN changeTitle varchar(255),
                                           IN changeDescription varchar(255),
                                           IN changeCategory varchar(255),
                                           IN evaluationDiscussion varchar(255)
)
BEGIN

update evaluations
set evaluation_date    = evalDate,
    change_id=changeId,
    change_title       = changeTitle,
    change_description = changeDescription,
    change_category    = changeCategory,
    discussion         = evaluationDiscussion
where eval_UID = evalUID;

set @rows_updated = (select ROW_COUNT());
if (@rows_updated > 0) then
SELECT @rows_updated as rows_updated, 1 as success,'Successfully Saved!' as message;

elseif (@rows_updated < 1) then

SELECT @rows_updated as rows_updated, 0 as success, 'No Update was done!' as message;

end if;


END ;;
DELIMITER ;



DELIMITER ;;

drop procedure if exists `proc_updateEvaluationItem`;
CREATE DEFINER=`root`@`localhost` PROCEDURE `proc_updateEvaluationItem`(IN evalUID varchar(255), IN evalDate date,
                                                                 IN changeId varchar(255), IN changeTitle varchar(255),
                                                                 IN changeDescription varchar(255),
                                                                 IN changeCategory varchar(255),
                                                                 IN evaluationDiscussion varchar(255),
                                                                 IN evaluation_recommendation varchar(255))
BEGIN

update evaluations
set evaluation_date    = evalDate,
    change_id=changeId,
    change_title       = changeTitle,
    change_description = changeDescription,
    change_category    = changeCategory,
    discussion         = evaluationDiscussion,
    recommendation = evaluation_recommendation
where eval_UID = evalUID;

set @rows_updated = (select ROW_COUNT());
if (@rows_updated > 0) then
SELECT @rows_updated as rows_updated, 1 as success,'Successfully Saved!' as message;

elseif (@rows_updated < 1) then

SELECT @rows_updated as rows_updated, 0 as success, 'No Update was done!' as message;

end if;


END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `proc_updateEvaluatorStatus` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `proc_updateEvaluatorStatus`( IN evaluatorID varchar(255), IN newStatus varchar(255))
BEGIN


update evaluators set status =newStatus where id=evaluatorID;


set @rows_update = (select ROW_COUNT());


    if (@rows_update > 0) then
SELECT @rows_update as rows_update, 1 as success;

elseif (@rows_update < 1) then

SELECT @rows_update as rows_update, 0 as success;

end if;


END ;;
DELIMITER ;



/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

-- /*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
-- /*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
-- /*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
-- /*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
-- /*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
-- /*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
-- /*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-08-14 20:48:18
