-- MySQL dump 10.13  Distrib 8.0.31, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: veterinaria
-- ------------------------------------------------------
-- Server version	8.0.30

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
CREATE DATABASE veterinaria;
--
-- Table structure for table `card`
--

DROP TABLE IF EXISTS `card`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `card` (
  `id_card` int NOT NULL AUTO_INCREMENT,
  `id_masc` int NOT NULL,
  `fecha_nacimiento` date DEFAULT NULL,
  `fecha_vacunacion` date DEFAULT NULL,
  `proxima_fecha` date DEFAULT NULL,
  `tipo_vacuna` varchar(15) DEFAULT NULL,
  `name_vet` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id_card`),
  KEY `id_masc` (`id_masc`),
  CONSTRAINT `card_ibfk_1` FOREIGN KEY (`id_masc`) REFERENCES `mascotas` (`id_masc`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `card`
--

LOCK TABLES `card` WRITE;
/*!40000 ALTER TABLE `card` DISABLE KEYS */;
INSERT INTO `card` VALUES (1,1,'2003-03-21','2003-05-21','2003-08-21','Contra Dist.','Salvando pattas'),(2,2,'2010-03-20','2010-06-20','2010-09-20','Cont. Parvi.','Sonrisa canina'),(3,4,'2010-05-15','2010-08-15','2010-12-15','Cont. hepati.','Salvador'),(4,5,'2011-03-12','2011-05-12','2011-10-12','Cont. leptos.','Patitas'),(5,6,'2013-05-20','2015-08-20','2015-12-20','Cont. rabia','Caninos'),(6,7,'2016-08-20','2020-12-20','2020-01-21','Cont. Distem.','Cachorros'),(7,8,'2015-10-17','2015-01-18','2015-05-18','Cont. rabia','Salvando pattas');
/*!40000 ALTER TABLE `card` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mascotas`
--

DROP TABLE IF EXISTS `mascotas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mascotas` (
  `id_masc` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(25) DEFAULT NULL,
  `especie` varchar(20) DEFAULT NULL,
  `edad` int DEFAULT NULL,
  `sexo` tinyint(1) DEFAULT NULL,
  `color` varchar(15) DEFAULT NULL,
  `raza` varchar(15) DEFAULT NULL,
  `peso` float DEFAULT NULL,
  `tamaño` float DEFAULT NULL,
  `fecha_vacunacion` date DEFAULT NULL,
  PRIMARY KEY (`id_masc`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mascotas`
--

LOCK TABLES `mascotas` WRITE;
/*!40000 ALTER TABLE `mascotas` DISABLE KEYS */;
INSERT INTO `mascotas` VALUES (1,'Kira','canina',1,0,'negro','Chihuahua',5,10,'2011-09-15'),(2,'Blanca','canina',2,1,'Blanco','Pastor Aleman',6,40,'2015-10-16'),(4,'Odie','canina',3,0,'Gris','Bulldog',8,30,'2011-09-15'),(5,'Slinky','canina',1,0,'Beich','Labrador',4,25,'2019-02-19'),(6,'Marley','canina',8,1,'Blanco','Cavalier',6,25,'2025-11-21'),(7,'Bolt','canina',4,0,'Naranja','Cavalier',8,50,'2025-11-21'),(8,'Golfo','canina',2,0,'Gris','Bedlington',4,50,'2030-03-22'),(9,'Lulu','canina',5,3,'Chocolate','Pastor Aleman',10,40,'2015-10-16');
/*!40000 ALTER TABLE `mascotas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `medicoveterinario`
--

DROP TABLE IF EXISTS `medicoveterinario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `medicoveterinario` (
  `id_med` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(25) DEFAULT NULL,
  `apellido` varchar(20) DEFAULT NULL,
  `cargo` varchar(20) DEFAULT NULL,
  `telefono` int DEFAULT NULL,
  `corroe` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id_med`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `medicoveterinario`
--

LOCK TABLES `medicoveterinario` WRITE;
/*!40000 ALTER TABLE `medicoveterinario` DISABLE KEYS */;
INSERT INTO `medicoveterinario` VALUES (1,'Henry','Vasquez','Veter. Otropedista',952148652,'henry@gmail.com'),(2,'Paul','Contreras','Veter. Cirujano',914785396,'paul@gmail.com'),(3,'Carla','Perez','Veter. Oncólogo',978256984,'carla@gmail.com');
/*!40000 ALTER TABLE `medicoveterinario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `propietario`
--

DROP TABLE IF EXISTS `propietario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `propietario` (
  `id_propi` int NOT NULL AUTO_INCREMENT,
  `id_masc` int NOT NULL,
  `nombre` varchar(25) DEFAULT NULL,
  `apellido` varchar(20) DEFAULT NULL,
  `direccion` varchar(30) DEFAULT NULL,
  `ciudad` varchar(30) DEFAULT NULL,
  `telefono` int DEFAULT NULL,
  `correo` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id_propi`),
  KEY `id_masc` (`id_masc`),
  CONSTRAINT `propietario_ibfk_1` FOREIGN KEY (`id_masc`) REFERENCES `mascotas` (`id_masc`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `propietario`
--

LOCK TABLES `propietario` WRITE;
/*!40000 ALTER TABLE `propietario` DISABLE KEYS */;
INSERT INTO `propietario` VALUES (1,1,'Carlos','Chomorro','Jr. Bolivar','Uchiza',971895416,'carlos@gmail.com'),(2,2,'Dionicia','Montano','Jr. Bolognesi 567','Uchiza',914896325,'dioni13@gmail.com'),(3,4,'Sara','Aguilar','Jr. Atahualpa 152','Uchiza',971578946,'sara@gmail.com'),(4,4,'Laura','Campos','Av. los claveles','Tocache',974465316,'laura168@gmail.com'),(5,6,'Pedro','Mozombite','Tupac Aamaru','Progreso',989965266,'pedromozom@gmail.com'),(6,6,'Marlith','Zegarra','2 de mayo 435','Uchiza',962466286,'marliti@gmail.com');
/*!40000 ALTER TABLE `propietario` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-11-26 18:55:09
