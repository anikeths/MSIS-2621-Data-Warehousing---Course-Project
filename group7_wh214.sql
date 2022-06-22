CREATE DATABASE  IF NOT EXISTS `group7_wh` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `group7_wh`;
-- MySQL dump 10.13  Distrib 8.0.27, for macos11 (x86_64)
--
-- Host: 127.0.0.1    Database: group7_wh
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
-- Table structure for table `dim_category`
--

DROP TABLE IF EXISTS `dim_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dim_category` (
  `category_key` int NOT NULL AUTO_INCREMENT,
  `category_id` int DEFAULT NULL,
  `category_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`category_key`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dim_category`
--

LOCK TABLES `dim_category` WRITE;
/*!40000 ALTER TABLE `dim_category` DISABLE KEYS */;
INSERT INTO `dim_category` VALUES (1,101,'Gargen'),(2,102,'Electric'),(3,103,'Snack'),(4,104,'Household'),(5,105,'Grocery');
/*!40000 ALTER TABLE `dim_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dim_order`
--

DROP TABLE IF EXISTS `dim_order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dim_order` (
  `order_key` int NOT NULL AUTO_INCREMENT,
  `order_id` int DEFAULT NULL,
  PRIMARY KEY (`order_key`)
) ENGINE=InnoDB AUTO_INCREMENT=64 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dim_order`
--

LOCK TABLES `dim_order` WRITE;
/*!40000 ALTER TABLE `dim_order` DISABLE KEYS */;
INSERT INTO `dim_order` VALUES (1,10000001),(2,10000002),(3,10000003),(4,10000004),(5,10000005),(6,10000006),(7,10000007),(8,10000008),(9,10000009),(10,10000010),(11,10000011),(12,10000012),(13,10000013),(14,10000014),(15,10000015),(16,10000016),(17,10000017),(18,10000018),(19,10000019),(20,10000020),(21,10000021),(22,10000022),(23,10000023),(24,10000024),(25,10000025),(26,10000026),(27,10000027),(28,10000028),(29,10000029),(30,10000030),(31,10000031),(32,10000032),(33,10000033),(34,10000034),(35,10000035),(36,10000036),(37,10000037),(38,10000038),(39,10000039),(40,10000040),(41,10000041),(42,10000042),(43,10000043),(44,10000044),(45,10000045),(46,10000046),(47,10000047),(48,10000048),(49,10000049),(50,10000050);
/*!40000 ALTER TABLE `dim_order` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dim_product`
--

DROP TABLE IF EXISTS `dim_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dim_product` (
  `product_key` int NOT NULL AUTO_INCREMENT,
  `product_id` int DEFAULT NULL,
  `product_name` varchar(255) DEFAULT NULL,
  `unit_price` decimal(8,2) DEFAULT NULL,
  PRIMARY KEY (`product_key`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dim_product`
--

LOCK TABLES `dim_product` WRITE;
/*!40000 ALTER TABLE `dim_product` DISABLE KEYS */;
INSERT INTO `dim_product` VALUES (1,10001,'Angus filt Mignon',12.49),(2,10002,'Lobster Tail',16.98),(3,10003,'Fresh strawberries',4.74),(4,10004,'PowerXl Air Fryer',99.00),(5,10005,'Mini Rose Plus Bouquet',4.87),(6,10006,'Seedless Grapes',6.71),(7,10007,'Salami&Olive tray',17.47),(8,10008,'Papaya',3.19),(9,10009,'Asparagus Spears',3.98),(10,10010,'Angel Soft Toilet paper',9.48),(11,10011,'Laundry Detergent ',21.44),(12,10012,'Zipper Bags',5.18),(13,10013,'Coca-Cola Surgar cans',10.18),(14,10014,'Mountain Dew 12pack',8.98),(15,10015,'Orange Jucie',5.98),(16,10016,'Angus Ribeye Steak',23.94),(17,10017,'Tuna Steaks',7.93),(18,10018,'Snow Crab legs',33.74),(19,10019,'Blackberries',2.58),(20,10020,'Maple Syrup',8.99);
/*!40000 ALTER TABLE `dim_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dim_promotion`
--

DROP TABLE IF EXISTS `dim_promotion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dim_promotion` (
  `promotion_key` int NOT NULL AUTO_INCREMENT,
  `promotion_id` int DEFAULT NULL,
  `promotion_name` varchar(255) DEFAULT NULL,
  `discount` decimal(4,2) DEFAULT NULL,
  PRIMARY KEY (`promotion_key`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dim_promotion`
--

LOCK TABLES `dim_promotion` WRITE;
/*!40000 ALTER TABLE `dim_promotion` DISABLE KEYS */;
INSERT INTO `dim_promotion` VALUES (1,1,'NewYear2021',0.20),(2,2,'LaborDay2021',0.20),(3,3,'Christmas2021',0.25);
/*!40000 ALTER TABLE `dim_promotion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dim_store`
--

DROP TABLE IF EXISTS `dim_store`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dim_store` (
  `store_key` int NOT NULL AUTO_INCREMENT,
  `store_id` int DEFAULT NULL,
  `manager_id` int DEFAULT NULL,
  `address_id` int DEFAULT NULL,
  `store_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`store_key`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dim_store`
--

LOCK TABLES `dim_store` WRITE;
/*!40000 ALTER TABLE `dim_store` DISABLE KEYS */;
INSERT INTO `dim_store` VALUES (1,8001,703,15,'Hello'),(2,8002,701,22,'World'),(3,8003,702,7,'java'),(4,8004,709,4,'Python'),(5,8005,707,3,'mysql');
/*!40000 ALTER TABLE `dim_store` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dim_supplier`
--

DROP TABLE IF EXISTS `dim_supplier`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dim_supplier` (
  `supplier_key` int NOT NULL AUTO_INCREMENT,
  `supplier_id` int DEFAULT NULL,
  `supplier_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`supplier_key`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dim_supplier`
--

LOCK TABLES `dim_supplier` WRITE;
/*!40000 ALTER TABLE `dim_supplier` DISABLE KEYS */;
INSERT INTO `dim_supplier` VALUES (1,201,'Plug Power Inc.'),(2,202,'Funai Electric Co.'),(3,203,'CCA Industries Inc.'),(4,204,'Green Dot Corporation'),(5,205,'Primo Water Corporation'),(6,206,'Arkansas Inc'),(7,207,'Hasbro Inc'),(8,208,'Archway cookies'),(9,209,'Grupo Bimbo'),(10,210,'ConAgra Foods');
/*!40000 ALTER TABLE `dim_supplier` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dim_time`
--

DROP TABLE IF EXISTS `dim_time`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dim_time` (
  `time_key` int NOT NULL AUTO_INCREMENT,
  `order_id` int DEFAULT NULL,
  `placed_date` datetime DEFAULT NULL,
  `year` int DEFAULT NULL,
  `month` int DEFAULT NULL,
  `quarter` int DEFAULT NULL,
  `day` int DEFAULT NULL,
  `day_of_week` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`time_key`)
) ENGINE=InnoDB AUTO_INCREMENT=64 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dim_time`
--

LOCK TABLES `dim_time` WRITE;
/*!40000 ALTER TABLE `dim_time` DISABLE KEYS */;
INSERT INTO `dim_time` VALUES (1,10000001,'2021-10-09 04:20:11',2021,10,4,9,'Saturday'),(2,10000002,'2021-09-30 11:09:28',2021,9,3,30,'Thursday'),(3,10000003,'2021-05-10 22:28:50',2021,5,2,10,'Monday'),(4,10000004,'2021-08-25 09:32:57',2021,8,3,25,'Wednesday'),(5,10000005,'2021-10-27 22:37:34',2021,10,4,27,'Wednesday'),(6,10000006,'2021-07-29 21:18:50',2021,7,3,29,'Thursday'),(7,10000007,'2021-10-06 02:37:17',2021,10,4,6,'Wednesday'),(8,10000008,'2021-08-24 04:06:14',2021,8,3,24,'Tuesday'),(9,10000009,'2021-09-25 13:53:37',2021,9,3,25,'Saturday'),(10,10000010,'2021-10-28 02:03:52',2021,10,4,28,'Thursday'),(11,10000011,'2021-12-31 10:47:38',2021,12,4,31,'Friday'),(12,10000012,'2021-11-18 07:25:06',2021,11,4,18,'Thursday'),(13,10000013,'2021-02-23 00:15:22',2021,2,1,23,'Tuesday'),(14,10000014,'2021-04-02 08:11:05',2021,4,2,2,'Friday'),(15,10000015,'2021-06-06 07:31:16',2021,6,2,6,'Sunday'),(16,10000016,'2021-05-26 20:16:04',2021,5,2,26,'Wednesday'),(17,10000017,'2021-02-21 09:21:48',2021,2,1,21,'Sunday'),(18,10000018,'2021-08-09 18:25:21',2021,8,3,9,'Monday'),(19,10000019,'2021-01-17 10:55:49',2021,1,1,17,'Sunday'),(20,10000020,'2021-12-17 18:30:23',2021,12,4,17,'Friday'),(21,10000021,'2021-03-18 20:17:21',2021,3,1,18,'Thursday'),(22,10000022,'2021-01-21 02:42:30',2021,1,1,21,'Thursday'),(23,10000023,'2021-10-31 04:01:19',2021,10,4,31,'Sunday'),(24,10000024,'2021-10-16 18:53:05',2021,10,4,16,'Saturday'),(25,10000025,'2021-09-05 15:28:05',2021,9,3,5,'Sunday'),(26,10000026,'2021-11-20 13:00:49',2021,11,4,20,'Saturday'),(27,10000027,'2021-02-26 09:27:05',2021,2,1,26,'Friday'),(28,10000028,'2021-07-16 10:53:26',2021,7,3,16,'Friday'),(29,10000029,'2021-08-31 19:25:51',2021,8,3,31,'Tuesday'),(30,10000030,'2021-08-28 22:27:35',2021,8,3,28,'Saturday'),(31,10000031,'2021-04-13 13:07:04',2021,4,2,13,'Tuesday'),(32,10000032,'2021-04-12 19:20:22',2021,4,2,12,'Monday'),(33,10000033,'2021-05-09 03:28:42',2021,5,2,9,'Sunday'),(34,10000034,'2021-01-11 17:24:03',2021,1,1,11,'Monday'),(35,10000035,'2021-11-17 01:00:29',2021,11,4,17,'Wednesday'),(36,10000036,'2021-06-23 21:04:57',2021,6,2,23,'Wednesday'),(37,10000037,'2021-07-04 21:07:36',2021,7,3,4,'Sunday'),(38,10000038,'2021-03-10 02:09:32',2021,3,1,10,'Wednesday'),(39,10000039,'2021-02-19 17:32:54',2021,2,1,19,'Friday'),(40,10000040,'2021-05-13 21:41:37',2021,5,2,13,'Thursday'),(41,10000041,'2021-10-04 07:47:45',2021,10,4,4,'Monday'),(42,10000042,'2021-11-17 11:02:48',2021,11,4,17,'Wednesday'),(43,10000043,'2021-06-21 08:32:41',2021,6,2,21,'Monday'),(44,10000044,'2021-05-24 03:42:37',2021,5,2,24,'Monday'),(45,10000045,'2021-03-28 14:24:45',2021,3,1,28,'Sunday'),(46,10000046,'2021-02-27 21:12:17',2021,2,1,27,'Saturday'),(47,10000047,'2021-03-23 19:05:20',2021,3,1,23,'Tuesday'),(48,10000048,'2021-02-22 05:43:11',2021,2,1,22,'Monday'),(49,10000049,'2021-10-21 20:20:04',2021,10,4,21,'Thursday'),(50,10000050,'2021-04-03 00:17:19',2021,4,2,3,'Saturday');
/*!40000 ALTER TABLE `dim_time` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fact_sale`
--

DROP TABLE IF EXISTS `fact_sale`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `fact_sale` (
  `order_key` int DEFAULT NULL,
  `product_key` int DEFAULT NULL,
  `category_key` int DEFAULT NULL,
  `store_key` int DEFAULT NULL,
  `promotion_key` int DEFAULT NULL,
  `time_key` int DEFAULT NULL,
  `discounted_price` decimal(8,2) DEFAULT NULL,
  `product_quantity` int DEFAULT NULL,
  `total_price` decimal(8,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fact_sale`
--

LOCK TABLES `fact_sale` WRITE;
/*!40000 ALTER TABLE `fact_sale` DISABLE KEYS */;
INSERT INTO `fact_sale` VALUES (1,1,5,1,1,1,9.99,1,9.99),(1,2,5,1,3,1,12.74,2,25.47),(1,11,4,1,3,1,16.08,1,16.08),(1,13,3,1,3,1,7.64,1,7.64),(2,2,5,2,2,2,13.58,2,27.17),(2,3,5,2,1,2,3.79,1,3.79),(2,12,4,2,1,2,4.14,2,8.29),(2,14,5,2,1,2,7.18,2,14.37),(3,3,5,3,3,3,3.56,1,3.56),(3,4,2,3,2,3,79.20,2,158.40),(3,13,3,3,2,3,8.14,1,8.14),(3,15,5,3,2,3,4.78,1,4.78),(4,4,2,4,1,4,79.20,2,158.40),(4,5,5,4,3,4,3.65,1,3.65),(4,14,5,4,3,4,6.74,2,13.47),(4,16,5,4,3,4,17.96,2,35.91),(5,5,5,5,2,5,3.90,1,3.90),(5,6,5,5,1,5,5.37,2,10.74),(5,15,5,5,1,5,4.78,1,4.78),(5,17,5,5,1,5,6.34,1,6.34),(6,6,5,1,3,6,5.03,2,10.07),(6,7,5,1,2,6,13.98,1,13.98),(6,16,5,1,2,6,19.15,2,38.30),(6,18,5,1,2,6,26.99,2,53.98),(7,7,5,2,1,7,13.98,1,13.98),(7,8,5,2,3,7,2.39,2,4.79),(7,17,5,2,3,7,5.95,1,5.95),(7,19,5,2,3,7,1.94,1,1.94),(8,8,5,3,2,8,2.55,2,5.10),(8,9,5,3,1,8,3.18,1,3.18),(8,18,5,3,1,8,26.99,2,53.98),(8,20,5,3,1,8,7.19,2,14.38),(9,1,5,4,2,9,9.99,1,9.99),(9,9,5,4,3,9,2.99,1,2.99),(9,10,4,4,2,9,7.58,2,15.17),(9,19,5,4,2,9,2.06,1,2.06),(10,2,5,5,3,10,12.74,2,25.47),(10,10,4,5,1,10,7.58,2,15.17),(10,11,4,5,3,10,16.08,1,16.08),(10,20,5,5,3,10,6.74,2,13.49),(11,1,5,1,1,11,9.99,1,9.99),(11,3,5,1,1,11,3.79,1,3.79),(11,11,4,1,2,11,17.15,1,17.15),(11,12,4,1,1,11,4.14,2,8.29),(12,2,5,2,2,12,13.58,2,27.17),(12,4,2,2,2,12,79.20,2,158.40),(12,12,4,2,3,12,3.89,2,7.77),(12,13,3,2,2,12,8.14,1,8.14),(13,3,5,3,3,13,3.56,1,3.56),(13,5,5,3,3,13,3.65,1,3.65),(13,13,3,3,1,13,8.14,1,8.14),(13,14,5,3,3,13,6.74,2,13.47),(14,4,2,4,1,14,79.20,2,158.40),(14,6,5,4,1,14,5.37,2,10.74),(14,14,5,4,2,14,7.18,2,14.37),(14,15,5,4,1,14,4.78,1,4.78),(15,5,5,5,2,15,3.90,1,3.90),(15,7,5,5,2,15,13.98,1,13.98),(15,15,5,5,3,15,4.49,1,4.49),(15,16,5,5,2,15,19.15,2,38.30),(16,6,5,1,3,16,5.03,2,10.07),(16,8,5,1,3,16,2.39,2,4.79),(16,16,5,1,1,16,19.15,2,38.30),(16,17,5,1,3,16,5.95,1,5.95),(17,7,5,2,1,17,13.98,1,13.98),(17,9,5,2,1,17,3.18,1,3.18),(17,17,5,2,2,17,6.34,1,6.34),(17,18,5,2,1,17,26.99,2,53.98),(18,8,5,3,2,18,2.55,2,5.10),(18,10,4,3,2,18,7.58,2,15.17),(18,18,5,3,3,18,25.31,2,50.61),(18,19,5,3,2,18,2.06,1,2.06),(19,9,5,4,3,19,2.99,1,2.99),(19,11,4,4,3,19,16.08,1,16.08),(19,19,5,4,1,19,2.06,1,2.06),(19,20,5,4,3,19,6.74,2,13.49),(20,1,5,5,1,20,9.99,1,9.99),(20,10,4,5,1,20,7.58,2,15.17),(20,12,4,5,1,20,4.14,2,8.29),(20,20,5,5,2,20,7.19,2,14.38),(21,1,5,1,3,21,9.37,1,9.37),(21,2,5,1,2,21,13.58,2,27.17),(21,11,4,1,2,21,17.15,1,17.15),(21,13,3,1,2,21,8.14,1,8.14),(22,2,5,2,1,22,13.58,2,27.17),(22,3,5,2,3,22,3.56,1,3.56),(22,12,4,2,3,22,3.89,2,7.77),(22,14,5,2,3,22,6.74,2,13.47),(23,3,5,3,2,23,3.79,1,3.79),(23,4,2,3,1,23,79.20,2,158.40),(23,13,3,3,1,23,8.14,1,8.14),(23,15,5,3,1,23,4.78,1,4.78),(24,4,2,4,3,24,74.25,2,148.50),(24,5,5,4,2,24,3.90,1,3.90),(24,14,5,4,2,24,7.18,2,14.37),(24,16,5,4,2,24,19.15,2,38.30),(25,5,5,5,1,25,3.90,1,3.90),(25,6,5,5,3,25,5.03,2,10.07),(25,15,5,5,3,25,4.49,1,4.49),(25,17,5,5,3,25,5.95,1,5.95),(26,6,5,1,2,26,5.37,2,10.74),(26,7,5,1,1,26,13.98,1,13.98),(26,16,5,1,1,26,19.15,2,38.30),(26,18,5,1,1,26,26.99,2,53.98),(27,7,5,2,3,27,13.10,1,13.10),(27,8,5,2,2,27,2.55,2,5.10),(27,17,5,2,2,27,6.34,1,6.34),(27,19,5,2,2,27,2.06,1,2.06),(28,8,5,3,1,28,2.55,2,5.10),(28,9,5,3,3,28,2.99,1,2.99),(28,18,5,3,3,28,25.31,2,50.61),(28,20,5,3,3,28,6.74,2,13.49),(29,1,5,4,1,29,9.99,1,9.99),(29,9,5,4,2,29,3.18,1,3.18),(29,10,4,4,1,29,7.58,2,15.17),(29,19,5,4,1,29,2.06,1,2.06),(30,2,5,5,2,30,13.58,2,27.17),(30,10,4,5,3,30,7.11,2,14.22),(30,11,4,5,2,30,17.15,1,17.15),(30,20,5,5,2,30,7.19,2,14.38),(31,1,5,1,3,31,9.37,1,9.37),(31,3,5,1,3,31,3.56,1,3.56),(31,11,4,1,1,31,17.15,1,17.15),(31,12,4,1,3,31,3.89,2,7.77),(32,2,5,2,1,32,13.58,2,27.17),(32,4,2,2,1,32,79.20,2,158.40),(32,12,4,2,2,32,4.14,2,8.29),(32,13,3,2,1,32,8.14,1,8.14),(33,3,5,3,2,33,3.79,1,3.79),(33,5,5,3,2,33,3.90,1,3.90),(33,13,3,3,3,33,7.64,1,7.64),(33,14,5,3,2,33,7.18,2,14.37),(34,4,2,4,3,34,74.25,2,148.50),(34,6,5,4,3,34,5.03,2,10.07),(34,14,5,4,1,34,7.18,2,14.37),(34,15,5,4,3,34,4.49,1,4.49),(35,5,5,5,1,35,3.90,1,3.90),(35,7,5,5,1,35,13.98,1,13.98),(35,15,5,5,2,35,4.78,1,4.78),(35,16,5,5,1,35,19.15,2,38.30),(36,6,5,1,2,36,5.37,2,10.74),(36,8,5,1,2,36,2.55,2,5.10),(36,16,5,1,3,36,17.96,2,35.91),(36,17,5,1,2,36,6.34,1,6.34),(37,7,5,2,3,37,13.10,1,13.10),(37,9,5,2,3,37,2.99,1,2.99),(37,17,5,2,1,37,6.34,1,6.34),(37,18,5,2,3,37,25.31,2,50.61),(38,8,5,3,1,38,2.55,2,5.10),(38,10,4,3,1,38,7.58,2,15.17),(38,18,5,3,2,38,26.99,2,53.98),(38,19,5,3,1,38,2.06,1,2.06),(39,9,5,4,2,39,3.18,1,3.18),(39,11,4,4,2,39,17.15,1,17.15),(39,19,5,4,3,39,1.94,1,1.94),(39,20,5,4,2,39,7.19,2,14.38),(40,1,5,5,3,40,9.37,1,9.37),(40,10,4,5,3,40,7.11,2,14.22),(40,12,4,5,3,40,3.89,2,7.77),(40,20,5,5,1,40,7.19,2,14.38),(41,1,5,1,2,41,9.99,1,9.99),(41,2,5,1,1,41,13.58,2,27.17),(41,11,4,1,1,41,17.15,1,17.15),(41,13,3,1,1,41,8.14,1,8.14),(42,2,5,2,3,42,12.74,2,25.47),(42,3,5,2,2,42,3.79,1,3.79),(42,12,4,2,2,42,4.14,2,8.29),(42,14,5,2,2,42,7.18,2,14.37),(43,3,5,3,1,43,3.79,1,3.79),(43,4,2,3,3,43,74.25,2,148.50),(43,13,3,3,3,43,7.64,1,7.64),(43,15,5,3,3,43,4.49,1,4.49),(44,4,2,4,2,44,79.20,2,158.40),(44,5,5,4,1,44,3.90,1,3.90),(44,14,5,4,1,44,7.18,2,14.37),(44,16,5,4,1,44,19.15,2,38.30),(45,5,5,5,3,45,3.65,1,3.65),(45,6,5,5,2,45,5.37,2,10.74),(45,15,5,5,2,45,4.78,1,4.78),(45,17,5,5,2,45,6.34,1,6.34),(46,6,5,1,1,46,5.37,2,10.74),(46,7,5,1,3,46,13.10,1,13.10),(46,16,5,1,3,46,17.96,2,35.91),(46,18,5,1,3,46,25.31,2,50.61),(47,7,5,2,2,47,13.98,1,13.98),(47,8,5,2,1,47,2.55,2,5.10),(47,17,5,2,1,47,6.34,1,6.34),(47,19,5,2,1,47,2.06,1,2.06),(48,8,5,2,3,48,2.39,2,4.79),(48,9,5,2,2,48,3.18,1,3.18),(48,18,5,2,2,48,26.99,2,53.98),(48,20,5,2,2,48,7.19,2,14.38),(49,1,5,3,3,49,9.37,1,9.37),(49,9,5,3,1,49,3.18,1,3.18),(49,10,4,3,3,49,7.11,2,14.22),(49,19,5,3,3,49,1.94,1,1.94),(50,1,5,4,2,50,9.99,1,9.99),(50,2,5,4,1,50,13.58,2,27.17),(50,10,4,4,2,50,7.58,2,15.17),(50,11,4,4,1,50,17.15,1,17.15),(50,12,4,4,2,50,4.14,2,8.29),(50,20,5,4,1,50,7.19,2,14.38);
/*!40000 ALTER TABLE `fact_sale` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-02-14 13:46:44
