CREATE DATABASE  IF NOT EXISTS `videospelu_sacensibas` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `videospelu_sacensibas`;
-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: localhost    Database: videospelu_sacensibas
-- ------------------------------------------------------
-- Server version	8.2.0

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
-- Table structure for table `dalibnieki`
--

DROP TABLE IF EXISTS `dalibnieki`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dalibnieki` (
  `id_dalibnieki` int NOT NULL AUTO_INCREMENT,
  `vards` varchar(45) DEFAULT NULL,
  `uzvards` varchar(45) DEFAULT NULL,
  `lietotajvards` varchar(15) DEFAULT NULL,
  `epasts` varchar(45) DEFAULT NULL,
  `talrunaNr` varchar(13) DEFAULT NULL,
  `dzimsanasGads` year DEFAULT NULL,
  PRIMARY KEY (`id_dalibnieki`),
  UNIQUE KEY `talrunaNr_UNIQUE` (`talrunaNr`),
  UNIQUE KEY `epasts_UNIQUE` (`epasts`),
  UNIQUE KEY `lietotajvards_UNIQUE` (`lietotajvards`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='Dati par visiem dalibniekiem.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dalibnieki`
--

LOCK TABLES `dalibnieki` WRITE;
/*!40000 ALTER TABLE `dalibnieki` DISABLE KEYS */;
INSERT INTO `dalibnieki` VALUES (1,'Kārlis','Svilpis','karlix','karlos@gmail.com','+371 24567689',2002),(2,'Māris','Lapsis','maris98','lapsis99@inbox.lv','+371 24252323',2005),(3,'Aivars','Bergmanis','aivishhh','aiversberg@gmail.com','+371 27282929',1999),(4,'Ričards','Smiglstiņš','richijs78','ricards@inbox.lv','+371 28205234',2007),(5,'Ennija','Laiviniece','lauvene','ennax10@inbox.lv','+371 29292768',2006),(6,'Laura','Muižniece','skarbaa','lauram@inbox.lv','+371 28201987',2002),(7,'Jānis','Skaļums','skalaiiss','jankels@gmail.com','+371 28907452',2000),(8,'Aksels','Svaigais','svaigumish','akselsss@gmail.com','+371 27256532',2004),(9,'Mareks','Jaukais','marixsss','mareksJ@inbox.lv','+371 23907867',2003),(10,'Inita','Egle','initux','initaegle@gmail.com','+371 21232124',1998),(11,'Estere','Zeltiņa','zeltiks','eshuksz@inbox.lv','+371 23890877',2003),(12,'Aivars','Domino','dominiko','aivarssss@inbox.lv','+371 24234455',2002),(13,'Nellija','Pagale','nellux99','nellija@inbox.lv','+371 27878989',2002),(14,'Silvija','Lapsa','lapsina','silvuks@gmail.com','+371 23287809',1999),(15,'Dāvis','Darbinieks','meistars90','davisstr@gmail.com','+371 21212321',2004),(16,'Laima','Siltuma','siltums12','laimasss@inbox.lv','+371 28205210',2001),(17,'Oskars','Rasnačs','rasiks420','oskarsrasnacs@venta.lv','+371 29008765',1995),(18,'Zigmārs','Priede','zigiiits','zigis99@gmail.com','+371 23556675',1998),(19,'Lāsma','Lēruma','lasiits1','lasmina@venta.lv','+371 23442211',2002),(20,'Zane','Kalniņa','zanukishhh','zeneks@venta.lv','+371 22627666',2004),(21,'Gunita','Zīlīte','ziluks','gunita2003@gmaill.com','+371 22990088',2003),(22,'Klāvs','Trepnieks','trepish','trepnieksklavs@venta.lv','+371 25953656',1998),(23,'Salvijs','Garais','melnais98','garaissalvis@gmail.com','+371 23447867',2001),(24,'Maikls','Mākslīgais','real_g','maikls1998@venta.lv','+371 22546789',1998),(25,'Andris','Lomiks','tasesandris','andrisL@inbox.lv','+371 22453211',2004),(26,'Kārlis','Zemnieks','skarbais','karlisz12@gmail.com','+371 29090808',2006),(27,'Mārtiņš','Rītiņš','trifel','martinssss@inbox.lv','+371 28888876',1997),(28,'Kirils','Driganenko','pirmais_111','kirilsdrigi@venta.lv','+371 29275590',2001),(29,'Juris','Āpse','apsenieks','apsejuris@venta.lv','+371 23889099',2003),(30,'Kārlis','Kreisais','karlix_17','kreisaiskarlis@gmail.com','+371 22900912',2005);
/*!40000 ALTER TABLE `dalibnieki` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rezultati`
--

DROP TABLE IF EXISTS `rezultati`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `rezultati` (
  `id_rezultati` int NOT NULL AUTO_INCREMENT,
  `id_sacensibas` int NOT NULL,
  `id_dalibnieki` int NOT NULL,
  `vieta` int DEFAULT NULL,
  `uzslavas` varchar(250) DEFAULT NULL,
  `punkti` int DEFAULT NULL,
  PRIMARY KEY (`id_rezultati`),
  KEY `id_sacensibas_idx` (`id_sacensibas`),
  KEY `id_dalibnieki_idx` (`id_dalibnieki`),
  CONSTRAINT `id_dalibnieki` FOREIGN KEY (`id_dalibnieki`) REFERENCES `dalibnieki` (`id_dalibnieki`),
  CONSTRAINT `id_sacensibas` FOREIGN KEY (`id_sacensibas`) REFERENCES `sacensibas` (`id_sacensibas`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='Tabula, kas satur sacensibu rezultatus.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rezultati`
--

LOCK TABLES `rezultati` WRITE;
/*!40000 ALTER TABLE `rezultati` DISABLE KEYS */;
INSERT INTO `rezultati` VALUES (1,1,13,1,'Maksimālie punkti!',20),(2,1,19,2,NULL,17),(3,1,21,3,NULL,15),(4,1,5,NULL,'Vissātrākais laiks!',12),(5,2,14,1,NULL,20),(6,2,15,2,NULL,17),(7,2,30,3,NULL,15),(8,3,1,1,NULL,20),(9,3,29,2,NULL,19),(10,3,7,3,NULL,16),(11,3,11,NULL,'Kreatīvākais spēlētājs!',13),(12,4,2,1,'Vissaugstākie punkti!',20),(13,4,4,2,NULL,14),(14,4,17,3,NULL,13),(15,5,26,1,NULL,19),(16,5,12,2,NULL,18),(17,5,14,3,NULL,17),(18,6,13,1,NULL,20),(19,6,15,2,NULL,19),(20,6,3,3,NULL,17),(21,6,28,NULL,'Braucējs ar stilu!',14),(22,7,4,1,'Īsts Riekstkodis!',20),(23,7,7,2,NULL,16),(24,7,23,3,NULL,15);
/*!40000 ALTER TABLE `rezultati` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sacensibas`
--

DROP TABLE IF EXISTS `sacensibas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sacensibas` (
  `id_sacensibas` int NOT NULL AUTO_INCREMENT,
  `id_speles` int NOT NULL,
  `id_vaditajs` int NOT NULL,
  `id_zurija` int NOT NULL,
  `sakums` datetime DEFAULT NULL,
  `beigas` datetime DEFAULT NULL,
  `nosaukums` varchar(60) DEFAULT NULL,
  PRIMARY KEY (`id_sacensibas`),
  KEY `id_speles_idx` (`id_speles`),
  KEY `id_vaditajs_idx` (`id_vaditajs`),
  KEY `id_zurija_idx` (`id_zurija`),
  CONSTRAINT `id_speles` FOREIGN KEY (`id_speles`) REFERENCES `speles` (`id_speles`),
  CONSTRAINT `id_vaditajs` FOREIGN KEY (`id_vaditajs`) REFERENCES `vaditajs` (`id_vaditajs`),
  CONSTRAINT `id_zurija` FOREIGN KEY (`id_zurija`) REFERENCES `zurija` (`id_zurija`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='informacija par sacensibu norisi';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sacensibas`
--

LOCK TABLES `sacensibas` WRITE;
/*!40000 ALTER TABLE `sacensibas` DISABLE KEYS */;
INSERT INTO `sacensibas` VALUES (1,1,7,8,'2024-01-13 09:00:00','2024-01-13 11:00:00','OG Mario'),(2,2,6,1,'2024-01-13 11:00:00','2024-01-13 13:00:00','Šāviens Komandā'),(3,3,2,2,'2024-01-13 13:00:00','2024-01-13 15:00:00','Šauj un Būvē'),(4,4,4,9,'2024-01-13 15:00:00','2024-01-13 17:00:00','Klasisks Futbols'),(5,5,3,4,'2024-01-13 17:00:00','2024-01-13 19:00:00','Klasisks Basketbols'),(6,6,5,3,'2024-01-13 19:00:00','2024-01-13 21:00:00','Bīstami Ātri'),(7,7,1,10,'2024-01-13 21:00:00','2024-01-13 23:00:00','Portāla Mistika');
/*!40000 ALTER TABLE `sacensibas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `speles`
--

DROP TABLE IF EXISTS `speles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `speles` (
  `id_speles` int NOT NULL AUTO_INCREMENT,
  `nosaukums` varchar(60) DEFAULT NULL,
  `zanrs` varchar(30) DEFAULT NULL,
  `izlaisanasGads` year DEFAULT NULL,
  PRIMARY KEY (`id_speles`),
  UNIQUE KEY `nosaukums_UNIQUE` (`nosaukums`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='Informācija par spēlēm kurās tiks rīkotas sacensības.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `speles`
--

LOCK TABLES `speles` WRITE;
/*!40000 ALTER TABLE `speles` DISABLE KEYS */;
INSERT INTO `speles` VALUES (1,'Mario','Retro',1985),(2,'CS:GO','Action',2012),(3,'Fortnite','Action',2017),(4,'Fifa 23','Sports',2022),(5,'NBA 2k23','Sports',2022),(6,'NFS Most Wanted','Racing',2012),(7,'Portal 2','Puzzle',2011);
/*!40000 ALTER TABLE `speles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vaditajs`
--

DROP TABLE IF EXISTS `vaditajs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `vaditajs` (
  `id_vaditajs` int NOT NULL AUTO_INCREMENT,
  `vards` varchar(45) DEFAULT NULL,
  `uzvards` varchar(45) DEFAULT NULL,
  `epasts` varchar(45) DEFAULT NULL,
  `talrunaNr` varchar(13) DEFAULT NULL,
  PRIMARY KEY (`id_vaditajs`),
  UNIQUE KEY `epasts_UNIQUE` (`epasts`),
  UNIQUE KEY `talrunaNr_UNIQUE` (`talrunaNr`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='cilveki kas vadis speli';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vaditajs`
--

LOCK TABLES `vaditajs` WRITE;
/*!40000 ALTER TABLE `vaditajs` DISABLE KEYS */;
INSERT INTO `vaditajs` VALUES (1,'Aivars','Kurmis','aivars98@gmail.com','+371 28290456'),(2,'Renārs','Zeltiņs','zeltix@inbox.lv','+371 27694200'),(3,'Ivo','Fomins','fominsIvo@gmail.com','+371 20080098'),(4,'Alekss','Asaris','asarisalekss@gmail.com','+371 27778881'),(5,'Oskars','Lielais','lielaiso@inbox.lv','+371 28880912'),(6,'Sergejs','Mihailovs','mihailovss@gmail.com','+371 22666543'),(7,'Sandis','Gratis','gratissandis@inbox.lv','+371 29997762');
/*!40000 ALTER TABLE `vaditajs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zurija`
--

DROP TABLE IF EXISTS `zurija`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `zurija` (
  `id_zurija` int NOT NULL AUTO_INCREMENT,
  `vards` varchar(45) DEFAULT NULL,
  `uzvards` varchar(45) DEFAULT NULL,
  `epasts` varchar(45) DEFAULT NULL,
  `talrunaNr` varchar(13) DEFAULT NULL,
  PRIMARY KEY (`id_zurija`),
  UNIQUE KEY `epasts_UNIQUE` (`epasts`),
  UNIQUE KEY `talrunaNr_UNIQUE` (`talrunaNr`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='zurija, kas vertes speles gaitu';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zurija`
--

LOCK TABLES `zurija` WRITE;
/*!40000 ALTER TABLE `zurija` DISABLE KEYS */;
INSERT INTO `zurija` VALUES (1,'Igors','Pelmenis','igoriks@gmail.com','+371 24567876'),(2,'Evija','Skandāle','skandale@inbox.lv','+371 24455661'),(3,'Sergejs','Semjonovs','semjonovs@inbox.lv','+371 29988871'),(4,'Selīcija','Upīte','upiiteselicija@gmail.com','+371 27789900'),(5,'Andris','Ivanovs','ivanovs33@inbox.lv','+371 26562122'),(6,'Dāvids','Cīkstonis','cikstonisdavids@gmail.com','+371 27785531'),(7,'Gatis','Līksminieks','liksminieks@gmail.com','+371 24242411'),(8,'Anda','Krūmiņa','krumina@gmail.com','+371 29993456'),(9,'Sarmīte','Lodziņa','odzinaa@gmail.com','+371 23399909'),(10,'Aigars','Smiltiņš','aigars999@inbox.lv','+371 22228888');
/*!40000 ALTER TABLE `zurija` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-01-17 16:31:33
