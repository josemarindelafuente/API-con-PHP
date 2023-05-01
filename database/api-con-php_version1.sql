-- phpMyAdmin SQL Dump
-- version 4.9.4
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost:3306
-- Tiempo de generación: 01-05-2023 a las 18:34:03
-- Versión del servidor: 5.7.24
-- Versión de PHP: 7.2.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `api-con-php_version1`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `courses`
--

CREATE TABLE `courses` (
  `id_course` int(11) NOT NULL,
  `title_course` text,
  `description_course` text,
  `id_instructor_course` int(11) NOT NULL DEFAULT '0',
  `image_course` text,
  `price_course` float NOT NULL DEFAULT '0',
  `date_created_course` date DEFAULT NULL,
  `date_updated_course` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `courses`
--

INSERT INTO `courses` (`id_course`, `title_course`, `description_course`, `id_instructor_course`, `image_course`, `price_course`, `date_created_course`, `date_updated_course`) VALUES
(1, 'Curso numero 1', 'Curso de wordpress', 0, NULL, 1500.45, '2023-04-30', '2023-04-30 23:13:15'),
(2, 'Curso de SEO', 'curso intensivo de SEO en wordpress', 0, NULL, 1420, '2023-05-01', '2023-05-01 13:51:25');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `instructors`
--

CREATE TABLE `instructors` (
  `id_instructor` int(11) NOT NULL,
  `name_instructor` varchar(100) NOT NULL,
  `username_instructor` varchar(100) NOT NULL,
  `email_instructor` varchar(150) NOT NULL,
  `password_instructor` varchar(150) NOT NULL,
  `token_instructor` varchar(250) NOT NULL,
  `token_` text NOT NULL,
  `date_created_instructor` date NOT NULL,
  `date_updated_instructor` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `instructors`
--

INSERT INTO `instructors` (`id_instructor`, `name_instructor`, `username_instructor`, `email_instructor`, `password_instructor`, `token_instructor`, `token_`, `date_created_instructor`, `date_updated_instructor`) VALUES
(1, 'Jose Marin de la Fuente', 'jmarin', 'jose.marindelafuente@gmail.com', '123456', '', '', '2023-05-01', '2023-05-01 17:58:21');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `courses`
--
ALTER TABLE `courses`
  ADD PRIMARY KEY (`id_course`);

--
-- Indices de la tabla `instructors`
--
ALTER TABLE `instructors`
  ADD PRIMARY KEY (`id_instructor`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `courses`
--
ALTER TABLE `courses`
  MODIFY `id_course` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `instructors`
--
ALTER TABLE `instructors`
  MODIFY `id_instructor` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
