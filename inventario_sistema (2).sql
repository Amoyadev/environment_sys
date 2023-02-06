-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: db
-- Tiempo de generación: 24-11-2022 a las 04:24:12
-- Versión del servidor: 8.0.31
-- Versión de PHP: 8.0.22

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `inventario_sistema`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Departamento`
--

CREATE TABLE `Departamento` (
  `id_departamento` int NOT NULL,
  `nombre_departamento` varchar(45) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci NOT NULL,
  `vigencia_departamento` varchar(80) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci NOT NULL,
  `fecha_anulacion_departamento` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_spanish_ci;

--
-- Volcado de datos para la tabla `Departamento`
--

INSERT INTO `Departamento` (`id_departamento`, `nombre_departamento`, `vigencia_departamento`, `fecha_anulacion_departamento`) VALUES
(1, 'DESARROLLO Y MANTENCIÓN', 'VIGENTE', NULL),
(2, 'CIBERSEGURIDAD', 'VIGENTE', NULL),
(3, 'SOPORTE', 'VIGENTE', NULL),
(4, 'ASEGURAMIENTO CALIDAD', 'VIGENTE', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Hw`
--

CREATE TABLE `Hw` (
  `id_hw` int NOT NULL,
  `id_plataforma` int NOT NULL,
  `ip_hw` varchar(45) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci NOT NULL,
  `url_hw` varchar(45) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL,
  `user_hw` varchar(45) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci NOT NULL,
  `password_hw` varchar(45) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci NOT NULL,
  `puerto_hw` varchar(45) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci NOT NULL,
  `direccion_fisica` varchar(45) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci NOT NULL,
  `vigencia_hw` varchar(80) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci NOT NULL,
  `fecha_anulacion_hw` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Ip`
--

CREATE TABLE `Ip` (
  `id_ip` int NOT NULL,
  `id_sw` int DEFAULT NULL,
  `id_hw` int DEFAULT NULL,
  `ip` varchar(45) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci NOT NULL,
  `puerto` varchar(45) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL,
  `vigencia_sistema` varchar(80) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci NOT NULL,
  `fecha_anulacion_sistema` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_spanish_ci;

--
-- Volcado de datos para la tabla `Ip`
--

INSERT INTO `Ip` (`id_ip`, `id_sw`, `id_hw`, `ip`, `puerto`, `vigencia_sistema`, `fecha_anulacion_sistema`) VALUES
(1, 1, NULL, '10.150.227.103', '8080', 'VIGENTE', NULL),
(2, 2, NULL, '10.150.227.105', '8080', 'VIGENTE', NULL),
(3, 3, NULL, '10.150.227.107', '8080', 'VIGENTE', NULL),
(4, 4, NULL, '10.150.227.108', '8080', 'VIGENTE', NULL),
(5, 5, NULL, '10.150.227.113', '8080', 'VIGENTE', NULL),
(6, 6, NULL, '10.150.227.112', '8080', 'VIGENTE', NULL),
(7, 7, NULL, '10.150.227.114', '8080', 'VIGENTE', NULL),
(8, 2, NULL, '10.150.227.103', '8080', 'VIGENTE', NULL),
(9, 3, NULL, '10.150.227.103', '8080', 'VIGENTE', NULL),
(10, 4, NULL, '10.150.227.103', '8080', 'VIGENTE', NULL),
(11, 5, NULL, '10.150.227.103', '8080', 'VIGENTE', NULL),
(12, 6, NULL, '10.150.227.103', '8080', 'VIGENTE', NULL),
(13, 7, NULL, '10.150.227.103', '8080', 'VIGENTE', NULL),
(14, 8, NULL, '10.150.227.103', '8080', 'VIGENTE', NULL),
(15, 9, NULL, '10.150.227.103', '8080', 'VIGENTE', NULL),
(16, 10, NULL, '10.150.227.103', '8080', 'VIGENTE', NULL),
(17, 11, NULL, '10.150.227.103', '8080', 'VIGENTE', NULL),
(18, 1, NULL, '10.150.227.105', '8080', 'VIGENTE', NULL),
(19, 3, NULL, '10.150.227.105', '8080', 'VIGENTE', NULL),
(20, 4, NULL, '10.150.227.105', '8080', 'VIGENTE', NULL),
(21, 5, NULL, '10.150.227.105', '8080', 'VIGENTE', NULL),
(22, 6, NULL, '10.150.227.105', '8080', 'VIGENTE', NULL),
(23, 7, NULL, '10.150.227.105', '8080', 'VIGENTE', NULL),
(24, 8, NULL, '10.150.227.105', '8080', 'VIGENTE', NULL),
(25, 9, NULL, '10.150.227.105', '8080', 'VIGENTE', NULL),
(26, 10, NULL, '10.150.227.105', '8080', 'VIGENTE', NULL),
(27, 11, NULL, '10.150.227.105', '8080', 'VIGENTE', NULL),
(28, 1, NULL, '10.150.227.107', '8080', 'VIGENTE', NULL),
(29, 2, NULL, '10.150.227.107', '8080', 'VIGENTE', NULL),
(30, 4, NULL, '10.150.227.107', '8080', 'VIGENTE', NULL),
(31, 5, NULL, '10.150.227.107', '8080', 'VIGENTE', NULL),
(32, 6, NULL, '10.150.227.107', '8080', 'VIGENTE', NULL),
(33, 7, NULL, '10.150.227.107', '8080', 'VIGENTE', NULL),
(34, 8, NULL, '10.150.227.107', '8080', 'VIGENTE', NULL),
(35, 9, NULL, '10.150.227.107', '8080', 'VIGENTE', NULL),
(36, 10, NULL, '10.150.227.107', '8080', 'VIGENTE', NULL),
(37, 11, NULL, '10.150.227.107', '8080', 'VIGENTE', NULL),
(38, 1, NULL, '10.150.227.108', '8080', 'VIGENTE', NULL),
(39, 2, NULL, '10.150.227.108', '8080', 'VIGENTE', NULL),
(40, 3, NULL, '10.150.227.108', '8080', 'VIGENTE', NULL),
(41, 5, NULL, '10.150.227.108', '8080', 'VIGENTE', NULL),
(42, 6, NULL, '10.150.227.108', '8080', 'VIGENTE', NULL),
(43, 7, NULL, '10.150.227.108', '8080', 'VIGENTE', NULL),
(44, 8, NULL, '10.150.227.108', '8080', 'VIGENTE', NULL),
(45, 9, NULL, '10.150.227.108', '8080', 'VIGENTE', NULL),
(46, 10, NULL, '10.150.227.108', '8080', 'VIGENTE', NULL),
(47, 11, NULL, '10.150.227.108', '8080', 'VIGENTE', NULL),
(48, 1, NULL, '10.150.227.113', '8080', 'VIGENTE', NULL),
(49, 2, NULL, '10.150.227.113', '8080', 'VIGENTE', NULL),
(50, 3, NULL, '10.150.227.113', '8080', 'VIGENTE', NULL),
(51, 4, NULL, '10.150.227.113', '8080', 'VIGENTE', NULL),
(52, 6, NULL, '10.150.227.113', '8080', 'VIGENTE', NULL),
(53, 7, NULL, '10.150.227.113', '8080', 'VIGENTE', NULL),
(54, 8, NULL, '10.150.227.113', '8080', 'VIGENTE', NULL),
(55, 9, NULL, '10.150.227.113', '8080', 'VIGENTE', NULL),
(56, 10, NULL, '10.150.227.113', '8080', 'VIGENTE', NULL),
(57, 11, NULL, '10.150.227.113', '8080', 'VIGENTE', NULL),
(58, 1, NULL, '10.150.227.112', '8080', 'VIGENTE', NULL),
(59, 2, NULL, '10.150.227.112', '8080', 'VIGENTE', NULL),
(60, 3, NULL, '10.150.227.112', '8080', 'VIGENTE', NULL),
(61, 4, NULL, '10.150.227.112', '8080', 'VIGENTE', NULL),
(62, 5, NULL, '10.150.227.112', '8080', 'VIGENTE', NULL),
(63, 7, NULL, '10.150.227.112', '8080', 'VIGENTE', NULL),
(64, 8, NULL, '10.150.227.112', '8080', 'VIGENTE', NULL),
(65, 9, NULL, '10.150.227.112', '8080', 'VIGENTE', NULL),
(66, 10, NULL, '10.150.227.112', '8080', 'VIGENTE', NULL),
(67, 11, NULL, '10.150.227.112', '8080', 'VIGENTE', NULL),
(68, 1, NULL, '10.150.227.114', '8080', 'VIGENTE', NULL),
(69, 2, NULL, '10.150.227.114', '8080', 'VIGENTE', NULL),
(70, 3, NULL, '10.150.227.114', '8080', 'VIGENTE', NULL),
(71, 4, NULL, '10.150.227.114', '8080', 'VIGENTE', NULL),
(72, 5, NULL, '10.150.227.114', '8080', 'VIGENTE', NULL),
(73, 6, NULL, '10.150.227.114', '8080', 'VIGENTE', NULL),
(74, 10, NULL, '10.150.227.114', '8080', 'VIGENTE', NULL),
(75, 8, NULL, '10.150.227.114', '8080', 'VIGENTE', NULL),
(76, 9, NULL, '10.150.227.114', '8080', 'VIGENTE', NULL),
(77, 11, NULL, '10.150.227.114', '8080', 'VIGENTE', NULL),
(78, 12, NULL, '10.150.227.114', '8080', 'VIGENTE', NULL),
(79, 12, NULL, '10.150.227.114', '8080', 'VIGENTE', NULL),
(80, 12, NULL, '10.150.227.114', '8080', 'VIGENTE', NULL),
(81, 12, NULL, '10.150.227.114', '8080', 'VIGENTE', NULL),
(82, 12, NULL, '10.150.227.114', '8080', 'VIGENTE', NULL),
(83, 12, NULL, '10.150.227.114', '8080', 'VIGENTE', NULL),
(84, 12, NULL, '10.150.227.114', '8080', 'VIGENTE', NULL),
(85, 12, NULL, '10.150.227.114', '8080', 'VIGENTE', NULL),
(86, 12, NULL, '10.150.227.114', '8080', 'VIGENTE', NULL),
(87, 12, NULL, '10.150.227.114', '8080', 'VIGENTE', NULL),
(88, 12, NULL, '10.150.227.114', '8080', 'VIGENTE', NULL),
(89, 12, NULL, '10.150.227.114', '8080', 'VIGENTE', NULL),
(90, 12, NULL, '10.150.227.114', '8080', 'VIGENTE', NULL),
(91, 13, NULL, '10.150.227.112', '8080', 'VIGENTE', NULL),
(92, 13, NULL, '10.150.227.112', '8080', 'VIGENTE', NULL),
(93, 13, NULL, '10.150.227.112', '8080', 'VIGENTE', NULL),
(94, 13, NULL, '10.150.227.112', '8080', 'VIGENTE', NULL),
(95, 13, NULL, '10.150.227.112', '8080', 'VIGENTE', NULL),
(96, 13, NULL, '10.150.227.112', '8080', 'VIGENTE', NULL),
(97, 13, NULL, '10.150.227.112', '8080', 'VIGENTE', NULL),
(98, 13, NULL, '10.150.227.112', '8080', 'VIGENTE', NULL),
(99, 13, NULL, '10.150.227.112', '8080', 'VIGENTE', NULL),
(100, 13, NULL, '10.150.227.112', '8080', 'VIGENTE', NULL),
(101, 13, NULL, '10.150.227.112', '8080', 'VIGENTE', NULL),
(102, 13, NULL, '10.150.227.112', '8080', 'VIGENTE', NULL),
(103, 13, NULL, '10.150.227.112', '8080', 'VIGENTE', NULL),
(104, 14, NULL, '10.150.227.113', '8080', 'VIGENTE', NULL),
(105, 14, NULL, '10.150.227.113', '8080', 'VIGENTE', NULL),
(106, 14, NULL, '10.150.227.113', '8080', 'VIGENTE', NULL),
(107, 14, NULL, '10.150.227.113', '8080', 'VIGENTE', NULL),
(108, 14, NULL, '10.150.227.113', '8080', 'VIGENTE', NULL),
(109, 14, NULL, '10.150.227.113', '8080', 'VIGENTE', NULL),
(110, 14, NULL, '10.150.227.113', '8080', 'VIGENTE', NULL),
(111, 14, NULL, '10.150.227.113', '8080', 'VIGENTE', NULL),
(112, 14, NULL, '10.150.227.113', '8080', 'VIGENTE', NULL),
(113, 14, NULL, '10.150.227.113', '8080', 'VIGENTE', NULL),
(114, 14, NULL, '10.150.227.113', '8080', 'VIGENTE', NULL),
(115, 14, NULL, '10.150.227.113', '8080', 'VIGENTE', NULL),
(116, 14, NULL, '10.150.227.113', '8080', 'VIGENTE', NULL),
(117, 15, NULL, '10.150.227.108', '8080', 'VIGENTE', NULL),
(118, 15, NULL, '10.150.227.108', '8080', 'VIGENTE', NULL),
(119, 15, NULL, '10.150.227.108', '8080', 'VIGENTE', NULL),
(120, 15, NULL, '10.150.227.108', '8080', 'VIGENTE', NULL),
(121, 15, NULL, '10.150.227.108', '8080', 'VIGENTE', NULL),
(122, 15, NULL, '10.150.227.108', '8080', 'VIGENTE', NULL),
(123, 15, NULL, '10.150.227.108', '8080', 'VIGENTE', NULL),
(124, 15, NULL, '10.150.227.108', '8080', 'VIGENTE', NULL),
(125, 15, NULL, '10.150.227.108', '8080', 'VIGENTE', NULL),
(126, 15, NULL, '10.150.227.108', '8080', 'VIGENTE', NULL),
(127, 15, NULL, '10.150.227.108', '8080', 'VIGENTE', NULL),
(128, 15, NULL, '10.150.227.108', '8080', 'VIGENTE', NULL),
(129, 15, NULL, '10.150.227.108', '8080', 'VIGENTE', NULL),
(130, 15, NULL, '10.150.227.108', '8080', 'VIGENTE', NULL),
(131, 16, NULL, '10.150.227.107', '8080', 'VIGENTE', NULL),
(132, 16, NULL, '10.150.227.107', '8080', 'VIGENTE', NULL),
(133, 16, NULL, '10.150.227.107', '8080', 'VIGENTE', NULL),
(134, 16, NULL, '10.150.227.107', '8080', 'VIGENTE', NULL),
(135, 16, NULL, '10.150.227.107', '8080', 'VIGENTE', NULL),
(136, 16, NULL, '10.150.227.107', '8080', 'VIGENTE', NULL),
(137, 16, NULL, '10.150.227.107', '8080', 'VIGENTE', NULL),
(138, 16, NULL, '10.150.227.107', '8080', 'VIGENTE', NULL),
(139, 16, NULL, '10.150.227.107', '8080', 'VIGENTE', NULL),
(140, 16, NULL, '10.150.227.107', '8080', 'VIGENTE', NULL),
(141, 16, NULL, '10.150.227.107', '8080', 'VIGENTE', NULL),
(142, 16, NULL, '10.150.227.107', '8080', 'VIGENTE', NULL),
(143, 16, NULL, '10.150.227.107', '8080', 'VIGENTE', NULL),
(144, 17, NULL, '10.150.227.105', '8080', 'VIGENTE', NULL),
(145, 17, NULL, '10.150.227.105', '8080', 'VIGENTE', NULL),
(146, 17, NULL, '10.150.227.105', '8080', 'VIGENTE', NULL),
(147, 17, NULL, '10.150.227.105', '8080', 'VIGENTE', NULL),
(148, 17, NULL, '10.150.227.105', '8080', 'VIGENTE', NULL),
(149, 17, NULL, '10.150.227.105', '8080', 'VIGENTE', NULL),
(150, 17, NULL, '10.150.227.105', '8080', 'VIGENTE', NULL),
(151, 17, NULL, '10.150.227.105', '8080', 'VIGENTE', NULL),
(152, 17, NULL, '10.150.227.105', '8080', 'VIGENTE', NULL),
(153, 17, NULL, '10.150.227.105', '8080', 'VIGENTE', NULL),
(154, 17, NULL, '10.150.227.105', '8080', 'VIGENTE', NULL),
(155, 17, NULL, '10.150.227.105', '8080', 'VIGENTE', NULL),
(156, 17, NULL, '10.150.227.105', '8080', 'VIGENTE', NULL),
(157, 17, NULL, '10.150.227.105', '8080', 'VIGENTE', NULL),
(158, 18, NULL, '10.150.227.103', '8080', 'VIGENTE', NULL),
(159, 18, NULL, '10.150.227.103', '8080', 'VIGENTE', NULL),
(160, 18, NULL, '10.150.227.103', '8080', 'VIGENTE', NULL),
(161, 18, NULL, '10.150.227.103', '8080', 'VIGENTE', NULL),
(162, 18, NULL, '10.150.227.103', '8080', 'VIGENTE', NULL),
(163, 18, NULL, '10.150.227.103', '8080', 'VIGENTE', NULL),
(164, 18, NULL, '10.150.227.103', '8080', 'VIGENTE', NULL),
(165, 18, NULL, '10.150.227.103', '8080', 'VIGENTE', NULL),
(166, 18, NULL, '10.150.227.103', '8080', 'VIGENTE', NULL),
(167, 18, NULL, '10.150.227.103', '8080', 'VIGENTE', NULL),
(168, 18, NULL, '10.150.227.103', '8080', 'VIGENTE', NULL),
(169, 18, NULL, '10.150.227.103', '8080', 'VIGENTE', NULL),
(170, 18, NULL, '10.150.227.103', '8080', 'VIGENTE', NULL),
(171, 25, NULL, '10.77.13.13', '22', 'VIGENTE', NULL),
(172, 26, NULL, '10.77.13.13', '22', 'VIGENTE', NULL),
(173, 27, NULL, '10.77.13.13', '22', 'VIGENTE', NULL),
(174, 28, NULL, '10.77.13.13', '22', 'VIGENTE', NULL),
(175, 29, NULL, '10.77.13.13', '22', 'VIGENTE', NULL),
(176, 30, NULL, '10.77.13.13', '22', 'VIGENTE', NULL),
(177, 31, NULL, '10.77.13.13', '22', 'VIGENTE', NULL),
(178, 32, NULL, '10.77.13.13', '22', 'VIGENTE', NULL),
(179, 33, NULL, '10.77.13.13', '22', 'VIGENTE', NULL),
(181, 35, NULL, '10.150.227.95', '80', 'VIGENTE', NULL),
(182, 36, NULL, '10.150.227.95', '80', 'VIGENTE', NULL),
(183, 37, NULL, '10.150.227.95', '80', 'VIGENTE', NULL),
(184, 38, NULL, '10.150.227.95', '80', 'VIGENTE', NULL),
(185, 39, NULL, '10.150.227.95', '80', 'VIGENTE', NULL),
(186, 40, NULL, '10.150.227.95', '80', 'VIGENTE', NULL),
(187, 41, NULL, '10.150.227.95', '80', 'VIGENTE', NULL),
(188, 42, NULL, '10.150.227.95', '80', 'VIGENTE', NULL),
(189, 43, NULL, '10.150.227.95', '80', 'VIGENTE', NULL),
(190, 44, NULL, '10.150.227.95', '80', 'VIGENTE', NULL),
(191, 36, NULL, '10.150.226.96', '80', 'VIGENTE', NULL),
(192, 46, NULL, '10.150.226.96', '80', 'VIGENTE', NULL),
(193, 40, NULL, '10.150.226.96', '80', 'VIGENTE', NULL),
(194, 39, NULL, '10.150.226.96', '80', 'VIGENTE', NULL),
(195, 37, NULL, '10.150.226.96', '80', 'VIGENTE', NULL),
(196, 38, NULL, '10.150.226.96', '80', 'VIGENTE', NULL),
(197, 41, NULL, '10.150.226.96', '80', 'VIGENTE', NULL),
(198, 47, NULL, '10.150.226.96', '80', 'VIGENTE', NULL),
(199, 48, NULL, '10.150.226.96', '80', 'VIGENTE', NULL),
(200, 49, NULL, '10.150.226.96', '80', 'VIGENTE', NULL),
(201, 50, NULL, '10.150.226.96', '80', 'VIGENTE', NULL),
(202, 51, NULL, '10.150.226.96', '80', 'VIGENTE', NULL),
(205, 54, NULL, '10.150.226.96', '80', 'VIGENTE', NULL),
(207, 56, NULL, '10.77.12.34', '8080', 'VIGENTE', NULL),
(213, 69, NULL, '10.150.234.115', '80', 'VIGENTE', NULL),
(214, 71, NULL, '10.88.4.13', NULL, 'VIGENTE', NULL),
(216, 74, NULL, '10.88.4.13', NULL, 'VIGENTE', NULL),
(218, 76, NULL, '10.150.227.181', NULL, 'VIGENTE', NULL),
(219, 82, NULL, '10.150.227.109', NULL, 'VIGENTE', NULL),
(221, 84, NULL, '10.150.226.202', '8001', 'VIGENTE', NULL),
(222, 85, NULL, '10.150.227.95', NULL, 'VIGENTE', NULL),
(223, 87, NULL, '10.150.227.148', NULL, 'VIGENTE', NULL),
(224, 90, NULL, '10.88.5.133\n', NULL, 'VIGENTE', NULL),
(225, 91, NULL, '10.88.4.19', NULL, 'VIGENTE', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Modulo`
--

CREATE TABLE `Modulo` (
  `id_modulo` int NOT NULL,
  `id_sistema` int NOT NULL,
  `nombre_modulo` varchar(45) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci NOT NULL,
  `vigencia_modulo` varchar(80) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci NOT NULL,
  `fecha_anulacion_modulo` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_spanish_ci;

--
-- Volcado de datos para la tabla `Modulo`
--

INSERT INTO `Modulo` (`id_modulo`, `id_sistema`, `nombre_modulo`, `vigencia_modulo`, `fecha_anulacion_modulo`) VALUES
(1, 1, 'ABONOS Y OTROS INGRESOS', 'VIGENTE', NULL),
(2, 1, 'BONO DE RECONOCIMIENTO', 'VIGENTE', NULL),
(3, 1, 'COBRANZA', 'VIGENTE', NULL),
(4, 1, 'CONTROL DE ACCESO Y PERFILES', 'VIGENTE', NULL),
(5, 1, 'DEUDA', 'VIGENTE', NULL),
(6, 1, 'HISTORIAL PREVISIONAL', 'VIGENTE', NULL),
(7, 1, 'INTERFAZ CONTABLE', 'VIGENTE', NULL),
(8, 1, 'NORMATIVAS', 'VIGENTE', NULL),
(9, 1, 'RECAUDACION', 'VIGENTE', NULL),
(10, 1, 'PERSONA', 'VIGENTE', NULL),
(11, 1, 'TESORERIA', 'VIGENTE', NULL),
(12, 2, 'STJ COTIZACION', 'VIGENTE', NULL),
(13, 2, 'REBAJA Y EXENCION DE SALUD', 'VIGENTE', NULL),
(14, 2, 'PBS', 'VIGENTE', NULL),
(15, 2, 'PAGO CUOTA MORTUORIA', 'VIGENTE', NULL),
(16, 2, 'PAGO BENEFICIO CUIDADORES', 'VIGENTE', NULL),
(17, 2, 'PAGO AFPER', 'VIGENTE', NULL),
(18, 2, 'BONO POR HIJO', 'VIGENTE', NULL),
(19, 2, 'BONO DOCENTE JUBILADOS', 'VIGENTE', NULL),
(20, 2, 'BODAS DE ORO', 'VIGENTE', NULL),
(21, 2, 'ASIGNACION POR MUERTE / PAGO EN EL EXTRANJERO', 'VIGENTE', NULL),
(22, 2, 'APS INTERNO', 'VIGENTE', NULL),
(23, 2, 'APS EXTERNO', 'VIGENTE', NULL),
(24, 2, 'SDM', 'VIGENTE', NULL),
(25, 4, 'TABLAS', 'VIGENTE', NULL),
(26, 4, 'SUF', 'VIGENTE', NULL),
(27, 4, 'SICE', 'VIGENTE', NULL),
(28, 4, 'SDM', 'VIGENTE', NULL),
(29, 4, 'SCEP', 'VIGENTE', NULL),
(30, 4, 'PREVISIONAL', 'VIGENTE', NULL),
(31, 4, 'CONCESION', 'VIGENTE', NULL),
(32, 4, 'CHISOL', 'VIGENTE', NULL),
(33, 4, 'CDP', 'VIGENTE', NULL),
(34, 4, '3S ONLINE', 'VIGENTE', NULL),
(35, 3, 'STJ', 'VIGENTE', NULL),
(36, 3, 'SPS Y BPH', 'VIGENTE', NULL),
(37, 3, 'REBAJA INVALIDEZ', 'VIGENTE', NULL),
(38, 3, 'ELEGILIDAD', 'VIGENTE', NULL),
(39, 3, 'BODAS DE ORO', 'VIGENTE', NULL),
(40, 3, 'PFP', 'VIGENTE', NULL),
(41, 3, 'RESOLUCION RECONOCIMIENTO CF', 'VIGENTE', NULL),
(42, 3, 'FIDELIZACION', 'VIGENTE', NULL),
(43, 3, 'FACILITA PAGOS', 'VIGENTE', NULL),
(44, 3, 'FACILITA DOCUMENTOS', 'VIGENTE', NULL),
(45, 3, 'FACILITA CONSULTA AFPER', 'VIGENTE', NULL),
(46, 3, 'FACILITA AUTOCONSULTA', 'VIGENTE', NULL),
(49, 3, 'AF INGRESO SOLICITUD', 'VIGENTE', NULL),
(50, 3, 'ASIMU', 'VIGENTE', NULL),
(51, 2, 'PAGO RETROACTIVO EMPLEADORES', 'VIGENTE', NULL),
(53, 3, 'SALGO EMPLEADOR', 'VIGENTE', NULL),
(54, 3, 'DOCUMENTOS', 'VIGENTE', NULL),
(55, 3, 'PORTAL DE PAGO', 'VIGENTE', NULL),
(56, 5, 'VIUDAS', 'VIGENTE', NULL),
(57, 5, 'VALECH 2', 'VIGENTE', NULL),
(58, 5, 'BENEFICIO VIUDEZ', 'VIGENTE', NULL),
(59, 5, 'PORTAL DE PAGO', 'VIGENTE', NULL),
(60, 5, 'CONTACTO IPS', 'VIGENTE', NULL),
(61, 5, 'HONORARIOS', 'VIGENTE', NULL),
(62, 5, 'LIBRO DE COMPRAS', 'VIGENTE', NULL),
(63, 5, 'MATRIZ DE RIESGOS', 'VIGENTE', NULL),
(64, 5, 'RELOJ VIRTUAL', 'VIGENTE', NULL),
(65, 5, 'STI', 'VIGENTE', NULL),
(66, 5, 'CORRESPONDENCIA', 'VIGENTE', NULL),
(68, 5, 'APORTE FAMILIAR PERMANENTE (AFPER)', 'VIGENTE', NULL),
(69, 1, 'CORE AGIL', 'VIGENTE', NULL),
(71, 3, 'SITIO PERSONAS', 'VIGENTE', NULL),
(73, 3, 'COBRANZA JUDICIAL', 'VIGENTE', NULL),
(74, 3, 'GARANTIA ESTATAL', 'VIGENTE', NULL),
(75, 3, 'PRO EMPLEO', 'VIGENTE', NULL),
(76, 1, 'HERACLES AGIL', 'VIGENTE', NULL),
(77, 1, 'REFORMA AGIL', 'VIGENTE', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Plataforma`
--

CREATE TABLE `Plataforma` (
  `id_plataforma` int NOT NULL,
  `id_modulo` int NOT NULL,
  `id_submodulo` int DEFAULT NULL,
  `id_sistema` int NOT NULL,
  `nombre_plataforma` varchar(45) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci NOT NULL,
  `tipo_ambiente_plataforma` varchar(45) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci NOT NULL,
  `tipo_servidor_plataforma` varchar(45) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci NOT NULL,
  `vigencia_plataforma` varchar(45) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci NOT NULL,
  `fecha_anulacion_plataforma` date DEFAULT NULL,
  `tipo_motor_bd` varchar(45) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL,
  `nombre_esquema_bd` varchar(45) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL,
  `nombre_instancia_bd` varchar(45) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_spanish_ci;

--
-- Volcado de datos para la tabla `Plataforma`
--

INSERT INTO `Plataforma` (`id_plataforma`, `id_modulo`, `id_submodulo`, `id_sistema`, `nombre_plataforma`, `tipo_ambiente_plataforma`, `tipo_servidor_plataforma`, `vigencia_plataforma`, `fecha_anulacion_plataforma`, `tipo_motor_bd`, `nombre_esquema_bd`, `nombre_instancia_bd`) VALUES
(1, 1, NULL, 1, 'ABONOS Y OTROS INGRESOS', 'QA', 'APLICATIVO', 'VIGENTE', NULL, NULL, NULL, NULL),
(2, 2, NULL, 1, 'BONO DE RECONOCIMIENTO', 'QA', 'APLICATIVO', 'VIGENTE', NULL, NULL, NULL, NULL),
(3, 3, NULL, 1, 'COBRANZA', 'QA', 'APLICATIVO', 'VIGENTE', NULL, NULL, NULL, NULL),
(4, 4, NULL, 1, 'CONTROL DE ACCESO Y PERFILES', 'QA', 'APLICATIVO', 'VIGENTE', NULL, NULL, NULL, NULL),
(5, 5, NULL, 1, 'DEUDA', 'QA', 'APLICATIVO', 'VIGENTE', NULL, NULL, NULL, NULL),
(6, 6, NULL, 1, 'HISTORIAL PREVISIONAL', 'QA', 'APLICATIVO', 'VIGENTE', NULL, NULL, NULL, NULL),
(7, 7, NULL, 1, 'INTERFAZ CONTABLE', 'QA', 'APLICATIVO', 'VIGENTE', NULL, NULL, NULL, NULL),
(8, 8, NULL, 1, 'NORMATIVAS', 'QA', 'APLICATIVO', 'VIGENTE', NULL, NULL, NULL, NULL),
(9, 9, NULL, 1, 'RECAUDACION', 'QA', 'APLICATIVO', 'VIGENTE', NULL, NULL, NULL, NULL),
(10, 10, NULL, 1, 'PERSONA', 'QA', 'APLICATIVO', 'VIGENTE', NULL, NULL, NULL, NULL),
(11, 11, NULL, 1, 'TESORERIA', 'QA', 'APLICATIVO', 'VIGENTE', NULL, NULL, NULL, NULL),
(12, 12, NULL, 2, 'STJ COTIZACION', 'QA', 'APLICATIVO', 'VIGENTE', NULL, NULL, NULL, NULL),
(13, 13, NULL, 2, 'REBAJA Y EXENCION DE SALUD', 'QA', 'APLICATIVO', 'VIGENTE', NULL, NULL, NULL, NULL),
(14, 14, NULL, 2, 'PBS', 'QA', 'APLICATIVO', 'VIGENTE', NULL, NULL, NULL, NULL),
(15, 15, NULL, 2, 'PAGO CUOTA MORTUORIA', 'QA', 'APLICATIVO', 'VIGENTE', NULL, NULL, NULL, NULL),
(16, 16, NULL, 2, 'PAGO BENEFICIO CUIDADORES', 'QA', 'APLICATIVO', 'VIGENTE', NULL, NULL, NULL, NULL),
(17, 17, NULL, 2, 'PAGO AFPER', 'QA', 'APLICATIVO', 'VIGENTE', NULL, NULL, NULL, NULL),
(18, 18, NULL, 2, 'BONO POR HIJO', 'QA', 'APLICATIVO', 'VIGENTE', NULL, NULL, NULL, NULL),
(19, 19, NULL, 2, 'BONO DOCENTE JUBILADOS', 'QA', 'APLICATIVO', 'VIGENTE', NULL, NULL, NULL, NULL),
(20, 20, NULL, 2, 'BODAS DE ORO', 'QA', 'APLICATIVO', 'VIGENTE', NULL, NULL, NULL, NULL),
(21, 21, NULL, 2, 'ASIGNACION POR MUERTE / PAGO EN EL EXTRANJERO', 'QA', 'APLICATIVO', 'VIGENTE', NULL, NULL, NULL, NULL),
(22, 22, NULL, 2, 'APS INTERNO', 'QA', 'APLICATIVO', 'VIGENTE', NULL, NULL, NULL, NULL),
(23, 23, NULL, 2, 'APS EXTERNO', 'QA', 'APLICATIVO', 'VIGENTE', NULL, NULL, NULL, NULL),
(24, 24, NULL, 2, 'SDM', 'QA', 'APLICATIVO', 'VIGENTE', NULL, NULL, NULL, NULL),
(25, 25, NULL, 4, 'TABLAS', 'QA', 'BATCH', 'VIGENTE', NULL, NULL, NULL, NULL),
(26, 26, NULL, 4, 'SUF', 'QA', 'BATCH', 'VIGENTE', NULL, NULL, NULL, NULL),
(27, 27, NULL, 4, 'SICE', 'QA', 'BATCH', 'VIGENTE', NULL, NULL, NULL, NULL),
(28, 28, NULL, 4, 'SDM', 'QA', 'BATCH', 'VIGENTE', NULL, NULL, NULL, NULL),
(29, 29, NULL, 4, 'SCEP', 'QA', 'BATCH', 'VIGENTE', NULL, NULL, NULL, NULL),
(30, 30, NULL, 4, 'PREVISIONAL', 'QA', 'BATCH', 'VIGENTE', NULL, NULL, NULL, NULL),
(31, 31, NULL, 4, 'CONCESION', 'QA', 'BATCH', 'VIGENTE', NULL, NULL, NULL, NULL),
(32, 32, NULL, 4, 'CHISOL', 'QA', 'BATCH', 'VIGENTE', NULL, NULL, NULL, NULL),
(33, 33, NULL, 4, 'CDP', 'QA', 'BATCH', 'VIGENTE', NULL, NULL, NULL, NULL),
(34, 34, NULL, 4, '3S ONLINE', 'QA', 'APLICATIVO', 'VIGENTE', NULL, NULL, NULL, NULL),
(35, 35, 1, 3, 'STJ CONTRATACION', 'QA', 'APLICATIVO', 'VIGENTE', NULL, NULL, NULL, NULL),
(36, 35, 2, 3, 'STJ COTIZACION', 'QA', 'APLICATIVO', 'VIGENTE', NULL, NULL, NULL, NULL),
(37, 36, 3, 3, 'PBSI', 'QA', 'APLICATIVO', 'VIGENTE', NULL, NULL, NULL, NULL),
(38, 36, 4, 3, 'APSI', 'QA', 'APLICATIVO', 'VIGENTE', NULL, NULL, NULL, NULL),
(39, 36, 5, 3, 'APSV', 'QA', 'APLICATIVO', 'VIGENTE', NULL, NULL, NULL, NULL),
(40, 36, 6, 3, 'PBSV', 'QA', 'APLICATIVO', 'VIGENTE', NULL, NULL, NULL, NULL),
(41, 36, 7, 3, 'BPH', 'QA', 'APLICATIVO', 'VIGENTE', NULL, NULL, NULL, NULL),
(42, 37, NULL, 3, 'REBAJA INVALIDEZ', 'QA', 'APLICATIVO', 'VIGENTE', NULL, NULL, NULL, NULL),
(43, 38, NULL, 3, 'ELEGILIDAD', 'QA', 'APLICATIVO', 'VIGENTE', NULL, NULL, NULL, NULL),
(44, 39, NULL, 3, 'BODAS DE ORO', 'QA', 'APLICATIVO', 'VIGENTE', NULL, NULL, NULL, NULL),
(45, 40, NULL, 3, 'PFP', 'QA', 'APLICATIVO', 'VIGENTE', NULL, NULL, NULL, NULL),
(46, 41, NULL, 3, 'RESOLUCION RECONOCIMIENTO CF', 'QA', 'APLICATIVO', 'VIGENTE', NULL, NULL, NULL, NULL),
(47, 42, NULL, 3, 'FIDELIZACION', 'QA', 'APLICATIVO', 'VIGENTE', NULL, NULL, NULL, NULL),
(48, 43, NULL, 3, 'FACILITA PAGOS', 'QA', 'APLICATIVO', 'VIGENTE', NULL, NULL, NULL, NULL),
(49, 44, NULL, 3, 'FACILITA DOCUMENTOS', 'QA', 'APLICATIVO', 'VIGENTE', NULL, NULL, NULL, NULL),
(50, 45, NULL, 3, 'FACILITA CONSULTA AFPER', 'QA', 'APLICATIVO', 'VIGENTE', NULL, NULL, NULL, NULL),
(51, 46, NULL, 3, 'FACILITA AUTOCONSULTA', 'QA', 'APLICATIVO', 'VIGENTE', NULL, NULL, NULL, NULL),
(54, 49, NULL, 3, 'AF INGRESO SOLICITUD', 'QA', 'APLICATIVO', 'VIGENTE', NULL, NULL, NULL, NULL),
(55, 50, NULL, 3, 'ASIMU', 'QA', 'APLICATIVO', 'VIGENTE', NULL, NULL, NULL, NULL),
(56, 51, NULL, 2, 'PAGO RETROACTIVO EMPLEADORES', 'QA', 'APLICATIVO', 'VIGENTE', NULL, NULL, NULL, NULL),
(58, 35, 2, 3, 'STJ COTIZACION', 'QA', 'APLICATIVO', 'VIGENTE', NULL, NULL, NULL, NULL),
(59, 53, NULL, 3, 'SALGO EMPLEADOR', 'QA', 'APLICATIVO', 'VIGENTE', NULL, NULL, NULL, NULL),
(60, 54, NULL, 3, 'DOCUMENTOS', 'QA', 'APLICATIVO', 'VIGENTE', NULL, NULL, NULL, NULL),
(61, 55, NULL, 5, 'PORTAL DE PAGO', 'QA', 'APLICATIVO', 'VIGENTE', NULL, NULL, NULL, NULL),
(62, 56, NULL, 5, 'VIUDAS', 'QA', 'APLICATIVO', 'VIGENTE', NULL, NULL, NULL, NULL),
(63, 57, NULL, 5, 'VALECH 2', 'QA', 'APLICATIVO', 'VIGENTE', NULL, NULL, NULL, NULL),
(64, 58, NULL, 5, 'BENEFICIO VIUDEZ', 'QA', 'APLICATIVO', 'VIGENTE', NULL, NULL, NULL, NULL),
(65, 59, NULL, 5, 'PORTAL DE PAGO EXPRESS', 'QA', 'APLICATIVO', 'VIGENTE', NULL, NULL, NULL, NULL),
(66, 59, NULL, 5, 'PORTAL DE PAGO EXPRESS', 'QA', 'BASE DE DATOS', 'VIGENTE', NULL, NULL, NULL, NULL),
(67, 59, NULL, 5, 'PORTAL DE PAGO', 'QA', 'APLICATIVO', 'VIGENTE', NULL, NULL, NULL, NULL),
(68, 59, NULL, 5, 'PORTAL DE PAGO', 'QA', 'BASE DE DATOS', 'VIGENTE', NULL, NULL, NULL, NULL),
(69, 59, NULL, 5, 'BPM', 'QA', 'APLICATIVO', 'VIGENTE', NULL, NULL, NULL, NULL),
(70, 59, NULL, 5, 'BPM', 'QA', 'BASE DE DATOS', 'VIGENTE', NULL, NULL, NULL, NULL),
(71, 60, NULL, 5, 'CONTACTO IPS', 'QA', 'APLICATIVO', 'VIGENTE', NULL, NULL, NULL, NULL),
(72, 61, NULL, 5, 'HONORARIOS', 'QA', 'APLICATIVO', 'VIGENTE', NULL, NULL, NULL, NULL),
(73, 62, NULL, 5, 'LIBRO DE COMPRAS', 'QA', 'APLICATIVO', 'VIGENTE', NULL, NULL, NULL, NULL),
(74, 63, NULL, 5, 'MATRIZ DE RIESGO', 'QA', 'APLICATIVO', 'VIGENTE', NULL, NULL, NULL, NULL),
(75, 64, NULL, 5, 'RELOJ VIRTUAL', 'QA', 'APLICATIVO', 'VIGENTE', NULL, NULL, NULL, NULL),
(76, 65, NULL, 5, 'STI', 'QA', 'APLICATIVO', 'VIGENTE', NULL, NULL, NULL, NULL),
(77, 66, NULL, 5, 'CORRESPONDENCIA', 'QA', 'APLICATIVO', 'VIGENTE', NULL, NULL, NULL, NULL),
(79, 68, NULL, 5, 'APORTE FAMILIAR PERMANENTE (AFPER)', 'QA', 'APLICATIVO', 'VIGENTE', NULL, NULL, NULL, NULL),
(80, 69, NULL, 1, 'CORE AGIL', 'QA', 'BATCH', 'VIGENTE', NULL, NULL, NULL, NULL),
(81, 69, NULL, 1, 'CORE AGIL', 'QA', 'FTP', 'VIGENTE', NULL, NULL, NULL, NULL),
(82, 71, NULL, 3, 'SITIO PERSONAS', 'QA', 'APLICATIVO', 'VIGENTE', NULL, NULL, NULL, NULL),
(84, 73, NULL, 3, 'COBRANZA JUDICIAL', 'QA', 'APLICATIVO', 'VIGENTE', NULL, NULL, NULL, NULL),
(85, 74, NULL, 3, 'GARANTIA ESTATAL', 'QA', 'APLICATIVO', 'VIGENTE', NULL, NULL, NULL, NULL),
(86, 75, NULL, 3, 'PRO EMPLEO', 'QA', 'APLICATIVO', 'VIGENTE', NULL, NULL, NULL, NULL),
(87, 75, NULL, 3, 'PRO EMPLEO', 'QA', 'BASE DE DATOS', 'VIGENTE', NULL, NULL, NULL, NULL),
(88, 75, NULL, 3, 'PRO EMPLEO', 'QA', 'ETL', 'VIGENTE', NULL, NULL, NULL, NULL),
(89, 76, NULL, 1, 'HERACLES AGIL (CORE)', 'QA', 'APP', 'VIGENTE', NULL, NULL, NULL, NULL),
(90, 77, NULL, 1, 'REFORMA AGIL (CORE)', 'QA', 'APP', 'VIGENTE', NULL, NULL, NULL, NULL),
(91, 68, NULL, 5, 'APORTE FAMILIAR PERMANENTE (AFPER)', 'QA', 'BDD', 'VIGENTE', NULL, 'ORACLE', 'ORCL', 'ADM_AFPER_PROD');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Responsable`
--

CREATE TABLE `Responsable` (
  `id_responsable` int NOT NULL,
  `id_departamento` int NOT NULL,
  `nombre_responsable` varchar(45) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL,
  `vigencia_responsable` varchar(80) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci NOT NULL,
  `fecha_anulacion_responsable` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Responsable_sistema`
--

CREATE TABLE `Responsable_sistema` (
  `id_responsable` int NOT NULL,
  `id_sistema` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Sistema`
--

CREATE TABLE `Sistema` (
  `id_sistema` int NOT NULL,
  `nombre_sistema` varchar(45) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci NOT NULL,
  `vigencia_sistema` varchar(80) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci NOT NULL,
  `fecha_anulacion_sistema` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_spanish_ci;

--
-- Volcado de datos para la tabla `Sistema`
--

INSERT INTO `Sistema` (`id_sistema`, `nombre_sistema`, `vigencia_sistema`, `fecha_anulacion_sistema`) VALUES
(1, 'HERACLES AGIL', 'VIGENTE', NULL),
(2, 'REFORMA AGIL', 'VIGENTE', NULL),
(3, 'REFORMA', 'VIGENTE', NULL),
(4, 'LEGADOS', 'VIGENTE', NULL),
(5, 'SATELITES', 'VIGENTE', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Submodulo`
--

CREATE TABLE `Submodulo` (
  `id_submodulo` int NOT NULL,
  `id_modulo` int NOT NULL,
  `nombre_submodulo` varchar(45) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci NOT NULL,
  `vigencia_submodulo` varchar(80) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci NOT NULL,
  `fecha_anulacion_submodulo` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_spanish_ci;

--
-- Volcado de datos para la tabla `Submodulo`
--

INSERT INTO `Submodulo` (`id_submodulo`, `id_modulo`, `nombre_submodulo`, `vigencia_submodulo`, `fecha_anulacion_submodulo`) VALUES
(1, 35, 'STJ CONTRATACION', 'VIGENTE', NULL),
(2, 35, 'STJ COTIZACION', 'VIGENTE', NULL),
(3, 36, 'PBSI', 'VIGENTE', NULL),
(4, 36, 'APSI', 'VIGENTE', NULL),
(5, 36, 'APSV', 'VIGENTE', NULL),
(6, 36, 'PBSV', 'VIGENTE', NULL),
(7, 35, 'STJ COTIZACION 2', 'VIGENTE', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Sw`
--

CREATE TABLE `Sw` (
  `id_sw` int NOT NULL,
  `id_plataforma` int NOT NULL,
  `endpoint_sw` varchar(45) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL,
  `tipo_sw` varchar(45) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL,
  `url_sw` varchar(45) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL,
  `user_sw` varchar(45) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL,
  `password_sw` varchar(45) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL,
  `vigencia_sw` varchar(80) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL,
  `fecha_anulacion_hw` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_spanish_ci;

--
-- Volcado de datos para la tabla `Sw`
--

INSERT INTO `Sw` (`id_sw`, `id_plataforma`, `endpoint_sw`, `tipo_sw`, `url_sw`, `user_sw`, `password_sw`, `vigencia_sw`, `fecha_anulacion_hw`) VALUES
(1, 1, NULL, NULL, NULL, 'synapsis', 'synapsis', 'VIGENTE', NULL),
(2, 2, NULL, NULL, NULL, 'synapsis', 'synapsis', 'VIGENTE', NULL),
(3, 3, NULL, NULL, NULL, 'synapsis', 'synapsis', 'VIGENTE', NULL),
(4, 4, NULL, NULL, NULL, 'synapsis', 'synapsis', 'VIGENTE', NULL),
(5, 5, NULL, NULL, NULL, 'synapsis', 'synapsis', 'VIGENTE', NULL),
(6, 6, NULL, NULL, NULL, 'synapsis', 'synapsis', 'VIGENTE', NULL),
(7, 7, NULL, NULL, NULL, 'synapsis', 'synapsis', 'VIGENTE', NULL),
(8, 8, NULL, NULL, NULL, 'synapsis', 'synapsis', 'VIGENTE', NULL),
(9, 9, NULL, NULL, NULL, 'synapsis', 'synapsis', 'VIGENTE', NULL),
(10, 10, NULL, NULL, NULL, 'synapsis', 'synapsis', 'VIGENTE', NULL),
(11, 11, NULL, NULL, NULL, 'synapsis', 'synapsis', 'VIGENTE', NULL),
(12, 12, NULL, NULL, NULL, NULL, NULL, 'VIGENTE', NULL),
(13, 13, NULL, NULL, NULL, NULL, NULL, 'VIGENTE', NULL),
(14, 14, NULL, NULL, NULL, NULL, NULL, 'VIGENTE', NULL),
(15, 15, NULL, NULL, NULL, NULL, NULL, 'VIGENTE', NULL),
(16, 16, NULL, NULL, NULL, NULL, NULL, 'VIGENTE', NULL),
(17, 17, NULL, NULL, NULL, NULL, NULL, 'VIGENTE', NULL),
(18, 18, NULL, NULL, NULL, NULL, NULL, 'VIGENTE', NULL),
(19, 19, NULL, NULL, NULL, NULL, NULL, 'VIGENTE', NULL),
(20, 20, NULL, NULL, NULL, NULL, NULL, 'VIGENTE', NULL),
(21, 21, NULL, NULL, NULL, NULL, NULL, 'VIGENTE', NULL),
(22, 22, NULL, NULL, NULL, NULL, NULL, 'VIGENTE', NULL),
(23, 23, NULL, NULL, NULL, NULL, NULL, 'VIGENTE', NULL),
(24, 24, NULL, NULL, NULL, NULL, NULL, 'VIGENTE', NULL),
(25, 25, NULL, NULL, NULL, 'explinp', 'explinp', 'VIGENTE', NULL),
(26, 26, NULL, NULL, NULL, 'explinp', 'explinp', 'VIGENTE', NULL),
(27, 27, NULL, NULL, NULL, 'explinp', 'explinp', 'VIGENTE', NULL),
(28, 28, NULL, NULL, NULL, 'explinp', 'explinp', 'VIGENTE', NULL),
(29, 29, NULL, NULL, NULL, 'explinp', 'explinp', 'VIGENTE', NULL),
(30, 30, NULL, NULL, NULL, 'explinp', 'explinp', 'VIGENTE', NULL),
(31, 32, NULL, NULL, NULL, 'explinp', 'explinp', 'VIGENTE', NULL),
(32, 32, NULL, NULL, NULL, 'explinp', 'explinp', 'VIGENTE', NULL),
(33, 33, NULL, NULL, NULL, 'explinp', 'explinp', 'VIGENTE', NULL),
(35, 35, NULL, NULL, 'http://10.150.227.95/index.htm', 'ipsi', 'pollito800', 'VIGENTE', NULL),
(36, 36, NULL, NULL, 'http://10.150.227.95/index.htm', 'ipsi', 'pollito800', 'VIGENTE', NULL),
(37, 37, NULL, NULL, 'http://10.150.227.95/index.htm', 'ipsi', 'pollito800', 'VIGENTE', NULL),
(38, 38, NULL, NULL, 'http://10.150.227.95/index.htm', 'ipsi', 'pollito800', 'VIGENTE', NULL),
(39, 39, NULL, NULL, 'http://10.150.227.95/index.htm', 'ipsi', 'pollito800', 'VIGENTE', NULL),
(40, 40, NULL, NULL, 'http://10.150.227.95/index.htm', 'ipsi', 'pollito800', 'VIGENTE', NULL),
(41, 41, NULL, NULL, 'http://10.150.227.95/index.htm', 'ipsi', 'pollito800', 'VIGENTE', NULL),
(42, 42, NULL, NULL, 'http://10.150.227.95/index.htm', 'ipsi', 'pollito800', 'VIGENTE', NULL),
(43, 43, NULL, NULL, 'http://10.150.227.95/index.htm', 'ipsi', 'pollito800', 'VIGENTE', NULL),
(44, 44, NULL, NULL, 'http://10.150.227.95/index.htm', 'ipsi', 'pollito800', 'VIGENTE', NULL),
(45, 45, NULL, NULL, 'http://wlsqa1.ips.gob.cl:8001/PFP/login.xhtml', NULL, NULL, 'VIGENTE', NULL),
(46, 46, NULL, NULL, 'http://10.150.227.95/index.htm', 'ipsi', 'pollito800', 'VIGENTE', NULL),
(47, 47, NULL, NULL, NULL, NULL, NULL, 'VIGENTE', NULL),
(48, 48, NULL, NULL, NULL, NULL, NULL, 'VIGENTE', NULL),
(49, 49, NULL, NULL, NULL, NULL, NULL, 'VIGENTE', NULL),
(50, 50, NULL, NULL, NULL, NULL, NULL, 'VIGENTE', NULL),
(51, 51, NULL, NULL, NULL, NULL, NULL, 'VIGENTE', NULL),
(54, 54, NULL, NULL, NULL, NULL, NULL, 'VIGENTE', NULL),
(56, 56, NULL, NULL, 'http://10.77.12.34:8080/site/inicio.html', 'CREDENCIAL AD', 'CREDENCIAL AD', 'VIGENTE', NULL),
(62, 62, NULL, NULL, 'http://qaley20405.intranet.inp.cl', NULL, NULL, 'VIGENTE', NULL),
(64, 64, NULL, NULL, 'http://qaley20405.intranet.inp.cl', NULL, NULL, 'VIGENTE', NULL),
(69, 69, NULL, NULL, 'http://10.150.234.115/bpm/workspace/', 'OCS', 'ocssit123', 'VIGENTE', NULL),
(71, 71, NULL, NULL, 'qacontactoips.inp.cl', NULL, NULL, 'VIGENTE', NULL),
(74, 74, NULL, NULL, NULL, 'jlhernandec', NULL, 'VIGENTE', NULL),
(76, 76, NULL, NULL, NULL, NULL, NULL, 'VIGENTE', NULL),
(77, 77, NULL, NULL, 'http://desacentralcorres.intranet.inp.cl', NULL, NULL, 'VIGENTE', NULL),
(82, 82, NULL, NULL, NULL, 'ignacion', 'familiar', 'VIGENTE', NULL),
(84, 84, NULL, NULL, 'http://10.150.226.202:8001/IpsEnLinea/', NULL, NULL, 'VIGENTE', NULL),
(85, 85, NULL, NULL, 'http://10.150.227.95/index.htm', 'ipsi', 'pollito800', 'VIGENTE', NULL),
(86, 86, 'app-cobjudi-qa.ips.gob.cl', NULL, 'https://app-cobjudi-qa.ips.gob.cl/inicio', NULL, NULL, 'VIGENTE', NULL),
(87, 87, NULL, NULL, 'qaprocesosjava.ips.gob.cl', 'gestatal', NULL, 'VIGENTE', NULL),
(88, 86, NULL, 'frontend', 'https://pacsfront-qa.azurewebsites.net', NULL, NULL, 'VIGENTE', NULL),
(89, 86, NULL, 'backend', 'https://pacsback-qa.azurewebsites.net', NULL, NULL, 'VIGENTE', NULL),
(90, 88, NULL, 'ETL', NULL, NULL, NULL, 'VIGENTE', NULL),
(91, 87, NULL, 'BASE DE DATOS', NULL, NULL, NULL, 'VIGENTE', NULL),
(106, 91, NULL, NULL, 'qa-db.aportefamiliar.cl', NULL, NULL, 'VIGENTE', NULL);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `Departamento`
--
ALTER TABLE `Departamento`
  ADD PRIMARY KEY (`id_departamento`);

--
-- Indices de la tabla `Hw`
--
ALTER TABLE `Hw`
  ADD PRIMARY KEY (`id_hw`),
  ADD KEY `fk_hw_plataforma` (`id_plataforma`);

--
-- Indices de la tabla `Ip`
--
ALTER TABLE `Ip`
  ADD PRIMARY KEY (`id_ip`),
  ADD KEY `fk_ip_sw` (`id_sw`);

--
-- Indices de la tabla `Modulo`
--
ALTER TABLE `Modulo`
  ADD PRIMARY KEY (`id_modulo`),
  ADD KEY `fk_modulo_sistema` (`id_sistema`);

--
-- Indices de la tabla `Plataforma`
--
ALTER TABLE `Plataforma`
  ADD PRIMARY KEY (`id_plataforma`),
  ADD KEY `fk_plataforma_submodulo` (`id_submodulo`),
  ADD KEY `fk_plataforma_modulo` (`id_modulo`),
  ADD KEY `fk_plataforma_sistema` (`id_sistema`);

--
-- Indices de la tabla `Responsable`
--
ALTER TABLE `Responsable`
  ADD PRIMARY KEY (`id_responsable`),
  ADD KEY `fk_responsable_departamento` (`id_departamento`);

--
-- Indices de la tabla `Responsable_sistema`
--
ALTER TABLE `Responsable_sistema`
  ADD PRIMARY KEY (`id_responsable`),
  ADD KEY `id_sistema` (`id_sistema`);

--
-- Indices de la tabla `Sistema`
--
ALTER TABLE `Sistema`
  ADD PRIMARY KEY (`id_sistema`);

--
-- Indices de la tabla `Submodulo`
--
ALTER TABLE `Submodulo`
  ADD PRIMARY KEY (`id_submodulo`),
  ADD KEY `fk_submodulo_modulo` (`id_modulo`);

--
-- Indices de la tabla `Sw`
--
ALTER TABLE `Sw`
  ADD PRIMARY KEY (`id_sw`),
  ADD KEY `fk_sw_plataforma` (`id_plataforma`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `Departamento`
--
ALTER TABLE `Departamento`
  MODIFY `id_departamento` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `Hw`
--
ALTER TABLE `Hw`
  MODIFY `id_hw` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `Ip`
--
ALTER TABLE `Ip`
  MODIFY `id_ip` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=226;

--
-- AUTO_INCREMENT de la tabla `Modulo`
--
ALTER TABLE `Modulo`
  MODIFY `id_modulo` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=78;

--
-- AUTO_INCREMENT de la tabla `Plataforma`
--
ALTER TABLE `Plataforma`
  MODIFY `id_plataforma` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=92;

--
-- AUTO_INCREMENT de la tabla `Responsable`
--
ALTER TABLE `Responsable`
  MODIFY `id_responsable` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `Sistema`
--
ALTER TABLE `Sistema`
  MODIFY `id_sistema` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `Submodulo`
--
ALTER TABLE `Submodulo`
  MODIFY `id_submodulo` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `Sw`
--
ALTER TABLE `Sw`
  MODIFY `id_sw` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=107;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `Hw`
--
ALTER TABLE `Hw`
  ADD CONSTRAINT `fk_hw_plataforma` FOREIGN KEY (`id_plataforma`) REFERENCES `Plataforma` (`id_plataforma`);

--
-- Filtros para la tabla `Ip`
--
ALTER TABLE `Ip`
  ADD CONSTRAINT `fk_ip_sw` FOREIGN KEY (`id_sw`) REFERENCES `Sw` (`id_sw`);

--
-- Filtros para la tabla `Modulo`
--
ALTER TABLE `Modulo`
  ADD CONSTRAINT `fk_modulo_sistema` FOREIGN KEY (`id_sistema`) REFERENCES `Sistema` (`id_sistema`);

--
-- Filtros para la tabla `Plataforma`
--
ALTER TABLE `Plataforma`
  ADD CONSTRAINT `fk_plataforma_modulo` FOREIGN KEY (`id_modulo`) REFERENCES `Modulo` (`id_modulo`),
  ADD CONSTRAINT `fk_plataforma_sistema` FOREIGN KEY (`id_sistema`) REFERENCES `Sistema` (`id_sistema`),
  ADD CONSTRAINT `fk_plataforma_submodulo` FOREIGN KEY (`id_submodulo`) REFERENCES `Submodulo` (`id_submodulo`);

--
-- Filtros para la tabla `Responsable`
--
ALTER TABLE `Responsable`
  ADD CONSTRAINT `fk_responsable_departamento` FOREIGN KEY (`id_departamento`) REFERENCES `Departamento` (`id_departamento`);

--
-- Filtros para la tabla `Responsable_sistema`
--
ALTER TABLE `Responsable_sistema`
  ADD CONSTRAINT `fk_responsable_sistema_responsable` FOREIGN KEY (`id_responsable`) REFERENCES `Responsable` (`id_responsable`),
  ADD CONSTRAINT `Responsable_sistema_ibfk_1` FOREIGN KEY (`id_sistema`) REFERENCES `Sistema` (`id_sistema`);

--
-- Filtros para la tabla `Submodulo`
--
ALTER TABLE `Submodulo`
  ADD CONSTRAINT `fk_submodulo_modulo` FOREIGN KEY (`id_modulo`) REFERENCES `Modulo` (`id_modulo`);

--
-- Filtros para la tabla `Sw`
--
ALTER TABLE `Sw`
  ADD CONSTRAINT `fk_sw_plataforma` FOREIGN KEY (`id_plataforma`) REFERENCES `Plataforma` (`id_plataforma`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
