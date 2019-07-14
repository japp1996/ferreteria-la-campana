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
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auditoria_usuarios`
--

LOCK TABLES `auditoria_usuarios` WRITE;
/*!40000 ALTER TABLE `auditoria_usuarios` DISABLE KEYS */;
INSERT INTO `auditoria_usuarios` VALUES (2,'V-0000000','Entrada','Entrada al Sistema','2007-01-02 13:49:11'),(3,'V-0000000','Salida','Salida del Sistema','2007-01-02 13:51:00'),(4,'V-0000000','Entrada','Entrada al Sistema','2007-01-02 14:01:25'),(5,'V-0000000','Salida','Salida del Sistema','2007-01-02 14:08:57'),(6,'V-0000000','Entrada','Entrada al Sistema','2007-01-02 15:14:31'),(7,'V-0000000','Respaldo','Respaldo de Base de datos','2007-01-02 07:02:59'),(8,'V-0000000','Respaldo','Respaldo de Base de datos','2007-01-02 07:11:02'),(9,'V-0000000','Respaldo','Respaldo de Base de datos','2007-01-02 07:14:54'),(10,'V-0000000','Respaldo','Respaldo de Base de datos','2007-01-02 07:15:40'),(11,'V-0000000','Respaldo','Respaldo de Base de datos','2007-01-02 07:15:59'),(12,'V-0000000','Respaldo','Respaldo de Base de datos','2007-01-02 07:16:07'),(13,'V-0000000','Respaldo','Respaldo de Base de datos','2007-01-02 07:16:09'),(14,'V-0000000','Respaldo','Respaldo de Base de datos','2007-01-02 07:17:35');
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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `detalles_pedido`
--

LOCK TABLES `detalles_pedido` WRITE;
/*!40000 ALTER TABLE `detalles_pedido` DISABLE KEYS */;
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
  CONSTRAINT `detalles_recepcion_ibfk_2` FOREIGN KEY (`ID_PRODUCTO`) REFERENCES `productos` (`ID_PRODUCTO`),
  CONSTRAINT `detalles_recepcion_ibfk_3` FOREIGN KEY (`ID_RECEPCION`) REFERENCES `recepcion` (`ID_RECEPCION`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
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
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;
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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pedidos`
--

LOCK TABLES `pedidos` WRITE;
/*!40000 ALTER TABLE `pedidos` DISABLE KEYS */;
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
INSERT INTO `productos` VALUES ('100029','CARRETILLA ALBAï¿½IL 85L R/AIRE     NARANJA','HER',40,'UND'),('100W','BOMBILLO 110 - 100W HALOGENO SYLVANIA','BYL',33,'UND'),('101029','BOMBILLO AHORRADOR E14 11WATS SEMILIC','BYL',88,'UND'),('101050','BOMBILLO AHORRADOR ESPIRAL SEMILIC  15W','BYL',56,'UND'),('11-001','LAMPARA PLAFON TRANSPARENTE 6\"','BYL',56,'UND'),('1102','PULSADOR P/ EMPOTRAR TICINO','MAE',58,'UND'),('110500G','BOMBILLO DE HALOGENO  500W G.E     110V','BYL',58,'UND'),('110B','PROTECTOR A/A C/BORNER 110W NINJA 3AÑO G','MAE',56,'UND'),('110C','PROTECTOR COMPUTADORA  110W NINJA 3AÑO G','MAE',56,'UND'),('111969','CUCHARA LUXVEN 8\" PUNTA REDONDA','HER',56,'UND'),('113385','LLAVE P/TUBO 14\" T/RIDGID','HER',56,'UND'),('12-026','LAMPARA BAMBER 8\" TORNASOL','BYL',56,'UND'),('125353','CHICURA VINKO DE ALTA CALIDAD 2 LB','HER',56,'UND'),('133412','PALA CUADRADA MANGO PLASTICO','HER',56,'UND'),('1382594','MARTILLO CARP. 25mm CASCABEL','HER',56,'UND'),('14-045','LAMPARA FLUORESCENTE CUADRADA 22 W','BYL',56,'UND'),('14515','MULTITOMA 6 TOMA BRUFER','MAE',16,'UND'),('16-150','CINCEL PUNTA BELLOTA 16-150','HER',56,'UND'),('17-047','ESCUADRA METALICA 8\"','HER',56,'UND'),('1X15EE','BREAKER P/ EMPOTRAR YAINO  1X15 AL 1X30','MAE',13,'UND'),('1X15ES','BREAKER P/ EMPOTRAR SIEMEN 1X15','MAE',29,'UND'),('1X15ET','BREAKER P/ EMPOTRAR TICINO 1X15 AL 1X30','MAE',24,'UND'),('20103','ESCARDILLA 2KG. ECONOMICA','HER',106,'UND'),('2032','PILA 3V 2032 C/U','BAT',26,'UND'),('209601','CERR CILINDRO FIJO BLUELOOCK','LYC',13,'UND'),('209671','CERR P/VITRINA C/LLAVE','LYC',20,'UND'),('2117','CERR T/POMO METAL C/LLAVE BLUELOCK','LYC',34,'UND'),('2127','CERR T/POMO METAL S/LLAVE VENLOCK','LYC',6,'UND'),('2201030MM','CANDADO DE LATON PLANOS 30mm CISA','LYC',23,'UND'),('2201040MM','CANDADO DE LATON PLANOS 40mm CISA','LYC',73,'UND'),('2201050MM','CANDADO DE LATON PLANOS 50mm CISA','LYC',2,'UND'),('2201060MM','CANDADO DE LATON PLANOS 60mm CISA','LYC',1,'UND'),('22011-52','CANDADO ARCO LARGO A/Z 50mm  CISA','LYC',21,'UND'),('22WG','FLUORESCENTE 22W CIRCULAR G/ELECTRIC','BYL',59,'UND'),('5001','PISTOLA PARA PINTAR C/ENV PLAS D GRAVED','HER',59,'UND'),('637','EXTENSION ELECTRICA BLANCA    5MTS SEMIL','MAE',27,'UND'),('668','EXTENSION ELECTRICA NEGRA     5MTS SEMIL','MAE',59,'UND'),('71453','BOMBILLO TIPO VELA E-12 FERMETAL','BYL',12,'UND'),('846','HEMBRILLA ELECTRICA 110V ESPAÑOLA','LYC',99,'UND'),('BP4','BROCHA PRETUL 4\"','PYS',7,'UND'),('CA2','CLAVOS DE ACERO 2\"','TYC',113,'UND'),('CAB-01','CABLE UTP NIVEL 6','CAB',0,'METRO'),('CAR-01','CARBON NEGRO','CAR',39,'UND'),('CDL-01','CANAL DE LLUVIA DE 6\"','CDL',0,'UND'),('CON-01','CONEXION DE TUBERIA NEGRA','CON',36,'UND'),('CYA','CINTA METRICA 1\"','CYA',22,'ROLLO'),('GPAA','PILA AA  ALCALINA PAQ','BAT',44,'UND'),('GPAAA','PILA AAA  ALCALINA PAQ','BAT',44,'UND'),('IPAC1/4','ASFALTO IPA CEMENTO 1/4 GALON GOTA FIX','ASF',78,'GALON'),('IPACC','ASFALTO IPA CEMENTO DE CUÑETE','ASF',17,'CUNETE'),('IPACG','ASFALTO IPA CEMENTO DE GALON','ASF',20,'GALON'),('IPALC','ASFALTO IPA LIQUIDO DE CUÑETE','ASF',11,'CUNETE'),('IPALG','ASFALTO IPA LIQUIDO DE GALON','ASF',30,'GALON'),('IPAM3','MANTO 3.15 MILIMETRO IPA','ASF',26,'UND'),('IPAMA','MANTO ALUMINIO ALUFLEX 10MTS','ASF',11,'METRO'),('IPAPC','ASFALTO IPA PLASTICO DE CUÑETE','ASF',11,'CUNETE'),('IPAPG','ASFALTO IPA PLASTICO DE GALON','ASF',11,'GALON'),('IPAPMC','ASFALTO IPA PRIMER DE CUÑETE','ASF',11,'CUNETE'),('IPAPMG','ASFALTO IPA PRIMER DE GALON','ASF',6,'GALON'),('P12','PILA 12VOLTIO C/U','BAT',6,'UND'),('P2025','PILA 2025 C/U','BAT',52,'UND'),('P3V','PILA 3 VOLTIO','BAT',31,'UND'),('P828','PILA 27A C/U','BAT',45,'UND'),('T13/16','TORNILLO 13/16 MEDIANOS','TYC',464,'UND');
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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
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
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;
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
INSERT INTO `usuarios` VALUES ('J-300941736','FERRETERIA LA CAMPANA, C.A.','652e234eb7d92b3d14841e1a24d80e14','FERRETERIALACAMPANACA@HOTMAIL.COM','02432378756','CHINA','1970-01-01','TRA'),('V-0000000','ADMINISTRADOR','955117078cc34214ec4966b195955bfa','ADMIN@GMAIL.COM','04241234567','LONDRES','1996-01-01','ADM'),('V-12345678','LUIS GABRIEL SALCEDO','fcea920f7412b5da7be0cf42b8c93759','LUIS@GMAIL.COM','04125678912','ESTADOS UNIDOS','1999-01-01','CLI');
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

-- Dump completed on 2017-12-27 12:41:29
