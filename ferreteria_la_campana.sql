-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost
-- Tiempo de generación: 31-07-2019 a las 22:34:39
-- Versión del servidor: 10.3.16-MariaDB
-- Versión de PHP: 7.3.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `id10314523_ferreteria_la_campana`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ajuste_inventario`
--

CREATE TABLE `ajuste_inventario` (
  `ID` int(11) NOT NULL,
  `ID_PRODUCTO` int(11) NOT NULL,
  `CANTIDAD` int(11) NOT NULL,
  `FECHA` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auditoria_usuarios`
--

CREATE TABLE `auditoria_usuarios` (
  `ID_AUDITORIA` int(15) NOT NULL,
  `CI_RIF` varchar(15) NOT NULL,
  `OPERACION` varchar(30) NOT NULL,
  `DETALLES_OPERACION` varchar(150) NOT NULL,
  `FECHA` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categorias`
--

CREATE TABLE `categorias` (
  `ID` int(11) NOT NULL,
  `ID_CATEGORIAS` char(15) NOT NULL,
  `DESCRIPCION_CATEGORIAS` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `categorias`
--

INSERT INTO `categorias` (`ID`, `ID_CATEGORIAS`, `DESCRIPCION_CATEGORIAS`) VALUES
(1, 'ASF', ' ASFALTOS'),
(2, 'BAT', 'BATERIAS'),
(3, 'BYL', 'BOMBILLOS Y LAMPARAS'),
(4, 'CAB', 'CABLES'),
(5, 'CAR', 'CARBONES'),
(6, 'CDL', 'CANALES DE LLUVIAS'),
(7, 'CON', ' CONEXIONES'),
(8, 'CYA', 'CINTAS Y ADHESIVOS'),
(9, 'EMP', 'EMPACADURAS'),
(10, 'GYB', 'GRIFERIAS Y BAJANTES'),
(11, 'HER', 'HERRAMIENTAS'),
(12, 'LYC', 'LLAVES Y CERRADURAS'),
(13, 'MAE', 'MATERIALES ELECTRICOS'),
(14, 'MAL', 'MALLAS'),
(15, 'MAN', 'MANGUERAS'),
(16, 'MDC', 'MATERIALES DE CONSTRUCCION'),
(17, 'OTR', 'OTROS'),
(18, 'PEV', 'PEGAMENTOS VARIOS'),
(19, 'PYS', 'PINTURAS Y SOLVENTES'),
(20, 'ROD', 'RODAMIENTOS'),
(21, 'TER', 'TERMINALES'),
(22, 'TIS', 'TIRADORES SURTIDOS'),
(23, 'TRU', 'TRUPER'),
(24, 'TUB', 'TUBERIAS'),
(25, 'TYC', 'TORNILLOS Y CLAVOS'),
(27, '', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `currencies`
--

CREATE TABLE `currencies` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `symbol` varchar(255) NOT NULL,
  `precision` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `thousand_separator` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `decimal_separator` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `code` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detalles_pedido`
--

CREATE TABLE `detalles_pedido` (
  `ID` int(15) NOT NULL,
  `ID_PEDIDO` int(15) NOT NULL,
  `ID_PRODUCTO` int(11) NOT NULL,
  `CANTIDAD_PRODUCTO` int(15) NOT NULL,
  `PRECIO` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `detalles_pedido`
--

INSERT INTO `detalles_pedido` (`ID`, `ID_PEDIDO`, `ID_PRODUCTO`, `CANTIDAD_PRODUCTO`, `PRECIO`) VALUES
(1, 1, 54, 2, 360000),
(2, 1, 55, 5, 1500000),
(3, 1, 56, 7, 2135000);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detalles_recepcion`
--

CREATE TABLE `detalles_recepcion` (
  `ID_DETALLES_RECEPCION` int(15) NOT NULL,
  `ID_RECEPCION` int(15) NOT NULL,
  `ID_PRODUCTO` int(11) NOT NULL,
  `CANTIDAD_RECEPCIONADA` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detalles_requisicion`
--

CREATE TABLE `detalles_requisicion` (
  `ID_DETALLES_REQUISICION` int(15) NOT NULL,
  `ID_REQUISICION` int(15) NOT NULL,
  `ID_PRODUCTO` int(11) NOT NULL,
  `CANTIDAD_REQUISICION` int(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detalle_factura`
--

CREATE TABLE `detalle_factura` (
  `id_detalle` int(11) NOT NULL,
  `numero_factura` int(11) NOT NULL,
  `id_producto` int(11) NOT NULL,
  `cantidad` int(11) NOT NULL,
  `precio_venta` double NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estado`
--

CREATE TABLE `estado` (
  `ID_ESTADO` char(15) NOT NULL,
  `DESCRIPCION_ESTADO` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `estado`
--

INSERT INTO `estado` (`ID_ESTADO`, `DESCRIPCION_ESTADO`) VALUES
('ANULADO', 'ANULADO'),
('ENTREGADO', 'ENTREGADO'),
('POR ENTREGAR', 'POR ENTREGAR');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `facturas`
--

CREATE TABLE `facturas` (
  `id_factura` int(11) NOT NULL,
  `numero_factura` int(11) NOT NULL,
  `fecha_factura` datetime NOT NULL,
  `id_cliente` int(11) NOT NULL,
  `id_vendedor` int(11) NOT NULL,
  `condiciones` varchar(30) NOT NULL,
  `total_venta` varchar(20) NOT NULL,
  `estado_factura` tinyint(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `movimiento_inventario`
--

CREATE TABLE `movimiento_inventario` (
  `ID` int(11) NOT NULL,
  `ID_PRODUCTO` int(11) NOT NULL,
  `CANTIDAD` int(11) NOT NULL,
  `TIPO` enum('1','2','3','4') COLLATE utf8_spanish_ci NOT NULL COMMENT '1: pedido; 2: oc; 3:ajuste; 4:recep;',
  `FECHA` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `movimiento_inventario`
--

INSERT INTO `movimiento_inventario` (`ID`, `ID_PRODUCTO`, `CANTIDAD`, `TIPO`, `FECHA`) VALUES
(1, 49, 6, '1', '2019-07-28'),
(2, 50, 1, '1', '2019-07-28'),
(3, 24, 1, '1', '2019-07-28'),
(4, 49, 3, '1', '2019-07-29'),
(5, 49, 2, '1', '2019-07-29'),
(6, 49, 2, '1', '2019-07-29'),
(7, 49, 2, '1', '2019-07-29'),
(8, 49, 2, '1', '2019-07-30'),
(9, 53, 2, '1', '2019-07-30'),
(10, 54, 6, '1', '2019-07-30'),
(11, 54, 2, '1', '2019-07-30'),
(12, 55, 5, '1', '2019-07-30'),
(13, 56, 7, '1', '2019-07-30');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pedidos`
--

CREATE TABLE `pedidos` (
  `ID_PEDIDO` int(15) NOT NULL,
  `CI_RIF` varchar(15) NOT NULL,
  `FECHA_PEDIDO` date NOT NULL,
  `FECHA_EXPIRACION` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `ID_ESTADO` char(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `pedidos`
--

INSERT INTO `pedidos` (`ID_PEDIDO`, `CI_RIF`, `FECHA_PEDIDO`, `FECHA_EXPIRACION`, `ID_ESTADO`) VALUES
(1, 'V-123456789', '2019-07-30', '2019-07-31 01:18:15', 'POR ENTREGAR');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `perfil`
--

CREATE TABLE `perfil` (
  `id_perfil` int(11) NOT NULL,
  `nombre_empresa` varchar(150) NOT NULL,
  `direccion` varchar(255) NOT NULL,
  `ciudad` varchar(100) NOT NULL,
  `codigo_postal` varchar(100) NOT NULL,
  `estado` varchar(100) NOT NULL,
  `telefono` varchar(20) NOT NULL,
  `email` varchar(64) NOT NULL,
  `impuesto` int(2) NOT NULL,
  `moneda` varchar(6) NOT NULL,
  `logo_url` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `ID` int(11) NOT NULL,
  `ID_PRODUCTO` varchar(15) NOT NULL,
  `DESCRIPCION_PRODUCTO` varchar(60) NOT NULL,
  `ID_CATEGORIAS` int(11) NOT NULL,
  `EXISTENCIA_PRODUCTO` int(15) NOT NULL,
  `PRECIO` float NOT NULL,
  `UNIDAD` varchar(10) NOT NULL,
  `STOCK_MIN` int(11) NOT NULL,
  `STOCK_MAX` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`ID`, `ID_PRODUCTO`, `DESCRIPCION_PRODUCTO`, `ID_CATEGORIAS`, `EXISTENCIA_PRODUCTO`, `PRECIO`, `UNIDAD`, `STOCK_MIN`, `STOCK_MAX`) VALUES
(1, '100029', 'CARRETILLA ALBAÃ‘IL 85L R/AIRE  NARANJA', 11, 983, 300000, 'UND', 5, 100),
(2, '100W', 'BOMBILLO 110 - 100W HALOGENO SYLVANIA', 3, 42, 4500, 'UND', 5, 500),
(3, '101029', 'BOMBILLO AHORRADOR E14 11WATS SEMILIC', 3, 25, 24000, 'UND', 5, 300),
(4, '101050', 'BOMBILLO AHORRADOR ESPIRAL SEMILIC  15W', 3, 100, 25000, 'UND', 5, 300),
(5, '11-001', 'LAMPARA PLAFON TRANSPARENTE 6', 3, 4, 33000, 'UND', 5, 300),
(6, '1102', 'PULSADOR P/ EMPOTRAR TICINO', 13, 60, 200, 'UND', 5, 300),
(7, '110500G', 'BOMBILLO DE HALOGENO  500W G.E     110V', 3, 0, 5500, 'UND', 5, 300),
(8, '110B', 'PROTECTOR A/A C/BORNER 110W NINJA 3AÃ‘O G', 13, 39, 42000, 'UND', 5, 300),
(9, '110C', 'PROTECTOR COMPUTADORA  110W NINJA 3AÃ‘O G', 13, 54, 200, 'UND', 5, 300),
(10, '111969', 'CUCHARA LUXVEN 8', 11, 43, 19000, 'UND', 5, 300),
(11, '113385', 'LLAVE P/TUBO 14', 11, 6, 45000, 'UND', 5, 300),
(12, '12-026', 'LAMPARA BAMBER 8', 3, 12, 80000, 'UND', 5, 300),
(13, '125353', 'CHICURA VINKO DE ALTA CALIDAD 2 LB', 11, 20, 50000, 'UND', 5, 300),
(14, '133412', 'PALA CUADRADA MANGO PLASTICO', 11, 30, 90000, 'UND', 5, 300),
(15, '1382594', 'MARTILLO CARP. 25mm CASCABEL', 11, 45, 42500, 'UND', 5, 300),
(16, '14-045', 'LAMPARA FLUORESCENTE CUADRADA 22 W', 3, 20, 30000, 'UND', 5, 300),
(17, '14515', 'MULTITOMA 6 TOMA BRUFER', 13, 56, 200, 'UND', 5, 300),
(18, '16-150', 'CINCEL PUNTA BELLOTA 16-150', 11, 30, 36000, 'UND', 5, 300),
(19, '17-047', 'ESCUADRA METALICA 8', 11, 20, 30000, 'UND', 5, 300),
(20, '1X15EE', 'BREAKER P/ EMPOTRAR YAINO  1X15 AL 1X30', 13, 4, 40000, 'UND', 5, 300),
(21, '1X15ES', 'BREAKER P/ EMPOTRAR SIEMEN 1X15', 13, 45, 85000, 'UND', 5, 300),
(22, '1X15ET', 'BREAKER P/ EMPOTRAR TICINO 1X15 AL 1X30', 13, 12, 98000, 'UND', 5, 300),
(23, '20103', 'ESCARDILLA 2KG. ECONOMICA', 11, 4, 60000, 'UND', 5, 300),
(24, '2032', 'PILA 3V 2032 C/U', 2, 39, 15000, 'UND', 5, 300),
(25, '209601', 'CERR CILINDRO FIJO BLUELOOCK', 12, 24, 80000, 'UND', 5, 150),
(26, '209671', 'CERR P/VITRINA C/LLAVE', 12, 30, 48000, 'UND', 5, 300),
(27, '2117', 'CERR T/POMO METAL C/LLAVE BLUELOCK', 12, 4, 65000, 'UND', 5, 150),
(28, '2127', 'CERR T/POMO METAL S/LLAVE VENLOCK', 12, 4, 55000, 'UND', 5, 150),
(29, '2201030MM', 'CANDADO DE LATON PLANOS 30mm CISA', 12, 2, 40000, 'UND', 5, 300),
(30, '2201040MM', 'CANDADO DE LATON PLANOS 40mm CISA', 12, 6, 45000, 'UND', 5, 300),
(31, '2201050MM', 'CANDADO DE LATON PLANOS 50mm CISA', 12, 12, 75000, 'UND', 5, 300),
(32, '2201060MM', 'CANDADO DE LATON PLANOS 60mm CISA', 12, 30, 85000, 'UND', 5, 300),
(33, '22011-52', 'CANDADO ARCO LARGO A/Z 50mm  CISA', 12, 24, 55000, 'UND', 5, 300),
(34, '22WG', 'FLUORESCENTE 22W CIRCULAR G/ELECTRIC', 13, 4, 25000, '', 5, 300),
(35, '5001', 'PISTOLA PARA PINTAR C/ENV PLAS D GRAVED', 11, 4, 79000, 'UND', 5, 300),
(36, '637', 'EXTENSION ELECTRICA BLANCA    5MTS SEMIL', 13, 30, 68000, 'UND', 5, 300),
(37, '668', 'EXTENSION ELECTRICA NEGRA     5MTS SEMIL', 13, 45, 68000, 'UND', 5, 300),
(38, '71453', 'BOMBILLO TIPO VELA E-12 FERMETAL', 13, 120, 9000, 'UND', 5, 300),
(39, '846', 'HEMBRILLA ELECTRICA 110V ESPAÃ‘OLA', 13, 80, 185000, 'UND', 5, 150),
(40, 'BP4', 'BROCHA PRETUL 4\"', 19, 30, 12000, 'UND', 5, 300),
(47, 'GPAA', 'PILA AA  ALCALINA PAQ', 2, 98, 17000, 'PAR', 5, 300),
(48, 'GPAAA', 'PILA AAA  ALCALINA PAQ', 2, 90, 17000, 'PAR', 5, 300),
(49, 'IPAC1/4', 'ASFALTO IPA CEMENTO 1/4 GALON GOTA FIX', 1, 245, 40000, 'UND', 5, 600),
(50, 'IPACC', 'ASFALTO IPA CEMENTO DE CUÃ‘ETE', 1, 75, 350000, 'UND', 5, 150),
(51, 'IPACG', 'ASFALTO IPA CEMENTO DE GALON', 1, 200, 92000, 'UND', 5, 300),
(52, 'IPALC', 'ASFALTO IPA LIQUIDO DE CUÃ‘ETE', 1, 150, 298000, 'UND', 5, 150),
(53, 'IPALG', 'ASFALTO IPA LIQUIDO DE GALON', 1, 143, 85000, 'UND', 5, 300),
(54, 'IPAM3', 'MANTO 3.15 MILIMETRO IPA', 1, 172, 180000, 'UND', 5, 300),
(55, 'IPAMA', 'MANTO ALUMINIO ALUFLEX 10MTS', 1, 145, 300000, 'UND', 5, 300),
(56, 'IPAPC', 'ASFALTO IPA PLASTICO DE CUÃ‘ETE', 1, 53, 305000, 'UND', 5, 150),
(57, 'IPAPG', 'ASFALTO IPA PLASTICO DE GALON', 1, 120, 95000, 'UND', 5, 300),
(58, 'IPAPMC', 'ASFALTO IPA PRIMER DE CUÃ‘ETE', 1, 60, 299000, 'UND', 5, 150),
(59, 'IPAPMG', 'ASFALTO IPA PRIMER DE GALON', 1, 120, 88000, 'UND', 5, 300),
(60, 'P12', 'PILA 12VOLTIO C/U', 2, 60, 10000, 'UND', 5, 300),
(61, 'P2025', 'PILA 2025 C/U', 2, 40, 19000, 'UND', 5, 300),
(62, 'P3V', 'PILA 3 VOLTIO', 2, 20, 5000, 'UND', 5, 300),
(63, 'P828', 'PILA 27A C/U', 2, 30, 12000, 'UND', 5, 300),
(93, 'TUB12', 'TUBERIA DE COBRE 1/2', 24, 141, 59000, 'MTS', 10, 500),
(94, 'SPT10', 'CABLE SPT NÂ° 10 X MTS', 4, 4, 6000, 'MTS', 5, 1000),
(95, 'SPT12', 'CABLE SPT NÂ° 12 X MTS', 4, 300, 7000, 'MTS', 5, 1000),
(96, 'SPT14', 'CABLE SPT NÂ° 14 X MTS', 4, 384, 8500, 'MTS', 5, 1000),
(97, 'SPT16', 'CABLE SPT NÂ° 16 X MTS', 4, 113, 10500, 'MTS', 5, 1000),
(98, 'SPT18', 'CABLE SPT NÂ° 18 X MTS', 4, 65, 12000, 'MTS', 5, 1000),
(99, '001-B', 'CARBONES 001-B ESMERIL BOSCH', 5, 20, 20000, 'PAR', 5, 100),
(100, '002-B', 'CARBONES 002-B MARTILLO BOSCH', 5, 40, 20000, 'PAR', 5, 100),
(101, '003-B', 'CARBONES 003-B ESMERIL BOSCH', 5, 50, 20000, 'PAR', 5, 100),
(102, '004-B', 'CARBONES 004-B PULIDORA SKIL', 5, 23, 20000, 'PAR', 5, 100),
(103, '005-B', 'CARBONES 005-B LIJADORA SKIL', 5, 60, 20000, 'PAR', 5, 100),
(104, '21011', 'CANAL   P/ LLUVIA 3 MTS', 6, 20, 250000, 'UND', 5, 150),
(105, '21032', 'BAJANTE P/ CANAL 3\"', 6, 20, 23500, 'UND', 5, 150),
(106, '100B1/4', 'CONEX CODO 90 HEMBRA NPT 100B 1/4', 7, 4, 25000, 'UND', 5, 150),
(107, '100B1/8', 'CONEX CODO 90 HEMBRA NPT 100B 1/8', 7, 32, 29000, 'UND', 5, 150),
(108, '100B3/8', 'CONEX CODO 90 HEMBRA NPT 100B 3/8', 7, 12, 32000, 'UND', 5, 150),
(109, '101B1/4', 'CONEX TEE HEMBRA NPT 101B 1/4', 7, 7, 23000, 'UND', 5, 150),
(110, '101B1/8', 'CONEX TEE HEMBRA NPT 101B 1/8', 7, 77, 27000, 'UND', 5, 150);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `proveedores`
--

CREATE TABLE `proveedores` (
  `ID` int(11) NOT NULL,
  `DNI` int(11) NOT NULL,
  `NOMBRE` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `CORREO` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `TELEFONO` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `DIRECCION` varchar(255) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `proveedor_producto`
--

CREATE TABLE `proveedor_producto` (
  `ID` int(11) NOT NULL,
  `ID_PRODUCTO` int(11) NOT NULL,
  `ID_PROVEEDOR` int(11) NOT NULL,
  `PRECIO` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `recepcion`
--

CREATE TABLE `recepcion` (
  `ID_RECEPCION` int(15) NOT NULL,
  `FECHA_RECEPCION` date NOT NULL,
  `CI_RIF` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `requisicion`
--

CREATE TABLE `requisicion` (
  `ID_REQUISICION` int(15) NOT NULL,
  `OBSERVACION_REQUISICION` varchar(150) NOT NULL,
  `FECHA_REQUISICION` date NOT NULL,
  `CI_RIF` varchar(15) NOT NULL,
  `ID_PROVEEDOR` int(11) NOT NULL,
  `ESTATUS` enum('0','1') NOT NULL COMMENT '0: incompleta; 1:completa;'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo_usuarios`
--

CREATE TABLE `tipo_usuarios` (
  `ID_USUARIOS` varchar(15) NOT NULL,
  `DESCRIPCION_USUARIOS` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `tipo_usuarios`
--

INSERT INTO `tipo_usuarios` (`ID_USUARIOS`, `DESCRIPCION_USUARIOS`) VALUES
('ADM', 'ADMINISTRADOR'),
('CLI', 'CLIENTE'),
('TRA', 'TRABAJADOR');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tmp`
--

CREATE TABLE `tmp` (
  `id_tmp` int(11) NOT NULL,
  `id_producto` int(11) NOT NULL,
  `cantidad_tmp` int(11) NOT NULL,
  `precio_tmp` double(8,2) DEFAULT NULL,
  `session_id` varchar(100) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `tmp`
--

INSERT INTO `tmp` (`id_tmp`, `id_producto`, `cantidad_tmp`, `precio_tmp`, `session_id`) VALUES
(1, 100029, 1, 200.00, '0vl7p34gkf5d1nacnegcv0mq35'),
(2, 100, 4, 200.00, '0vl7p34gkf5d1nacnegcv0mq35'),
(3, 100029, 1, 200.00, '663nrov1kmkroo5pnvsnatfcm2');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `ID` int(11) NOT NULL,
  `CI_RIF` varchar(15) NOT NULL,
  `NOMBRE_USUARIOS` varchar(60) NOT NULL,
  `CONTRASENA` varchar(60) NOT NULL,
  `CORREO` varchar(60) NOT NULL,
  `TELEFONO` varchar(13) NOT NULL,
  `DIRECCION` varchar(150) NOT NULL,
  `PREGUNTA_UNO` varchar(255) DEFAULT NULL,
  `RESPUESTA_UNO` varchar(255) DEFAULT NULL,
  `PREGUNTA_DOS` varchar(255) DEFAULT NULL,
  `RESPUESTA_DOS` varchar(255) DEFAULT NULL,
  `FECHA_NACIMIENTO` date NOT NULL,
  `ID_USUARIOS` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`ID`, `CI_RIF`, `NOMBRE_USUARIOS`, `CONTRASENA`, `CORREO`, `TELEFONO`, `DIRECCION`, `PREGUNTA_UNO`, `RESPUESTA_UNO`, `PREGUNTA_DOS`, `RESPUESTA_DOS`, `FECHA_NACIMIENTO`, `ID_USUARIOS`) VALUES
(1, 'V-123456789', 'ADMINISTRADOR', 'dd4b21e9ef71e1291183a46b913ae6f2', 'admin@ferreteriacampana.com', '0123456789', 'Entre Calle Sucre y 5 Julio', 'tipo de usuario', 'admin', 'super o normal', 'norm', '1995-08-08', 'ADM');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `ajuste_inventario`
--
ALTER TABLE `ajuste_inventario`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `ID_PRODUCTO` (`ID_PRODUCTO`);

--
-- Indices de la tabla `auditoria_usuarios`
--
ALTER TABLE `auditoria_usuarios`
  ADD PRIMARY KEY (`ID_AUDITORIA`),
  ADD KEY `CI_RIF` (`CI_RIF`),
  ADD KEY `CI_RIF_2` (`CI_RIF`);

--
-- Indices de la tabla `categorias`
--
ALTER TABLE `categorias`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `ID_CATEGORIAS` (`ID_CATEGORIAS`) USING BTREE,
  ADD KEY `DESCRIPCION_CATEGORIAS` (`DESCRIPCION_CATEGORIAS`);

--
-- Indices de la tabla `currencies`
--
ALTER TABLE `currencies`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `detalles_pedido`
--
ALTER TABLE `detalles_pedido`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `ID_PRODUCTO` (`ID_PRODUCTO`),
  ADD KEY `ID_PEDIDO` (`ID_PEDIDO`),
  ADD KEY `ID_PRODUCTO_2` (`ID_PRODUCTO`);

--
-- Indices de la tabla `detalles_recepcion`
--
ALTER TABLE `detalles_recepcion`
  ADD PRIMARY KEY (`ID_DETALLES_RECEPCION`),
  ADD KEY `ID_REQUISICION` (`ID_RECEPCION`),
  ADD KEY `ID_PRODUCTO` (`ID_PRODUCTO`);

--
-- Indices de la tabla `detalles_requisicion`
--
ALTER TABLE `detalles_requisicion`
  ADD PRIMARY KEY (`ID_DETALLES_REQUISICION`),
  ADD KEY `ID_MOVIMIENTO` (`ID_REQUISICION`),
  ADD KEY `ID_PRODUCTO` (`ID_PRODUCTO`);

--
-- Indices de la tabla `detalle_factura`
--
ALTER TABLE `detalle_factura`
  ADD PRIMARY KEY (`id_detalle`),
  ADD KEY `numero_cotizacion` (`numero_factura`,`id_producto`);

--
-- Indices de la tabla `estado`
--
ALTER TABLE `estado`
  ADD PRIMARY KEY (`ID_ESTADO`);

--
-- Indices de la tabla `facturas`
--
ALTER TABLE `facturas`
  ADD PRIMARY KEY (`id_factura`),
  ADD UNIQUE KEY `numero_cotizacion` (`numero_factura`);

--
-- Indices de la tabla `movimiento_inventario`
--
ALTER TABLE `movimiento_inventario`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `ID_PRODUCTO` (`ID_PRODUCTO`);

--
-- Indices de la tabla `pedidos`
--
ALTER TABLE `pedidos`
  ADD PRIMARY KEY (`ID_PEDIDO`),
  ADD KEY `CI_RIF` (`CI_RIF`),
  ADD KEY `ID_ESTADO` (`ID_ESTADO`);

--
-- Indices de la tabla `perfil`
--
ALTER TABLE `perfil`
  ADD PRIMARY KEY (`id_perfil`);

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `ID_PRODUCTO` (`ID_PRODUCTO`) USING BTREE,
  ADD KEY `DESCRIPCCION_PRODUCTO` (`DESCRIPCION_PRODUCTO`),
  ADD KEY `ID_CATEGORIA` (`ID_CATEGORIAS`) USING BTREE,
  ADD KEY `DESCRIPCION_PRODUCTO` (`DESCRIPCION_PRODUCTO`),
  ADD KEY `ID_CATEGORIAS` (`ID_CATEGORIAS`);

--
-- Indices de la tabla `proveedores`
--
ALTER TABLE `proveedores`
  ADD PRIMARY KEY (`ID`);

--
-- Indices de la tabla `proveedor_producto`
--
ALTER TABLE `proveedor_producto`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `ID_PRODUCTO` (`ID_PRODUCTO`),
  ADD KEY `ID_PROVEEDOR` (`ID_PROVEEDOR`);

--
-- Indices de la tabla `recepcion`
--
ALTER TABLE `recepcion`
  ADD PRIMARY KEY (`ID_RECEPCION`),
  ADD KEY `CI_RIF` (`CI_RIF`),
  ADD KEY `CI_RIF_2` (`CI_RIF`);

--
-- Indices de la tabla `requisicion`
--
ALTER TABLE `requisicion`
  ADD PRIMARY KEY (`ID_REQUISICION`),
  ADD KEY `CI_RIF` (`CI_RIF`),
  ADD KEY `ID_PROVEEDOR` (`ID_PROVEEDOR`);

--
-- Indices de la tabla `tipo_usuarios`
--
ALTER TABLE `tipo_usuarios`
  ADD PRIMARY KEY (`ID_USUARIOS`);

--
-- Indices de la tabla `tmp`
--
ALTER TABLE `tmp`
  ADD PRIMARY KEY (`id_tmp`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `CI_RIF` (`CI_RIF`) USING BTREE,
  ADD KEY `ID_USUARIOS` (`ID_USUARIOS`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `ajuste_inventario`
--
ALTER TABLE `ajuste_inventario`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `auditoria_usuarios`
--
ALTER TABLE `auditoria_usuarios`
  MODIFY `ID_AUDITORIA` int(15) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `categorias`
--
ALTER TABLE `categorias`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT de la tabla `currencies`
--
ALTER TABLE `currencies`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `detalles_pedido`
--
ALTER TABLE `detalles_pedido`
  MODIFY `ID` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `detalles_recepcion`
--
ALTER TABLE `detalles_recepcion`
  MODIFY `ID_DETALLES_RECEPCION` int(15) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `detalles_requisicion`
--
ALTER TABLE `detalles_requisicion`
  MODIFY `ID_DETALLES_REQUISICION` int(15) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `detalle_factura`
--
ALTER TABLE `detalle_factura`
  MODIFY `id_detalle` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `facturas`
--
ALTER TABLE `facturas`
  MODIFY `id_factura` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `movimiento_inventario`
--
ALTER TABLE `movimiento_inventario`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT de la tabla `pedidos`
--
ALTER TABLE `pedidos`
  MODIFY `ID_PEDIDO` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `perfil`
--
ALTER TABLE `perfil`
  MODIFY `id_perfil` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `productos`
--
ALTER TABLE `productos`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=111;

--
-- AUTO_INCREMENT de la tabla `proveedores`
--
ALTER TABLE `proveedores`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `proveedor_producto`
--
ALTER TABLE `proveedor_producto`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `recepcion`
--
ALTER TABLE `recepcion`
  MODIFY `ID_RECEPCION` int(15) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `requisicion`
--
ALTER TABLE `requisicion`
  MODIFY `ID_REQUISICION` int(15) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tmp`
--
ALTER TABLE `tmp`
  MODIFY `id_tmp` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `ajuste_inventario`
--
ALTER TABLE `ajuste_inventario`
  ADD CONSTRAINT `ajuste_inventario_ibfk_1` FOREIGN KEY (`ID_PRODUCTO`) REFERENCES `productos` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `auditoria_usuarios`
--
ALTER TABLE `auditoria_usuarios`
  ADD CONSTRAINT `auditoria_usuarios_ibfk_1` FOREIGN KEY (`CI_RIF`) REFERENCES `usuarios` (`CI_RIF`);

--
-- Filtros para la tabla `detalles_pedido`
--
ALTER TABLE `detalles_pedido`
  ADD CONSTRAINT `detalles_pedido_ibfk_3` FOREIGN KEY (`ID_PEDIDO`) REFERENCES `pedidos` (`ID_PEDIDO`),
  ADD CONSTRAINT `detalles_pedido_ibfk_4` FOREIGN KEY (`ID_PRODUCTO`) REFERENCES `productos` (`ID`);

--
-- Filtros para la tabla `detalles_recepcion`
--
ALTER TABLE `detalles_recepcion`
  ADD CONSTRAINT `detalles_recepcion_ibfk_1` FOREIGN KEY (`ID_RECEPCION`) REFERENCES `recepcion` (`ID_RECEPCION`),
  ADD CONSTRAINT `detalles_recepcion_ibfk_2` FOREIGN KEY (`ID_PRODUCTO`) REFERENCES `productos` (`ID`);

--
-- Filtros para la tabla `detalles_requisicion`
--
ALTER TABLE `detalles_requisicion`
  ADD CONSTRAINT `detalles_requisicion_ibfk_3` FOREIGN KEY (`ID_REQUISICION`) REFERENCES `requisicion` (`ID_REQUISICION`),
  ADD CONSTRAINT `detalles_requisicion_ibfk_4` FOREIGN KEY (`ID_PRODUCTO`) REFERENCES `productos` (`ID`);

--
-- Filtros para la tabla `movimiento_inventario`
--
ALTER TABLE `movimiento_inventario`
  ADD CONSTRAINT `movimiento_inventario_ibfk_1` FOREIGN KEY (`ID_PRODUCTO`) REFERENCES `productos` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `pedidos`
--
ALTER TABLE `pedidos`
  ADD CONSTRAINT `pedidos_ibfk_2` FOREIGN KEY (`ID_ESTADO`) REFERENCES `estado` (`ID_ESTADO`),
  ADD CONSTRAINT `pedidos_ibfk_3` FOREIGN KEY (`CI_RIF`) REFERENCES `usuarios` (`CI_RIF`);

--
-- Filtros para la tabla `productos`
--
ALTER TABLE `productos`
  ADD CONSTRAINT `productos_ibfk_1` FOREIGN KEY (`ID_CATEGORIAS`) REFERENCES `categorias` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `proveedor_producto`
--
ALTER TABLE `proveedor_producto`
  ADD CONSTRAINT `proveedor_producto_ibfk_1` FOREIGN KEY (`ID_PROVEEDOR`) REFERENCES `proveedores` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `proveedor_producto_ibfk_2` FOREIGN KEY (`ID_PRODUCTO`) REFERENCES `productos` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `recepcion`
--
ALTER TABLE `recepcion`
  ADD CONSTRAINT `recepcion_ibfk_1` FOREIGN KEY (`CI_RIF`) REFERENCES `usuarios` (`CI_RIF`);

--
-- Filtros para la tabla `requisicion`
--
ALTER TABLE `requisicion`
  ADD CONSTRAINT `requisicion_ibfk_1` FOREIGN KEY (`CI_RIF`) REFERENCES `usuarios` (`CI_RIF`);

--
-- Filtros para la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD CONSTRAINT `usuarios_ibfk_1` FOREIGN KEY (`ID_USUARIOS`) REFERENCES `tipo_usuarios` (`ID_USUARIOS`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
