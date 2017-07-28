-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 28-07-2017 a las 16:58:09
-- Versión del servidor: 10.1.21-MariaDB
-- Versión de PHP: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `survey17`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2017_07_28_055105_create_modulo_table', 1),
(4, '2017_07_28_063516_create_pregunta_table', 1),
(5, '2017_07_28_063539_create_opcion_table', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `modulos`
--

CREATE TABLE `modulos` (
  `id` int(10) UNSIGNED NOT NULL,
  `modulo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nombre_modulo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tab` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `modulos`
--

INSERT INTO `modulos` (`id`, `modulo`, `nombre_modulo`, `tab`, `created_at`, `updated_at`) VALUES
(1, 'Módulo I', 'Aspectos Generales', 'modulo1', NULL, NULL),
(2, 'Módulo II', 'Sensibilización', 'modulo2', NULL, NULL),
(3, 'Módulo III', 'Capacitación', 'modulo3', NULL, NULL),
(4, 'Módulo IV', 'Difusión e Información', 'modulo4', NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `opciones`
--

CREATE TABLE `opciones` (
  `id` int(10) UNSIGNED NOT NULL,
  `pregunta_id` int(10) UNSIGNED NOT NULL,
  `opcion1` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `opcion2` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `opcion3` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `opcion4` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `opcion5` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `opciones`
--

INSERT INTO `opciones` (`id`, `pregunta_id`, `opcion1`, `opcion2`, `opcion3`, `opcion4`, `opcion5`, `created_at`, `updated_at`) VALUES
(1, 1, 'Si', 'No', 'false', 'false', 'false', '2017-07-28 11:57:48', '2017-07-28 11:57:48'),
(2, 2, 'Etapa 1: Acciones preliminares', 'Etapa 2: Identificación de brechas', 'Etapa 3: Elaboración del Plan de trabajo para el cierre de brechas', 'Etapa 4: Cierre de brechas', 'Etapa 5: Reporte de evaluación y mejoras continuas', '2017-07-28 12:04:17', '2017-07-28 12:04:17'),
(3, 3, 'Si', 'No', 'false', 'false', 'false', '2017-07-28 18:51:50', '2017-07-28 18:51:50'),
(4, 4, 'Si', 'No', 'false', 'false', 'false', '2017-07-28 19:47:18', '2017-07-28 19:47:18'),
(5, 5, 'Folleto', 'Libros', 'Manual', 'Guía', 'PPT', '2017-07-28 19:50:12', '2017-07-28 19:50:12');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `preguntas`
--

CREATE TABLE `preguntas` (
  `id` int(10) UNSIGNED NOT NULL,
  `modulo_id` int(10) UNSIGNED NOT NULL,
  `titulo_pregunta` varchar(300) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tipo_pregunta` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `preguntas`
--

INSERT INTO `preguntas` (`id`, `modulo_id`, `titulo_pregunta`, `tipo_pregunta`, `slug`, `created_at`, `updated_at`) VALUES
(1, 1, 'El SCI de su institución se encuentra en funcionamiento', '1', 'el-sci-de-su-institucion-se-encuentra-en-funcionamiento', '2017-07-28 11:57:48', '2017-07-28 11:57:48'),
(2, 1, 'En qué etapa del SCI se encuentra su institución (marque) *', '4', 'en-que-etapa-del-sci-se-encuentra-su-institucion-marque', '2017-07-28 12:04:17', '2017-07-28 12:04:17'),
(3, 2, 'El CCI ha realizado actividades de sensibilización para la implementación del SCI', '1', 'el-cci-ha-realizado-actividades-de-sensibilizacion-para-la-implementacion-del-sci', '2017-07-28 18:51:50', '2017-07-28 18:51:50'),
(4, 3, 'En las capacitaciones realizadas su institución ha brindado material de refuerzo', '1', 'en-las-capacitaciones-realizadas-su-institucion-ha-brindado-material-de-refuerzo', '2017-07-28 19:47:18', '2017-07-28 19:47:18'),
(5, 3, 'Indique cuáles', '4', 'indique-cuales', '2017-07-28 19:50:11', '2017-07-28 19:50:11');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `modulos`
--
ALTER TABLE `modulos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `opciones`
--
ALTER TABLE `opciones`
  ADD PRIMARY KEY (`id`),
  ADD KEY `opciones_pregunta_id_foreign` (`pregunta_id`);

--
-- Indices de la tabla `preguntas`
--
ALTER TABLE `preguntas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `preguntas_modulo_id_foreign` (`modulo_id`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT de la tabla `modulos`
--
ALTER TABLE `modulos`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT de la tabla `opciones`
--
ALTER TABLE `opciones`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT de la tabla `preguntas`
--
ALTER TABLE `preguntas`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `opciones`
--
ALTER TABLE `opciones`
  ADD CONSTRAINT `opciones_pregunta_id_foreign` FOREIGN KEY (`pregunta_id`) REFERENCES `preguntas` (`id`);

--
-- Filtros para la tabla `preguntas`
--
ALTER TABLE `preguntas`
  ADD CONSTRAINT `preguntas_modulo_id_foreign` FOREIGN KEY (`modulo_id`) REFERENCES `modulos` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
