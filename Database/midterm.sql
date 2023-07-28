CREATE DATABASE  IF NOT EXISTS `midterm` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `midterm`;
-- MySQL dump 10.13  Distrib 8.0.33, for Win64 (x86_64)
--
-- Host: localhost    Database: midterm
-- ------------------------------------------------------
-- Server version	8.0.33

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
-- Table structure for table `comments`
--

DROP TABLE IF EXISTS `comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `comments` (
  `id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(64) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `video_id` int NOT NULL,
  `comment` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `video_id_idx` (`video_id`),
  CONSTRAINT `video_id` FOREIGN KEY (`video_id`) REFERENCES `video_thumbnail` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comments`
--

LOCK TABLES `comments` WRITE;
/*!40000 ALTER TABLE `comments` DISABLE KEYS */;
INSERT INTO `comments` VALUES (1,'asd','2023-07-28 02:23:06',1,'asd'),(2,'asd','2023-07-28 02:23:34',1,'asdasd'),(3,'asdasd','2023-07-28 02:52:54',1,'asdasd'),(4,'Muhammad Rizqi Asshidiiq','2023-07-28 03:11:26',2,'Wah keren sekali!');
/*!40000 ALTER TABLE `comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_list`
--

DROP TABLE IF EXISTS `product_list`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product_list` (
  `id` int NOT NULL AUTO_INCREMENT,
  `link_product` text NOT NULL,
  `title` varchar(255) NOT NULL,
  `price` int NOT NULL,
  `product_img` text NOT NULL,
  `product_video_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `product_video_id_idx` (`product_video_id`),
  CONSTRAINT `product_video_id` FOREIGN KEY (`product_video_id`) REFERENCES `video_thumbnail` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_list`
--

LOCK TABLES `product_list` WRITE;
/*!40000 ALTER TABLE `product_list` DISABLE KEYS */;
INSERT INTO `product_list` VALUES (1,'https://tokopedia.link/y7Bgvsv7MBb','Shockbreaker RX King',500000,'https://images.tokopedia.net/img/cache/900/product-1/2019/3/19/318538828/318538828_2f02413d-b021-4d70-9656-2e216bf7291c_1512_1512.jpg',1),(2,'https://tokopedia.link/SlApz0pbNBb','LIVEHAF - Trucker Canvas Jacket Milo - L',169900,'https://images.tokopedia.net/img/cache/900/VqbcmM/2023/4/27/aa102a19-1fae-4c73-a402-2008aefc4bb0.jpg',2),(3,'https://tokopedia.link/nuAzBtvbNBb','Livehaf - Bory Jacket Black - XL',149000,'https://images.tokopedia.net/img/cache/900/hDjmkQ/2023/3/21/7073641f-b2ce-48fb-9b1a-0ab955d65a08.jpg',2),(4,'https://tokopedia.link/xzIBT0xbNBb','Livehaf - Siziry Jacket Olive - M',149000,'https://images.tokopedia.net/img/cache/900/hDjmkQ/2023/3/21/86bc44c7-d387-420f-b8c5-77bb025be12c.jpg',2),(11,'https://tokopedia.link/T7kyzOJbNBb','Helm Nolan N44 Classic Glossy black',5060000,'https://images.tokopedia.net/img/cache/900/VqbcmM/2023/1/12/fe41535a-0116-4cc6-b01a-59f631d30ee5.jpg',3),(12,'https://tokopedia.link/kzTHMBicNBb','BAN BIGBIKE PIRELLI DIABLO SUPERCORSA UK 120/70ZR17 DAN 180/55ZR17 SC2',6920000,'https://images.tokopedia.net/img/cache/900/VqbcmM/2021/4/7/4a5846f9-b42e-45b0-a376-361872b1ccdd.jpg',3),(13,'https://tokopedia.link/0gqiQbocNBb','PS4 The Last of Us Part II - TLoU 2 - Region 2 Europe',274000,'https://images.tokopedia.net/img/cache/900/VqbcmM/2022/2/25/31b517ac-df32-4f42-a39d-4e0b1a4fcc10.jpg',4),(14,'https://tokopedia.link/J0iAiXqcNBb','PS 5 / PS5 / Sony Playstation 5 (Disc Version) Region JAPAN Grs 1TH',7178000,'https://images.tokopedia.net/img/cache/900/VqbcmM/2022/4/3/7f62bc2b-0815-4c69-8437-4580d29c6ad4.jpg',4),(15,'https://tokopedia.link/0w30bOucNBb','Buku Sebuah Seni Untuk Bersikap Bodo Amat (edisi Handy) oleh Mark Mans',74100,'https://images.tokopedia.net/img/cache/900/hDjmkQ/2022/5/12/21e58a74-027f-453c-a6ab-3ddad717a05a.jpg',5),(16,'https://tokopedia.link/Ue0hRIzcNBb','Lacoste Kacamata Unisex F LA L2864A 315 51',1684000,'https://images.tokopedia.net/img/cache/900/hDjmkQ/2023/7/26/9f72bc22-0285-4ad2-a4c9-198a45645069.jpg',6),(17,'https://images.tokopedia.net/img/cache/900/hDjmkQ/2023/7/26/21dfe3b7-7b08-4fc5-ab7a-5c75cf36b675.png','Marc Jacobs Kacamata Wanita F MY 540 ZX9 53',2014000,'https://images.tokopedia.net/img/cache/900/hDjmkQ/2023/7/26/21dfe3b7-7b08-4fc5-ab7a-5c75cf36b675.png',6),(18,'https://images.tokopedia.net/img/cache/900/VqbcmM/2023/7/22/b9954e00-4bce-4706-8eac-9e97606f7dd3.jpg','TRAXXAS TRX-4 2021 FORD BRONCO RTR 1/10 4WD ADVENTURE ROCK CRAWLER RED',11750000,'https://tokopedia.link/VaFzG6XcNBb',7),(19,'https://images.tokopedia.net/img/cache/900/VqbcmM/2023/2/3/8a97408f-b90c-478e-8a8e-5b612239b643.jpg','ISKU 187 Tool Kit Set Kunci Sok Set Shocket Set CR-V Toolkit Lengkap',1090000,'https://tokopedia.link/mzJYbFLcNBb',8);
/*!40000 ALTER TABLE `product_list` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `video_thumbnail`
--

DROP TABLE IF EXISTS `video_thumbnail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `video_thumbnail` (
  `id` int NOT NULL AUTO_INCREMENT,
  `url` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `video_thumbnail`
--

LOCK TABLES `video_thumbnail` WRITE;
/*!40000 ALTER TABLE `video_thumbnail` DISABLE KEYS */;
INSERT INTO `video_thumbnail` VALUES (1,'https://wallpapers.com/images/hd/classic-black-harley-davidson-motorcycle-mobile-pv7l3xy3j8v7amde.jpg'),(2,'https://image.winudf.com/v2/image/Y29tLmJyYW5kb25hcHBzLmZhc2hpb25fc2NyZWVuXzRfMTUxNTc0Mjk2OF8wNzY/screen-4.webp?fakeurl=1&type=.webp'),(3,'https://i.pinimg.com/236x/65/d6/a8/65d6a87787d53ef9a444bd9856e2543e.jpg'),(4,'data:image/jpeg;base64,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'),(5,'https://wallpapercave.com/wp/wp5580037.jpg'),(6,'https://w.forfun.com/fetch/de/de1d8fff5787aa51348c928df8a260c9.jpeg'),(7,'https://wallpapers.com/images/hd/rc-car-yw203bzl8w32xa2t.jpg'),(8,'https://i.pinimg.com/originals/b0/df/4d/b0df4dedbf1fbdb8f6bc5f6929a7a749.jpg');
/*!40000 ALTER TABLE `video_thumbnail` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-07-28 11:19:02
