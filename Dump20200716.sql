-- MySQL dump 10.13  Distrib 8.0.20, for macos10.15 (x86_64)
--
-- Host: 127.0.0.1    Database: BotigaLlibres
-- ------------------------------------------------------
-- Server version	8.0.20

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
-- Current Database: `BotigaLlibres`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `BotigaLlibres` /*!40100 DEFAULT CHARACTER SET utf8 */ /*!80016 DEFAULT ENCRYPTION='N' */;

USE `BotigaLlibres`;

--
-- Table structure for table `Compradors`
--

DROP TABLE IF EXISTS `Compradors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Compradors` (
  `id` int NOT NULL,
  `nom` varchar(10) DEFAULT NULL,
  `cognom` varchar(15) DEFAULT NULL,
  `dni` varchar(9) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Compradors`
--

LOCK TABLES `Compradors` WRITE;
/*!40000 ALTER TABLE `Compradors` DISABLE KEYS */;
INSERT INTO `Compradors` VALUES (1,'Maria ','Gutierrez','56764325F'),(2,'Pau','Roca','09878967Y'),(3,'Miguel','Manchón','23576543M'),(4,'Cristina','López','98756743V');
/*!40000 ALTER TABLE `Compradors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Llibres`
--

DROP TABLE IF EXISTS `Llibres`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Llibres` (
  `id` int NOT NULL,
  `preu` varchar(45) DEFAULT NULL,
  `autor` varchar(45) DEFAULT NULL,
  `idCompradors` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_Llibres_Compradors_idx` (`idCompradors`),
  CONSTRAINT `fk_Llibres_Compradors` FOREIGN KEY (`idCompradors`) REFERENCES `Compradors` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Llibres`
--

LOCK TABLES `Llibres` WRITE;
/*!40000 ALTER TABLE `Llibres` DISABLE KEYS */;
INSERT INTO `Llibres` VALUES (1,'7.99','Robert Bryndza',1),(2,'21','Stephen King Stephen Edwin King',2),(3,'9.99','Carlos Ruiz Zafón',3),(4,'17.95','J.K rowling',4);
/*!40000 ALTER TABLE `Llibres` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Current Database: `CulDampolla`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `CulDampolla` /*!40100 DEFAULT CHARACTER SET utf8 */ /*!80016 DEFAULT ENCRYPTION='N' */;

USE `CulDampolla`;

--
-- Table structure for table `Clients`
--

DROP TABLE IF EXISTS `Clients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Clients` (
  `idClients` int NOT NULL,
  `nom` varchar(45) DEFAULT NULL,
  `adreça` varchar(100) DEFAULT NULL,
  `telèfon` varchar(15) DEFAULT NULL,
  `correu_electronic` varchar(100) DEFAULT NULL,
  `data_registre` date DEFAULT NULL,
  PRIMARY KEY (`idClients`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Ulleres_idUlleres';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Clients`
--

LOCK TABLES `Clients` WRITE;
/*!40000 ALTER TABLE `Clients` DISABLE KEYS */;
INSERT INTO `Clients` VALUES (1,'Carla','Avinguda Diagonal 343','936678543','carla1@gmail.com','2020-05-19'),(2,'Andrea','Carrer Manlleu 2','678543235','andrea1@gmail.com','2020-01-30'),(3,'Ivette','Bisbe Morgandes 54','67802213','ivette1@gmail.com','2019-02-07'),(4,'Cristina','Avinguda Roma 298','67211123','cristina1@gmail.com','2019-12-12');
/*!40000 ALTER TABLE `Clients` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Empleat_has_ulleres`
--

DROP TABLE IF EXISTS `Empleat_has_ulleres`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Empleat_has_ulleres` (
  `idEmpleat` int NOT NULL,
  `idUlleres` int NOT NULL,
  PRIMARY KEY (`idEmpleat`),
  KEY `fk_Empleat_has_ulleres_Ulleres1_idx` (`idUlleres`),
  CONSTRAINT `fk_Empleat_has_ulleres_Ulleres1` FOREIGN KEY (`idUlleres`) REFERENCES `Ulleres` (`idUlleres`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Empleat_has_ulleres`
--

LOCK TABLES `Empleat_has_ulleres` WRITE;
/*!40000 ALTER TABLE `Empleat_has_ulleres` DISABLE KEYS */;
INSERT INTO `Empleat_has_ulleres` VALUES (1,1),(2,2),(3,3),(4,4);
/*!40000 ALTER TABLE `Empleat_has_ulleres` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Marques`
--

DROP TABLE IF EXISTS `Marques`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Marques` (
  `idMarques` int NOT NULL,
  `idUlleres` int NOT NULL,
  PRIMARY KEY (`idMarques`),
  KEY `fk_Marques_Ulleres1_idx` (`idUlleres`),
  CONSTRAINT `fk_Marques_Ulleres1` FOREIGN KEY (`idUlleres`) REFERENCES `Ulleres` (`idUlleres`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Marques`
--

LOCK TABLES `Marques` WRITE;
/*!40000 ALTER TABLE `Marques` DISABLE KEYS */;
INSERT INTO `Marques` VALUES (1,1),(2,2),(3,3),(4,4);
/*!40000 ALTER TABLE `Marques` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Optica_has_proveïdor`
--

DROP TABLE IF EXISTS `Optica_has_proveïdor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Optica_has_proveïdor` (
  `idOptica` int NOT NULL,
  `idProveidor` int NOT NULL,
  PRIMARY KEY (`idOptica`),
  KEY `fk_Optica_has_proveïdor_Proveidor1_idx` (`idProveidor`),
  CONSTRAINT `fk_Optica_has_proveïdor_Proveidor1` FOREIGN KEY (`idProveidor`) REFERENCES `Proveidor` (`idProveidor`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Optica_has_proveïdor`
--

LOCK TABLES `Optica_has_proveïdor` WRITE;
/*!40000 ALTER TABLE `Optica_has_proveïdor` DISABLE KEYS */;
INSERT INTO `Optica_has_proveïdor` VALUES (1,1),(2,2),(3,3),(4,4);
/*!40000 ALTER TABLE `Optica_has_proveïdor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Proveidor`
--

DROP TABLE IF EXISTS `Proveidor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Proveidor` (
  `idProveidor` int NOT NULL,
  `nom` varchar(45) DEFAULT NULL,
  `adreça` varchar(245) DEFAULT NULL,
  `telèfon` varchar(10) DEFAULT NULL,
  `fax` varchar(10) DEFAULT NULL,
  `nif` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`idProveidor`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Proveidor`
--

LOCK TABLES `Proveidor` WRITE;
/*!40000 ALTER TABLE `Proveidor` DISABLE KEYS */;
INSERT INTO `Proveidor` VALUES (1,'Ulleres 1','Pla de Balenyà 3','938875426','938875426','77099825'),(2,'Ulleres 2','Pla de Balenyà 4','938874563','938874563','77892810'),(3,'Ulleres 3','Pla de Balenyà 5','937782615','937782615','77098766'),(4,'Ulleres 4','Pla de Balenyà 6','93778261','93778261','77921829');
/*!40000 ALTER TABLE `Proveidor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Ulleres`
--

DROP TABLE IF EXISTS `Ulleres`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Ulleres` (
  `idUlleres` int NOT NULL,
  `marca` varchar(45) DEFAULT NULL,
  `graduació_dreta` varchar(45) DEFAULT NULL,
  `graduació_esquerra` varchar(45) DEFAULT NULL,
  `color_muntura` varchar(45) DEFAULT NULL,
  `color_vidre_dret` varchar(45) DEFAULT NULL,
  `color_vidre_esquerra` varchar(45) DEFAULT NULL,
  `preu` float DEFAULT NULL,
  PRIMARY KEY (`idUlleres`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Ulleres`
--

LOCK TABLES `Ulleres` WRITE;
/*!40000 ALTER TABLE `Ulleres` DISABLE KEYS */;
INSERT INTO `Ulleres` VALUES (1,'Chanel','0.50','0.50','Negre','Transparent','Transparent',159),(2,'Miu miu','0.75','1.25','Blava','Transparent','Transparent',179),(3,'Rayband','2.25','2.25','Vermella','Opac','Opac',129),(4,'Mango','1.50','1.75','Blanca','Opac','Opac',79);
/*!40000 ALTER TABLE `Ulleres` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Current Database: `Amazon`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `Amazon` /*!40100 DEFAULT CHARACTER SET utf8 */ /*!80016 DEFAULT ENCRYPTION='N' */;

USE `Amazon`;

--
-- Table structure for table `Autor`
--

DROP TABLE IF EXISTS `Autor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Autor` (
  `idAutor` int NOT NULL,
  `direcció` varchar(100) DEFAULT NULL,
  `llibresEscrits` int DEFAULT NULL,
  PRIMARY KEY (`idAutor`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Autor`
--

LOCK TABLES `Autor` WRITE;
/*!40000 ALTER TABLE `Autor` DISABLE KEYS */;
INSERT INTO `Autor` VALUES (1,'Avinguda Diagonal 345',9),(2,'Carrer Folch i Torres 54',5),(3,'Carretera Pallars 45',12),(4,'Passatge de les Roses 34',6);
/*!40000 ALTER TABLE `Autor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Catàleg`
--

DROP TABLE IF EXISTS `Catàleg`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Catàleg` (
  `idCatàleg` int NOT NULL,
  `unitats` int DEFAULT NULL,
  `preu` float DEFAULT NULL,
  `idAutor` int NOT NULL,
  PRIMARY KEY (`idCatàleg`),
  KEY `fk_Catàleg_Autor1_idx` (`idAutor`),
  CONSTRAINT `fk_Catàleg_Autor1` FOREIGN KEY (`idAutor`) REFERENCES `Autor` (`idAutor`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Catàleg`
--

LOCK TABLES `Catàleg` WRITE;
/*!40000 ALTER TABLE `Catàleg` DISABLE KEYS */;
INSERT INTO `Catàleg` VALUES (1,45,7.99,1),(2,32,15,2),(3,14,7.95,3),(4,5,21,4);
/*!40000 ALTER TABLE `Catàleg` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Factura_has_usuari`
--

DROP TABLE IF EXISTS `Factura_has_usuari`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Factura_has_usuari` (
  `Factura_has_usuari_id` int NOT NULL,
  `idUsuari` int NOT NULL,
  `idCatàleg` int NOT NULL,
  PRIMARY KEY (`Factura_has_usuari_id`),
  KEY `fk_Factura_has_usuari_Usuari1_idx` (`idUsuari`),
  KEY `fk_Factura_has_usuari_Catàleg1_idx` (`idCatàleg`),
  CONSTRAINT `fk_Factura_has_usuari_Catàleg1` FOREIGN KEY (`idCatàleg`) REFERENCES `Catàleg` (`idCatàleg`),
  CONSTRAINT `fk_Factura_has_usuari_Usuari1` FOREIGN KEY (`idUsuari`) REFERENCES `Usuari` (`idUsuari`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Factura_has_usuari`
--

LOCK TABLES `Factura_has_usuari` WRITE;
/*!40000 ALTER TABLE `Factura_has_usuari` DISABLE KEYS */;
INSERT INTO `Factura_has_usuari` VALUES (1,1,1),(2,2,2),(3,3,3),(4,4,4);
/*!40000 ALTER TABLE `Factura_has_usuari` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Usuari`
--

DROP TABLE IF EXISTS `Usuari`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Usuari` (
  `idUsuari` int NOT NULL,
  `nom` varchar(10) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `contrasenya` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`idUsuari`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Usuari`
--

LOCK TABLES `Usuari` WRITE;
/*!40000 ALTER TABLE `Usuari` DISABLE KEYS */;
INSERT INTO `Usuari` VALUES (1,'marixfc','marixfc@gmail.com','827391hhhn'),(2,'ujupp','ujupp@gmail.com','9jshakja22'),(3,'joann9','joannn@gmail.com','12345xd'),(4,'poll_4','poll_4@gmail.com','98654dew');
/*!40000 ALTER TABLE `Usuari` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Current Database: `Xarxa Social`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `Xarxa Social` /*!40100 DEFAULT CHARACTER SET utf8 */ /*!80016 DEFAULT ENCRYPTION='N' */;

USE `Xarxa Social`;

--
-- Table structure for table `Fotografies`
--

DROP TABLE IF EXISTS `Fotografies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Fotografies` (
  `idFotografies` int NOT NULL,
  `lloc` varchar(45) DEFAULT NULL,
  `url` varchar(245) DEFAULT NULL,
  `idUsuari` int NOT NULL,
  PRIMARY KEY (`idFotografies`),
  KEY `fk_Fotografies_Usuari_idx` (`idUsuari`),
  CONSTRAINT `fk_Fotografies_Usuari` FOREIGN KEY (`idUsuari`) REFERENCES `Usuari` (`idUsuari`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Fotografies`
--

LOCK TABLES `Fotografies` WRITE;
/*!40000 ALTER TABLE `Fotografies` DISABLE KEYS */;
INSERT INTO `Fotografies` VALUES (1,'Buenos Aires, Argentina','https://es.mercopress.com/2020/05/09/argentina-extiende-cuarentena-hasta-24-de-mayo-para-el-gran-buenos-aires',1),(2,'Lima, Perú','https://www.ongvoluntariado.org/voluntariado-en-peru-lima/',2),(3,'Melbourne, Australia','https://www.infobae.com/turismo/2017/10/03/los-secretos-de-la-magia-de-melbourne-la-mejor-ciudad-del-mundo-para-vivir/',3),(4,'Ghana, Africa','https://www.tourinews.es/resumen-de-prensa/notas-de-prensa-destinos-competidores-turismo/ghana-quiere-crecer-turisticamente-de-la-mano-de-su-diaspora_4455747_102.html',4);
/*!40000 ALTER TABLE `Fotografies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Usuari`
--

DROP TABLE IF EXISTS `Usuari`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Usuari` (
  `idUsuari` int NOT NULL,
  `nom` varchar(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `contrasenya` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idUsuari`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Usuari`
--

LOCK TABLES `Usuari` WRITE;
/*!40000 ALTER TABLE `Usuari` DISABLE KEYS */;
INSERT INTO `Usuari` VALUES (1,'Ivette','ivette@gmail.com','ivetteuuuj8'),(2,'Martina','tineta@gmail.com','12345rfd'),(3,'Jamie','jamixx@gmail.com','jammix3455'),(4,'Matilde','matt_f@gmail.com','uajdmatt');
/*!40000 ALTER TABLE `Usuari` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Usuari_has_usuari`
--

DROP TABLE IF EXISTS `Usuari_has_usuari`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Usuari_has_usuari` (
  `idUsuari_has_usuari` int NOT NULL,
  `idUsuari` int NOT NULL,
  PRIMARY KEY (`idUsuari_has_usuari`),
  KEY `fk_Usuari_has_usuari_Usuari1_idx` (`idUsuari`),
  CONSTRAINT `fk_Usuari_has_usuari_Usuari1` FOREIGN KEY (`idUsuari`) REFERENCES `Usuari` (`idUsuari`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Usuari_has_usuari`
--

LOCK TABLES `Usuari_has_usuari` WRITE;
/*!40000 ALTER TABLE `Usuari_has_usuari` DISABLE KEYS */;
INSERT INTO `Usuari_has_usuari` VALUES (1,1),(2,2),(3,3),(4,4);
/*!40000 ALTER TABLE `Usuari_has_usuari` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `XarxaSocial_has_Usuari`
--

DROP TABLE IF EXISTS `XarxaSocial_has_Usuari`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `XarxaSocial_has_Usuari` (
  `idXarxaSocial` int NOT NULL,
  `idUsuari` int NOT NULL,
  PRIMARY KEY (`idXarxaSocial`),
  KEY `fk_XarxaSocial_has_Usuari_Usuari1_idx` (`idUsuari`),
  CONSTRAINT `fk_XarxaSocial_has_Usuari_Usuari1` FOREIGN KEY (`idUsuari`) REFERENCES `Usuari` (`idUsuari`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `XarxaSocial_has_Usuari`
--

LOCK TABLES `XarxaSocial_has_Usuari` WRITE;
/*!40000 ALTER TABLE `XarxaSocial_has_Usuari` DISABLE KEYS */;
INSERT INTO `XarxaSocial_has_Usuari` VALUES (1,1),(2,2),(3,3),(4,4);
/*!40000 ALTER TABLE `XarxaSocial_has_Usuari` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Current Database: `Vueling`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `Vueling` /*!40100 DEFAULT CHARACTER SET utf8 */ /*!80016 DEFAULT ENCRYPTION='N' */;

USE `Vueling`;

--
-- Table structure for table `Avions`
--

DROP TABLE IF EXISTS `Avions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Avions` (
  `idAvions` int NOT NULL,
  `capacitat` int DEFAULT NULL,
  `model` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`idAvions`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Avions`
--

LOCK TABLES `Avions` WRITE;
/*!40000 ALTER TABLE `Avions` DISABLE KEYS */;
INSERT INTO `Avions` VALUES (1,254,'boeing 737'),(2,342,'boeing 737'),(3,362,' Boeing 747-4'),(4,582,'Air Bus  A380');
/*!40000 ALTER TABLE `Avions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Seients`
--

DROP TABLE IF EXISTS `Seients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Seients` (
  `idSeients` int NOT NULL,
  `idAvions` int NOT NULL,
  PRIMARY KEY (`idSeients`),
  KEY `fk_Seients_Avions_idx` (`idAvions`),
  CONSTRAINT `fk_Seients_Avions` FOREIGN KEY (`idAvions`) REFERENCES `Avions` (`idAvions`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Seients`
--

LOCK TABLES `Seients` WRITE;
/*!40000 ALTER TABLE `Seients` DISABLE KEYS */;
INSERT INTO `Seients` VALUES (1,1),(2,2),(3,3),(4,4);
/*!40000 ALTER TABLE `Seients` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Current Database: `Stube`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `Stube` /*!40100 DEFAULT CHARACTER SET utf8 */ /*!80016 DEFAULT ENCRYPTION='N' */;

USE `Stube`;

--
-- Table structure for table `Usuari`
--

DROP TABLE IF EXISTS `Usuari`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Usuari` (
  `id_usuari` int NOT NULL,
  `email` varchar(30) DEFAULT NULL,
  `contrasenya` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id_usuari`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Usuari`
--

LOCK TABLES `Usuari` WRITE;
/*!40000 ALTER TABLE `Usuari` DISABLE KEYS */;
INSERT INTO `Usuari` VALUES (1,'maria@gmail.com','9897ujU'),(2,'uuwj@gmail.com','0ihebsj'),(3,'julii@gmail.com','123345'),(4,'pollbh@gmail.com','abcvder');
/*!40000 ALTER TABLE `Usuari` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Videos`
--

DROP TABLE IF EXISTS `Videos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Videos` (
  `id_video` int NOT NULL,
  `descripció` varchar(200) DEFAULT NULL,
  `títol` varchar(60) DEFAULT NULL,
  `url` varchar(100) DEFAULT NULL,
  `identificador` varchar(45) DEFAULT NULL,
  `id_usuari` int NOT NULL,
  PRIMARY KEY (`id_video`),
  KEY `fk_Videos_Usuari_idx` (`id_usuari`),
  CONSTRAINT `fk_Videos_Usuari` FOREIGN KEY (`id_usuari`) REFERENCES `Usuari` (`id_usuari`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Videos`
--

LOCK TABLES `Videos` WRITE;
/*!40000 ALTER TABLE `Videos` DISABLE KEYS */;
INSERT INTO `Videos` VALUES (1,'When you\'re such an industrial DJ that you play your sets in a warehouse toilet','Griessmuehle - Inhalt der Nacht / December 31 / 1pm-2pm','https://www.youtube.com/watch?v=7iUTl4xQnT4&t=536s','536s',1),(2,'Inhalt der Nacht should be content of every Rave !','Lebendig Showcase - Inhalt Der Nacht / March 11 / 6pm-7pm','https://www.youtube.com/watch?v=T8JHRnc33Q0','T8JHRnc33Q0',2),(3,'one of the best sets played on here, want him to play agai','TTT X HÖR - Dimi/AnD / April 4 / 9pm-10pm','https://www.youtube.com/watch?v=UEUzgcqJMMI','UEUzgcqJMMI',3),(4,'this mix should have 1K likes.. tight, dark & banging industrial tech...only Ancient Methods comes close to this.','HÖR x TTT x United We Stream - Tommy Four Seven / March 28','https://www.youtube.com/watch?v=uxPhQmT7TNk','uxPhQmT7TNk',4);
/*!40000 ALTER TABLE `Videos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Current Database: `Xarxa Social 2`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `Xarxa Social 2` /*!40100 DEFAULT CHARACTER SET utf8 */ /*!80016 DEFAULT ENCRYPTION='N' */;

USE `Xarxa Social 2`;

--
-- Table structure for table `Fotografies`
--

DROP TABLE IF EXISTS `Fotografies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Fotografies` (
  `idFotografies` int NOT NULL,
  `lloc` varchar(45) DEFAULT NULL,
  `url` varchar(245) DEFAULT NULL,
  `idUsuari` int NOT NULL,
  PRIMARY KEY (`idFotografies`),
  KEY `fk_Fotografies_Usuari_idx` (`idUsuari`),
  CONSTRAINT `fk_Fotografies_Usuari` FOREIGN KEY (`idUsuari`) REFERENCES `Usuari` (`idUsuari`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Fotografies`
--

LOCK TABLES `Fotografies` WRITE;
/*!40000 ALTER TABLE `Fotografies` DISABLE KEYS */;
INSERT INTO `Fotografies` VALUES (1,'Buenos Aires, Argentina','https://es.mercopress.com/2020/05/09/argentina-extiende-cuarentena-hasta-24-de-mayo-para-el-gran-buenos-aires',1),(2,'Lima, Perú','https://www.ongvoluntariado.org/voluntariado-en-peru-lima/',2),(3,'Melbourne, Australia','https://www.infobae.com/turismo/2017/10/03/los-secretos-de-la-magia-de-melbourne-la-mejor-ciudad-del-mundo-para-vivir/',3),(4,'Ghana, Africa','https://www.tourinews.es/resumen-de-prensa/notas-de-prensa-destinos-competidores-turismo/ghana-quiere-crecer-turisticamente-de-la-mano-de-su-diaspora_4455747_102.html',4);
/*!40000 ALTER TABLE `Fotografies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Usuari`
--

DROP TABLE IF EXISTS `Usuari`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Usuari` (
  `idUsuari` int NOT NULL,
  `nom` varchar(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `contrasenya` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idUsuari`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Usuari`
--

LOCK TABLES `Usuari` WRITE;
/*!40000 ALTER TABLE `Usuari` DISABLE KEYS */;
INSERT INTO `Usuari` VALUES (1,'Ivette','ivette@gmail.com','ivetteuuuj8'),(2,'Martina','tineta@gmail.com','12345rfd'),(3,'Jamie','jamixx@gmail.com','jammix3455'),(4,'Matilde','matt_f@gmail.com','uajdmatt');
/*!40000 ALTER TABLE `Usuari` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `XarxaSocial_has_Usuari`
--

DROP TABLE IF EXISTS `XarxaSocial_has_Usuari`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `XarxaSocial_has_Usuari` (
  `idXarxaSocial` int NOT NULL,
  `idUsuari` int NOT NULL,
  PRIMARY KEY (`idXarxaSocial`),
  KEY `fk_XarxaSocial_has_Usuari_Usuari1_idx` (`idUsuari`),
  CONSTRAINT `fk_XarxaSocial_has_Usuari_Usuari1` FOREIGN KEY (`idUsuari`) REFERENCES `Usuari` (`idUsuari`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `XarxaSocial_has_Usuari`
--

LOCK TABLES `XarxaSocial_has_Usuari` WRITE;
/*!40000 ALTER TABLE `XarxaSocial_has_Usuari` DISABLE KEYS */;
INSERT INTO `XarxaSocial_has_Usuari` VALUES (1,1),(2,2),(3,3),(4,4);
/*!40000 ALTER TABLE `XarxaSocial_has_Usuari` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-07-16 16:40:44
