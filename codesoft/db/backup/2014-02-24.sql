
-- phpMyAdmin SQL Dump
-- version 3.5.2.2
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tiempo de generación: 24-02-2014 a las 12:21:01
-- Versión del servidor: 5.1.66
-- Versión de PHP: 5.2.17

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `u836668480_code`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ACTIVIDAD`
--

CREATE TABLE IF NOT EXISTS `ACTIVIDAD` (
  `CODIGOACTIVIDAD` int(11) NOT NULL,
  `NOMBRE` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `DESCRIPCION` varchar(512) COLLATE utf8_unicode_ci DEFAULT NULL,
  `FECHAINICIO` date DEFAULT NULL,
  `FECHAENTREGA` date DEFAULT NULL,
  `ESTADO` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`CODIGOACTIVIDAD`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ARCHIVO`
--

CREATE TABLE IF NOT EXISTS `ARCHIVO` (
  `CODIGOARCHIVO` int(11) NOT NULL,
  `RUC_CI` varchar(16) COLLATE utf8_unicode_ci DEFAULT NULL,
  `USUARIO` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `USU_USUARIO` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `NOMBRE` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `FECHACREACION` datetime DEFAULT NULL,
  `DESCRIPCION` varchar(512) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`CODIGOARCHIVO`),
  KEY `FK_RELATIONSHIP_38` (`USUARIO`),
  KEY `FK_RELATIONSHIP_39` (`RUC_CI`),
  KEY `FK_RELATIONSHIP_81` (`USU_USUARIO`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `BANCOS`
--

CREATE TABLE IF NOT EXISTS `BANCOS` (
  `CODIGOBANCO` int(11) NOT NULL,
  `RUCSUCURSAL` varchar(16) COLLATE utf8_unicode_ci DEFAULT NULL,
  `NOMBRE` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `NUMEROCUENTA` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL,
  `SALDO` double DEFAULT NULL,
  `OBSERVACIONES` varchar(1024) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`CODIGOBANCO`),
  KEY `FK_RELATIONSHIP_82` (`RUCSUCURSAL`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `BIENES`
--

CREATE TABLE IF NOT EXISTS `BIENES` (
  `CODIGOBIENE` int(11) NOT NULL,
  `USUARIO` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `USU_USUARIO` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CODIGOLISTABIENES` int(11) DEFAULT NULL,
  `RUCSUCURSAL` varchar(16) COLLATE utf8_unicode_ci DEFAULT NULL,
  `COSTO` float DEFAULT NULL,
  `ESTADO` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `FECHAINGRESOPRODUCTOS` date DEFAULT NULL,
  `OBSERVACIONES` varchar(1024) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`CODIGOBIENE`),
  KEY `FK_RELATIONSHIP_3` (`CODIGOLISTABIENES`),
  KEY `FK_RELATIONSHIP_75` (`USU_USUARIO`),
  KEY `FK_RELATIONSHIP_76` (`RUCSUCURSAL`),
  KEY `FK_RELATIONSHIP_77` (`USUARIO`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `CATALOGO`
--

CREATE TABLE IF NOT EXISTS `CATALOGO` (
  `CODIGOCATALOGO` int(11) NOT NULL,
  `RUCDISTRIBUIDOR` varchar(16) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CODIGOPRIMARIO` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `DISPONIBLE` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `COSTO` float DEFAULT NULL,
  `OBSERVACIONES` varchar(1024) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`CODIGOCATALOGO`),
  KEY `FK_RELATIONSHIP_57` (`RUCDISTRIBUIDOR`),
  KEY `FK_RELATIONSHIP_92` (`CODIGOPRIMARIO`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `CATEGORIA`
--

CREATE TABLE IF NOT EXISTS `CATEGORIA` (
  `CODIGOCATEGORIA` int(11) NOT NULL,
  `NOMBRE` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `DESCRIPCION` varchar(512) COLLATE utf8_unicode_ci DEFAULT NULL,
  `PRIORIDAD` int(11) DEFAULT NULL,
  PRIMARY KEY (`CODIGOCATEGORIA`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `CATEGORIA`
--

INSERT INTO `CATEGORIA` (`CODIGOCATEGORIA`, `NOMBRE`, `DESCRIPCION`, `PRIORIDAD`) VALUES
(1, 'Laptops', '', 1),
(2, 'Accesorios Pc', '', 2),
(3, 'Cartuchos', '', 0),
(5, 'Accesorios Laptops', '', 0),
(6, 'Tablet', '', 0),
(7, 'Celulares', '', 0),
(8, 'Impresoras', '', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `CHAT`
--

CREATE TABLE IF NOT EXISTS `CHAT` (
  `CODIGOCHAT` bigint(20) NOT NULL,
  `USUARIO` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `USU_USUARIO` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `RUC_CI` varchar(16) COLLATE utf8_unicode_ci DEFAULT NULL,
  `MENSAJE` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL,
  `FECHACHAT` datetime DEFAULT NULL,
  `ARCHIVOADJUNTO` varchar(256) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`CODIGOCHAT`),
  KEY `FK_RELATIONSHIP_30` (`RUC_CI`),
  KEY `FK_RELATIONSHIP_33` (`USUARIO`),
  KEY `FK_RELATIONSHIP_80` (`USU_USUARIO`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `CIERRECAJA`
--

CREATE TABLE IF NOT EXISTS `CIERRECAJA` (
  `CODIGOCIERRECAJA` bigint(20) NOT NULL,
  `RUCSUCURSAL` varchar(16) COLLATE utf8_unicode_ci DEFAULT NULL,
  `USUARIO` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CODIGOBANCO` int(11) DEFAULT NULL,
  `TOTAL` float DEFAULT NULL,
  `IVA` float DEFAULT NULL,
  `SUBTOTAL` float DEFAULT NULL,
  `INFORME` varchar(1024) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ESTADO` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `OBSERVACIONES` varchar(1024) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`CODIGOCIERRECAJA`),
  KEY `FK_RELATIONSHIP_83` (`RUCSUCURSAL`),
  KEY `FK_RELATIONSHIP_84` (`CODIGOBANCO`),
  KEY `FK_RELATIONSHIP_85` (`USUARIO`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `CIERRECAJAMANTENIMIENTO`
--

CREATE TABLE IF NOT EXISTS `CIERRECAJAMANTENIMIENTO` (
  `CODIGODETMANTENIMIENTO` bigint(20) NOT NULL,
  `CODIGOCIERRECAJA` bigint(20) DEFAULT NULL,
  `CODIGOFACTURAS` bigint(20) DEFAULT NULL,
  `ESTADO` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `OBSERVACION` varchar(256) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`CODIGODETMANTENIMIENTO`),
  KEY `FK_RELATIONSHIP_90` (`CODIGOCIERRECAJA`),
  KEY `FK_RELATIONSHIP_91` (`CODIGOFACTURAS`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `CIERRECAJASOFTWARE`
--

CREATE TABLE IF NOT EXISTS `CIERRECAJASOFTWARE` (
  `CODIGODETSOFTWARE` bigint(20) NOT NULL,
  `CODIGOCIERRECAJA` bigint(20) DEFAULT NULL,
  `CODIGOFACTURASOFTWARE` int(11) DEFAULT NULL,
  `ESTADO` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `OBSERVACION` varchar(256) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`CODIGODETSOFTWARE`),
  KEY `FK_RELATIONSHIP_86` (`CODIGOCIERRECAJA`),
  KEY `FK_RELATIONSHIP_87` (`CODIGOFACTURASOFTWARE`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `CIERRECAJAVENTA`
--

CREATE TABLE IF NOT EXISTS `CIERRECAJAVENTA` (
  `CODIGODETVENTA` bigint(20) NOT NULL,
  `CODIGOVENTA` bigint(20) DEFAULT NULL,
  `CODIGOCIERRECAJA` bigint(20) DEFAULT NULL,
  `ESTADO` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `OBSERVACION` varchar(256) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`CODIGODETVENTA`),
  KEY `FK_RELATIONSHIP_88` (`CODIGOCIERRECAJA`),
  KEY `FK_RELATIONSHIP_89` (`CODIGOVENTA`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `CLIENTE`
--

CREATE TABLE IF NOT EXISTS `CLIENTE` (
  `RUC_CI` varchar(16) COLLATE utf8_unicode_ci NOT NULL,
  `CLAVE` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `PRIMERNOMBRE` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `SEGUNDONOMBRE` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `PRIMERAPELLIDO` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `SEGUNDOAPELLIDO` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `DIRECCION` varchar(256) COLLATE utf8_unicode_ci DEFAULT NULL,
  `SEXO` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `NACIONALIDAD` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL,
  `FECHANACIMIENTO` date DEFAULT NULL,
  `TELEFONOPRINCIPAL` varchar(16) COLLATE utf8_unicode_ci DEFAULT NULL,
  `TELEFONOAUXILIAR` varchar(16) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CELULAR` varchar(16) COLLATE utf8_unicode_ci DEFAULT NULL,
  `EMAIL` varchar(256) COLLATE utf8_unicode_ci DEFAULT NULL,
  `OCUPACION` varchar(256) COLLATE utf8_unicode_ci DEFAULT NULL,
  `OBSERVACIONES` varchar(1024) COLLATE utf8_unicode_ci DEFAULT NULL,
  `TIPO` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`RUC_CI`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `CLIENTE`
--

INSERT INTO `CLIENTE` (`RUC_CI`, `CLAVE`, `PRIMERNOMBRE`, `SEGUNDONOMBRE`, `PRIMERAPELLIDO`, `SEGUNDOAPELLIDO`, `DIRECCION`, `SEXO`, `NACIONALIDAD`, `FECHANACIMIENTO`, `TELEFONOPRINCIPAL`, `TELEFONOAUXILIAR`, `CELULAR`, `EMAIL`, `OCUPACION`, `OBSERVACIONES`, `TIPO`) VALUES
('1709081994', '1709081994', 'Rita', '', 'Tello', '', '', 'F', 'Ecuatoriano', '1980-01-01', '2333582', '', '0987263786', '', 'obras publicas', 'Trabaja en el municipio de sangolqui', 'nuevo'),
('0501698344', '0501698344', 'Anibal', '', 'Chicaiza', '', '', 'M', 'Ecuatoriano', '1980-01-01', '0', '0', '0995882410', '', NULL, NULL, 'nuevo'),
('1709717803', '1709717803', 'Teresa', '', 'Cruz', '', 'Sangolqui', 'F', 'Ecuatoriano', '1980-01-01', '0', '0', '0998126638', '', '', '', 'nuevo'),
('1709771917', '1709771917', 'Leonardo', '', 'Yumisaca', '', 'Sangolqui', 'M', 'Ecuatoriano', '1980-01-01', '0', '0', '0969019108', 'slys02ly@homtmail.com', 'Doctor', '', 'amigo'),
('1718707332', '1718707332', 'Eduardo', '', 'Grillo', '', '', 'M', 'Ecuatoriano', '1980-01-01', '0', '0', '0993779581', '', '', '', 'nuevo'),
('1711327526', '1711327526', 'Juan', 'Carlos', 'Onofo', '', 'Sangolqui', 'M', 'Ecuatoriano', '1980-01-01', '2871939', '0', '0979100628', 'juanonofa@hotmail.com', '', '', 'frecuente'),
('0500666417', '0500666417', 'Boris', '', 'Arizaga', '', '', 'M', 'Ecuatoriano', '1980-01-01', '2336288', '0', '0', 'borisboris016@hotmail.com', '', '', 'nuevo'),
('1979116360', '1979116360', 'Dennys', '', 'Simbaña', '', '', 'M', 'Ecuatoriano', '1980-01-01', '0', '0', '0979116360', '', '', '', 'nuevo'),
('1710117993', '1710117993', 'Patricio', '', 'Diaz', '', 'Pintag', 'M', 'Ecuatoriano', '1973-02-23', '0', '0', '0990764044', 'patodiazbarreno1@hotmail.com', 'Electronica Aplicado', 'Malgenio', 'amigo'),
('1702880798', '1702880798', 'Marco', '', 'Vargas', '', '', 'M', 'Ecuatoriano', '1980-01-01', '0', '0', '0997798242', '', '', '', 'nuevo');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `CONTROLHORARIO`
--

CREATE TABLE IF NOT EXISTS `CONTROLHORARIO` (
  `FECHA` date NOT NULL,
  `CODIGOHORARIOSUSUARIOS` int(11) DEFAULT NULL,
  `HORAINGRESO` time DEFAULT NULL,
  `HORASALIDAALMUERZO` time DEFAULT NULL,
  `HORAINGRESOALMUERZO` time DEFAULT NULL,
  `HORASALIDA` time DEFAULT NULL,
  `JUSTIFICACION` varchar(512) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ATRASOS` int(11) DEFAULT NULL,
  `HORASEXTRAS` int(11) DEFAULT NULL,
  `OBSERVACIONES` varchar(1024) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`FECHA`),
  KEY `FK_RELATIONSHIP_61` (`CODIGOHORARIOSUSUARIOS`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `DESARRALLADORES`
--

CREATE TABLE IF NOT EXISTS `DESARRALLADORES` (
  `CODIGODESARROLLADORES` int(11) NOT NULL,
  `USUARIO` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CODIGOPROYECTO` int(11) DEFAULT NULL,
  `CODIGOACTIVIDAD` int(11) DEFAULT NULL,
  `CARGO` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `DESCRIPCION` varchar(512) COLLATE utf8_unicode_ci DEFAULT NULL,
  `INFORME` varchar(1024) COLLATE utf8_unicode_ci DEFAULT NULL,
  `COSTOFINAL` float DEFAULT NULL,
  PRIMARY KEY (`CODIGODESARROLLADORES`),
  KEY `FK_RELATIONSHIP_23` (`USUARIO`),
  KEY `FK_RELATIONSHIP_24` (`CODIGOPROYECTO`),
  KEY `FK_RELATIONSHIP_25` (`CODIGOACTIVIDAD`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `DESCUENTO`
--

CREATE TABLE IF NOT EXISTS `DESCUENTO` (
  `CODIGODESCUENTO` int(11) NOT NULL,
  `RUCSUCURSAL` varchar(16) COLLATE utf8_unicode_ci DEFAULT NULL,
  `NOMBRE` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `PORCENTAJE` float DEFAULT NULL,
  `FECHAINICIAL` date DEFAULT NULL,
  `FECHAFINAL` date DEFAULT NULL,
  `DESCRIPCION` varchar(512) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`CODIGODESCUENTO`),
  KEY `FK_RELATIONSHIP_54` (`RUCSUCURSAL`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `DETALLEINGRESO`
--

CREATE TABLE IF NOT EXISTS `DETALLEINGRESO` (
  `CODIGOINGRESO` bigint(20) NOT NULL,
  `CODIGOPRODUCTO` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CODINGRESO` bigint(20) DEFAULT NULL,
  `ESTADO` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CANTIDAD` int(11) DEFAULT NULL,
  `OBSERVACIONES` varchar(1024) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`CODIGOINGRESO`),
  KEY `FK_RELATIONSHIP_71` (`CODINGRESO`),
  KEY `FK_RELATIONSHIP_96` (`CODIGOPRODUCTO`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `DETALLEPRESUPUESTO`
--

CREATE TABLE IF NOT EXISTS `DETALLEPRESUPUESTO` (
  `CODIGODETALLEPRESUPUESTO` int(11) NOT NULL,
  `CODIGOPRODUCTO` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CODIGOPRESUPUESTO` int(11) DEFAULT NULL,
  `UBICACION` varchar(256) COLLATE utf8_unicode_ci DEFAULT NULL,
  `DESCRIPCION` varchar(512) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`CODIGODETALLEPRESUPUESTO`),
  KEY `FK_RELATIONSHIP_40` (`CODIGOPRODUCTO`),
  KEY `FK_RELATIONSHIP_41` (`CODIGOPRESUPUESTO`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `DETALLEPRODUCTO`
--

CREATE TABLE IF NOT EXISTS `DETALLEPRODUCTO` (
  `CODPRODUCTO` bigint(20) NOT NULL,
  `CODIGOPRODUCTO` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CODIGOVENTA` bigint(20) DEFAULT NULL,
  `ESTADO` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CANTIDAD` int(11) DEFAULT NULL,
  `OBSERVACIONES` varchar(1024) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`CODPRODUCTO`),
  KEY `FK_RELATIONSHIP_6` (`CODIGOVENTA`),
  KEY `FK_RELATIONSHIP_7` (`CODIGOPRODUCTO`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `DETALLEPROYECTOS`
--

CREATE TABLE IF NOT EXISTS `DETALLEPROYECTOS` (
  `CODIGODETALLE` int(11) NOT NULL,
  `CODIGOFACTURASOFTWARE` int(11) DEFAULT NULL,
  `CODIGOPROYECTO` int(11) DEFAULT NULL,
  `INFORME` varchar(1024) COLLATE utf8_unicode_ci DEFAULT NULL,
  `OBSERVACIONES` varchar(1024) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ESTADO` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`CODIGODETALLE`),
  KEY `FK_RELATIONSHIP_26` (`CODIGOPROYECTO`),
  KEY `FK_RELATIONSHIP_27` (`CODIGOFACTURASOFTWARE`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `DETALLEREPUESTOS`
--

CREATE TABLE IF NOT EXISTS `DETALLEREPUESTOS` (
  `CODIGODETALLEREPUESTOS` bigint(20) NOT NULL,
  `CODIGOREPUESTO` int(11) DEFAULT NULL,
  `CODIGODETALLESERVICIO` bigint(20) DEFAULT NULL,
  `DETALLE` varchar(512) COLLATE utf8_unicode_ci DEFAULT NULL,
  `INFORME` varchar(1024) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ESTADO` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `OBSERVACIONES` varchar(1024) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`CODIGODETALLEREPUESTOS`),
  KEY `FK_RELATIONSHIP_51` (`CODIGODETALLESERVICIO`),
  KEY `FK_RELATIONSHIP_52` (`CODIGOREPUESTO`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `DETALLESERVICIO`
--

CREATE TABLE IF NOT EXISTS `DETALLESERVICIO` (
  `CODIGODETALLESERVICIO` bigint(20) NOT NULL,
  `CODIGOSERVICIO` int(11) DEFAULT NULL,
  `CODIGOFACTURAS` bigint(20) DEFAULT NULL,
  `CODIGORECEPCION` bigint(20) DEFAULT NULL,
  `COSTO` float DEFAULT NULL,
  `ESTADO` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `DESCRIPCION` varchar(512) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`CODIGODETALLESERVICIO`),
  KEY `FK_RELATIONSHIP_12` (`CODIGOSERVICIO`),
  KEY `FK_RELATIONSHIP_13` (`CODIGORECEPCION`),
  KEY `FK_RELATIONSHIP_15` (`CODIGOFACTURAS`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `DISTRIBUIDOR`
--

CREATE TABLE IF NOT EXISTS `DISTRIBUIDOR` (
  `RUCDISTRIBUIDOR` varchar(16) COLLATE utf8_unicode_ci NOT NULL,
  `NOMBRE` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `DIRECCION` varchar(256) COLLATE utf8_unicode_ci DEFAULT NULL,
  `SUCURSAL` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL,
  `TELEFONOPRINCIPAL` varchar(16) COLLATE utf8_unicode_ci DEFAULT NULL,
  `TELEFONOAUXILIAR` varchar(16) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CELULAR` varchar(16) COLLATE utf8_unicode_ci DEFAULT NULL,
  `PAGINAWEB` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CORREOELECTRONICO` varchar(256) COLLATE utf8_unicode_ci DEFAULT NULL,
  `PERSONARESPONSABLE` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `OBSERVACIONES` varchar(1024) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`RUCDISTRIBUIDOR`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `DISTRIBUIDOR`
--

INSERT INTO `DISTRIBUIDOR` (`RUCDISTRIBUIDOR`, `NOMBRE`, `DIRECCION`, `SUCURSAL`, `TELEFONOPRINCIPAL`, `TELEFONOAUXILIAR`, `CELULAR`, `PAGINAWEB`, `CORREOELECTRONICO`, `PERSONARESPONSABLE`, `OBSERVACIONES`) VALUES
('1709534976001', 'FYLE SYSTEM', 'Sangolqui Gonzales Suarez Lote 4 y Rio Frio', '', '0', '0', '0984951627', '', '', '', ''),
('1791433025001', 'TECNOMEGA', 'Ruiz de Castilla N30-62 y Cuero y Caizedo', 'Av.Colon - E2-56 entre 10 de agosto y Av.9 de Octubre\r\n223-036', '2228218', '0', '0', 'http://www.tecnomega.com/', '', '', ''),
('1791265912001', 'BIOSCENTER', 'La Mariscal, General Baquedando E8-27 Y Av.6 de diciembre', 'Av.General Enriquez No 38  y Quinta Transversal\r\nCC. El prado, local No 2.', '22903186', '2863650', '0', 'http://www.bioscenter.com/', '', '', ''),
('0991423648001', 'PC HOUSE S.A', 'Guayaquil Quisquis 318 y Lorenzo  de Garaicon', 'Quito: Juan Gonzales n35-A e Ignacion San Maria', '2921381', '24444759', '', 'http://pchouse-sa.com/', '', '', ''),
('1791406052001', 'PC EXPRESS', 'Murgueon OE3-175 y Av.America', '', '2525209', '2903848', '', 'www.grupopcexpress.com', '', '', ''),
('1791967640001', 'XPC', 'Av.America N37-155 y Baron de Carondelet', 'Cdia.Luis Vernaza, Calle Primera, solar 20, manzana 18, frente al cafe de Tere', '2450090', '3713510', '0', 'http://www.xpc.com.ec/', '', '', ''),
('1711149805001', 'CEMCO', 'La Victoria L563 y D Av.Amazonas 558 y Jorge Washington 2do piso.', '', '2507158', '2543294', '0', 'http://www.cemco.com.ec/', 'freddycemco@hotmail.com', '', ''),
('0991243844001', 'SIGLO21', 'Av.Isidro Ayora', '', '', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `EGRESO`
--

CREATE TABLE IF NOT EXISTS `EGRESO` (
  `CODIGOEGRESO` int(11) NOT NULL,
  `USUARIO` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `RUCSUCURSAL` varchar(16) COLLATE utf8_unicode_ci DEFAULT NULL,
  `RUC` varchar(16) COLLATE utf8_unicode_ci DEFAULT NULL,
  `USU_USUARIO` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CODIGOEGRESOS` int(11) DEFAULT NULL,
  `CODIGODOCUMENTO` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `TIPODOCUMENTO` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `FECHAEGRESO` date DEFAULT NULL,
  `VALOR` float DEFAULT NULL,
  `ESTADO` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `OBSERVACIONES` varchar(1024) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`CODIGOEGRESO`),
  KEY `FK_RELATIONSHIP_63` (`CODIGOEGRESOS`),
  KEY `FK_RELATIONSHIP_65` (`RUCSUCURSAL`),
  KEY `FK_RELATIONSHIP_66` (`USU_USUARIO`),
  KEY `FK_RELATIONSHIP_67` (`USUARIO`),
  KEY `FK_RELATIONSHIP_78` (`RUC`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `EMPLEADO`
--

CREATE TABLE IF NOT EXISTS `EMPLEADO` (
  `RUCEMPLEADO` varchar(16) COLLATE utf8_unicode_ci NOT NULL,
  `USUARIO` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `PRIMERNOMBRE` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `SEGUNDONOMBRE` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `PRIMERAPELLIDO` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `SEGUNDOAPELLIDO` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `DIRECCION` varchar(256) COLLATE utf8_unicode_ci DEFAULT NULL,
  `SEXO` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `NACIONALIDAD` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL,
  `FECHANACIMIENTO` date DEFAULT NULL,
  `TELEFONOPRINCIPAL` varchar(16) COLLATE utf8_unicode_ci DEFAULT NULL,
  `TELEFONOAUXILIAR` varchar(16) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CELULAR` varchar(16) COLLATE utf8_unicode_ci DEFAULT NULL,
  `EMAIL` varchar(256) COLLATE utf8_unicode_ci DEFAULT NULL,
  `TITULO` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL,
  `FECHACREACION` datetime DEFAULT NULL,
  PRIMARY KEY (`RUCEMPLEADO`),
  KEY `FK_RELATIONSHIP_29` (`USUARIO`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `EMPRESA`
--

CREATE TABLE IF NOT EXISTS `EMPRESA` (
  `RUC` varchar(16) COLLATE utf8_unicode_ci NOT NULL,
  `NOMBRE` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `DIRECCION` varchar(256) COLLATE utf8_unicode_ci DEFAULT NULL,
  `SUCURSAL` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL,
  `TELEFONOPRINCIPAL` varchar(16) COLLATE utf8_unicode_ci DEFAULT NULL,
  `TELEFONOAUXILIAR` varchar(16) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CELULAR` varchar(16) COLLATE utf8_unicode_ci DEFAULT NULL,
  `PAGINAWEB` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CORREOELECTRONICO` varchar(256) COLLATE utf8_unicode_ci DEFAULT NULL,
  `PERSONARESPONSABLE` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `OBSERVACIONES` varchar(1024) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`RUC`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `EQUIPO`
--

CREATE TABLE IF NOT EXISTS `EQUIPO` (
  `SERIEEQUIPO` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `CODIGOPRIMARIO` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `NOMBRE` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `MARCA` varchar(512) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CARACTERISTICAS` varchar(1024) COLLATE utf8_unicode_ci DEFAULT NULL,
  `OBSERVACIONES` varchar(1024) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`SERIEEQUIPO`),
  KEY `FK_RELATIONSHIP_35` (`CODIGOPRIMARIO`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `FACTURASOFTWARE`
--

CREATE TABLE IF NOT EXISTS `FACTURASOFTWARE` (
  `CODIGOFACTURASOFTWARE` int(11) NOT NULL,
  `CODIGODESCUENTO` int(11) DEFAULT NULL,
  `RUC_CI` varchar(16) COLLATE utf8_unicode_ci DEFAULT NULL,
  `FAC_CODIGOFACTURASOFTWARE` int(11) DEFAULT NULL,
  `NUMEROFACTURA` int(11) DEFAULT NULL,
  `TIPOPAGO` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `FECHASOFTWARE` datetime DEFAULT NULL,
  `TOTAL` float DEFAULT NULL,
  `ESTADO` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ESTADODEPAGO` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `FORMAPAGO` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`CODIGOFACTURASOFTWARE`),
  KEY `FK_ABONOSOFTWARE` (`FAC_CODIGOFACTURASOFTWARE`),
  KEY `FK_RELATIONSHIP_20` (`RUC_CI`),
  KEY `FK_RELATIONSHIP_45` (`CODIGODESCUENTO`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `HORARIOS`
--

CREATE TABLE IF NOT EXISTS `HORARIOS` (
  `CODIGOHORARIOS` int(11) NOT NULL,
  `RUCSUCURSAL` varchar(16) COLLATE utf8_unicode_ci DEFAULT NULL,
  `LUNES` tinyint(1) DEFAULT NULL,
  `MARTES` tinyint(1) DEFAULT NULL,
  `MIERCOLES` tinyint(1) DEFAULT NULL,
  `JUEVES` tinyint(1) DEFAULT NULL,
  `VIERNES` tinyint(1) DEFAULT NULL,
  `SABADO` tinyint(1) DEFAULT NULL,
  `DOMINGO` tinyint(1) DEFAULT NULL,
  `HORAINGRESO` time DEFAULT NULL,
  `HORASALIDAALMUERZO` time DEFAULT NULL,
  `HORAINGRESOALMUERZO` time DEFAULT NULL,
  `HORASALIDA` time DEFAULT NULL,
  `OBSERVACIONES` varchar(1024) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`CODIGOHORARIOS`),
  KEY `FK_RELATIONSHIP_62` (`RUCSUCURSAL`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `HORARIOSUSUARIOS`
--

CREATE TABLE IF NOT EXISTS `HORARIOSUSUARIOS` (
  `CODIGOHORARIOSUSUARIOS` int(11) NOT NULL,
  `CODIGOHORARIOS` int(11) DEFAULT NULL,
  `USUARIO` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `FECHAINICIAL` date DEFAULT NULL,
  `FECHALIMITE` date DEFAULT NULL,
  `HORASTRABAJADAS` int(11) DEFAULT NULL,
  `HORASEXTRAS` int(11) DEFAULT NULL,
  `FALTASJUSTIFICADAS` int(11) DEFAULT NULL,
  `FALTASINJUSTIFICADAS` int(11) DEFAULT NULL,
  `OBSERVACIONES` varchar(1024) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`CODIGOHORARIOSUSUARIOS`),
  KEY `FK_RELATIONSHIP_59` (`USUARIO`),
  KEY `FK_RELATIONSHIP_60` (`CODIGOHORARIOS`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `INGRESO`
--

CREATE TABLE IF NOT EXISTS `INGRESO` (
  `CODINGRESO` bigint(20) NOT NULL,
  `RUCDISTRIBUIDOR` varchar(16) COLLATE utf8_unicode_ci DEFAULT NULL,
  `USUARIO` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `RUCSUCURSAL` varchar(16) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CODIGODOCUMENTO` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `FECHAINGRESOPRODUCTOS` datetime DEFAULT NULL,
  `TIPO` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `TOTAL` float DEFAULT NULL,
  `OBSERVACIONES` varchar(1024) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`CODINGRESO`),
  KEY `FK_RELATIONSHIP_70` (`RUCDISTRIBUIDOR`),
  KEY `FK_RELATIONSHIP_73` (`RUCSUCURSAL`),
  KEY `FK_RELATIONSHIP_74` (`USUARIO`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `LISTABIENES`
--

CREATE TABLE IF NOT EXISTS `LISTABIENES` (
  `CODIGOLISTABIENES` int(11) NOT NULL,
  `CODIGOCATEGORIA` int(11) DEFAULT NULL,
  `NOMBRE` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `MARCA` varchar(512) COLLATE utf8_unicode_ci DEFAULT NULL,
  `MODELO` varchar(512) COLLATE utf8_unicode_ci DEFAULT NULL,
  `IMAGEN` varchar(256) COLLATE utf8_unicode_ci DEFAULT NULL,
  `GARANTIA` float DEFAULT NULL,
  `PRECIO` float DEFAULT NULL,
  `STOCK` int(11) DEFAULT NULL,
  `CARACTERISTICA` varchar(512) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`CODIGOLISTABIENES`),
  KEY `FK_REFERENCE_87` (`CODIGOCATEGORIA`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `LISTAEGRESOS`
--

CREATE TABLE IF NOT EXISTS `LISTAEGRESOS` (
  `CODIGOEGRESOS` int(11) NOT NULL,
  `RUCSUCURSAL` varchar(16) COLLATE utf8_unicode_ci DEFAULT NULL,
  `NOMBRE` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `DETALLE` varchar(512) COLLATE utf8_unicode_ci DEFAULT NULL,
  `OBSERVACIONES` varchar(1024) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`CODIGOEGRESOS`),
  KEY `FK_RELATIONSHIP_64` (`RUCSUCURSAL`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `LISTAPRODUCTO`
--

CREATE TABLE IF NOT EXISTS `LISTAPRODUCTO` (
  `CODIGOPRIMARIO` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `CODIGOCATEGORIA` int(11) DEFAULT NULL,
  `CODIGOSECUNDARIO` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `NOMBRE` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `MARCA` varchar(512) COLLATE utf8_unicode_ci DEFAULT NULL,
  `MODELO` varchar(512) COLLATE utf8_unicode_ci DEFAULT NULL,
  `IMAGEN` varchar(256) COLLATE utf8_unicode_ci DEFAULT NULL,
  `GARANTIA` float DEFAULT NULL,
  `PRECIO` float DEFAULT NULL,
  `PRECIODISTRIBUIDOR` float DEFAULT NULL,
  `PRECIOESPECIAL` float DEFAULT NULL,
  `STOCK` int(11) DEFAULT NULL,
  `CARACTERISTICA` varchar(512) COLLATE utf8_unicode_ci DEFAULT NULL,
  `FECHALANZAMIENTO` date DEFAULT NULL,
  `TIEMPOUTIL` int(11) DEFAULT NULL,
  `CALIFICACION` float DEFAULT NULL,
  `MOSTRARPUBLICIDAD` int(11) DEFAULT NULL,
  `TITULOPUBLICIDAD` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `SUBTITULOPUBLICIDAD` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL,
  `DESCRIPCION` varchar(512) COLLATE utf8_unicode_ci DEFAULT NULL,
  `VINCULO` varchar(256) COLLATE utf8_unicode_ci DEFAULT NULL,
  `INCLUYEIVA` int(11) DEFAULT NULL,
  PRIMARY KEY (`CODIGOPRIMARIO`),
  KEY `FK_REFERENCE_86` (`CODIGOCATEGORIA`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `LISTAPRODUCTO`
--

INSERT INTO `LISTAPRODUCTO` (`CODIGOPRIMARIO`, `CODIGOCATEGORIA`, `CODIGOSECUNDARIO`, `NOMBRE`, `MARCA`, `MODELO`, `IMAGEN`, `GARANTIA`, `PRECIO`, `PRECIODISTRIBUIDOR`, `PRECIOESPECIAL`, `STOCK`, `CARACTERISTICA`, `FECHALANZAMIENTO`, `TIEMPOUTIL`, `CALIFICACION`, `MOSTRARPUBLICIDAD`, `TITULOPUBLICIDAD`, `SUBTITULOPUBLICIDAD`, `DESCRIPCION`, `VINCULO`, `INCLUYEIVA`) VALUES
('4710268215165', 2, '0091163215165', 'Mouse PS2', 'GENIUS', 'Xscroll', '', 0, 10, 0, 0, -1, 'Optical Wheel Mouse', '2014-01-01', 36, 1, 1, '', '', '', '', 1),
('6936014200065', 3, '', 'Cartucho epson', 'CN JET', 'CN-T038', '', 0, 5.55, 0, 0, 0, '', '2014-01-01', 0, 1, 1, '', '', '', '', 1),
('0829160902227', 3, '', 'Cartucho Hp 22', 'HP', '9HA3362142', '', 0, 25, 0, 0, 0, '', '2014-01-01', 0, 1, 1, '', '', '', '', 1),
('0829160399829', 3, '', 'Cartucho Hp 96', 'HP', 'B815988708', '', 0, 25, 0, 0, 0, '', '2014-01-01', 0, 1, 1, '', '', '', '', 1),
('088698043769', 3, '', 'Cartucho HP 49', 'HP', 'OEA2562199', '', 0, 15, 0, 0, 0, '', '2014-01-01', 0, 1, 1, '', '', '', '', 1),
('6936014200300', 3, '', 'Cartucho Epson', 'CN JET', 'CN-T039', '', 0, 6.55, 0, 0, 0, '', '2014-01-01', 0, 1, 1, '', '', '', '', 1),
('6936014201109', 3, '', 'Cartucho Canon ', 'CN JET', 'CN-24C', '', 0, 5.5, 0, 0, 0, '', '2014-01-01', 0, 1, 1, '', '', '', '', 1),
('QJ5982291211240151', 2, '', 'Targeta puerto paralelo PCI', 'ANERA', 'MULTI I/O CARD', '', 0, 18, 0, 0, 0, '', '2014-01-01', 0, 1, 1, '', '', '', '', 1),
('0852189001275', 1, '', 'Case disco duro 3.5', 'ENCORE', 'ENH908-NWY', '', 0, 18, 0, 0, -1, '', '2014-01-01', 0, 1, 1, '', '', '', '', 1),
('5032037014410', 2, '735858221733', 'Targeta MaDRE Intel Atom', 'Intel', 'D2500HN', '', 0, 90, 0, 0, -1, '', '2014-01-01', 0, 1, 1, '', '', '', '', 1),
('1325487822228', 5, '', 'Case disco duro SATA 2.5', 'MOBILE DISK', '', '', 0, 20, 0, 0, 0, '', '2014-01-01', 0, 1, 1, '', '', '', '', 1),
('2013062410593', 2, '', 'Fuente de poder', 'APEX', '', '', 0, 0, 0, 0, 0, '', '2014-01-01', 0, 1, 1, '', '', '', '', 1),
('0740617198218', 1, '', 'Flash memory 8GB', 'KYNGSTONE', 'DTSE9H/8GB', '', 0, 12, 0, 0, 0, '', '2014-01-01', 0, 1, 1, '', '', '', '', 1),
('0619659000417', 2, '', 'Flash memory 4GB', 'SANDISK', 'SDCZ50-004G-B35', '', 0, 10, 0, 0, 0, '', '2014-01-01', 0, 1, 1, '', '', '', '', 1),
('0740617182941', 1, '', 'Micro SD + adaptador 8GB', 'KYNGSTONE', 'MBLY4G2/8GB', '', 0, 12, 0, 0, 0, '', '2014-01-01', 0, 1, 1, '', '', '', '', 1),
('mm1211290052', 5, '', 'Targeta televicion USB', 'ZOGIS', 'RA4001PRO', '', 0, 0, 0, 0, 0, '', '2014-01-01', 0, 1, 1, '', '', '', '', 1),
('0695067628849', 1, '', 'Adapatador de sonido USB', 'CMEDIA', 'CM108', '', 0, 18, 0, 0, 0, '', '2014-01-01', 0, 1, 1, '', '', '', '', 1),
('6935364050719', 2, '0845973050719', 'Wireless nano USB 250 Mbps', 'TP-LINK', 'TL-WN725N', '', 0, 18, 0, 0, -1, '', '2014-01-01', 0, 1, 1, '', '', '', '', 1),
('1957359972184', 2, '', 'Cable USB Impresora', 'IMEXX', 'IME-40137', '', 0, 4, 0, 0, 0, '', '2014-01-01', 0, 1, 1, '', '', '', '', 1),
('4960999973708', 3, '0013803215014', 'Cartucho Canon 210', 'CANON', 'PG-210', '', 0, 25, 0, 0, 0, '', '2014-01-01', 0, 1, 1, '', '', '', '', 1),
('4960999973739', 3, '0013803215038', 'Cartucho Canon 211', 'CANON', 'CL-211', '', 0, 28, 0, 0, 0, '', '2014-01-01', 0, 1, 1, '', '', '', '', 1),
('4710268238478', 2, '0091163238478', 'Parlantes Rojos', 'GENIUS', 'SP-U115', '', 0, 12, 0, 0, -1, '', '2014-01-01', 0, 1, 1, '', '', '', '', 1),
('4710268238485', 1, '0091163238485', 'Parlante Azul', 'GENIUS', 'SP-U115', '', 0, 12, 0, 0, -1, '', '2014-01-01', 0, 1, 1, '', '', '', '', 1),
('4710268235316', 2, '0091163235316', 'Paralentes negros ', 'GENIUS', 'SP-U110', '', 0, 8, 0, 0, -1, '', '2014-01-01', 0, 1, 1, '', '', '', '', 1),
('4710728126727', 1, '', 'Audifonos estereo negros', 'OMEGA', '662862', '', 0, 10, 0, 0, 0, '', '2014-01-01', 0, 1, 1, '', '', '', '', 1),
('SM28J601S', 2, '', 'GAMEPAD 10 BOTONES', 'SPEEDMIND', 'SM28K01S', '', 0, 10, 0, 0, 0, '', '2014-01-01', 0, 1, 1, '', '', '', '', 1),
('8806085091740', 1, '0729507949529', 'DVD Write Externo', 'SAMSUNG', 'SE-208', '', 0, 43, 0, 0, 0, '', '2014-01-01', 0, 1, 1, '', '', '', '', 1),
('4710268239857', 2, '0091163239857', 'Web Cam', 'GENIUS', 'FaceCam 320X', '', 0, 15, 0, 0, 0, '', '2014-01-01', 0, 1, 1, '', '', '', '', 1),
('4710268801221', 2, '0091163801221', 'Targeta de Sonido', 'GENIUS', 'SM-LIVE VALUE 5.1', '', 0, 0, 0, 0, -1, '', '2014-01-01', 0, 1, 1, '', '', '', '', 1),
('6935364020071', 2, '0845973020071', 'Switch 10/100 mpbs', 'TP-LINK', 'TL-SF1008D', '', 0, 20, 0, 0, -1, '', '2014-01-01', 0, 1, 1, '', '', '', '', 1),
('4710268212157', 1, '0091163212157', 'Teclado USB', 'GENIUS', 'KB-06XE', '', 0, 0, 0, 0, -1, '', '2014-01-01', 0, 1, 1, '', '', '', '', 1),
('111000488', 2, '', 'Fuente de poder', 'NIUTEK', 'ATX-750', '', 0, 0, 0, 0, -1, '', '2014-01-01', 0, 1, 1, '', '', '', '', 1),
('11049010121218', 3, '', 'Cartucho black para cano universal', '1 FREE', 'BCI/21/24', '', 0, 10, 0, 0, 0, '', '2014-01-01', 0, 1, 1, '', '', '', '', 1),
('0716829782835', 6, '', 'MP4 Tactil', 'Coby', 'MP828-8G', '', 12, 75, 0, 0, 0, 'PantallaTacttil 2.8'' 8GB Camara Musica Radio Video Imagenes', '2014-01-01', 0, 1, 1, '', '', '', '', 1),
('2378165539689', 7, '', 'Kit minicargadores Iphone y Ipad', 'ninguna', '', '', 0, 15, 0, 0, 0, 'Mini cargador de auto+cargador de pared+cable usb', '2014-01-01', 0, 1, 1, '', '', '', '', 1),
('4260113520673', 6, '', 'Galaxy Tab Connect Kit', 'Galaxy', 'S-K03', '', 0, 8, 0, 0, 0, 'Cable covertidor a usb Galaxy Tab', '2014-01-01', 0, 1, 1, '', '', '', '', 1),
('0680079751043', 7, '', 'Parlante Bluetooth ', 'Polaroid', 'PBT510BK', '', 0, 25, 0, 0, 0, 'Parlante Bluetooth ', '2014-01-01', 0, 1, 1, '', '', '', '', 1),
('0037988261512', 1, '', 'Audifonos Panasonic', 'Panasonic', 'RP-HV21', '', 0, 15, 0, 0, 0, 'Audifonos Stereo', '2014-01-01', 0, 1, 1, '', '', '', '', 1),
('6923898657801', 1, '', 'Lector de memorias', 'Card Reader', '', '', 0, 4.5, 0, 0, 0, 'Lector de memorias ', '2014-01-01', 0, 1, 1, '', '', '', '', 1),
('0885170002388', 1, '', 'Audifonos Panasonic', 'Panasonic', 'RP-HJE120PPG', '', 0, 15, 0, 0, 0, 'Audifonos Stereo', '2014-01-01', 0, 1, 1, '', '', '', '', 1),
('EST01', 6, '', 'Estuche tablets', '', '7 pulgadas', '', 0, 15, 0, 0, 0, '', '2014-01-01', 0, 1, 1, '', '', '', '', 1),
('CAR01', 6, '', 'Cargador', '', 'Tablets Chinas', '', 0, 15, 0, 0, 0, '', '2014-01-01', 0, 1, 1, '', '', '', '', 1),
('REP01', 1, '', 'Reproductor mp3 microSD', '', '', '', 0, 11, 0, 0, 0, '', '2014-01-01', 0, 1, 1, '', '', '', '', 1),
('BAT01', 6, '', 'Bateria Recargable usb', 'POWER BANK', '', '', 0, 25, 0, 0, 0, 'Bateria para tabets,celulares,iphone', '2014-01-01', 0, 1, 1, '', '', '', '', 1),
('AUD01', 7, '', 'Audifono Estilo Earpods', '', '', '', 0, 15, 0, 0, 0, '', '2014-01-01', 0, 1, 1, '', '', '', '', 1),
('CAB01', 7, '', 'Cable Usb datos Iphone', '', '', '', 0, 6, 0, 0, 0, '', '2014-01-01', 0, 1, 1, '', '', '', '', 1),
('CAB02', 2, '', 'Cable HDMI', '', '', '', 0, 12, 0, 0, 0, '', '2014-01-01', 0, 1, 1, '', '', '', '', 1),
('EST02', 1, '', 'Estuche negro 12''', 'TAURUS', '', '', 0, 11, 0, 0, 0, '', '2014-01-01', 0, 1, 1, '', '', '', '', 1),
('TAR01', 2, '', 'Targeta Usb', 'CMEDIA', 'Sound Adapter 7.1', '', 0, 18, 0, 0, 0, '', '2014-01-01', 0, 1, 1, '', '', '', '', 1),
('CAB03', 2, '', 'Cable SATA', '', '', '', 0, 1, 0, 0, 0, '', '2014-01-01', 0, 1, 1, '', '', '', '', 1),
('STC01', 8, '', 'Sistema de tinta continua Canon', '', '', '', 0, 12, 0, 0, 0, '', '2014-01-01', 0, 1, 2, '', '', '', '', 1),
('TIN01', 8, '', 'Tinta Azul Canon', '', '', '', 0, 4, 0, 0, 0, '', '2014-01-01', 0, 1, 1, '', '', '', '', 1),
('TIN02', 8, '', 'Tinta Amarilla Epson', '', '', '', 0, 4, 0, 0, 0, '', '2014-01-01', 0, 1, 1, '', '', '', '', 1),
('TIN03', 8, '', 'Tinta Magenta Epson', '', '', '', 0, 4, 0, 0, 0, '', '2014-01-01', 0, 1, 1, '', '', '', '', 1),
('TIN04', 8, '', 'Tinta Negro Epson', '', '', '', 0, 4, 0, 0, 0, '', '2014-01-01', 0, 1, 1, '', '', '', '', 1),
('4710268216865', 2, '0091163216865', 'Mouse USB', 'GENIUS', 'XScroll', '', 0, 9, 0, 0, -1, '', '2014-01-01', 0, 1, 1, '', '', '', '', 1),
('4710268228011', 2, '0091163228011', 'Mouse USB', 'GENIUS', 'NetScroll 120', '', 0, 9, 0, 0, -1, '', '2014-01-01', 0, 1, 1, '', '', '', '', 1),
('111000481', 2, '', 'Fuente de poder 750 w', 'NIUTEK', 'ATX-750', '', 0, 20, 0, 0, 0, '', '2014-01-01', 0, 1, 1, '', '', '', '', 1),
('d1208000055568', 2, '', 'Fuente de poder 500 w', 'DELUX', 'P-500W', '', 0, 18, 0, 0, 0, '', '2014-01-01', 0, 1, 1, '', '', '', '', 1),
('CAB04', 2, '', 'Cable de poder', '', '', '', 0, 2.5, 0, 0, 0, '', '2014-01-01', 0, 1, 1, '', '', '', '', 1),
('CAR02', 6, '', 'Mini cargador carro usb', '', '', '', 0, 6, 0, 0, 0, 'Tablets,Celulares', '2014-01-01', 0, 1, 1, '', '', '', '', 1),
('TEC01', 6, '', 'Teclado Tablet Usb', '', '', '', 0, 20, 0, 0, 0, '', '2014-01-01', 0, 1, 1, '', '', '', '', 1),
('CAB05', 7, '', 'Cable usb a micro ', '', '', '', 0, 6, 0, 0, 0, '', '2014-01-01', 0, 1, 1, '', '', '', '', 1),
('6009501220010', 1, '', 'Mini mouse', 'INS', 'XH-05', '', 0, 10, 0, 0, 0, '', '2014-01-01', 0, 1, 1, '', '', '', '', 1),
('DVD02', 2, '', 'DVD doble capa', '', '', '', 0, 1.5, 0, 0, 0, '', '2014-01-01', 0, 1, 1, '', '', '', '', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `MANTENIMIENTO`
--

CREATE TABLE IF NOT EXISTS `MANTENIMIENTO` (
  `CODIGOFACTURAS` bigint(20) NOT NULL,
  `CODIGODESCUENTO` int(11) DEFAULT NULL,
  `USUARIO` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `RUC_CI` varchar(16) COLLATE utf8_unicode_ci DEFAULT NULL,
  `MAN_CODIGOFACTURAS` bigint(20) DEFAULT NULL,
  `RUCSUCURSAL` varchar(16) COLLATE utf8_unicode_ci DEFAULT NULL,
  `NUMEROFACTURA` int(11) DEFAULT NULL,
  `TIPOPAGO` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `TOTAL` float DEFAULT NULL,
  `FECHAEMISION` datetime DEFAULT NULL,
  `FECHAENTREGA` date DEFAULT NULL,
  `ESTADO` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ESTADOPAGO` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `FORMADEPAGO` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `OBSERVACIONES` varchar(1024) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`CODIGOFACTURAS`),
  KEY `FK_ABONOMANTENIMIENTO` (`MAN_CODIGOFACTURAS`),
  KEY `FK_RELATIONSHIP_21` (`RUC_CI`),
  KEY `FK_RELATIONSHIP_44` (`CODIGODESCUENTO`),
  KEY `FK_RELATIONSHIP_53` (`RUCSUCURSAL`),
  KEY `FK_RELATIONSHIP_9` (`USUARIO`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `MENSAJE`
--

CREATE TABLE IF NOT EXISTS `MENSAJE` (
  `CODIGO` bigint(20) NOT NULL,
  `RUC_CI` varchar(16) COLLATE utf8_unicode_ci DEFAULT NULL,
  `USUARIO` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `USU_USUARIO` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `FECHAENVIO` datetime DEFAULT NULL,
  `ASUNTO` varchar(16) COLLATE utf8_unicode_ci DEFAULT NULL,
  `MENSAJE` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ARCHIVO` varchar(256) COLLATE utf8_unicode_ci DEFAULT NULL,
  `FECHAMENSAJE` datetime DEFAULT NULL,
  PRIMARY KEY (`CODIGO`),
  KEY `FK_RELATIONSHIP_32` (`USUARIO`),
  KEY `FK_RELATIONSHIP_34` (`RUC_CI`),
  KEY `FK_RELATIONSHIP_79` (`USU_USUARIO`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `PORTAFOLIOS`
--

CREATE TABLE IF NOT EXISTS `PORTAFOLIOS` (
  `CODIGOPORTAFOLIOS` int(11) NOT NULL,
  `USUARIO` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ARCHIVO` varchar(256) COLLATE utf8_unicode_ci DEFAULT NULL,
  `NOMBRE` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `FECHAPORTAFOLIOS` datetime DEFAULT NULL,
  `DESCRIPCION` varchar(512) COLLATE utf8_unicode_ci DEFAULT NULL,
  `FOTO` varchar(256) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`CODIGOPORTAFOLIOS`),
  KEY `FK_RELATIONSHIP_42` (`USUARIO`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `PRESUPUESTO`
--

CREATE TABLE IF NOT EXISTS `PRESUPUESTO` (
  `CODIGOPRESUPUESTO` int(11) NOT NULL,
  `RUCSUCURSAL` varchar(16) COLLATE utf8_unicode_ci DEFAULT NULL,
  `IMAGEN` varchar(256) COLLATE utf8_unicode_ci DEFAULT NULL,
  `NOMBRE` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `FECHAPRESUPUESTO` date DEFAULT NULL,
  `TOTAL` float DEFAULT NULL,
  `ESTADO` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`CODIGOPRESUPUESTO`),
  KEY `FK_RELATIONSHIP_55` (`RUCSUCURSAL`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `PRODUCTO`
--

CREATE TABLE IF NOT EXISTS `PRODUCTO` (
  `CODIGOPRODUCTO` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `CODIGOPRIMARIO` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `RUCDISTRIBUIDOR` varchar(16) COLLATE utf8_unicode_ci DEFAULT NULL,
  `RUCSUCURSAL` varchar(16) COLLATE utf8_unicode_ci DEFAULT NULL,
  `FECHAINGRESO` date DEFAULT NULL,
  `COSTO` float DEFAULT NULL,
  `ESTADO` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ESTADOVENTA` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `OBSERVACIONES` varchar(1024) COLLATE utf8_unicode_ci DEFAULT NULL,
  `FECHAVENTA` datetime DEFAULT NULL,
  `ESTADOGARANTIA` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `STOCK` int(11) DEFAULT NULL,
  PRIMARY KEY (`CODIGOPRODUCTO`),
  KEY `FK_RELATIONSHIP_1` (`CODIGOPRIMARIO`),
  KEY `FK_RELATIONSHIP_36` (`RUCSUCURSAL`),
  KEY `FK_RELATIONSHIP_93` (`RUCDISTRIBUIDOR`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `PRODUCTO`
--

INSERT INTO `PRODUCTO` (`CODIGOPRODUCTO`, `CODIGOPRIMARIO`, `RUCDISTRIBUIDOR`, `RUCSUCURSAL`, `FECHAINGRESO`, `COSTO`, `ESTADO`, `ESTADOVENTA`, `OBSERVACIONES`, `FECHAVENTA`, `ESTADOGARANTIA`, `STOCK`) VALUES
('47102682151651713525861001', '4710268215165', NULL, '1713525861001', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
('69360142000651713525861001', '6936014200065', NULL, '1713525861001', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
('08291609022271713525861001', '0829160902227', NULL, '1713525861001', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
('08291603998291713525861001', '0829160399829', NULL, '1713525861001', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
('0886980437691713525861001', '088698043769', NULL, '1713525861001', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
('69360142003001713525861001', '6936014200300', NULL, '1713525861001', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
('69360142011091713525861001', '6936014201109', NULL, '1713525861001', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3),
('QJ59822912112401511713525861001', 'QJ5982291211240151', NULL, '1713525861001', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
('13254878222281713525861001', '1325487822228', NULL, '1713525861001', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
('20130624105931713525861001', '2013062410593', NULL, '1713525861001', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
('07406171982181713525861001', '0740617198218', NULL, '1713525861001', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
('06196590004171713525861001', '0619659000417', NULL, '1713525861001', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
('07406171829411713525861001', '0740617182941', NULL, '1713525861001', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
('mm12112900521713525861001', 'mm1211290052', NULL, '1713525861001', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
('06950676288491713525861001', '0695067628849', NULL, '1713525861001', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
('19573599721841713525861001', '1957359972184', NULL, '1713525861001', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4),
('49609999737081713525861001', '4960999973708', NULL, '1713525861001', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3),
('49609999737391713525861001', '4960999973739', NULL, '1713525861001', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
('47102682384851713525861001', '4710268238485', NULL, '1713525861001', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
('47102682353161713525861001', '4710268235316', NULL, '1713525861001', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
('47107281267271713525861001', '4710728126727', NULL, '1713525861001', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
('SM28J601S1713525861001', 'SM28J601S', NULL, '1713525861001', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3),
('88060850917401713525861001', '8806085091740', NULL, '1713525861001', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
('47102682398571713525861001', '4710268239857', NULL, '1713525861001', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
('1730502054', '6935364020071', '1791265912001', '1713525861001', '2014-02-10', 6.4, 'bueno', 'sin vender', '', NULL, 'activo', NULL),
('X1K85750504128', '4710268216865', '1711149805001', '1713525861001', '2014-02-13', 3.85, 'bueno', 'sin vender', '', NULL, 'activo', NULL),
('X1J85201208759', '4710268215165', '0991243844001', '1713525861001', '2014-02-13', 3.15, 'bueno', 'sin vender', '', NULL, 'activo', NULL),
('X1K85750504154', '4710268216865', '1711149805001', '1713525861001', '2014-02-15', 3.15, 'bueno', 'sin vender', '', NULL, 'activo', NULL),
('X1K85750504181', '4710268216865', '1709534976001', '1713525861001', '2014-02-15', 3.85, 'bueno', 'sin vender', '', NULL, 'activo', NULL),
('X1K84962106545', '4710268228011', '1709534976001', '1713525861001', '2014-02-15', 3.85, 'bueno', 'sin vender', '', NULL, 'activo', NULL),
('1710502054', '6935364020071', '1709534976001', '1713525861001', '2014-02-15', 6.4, 'bueno', 'sin vender', '', NULL, 'activo', NULL),
('ZF1674540171', '4710268238485', '1709534976001', '1713525861001', '2014-02-15', 0, 'bueno', 'sin vender', '', NULL, 'activo', NULL),
('ZF3874508377', '4710268238478', '1709534976001', '1713525861001', '2014-02-15', 0, 'bueno', 'sin vender', '', NULL, 'activo', NULL),
('110490101212181713525861001', '11049010121218', NULL, '1713525861001', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
('07168297828351713525861001', '0716829782835', NULL, '1713525861001', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
('23781655396891713525861001', '2378165539689', NULL, '1713525861001', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 5),
('42601135206731713525861001', '4260113520673', NULL, '1713525861001', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3),
('06800797510431713525861001', '0680079751043', NULL, '1713525861001', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
('00379882615121713525861001', '0037988261512', NULL, '1713525861001', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
('69238986578011713525861001', '6923898657801', NULL, '1713525861001', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 5),
('08851700023881713525861001', '0885170002388', NULL, '1713525861001', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
('EST011713525861001', 'EST01', NULL, '1713525861001', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 5),
('CAR011713525861001', 'CAR01', NULL, '1713525861001', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4),
('REP011713525861001', 'REP01', NULL, '1713525861001', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4),
('BAT011713525861001', 'BAT01', NULL, '1713525861001', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
('AUD011713525861001', 'AUD01', NULL, '1713525861001', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 5),
('CAB011713525861001', 'CAB01', NULL, '1713525861001', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 5),
('CABI011713525861001', 'CABI01', NULL, '1713525861001', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
('CAB021713525861001', 'CAB02', NULL, '1713525861001', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
('EST021713525861001', 'EST02', NULL, '1713525861001', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
('TAR011713525861001', 'TAR01', NULL, '1713525861001', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
('CAB031713525861001', 'CAB03', NULL, '1713525861001', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4),
('STC011713525861001', 'STC01', NULL, '1713525861001', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
('TIN011713525861001', 'TIN01', NULL, '1713525861001', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
('TIN021713525861001', 'TIN02', NULL, '1713525861001', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
('TIN031713525861001', 'TIN03', NULL, '1713525861001', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
('TIN041713525861001', 'TIN04', NULL, '1713525861001', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
('1110004811713525861001', '111000481', NULL, '1713525861001', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
('d12080000555681713525861001', 'd1208000055568', NULL, '1713525861001', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
('zf191e046674', '4710268235316', '1709534976001', '1713525861001', '2014-02-20', 0, 'bueno', 'sin vender', '', NULL, 'activo', NULL),
('115q1602986', '6935364050719', '1709534976001', '1713525861001', '2014-02-20', 0, 'bueno', 'sin vender', '', NULL, 'activo', NULL),
('4710268215165', '6935364050719', '1709534976001', '1713525861001', '2014-02-20', 0, 'bueno', 'sin vender', '', NULL, 'activo', NULL),
('115q1602972', '6935364050719', '1709534976001', '1713525861001', '2014-02-20', 0, 'bueno', 'sin vender', '', NULL, 'activo', NULL),
('115Q1602981', '6935364050719', '1709534976001', '1713525861001', '2014-02-20', 0, 'bueno', 'sin vender', '', NULL, 'activo', NULL),
('ZF191E046511', '4710268235316', '1709534976001', '1713525861001', '2014-02-20', 0, 'bueno', 'sin vender', '', NULL, 'activo', NULL),
('CAB041713525861001', 'CAB04', NULL, '1713525861001', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3),
('CAR021713525861001', 'CAR02', NULL, '1713525861001', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3),
('TEC011713525861001', 'TEC01', NULL, '1713525861001', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
('CAB051713525861001', 'CAB05', NULL, '1713525861001', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 5),
('60095012200101713525861001', '6009501220010', NULL, '1713525861001', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
('DVD021713525861001', 'DVD02', NULL, '1713525861001', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `PROYECTO`
--

CREATE TABLE IF NOT EXISTS `PROYECTO` (
  `CODIGOPROYECTO` int(11) NOT NULL,
  `NOMBRE` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `DESCRIPCION` varchar(512) COLLATE utf8_unicode_ci DEFAULT NULL,
  `FECHAINICIO` date DEFAULT NULL,
  `FECHAFIN` date DEFAULT NULL,
  `ESTADO` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `COSTO` float DEFAULT NULL,
  `OBSERVACIONES` varchar(1024) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`CODIGOPROYECTO`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `PUBLICIDAD`
--

CREATE TABLE IF NOT EXISTS `PUBLICIDAD` (
  `CODIGOPUBLICIDAD` int(11) NOT NULL,
  `RUCSUCURSAL` varchar(16) COLLATE utf8_unicode_ci DEFAULT NULL,
  `USUARIO` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `IMAGENGRANDE` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `IMAGENPEQUENIA` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `TITULO` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL,
  `SUBTITULO` varchar(256) COLLATE utf8_unicode_ci DEFAULT NULL,
  `DESCRIPCION` varchar(512) COLLATE utf8_unicode_ci DEFAULT NULL,
  `LINK` varchar(256) COLLATE utf8_unicode_ci DEFAULT NULL,
  `PRIORIDAD` int(11) DEFAULT NULL,
  `ESTADO` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CATEGORIA` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `FECHAPUBLICACION` datetime DEFAULT NULL,
  PRIMARY KEY (`CODIGOPUBLICIDAD`),
  KEY `FK_RELATIONSHIP_94` (`RUCSUCURSAL`),
  KEY `FK_RELATIONSHIP_95` (`USUARIO`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `RECEPCION`
--

CREATE TABLE IF NOT EXISTS `RECEPCION` (
  `CODIGORECEPCION` bigint(20) NOT NULL,
  `RUCSUCURSAL` varchar(16) COLLATE utf8_unicode_ci DEFAULT NULL,
  `SERIEEQUIPO` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `FECHARECEPCION` datetime DEFAULT NULL,
  `AVERIA` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL,
  `TRABAJOREALIZAR` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL,
  `DIAGNOSTICO` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ACCESORIOS` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL,
  `PRESUPUESTO` float DEFAULT NULL,
  `ESTADO` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `OBSERVACIONES` varchar(1024) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`CODIGORECEPCION`),
  KEY `FK_RELATIONSHIP_10` (`SERIEEQUIPO`),
  KEY `FK_RELATIONSHIP_47` (`RUCSUCURSAL`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `REPUESTO`
--

CREATE TABLE IF NOT EXISTS `REPUESTO` (
  `CODIGOREPUESTO` int(11) NOT NULL,
  `RUCSUCURSAL` varchar(16) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CODIGOPRODUCTO` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ESTADO` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `FECHAINGRESOPRODUCTOS` date DEFAULT NULL,
  `OBSERVACIONES` varchar(1024) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`CODIGOREPUESTO`),
  KEY `FK_RELATIONSHIP_37` (`CODIGOPRODUCTO`),
  KEY `FK_RELATIONSHIP_50` (`RUCSUCURSAL`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ROLES`
--

CREATE TABLE IF NOT EXISTS `ROLES` (
  `CODIGOROLES` int(11) NOT NULL,
  `USUARIO` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `RUCSUCURSAL` varchar(16) COLLATE utf8_unicode_ci DEFAULT NULL,
  `NOMBREROL` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `DESCRIPCION` varchar(512) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`CODIGOROLES`),
  KEY `FK_RELATIONSHIP_22` (`USUARIO`),
  KEY `FK_RELATIONSHIP_31` (`RUCSUCURSAL`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `SERVICIO`
--

CREATE TABLE IF NOT EXISTS `SERVICIO` (
  `CODIGOSERVICIO` int(11) NOT NULL,
  `RUCSUCURSAL` varchar(16) COLLATE utf8_unicode_ci DEFAULT NULL,
  `NOMBRE` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `COSTO` float DEFAULT NULL,
  `TIPO` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `PROCEDIMIENTO` varchar(1024) COLLATE utf8_unicode_ci DEFAULT NULL,
  `TIEMPOAPROXIMADO` float DEFAULT NULL,
  `TIEMPORESPUESTA` float DEFAULT NULL,
  `REFERENCIAS` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`CODIGOSERVICIO`),
  KEY `FK_RELATIONSHIP_46` (`RUCSUCURSAL`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `SUCURSAL`
--

CREATE TABLE IF NOT EXISTS `SUCURSAL` (
  `RUCSUCURSAL` varchar(16) COLLATE utf8_unicode_ci NOT NULL,
  `NOMBRE` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `DIRECCION` varchar(256) COLLATE utf8_unicode_ci DEFAULT NULL,
  `TELEFONOPRINCIPAL` varchar(16) COLLATE utf8_unicode_ci DEFAULT NULL,
  `TELEFONOAUXILIAR` varchar(16) COLLATE utf8_unicode_ci DEFAULT NULL,
  `PAGINAWEB` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CORREOELECTRONICO` varchar(256) COLLATE utf8_unicode_ci DEFAULT NULL,
  `PERSONARESPONSABLE` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `OBSERVACIONES` varchar(1024) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`RUCSUCURSAL`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `SUCURSAL`
--

INSERT INTO `SUCURSAL` (`RUCSUCURSAL`, `NOMBRE`, `DIRECCION`, `TELEFONOPRINCIPAL`, `TELEFONOAUXILIAR`, `PAGINAWEB`, `CORREOELECTRONICO`, `PERSONARESPONSABLE`, `OBSERVACIONES`) VALUES
('1713525861001', 'CODESOFT', 'Sagolqui Ascazubi 117 y Bolivar', '2333167', NULL, 'www.codesoft.zz.mu', NULL, 'Patricio Sanchez', 'nada que ver');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `USUARIO`
--

CREATE TABLE IF NOT EXISTS `USUARIO` (
  `USUARIO` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `RUCSUCURSAL` varchar(16) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CLAVE` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `FECHACREACION` datetime DEFAULT NULL,
  `ULTIMAVISTIA` datetime DEFAULT NULL,
  `NUMEROVISITAS` int(11) DEFAULT NULL,
  `ESTADO` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`USUARIO`),
  KEY `FK_RELATIONSHIP_2` (`RUCSUCURSAL`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `VENTA`
--

CREATE TABLE IF NOT EXISTS `VENTA` (
  `CODIGOVENTA` bigint(20) NOT NULL,
  `RUC_CI` varchar(16) COLLATE utf8_unicode_ci DEFAULT NULL,
  `USUARIO` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `VEN_CODIGOVENTA` bigint(20) DEFAULT NULL,
  `RUCSUCURSAL` varchar(16) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CODIGODESCUENTO` int(11) DEFAULT NULL,
  `CODIGOFACTURA` int(11) DEFAULT NULL,
  `TIPOPAGO` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `FORMAPAGO` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `FECHAVENTA` datetime DEFAULT NULL,
  `TOTAL` float DEFAULT NULL,
  `ESTADO` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ESTADODEPAGO` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `OBSERVACIONES` varchar(1024) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`CODIGOVENTA`),
  KEY `FK_ABONOVENTA` (`VEN_CODIGOVENTA`),
  KEY `FK_RELATIONSHIP_28` (`RUC_CI`),
  KEY `FK_RELATIONSHIP_43` (`CODIGODESCUENTO`),
  KEY `FK_RELATIONSHIP_5` (`USUARIO`),
  KEY `FK_RELATIONSHIP_56` (`RUCSUCURSAL`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
