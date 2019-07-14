-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 17-10-2017 a las 01:03:46
-- Versión del servidor: 10.1.21-MariaDB
-- Versión de PHP: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `ferreteria_la_campana`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categorias`
--

CREATE TABLE `categorias` (
  `ID_CATEGORIAS` char(15) NOT NULL,
  `DESCRIPCION_CATEGORIAS` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `categorias`
--

INSERT INTO `categorias` (`ID_CATEGORIAS`, `DESCRIPCION_CATEGORIAS`) VALUES
('ASF', 'ASFALTOS'),
('BAT', 'BATERIAS'),
('BYL', 'BOMBILLOS Y LAMPARAS'),
('CAB', 'CABLES'),
('CAR', 'CARBONES'),
('CDL', 'CANALES DE LLUVIAS'),
('CON', 'CONEXIONES'),
('CYA', 'CINTAS Y ADHESIVOS'),
('EMP', 'EMPACADURAS'),
('GYB', 'GRIFERIAS Y BAJANTES'),
('HER', 'HERRAMIENTAS'),
('LYC', 'LLAVES Y CERRADURAS'),
('MAE', 'MATERIALES ELECTRICOS'),
('MAL', 'MALLAS'),
('MAN', 'MANGUERAS'),
('MDC', 'MATERIALES DE CONSTRUCCION'),
('OTR', 'OTROS'),
('PEV', 'PEGAMENTOS VARIOS'),
('PYS', 'PINTURAS Y SOLVENTES'),
('ROD', 'RODAMIENTOS'),
('TER', 'TERMINALES'),
('TIS', 'TIRADORES SURTIDOS'),
('TRU', 'TRUPER'),
('TUB', 'TUBERIAS'),
('TYC', 'TORNILLOS Y CLAVOS');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detalles_ingreso`
--

CREATE TABLE `detalles_ingreso` (
  `ID_DETALLES_INGRESO` int(15) NOT NULL,
  `ID_INGRESO` int(15) NOT NULL,
  `ID_PRODUCTO` varchar(15) NOT NULL,
  `CANTIDAD_PRODUCTO` int(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `detalles_ingreso`
--

INSERT INTO `detalles_ingreso` (`ID_DETALLES_INGRESO`, `ID_INGRESO`, `ID_PRODUCTO`, `CANTIDAD_PRODUCTO`) VALUES
(1, 1, 'CA2', 5),
(2, 2, 'BP4', 10);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detalles_pedido`
--

CREATE TABLE `detalles_pedido` (
  `ID_DETALLES_PEDIDO` int(15) NOT NULL,
  `ID_PEDIDO` int(15) NOT NULL,
  `ID_PRODUCTO` varchar(15) NOT NULL,
  `CANTIDAD_PRODUCTO` int(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `detalles_pedido`
--

INSERT INTO `detalles_pedido` (`ID_DETALLES_PEDIDO`, `ID_PEDIDO`, `ID_PRODUCTO`, `CANTIDAD_PRODUCTO`) VALUES
(1, 1, 'BP4', 10),
(2, 1, 'CA2', 200),
(5, 5, 'CA2', 6),
(6, 6, '100029', 1),
(7, 6, '11-001', 1),
(8, 6, '110500G', 1),
(9, 6, '846', 1),
(10, 7, '100029', 9),
(11, 7, '100W', 1),
(12, 7, '101029', 1),
(13, 7, '101050', 1),
(14, 8, 'CA2', 3),
(15, 9, '846', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estado`
--

CREATE TABLE `estado` (
  `ID_ESTADO` char(15) NOT NULL,
  `DESCRIPCCION_ESTADO` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `estado`
--

INSERT INTO `estado` (`ID_ESTADO`, `DESCRIPCCION_ESTADO`) VALUES
('ENT', 'ENTREGADO'),
('POR', 'POR ENTREGAR');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ingreso`
--

CREATE TABLE `ingreso` (
  `ID_INGRESO` int(15) NOT NULL,
  `ID_USUARIOS` varchar(15) NOT NULL,
  `FECHA_INGRESO` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `ingreso`
--

INSERT INTO `ingreso` (`ID_INGRESO`, `ID_USUARIOS`, `FECHA_INGRESO`) VALUES
(1, 'ADM', '2017-02-08'),
(2, 'ADM', '2017-10-09');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pedidos`
--

CREATE TABLE `pedidos` (
  `ID_PEDIDO` int(15) NOT NULL,
  `CI_RIF` varchar(15) NOT NULL,
  `FECHA_PEDIDO` date NOT NULL,
  `FECHA_TOPE` date NOT NULL,
  `ID_ESTADO` char(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `pedidos`
--

INSERT INTO `pedidos` (`ID_PEDIDO`, `CI_RIF`, `FECHA_PEDIDO`, `FECHA_TOPE`, `ID_ESTADO`) VALUES
(1, 'V25074617', '2017-09-10', '2017-09-13', 'POR'),
(5, 'V-26571341', '2017-10-10', '2017-10-13', 'POR'),
(6, 'V25074617', '2017-10-16', '0000-00-00', 'POR'),
(7, 'V25074617', '2017-10-16', '0000-00-00', 'POR'),
(8, 'V25074617', '2017-10-16', '0000-00-00', 'POR'),
(9, 'V25074617', '2017-10-16', '0000-00-00', 'POR');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `ID_PRODUCTO` varchar(15) NOT NULL,
  `DESCRIPCION_PRODUCTO` varchar(60) NOT NULL,
  `ID_CATEGORIA` char(15) NOT NULL,
  `STOCK` int(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`ID_PRODUCTO`, `DESCRIPCION_PRODUCTO`, `ID_CATEGORIA`, `STOCK`) VALUES
('100029', 'CARRETILLA ALBAÑIL 85L R/AIRE     NARANJA', 'HER', 20),
('100W', 'BOMBILLO  110 - 100W            SYLVANIA', 'BYL', 62),
('101029', 'BOMBILLO AHORRADOR E14 11WATS SEMILIC', 'BYL', 74),
('101050', 'BOMBILLO AHORRADOR ESPIRAL SEMILIC  15W', 'BYL', 62),
('11-001', 'LAMPARA PLAFON TRANSPARENTE 6\"', 'BYL', 50),
('1102', 'PULSADOR P/ EMPOTRAR TICINO', 'MAE', 20),
('110500G', 'BOMBILLO DE HALOGENO  500W G.E     110V', 'BYL', 48),
('110B', 'PROTECTOR A/A C/BORNER 110W NINJA 3AÑO G', 'MAE', 50),
('110C', 'PROTECTOR COMPUTADORA  110W NINJA 3AÑO G', 'MAE', 60),
('111969', 'CUCHARA LUXVEN 8\" PUNTA REDONDA', 'HER', 30),
('113385', 'LLAVE P/TUBO 14\" T/RIDGID', 'HER', 35),
('12-026', 'LAMPARA BAMBER 8\" TORNASOL', 'BYL', 62),
('125353', 'CHICURA VINKO DE ALTA CALIDAD 2 LB', 'HER', 30),
('13-002', 'LAMPARA APLIQUE GLOBO BLANCO C/ TOMA', 'BYL', 38),
('133412', 'PALA CUADRADA MANGO PLASTICO', 'HER', 20),
('1382594', 'MARTILLO CARP. 25mm CASCABEL', 'HER', 30),
('14-045', 'LAMPARA FLUORESCENTE CUADRADA 22 W', 'BYL', 42),
('14515', 'MULTITOMA 6 TOMA BRUFER', 'MAE', 6),
('16-150', 'CINCEL PUNTA BELLOTA 16-150', 'HER', 36),
('17-047', 'ESCUADRA METALICA 8\"', 'HER', 24),
('1X15EE', 'BREAKER P/ EMPOTRAR YAINO  1X15 AL 1X30', 'MAE', 12),
('1X15ES', 'BREAKER P/ EMPOTRAR SIEMEN 1X15', 'MAE', 12),
('1X15ET', 'BREAKER P/ EMPOTRAR TICINO 1X15 AL 1X30', 'MAE', 12),
('20103', 'ESCARDILLA 2KG. ECONOMICA', 'HER', 30),
('209601', 'CERR CILINDRO FIJO BLUELOOCK', 'LYC', 40),
('209671', 'CERR P/VITRINA C/LLAVE', 'LYC', 50),
('2117', 'CERR T/POMO METAL C/LLAVE BLUELOCK', 'LYC', 40),
('2127', 'CERR T/POMO METAL S/LLAVE VENLOCK', 'LYC', 50),
('2201030MM', 'CANDADO DE LATON PLANOS 30mm CISA', 'LYC', 80),
('2201040MM', 'CANDADO DE LATON PLANOS 40mm CISA', 'LYC', 70),
('2201050MM', 'CANDADO DE LATON PLANOS 50mm CISA', 'LYC', 90),
('2201060MM', 'CANDADO DE LATON PLANOS 60mm CISA', 'LYC', 90),
('22011-52', 'CANDADO ARCO LARGO A/Z 50mm  CISA', 'LYC', 110),
('22WG', 'FLUORESCENTE 22W CIRCULAR G/ELECTRIC', 'BYL', 24),
('5001', 'PISTOLA PARA PINTAR C/ENV PLAS D GRAVED', 'HER', 40),
('637', 'EXTENSION ELECTRICA BLANCA    5MTS SEMIL', 'MAE', 5),
('668', 'EXTENSION ELECTRICA NEGRA     5MTS SEMIL', 'MAE', 8),
('71453', 'BOMBILLO TIPO VELA E-12 FERMETAL', 'BYL', 48),
('846', 'HEMBRILLA ELECTRICA 110V ESPAÑOLA', 'LYC', 50),
('BP4', 'BROCHA PRETUL 4\"', 'PYS', 15),
('CA2', 'CLAVOS DE ACERO 2\"', 'TYC', 200);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo_usuarios`
--

CREATE TABLE `tipo_usuarios` (
  `ID_USUARIOS` varchar(15) NOT NULL,
  `DESCRIPCCION_USUARIOS` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `tipo_usuarios`
--

INSERT INTO `tipo_usuarios` (`ID_USUARIOS`, `DESCRIPCCION_USUARIOS`) VALUES
('ADM', 'ADMINISTRADOR'),
('CLI', 'CLIENTE'),
('TRA', 'TRABAJADOR');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `CI_RIF` varchar(15) NOT NULL,
  `NOMBRE_USUARIOS` varchar(60) NOT NULL,
  `CONTRASENA` varchar(8) NOT NULL,
  `CORREO` varchar(90) NOT NULL,
  `TELEFONO` varchar(15) NOT NULL,
  `DIRECCION` varchar(90) NOT NULL,
  `FECHA_NACIMIENTO` date NOT NULL,
  `ID_USUARIOS` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`CI_RIF`, `NOMBRE_USUARIOS`, `CONTRASENA`, `CORREO`, `TELEFONO`, `DIRECCION`, `FECHA_NACIMIENTO`, `ID_USUARIOS`) VALUES
('V-26571341', 'Jose Angel Padron', '26571341', 'japp19961996@gmail.com', '04243550806', 'El limon', '0000-00-00', 'CLI'),
('V-852147963', 'Maria Gabriela Rodez', '98765432', 'raizaca_@hotmail.com', '0412456123', 'los olivos nuevos', '2017-10-01', 'CLI'),
('V25074617', 'DONARDO PINEDA', '1235789', 'DONARDO_E_04@HOTMAIL.COM', '0414-2979317', 'LOS OLIVOS MARACAY', '1995-08-08', 'CLI'),
('V250746171', 'TRABAJADOR A', '1235789', '', '0414-2979317', '', '1995-08-08', 'TRA');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `categorias`
--
ALTER TABLE `categorias`
  ADD PRIMARY KEY (`ID_CATEGORIAS`);

--
-- Indices de la tabla `detalles_ingreso`
--
ALTER TABLE `detalles_ingreso`
  ADD PRIMARY KEY (`ID_DETALLES_INGRESO`),
  ADD UNIQUE KEY `ID_PRODUCTO` (`ID_PRODUCTO`),
  ADD KEY `ID_INGRESO` (`ID_INGRESO`);

--
-- Indices de la tabla `detalles_pedido`
--
ALTER TABLE `detalles_pedido`
  ADD PRIMARY KEY (`ID_DETALLES_PEDIDO`),
  ADD KEY `ID_PRODUCTO` (`ID_PRODUCTO`),
  ADD KEY `ID_PEDIDO` (`ID_PEDIDO`),
  ADD KEY `ID_PRODUCTO_2` (`ID_PRODUCTO`);

--
-- Indices de la tabla `estado`
--
ALTER TABLE `estado`
  ADD PRIMARY KEY (`ID_ESTADO`);

--
-- Indices de la tabla `ingreso`
--
ALTER TABLE `ingreso`
  ADD PRIMARY KEY (`ID_INGRESO`),
  ADD KEY `ID_USUARIOS` (`ID_USUARIOS`);

--
-- Indices de la tabla `pedidos`
--
ALTER TABLE `pedidos`
  ADD PRIMARY KEY (`ID_PEDIDO`),
  ADD KEY `CI_RIF` (`CI_RIF`),
  ADD KEY `ID_ESTADO` (`ID_ESTADO`);

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`ID_PRODUCTO`),
  ADD KEY `DESCRIPCCION_PRODUCTO` (`DESCRIPCION_PRODUCTO`),
  ADD KEY `ID_CATEGORIA` (`ID_CATEGORIA`) USING BTREE;

--
-- Indices de la tabla `tipo_usuarios`
--
ALTER TABLE `tipo_usuarios`
  ADD PRIMARY KEY (`ID_USUARIOS`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`CI_RIF`),
  ADD KEY `NOMBRE_USUARIOS` (`NOMBRE_USUARIOS`),
  ADD KEY `ID_USUARIOS` (`ID_USUARIOS`),
  ADD KEY `ID_USUARIOS_2` (`ID_USUARIOS`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `detalles_ingreso`
--
ALTER TABLE `detalles_ingreso`
  MODIFY `ID_DETALLES_INGRESO` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT de la tabla `detalles_pedido`
--
ALTER TABLE `detalles_pedido`
  MODIFY `ID_DETALLES_PEDIDO` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT de la tabla `ingreso`
--
ALTER TABLE `ingreso`
  MODIFY `ID_INGRESO` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT de la tabla `pedidos`
--
ALTER TABLE `pedidos`
  MODIFY `ID_PEDIDO` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `detalles_ingreso`
--
ALTER TABLE `detalles_ingreso`
  ADD CONSTRAINT `detalles_ingreso_ibfk_1` FOREIGN KEY (`ID_INGRESO`) REFERENCES `ingreso` (`ID_INGRESO`),
  ADD CONSTRAINT `detalles_ingreso_ibfk_2` FOREIGN KEY (`ID_PRODUCTO`) REFERENCES `productos` (`ID_PRODUCTO`);

--
-- Filtros para la tabla `detalles_pedido`
--
ALTER TABLE `detalles_pedido`
  ADD CONSTRAINT `detalles_pedido_ibfk_2` FOREIGN KEY (`ID_PRODUCTO`) REFERENCES `productos` (`ID_PRODUCTO`),
  ADD CONSTRAINT `detalles_pedido_ibfk_3` FOREIGN KEY (`ID_PEDIDO`) REFERENCES `pedidos` (`ID_PEDIDO`);

--
-- Filtros para la tabla `ingreso`
--
ALTER TABLE `ingreso`
  ADD CONSTRAINT `ingreso_ibfk_1` FOREIGN KEY (`ID_USUARIOS`) REFERENCES `tipo_usuarios` (`ID_USUARIOS`);

--
-- Filtros para la tabla `pedidos`
--
ALTER TABLE `pedidos`
  ADD CONSTRAINT `pedidos_ibfk_1` FOREIGN KEY (`CI_RIF`) REFERENCES `usuarios` (`CI_RIF`),
  ADD CONSTRAINT `pedidos_ibfk_2` FOREIGN KEY (`ID_ESTADO`) REFERENCES `estado` (`ID_ESTADO`);

--
-- Filtros para la tabla `productos`
--
ALTER TABLE `productos`
  ADD CONSTRAINT `productos_ibfk_3` FOREIGN KEY (`ID_CATEGORIA`) REFERENCES `categorias` (`ID_CATEGORIAS`);

--
-- Filtros para la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD CONSTRAINT `usuarios_ibfk_1` FOREIGN KEY (`ID_USUARIOS`) REFERENCES `tipo_usuarios` (`ID_USUARIOS`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
