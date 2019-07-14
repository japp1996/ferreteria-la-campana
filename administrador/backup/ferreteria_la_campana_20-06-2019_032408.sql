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
  `id` int(15) NOT NULL AUTO_INCREMENT,
  `number` int(11) NOT NULL,
  `operacion` varchar(30) NOT NULL,
  `rama` varchar(50) NOT NULL,
  `detalles_operacion` varchar(150) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `CI_RIF` (`number`),
  KEY `CI_RIF_2` (`number`),
  CONSTRAINT `auditoria_usuarios_ibfk_1` FOREIGN KEY (`number`) REFERENCES `users` (`number`)
) ENGINE=InnoDB AUTO_INCREMENT=208 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auditoria_usuarios`
--

LOCK TABLES `auditoria_usuarios` WRITE;
/*!40000 ALTER TABLE `auditoria_usuarios` DISABLE KEYS */;
INSERT INTO `auditoria_usuarios` VALUES (1,123456789,'REGISTRO','PRODUCTOS','Registro del producto código: TAD22, Nombre: Taladro Mayor Marca deWalt','2018-11-23 02:08:36'),(2,123456789,'ACTUALIZACIÓN','PRODUCTOS','Actualización del producto código: TAD22, Nombre:Taladro Mayor Marca deWalt','2018-11-23 02:09:56'),(3,123456789,'BORRADO','PRODUCTOS','Borrado del producto código: TAD20, Nombre:Taladro Mayor Marca','2018-11-23 02:10:26'),(4,123456789,'REGISTRO','CATEGORÍAS','Registro de la categoría  bajo el código TAD','2018-11-23 02:10:59'),(5,123456789,'ACTUALIZACION','CATEGORÍAS','Actualización de la categoría bajo el código TAD','2018-11-23 02:11:16'),(6,123456789,'BORRADO','CATEGORÍAS','Borrado de la categoría bajo el código 28','2018-11-23 02:11:32'),(7,123456789,'REGISTRO','ESTADO DE PEDIDO','Registro de un tipo de estado de pedidos con el nombre de POR RECIBIR','2018-11-23 02:12:12'),(8,123456789,'ACTUALIZACION','ESTADO DE PEDIDO','Actualizacion de un tipo de estado de pedidos con el id: 5 y la descripción: POR DESPACHAR','2018-11-23 02:12:24'),(9,123456789,'BORRADO','ESTADO DE PEDIDO','Borrado de un tipo de estado de pedidos con el id: 5','2018-11-23 02:13:53'),(10,123456789,'REGISTRO','PEDIDO','Registro de un pedido con el id: 11','2018-11-23 02:15:59'),(11,123456789,'REGISTRO','REQUISICION','Registro de una nueva requisición: 4 ','2018-11-23 02:16:56'),(12,123456789,'REGISTRO','ORDEN DE COMPRA','Registro de una orden de compra con el id: 5','2018-11-23 02:17:45'),(13,123456789,'REGISTRO','RECEPCION','Registro de una nueva recepción: 4 ','2018-11-23 02:22:32'),(14,123456789,'RESPALDO','BASE DE DATOS','Respaldo de Base de Datos bajo el archivo backup/laburra_23-11-2018_022807.sql','2018-11-23 02:28:08'),(15,123456789,'LOGIN','LOGIN','EL usuario Jose Angel Padrón C.I: V-123456789 Inició Sesión','2018-11-24 19:04:16'),(16,123456789,'LOGIN','LOGOUT','EL usuario Jose Angel Padrón C.I: V-123456789 Cerró Sesión','2018-11-24 19:05:25'),(17,123456789,'LOGIN','LOGIN','EL usuario Jose Angel Padrón C.I: V-123456789 Inició Sesión','2018-11-24 19:07:58'),(18,123456789,'LOGIN','LOGOUT','EL usuario Jose Angel Padrón C.I: V-123456789 Cerró Sesión','2018-11-24 19:10:39'),(19,123456789,'LOGIN','LOGIN','EL usuario Jose Angel Padrón C.I: V-123456789 Inició Sesión','2018-11-24 19:13:45'),(20,123456789,'LOGIN','LOGIN','EL usuario Jose Angel Padrón C.I: V-123456789 Inició Sesión','2018-11-24 19:13:49'),(21,123456789,'LOGIN','LOGIN','EL usuario Jose Angel Padrón C.I: V-123456789 Inició Sesión','2018-11-24 19:17:44'),(22,123456789,'LOGIN','LOGIN','EL usuario Jose Angel Padrón C.I: V-123456789 Inició Sesión','2018-11-24 19:18:48'),(23,123456789,'LOGIN','LOGOUT','EL usuario Jose Angel Padrón C.I: V-123456789 Cerró Sesión','2018-11-24 19:19:59'),(24,123456789,'LOGIN','LOGIN','EL usuario Jose Angel Padrón C.I: V-123456789 Inició Sesión','2018-11-24 19:34:40'),(25,123456789,'LOGIN','LOGIN','EL usuario Jose Angel Padrón C.I: V-123456789 Inició Sesión','2018-11-29 00:17:43'),(26,123456789,'LOGIN','LOGIN','EL usuario Jose Angel Padrón C.I: V-123456789 Inició Sesión','2018-11-29 00:17:43'),(27,123456789,'LOGIN','LOGIN','EL usuario Jose Angel Padrón C.I: V-123456789 Inició Sesión','2018-11-29 22:47:54'),(28,123456789,'REGISTRO','PEDIDO','Registro de un pedido con el id: 12','2018-11-29 22:53:40'),(29,123456789,'REGISTRO','REQUISICION','Registro de una nueva requisición con el id: 5 ','2018-11-29 23:12:45'),(30,123456789,'REGISTRO','ORDEN DE COMPRA','Registro de una orden de compra con el id: 6','2018-11-29 23:17:02'),(31,123456789,'LOGIN','LOGOUT','EL usuario Jose Angel Padrón C.I: V-123456789 Cerró Sesión','2018-11-29 23:21:21'),(32,123456789,'LOGIN','LOGIN','EL usuario Jose Angel Padrón C.I: V-123456789 Inició Sesión','2018-12-01 15:12:06'),(33,123456789,'ACTUALIZACIÓN','PRODUCTOS','Actualización del producto código: 100029, Nombre:CARRETILLA ALBAÑIL 85L R/AIRE NARAN','2018-12-01 15:13:29'),(34,123456789,'LOGIN','LOGOUT','EL usuario Jose Angel Padrón C.I: V-123456789 Cerró Sesión','2018-12-01 15:15:13'),(35,25074618,'REGISTRO','USUARIO','Registro de un nuevo usuario bajo C.I: 12 ','2018-12-03 17:21:56'),(36,21270887,'REGISTRO','USUARIO','Registro de un nuevo usuario bajo C.I: 13 ','2018-12-03 17:25:54'),(37,25571341,'REGISTRO','USUARIO','Registro de un nuevo usuario bajo C.I: 14 ','2018-12-03 18:03:03'),(38,25571341,'LOGIN','LOGIN','EL usuario Josefo Angelo Padron C.I: V25571341 Inició Sesión','2018-12-03 18:04:51'),(39,25571341,'LOGIN','LOGOUT','EL usuario Josefo Angelo Padron C.I: V25571341 Cerró Sesión','2018-12-03 18:06:15'),(40,123456789,'LOGIN','LOGIN','EL usuario Jose Angel Padrón C.I: V-123456789 Inició Sesión','2018-12-03 18:07:32'),(41,123456789,'LOGIN','LOGIN','El usuario Jose Angel Padrón C.I: V-123456789 Inició Sesión','2018-12-03 18:19:17'),(42,123456789,'LOGIN','LOGOUT','EL usuario Jose Angel Padrón C.I: V-123456789 Cerró Sesión','2018-12-03 18:19:31'),(43,25571341,'LOGIN','LOGIN','El usuario Josefo Angelo Padron C.I: V25571341 Inició Sesión','2018-12-03 18:20:34'),(44,25571341,'LOGIN','LOGIN','El usuario Josefo Angelo Padron C.I: V25571341 Inició Sesión','2018-12-03 18:27:05'),(45,123456789,'LOGIN','LOGIN','El usuario Jose Angel Padrón C.I: V-123456789 Inició Sesión','2018-12-03 20:13:23'),(46,123456789,'REGISTRO','REQUISICION','Registro de una nueva requisición con el id: 6 ','2018-12-03 21:48:03'),(47,123456789,'BORRADO','PEDIDO','Borrado de un pedido con el id: 3','2018-12-03 22:08:06'),(48,123456789,'BORRADO','PEDIDO','Borrado de un pedido con el id: 4','2018-12-03 22:12:01'),(49,123456789,'REGISTRO','REQUISICION','Registro de una nueva requisición con el id: 7 ','2018-12-03 22:14:32'),(50,123456789,'REGISTRO','ORDEN DE COMPRA','Registro de una orden de compra con el id: 7','2018-12-03 22:21:30'),(51,123456789,'REGISTRO','RECEPCION','Registro de una nueva recepción con el id: 5 ','2018-12-03 22:23:11'),(52,123456789,'REGISTRO','RECEPCION','Registro de una nueva recepción con el id: 6 ','2018-12-03 22:23:23'),(53,123456789,'REGISTRO','PEDIDO','Registro de un pedido con el id: 14','2018-12-03 22:52:01'),(54,123456789,'BORRADO','PEDIDO','Borrado de un pedido con el id: 14','2018-12-03 22:54:14'),(55,123456789,'BASE DE DATOS','RESPALDO','Respaldo de Base de Datos bajo el archivo backup/ferreteria_la_campana_03-12-2018_230503.sql','2018-12-03 23:05:05'),(56,123456789,'REGISTRO','REQUISICION','Registro de una nueva requisición con el id: 8 ','2018-12-03 23:21:15'),(57,123456789,'REGISTRO','ORDEN DE COMPRA','Registro de una orden de compra con el id: 8','2018-12-03 23:21:50'),(58,123456789,'REGISTRO','RECEPCION','Registro de una nueva recepción con el id: 7 ','2018-12-03 23:22:28'),(59,123456789,'REGISTRO','REQUISICION','Registro de una nueva requisición con el id: 9 ','2018-12-03 23:23:15'),(60,123456789,'REGISTRO','REQUISICION','Registro de una nueva requisición con el id: 10 ','2018-12-03 23:23:16'),(61,123456789,'LOGIN','LOGOUT','EL usuario Jose Angel Padrón C.I: V-123456789 Cerró Sesión','2018-12-03 23:34:58'),(62,123456789,'LOGIN','LOGIN','El usuario Jose Angel Padrón C.I: V-123456789 Inició Sesión','2018-12-04 01:24:26'),(63,123456789,'REGISTRO','PRODUCTOS','Registro del producto código: GC001, Nombre: MArtillo de carpintero','2018-12-04 01:26:29'),(64,123456789,'BORRADO','PRODUCTOS','Borrado del producto código: 100029, Nombre:CARRETILLA ALBAÑIL 85L R/AIRE NARAN','2018-12-04 01:26:42'),(65,123456789,'REGISTRO','PEDIDO','Registro de un pedido con el id: 15','2018-12-04 01:27:46'),(66,123456789,'BORRADO','PEDIDO','Borrado de un pedido con el id: 15','2018-12-04 01:28:58'),(67,123456789,'REGISTRO','REQUISICION','Registro de una nueva requisición con el id: 11 ','2018-12-04 01:30:16'),(68,123456789,'REGISTRO','ORDEN DE COMPRA','Registro de una orden de compra con el id: 9','2018-12-04 01:31:05'),(69,123456789,'REGISTRO','RECEPCION','Registro de una nueva recepción con el id: 8 ','2018-12-04 01:31:25'),(70,123456789,'BASE DE DATOS','RESPALDO','Respaldo de Base de Datos bajo el archivo backup/ferreteria_la_campana_04-12-2018_013241.sql','2018-12-04 01:32:42'),(71,123456789,'LOGIN','LOGIN','El usuario Jose Angel Padrón C.I: V-123456789 Inició Sesión','2018-12-29 18:13:45'),(72,123456789,'LOGIN','LOGOUT','EL usuario Jose Angel Padrón C.I: V-123456789 Cerró Sesión','2018-12-29 18:14:09'),(73,123456789,'LOGIN','LOGIN','El usuario Jose Angel Padrón C.I: V-123456789 Inició Sesión','2019-02-05 01:18:18'),(74,123456789,'ACTUALIZACION','USUARIO','Actualizacion de los datos del usuario C.I: 123456789 Nombre:Jose Angel Padrón Padron','2019-02-05 01:59:26'),(75,123456789,'BASE DE DATOS','RESPALDO','Respaldo de Base de Datos bajo el archivo backup/ferreteria_la_campana_05-02-2019_021637.sql','2019-02-05 02:16:38'),(76,123456789,'LOGIN','LOGIN','El usuario Jose Angel Padrón Padron C.I: V-123456789 Inició Sesión','2019-02-20 22:41:31'),(77,123456789,'REGISTRO','PEDIDO','Registro de un pedido con el id: 16','2019-02-20 22:42:39'),(78,123456789,'BORRADO','PEDIDO','Borrado de un pedido con el id: 5','2019-02-20 22:43:19'),(79,123456789,'LOGIN','LOGIN','El usuario Jose Angel Padrón Padron C.I: V-123456789 Inició Sesión','2019-02-20 23:17:39'),(80,123456789,'REGISTRO','REQUISICION','Registro de una nueva requisición con el id: 12 ','2019-02-20 23:30:39'),(81,123456789,'REGISTRO','ORDEN DE COMPRA','Registro de una orden de compra con el id: 10','2019-02-20 23:31:49'),(82,123456789,'REGISTRO','ORDEN DE COMPRA','Registro de una orden de compra con el id: 11','2019-02-20 23:34:55'),(83,123456789,'REGISTRO','REQUISICION','Registro de una nueva requisición con el id: 13 ','2019-02-20 23:38:27'),(84,123456789,'REGISTRO','REQUISICION','Registro de una nueva requisición con el id: 14 ','2019-02-20 23:38:31'),(85,123456789,'REGISTRO','ORDEN DE COMPRA','Registro de una orden de compra con el id: 12','2019-02-20 23:42:29'),(86,123456789,'REGISTRO','RECEPCION','Registro de una nueva recepción con el id: 9 ','2019-02-20 23:44:42'),(87,123456789,'REGISTRO','PEDIDO','Registro de un pedido con el id: 17','2019-02-20 23:51:12'),(88,123456789,'BASE DE DATOS','RESPALDO','Respaldo de Base de Datos bajo el archivo backup/ferreteria_la_campana_20-02-2019_235806.sql','2019-02-20 23:58:06'),(89,123456789,'BASE DE DATOS','RESPALDO','Respaldo de Base de Datos bajo el archivo backup/ferreteria_la_campana_20-02-2019_235843.sql','2019-02-20 23:58:43'),(90,123456789,'LOGIN','LOGIN','El usuario Jose Angel Padrón Padron C.I: V-123456789 Inició Sesión','2019-02-23 15:11:01'),(91,123456789,'LOGIN','LOGIN','El usuario Jose Angel Padrón Padron C.I: V-123456789 Inició Sesión','2019-02-26 01:21:28'),(92,123456789,'LOGIN','LOGOUT','EL usuario Jose Angel Padrón Padron C.I: V-123456789 Cerró Sesión','2019-02-26 02:15:02'),(93,123456789,'LOGIN','LOGIN','El usuario Jose Angel Padrón Padron C.I: V-123456789 Inició Sesión','2019-02-27 01:10:16'),(94,123456789,'LOGIN','LOGIN','El usuario Jose Angel Padrón Padron C.I: V-123456789 Inició Sesión','2019-02-27 01:19:18'),(95,123456789,'LOGIN','LOGIN','El usuario Jose Angel Padrón Padron C.I: V-123456789 Inició Sesión','2019-02-27 22:21:54'),(96,974297391,'REGISTRO','USUARIO','Registro de un nuevo usuario bajo C.I: 15 ','2019-03-20 23:46:51'),(97,115181816,'REGISTRO','USUARIO','Registro de un nuevo usuario bajo C.I: 16 ','2019-03-21 00:07:15'),(98,1919191,'REGISTRO','USUARIO','Registro de un nuevo usuario bajo C.I: 17 ','2019-03-21 00:09:35'),(99,3737373,'REGISTRO','USUARIO','Registro de un nuevo usuario bajo C.I: 18 ','2019-03-21 00:14:15'),(100,123456789,'LOGIN','LOGIN','El usuario Jose Angel Padrón Padron C.I: V-123456789 Inició Sesión','2019-03-21 00:15:22'),(101,123456789,'REGISTRO','CATEGORÍAS','Registro de la categoría  bajo el código LALAL','2019-03-21 01:16:52'),(102,123456789,'REGISTRO','CATEGORÍAS','Registro de la categoría  bajo el código LAOLOL','2019-03-21 01:18:12'),(103,123456789,'REGISTRO','CATEGORÍAS','Registro de la categoría  bajo el código EEE','2019-03-21 01:19:42'),(104,123456789,'REGISTRO','CATEGORÍAS','Registro de la categoría  bajo el código PLO','2019-03-21 01:22:02'),(105,123456789,'ACTUALIZACION','CATEGORÍAS','Actualización de la categoría bajo el código CONEEEEEEEEEEEE','2019-03-21 01:30:27'),(106,123456789,'REGISTRO','ESTADO DE PEDIDO','Registro de un tipo de estado de pedidos con el nombre de LALALALAL','2019-03-21 01:34:46'),(107,123456789,'ACTUALIZACION','ESTADO DE PEDIDO','Actualizacion de un tipo de estado de pedidos con el id: 6 y la descripción: L','2019-03-21 01:34:54'),(108,123456789,'BORRADO','ESTADO DE PEDIDO','Borrado de un tipo de estado de pedidos con el id: 6','2019-03-21 01:35:00'),(109,28774123,'REGISTRO','USUARIO','Registro de un nuevo usuario bajo C.I: 19 ','2019-03-21 02:25:43'),(110,32893981,'REGISTRO','USUARIO','Registro de un nuevo usuario bajo C.I: 20 ','2019-03-21 02:29:31'),(111,123123123,'REGISTRO','USUARIO','Registro de un nuevo usuario bajo C.I: 21 ','2019-03-21 02:49:55'),(112,123456789,'LOGIN','LOGIN','El usuario Jose Angel Padrón Padron C.I: V-123456789 Inició Sesión','2019-03-21 02:50:43'),(113,123456789,'REGISTRO','REQUISICION','Registro de una nueva requisición con el id: 15 ','2019-03-21 02:54:47'),(114,123456789,'BORRADO','REQUISICION','Borrado de una requisición: 10 ','2019-03-21 03:10:49'),(115,123456789,'REGISTRO','ORDEN DE COMPRA','Registro de una orden de compra con el id: 13','2019-03-21 03:14:34'),(116,123456789,'REGISTRO','ORDEN DE COMPRA','Registro de una orden de compra con el id: 14','2019-03-21 03:16:07'),(117,123456789,'REGISTRO','PEDIDO','Registro de un pedido con el id: 18','2019-03-21 03:24:38'),(118,123456789,'BORRADO','PEDIDO','Borrado de un pedido con el id: 18','2019-03-21 03:24:55'),(119,123456789,'ACTUALIZACIÓN','PRODUCTOS','Actualización del producto código: 101029, Nombre:BOMBILLO AHORRADOR E14 11WATS SEMILIC','2019-03-21 03:33:31'),(120,123456789,'ACTUALIZACIÓN','PRODUCTOS','Actualización del producto código: 100W, Nombre:BOMBILLO 110 - 100W HALOGENO SYLVANIA','2019-03-21 03:36:16'),(121,123456789,'ACTUALIZACIÓN','PRODUCTOS','Actualización del producto código: 101050, Nombre:BOMBILLO AHORRADOR ESPIRAL SEMILIC  15W','2019-03-21 03:37:20'),(122,123456789,'ACTUALIZACIÓN','PRODUCTOS','Actualización del producto código: 111969, Nombre:CUCHARA LUXVEN 8\" PUNTA','2019-03-21 03:37:56'),(123,123456789,'ACTUALIZACIÓN','PRODUCTOS','Actualización del producto código: 1X15EE, Nombre:BREAKER P/ EMPOTRAR YAINO  1X15 AL 1X30','2019-03-21 03:38:07'),(124,123456789,'ACTUALIZACIÓN','PRODUCTOS','Actualización del producto código: 2201040MM, Nombre:CANDADO DE LATON PLANOS 40mm CISA','2019-03-21 03:38:14'),(125,123456789,'BORRADO','PRODUCTOS','Borrado del producto código: BP4, Nombre:BROCHA PRETUL 4\"','2019-03-21 03:39:12'),(126,123456789,'BORRADO','PRODUCTOS','Borrado del producto código: 846, Nombre:HEMBRILLA ELECTRICA 110V ESPAÑOLA','2019-03-21 03:40:16'),(127,123456789,'BORRADO','PRODUCTOS','Borrado del producto código: CA2, Nombre:CLAVOS DE ACERO 2\"','2019-03-21 03:41:22'),(128,789456123,'REGISTRO','USUARIO','Registro de un nuevo usuario bajo C.I: 22 ','2019-03-22 02:22:23'),(129,123456789,'LOGIN','LOGIN','El usuario Jose Angel Padrón Padron C.I: V-123456789 Inició Sesión','2019-03-22 02:24:21'),(130,123456789,'REGISTRO','REQUISICION','Registro de una nueva requisición con el id: 16 ','2019-03-22 02:55:17'),(131,123456789,'REGISTRO','ORDEN DE COMPRA','Registro de una orden de compra con el id: 15','2019-03-22 03:15:25'),(132,123456789,'REGISTRO','REQUISICION','Registro de una nueva requisición con el id: 17 ','2019-03-22 03:33:10'),(133,123456789,'REGISTRO','ORDEN DE COMPRA','Registro de una orden de compra con el id: 16','2019-03-22 03:33:46'),(134,123456789,'REGISTRO','REQUISICION','Registro de una nueva requisición con el id: 1 ','2019-03-22 03:38:06'),(135,123456789,'REGISTRO','ORDEN DE COMPRA','Registro de una orden de compra con el id: 1','2019-03-22 03:38:23'),(136,123456789,'REGISTRO','RECEPCION','Registro de una nueva recepción con el id: 1 ','2019-03-22 03:38:39'),(137,123456789,'LOGIN','LOGOUT','EL usuario Jose Angel Padrón Padron C.I: V-123456789 Cerró Sesión','2019-03-22 04:26:12'),(138,123456789,'LOGIN','LOGIN','El usuario Jose Angel Padrón Padron C.I: V-123456789 Inició Sesión','2019-03-22 04:26:36'),(139,123456789,'REGISTRO','REQUISICION','Registro de una nueva requisición con el id: 2 ','2019-03-22 04:40:40'),(140,123456789,'REGISTRO','ORDEN DE COMPRA','Registro de una orden de compra con el id: 2','2019-03-22 04:40:53'),(141,123456789,'REGISTRO','RECEPCION','Registro de una nueva recepción con el id: 2 ','2019-03-22 04:41:06'),(142,25074615,'REGISTRO','USUARIO','Registro de un nuevo usuario bajo C.I: 23 ','2019-04-30 23:41:42'),(143,25074615,'LOGIN','LOGIN','El usuario donaisipineda C.I: V25074615 Inició Sesión','2019-04-30 23:42:11'),(144,123456789,'REGISTRO','REQUISICION','Registro de una nueva requisición con el id: 3 ','2019-04-30 23:48:20'),(145,123456789,'REGISTRO','ORDEN DE COMPRA','Registro de una orden de compra con el id: 3','2019-04-30 23:49:33'),(146,123456789,'BORRADO','ORDEN DE COMPRA','Borrado de una orden de compra con el id: 3','2019-04-30 23:49:45'),(147,123456789,'REGISTRO','ORDEN DE COMPRA','Registro de una orden de compra con el id: 4','2019-04-30 23:49:53'),(148,123456789,'BORRADO','ORDEN DE COMPRA','Borrado de una orden de compra con el id: 4','2019-04-30 23:50:03'),(149,123456789,'REGISTRO','ORDEN DE COMPRA','Registro de una orden de compra con el id: 5','2019-04-30 23:50:09'),(150,123456789,'REGISTRO','RECEPCION','Registro de una nueva recepción con el id: 3 ','2019-04-30 23:51:10'),(151,25074615,'LOGIN','LOGIN','El usuario donaisipineda C.I: V25074615 Inició Sesión','2019-05-09 02:13:40'),(152,25074615,'LOGIN','LOGIN','El usuario donaisipineda C.I: V25074615 Inició Sesión','2019-05-09 02:13:42'),(153,25074615,'LOGIN','LOGIN','El usuario donaisipineda C.I: V25074615 Inició Sesión','2019-05-09 02:14:41'),(154,123456789,'REGISTRO','PEDIDO','Registro de un pedido con el id: 19','2019-05-09 02:21:28'),(155,25074615,'LOGIN','LOGOUT','EL usuario donaisipineda C.I: V25074615 Cerró Sesión','2019-05-09 02:23:16'),(156,123456789,'LOGIN','LOGIN','El usuario Jose Angel Padrón Padron C.I: V-123456789 Inició Sesión','2019-05-09 02:23:34'),(157,25074615,'LOGIN','LOGIN','El usuario donaisipineda C.I: V25074615 Inició Sesión','2019-05-09 02:23:57'),(158,25074615,'LOGIN','LOGOUT','EL usuario donaisipineda C.I: V25074615 Cerró Sesión','2019-05-09 02:24:32'),(159,25074617,'REGISTRO','USUARIO','Registro de un nuevo usuario bajo C.I: 24 ','2019-05-09 02:28:12'),(160,25074617,'LOGIN','LOGIN','El usuario DONARDO PINEDA C.I: V25074617 Inició Sesión','2019-05-09 02:28:25'),(161,25074617,'LOGIN','LOGIN','El usuario DONARDO PINEDA C.I: V25074617 Inició Sesión','2019-05-09 02:29:44'),(162,123456789,'REGISTRO','PEDIDO','Registro de un pedido con el id: 20','2019-05-09 02:33:36'),(163,123456789,'REGISTRO','REQUISICION','Registro de una nueva requisición con el id: 4 ','2019-05-09 02:35:21'),(164,123456789,'REGISTRO','ORDEN DE COMPRA','Registro de una orden de compra con el id: 6','2019-05-09 02:35:59'),(165,123456789,'REGISTRO','RECEPCION','Registro de una nueva recepción con el id: 4 ','2019-05-09 02:37:27'),(166,123456789,'REGISTRO','REQUISICION','Registro de una nueva requisición con el id: 5 ','2019-05-09 02:43:02'),(167,123456789,'REGISTRO','ORDEN DE COMPRA','Registro de una orden de compra con el id: 7','2019-05-09 02:43:49'),(168,123456789,'REGISTRO','RECEPCION','Registro de una nueva recepción con el id: 5 ','2019-05-09 02:47:46'),(169,123456789,'REGISTRO','REQUISICION','Registro de una nueva requisición con el id: 6 ','2019-05-09 02:51:09'),(170,123456789,'REGISTRO','ORDEN DE COMPRA','Registro de una orden de compra con el id: 8','2019-05-09 02:51:40'),(171,123456789,'REGISTRO','RECEPCION','Registro de una nueva recepción con el id: 6 ','2019-05-09 02:52:47'),(172,123456789,'REGISTRO','PEDIDO','Registro de un pedido con el id: 21','2019-05-09 02:53:18'),(173,123456789,'REGISTRO','PEDIDO','Registro de un pedido con el id: 22','2019-05-09 02:53:38'),(174,123456789,'BORRADO','PEDIDO','Borrado de un pedido con el id: 22','2019-05-09 02:55:03'),(175,123456789,'LOGIN','LOGIN','El usuario Jose Angel Padrón Padron C.I: V-123456789 Inició Sesión','2019-05-12 14:16:23'),(176,123456789,'LOGIN','LOGOUT','EL usuario Jose Angel Padrón Padron C.I: V-123456789 Cerró Sesión','2019-05-12 19:36:00'),(177,25074617,'LOGIN','LOGIN','El usuario DONARDO PINEDA C.I: V25074617 Inició Sesión','2019-05-12 19:41:27'),(178,25074617,'LOGIN','LOGIN','El usuario DONARDO PINEDA C.I: V25074617 Inició Sesión','2019-05-12 19:44:30'),(179,25074617,'LOGIN','LOGIN','El usuario DONARDO PINEDA C.I: V25074617 Inició Sesión','2019-05-12 20:24:26'),(180,25074617,'ACTUALIZACIÓN','CONTRASEÑA','Actualización de la contraseña para el usuario : C.I: 25074617 Nombre: DONARDO PINEDA','2019-05-12 20:24:39'),(181,25074617,'LOGIN','LOGIN','El usuario DONARDO PINEDA C.I: V25074617 Inició Sesión','2019-05-12 20:26:24'),(182,25074617,'LOGIN','LOGOUT','EL usuario DONARDO PINEDA C.I: V25074617 Cerró Sesión','2019-05-12 20:26:30'),(183,25074617,'LOGIN','LOGIN','El usuario DONARDO PINEDA C.I: V25074617 Inició Sesión','2019-05-12 20:45:06'),(184,25074617,'LOGIN','LOGOUT','EL usuario DONARDO PINEDA C.I: V25074617 Cerró Sesión','2019-05-12 20:54:56'),(185,123456789,'LOGIN','LOGIN','El usuario Jose Angel Padrón Padron C.I: V-123456789 Inició Sesión','2019-05-12 20:56:33'),(186,123456789,'LOGIN','LOGIN','El usuario Jose Angel Padrón Padron C.I: V-123456789 Inició Sesión','2019-05-12 20:56:53'),(187,123456789,'LOGIN','LOGIN','El usuario Jose Angel Padrón Padron C.I: V-123456789 Inició Sesión','2019-05-27 23:22:03'),(188,123456789,'REGISTRO','REQUISICION','Registro de una nueva requisición con el id: 7 ','2019-05-27 23:26:49'),(189,123456789,'LOGIN','LOGIN','El usuario Jose Angel Padrón Padron C.I: V-123456789 Inició Sesión','2019-05-29 21:45:47'),(190,123456789,'LOGIN','LOGIN','El usuario Jose Angel Padrón Padron C.I: V-123456789 Inició Sesión','2019-05-29 23:31:15'),(191,123456789,'REGISTRO','ORDEN DE COMPRA','Registro de una orden de compra con el id: 9','2019-05-29 23:48:55'),(192,123456789,'REGISTRO','ORDEN DE COMPRA','Registro de una orden de compra con el id: 10','2019-05-29 23:49:00'),(193,123456789,'REGISTRO','RECEPCION','Registro de una nueva recepción con el id: 7 ','2019-05-30 02:46:25'),(194,123456789,'REGISTRO','RECEPCION','Registro de una nueva recepción con el id: 8 ','2019-05-30 03:18:10'),(195,123456789,'LOGIN','LOGIN','El usuario Jose Angel Padrón Padron C.I: V-123456789 Inició Sesión','2019-06-19 21:50:32'),(196,123456789,'REGISTRO','REQUISICION','Registro de una nueva requisición con el id: 8 ','2019-06-19 21:51:33'),(197,123456789,'REGISTRO','ORDEN DE COMPRA','Registro de una orden de compra con el id: 11','2019-06-19 21:52:05'),(198,123456789,'REGISTRO','RECEPCION','Registro de una nueva recepción con el id: 9 ','2019-06-19 21:54:16'),(199,123456789,'REGISTRO','PEDIDO','Registro de un pedido con el id: 23','2019-06-19 22:00:25'),(200,123456789,'LOGIN','LOGOUT','EL usuario Jose Angel Padrón Padron C.I: V-123456789 Cerró Sesión','2019-06-19 22:34:24'),(201,123456789,'LOGIN','LOGIN','El usuario Jose Angel Padrón Padron C.I: V-123456789 Inició Sesión','2019-06-19 22:36:02'),(202,123456789,'REGISTRO','PEDIDO','Registro de un pedido con el id: 24','2019-06-19 22:38:39'),(203,123456789,'REGISTRO','REQUISICION','Registro de una nueva requisición con el id: 9 ','2019-06-19 22:47:56'),(204,123456789,'REGISTRO','ORDEN DE COMPRA','Registro de una orden de compra con el id: 12','2019-06-19 22:52:11'),(205,123456789,'REGISTRO','RECEPCION','Registro de una nueva recepción con el id: 10 ','2019-06-19 22:54:35'),(206,123456789,'LOGIN','LOGOUT','EL usuario Jose Angel Padrón Padron C.I: V-123456789 Cerró Sesión','2019-06-19 23:00:20'),(207,123456789,'LOGIN','LOGIN','El usuario Jose Angel Padrón Padron C.I: V-123456789 Inició Sesión','2019-06-19 23:02:00');
/*!40000 ALTER TABLE `auditoria_usuarios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categorias`
--

DROP TABLE IF EXISTS `categorias`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `categorias` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(15) NOT NULL,
  `descripcion_categoria` varchar(60) NOT NULL,
  `status` enum('1','2') NOT NULL DEFAULT '1',
  PRIMARY KEY (`code`),
  UNIQUE KEY `id` (`id`),
  KEY `DESCRIPCION_CATEGORIAS` (`descripcion_categoria`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categorias`
--

LOCK TABLES `categorias` WRITE;
/*!40000 ALTER TABLE `categorias` DISABLE KEYS */;
INSERT INTO `categorias` VALUES (1,'ASF','ASFALTOS','1'),(2,'BAT','BATERIAS','1'),(3,'BYL','BOMBILLOS Y LAMPARAS','1'),(4,'CAB','CABLES','1'),(5,'CAR','CARBONES','1'),(6,'CDL','CANALES DE LLUVIAS','1'),(7,'CONEEEEEEEEEEEE','CONEXIONES','1'),(8,'CYA','CINTAS Y ADHESIVOS','1'),(31,'EEE','EEEEEEEEEEEEE','1'),(9,'EMP','EMPACADURAS','1'),(10,'GYB','GRIFERIAS Y BAJANTES','1'),(11,'HER','HERRAMIENTAS','1'),(29,'LALAL','LALALALAL','1'),(30,'LAOLOL','LOLO','1'),(12,'LYC','LLAVES Y CERRADURAS','1'),(13,'MAE','MATERIALES ELECTRICOS','1'),(14,'MAL','MALLAS','1'),(15,'MAN','MANGUERAS','1'),(16,'MDC','MATERIALES DE CONSTRUCCION','1'),(17,'OTR','OTROS','1'),(18,'PEV','PEGAMENTOS VARIOS','1'),(32,'PLO','PLOTOTOPLO','1'),(26,'PRU','PRUEBA DE CATEGORIA','2'),(27,'PRUE','PRUEBA CATEGORIA','2'),(19,'PYS','PINTURAS Y SOLVENTES','1'),(20,'ROD','RODAMIENTOS','1'),(28,'TAD','Taladro','2'),(21,'TER','TERMINALES','1'),(22,'TIS','TIRADORES SURTIDOS','1'),(23,'TRU','TRUPER','1'),(24,'TUB','TUBERIAS','1'),(25,'TYC','TORNILLOS Y CLAVOS','1');
/*!40000 ALTER TABLE `categorias` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `detalles_orden_compra`
--

DROP TABLE IF EXISTS `detalles_orden_compra`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `detalles_orden_compra` (
  `id` int(15) NOT NULL AUTO_INCREMENT,
  `id_orden` int(15) NOT NULL,
  `id_producto` int(11) NOT NULL,
  `cantidad` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `id_requisicion` (`id_orden`),
  KEY `id_producto` (`id_producto`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `detalles_orden_compra`
--

LOCK TABLES `detalles_orden_compra` WRITE;
/*!40000 ALTER TABLE `detalles_orden_compra` DISABLE KEYS */;
INSERT INTO `detalles_orden_compra` VALUES (1,1,6,8),(2,1,5,7),(3,1,4,6),(4,1,3,5),(5,1,2,4),(6,2,3,15),(7,2,2,12),(8,2,4,10),(9,3,7,10),(10,3,7,10),(11,3,8,10),(12,3,10,10),(13,3,9,20),(14,4,7,10),(15,4,7,10),(16,4,8,10),(17,4,10,10),(18,4,9,20),(19,5,7,10),(20,5,7,10),(21,5,8,10),(22,5,10,10),(23,5,9,20),(24,6,20,5),(25,6,22,5),(26,6,24,5),(27,6,29,5),(28,6,22,5),(29,6,29,5),(30,6,30,5),(31,6,31,5),(32,6,32,5),(33,6,33,5),(34,6,58,5),(35,7,20,8),(36,7,21,8),(37,7,23,8),(38,7,23,8),(39,7,24,8),(40,7,25,8),(41,7,26,8),(42,7,27,8),(43,7,28,8),(44,7,31,8),(45,7,32,8),(46,7,33,8),(47,8,73,8),(48,8,77,8),(49,8,78,8),(50,9,3,10),(51,9,30,10),(52,10,3,10),(53,10,30,10),(54,11,10,5),(55,12,3,40),(56,12,4,2);
/*!40000 ALTER TABLE `detalles_orden_compra` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `detalles_pedido`
--

DROP TABLE IF EXISTS `detalles_pedido`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `detalles_pedido` (
  `id` int(15) NOT NULL AUTO_INCREMENT,
  `id_pedido` int(15) NOT NULL,
  `id_producto` int(11) NOT NULL,
  `cantidad` int(15) NOT NULL,
  `precio` float NOT NULL,
  PRIMARY KEY (`id`),
  KEY `ID_PRODUCTO` (`id_producto`),
  KEY `ID_PEDIDO` (`id_pedido`),
  KEY `ID_PRODUCTO_2` (`id_producto`),
  CONSTRAINT `detalles_pedido_ibfk_1` FOREIGN KEY (`id_pedido`) REFERENCES `pedidos` (`id`),
  CONSTRAINT `detalles_pedido_ibfk_2` FOREIGN KEY (`id_producto`) REFERENCES `productos` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=59 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `detalles_pedido`
--

LOCK TABLES `detalles_pedido` WRITE;
/*!40000 ALTER TABLE `detalles_pedido` DISABLE KEYS */;
INSERT INTO `detalles_pedido` VALUES (17,1,1,3,195),(18,1,1,4,260),(19,1,1,2,130),(20,2,1,9,0),(21,2,1,7,0),(22,3,1,1,0),(23,4,2,14,910),(24,5,4,12,144),(25,6,14,6,0),(26,6,15,3,0),(27,7,2,3,195),(28,7,3,0,0),(29,7,3,0,0),(30,7,3,0,0),(31,8,2,1,65),(32,8,2,1,65),(33,9,2,2,130),(34,9,3,4,492),(35,9,4,9,108),(36,10,2,2,130),(37,10,3,4,492),(38,10,4,9,108),(39,11,2,2,130),(40,11,3,4,492),(41,11,4,9,108),(42,12,2,4,260),(43,13,1,2,24),(44,14,1,2,24),(45,15,2,4,260),(46,16,2,1,65),(47,17,2,20,1300),(48,17,4,8,96),(49,18,2,39,2535),(50,19,2,5,325),(51,20,3,2,246),(52,21,2,2,130),(53,22,3,2,246),(54,23,3,15,1845),(55,23,2,10,650),(56,23,4,6,72),(57,24,2,10,650),(58,24,3,1,123);
/*!40000 ALTER TABLE `detalles_pedido` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `detalles_recepcion`
--

DROP TABLE IF EXISTS `detalles_recepcion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `detalles_recepcion` (
  `id` int(15) NOT NULL AUTO_INCREMENT,
  `id_recepcion` int(15) NOT NULL,
  `id_producto` int(11) NOT NULL,
  `cantidad` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `ID_REQUISICION` (`id_recepcion`),
  KEY `ID_PRODUCTO` (`id_producto`),
  CONSTRAINT `detalles_recepcion_ibfk_1` FOREIGN KEY (`id_recepcion`) REFERENCES `recepcion` (`id`),
  CONSTRAINT `detalles_recepcion_ibfk_2` FOREIGN KEY (`id_producto`) REFERENCES `productos` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `detalles_recepcion`
--

LOCK TABLES `detalles_recepcion` WRITE;
/*!40000 ALTER TABLE `detalles_recepcion` DISABLE KEYS */;
INSERT INTO `detalles_recepcion` VALUES (1,1,6,8),(2,1,5,7),(3,1,4,6),(4,1,3,5),(5,1,2,4),(6,2,3,15),(7,2,2,12),(8,2,4,10),(9,3,7,10),(10,3,7,10),(11,3,8,10),(12,3,10,10),(13,3,9,20),(14,4,20,5),(15,4,22,5),(16,4,24,5),(17,4,29,5),(18,4,22,5),(19,4,29,5),(20,4,30,5),(21,4,31,5),(22,4,32,5),(23,4,33,5),(24,4,58,5),(25,5,20,8),(26,5,21,8),(27,5,23,8),(28,5,23,8),(29,5,24,8),(30,5,25,8),(31,5,26,8),(32,5,27,8),(33,5,28,8),(34,5,31,8),(35,5,32,8),(36,5,33,8),(37,6,73,8),(38,6,77,8),(39,6,78,8),(40,7,3,10),(41,7,30,10),(42,8,3,7),(43,8,30,5),(44,9,10,3),(45,10,3,40),(46,10,4,2);
/*!40000 ALTER TABLE `detalles_recepcion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `detalles_requisicion`
--

DROP TABLE IF EXISTS `detalles_requisicion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `detalles_requisicion` (
  `id` int(15) NOT NULL AUTO_INCREMENT,
  `id_requisicion` int(15) NOT NULL,
  `id_producto` int(11) NOT NULL,
  `cantidad_requisicion` int(15) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `ID_MOVIMIENTO` (`id_requisicion`),
  KEY `ID_PRODUCTO` (`id_producto`),
  CONSTRAINT `detalles_requisicion_ibfk_1` FOREIGN KEY (`id_requisicion`) REFERENCES `requisicion` (`id`),
  CONSTRAINT `detalles_requisicion_ibfk_2` FOREIGN KEY (`id_producto`) REFERENCES `productos` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `detalles_requisicion`
--

LOCK TABLES `detalles_requisicion` WRITE;
/*!40000 ALTER TABLE `detalles_requisicion` DISABLE KEYS */;
INSERT INTO `detalles_requisicion` VALUES (1,1,6,8),(2,1,5,7),(3,1,4,6),(4,1,3,5),(5,1,2,4),(6,2,3,15),(7,2,2,12),(8,2,4,10),(9,3,7,10),(10,3,7,10),(11,3,8,10),(12,3,10,10),(13,3,9,20),(14,4,20,5),(15,4,22,5),(16,4,24,5),(17,4,29,5),(18,4,22,5),(19,4,29,5),(20,4,30,5),(21,4,31,5),(22,4,32,5),(23,4,33,5),(24,4,58,5),(25,5,20,8),(26,5,21,8),(27,5,23,8),(28,5,23,8),(29,5,24,8),(30,5,25,8),(31,5,26,8),(32,5,27,8),(33,5,28,8),(34,5,31,8),(35,5,32,8),(36,5,33,8),(37,6,73,8),(38,6,77,8),(39,6,78,8),(40,7,3,10),(41,7,30,10),(42,8,10,5),(43,9,3,40),(44,9,4,2);
/*!40000 ALTER TABLE `detalles_requisicion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `estado`
--

DROP TABLE IF EXISTS `estado`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `estado` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `descripcion_estado` varchar(200) NOT NULL,
  `status` enum('1','2') NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `estado`
--

LOCK TABLES `estado` WRITE;
/*!40000 ALTER TABLE `estado` DISABLE KEYS */;
INSERT INTO `estado` VALUES (1,'ANULADO','1'),(2,'ENTREGADO','1'),(3,'POR ENTREGAR','1'),(4,'POR PAGAR','1'),(5,'POR DESPACHAR','2'),(6,'L','2');
/*!40000 ALTER TABLE `estado` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `movimiento_inventario`
--

DROP TABLE IF EXISTS `movimiento_inventario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `movimiento_inventario` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `producto_id` int(10) unsigned NOT NULL,
  `tipo_movimiento` enum('1','2','3','4') COLLATE utf8_spanish_ci NOT NULL COMMENT '1:recepcion, 2:pedidos, 3: ajus_entrada, 4: ajus_salida',
  `cantidad` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=61 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `movimiento_inventario`
--

LOCK TABLES `movimiento_inventario` WRITE;
/*!40000 ALTER TABLE `movimiento_inventario` DISABLE KEYS */;
INSERT INTO `movimiento_inventario` VALUES (1,6,'1',8,'2019-03-22 07:38:38','2019-03-22 07:38:38'),(2,5,'1',7,'2019-03-22 07:38:39','2019-03-22 07:38:39'),(3,4,'1',6,'2019-03-22 07:38:39','2019-03-22 07:38:39'),(4,3,'1',5,'2019-03-22 07:38:39','2019-03-22 07:38:39'),(5,2,'1',4,'2019-03-22 07:38:39','2019-03-22 07:38:39'),(6,3,'1',15,'2019-03-22 08:41:05','2019-03-22 08:41:05'),(7,2,'1',12,'2019-03-22 08:41:06','2019-03-22 08:41:06'),(8,4,'1',10,'2019-03-22 08:41:06','2019-03-22 08:41:06'),(9,7,'1',10,'2019-05-01 03:51:10','2019-05-01 03:51:10'),(10,7,'1',10,'2019-05-01 03:51:10','2019-05-01 03:51:10'),(11,8,'1',10,'2019-05-01 03:51:10','2019-05-01 03:51:10'),(12,10,'1',10,'2019-05-01 03:51:10','2019-05-01 03:51:10'),(13,9,'1',20,'2019-05-01 03:51:10','2019-05-01 03:51:10'),(14,20,'1',5,'2019-05-09 06:37:26','2019-05-09 06:37:26'),(15,22,'1',5,'2019-05-09 06:37:26','2019-05-09 06:37:26'),(16,24,'1',5,'2019-05-09 06:37:26','2019-05-09 06:37:26'),(17,29,'1',5,'2019-05-09 06:37:27','2019-05-09 06:37:27'),(18,22,'1',5,'2019-05-09 06:37:27','2019-05-09 06:37:27'),(19,29,'1',5,'2019-05-09 06:37:27','2019-05-09 06:37:27'),(20,30,'1',5,'2019-05-09 06:37:27','2019-05-09 06:37:27'),(21,31,'1',5,'2019-05-09 06:37:27','2019-05-09 06:37:27'),(22,32,'1',5,'2019-05-09 06:37:27','2019-05-09 06:37:27'),(23,33,'1',5,'2019-05-09 06:37:27','2019-05-09 06:37:27'),(24,58,'1',5,'2019-05-09 06:37:27','2019-05-09 06:37:27'),(25,20,'1',8,'2019-05-09 06:47:45','2019-05-09 06:47:45'),(26,21,'1',8,'2019-05-09 06:47:45','2019-05-09 06:47:45'),(27,23,'1',8,'2019-05-09 06:47:45','2019-05-09 06:47:45'),(28,23,'1',8,'2019-05-09 06:47:45','2019-05-09 06:47:45'),(29,24,'1',8,'2019-05-09 06:47:45','2019-05-09 06:47:45'),(30,25,'1',8,'2019-05-09 06:47:45','2019-05-09 06:47:45'),(31,26,'1',8,'2019-05-09 06:47:45','2019-05-09 06:47:45'),(32,27,'1',8,'2019-05-09 06:47:45','2019-05-09 06:47:45'),(33,28,'1',8,'2019-05-09 06:47:45','2019-05-09 06:47:45'),(34,31,'1',8,'2019-05-09 06:47:45','2019-05-09 06:47:45'),(35,32,'1',8,'2019-05-09 06:47:46','2019-05-09 06:47:46'),(36,33,'1',8,'2019-05-09 06:47:46','2019-05-09 06:47:46'),(37,73,'1',8,'2019-05-09 06:52:47','2019-05-09 06:52:47'),(38,77,'1',8,'2019-05-09 06:52:47','2019-05-09 06:52:47'),(39,78,'1',8,'2019-05-09 06:52:47','2019-05-09 06:52:47'),(40,2,'1',7,'2019-05-12 19:39:56','2019-05-12 19:39:56'),(41,2,'1',7,'2019-05-12 19:40:34','2019-05-12 19:40:34'),(42,3,'2',17,'2019-05-12 19:41:00','2019-05-12 19:41:00'),(43,4,'2',1,'2019-05-12 19:42:22','2019-05-12 19:42:22'),(44,4,'1',0,'2019-05-12 19:42:58','2019-05-12 19:42:58'),(45,5,'1',10,'2019-05-12 19:44:25','2019-05-12 19:44:25'),(46,6,'1',10,'2019-05-12 19:44:50','2019-05-12 19:44:50'),(47,2,'3',2,'2019-05-12 22:06:30','2019-05-12 22:06:30'),(48,8,'3',40,'2019-05-12 22:45:53','2019-05-12 22:45:53'),(49,9,'3',11,'2019-05-12 22:48:13','2019-05-12 22:48:13'),(50,8,'4',30,'2019-05-12 22:49:13','2019-05-12 22:49:13'),(51,6,'3',1,'2019-05-12 22:49:57','2019-05-12 22:49:57'),(52,3,'1',10,'2019-05-30 06:46:25','2019-05-30 06:46:25'),(53,30,'1',10,'2019-05-30 06:46:25','2019-05-30 06:46:25'),(54,3,'1',7,'2019-05-30 07:18:10','2019-05-30 07:18:10'),(55,30,'1',5,'2019-05-30 07:18:10','2019-05-30 07:18:10'),(56,10,'1',3,'2019-06-20 01:54:16','2019-06-20 01:54:16'),(57,2,'3',32,'2019-06-20 01:55:53','2019-06-20 01:55:53'),(58,2,'3',10,'2019-06-20 02:04:14','2019-06-20 02:04:14'),(59,3,'1',40,'2019-06-20 02:54:35','2019-06-20 02:54:35'),(60,4,'1',2,'2019-06-20 02:54:35','2019-06-20 02:54:35');
/*!40000 ALTER TABLE `movimiento_inventario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orden_compra`
--

DROP TABLE IF EXISTS `orden_compra`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `orden_compra` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `number` int(11) NOT NULL,
  `id_estado` int(11) NOT NULL,
  `id_proveedor` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `id_estado` (`id_estado`),
  KEY `id_proveedor` (`id_proveedor`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orden_compra`
--

LOCK TABLES `orden_compra` WRITE;
/*!40000 ALTER TABLE `orden_compra` DISABLE KEYS */;
INSERT INTO `orden_compra` VALUES (1,123456789,5,0,'2019-03-22 03:38:23'),(2,123456789,5,0,'2019-03-22 04:40:53'),(3,123456789,1,0,'2019-04-30 23:49:33'),(4,123456789,1,0,'2019-04-30 23:49:53'),(5,123456789,5,0,'2019-04-30 23:50:09'),(6,123456789,5,0,'2019-05-09 02:35:58'),(7,123456789,5,0,'2019-05-09 02:43:48'),(8,123456789,5,0,'2019-05-09 02:51:39'),(9,123456789,5,3,'2019-05-29 23:48:54'),(10,123456789,5,3,'2019-05-29 23:49:00'),(11,123456789,5,4,'2019-06-19 21:52:05'),(12,123456789,5,1,'2019-06-19 22:52:11');
/*!40000 ALTER TABLE `orden_compra` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pedidos`
--

DROP TABLE IF EXISTS `pedidos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pedidos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `number` int(11) NOT NULL,
  `id_estado` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `CI_RIF` (`number`),
  KEY `ID_ESTADO` (`created_at`),
  KEY `number` (`number`),
  KEY `id_estado_2` (`id_estado`),
  CONSTRAINT `pedidos_ibfk_1` FOREIGN KEY (`number`) REFERENCES `users` (`number`),
  CONSTRAINT `pedidos_ibfk_2` FOREIGN KEY (`id_estado`) REFERENCES `estado` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pedidos`
--

LOCK TABLES `pedidos` WRITE;
/*!40000 ALTER TABLE `pedidos` DISABLE KEYS */;
INSERT INTO `pedidos` VALUES (1,123456789,3,'2018-11-18 03:58:12'),(2,123456789,1,'2018-11-18 04:07:57'),(3,123456789,1,'2018-11-18 04:09:42'),(4,123456789,1,'2018-11-19 00:22:48'),(5,123456789,1,'2018-11-19 00:23:07'),(6,123456789,1,'2018-11-20 00:52:51'),(7,123456789,3,'2018-11-20 23:31:41'),(8,123456789,3,'2018-11-20 23:33:54'),(9,123456789,3,'2018-11-23 02:14:52'),(10,123456789,3,'2018-11-23 02:15:31'),(11,123456789,3,'2018-11-23 02:15:58'),(12,123456789,3,'2018-11-29 22:53:40'),(13,123456789,3,'2018-12-03 22:50:56'),(14,123456789,1,'2018-12-03 22:52:00'),(15,123456789,1,'2018-12-04 01:27:45'),(16,123456789,3,'2019-02-20 22:42:39'),(17,123456789,3,'2019-02-20 23:51:12'),(18,123456789,1,'2019-03-21 03:24:37'),(19,123456789,3,'2019-05-09 02:21:28'),(20,123456789,3,'2019-05-09 02:33:36'),(21,123456789,3,'2019-05-09 02:53:17'),(22,123456789,1,'2019-05-09 02:53:38'),(23,123456789,3,'2019-06-19 22:00:24'),(24,123456789,3,'2019-06-19 22:38:39');
/*!40000 ALTER TABLE `pedidos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `productos`
--

DROP TABLE IF EXISTS `productos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `productos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(15) NOT NULL,
  `name` varchar(60) NOT NULL,
  `id_categoria` varchar(15) NOT NULL,
  `id_proveedor` int(10) unsigned DEFAULT NULL,
  `stock` int(15) NOT NULL,
  `unity` varchar(10) NOT NULL,
  `price` float NOT NULL,
  `stock_min` int(11) DEFAULT NULL,
  `stock_max` int(11) DEFAULT NULL,
  `status` enum('1','2') NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`code`),
  UNIQUE KEY `id` (`id`),
  KEY `DESCRIPCCION_PRODUCTO` (`name`),
  KEY `ID_CATEGORIA` (`id_categoria`) USING BTREE,
  KEY `DESCRIPCION_PRODUCTO` (`name`),
  KEY `id_categoria_2` (`id_categoria`),
  KEY `id_categoria_3` (`id_categoria`),
  KEY `id_proveedor` (`id_proveedor`)
) ENGINE=InnoDB AUTO_INCREMENT=80 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `productos`
--

LOCK TABLES `productos` WRITE;
/*!40000 ALTER TABLE `productos` DISABLE KEYS */;
INSERT INTO `productos` VALUES (1,'100029','CARRETILLA ALBAÑIL 85L R/AIRE NARAN','ASF',4,0,'UND',12,5,1000,'2','2018-11-15 01:59:24'),(2,'100W','BOMBILLO 110 - 100W HALOGENO SYLVANIA','BAT',4,40,'UND',65,5,1000,'1','2018-11-15 01:59:24'),(3,'101029','BOMBILLO AHORRADOR E14 11WATS SEMILIC','BYL',4,42,'UND',123,5,1000,'1','2018-11-15 01:59:24'),(4,'101050','BOMBILLO AHORRADOR ESPIRAL SEMILIC  15W','BAT',4,11,'UND',12,5,1000,'1','2018-11-15 01:59:24'),(5,'11-001','LAMPARA PLAFON TRANSPARENTE 6\"','ASF',4,17,'UND',31,5,1000,'1','2018-11-15 01:59:24'),(6,'1102','PULSADOR P/ EMPOTRAR TICINO','ASF',4,19,'UND',654,5,1000,'1','2018-11-15 01:59:24'),(7,'110500G','BOMBILLO DE HALOGENO  500W G.E     110V','ASF',4,20,'UND',123,5,1000,'1','2018-11-15 01:59:24'),(8,'110B','PROTECTOR A/A C/BORNER 110W NINJA 3AÑO G','ASF',4,20,'CAJA',50,5,1000,'1','2018-11-15 01:59:24'),(9,'110C','PROTECTOR COMPUTADORA  110W NINJA 3AÑO G','ASF',4,31,'UND',13,5,1000,'1','2018-11-15 01:59:24'),(10,'111969','CUCHARA LUXVEN 8\" PUNTA','ASF',4,13,'UND',90,5,1000,'1','2018-11-15 01:59:24'),(11,'113385','LLAVE P/TUBO 14\" T/RIDGID','BOM',4,0,'UND',489,5,1000,'1','2018-11-15 01:59:24'),(12,'12-026','LAMPARA BAMBER 8\" TORNASOL','BOM',4,0,'UND',543,5,1000,'1','2018-11-15 01:59:24'),(13,'125353','CHICURA VINKO DE ALTA CALIDAD 2 LB','BOM',4,0,'',0,5,1000,'1','2018-11-15 01:59:24'),(14,'133412','PALA CUADRADA MANGO PLASTICO','BOM',4,0,'',0,5,1000,'1','2018-11-15 01:59:24'),(15,'1382594','MARTILLO CARP. 25mm CASCABEL','BOM',4,0,'',0,5,1000,'1','2018-11-15 01:59:24'),(16,'14-045','LAMPARA FLUORESCENTE CUADRADA 22 W','BOM',4,0,'',0,5,1000,'1','2018-11-15 01:59:24'),(17,'14515','MULTITOMA 6 TOMA BRUFER','BOM',4,0,'',0,5,1000,'1','2018-11-15 01:59:24'),(18,'16-150','CINCEL PUNTA BELLOTA 16-150','BOM',4,0,'',0,5,1000,'1','2018-11-15 01:59:24'),(19,'17-047','ESCUADRA METALICA 8\"','BOM',4,0,'',0,5,1000,'1','2018-11-15 01:59:24'),(20,'1X15EE','BREAKER P/ EMPOTRAR YAINO  1X15 AL 1X30','ASF',3,13,'UND',0,5,1000,'1','2018-11-15 01:59:24'),(21,'1X15ES','BREAKER P/ EMPOTRAR SIEMEN 1X15','CAR',NULL,8,'',0,5,1000,'1','2018-11-15 01:59:24'),(22,'1X15ET','BREAKER P/ EMPOTRAR TICINO 1X15 AL 1X30','CAR',3,10,'',0,5,1000,'1','2018-11-15 01:59:24'),(23,'20103','ESCARDILLA 2KG. ECONOMICA','CAR',3,16,'',0,5,1000,'1','2018-11-15 01:59:24'),(24,'2032','PILA 3V 2032 C/U','CAR',3,13,'',0,5,1000,'1','2018-11-15 01:59:24'),(25,'209601','CERR CILINDRO FIJO BLUELOOCK','CAR',3,8,'',0,5,1000,'1','2018-11-15 01:59:24'),(26,'209671','CERR P/VITRINA C/LLAVE','CAR',3,8,'',0,5,1000,'1','2018-11-15 01:59:24'),(27,'2117','CERR T/POMO METAL C/LLAVE BLUELOCK','CAR',3,8,'',0,5,1000,'1','2018-11-15 01:59:24'),(28,'2127','CERR T/POMO METAL S/LLAVE VENLOCK','CAR',3,8,'',0,5,1000,'1','2018-11-15 01:59:24'),(29,'2201030MM','CANDADO DE LATON PLANOS 30mm CISA','CAR',3,10,'',0,5,1000,'1','2018-11-15 01:59:24'),(30,'2201040MM','CANDADO DE LATON PLANOS 40mm CISA','ASF',3,20,'UND',0,5,1000,'1','2018-11-15 01:59:24'),(31,'2201050MM','CANDADO DE LATON PLANOS 50mm CISA','EMP',3,13,'',0,5,1000,'1','2018-11-15 01:59:24'),(32,'2201060MM','CANDADO DE LATON PLANOS 60mm CISA','EMP',3,13,'',0,5,1000,'1','2018-11-15 01:59:24'),(33,'22011-52','CANDADO ARCO LARGO A/Z 50mm  CISA','EMP',3,13,'',0,5,1000,'1','2018-11-15 01:59:24'),(34,'22WG','FLUORESCENTE 22W CIRCULAR G/ELECTRIC','EMP',3,0,'',0,5,1000,'1','2018-11-15 01:59:24'),(35,'406001','Agrolucha','EMP',3,0,'UND',0,5,1000,'1','2018-11-15 01:59:24'),(36,'5001','PISTOLA PARA PINTAR C/ENV PLAS D GRAVED','EMP',3,0,'',0,5,1000,'1','2018-11-15 01:59:24'),(37,'637','EXTENSION ELECTRICA BLANCA    5MTS SEMIL','EMP',3,0,'',0,5,1000,'1','2018-11-15 01:59:24'),(38,'668','EXTENSION ELECTRICA NEGRA     5MTS SEMIL','EMP',3,0,'',0,5,1000,'1','2018-11-15 01:59:24'),(39,'71453','BOMBILLO TIPO VELA E-12 FERMETAL','EMP',3,0,'',0,5,1000,'1','2018-11-15 01:59:24'),(40,'846','HEMBRILLA ELECTRICA 110V ESPAÑOLA','ASF',NULL,0,'',0,5,1000,'2','2018-11-15 01:59:24'),(41,'BP4','BROCHA PRETUL 4\"','ASF',2,0,'',0,5,1000,'2','2018-11-15 01:59:24'),(42,'CA2','CLAVOS DE ACERO 2\"','ASF',2,0,'',0,5,1000,'2','2018-11-15 01:59:24'),(43,'CAB-01','Cable UTP Nivel 6','ASF',2,0,'Metro',0,5,1000,'1','2018-11-15 01:59:24'),(44,'CAR-01','Carbon Negro','ASF',2,0,'UND',0,5,1000,'1','2018-11-15 01:59:24'),(45,'CDL-01','Canal de Lluvia de 6\"','ASF',2,0,'UND',0,5,1000,'1','2018-11-15 01:59:24'),(46,'CODPROD','Codigo Producto de Prueba','TUB',2,0,'UND',84,5,1000,'1','2018-11-15 01:59:24'),(47,'CODPRODO','Codigo de producto de prueba','PYS',2,0,'UND',312,5,1000,'1','2018-11-15 01:59:24'),(48,'CON-01','Conexion de tuberia Negra','ASF',2,0,'UND',0,5,1000,'1','2018-11-15 01:59:24'),(49,'CYA','Cinta Metrica','ASF',2,0,'ROLLO',0,5,1000,'1','2018-11-15 01:59:24'),(79,'GC001','MArtillo de carpintero','MDC',2,0,'UND',12,5,1000,'1','2018-12-04 01:26:29'),(50,'GPAA','PILA AA  ALCALINA PAQ','ASF',2,0,'',0,5,1000,'1','2018-11-15 01:59:24'),(51,'GPAAA','PILA AAA  ALCALINA PAQ','ASF',2,0,'',0,5,1000,'1','2018-11-15 01:59:24'),(52,'IPAC1/4','ASFALTO IPA CEMENTO 1/4 GALON GOTA FIX','ASF',2,0,'',0,5,1000,'1','2018-11-15 01:59:24'),(53,'IPACC','ASFALTO IPA CEMENTO DE CUÑETE','ASF',2,0,'',0,5,1000,'1','2018-11-15 01:59:24'),(54,'IPACG','ASFALTO IPA CEMENTO DE GALON','ASF',2,0,'',0,5,1000,'1','2018-11-15 01:59:24'),(55,'IPALC','ASFALTO IPA LIQUIDO DE CUÑETE','ASF',2,0,'',0,5,1000,'1','2018-11-15 01:59:24'),(56,'IPALG','ASFALTO IPA LIQUIDO DE GALON','ASF',2,0,'',0,5,1000,'1','2018-11-15 01:59:24'),(57,'IPAM3','MANTO 3.15 MILIMETRO IPA','ASF',2,0,'',0,5,1000,'1','2018-11-15 01:59:24'),(58,'IPAMA','MANTO ALUMINIO ALUFLEX 10MTS','ASF',2,5,'',0,5,1000,'1','2018-11-15 01:59:24'),(59,'IPAPC','ASFALTO IPA PLASTICO DE CUÑETE','ASF',2,0,'',0,5,1000,'1','2018-11-15 01:59:24'),(60,'IPAPG','ASFALTO IPA PLASTICO DE GALON','ASF',NULL,0,'',0,5,1000,'1','2018-11-15 01:59:24'),(61,'IPAPMC','ASFALTO IPA PRIMER DE CUÑETE','ASF',2,0,'',0,5,1000,'1','2018-11-15 01:59:24'),(62,'IPAPMG','ASFALTO IPA PRIMER DE GALON','ASF',2,0,'',0,5,1000,'1','2018-11-15 01:59:24'),(74,'KAS','Donardo Pineda','CAR',2,0,'UND',10,5,1000,'1','2018-11-20 01:21:43'),(63,'LOCO123','LOCOMOTORA','HER',2,0,'UND',100,5,1000,'1','2018-11-15 01:59:24'),(64,'P12','PILA 12VOLTIO C/U','ASF',2,0,'',0,5,1000,'1','2018-11-15 01:59:24'),(65,'P2025','PILA 2025 C/U','ASF',2,0,'',0,5,1000,'1','2018-11-15 01:59:24'),(66,'P3V','PILA 3 VOLTIO','ASF',2,0,'',0,5,1000,'1','2018-11-15 01:59:24'),(67,'P828','PILA 27A C/U','ASF',2,0,'',0,5,1000,'1','2018-11-15 01:59:24'),(68,'POQ21','PODADORA ELECTRICA','HER',2,0,'UND',433,5,1000,'1','2018-11-15 01:59:24'),(69,'PRUEB','PRUEBA DE CODIGO PRODUCTO','LYC',2,0,'UND',42,5,1000,'1','2018-11-15 01:59:24'),(70,'SOL141','LENTES DE SOLDAR','HER',2,0,'UND',42,5,1000,'1','2018-11-15 01:59:24'),(71,'SOL142','LENTES DE SOLDAR','HER',2,0,'UND',42,5,1000,'1','2018-11-15 01:59:24'),(72,'SOL143','LENTES DE SOLDAR','HER',2,0,'UND',42,5,1000,'1','2018-11-15 01:59:24'),(73,'T13/16','TORNILLO 13/16 MEDIANOS','ASF',2,8,'',0,5,1000,'1','2018-11-15 01:59:24'),(75,'TAD20','Taladro Mayor Marca','HER',2,0,'UND',100,5,1000,'2','2018-11-23 02:00:32'),(77,'TAD21','Taladro Mayor Marca Tucson','HER',2,8,'UND',100,5,1000,'1','2018-11-23 02:06:10'),(78,'TAD22','Taladro Mayor Marca deWalt','HER',2,8,'UND',110,5,1000,'1','2018-11-23 02:08:36');
/*!40000 ALTER TABLE `productos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `proveedores`
--

DROP TABLE IF EXISTS `proveedores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `proveedores` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `dni` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `description` varchar(500) COLLATE utf8_spanish_ci DEFAULT NULL,
  `contact_name` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `phone` varchar(100) COLLATE utf8_spanish_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `address` varchar(500) COLLATE utf8_spanish_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '0:inactivo,1:activo',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `proveedores`
--

LOCK TABLES `proveedores` WRITE;
/*!40000 ALTER TABLE `proveedores` DISABLE KEYS */;
INSERT INTO `proveedores` VALUES (1,'26571341','Jose Angel Padron PADRON','Proveedor principal','Jose Angel Padron','04125550943','japp19961996@gmail.com','Maracay Edo. Aragua',1,'2019-02-23 04:30:00','2019-02-26 06:03:18',NULL),(2,'13820420','Marycruz R Padron Padron','Proveedor de prueba','Marycruz','4124674136','null','Venezuela, Aragua',2,'2019-03-21 03:03:39','2019-03-21 07:03:39',NULL),(3,'4227783','Josefa Padron','Prueba proveedor','Abuela','4149462580',NULL,'Maracay Edo Aragua',1,'2019-02-23 23:25:40','2019-02-23 23:25:40',NULL),(4,'01928374','Venezuela','Venezuela','Venezuela','4124674136',NULL,'Venezuela, Aragua',2,'2019-03-21 02:59:43','2019-03-21 06:59:43',NULL),(5,'12345','Marasllllllloooo','sdfgjk','FDGHJK','554657676','null','gfjk5656544',2,'2019-03-21 02:59:46','2019-03-21 06:59:46',NULL),(6,'32891983','ALLA','ALSDASJDASKDKK','13831','3179831239','null','sdkhkjhakjashkdhkjasdkh',2,'2019-03-21 02:59:39','2019-03-21 06:59:39',NULL),(7,'18376213','dashjdkh123123123','djksahkdhajkhdkahsd','17293193ASDASLDLALSD','45641329816','null','jdalhdjaljdlasjdkajsdlalkjdlajdlajsldjalkjdlkasldkjlkajsd',2,'2019-03-21 01:58:59','2019-03-21 05:58:59',NULL),(8,'262665151','AMSDASIDA','ASMDSAKDIFKDAKF','AMSDNASID','01510550','jaadsk@gmail.com','akjdakjhdashdahsjdhajkdhjadhasjd\nadhlasjdajdahsdkjashdahdhkahjkhd\nlkdasljdlasjdlkjakdljasljdlaksdjlasjdla',2,'2019-03-21 02:59:36','2019-03-21 06:59:36',NULL),(9,'j300941736','ferreteria la campana ca','venta al mayor de ferreteria','donardo','04142979317','ferreterialacampana@gmail.com','maracay centro',2,'2019-04-30 23:45:55','2019-05-01 03:45:55',NULL),(10,'j300941736','ferreteria la campana','ventas al mayor y por menor de ferreteria','donardo','04142979317','ferreterialacampana@gmail.com','lmaracay centro',1,'2019-05-01 03:47:01','2019-05-01 03:47:01',NULL);
/*!40000 ALTER TABLE `proveedores` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `recepcion`
--

DROP TABLE IF EXISTS `recepcion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `recepcion` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `number` int(11) NOT NULL,
  `id_estado` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `CI_RIF` (`created_at`),
  KEY `CI_RIF_2` (`created_at`),
  KEY `number` (`number`),
  CONSTRAINT `recepcion_ibfk_1` FOREIGN KEY (`number`) REFERENCES `users` (`number`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `recepcion`
--

LOCK TABLES `recepcion` WRITE;
/*!40000 ALTER TABLE `recepcion` DISABLE KEYS */;
INSERT INTO `recepcion` VALUES (1,123456789,3,'2019-03-22 03:38:38'),(2,123456789,3,'2019-03-22 04:41:05'),(3,123456789,3,'2019-04-30 23:51:10'),(4,123456789,3,'2019-05-09 02:37:26'),(5,123456789,3,'2019-05-09 02:47:44'),(6,123456789,3,'2019-05-09 02:52:47'),(7,123456789,3,'2019-05-30 02:46:24'),(8,123456789,3,'2019-05-30 03:18:10'),(9,123456789,3,'2019-06-19 21:54:15'),(10,123456789,3,'2019-06-19 22:54:35');
/*!40000 ALTER TABLE `recepcion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `requisicion`
--

DROP TABLE IF EXISTS `requisicion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `requisicion` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `number` int(11) NOT NULL,
  `id_estado` int(11) NOT NULL,
  `observacion_requisicion` varchar(150) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `CI_RIF` (`created_at`),
  KEY `number` (`number`),
  KEY `id_estado` (`id_estado`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `requisicion`
--

LOCK TABLES `requisicion` WRITE;
/*!40000 ALTER TABLE `requisicion` DISABLE KEYS */;
INSERT INTO `requisicion` VALUES (1,123456789,5,NULL,'2019-03-22 03:38:05'),(2,123456789,5,NULL,'2019-03-22 04:40:37'),(3,123456789,5,NULL,'2019-04-30 23:48:19'),(4,123456789,5,NULL,'2019-05-09 02:35:21'),(5,123456789,5,NULL,'2019-05-09 02:43:01'),(6,123456789,5,NULL,'2019-05-09 02:51:09'),(7,123456789,5,NULL,'2019-05-27 23:26:49'),(8,123456789,5,NULL,'2019-06-19 21:51:32'),(9,123456789,5,NULL,'2019-06-19 22:47:56');
/*!40000 ALTER TABLE `requisicion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tipo_usuarios`
--

DROP TABLE IF EXISTS `tipo_usuarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tipo_usuarios` (
  `id` varchar(15) NOT NULL,
  `descripcion_usuario` varchar(60) NOT NULL,
  PRIMARY KEY (`id`)
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
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tipodoc` varchar(10) NOT NULL,
  `number` int(11) NOT NULL,
  `name` varchar(60) NOT NULL,
  `password` varchar(60) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `email` varchar(60) NOT NULL,
  `phone` varchar(13) NOT NULL,
  `address` varchar(150) NOT NULL,
  `birthday` date NOT NULL,
  `level` varchar(15) NOT NULL,
  `status` enum('1','2','3') NOT NULL DEFAULT '1' COMMENT '1:activo; 2:desactivo; 3:eliminado;',
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`number`),
  UNIQUE KEY `id` (`id`),
  KEY `ID_USUARIOS` (`level`),
  KEY `ID_USUARIOS_2` (`level`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'',0,'FERRETERIA LA CAMPANA, C.A.','$2y$10$lUHaC.RYdfM7CqpiEoSe1uy3hMgb4CQXhsZQ.gnJqp2Y18q/c6CHi',NULL,'FERRETERIALACAMPANACA@HOTMAIL.COM','02432378756','AV 10 DE DICIEMBRE, MARACAY EDO ARAGUA','1970-01-01','TRA','1','2018-11-21 02:52:42','2018-10-16 00:15:35'),(2,'V',1010101,'BinarioJulio','$2y$10$Zy6deXXFtP/lQySkRT0cPeU48CeC787Zy3IJTfDRxadfIPqAaolZ.',NULL,'codigobinario@mail.com','04120101010','010101 BinarioLandia','1971-01-01','CLI','1','2018-11-21 02:28:03','2018-11-21 02:28:03'),(17,'V',1919191,'diecinueve','19191919',NULL,'diecinueve@gmail.com','19191919191','maracay maracaibo valencia barquisimeto merida trujillo los andes\ndiecinueve menol','1992-06-04','CLI','1','2019-03-21 00:09:35','2019-03-21 00:09:35'),(18,'V',3737373,'diecinueve','$2y$10$PTkeKnJEOvEngu9hiIGoG.5dXcO7UtyZ1AQilpXagy0izK2wiSPeq',NULL,'tressiete@gmail.com','37373737','maracay maracaibo valencia barquisimeto merida trujillo los andes\ndiecinueve menol','1992-06-04','CLI','1','2019-03-21 00:14:15','2019-03-21 00:14:15'),(8,'V',4227783,'Josefa Maria Padron','$2y$10$dTQn/v53euKXf8F99vRH5uVSwLvDycjqim7F49/rEEskXDLOQwlQC',NULL,'josefapadron@gmail.com','04149462580','EL LIMON EDO ARAGUA','1952-05-22','CLI','1','2018-12-03 17:10:10','2018-12-03 17:10:10'),(7,'V',12345678,'hhh','$2y$10$V0RKsds4IaXsQ7jQ88fX5e0gNhjZV9GgMYKKK4Ppcv4U8gKkvnM3C',NULL,'a@hotmail.com','999','maracay','2018-11-29','CLI','1','2018-11-29 22:34:14','2018-11-29 22:34:14'),(3,'J-',13780965,'LUIS APONTE','$2y$10$PFxXNe9/qf9gahY.shN/c.jR1kPT9UNpbgYh6Q6LIaIqm430KGC5a',NULL,'PROFESORLUISAPONTE@GMAIL.COM','04125678990','MARACAY','2017-11-21','CLI','1','2018-11-12 23:00:30','2018-10-16 00:15:35'),(9,'V',13820420,'Marycruz Reina Padron','$2y$10$1ORyEEn06bAsuWGDD/WANuuJIDYHG85WGIStmuDrNxIxfN4hJuLrq',NULL,'marycruzpadron@gmail.com','04140009998','EL LIMON EDO ARAGUA','1977-04-07','CLI','1','2018-12-03 17:13:12','2018-12-03 17:13:12'),(13,'V',21270887,'Flor Vargas','$2y$10$M6Yi9OxhL.9KE83g1K4Fl.rjmEoyedn0VcooJ/vWf8krd/ORqHKyW',NULL,'florvirginiav@gmail.com','04124117311','COMUNIDAD CRISTIANA DEL LIMON','1990-06-05','CLI','1','2018-12-03 17:25:54','2018-12-03 17:25:54'),(4,'V-',25074229,'KENY HIDALGO','$2y$10$PFxXNe9/qf9gahY.shN/c.jR1kPT9UNpbgYh6Q6LIaIqm430KGC5a',NULL,'KENYTHEKAPH@GMAIL.COM','04243784404','MARGARITA - EDO NUEVA ESPARTA','1995-03-05','CLI','1','2018-11-12 23:00:34','2018-10-16 00:15:35'),(23,'V',25074615,'donaisipineda','$2y$10$HISfBW70Z9dl9XHXhB11auaJoQGF.SFvEdlxDAhRfhFaoclxQoxLi','7P9n5hDelIRmszQlQOyvfwKtlhwjLYSWpvCsY3Xrp3YILs0A8aGbYUg4N0L5','donardo.e.04@gmail.com','04142979317','maracay','1995-08-08','adm','1','2019-05-09 02:24:32','2019-04-30 23:41:42'),(11,'V',25074616,'Keller Hidalgo','$2y$10$s5kvJKe4QWUAGWDxT1EpYOWEpPJxZiV4VOObJMedkQvkq49TKrhKm',NULL,'kaph2506@gmail.com','04140202020','WASHINGTON DC','1977-04-07','CLI','1','2018-12-03 17:20:01','2018-12-03 17:20:01'),(24,'V',25074617,'DONARDO PINEDA','$2y$10$mgonIYu6yijuHoH8HxxpxOg59U.U7tXef2Z0nKC.KcYJ6.ZjpRMoi','hpRj29EWWucvG9t930qTpDHOdwcNxVgH29ceYA11TzWJNU2nvQrGkzg2U28p','donardo_e_04@hotmail.com','04142979316','LOS OLIVOS','1995-08-08','ADM','1','2019-05-12 20:54:56','2019-05-09 02:28:11'),(12,'V',25074618,'Kevin Hidalgo','$2y$10$BoS08KxmOzSLTid9HFOVR.gegRmwmwrtWB.wXlBEc88c0zy.pMAE6',NULL,'kaph2506_k@gmail.com','041403030303','SAN FRANCISCO CALIFORNIA','1977-04-07','CLI','1','2018-12-03 17:21:55','2018-12-03 17:21:55'),(14,'V',25571341,'Josefo Angelo Padron','$2y$10$AdU2MkkKEc5PcLrAHa0o9uf1zEEWibfT9O2Mb5GIszcz3S4FHRul.','NRdgR2ns8NxU4GIbpGxCYsqz0Moxff2yScKcYmj7sSbYaTt9emV4hyFRDObR','josefopadron@gmail.com','04142675839','Taiwan China','1998-12-06','CLI','1','2019-03-21 00:07:40','2018-12-03 18:03:03'),(19,'G',28774123,'Jose Angel AdsDASDADA','$2y$10$RSJtYdtMoU6HfxhFn0zCbu.kwn7Df/GuqQBRgmwVOcM1hJRT1VqfK',NULL,'jaapappapa@papa.com','8108058552','Direccion','1994-05-04','CLI','1','2019-03-21 02:25:42','2019-03-21 02:25:42'),(20,'E',32893981,'Nombr eo Razon social','$2y$10$.6dml3fdn2ngZ1ODCFBu4uo6aSTlfnCEKJ4HLAxh4xQo4KrPHzkhK',NULL,'jojojoj@jojo.com','012129291','AMSDASJDASDMMASDMASKDKSAMDKAMSDKAMSDKMSDKMASDKMASDKMASKMDKMASDM\nASMKASDASKSMDa','1988-09-26','CLI','1','2019-03-21 02:29:31','2019-03-21 02:29:31'),(16,'V',115181816,'lasjdljaslkjdlka','$2y$10$AdU2MkkKEc5PcLrAHa0o9uf1zEEWibfT9O2Mb5GIszcz3S4FHRul.',NULL,'laskdj@alskjd.com','012020202313','maracay maracaibo valencia barquisimeto merida trujillo los andes','1992-06-04','CLI','1','2019-03-21 00:07:14','2019-03-21 00:07:14'),(21,'V',123123123,'unodostres','$2y$10$/F8rI.iVAm8ilghkRUPZ2.T4MhfYFZSs/1T22ULYz7cjqJj0zAkhe',NULL,'unodostres@gmail.com','7813298173','AMSDKSJADKJASJDKASJDKASJDKASJDASKDJASKDASJ','1990-06-05','CLI','1','2019-03-21 02:49:55','2019-03-21 02:49:55'),(5,'V-',123456789,'Jose Angel Padrón Padron','$2y$10$rIEry2Q4i5gYwMBfW9hjb.xYOQcSNdM9AQJZ2ut2ke9ULGclFuz7e','j6BIQFRVKfwfEqzkKeZGMAQRvSLAyIOu4Yntl5qcPNkZfNkRv1WccCtJEi0p','joseangelpadron@hotmail.com','04124672459','Maracay, Edo. Aragua','1993-03-02','ADM','1','2019-06-19 23:00:20','2018-11-10 00:38:21'),(22,'V',789456123,'Nombre o Razon Social','$2y$10$twXVcXovQjq2fa.TcXTudOrRO.cPflWpWEhM8MUBS5FleKIWxlKRm',NULL,'joseangel@gmail.com','31928301','LARAVEL','1996-06-17','CLI','1','2019-03-22 02:22:23','2019-03-22 02:22:23'),(15,'V',974297391,'Ladksjdaiweq','$2y$10$jHeCzygwd19WyNJxj6rCneMRWdxAY.a7uV0Q2Vv/qAzbQrV/IpQ/u',NULL,'jaskdjka@sadja.com','041518181288','Maracay Edo Aragua','1996-03-03','CLI','1','2019-03-20 23:46:51','2019-03-20 23:46:51'),(6,'V',987654321,'TremendoLoco','$2y$10$/MhGwJlz4pks7hVH2R6lAuSUNhFMjpAe8XGRZpwVGCuPOGbQyrg8i',NULL,'tremendoloco@mail.com','04120228466','TremendoLocoLandia','1998-11-05','CLI','1','2018-11-21 02:26:31','2018-11-21 02:26:31');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-06-19 21:24:11
