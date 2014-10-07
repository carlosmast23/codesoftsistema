-- phpMyAdmin SQL Dump
-- version 3.5.2.2
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 07-10-2014 a las 17:59:11
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
-- Estructura de tabla para la tabla `librodiario`
--

CREATE TABLE IF NOT EXISTS `librodiario` (
  `id_libro` int(11) NOT NULL AUTO_INCREMENT,
  `fecha` date NOT NULL,
  `totalIngresos` float NOT NULL,
  `totalEgresos` float NOT NULL,
  `totalCaja` float NOT NULL,
  PRIMARY KEY (`id_libro`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=64 ;

--
-- Volcado de datos para la tabla `librodiario`
--

INSERT INTO `librodiario` (`id_libro`, `fecha`, `totalIngresos`, `totalEgresos`, `totalCaja`) VALUES
(63, '2014-10-05', 100, 0, 90);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `libroitems`
--

CREATE TABLE IF NOT EXISTS `libroitems` (
  `id_Items` int(10) NOT NULL AUTO_INCREMENT,
  `fecha` datetime NOT NULL,
  `cantidad` float NOT NULL,
  `tipo` varchar(25) NOT NULL,
  `comentario` varchar(25) NOT NULL,
  `id_libro` int(11) NOT NULL,
  PRIMARY KEY (`id_Items`),
  KEY `id_libro` (`id_libro`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=532 ;

--
-- Volcado de datos para la tabla `libroitems`
--

INSERT INTO `libroitems` (`id_Items`, `fecha`, `cantidad`, `tipo`, `comentario`, `id_libro`) VALUES
(531, '2014-10-02 00:00:00', 90, 'Ingresos', '', 63);

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `libroitems`
--
ALTER TABLE `libroitems`
  ADD CONSTRAINT `libroitems_ibfk_1` FOREIGN KEY (`id_libro`) REFERENCES `librodiario` (`id_libro`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
