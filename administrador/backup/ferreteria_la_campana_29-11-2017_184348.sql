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
) ENGINE=InnoDB AUTO_INCREMENT=261 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auditoria_usuarios`
--

LOCK TABLES `auditoria_usuarios` WRITE;
/*!40000 ALTER TABLE `auditoria_usuarios` DISABLE KEYS */;
INSERT INTO `auditoria_usuarios` VALUES (55,'V-26571341','Entrada','Entrada al Sistema','2017-11-18 13:03:46'),(56,'V-26571341','Registro','Registro de categoria','2017-11-18 13:04:24'),(57,'V-26571341','Registro','Registro de categoria','2017-11-18 13:07:54'),(58,'V-26571341','Registro','Registro de categoria','2017-11-18 13:08:52'),(59,'V-26571341','Registro','Registro de categoria','2017-11-18 13:09:39'),(60,'V-26571341','Registro','Registro de categoria','2017-11-18 13:10:43'),(61,'V-26571341','Registro','Registro de categoria','2017-11-18 13:15:03'),(62,'V-26571341','Registro','Registro de categoria','2017-11-18 13:19:42'),(63,'V-26571341','Registro','Registro de categoria','2017-11-18 13:21:19'),(64,'V-26571341','Registro','Registro de categoria','2017-11-18 13:24:26'),(65,'V-26571341','Registro','Registro de categoria','2017-11-18 13:25:02'),(66,'V-26571341','Registro','Registro de categoria','2017-11-18 13:25:27'),(67,'V-26571341','Registro','Registro de categoria','2017-11-18 13:35:45'),(68,'V-26571341','Registro','Registro de categoria','2017-11-18 13:37:30'),(69,'V-26571341','Registro','Registro de categoria','2017-11-18 13:38:35'),(70,'V-26571341','Registro','Registro de Estado de pedido','2017-11-18 13:42:25'),(71,'V-26571341','Registro','Registro de categoria','2017-11-18 13:43:53'),(72,'V-26571341','Registro','Registro de categoria','2017-11-18 13:49:46'),(73,'V-26571341','Registro','Registro de categoria','2017-11-18 13:50:22'),(74,'V-26571341','Registro','Registro de categoria','2017-11-18 13:50:42'),(75,'V-26571341','Registro','Registro de categoria','2017-11-18 13:51:27'),(76,'V-26571341','Salida','Salida del Sistema','2017-11-18 13:55:37'),(77,'V-26571341','Entrada','Entrada al Sistema','2017-11-18 13:55:46'),(78,'V-26571341','Registro','Registro de categoria','2017-11-18 13:56:17'),(79,'V-26571341','Registro','Registro de categoria','2017-11-18 13:58:02'),(80,'V-26571341','Registro','Registro de categoria','2017-11-18 13:58:49'),(81,'V-25074617','Entrada','Entrada al Sistema','2017-11-20 05:00:48'),(82,'V-25074617','Salida','Salida del Sistema','2017-11-20 05:03:43'),(83,'V-26571341','Entrada','Entrada al Sistema','2017-11-20 05:05:20'),(84,'V-25074617','Entrada','Entrada al Sistema','2017-11-20 06:24:01'),(85,'V-25074617','Registro','Registro de articulo','2017-11-20 06:27:04'),(86,'V-25074617','Salida','Salida del Sistema','2017-11-20 07:50:18'),(87,'V-25074617','Entrada','Entrada al Sistema','2017-11-20 05:01:13'),(88,'V-26571341','Entrada','Entrada al Sistema','2017-11-20 07:45:33'),(89,'V-26571341','Salida','Salida del Sistema','2017-11-20 08:54:53'),(90,'V-26571341','Entrada','Entrada al Sistema','2017-11-20 08:56:28'),(91,'V-26571341','Salida','Salida del Sistema','2017-11-20 09:15:29'),(92,'V-26571341','Entrada','Entrada al Sistema','2017-11-20 11:49:53'),(93,'V-26571341','Entrada','Entrada al Sistema','2017-11-20 12:06:04'),(94,'V-26571341','Salida','Salida del Sistema','2017-11-20 12:46:36'),(95,'V-26571341','Entrada','Entrada al Sistema','2017-11-20 12:52:02'),(96,'V-26571341','Salida','Salida del Sistema','2017-11-20 12:52:05'),(97,'V-26571341','Entrada','Entrada al Sistema','2017-11-20 12:53:05'),(98,'V-26571341','Registro','Registro de Estado de pedido','2017-11-20 12:55:57'),(99,'V-26571341','Registro','Registro de Estado de pedido','2017-11-20 13:00:14'),(100,'V-26571341','Registro','Registro de Estado de pedido','2017-11-20 13:00:32'),(101,'V-26571341','Registro','Registro de Estado de pedido','2017-11-20 13:01:46'),(102,'V-26571341','Registro','Registro de Estado de pedido','2017-11-20 13:02:31'),(103,'V-26571341','Registro','Registro de Estado de pedido','2017-11-20 13:02:42'),(104,'V-26571341','Eliminacion','Eliminacion de Estado de pedido','2017-11-20 13:07:27'),(105,'V-26571341','Modificacion','Modificacion de Estado de pedido','2017-11-20 13:08:05'),(106,'V-26571341','Modificacion','Modificacion de Estado de pedido','2017-11-20 13:08:27'),(107,'V-26571341','Registro','Registro de Estado de pedido','2017-11-20 13:08:37'),(108,'V-26571341','Pedido','Creacion de Pedido','2017-11-20 13:11:00'),(109,'V-26571341','Pedido','Creacion de Pedido','2017-11-20 13:11:01'),(110,'V-26571341','Pedido','Creacion de Pedido','2017-11-20 13:11:01'),(111,'V-26571341','Pedido','Creacion de Pedido','2017-11-20 13:11:01'),(112,'V-26571341','Pedido','Creacion de Pedido','2017-11-20 13:11:01'),(113,'V-26571341','Modificacion','Modificacion de datos de Pedido','2017-11-20 13:13:39'),(116,'V-26571341','Pedido','Creacion de Pedido','2017-11-20 13:29:14'),(118,'V-26571341','Pedido','Creacion de Pedido','2017-11-20 13:33:35'),(120,'V-26571341','Eliminacion','Eliminacion de Estado de pedido','2017-11-20 13:38:50'),(121,'V-26571341','Modificacion','Procesamiento de estado de pedido','2017-11-20 13:38:56'),(122,'V-26571341','Modificacion','Procesamiento de estado de pedido','2017-11-20 13:40:08'),(123,'V-26571341','Modificacion','Pedido Entregado','2017-11-20 13:44:52'),(124,'V-26571341','Modificacion','Pedido Entregado','2017-11-20 13:45:33'),(125,'V-26571341','Modificacion','Pedido Entregado','2017-11-20 13:45:50'),(126,'V-26571341','Modificacion','Procesamiento de estado de pedido','2017-11-20 13:46:07'),(127,'V-26571341','Modificacion','Anulacion de Pedido','2017-11-20 13:46:17'),(128,'V-26571341','Modificacion','Anulacion de Pedido','2017-11-20 13:46:29'),(129,'V-26571341','Modificacion','Pedido Entregado','2017-11-20 13:52:01'),(130,'V-26571341','Modificacion','Pedido Entregado','2017-11-20 13:52:45'),(131,'V-26571341','Modificacion','Anulacion de Pedido','2017-11-20 13:54:40'),(132,'V-26571341','Modificacion','Anulacion de Pedido','2017-11-20 13:56:27'),(133,'V-26571341','Modificacion','Pedido Entregado','2017-11-20 13:57:30'),(134,'V-26571341','Registro','Registro de categoria','2017-11-20 13:59:57'),(135,'V-26571341','Registro','Registro de categoria','2017-11-20 14:08:42'),(136,'V-26571341','Registro','Registro de categoria','2017-11-20 14:09:01'),(137,'V-26571341','Registro','Registro de categoria','2017-11-20 14:09:07'),(138,'V-26571341','Registro','Registro de categoria','2017-11-20 14:15:23'),(139,'V-26571341','Registro','Registro de categoria','2017-11-20 14:15:39'),(140,'V-26571341','Registro','Registro de categoria','2017-11-20 14:16:37'),(141,'V-26571341','Registro','Registro de categoria','2017-11-20 14:18:47'),(142,'V-26571341','Registro','Registro de categoria','2017-11-20 14:24:12'),(143,'V-26571341','Registro','Registro de categoria','2017-11-20 14:24:57'),(144,'V-26571341','Salida','Salida del Sistema','2017-11-20 14:27:58'),(145,'V-26571341','Entrada','Entrada al Sistema','2017-11-21 05:26:17'),(146,'V-25074617','Entrada','Entrada al Sistema','2017-11-21 10:29:36'),(147,'V-25074617','Salida','Salida del Sistema','2017-11-21 10:46:08'),(148,'V-26571341','Entrada','Entrada al Sistema','2017-11-21 12:34:16'),(149,'V-26571341','Entrada','Entrada al Sistema','2017-11-21 13:55:24'),(150,'V-26571341','Registro','Registro de articulo','2017-11-21 14:13:36'),(151,'V-26571341','Registro','Registro de articulo','2017-11-21 14:14:45'),(152,'V-26571341','Registro','Registro de articulo','2017-11-21 14:17:09'),(153,'V-26571341','Registro','Registro de articulo','2017-11-21 14:18:07'),(154,'V-26571341','Registro','Registro de articulo','2017-11-21 14:19:41'),(155,'V-26571341','Registro','Registro de articulo','2017-11-21 14:21:25'),(156,'V-26571341','Registro','Registro de articulo','2017-11-21 14:22:36'),(157,'V-26571341','Registro','Registro de articulo','2017-11-21 14:23:36'),(158,'V-26571341','Registro','Registro de articulo','2017-11-21 14:23:52'),(159,'V-26571341','Registro','Registro de articulo','2017-11-21 14:25:07'),(160,'V-26571341','Registro','Registro de articulo','2017-11-21 14:25:17'),(161,'V-26571341','Registro','Registro de articulo','2017-11-21 14:27:02'),(162,'V-26571341','Registro','Registro de articulo','2017-11-21 14:30:36'),(163,'V-26571341','Registro','Registro de articulo','2017-11-21 14:31:29'),(164,'V-26571341','Registro','Registro de articulo','2017-11-21 14:32:18'),(165,'V-26571341','Registro','Registro de articulo','2017-11-21 14:33:12'),(166,'V-26571341','Registro','Registro de articulo','2017-11-21 14:35:18'),(167,'V-26571341','Registro','Registro de articulo','2017-11-21 14:36:22'),(168,'V-26571341','Registro','Registro de articulo','2017-11-21 14:36:40'),(169,'V-26571341','Registro','Registro de articulo','2017-11-21 14:38:07'),(170,'V-26571341','Registro','Registro de articulo','2017-11-21 14:41:02'),(171,'V-26571341','Registro','Registro de articulo','2017-11-21 14:43:03'),(172,'V-26571341','Registro','Registro de articulo','2017-11-21 14:43:27'),(173,'V-26571341','Entrada','Entrada al Sistema','2017-11-21 15:12:17'),(174,'V-26571341','Recepcion','Recepcion de Mercancia','2017-11-21 15:12:41'),(175,'V-26571341','Requisicion','Requisicion de Mercancia','2017-11-21 15:12:41'),(176,'V-26571341','Recepcion','Recepcion de Mercancia','2017-11-21 15:12:41'),(177,'V-26571341','Requisicion','Requisicion de Mercancia','2017-11-21 15:12:41'),(178,'V-26571341','Recepcion','Recepcion de Mercancia','2017-11-21 15:14:06'),(179,'V-26571341','Recepcion','Recepcion de Mercancia','2017-11-21 15:14:06'),(180,'V-26571341','Entrada','Entrada al Sistema','2017-11-22 09:40:53'),(181,'V-26571341','Entrada','Entrada al Sistema','2017-11-22 09:51:27'),(182,'V-26571341','Registro','Registro de usuario','2017-11-22 09:53:47'),(183,'V-26571341','Salida','Salida del Sistema','2017-11-22 09:53:51'),(184,'V-25074229','Entrada','Entrada al Sistema','2017-11-22 09:55:22'),(185,'V-25074229','Salida','Salida del Sistema','2017-11-22 09:59:29'),(186,'V-26571341','Entrada','Entrada al Sistema','2017-11-22 09:59:37'),(187,'V-26571341','Salida','Salida del Sistema','2017-11-22 09:59:57'),(188,'V-25074229','Entrada','Entrada al Sistema','2017-11-22 10:00:48'),(189,'V-25074229','Pedido','Creacion de Pedido','2017-11-22 10:09:01'),(190,'V-25074229','Pedido','Creacion de Pedido','2017-11-22 10:09:01'),(191,'V-25074229','Salida','Salida del Sistema','2017-11-22 10:34:02'),(192,'V-26571341','Entrada','Entrada al Sistema','2017-11-22 10:34:10'),(193,'V-26571341','Salida','Salida del Sistema','2017-11-22 10:34:45'),(194,'V-25074229','Entrada','Entrada al Sistema','2017-11-22 10:35:07'),(195,'V-25074229','Salida','Salida del Sistema','2017-11-22 10:39:58'),(196,'V-26571341','Entrada','Entrada al Sistema','2017-11-22 10:41:36'),(197,'V-26571341','Salida','Salida del Sistema','2017-11-22 10:42:28'),(198,'J-300941736','Entrada','Entrada al Sistema','2017-11-22 10:43:25'),(199,'J-300941736','Registro','Registro de articulo','2017-11-22 10:54:29'),(200,'J-300941736','Entrada','Entrada al Sistema','2017-11-22 13:28:58'),(201,'V-26571341','Entrada','Entrada al Sistema','2017-11-22 13:36:12'),(202,'V-26571341','Salida','Salida del Sistema','2017-11-22 13:37:15'),(203,'J-300941736','Entrada','Entrada al Sistema','2017-11-22 13:38:46'),(204,'V-25074229','Entrada','Entrada al Sistema','2017-11-22 13:40:26'),(205,'V-26571341','Entrada','Entrada al Sistema','2017-11-22 13:44:07'),(206,'V-26571341','Entrada','Entrada al Sistema','2017-11-22 13:45:04'),(207,'V-26571341','Entrada','Entrada al Sistema','2017-11-22 13:45:13'),(208,'V-26571341','Entrada','Entrada al Sistema','2017-11-22 13:46:12'),(209,'V-26571341','Entrada','Entrada al Sistema','2017-11-22 13:46:28'),(210,'V-26571341','Entrada','Entrada al Sistema','2017-11-22 13:47:28'),(211,'V-25074229','Entrada','Entrada al Sistema','2017-11-22 13:51:17'),(212,'V-25074229','Salida','Salida del Sistema','2017-11-22 13:51:30'),(213,'V-25074617','Entrada','Entrada al Sistema','2017-11-22 15:22:37'),(214,'J-300941736','Entrada','Entrada al Sistema','2017-11-25 16:30:06'),(215,'V-25074617','Entrada','Entrada al Sistema','2017-11-25 16:30:32'),(216,'V-25074617','Salida','Salida del Sistema','2017-11-25 05:49:29'),(217,'V-25074617','Entrada','Entrada al Sistema','2017-11-25 05:50:08'),(218,'V-25074617','Entrada','Entrada al Sistema','2017-11-25 06:44:49'),(219,'V-25074617','Entrada','Entrada al Sistema','2017-11-26 07:07:31'),(220,'V-25074617','Salida','Salida del Sistema','2017-11-26 07:08:25'),(221,'V-25074617','Entrada','Entrada al Sistema','2017-11-26 07:08:36'),(222,'V-25074617','Pedido','Creacion de Pedido','2017-11-26 07:36:35'),(223,'V-25074617','Pedido','Creacion de Pedido','2017-11-26 07:36:35'),(224,'V-25074617','Modificacion','Modificacion de datos de Pedido','2017-11-26 07:42:02'),(225,'V-25074617','Salida','Salida del Sistema','2017-11-26 08:11:06'),(226,'J-300941736','Entrada','Entrada al Sistema','2017-11-26 08:11:20'),(227,'J-300941736','Pedido','Creacion de Pedido','2017-11-26 08:14:45'),(228,'J-300941736','Modificacion','Modificacion de datos de Pedido','2017-11-26 08:16:12'),(229,'J-300941736','Recepcion','Recepcion de Mercancia','2017-11-26 08:18:43'),(230,'J-300941736','Requisicion','Requisicion de Mercancia','2017-11-26 08:18:43'),(231,'J-300941736','Recepcion','Recepcion de Mercancia','2017-11-26 08:19:10'),(232,'V-26571341','Entrada','Entrada al Sistema','2017-11-26 08:43:14'),(233,'J-13780965','Entrada','Entrada al Sistema','2017-11-27 12:18:19'),(234,'J-13780965','Pedido','Creacion de Pedido','2017-11-27 12:18:56'),(235,'J-13780965','Modificacion','Modificacion de datos de Pedido','2017-11-27 12:19:28'),(236,'J-13780965','Modificacion','Modificacion de datos de Pedido','2017-11-27 12:19:51'),(237,'J-13780965','Pedido','Creacion de Pedido','2017-11-27 12:20:33'),(238,'J-13780965','Salida','Salida del Sistema','2017-11-27 12:22:02'),(239,'V-25074617','Entrada','Entrada al Sistema','2017-11-27 12:22:14'),(240,'V-25074617','Salida','Salida del Sistema','2017-11-27 12:23:07'),(241,'V-25074617','Entrada','Entrada al Sistema','2017-11-27 12:23:16'),(242,'V-25074617','Recepcion','Recepcion de Mercancia','2017-11-27 12:24:19'),(243,'V-25074617','Requisicion','Requisicion de Mercancia','2017-11-27 12:24:19'),(244,'V-25074617','Recepcion','Recepcion de Mercancia','2017-11-27 12:24:49'),(245,'V-25074617','Modificacion','Anulacion de Pedido','2017-11-27 12:25:39'),(246,'V-25074617','Pedido','Creacion de Pedido','2017-11-27 12:28:28'),(247,'V-25074617','Salida','Salida del Sistema','2017-11-27 12:32:07'),(248,'J-300941736','Entrada','Entrada al Sistema','2017-11-28 08:32:58'),(249,'V-25074617','Entrada','Entrada al Sistema','2017-11-28 08:48:01'),(250,'V-25074617','Modificacion','Modificacion de datos de Articulo','2017-11-28 08:52:24'),(251,'V-25074617','Entrada','Entrada al Sistema','2017-11-28 12:16:43'),(252,'V-25074617','Entrada','Entrada al Sistema','2017-11-29 06:34:35'),(253,'V-25074617','Pedido','Creacion de Pedido','2017-11-29 08:30:41'),(254,'V-25074617','Pedido','Creacion de Pedido','2017-11-29 08:30:41'),(255,'V-25074617','Recepcion','Recepcion de Mercancia','2017-11-29 08:31:18'),(256,'V-25074617','Requisicion','Requisicion de Mercancia','2017-11-29 08:31:18'),(257,'V-25074617','Recepcion','Recepcion de Mercancia','2017-11-29 08:31:28'),(258,'V-25074617','Pedido','Creacion de Pedido','2017-11-29 08:35:23'),(259,'V-25074617','Salida','Salida del Sistema','2017-11-29 10:38:53'),(260,'V-25074617','Entrada','Entrada al Sistema','2017-11-29 10:43:43');
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
INSERT INTO `categorias` VALUES ('ASF',' ASFALTOS'),('BAT','BATERIAS'),('BYL','BOMBILLOS Y LAMPARAS'),('CAB','CABLES'),('CDL','CANALES DE LLUVIAS'),('CAR','CARBONES'),('CYA','CINTAS Y ADHESIVOS'),('CON','CONEXIONES'),('EMP','EMPACADURAS'),('GYB','GRIFERIAS Y BAJANTES'),('HER','HERRAMIENTAS'),('LYC','LLAVES Y CERRADURAS'),('MAL','MALLAS'),('MAN','MANGUERAS'),('MDC','MATERIALES DE CONSTRUCCION'),('MAE','MATERIALES ELECTRICOS'),('OTR','OTROS'),('PEV','PEGAMENTOS VARIOS'),('PYS','PINTURAS Y SOLVENTES'),('ROD','RODAMIENTOS'),('TER','TERMINALES'),('TIS','TIRADORES SURTIDOS'),('TYC','TORNILLOS Y CLAVOS'),('TRU','TRUPER'),('TUB','TUBERIAS');
/*!40000 ALTER TABLE `categorias` ENABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `detalles_pedido`
--

LOCK TABLES `detalles_pedido` WRITE;
/*!40000 ALTER TABLE `detalles_pedido` DISABLE KEYS */;
INSERT INTO `detalles_pedido` VALUES (1,1,'IPAC1/4',5),(2,1,'2032',1),(3,1,'100W',1),(4,1,'209601',1),(5,1,'1102',1),(6,2,'IPAC1/4',5),(7,3,'101029',8),(8,4,'IPAC1/4',5),(9,4,'IPACC',10),(10,5,'IPAC1/4',5),(11,5,'IPACG',1),(12,5,'IPALG',1),(13,5,'CDL-01',1),(14,6,'IPAC1/4',5),(15,6,'2032',1),(16,7,'IPACC',1),(17,8,'IPAC1/4',5),(18,9,'2032',3),(19,10,'2032',3),(20,11,'IPACG',1),(21,11,'IPALG',1),(22,12,'CA2',1);
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
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `detalles_recepcion`
--

LOCK TABLES `detalles_recepcion` WRITE;
/*!40000 ALTER TABLE `detalles_recepcion` DISABLE KEYS */;
INSERT INTO `detalles_recepcion` VALUES (1,1,'IPAC1/4',12),(2,1,'IPACC',12),(3,2,'IPAC1/4',2),(4,3,'IPAC1/4',20),(5,4,'IPAC1/4',2);
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
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `detalles_requisicion`
--

LOCK TABLES `detalles_requisicion` WRITE;
/*!40000 ALTER TABLE `detalles_requisicion` DISABLE KEYS */;
INSERT INTO `detalles_requisicion` VALUES (1,1,'IPAC1/4',12),(2,1,'IPACC',12),(3,2,'IPAC1/4',2),(4,3,'IPAC1/4',20),(5,4,'GPAA',4);
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
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pedidos`
--

LOCK TABLES `pedidos` WRITE;
/*!40000 ALTER TABLE `pedidos` DISABLE KEYS */;
INSERT INTO `pedidos` VALUES (1,'V-26571341','2017-11-20','ANULADO'),(2,'V-26571341','2017-11-20','ENTREGADO'),(3,'V-26571341','2017-11-20','ANULADO'),(4,'V-25074229','2017-11-22','POR ENTREGAR'),(5,'J-300941736','2017-11-22','POR ENTREGAR'),(6,'V-25074617','2017-11-26','POR ENTREGAR'),(7,'J-300941736','2017-11-26','POR ENTREGAR'),(8,'J-13780965','2017-11-27','POR ENTREGAR'),(9,'J-13780965','2017-11-27','ANULADO'),(10,'V-25074617','2017-11-27','POR ENTREGAR'),(11,'V-25074617','2017-11-29','POR ENTREGAR'),(12,'V-25074617','2017-11-29','POR ENTREGAR');
/*!40000 ALTER TABLE `pedidos` ENABLE KEYS */;
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
INSERT INTO `productos` VALUES ('100029','CARRETILLA ALBAï¿½IL 85L R/AIRE     NARANJA','HER',40,''),('100W','BOMBILLO 110 - 100W HALOGENO SYLVANIA','BYL',33,''),('101029','BOMBILLO AHORRADOR E14 11WATS SEMILIC','BYL',88,''),('101050','BOMBILLO AHORRADOR ESPIRAL SEMILIC  15W','BYL',56,''),('11-001','LAMPARA PLAFON TRANSPARENTE 6\"','BYL',56,''),('1102','PULSADOR P/ EMPOTRAR TICINO','MAE',58,''),('110500G','BOMBILLO DE HALOGENO  500W G.E     110V','BYL',58,''),('110B','PROTECTOR A/A C/BORNER 110W NINJA 3AÑO G','MAE',56,''),('110C','PROTECTOR COMPUTADORA  110W NINJA 3AÑO G','MAE',56,''),('111969','CUCHARA LUXVEN 8\" PUNTA REDONDA','HER',56,''),('113385','LLAVE P/TUBO 14\" T/RIDGID','HER',56,''),('12-026','LAMPARA BAMBER 8\" TORNASOL','BYL',56,''),('125353','CHICURA VINKO DE ALTA CALIDAD 2 LB','HER',56,''),('133412','PALA CUADRADA MANGO PLASTICO','HER',56,''),('1382594','MARTILLO CARP. 25mm CASCABEL','HER',56,''),('14-045','LAMPARA FLUORESCENTE CUADRADA 22 W','BYL',56,''),('14515','MULTITOMA 6 TOMA BRUFER','MAE',16,''),('16-150','CINCEL PUNTA BELLOTA 16-150','HER',56,''),('17-047','ESCUADRA METALICA 8\"','HER',56,''),('1X15EE','BREAKER P/ EMPOTRAR YAINO  1X15 AL 1X30','MAE',13,''),('1X15ES','BREAKER P/ EMPOTRAR SIEMEN 1X15','MAE',29,''),('1X15ET','BREAKER P/ EMPOTRAR TICINO 1X15 AL 1X30','MAE',24,''),('20103','ESCARDILLA 2KG. ECONOMICA','HER',106,''),('2032','PILA 3V 2032 C/U','BAT',0,''),('209601','CERR CILINDRO FIJO BLUELOOCK','LYC',13,''),('209671','CERR P/VITRINA C/LLAVE','LYC',20,''),('2117','CERR T/POMO METAL C/LLAVE BLUELOCK','LYC',-1,''),('2127','CERR T/POMO METAL S/LLAVE VENLOCK','LYC',6,''),('2201030MM','CANDADO DE LATON PLANOS 30mm CISA','LYC',23,''),('2201040MM','CANDADO DE LATON PLANOS 40mm CISA','LYC',73,''),('2201050MM','CANDADO DE LATON PLANOS 50mm CISA','LYC',1,''),('2201060MM','CANDADO DE LATON PLANOS 60mm CISA','LYC',1,''),('22011-52','CANDADO ARCO LARGO A/Z 50mm  CISA','LYC',21,''),('22WG','FLUORESCENTE 22W CIRCULAR G/ELECTRIC','BYL',59,''),('406001','Agrolucha','LYC',288,'UND'),('5001','PISTOLA PARA PINTAR C/ENV PLAS D GRAVED','HER',59,''),('637','EXTENSION ELECTRICA BLANCA    5MTS SEMIL','MAE',27,''),('668','EXTENSION ELECTRICA NEGRA     5MTS SEMIL','MAE',59,''),('71453','BOMBILLO TIPO VELA E-12 FERMETAL','BYL',12,''),('846','HEMBRILLA ELECTRICA 110V ESPAÑOLA','LYC',99,''),('BP4','BROCHA PRETUL 4\"','PYS',7,''),('CA2','CLAVOS DE ACERO 2\"','TYC',113,''),('CAB-01','Cable UTP Nivel 6','CAB',0,'Metro'),('CAR-01','Carbon Negro','CAR',39,'UND'),('CDL-01','Canal de Lluvia de 6\"','CDL',0,'UND'),('CON-01','Conexion de tuberia Negra','CON',36,'UND'),('CYA','Cinta Metrica','CYA',-2,'ROLLO'),('GPAA','PILA AA  ALCALINA PAQ','BAT',-4,''),('GPAAA','PILA AAA  ALCALINA PAQ','BAT',-4,''),('IPAC1/4','ASFALTO IPA CEMENTO 1/4 GALON GOTA FIX','ASF',78,''),('IPACC','ASFALTO IPA CEMENTO DE CUÑETE','ASF',17,''),('IPACG','ASFALTO IPA CEMENTO DE GALON','ASF',20,''),('IPALC','ASFALTO IPA LIQUIDO DE CUÑETE','ASF',11,''),('IPALG','ASFALTO IPA LIQUIDO DE GALON','ASF',30,''),('IPAM3','MANTO 3.15 MILIMETRO IPA','ASF',26,''),('IPAMA','MANTO ALUMINIO ALUFLEX 10MTS','ASF',11,''),('IPAPC','ASFALTO IPA PLASTICO DE CUÑETE','ASF',11,''),('IPAPG','ASFALTO IPA PLASTICO DE GALON','ASF',11,''),('IPAPMC','ASFALTO IPA PRIMER DE CUÑETE','ASF',11,''),('IPAPMG','ASFALTO IPA PRIMER DE GALON','ASF',6,''),('P12','PILA 12VOLTIO C/U','BAT',6,''),('P2025','PILA 2025 C/U','BAT',-4,''),('P3V','PILA 3 VOLTIO','BAT',-4,''),('P828','PILA 27A C/U','BAT',-4,''),('T13/16','TORNILLO 13/16 MEDIANOS','TYC',464,'');
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
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `recepcion`
--

LOCK TABLES `recepcion` WRITE;
/*!40000 ALTER TABLE `recepcion` DISABLE KEYS */;
INSERT INTO `recepcion` VALUES (1,'2017-11-21','V-26571341'),(2,'2017-11-26','J-300941736'),(3,'2017-11-27','V-25074617'),(4,'2017-11-29','V-25074617');
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
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `requisicion`
--

LOCK TABLES `requisicion` WRITE;
/*!40000 ALTER TABLE `requisicion` DISABLE KEYS */;
INSERT INTO `requisicion` VALUES (1,'','2017-11-21','V-26571341'),(2,'','2017-11-26','J-300941736'),(3,'','2017-11-27','V-25074617'),(4,'','2017-11-29','V-25074617');
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
INSERT INTO `usuarios` VALUES ('J-13780965','LUIS APONTE','fcea920f7412b5da7be0cf42b8c93759','PROFESORLUISAPONTE@GMAIL.COM','04125678990','MARACAY','2017-11-21','CLI'),('J-300941736','FERRETERIA LA CAMPANA, C.A.','652e234eb7d92b3d14841e1a24d80e14','FERRETERIALACAMPANACA@HOTMAIL.COM','02432378756','AV 10 DE DICIEMBRE, MARACAY EDO ARAGUA','1970-01-01','TRA'),('V-25074229','KENY HIDALGO','429b3483b2da7bd60bee2d6856b4b94a','KENYTHEKAPH@GMAIL.COM','04243784404','MARGARITA - EDO NUEVA ESPARTA','1995-03-05','CLI'),('V-25074617','DONARDO EMILIO PINEDA PIÑERO','cc70e9369e9f87a660812e08d76a828e','DONARDO_E_04@HOTMAIL.COM','04142979317','LOS OLIVOS','1995-08-08','ADM'),('V-26571341','JOSE ANGEL PADRON PADRON','955117078cc34214ec4966b195955bfa','JAPP19961996@GMAIL.COM','04243550806','EL LIMON','1996-06-18','ADM');
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

-- Dump completed on 2017-11-29 13:43:50
