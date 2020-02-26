-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 26-02-2020 a las 16:24:33
-- Versión del servidor: 10.4.11-MariaDB
-- Versión de PHP: 7.4.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `cul-d'ampolla`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cliente`
--

CREATE TABLE `cliente` (
  `id-cliente` int(7) NOT NULL,
  `nombre` varchar(12) NOT NULL,
  `domicilio` int(7) NOT NULL,
  `telefono` int(9) NOT NULL,
  `email` varchar(15) NOT NULL,
  `fecha-inscripcion` date NOT NULL DEFAULT current_timestamp(),
  `recomendado` int(7) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `cliente`
--

INSERT INTO `cliente` (`id-cliente`, `nombre`, `domicilio`, `telefono`, `email`, `fecha-inscripcion`, `recomendado`) VALUES
(1, 'Oriol', 1, 655351524, 'oriol@gmail.com', '2020-02-26', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `colores`
--

CREATE TABLE `colores` (
  `id-color` int(3) NOT NULL,
  `color` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `colores`
--

INSERT INTO `colores` (`id-color`, `color`) VALUES
(2, 'Amarillo'),
(3, 'Azul'),
(5, 'Blanco'),
(6, 'Café'),
(4, 'Negro'),
(1, 'Rojo');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `direccion`
--

CREATE TABLE `direccion` (
  `id-direccion` int(7) NOT NULL,
  `calle` varchar(20) NOT NULL,
  `numero` int(4) NOT NULL,
  `piso` int(3) NOT NULL,
  `puerta` int(3) NOT NULL,
  `pais` varchar(15) NOT NULL,
  `ciudad` int(20) NOT NULL,
  `codigo-postal` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `direccion`
--

INSERT INTO `direccion` (`id-direccion`, `calle`, `numero`, `piso`, `puerta`, `pais`, `ciudad`, `codigo-postal`) VALUES
(1, 'nacio', 65, 2, 1, 'España', 0, 8026),
(2, 'poblenou', 97, 1, 3, 'España', 0, 8026);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empleado`
--

CREATE TABLE `empleado` (
  `id-empleado` int(4) NOT NULL,
  `nombre` varchar(12) NOT NULL,
  `apellidos` varchar(30) NOT NULL,
  `domicilio` int(7) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `empleado`
--

INSERT INTO `empleado` (`id-empleado`, `nombre`, `apellidos`, `domicilio`) VALUES
(1, 'Juan', 'Garzon Paredes', 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `lentes-vendidos`
--

CREATE TABLE `lentes-vendidos` (
  `id-venta` int(8) NOT NULL,
  `empleado` int(4) NOT NULL,
  `lente` int(11) NOT NULL,
  `fecha` date NOT NULL DEFAULT current_timestamp(),
  `comprador` int(7) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `lentes-vendidos`
--

INSERT INTO `lentes-vendidos` (`id-venta`, `empleado`, `lente`, `fecha`, `comprador`) VALUES
(1, 1, 1, '2020-02-26', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `marcas`
--

CREATE TABLE `marcas` (
  `id-marca` int(4) NOT NULL,
  `marca` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `marcas`
--

INSERT INTO `marcas` (`id-marca`, `marca`) VALUES
(1, 'Armani'),
(3, 'Gucci'),
(4, 'Prada'),
(2, 'Vogue');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `monturas`
--

CREATE TABLE `monturas` (
  `id-montura` int(1) NOT NULL,
  `tipo` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `monturas`
--

INSERT INTO `monturas` (`id-montura`, `tipo`) VALUES
(1, 'flotante'),
(3, 'metálica'),
(2, 'plástica');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `proveedor`
--

CREATE TABLE `proveedor` (
  `nif` int(4) NOT NULL,
  `domicilio` int(4) NOT NULL,
  `telefono` int(9) NOT NULL,
  `fax` int(9) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `proveedor`
--

INSERT INTO `proveedor` (`nif`, `domicilio`, `telefono`, `fax`) VALUES
(1, 1, 676301708, 676301706);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ulleres`
--

CREATE TABLE `ulleres` (
  `id-ulleres` int(11) NOT NULL,
  `marca` int(4) NOT NULL,
  `montura` int(1) NOT NULL,
  `color-montura` int(3) NOT NULL,
  `precio` float NOT NULL,
  `graduació-vidre-derecha` varchar(15) NOT NULL,
  `graduació-vidre-izquierda` varchar(15) NOT NULL,
  `color-vidre-izquierda` int(3) NOT NULL,
  `color--vidre-derecha` int(3) NOT NULL,
  `proveedor` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `ulleres`
--

INSERT INTO `ulleres` (`id-ulleres`, `marca`, `montura`, `color-montura`, `precio`, `graduació-vidre-derecha`, `graduació-vidre-izquierda`, `color-vidre-izquierda`, `color--vidre-derecha`, `proveedor`) VALUES
(1, 1, 1, 1, 800, '30', '40', 3, 2, 1);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `cliente`
--
ALTER TABLE `cliente`
  ADD PRIMARY KEY (`id-cliente`),
  ADD UNIQUE KEY `email` (`email`),
  ADD KEY `direccion-fk-domicilio` (`domicilio`);

--
-- Indices de la tabla `colores`
--
ALTER TABLE `colores`
  ADD PRIMARY KEY (`id-color`),
  ADD UNIQUE KEY `color` (`color`);

--
-- Indices de la tabla `direccion`
--
ALTER TABLE `direccion`
  ADD PRIMARY KEY (`id-direccion`);

--
-- Indices de la tabla `empleado`
--
ALTER TABLE `empleado`
  ADD PRIMARY KEY (`id-empleado`),
  ADD KEY `domicilio-fk-direccion` (`domicilio`);

--
-- Indices de la tabla `lentes-vendidos`
--
ALTER TABLE `lentes-vendidos`
  ADD KEY `venta-fk-empleado` (`empleado`),
  ADD KEY `ventas-fk-compradores` (`comprador`),
  ADD KEY `venta-fk-ulleres` (`lente`);

--
-- Indices de la tabla `marcas`
--
ALTER TABLE `marcas`
  ADD PRIMARY KEY (`id-marca`),
  ADD UNIQUE KEY `marca` (`marca`);

--
-- Indices de la tabla `monturas`
--
ALTER TABLE `monturas`
  ADD PRIMARY KEY (`id-montura`),
  ADD UNIQUE KEY `tipo` (`tipo`);

--
-- Indices de la tabla `proveedor`
--
ALTER TABLE `proveedor`
  ADD PRIMARY KEY (`nif`);

--
-- Indices de la tabla `ulleres`
--
ALTER TABLE `ulleres`
  ADD PRIMARY KEY (`id-ulleres`),
  ADD KEY `vidre-derecha-fk-color` (`color--vidre-derecha`),
  ADD KEY `vidre-izquierdo-fk-color` (`color-vidre-izquierda`),
  ADD KEY `tipo-montura-fk-montura` (`montura`),
  ADD KEY `marca-fk-marcas` (`marca`);

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `cliente`
--
ALTER TABLE `cliente`
  ADD CONSTRAINT `direccion-fk-domicilio` FOREIGN KEY (`domicilio`) REFERENCES `direccion` (`id-direccion`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `empleado`
--
ALTER TABLE `empleado`
  ADD CONSTRAINT `domicilio-fk-direccion` FOREIGN KEY (`domicilio`) REFERENCES `direccion` (`id-direccion`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `lentes-vendidos`
--
ALTER TABLE `lentes-vendidos`
  ADD CONSTRAINT `venta-fk-empleado` FOREIGN KEY (`empleado`) REFERENCES `empleado` (`id-empleado`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `venta-fk-ulleres` FOREIGN KEY (`lente`) REFERENCES `ulleres` (`id-ulleres`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `ventas-fk-compradores` FOREIGN KEY (`comprador`) REFERENCES `cliente` (`id-cliente`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `ulleres`
--
ALTER TABLE `ulleres`
  ADD CONSTRAINT `marca-fk-marcas` FOREIGN KEY (`marca`) REFERENCES `marcas` (`id-marca`),
  ADD CONSTRAINT `tipo-montura-fk-montura` FOREIGN KEY (`montura`) REFERENCES `monturas` (`id-montura`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `vidre-derecha-fk-color` FOREIGN KEY (`color--vidre-derecha`) REFERENCES `colores` (`id-color`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `vidre-izquierdo-fk-color` FOREIGN KEY (`color-vidre-izquierda`) REFERENCES `colores` (`id-color`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
