-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 11-08-2023 a las 22:28:28
-- Versión del servidor: 10.4.28-MariaDB
-- Versión de PHP: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `fr_fin_contable`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `fr_comprobantes2`
--

CREATE TABLE `fr_comprobantes2` (
  `comp_ID` bigint(20) UNSIGNED NOT NULL,
  `comp_IDemp` int(11) NOT NULL,
  `comp_serie` varchar(6) NOT NULL,
  `comp_numero` bigint(20) NOT NULL,
  `comp_tipo` varchar(15) NOT NULL,
  `comp_fecha` date NOT NULL,
  `comp_unidad` smallint(5) UNSIGNED NOT NULL,
  `comp_moneda` tinyint(3) UNSIGNED NOT NULL,
  `comp_importe` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Volcado de datos para la tabla `fr_comprobantes2`
--

INSERT INTO `fr_comprobantes2` (`comp_ID`, `comp_IDemp`, `comp_serie`, `comp_numero`, `comp_tipo`, `comp_fecha`, `comp_unidad`, `comp_moneda`, `comp_importe`) VALUES
(1, 1, 'A', 111123456, 'contado', '2023-07-03', 1, 1, 1500);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `fr_empresas2`
--

CREATE TABLE `fr_empresas2` (
  `empre_ID` int(11) NOT NULL,
  `empre_rut` varchar(16) NOT NULL,
  `empre_nomfantasia` varchar(250) NOT NULL,
  `empre_razonsocial` varchar(250) NOT NULL,
  `empre_telefono` varchar(30) NOT NULL,
  `empre_direccion` varchar(80) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Volcado de datos para la tabla `fr_empresas2`
--

INSERT INTO `fr_empresas2` (`empre_ID`, `empre_rut`, `empre_nomfantasia`, `empre_razonsocial`, `empre_telefono`, `empre_direccion`) VALUES
(1, '080123456789', 'TATA', 'Empresa TATA', '55551234', 'Avda. Artigas 987');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `fr_unidades2`
--

CREATE TABLE `fr_unidades2` (
  `unid_ID` smallint(5) UNSIGNED NOT NULL,
  `unid_nicename` varchar(50) NOT NULL,
  `unid_fullname` varchar(255) DEFAULT NULL,
  `unid_tel` varchar(16) DEFAULT NULL,
  `unid_direccion` varchar(100) DEFAULT NULL,
  `unid_estado` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `fr_users`
--

CREATE TABLE `fr_users` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `user_login` varchar(60) NOT NULL,
  `user_pass` varchar(255) NOT NULL,
  `user_nicename` varchar(50) NOT NULL,
  `user_email` varchar(100) NOT NULL,
  `user_display` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_thai_520_w2 NOT NULL,
  `user_status` int(11) NOT NULL,
  `user_other` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Volcado de datos para la tabla `fr_users`
--

INSERT INTO `fr_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_display`, `user_status`, `user_other`) VALUES
(1, 'mferraz@ejercito.mil.uy', '$2y$10$IWI0hMZkBMf4MXFI/yINLOeNek2osV/aFi/oZnsq59.GScRxdSla6', 'Mauricio', 'mferraz@ejercito.mil.uy', 'display', 0, '1');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `fr_comprobantes2`
--
ALTER TABLE `fr_comprobantes2`
  ADD PRIMARY KEY (`comp_ID`);

--
-- Indices de la tabla `fr_empresas2`
--
ALTER TABLE `fr_empresas2`
  ADD PRIMARY KEY (`empre_ID`),
  ADD UNIQUE KEY `empre_rut` (`empre_rut`);

--
-- Indices de la tabla `fr_unidades2`
--
ALTER TABLE `fr_unidades2`
  ADD PRIMARY KEY (`unid_ID`);

--
-- Indices de la tabla `fr_users`
--
ALTER TABLE `fr_users`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `fr_comprobantes2`
--
ALTER TABLE `fr_comprobantes2`
  MODIFY `comp_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `fr_empresas2`
--
ALTER TABLE `fr_empresas2`
  MODIFY `empre_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `fr_unidades2`
--
ALTER TABLE `fr_unidades2`
  MODIFY `unid_ID` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `fr_users`
--
ALTER TABLE `fr_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
