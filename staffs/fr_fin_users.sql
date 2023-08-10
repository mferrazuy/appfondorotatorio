-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 03-08-2023 a las 20:37:09
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
-- Estructura de tabla para la tabla `fr-users`
--

CREATE TABLE `fr-users` (
  `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_login` varchar(60) NOT NULL,
  `user_pass` varchar(255) NOT NULL,
  `user_nicename` varchar(50) NOT NULL,
  `user_email` varchar(100) NOT NULL,
  `user_display` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_thai_520_w2 NOT NULL,
  `user_status` int(11) NOT NULL,
  `user_other` varchar(50) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
CREATE TABLE `fr_fin_contable`.`fr_comprobantes` (
  `comp_ID` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT, 
  `comp_serie` VARCHAR(6) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL , 
  `comp_numero` BIGINT NOT NULL , 
  `comp_tipo` VARCHAR(15) NOT NULL 
  ) ENGINE = InnoDB; 

CREATE TABLE `fr_fin_contable`.`fr_comprobantes2` (
  `comp_ID` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT, 
  `comp_serie` VARCHAR(6) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL ,
   `comp_numero` BIGINT NOT NULL , 
   `comp_tipo` VARCHAR(15) NOT NULL , 
   `comp_fecha` DATE NOT NULL , 
   `comp_unidad` SMALLINT UNSIGNED NOT NULL , 
   `comp_moneda` TINYINT UNSIGNED NOT NULL , 
   `comp_importe` INT NOT NULL,
   PRIMARY KEY (`comp_ID`) 
) ENGINE = InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci; 

CREATE TABLE `fr_fin_contable`.`fr_unidades2` (
  `unid_ID` SMALLINT UNSIGNED NOT NULL AUTO_INCREMENT, 
  `unid_nicename` VARCHAR(50) NOT NULL , 
  `unid_fullname` VARCHAR(255) NULL , 
  `unid_tel` VARCHAR(16) NULL , 
  `unid_direccion` VARCHAR(100) NULL , 
  `unid_estado` TINYINT NULL,
  PRIMARY KEY (`unid_ID`)  
) ENGINE = InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Volcado de datos para la tabla `fr-users`
--

INSERT INTO `fr-users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_display`, `user_status`, `user_other`) VALUES
(''1'', 'mferraz', '1234', '', 'mferraz@ejercito.mil.uy', 'Tte. 1º Mauricio Ferraz', 1, '');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `fr-users`
--
ALTER TABLE `fr-users`
  ADD PRIMARY KEY (`ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
