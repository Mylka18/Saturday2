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
  `nombre` varchar(19) DEFAULT NULL,
  `especie` varchar(20) DEFAULT NULL,
  `raza` varchar(25) DEFAULT NULL,
  `sexo` tinyint(1) DEFAULT NULL,
  `color` varchar(15) DEFAULT NULL,
  `fecha_nacimiento` date DEFAULT NULL,
  `fecha` date DEFAULT NULL,
  `proxima_fecha` date DEFAULT NULL,
  PRIMARY KEY (`id_card`),
  KEY `id_masc` (`id_masc`),
  CONSTRAINT `card_ibfk_1` FOREIGN KEY (`id_masc`) REFERENCES `mascotas` (`id_masc`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `card`
--

LOCK TABLES `card` WRITE;
/*!40000 ALTER TABLE `card` DISABLE KEYS */;
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mascotas`
--

LOCK TABLES `mascotas` WRITE;
/*!40000 ALTER TABLE `mascotas` DISABLE KEYS */;
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `medicoveterinario`
--

LOCK TABLES `medicoveterinario` WRITE;
/*!40000 ALTER TABLE `medicoveterinario` DISABLE KEYS */;
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
  `nombre` varchar(25) DEFAULT NULL,
  `apellido` varchar(20) DEFAULT NULL,
  `direccion` varchar(30) DEFAULT NULL,
  `ciudad` varchar(30) DEFAULT NULL,
  `telefono` int DEFAULT NULL,
  `correo` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id_propi`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `propietario`
--

LOCK TABLES `propietario` WRITE;
/*!40000 ALTER TABLE `propietario` DISABLE KEYS */;
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

-- Dump completed on 2022-11-26 15:59:30
/*CONTENIDO */;
/*CREATE DATABASE veterinaria;
use veterinaria;
CREATE TABLE mascotas(
id_masc int not null auto_increment,
nombre varchar(25),
especie varchar(20),
edad integer(2),
sexo boolean,
color varchar(15),
raza varchar(15),
peso float(4),
tamaño float(4),
fecha_vacunacion date,
primary key(id_masc)
);

CREATE TABLE propietario(
id_propi int not null auto_increment,
id_masc int not null,
nombre varchar(25),
apellido varchar(20),
direccion varchar(30),
ciudad varchar(30),
telefono int(9),
correo varchar(30),
primary key(id_propi),
foreign key (id_masc) references mascotas(id_masc)
);

CREATE TABLE MedicoVeterinario(
id_med int not null auto_increment,
nombre varchar(25),
apellido varchar(20),
cargo varchar(20),
telefono int(9),
corroe varchar(30),
primary key(id_med)
);

CREATE TABLE card(
id_card int not null auto_increment,
id_masc int not null,
nombre varchar(19),
especie varchar(20),
raza varchar(25),
sexo boolean,
color varchar(15),
fecha_nacimiento date,
fecha date,
proxima_fecha date,
primary key(id_card),
foreign key (id_masc) references mascotas(id_masc)
);

 */;
