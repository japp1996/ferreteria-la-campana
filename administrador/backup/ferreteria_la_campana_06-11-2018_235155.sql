-- MySQL dump 10.16  Distrib 10.1.21-MariaDB, for Win32 (AMD64)
--
-- Host: localhost    Database: localhost
-- ------------------------------------------------------
-- Server version	10.1.21-MariaDB

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
-- Table structure for table `auditoria_usuarios`
--

DROP TABLE IF EXISTS `auditoria_usuarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auditoria_usuarios` (
  `ID_AUDITORIA` int(15) NOT NULL AUTO_INCREMENT,
  `CI_RIF` varchar(15) NOT NULL,
  `OPERACION` varchar(30) NOT NULL,
  `DETALLES_OPERACION` varchar(150) NOT NULL,
  `FECHA` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`ID_AUDITORIA`),
  KEY `CI_RIF` (`CI_RIF`),
  KEY `CI_RIF_2` (`CI_RIF`),
  CONSTRAINT `auditoria_usuarios_ibfk_1` FOREIGN KEY (`CI_RIF`) REFERENCES `usuarios` (`CI_RIF`)
) ENGINE=InnoDB AUTO_INCREMENT=150 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auditoria_usuarios`
--

LOCK TABLES `auditoria_usuarios` WRITE;
/*!40000 ALTER TABLE `auditoria_usuarios` DISABLE KEYS */;
INSERT INTO `auditoria_usuarios` VALUES (1,'V-25074617','Pedido','Creacion de Pedido','2017-11-29 13:43:22'),(2,'V-25074617','Pedido','Creacion de Pedido','2017-11-29 13:43:23'),(3,'V-25074617','Pedido','Creacion de Pedido','2017-11-29 13:43:23'),(4,'V-25074617','Pedido','Creacion de Pedido','2017-11-29 13:43:23'),(5,'V-25074617','Pedido','Creacion de Pedido','2017-11-29 13:43:23'),(6,'V-25074617','Salida','Salida del Sistema','2017-11-29 13:44:16'),(7,'V-25074617','Entrada','Entrada al Sistema','2017-11-29 13:44:28'),(8,'V-25074617','Recepcion','Recepcion de Mercancia','2017-11-29 13:45:46'),(9,'V-25074617','Requisicion','Requisicion de Mercancia','2017-11-29 13:45:46'),(10,'V-25074617','Recepcion','Recepcion de Mercancia','2017-11-29 13:45:46'),(11,'V-25074617','Requisicion','Requisicion de Mercancia','2017-11-29 13:45:46'),(12,'V-25074617','Recepcion','Recepcion de Mercancia','2017-11-29 13:45:46'),(13,'V-25074617','Requisicion','Requisicion de Mercancia','2017-11-29 13:45:46'),(14,'V-25074617','Entrada','Entrada al Sistema','2017-12-18 06:10:29'),(15,'V-25074617','Pedido','Creacion de Pedido','2017-12-18 06:11:04'),(16,'J-300941736','Entrada','Entrada al Sistema','2018-02-23 08:59:20'),(17,'V-25074617','Entrada','Entrada al Sistema','2018-04-04 06:16:18'),(18,'V-25074617','Recepcion','Recepcion de Mercancia','2018-04-04 06:19:49'),(19,'V-25074617','Recepcion','Recepcion de Mercancia','2018-04-04 06:19:49'),(20,'V-25074617','Recepcion','Recepcion de Mercancia','2018-04-04 06:19:50'),(21,'V-25074617','Recepcion','Recepcion de Mercancia','2018-04-04 06:20:17'),(22,'V-25074617','Requisicion','Requisicion de Mercancia','2018-04-04 06:20:17'),(23,'V-25074617','Recepcion','Recepcion de Mercancia','2018-04-04 06:20:53'),(24,'V-25074617','Salida','Salida del Sistema','2018-04-04 06:23:14'),(25,'J-300941736','Entrada','Entrada al Sistema','2018-04-04 06:23:31'),(26,'V-25074617','Entrada','Entrada al Sistema','2018-04-06 16:17:18'),(27,'V-25074617','Entrada','Entrada al Sistema','2018-04-06 16:17:18'),(28,'V-25074617','Salida','Salida del Sistema','2018-04-06 16:18:31'),(29,'V-25074617','Entrada','Entrada al Sistema','2018-04-06 16:35:29'),(30,'V-25074617','Pedido','Creacion de Pedido','2018-04-06 16:37:58'),(31,'V-25074617','Pedido','Creacion de Pedido','2018-04-06 16:37:58'),(32,'V-25074617','Pedido','Creacion de Pedido','2018-04-06 16:37:58'),(33,'V-25074617','Pedido','Creacion de Pedido','2018-04-06 16:37:58'),(34,'V-25074617','Recepcion','Recepcion de Mercancia','2018-04-06 16:39:07'),(35,'V-25074617','Requisicion','Requisicion de Mercancia','2018-04-06 16:39:07'),(36,'V-25074617','Recepcion','Recepcion de Mercancia','2018-04-06 16:39:25'),(37,'V-25074617','Salida','Salida del Sistema','2018-04-06 16:41:09'),(38,'V-25074617','Entrada','Entrada al Sistema','2018-04-06 05:03:29'),(39,'V-25074617','Modificacion','Pedido Entregado','2018-04-06 05:07:24'),(40,'V-25074617','Pedido','Creacion de Pedido','2018-04-06 05:08:30'),(41,'V-25074617','Modificacion','Pedido Entregado','2018-04-06 05:14:54'),(42,'V-25074617','Modificacion','Procesamiento de estado de pedido','2018-04-06 05:15:54'),(43,'V-25074617','Recepcion','Recepcion de Mercancia','2018-04-06 05:21:30'),(44,'V-25074617','Requisicion','Requisicion de Mercancia','2018-04-06 05:21:31'),(45,'V-25074617','Recepcion','Recepcion de Mercancia','2018-04-06 05:22:14'),(46,'V-25074617','Salida','Salida del Sistema','2018-04-06 05:24:03'),(47,'V-25074617','Entrada','Entrada al Sistema','2018-04-06 05:24:38'),(48,'V-25074617','Salida','Salida del Sistema','2018-04-06 05:28:28'),(49,'V-25074617','Entrada','Entrada al Sistema','2018-08-22 05:03:36'),(50,'V-25074617','Salida','Salida del Sistema','2018-08-22 05:04:35'),(51,'V-25074617','Entrada','Entrada al Sistema','2018-08-23 06:10:35'),(52,'V-25074617','Modificacion','Modificacion de datos de Articulo','2018-08-23 07:42:14'),(53,'V-25074617','Modificacion','Modificacion de datos de Articulo','2018-08-23 08:43:53'),(54,'V-25074617','Modificacion','Modificacion de datos de Categorias','2018-08-23 08:44:05'),(55,'V-25074617','Entrada','Entrada al Sistema','2018-08-23 14:58:34'),(56,'V-25074617','Modificacion','Modificacion de datos de usuario','2018-08-23 15:05:05'),(57,'V-25074616','Entrada','Entrada al Sistema','2018-09-20 07:26:53'),(58,'V-25074616','Entrada','Entrada al Sistema','2018-09-20 07:28:25'),(59,'V-26571341','Entrada','Entrada al Sistema','2018-09-20 07:28:52'),(60,'V-26571341','Entrada','Entrada al Sistema','2018-09-20 07:29:59'),(61,'V-26571341','Entrada','Entrada al Sistema','2018-09-21 16:02:36'),(62,'V-26571341','Entrada','Entrada al Sistema','2018-09-21 16:05:33'),(63,'V-26571341','Entrada','Entrada al Sistema','2018-09-21 05:01:21'),(64,'V-25074617','Entrada','Entrada al Sistema','2018-09-24 11:04:26'),(65,'V-25074617','Entrada','Entrada al Sistema','2018-09-28 05:59:43'),(66,'V-25074617','Entrada','Entrada al Sistema','2018-09-28 06:01:13'),(67,'V-25074617','Entrada','Entrada al Sistema','2018-09-28 06:03:51'),(68,'V-25074617','Entrada','Entrada al Sistema','2018-09-28 06:14:23'),(69,'V-25074617','Entrada','Entrada al Sistema','2018-09-28 07:14:51'),(70,'V-25074617','Entrada','Entrada al Sistema','2018-09-28 07:15:27'),(71,'V-25074617','Entrada','Entrada al Sistema','2018-09-28 08:51:37'),(72,'V-25074617','Entrada','Entrada al Sistema','2018-09-29 16:13:42'),(73,'V-25074617','Entrada','Entrada al Sistema','2018-10-09 05:20:56'),(74,'V-25074617','Entrada','Entrada al Sistema','2018-10-09 06:20:51'),(75,'V-25074617','Pedido','Creacion de Pedido','2018-10-09 06:23:12'),(76,'V-25074617','Modificacion','Pedido Entregado','2018-10-09 06:23:36'),(77,'V-25074617','Modificacion','Anulacion de Pedido','2018-10-09 06:24:06'),(78,'V-25074617','Modificacion','Pedido Entregado','2018-10-09 06:25:44'),(79,'V-25074617','Modificacion','Procesamiento de estado de pedido','2018-10-09 06:26:13'),(80,'V-25074617','Modificacion','Pedido Entregado','2018-10-09 06:26:58'),(81,'V-25074617','Modificacion','Pedido Entregado','2018-10-09 06:27:26'),(82,'V-25074617','Entrada','Entrada al Sistema','2018-10-10 16:10:00'),(83,'V-25074617','Entrada','Entrada al Sistema','2018-10-10 16:10:20'),(84,'V-25074617','Pedido','Creacion de Pedido','2018-10-10 16:17:25'),(85,'V-25074617','Modificacion','Pedido Entregado','2018-10-10 16:17:45'),(86,'V-25074617','Modificacion','Anulacion de Pedido','2018-10-10 16:18:36'),(87,'V-25074617','Modificacion','Procesamiento de estado de pedido','2018-10-10 16:23:44'),(88,'V-25074617','Pedido','Creacion de Pedido','2018-10-10 16:24:21'),(89,'V-25074617','Modificacion','Procesamiento de estado de pedido','2018-10-10 16:25:02'),(90,'V-25074617','Entrada','Entrada al Sistema','2018-10-11 07:48:27'),(91,'V-25074617','Entrada','Entrada al Sistema','2018-10-11 13:18:53'),(92,'V-25074617','Entrada','Entrada al Sistema','2018-10-11 13:19:05'),(93,'V-25074617','Entrada','Entrada al Sistema','2018-10-23 08:27:54'),(94,'V-25074617','Salida','Salida del Sistema','2018-10-23 11:32:14'),(95,'V-25074617','Entrada','Entrada al Sistema','2018-10-24 16:04:22'),(96,'V-25074617','Pedido','Creacion de Pedido','2018-10-24 16:15:26'),(97,'V-25074617','Modificacion','Pedido Entregado','2018-10-24 16:20:06'),(98,'V-25074617','Modificacion','Anulacion de Pedido','2018-10-24 16:20:27'),(99,'V-25074617','Entrada','Entrada al Sistema','2018-10-24 16:23:49'),(100,'V-25074617','Recepcion','Recepcion de Mercancia','2018-10-24 16:29:24'),(101,'V-25074617','Requisicion','Requisicion de Mercancia','2018-10-24 16:29:24'),(102,'V-25074617','Recepcion','Recepcion de Mercancia','2018-10-24 16:29:43'),(103,'V-25074617','Salida','Salida del Sistema','2018-10-24 16:35:38'),(104,'V-12343344','Entrada','Entrada al Sistema','2018-10-24 16:38:37'),(105,'V-25074617','Entrada','Entrada al Sistema','2018-11-02 14:54:25'),(106,'V-25074617','Entrada','Entrada al Sistema','2018-11-02 15:14:10'),(107,'V-25074617','Salida','Salida del Sistema','2018-11-03 16:49:05'),(108,'V-25074617','Entrada','Entrada al Sistema','2018-11-03 07:56:41'),(109,'V-25074617','Pedido','Creacion de Pedido','2018-11-03 08:03:08'),(110,'V-25074617','Salida','Salida del Sistema','2018-11-03 08:03:25'),(111,'V-25074616','Entrada','Entrada al Sistema','2018-11-03 08:03:46'),(112,'V-25074616','Pedido','Creacion de Pedido','2018-11-03 08:04:56'),(113,'V-25074616','Salida','Salida del Sistema','2018-11-03 08:12:53'),(114,'V-25074617','Entrada','Entrada al Sistema','2018-11-03 08:14:15'),(115,'V-25074617','Recepcion','Recepcion de Mercancia','2018-11-03 08:44:52'),(116,'V-25074617','Requisicion','Requisicion de Mercancia','2018-11-03 08:44:52'),(117,'V-25074617','Recepcion','Recepcion de Mercancia','2018-11-03 08:46:18'),(118,'V-25074617','Requisicion','Requisicion de Mercancia','2018-11-03 08:46:18'),(119,'V-25074617','Salida','Salida del Sistema','2018-11-03 08:50:45'),(120,'J-300941736','Entrada','Entrada al Sistema','2018-11-03 08:51:01'),(121,'V-25074617','Entrada','Entrada al Sistema','2018-11-03 08:57:37'),(122,'V-25074617','Recepcion','Recepcion de Mercancia','2018-11-03 08:57:49'),(123,'V-25074617','Recepcion','Recepcion de Mercancia','2018-11-03 09:02:31'),(124,'V-25074617','Recepcion','Recepcion de Mercancia','2018-11-03 09:02:31'),(125,'V-25074617','Recepcion','Recepcion de Mercancia','2018-11-03 09:02:31'),(126,'J-300941736','Entrada','Entrada al Sistema','2018-11-06 08:43:52'),(127,'J-300941736','Recepcion','Recepcion de Mercancia','2018-11-06 08:44:22'),(128,'J-300941736','Requisicion','Requisicion de Mercancia','2018-11-06 08:44:22'),(129,'V-25074617','Entrada','Entrada al Sistema','2018-11-06 08:44:44'),(130,'V-25074617','Recepcion','Recepcion de Mercancia','2018-11-06 08:44:55'),(131,'V-25074617','Requisicion','Requisicion de Mercancia','2018-11-06 08:44:55'),(132,'V-25074617','Recepcion','Recepcion de Mercancia','2018-11-06 08:58:29'),(133,'V-26571341','Entrada','Entrada al Sistema','2018-11-06 14:53:59'),(134,'V-26571341','Entrada','Entrada al Sistema','2018-11-06 14:56:51'),(135,'V-26571341','Salida','Salida del Sistema','2018-11-06 14:59:56'),(136,'V-26571341','Entrada','Entrada al Sistema','2018-11-06 15:28:16'),(137,'V-26571341','Entrada','Entrada al Sistema','2018-11-06 15:38:01'),(138,'V-26571341','Pedido','Creacion de Pedido','2018-11-06 15:39:08'),(139,'V-26571341','Pedido','Creacion de Pedido','2018-11-06 15:39:09'),(140,'V-26571341','Pedido','Creacion de Pedido','2018-11-06 15:41:48'),(141,'V-26571341','Recepcion','Recepcion de Mercancia','2018-11-06 15:44:39'),(142,'V-26571341','Requisicion','Requisicion de Mercancia','2018-11-06 15:44:39'),(143,'V-26571341','Recepcion','Recepcion de Mercancia','2018-11-06 15:46:12'),(144,'V-26571341','Recepcion','Recepcion de Mercancia','2018-11-06 15:46:30'),(145,'V-26571341','Requisicion','Requisicion de Mercancia','2018-11-06 15:46:30'),(146,'V-26571341','Recepcion','Recepcion de Mercancia','2018-11-06 15:47:38'),(147,'V-26571341','Recepcion','Recepcion de Mercancia','2018-11-06 15:48:22'),(148,'V-26571341','Requisicion','Requisicion de Mercancia','2018-11-06 15:48:22'),(149,'V-26571341','Recepcion','Recepcion de Mercancia','2018-11-06 15:48:45');
/*!40000 ALTER TABLE `auditoria_usuarios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categorias`
--

DROP TABLE IF EXISTS `categorias`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `categorias` (
  `ID_CATEGORIAS` char(15) NOT NULL,
  `DESCRIPCION_CATEGORIAS` varchar(60) NOT NULL,
  PRIMARY KEY (`ID_CATEGORIAS`),
  KEY `DESCRIPCION_CATEGORIAS` (`DESCRIPCION_CATEGORIAS`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categorias`
--

LOCK TABLES `categorias` WRITE;
/*!40000 ALTER TABLE `categorias` DISABLE KEYS */;
INSERT INTO `categorias` VALUES ('ASF',' ASFALTOS'),('CON',' CONEXIONES'),('BAT','BATERIAS'),('BYL','BOMBILLOS Y LAMPARAS'),('CAB','CABLES'),('CDL','CANALES DE LLUVIAS'),('CAR','CARBONES'),('CYA','CINTAS Y ADHESIVOS'),('EMP','EMPACADURAS'),('GYB','GRIFERIAS Y BAJANTES'),('HER','HERRAMIENTAS'),('LYC','LLAVES Y CERRADURAS'),('MAL','MALLAS'),('MAN','MANGUERAS'),('MDC','MATERIALES DE CONSTRUCCION'),('MAE','MATERIALES ELECTRICOS'),('OTR','OTROS'),('PEV','PEGAMENTOS VARIOS'),('PYS','PINTURAS Y SOLVENTES'),('ROD','RODAMIENTOS'),('TER','TERMINALES'),('TIS','TIRADORES SURTIDOS'),('TYC','TORNILLOS Y CLAVOS'),('TRU','TRUPER'),('TUB','TUBERIAS');
/*!40000 ALTER TABLE `categorias` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `currencies`
--

DROP TABLE IF EXISTS `currencies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `currencies` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `symbol` varchar(255) NOT NULL,
  `precision` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `thousand_separator` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `decimal_separator` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `code` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `currencies`
--

LOCK TABLES `currencies` WRITE;
/*!40000 ALTER TABLE `currencies` DISABLE KEYS */;
INSERT INTO `currencies` VALUES (1,'US Dollar','$','2',',','.','USD'),(2,'Libra Esterlina','&pound;','2',',','.','GBP'),(3,'Euro','â‚¬','2','.',',','EUR'),(4,'Bolivar Soberano','Bs.S','2','.',',','BSS');
/*!40000 ALTER TABLE `currencies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `detalle_factura`
--

DROP TABLE IF EXISTS `detalle_factura`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `detalle_factura` (
  `id_detalle` int(11) NOT NULL AUTO_INCREMENT,
  `numero_factura` int(11) NOT NULL,
  `id_producto` int(11) NOT NULL,
  `cantidad` int(11) NOT NULL,
  `precio_venta` double NOT NULL,
  PRIMARY KEY (`id_detalle`),
  KEY `numero_cotizacion` (`numero_factura`,`id_producto`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `detalle_factura`
--

LOCK TABLES `detalle_factura` WRITE;
/*!40000 ALTER TABLE `detalle_factura` DISABLE KEYS */;
INSERT INTO `detalle_factura` VALUES (2,1,2,3,20000),(3,1,1,1,12500),(4,1,1,2,12500),(5,1,2,1,20000);
/*!40000 ALTER TABLE `detalle_factura` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `detalles_pedido`
--

DROP TABLE IF EXISTS `detalles_pedido`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `detalles_pedido` (
  `ID_DETALLES_PEDIDO` int(15) NOT NULL AUTO_INCREMENT,
  `ID_PEDIDO` int(15) NOT NULL,
  `ID_PRODUCTO` varchar(15) NOT NULL,
  `CANTIDAD_PRODUCTO` int(15) NOT NULL,
  PRIMARY KEY (`ID_DETALLES_PEDIDO`),
  KEY `ID_PRODUCTO` (`ID_PRODUCTO`),
  KEY `ID_PEDIDO` (`ID_PEDIDO`),
  KEY `ID_PRODUCTO_2` (`ID_PRODUCTO`),
  CONSTRAINT `detalles_pedido_ibfk_2` FOREIGN KEY (`ID_PRODUCTO`) REFERENCES `productos` (`ID_PRODUCTO`),
  CONSTRAINT `detalles_pedido_ibfk_3` FOREIGN KEY (`ID_PEDIDO`) REFERENCES `pedidos` (`ID_PEDIDO`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `detalles_pedido`
--

LOCK TABLES `detalles_pedido` WRITE;
/*!40000 ALTER TABLE `detalles_pedido` DISABLE KEYS */;
INSERT INTO `detalles_pedido` VALUES (1,13,'IPACG',1),(2,13,'IPALG',1),(3,13,'IPAMA',1),(4,13,'11-001',1),(5,13,'110500G',1),(6,14,'IPAM3',10),(7,15,'IPACC',1),(8,15,'101029',1),(9,15,'209601',1),(10,15,'110B',1),(11,16,'IPACC',64),(12,17,'IPAC1/4',6),(13,18,'IPAC1/4',6),(14,19,'IPAC1/4',6),(15,20,'IPAC1/4',5),(16,21,'IPAC1/4',5),(17,22,'IPACC',4),(18,23,'IPAC1/4',135),(19,23,'IPACC',40),(20,24,'IPACC',19);
/*!40000 ALTER TABLE `detalles_pedido` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `detalles_recepcion`
--

DROP TABLE IF EXISTS `detalles_recepcion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `detalles_recepcion` (
  `ID_DETALLES_RECEPCION` int(15) NOT NULL AUTO_INCREMENT,
  `ID_RECEPCION` int(15) NOT NULL,
  `ID_PRODUCTO` varchar(15) NOT NULL,
  `CANTIDAD_RECEPCIONADA` int(11) NOT NULL,
  PRIMARY KEY (`ID_DETALLES_RECEPCION`),
  KEY `ID_REQUISICION` (`ID_RECEPCION`),
  KEY `ID_PRODUCTO` (`ID_PRODUCTO`),
  CONSTRAINT `detalles_recepcion_ibfk_1` FOREIGN KEY (`ID_RECEPCION`) REFERENCES `recepcion` (`ID_RECEPCION`),
  CONSTRAINT `detalles_recepcion_ibfk_2` FOREIGN KEY (`ID_PRODUCTO`) REFERENCES `productos` (`ID_PRODUCTO`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `detalles_recepcion`
--

LOCK TABLES `detalles_recepcion` WRITE;
/*!40000 ALTER TABLE `detalles_recepcion` DISABLE KEYS */;
INSERT INTO `detalles_recepcion` VALUES (1,1,'IPACC',24),(2,1,'100W',12),(3,1,'2201030MM',12),(4,2,'IPAC1/4',15),(5,3,'IPAC1/4',1),(6,4,'IPACC',20),(7,5,'IPAC1/4',10),(8,6,'IPAC1/4',15),(9,7,'IPACC',24),(10,7,'100W',12),(11,7,'2201030MM',12),(12,8,'IPAC1/4',15),(13,9,'IPACC',5),(14,10,'IPACC',-7),(15,11,'IPACC',22);
/*!40000 ALTER TABLE `detalles_recepcion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `detalles_requisicion`
--

DROP TABLE IF EXISTS `detalles_requisicion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `detalles_requisicion` (
  `ID_DETALLES_REQUISICION` int(15) NOT NULL AUTO_INCREMENT,
  `ID_REQUISICION` int(15) NOT NULL,
  `ID_PRODUCTO` varchar(15) NOT NULL,
  `CANTIDAD_REQUISICION` int(15) NOT NULL,
  PRIMARY KEY (`ID_DETALLES_REQUISICION`),
  KEY `ID_MOVIMIENTO` (`ID_REQUISICION`),
  KEY `ID_PRODUCTO` (`ID_PRODUCTO`),
  CONSTRAINT `detalles_requisicion_ibfk_2` FOREIGN KEY (`ID_PRODUCTO`) REFERENCES `productos` (`ID_PRODUCTO`),
  CONSTRAINT `detalles_requisicion_ibfk_3` FOREIGN KEY (`ID_REQUISICION`) REFERENCES `requisicion` (`ID_REQUISICION`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `detalles_requisicion`
--

LOCK TABLES `detalles_requisicion` WRITE;
/*!40000 ALTER TABLE `detalles_requisicion` DISABLE KEYS */;
INSERT INTO `detalles_requisicion` VALUES (1,10,'IPACC',24),(2,10,'100W',12),(3,10,'2201030MM',12),(4,11,'IPAC1/4',15),(5,12,'IPAC1/4',1),(6,13,'IPACC',20),(7,14,'IPAC1/4',10),(8,15,'IPAC1/4',5),(9,16,'IPAM3',10),(10,17,'IPAC1/4',5),(11,18,'IPALC',5),(12,19,'IPACC',5),(13,20,'IPACC',-7),(14,21,'IPACC',22);
/*!40000 ALTER TABLE `detalles_requisicion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `estado`
--

DROP TABLE IF EXISTS `estado`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `estado` (
  `ID_ESTADO` char(15) NOT NULL,
  `DESCRIPCION_ESTADO` text NOT NULL,
  PRIMARY KEY (`ID_ESTADO`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `estado`
--

LOCK TABLES `estado` WRITE;
/*!40000 ALTER TABLE `estado` DISABLE KEYS */;
INSERT INTO `estado` VALUES ('ANULADO','ANULADO'),('ENTREGADO','ENTREGADO'),('POR ENTREGAR','POR ENTREGAR');
/*!40000 ALTER TABLE `estado` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `facturas`
--

DROP TABLE IF EXISTS `facturas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `facturas` (
  `id_factura` int(11) NOT NULL AUTO_INCREMENT,
  `numero_factura` int(11) NOT NULL,
  `fecha_factura` datetime NOT NULL,
  `id_cliente` int(11) NOT NULL,
  `id_vendedor` int(11) NOT NULL,
  `condiciones` varchar(30) NOT NULL,
  `total_venta` varchar(20) NOT NULL,
  `estado_factura` tinyint(1) NOT NULL,
  PRIMARY KEY (`id_factura`),
  UNIQUE KEY `numero_cotizacion` (`numero_factura`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `facturas`
--

LOCK TABLES `facturas` WRITE;
/*!40000 ALTER TABLE `facturas` DISABLE KEYS */;
INSERT INTO `facturas` VALUES (2,1,'2018-09-28 02:46:26',1,1,'1','136300',1);
/*!40000 ALTER TABLE `facturas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pedidos`
--

DROP TABLE IF EXISTS `pedidos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pedidos` (
  `ID_PEDIDO` int(15) NOT NULL AUTO_INCREMENT,
  `CI_RIF` varchar(15) NOT NULL,
  `FECHA_PEDIDO` date NOT NULL,
  `ID_ESTADO` char(15) NOT NULL,
  PRIMARY KEY (`ID_PEDIDO`),
  KEY `CI_RIF` (`CI_RIF`),
  KEY `ID_ESTADO` (`ID_ESTADO`),
  CONSTRAINT `pedidos_ibfk_2` FOREIGN KEY (`ID_ESTADO`) REFERENCES `estado` (`ID_ESTADO`),
  CONSTRAINT `pedidos_ibfk_3` FOREIGN KEY (`CI_RIF`) REFERENCES `usuarios` (`CI_RIF`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pedidos`
--

LOCK TABLES `pedidos` WRITE;
/*!40000 ALTER TABLE `pedidos` DISABLE KEYS */;
INSERT INTO `pedidos` VALUES (13,'V-25074617','2017-11-29','POR ENTREGAR'),(14,'V-25074617','2017-12-18','POR ENTREGAR'),(15,'V-25074617','2018-04-06','ENTREGADO'),(16,'V-25074617','2018-04-06','POR ENTREGAR'),(17,'V-25074617','2018-10-09','ENTREGADO'),(18,'V-25074617','2018-10-10','POR ENTREGAR'),(19,'V-25074617','2018-10-10','POR ENTREGAR'),(20,'V-25074617','2018-10-24','ANULADO'),(21,'V-25074617','2018-11-03','POR ENTREGAR'),(22,'V-25074616','2018-11-03','POR ENTREGAR'),(23,'V-26571341','2018-11-06','POR ENTREGAR'),(24,'V-26571341','2018-11-06','POR ENTREGAR');
/*!40000 ALTER TABLE `pedidos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `perfil`
--

DROP TABLE IF EXISTS `perfil`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `perfil` (
  `id_perfil` int(11) NOT NULL AUTO_INCREMENT,
  `nombre_empresa` varchar(150) NOT NULL,
  `direccion` varchar(255) NOT NULL,
  `ciudad` varchar(100) NOT NULL,
  `codigo_postal` varchar(100) NOT NULL,
  `estado` varchar(100) NOT NULL,
  `telefono` varchar(20) NOT NULL,
  `email` varchar(64) NOT NULL,
  `impuesto` int(2) NOT NULL,
  `moneda` varchar(6) NOT NULL,
  `logo_url` varchar(255) NOT NULL,
  PRIMARY KEY (`id_perfil`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `perfil`
--

LOCK TABLES `perfil` WRITE;
/*!40000 ALTER TABLE `perfil` DISABLE KEYS */;
INSERT INTO `perfil` VALUES (1,'SISTEMAS WEB LA','Colonias Los Andes  #250','Moncagua','3301','San Miguel','+(503) 2682-555','info@obedalvarado.pw',16,'$','img/1538095316_12742303_10207088662907575_6315466741255512216_n.jpg');
/*!40000 ALTER TABLE `perfil` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `productos`
--

DROP TABLE IF EXISTS `productos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `productos` (
  `ID_PRODUCTO` varchar(15) NOT NULL,
  `DESCRIPCION_PRODUCTO` varchar(60) NOT NULL,
  `ID_CATEGORIAS` char(15) NOT NULL,
  `EXISTENCIA_PRODUCTO` int(15) NOT NULL,
  `PRECIO` float NOT NULL,
  `UNIDAD` varchar(10) NOT NULL,
  PRIMARY KEY (`ID_PRODUCTO`),
  KEY `DESCRIPCCION_PRODUCTO` (`DESCRIPCION_PRODUCTO`),
  KEY `ID_CATEGORIA` (`ID_CATEGORIAS`) USING BTREE,
  KEY `DESCRIPCION_PRODUCTO` (`DESCRIPCION_PRODUCTO`),
  CONSTRAINT `productos_ibfk_3` FOREIGN KEY (`ID_CATEGORIAS`) REFERENCES `categorias` (`ID_CATEGORIAS`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `productos`
--

LOCK TABLES `productos` WRITE;
/*!40000 ALTER TABLE `productos` DISABLE KEYS */;
INSERT INTO `productos` VALUES ('100029','CARRETILLA ALBAï¿½IL 85L R/AIRE     NARANJA','HER',40,200,''),('100W','BOMBILLO 110 - 100W HALOGENO SYLVANIA','BYL',57,200,''),('101029','BOMBILLO AHORRADOR E14 11WATS SEMILIC','BYL',87,300,''),('101050','BOMBILLO AHORRADOR ESPIRAL SEMILIC  15W','BYL',56,100,''),('11-001','LAMPARA PLAFON TRANSPARENTE 6\"','BYL',55,300,''),('1102','PULSADOR P/ EMPOTRAR TICINO','MAE',58,200,''),('110500G','BOMBILLO DE HALOGENO  500W G.E     110V','BYL',57,600,''),('110B','PROTECTOR A/A C/BORNER 110W NINJA 3AÑO G','MAE',55,200,''),('110C','PROTECTOR COMPUTADORA  110W NINJA 3AÑO G','MAE',56,200,''),('111969','CUCHARA LUXVEN 8\" PUNTA REDONDA','HER',56,200,''),('113385','LLAVE P/TUBO 14\" T/RIDGID','HER',56,200,''),('12-026','LAMPARA BAMBER 8\" TORNASOL','BYL',56,100,''),('125353','CHICURA VINKO DE ALTA CALIDAD 2 LB','HER',56,200,''),('133412','PALA CUADRADA MANGO PLASTICO','HER',56,200,''),('1382594','MARTILLO CARP. 25mm CASCABEL','HER',56,200,''),('14-045','LAMPARA FLUORESCENTE CUADRADA 22 W','BYL',56,200,''),('14515','MULTITOMA 6 TOMA BRUFER','MAE',16,200,''),('16-150','CINCEL PUNTA BELLOTA 16-150','HER',56,200,''),('17-047','ESCUADRA METALICA 8\"','HER',56,200,''),('1X15EE','BREAKER P/ EMPOTRAR YAINO  1X15 AL 1X30','MAE',13,200,''),('1X15ES','BREAKER P/ EMPOTRAR SIEMEN 1X15','MAE',29,200,''),('1X15ET','BREAKER P/ EMPOTRAR TICINO 1X15 AL 1X30','MAE',24,200,''),('20103','ESCARDILLA 2KG. ECONOMICA','HER',106,200,''),('2032','PILA 3V 2032 C/U','BAT',4,200,''),('209601','CERR CILINDRO FIJO BLUELOOCK','LYC',12,200,''),('209671','CERR P/VITRINA C/LLAVE','LYC',20,200,''),('2117','CERR T/POMO METAL C/LLAVE BLUELOCK','LYC',20,200,''),('2127','CERR T/POMO METAL S/LLAVE VENLOCK','LYC',10,200,''),('2201030MM','CANDADO DE LATON PLANOS 30mm CISA','LYC',47,200,''),('2201040MM','CANDADO DE LATON PLANOS 40mm CISA','LYC',73,200,''),('2201050MM','CANDADO DE LATON PLANOS 50mm CISA','LYC',25,200,''),('2201060MM','CANDADO DE LATON PLANOS 60mm CISA','LYC',46,200,''),('22011-52','CANDADO ARCO LARGO A/Z 50mm  CISA','LYC',21,200,''),('22WG','FLUORESCENTE 22W CIRCULAR G/ELECTRIC','BYL',59,200,''),('5001','PISTOLA PARA PINTAR C/ENV PLAS D GRAVED','HER',59,200,''),('637','EXTENSION ELECTRICA BLANCA    5MTS SEMIL','MAE',27,200,''),('668','EXTENSION ELECTRICA NEGRA     5MTS SEMIL','MAE',59,200,''),('71453','BOMBILLO TIPO VELA E-12 FERMETAL','BYL',12,200,''),('846','HEMBRILLA ELECTRICA 110V ESPAÑOLA','LYC',99,200,''),('BP4','BROCHA PRETUL 4\"','PYS',12,200,''),('CA2','CLAVOS DE ACERO 2\"','TYC',114,200,''),('CAB-01','Cable UTP Nivel 6','CAB',100,200,'Metro'),('CAR-01','Carbon Negro','CAR',39,200,'UND'),('CDL-01','Canal de Lluvia de 6\"','CDL',5,200,'UND'),('CON-01','Conexion de tuberia Negra','CON',36,200,'UND'),('CYA','Cinta Metrica','CYA',30,200,'ROLLO'),('GPAA','PILA AA  ALCALINA PAQ','BAT',20,400,''),('GPAAA','PILA AAA  ALCALINA PAQ','BAT',24,450,''),('IPAC1/4','ASFALTO IPA CEMENTO 1/4 GALON GOTA FIX','ASF',0,200,''),('IPACC','ASFALTO IPA CEMENTO DE CUÑETE','ASF',1,5000,''),('IPACG','ASFALTO IPA CEMENTO DE GALON','ASF',19,1000,''),('IPALC','ASFALTO IPA LIQUIDO DE CUÑETE','ASF',11,4500,''),('IPALG','ASFALTO IPA LIQUIDO DE GALON','ASF',40,3000,''),('IPAM3','MANTO 3.15 MILIMETRO IPA','ASF',16,5000,''),('IPAMA','MANTO ALUMINIO ALUFLEX 10MTS','ASF',30,7000,''),('IPAPC','ASFALTO IPA PLASTICO DE CUÑETE','ASF',11,1000,''),('IPAPG','ASFALTO IPA PLASTICO DE GALON','ASF',11,1000,''),('IPAPMC','ASFALTO IPA PRIMER DE CUÑETE','ASF',30,5000,''),('IPAPMG','ASFALTO IPA PRIMER DE GALON','ASF',6,1000,''),('P12','PILA 12VOLTIO C/U','BAT',6,150,''),('P2025','PILA 2025 C/U','BAT',10,200,''),('P3V','PILA 3 VOLTIO','BAT',4,300,''),('P828','PILA 27A C/U','BAT',23,270,''),('T13/16','TORNILLO 13/16 MEDIANOS','TYC',464,200,'');
/*!40000 ALTER TABLE `productos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `recepcion`
--

DROP TABLE IF EXISTS `recepcion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `recepcion` (
  `ID_RECEPCION` int(15) NOT NULL AUTO_INCREMENT,
  `FECHA_RECEPCION` date NOT NULL,
  `CI_RIF` varchar(15) NOT NULL,
  PRIMARY KEY (`ID_RECEPCION`),
  KEY `CI_RIF` (`CI_RIF`),
  KEY `CI_RIF_2` (`CI_RIF`),
  CONSTRAINT `recepcion_ibfk_1` FOREIGN KEY (`CI_RIF`) REFERENCES `usuarios` (`CI_RIF`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `recepcion`
--

LOCK TABLES `recepcion` WRITE;
/*!40000 ALTER TABLE `recepcion` DISABLE KEYS */;
INSERT INTO `recepcion` VALUES (1,'2018-04-04','V-25074617'),(2,'2018-04-04','V-25074617'),(3,'2018-04-06','V-25074617'),(4,'2018-04-06','V-25074617'),(5,'2018-10-24','V-25074617'),(6,'2018-11-03','V-25074617'),(7,'2018-11-03','V-25074617'),(8,'2018-11-06','V-25074617'),(9,'2018-11-06','V-26571341'),(10,'2018-11-06','V-26571341'),(11,'2018-11-06','V-26571341');
/*!40000 ALTER TABLE `recepcion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `requisicion`
--

DROP TABLE IF EXISTS `requisicion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `requisicion` (
  `ID_REQUISICION` int(15) NOT NULL AUTO_INCREMENT,
  `OBSERVACION_REQUISICION` varchar(150) NOT NULL,
  `FECHA_REQUISICION` date NOT NULL,
  `CI_RIF` varchar(15) NOT NULL,
  PRIMARY KEY (`ID_REQUISICION`),
  KEY `CI_RIF` (`CI_RIF`),
  CONSTRAINT `requisicion_ibfk_1` FOREIGN KEY (`CI_RIF`) REFERENCES `usuarios` (`CI_RIF`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `requisicion`
--

LOCK TABLES `requisicion` WRITE;
/*!40000 ALTER TABLE `requisicion` DISABLE KEYS */;
INSERT INTO `requisicion` VALUES (10,'','2017-11-29','V-25074617'),(11,'','2018-04-04','V-25074617'),(12,'','2018-04-06','V-25074617'),(13,'','2018-04-06','V-25074617'),(14,'','2018-10-24','V-25074617'),(15,'','2018-11-03','V-25074617'),(16,'','2018-11-03','V-25074617'),(17,'','2018-11-06','J-300941736'),(18,'','2018-11-06','V-25074617'),(19,'','2018-11-06','V-26571341'),(20,'','2018-11-06','V-26571341'),(21,'','2018-11-06','V-26571341');
/*!40000 ALTER TABLE `requisicion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tipo_usuarios`
--

DROP TABLE IF EXISTS `tipo_usuarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tipo_usuarios` (
  `ID_USUARIOS` varchar(15) NOT NULL,
  `DESCRIPCION_USUARIOS` varchar(60) NOT NULL,
  PRIMARY KEY (`ID_USUARIOS`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipo_usuarios`
--

LOCK TABLES `tipo_usuarios` WRITE;
/*!40000 ALTER TABLE `tipo_usuarios` DISABLE KEYS */;
INSERT INTO `tipo_usuarios` VALUES ('ADM','ADMINISTRADOR'),('CLI','CLIENTE'),('TRA','TRABAJADOR');
/*!40000 ALTER TABLE `tipo_usuarios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tmp`
--

DROP TABLE IF EXISTS `tmp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tmp` (
  `id_tmp` int(11) NOT NULL AUTO_INCREMENT,
  `id_producto` int(11) NOT NULL,
  `cantidad_tmp` int(11) NOT NULL,
  `precio_tmp` double(8,2) DEFAULT NULL,
  `session_id` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id_tmp`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tmp`
--

LOCK TABLES `tmp` WRITE;
/*!40000 ALTER TABLE `tmp` DISABLE KEYS */;
INSERT INTO `tmp` VALUES (1,100029,1,200.00,'0vl7p34gkf5d1nacnegcv0mq35'),(2,100,4,200.00,'0vl7p34gkf5d1nacnegcv0mq35'),(3,100029,1,200.00,'663nrov1kmkroo5pnvsnatfcm2');
/*!40000 ALTER TABLE `tmp` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuarios`
--

DROP TABLE IF EXISTS `usuarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `usuarios` (
  `CI_RIF` varchar(15) NOT NULL,
  `NOMBRE_USUARIOS` varchar(60) NOT NULL,
  `CONTRASENA` varchar(60) NOT NULL,
  `CORREO` varchar(60) NOT NULL,
  `TELEFONO` varchar(13) NOT NULL,
  `DIRECCION` varchar(150) NOT NULL,
  `FECHA_NACIMIENTO` date NOT NULL,
  `ID_USUARIOS` varchar(15) NOT NULL,
  PRIMARY KEY (`CI_RIF`),
  KEY `ID_USUARIOS` (`ID_USUARIOS`),
  KEY `ID_USUARIOS_2` (`ID_USUARIOS`),
  CONSTRAINT `usuarios_ibfk_1` FOREIGN KEY (`ID_USUARIOS`) REFERENCES `tipo_usuarios` (`ID_USUARIOS`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuarios`
--

LOCK TABLES `usuarios` WRITE;
/*!40000 ALTER TABLE `usuarios` DISABLE KEYS */;
INSERT INTO `usuarios` VALUES ('J-13780965','LUIS APONTE','fcea920f7412b5da7be0cf42b8c93759','PROFESORLUISAPONTE@GMAIL.COM','04125678990','MARACAY','2017-11-21','CLI'),('J-300941736','FERRETERIA LA CAMPANA, C.A.','652e234eb7d92b3d14841e1a24d80e14','FERRETERIALACAMPANACA@HOTMAIL.COM','02432378756','AV 10 DE DICIEMBRE, MARACAY EDO ARAGUA','1970-01-01','TRA'),('V- vbnm,./','CARLOS RAMOS','202cb962ac59075b964b07152d234b70','DONARDO_E_04@HOTMAIL.COM2','xccvbvnbm,','BN  BN  BV NBCVB CVB ','0000-00-00','CLI'),('V-12343344','CARLOS RAMOS','cc70e9369e9f87a660812e08d76a828e','DONARDO.E.04@GMAIL.COM','04142979317','MARACAY','1974-08-19','CLI'),('V-25074616','DONAISI PINEDA','e10adc3949ba59abbe56e057f20f883e','DONAISI@GMAIL.COM','041255563245','COLOMBIA','2009-06-29','CLI'),('V-25074617','DONARDO EMILIO PINEDA PINERO','cc70e9369e9f87a660812e08d76a828e','DONARDO_E_04@HOTMAIL.COM','   0414297931','LOS OLIVOS','1995-08-08','ADM'),('V-26571341','JOSE ANGEL PADRON PADRON','955117078cc34214ec4966b195955bfa','JAPP19961996@GMAIL.COM','04243550806','EL LIMON','1996-06-18','ADM');
/*!40000 ALTER TABLE `usuarios` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-11-06 18:51:57
