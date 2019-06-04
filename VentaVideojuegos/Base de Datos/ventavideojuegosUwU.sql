-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 04-06-2019 a las 23:20:34
-- Versión del servidor: 10.1.40-MariaDB
-- Versión de PHP: 7.3.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `ventavideojuegos`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pago`
--

CREATE TABLE `pago` (
  `codigopago` bigint(20) NOT NULL,
  `conceptopago` varchar(100) NOT NULL,
  `totalpago` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `producto`
--

CREATE TABLE `producto` (
  `codigoproducto` bigint(20) NOT NULL,
  `tipoproducto` varchar(50) NOT NULL,
  `Precio` double NOT NULL,
  `descripcionproducto` varchar(100) NOT NULL,
  `cantidadstock` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `registrodeventa`
--

CREATE TABLE `registrodeventa` (
  `codigoventa` bigint(20) NOT NULL,
  `cantidad` int(11) DEFAULT NULL,
  `fechaventa` date DEFAULT NULL,
  `codigoreserva` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `reservar`
--

CREATE TABLE `reservar` (
  `codigoreserva` bigint(20) NOT NULL,
  `fechareserva` date DEFAULT NULL,
  `cantidadarticulos` int(11) DEFAULT NULL,
  `idusuario` bigint(20) DEFAULT NULL,
  `codigoproducto` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `idusuario` bigint(20) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `apellido` varchar(50) NOT NULL,
  `direccionelectronica` varchar(50) NOT NULL,
  `nickname` varchar(20) NOT NULL,
  `contra` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ventapago`
--

CREATE TABLE `ventapago` (
  `idventapago` bigint(20) NOT NULL,
  `codigoventa` bigint(20) DEFAULT NULL,
  `codigopago` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `pago`
--
ALTER TABLE `pago`
  ADD PRIMARY KEY (`codigopago`);

--
-- Indices de la tabla `producto`
--
ALTER TABLE `producto`
  ADD PRIMARY KEY (`codigoproducto`);

--
-- Indices de la tabla `registrodeventa`
--
ALTER TABLE `registrodeventa`
  ADD PRIMARY KEY (`codigoventa`),
  ADD KEY `fk_codigoreserva` (`codigoreserva`);

--
-- Indices de la tabla `reservar`
--
ALTER TABLE `reservar`
  ADD PRIMARY KEY (`codigoreserva`),
  ADD KEY `fk_idusuario` (`idusuario`),
  ADD KEY `fk_codigoproducto` (`codigoproducto`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`idusuario`);

--
-- Indices de la tabla `ventapago`
--
ALTER TABLE `ventapago`
  ADD PRIMARY KEY (`idventapago`),
  ADD KEY `fk_codigoventa` (`codigoventa`),
  ADD KEY `fk_codigopago` (`codigopago`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `pago`
--
ALTER TABLE `pago`
  MODIFY `codigopago` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `producto`
--
ALTER TABLE `producto`
  MODIFY `codigoproducto` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `registrodeventa`
--
ALTER TABLE `registrodeventa`
  MODIFY `codigoventa` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `reservar`
--
ALTER TABLE `reservar`
  MODIFY `codigoreserva` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `usuario`
--
ALTER TABLE `usuario`
  MODIFY `idusuario` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `ventapago`
--
ALTER TABLE `ventapago`
  MODIFY `idventapago` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `registrodeventa`
--
ALTER TABLE `registrodeventa`
  ADD CONSTRAINT `fk_codigoreserva` FOREIGN KEY (`codigoreserva`) REFERENCES `reservar` (`codigoreserva`);

--
-- Filtros para la tabla `reservar`
--
ALTER TABLE `reservar`
  ADD CONSTRAINT `fk_codigoproducto` FOREIGN KEY (`codigoproducto`) REFERENCES `producto` (`codigoproducto`),
  ADD CONSTRAINT `fk_idusuario` FOREIGN KEY (`idusuario`) REFERENCES `usuario` (`idusuario`);

--
-- Filtros para la tabla `ventapago`
--
ALTER TABLE `ventapago`
  ADD CONSTRAINT `fk_codigopago` FOREIGN KEY (`codigopago`) REFERENCES `pago` (`codigopago`),
  ADD CONSTRAINT `fk_codigoventa` FOREIGN KEY (`codigoventa`) REFERENCES `registrodeventa` (`codigoventa`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
