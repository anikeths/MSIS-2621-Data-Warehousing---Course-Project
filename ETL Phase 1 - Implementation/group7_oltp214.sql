CREATE DATABASE  IF NOT EXISTS `group7_oltp` /*!40100 DEFAULT CHARACTER SET utf8 */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `group7_oltp`;
-- MySQL dump 10.13  Distrib 8.0.27, for macos11 (x86_64)
--
-- Host: 127.0.0.1    Database: group7_oltp
-- ------------------------------------------------------
-- Server version	8.0.27

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
-- Table structure for table `active_level`
--

DROP TABLE IF EXISTS `active_level`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `active_level` (
  `active_level_id` int NOT NULL,
  `level_description` varchar(255) NOT NULL,
  PRIMARY KEY (`active_level_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `active_level`
--

LOCK TABLES `active_level` WRITE;
/*!40000 ALTER TABLE `active_level` DISABLE KEYS */;
/*!40000 ALTER TABLE `active_level` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `address`
--

DROP TABLE IF EXISTS `address`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `address` (
  `address_id` int NOT NULL AUTO_INCREMENT,
  `address` varchar(45) NOT NULL,
  `address2` varchar(45) DEFAULT NULL,
  `postal_code` varchar(45) NOT NULL,
  `city_id` int NOT NULL,
  PRIMARY KEY (`address_id`),
  KEY `fk_address_city1_idx` (`city_id`),
  CONSTRAINT `city_id` FOREIGN KEY (`city_id`) REFERENCES `city` (`city_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `address`
--

LOCK TABLES `address` WRITE;
/*!40000 ALTER TABLE `address` DISABLE KEYS */;
/*!40000 ALTER TABLE `address` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `category` (
  `category_id` int NOT NULL,
  `category_name` varchar(45) NOT NULL,
  PRIMARY KEY (`category_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category`
--

LOCK TABLES `category` WRITE;
/*!40000 ALTER TABLE `category` DISABLE KEYS */;
INSERT INTO `category` VALUES (101,'Gargen'),(102,'Electric'),(103,'Snack'),(104,'Household'),(105,'Grocery');
/*!40000 ALTER TABLE `category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `city`
--

DROP TABLE IF EXISTS `city`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `city` (
  `city_id` int NOT NULL,
  `city` varchar(45) NOT NULL,
  `state_id` int NOT NULL,
  PRIMARY KEY (`city_id`),
  KEY `fk_city_state1_idx` (`state_id`),
  CONSTRAINT `state_id` FOREIGN KEY (`state_id`) REFERENCES `state` (`state_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `city`
--

LOCK TABLES `city` WRITE;
/*!40000 ALTER TABLE `city` DISABLE KEYS */;
/*!40000 ALTER TABLE `city` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customer`
--

DROP TABLE IF EXISTS `customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customer` (
  `customer_id` int NOT NULL,
  `last_name` varchar(45) NOT NULL,
  `first_name` varchar(45) NOT NULL,
  `phone` varchar(45) DEFAULT NULL,
  `email` varchar(45) NOT NULL,
  `department_id` int NOT NULL,
  `address_id` int NOT NULL,
  `created_date` datetime NOT NULL,
  `last_active_date` datetime NOT NULL,
  `active_level_id` int NOT NULL,
  PRIMARY KEY (`customer_id`),
  KEY `fk_customer_address1_idx` (`address_id`),
  KEY `fk_customer_active_level1_idx` (`active_level_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer`
--

LOCK TABLES `customer` WRITE;
/*!40000 ALTER TABLE `customer` DISABLE KEYS */;
/*!40000 ALTER TABLE `customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `department`
--

DROP TABLE IF EXISTS `department`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `department` (
  `department_id` int NOT NULL,
  `department_name` varchar(45) NOT NULL,
  PRIMARY KEY (`department_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `department`
--

LOCK TABLES `department` WRITE;
/*!40000 ALTER TABLE `department` DISABLE KEYS */;
/*!40000 ALTER TABLE `department` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employees`
--

DROP TABLE IF EXISTS `employees`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `employees` (
  `employee_id` int NOT NULL,
  `last_name` varchar(45) NOT NULL,
  `first_name` varchar(45) NOT NULL,
  `phone` varchar(45) NOT NULL,
  `email` varchar(45) NOT NULL,
  `address_id` int NOT NULL,
  `department_id` int NOT NULL,
  `employment_date` datetime NOT NULL,
  `position_id` int NOT NULL,
  PRIMARY KEY (`employee_id`),
  KEY `fk_employees_address1_idx` (`address_id`),
  KEY `fk_employees_department1_idx` (`department_id`),
  KEY `fk_employees_table11_idx` (`position_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employees`
--

LOCK TABLES `employees` WRITE;
/*!40000 ALTER TABLE `employees` DISABLE KEYS */;
/*!40000 ALTER TABLE `employees` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order`
--

DROP TABLE IF EXISTS `order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order` (
  `order_id` int NOT NULL,
  `customer_id` int NOT NULL,
  `placed_date` datetime NOT NULL,
  `store_id` int NOT NULL,
  `shipped_date` datetime DEFAULT NULL,
  `status_id` int NOT NULL,
  `shipper_id` int NOT NULL,
  `tracking_number` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`order_id`),
  KEY `fk_order_customer1_idx` (`customer_id`),
  KEY `fk_order_order_status1_idx` (`status_id`),
  KEY `fk_order_shipper1_idx` (`shipper_id`),
  KEY `fk_order_store1_idx` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order`
--

LOCK TABLES `order` WRITE;
/*!40000 ALTER TABLE `order` DISABLE KEYS */;
INSERT INTO `order` VALUES (10000001,500001,'2021-10-09 04:20:11',8001,'2021-10-09 04:20:11',5,601,'Asfagjhlkjsge134'),(10000002,500002,'2021-09-30 11:09:28',8002,'2021-09-30 11:09:28',5,602,'Asfagjhlkjsge135'),(10000003,500003,'2021-05-10 22:28:50',8003,'2021-05-10 22:28:50',5,603,'Asfagjhlkjsge136'),(10000004,500004,'2021-08-25 09:32:57',8004,'2021-08-25 09:32:57',5,601,'Asfagjhlkjsge137'),(10000005,500005,'2021-10-27 22:37:34',8005,'2021-10-27 22:37:34',5,602,'Asfagjhlkjsge138'),(10000006,500006,'2021-07-29 21:18:50',8001,'2021-07-29 21:18:50',5,603,'Asfagjhlkjsge139'),(10000007,500007,'2021-10-06 02:37:17',8002,'2021-10-06 02:37:17',5,601,'Asfagjhlkjsge140'),(10000008,500008,'2021-08-24 04:06:14',8003,'2021-08-24 04:06:14',5,602,'Asfagjhlkjsge141'),(10000009,500009,'2021-09-25 13:53:37',8004,'2021-09-25 13:53:37',5,603,'Asfagjhlkjsge142'),(10000010,500010,'2021-10-28 02:03:52',8005,'2021-10-28 02:03:52',5,601,'Asfagjhlkjsge143'),(10000011,500011,'2021-12-31 10:47:38',8001,'2021-12-31 10:47:38',5,602,'Asfagjhlkjsge144'),(10000012,500012,'2021-11-18 07:25:06',8002,'2021-11-18 07:25:06',5,603,'Asfagjhlkjsge145'),(10000013,500013,'2021-02-23 00:15:22',8003,'2021-02-23 00:15:22',5,601,'Asfagjhlkjsge146'),(10000014,500014,'2021-04-02 08:11:05',8004,'2021-04-02 08:11:05',5,602,'Asfagjhlkjsge147'),(10000015,500015,'2021-06-06 07:31:16',8005,'2021-06-06 07:31:16',5,603,'Asfagjhlkjsge148'),(10000016,500016,'2021-05-26 20:16:04',8001,'2021-05-26 20:16:04',5,601,'Asfagjhlkjsge149'),(10000017,500017,'2021-02-21 09:21:48',8002,'2021-02-21 09:21:48',5,602,'Asfagjhlkjsge150'),(10000018,500018,'2021-08-09 18:25:21',8003,'2021-08-09 18:25:21',5,603,'Asfagjhlkjsge151'),(10000019,500019,'2021-01-17 10:55:49',8004,'2021-01-17 10:55:49',5,601,'Asfagjhlkjsge152'),(10000020,500020,'2021-12-17 18:30:23',8005,'2021-12-17 18:30:23',5,602,'Asfagjhlkjsge153'),(10000021,500021,'2021-03-18 20:17:21',8001,'2021-03-18 20:17:21',5,603,'Asfagjhlkjsge154'),(10000022,500022,'2021-01-21 02:42:30',8002,'2021-01-21 02:42:30',5,601,'Asfagjhlkjsge155'),(10000023,500023,'2021-10-31 04:01:19',8003,'2021-10-31 04:01:19',5,602,'Asfagjhlkjsge156'),(10000024,500024,'2021-10-16 18:53:05',8004,'2021-10-16 18:53:05',5,601,'Asfagjhlkjsge157'),(10000025,500025,'2021-09-05 15:28:05',8005,'2021-09-05 15:28:05',5,602,'Asfagjhlkjsge158'),(10000026,500026,'2021-11-20 13:00:49',8001,'2021-11-20 13:00:49',5,603,'Asfagjhlkjsge159'),(10000027,500027,'2021-02-26 09:27:05',8002,'2021-02-26 09:27:05',5,601,'Asfagjhlkjsge160'),(10000028,500028,'2021-07-16 10:53:26',8003,'2021-07-16 10:53:26',5,602,'Asfagjhlkjsge161'),(10000029,500029,'2021-08-31 19:25:51',8004,'2021-08-31 19:25:51',5,603,'Asfagjhlkjsge162'),(10000030,500030,'2021-08-28 22:27:35',8005,'2021-08-28 22:27:35',5,601,'Asfagjhlkjsge163'),(10000031,500031,'2021-04-13 13:07:04',8001,'2021-04-13 13:07:04',5,602,'Asfagjhlkjsge164'),(10000032,500032,'2021-04-12 19:20:22',8002,'2021-04-12 19:20:22',5,603,'Asfagjhlkjsge165'),(10000033,500033,'2021-05-09 03:28:42',8003,'2021-05-09 03:28:42',5,601,'Asfagjhlkjsge166'),(10000034,500034,'2021-01-11 17:24:03',8004,'2021-01-11 17:24:03',5,602,'Asfagjhlkjsge167'),(10000035,500035,'2021-11-17 01:00:29',8005,'2021-11-17 01:00:29',5,601,'Asfagjhlkjsge168'),(10000036,500036,'2021-06-23 21:04:57',8001,'2021-06-23 21:04:57',5,602,'Asfagjhlkjsge169'),(10000037,500037,'2021-07-04 21:07:36',8002,'2021-07-04 21:07:36',5,603,'Asfagjhlkjsge170'),(10000038,500038,'2021-03-10 02:09:32',8003,'2021-03-10 02:09:32',5,601,'Asfagjhlkjsge171'),(10000039,500039,'2021-02-19 17:32:54',8004,'2021-02-19 17:32:54',5,602,'Asfagjhlkjsge172'),(10000040,500040,'2021-05-13 21:41:37',8005,'2021-05-13 21:41:37',5,603,'Asfagjhlkjsge173'),(10000041,500041,'2021-10-04 07:47:45',8001,'2021-10-04 07:47:45',5,601,'Asfagjhlkjsge174'),(10000042,500042,'2021-11-17 11:02:48',8002,'2021-11-17 11:02:48',5,602,'Asfagjhlkjsge175'),(10000043,500043,'2021-06-21 08:32:41',8003,'2021-06-21 08:32:41',5,603,'Asfagjhlkjsge176'),(10000044,500044,'2021-05-24 03:42:37',8004,'2021-05-24 03:42:37',5,601,'Asfagjhlkjsge177'),(10000045,500045,'2021-03-28 14:24:45',8005,'2021-03-28 14:24:45',5,602,'Asfagjhlkjsge178'),(10000046,500046,'2021-02-27 21:12:17',8001,'2021-02-27 21:12:17',5,601,'Asfagjhlkjsge179'),(10000047,500047,'2021-03-23 19:05:20',8002,'2021-03-23 19:05:20',5,602,'Asfagjhlkjsge180'),(10000048,500048,'2021-02-22 05:43:11',8002,'2021-02-22 05:43:11',5,603,'Asfagjhlkjsge181'),(10000049,500049,'2021-10-21 20:20:04',8003,'2021-10-21 20:20:04',5,601,'Asfagjhlkjsge182'),(10000050,500050,'2021-04-03 00:17:19',8004,'2021-04-03 00:17:19',5,602,'Asfagjhlkjsge183');
/*!40000 ALTER TABLE `order` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_status`
--

DROP TABLE IF EXISTS `order_status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order_status` (
  `status_id` tinyint NOT NULL,
  `status_name` varchar(10) NOT NULL,
  PRIMARY KEY (`status_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_status`
--

LOCK TABLES `order_status` WRITE;
/*!40000 ALTER TABLE `order_status` DISABLE KEYS */;
/*!40000 ALTER TABLE `order_status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orderline`
--

DROP TABLE IF EXISTS `orderline`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orderline` (
  `order_id` int NOT NULL,
  `product_id` int NOT NULL,
  `product_quantity` int NOT NULL,
  `unit_price` decimal(8,2) NOT NULL,
  `promotion_id` int NOT NULL,
  PRIMARY KEY (`order_id`,`product_id`),
  KEY `fk_order_has_product_product1_idx` (`product_id`),
  KEY `fk_order_has_product_order1_idx` (`order_id`),
  KEY `fk_orderline_promotion1_idx` (`promotion_id`),
  CONSTRAINT `promotion_id` FOREIGN KEY (`promotion_id`) REFERENCES `promotion` (`promotion_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orderline`
--

LOCK TABLES `orderline` WRITE;
/*!40000 ALTER TABLE `orderline` DISABLE KEYS */;
INSERT INTO `orderline` VALUES (10000001,10001,1,12.49,1),(10000001,10002,2,16.98,3),(10000001,10011,1,21.44,3),(10000001,10013,1,10.18,3),(10000002,10002,2,16.98,2),(10000002,10003,1,4.74,1),(10000002,10012,2,5.18,1),(10000002,10014,2,8.98,1),(10000003,10003,1,4.74,3),(10000003,10004,2,99.00,2),(10000003,10013,1,10.18,2),(10000003,10015,1,5.98,2),(10000004,10004,2,99.00,1),(10000004,10005,1,4.87,3),(10000004,10014,2,8.98,3),(10000004,10016,2,23.94,3),(10000005,10005,1,4.87,2),(10000005,10006,2,6.71,1),(10000005,10015,1,5.98,1),(10000005,10017,1,7.93,1),(10000006,10006,2,6.71,3),(10000006,10007,1,17.47,2),(10000006,10016,2,23.94,2),(10000006,10018,2,33.74,2),(10000007,10007,1,17.47,1),(10000007,10008,2,3.19,3),(10000007,10017,1,7.93,3),(10000007,10019,1,2.58,3),(10000008,10008,2,3.19,2),(10000008,10009,1,3.98,1),(10000008,10018,2,33.74,1),(10000008,10020,2,8.99,1),(10000009,10001,1,12.49,2),(10000009,10009,1,3.98,3),(10000009,10010,2,9.48,2),(10000009,10019,1,2.58,2),(10000010,10002,2,16.98,3),(10000010,10010,2,9.48,1),(10000010,10011,1,21.44,3),(10000010,10020,2,8.99,3),(10000011,10001,1,12.49,1),(10000011,10003,1,4.74,1),(10000011,10011,1,21.44,2),(10000011,10012,2,5.18,1),(10000012,10002,2,16.98,2),(10000012,10004,2,99.00,2),(10000012,10012,2,5.18,3),(10000012,10013,1,10.18,2),(10000013,10003,1,4.74,3),(10000013,10005,1,4.87,3),(10000013,10013,1,10.18,1),(10000013,10014,2,8.98,3),(10000014,10004,2,99.00,1),(10000014,10006,2,6.71,1),(10000014,10014,2,8.98,2),(10000014,10015,1,5.98,1),(10000015,10005,1,4.87,2),(10000015,10007,1,17.47,2),(10000015,10015,1,5.98,3),(10000015,10016,2,23.94,2),(10000016,10006,2,6.71,3),(10000016,10008,2,3.19,3),(10000016,10016,2,23.94,1),(10000016,10017,1,7.93,3),(10000017,10007,1,17.47,1),(10000017,10009,1,3.98,1),(10000017,10017,1,7.93,2),(10000017,10018,2,33.74,1),(10000018,10008,2,3.19,2),(10000018,10010,2,9.48,2),(10000018,10018,2,33.74,3),(10000018,10019,1,2.58,2),(10000019,10009,1,3.98,3),(10000019,10011,1,21.44,3),(10000019,10019,1,2.58,1),(10000019,10020,2,8.99,3),(10000020,10001,1,12.49,1),(10000020,10010,2,9.48,1),(10000020,10012,2,5.18,1),(10000020,10020,2,8.99,2),(10000021,10001,1,12.49,3),(10000021,10002,2,16.98,2),(10000021,10011,1,21.44,2),(10000021,10013,1,10.18,2),(10000022,10002,2,16.98,1),(10000022,10003,1,4.74,3),(10000022,10012,2,5.18,3),(10000022,10014,2,8.98,3),(10000023,10003,1,4.74,2),(10000023,10004,2,99.00,1),(10000023,10013,1,10.18,1),(10000023,10015,1,5.98,1),(10000024,10004,2,99.00,3),(10000024,10005,1,4.87,2),(10000024,10014,2,8.98,2),(10000024,10016,2,23.94,2),(10000025,10005,1,4.87,1),(10000025,10006,2,6.71,3),(10000025,10015,1,5.98,3),(10000025,10017,1,7.93,3),(10000026,10006,2,6.71,2),(10000026,10007,1,17.47,1),(10000026,10016,2,23.94,1),(10000026,10018,2,33.74,1),(10000027,10007,1,17.47,3),(10000027,10008,2,3.19,2),(10000027,10017,1,7.93,2),(10000027,10019,1,2.58,2),(10000028,10008,2,3.19,1),(10000028,10009,1,3.98,3),(10000028,10018,2,33.74,3),(10000028,10020,2,8.99,3),(10000029,10001,1,12.49,1),(10000029,10009,1,3.98,2),(10000029,10010,2,9.48,1),(10000029,10019,1,2.58,1),(10000030,10002,2,16.98,2),(10000030,10010,2,9.48,3),(10000030,10011,1,21.44,2),(10000030,10020,2,8.99,2),(10000031,10001,1,12.49,3),(10000031,10003,1,4.74,3),(10000031,10011,1,21.44,1),(10000031,10012,2,5.18,3),(10000032,10002,2,16.98,1),(10000032,10004,2,99.00,1),(10000032,10012,2,5.18,2),(10000032,10013,1,10.18,1),(10000033,10003,1,4.74,2),(10000033,10005,1,4.87,2),(10000033,10013,1,10.18,3),(10000033,10014,2,8.98,2),(10000034,10004,2,99.00,3),(10000034,10006,2,6.71,3),(10000034,10014,2,8.98,1),(10000034,10015,1,5.98,3),(10000035,10005,1,4.87,1),(10000035,10007,1,17.47,1),(10000035,10015,1,5.98,2),(10000035,10016,2,23.94,1),(10000036,10006,2,6.71,2),(10000036,10008,2,3.19,2),(10000036,10016,2,23.94,3),(10000036,10017,1,7.93,2),(10000037,10007,1,17.47,3),(10000037,10009,1,3.98,3),(10000037,10017,1,7.93,1),(10000037,10018,2,33.74,3),(10000038,10008,2,3.19,1),(10000038,10010,2,9.48,1),(10000038,10018,2,33.74,2),(10000038,10019,1,2.58,1),(10000039,10009,1,3.98,2),(10000039,10011,1,21.44,2),(10000039,10019,1,2.58,3),(10000039,10020,2,8.99,2),(10000040,10001,1,12.49,3),(10000040,10010,2,9.48,3),(10000040,10012,2,5.18,3),(10000040,10020,2,8.99,1),(10000041,10001,1,12.49,2),(10000041,10002,2,16.98,1),(10000041,10011,1,21.44,1),(10000041,10013,1,10.18,1),(10000042,10002,2,16.98,3),(10000042,10003,1,4.74,2),(10000042,10012,2,5.18,2),(10000042,10014,2,8.98,2),(10000043,10003,1,4.74,1),(10000043,10004,2,99.00,3),(10000043,10013,1,10.18,3),(10000043,10015,1,5.98,3),(10000044,10004,2,99.00,2),(10000044,10005,1,4.87,1),(10000044,10014,2,8.98,1),(10000044,10016,2,23.94,1),(10000045,10005,1,4.87,3),(10000045,10006,2,6.71,2),(10000045,10015,1,5.98,2),(10000045,10017,1,7.93,2),(10000046,10006,2,6.71,1),(10000046,10007,1,17.47,3),(10000046,10016,2,23.94,3),(10000046,10018,2,33.74,3),(10000047,10007,1,17.47,2),(10000047,10008,2,3.19,1),(10000047,10017,1,7.93,1),(10000047,10019,1,2.58,1),(10000048,10008,2,3.19,3),(10000048,10009,1,3.98,2),(10000048,10018,2,33.74,2),(10000048,10020,2,8.99,2),(10000049,10001,1,12.49,3),(10000049,10009,1,3.98,1),(10000049,10010,2,9.48,3),(10000049,10019,1,2.58,3),(10000050,10001,1,12.49,2),(10000050,10002,2,16.98,1),(10000050,10010,2,9.48,2),(10000050,10011,1,21.44,1),(10000050,10012,2,5.18,2),(10000050,10020,2,8.99,1);
/*!40000 ALTER TABLE `orderline` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payment`
--

DROP TABLE IF EXISTS `payment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `payment` (
  `payment_id` int NOT NULL,
  `amount` decimal(8,0) NOT NULL,
  `payment_date` datetime NOT NULL,
  `order_id` int NOT NULL,
  PRIMARY KEY (`payment_id`),
  KEY `fk_payment_order1_idx` (`order_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payment`
--

LOCK TABLES `payment` WRITE;
/*!40000 ALTER TABLE `payment` DISABLE KEYS */;
/*!40000 ALTER TABLE `payment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `position`
--

DROP TABLE IF EXISTS `position`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `position` (
  `position_id` int NOT NULL,
  `position_name` varchar(45) NOT NULL,
  PRIMARY KEY (`position_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `position`
--

LOCK TABLES `position` WRITE;
/*!40000 ALTER TABLE `position` DISABLE KEYS */;
/*!40000 ALTER TABLE `position` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product` (
  `product_id` int NOT NULL,
  `product_name` varchar(45) NOT NULL,
  `category_id` int NOT NULL,
  `unit_price` decimal(8,2) NOT NULL,
  `units_in_stock` int NOT NULL,
  `supplier_id` int NOT NULL,
  PRIMARY KEY (`product_id`),
  KEY `fk_product_category1_idx` (`category_id`),
  KEY `fk_product_supplier1_idx` (`supplier_id`),
  CONSTRAINT `category_id` FOREIGN KEY (`category_id`) REFERENCES `category` (`category_id`),
  CONSTRAINT `supplier_id` FOREIGN KEY (`supplier_id`) REFERENCES `supplier` (`supplier_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` VALUES (10001,'Angus filt Mignon',105,12.49,1000,201),(10002,'Lobster Tail',105,16.98,1000,202),(10003,'Fresh strawberries',105,4.74,1000,203),(10004,'PowerXl Air Fryer',102,99.00,1000,204),(10005,'Mini Rose Plus Bouquet',105,4.87,1000,205),(10006,'Seedless Grapes',105,6.71,1000,206),(10007,'Salami&Olive tray',105,17.47,1000,207),(10008,'Papaya',105,3.19,1000,208),(10009,'Asparagus Spears',105,3.98,1000,209),(10010,'Angel Soft Toilet paper',104,9.48,1000,210),(10011,'Laundry Detergent ',104,21.44,1000,201),(10012,'Zipper Bags',104,5.18,1000,202),(10013,'Coca-Cola Surgar cans',103,10.18,1000,203),(10014,'Mountain Dew 12pack',105,8.98,1000,204),(10015,'Orange Jucie',105,5.98,1000,205),(10016,'Angus Ribeye Steak',105,23.94,1000,206),(10017,'Tuna Steaks',105,7.93,1000,207),(10018,'Snow Crab legs',105,33.74,1000,208),(10019,'Blackberries',105,2.58,1000,209),(10020,'Maple Syrup',105,8.99,1000,210);
/*!40000 ALTER TABLE `product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `promotion`
--

DROP TABLE IF EXISTS `promotion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `promotion` (
  `promotion_id` int NOT NULL,
  `promotion_name` varchar(45) NOT NULL,
  `discount` decimal(4,2) NOT NULL,
  PRIMARY KEY (`promotion_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `promotion`
--

LOCK TABLES `promotion` WRITE;
/*!40000 ALTER TABLE `promotion` DISABLE KEYS */;
INSERT INTO `promotion` VALUES (1,'NewYear2021',0.20),(2,'LaborDay2021',0.20),(3,'Christmas2021',0.25);
/*!40000 ALTER TABLE `promotion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shipper`
--

DROP TABLE IF EXISTS `shipper`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `shipper` (
  `shipper_id` int NOT NULL,
  `shipper_name` varchar(45) NOT NULL,
  PRIMARY KEY (`shipper_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shipper`
--

LOCK TABLES `shipper` WRITE;
/*!40000 ALTER TABLE `shipper` DISABLE KEYS */;
/*!40000 ALTER TABLE `shipper` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `state`
--

DROP TABLE IF EXISTS `state`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `state` (
  `state_id` int NOT NULL,
  `state` varchar(45) NOT NULL,
  PRIMARY KEY (`state_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `state`
--

LOCK TABLES `state` WRITE;
/*!40000 ALTER TABLE `state` DISABLE KEYS */;
/*!40000 ALTER TABLE `state` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `store`
--

DROP TABLE IF EXISTS `store`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `store` (
  `store_id` int NOT NULL,
  `store_name` varchar(45) NOT NULL,
  `manager_id` int NOT NULL,
  `address_id` int NOT NULL,
  PRIMARY KEY (`store_id`),
  KEY `fk_store_employees1_idx` (`manager_id`),
  KEY `fk_store_address1_idx` (`address_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `store`
--

LOCK TABLES `store` WRITE;
/*!40000 ALTER TABLE `store` DISABLE KEYS */;
INSERT INTO `store` VALUES (8001,'Hello',703,15),(8002,'World',701,22),(8003,'java',702,7),(8004,'Python',709,4),(8005,'mysql',707,3);
/*!40000 ALTER TABLE `store` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `supplier`
--

DROP TABLE IF EXISTS `supplier`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `supplier` (
  `supplier_id` int NOT NULL,
  `supplier_name` varchar(45) NOT NULL,
  `address_id` int NOT NULL,
  PRIMARY KEY (`supplier_id`),
  KEY `fk_supplier_address1_idx` (`address_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `supplier`
--

LOCK TABLES `supplier` WRITE;
/*!40000 ALTER TABLE `supplier` DISABLE KEYS */;
INSERT INTO `supplier` VALUES (201,'Plug Power Inc.',500001),(202,'Funai Electric Co.',500002),(203,'CCA Industries Inc.',500003),(204,'Green Dot Corporation',500004),(205,'Primo Water Corporation',500005),(206,'Arkansas Inc',500006),(207,'Hasbro Inc',500007),(208,'Archway cookies',500008),(209,'Grupo Bimbo',500009),(210,'ConAgra Foods',500010);
/*!40000 ALTER TABLE `supplier` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-02-14 13:43:20
