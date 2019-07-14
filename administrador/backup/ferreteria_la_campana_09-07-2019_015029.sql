-- MySQL dump 10.17  Distrib 10.3.16-MariaDB, for Win64 (AMD64)
--
-- Host: localhost    Database: ferreteria_la_campana
-- ------------------------------------------------------
-- Server version	10.3.16-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `ajuste_inventario`
--

DROP TABLE IF EXISTS `ajuste_inventario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ajuste_inventario` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ID_PRODUCTO` int(11) NOT NULL,
  `CANTIDAD` int(11) NOT NULL,
  `FECHA` date NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `ID_PRODUCTO` (`ID_PRODUCTO`),
  CONSTRAINT `ajuste_inventario_ibfk_1` FOREIGN KEY (`ID_PRODUCTO`) REFERENCES `productos` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ajuste_inventario`
--

LOCK TABLES `ajuste_inventario` WRITE;
/*!40000 ALTER TABLE `ajuste_inventario` DISABLE KEYS */;
/*!40000 ALTER TABLE `ajuste_inventario` ENABLE KEYS */;
UNLOCK TABLES;

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
  `FECHA` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`ID_AUDITORIA`),
  KEY `CI_RIF` (`CI_RIF`),
  KEY `CI_RIF_2` (`CI_RIF`),
  CONSTRAINT `auditoria_usuarios_ibfk_1` FOREIGN KEY (`CI_RIF`) REFERENCES `usuarios` (`CI_RIF`)
) ENGINE=InnoDB AUTO_INCREMENT=213 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auditoria_usuarios`
--

LOCK TABLES `auditoria_usuarios` WRITE;
/*!40000 ALTER TABLE `auditoria_usuarios` DISABLE KEYS */;
INSERT INTO `auditoria_usuarios` VALUES (166,'V-25074617','Entrada','Entrada al Sistema','2019-07-06 08:14:03'),(169,'V-25074617','Entrada','Entrada al Sistema','2019-07-06 12:52:18'),(172,'V-25074617','Modificacion','Modificacion de datos de Proveedor','2019-07-07 05:00:50'),(173,'V-25074617','Modificacion','Modificacion de datos de Proveedor','2019-07-07 05:01:38'),(174,'V-25074617','Modificacion','Modificacion de datos de Proveedor','2019-07-07 05:03:19'),(175,'V-25074617','Modificacion','Modificacion de datos de Proveedor','2019-07-07 05:03:42'),(176,'V-25074617','Modificacion','Modificacion de datos de Proveedor','2019-07-07 05:04:03'),(177,'V-25074617','Modificacion','Modificacion de datos de Proveedor','2019-07-07 05:04:25'),(178,'V-25074617','Eliminacion','Eliminacion de proveedor','2019-07-07 05:07:47'),(179,'V-25074617','Registro','Registro de proveedor RIF:  Y Nombre: JOSE PADRON','2019-07-07 06:49:15'),(182,'V-25074617','Registro','Registro de articulo','2019-07-07 06:51:20'),(183,'V-25074617','Registro','Registro de articulo','2019-07-07 06:51:54'),(184,'V-25074617','Registro','Registro de articulo','2019-07-07 06:52:50'),(185,'V-25074617','Registro','Registro de articulo','2019-07-07 06:52:53'),(186,'V-25074617','Registro','Registro de articulo','2019-07-07 06:54:39'),(187,'V-25074617','Registro','Registro de articulo','2019-07-07 06:56:10'),(188,'V-25074617','Registro','Registro de articulo','2019-07-07 06:56:11'),(189,'V-25074617','Registro','Registro de articulo','2019-07-07 06:56:46'),(190,'V-25074617','Registro','Registro de articulo','2019-07-07 07:00:07'),(191,'V-25074617','Registro','Registro de articulo','2019-07-07 07:00:49'),(192,'V-25074617','Registro','Registro de articulo','2019-07-07 07:04:44'),(193,'V-25074617','Registro','Registro de articulo','2019-07-07 07:05:50'),(194,'V-25074617','Registro','Registro de articulo','2019-07-07 07:11:05'),(195,'V-25074617','Registro','Registro de articulo','2019-07-07 07:11:37'),(196,'V-25074617','Registro','Registro de articulo','2019-07-07 07:16:38'),(197,'V-25074617','Registro','Registro de articulo','2019-07-07 07:17:08'),(198,'V-25074617','Registro','Registro de articulo','2019-07-07 07:17:32'),(199,'V-25074617','Registro','Registro de articulo','2019-07-07 07:21:34'),(200,'V-25074617','Registro','Registro de articulo','2019-07-07 07:23:08'),(201,'V-25074617','Registro','Registro de articulo','2019-07-07 08:28:37'),(202,'V-25074617','Registro','Registro de articulo','2019-07-07 08:30:27'),(203,'V-25074617','Registro','Registro de articulo','2019-07-07 08:30:54'),(204,'V-25074617','Registro','Registro de articulo','2019-07-07 08:32:14'),(205,'V-25074617','Registro','Registro de articulo','2019-07-07 08:32:36'),(206,'V-25074617','Registro','Registro de articulo','2019-07-07 08:33:05'),(207,'V-25074617','Registro','Registro de articulo','2019-07-07 08:34:56'),(208,'V-25074617','Registro','Registro de articulo','2019-07-07 08:37:39'),(209,'V-25074617','Entrada','Entrada al Sistema','2019-07-09 05:28:31'),(211,'V-25074617','Entrada','Entrada al Sistema','2019-07-09 05:29:47'),(212,'V-25074617','Registro','Registro de proveedor PROVEEDOR DEMO DE PRUEBA','2019-07-09 05:33:09');
/*!40000 ALTER TABLE `auditoria_usuarios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categorias`
--

DROP TABLE IF EXISTS `categorias`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `categorias` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ID_CATEGORIAS` char(15) NOT NULL,
  `DESCRIPCION_CATEGORIAS` varchar(60) NOT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `ID_CATEGORIAS` (`ID_CATEGORIAS`) USING BTREE,
  KEY `DESCRIPCION_CATEGORIAS` (`DESCRIPCION_CATEGORIAS`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categorias`
--

LOCK TABLES `categorias` WRITE;
/*!40000 ALTER TABLE `categorias` DISABLE KEYS */;
INSERT INTO `categorias` VALUES (1,'ASF',' ASFALTOS'),(2,'BAT','BATERIAS'),(3,'BYL','BOMBILLOS Y LAMPARAS'),(4,'CAB','CABLES'),(5,'CAR','CARBONES'),(6,'CDL','CANALES DE LLUVIAS'),(7,'CON',' CONEXIONES'),(8,'CYA','CINTAS Y ADHESIVOS'),(9,'EMP','EMPACADURAS'),(10,'GYB','GRIFERIAS Y BAJANTES'),(11,'HER','HERRAMIENTAS'),(12,'LYC','LLAVES Y CERRADURAS'),(13,'MAE','MATERIALES ELECTRICOS'),(14,'MAL','MALLAS'),(15,'MAN','MANGUERAS'),(16,'MDC','MATERIALES DE CONSTRUCCION'),(17,'OTR','OTROS'),(18,'PEV','PEGAMENTOS VARIOS'),(19,'PYS','PINTURAS Y SOLVENTES'),(20,'ROD','RODAMIENTOS'),(21,'TER','TERMINALES'),(22,'TIS','TIRADORES SURTIDOS'),(23,'TRU','TRUPER'),(24,'TUB','TUBERIAS'),(25,'TYC','TORNILLOS Y CLAVOS');
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
  `ID` int(15) NOT NULL AUTO_INCREMENT,
  `ID_PEDIDO` int(15) NOT NULL,
  `ID_PRODUCTO` varchar(15) NOT NULL,
  `CANTIDAD_PRODUCTO` int(15) NOT NULL,
  `PRECIO` float NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `ID_PRODUCTO` (`ID_PRODUCTO`),
  KEY `ID_PEDIDO` (`ID_PEDIDO`),
  KEY `ID_PRODUCTO_2` (`ID_PRODUCTO`),
  CONSTRAINT `detalles_pedido_ibfk_2` FOREIGN KEY (`ID_PRODUCTO`) REFERENCES `productos` (`ID_PRODUCTO`),
  CONSTRAINT `detalles_pedido_ibfk_3` FOREIGN KEY (`ID_PEDIDO`) REFERENCES `pedidos` (`ID_PEDIDO`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `detalles_pedido`
--

LOCK TABLES `detalles_pedido` WRITE;
/*!40000 ALTER TABLE `detalles_pedido` DISABLE KEYS */;
INSERT INTO `detalles_pedido` VALUES (21,25,'CA2',0,0);
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
-- Table structure for table `movimiento_inventario`
--

DROP TABLE IF EXISTS `movimiento_inventario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `movimiento_inventario` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ID_PRODUCTO` int(11) NOT NULL,
  `CANTIDAD` int(11) NOT NULL,
  `TIPO` enum('1','2','3','4') COLLATE utf8_spanish_ci NOT NULL COMMENT '1: pedido; 2: oc; 3:ajuste; 4:recep;',
  `FECHA` date NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `ID_PRODUCTO` (`ID_PRODUCTO`),
  CONSTRAINT `movimiento_inventario_ibfk_1` FOREIGN KEY (`ID_PRODUCTO`) REFERENCES `productos` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `movimiento_inventario`
--

LOCK TABLES `movimiento_inventario` WRITE;
/*!40000 ALTER TABLE `movimiento_inventario` DISABLE KEYS */;
/*!40000 ALTER TABLE `movimiento_inventario` ENABLE KEYS */;
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
  `FECHA_EXPIRACION` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `ID_ESTADO` char(15) NOT NULL,
  PRIMARY KEY (`ID_PEDIDO`),
  KEY `CI_RIF` (`CI_RIF`),
  KEY `ID_ESTADO` (`ID_ESTADO`),
  CONSTRAINT `pedidos_ibfk_2` FOREIGN KEY (`ID_ESTADO`) REFERENCES `estado` (`ID_ESTADO`),
  CONSTRAINT `pedidos_ibfk_3` FOREIGN KEY (`CI_RIF`) REFERENCES `usuarios` (`CI_RIF`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pedidos`
--

LOCK TABLES `pedidos` WRITE;
/*!40000 ALTER TABLE `pedidos` DISABLE KEYS */;
INSERT INTO `pedidos` VALUES (25,'V-25074617','2019-07-06','2019-07-07 14:54:48','POR ENTREGAR');
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
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ID_PRODUCTO` varchar(15) NOT NULL,
  `DESCRIPCION_PRODUCTO` varchar(60) NOT NULL,
  `ID_CATEGORIAS` int(11) NOT NULL,
  `EXISTENCIA_PRODUCTO` int(15) NOT NULL,
  `PRECIO` float NOT NULL,
  `UNIDAD` varchar(10) NOT NULL,
  `STOCK_MIN` int(11) NOT NULL,
  `STOCK_MAX` int(11) NOT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `ID_PRODUCTO` (`ID_PRODUCTO`) USING BTREE,
  KEY `DESCRIPCCION_PRODUCTO` (`DESCRIPCION_PRODUCTO`),
  KEY `ID_CATEGORIA` (`ID_CATEGORIAS`) USING BTREE,
  KEY `DESCRIPCION_PRODUCTO` (`DESCRIPCION_PRODUCTO`),
  KEY `ID_CATEGORIAS` (`ID_CATEGORIAS`),
  CONSTRAINT `productos_ibfk_1` FOREIGN KEY (`ID_CATEGORIAS`) REFERENCES `categorias` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=95 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `productos`
--

LOCK TABLES `productos` WRITE;
/*!40000 ALTER TABLE `productos` DISABLE KEYS */;
INSERT INTO `productos` VALUES (1,'100029','CARRETILLA ALBAÑIL 85L R/AIRE     NARANJA',1,0,200,'',0,0),(2,'100W','BOMBILLO 110 - 100W HALOGENO SYLVANIA',1,0,200,'',0,0),(3,'101029','BOMBILLO AHORRADOR E14 11WATS SEMILIC',1,0,300,'',0,0),(4,'101050','BOMBILLO AHORRADOR ESPIRAL SEMILIC  15W',1,0,100,'',0,0),(5,'11-001','LAMPARA PLAFON TRANSPARENTE 6\"',1,0,300,'',0,0),(6,'1102','PULSADOR P/ EMPOTRAR TICINO',1,0,200,'',0,0),(7,'110500G','BOMBILLO DE HALOGENO  500W G.E     110V',1,0,600,'',0,0),(8,'110B','PROTECTOR A/A C/BORNER 110W NINJA 3AÑO G',1,0,200,'',0,0),(9,'110C','PROTECTOR COMPUTADORA  110W NINJA 3AÑO G',1,0,200,'',0,0),(10,'111969','CUCHARA LUXVEN 8\" PUNTA REDONDA',1,0,200,'',0,0),(11,'113385','LLAVE P/TUBO 14\" T/RIDGID',1,0,200,'',0,0),(12,'12-026','LAMPARA BAMBER 8\" TORNASOL',1,0,100,'',0,0),(13,'125353','CHICURA VINKO DE ALTA CALIDAD 2 LB',1,0,200,'',0,0),(14,'133412','PALA CUADRADA MANGO PLASTICO',1,0,200,'',0,0),(15,'1382594','MARTILLO CARP. 25mm CASCABEL',1,0,200,'',0,0),(16,'14-045','LAMPARA FLUORESCENTE CUADRADA 22 W',1,0,200,'',0,0),(17,'14515','MULTITOMA 6 TOMA BRUFER',1,0,200,'',0,0),(18,'16-150','CINCEL PUNTA BELLOTA 16-150',1,0,200,'',0,0),(19,'17-047','ESCUADRA METALICA 8\"',1,0,200,'',0,0),(20,'1X15EE','BREAKER P/ EMPOTRAR YAINO  1X15 AL 1X30',1,0,200,'',0,0),(21,'1X15ES','BREAKER P/ EMPOTRAR SIEMEN 1X15',1,0,200,'',0,0),(22,'1X15ET','BREAKER P/ EMPOTRAR TICINO 1X15 AL 1X30',1,0,200,'',0,0),(23,'20103','ESCARDILLA 2KG. ECONOMICA',1,0,200,'',0,0),(24,'2032','PILA 3V 2032 C/U',1,0,200,'',0,0),(25,'209601','CERR CILINDRO FIJO BLUELOOCK',1,0,200,'',0,0),(26,'209671','CERR P/VITRINA C/LLAVE',1,0,200,'',0,0),(27,'2117','CERR T/POMO METAL C/LLAVE BLUELOCK',1,0,200,'',0,0),(28,'2127','CERR T/POMO METAL S/LLAVE VENLOCK',1,0,200,'',0,0),(29,'2201030MM','CANDADO DE LATON PLANOS 30mm CISA',1,0,200,'',0,0),(30,'2201040MM','CANDADO DE LATON PLANOS 40mm CISA',1,0,200,'',0,0),(31,'2201050MM','CANDADO DE LATON PLANOS 50mm CISA',1,0,200,'',0,0),(32,'2201060MM','CANDADO DE LATON PLANOS 60mm CISA',1,0,200,'',0,0),(33,'22011-52','CANDADO ARCO LARGO A/Z 50mm  CISA',1,0,200,'',0,0),(34,'22WG','FLUORESCENTE 22W CIRCULAR G/ELECTRIC',1,0,200,'',0,0),(35,'5001','PISTOLA PARA PINTAR C/ENV PLAS D GRAVED',1,0,200,'',0,0),(36,'637','EXTENSION ELECTRICA BLANCA    5MTS SEMIL',1,0,200,'',0,0),(37,'668','EXTENSION ELECTRICA NEGRA     5MTS SEMIL',1,0,200,'',0,0),(38,'71453','BOMBILLO TIPO VELA E-12 FERMETAL',1,0,200,'',0,0),(39,'846','HEMBRILLA ELECTRICA 110V ESPAÑOLA',1,0,200,'',0,0),(40,'BP4','BROCHA PRETUL 4\"',1,0,200,'',0,0),(41,'CA2','CLAVOS DE ACERO 2\"',1,0,200,'',0,0),(42,'CAB-01','Cable UTP Nivel 6',1,0,200,'Metro',0,0),(43,'CAR-01','Carbon Negro',1,0,200,'UND',0,0),(44,'CDL-01','Canal de Lluvia de 6\"',1,0,200,'UND',0,0),(45,'CON-01','Conexion de tuberia Negra',1,0,200,'UND',0,0),(46,'CYA','Cinta Metrica',1,0,200,'ROLLO',0,0),(47,'GPAA','PILA AA  ALCALINA PAQ',1,0,400,'',0,0),(48,'GPAAA','PILA AAA  ALCALINA PAQ',1,0,450,'',0,0),(49,'IPAC1/4','ASFALTO IPA CEMENTO 1/4 GALON GOTA FIX',1,0,200,'',0,0),(50,'IPACC','ASFALTO IPA CEMENTO DE CUÑETE',1,0,5000,'',0,0),(51,'IPACG','ASFALTO IPA CEMENTO DE GALON',1,0,1000,'',0,0),(52,'IPALC','ASFALTO IPA LIQUIDO DE CUÑETE',1,0,4500,'',0,0),(53,'IPALG','ASFALTO IPA LIQUIDO DE GALON',1,0,3000,'',0,0),(54,'IPAM3','MANTO 3.15 MILIMETRO IPA',1,0,5000,'',0,0),(55,'IPAMA','MANTO ALUMINIO ALUFLEX 10MTS',1,0,7000,'',0,0),(56,'IPAPC','ASFALTO IPA PLASTICO DE CUÑETE',1,0,1000,'',0,0),(57,'IPAPG','ASFALTO IPA PLASTICO DE GALON',1,0,1000,'',0,0),(58,'IPAPMC','ASFALTO IPA PRIMER DE CUÑETE',1,0,5000,'',0,0),(59,'IPAPMG','ASFALTO IPA PRIMER DE GALON',1,0,1000,'',0,0),(60,'P12','PILA 12VOLTIO C/U',1,0,150,'',0,0),(61,'P2025','PILA 2025 C/U',1,0,200,'',0,0),(62,'P3V','PILA 3 VOLTIO',1,0,300,'',0,0),(63,'P828','PILA 27A C/U',1,0,270,'',0,0),(64,'T13/16','TORNILLO 13/16 MEDIANOS',1,10,200,'',0,0),(93,'TUB12','TUBERIA DE COBRE 1/2',24,10,0,'UNIDAD',5,10),(94,'TUB13','TUBO DE COBRE 1/3',24,10,0,'UND',15,18);
/*!40000 ALTER TABLE `productos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `proveedor_producto`
--

DROP TABLE IF EXISTS `proveedor_producto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `proveedor_producto` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ID_PRODUCTO` int(11) NOT NULL,
  `ID_PROVEEDOR` int(11) NOT NULL,
  `PRECIO` float NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `ID_PRODUCTO` (`ID_PRODUCTO`),
  KEY `ID_PROVEEDOR` (`ID_PROVEEDOR`),
  CONSTRAINT `proveedor_producto_ibfk_1` FOREIGN KEY (`ID_PROVEEDOR`) REFERENCES `proveedores` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `proveedor_producto_ibfk_2` FOREIGN KEY (`ID_PRODUCTO`) REFERENCES `productos` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `proveedor_producto`
--

LOCK TABLES `proveedor_producto` WRITE;
/*!40000 ALTER TABLE `proveedor_producto` DISABLE KEYS */;
INSERT INTO `proveedor_producto` VALUES (5,93,2,12),(6,94,2,13);
/*!40000 ALTER TABLE `proveedor_producto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `proveedores`
--

DROP TABLE IF EXISTS `proveedores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `proveedores` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `DNI` int(11) NOT NULL,
  `NOMBRE` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `CORREO` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `TELEFONO` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `DIRECCION` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `proveedores`
--

LOCK TABLES `proveedores` WRITE;
/*!40000 ALTER TABLE `proveedores` DISABLE KEYS */;
INSERT INTO `proveedores` VALUES (2,26571341,'JOSE PADRON','JAPP19961996@HOTMAIL.COM','04126635698','DIRECCION'),(3,16231225,'PROVEEDOR DEMO DE PRUEBA','DSDSA@GMAIL.COM','10405040828','DSASADASDASD');
/*!40000 ALTER TABLE `proveedores` ENABLE KEYS */;
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
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `CI_RIF` varchar(15) NOT NULL,
  `NOMBRE_USUARIOS` varchar(60) NOT NULL,
  `CONTRASENA` varchar(60) NOT NULL,
  `CORREO` varchar(60) NOT NULL,
  `TELEFONO` varchar(13) NOT NULL,
  `DIRECCION` varchar(150) NOT NULL,
  `FECHA_NACIMIENTO` date NOT NULL,
  `ID_USUARIOS` varchar(15) NOT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `CI_RIF` (`CI_RIF`) USING BTREE,
  KEY `ID_USUARIOS` (`ID_USUARIOS`),
  CONSTRAINT `usuarios_ibfk_1` FOREIGN KEY (`ID_USUARIOS`) REFERENCES `tipo_usuarios` (`ID_USUARIOS`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuarios`
--

LOCK TABLES `usuarios` WRITE;
/*!40000 ALTER TABLE `usuarios` DISABLE KEYS */;
INSERT INTO `usuarios` VALUES (1,'J-13780965','LUIS APONTE','fcea920f7412b5da7be0cf42b8c93759','PROFESORLUISAPONTE@GMAIL.COM','04125678990','MARACAY','2017-11-21','CLI'),(2,'J-300941736','FERRETERIA LA CAMPANA, C.A.','652e234eb7d92b3d14841e1a24d80e14','FERRETERIALACAMPANACA@HOTMAIL.COM','02432378756','AV 10 DE DICIEMBRE, MARACAY EDO ARAGUA','1970-01-01','TRA'),(3,'V- vbnm,./','CARLOS RAMOS','202cb962ac59075b964b07152d234b70','DONARDO_E_04@HOTMAIL.COM2','xccvbvnbm,','BN  BN  BV NBCVB CVB ','0000-00-00','CLI'),(4,'V-12343344','CARLOS RAMOS','cc70e9369e9f87a660812e08d76a828e','DONARDO.E.04@GMAIL.COM','04142979317','MARACAY','1974-08-19','CLI'),(5,'V-14787941','NOMBRES Y APELLIDO','25f9e794323b453885f5181f1b624d0b','JPADRON@GMAIL.COM','26571341','DIRECCION','2018-01-31','CLI'),(6,'V-15559','NOMBRE','25f9e794323b453885f5181f1b624d0b','NOMBRE@MAIL.COM','0412563332','DIRECCIOIN','2019-07-18','CLI'),(7,'V-25074616','DONAISI PINEDA','e10adc3949ba59abbe56e057f20f883e','DONAISI@GMAIL.COM','041255563245','COLOMBIA','2009-06-29','CLI'),(8,'V-25074617','DONARDO EMILIO PINEDA PINERO','cc70e9369e9f87a660812e08d76a828e','DONARDO_E_04@HOTMAIL.COM','   0414297931','LOS OLIVOS','1995-08-08','ADM'),(9,'V-26571341','JOSE ANGEL PADRON PADRON','955117078cc34214ec4966b195955bfa','JAPP19961996@GMAIL.COM','04243550806','EL LIMON','1996-06-18','ADM'),(10,'V-428423','KJDSAKJADSJ','4cbc0da47f02de257ad4086d67d413d0','JDAS@DSAK.COM','19320','DIRECCION','2021-02-06','CLI'),(11,'V-423987324','KJDSJKSAD','7d387f7e8ef7e46619aeea2146110967','JKASD@KAS.COM','219','SAOIDJDASOJDO','2011-10-29','CLI'),(18,'V-123445154','DSA','25f9e794323b453885f5181f1b624d0b','SADL@LSD.COM','65','55','2019-01-01','CLI');
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

-- Dump completed on 2019-07-08 19:50:30
