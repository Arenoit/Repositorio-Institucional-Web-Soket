-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Servidor: sql300.infinityfree.com
-- Tiempo de generación: 17-02-2024 a las 21:31:11
-- Versión del servidor: 10.4.17-MariaDB
-- Versión de PHP: 7.2.22

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `if0_34663650_bdacademy`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `acaautor`
--

CREATE TABLE `acaautor` (
  `autor_cod_autor` int(11) NOT NULL,
  `autor_nom_autor` varchar(100) NOT NULL,
  `autor_cod_projc` int(11) NOT NULL,
  `autor_cod_tutor` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `acaautor`
--

INSERT INTO `acaautor` (`autor_cod_autor`, `autor_nom_autor`, `autor_cod_projc`, `autor_cod_tutor`) VALUES
(1, 'David Jiménez', 1, 1),
(2, 'Aillon Cuenca, Daysi Estefania', 2, 2),
(3, 'Chiluisa Chuquitarco, Johanna Elizabeth', 3, 3),
(4, 'Abata Pilatasig, Mauricio Orlando', 4, 4),
(5, 'Chicaiza Arias, Santiago Wladimir', 5, 5),
(6, 'Caisaguano Sangopanta, Eliana Jissela', 6, 6),
(7, 'Gaspata Quisaguano, Silvia Maribel', 7, 7),
(8, 'Loor Chila, Bella Valeria', 8, 8),
(9, 'Chicaiza Molina, Mercy Fernanda', 9, 9),
(11, 'UYTUY', 11, 11),
(22, 'XXXXX', 22, 17);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `acacarer`
--

CREATE TABLE `acacarer` (
  `carer_cod_carer` int(11) NOT NULL,
  `carer_nom_carer` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `acacarer`
--

INSERT INTO `acacarer` (`carer_cod_carer`, `carer_nom_carer`) VALUES
(1, 'Desarrollo de software'),
(2, 'Marketing y gestión de negocios'),
(4, 'Administración financiera'),
(5, 'Contabilidad y asesoría tributaria'),
(6, 'Diseño grafico y multimedia'),
(7, 'Gastronomía'),
(8, 'Seguridad e higiene y trabajo');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `acachats`
--

CREATE TABLE `acachats` (
  `chats_cod_chats` int(11) NOT NULL,
  `chats_time_chats` datetime NOT NULL,
  `chats_imsg_chats` int(255) NOT NULL,
  `chats_omsg_chats` int(255) NOT NULL,
  `chats_read_chats` int(11) NOT NULL,
  `chats_msg_chats` char(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `acachats`
--

INSERT INTO `acachats` (`chats_cod_chats`, `chats_time_chats`, `chats_imsg_chats`, `chats_omsg_chats`, `chats_read_chats`, `chats_msg_chats`) VALUES
(38, '2024-02-14 10:06:45', 1, 4, 0, 'asdas'),
(39, '2024-02-14 10:06:46', 1, 4, 0, 'sad'),
(40, '2024-02-14 10:06:47', 1, 4, 0, 'asd'),
(41, '2024-02-14 10:06:56', 1, 4, 0, 'sads'),
(42, '2024-02-14 10:07:12', 1, 4, 0, '1111'),
(50, '2024-02-14 13:57:21', 4, 1, 0, 'Djdjjf'),
(51, '2024-02-14 13:57:26', 4, 1, 0, 'Jdjfkfkkf'),
(52, '2024-02-14 13:57:41', 4, 1, 0, 'Lalalala'),
(54, '2024-02-14 21:12:39', 1, 4, 0, 'fufu'),
(55, '2024-02-14 21:16:38', 1, 4, 0, 'porfa'),
(56, '2024-02-14 21:16:52', 1, 4, 0, 'no funciona'),
(57, '2024-02-14 21:18:13', 1, 4, 0, 'listo'),
(58, '2024-02-14 21:19:09', 1, 4, 0, 'fifi'),
(59, '2024-02-14 21:20:34', 1, 4, 0, 'jaja'),
(60, '2024-02-14 21:29:19', 1, 4, 0, 'yaaa'),
(61, '2024-02-14 21:42:56', 1, 4, 0, '1111'),
(70, '2024-02-15 10:31:42', 1, 11, 0, 'asd'),
(71, '2024-02-15 10:31:56', 1, 11, 0, 'asdasasas'),
(72, '2024-02-15 10:32:22', 1, 11, 0, 'hola jajaj'),
(73, '2024-02-15 10:54:37', 1, 7, 0, 'ya pues mijo'),
(74, '2024-02-15 10:58:30', 1, 4, 0, 'fufu'),
(75, '2024-02-15 10:59:50', 1, 4, 0, 'ffff'),
(77, '2024-02-15 11:08:36', 1, 11, 0, 'fufu'),
(78, '2024-02-15 11:10:47', 1, 7, 0, 'hola'),
(79, '2024-02-15 11:21:46', 1, 4, 0, 'ya listo'),
(80, '2024-02-15 11:43:04', 9, 1, 0, 'mensajito'),
(81, '2024-02-15 11:51:48', 1, 10, 0, 'hola'),
(82, '2024-02-15 13:01:03', 10, 1, 1, 'ya vale'),
(85, '2024-02-15 21:10:26', 1, 11, 0, 'viendo el chat'),
(86, '2024-02-15 21:15:57', 1, 7, 0, 'se nota :p'),
(87, '2024-02-15 21:16:26', 1, 4, 0, '--------'),
(88, '2024-02-15 21:16:48', 1, 9, 0, '1123123'),
(89, '2024-02-16 10:58:17', 8, 1, 0, 'Ffgg'),
(90, '2024-02-16 10:58:22', 8, 1, 0, 'Dhududd'),
(91, '2024-02-16 10:58:49', 1, 8, 0, 'Fufu'),
(92, '2024-02-17 20:01:49', 1, 8, 1, 'hola'),
(93, '2024-02-17 20:02:15', 1, 9, 1, 'como esta?');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `acacolec`
--

CREATE TABLE `acacolec` (
  `colec_cod_colec` int(11) NOT NULL,
  `colec_nom_colec` varchar(200) NOT NULL,
  `colec_cod_carer` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `acacolec`
--

INSERT INTO `acacolec` (`colec_cod_colec`, `colec_nom_colec`, `colec_cod_carer`) VALUES
(1, 'Tesis - páginas web', 5),
(3, 'Tesis - Ingeniería Comercial', 2),
(4, 'Tesis - Licenciatura en Gestión de la Información Gerencial', 5),
(5, 'Tesis - Ingeniería en Diseño Gráfico Computarizado', 6),
(6, 'Tesis - Ingeniería en Contabilidad y Auditoría CTA', 4),
(7, 'Tesis - Ingeniería en Ecoturismo', 7),
(9, 'Tesis - Emprendimiento', 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `acaconfig`
--

CREATE TABLE `acaconfig` (
  `config_cod_config` int(11) NOT NULL,
  `config_ifec_config` year(4) NOT NULL,
  `config_ffec_config` year(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `acaconfig`
--

INSERT INTO `acaconfig` (`config_cod_config`, `config_ifec_config`, `config_ffec_config`) VALUES
(5, 2021, 2025),
(6, 2015, 2022);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `acaplbrs`
--

CREATE TABLE `acaplbrs` (
  `plbrs_cod_plbrs` int(11) NOT NULL,
  `plbrs_nom_plbrs` varchar(50) NOT NULL,
  `plbrs_cod_projc` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `acaplbrs`
--

INSERT INTO `acaplbrs` (`plbrs_cod_plbrs`, `plbrs_nom_plbrs`, `plbrs_cod_projc`) VALUES
(1, 'repositorio digital', 1),
(2, '', 2),
(3, '', 3),
(4, '', 4),
(5, '', 5),
(6, '', 6),
(7, '', 7),
(8, '', 8),
(9, 'Ahorro, credico, sector indigena', 9),
(29, 'Analisis, diseño, implementacion', 11),
(40, 'Repositorio digital, proyectos de titulación, meto', 22);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `acaposts`
--

CREATE TABLE `acaposts` (
  `posts_cod_posts` int(11) NOT NULL,
  `posts_ips_posts` varchar(20) NOT NULL,
  `posts_file_down` int(11) NOT NULL,
  `posts_fec_posts` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `acaposts`
--

INSERT INTO `acaposts` (`posts_cod_posts`, `posts_ips_posts`, `posts_file_down`, `posts_fec_posts`) VALUES
(160, '::1', 0, '2023-01-17'),
(161, '::1', 0, '2023-01-17'),
(162, '::1', 0, '2023-01-17'),
(163, '190.99.77.158', 2, '2024-01-16'),
(164, '190.99.77.158', 1, '2024-01-16'),
(165, '190.99.77.158', 0, '2023-12-16'),
(166, '190.99.77.158', 0, '2024-02-07'),
(167, '190.99.77.158', 0, '2024-02-07'),
(168, '190.99.77.158', 0, '2024-01-16'),
(169, '190.99.77.158', 0, '2023-12-16'),
(170, '190.99.77.158', 0, '2024-03-05'),
(171, '190.99.77.158', 0, '2024-01-16'),
(172, '190.99.77.158', 0, '2024-01-16'),
(173, '190.99.77.158', 0, '2024-01-16'),
(174, '190.99.77.158', 0, '2024-01-16'),
(175, '190.99.77.158', 0, '2024-01-17'),
(176, '190.99.77.158', 1, '2024-01-17'),
(177, '190.99.77.158', 0, '2024-01-17'),
(178, '190.99.77.158', 1, '2024-01-17'),
(179, '190.99.77.158', 0, '2024-01-17'),
(180, '190.99.77.158', 0, '2024-01-17'),
(181, '190.99.77.158', 0, '2024-01-17'),
(182, '190.99.77.158', 0, '2024-01-17'),
(183, '190.99.77.158', 0, '2024-01-17'),
(184, '190.99.77.158', 0, '2024-01-17'),
(185, '190.99.77.158', 0, '2024-01-17'),
(186, '190.99.77.158', 0, '2024-01-17'),
(187, '190.99.77.158', 0, '2024-01-17'),
(188, '190.99.77.158', 0, '2024-01-17'),
(189, '190.99.77.158', 0, '2024-01-17'),
(190, '190.99.77.158', 0, '2024-01-17'),
(191, '190.99.77.158', 0, '2024-01-17'),
(192, '190.99.77.158', 0, '2024-01-18'),
(193, '190.99.77.158', 0, '2024-01-18'),
(194, '190.99.77.158', 0, '2024-01-21'),
(195, '190.99.77.158', 0, '2024-01-21'),
(196, '190.99.77.158', 0, '2024-01-21'),
(197, '190.99.77.158', 0, '2024-01-21'),
(198, '190.99.77.158', 0, '2024-01-21'),
(199, '190.99.77.158', 0, '2024-01-21'),
(200, '190.99.77.158', 0, '2024-01-21'),
(201, '190.99.77.158', 0, '2024-01-21'),
(202, '190.99.77.158', 0, '2024-01-22'),
(203, '190.99.77.158', 0, '2024-01-22'),
(204, '190.99.77.158', 0, '2024-01-22'),
(205, '190.99.77.158', 0, '2024-01-22'),
(206, '190.99.77.158', 0, '2024-01-22'),
(207, '190.99.77.158', 0, '2024-01-22'),
(208, '190.99.77.158', 0, '2024-01-22'),
(209, '190.99.77.158', 0, '2024-01-22'),
(210, '190.99.77.158', 0, '2024-01-22'),
(211, '190.99.77.158', 0, '2024-01-22'),
(212, '200.85.83.17', 0, '2024-01-22'),
(213, '190.99.77.158', 0, '2024-01-22'),
(214, '190.99.77.158', 0, '2024-01-22'),
(215, '190.99.77.158', 0, '2024-01-22'),
(216, '157.100.204.141', 0, '2024-01-22'),
(217, '157.100.204.141', 0, '2024-01-22'),
(218, '157.100.204.141', 0, '2024-01-22'),
(219, '157.100.204.141', 0, '2024-01-22'),
(220, '157.100.204.141', 0, '2024-01-22'),
(221, '190.99.77.158', 0, '2024-01-23'),
(222, '190.99.77.158', 0, '2024-01-23'),
(223, '190.99.77.158', 0, '2024-01-23'),
(224, '190.99.77.158', 1, '2024-01-23'),
(225, '190.99.77.158', 0, '2024-01-23'),
(226, '190.99.77.158', 0, '2024-01-23'),
(227, '190.99.77.158', 0, '2024-01-23'),
(228, '190.99.77.158', 0, '2024-01-23'),
(229, '190.99.77.158', 0, '2024-01-23'),
(230, '190.99.77.158', 0, '2024-01-23'),
(231, '157.100.204.141', 0, '2024-01-23'),
(232, '190.99.77.158', 0, '2024-01-24'),
(233, '190.99.77.158', 0, '2024-01-24'),
(234, '190.99.77.158', 0, '2024-01-24'),
(235, '190.99.77.158', 0, '2024-01-24'),
(236, '190.99.77.158', 1, '2024-01-24'),
(237, '190.99.77.158', 1, '2024-01-24'),
(238, '190.99.77.158', 1, '2024-01-24'),
(239, '190.99.77.158', 0, '2024-01-24'),
(240, '190.99.77.158', 1, '2024-01-24'),
(241, '190.99.77.158', 0, '2024-01-24'),
(242, '190.99.77.158', 0, '2024-01-24'),
(243, '190.99.77.158', 1, '2024-01-24'),
(244, '190.99.77.158', 1, '2024-01-24'),
(245, '190.99.77.158', 9, '2024-01-24'),
(246, '190.99.77.158', 9, '2024-01-24'),
(247, '190.99.77.158', 0, '2024-01-24'),
(248, '190.99.77.158', 9, '2024-01-24'),
(249, '190.99.77.158', 9, '2024-01-24'),
(250, '190.99.77.158', 9, '2024-01-24'),
(251, '190.99.77.158', 9, '2024-01-24'),
(252, '190.99.77.158', 9, '2024-01-24'),
(253, '190.99.77.158', 9, '2024-01-24'),
(254, '190.99.77.158', 0, '2024-01-24'),
(255, '190.99.77.158', 9, '2024-01-24'),
(256, '190.99.77.158', 9, '2024-01-24'),
(257, '190.99.77.158', 9, '2024-01-24'),
(258, '190.99.77.158', 9, '2024-01-24'),
(259, '190.99.77.158', 9, '2024-01-24'),
(260, '190.99.77.158', 0, '2024-01-24'),
(261, '190.99.77.158', 0, '2024-01-24'),
(262, '190.99.77.158', 0, '2024-01-24'),
(263, '190.99.77.158', 0, '2024-01-24'),
(264, '190.99.77.158', 0, '2024-01-24'),
(265, '190.99.77.158', 9, '2024-01-24'),
(266, '190.99.77.158', 0, '2024-01-24'),
(267, '190.99.77.158', 9, '2024-01-24'),
(268, '190.99.74.145', 0, '2024-01-25'),
(269, '190.99.74.145', 9, '2024-01-25'),
(270, '190.99.74.145', 9, '2024-01-25'),
(271, '190.99.74.145', 0, '2024-01-25'),
(272, '190.99.74.145', 0, '2024-01-25'),
(273, '190.99.74.145', 0, '2024-01-25'),
(274, '190.99.74.145', 9, '2024-01-25'),
(275, '190.99.74.145', 0, '2024-01-25'),
(276, '200.85.83.48', 0, '2024-01-26'),
(277, '200.85.83.48', 9, '2024-01-26'),
(278, '200.85.83.48', 9, '2024-01-26'),
(279, '200.85.83.48', 0, '2024-01-26'),
(280, '200.85.83.48', 9, '2024-01-26'),
(281, '200.85.83.48', 9, '2024-01-26'),
(282, '200.85.83.48', 0, '2024-01-26'),
(283, '190.99.75.197', 0, '2024-01-28'),
(284, '190.99.75.197', 0, '2024-01-28'),
(285, '190.99.75.197', 0, '2024-01-28'),
(286, '65.154.226.168', 0, '2024-01-29'),
(287, '181.211.10.245', 0, '2024-01-30'),
(288, '190.99.75.197', 0, '2024-01-30'),
(289, '190.99.75.197', 0, '2024-01-30'),
(290, '190.99.75.197', 0, '2024-01-30'),
(291, '190.99.75.197', 11, '2024-01-30'),
(292, '190.99.75.197', 0, '2024-01-30'),
(293, '190.99.75.197', 0, '2024-01-30'),
(294, '190.99.75.197', 0, '2024-01-31'),
(295, '190.99.75.197', 0, '2024-01-31'),
(296, '190.99.75.197', 0, '2024-01-31'),
(297, '190.99.75.197', 0, '2024-01-31'),
(298, '190.99.75.197', 0, '2024-01-31'),
(299, '200.85.80.134', 0, '2024-01-31'),
(300, '200.85.80.134', 0, '2024-01-31'),
(301, '200.85.80.134', 11, '2024-01-31'),
(302, '200.24.141.250', 0, '2024-01-31'),
(303, '200.24.141.250', 0, '2024-01-31'),
(304, '200.24.141.250', 0, '2024-01-31'),
(305, '200.24.141.250', 0, '2024-01-31'),
(306, '200.24.141.250', 0, '2024-01-31'),
(307, '200.24.141.250', 0, '2024-01-31'),
(308, '200.24.141.250', 0, '2024-01-31'),
(309, '181.175.209.142', 0, '2024-01-31'),
(310, '181.175.209.142', 0, '2024-01-31'),
(311, '200.24.141.251', 0, '2024-01-31'),
(312, '200.24.141.251', 0, '2024-01-31'),
(313, '200.24.141.251', 0, '2024-01-31'),
(314, '200.24.141.251', 0, '2024-01-31'),
(315, '200.24.141.251', 0, '2024-01-31'),
(316, '190.99.75.197', 0, '2024-02-01'),
(317, '190.99.75.197', 0, '2024-02-01'),
(318, '190.99.75.197', 0, '2024-02-01'),
(319, '190.99.75.197', 0, '2024-02-01'),
(320, '190.99.75.197', 0, '2024-02-01'),
(321, '190.99.75.197', 0, '2024-02-01'),
(322, '200.7.247.231', 0, '2024-02-01'),
(323, '200.7.247.231', 0, '2024-02-01'),
(324, '200.7.247.231', 0, '2024-02-01'),
(325, '200.7.247.231', 0, '2024-02-01'),
(326, '190.99.75.197', 0, '2024-02-01'),
(327, '190.99.75.197', 0, '2024-02-03'),
(328, '190.99.75.197', 0, '2024-02-03'),
(329, '190.99.75.197', 0, '2024-02-03'),
(330, '190.99.75.197', 0, '2024-02-03'),
(331, '190.99.75.197', 0, '2024-02-03'),
(332, '190.99.75.197', 0, '2024-02-03'),
(333, '190.99.75.197', 0, '2024-02-03'),
(334, '190.99.75.197', 0, '2024-02-03'),
(335, '190.99.75.197', 0, '2024-02-03'),
(336, '190.99.75.197', 0, '2024-02-03'),
(337, '190.99.75.197', 0, '2024-02-03'),
(338, '190.99.75.197', 0, '2024-02-03'),
(339, '190.99.75.197', 0, '2024-02-04'),
(340, '190.99.75.197', 0, '2024-02-04'),
(341, '190.99.75.197', 0, '2024-02-04'),
(342, '190.99.75.197', 0, '2024-02-04'),
(343, '190.99.75.197', 0, '2024-02-04'),
(344, '190.99.75.197', 0, '2024-02-04'),
(345, '190.99.75.197', 0, '2024-02-04'),
(346, '190.99.75.197', 0, '2024-02-04'),
(347, '190.99.75.197', 0, '2024-02-05'),
(348, '190.99.75.197', 0, '2024-02-05'),
(349, '190.99.75.197', 0, '2024-02-05'),
(350, '190.99.75.197', 0, '2024-02-05'),
(351, '190.99.75.197', 0, '2024-02-05'),
(352, '190.99.75.197', 0, '2024-02-05'),
(353, '190.99.75.197', 0, '2024-02-05'),
(354, '190.99.75.197', 0, '2024-02-05'),
(355, '190.99.75.197', 0, '2024-02-05'),
(356, '200.85.83.101', 0, '2024-02-05'),
(357, '200.85.83.101', 0, '2024-02-05'),
(358, '200.85.83.101', 11, '2024-02-05'),
(359, '200.7.247.70', 0, '2024-02-05'),
(360, '200.7.247.70', 0, '2024-02-05'),
(361, '190.99.75.197', 0, '2024-02-06'),
(362, '190.99.75.197', 0, '2024-02-06'),
(363, '190.99.75.197', 0, '2024-02-06'),
(364, '190.99.75.197', 0, '2024-02-06'),
(365, '190.99.75.197', 0, '2024-02-06'),
(366, '190.99.75.197', 0, '2024-02-06'),
(367, '190.99.75.197', 0, '2024-02-06'),
(368, '200.7.247.104', 0, '2024-02-06'),
(369, '200.7.247.104', 0, '2024-02-06'),
(370, '200.7.247.104', 0, '2024-02-06'),
(371, '200.7.247.104', 0, '2024-02-06'),
(372, '200.7.247.104', 0, '2024-02-06'),
(373, '200.7.247.104', 0, '2024-02-06'),
(374, '200.7.247.104', 0, '2024-02-06'),
(375, '190.99.75.197', 0, '2024-02-07'),
(376, '190.99.75.197', 0, '2024-02-07'),
(377, '190.99.75.197', 0, '2024-02-07'),
(378, '190.99.75.197', 0, '2024-02-07'),
(379, '190.99.75.197', 0, '2024-02-07'),
(380, '190.99.75.197', 0, '2024-02-07'),
(381, '190.99.75.197', 0, '2024-02-07'),
(382, '190.99.75.197', 0, '2024-02-07'),
(383, '190.99.75.197', 0, '2024-02-07'),
(384, '181.211.10.245', 0, '2024-02-07'),
(385, '181.211.10.245', 1, '2024-02-07'),
(386, '181.211.10.245', 0, '2024-02-07'),
(387, '181.211.10.245', 0, '2024-02-07'),
(388, '181.211.10.245', 1, '2024-02-07'),
(389, '181.211.10.245', 1, '2024-02-07'),
(390, '190.99.75.197', 0, '2024-02-07'),
(391, '190.99.75.197', 0, '2024-02-07'),
(392, '190.99.75.197', 0, '2024-02-07'),
(393, '190.99.75.197', 0, '2024-02-07'),
(394, '190.99.75.197', 0, '2024-02-07'),
(395, '190.99.75.197', 1, '2024-02-07'),
(396, '181.211.10.245', 0, '2024-02-08'),
(397, '181.211.10.245', 1, '2024-02-08'),
(398, '190.99.75.197', 0, '2024-02-09'),
(399, '190.99.75.197', 0, '2024-02-09'),
(400, '190.99.75.197', 0, '2024-02-09'),
(401, '190.99.75.197', 0, '2024-02-09'),
(402, '190.99.75.197', 0, '2024-02-10'),
(403, '190.99.75.197', 0, '2024-02-10'),
(404, '190.99.75.197', 0, '2024-02-10'),
(405, '190.99.75.197', 0, '2024-02-10'),
(406, '190.99.75.197', 0, '2024-02-10'),
(407, '190.99.75.197', 0, '2024-02-10'),
(408, '190.99.75.197', 0, '2024-02-10'),
(409, '190.99.75.197', 0, '2024-02-10'),
(410, '190.99.75.197', 0, '2024-02-10'),
(411, '190.99.75.197', 0, '2024-02-10'),
(412, '190.99.75.197', 0, '2024-02-10'),
(413, '190.99.75.197', 0, '2024-02-11'),
(414, '190.99.75.197', 0, '2024-02-11'),
(415, '190.99.75.197', 0, '2024-02-12'),
(416, '190.99.75.197', 0, '2024-02-12'),
(417, '190.99.75.197', 0, '2024-02-12'),
(418, '190.99.75.197', 0, '2024-02-12'),
(419, '190.99.75.197', 0, '2024-02-12'),
(420, '190.99.75.197', 0, '2024-02-12'),
(421, '190.99.75.197', 0, '2024-02-13'),
(422, '190.99.75.197', 0, '2024-02-13'),
(423, '190.99.75.197', 0, '2024-02-13'),
(424, '190.99.75.197', 0, '2024-02-13'),
(425, '190.99.75.197', 0, '2024-02-13'),
(426, '190.99.75.197', 0, '2024-02-13'),
(427, '190.99.75.197', 0, '2024-02-13'),
(428, '190.99.75.197', 0, '2024-02-13'),
(429, '190.99.75.197', 11, '2024-02-13'),
(430, '190.99.75.197', 0, '2024-02-13'),
(431, '190.99.75.197', 0, '2024-02-13'),
(432, '190.99.75.197', 0, '2024-02-13'),
(433, '190.99.75.197', 0, '2024-02-13'),
(434, '190.99.75.197', 0, '2024-02-13'),
(435, '190.99.75.197', 9, '2024-02-13'),
(436, '190.99.75.197', 0, '2024-02-13'),
(437, '190.99.75.197', 0, '2024-02-13'),
(438, '190.99.75.197', 15, '2024-02-13'),
(439, '190.99.75.197', 15, '2024-02-13'),
(440, '190.99.75.197', 0, '2024-02-13'),
(441, '190.99.75.197', 1, '2024-02-13'),
(442, '190.99.75.197', 1, '2024-02-13'),
(443, '190.99.75.197', 16, '2024-02-13'),
(444, '190.99.75.197', 16, '2024-02-13'),
(445, '190.99.75.197', 0, '2024-02-13'),
(446, '190.99.75.197', 9, '2024-02-13'),
(447, '190.99.75.197', 0, '2024-02-13'),
(448, '190.99.75.197', 9, '2024-02-13'),
(449, '190.99.75.197', 9, '2024-02-13'),
(450, '190.99.75.197', 0, '2024-02-13'),
(451, '190.99.75.197', 0, '2024-02-13'),
(452, '190.99.75.197', 0, '2024-02-13'),
(453, '190.99.75.197', 0, '2024-02-13'),
(454, '190.99.75.197', 0, '2024-02-13'),
(455, '190.99.75.197', 0, '2024-02-13'),
(456, '190.99.75.197', 18, '2024-02-13'),
(457, '190.99.75.197', 18, '2024-02-13'),
(458, '190.99.75.197', 0, '2024-02-13'),
(459, '190.99.75.197', 0, '2024-02-13'),
(460, '190.99.75.197', 0, '2024-02-13'),
(461, '190.99.75.197', 0, '2024-02-13'),
(462, '190.99.75.197', 18, '2024-02-13'),
(463, '190.99.75.197', 18, '2024-02-13'),
(464, '190.99.75.197', 19, '2024-02-13'),
(465, '190.99.75.197', 19, '2024-02-13'),
(466, '190.99.75.197', 0, '2024-02-13'),
(467, '190.99.75.197', 0, '2024-02-13'),
(468, '190.99.75.197', 0, '2024-02-14'),
(469, '190.99.75.197', 0, '2024-02-14'),
(470, '190.99.75.197', 0, '2024-02-14'),
(471, '190.99.75.197', 9, '2024-02-14'),
(472, '190.99.75.197', 0, '2024-02-14'),
(473, '190.99.75.197', 0, '2024-02-14'),
(474, '190.99.75.197', 1, '2024-02-14'),
(475, '190.99.75.197', 0, '2024-02-14'),
(476, '190.99.75.197', 0, '2024-02-14'),
(477, '190.99.75.197', 19, '2024-02-14'),
(478, '190.99.75.197', 0, '2024-02-14'),
(479, '190.99.75.197', 0, '2024-02-14'),
(480, '190.99.75.197', 0, '2024-02-14'),
(481, '190.99.75.197', 0, '2024-02-14'),
(482, '190.99.75.197', 0, '2024-02-14'),
(483, '190.99.75.197', 0, '2024-02-14'),
(484, '190.99.75.197', 11, '2024-02-14'),
(485, '190.99.75.197', 0, '2024-02-14'),
(486, '181.211.10.245', 0, '2024-02-14'),
(487, '181.211.10.245', 0, '2024-02-14'),
(488, '45.183.137.105', 0, '2024-02-14'),
(489, '190.99.75.197', 0, '2024-02-14'),
(490, '190.99.75.197', 0, '2024-02-14'),
(491, '190.99.75.197', 0, '2024-02-14'),
(492, '190.99.75.197', 0, '2024-02-15'),
(493, '190.99.75.197', 0, '2024-02-15'),
(494, '190.99.75.197', 0, '2024-02-15'),
(495, '190.99.75.197', 0, '2024-02-15'),
(496, '190.99.75.197', 0, '2024-02-15'),
(497, '190.99.75.197', 0, '2024-02-15'),
(498, '190.99.75.197', 0, '2024-02-15'),
(499, '190.99.75.197', 0, '2024-02-15'),
(500, '190.99.75.197', 0, '2024-02-15'),
(501, '190.99.75.197', 0, '2024-02-16'),
(502, '190.99.75.197', 0, '2024-02-16'),
(503, '190.99.75.197', 0, '2024-02-16'),
(504, '181.211.10.245', 0, '2024-02-16'),
(505, '190.99.75.197', 0, '2024-02-17'),
(506, '190.99.75.197', 0, '2024-02-17'),
(507, '190.99.75.197', 0, '2024-02-17');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `acaprojc`
--

CREATE TABLE `acaprojc` (
  `projc_cod_projc` int(11) NOT NULL,
  `projc_mat_projc` varchar(50) NOT NULL,
  `projc_tit_projc` varchar(200) NOT NULL,
  `projc_fec_projc` date NOT NULL,
  `projc_ubi_projc` varchar(200) NOT NULL,
  `projc_rem_projc` text NOT NULL,
  `projc_fil_projc` text NOT NULL,
  `projc_cod_colec` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `acaprojc`
--

INSERT INTO `acaprojc` (`projc_cod_projc`, `projc_mat_projc`, `projc_tit_projc`, `projc_fec_projc`, `projc_ubi_projc`, `projc_rem_projc`, `projc_fil_projc`, `projc_cod_colec`) VALUES
(1, 'Tesis', 'IMPLEMENTACIÓN DE UN REPOSITORIO DIGITAL PARA TRABAJOS DE TITULACIÓN DEL INSTITUTO SUPERIOR TECNOLÓGICO VICENTE LEÓN', '2024-01-17', 'ISTVL', 'El desarrollo de un repositorio digital permite el respaldo y la gestión de proyectos de titulación disminuyendo la brecha de acceso a la información, aumentando la visibilidad y preservación para el futuro de la obra de sus autores. En base a esta perspectiva, la investigación tuvo como propósito la implementación de un repositorio digital para trabajos de titulación del Instituto Superior Tecnológico Vicente León. Para el desarrollo del software se aplicó la metodología de desarrollo Scrum, ejecutando cada una de sus fases para la creación del mismo. Se diseñó una plataforma informática que permite agregar, editar y eliminar registros de proyectos de titulación, además contiene un motor de búsqueda rápida y avanzada de registros, chat de usuarios y estadísticas sobre la actividad de los usuarios dando un espacio que permite administrar la información de trabajos de titulación. El entorno corresponde con las funcionalidades de las necesidades y requisitos de un repositorio digital y un manejo sencillo y amigable para el usuario en las actividades académicas proporcionando un medio de difusión y preservación de proyectos de titulación.', '../files/ISTVL-1.pdf', 1),
(2, 'Tesis', 'Nivel de capital social de los emprendimientos que buscan apoyo en el centro de emprendimiento de la universidad técnica de Cotopaxi período febrero-agosto 2021', '2024-01-17', 'Ecuador : Latacunga: Universidad Técnica de Cotopaxi (UTC)', 'El presente estudio investigativo tuvo como objetivo evaluar el nivel de presencia de Capital Social [CS] en los emprendimientos que buscan apoyo en el Centro de Emprendimiento de la Universidad Técnica de Cotopaxi [CEUTC] durante el período febrero-agosto 2021, el mismo que se encuentra ubicado en el cantón Latacunga de la provincia de Cotopaxi. El enfoque de investigación es cuantitativo, nivel descriptivo y diseño de campo. Se utilizó de encuesta el instrumento para medir el capital social en las organizaciones diseñado por Orkestra - Instituto Vasco de Competitividad. Este instrumento fue aplicado a una muestra de 195 emprendimientos, pertenecientes al CEUTC. Los resultados mostraron que el nivel de CS de los emprendimientos individuales es un poco más elevado que el nivel de CS de las asociaciones, aunque su variación no es tan significativa. Para ambos emprendimientos la confianza, participación y la reciprocidad son aspectos difíciles de brindar. En las asociaciones se tienen este tipo de inconvenientes, ya que, las relaciones entre individuos de la misma asociación, no son beneficiosas para todos, no buscan el bien común, por el contrario, el beneficio es para ciertas personas, esto podría ser uno de los factores por los cuales las personas no participan en organizaciones de economía popular y solidaria. Por último, el análisis de los indicadores del instrumento, permitió identificar lo que sucede en las dimensiones: información y comunicación, intereses y preocupaciones en el trabajo, eficacia, relaciones, cultura organizativa, confianza, cooperación, asociación, valores, actitudes y conductas personales, compromiso y participación social.', '', 9),
(3, 'Tesis', 'Evaluación ergonómica en posturas físicas y estado atencional en el manejo de la información del gobierno autónomo descentralizado Municipal Intercultural del cantón Saquisilí en el periodo 2022-2023', '2024-01-17', 'Ecuador : Latacunga: Universidad Técnica de Cotopaxi (UTC)', 'El presente proyecto tiene como objetivo de investigación determinar la relación que existe entre ergonomía en posturas físicas y el estado atencional en el manejo de información en el GAD Municipal Intercultural del Cantón Saquisilí provincia de Cotopaxi. El tipo de investigación es descriptiva y co-rrelacional, el método es inductivo, el enfoque es descriptivo cualicuantitativo y el diseño es no experimental. Con respecto a la muestra estuvo conformada por 35 trabajadores de diferentes departamentos, los mismos que fueron evaluados mediante el método ROSA herramienta que nos ayudará a identificar las malas posturas con el fin de reducir factores de riesgo y para conocer el nivel atencional se utilizó un test en psicología STROOP que determina el nivel de atención en los trabajadores. Posterior a la aplicación de los resultados en el programa SPSS y la prueba del Chi Cuadrado se obtuvo que si existe una relación entre lo físico y el estado atencional ya que debido a las malas posturas los participantes de la muestra tienen un déficit atencional encontrándose el mayor porcentaje en el nivel alto y medio lo que ocasiona que el manejo de información sea ineficaz.', '', 4),
(4, 'Tesis', 'Desarrollo de un producto audiovisual informativo sobre las metodologías de diseño gráfico para los estudiantes de la Universidad Técnica de Cotopaxi', '2024-01-17', 'Ecuador, Latacunga: Universidad Técnica de Cotopaxi UTC.', 'El proyecto de investigación realizado tiene como objetivo la elaboración de un producto audiovisual sobre las metodologías de diseño, el cual va dirigido a los estudiantes de carrera de Diseño Gráfico de la Universidad Técnica de Cotopaxi, con el propósito de promover la utilización de las mismas. En el desarrollo de la investigación se identificarán las similitudes y diferencias existentes entre las metodologías de diseño, las cuales fueron seleccionadas a través de entrevistas realizadas a los docentes de Universidad Técnica de Cotopaxi, posterior al análisis de los métodos, donde ayudara a resolver la problemática que se desarrolló dentro de la carrera como es la omisión y el desconocimiento de las Metodologías de Diseño por parte de los estudiantes de Diseño Gráfico a causa de evolución tecnológica donde desarrollan y generan nuevas herramientas que ayudan en el proceso de elaboración de productos , dando así mayor relevancia a la tecnología, por ende los investigadores proponen desarrollar producto audiovisual informativo que se mostró como una guía audiovisual sobre las metodologías de diseño con el propósito de facilitar el proceso de diseño y la asimilación por parte de los beneficiarios. Para cumplir con lo planteado se desarrolló paso a paso desde la recolección de información bibliográfica de las metodologías de Diseño, donde se identificó las metodologías más usadas o conocidas por los estudiantes que fue presentado en el producto cada personaje del producto audiovisual tuvieron las características propias de los estudiantes para que se sientan mayormente identificados, a la vez se realizó sus respectivas pruebas de usabilidad para identificar errores y dar mejoras al producto audiovisual.', '', 5),
(5, 'Tesis', 'Diseño de un sistema contable en el centro de mecanización unión y trabajo, Cantón Salcedo Parroquia Mulalillo', '2024-01-17', 'Ecuador: Latacunga: Universidad Técnica de Cotopaxi; UTC', 'Es importante que el Centro de Mecanización Unión y Trabajo del cantón Salcedo, parroquia Mulalillo, cuente con un Sistema Contable para la Gestión Administrativa y Financiera. Determinando como problema de fondo a través de un diagnóstico situacional, lo que proporcionó una idea más clara de la problemática en mención, a través de esto se justifica la realización del proyecto, el subsanar el deficiente control de los registros contables, para de esta manera tener un mejor manejo de los recursos económicos. El propósito del Proyecto Integrador, es diseñar un sistema contable para el manejo y control de los recursos económicos, se lo aplique de forma rápida y oportuna en el momento de tomar las decisiones, de esta manera se pretende mejorar la Gestión Administrativa y Financiera de la organización. Para lo cual se han utilizado métodos como la recopilación bibliográfica y documental, para tener información fuente sobre el proceso contable, técnicas como la encuesta, entrevistas y guías de observación, lo cual se lo realizó a los directivos y usuarios del Centro de Mecanización con el objetivo de levantar información de las transacciones económicas que realizan día a día. Se describe las competencias vinculadas con el campo profesional y la fundamentación científico técnica. Para finalizar, se diseñó y aplicó el sistema contable, en el software Mónica 8,5 que se instaló en la asociación donde se registró las transacciones correspondientes al periodo 2017, recomendando que de aquí en adelante se las realice en el momento en que suceden ya que facilita la elaboración de los registros de las transacciones económicas en el libro diario y un fácil manejo de los estados financieros.', '', 6),
(6, 'Tesis', 'Plan de negocios para la creación de una microempresa de marketing digital para el sector turístico en la ciudad de Latacunga', '2024-01-17', 'Ecuador: Latacunga: Universidad Técnica de Cotopaxi; UTC.', 'El plan de negocios para la creación de una microempresa en asesoría de marketing digital para el sector turístico en la ciudad de Latacunga, tiene como finalidad determinar la factibilidad de incursionar en un segmento de mercado en que la tecnología está cambiando la dinámica de las estrategias de marketing para la comercialización, promoción y venta de productos y servicios, fomentando modelos de negocio B2B. Para tal efecto se plantearon cuatro objetivos que condujeron al análisis de referentes teóricos sobre marketing digital y modelos de negocio B2B, al estudio de mercado para analizar la oferta y la demanda, al estudio técnico, financiero y de evaluación de rentabilidad. Los métodos utilizados fueron el análisis documental y la encuesta, que estuvo dirigida a empresas dedicadas al turismo, demostrando que existe desconocimiento sobre estrategias de marketing digital y que existe la predisposición a implementarlas en sus negocios. En el estudio técnico se definieron los perfiles de las personas que se requieren para brindar servicios de calidad, así como también los flujos de cada proceso. La evaluación de rentabilidad arrojó una TIR del 27,40%, VAN de USD17.162, 26, relación beneficio costo 1,32; por lo que se puede concluir que el proyecto es viable', '', 3),
(7, 'Tesis', 'Guía gastronómica de platos típicos de la parroquia Guaytacama del cantón Latacunga provincia Cotopaxi.', '2024-01-17', 'Ecuador : Latacunga: Universidad Técnica de Cotopaxi (UTC)', 'El presente proyecto de investigación se basa en el estudio de la gastronomía típica de la Parroquia Guaytacama, con el propósito de recopilar la información necesaria que fortalezca el desarrollo tanto en el ámbito cultural, económico y turístico del lugar de estudio a través de la elaboración de una guía gastronómica. Mediante la guía se pretende difundir, y promover las tradiciones y costumbres culinarias y dar a conocer la variedad de platos típicos que existe, para realizar el proceso de investigación se planteó tres objetivos específicos, los cuales permitieron el levantamiento de información primaria y secundaria, mediante el primer objetivo se realizó el diagnostico situacional del área mediante el análisis del factor geográfico – ambiental, histórico – cultural, socio económico, en el segundo objetivo se realizó el respectivo inventario, para el registro de la gastronomía típica se utilizó la metodología del Instituto Nacional de Patrimonio Cultural (INPC) donde se logró registrar un total de 14 platos típicos de la parroquia y sus respectivos barrios los mismos que fueron sustentados mediante registro fotográfico en salidas de campo y vistas a mercados, restaurantes, ferias de comidas típicas, teniendo como resultado de los platos típicos en su mayoría una sensibilidad al cambio baja que significa que mantiene la gastronomía vigente en la parroquia. Finalmente se sistematizo la información recopilada a través del inventario y se diseñó una guía la cual servirá como una herramienta de información gastronómica de la parroquia Guaytacama a su vez genera beneficios a los habitantes y turistas nacionales y extranjeros. Mediante este estudio, se genera un impacto socio económico positivo, que ayuda a salvaguardar los conocimientos y tradiciones de la cultura gastronómica. Al realizar este proyecto se puede decir que se ha contribuido directamente con los habitantes logrando plasmar la información de recetas de platos típicos en una guía y pueda ser difundido a la sociedad.', '', 7),
(8, 'Tesis', 'Modelo de control interno en el área de inventarios y su incidencia en la toma de decisiones de la empresa “Ganagro e hijos” del cantón La Maná Provincia de Cotopaxi', '2024-01-17', 'Ecuador : La Maná : Universidad Técnica de Cotopaxi (UTC)', 'La presente tesis fue realizada en la Empresa “Ganagro e Hijos” en el Cantón la Maná provincia de Cotopaxi desde luego la información recolectada es de suma importancia y real en la cual pretende realizar un Modelo de control interno del área de inventarios para lo cual se efectuó una investigación cuantitativa de campo , como técnicas de recolección de información se empleó cuestionarios, entrevistas, revisión, diagnóstico y observación de la empresa, para la evaluación de control interno se fundamentó en el Modelo COSO I mediante los componentes perteneciente a este modelo, en el cual se determinó que el promedio de riesgo general es de un es promedio intermedio en la cual se realizó un manual de control interno en base a las estrategias efectivas en la toma de decisiones como una manera de buscar solución a las falencias encontradas en forma precisa y metodológica, se proporcionan posibles soluciones para mejorar los procesos realizados en el área de inventarios como entrada y salida de la mercadería, con el fin de reducir los niveles excesivos de inventario, el costo y almacenaje del mismo por ello la empresa ha decidido implementar nuestro modelo de manual de control interno en el área de inventarios para optimizar la administración actual y supervisar las actividades asignadas para cada colaborador, como también la distribución de los insumos a bodega, disminución del tiempo de despacho, proceso de recepción y entrega de mercadería y mejorar el nivel de satisfacción de clientes.', '', 6),
(9, 'Tesis', 'Control interno como herramienta para la detección de fraudes y errores en la cooperativa de ahorro y crédito', '2024-01-17', 'Ecuador, Latacunga: Universidad Técnica de Cotopaxi UTC.', 'El presente proyecto se realizó en la Cooperativa de Ahorro y Crédito MUSHUC RUNA LTDA la cual es una de las instituciones financieras del sector indígena que se enfoca en otorgar créditos a los comerciantes y micro emprendedores a nivel nacional. Dentro de este marco es importante señalar que como en toda entidad sea grande o pequeña existen problemas, como que el personal que labora en la entidad no están familiarizadas con los manuales y políticas que se aplican en la Cooperativa por lo que están prestos a cometer errores o justificarse de eso para cometer fraudes. Por tal motivo este proyecto de investigación tiene como objetivo analizar el nivel de cumplimiento del sistema de control interno en la Cooperativa de Ahorro y Crédito Mushuc Runa Ltda y su incidencia en la estabilidad financiera. La metodología de investigación que se aplicó durante este proceso fue de tipo bibliográfica-documental, exploratoria, descriptiva, explicativa y de campo los cuales ayudaron a determinar los problemas que existen en el lugar y a continuar con el desarrollo de este proyecto. Los resultados que se obtuvieron de este análisis fue identificar que los empleados que labora en esta entidad no se encuentran familiarizados con el SCI debido a que el personal encargado de sociabilizar no lo realiza correctamente, además mediante la evaluación al sistema de control interno se pudo determinar que esta entidad cuenta con algunos softwares que ayudan a detectar fraudes y errores, evitando que personas no autorizadas accedan a los equipos de cómputo y utilicen los datos de la entidad de manera indebida. Hay que hacer notar que se benefició la entidad con la familiarización del sistema de control interno a todo el personal que labora en la institución, con esto se mejoró el desempeño en las diferentes actividades e incluso se establecieron mejores relaciones entre las diferentes áreas de la cooperativa motivando al propicio desenvolvimiento en sus funciones. Vale destacar que este proyecto de investigación fue de gran ayuda para la COAC Mushuc Runa Ltda puesto que la misma acoge toda información resultante de las investigaciones realizadas por estudiantes universitarios cuyo propósito es establecer soluciones, sugerencias o ideas que permite a los directivos tomar decisiones en mejora de la entidad permitiendo que la cooperativa sea competitiva dentro del mercado financiero y pueda lograr la permanencia, solvencia y confiabilidad de sus clientes.', '../files/ISTVL-9.pdf', 6),
(11, 'Artículo', 'Analisis y Diseño UML', '2024-01-30', 'ESTANDERIA A', 'TESIS REALIZADA EN EL PERIODO ACADEMICO 0CTUBRE 2023 FEBRERO 2024', '../files/ISTVL-11.pdf', 6),
(22, 'Tesis', 'IMPLEMENTACIÓN DE UN REPOSITORIO DIGITAL PARA TRABAJOS DE TITULACIÓN DEL INSTITUTO SUPERIOR TECNOLÓGICO VICENTE LEÓN', '0000-00-00', 'ISTVL', 'El desarrollo de un repositorio digital permite el respaldo y la gestión de proyectos de\r\ntitulación disminuyendo la brecha de acceso a la información, aumentando la visibilidad y\r\npreservación para el futuro de la obra de sus autores. En base a esta perspectiva, la\r\ninvestigación tuvo como propósito la implementación de un repositorio digital para trabajos\r\nde titulación del Instituto Superior Tecnológico Vicente León. Para el desarrollo del software\r\nse aplicó la metodología de desarrollo Scrum, ejecutando cada una de sus fases para la\r\ncreación del mismo. Se diseñó una plataforma informática que permite agregar, editar y\r\neliminar registros de proyectos de titulación, además contiene un motor de búsqueda rápida y\r\navanzada de registros, chat de usuarios y estadísticas sobre la actividad de los usuarios dando\r\nun espacio que permite administrar la información de trabajos de titulación. El entorno\r\ncorresponde con las funcionalidades de las necesidades y requisitos de un repositorio digital y\r\nun manejo sencillo y amigable para el usuario en las actividades académicas proporcionando\r\nun medio de difusión y preservación de proyectos de titulación.', '../files/ISTVL-22.pdf', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `acasolic`
--

CREATE TABLE `acasolic` (
  `solic_cod_solic` int(11) NOT NULL,
  `solic_cod_users` int(11) NOT NULL,
  `solic_prj_solic` text NOT NULL,
  `solic_ubi_solic` text NOT NULL,
  `solic_mot_solic` text NOT NULL,
  `solic_rev_solic` int(11) NOT NULL,
  `solic_fil_solic` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `acasolic`
--

INSERT INTO `acasolic` (`solic_cod_solic`, `solic_cod_users`, `solic_prj_solic`, `solic_ubi_solic`, `solic_mot_solic`, `solic_rev_solic`, `solic_fil_solic`) VALUES
(5, 3, 'xxxxxxx', 'carreara de software y en las colecciones paginas web', 'ayuda subiendo un proyecto', 1, '../files/temp/stack-5.pdf'),
(6, 8, 'IMPLEMENTACIÓN DE UN REPOSITORIO DIGITAL PARA TRABAJOS DE TITULACIÓN DEL INSTITUTO SUPERIOR TECNOLÓGICO VICENTE LEÓN', 'Desarrollo de software, colecciones paginas web (Tesis)', 'Porfavor deme subiendo, recientemente hecho y validado en Febrero en 2024', 0, '../files/temp/stack-6.pdf');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `acatutor`
--

CREATE TABLE `acatutor` (
  `tutor_cod_tutor` int(11) NOT NULL,
  `tutor_nom_tutor` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `acatutor`
--

INSERT INTO `acatutor` (`tutor_cod_tutor`, `tutor_nom_tutor`) VALUES
(1, 'Lorena Paucar'),
(2, 'Merino, Milton'),
(3, 'Salazar Tapia, Mónica Patricia'),
(4, 'Parra, Ximena'),
(5, 'Espín, Lorena'),
(6, 'Vizcaíno, Juan; Phd'),
(7, 'Guevara Aguay, Amparo Elizabeth,'),
(8, 'Ulloa, Carmen'),
(9, 'Hidalgo, Myrian'),
(11, 'IUUW'),
(17, 'XXXX');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `acausers`
--

CREATE TABLE `acausers` (
  `users_cod_users` int(11) NOT NULL,
  `users_usr_users` varchar(50) NOT NULL,
  `users_nom_users` varchar(50) NOT NULL,
  `users_eml_users` varchar(50) NOT NULL,
  `users_pas_users` varchar(255) NOT NULL,
  `users_fec_users` date NOT NULL,
  `users_bit_users` time NOT NULL,
  `users_bio_users` text NOT NULL,
  `users_ocu_users` varchar(50) NOT NULL,
  `users_img_users` text NOT NULL,
  `users_sts_users` int(11) NOT NULL,
  `users_hash_users` text NOT NULL,
  `users_val_users` int(11) NOT NULL,
  `users_res_users` int(11) NOT NULL,
  `users_typ_users` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `acausers`
--

INSERT INTO `acausers` (`users_cod_users`, `users_usr_users`, `users_nom_users`, `users_eml_users`, `users_pas_users`, `users_fec_users`, `users_bit_users`, `users_bio_users`, `users_ocu_users`, `users_img_users`, `users_sts_users`, `users_hash_users`, `users_val_users`, `users_res_users`, `users_typ_users`) VALUES
(1, 'admin', 'admin1', 'admin@gmail.com', '$2y$10$/afW9fdI1FBMNbzPjVbKJ.b1DO.rov6QZFMKmfJW4FN66AlEafEuO', '2023-09-15', '00:00:00', 'Usuario testeado', 'Ninguna', '', 0, '0', 1, 0, 0),
(3, 'david', 'david', 'davidrylacer@gmail.com', '$2y$10$trII41iGUxujux0YfL0AYulDupWggSVNXZoxb8vuJc2gchvXqS.U.', '2024-01-23', '00:00:00', '', '', 'https://projectesis.infinityfreeapp.com/images/users/USER-3.jpeg?t=1706047903', 0, '67336617172c2596671691fdb6e1a68e', 1, 1, 1),
(4, 'andres', 'Andrés', 'marcelojimenez123690@gmail.com', '$2y$10$85J3jnDbZ2i/jDghgpog/.GRjX9SU3lwZj60KEA8zDCWavofu3iva', '2024-02-06', '00:00:00', '', '', '', 0, 'eddea82ad2755b24c4e168c5fc2ebd40', 1, 0, 1),
(7, 'dalto', 'Dalto', 'david-lacer@hotmail.com', '$2y$10$0A8KWexhHPAFvckjjURRzuykrXihFAhr2Kh8czY/UXhepEskpiVIa', '2024-02-13', '00:00:00', '', '', '', 0, 'c75b6f114c23a4d7ea11331e7c00e73c', 1, 0, 1),
(8, 'user1', 'asdasfaf', 'user1@hotmail.com', '$2y$10$Rdygr.eYERk.1FC2T1XvT.xI6dJR08Uu12RyIYdbya3J/4WtCuTkK', '2024-02-13', '00:00:00', '', '', '', 0, '2d6cc4b2d139a53512fb8cbb3086ae2e', 1, 0, 1),
(9, 'user2', 'user2', 'user2@hotmail.com', '$2y$10$k2V6t4/W3eCzmwLNogY.yusrTcKnVvJaotBtfuFXMM36cjN2HMvmy', '2024-02-13', '00:00:00', '', '', '', 1, 'b6f0479ae87d244975439c6124592772', 1, 0, 1),
(10, 'user3', 'user3', 'user3@hotmail.com', '$2y$10$00sHl7HNL5Rk224bpDqHx.9yYGTM/Wv6PAB7lqrh4H2y4FnwDzm46', '2024-02-13', '00:00:00', '', '', '', 0, 'dd45045f8c68db9f54e70c67048d32e8', 1, 0, 1),
(11, 'user4', 'user4', 'user4@hotmail.com', '$2y$10$o7s/QUpSbecm5PFCegHZbueum3K3WUKxEa/L5hPfQQcakFbgBIYkW', '2024-02-13', '00:00:00', '', '', '', 0, '8f121ce07d74717e0b1f21d122e04521', 1, 0, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `acaxchat`
--

CREATE TABLE `acaxchat` (
  `xchat_cod_xchat` int(11) NOT NULL,
  `xchat_imsg_xchat` int(11) NOT NULL,
  `xchat_omsg_xchat` int(11) NOT NULL,
  `xchat_bell_xchat` int(11) NOT NULL,
  `xchat_evn_xchat` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `acaxchat`
--

INSERT INTO `acaxchat` (`xchat_cod_xchat`, `xchat_imsg_xchat`, `xchat_omsg_xchat`, `xchat_bell_xchat`, `xchat_evn_xchat`) VALUES
(0, 1, 8, 0, 1),
(0, 1, 11, 0, 1),
(0, 1, 7, 0, 1),
(0, 1, 4, 0, 1),
(0, 1, 9, 0, 1),
(0, 8, 1, 0, 1);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `acaautor`
--
ALTER TABLE `acaautor`
  ADD PRIMARY KEY (`autor_cod_autor`),
  ADD KEY `autor_fdk_projc` (`autor_cod_projc`),
  ADD KEY `autor_fk_tutor` (`autor_cod_tutor`);

--
-- Indices de la tabla `acacarer`
--
ALTER TABLE `acacarer`
  ADD PRIMARY KEY (`carer_cod_carer`);

--
-- Indices de la tabla `acachats`
--
ALTER TABLE `acachats`
  ADD PRIMARY KEY (`chats_cod_chats`),
  ADD KEY `chats_fk_imsg` (`chats_imsg_chats`),
  ADD KEY `chats_fk_omsg` (`chats_omsg_chats`);

--
-- Indices de la tabla `acacolec`
--
ALTER TABLE `acacolec`
  ADD PRIMARY KEY (`colec_cod_colec`),
  ADD KEY `colec_fk_carer` (`colec_cod_carer`);

--
-- Indices de la tabla `acaconfig`
--
ALTER TABLE `acaconfig`
  ADD PRIMARY KEY (`config_cod_config`);

--
-- Indices de la tabla `acaplbrs`
--
ALTER TABLE `acaplbrs`
  ADD PRIMARY KEY (`plbrs_cod_plbrs`),
  ADD KEY `plbrs_cod_projc` (`plbrs_cod_projc`);

--
-- Indices de la tabla `acaposts`
--
ALTER TABLE `acaposts`
  ADD PRIMARY KEY (`posts_cod_posts`);

--
-- Indices de la tabla `acaprojc`
--
ALTER TABLE `acaprojc`
  ADD PRIMARY KEY (`projc_cod_projc`),
  ADD KEY `projc_fk_colec` (`projc_cod_colec`);

--
-- Indices de la tabla `acasolic`
--
ALTER TABLE `acasolic`
  ADD PRIMARY KEY (`solic_cod_solic`),
  ADD KEY `solic_fk_users` (`solic_cod_users`);

--
-- Indices de la tabla `acatutor`
--
ALTER TABLE `acatutor`
  ADD PRIMARY KEY (`tutor_cod_tutor`);

--
-- Indices de la tabla `acausers`
--
ALTER TABLE `acausers`
  ADD PRIMARY KEY (`users_cod_users`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `acaautor`
--
ALTER TABLE `acaautor`
  MODIFY `autor_cod_autor` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT de la tabla `acacarer`
--
ALTER TABLE `acacarer`
  MODIFY `carer_cod_carer` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `acachats`
--
ALTER TABLE `acachats`
  MODIFY `chats_cod_chats` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=94;

--
-- AUTO_INCREMENT de la tabla `acacolec`
--
ALTER TABLE `acacolec`
  MODIFY `colec_cod_colec` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT de la tabla `acaconfig`
--
ALTER TABLE `acaconfig`
  MODIFY `config_cod_config` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `acaplbrs`
--
ALTER TABLE `acaplbrs`
  MODIFY `plbrs_cod_plbrs` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT de la tabla `acaposts`
--
ALTER TABLE `acaposts`
  MODIFY `posts_cod_posts` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=508;

--
-- AUTO_INCREMENT de la tabla `acaprojc`
--
ALTER TABLE `acaprojc`
  MODIFY `projc_cod_projc` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT de la tabla `acasolic`
--
ALTER TABLE `acasolic`
  MODIFY `solic_cod_solic` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `acatutor`
--
ALTER TABLE `acatutor`
  MODIFY `tutor_cod_tutor` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT de la tabla `acausers`
--
ALTER TABLE `acausers`
  MODIFY `users_cod_users` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `acaautor`
--
ALTER TABLE `acaautor`
  ADD CONSTRAINT `autor_fk_projc` FOREIGN KEY (`autor_cod_projc`) REFERENCES `acaprojc` (`projc_cod_projc`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `autor_fk_tutor` FOREIGN KEY (`autor_cod_tutor`) REFERENCES `acatutor` (`tutor_cod_tutor`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `acachats`
--
ALTER TABLE `acachats`
  ADD CONSTRAINT `chats_fk_imsg` FOREIGN KEY (`chats_imsg_chats`) REFERENCES `acausers` (`users_cod_users`),
  ADD CONSTRAINT `chats_fk_omsg` FOREIGN KEY (`chats_omsg_chats`) REFERENCES `acausers` (`users_cod_users`);

--
-- Filtros para la tabla `acacolec`
--
ALTER TABLE `acacolec`
  ADD CONSTRAINT `colec_fk_carer` FOREIGN KEY (`colec_cod_carer`) REFERENCES `acacarer` (`carer_cod_carer`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `acaplbrs`
--
ALTER TABLE `acaplbrs`
  ADD CONSTRAINT `plbrs_cod_projc` FOREIGN KEY (`plbrs_cod_projc`) REFERENCES `acaprojc` (`projc_cod_projc`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `acaprojc`
--
ALTER TABLE `acaprojc`
  ADD CONSTRAINT `projc_fk_colec` FOREIGN KEY (`projc_cod_colec`) REFERENCES `acacolec` (`colec_cod_colec`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `acasolic`
--
ALTER TABLE `acasolic`
  ADD CONSTRAINT `solic_fk_users` FOREIGN KEY (`solic_cod_users`) REFERENCES `acausers` (`users_cod_users`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
