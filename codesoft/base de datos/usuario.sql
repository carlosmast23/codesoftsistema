-- phpMyAdmin SQL Dump
-- version 3.5.2.2
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 22-10-2014 a las 00:31:21
-- Versión del servidor: 5.5.27
-- Versión de PHP: 5.4.7

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `codesoft`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE IF NOT EXISTS `usuario` (
  `USUARIO` varchar(64) NOT NULL,
  `RUCSUCURSAL` varchar(16) DEFAULT NULL,
  `CLAVE` varchar(64) DEFAULT NULL,
  `FECHACREACION` datetime DEFAULT NULL,
  `ULTIMAVISTIA` datetime DEFAULT NULL,
  `NUMEROVISITAS` int(11) DEFAULT NULL,
  `ESTADO` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`USUARIO`),
  KEY `FK_RELATIONSHIP_2` (`RUCSUCURSAL`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`USUARIO`, `RUCSUCURSAL`, `CLAVE`, `FECHACREACION`, `ULTIMAVISTIA`, `NUMEROVISITAS`, `ESTADO`) VALUES
('Angyta', NULL, 'elmassagaz', NULL, NULL, NULL, 'administrador'),
('CARLOS', NULL, 'angelicaespe', NULL, NULL, NULL, 'colaborador'),
('Gonza', NULL, '129', NULL, NULL, NULL, 'colaborador'),
('Ing', NULL, 'danielita', '2014-10-20 00:00:00', NULL, NULL, 'administrador'),
('Suco', NULL, '12345', '2014-10-17 00:00:00', '2014-10-17 00:00:00', NULL, 'colaborador');

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD CONSTRAINT `FK_RELATIONSHIP_2` FOREIGN KEY (`RUCSUCURSAL`) REFERENCES `sucursal` (`RUCSUCURSAL`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
