-- MySQL dump 10.13  Distrib 8.0.31, for Win64 (x86_64)
--
-- Host: localhost    Database: shopping
-- ------------------------------------------------------
-- Server version	8.0.31

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
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `admin` (
  `id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `creationDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updationDate` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin`
--

LOCK TABLES `admin` WRITE;
/*!40000 ALTER TABLE `admin` DISABLE KEYS */;
INSERT INTO `admin` VALUES (1,'admin','81dc9bdb52d04dc20036dbd8313ed055','2017-01-24 16:21:18','06-01-2023 04:56:04 PM');
/*!40000 ALTER TABLE `admin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `category` (
  `id` int NOT NULL AUTO_INCREMENT,
  `categoryName` varchar(255) DEFAULT NULL,
  `categoryDescription` longtext,
  `creationDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updationDate` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category`
--

LOCK TABLES `category` WRITE;
/*!40000 ALTER TABLE `category` DISABLE KEYS */;
INSERT INTO `category` VALUES (3,'Books','Book','2017-01-24 19:17:37','30-01-2017 12:22:24 AM'),(4,'Electronics','Electronic Products','2017-01-24 19:19:32',''),(5,'Furniture','Furniture','2017-01-24 19:19:54',''),(6,'Fashion','Fashion','2017-02-20 19:18:52',''),(7,'Car','Car test edit','2023-01-06 11:14:46','06-01-2023 04:46:02 PM');
/*!40000 ALTER TABLE `category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orders` (
  `id` int NOT NULL AUTO_INCREMENT,
  `userId` int DEFAULT NULL,
  `productId` varchar(255) DEFAULT NULL,
  `quantity` int DEFAULT NULL,
  `orderDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `paymentMethod` varchar(50) DEFAULT NULL,
  `orderStatus` varchar(55) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES (1,1,'3',1,'2017-03-07 19:32:57','COD',NULL),(3,1,'4',1,'2017-03-10 19:43:04','Debit / Credit card','Delivered'),(4,1,'17',1,'2017-03-08 16:14:17','COD','in Process'),(5,1,'3',1,'2017-03-08 19:21:38','COD',NULL),(6,1,'4',1,'2017-03-08 19:21:38','COD',NULL),(8,4,'4',1,'2023-01-02 14:48:13','COD',NULL),(9,4,'4',2,'2023-01-03 03:14:07','COD',NULL),(10,4,'6',1,'2023-01-05 02:45:10','COD',NULL),(12,4,'3',1,'2023-01-05 12:26:37','Internet Banking',NULL),(13,1,'3',1,'2023-01-05 12:47:36','COD',NULL),(14,1,'5',1,'2023-01-05 12:47:36','COD',NULL),(15,4,'4',2,'2023-01-05 13:55:17','Internet Banking',NULL),(16,4,'4',1,'2023-01-06 09:56:34','Internet Banking',NULL);
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ordertrackhistory`
--

DROP TABLE IF EXISTS `ordertrackhistory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ordertrackhistory` (
  `id` int NOT NULL AUTO_INCREMENT,
  `orderId` int DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `remark` mediumtext,
  `postingDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ordertrackhistory`
--

LOCK TABLES `ordertrackhistory` WRITE;
/*!40000 ALTER TABLE `ordertrackhistory` DISABLE KEYS */;
INSERT INTO `ordertrackhistory` VALUES (1,3,'in Process','Order has been Shipped.','2017-03-10 19:36:45'),(2,1,'Delivered','Order Has been delivered','2017-03-10 19:37:31'),(3,3,'Delivered','Product delivered successfully','2017-03-10 19:43:04'),(4,4,'in Process','Product ready for Shipping','2017-03-10 19:50:36');
/*!40000 ALTER TABLE `ordertrackhistory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `productreviews`
--

DROP TABLE IF EXISTS `productreviews`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `productreviews` (
  `id` int NOT NULL AUTO_INCREMENT,
  `productId` int DEFAULT NULL,
  `quality` int DEFAULT NULL,
  `price` int DEFAULT NULL,
  `value` int DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `summary` varchar(255) DEFAULT NULL,
  `review` longtext,
  `reviewDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `productreviews`
--

LOCK TABLES `productreviews` WRITE;
/*!40000 ALTER TABLE `productreviews` DISABLE KEYS */;
INSERT INTO `productreviews` VALUES (2,3,4,5,5,'Anuj Kumar','BEST PRODUCT FOR ME :)','BEST PRODUCT FOR ME :)','2017-02-26 20:43:57'),(3,3,3,4,3,'Sarita pandey','Nice Product','Value for money','2017-02-26 20:52:46'),(4,3,3,4,3,'Sarita pandey','Nice Product','Value for money','2017-02-26 20:59:19'),(5,3,5,5,5,'test1','great','great','2023-01-05 03:50:06'),(6,4,3,3,3,'test1','good','good','2023-01-06 09:48:30');
/*!40000 ALTER TABLE `productreviews` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `products` (
  `id` int NOT NULL AUTO_INCREMENT,
  `category` int NOT NULL,
  `subCategory` int DEFAULT NULL,
  `productName` varchar(255) DEFAULT NULL,
  `productCompany` varchar(255) DEFAULT NULL,
  `productPrice` int DEFAULT NULL,
  `productPriceBeforeDiscount` int DEFAULT NULL,
  `productDescription` longtext,
  `productImage1` varchar(255) DEFAULT NULL,
  `productImage2` varchar(255) DEFAULT NULL,
  `productImage3` varchar(255) DEFAULT NULL,
  `shippingCharge` int DEFAULT NULL,
  `productAvailability` varchar(255) DEFAULT NULL,
  `postingDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updationDate` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES (3,4,4,'Redmi Note 4 (Gold, 32 GB)  (With 3 GB RAM)','Redmi',10999,0,'<br><div><ol><li>3 GB RAM | 32 GB ROM | Expandable Upto 128 GB<br></li><li>5.5 inch Full HD Display<br></li><li>13MP Primary Camera | 5MP Front<br></li><li>4100 mAh Li-Polymer Battery<br></li><li>Qualcomm Snapdragon 625 64-bit Processor<br></li></ol></div>','mi-redmi-note-4-1.jpeg','mi-redmi-note-4-2.jpeg','mi-redmi-note-4-3.jpeg',0,'In Stock','2017-02-04 04:03:15',''),(4,4,4,'Lenovo K6 Power (Silver, 32 GB) ','Lenovo',9999,0,'<ul><li>3 GB RAM | 32 GB ROM | Expandable Upto 128 GB<br></li><li>5 inch Full HD Display<br></li><li>13MP Primary Camera | 8MP Front<br></li><li>4000 mAh Li-Polymer Battery<br></li><li>Qualcomm Snapdragon 430 Processor<br></li></ul>','lenovo-k6-power-k33a42-1.jpeg','lenovo-k6-power-k33a42-2.jpeg','lenovo-k6-power-k33a42-3.jpeg',45,'In Stock','2017-02-04 04:04:43',''),(5,4,4,'Lenovo Vibe K5 Note (Gold, 32 GB)  ','Lenovo',11999,0,'<ul><li>3 GB RAM | 32 GB ROM | Expandable Upto 128 GB<br></li><li>5.5 inch Full HD Display<br></li><li>13MP Primary Camera | 8MP Front<br></li><li>3500 mAh Li-Ion Polymer Battery<br></li><li>Helio P10 64-bit Processor<br></li></ul>','lenovo-k5-note-pa330010in-1.jpeg','lenovo-k5-note-pa330116in-2.jpeg','lenovo-k5-note-pa330116in-3.jpeg',0,'In Stock','2017-02-04 04:06:17',''),(6,4,4,'Micromax Canvas Mega 4G','Micromax',6999,0,'<ul><li>3 GB RAM | 16 GB ROM |<br></li><li>5.5 inch HD Display<br></li><li>13MP Primary Camera | 5MP Front<br></li><li>2500 mAh Battery<br></li><li>MT6735 Processor<br></li></ul>','micromax-canvas-mega-4g-1.jpeg','micromax-canvas-mega-4g-2.jpeg','micromax-canvas-mega-4g-3.jpeg',35,'In Stock','2017-02-04 04:08:07',''),(7,4,4,'SAMSUNG Galaxy On5','SAMSUNG',7490,0,'<ul><li>1.5 GB RAM | 8 GB ROM | Expandable Upto 128 GB<br></li><li>5 inch HD Display<br></li><li>8MP Primary Camera | 5MP Front<br></li><li>2600 mAh Li-Ion Battery<br></li><li>Exynos 3475 Processor<br></li></ul>','samsung-galaxy-on7-sm-1.jpeg','samsung-galaxy-on5-sm-2.jpeg','samsung-galaxy-on5-sm-3.jpeg',20,'In Stock','2017-02-04 04:10:17',''),(8,4,4,'OPPO A57','OPPO',14990,0,'<ul><li>3 GB RAM | 32 GB ROM | Expandable Upto 256 GB<br></li><li>5.2 inch HD Display<br></li><li>13MP Primary Camera | 16MP Front<br></li><li>2900 mAh Battery<br></li><li>Qualcomm MSM8940 64-bit Processor<br></li></ul>','oppo-a57-na-original-1.jpeg','oppo-a57-na-original-2.jpeg','oppo-a57-na-original-3.jpeg',0,'In Stock','2017-02-04 04:11:54',''),(9,4,5,'Affix Back Cover for Mi Redmi Note 4','Techguru',259,0,'<ul><li>Suitable For: Mobile<br></li><li>Material: Polyurethane<br></li><li>Theme: No Theme<br></li><li>Type: Back Cover<br></li><li>Waterproof<br></li></ul>','amzer-amz98947-original-1.jpeg','amzer-amz98947-original-2.jpeg','amzer-amz98947-original-3.jpeg',10,'In Stock','2017-02-04 04:17:03',''),(11,4,6,'Acer ES 15 Pentium Quad Core','Acer',19990,0,'<ul><li>Intel Pentium Quad Core Processor ( )<br></li><li>4 GB DDR3 RAM<br></li><li>Linux/Ubuntu Operating System<br></li><li>1 TB HDD<br></li><li>15.6 inch Display<br></li></ul>','acer-aspire-notebook-original-1.jpeg','acer-aspire-notebook-original-2.jpeg','acer-aspire-notebook-original-3.jpeg',0,'In Stock','2017-02-04 04:26:17',''),(12,4,6,'Micromax Canvas Laptab II (WIFI) Atom 4th Gen','Micromax',10999,0,'<ul><li>Intel Atom Processor ( 4th Gen )<br></li><li>2 GB DDR3 RAM<br></li><li>32 bit Windows 10 Operating System<br></li><li>11.6 inch Touchscreen Display<br></li></ul>','micromax-lt777w-2-in-1-laptop-original-1.jpeg','micromax-lt777w-2-in-1-laptop-original-2.jpeg','micromax-lt777w-2-in-1-laptop-original-3.jpeg',0,'In Stock','2017-02-04 04:28:17',''),(13,4,6,'HP Core i5 5th Gen','HP',41990,0,'<span style=\"color: rgb(33, 33, 33); font-family: Roboto, Arial, sans-serif; font-size: 18px;\">HP Core i5 5th Gen - (4 GB/1 TB HDD/Windows 10 Home/2 GB Graphics) N8M28PA 15-ac123tx Notebook</span><span style=\"color: rgb(33, 33, 33); font-family: Roboto, Arial, sans-serif; font-size: 18px;\">&nbsp;&nbsp;(15.6 inch, Turbo SIlver, 2.19 kg)</span><br><div><ul><li>Intel Core i5 Processor ( 5th Gen )<br></li><li>4 GB DDR3 RAM<br></li><li>64 bit Windows 10 Operating System<br></li><li>1 TB HDD<br></li><li>15.6 inch Display<br></li></ul></div>','hp-notebook-original-1.jpeg','hp-notebook-original-2.jpeg','hp-notebook-original-3.jpeg',0,'In Stock','2017-02-04 04:30:24',''),(14,4,6,'Lenovo Ideapad 110 APU Quad Core A6 6th Gen','Lenovo',22990,0,'<span style=\"color: rgb(33, 33, 33); font-family: Roboto, Arial, sans-serif; font-size: 18px;\">Lenovo Ideapad 110 APU Quad Core A6 6th Gen - (4 GB/500 GB HDD/Windows 10 Home) 80TJ00D2IH IP110 15ACL Notebook</span><span style=\"color: rgb(33, 33, 33); font-family: Roboto, Arial, sans-serif; font-size: 18px;\">&nbsp;&nbsp;(15.6 inch, Black, 2.2 kg)</span><br><div><ul><li>AMD APU Quad Core A6 Processor ( 6th Gen )<br></li><li>4 GB DDR3 RAM<br></li><li>64 bit Windows 10 Operating System<br></li><li>500 GB HDD<br></li><li>15.6 inch Display<br></li></ul></div>','lenovo-ideapad-notebook-original-1.jpeg','lenovo-ideapad-notebook-original-2.jpeg','lenovo-ideapad-notebook-3.jpeg',0,'In Stock','2017-02-04 04:32:15',''),(15,3,8,'The Wimpy Kid Do -It- Yourself Book','ABC',205,250,'<span style=\"color: rgb(33, 33, 33); font-family: Roboto, Arial, sans-serif; font-size: 18px;\">The Wimpy Kid Do -It- Yourself Book</span><span style=\"color: rgb(33, 33, 33); font-family: Roboto, Arial, sans-serif; font-size: 18px;\">&nbsp;&nbsp;(English, Paperback, Jeff Kinney)</span><br><div><ul><li>Language: English<br></li><li>Binding: Paperback<br></li><li>Publisher: Penguin Books Ltd<br></li><li>ISBN: 9780141339665, 0141339667<br></li><li>Edition: 1<br></li></ul></div>','diary-of-a-wimpy-kid-do-it-yourself-book-original-1.jpeg','diary-of-a-wimpy-kid-do-it-yourself-book-original-1.jpeg','diary-of-a-wimpy-kid-do-it-yourself-book-original-1.jpeg',50,'In Stock','2017-02-04 04:35:13',''),(16,3,8,'Thea Stilton and the Tropical Treasure ','XYZ',240,0,'<ul><li>Language: English<br></li><li>Binding: Paperback<br></li><li>Publisher: Scholastic<br></li><li>ISBN: 9789351032083, 9351032086<br></li><li>Edition: 2015<br></li><li>Pages: 176<br></li></ul>','22-thea-stilton-and-the-tropical-treasure-original-1.jpeg','22-thea-stilton-and-the-tropical-treasure-original-1.jpeg','22-thea-stilton-and-the-tropical-treasure-original-1.jpeg',30,'In Stock','2017-02-04 04:36:23',''),(17,5,9,'Induscraft Solid Wood King Bed With Storage','Induscraft',32566,0,'<span style=\"color: rgb(33, 33, 33); font-family: Roboto, Arial, sans-serif; font-size: 18px;\">Induscraft Solid Wood King Bed With Storage</span><span style=\"color: rgb(33, 33, 33); font-family: Roboto, Arial, sans-serif; font-size: 18px;\">&nbsp;&nbsp;(Finish Color - Honey Brown)</span><br><div><ul><li>Material Subtype: Rosewood (Sheesham)<br></li><li>W x H x D: 1850 mm x 875 mm x 2057.5 mm<br></li><li>Floor Clearance: 8 mm<br></li><li>Delivery Condition: Knock Down<br></li></ul></div>','inaf245-queen-rosewood-sheesham-induscraft-na-honey-brown-original-1.jpeg','inaf245-queen-rosewood-sheesham-induscraft-na-honey-brown-original-2.jpeg','inaf245-queen-rosewood-sheesham-induscraft-na-honey-brown-original-3.jpeg',0,'In Stock','2017-02-04 04:40:37',''),(18,5,10,'Nilkamal Ursa Metal Queen Bed','Nilkamal',6523,0,'<span style=\"color: rgb(33, 33, 33); font-family: Roboto, Arial, sans-serif; font-size: 18px;\">@home by Nilkamal Ursa Metal Queen Bed</span><span style=\"color: rgb(33, 33, 33); font-family: Roboto, Arial, sans-serif; font-size: 18px;\">&nbsp;&nbsp;(Finish Color - NA)</span><br><div><ul><li>Material Subtype: Carbon Steel<br></li><li>W x H x D: 1590 mm x 910 mm x 2070 mm<br></li><li>Floor Clearance: 341 mm<br></li><li>Delivery Condition: Knock Down<br></li></ul></div>','flbdorsabrqbblk-queen-carbon-steel-home-by-nilkamal-na-na-original-1.jpeg','flbdorsabrqbblk-queen-carbon-steel-home-by-nilkamal-na-na-original-2.jpeg','flbdorsabrqbblk-queen-carbon-steel-home-by-nilkamal-na-na-original-3.jpeg',0,'In Stock','2017-02-04 04:42:27',''),(19,6,12,'Asian Casuals  (White, White)','Asian',379,0,'<ul style=\"box-sizing: border-box; margin-bottom: 0px; margin-left: 0px; color: rgb(33, 33, 33); font-family: Roboto, Arial, sans-serif; font-size: 14px;\"><li class=\"_2-riNZ\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 8px 16px; list-style: none; position: relative;\">Colour: White, White</li><li class=\"_2-riNZ\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 0px 16px; list-style: none; position: relative;\">Outer Material: Denim</li><li class=\"_1KuY3T row\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 16px; list-style: none; display: flex; flex-flow: row wrap; width: 731px;\"><div class=\"vmXPri col col-3-12\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 8px 0px 0px; width: 182.75px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\"><br></div></li></ul>','1.jpeg','2.jpeg','3.jpeg',45,'In Stock','2017-03-10 20:16:03',''),(20,6,12,'Adidas MESSI 16.3 TF Football turf Shoes  (Blue)','Adidas',4129,5000,'<ul style=\"box-sizing: border-box; margin-bottom: 0px; margin-left: 0px; color: rgb(33, 33, 33); font-family: Roboto, Arial, sans-serif; font-size: 14px;\"><li class=\"_2-riNZ\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 8px 16px; list-style: none; position: relative;\">Colour: Blue</li><li class=\"_2-riNZ\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 0px 16px; list-style: none; position: relative;\">Closure: Laced</li><li class=\"_1KuY3T row\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 16px; list-style: none; display: flex; flex-flow: row wrap; width: 731px;\"><div class=\"vmXPri col col-3-12\" style=\"text-align: left; box-sizing: border-box; margin: 0px; padding: 0px 8px 0px 0px; width: 182.75px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\"><b>Weight</b></div><ul class=\"_3dG3ix col col-9-12\" style=\"box-sizing: border-box; margin-left: 0px; width: 548.25px; display: inline-block; vertical-align: top; line-height: 1.4;\"><li class=\"sNqDog\" style=\"text-align: left; box-sizing: border-box; margin: 0px; padding: 0px; list-style: none;\"><b>200 g (per single Shoe) - Weight of the product may vary depending on size.</b></li></ul></li><li class=\"_1KuY3T row\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 16px; list-style: none; display: flex; flex-flow: row wrap; width: 731px;\"><div class=\"vmXPri col col-3-12\" style=\"text-align: left; box-sizing: border-box; margin: 0px; padding: 0px 8px 0px 0px; width: 182.75px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\"><b>Style</b></div><ul class=\"_3dG3ix col col-9-12\" style=\"box-sizing: border-box; margin-left: 0px; width: 548.25px; display: inline-block; vertical-align: top; line-height: 1.4;\"><li class=\"sNqDog\" style=\"text-align: left; box-sizing: border-box; margin: 0px; padding: 0px; list-style: none;\"><b>Panel and Stitch Detail, Textured Detail</b></li></ul></li><li class=\"_1KuY3T row\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 16px; list-style: none; display: flex; flex-flow: row wrap; width: 731px;\"><div class=\"vmXPri col col-3-12\" style=\"text-align: left; box-sizing: border-box; margin: 0px; padding: 0px 8px 0px 0px; width: 182.75px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\"><b>Tip Shape</b></div><ul class=\"_3dG3ix col col-9-12\" style=\"box-sizing: border-box; margin-left: 0px; width: 548.25px; display: inline-block; vertical-align: top; line-height: 1.4;\"><li class=\"sNqDog\" style=\"text-align: left; box-sizing: border-box; margin: 0px; padding: 0px; list-style: none;\"><b>Round</b></li></ul></li><li class=\"_1KuY3T row\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 16px; list-style: none; display: flex; flex-flow: row wrap; width: 731px;\"><div class=\"vmXPri col col-3-12\" style=\"text-align: left; box-sizing: border-box; margin: 0px; padding: 0px 8px 0px 0px; width: 182.75px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\"><b>Season</b></div><ul class=\"_3dG3ix col col-9-12\" style=\"box-sizing: border-box; margin-left: 0px; width: 548.25px; display: inline-block; vertical-align: top; line-height: 1.4;\"><li class=\"sNqDog\" style=\"text-align: left; box-sizing: border-box; margin: 0px; padding: 0px; list-style: none;\"><b>AW16</b></li></ul></li><li class=\"_1KuY3T row\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; list-style: none; display: flex; flex-flow: row wrap; width: 731px;\"><div class=\"vmXPri col col-3-12\" style=\"text-align: left; box-sizing: border-box; margin: 0px; padding: 0px 8px 0px 0px; width: 182.75px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\"><b>Closure</b></div><ul class=\"_3dG3ix col col-9-12\" style=\"box-sizing: border-box; margin-left: 0px; width: 548.25px; display: inline-block; vertical-align: top; line-height: 1.4;\"><li class=\"sNqDog\" style=\"text-align: left; box-sizing: border-box; margin: 0px; padding: 0px; list-style: none;\"><b>Laced</b></li></ul></li></ul>','1.jpeg','2.jpeg','3.jpeg',0,'In Stock','2017-03-10 20:19:22',''),(21,7,13,'BMW i7','BMW USA',189000,199000,'<ol><li>Designed with next-level style and substance<br></li><li>The expressive aesthetic and latest technology<br></li><li>Offers tailored solutions for both home and public charging<br></li><li>Make a striking impression everywhere you go with the refined<br></li></ol>												','bmw-i7-6-3100197498.jpg','bmw-i7-6-1402866829.jpg','bmw-i7-electric-with-range-of-nearly-400-miles-in-the-works-609398236.jpg',100,'In Stock','2023-01-06 11:23:23',NULL);
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `subcategory`
--

DROP TABLE IF EXISTS `subcategory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `subcategory` (
  `id` int NOT NULL AUTO_INCREMENT,
  `categoryid` int DEFAULT NULL,
  `subcategory` varchar(255) DEFAULT NULL,
  `creationDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updationDate` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `subcategory`
--

LOCK TABLES `subcategory` WRITE;
/*!40000 ALTER TABLE `subcategory` DISABLE KEYS */;
INSERT INTO `subcategory` VALUES (2,4,'Led Television','2017-01-26 16:24:52','26-01-2017 11:03:40 PM'),(3,4,'Television','2017-01-26 16:29:09',''),(4,4,'Mobiles','2017-01-30 16:55:48',''),(5,4,'Mobile Accessories','2017-02-04 04:12:40',''),(6,4,'Laptops','2017-02-04 04:13:00',''),(7,4,'Computers','2017-02-04 04:13:27',''),(8,3,'Comics','2017-02-04 04:13:54',''),(9,5,'Beds','2017-02-04 04:36:45',''),(10,5,'Sofas','2017-02-04 04:37:02',''),(11,5,'Dining Tables','2017-02-04 04:37:51',''),(12,6,'Men Footwears','2017-03-10 20:12:59',''),(13,7,'BMW','2023-01-06 11:15:37',NULL),(14,7,'Mercedes','2023-01-06 11:16:27','06-01-2023 04:46:42 PM');
/*!40000 ALTER TABLE `subcategory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `contactno` bigint DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `shippingAddress` longtext,
  `shippingState` varchar(255) DEFAULT NULL,
  `shippingCity` varchar(255) DEFAULT NULL,
  `regDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updationDate` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (4,'hai phong','phd@gmail.com',999999999,'202cb962ac59075b964b07152d234b70','ha noi','ha noi','ha noi','2023-01-01 04:09:11','05-01-2023 07:13:45 PM'),(15,'test','test@gmail.com',9009857869,'098f6bcd4621d373cade4e832627b4f6','test','test','test','2023-01-05 09:36:45',NULL),(16,'test1','test1@gmail.com',9009857868,'098f6bcd4621d373cade4e832627b4f6','test','test','test','2023-01-05 09:37:17',NULL),(17,'test2','test2@gmail.com',9009857861,'098f6bcd4621d373cade4e832627b4f6','test','test','test','2023-01-05 09:47:04',NULL),(18,'test3','test3@gmail.com',9009857864,'098f6bcd4621d373cade4e832627b4f6','test','test','test','2023-01-05 09:48:05',NULL);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wishlist`
--

DROP TABLE IF EXISTS `wishlist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wishlist` (
  `id` int NOT NULL AUTO_INCREMENT,
  `userId` int DEFAULT NULL,
  `productId` int DEFAULT NULL,
  `postingDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wishlist`
--

LOCK TABLES `wishlist` WRITE;
/*!40000 ALTER TABLE `wishlist` DISABLE KEYS */;
INSERT INTO `wishlist` VALUES (1,1,0,'2017-02-27 18:53:17'),(2,4,2,'2023-01-01 04:11:05'),(5,1,6,'2023-01-03 03:50:27');
/*!40000 ALTER TABLE `wishlist` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-01-06 19:24:14
