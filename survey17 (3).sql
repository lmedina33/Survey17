-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 10-08-2017 a las 16:26:58
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
-- Estructura de tabla para la tabla `avance_encuesta`
--

CREATE TABLE `avance_encuesta` (
  `id` int(10) UNSIGNED NOT NULL,
  `entidad_id` int(10) UNSIGNED NOT NULL,
  `modulo_avance` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pregunta_avance` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `avance_encuesta`
--

INSERT INTO `avance_encuesta` (`id`, `entidad_id`, `modulo_avance`, `pregunta_avance`, `created_at`, `updated_at`) VALUES
(1, 1, 'modulo1', 'ssd', '2017-08-10 07:56:14', '2017-08-10 07:56:14'),
(2, 2, 'modulo1', 'ssd', '2017-08-10 08:00:45', '2017-08-10 08:00:45'),
(3, 3, 'modulo1', 'ssd', '2017-08-10 08:02:29', '2017-08-10 08:02:29'),
(4, 4, 'modulo1', 'ssd', '2017-08-10 08:07:40', '2017-08-10 08:07:40'),
(5, 5, 'modulo2', 'ssd', '2017-08-10 08:10:33', '2017-08-10 08:11:36'),
(6, 6, 'modulo2', 'ssd', '2017-08-10 08:20:36', '2017-08-10 08:21:51'),
(7, 7, 'modulo2', 'ssd', '2017-08-10 08:23:24', '2017-08-10 08:24:30'),
(8, 8, 'modulo2', 'ssd', '2017-08-10 08:41:07', '2017-08-10 08:42:07'),
(9, 9, 'modulo2', 'ssd', '2017-08-10 08:45:34', '2017-08-10 08:46:18'),
(10, 10, 'modulo2', 'ssd', '2017-08-10 08:47:38', '2017-08-10 08:48:13'),
(11, 11, 'modulo2', 'ssd', '2017-08-10 09:10:26', '2017-08-10 09:11:10'),
(12, 12, 'modulo2', 'ssd', '2017-08-10 09:16:18', '2017-08-10 09:17:02'),
(13, 13, 'modulo2', 'ssd', '2017-08-10 09:38:39', '2017-08-10 09:39:12'),
(14, 14, 'modulo1', 'ssd', '2017-08-10 09:41:29', '2017-08-10 09:41:29'),
(15, 15, 'modulo1', 'ssd', '2017-08-10 09:42:08', '2017-08-10 09:42:08'),
(16, 16, 'modulo2', 'ssd', '2017-08-10 12:20:41', '2017-08-10 12:21:35'),
(17, 17, 'modulo2', 'ssd', '2017-08-10 12:33:07', '2017-08-10 12:34:06'),
(18, 18, 'modulo1', 'ssd', '2017-08-10 13:13:40', '2017-08-10 13:13:40'),
(19, 19, 'modulo1', 'ssd', '2017-08-10 13:21:50', '2017-08-10 13:21:50'),
(20, 20, 'modulo1', 'ssd', '2017-08-10 13:26:45', '2017-08-10 13:26:45'),
(21, 21, 'modulo1', 'ssd', '2017-08-10 13:29:24', '2017-08-10 13:29:24'),
(22, 22, 'modulo1', 'ssd', '2017-08-10 13:37:21', '2017-08-10 13:37:21'),
(23, 23, 'modulo1', 'ssd', '2017-08-10 13:41:00', '2017-08-10 13:41:00'),
(24, 24, 'modulo1', 'ssd', '2017-08-10 13:46:38', '2017-08-10 13:46:38'),
(25, 25, 'modulo1', 'ssd', '2017-08-10 14:08:19', '2017-08-10 14:08:19');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `encuestados`
--

CREATE TABLE `encuestados` (
  `id` int(10) UNSIGNED NOT NULL,
  `entidad_id` int(10) UNSIGNED NOT NULL,
  `nombre_encuestado` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dni_encuestado` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `encuestados`
--

INSERT INTO `encuestados` (`id`, `entidad_id`, `nombre_encuestado`, `dni_encuestado`, `created_at`, `updated_at`) VALUES
(1, 1, 'FERNANDO GARCIA CALDERON', '46622539', '2017-08-10 07:56:12', '2017-08-10 07:56:12'),
(2, 2, 'KDJ SAKJDHKJSD KJH DKJHSD', '47859612', '2017-08-10 08:00:43', '2017-08-10 08:00:43'),
(3, 3, 'SLDFJ SLKDF JLKSDFJ LKSJFD', '41527896', '2017-08-10 08:02:28', '2017-08-10 08:02:28'),
(4, 4, 'KJS HDFKJSH KDFJ SKJFHKSJDFH KJSD', '41526398', '2017-08-10 08:07:38', '2017-08-10 08:07:38'),
(5, 5, 'SDF AISDFAKJDFKJADHF KJAS DFHKJ', '74851236', '2017-08-10 08:10:32', '2017-08-10 08:10:32'),
(6, 6, 'DKF SLKD FLKSJDFKLSDJ FLKJSDF', '47859612', '2017-08-10 08:20:34', '2017-08-10 08:20:34'),
(7, 7, 'SD FAKJSHDFKJ DFKJAHDFKJ', '74859612', '2017-08-10 08:23:23', '2017-08-10 08:23:23'),
(8, 8, 'SKJ DHFKSJD FHKJS HDFKJ SDK', '74103698', '2017-08-10 08:41:06', '2017-08-10 08:41:06'),
(9, 9, 'KSJD HFKSJFD HKJSDHFKJ', '41526378', '2017-08-10 08:45:33', '2017-08-10 08:45:33'),
(10, 10, 'SDJFSKJDF SDKJFHSKD FKJSDHF', '41526398', '2017-08-10 08:47:37', '2017-08-10 08:47:37'),
(11, 11, 'SKJDHFKAJ DFJKASDHFKJ AHSDF', '41520789', '2017-08-10 09:10:25', '2017-08-10 09:10:25'),
(12, 12, 'KSDFHKSJFHKJS DHFKJSHDFKJ HSFDKJ', '74125638', '2017-08-10 09:16:17', '2017-08-10 09:16:17'),
(13, 13, 'KSDJ HFKJSHDFKJ H', '41203569', '2017-08-10 09:38:38', '2017-08-10 09:38:38'),
(14, 14, 'LSDKJ LKDJFLA JDFLJSADF', '41526378', '2017-08-10 09:41:28', '2017-08-10 09:41:28'),
(15, 15, 'SKD JFHSKJDFH SKJDF H', '41526988', '2017-08-10 09:42:07', '2017-08-10 09:42:07'),
(16, 16, 'AFASFAS', '6565465', '2017-08-10 12:20:40', '2017-08-10 12:20:40'),
(17, 17, 'SADFKJAHDKF HAKFAKFHASKDFH', '41526398', '2017-08-10 12:33:06', '2017-08-10 12:33:06'),
(18, 18, 'KDSHFKAJDHF KJASDHF', '415263987', '2017-08-10 13:13:39', '2017-08-10 13:13:39'),
(19, 19, 'SKJDFHAKJDF KJADHF KASH DF', '47859632', '2017-08-10 13:21:49', '2017-08-10 13:21:49'),
(20, 20, 'SKDJF HAJSDF HKASDF', '41526398', '2017-08-10 13:26:44', '2017-08-10 13:26:44'),
(21, 21, 'DJF AKDF HKAJSD HFJKAHDS FH', '12345678', '2017-08-10 13:29:23', '2017-08-10 13:29:23'),
(22, 22, 'SDF AKSJDFHKJAD FJHAD', '74859632', '2017-08-10 13:37:20', '2017-08-10 13:37:20'),
(23, 23, 'SKDJ HFKJS DFK', '74859612', '2017-08-10 13:40:59', '2017-08-10 13:40:59'),
(24, 24, 'SKJFH KSJDFH', '74851236', '2017-08-10 13:46:36', '2017-08-10 13:46:36'),
(25, 25, 'DFJ AKJF HKDF AKJDFHKA HD', '74589632', '2017-08-10 14:08:18', '2017-08-10 14:08:18');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `encuestas`
--

CREATE TABLE `encuestas` (
  `id` int(10) UNSIGNED NOT NULL,
  `tipo_encuesta` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `encuestas`
--

INSERT INTO `encuestas` (`id`, `tipo_encuesta`, `created_at`, `updated_at`) VALUES
(1, 'Entidades con Sistema de Control Interno', '2017-08-10 06:06:58', '2017-08-10 06:06:58'),
(2, 'Entidades sin Sistema de Control Interno', '2017-08-10 06:07:17', '2017-08-10 06:07:17');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `entidades`
--

CREATE TABLE `entidades` (
  `id` int(10) UNSIGNED NOT NULL,
  `tipo_entidad` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nombre_entidad` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(300) COLLATE utf8mb4_unicode_ci NOT NULL,
  `departamento` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `provincia` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `distrito` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `entidades`
--

INSERT INTO `entidades` (`id`, `tipo_entidad`, `nombre_entidad`, `slug`, `departamento`, `provincia`, `distrito`, `created_at`, `updated_at`) VALUES
(1, 'Gobierno Central', 'ACADEMIA DE LA MAGISTRATURA', 'academia-de-la-magistratura', 'LIMA', 'LIMA', 'LIMA', '2017-08-10 07:56:12', '2017-08-10 07:56:12'),
(2, 'Gobierno Central', 'ARCHIVO GENERAL DE LA NACIÓN', 'archivo-general-de-la-nacion', 'LIMA', 'LIMA', 'LIMA', '2017-08-10 08:00:43', '2017-08-10 08:00:43'),
(3, 'Gobierno Local', 'AUTORIDAD DEL PROYECTO COSTA VERDE', 'autoridad-del-proyecto-costa-verde', 'LIMA', 'LIMA', 'JESUS MARIA', '2017-08-10 08:02:28', '2017-08-10 08:02:28'),
(4, 'Gobierno Local', 'CAJA MUNICIPAL DE AHORRO Y CRÉDITO  CUSCO  S.A.', 'caja-municipal-de-ahorro-y-credito-cusco-sa', 'CUSCO', 'CUSCO', 'WANCHAQ', '2017-08-10 08:07:38', '2017-08-10 08:07:38'),
(5, 'Gobierno Local', 'CAJA MUNICIPAL DE AHORRO Y CRÉDITO DE ICA S.A.', 'caja-municipal-de-ahorro-y-credito-de-ica-sa', 'ICA', 'ICA', 'ICA', '2017-08-10 08:10:32', '2017-08-10 08:10:32'),
(6, 'Gobierno Local', 'CAJA MUNICIPAL DE AHORRO Y CRÉDITO DE PAITA S.A. CMAC PAITA', 'caja-municipal-de-ahorro-y-credito-de-paita-sa-cmac-paita', 'PIURA', 'PAITA', 'PAITA', '2017-08-10 08:20:34', '2017-08-10 08:20:34'),
(7, 'Gobierno Local', 'CAJA MUNICIPAL DE AHORRO Y CRÉDITO DE SULLANA S.A.- CMAC', 'caja-municipal-de-ahorro-y-credito-de-sullana-sa-cmac', 'PIURA', 'SULLANA', 'SULLANA', '2017-08-10 08:23:23', '2017-08-10 08:23:23'),
(8, 'Gobierno Central', 'ZONA REGISTRAL Nº IX - SEDE LIMA- EX OFICINA REGISTRAL LIMA Y CALLAO', 'zona-registral-no-ix-sede-lima-ex-oficina-registral-lima-y-callao', 'LIMA', 'LIMA', 'JESUS MARIA', '2017-08-10 08:41:05', '2017-08-10 08:41:05'),
(9, 'Gobierno Central', 'ZONA REGISTRAL Nº V - SEDE TRUJILLO - LA LIBERTAD', 'zona-registral-no-v-sede-trujillo-la-libertad', 'LA LIBERTAD', 'TRUJILLO', 'TRUJILLO', '2017-08-10 08:45:32', '2017-08-10 08:45:32'),
(10, 'Gobierno Regional', 'ZONAS ESPECIALES DE DESARROLLO ILO - ZED ILO', 'zonas-especiales-de-desarrollo-ilo-zed-ilo', 'MOQUEGUA', 'ILO', 'ILO', '2017-08-10 08:47:36', '2017-08-10 08:47:36'),
(11, 'Gobierno Central', 'ZONA REGISTRAL Nº VIII SEDE HUANCAYO - JUNÍN', 'zona-registral-no-viii-sede-huancayo-junin', 'JUNIN', 'HUANCAYO', 'EL TAMBO', '2017-08-10 09:10:25', '2017-08-10 09:10:25'),
(12, 'Gobierno Central', 'UNIVERSIDAD NACIONAL DEL CALLAO', 'universidad-nacional-del-callao', 'P. C. DEL CALLAO', 'PROV. CONST. DEL CALLAO', 'BELLAVISTA', '2017-08-10 09:16:17', '2017-08-10 09:16:17'),
(13, 'Gobierno Central', 'UNIVERSIDAD NACIONAL DEL CENTRO DEL PERÚ - HUANCAYO', 'universidad-nacional-del-centro-del-peru-huancayo', 'JUNIN', 'HUANCAYO', 'EL TAMBO', '2017-08-10 09:38:37', '2017-08-10 09:38:37'),
(14, 'Gobierno Central', 'CORTE SUPERIOR DE JUSTICIA DE CUSCO', 'corte-superior-de-justicia-de-cusco', 'CUSCO', 'CUSCO', 'CUSCO', '2017-08-10 09:41:27', '2017-08-10 09:41:27'),
(15, 'Gobierno Central', 'DEFENSORÍA DEL PUEBLO', 'defensoria-del-pueblo', 'LIMA', 'LIMA', 'LIMA', '2017-08-10 09:42:07', '2017-08-10 09:42:07'),
(16, 'Gobierno Regional', 'DIRECCIÓN REGIONAL DE SALUD ANCASH', 'direccion-regional-de-salud-ancash', 'ANCASH', 'HUARAZ', 'HUARAZ', '2017-08-10 12:20:40', '2017-08-10 12:20:40'),
(17, 'Gobierno Regional', 'DIRECCION REGIONAL DE PRODUCCION - SAN MARTIN', 'direccion-regional-de-produccion-san-martin', 'SAN MARTIN', 'MOYOBAMBA', 'MOYOBAMBA', '2017-08-10 12:33:06', '2017-08-10 12:33:06'),
(18, 'Gobierno Regional', 'DIRECCIÓN REGIONAL DE SALUD SAN MARTÍN', 'direccion-regional-de-salud-san-martin', 'SAN MARTIN', 'MOYOBAMBA', 'MOYOBAMBA', '2017-08-10 13:13:38', '2017-08-10 13:13:38'),
(19, 'Gobierno Central', 'ELECTRICIDAD DEL PERÚ S.A. - ELECTROPERU', 'electricidad-del-peru-sa-electroperu', 'LIMA', 'LIMA', 'SAN JUAN DE MIRAFLORES', '2017-08-10 13:21:49', '2017-08-10 13:21:49'),
(20, 'Gobierno Regional', 'DIRECCION SUB REGIONAL DE SALUD HUALLAGA CENTRAL - JUANJUI', 'direccion-sub-regional-de-salud-huallaga-central-juanjui', 'SAN MARTIN', 'MARISCAL CACERES', 'JUANJUI', '2017-08-10 13:26:44', '2017-08-10 13:26:44'),
(21, 'Gobierno Regional', 'DIRECCION REGIONAL DE TRANSPORTES Y COMUNICACIONES CUSCO', 'direccion-regional-de-transportes-y-comunicaciones-cusco', 'CUSCO', 'CUSCO', 'WANCHAQ', '2017-08-10 13:29:23', '2017-08-10 13:29:23'),
(22, 'Gobierno Central', 'EJERCITO DEL PERÚ', 'ejercito-del-peru', 'LIMA', 'LIMA', 'SAN BORJA', '2017-08-10 13:37:20', '2017-08-10 13:37:20'),
(23, 'Gobierno Regional', 'DIRECCIÓN SUB REGIONAL DE SALUD I JAÉN', 'direccion-sub-regional-de-salud-i-jaen', 'CAJAMARCA', 'JAEN', 'JAEN', '2017-08-10 13:40:59', '2017-08-10 13:40:59'),
(24, 'Gobierno Regional', 'DIRECCION SUB REGIONAL DE SALUD HUALLAGA CENTRAL - JUANJUI', 'direccion-sub-regional-de-salud-huallaga-central-juanjui', 'SAN MARTIN', 'MARISCAL CACERES', 'JUANJUI', '2017-08-10 13:46:36', '2017-08-10 13:46:36'),
(25, 'Gobierno Local', 'CAJA MUNICIPAL DE AHORRO Y CRÉDITO DE TACNA S.A. CMAC TACNA', 'caja-municipal-de-ahorro-y-credito-de-tacna-sa-cmac-tacna', 'TACNA', 'TACNA', 'TACNA', '2017-08-10 14:08:17', '2017-08-10 14:08:17');

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
(3, '2017_08_06_142518_create_encuestas_table', 1),
(4, '2017_08_06_142550_create_seccion_table', 1),
(5, '2017_08_06_143556_create_modulos_table', 1),
(6, '2017_08_06_143618_create_preguntas_table', 1),
(7, '2017_08_06_143656_create_opciones_table', 1),
(8, '2017_08_06_150336_create_entidadd_table', 1),
(9, '2017_08_06_150437_create_titulares_table', 1),
(10, '2017_08_06_150454_create_presidentes_table', 1),
(11, '2017_08_06_150543_create_encuestados_table', 1),
(12, '2017_08_06_150640_create_progreso_encuesta_table', 1),
(13, '2017_08_06_150716_create_notificacion_table', 1),
(14, '2017_08_06_150732_create_respuestas_table', 1),
(15, '2017_08_06_151240_create_presidentes_filtrados_table', 1),
(16, '2017_08_06_214151_create_validaciones_table', 1),
(17, '2017_08_09_002119_create_avance_encuesta_table', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `modulos`
--

CREATE TABLE `modulos` (
  `id` int(10) UNSIGNED NOT NULL,
  `seccion_id` int(10) UNSIGNED NOT NULL,
  `modulo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nombre_modulo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tab` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `modulos`
--

INSERT INTO `modulos` (`id`, `seccion_id`, `modulo`, `nombre_modulo`, `tab`, `slug`, `created_at`, `updated_at`) VALUES
(1, 1, 'Módulo I', 'Aspectos Generales', 'modulo1', 'modulo-i-aspectos-generales', '2017-08-10 06:08:28', '2017-08-10 06:08:28'),
(2, 1, 'Módulo II', 'Sensibilización', 'modulo2', 'modulo-ii-sensibilizacion', '2017-08-10 08:17:25', '2017-08-10 08:17:25'),
(3, 1, 'Módulo III', 'Capacitación', 'modulo3', 'modulo-iii-capacitacion', '2017-08-10 09:24:43', '2017-08-10 09:24:43');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `notificaciones`
--

CREATE TABLE `notificaciones` (
  `id` int(10) UNSIGNED NOT NULL,
  `tipo_actividad` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_actividad` int(11) NOT NULL,
  `estado` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `notificaciones`
--

INSERT INTO `notificaciones` (`id`, `tipo_actividad`, `id_actividad`, `estado`, `created_at`, `updated_at`) VALUES
(1, 'Entidad', 1, 'true', '2017-08-10 07:56:12', '2017-08-10 08:16:50'),
(2, 'Entidad', 2, 'true', '2017-08-10 08:00:43', '2017-08-10 08:16:50'),
(3, 'Entidad', 3, 'true', '2017-08-10 08:02:28', '2017-08-10 08:16:50'),
(4, 'Entidad', 4, 'true', '2017-08-10 08:07:38', '2017-08-10 08:16:50'),
(5, 'Entidad', 5, 'true', '2017-08-10 08:10:32', '2017-08-10 08:16:50'),
(6, 'Entidad', 6, 'true', '2017-08-10 08:20:34', '2017-08-10 08:26:47'),
(7, 'Entidad', 7, 'true', '2017-08-10 08:23:23', '2017-08-10 08:26:47'),
(8, 'Entidad', 8, 'true', '2017-08-10 08:41:05', '2017-08-10 08:44:46'),
(9, 'Entidad', 9, 'true', '2017-08-10 08:45:32', '2017-08-10 08:49:57'),
(10, 'Entidad', 10, 'true', '2017-08-10 08:47:37', '2017-08-10 08:49:57'),
(11, 'Entidad', 11, 'true', '2017-08-10 09:10:25', '2017-08-10 09:40:40'),
(12, 'Entidad', 12, 'true', '2017-08-10 09:16:17', '2017-08-10 09:40:40'),
(13, 'Entidad', 13, 'true', '2017-08-10 09:38:37', '2017-08-10 09:40:40'),
(14, 'Entidad', 14, 'true', '2017-08-10 09:41:28', '2017-08-10 12:29:07'),
(15, 'Entidad', 15, 'true', '2017-08-10 09:42:07', '2017-08-10 12:29:07'),
(16, 'Entidad', 16, 'true', '2017-08-10 12:20:40', '2017-08-10 12:29:07'),
(17, 'Entidad', 17, 'false', '2017-08-10 12:33:06', '2017-08-10 12:33:06'),
(18, 'Entidad', 18, 'false', '2017-08-10 13:13:39', '2017-08-10 13:13:39'),
(19, 'Entidad', 19, 'false', '2017-08-10 13:21:49', '2017-08-10 13:21:49'),
(20, 'Entidad', 20, 'false', '2017-08-10 13:26:44', '2017-08-10 13:26:44'),
(21, 'Entidad', 21, 'false', '2017-08-10 13:29:23', '2017-08-10 13:29:23'),
(22, 'Entidad', 22, 'false', '2017-08-10 13:37:20', '2017-08-10 13:37:20'),
(23, 'Entidad', 23, 'false', '2017-08-10 13:40:59', '2017-08-10 13:40:59'),
(24, 'Entidad', 24, 'false', '2017-08-10 13:46:36', '2017-08-10 13:46:36'),
(25, 'Entidad', 25, 'false', '2017-08-10 14:08:17', '2017-08-10 14:08:17');

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
  `opcion6` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `opciones`
--

INSERT INTO `opciones` (`id`, `pregunta_id`, `opcion1`, `opcion2`, `opcion3`, `opcion4`, `opcion5`, `opcion6`, `created_at`, `updated_at`) VALUES
(1, 1, '1 Año', '2 Años', '3 Años', '4 Años a más', NULL, NULL, '2017-08-10 06:09:57', '2017-08-10 06:09:57'),
(2, 2, 'Etapa 1: Acciones preliminares', 'Etapa 2: Identificación de brechas', 'Etapa 3: Elaboración del Plan de trabajo para el cierre de brechas', 'Etapa 4: Cierre de brechas', 'Etapa 5: Reporte de evaluación y mejora continua', NULL, '2017-08-10 06:11:12', '2017-08-10 06:11:12'),
(3, 3, 'Combatir la corrupción', 'Identificar riesgos en la gestión', 'Mejorar los procesos', 'Proteger los recursos del Estado', 'Mayor transparencia', 'Lograr los objetivos institucionales', '2017-08-10 06:13:12', '2017-08-10 06:13:12'),
(4, 4, 'Tesorería', 'Logística', 'Contabilidad', 'Todas las áreas', NULL, NULL, '2017-08-10 07:52:23', '2017-08-10 07:52:23'),
(5, 5, 'El Órgano de Control Institucional -OCI', 'La Alta Dirección', 'Todos los trabajadores', 'El Comité de Control Interno', NULL, NULL, '2017-08-10 07:55:28', '2017-08-10 07:55:28'),
(6, 6, 'Si', 'No', NULL, NULL, NULL, NULL, '2017-08-10 08:18:41', '2017-08-10 08:18:41'),
(7, 7, 'Charla', 'Reunión', 'Activación', 'Evento', NULL, NULL, '2017-08-10 08:38:44', '2017-08-10 08:38:44'),
(8, 8, '1 sola vez desde que se instaló el Comité', '2 veces desde que se instaló el Comité', '1 vez al año', '2 veces al año', '3 veces al año', '4 veces al año', '2017-08-10 08:44:38', '2017-08-10 08:44:38'),
(9, 9, 'Código de Ética', 'Filosofía de la institución (misión, visión, valores y objetivos de la institución)', 'Funcionamiento e importancia del Sistema de Control Interno', 'Anticorrupción', 'Mejoras en los procesos de la institución', 'Uso eficaz, eficiente y transparente de bienes y recursos del Estado', '2017-08-10 08:52:31', '2017-08-10 08:52:31'),
(10, 10, 'Personal de la sede central', 'Personal de todas las áreas', 'Personal de sus sedes en otras regiones', 'Alta Dirección', NULL, NULL, '2017-08-10 08:54:57', '2017-08-10 08:54:57'),
(11, 11, 'Si', 'No', 'En parte', NULL, NULL, NULL, '2017-08-10 08:56:07', '2017-08-10 08:56:07'),
(12, 12, '10%', '20%', '40%', '50%', '80%', '90%', '2017-08-10 08:58:02', '2017-08-10 08:58:02'),
(13, 13, 'La Actividad', '¿Por qué?', NULL, NULL, NULL, NULL, '2017-08-10 09:05:32', '2017-08-10 09:05:32'),
(14, 14, '1 vez al año', '2 veces al año', '3 veces al año', '4 veces al año', NULL, NULL, '2017-08-10 09:22:43', '2017-08-10 09:22:43'),
(15, 15, 'Falta de tiempo', 'Falta de recursos económicos', 'No está indicado en el Plan Operativo Institucional', 'No hay interés del personal', 'No hay interés de la Alta Dirección', NULL, '2017-08-10 09:24:16', '2017-08-10 09:24:16'),
(16, 16, 'Si', 'No', NULL, NULL, NULL, NULL, '2017-08-10 09:25:12', '2017-08-10 09:25:12'),
(17, 17, 'Gestión por Procesos / Gestión para resultados', 'Identificación de riesgos', 'Implementación del SCI', 'Control gubernamental y Control Interno', NULL, NULL, '2017-08-10 09:26:58', '2017-08-10 09:26:58'),
(18, 18, 'A todo el personal de la institución', 'Miembros del CCI', 'Alta Dirección', 'Coordinadores del CCI', 'Algunos', NULL, '2017-08-10 09:28:29', '2017-08-10 09:28:29'),
(19, 19, 'Si', 'No', NULL, NULL, NULL, NULL, '2017-08-10 09:28:59', '2017-08-10 09:28:59'),
(20, 20, 'Si', 'No', NULL, NULL, NULL, NULL, '2017-08-10 09:29:31', '2017-08-10 09:29:31'),
(21, 21, 'Falta de recursos económicos', 'Falta mayor capacitación', 'No está incluido en el Plan de Desarrollo de Personas PDP', 'No hay interés del personal', 'No hay interés de la Alta Dirección', NULL, '2017-08-10 09:30:56', '2017-08-10 09:30:56'),
(22, 22, NULL, NULL, NULL, NULL, NULL, NULL, '2017-08-10 09:34:30', '2017-08-10 09:34:30');

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
-- Estructura de tabla para la tabla `pdtes_filtrados`
--

CREATE TABLE `pdtes_filtrados` (
  `id` int(10) UNSIGNED NOT NULL,
  `nro_documento` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `apellidos_nombres` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `correo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rol` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `codigo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nombre_entidad` varchar(300) COLLATE utf8mb4_unicode_ci NOT NULL,
  `proceso` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cnig_nombre` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cdpt_dpto` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cprv_prov` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cdst_distrit` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `pdtes_filtrados`
--

INSERT INTO `pdtes_filtrados` (`id`, `nro_documento`, `apellidos_nombres`, `correo`, `rol`, `codigo`, `nombre_entidad`, `proceso`, `cnig_nombre`, `cdpt_dpto`, `cprv_prov`, `cdst_distrit`) VALUES
(1, '23926884', 'LECHUGA PINO ERNESTO', 'ELECHUGA@AMAG.EDU.PE', 'PRESIDENTE DE COMITE', '', 'ACADEMIA DE LA MAGISTRATURA', '', 'Gobierno Central', 'LIMA', 'LIMA', 'LIMA'),
(2, '06259186', 'MONTENEGRO CRIADO MARCOS ANTONIO', 'ANTONIO.MONTENEGRO@AMSAC.PE', 'PRESIDENTE DE COMITE', '', 'ACTIVOS MINEROS S.A.C.', '', 'Gobierno Central', 'LIMA', 'LIMA', 'SAN JUAN DE MIRAFLORES'),
(3, '43486894', 'BALLESTEROS VALENCIA VICTOR MANUEL', 'VBALLESTEROS@ACFFAA.GOB.PE', 'PRESIDENTE DE COMITE', '', 'AGENCIA DE COMPRAS DE LAS FUERZAS ARMADAS', '', 'Gobierno Central', 'LIMA', 'LIMA', 'LIMA'),
(4, '00370087', 'SOLIS IPARRAGUIRRE LUIS ABELARDO', 'LSOLIS@ACFFAA.GOB.PE', 'PRESIDENTE DE COMITE', '', 'AGENCIA DE COMPRAS DE LAS FUERZAS ARMADAS', '', 'Gobierno Central', 'LIMA', 'LIMA', 'LIMA'),
(5, '09392230', 'MARTINEZ ORTIZ JUAN JOSE', 'MARTINEZ@PROINVERSION.GOB.PE', 'PRESIDENTE DE COMITE', '', 'AGENCIA DE PROMOCIÓN DE LA INVERSIÓN PRIVADA - PRO INVERSIÓN', '', 'Gobierno Central', 'LIMA', 'LIMA', 'SAN ISIDRO'),
(6, '08192896', 'VILLEGAS DEL SOLAR GUSTAVO RICARDO', 'GVILLEGAS@PROINVERSION.GOB.PE', 'PRESIDENTE DE COMITE', '', 'AGENCIA DE PROMOCIÓN DE LA INVERSIÓN PRIVADA - PRO INVERSIÓN', '', 'Gobierno Central', 'LIMA', 'LIMA', 'SAN ISIDRO'),
(7, '29691656', 'VARGAS CHOQUE MARTHA LUZ', 'MLVARGAS@PROINVERSION.GOB.PE', 'PRESIDENTE DE COMITE', '', 'AGENCIA DE PROMOCIÓN DE LA INVERSIÓN PRIVADA - PRO INVERSIÓN', '', 'Gobierno Central', 'LIMA', 'LIMA', 'SAN ISIDRO'),
(8, '08195242', 'CHIAPPE SOLIMANO FERNANDO ENRIQUE', 'FCHIAPPE@APCI.GOB.PE', 'PRESIDENTE DE COMITE', '', 'AGENCIA PERUANA DE COOPERACIÓN INTERNACIONAL - APCI', '', 'Gobierno Central', 'LIMA', 'LIMA', 'MIRAFLORES'),
(9, '07145680', 'MORALES LOZANO JACINTA GLORIA', 'JMORALESL@MINEDU.GOB.PE', 'PRESIDENTE DE COMITE', '', 'APOYO A LA FORMACIÓN PROF PARA LA INSERCIÓN LAB. EN EL PERÚ: CONSOLIDACIÓN Y AMPLIACIÓN-AP', '', 'Gobierno Central', 'LIMA', 'LIMA', 'SAN BORJA'),
(10, '25647838', 'PELÁEZ HIDALGO GUIDO ', 'GPELAEZ@ARCHIVOGENERAL.GOB.PE', 'PRESIDENTE DE COMITE', '', 'ARCHIVO GENERAL DE LA NACIÓN', '', 'Gobierno Central', 'LIMA', 'LIMA', 'LIMA'),
(11, '30403933', 'HERRERA QUISPE HUGO JOSE', 'HHERRERA@AUTODEMA.GOB.PE', 'PRESIDENTE DE COMITE', '', 'AUTORIDAD AUTÓNOMA DE MAJES SIGUAS - AUTODEMA - GOBIERNO REGIONAL DE AREQUIPA', '', 'Gobierno Regional', 'AREQUIPA', 'AREQUIPA', 'CAYMA'),
(12, '06007522', 'DIEZ GUERRERO PEDRO EDGAR', 'PDIEZ@AATE.GOB.PE', 'PRESIDENTE DE COMITE', '', 'AUTORIDAD AUTÓNOMA DEL SISTEMA ELÉCTRICO DE TRANSPORTE MASIVO DE LIMA Y CALLAO', '', 'Gobierno Central', 'LIMA', 'LIMA', 'SAN BORJA'),
(13, '10550299', 'CAICEDO REAÑO LUIS ENRIQUE', 'LCAICEDO@APCVPERU.GOB.PE', 'PRESIDENTE DE COMITE', '', 'AUTORIDAD DEL PROYECTO COSTA VERDE', '', 'Gobierno Local', 'LIMA', 'LIMA', 'JESUS MARIA'),
(14, '08262667', 'SOLIMANO LOPEZ ALIAGA ALDO FERNANDO', 'ALDO.SOLIMANO@HOTMAIL.COM', 'PRESIDENTE DE COMITE', '', 'AUTORIDAD MUNICIPAL DE LOS PANTANOS DE VILLA - PROHVILLA', '', 'Gobierno Local', 'LIMA', 'LIMA', 'CHORRILLOS'),
(15, '07635168', 'CEDAMANOS RODRIGUEZ MARCELO GONZALO', 'MCEDAMANOS@SERVIR.GOB.PE', 'PRESIDENTE DE COMITE', '', 'AUTORIDAD NACIONAL DE SERVICIO CIVIL', '', 'Gobierno Central', 'LIMA', 'LIMA', 'JESUS MARIA'),
(16, '29560510', 'PINTO ORTIZ YURY ALFONSO', 'YPINTO@ANA.GOB.PE', 'PRESIDENTE DE COMITE', '', 'AUTORIDAD NACIONAL DEL AGUA', '', 'Gobierno Central', 'LIMA', 'LIMA', 'SAN ISIDRO'),
(17, '06660455', 'ZAMBRANO COPELLO ROSA VERONICA', 'VZAMBRANO@APN.GOB.PE', 'PRESIDENTE DE COMITE', '', 'AUTORIDAD PORTUARIA NACIONAL', '', 'Gobierno Central', 'P. C. DEL CALLAO', 'PROV. CONST. DEL CALLAO', 'LA PERLA'),
(18, '07939685', 'CHIAPPE GUTIERREZ CESAR AUGUSTO', 'CCHIAPPE@AGROBANCO.COM.PE', 'PRESIDENTE DE COMITE', '', 'BANCO AGROPECUARIO - AGROBANCO', '', 'Gobierno Central', 'LIMA', 'LIMA', 'SAN ISIDRO'),
(19, '08727483', 'ROSSINI MIÑAN RENZO GUILLERMO', 'RENZO.ROSSINI@BCRP.GOB.PE', 'PRESIDENTE DE COMITE', '', 'BANCO CENTRAL DE RESERVA DEL PERÚ - BCR', '', 'Gobierno Central', 'LIMA', 'LIMA', 'LIMA'),
(20, '42276749', 'LUCAS VELARDE ELIZABETH NOEMI ', 'ELIZABETH.LUCAS@BNP.GOB.PE', 'PRESIDENTE DE COMITE', '', 'BIBLIOTECA NACIONAL DEL PERÚ', '', 'Gobierno Central', 'LIMA', 'LIMA', 'SAN BORJA'),
(21, '06786170', 'KANEKO LA ROSA JORGE ALEXANDER', 'JKANEKO@LACAJA.COM.PE', 'PRESIDENTE DE COMITE', '', 'CAJA DE PENSIONES MILITAR - POLICIAL', '', 'Gobierno Central', 'LIMA', 'LIMA', 'SAN ISIDRO'),
(22, '41085718', 'OLIVERA MURILLOS JOHN EDWARD', 'JOLIVERA@CMAC-CUSCO.COM.PE', 'PRESIDENTE DE COMITE', '', 'CAJA MUNICIPAL DE AHORRO Y CRÉDITO  CUSCO  S.A.', '', 'Gobierno Local', 'CUSCO', 'CUSCO', 'WANCHAQ'),
(23, '30849664', 'ARREDONDO POLAR ALBERTO VICENTE', 'AARREDOM@UCSM.EDU.PE', 'PRESIDENTE DE COMITE', '', 'CAJA MUNICIPAL DE AHORRO Y CRÉDITO DE AREQUIPA S.A ', '', 'Gobierno Local', 'AREQUIPA', 'AREQUIPA', 'AREQUIPA'),
(24, '29275978', 'ARRIAGA PACHECO CESAR AUGUSTO', 'CARRIAGA@CARITASAREQUIPA.ORG.PE', 'PRESIDENTE DE COMITE', '', 'CAJA MUNICIPAL DE AHORRO Y CRÉDITO DE AREQUIPA S.A ', '', 'Gobierno Local', 'AREQUIPA', 'AREQUIPA', 'AREQUIPA'),
(25, '18087219', 'MENDOZA OCAÑA RAMIRO MIGUEL', 'RMMO@CMACICA.COM.PE', 'PRESIDENTE DE COMITE', '', 'CAJA MUNICIPAL DE AHORRO Y CRÉDITO DE ICA S.A.', '', 'Gobierno Local', 'ICA', 'ICA', 'ICA'),
(26, '05350080', 'GORDON RIOS MAGNO ENRIQUE', 'EGORDON@CAJAMAYNAS.COM.PE', 'PRESIDENTE DE COMITE', '', 'CAJA MUNICIPAL DE AHORRO Y CRÉDITO DE MAYNAS S.A. - CMAC MAYNAS', '', 'Gobierno Local', 'LORETO', 'MAYNAS', 'IQUITOS'),
(27, '02685922', 'MARTINEZ BENITES OSCAR HERNAN', 'OMARTINEZ@CAJAPAITA.PE', 'PRESIDENTE DE COMITE', '', 'CAJA MUNICIPAL DE AHORRO Y CRÉDITO DE PAITA S.A. CMAC PAITA', '', 'Gobierno Local', 'PIURA', 'PAITA', 'PAITA'),
(28, '02629293', 'FRANCO DE HECK MERCEDES', 'MFRANCOT@SPEEDY.COM.PE', 'PRESIDENTE DE COMITE', '', 'CAJA MUNICIPAL DE AHORRO Y CRÉDITO DE PIURA S.A..-CMAC', '', 'Gobierno Local', 'PIURA', 'PIURA', 'PIURA'),
(29, '02621824', 'FARFAN MARTINEZ LUIS ALBERTO', 'LFARFAN@CAJASULLANA.PE', 'PRESIDENTE DE COMITE', '', 'CAJA MUNICIPAL DE AHORRO Y CRÉDITO DE SULLANA S.A.- CMAC', '', 'Gobierno Local', 'PIURA', 'SULLANA', 'SULLANA'),
(30, '00795685', 'MONTESINOS SANCHEZ MIGUEL ANGEL', 'MMONTESINOS@CMACTACNA.COM.PE', 'PRESIDENTE DE COMITE', '', 'CAJA MUNICIPAL DE AHORRO Y CRÉDITO DE TACNA S.A. CMAC TACNA', '', 'Gobierno Local', 'TACNA', 'TACNA', 'TACNA'),
(31, '07796836', 'ZEGARRA CAMMINATI JORGE EDUARDO', 'EZC0074@GMAIL.COM', 'PRESIDENTE DE COMITE', '', 'CAJA MUNICIPAL DE AHORRO Y CRÉDITO DE TRUJILLO S.A.', '', 'Gobierno Local', 'LA LIBERTAD', 'TRUJILLO', 'TRUJILLO'),
(32, '17969385', 'VILCHEZ PELLA CARLOS MIGUEL', 'CMVP@CAJATRUJILLO.COM.PE', 'PRESIDENTE DE COMITE', '', 'CAJA MUNICIPAL DE AHORRO Y CRÉDITO DE TRUJILLO S.A.', '', 'Gobierno Local', 'LA LIBERTAD', 'TRUJILLO', 'TRUJILLO'),
(33, '08764675', 'MITSUMASU FUJIMOTO ERNESTO', 'EMITSUMASU@CAJAMETROPOLITANA.COM.PE', 'PRESIDENTE DE COMITE', '', 'CAJA MUNICIPAL DE CRÉDITO POPULAR DE LIMA - CMCP LIMA', '', 'Gobierno Local', 'LIMA', 'LIMA', 'LIMA'),
(34, '40094760', 'ENCINAS CACERES LIANA', 'LENCINAS@CENFOTUR.EDU.PE', 'PRESIDENTE DE COMITE', '', 'CENTRO DE FORMACIÓN EN TURISMO', '', 'Gobierno Central', 'LIMA', 'LIMA', 'BARRANCO'),
(35, '00512617', 'DAVILA VEGA WILLIAM ENRIQUE', 'WDAVILA@CGTCH.GOB.PE', 'PRESIDENTE DE COMITE', '', 'CENTRO DE GESTIÓN TRIBUTARIA DE CHICLAYO', '', 'Gobierno Local', 'LAMBAYEQUE', 'CHICLAYO', 'CHICLAYO'),
(36, '42286890', 'MALPARTIDA GARAY ABHIMAEL HARRY', 'HMALPARTIDA@CENARES.MINSA.GOB.PE', 'PRESIDENTE DE COMITE', '', 'CENTRO NACIONAL DE ABASTECIMIENTO DE RECURSOS ESTRATÉGICOS EN SALUD - CENARES', '', 'Gobierno Central', 'LIMA', 'LIMA', 'JESUS MARIA'),
(37, '19841696', 'ZAVALA AGUIRRE JOSE ANTONIO', 'JZAVALA@CENEPRED.GOB.PE', 'PRESIDENTE DE COMITE', '', 'CENTRO NACIONAL DE ESTIMACIÓN, PREVENCIÓN Y REDUCCIÓN DEL RIESGO DE DESASTRES - CENEPRED', '', 'Gobierno Central', 'LIMA', 'LIMA', 'SAN ISIDRO'),
(38, '07022482', 'HERNANI CHAVEZ CESAR ENRIQUE', 'CESAR.HERNANI@COLEGIOMAYOR.EDU.PE', 'PRESIDENTE DE COMITE', '', 'COLEGIO MAYOR SECUNDARIO PRESIDENTE DEL PERU', '', 'Gobierno Central', 'LIMA', 'LIMA', 'CHACLACAYO'),
(39, '43333601', 'SALAZAR CHAVES JOSE GUILLERMO', 'JSCH111111@HOTMAIL.COM', 'PRESIDENTE DE COMITE', '', 'COLEGIO MILITAR FRANCISCO BOLOGNESI', '', 'Gobierno Regional', 'AREQUIPA', 'AREQUIPA', 'ALTO SELVA ALEGRE'),
(40, '09462201', 'VILLARROEL ROSSI AUGUSTO JAVIER', 'AVILLAROEL@CCFFAA.MIL.PE', 'PRESIDENTE DE COMITE', '', 'COMANDO CONJUNTO DE LAS FUERZAS ARMADAS', '', 'Gobierno Central', 'LIMA', 'LIMA', 'LIMA'),
(41, '08231788', 'IBERICO BARRERA RICARDO HERNAN', 'RIBERICO@PROMPERU.GOB.PE', 'PRESIDENTE DE COMITE', '', 'COMISIÓN DE PROMOCIÓN DEL PERÚ PARA LA EXPORTACIÓN Y EL TURISMO - PROMPERU', '', 'Gobierno Central', 'LIMA', 'LIMA', 'SAN ISIDRO'),
(42, '09152932', 'MEDINA ZEA CARLOS BENIGNO', 'CMEDINAZ@CONIDA.GOB.PE', 'PRESIDENTE DE COMITE', '', 'COMISIÓN NACIONAL DE INVESTIGACIÓN Y DESARROLLO AEROESPACIAL - CONIDA', '', 'Gobierno Central', 'LIMA', 'LIMA', 'SAN ISIDRO'),
(43, '10301262', 'MARTINEZ BELTRAN KARLA YALILE', 'YMARTINEZ@DEVIDA.GOB.PE', 'PRESIDENTE DE COMITE', '', 'COMISIÓN NACIONAL PARA EL DESARROLLO Y VIDA SIN DROGAS - DEVIDA', '', 'Gobierno Central', 'LIMA', 'LIMA', 'MIRAFLORES'),
(44, '25652860', 'ALIAGA MENA MARIO MARTIN ', 'MALIAGA@CAFEDCALLAO.GOB.PE', 'PRESIDENTE DE COMITE', '', 'COMITÉ DE ADMINISTRACIÓN DEL FONDO EDUCATIVO DEL CALLAO', '', 'Gobierno Regional', 'P. C. DEL CALLAO', 'PROV. CONST. DEL CALLAO', 'CALLAO'),
(45, '08192986', 'DEL AGUILA ZAMORA FERIEL TATIANA', 'TATIANA.DELAGUILA@CNM.GOB.PE', 'PRESIDENTE DE COMITE', '', 'CONSEJO NACIONAL DE LA MAGISTRATURA', '', 'Gobierno Central', 'LIMA', 'LIMA', 'SAN ISIDRO'),
(46, '08545748', 'MUÑANTE MANRIQUE AQUILES ENRIQUE', 'EMUNANTE@CONADISPERU.GOB.PE', 'PRESIDENTE DE COMITE', '', 'CONSEJO NACIONAL PARA LA INTEGRACION DE LA PERSONA CON DISCAPACIDAD - CONADIS', '', 'Gobierno Central', 'LIMA', 'LIMA', 'LIMA'),
(47, '06800070', 'CARDENAS MAURICIO LUIS MARIANO', 'SAUSAGOCHA@HOTMAIL.COM', 'PRESIDENTE DE COMITE', '', 'CONSERVATORIO NACIONAL DE MUSICA', '', 'Gobierno Central', 'LIMA', 'LIMA', 'LIMA'),
(48, '08734698', 'QUIROZ VILLAVICENCIO GIOVANNA HAYDEE', 'GQUIROZ@CONTRALORIA.GOB.PE', 'PRESIDENTE DE COMITE', '', 'CONTRALORÍA GENERAL DE LA REPÚBLICA - CGR', '', 'Gobierno Central', 'LIMA', 'LIMA', 'JESUS MARIA'),
(49, '09153502', 'YUPANQUI ALVARADO OSWALDO ESTEBAN', 'OYUPANQUI@CONTRALORIA.GOB.PE', 'PRESIDENTE DE COMITE', '', 'CONTRALORÍA GENERAL DE LA REPÚBLICA - CGR', '', 'Gobierno Central', 'LIMA', 'LIMA', 'JESUS MARIA'),
(50, '06607844', 'UNTIVEROS MONDOÑEDO RITA PAULA', 'RUNTIVER@COFIDE.COM.PE', 'PRESIDENTE DE COMITE', '', 'CORPORACIÓN FINANCIERA DE DESARROLLO S.A. - COFIDE', '', 'Gobierno Central', 'LIMA', 'LIMA', 'SAN ISIDRO'),
(51, '25839233', 'LA TORRE MESIA MARIANO AUGUSTO', 'MLATORRE@CORPAC.GOB.PE', 'PRESIDENTE DE COMITE', '', 'CORPORACIÓN PERUANA DE AEROPUERTOS Y AVIACIÓN COMERCIAL S.A. - CORPAC', '', 'Gobierno Central', 'P. C. DEL CALLAO', 'PROV. CONST. DEL CALLAO', 'CALLAO'),
(52, '29259417', 'VALENCIA DONGO CARDENAS RITA PATRICIA MARIA', 'RVALENCIA@PJ.GOB.PE', 'PRESIDENTE DE COMITE', '', 'CORTE SUPERIOR DE JUSTICIA DE AREQUIPA', '', 'Gobierno Central', 'AREQUIPA', 'AREQUIPA', 'AREQUIPA'),
(53, '23825773', 'GROSSMANN CASAS ELIZABETH', 'EGROSSMAN@PJ.GOB.PE', 'PRESIDENTE DE COMITE', '', 'CORTE SUPERIOR DE JUSTICIA DE CUSCO', '', 'Gobierno Central', 'CUSCO', 'CUSCO', 'CUSCO'),
(54, '25759819', 'ESPINO GOYCOCHEA ROCIO', 'RESPINOG@BOMBEROSPERU.GOB.PE', 'PRESIDENTE DE COMITE', '', 'CUERPO GENERAL DE BOMBEROS VOLUNTARIOS DEL PERÚ', '', 'Gobierno Central', 'LIMA', 'LIMA', 'SAN ISIDRO'),
(55, '06106736', 'LEÓN ANASTACIO ARTURO EDUARDO', 'ALEON@DEFENSORIA.GOB.PE', 'PRESIDENTE DE COMITE', '', 'DEFENSORÍA DEL PUEBLO', '', 'Gobierno Central', 'LIMA', 'LIMA', 'LIMA'),
(56, '29370493', 'MORALES VALDIVIA BENEDICTA EMPERATRIZ', 'EMORALES136@HOTMAIL.COM', 'PRESIDENTE DE COMITE', '', 'DIRECCIÓN  REGIONAL DE SALUD MADRE DE DIOS', '', 'Gobierno Regional', 'MADRE DE DIOS', 'TAMBOPATA', 'TAMBOPATA'),
(57, '06140962', 'LAU MENDOZA DE MAURA MARIA ISABEL', 'MLAU@REDSASJL.GOB.PE', 'PRESIDENTE DE COMITE', '', 'DIRECCIÓN DE RED DE SALUD SAN JUAN DE LURIGANCHO', '', 'Gobierno Central', 'LIMA', 'LIMA', 'SAN JUAN DE LURIGANCHO'),
(58, '10018285', 'YAPO QUISPE PIO PELAGIO', 'MGECONOSALUD@HOTMAIL.COM', 'PRESIDENTE DE COMITE', '', 'DIRECCIÓN DE RED DE SALUD VILLA EL SALVADOR LURÍN PACHACAMAC PUCUSANA', '', 'Gobierno Central', 'LIMA', 'LIMA', 'VILLA EL SALVADOR'),
(59, '07905667', 'MONTALVAN SANTILLAN EDGAR', 'EMONTALVAN@LIMAESTE.GOB.PE', 'PRESIDENTE DE COMITE', '', 'DIRECCIÓN DE SALUD IV LIMA ESTE', '', 'Gobierno Central', 'LIMA', 'LIMA', 'EL AGUSTINO'),
(60, '43340298', 'MOSAURIETA ALVAREZ ALEX ALBERTO', 'ALEXM1264@HOTMAIL.COM', 'PRESIDENTE DE COMITE', '', 'DIRECCION EJECUTIVA  ANTIDROGAS- DIRANDRO PNP', '', 'Gobierno Central', 'LIMA', 'LIMA', 'SAN ISIDRO'),
(61, '09088454', 'MARTINEZ GABALDONI ELVA JACINTA', 'EMARTINEZ@MINDEF.GOB.PE', 'PRESIDENTE DE COMITE', '', 'DIRECCIÓN GENERAL PREVISIONAL DE LA FFAA-DIGEPREV', '', 'Gobierno Central', 'LIMA', 'LIMA', 'SAN BORJA'),
(62, '10003851', 'YUMI YAGUI LILIANA ROSA', 'SD135@DINI.GOB.PE', 'PRESIDENTE DE COMITE', '', 'DIRECCIÓN NACIONAL DE INTELIGENCIA - DINI', '', 'Gobierno Central', 'LIMA', 'LIMA', 'CHORRILLOS'),
(63, '45230568', 'ALEJANDRIA CASTRO CESAR AUGUSTO', 'CESAR.ALEJANDRIA@GMAIL.COM', 'PRESIDENTE DE COMITE', '', 'DIRECCIÓN REGIONAL AGRARIA DE SAN MARTÍN', '', 'Gobierno Regional', 'SAN MARTIN', 'SAN MARTIN', 'TARAPOTO'),
(64, '41093341', 'VASQUEZ GARAY TORRES PAULO', 'PVASQUEZDRAJ@GMAIL.COM', 'PRESIDENTE DE COMITE', '', 'DIRECCION REGIONAL AGRARIA JUNIN', '', 'Gobierno Regional', 'JUNIN', 'HUANCAYO', 'EL TAMBO'),
(65, '02778571', 'REYES LEON DAVID AUGUSTO', 'DREYESL@REGIONPIURA.GOB.PE', 'PRESIDENTE DE COMITE', '', 'DIRECCION REGIONAL AGRARIA PIURA', '', 'Gobierno Regional', 'PIURA', 'PIURA', 'PIURA'),
(66, '23864339', 'BACA RAMOS VICTOR ALEJANDRO', 'VBACA@DRACUSCO.GOB.PE', 'PRESIDENTE DE COMITE', '', 'DIRECCION REGIONAL DE AGRICULTURA CUSCO', '', 'Gobierno Regional', 'CUSCO', 'CUSCO', 'CUSCO'),
(67, '25319686', 'ATAUSINCHI LAUREL RICHARD', 'PROYECTOSRICHARD@GMAIL.COM', 'PRESIDENTE DE COMITE', '', 'DIRECCION REGIONAL DE COMERCIO EXTERIOR Y TURISMO DE CUSCO', '', 'Gobierno Regional', 'CUSCO', 'CUSCO', 'WANCHAQ'),
(68, '31032655', 'NAVENTA QUISPE HUGO', 'HUNAQUIS@HOTMAIL.COM', 'PRESIDENTE DE COMITE', '', 'DIRECCIÓN REGIONAL DE EDUCACIÓN APURÍMAC', '', 'Gobierno Regional', 'APURIMAC', 'ABANCAY', 'ABANCAY'),
(69, '23863492', 'MELENDREZ VELASCO ELIAS', 'ELMEVE01@HOTMAIL.COM', 'PRESIDENTE DE COMITE', '', 'DIRECCIÓN REGIONAL DE EDUCACIÓN CUSCO', '', 'Gobierno Regional', 'CUSCO', 'CUSCO', 'CUSCO'),
(70, '10213424', 'PABLO MEDINA FLOR AIDEE', 'FPABLO@DRELM.GOB.PE', 'PRESIDENTE DE COMITE', '', 'DIRECCIÓN REGIONAL DE EDUCACIÓN DE LIMA METROPOLITANA', '', 'Gobierno Central', 'LIMA', 'LIMA', 'LA VICTORIA'),
(71, '25644757', 'GARCIA SANTILLAN JOSE JULIAN', 'JJGARCIASANTI@GMAIL.COM', 'PRESIDENTE DE COMITE', '', 'DIRECCIÓN REGIONAL DE EDUCACIÓN DEL CALLAO (LA PERLA,C.LEGUA,BELLAV.,L.PUNTA,VENTANILLA)', '', 'Gobierno Regional', 'P. C. DEL CALLAO', 'PROV. CONST. DEL CALLAO', 'BELLAVISTA'),
(72, '27075754', 'QUEVEDO ORTIZ WILSON RICARDO', 'RENDICIONDECUENTAS@REGIONSANMARTIN.GOB.PE', 'PRESIDENTE DE COMITE', '', 'DIRECCIÓN REGIONAL DE EDUCACIÓN SAN MARTÍN - MOYOBAMBA', '', 'Gobierno Regional', 'SAN MARTIN', 'MOYOBAMBA', 'MOYOBAMBA'),
(73, '00497118', 'EYZAGUIRRE RETAMOZO MARIELA VERONICA', 'MAREYRE@HOTMAIL.COM', 'PRESIDENTE DE COMITE', '', 'DIRECCIÓN REGIONAL DE EDUCACIÓN TACNA', '', 'Gobierno Regional', 'TACNA', 'TACNA', 'CRNEL GREGORIO ALBARRACIN L.'),
(74, '00410197', 'APAZA MENESES LUZ BELINDA', 'LUZBEATACNA@YAHOO.ES', 'PRESIDENTE DE COMITE', '', 'DIRECCIÓN REGIONAL DE EDUCACIÓN TACNA', '', 'Gobierno Regional', 'TACNA', 'TACNA', 'CRNEL GREGORIO ALBARRACIN L.'),
(75, '80217731', 'VENTURA TADEO EDGAR AQUILES', 'EVENTA_575@HOTMAIL.COM', 'PRESIDENTE DE COMITE', '', 'DIRECCIÓN REGIONAL DE EDUCACIÓN UCAYALI', '', 'Gobierno Regional', 'UCAYALI', 'CORONEL PORTILLO', 'CALLERIA'),
(76, '41978476', 'LOAIZA ALVAREZ JUAN VICTOR', 'LOAIZA1060@HOTMAIL.COM', 'PRESIDENTE DE COMITE', '', 'DIRECCION REGIONAL DE ENERGIA Y MINAS - CUSCO', '', 'Gobierno Regional', 'CUSCO', 'CUSCO', 'CUSCO'),
(77, '15763462', 'FABIAN FERRER INDIRA', 'IFABIAN@REGIONPIURA.GOB.PE', 'PRESIDENTE DE COMITE', '', 'DIRECCION REGIONAL DE LA PRODUCCION DE PIURA', '', 'Gobierno Regional', 'PIURA', 'PIURA', 'PIURA'),
(78, '40211032', 'BORBOR VARGAS JHONY ALEXANDER', 'JBORBOR2012@HOTMAIL.COM', 'PRESIDENTE DE COMITE', '', 'DIRECCION REGIONAL DE PRODUCCION - SAN MARTIN', '', 'Gobierno Regional', 'SAN MARTIN', 'MOYOBAMBA', 'MOYOBAMBA'),
(79, '06309676', 'ARANA BENAVIDES LUIS ROMMEL', 'RENDICIONDECUENTAS@REGIONSANMARTIN.GOB.PE', 'PRESIDENTE DE COMITE', '', 'DIRECCION REGIONAL DE PRODUCCION - SAN MARTIN', '', 'Gobierno Regional', 'SAN MARTIN', 'MOYOBAMBA', 'MOYOBAMBA'),
(80, '07763428', 'GONZALES RAMOS ALDO JESUS', 'GONZALESALDO@YAHOO.COM', 'PRESIDENTE DE COMITE', '', 'DIRECCIÓN REGIONAL DE SALUD ANCASH', '', 'Gobierno Regional', 'ANCASH', 'HUARAZ', 'HUARAZ'),
(81, '23818189', 'NAVARRO MENDOZA DARIO FRANCISCO', 'SALKARUNADARIO@HOTMAIL.COM', 'PRESIDENTE DE COMITE', '', 'DIRECCIÓN REGIONAL DE SALUD CUSCO', '', 'Gobierno Regional', 'CUSCO', 'CUSCO', 'CUSCO'),
(82, '08068635', 'ORCASITAS JARA JOSE LUIS', 'ORCASITAS_HSJ@HOTMAIL.COM', 'PRESIDENTE DE COMITE', '', 'DIRECCIÓN REGIONAL DE SALUD I CALLAO', '', 'Gobierno Regional', 'P. C. DEL CALLAO', 'PROV. CONST. DEL CALLAO', 'BELLAVISTA'),
(83, '07966262', 'RODRIGUEZ BENAVIDES LUIS', 'RODRIGUEZBLUIS@YAHOO.COM', 'PRESIDENTE DE COMITE', '', 'DIRECCIÓN REGIONAL DE SALUD SAN MARTÍN', '', 'Gobierno Regional', 'SAN MARTIN', 'MOYOBAMBA', 'MOYOBAMBA'),
(84, '00833218', 'RENGIFO CAMPOS ROGER', 'R2CMOYO@HOTMAIL.COM', 'PRESIDENTE DE COMITE', '', 'DIRECCIÓN REGIONAL DE SALUD SAN MARTÍN', '', 'Gobierno Regional', 'SAN MARTIN', 'MOYOBAMBA', 'MOYOBAMBA'),
(85, '40313504', 'BALDEON VASQUEZ JHONNY WALTER', 'JBALDEON@YAHOO.ES', 'PRESIDENTE DE COMITE', '', 'DIRECCIÓN REGIONAL DE SALUD UCAYALI', '', 'Gobierno Regional', 'UCAYALI', 'CORONEL PORTILLO', 'CALLERIA'),
(86, '02633582', 'ZAPATA GALLO LESLYE EDUARDO', 'EZAPATAG@REGIONPIURA.GOB.PE', 'PRESIDENTE DE COMITE', '', 'DIRECCION REGIONAL DE TRABAJO Y PROMOCION DEL EMPLEO PIURA', '', 'Gobierno Regional', 'PIURA', 'PIURA', 'CASTILLA'),
(87, '29471835', 'DEL CARPIO PEÑA MARCO ANTONIO', 'MARCODELCARPIO2207@GMAIL.COM', 'PRESIDENTE DE COMITE', '', 'DIRECCION REGIONAL DE TRANSPORTE,COMUNICACION,VIV.Y CONS.-AREQUIPA', '', 'Gobierno Regional', 'AREQUIPA', 'AREQUIPA', 'PAUCARPATA'),
(88, '08768973', 'UCAÑAN DIAZ MANUEL ENRIQUE', 'MEUCANAN@GMAIL.COM', 'PRESIDENTE DE COMITE', '', 'DIRECCIÓN REGIONAL DE TRANSPORTES SAN MARTIN', '', 'Gobierno Regional', 'SAN MARTIN', 'SAN MARTIN', 'TARAPOTO'),
(89, '28227030', 'SALAS ZEGARRA JAIME EFRAIN', 'GEOJAIME06@HOTMAIL.COM', 'PRESIDENTE DE COMITE', '', 'DIRECCIÓN REGIONAL DE TRANSPORTES Y COMUNICACIONES AYACUCHO', '', 'Gobierno Regional', 'AYACUCHO', 'HUAMANGA', 'JESUS NAZARENO'),
(90, '24712971', 'TORRES BERRIO REYSTVAN', 'RTORRESB20@GMAIL.COM', 'PRESIDENTE DE COMITE', '', 'DIRECCION REGIONAL DE TRANSPORTES Y COMUNICACIONES CUSCO', '', 'Gobierno Regional', 'CUSCO', 'CUSCO', 'WANCHAQ'),
(91, '19826238', 'YAURI CORDOVA JOSE JUAN', 'JYC515@HOTMAIL.COM', 'PRESIDENTE DE COMITE', '', 'DIRECCIÓN REGIONAL DE TRANSPORTES Y COMUNICACIONES JUNÍN', '', 'Gobierno Regional', 'JUNIN', 'HUANCAYO', 'CHILCA'),
(92, '44738036', 'SALAS MARTINEZ ALEX MARTIN', 'ALEONARDO_15@HOTMAIL.COM', 'PRESIDENTE DE COMITE', '', 'DIRECCIÓN SUB REGIONAL DE SALUD ALTO MAYO', '', 'Gobierno Regional', 'SAN MARTIN', 'MOYOBAMBA', 'MOYOBAMBA'),
(93, '45817295', 'VELA MONTENEGRO ALDO ALEJANDRO', 'ALEJANDRO.V.M.1986@GMAIL.COM', 'PRESIDENTE DE COMITE', '', 'DIRECCION SUB REGIONAL DE SALUD HUALLAGA CENTRAL - JUANJUI', '', 'Gobierno Regional', 'SAN MARTIN', 'MARISCAL CACERES', 'JUANJUI'),
(94, '42285428', 'CARRILLO ROJAS JORGE ALFREDO', 'ALCARO12@HOTMAIL.COM', 'PRESIDENTE DE COMITE', '', 'DIRECCION SUB REGIONAL DE SALUD HUALLAGA CENTRAL - JUANJUI', '', 'Gobierno Regional', 'SAN MARTIN', 'MARISCAL CACERES', 'JUANJUI'),
(95, '41252632', 'MOLINA FEBRES SEGUNDO DALTON', 'DALTON_M@HOTMAIL.COM', 'PRESIDENTE DE COMITE', '', 'DIRECCIÓN SUB REGIONAL DE SALUD I JAÉN', '', 'Gobierno Regional', 'CAJAMARCA', 'JAEN', 'JAEN'),
(96, '10307948', 'ASTUDILLO SALCEDO CESAR AUGUSTO', 'COMANDOASTUDILLO@HOTMAIL.COM', 'PRESIDENTE DE COMITE', '', 'EJERCITO DEL PERÚ', '', 'Gobierno Central', 'LIMA', 'LIMA', 'SAN BORJA'),
(97, '23847719', 'SAN ROMAN ZUBIZARRETA EDWIN TEODORO', 'ESANROMAN@ELECTROPERU.COM.PE', 'PRESIDENTE DE COMITE', '', 'ELECTRICIDAD DEL PERÚ S.A. - ELECTROPERU', '', 'Gobierno Central', 'LIMA', 'LIMA', 'SAN JUAN DE MIRAFLORES'),
(98, '02894976', 'RIBEYRO DELLEPIANE JOSE JULIO', 'JOSE.RIBEYRO@ELECTROUCAYALI.COM.PE', 'PRESIDENTE DE COMITE', '', 'EMPRESA CONCESIONARIA DE ELECTRICIDAD DE UCAYALI S.A.  - ELECTRO UCAYALI', '', 'Gobierno Central', 'UCAYALI', 'CORONEL PORTILLO', 'YARINACOCHA'),
(99, '09799201', 'SANTILLAN CERVANTES LUIS ENRIQUE', 'LSANTILLAN@ADINELSA.COM.PE', 'PRESIDENTE DE COMITE', '', 'EMPRESA DE ADMINISTRACIÓN E INFRAESTRUCTURA ELÉCTRICA S.A. ADINELSA', '', 'Gobierno Central', 'LIMA', 'LIMA', 'SAN JUAN DE MIRAFLORES'),
(100, '29280432', 'CUADROS BERNAL CÉSAR RICARDO', 'CCUADROS@EGASA.COM.PE', 'PRESIDENTE DE COMITE', '', 'EMPRESA DE GENERACIÓN ELÉCTRICA DE AREQUIPA S.A. - EGASA', '', 'Gobierno Central', 'AREQUIPA', 'AREQUIPA', 'AREQUIPA'),
(101, '29658290', 'CORTEZ QUISPE ELIANA SOFIA', 'ECORTEZ@EGESUR.COM.PE', 'PRESIDENTE DE COMITE', '', 'EMPRESA DE GENERACIÓN ELÉCTRICA DEL SUR S.A. - EGESUR', '', 'Gobierno Central', 'TACNA', 'TACNA', 'TACNA'),
(102, '23822909', 'MURILLO ORMACHEA LUIS ALBERTO', 'AMOGGIANO@CONTRALORIA.GOB.PE', 'PRESIDENTE DE COMITE', '', 'EMPRESA DE GENERACIÓN ELÉCTRICA MACHU PICCHU S.A.- EGEMSA', '', 'Gobierno Central', 'CUSCO', 'CUSCO', 'SANTIAGO'),
(103, '01342272', 'VELASCO VEGA NIEL FRANK', 'NVELASCO@SANGABAN.COM.PE', 'PRESIDENTE DE COMITE', '', 'EMPRESA DE GENERACIÓN ELÉCTRICA SAN GABÁN S.A.', '', 'Gobierno Central', 'PUNO', 'PUNO', 'PUNO'),
(104, '01315782', 'GARNICA SALINAS GUSTAVO ALONSO', 'GGARNICA@SANGABAN.COM.PE', 'PRESIDENTE DE COMITE', '', 'EMPRESA DE GENERACIÓN ELÉCTRICA SAN GABÁN S.A.', '', 'Gobierno Central', 'PUNO', 'PUNO', 'PUNO'),
(105, '21411889', 'ROJAS CAMPOS LADISLAO ENRIQUE', 'EROJAS@EPSSEMAPACH.COM.PE', 'PRESIDENTE DE COMITE', '', 'EMPRESA DE SERVICIO MUNICIPAL DE AGUA POTABLE Y ALCANT. DE CHINCHA S.A.', '', 'Gobierno Local', 'ICA', 'CHINCHA', 'CHINCHA ALTA'),
(106, '07435486', 'MORALES BOLUARTE FEDOR DANIEL', 'FMORALES@EMAPE.GOB.PE', 'PRESIDENTE DE COMITE', '', 'EMPRESA MUNICIPAL ADMINISTRADORA DE PEAJE DE LIMA S.A. - EMAPE', '', 'Gobierno Local', 'LIMA', 'LIMA', 'ATE'),
(107, '07273210', 'CALDERON VIGO VILMA JACQUELINE', 'JCALDERON@EMAPE.GOB.PE', 'PRESIDENTE DE COMITE', '', 'EMPRESA MUNICIPAL ADMINISTRADORA DE PEAJE DE LIMA S.A. - EMAPE', '', 'Gobierno Local', 'LIMA', 'LIMA', 'ATE'),
(108, '00079902', 'PLAZA RAMIREZ LOIDA', 'LPLAZA@EMAPACOPSA.COM.PE', 'PRESIDENTE DE COMITE', '', 'EMPRESA MUNICIPAL DE AGUA POTAB.Y ALCANTAR. DE CORONEL PORTILLO S.A.', '', 'Gobierno Local', 'UCAYALI', 'CORONEL PORTILLO', 'CALLERIA'),
(109, '08556896', 'CUBA VERA JUAN RAMON', 'JCUBA03@HOTMAIL.COM', 'PRESIDENTE DE COMITE', '', 'EMPRESA MUNICIPAL DE AGUA POTAB.Y ALCANTAR.DE TAMBOPATA S.A.-EMAPAT', '', 'Gobierno Local', 'MADRE DE DIOS', 'TAMBOPATA', 'TAMBOPATA'),
(110, '15727370', 'BRAVO MONTOYA FELIX HIPOLITO', 'FELIX.BRAVO@EMAPAHUACHO.COM', 'PRESIDENTE DE COMITE', '', 'EMPRESA MUNICIPAL DE AGUA POTABLE Y ALCANT. DOMINGO MANDAMIENTO SIPAN - EMAPA HUACHO', '', 'Gobierno Local', 'LIMA', 'HUAURA', 'HUAURA'),
(111, '15861233', 'CHANGA CHANGA CARLOS JAVIER', 'PRESUPUESTO@SEMAPABARRANCA.COM', 'PRESIDENTE DE COMITE', '', 'EMPRESA MUNICIPAL DE AGUA POTABLE Y ALCANTARILLADO DE BARRANCA S.A. SEMAPA', '', 'Gobierno Local', 'LIMA', 'BARRANCA', 'BARRANCA'),
(112, '21469311', 'VASQUEZ PACHECO LUIS ALBERTO', 'LVASQUEZ@EMAPICA.COM.PE', 'PRESIDENTE DE COMITE', '', 'EMPRESA MUNICIPAL DE AGUA POTABLE Y ALCANTARILLADO DE ICA - EMAPICA', '', 'Gobierno Local', 'ICA', 'ICA', 'ICA'),
(113, '43951456', 'SALDAÑA SUAREZ SEGUNDO FIDEL', 'SSALDANA@EMAPISCO.COM', 'PRESIDENTE DE COMITE', '', 'EMPRESA MUNICIPAL DE AGUA POTABLE Y ALCANTARILLADO DE PISCO S.A.', '', 'Gobierno Local', 'ICA', 'PISCO', 'PISCO'),
(114, '20689019', 'TORRES ACEVEDO PROSPERO GUILLERMO', 'PTORRES@SEDAHUANUCO.COM', 'PRESIDENTE DE COMITE', '', 'EMPRESA MUNICIPAL DE SERV. DE AGUA POTABLE Y ALCANT. DE HUANUCO S.A. - SEDA HUANUCO', '', 'Gobierno Local', 'HUANUCO', 'HUANUCO', 'HUANUCO'),
(115, '23013161', 'VASQUEZ RIOS JUDITH', 'JUVARICONTA@HOTMAIL.COM', 'PRESIDENTE DE COMITE', '', 'EMPRESA MUNICIPAL DE SERV. DE AGUA POTABLE Y ALCANT. DE HUANUCO S.A. - SEDA HUANUCO', '', 'Gobierno Local', 'HUANUCO', 'HUANUCO', 'HUANUCO'),
(116, '25546629', 'COCHELLA MALDONADO JOAQUIN MARIO', 'EEC2011_9@HOTMAIL.COM', 'PRESIDENTE DE COMITE', '', 'EMPRESA MUNICIPAL DE SERVICIO DE LIMPIEZA DEL CALLAO S.A.-ESLIMP', '', 'Gobierno Local', 'P. C. DEL CALLAO', 'PROV. CONST. DEL CALLAO', 'CALLAO'),
(117, '40092654', 'MELGAREJO CARDENAS NOIMI PETRONILA', 'NMELGAREJO@EMAPAHUARAL.COM', 'PRESIDENTE DE COMITE', '', 'EMPRESA MUNICIPAL DE SERVICIOS DE AGUA POTABLE Y ALCANTARILLADO DE HUARAL S.A.', '', 'Gobierno Local', 'LIMA', 'HUARAL', 'HUARAL'),
(118, '01149441', 'GARCIA  HIDALGO MARIA ISABEL', 'MIGHARI@HOTMAIL.COM', 'PRESIDENTE DE COMITE', '', 'EMPRESA MUNICIPAL DE SERVICIOS DE AGUA POTABLE Y ALCANTARILLADO DE SAN MARTIN S.A.', '', 'Gobierno Local', 'SAN MARTIN', 'SAN MARTIN', 'TARAPOTO'),
(119, '09370423', 'CORDERO VASQUEZ SONIA MARIA', 'SCORDERO@EMILIMA.COM.PE', 'PRESIDENTE DE COMITE', '', 'EMPRESA MUNICIPAL INMOBILIARIA DE LIMA S.A. EMILIMA', '', 'Gobierno Local', 'LIMA', 'LIMA', 'LIMA'),
(120, '07878314', 'CANOVAS PETROZZI RAFAEL DOMINGO', 'RCANOVAS@ENACO.COM.PE', 'PRESIDENTE DE COMITE', '', 'EMPRESA NACIONAL DE LA COCA S.A. - ENACO', '', 'Gobierno Central', 'CUSCO', 'CUSCO', 'SAN SEBASTIAN'),
(121, '09862090', 'SANCHEZ GONZALES IVAN ENRIQUE', 'ISANCHEZ@MINAM.GOB.PE', 'PRESIDENTE DE COMITE', '', 'EMPRESA PERUANA DE SERVICIOS EDITORIALES S.A. - EDITORA PERÚ', '', 'Gobierno Central', 'LIMA', 'LIMA', 'LIMA'),
(122, '08839195', 'VIZARRAGA ROBLES ROLANDO MIGUEL', 'RVIZARRAGA@EDITORAPERU.COM.PE', 'PRESIDENTE DE COMITE', '', 'EMPRESA PERUANA DE SERVICIOS EDITORIALES S.A. - EDITORA PERÚ', '', 'Gobierno Central', 'LIMA', 'LIMA', 'LIMA'),
(123, '26615904', 'SANTISTEBAN KANEKO OSCAR EDUARDO', 'OSCAR.SANTISTEBAN@SEDACAJ.COM.PE', 'PRESIDENTE DE COMITE', '', 'EMPRESA PRESTADORA DE SERVICIOS DE SANEAMIENTO CAJAMARCA S.A.- SEDACAJ', '', 'Gobierno Local', 'CAJAMARCA', 'CAJAMARCA', 'CAJAMARCA'),
(124, '02767070', 'HIDALGO GUTIERREZ RONALD ERICK', 'RONALD.HIDALGO@EPSGRAU.COM.PE', 'PRESIDENTE DE COMITE', '', 'EMPRESA PRESTADORA DE SERVICIOS DE SANEAMIENTO GRAU S.A.', '', 'Gobierno Local', 'PIURA', 'PIURA', 'PIURA'),
(125, '17433147', 'FUENTES VERTIZ JOSE ENRIQUE', 'JFUENTESV@DISTRILUZ.COM.PE', 'PRESIDENTE DE COMITE', '', 'EMPRESA REGIONAL  ELECTRONORTE MEDIO S.A - HIDRANDINA', '', 'Gobierno Central', 'LA LIBERTAD', 'TRUJILLO', 'TRUJILLO'),
(126, '23885618', 'MAMANI COYLA LUIS ALBERTO', 'LMANI@ELECTROPUNO.COM.PE', 'PRESIDENTE DE COMITE', '', 'EMPRESA REGIONAL DE SERVICIO PÚBLICO DE ELECTRICIDAD - ELECTROPUNO S.A.A.', '', 'Gobierno Central', 'PUNO', 'PUNO', 'PUNO'),
(127, '19926965', 'ROJAS BRAVO ROMEO GRACIANO', 'RROJASB@DISTRILUZ.COM.PE', 'PRESIDENTE DE COMITE', '', 'EMPRESA REGIONAL DE SERVICIO PÚBLICO DE ELECTRICIDAD DEL CENTRO S.A.-ELECTROCENTRO S.A.', '', 'Gobierno Central', 'JUNIN', 'HUANCAYO', 'HUANCAYO'),
(128, '16687670', 'PISCOYA SALAZAR LUIS EDUARDO', 'LPISCOYAS@DISTRILUZ.COM.PE', 'PRESIDENTE DE COMITE', '', 'EMPRESA REGIONAL DE SERVICIO PÚBLICO DE ELECTRICIDAD DEL NORTE S.A.', '', 'Gobierno Central', 'LAMBAYEQUE', 'CHICLAYO', 'CHICLAYO'),
(129, '23870630', 'PORTOCARRERO RODRIGUEZ MARCO AURELIO', 'MAPORTOCARRERO@ELOR.COM.PE', 'PRESIDENTE DE COMITE', '', 'EMPRESA REGIONAL DE SERVICIO PÚBLICO DE ELECTRICIDAD DEL ORIENTE S.A. ELECTRO ORIENTE', '', 'Gobierno Central', 'LORETO', 'MAYNAS', 'IQUITOS'),
(130, '23839976', 'GONZALES DE LA VEGA FREDY HERNAN', 'FGONZALES@ELSE.COM.PE', 'PRESIDENTE DE COMITE', '', 'EMPRESA REGIONAL DE SERVICIO PÚBLICO DE ELECTRICIDAD DEL SUR ESTE S.A.A.', '', 'Gobierno Central', 'CUSCO', 'CUSCO', 'SANTIAGO'),
(131, '02624143', 'GARCIA GUERRA ENRIQUE ROLANDO', 'EGARCIAG@DISTRILUZ.COM.PE', 'PRESIDENTE DE COMITE', '', 'EMPRESA REGIONAL DE SERVICIO PÚBLICO DE ELECTRICIDAD ELECTRONOROESTE S.A.', '', 'Gobierno Central', 'PIURA', 'PIURA', 'PIURA'),
(132, '00474181', 'MONZON GONZALES VICTOR RAUL', 'VMONZON@ELECTROSUR.COM.PE', 'PRESIDENTE DE COMITE', '', 'EMPRESA REGIONAL DE SERVICIO PÚBLICO DE ELECTRICIDAD S. A. - ELECTROSUR S.A.', '', 'Gobierno Central', 'TACNA', 'TACNA', 'TACNA'),
(133, '23830947', 'MATEOS SOTOMAYOR FRANCISCO', 'FMATEOS@SEDACUSCO.COM', 'PRESIDENTE DE COMITE', '', 'ENTIDAD MUNICIPAL PRESTADORA DE SERVICIO DE SANEAMIENTO DEL CUSCO S.A. SEDACUSCO', '', 'Gobierno Local', 'CUSCO', 'CUSCO', 'CUSCO'),
(134, '31673276', 'ROSALES GUERRERO VICENTE', 'VROSALES_05@HOTMAIL.COM', 'PRESIDENTE DE COMITE', '', 'ENTIDAD PRESTADORA DE SERVICIOS DE SANEAMIENTO CHAVÍN S.A - HUARAZ', '', 'Gobierno Local', 'ANCASH', 'HUARAZ', 'HUARAZ'),
(135, '16577244', 'SALINAS VASQUEZ NESTOR RAUL', 'GGENERAL@EPSEL.COM.PE', 'PRESIDENTE DE COMITE', '', 'ENTIDAD PRESTADORA DE SERVICIOS DE SANEAMIENTO DE LAMBAYEQUE - EPSEL S.A.', '', 'Gobierno Local', 'LAMBAYEQUE', 'CHICLAYO', 'CHICLAYO'),
(136, '05316133', 'SANTANA SIFUENTES JORGE LUIS', 'JLSSSANTANA@HOTMAIL.COM', 'PRESIDENTE DE COMITE', '', 'ENTIDAD PRESTADORA DE SERVICIOS DE SANEAMIENTO DE LORETO S.A.', '', 'Gobierno Local', 'LORETO', 'MAYNAS', 'IQUITOS'),
(137, '40585612', 'PEREZ MALDONADO EDUARDO ENRIQUE', 'EPEREZ@EPSTACNA.COM.PE', 'PRESIDENTE DE COMITE', '', 'ENTIDAD PRESTADORA DE SERVICIOS DE SANEAMIENTO DE TACNA S.A.', '', 'Gobierno Local', 'TACNA', 'TACNA', 'TACNA'),
(138, '29724317', 'AGRAMONTE FLORES SOLANGE DEL PILAR', 'SOLAGRAMONTE1@HOTMAIL.COM', 'PRESIDENTE DE COMITE', '', 'ENTIDAD PRESTADORA DE SERVICIOS ILO S.A.', '', 'Gobierno Local', 'MOQUEGUA', 'ILO', 'ILO'),
(139, '29537336', 'FLORES MANZANO WILLY RICHARD', 'GADMINISTRATIVA@EPSILO.COM.PE', 'PRESIDENTE DE COMITE', '', 'ENTIDAD PRESTADORA DE SERVICIOS ILO S.A.', '', 'Gobierno Local', 'MOQUEGUA', 'ILO', 'ILO'),
(140, '23922731', 'AGUILAR CARRASCO CARLOS HUGO', 'GOACZ@HOTMAIL.COM', 'PRESIDENTE DE COMITE', '', 'ESCUELA DE BELLAS ARTES DIEGO QUISPE TITO', '', 'Gobierno Regional', 'CUSCO', 'CUSCO', 'CUSCO'),
(141, '43609549', 'AVALOS HUAPAYA FANNY SHIZUKO', ' FAVALOS@ENSABAP..EDU.PE   ', 'PRESIDENTE DE COMITE', '', 'ESCUELA NACIONAL SUPERIOR AUTÓNOMA DE BELLAS ARTES DEL PERÚ', '', 'Gobierno Central', 'LIMA', 'LIMA', 'LIMA'),
(142, '07782859', 'SARMIENTO LLAMOSAS JORGE DOMINGO', 'SARMIENTOLLAMOSAS@YAHOO.COM', 'PRESIDENTE DE COMITE', '', 'ESCUELA NACIONAL SUPERIOR DE ARTE DRAMATICO GUILLERMO UGARTE CHAMORRO', '', '', 'LIMA', 'LIMA', 'LIMA'),
(143, '09137350', 'BEINGOLEA MASAVEU MARIA ROSARIO', 'GNATTERI@ENSB.EDU.PE', 'PRESIDENTE DE COMITE', '', 'ESCUELA NACIONAL SUPERIOR DE BALLET', '', '', 'LIMA', 'LIMA', 'SURQUILLO'),
(144, '09670597', 'ANAYA FIGUEROA TANIA MARIA', 'HUTANAFA@HOTMAIL.COM', 'PRESIDENTE DE COMITE', '', 'ESCUELA NACIONAL SUPERIOR DE FOLKLORE JOSE MARIA ARGUEDAS', '', 'Gobierno Central', 'LIMA', 'LIMA', 'LIMA'),
(145, '08721164', 'FELIPA CARRION JORGE LUIS', 'JFELIPA@FAMESAC.COM', 'PRESIDENTE DE COMITE', '', 'FABRICA DE ARMAS Y MUNICIONES DEL EJERCITO - FAME SAC', '', 'Gobierno Central', 'LIMA', 'LIMA', 'LURIGANCHO'),
(146, '09976320', 'RENGIFO NAKAMA ROCIO MARISOL', 'MRENGIFO@FONCODES.GOB.PE', 'PRESIDENTE DE COMITE', '', 'FONDO DE COOPERACIÓN PARA EL DESARROLLO SOCIAL - FONCODES', '', 'Gobierno Central', 'LIMA', 'LIMA', 'SAN ISIDRO'),
(147, '10476312', 'MONTES BAZALAR LUIS ANDRES', 'LMONTES@MTC.GOB.PE', 'PRESIDENTE DE COMITE', '', 'FONDO DE INVERSION EN TELECOMUNICACIONES - FITEL', '', 'Gobierno Central', 'LIMA', 'LIMA', 'LIMA'),
(148, '07766771', 'DIAZ CALLIRGOS JOSE LUIS', 'JDIAZ@INVERMET.GOB.PE', 'PRESIDENTE DE COMITE', '', 'FONDO METROPOLITANO DE INVERSIONES - INVERMET', '', 'Gobierno Local', 'LIMA', 'LIMA', 'LIMA'),
(149, '09301428', 'CHAVEZ ABANTO RODOLFO JAVIER', 'RCHAVEZ@MIVIVIENDA.COM.PE', 'PRESIDENTE DE COMITE', '', 'FONDO MIVIVIENDA S.A.', '', 'Gobierno Central', 'LIMA', 'LIMA', 'SAN ISIDRO'),
(150, '19919126', 'CAMAYO PAREDES SIXTO FELICISIMO', 'SCAMAYO@FINVERCALLAO.GOB.PE', 'PRESIDENTE DE COMITE', '', 'FONDO MUNICIPAL DE INVERSIONES DEL CALLAO S.A. - FINVERCALLAO', '', 'Gobierno Local', 'P. C. DEL CALLAO', 'PROV. CONST. DEL CALLAO', 'CALLAO'),
(151, '07862508', 'FERNANDEZ PANIAGUA ENRIQUE', 'efernandez@fondepes.gob.pe', 'PRESIDENTE DE COMITE', '', 'FONDO NACIONAL DE DESARROLLO PESQUERO - FONDEPES', '', 'Gobierno Central', 'LIMA', 'LIMA', 'LIMA'),
(152, '08379575', 'GILES FERRER ARTURO ANTONIO', 'ARTURGF@HOTMAIL.COM', 'PRESIDENTE DE COMITE', '', 'FUERO MILITAR POLICIAL - EX CONSEJO SUPREMO DE JUSTICIA MILITAR', '', 'Gobierno Central', 'LIMA', 'LIMA', 'LIMA'),
(153, '43314180', 'GARCIA ESQUERRE RODOLFO', 'RGARCIA@FAP.MIL.PE', 'PRESIDENTE DE COMITE', '', 'FUERZA AÉREA DEL PERÚ', '', 'Gobierno Central', 'LIMA', 'LIMA', 'JESUS MARIA'),
(154, '43314163', 'PORTOCARRERO BUSTAMANTE CARLOS ALBERTO FELICIANO', 'BETOPORTO4@YAHOO.COM', 'PRESIDENTE DE COMITE', '', 'FUERZA AÉREA DEL PERÚ', '', 'Gobierno Central', 'LIMA', 'LIMA', 'JESUS MARIA'),
(155, '20425982', 'TERREROS MARTINEZ VALOIS', 'VAOLIS57@HOTMAIL.COM', 'PRESIDENTE DE COMITE', '', 'GERENCIA REGIONAL DE EDUCACIÓN JUNÍN', '', 'Gobierno Regional', 'JUNIN', 'HUANCAYO', 'EL TAMBO'),
(156, '40864567', 'GOYZUETA BENITES LIVIA SANDRA', 'LIVIASANDRAG@HOTMAIL.COM', 'PRESIDENTE DE COMITE', '', 'GERENCIA REGIONAL DE EDUCACIÓN TRUJILLO LA LIBERTAD', '', 'Gobierno Regional', 'LA LIBERTAD', 'TRUJILLO', 'TRUJILLO'),
(157, '18089776', 'MOYA RONDO RAFAEL MARTIN', 'RMOYA@UCV.EDU.PE', 'PRESIDENTE DE COMITE', '', 'GERENCIA REGIONAL DE EDUCACIÓN TRUJILLO LA LIBERTAD', '', 'Gobierno Regional', 'LA LIBERTAD', 'TRUJILLO', 'TRUJILLO'),
(158, '20963936', 'VARGAS CHAVEZ JULIO CESAR', 'DIRESA_HUANCAYO_16@HOTMAIL.COM', 'PRESIDENTE DE COMITE', '', 'GERENCIA REGIONAL DE SALUD JUNÍN', '', 'Gobierno Regional', 'JUNIN', 'HUANCAYO', 'EL TAMBO'),
(159, '43868654', 'ZEVALLOS BANDA JOSE AUGUSTO JHONADAN', 'JZEVALLOS@GRTCMOQUEGUA.GOB.PE', 'PRESIDENTE DE COMITE', '', 'GERENCIA REGIONAL DE TRANSPORTES Y COMUNICACIONES DE MOQUEGUA', '', 'Gobierno Regional', 'MOQUEGUA', 'MARISCAL NIETO', 'MOQUEGUA'),
(160, '16471922', 'CASTRO CASTRO FRANCISCO WALTER', 'FCASTRO@REGIONPIURA.GOB.PE', 'PRESIDENTE DE COMITE', '', 'GERENCIA SUB REGIONAL LUCIANO CASTILLO COLONNA', '', 'Gobierno Regional', 'PIURA', 'SULLANA', 'SULLANA'),
(161, '04828945', 'KAMEKO SORIA CARMEN ROSA', 'CARMEN.KAMEKO@GMAIL.COM', 'PRESIDENTE DE COMITE', '', 'GESTION DE LOS RECURSOS NATURALES', '', '', 'LIMA', 'LIMA', 'SAN ISIDRO'),
(162, '41325649', 'ENCISO FLORES WILBERT', 'WIENFLO@HOTMAIL.COM', 'PRESIDENTE DE COMITE', '', 'GOB. REG. DPTO. CUSCO - HOSPITAL DE QUILLABAMBA', '', '', 'CUSCO', 'LA CONVENCION', 'SANTA ANA'),
(163, '29292754', 'CATACORA PINAZO HERNAN MIGUEL', 'HERMICATACORA@HOTMAIL.COM', 'PRESIDENTE DE COMITE', '', 'GOB. REG. DPTO. CUSCO-HOSP. ALFREDO CALLO RODRIGUEZ-SICUANI-CANCHIS', '', '', 'CUSCO', 'CANCHIS', 'SICUANI'),
(164, '42573391', 'HUAMAN OSORIO GINNO EDER', 'GINNOH@HOTMAIL.COM', 'PRESIDENTE DE COMITE', '', 'GOBIERNO REGIONAL ANCASH', '', 'Gobierno Regional', 'ANCASH', 'HUARAZ', 'INDEPENDENCIA'),
(165, '80002430', 'GASPAR MARCA CHOU DIONICIO', 'CHOUGASPAR@GMAIL.COM', 'PRESIDENTE DE COMITE', '', 'GOBIERNO REGIONAL APURÍMAC', '', 'Gobierno Regional', 'APURIMAC', 'ABANCAY', 'ABANCAY'),
(166, '41292644', 'RODRIGUEZ SILVA JOSE LUIS', 'JOSELRSILVA1@HOTMAIL.COM', 'PRESIDENTE DE COMITE', '', 'GOBIERNO REGIONAL AREQUIPA', '', 'Gobierno Regional', 'AREQUIPA', 'AREQUIPA', 'PAUCARPATA'),
(167, '31149737', 'MOLINA MENACHO ROY DAVID', 'RMOLINA@REGIONAPURIMAC.GOB.PE', 'PRESIDENTE DE COMITE', '', 'GOBIERNO REGIONAL DE APURIMAC - UNIDAD EJECUTORA GERENCIA SUB REGIONAL DE COTABAMBAS', '', 'Gobierno Regional', 'APURIMAC', 'COTABAMBAS', 'TAMBOBAMBA'),
(168, '15580677', 'NUÑEZ ACEVEDO JORGE CARLOS', 'JNUNEZ@REGIONLIMA.GOB.PE', 'PRESIDENTE DE COMITE', '', 'GOBIERNO REGIONAL DE LIMA', '', 'Gobierno Regional', 'LIMA', 'HUAURA', 'HUACHO'),
(169, '09936020', 'LINARES MUÑOZ JORGE', 'JLINARES@REGIONCALLAO.GOB.PE', 'PRESIDENTE DE COMITE', '', 'GOBIERNO REGIONAL DEL CALLAO', '', 'Gobierno Regional', 'P. C. DEL CALLAO', 'PROV. CONST. DEL CALLAO', 'CALLAO'),
(170, '23557656', 'FLORES BARRERA GROBER ENRIQUE', 'GROBERFLORES@GMAIL.COM', 'PRESIDENTE DE COMITE', '', 'GOBIERNO REGIONAL HUANCAVELICA', '', 'Gobierno Regional', 'HUANCAVELICA', 'HUANCAVELICA', 'HUANCAVELICA'),
(171, '07240796', 'HERRERA VILLENA FREDDY FRANCISCO', 'FHERRERA@JLBF.GOB.PE', 'PRESIDENTE DE COMITE', '', 'GOBIERNO REGIONAL ICA', '', 'Gobierno Regional', 'ICA', 'ICA', 'ICA'),
(172, '20066774', 'YAURI SALOME JAVIER', 'JYAURI@REGIONJUNIN.GOB.PE', 'PRESIDENTE DE COMITE', '', 'GOBIERNO REGIONAL JUNÍN', '', 'Gobierno Regional', 'JUNIN', 'HUANCAYO', 'HUANCAYO'),
(173, '17869111', 'CHALEN COSTA PEDRO ENRIQUE', 'PCHALENCOS@HOTMAIL.COM', 'PRESIDENTE DE COMITE', '', 'GOBIERNO REGIONAL LA LIBERTAD', '', 'Gobierno Regional', 'LA LIBERTAD', 'TRUJILLO', 'TRUJILLO'),
(174, '16436625', 'PINGLO RISCO ELIAS DANIEL', 'PINGLORISCO@GMAIL.COM', 'PRESIDENTE DE COMITE', '', 'GOBIERNO REGIONAL LAMBAYEQUE', '', 'Gobierno Regional', 'LAMBAYEQUE', 'CHICLAYO', 'CHICLAYO'),
(175, '08809794', 'VEGA SANCHEZ ALBERTO FEDERICO', 'AVEGA@REGIONLORETO.GOB.PE', 'PRESIDENTE DE COMITE', '', 'GOBIERNO REGIONAL LORETO', '', 'Gobierno Regional', 'LORETO', 'MAYNAS', 'BELEN'),
(176, '05288101', 'VILLANUEVA NAVARRO JUAN ABELARDO', 'ABELARDOVILLANUEVA-1965@HOTMAIL.COM', 'PRESIDENTE DE COMITE', '', 'GOBIERNO REGIONAL LORETO', '', 'Gobierno Regional', 'LORETO', 'MAYNAS', 'BELEN'),
(177, '40475890', 'MUÑOZ PAREDES ENRIQUE LEONIDAS ANDRES', 'EMUNOZP_77@HOTMAIL.COM', 'PRESIDENTE DE COMITE', '', 'GOBIERNO REGIONAL MADRE DE DIOS', '', 'Gobierno Regional', 'MADRE DE DIOS', 'TAMBOPATA', 'TAMBOPATA'),
(178, '29721795', 'FERREL ZEBALLOS WILDOR JULIO', 'WILDOR26@HOTMAIL.COM', 'PRESIDENTE DE COMITE', '', 'GOBIERNO REGIONAL MOQUEGUA', '', 'Gobierno Regional', 'MOQUEGUA', 'MARISCAL NIETO', 'MOQUEGUA'),
(179, '04007421', 'CERVANTES YALICO VICTOR LUIS', 'VL_CERVANTES@YAHOO.COM', 'PRESIDENTE DE COMITE', '', 'GOBIERNO REGIONAL PASCO', '', 'Gobierno Regional', 'PASCO', 'PASCO', 'YANACANCHA'),
(180, '02603375', 'ORELLANA MONTENEGRO GALVARINO ANTONIO', 'AORELLANA@REGIONPIURA.GOB.PE', 'PRESIDENTE DE COMITE', '', 'GOBIERNO REGIONAL PIURA', '', 'Gobierno Regional', 'PIURA', 'PIURA', 'PIURA'),
(181, '41081892', 'RAMOS RUIZ JOSE LUIS', 'JLRAMOS@REGIONPIURA.GOB.PE', 'PRESIDENTE DE COMITE', '', 'GOBIERNO REGIONAL PIURA', '', 'Gobierno Regional', 'PIURA', 'PIURA', 'PIURA'),
(182, '05330856', 'RODRIGUEZ CHU MARCOS AUGUSTO', 'SARAYACU2005@HOTMAIL.COM', 'PRESIDENTE DE COMITE', '', 'GOBIERNO REGIONAL SAN MARTIN', '', 'Gobierno Regional', 'SAN MARTIN', 'MOYOBAMBA', 'MOYOBAMBA'),
(183, '40590476', 'QUISPE JIMENEZ LISBETH YESENIA', 'LQUISPEJ@REGIONTACNA.GOB.PE', 'PRESIDENTE DE COMITE', '', 'GOBIERNO REGIONAL TACNA', '', 'Gobierno Regional', 'TACNA', 'TACNA', 'TACNA'),
(184, '43252213', 'SURCO OCHOA YOLANDA', 'YOLITA-24@HOTMAIL.COM', 'PRESIDENTE DE COMITE', '', 'HOSPITAL ANTONIO LORENA CUSCO', '', 'Gobierno Regional', 'CUSCO', 'CUSCO', 'SANTIAGO'),
(185, '06110419', 'LINARES CHICLOTE JOSE LUIS', 'LINARESCH@HOTMAIL.COM', 'PRESIDENTE DE COMITE', '', 'HOSPITAL CARLOS LANFRANCO LA HOZ', '', 'Gobierno Central', 'LIMA', 'LIMA', 'PUENTE PIEDRA'),
(186, '08518214', 'RODRIGUEZ SALAZAR ASUNCION ISAIAS', 'ISARODRIGUEZS@YAHOO.ES', 'PRESIDENTE DE COMITE', '', 'HOSPITAL CAYETANO HEREDIA', '', 'Gobierno Central', 'LIMA', 'LIMA', 'SAN MARTIN DE PORRES'),
(187, '10407519', 'AZAÑERO PORTAL GASPAR ANTENOR', 'MARIO_COROJARAMILLO@YAHOO.ES', 'PRESIDENTE DE COMITE', '', 'HOSPITAL DE APOYO I NUESTRA SEÑORA DE  LAS MERCEDES PAITA', '', 'Gobierno Regional', 'PIURA', 'PAITA', 'PAITA'),
(188, '06624635', 'OROZCO MORI YOLANDA TOMASA', 'YOROZCOM@YAHOO.ES', 'PRESIDENTE DE COMITE', '', 'HOSPITAL DE APOYO MARÍA AUXILIADORA', '', 'Gobierno Central', 'LIMA', 'LIMA', 'SAN JUAN DE MIRAFLORES'),
(189, '10445771', 'SONCCO LLULLUY FERNANDO CARLOS', 'FSONCCO@HEP.GOB.PE', 'PRESIDENTE DE COMITE', '', 'HOSPITAL DE EMERGENCIAS PEDIÁTRICAS', '', 'Gobierno Central', 'LIMA', 'LIMA', 'LA VICTORIA'),
(190, '15944303', 'CARRASCO FELICIANO JULIO CESAR', 'JCARRASCO@HSR.GOB.PE', 'PRESIDENTE DE COMITE', '', 'HOSPITAL GENERAL SANTA ROSA - LIMA', '', 'Gobierno Central', 'LIMA', 'LIMA', 'PUEBLO LIBRE(MAGDALENA VIEJA)'),
(191, '06284904', 'ALMENDRAS JARAMILLO KELLY MARLENE', 'KALMENDRAS@HHV.GOB.PE', 'PRESIDENTE DE COMITE', '', 'HOSPITAL HERMILIO VALDIZÁN  ATE', '', 'Gobierno Central', 'LIMA', 'LIMA', 'SANTA ANITA'),
(192, '02426906', 'SALAS VALDERRAMA JAVIER', 'JSALASV33@HOTMAIL.COM', 'PRESIDENTE DE COMITE', '', 'HOSPITAL HIPÓLITO UNANUE DE TACNA', '', 'Gobierno Regional', 'TACNA', 'TACNA', 'TACNA'),
(193, '00499055', 'URRUTIA BRIONES LUIS ANTONIO', 'LUIS_URRUTIA29@HOTMAIL.COM   ', 'PRESIDENTE DE COMITE', '', 'HOSPITAL HIPÓLITO UNANUE DE TACNA', '', 'Gobierno Regional', 'TACNA', 'TACNA', 'TACNA'),
(194, '15956533', 'BACINI PEREZ VICTOR EDUARDO', 'VICTORBACINI@HOTMAIL.COM', 'PRESIDENTE DE COMITE', '', 'HOSPITAL HUARAL Y SERVICIOS BÁSICOS DE SALUD', '', 'Gobierno Regional', 'LIMA', 'HUARAL', 'HUARAL'),
(195, '01157253', 'PALOMINO DAVILA JAVIER FEDERICO', 'JFPD54@GMAIL.COM', 'PRESIDENTE DE COMITE', '', 'HOSPITAL II TARAPOTO', '', 'Gobierno Regional', 'SAN MARTIN', 'SAN MARTIN', 'TARAPOTO'),
(196, '16140791', 'ASMAT RAMIREZ VICTOR ARTURO', 'VA_ASMAT@HOTMAIL.COM', 'PRESIDENTE DE COMITE', '', 'HOSPITAL JOSÉ AGURTO TELLO DE CHOSICA', '', 'Gobierno Central', 'LIMA', 'LIMA', 'LURIGANCHO'),
(197, '07426223', 'ORTIZ ÑAHUIS CARLOS ENRIQUE', 'ORTIZ_ASOCIADOS@HOTMAIL.COM', 'PRESIDENTE DE COMITE', '', 'HOSPITAL MUNICIPAL LOS OLIVOS', '', 'Gobierno Local', 'LIMA', 'LIMA', 'LOS OLIVOS'),
(198, '08435828', 'REYNA APONTE TATIANA BERENICE', 'TREYNA@HOSPITALLOAYZA.GOB.PE', 'PRESIDENTE DE COMITE', '', 'HOSPITAL NACIONAL ARZOBISPO LOAYZA', '', 'Gobierno Central', 'LIMA', 'LIMA', 'LIMA'),
(199, '10356296', 'CORCUERA RODRIGUEZ RICARDO CESAR', 'RCORCUERAR@GMAIL.COM', 'PRESIDENTE DE COMITE', '', 'HOSPITAL NACIONAL DANIEL ALCIDES CARRIÓN - CALLAO', '', 'Gobierno Regional', 'P. C. DEL CALLAO', 'PROV. CONST. DEL CALLAO', 'BELLAVISTA'),
(200, '06726156', 'CASADO LOPEZ ROBERTO ALEXIS ', 'AMICASADO@HOTMAIL.COM', 'PRESIDENTE DE COMITE', '', 'HOSPITAL NACIONAL DOCENTE MADRE NIÑO SAN BARTOLOMÉ', '', 'Gobierno Central', 'LIMA', 'LIMA', 'LIMA'),
(201, '08463542', 'BARRANZUELA SARANGO LEONCIO', 'LEONCIO2003@HOTMAIL.COM', 'PRESIDENTE DE COMITE', '', 'HOSPITAL NACIONAL GENERAL DOS DE MAYO', '', 'Gobierno Central', 'LIMA', 'LIMA', 'LIMA'),
(202, '21407106', 'MIRANDA MOLINA LUIS WILFREDO', 'MIRMOLLU@YAHOO.COM', 'PRESIDENTE DE COMITE', '', 'HOSPITAL NACIONAL HIPÓLITO UNANUE', '', 'Gobierno Central', 'LIMA', 'LIMA', 'EL AGUSTINO'),
(203, '05394839', 'LOPEZ LOPEZ JEHOSHUA RAFAEL MICHELANGELO', 'JRLOP@LIVE.COM', 'PRESIDENTE DE COMITE', '', 'HOSPITAL REGIONAL DE LORETO FELIPE SANTIAGO ARRIOLA IGLESIAS', '', 'Gobierno Regional', 'LORETO', 'MAYNAS', 'PUNCHANA'),
(204, '23993268', 'BEJAR BRAVO VICTOR AQUILINO', 'VBEJARBRAVO@GMAIL.COM', 'PRESIDENTE DE COMITE', '', 'HOSPITAL REGIONAL DEL CUSCO', '', 'Gobierno Regional', 'CUSCO', 'CUSCO', 'CUSCO'),
(205, '18098010', 'ROJAS PLASENCIA PERCY', 'SUBDIRECCION.HRDT@GMAIL.COM', 'PRESIDENTE DE COMITE', '', 'HOSPITAL REGIONAL DOCENTE DE TRUJILLO', '', 'Gobierno Regional', 'LA LIBERTAD', 'TRUJILLO', 'TRUJILLO'),
(206, '29535078', 'BENEGAS RAMOS GROBER MANUEL', 'GROBERBEN@HOTMAIL.COM', 'PRESIDENTE DE COMITE', '', 'HOSPITAL REGIONAL HONORIO DELGADO', '', 'Gobierno Regional', 'AREQUIPA', 'AREQUIPA', 'PAUCARPATA'),
(207, '25829681', 'AVALOS MORENO DANIEL RAMON ANTONIO', 'DAVALOS@HSJ.GOB.PE', 'PRESIDENTE DE COMITE', '', 'HOSPITAL SAN JOSÉ - CALLAO', '', 'Gobierno Regional', 'P. C. DEL CALLAO', 'PROV. CONST. DEL CALLAO', 'CARMEN DE LA LEGUA-REYNOSO'),
(208, '08497154', 'CALERO HIJAR ALDO HUGO', 'ALDOCALEROH@HOTMAIL.COM', 'PRESIDENTE DE COMITE', '', 'HOSPITAL SAN JUAN DE LURIGANCHO', '', 'Gobierno Central', 'LIMA', 'LIMA', 'SAN JUAN DE LURIGANCHO'),
(209, '42250581', 'VILA CORDOVA CONSTANTINO SEVERO', 'CVILAC6@GMAIL.COM', 'PRESIDENTE DE COMITE', '', 'HOSPITAL SANTA MARIA DEL SOCORRO DE ICA', '', 'Gobierno Regional', 'ICA', 'ICA', 'ICA'),
(210, '09307465', 'GUTARRA VILCHEZ ROSA BERTHA', 'DRAGUTARRA2@GMAIL.COM', 'PRESIDENTE DE COMITE', '', 'HOSPITAL ZONAL DE VITARTE', '', 'Gobierno Central', 'LIMA', 'LIMA', 'ATE'),
(211, '07818743', 'COLLADO GUZMAN NOEMI ANGELICA', 'NCOLLADO@HVLH.GOB.PE', 'PRESIDENTE DE COMITE', '', 'HOSPITAL. VÍCTOR LARCO HERRERA', '', 'Gobierno Central', 'LIMA', 'LIMA', 'MAGDALENA DEL MAR'),
(212, '06915084', 'SOTO IBAÑEZ CESAR', 'csoto@munlima.gob.pe', 'PRESIDENTE DE COMITE', '', 'INSTITUTO CATASTRAL DE LIMA', '', 'Gobierno Local', 'LIMA', 'LIMA', 'LIMA'),
(213, '05224326', 'BEUZEVILLE ZUMAETA ROGER WILDER', 'RBEUZEVILLE@IIAP.ORG.PE', 'PRESIDENTE DE COMITE', '', 'INSTITUTO DE INVESTIGACIÓN DE LA AMAZONIA PERUANA', '', 'Gobierno Central', 'LORETO', 'MAYNAS', 'SAN JUAN BAUTISTA'),
(214, '05269794', 'CARDAMA VASQUEZ ITALO ORLANDO', 'ICARDAMA@IIAP.ORG.PE', 'PRESIDENTE DE COMITE', '', 'INSTITUTO DE INVESTIGACIÓN DE LA AMAZONIA PERUANA', '', 'Gobierno Central', 'LORETO', 'MAYNAS', 'SAN JUAN BAUTISTA'),
(215, '23823293', 'CONCHA CAZORLA TOMAS RONAL', 'RCONCHA@IMA.ORG.PE', 'PRESIDENTE DE COMITE', '', 'INSTITUTO DE MANEJO DE AGUA Y MEDIO AMBIENTE', '', 'Gobierno Regional', 'CUSCO', 'CUSCO', 'WANCHAQ'),
(216, '25626587', 'CAÑOTE SANTAMARINA GODOFREDO FEDERICO', 'GCANOTE@IMARPE.GOB.PE ', 'PRESIDENTE DE COMITE', '', 'INSTITUTO DEL MAR DEL PERÚ', '', 'Gobierno Central', 'P. C. DEL CALLAO', 'PROV. CONST. DEL CALLAO', 'CALLAO'),
(217, '09044269', 'NORABUENA ORTIZ EDMUNDO OSWALDO', 'EDMUNDO.NORABUENA@IGP.GOB.PE', 'PRESIDENTE DE COMITE', '', 'INSTITUTO GEOFÍSICO DEL PERÚ', '', 'Gobierno Central', 'LIMA', 'LIMA', 'ATE'),
(218, '43577235', 'BECERRA NOBLECILLA WALTER MARTIN', 'SUB_JEFATURA@IGN.GOB.PE', 'PRESIDENTE DE COMITE', '', 'INSTITUTO GEOGRAFICO NACIONAL - IGN', '', 'Gobierno Central', 'LIMA', 'LIMA', 'SURQUILLO'),
(219, '40968870', 'FLORES HERRERA RICARDO JAVIER', 'RFLORESH@INGEMMET.GOB.PE', 'PRESIDENTE DE COMITE', '', 'INSTITUTO GEOLÓGICO MINERO Y METALÚRGICO - INGEMMET', '', 'Gobierno Central', 'LIMA', 'LIMA', 'SAN BORJA'),
(220, '06132187', 'VILLARAN SALAZAR JOSE LUIS', 'JVILLARAN@IMP.GOB.PE', 'PRESIDENTE DE COMITE', '', 'INSTITUTO METROPOLITANO DE PLANIFICACION', '', 'Gobierno Local', 'LIMA', 'LIMA', 'JESUS MARIA'),
(221, '06610552', 'GUTIERREZ VARGAS MARITZA YANINA', 'MGUTIERREZ@INACAL.GOB.PE', 'PRESIDENTE DE COMITE', '', 'INSTITUTO NACIONAL DE CALIDAD - INACAL', '', 'Gobierno Central', 'LIMA', 'LIMA', 'SAN ISIDRO'),
(222, '09660531', 'ZAVALA MUÑOZ JOSE MANUEL', 'JZAVALA@INACAL.GOB.PE', 'PRESIDENTE DE COMITE', '', 'INSTITUTO NACIONAL DE CALIDAD - INACAL', '', 'Gobierno Central', 'LIMA', 'LIMA', 'SAN ISIDRO'),
(223, '07605675', 'TAGLE LOSTAUNAU ISABEL BEATRIZ', 'ITAGLE11@GEMAIL.COM ', 'PRESIDENTE DE COMITE', '', 'INSTITUTO NACIONAL DE CIENCIAS NEUROLÓGICAS', '', 'Gobierno Central', 'LIMA', 'LIMA', 'LIMA'),
(224, '43326954', 'ZUAZO MANTILLA LUIS ALFONSO', 'LZUAZO@INDECI.GOB.PE', 'PRESIDENTE DE COMITE', '', 'INSTITUTO NACIONAL DE DEFENSA CIVIL - INDECI', '', 'Gobierno Central', 'LIMA', 'LIMA', 'SAN ISIDRO'),
(225, '18134876', 'DE LA CRUZ TOLEDO JUAN JOEL', 'JDELACRUZ@INDECOPI.GOB.PE', 'PRESIDENTE DE COMITE', '', 'INSTITUTO NACIONAL DE DEFENSA DE LA COMPETENCIA Y PROTECCIÓN DE LA PROPIEDAD INTELECTUAL', '', 'Gobierno Central', 'LIMA', 'LIMA', 'SAN BORJA'),
(226, '09994320', 'NAVARRO PALACIOS MOISES ALBERTO', 'MNAVARRO@INEN.SLD.PE', 'PRESIDENTE DE COMITE', '', 'INSTITUTO NACIONAL DE ENFERMEDADES NEOPLÁSICAS', '', 'Gobierno Central', 'LIMA', 'LIMA', 'SURQUILLO'),
(227, '25614245', 'COSTA APONTE FRANCISCO MANUEL', 'FRANCISCO.COSTA@INEI.GOB.PE', 'PRESIDENTE DE COMITE', '', 'INSTITUTO NACIONAL DE ESTADISTICA E INFORMATICA - INEI', '', 'Gobierno Central', 'LIMA', 'LIMA', 'JESUS MARIA'),
(228, '07808934', 'RIOJA NUÑEZ MARY ANTONIA', 'MRIOJA@INIA.GOB.PE', 'PRESIDENTE DE COMITE', '', 'INSTITUTO NACIONAL DE INNOVACIÓN AGRARIA INIA', '', 'Gobierno Central', 'LIMA', 'LIMA', 'LA MOLINA'),
(229, '10317948', 'OLIVA SILVA JESSICA', 'JOLIVA@INIA.GOB.PE', 'PRESIDENTE DE COMITE', '', 'INSTITUTO NACIONAL DE INNOVACIÓN AGRARIA INIA', '', 'Gobierno Central', 'LIMA', 'LIMA', 'LA MOLINA'),
(230, '10432917', 'OLIDEN MARTINEZ JOSE FORTUNATO', 'JOLIDEN@INICTEL-UNI.EDU.PE', 'PRESIDENTE DE COMITE', '', 'INSTITUTO NACIONAL DE INVESTIGACIÓN Y CAPACITACIÓN DE TELECOMUNICACIONES - INICTEL UNI', '', 'Gobierno Central', 'LIMA', 'LIMA', 'SAN BORJA'),
(231, '07557508', 'ARAKAKI MIYAHIRA BETTY KEIKO', 'BETTY.ARAKAKI@GMAIL.COM', 'PRESIDENTE DE COMITE', '', 'INSTITUTO NACIONAL DE OFTALMOLOGÍA', '', 'Gobierno Central', 'LIMA', 'LIMA', 'LIMA'),
(232, '07802631', 'BERNINZON VALLARINO FELIPE VICENTE', 'FBERNINZON@TVPERU.GOB.PE', 'PRESIDENTE DE COMITE', '', 'INSTITUTO NACIONAL DE RADIO Y TELEVISIÓN DEL PERÚ', '', 'Gobierno Central', 'LIMA', 'LIMA', 'LIMA'),
(233, '06240232', 'FARRO UCEDA LUIS MIGUEL', 'DIRECTORADJUNTO@INR.GOB.PE', 'PRESIDENTE DE COMITE', '', 'INSTITUTO NACIONAL DE REHABILITACIÓN DRA. ADRIANA REBAZA FLORES', '', 'Gobierno Central', 'LIMA', 'LIMA', 'CHORRILLOS'),
(234, '10321769', 'OTANI CANO CYNTHIA', 'COTANI@INS.GOB.PE', 'PRESIDENTE DE COMITE', '', 'INSTITUTO NACIONAL DE SALUD', '', 'Gobierno Central', 'LIMA', 'LIMA', 'JESUS MARIA'),
(235, '08030384', 'TARAZONA LEGUIA BEATRIZ FABIOLA', 'BTARAZONA@INS.GOB.PE', 'PRESIDENTE DE COMITE', '', 'INSTITUTO NACIONAL DE SALUD', '', 'Gobierno Central', 'LIMA', 'LIMA', 'JESUS MARIA');
INSERT INTO `pdtes_filtrados` (`id`, `nro_documento`, `apellidos_nombres`, `correo`, `rol`, `codigo`, `nombre_entidad`, `proceso`, `cnig_nombre`, `cdpt_dpto`, `cprv_prov`, `cdst_distrit`) VALUES
(236, '06047763', 'GAMARRA ABRILL CARLOS ABELARDO', 'CGAMARRA@INSN.GOB.PE', 'PRESIDENTE DE COMITE', '', 'INSTITUTO NACIONAL DE SALUD DEL NIÑO', '', 'Gobierno Central', 'LIMA', 'LIMA', 'BREÑA'),
(237, '10001188', 'MAURTUA URQUIZO ANIBAL PABLO', 'AMAURTUA@INSN.GOB.PE', 'PRESIDENTE DE COMITE', '', 'INSTITUTO NACIONAL DE SALUD DEL NIÑO', '', 'Gobierno Central', 'LIMA', 'LIMA', 'BREÑA'),
(238, '25598045', 'ALVAREZ MURILLO CARLOS MELCHOR', 'CALVAREZ@INSNSB.GOB.PE', 'PRESIDENTE DE COMITE', '', 'INSTITUTO NACIONAL DE SALUD DEL NIÑO - SAN BORJA', '', 'Gobierno Central', 'LIMA', 'LIMA', 'SAN BORJA'),
(239, '08516731', 'SANCHEZ GONGORA AMADEO', 'ASANCHEZ@IEMP.GOB.PE', 'PRESIDENTE DE COMITE', '', 'INSTITUTO NACIONAL MATERNO PERINATAL - HOSPITAL DE MATERNIDAD DE LIMA', '', 'Gobierno Central', 'LIMA', 'LIMA', 'LIMA'),
(240, '08717450', 'DIAZ UGAS LAURA PILAR', 'LDIAZU@INPE.GOB.PE', 'PRESIDENTE DE COMITE', '', 'INSTITUTO NACIONAL PENITENCIARIO - INPE', '', 'Gobierno Central', 'LIMA', 'LIMA', 'LIMA'),
(241, '09996742', 'CARRERA YALAN JIM ORLANDO', 'JCARRERA@IPEN.GOB.PE', 'PRESIDENTE DE COMITE', '', 'INSTITUTO PERUANO DE ENERGÍA NUCLEAR - IPEN', '', 'Gobierno Central', 'LIMA', 'LIMA', 'SAN BORJA'),
(242, '09304494', 'ESPINOZA GALARCEP PILAR ADRIANA', 'PESPINOZA@IPD.GOB.PE', 'PRESIDENTE DE COMITE', '', 'INSTITUTO PERUANO DEL DEPORTE - IPD', '', 'Gobierno Central', 'LIMA', 'LIMA', 'LIMA'),
(243, '29680244', 'PALACIOS ROSADO CARLOS FELIPE', 'CARLITOSPR99@GMAIL.COM', 'PRESIDENTE DE COMITE', '', 'INSTITUTO REGIONAL DE ENFERMEDADES NEOPLASICAS DEL SUR', '', 'Gobierno Regional', 'AREQUIPA', 'AREQUIPA', 'AREQUIPA'),
(244, '18193742', 'RODRIGUEZ VILLARREAL CECILIA MARIANA', 'CRODRIGUEZV@IRENNORTE.GOB.PE', 'PRESIDENTE DE COMITE', '', 'INSTITUTO REGIONAL DE ENFERMEDADES NEOPLÁSICAS LUIS PINILLOS GANOZA - IREN NORTE', '', 'Gobierno Regional', 'LA LIBERTAD', 'TRUJILLO', 'MOCHE'),
(245, '08799116', 'ROMERO ALCALÁ AQUILINO HERMES', 'AROMERO@ITP.GOB.PE', 'PRESIDENTE DE COMITE', '', 'INSTITUTO TECNOLÓGICO DE LA PRODUCCIÓN - ITP', '', 'Gobierno Central', 'P. C. DEL CALLAO', 'PROV. CONST. DEL CALLAO', 'CALLAO'),
(246, '25627105', 'NAVARRO CHUMPITAZ VILMA ROSA', 'VNAVARRO@ITP.GOB.PE', 'PRESIDENTE DE COMITE', '', 'INSTITUTO TECNOLÓGICO DE LA PRODUCCIÓN - ITP', '', 'Gobierno Central', 'P. C. DEL CALLAO', 'PROV. CONST. DEL CALLAO', 'CALLAO'),
(247, '06017491', 'IGLESIAS LEON LUIS MIGUEL', 'LIGLESIAS@JNE.GOB.PE', 'PRESIDENTE DE COMITE', '', 'JURADO NACIONAL DE ELECCIONES - JNE', '', 'Gobierno Central', 'LIMA', 'LIMA', 'LIMA'),
(248, '43394055', 'MENENDEZ CALLE RICARDO ALFONSO', 'RICARDO.MENENDEZ@MARINA.PE', 'PRESIDENTE DE COMITE', '', 'MARINA DE GUERRA DEL PERÚ', '', 'Gobierno Central', 'P. C. DEL CALLAO', 'PROV. CONST. DEL CALLAO', 'LA PERLA'),
(249, '43317410', 'CERDAN RUIZ FERNANDO RAUL', 'FERNANDO.CERDAN@MARINA.PE', 'PRESIDENTE DE COMITE', '', 'MARINA DE GUERRA DEL PERÚ', '', 'Gobierno Central', 'P. C. DEL CALLAO', 'PROV. CONST. DEL CALLAO', 'LA PERLA'),
(250, '07733209', 'VESGA GATTI MARIA DEL ROCIO', 'MVESGA@MINEDU.GOB.PE', 'PRESIDENTE DE COMITE', '', 'MEJORAMIENTO DE LA CALIDAD DE LA EDUCACIÓN BÁSICA', '', 'Gobierno Central', 'LIMA', 'LIMA', 'MAGDALENA DEL MAR'),
(251, '08480349', 'PASTOR MESTANZA JOSE LUIS', 'JPASTOR@MINAGRI.GOB.PE', 'PRESIDENTE DE COMITE', '', 'MINISTERIO DE AGRICULTURA Y RIEGO', '', 'Gobierno Central', 'LIMA', 'LIMA', 'LA MOLINA'),
(252, '09336357', 'SERVAN DIAZ ADRIANA PATRICIA', 'PSERVAN@MINCETUR.GOB.PE', 'PRESIDENTE DE COMITE', '', 'MINISTERIO DE COMERCIO EXTERIOR Y TURISMO', '', 'Gobierno Central', 'LIMA', 'LIMA', 'LIMA'),
(253, '25647842', 'SALAZAR SALAZAR LUIS ALBERTO', 'LSALAZAR@CULTURA.GOB.PE', 'PRESIDENTE DE COMITE', '', 'MINISTERIO DE CULTURA', '', 'Gobierno Central', 'LIMA', 'LIMA', 'SAN BORJA'),
(254, '15971061', 'CANEVARO LARA MARIA ANGELICA', 'MCANEVARO@CULTURA.GOB.PE', 'PRESIDENTE DE COMITE', '', 'MINISTERIO DE CULTURA', '', 'Gobierno Central', 'LIMA', 'LIMA', 'SAN BORJA'),
(255, '16419083', 'DELGADO ARROYO MARGARITA MILAGRO', 'MDELGADOA@CULTURA.GOB.PE ', 'PRESIDENTE DE COMITE', '', 'MINISTERIO DE CULTURA', '', 'Gobierno Central', 'LIMA', 'LIMA', 'SAN BORJA'),
(256, '25642832', 'CUEVA SAENZ BARTOLOME EMILIO', 'BCUEVA@MINDEF.GOB.PE', 'PRESIDENTE DE COMITE', '', 'MINISTERIO DE DEFENSA', '', 'Gobierno Central', 'LIMA', 'LIMA', 'JESUS MARIA'),
(257, '25742880', 'REATEGUI VELIZ JESSICA AMELIA', 'JREATEGUI@MIDIS.GOB.PE', 'PRESIDENTE DE COMITE', '', 'MINISTERIO DE DESARROLLO E INCLUSIÓN SOCIAL', '', 'Gobierno Central', 'LIMA', 'LIMA', 'SAN ISIDRO'),
(258, '10263348', 'GROSSHEIM BARRIENTOS ANGELA MARIA DEL ROSARIO', 'AGROSSHEIM@MEF.GOB.PE', 'PRESIDENTE DE COMITE', '', 'MINISTERIO DE ECONOMÍA Y FINANZAS', '', 'Gobierno Central', 'LIMA', 'LIMA', 'LIMA'),
(259, '08756719', 'BARRERA MACHADO LUCY ESTHER', 'LBARRERA@UGEL.GOB.PE', 'PRESIDENTE DE COMITE', '', 'MINISTERIO DE EDUCACIÓN', '', 'Gobierno Central', 'LIMA', 'LIMA', 'SAN BORJA'),
(260, '41906857', 'ALVA TELLO KATHERINE CONSUELO', 'KAALVA@MINEDU.GOB.PE', 'PRESIDENTE DE COMITE', '', 'MINISTERIO DE EDUCACIÓN', '', 'Gobierno Central', 'LIMA', 'LIMA', 'SAN BORJA'),
(261, '10263515', 'VIVANCO DEL CASTILLO TABATA DULCE', 'TVIVANCO@MINEM.GOB.PE', 'PRESIDENTE DE COMITE', '', 'MINISTERIO DE ENERGÍA Y MINAS', '', 'Gobierno Central', 'LIMA', 'LIMA', 'SAN BORJA'),
(262, '07824091', 'HERBOZO PEREZ COSTA JORGE LUIS PELAYO', 'JHERBOZO@MINEM.GOB.PE', 'PRESIDENTE DE COMITE', '', 'MINISTERIO DE ENERGÍA Y MINAS', '', 'Gobierno Central', 'LIMA', 'LIMA', 'SAN BORJA'),
(263, '08878746', 'FLORES GOMEZ KARINA NILDA', 'KFLORESG@MINJUS.GOB.PE', 'PRESIDENTE DE COMITE', '', 'MINISTERIO DE JUSTICIA Y DERECHOS HUMANOS', '', 'Gobierno Central', 'LIMA', 'LIMA', 'LIMA'),
(264, '25611828', 'CORRALES ANGULO ANDRES ALFONSO MARTIN', 'ACORRALES@GMAIL.COM', 'PRESIDENTE DE COMITE', '', 'MINISTERIO DE LA MUJER Y POBLACIONES VULNERABLES - MIMP', '', 'Gobierno Central', 'LIMA', 'LIMA', 'LIMA'),
(265, '07795080', 'ALTABAS KAJATT FATIMA SORAYA', 'SALTABAS@PRODUCE.GOB.PE', 'PRESIDENTE DE COMITE', '', 'MINISTERIO DE LA PRODUCCIÓN', '', 'Gobierno Central', 'LIMA', 'LIMA', 'SAN ISIDRO'),
(266, '10438891', 'ANDERSON MACHADO ERIC EDGARDO GUILLERMO', 'EANDERSON@RREE.GOB.PE', 'PRESIDENTE DE COMITE', '', 'MINISTERIO DE RELACIONES EXTERIORES', '', 'Gobierno Central', 'LIMA', 'LIMA', 'LIMA'),
(267, '40899304', 'VILLARAN CONTAVALLI RODRIGO', 'RVILLARAN@MINSA.GOB.PE', 'PRESIDENTE DE COMITE', '', 'MINISTERIO DE SALUD', '', 'Gobierno Central', 'LIMA', 'LIMA', 'JESUS MARIA'),
(268, '17903723', 'SICCHA MARTINEZ ROGER ALBERTO', 'RSICCHA@TRABAJO.GOB.PE', 'PRESIDENTE DE COMITE', '', 'MINISTERIO DE TRABAJO Y PROMOCIÓN DEL EMPLEO', '', 'Gobierno Central', 'LIMA', 'LIMA', 'JESUS MARIA'),
(269, '08210973', 'ZAVALA HERNANDEZ JULIO CESAR', 'JCZAVALA@MTC.GOB.PE', 'PRESIDENTE DE COMITE', '', 'MINISTERIO DE TRANSPORTES Y COMUNICACIONES', '', 'Gobierno Central', 'LIMA', 'LIMA', 'LIMA'),
(270, '42178233', 'TABOADA DELGADO RUPERTO ANDRES', 'FTABOADA@VIVIENDA.GOB.PE', 'PRESIDENTE DE COMITE', '', 'MINISTERIO DE VIVIENDA, CONSTRUCCIÓN Y SANEAMIENTO', '', 'Gobierno Central', 'LIMA', 'LIMA', 'SAN ISIDRO'),
(271, '08125919', 'TRINIDAD GUERRERO KITTY ELISA', 'KTRINIDAD@MINAM.GOB.PE', 'PRESIDENTE DE COMITE', '', 'MINISTERIO DEL AMBIENTE', '', 'Gobierno Central', 'LIMA', 'LIMA', 'SAN ISIDRO'),
(272, '07368310', 'NALDOS BLANCO LUIS ALBERTO', 'LNALDOS@MININTER.GOB.PE', 'PRESIDENTE DE COMITE', '', 'MINISTERIO DEL INTERIOR', '', 'Gobierno Central', 'LIMA', 'LIMA', 'SAN ISIDRO'),
(273, '09083034', 'SILVA HASEMBANK SUSANA', 'SSILVA@MININTER.GOB.PE', 'PRESIDENTE DE COMITE', '', 'MINISTERIO DEL INTERIOR', '', 'Gobierno Central', 'LIMA', 'LIMA', 'SAN ISIDRO'),
(274, '10452594', 'JIMENEZ ALLENDE JOSE FREDY', 'FJIMENEZ@MPFN.GOB.PE', 'PRESIDENTE DE COMITE', '', 'MINISTERIO PÚBLICO - FISCALÍA DE LA NACIÓN', '', 'Gobierno Central', 'LIMA', 'LIMA', 'LIMA'),
(275, '06189524', 'VILLAVICENCIO TORRE RAUL PLACIDO', 'RPVILLAVICENCIO@HOTMAIL.COM', 'PRESIDENTE DE COMITE', '', 'MUNICIPALIDAD DEL CENTRO POBLADO MENOR DE SANTA MARIA DE HUACHIPA', '', 'Gobierno Local', 'LIMA', 'LIMA', 'LURIGANCHO'),
(276, '42343560', 'LOPEZ MELGAR FLENYN', 'MUNIACORIA@GMAIL.COM', 'PRESIDENTE DE COMITE', '', 'MUNICIPALIDAD DISTRITAL DE ACORIA', '', 'Gobierno Local', 'HUANCAVELICA', 'HUANCAVELICA', 'ACORIA'),
(277, '00419594', 'CASTREJON CHAVEZ LUIS ARTEMIO', 'LUISCASTREJONCHAVEZ@HOTMAIL.COM', 'PRESIDENTE DE COMITE', '', 'MUNICIPALIDAD DISTRITAL DE ALTO DE LA ALIANZA', '', 'Gobierno Local', 'TACNA', 'TACNA', 'ALTO DE LA ALIANZA'),
(278, '21798090', 'COLMENARES CHAVEZ ELIAS ANTONIO', 'SFERNANDEZO@CONTRALORIA.GOB.PE', 'PRESIDENTE DE COMITE', '', 'MUNICIPALIDAD DISTRITAL DE ALTO LARAN', '', 'Gobierno Local', 'ICA', 'CHINCHA', 'ALTO LARAN'),
(279, '29669520', 'GOMEZ BENAVENTE DANIEL FREDDY', 'DANIELGOBE@HOTMAIL.COM', 'PRESIDENTE DE COMITE', '', 'MUNICIPALIDAD DISTRITAL DE ALTO SELVA ALEGRE', '', 'Gobierno Local', 'AREQUIPA', 'AREQUIPA', 'ALTO SELVA ALEGRE'),
(280, '29669500', 'GUEVARA ZEVALLOS MIGUEL ANGEL', 'DANIELGOBE.@HOTMAIL.COM.PE', 'PRESIDENTE DE COMITE', '', 'MUNICIPALIDAD DISTRITAL DE ALTO SELVA ALEGRE', '', 'Gobierno Local', 'AREQUIPA', 'AREQUIPA', 'ALTO SELVA ALEGRE'),
(281, '22530044', 'ALVA LEANDRO JUAN JOSE', 'XTO26@HOTMAIL.COM', 'PRESIDENTE DE COMITE', '', 'MUNICIPALIDAD DISTRITAL DE AMARILIS', '', 'Gobierno Local', 'HUANUCO', 'HUANUCO', 'AMARILIS'),
(282, '02435050', 'MIRANDA MACHACA WILFREDO', 'MIRANDACONTADORES@HOTMAIL.COM', 'PRESIDENTE DE COMITE', '', 'MUNICIPALIDAD DISTRITAL DE ANANEA', '', 'Gobierno Local', 'PUNO', 'SAN ANTONIO DE PUTINA', 'ANANEA'),
(283, '40735754', 'SANTISTEBAN SIAPO LUZ MARGARITA', 'LSANTISTEBAN@MUNIANCON.GOB.PE', 'PRESIDENTE DE COMITE', '', 'MUNICIPALIDAD DISTRITAL DE ANCÓN', '', 'Gobierno Local', 'LIMA', 'LIMA', 'ANCON'),
(284, '25406715', 'LOLI BONILLA JULIAN ENRIQUE ', 'jloli@muniancon.gob.pe', 'PRESIDENTE DE COMITE', '', 'MUNICIPALIDAD DISTRITAL DE ANCÓN', '', 'Gobierno Local', 'LIMA', 'LIMA', 'ANCON'),
(285, '07220060', 'VELASQUEZ SAAVEDRA JESUS CELEDONIO', 'JESUSVS00151@HOTMAIL.COM', 'PRESIDENTE DE COMITE', '', 'MUNICIPALIDAD DISTRITAL DE ANTA-CARHUAZ', '', 'Gobierno Local', 'ANCASH', 'CARHUAZ', 'ANTA'),
(286, '23269938', 'YUPARI ANYAIPOMA IVAN', 'IVANYUPANY3001_73@HOTMAIL.COM', 'PRESIDENTE DE COMITE', '', 'MUNICIPALIDAD DISTRITAL DE ASCENSION', '', 'Gobierno Local', 'HUANCAVELICA', 'HUANCAVELICA', 'ASCENSION'),
(287, '26671204', 'CORREA SAENZ JUAN RAMON', 'JRMS1201@HOTMAIL.COM', 'PRESIDENTE DE COMITE', '', 'MUNICIPALIDAD DISTRITAL DE ASUNCION-CAJAMARCA', '', 'Gobierno Local', 'CAJAMARCA', 'CAJAMARCA', 'ASUNCION'),
(288, '06571465', 'GUARDIAN RAMIREZ ADALBERTO FIDEL', 'AGUARDIANR@MUNIATE.GOB.PE', 'PRESIDENTE DE COMITE', '', 'MUNICIPALIDAD DISTRITAL DE ATE', '', 'Gobierno Local', 'LIMA', 'LIMA', 'ATE'),
(289, '30410200', 'MARZANO REYES DILMER AGUSTIN', 'DILMER07_1990@HOTMAIL.COM', 'PRESIDENTE DE COMITE', '', 'MUNICIPALIDAD DISTRITAL DE ATICO', '', 'Gobierno Local', 'AREQUIPA', 'CARAVELI', 'ATICO'),
(290, '07536300', 'NARREA SAN MIGUEL FRANCISCO MANUEL', 'F.NARREA@MUNIBARRANCO.GOB.PE', 'PRESIDENTE DE COMITE', '', 'MUNICIPALIDAD DISTRITAL DE BARRANCO', '', 'Gobierno Local', 'LIMA', 'LIMA', 'BARRANCO'),
(291, '05341544', 'TORRES GARCIA HILARIA DEL PILAR', 'HTORRES@MUNIBELEN.GOB.PE', 'PRESIDENTE DE COMITE', '', 'MUNICIPALIDAD DISTRITAL DE BELEN-MAYNAS', '', 'Gobierno Local', 'LORETO', 'MAYNAS', 'BELEN'),
(292, '08854411', 'YALTA SOTELO ERNESTO ALCIBIADES', 'GERENCIAMUNICIPAL@MUNIBELLAVISTA.GOB.PE', 'PRESIDENTE DE COMITE', '', 'MUNICIPALIDAD DISTRITAL DE BELLAVISTA-CALLAO', '', 'Gobierno Local', 'P. C. DEL CALLAO', 'PROV. CONST. DEL CALLAO', 'BELLAVISTA'),
(293, '03594302', 'RUMICHE CHUNGA FLORO', 'FRUMICH@HOTMAIL.COM', 'PRESIDENTE DE COMITE', '', 'MUNICIPALIDAD DISTRITAL DE BELLAVISTA-SULLANA', '', 'Gobierno Local', 'PIURA', 'SULLANA', 'BELLAVISTA'),
(294, '16407842', 'BARRANTES PEREZ EDELMIRA DEL CARMEN', 'CARMEN.BARRANTESP@GMAIL.COM', 'PRESIDENTE DE COMITE', '', 'MUNICIPALIDAD DISTRITAL DE BREÑA', '', 'Gobierno Local', 'LIMA', 'LIMA', 'BREÑA'),
(295, '41384820', 'ALARCON MIRANDA ANGELICA MARIA ', 'angelica2-3@hotmail.com', 'PRESIDENTE DE COMITE', '', 'MUNICIPALIDAD DISTRITAL DE CALANA', '', 'Gobierno Local', 'TACNA', 'TACNA', 'CALANA'),
(296, '15440111', 'POMALAYA GODOY REGIS VICTOR', 'REGGISITO@HOTMAIL.COM', 'PRESIDENTE DE COMITE', '', 'MUNICIPALIDAD DISTRITAL DE CALANGO', '', 'Gobierno Local', 'LIMA', 'CAÑETE', 'CALANGO'),
(297, '15729006', 'CORNEJO NICHO FRANKLIN JESUS ', 'FRANKCORNEJO03@GMAIL.COM', 'PRESIDENTE DE COMITE', '', 'MUNICIPALIDAD DISTRITAL DE CALETA DE CARQUIN', '', 'Gobierno Local', 'LIMA', 'HUAURA', 'CALETA DE CARQUIN'),
(298, '07905201', 'ROCA SILVA JOSE ANTONIO FERNANDO', 'JARS2001@YAHOO.COM', 'PRESIDENTE DE COMITE', '', 'MUNICIPALIDAD DISTRITAL DE CARABAYLLO', '', 'Gobierno Local', 'LIMA', 'LIMA', 'CARABAYLLO'),
(299, '21069400', 'CAJACURI VALERO JORGE RICARDO', 'JCAJACURI@MUNICARABAYLLO.GOB.PE          ', 'PRESIDENTE DE COMITE', '', 'MUNICIPALIDAD DISTRITAL DE CARABAYLLO', '', 'Gobierno Local', 'LIMA', 'LIMA', 'CARABAYLLO'),
(300, '28292613', 'PIZARRO APAICO WILBER', 'WILPA30@HOTMAIL.COM', 'PRESIDENTE DE COMITE', '', 'MUNICIPALIDAD DISTRITAL DE CARMEN ALTO', '', 'Gobierno Local', 'AYACUCHO', 'HUAMANGA', 'CARMEN ALTO'),
(301, '25742136', 'ROMERO TORERO JOHNNY PEDRO', 'JROMEROTORERO@HOTMAIL.COM', 'PRESIDENTE DE COMITE', '', 'MUNICIPALIDAD DISTRITAL DE CARMEN DE LA LEGUA REYNOSO', '', 'Gobierno Local', 'P. C. DEL CALLAO', 'PROV. CONST. DEL CALLAO', 'CARMEN DE LA LEGUA-REYNOSO'),
(302, '18841546', 'CHUQUIRUNA LEON VICTOR', 'ALUPAMICG@GMAIL.COM', 'PRESIDENTE DE COMITE', '', 'MUNICIPALIDAD DISTRITAL DE CASA GRANDE', '', 'Gobierno Local', 'LA LIBERTAD', 'ASCOPE', 'CASA GRANDE'),
(303, '00241197', 'SANCHEZ VEGA LUIS ANTERO', 'LASV0811@GMAIL.COM', 'PRESIDENTE DE COMITE', '', 'MUNICIPALIDAD DISTRITAL DE CASITAS', '', 'Gobierno Local', 'TUMBES', 'CONTRALMIRANTE VILLAR', 'CASITAS'),
(304, '41903833', 'ZAFRA REYNOSO WILBORT MARTIN', 'MZAFRAREY30@GMAIL.COM', 'PRESIDENTE DE COMITE', '', 'MUNICIPALIDAD DISTRITAL DE CASTILLA', '', 'Gobierno Local', 'PIURA', 'PIURA', 'CASTILLA'),
(305, '18838979', 'GARCIA SANCHEZ JAIME LUIS', 'JAIME.GARCIA@MUNICATACAOS.GOB.PE', 'PRESIDENTE DE COMITE', '', 'MUNICIPALIDAD DISTRITAL DE CATACAOS', '', 'Gobierno Local', 'PIURA', 'PIURA', 'CATACAOS'),
(306, '15726450', 'SAN ROMAN SAN MARTIN KATTY', 'KATTY_140672@HOTMAIL.COM', 'PRESIDENTE DE COMITE', '', 'MUNICIPALIDAD DISTRITAL DE CAUJUL', '', 'Gobierno Local', 'LIMA', 'OYON', 'CAUJUL'),
(307, '29596235', 'MARIACA CARBAJAL NILO MANUEL', 'NILOMARIACA@GMAIL.COM', 'PRESIDENTE DE COMITE', '', 'MUNICIPALIDAD DISTRITAL DE CAYMA', '', 'Gobierno Local', 'AREQUIPA', 'AREQUIPA', 'CAYMA'),
(308, '15372630', 'KOU ESPICHAN CESAR RICARDO', 'CESAR_000035@HOTMAIL.COM', 'PRESIDENTE DE COMITE', '', 'MUNICIPALIDAD DISTRITAL DE CERRO AZUL', '', 'Gobierno Local', 'LIMA', 'CAÑETE', 'CERRO AZUL'),
(309, '02437881', 'CACERES RODRIGUEZ OSCAR WYLLAMS', 'OSCAROD59@GMAIL.COM', 'PRESIDENTE DE COMITE', '', 'MUNICIPALIDAD DISTRITAL DE CERRO COLORADO', '', 'Gobierno Local', 'AREQUIPA', 'AREQUIPA', 'CERRO COLORADO'),
(310, '19929118', 'CANEZ QUISPE EMILIO DANIEL', 'DCANEZQ@HOTMAIL.COM', 'PRESIDENTE DE COMITE', '', 'MUNICIPALIDAD DISTRITAL DE CHACAPAMPA', '', 'Gobierno Local', 'JUNIN', 'HUANCAYO', 'CHACAPAMPA'),
(311, '10601587', 'TIPIANA RAMIREZ JOSE CARLOS ', 'JOSETIPIANA35@GMAIL.COM', 'PRESIDENTE DE COMITE', '', 'MUNICIPALIDAD DISTRITAL DE CHACLACAYO', '', 'Gobierno Local', 'LIMA', 'LIMA', 'CHACLACAYO'),
(312, '16003634', 'ESPINOZA VIZQUERRA TERESA', 'GERENCIAMUNICIPAL@MUNICHANCAY.GOB.PE', 'PRESIDENTE DE COMITE', '', 'MUNICIPALIDAD DISTRITAL DE CHANCAY-HUARAL', '', 'Gobierno Local', 'LIMA', 'HUARAL', 'CHANCAY'),
(313, '17860637', 'MOSTACERO ALTAMIRANO ELMO RICARDO', 'ELMOMOSTACERO.1505@GMAIL.COM', 'PRESIDENTE DE COMITE', '', 'MUNICIPALIDAD DISTRITAL DE CHAO', '', 'Gobierno Local', 'LA LIBERTAD', 'VIRU', 'CHAO'),
(314, '29624551', 'CALDERON MONTALVO ELIZABETH CAROLA', 'ELIZBETH303@HOTMAIL.COM', 'PRESIDENTE DE COMITE', '', 'MUNICIPALIDAD DISTRITAL DE CHARACATO', '', 'Gobierno Local', 'AREQUIPA', 'AREQUIPA', 'CHARACATO'),
(315, '07919473', 'TRIGOSO ZAGACETA FERNANDO ANTONIO ', 'FFTRIGOSO@GMAIL.COM', 'PRESIDENTE DE COMITE', '', 'MUNICIPALIDAD DISTRITAL DE CHETO', '', 'Gobierno Local', 'AMAZONAS', 'CHACHAPOYAS', 'CHETO'),
(316, '20721100', 'MORENO URCO CARLOS HUGO', 'KARMU-H@HOTMAIL.COM', 'PRESIDENTE DE COMITE', '', 'MUNICIPALIDAD DISTRITAL DE CHICCHE', '', 'Gobierno Local', 'JUNIN', 'HUANCAYO', 'CHICCHE'),
(317, '32922727', 'GONZALES JOO JAIME RUDDY', 'GMUNICIPAL@MUNICIPALIDADCHILCA.GOB.PE', 'PRESIDENTE DE COMITE', '', 'MUNICIPALIDAD DISTRITAL DE CHILCA-CAÑETE', '', 'Gobierno Local', 'LIMA', 'CAÑETE', 'CHILCA'),
(318, '20016802', 'OLIVERA RAMIREZ JORGE LUIS', 'OLIVERRAMIRO@HOTMAIL.COM', 'PRESIDENTE DE COMITE', '', 'MUNICIPALIDAD DISTRITAL DE CHILCA-HUANCAYO', '', 'Gobierno Local', 'JUNIN', 'HUANCAYO', 'CHILCA'),
(319, '41838490', 'DIAZ URBINA YERSON ', 'MUNICHIRIMOTO2018@HOTMAIL.COM', 'PRESIDENTE DE COMITE', '', 'MUNICIPALIDAD DISTRITAL DE CHIRIMOTO', '', 'Gobierno Local', 'AMAZONAS', 'RODRIGUEZ DE MENDOZA', 'CHIRIMOTO'),
(320, '07228130', 'FLOREZ FERNANDEZ LIVIA ESTHER', 'LIVIA.FLOREZ@MUNICIENEGUILLA.GOB.PE', 'PRESIDENTE DE COMITE', '', 'MUNICIPALIDAD DISTRITAL DE CIENEGUILLA', '', 'Gobierno Local', 'LIMA', 'LIMA', 'CIENEGUILLA'),
(321, '00419634', 'COAQUERA ESCOBAR FRANCISCO EMILIO', 'FECETACNA@HOTMAIL.COM', 'PRESIDENTE DE COMITE', '', 'MUNICIPALIDAD DISTRITAL DE CIUDAD NUEVA', '', 'Gobierno Local', 'TACNA', 'TACNA', 'CIUDAD NUEVA'),
(322, '44551021', 'POMA REY YOSIMAR FRANKLIN', 'YPR509@HOTMAIL.COM', 'PRESIDENTE DE COMITE', '', 'MUNICIPALIDAD DISTRITAL DE COCHAMARCA', '', 'Gobierno Local', 'LIMA', 'OYON', 'COCHAMARCA'),
(323, '19221598', 'VARGAS OLORTIGA SEGUNDO DAVID ', 'DAVID_OLORTIGA@HOTMAIL.COM', 'PRESIDENTE DE COMITE', '', 'MUNICIPALIDAD DISTRITAL DE COISHCO', '', 'Gobierno Local', 'ANCASH', 'SANTA', 'COISHCO'),
(324, '07469647', 'ASCENCIO CHAVEZ MIGUEL ANGEL', 'MASCENCIOCH@MUNICOMAS.GOB.PE', 'PRESIDENTE DE COMITE', '', 'MUNICIPALIDAD DISTRITAL DE COMAS-LIMA', '', 'Gobierno Local', 'LIMA', 'LIMA', 'COMAS'),
(325, '44379650', 'MIRANDA CUBA YESENIA YHOVANA ', 'YKA_17@HOTMAIL.ES', 'PRESIDENTE DE COMITE', '', 'MUNICIPALIDAD DISTRITAL DE CONAYCA', '', 'Gobierno Local', 'HUANCAVELICA', 'HUANCAVELICA', 'CONAYCA'),
(326, '33400820', 'CANTA CULLAMPE JOSE GENARO', 'namency25@hotmail.com', 'PRESIDENTE DE COMITE', '', 'MUNICIPALIDAD DISTRITAL DE CONILA', '', 'Gobierno Local', 'AMAZONAS', 'LUYA', 'CONILA'),
(327, '29279039', 'CORDOVA FLORES EMILIO CESAR', 'CF.EMILIO@GMAIL.COM', 'PRESIDENTE DE COMITE', '', 'MUNICIPALIDAD DISTRITAL DE CORONEL GREGORIO ALBARRACIN LANCHIPA', '', 'Gobierno Local', 'TACNA', 'TACNA', 'CRNEL GREGORIO ALBARRACIN L.'),
(328, '09609768', 'GONZALEZ RUIZ ELMER GIL', 'ELGORU22@HOTMAIL.COM', 'PRESIDENTE DE COMITE', '', 'MUNICIPALIDAD DISTRITAL DE CORRALES', '', 'Gobierno Local', 'TUMBES', 'TUMBES', 'CORRALES'),
(329, '42146585', 'ANASTACIO MORE CARLOS ALBERTO', 'CURAMORICONTROLINTERNO@GMAIL.COM', 'PRESIDENTE DE COMITE', '', 'MUNICIPALIDAD DISTRITAL DE CURA MORI', '', 'Gobierno Local', 'PIURA', 'PIURA', 'CURA MORI'),
(330, '23877663', 'LATORRE FLOREZ WILBER', 'WILBER_7899@HOTMAIL.COM', 'PRESIDENTE DE COMITE', '', 'MUNICIPALIDAD DISTRITAL DE ECHARATI', '', 'Gobierno Local', 'CUSCO', 'LA CONVENCION', 'ECHARATE'),
(331, '06710200', 'MALASQUEZ GIL VICENTE DANTE', 'VMALASQUEZ@MDEA.GOB.PE', 'PRESIDENTE DE COMITE', '', 'MUNICIPALIDAD DISTRITAL DE EL AGUSTINO', '', 'Gobierno Local', 'LIMA', 'LIMA', 'EL AGUSTINO'),
(332, '10256165', 'TIRACCAYA VELARDE CIRIACO', 'CIRIACOTV@HOTMAIL.COM', 'PRESIDENTE DE COMITE', '', 'MUNICIPALIDAD DISTRITAL DE EL CARMEN-CHURCAMPA', '', 'Gobierno Local', 'HUANCAVELICA', 'CHURCAMPA', 'EL CARMEN'),
(333, '20024788', 'FELICES ARANA HECTOR EDWIN', 'HFELICES@MUNIELTAMBO.GOB.PE', 'PRESIDENTE DE COMITE', '', 'MUNICIPALIDAD DISTRITAL DE EL TAMBO', '', 'Gobierno Local', 'JUNIN', 'HUANCAYO', 'EL TAMBO'),
(334, '28060099', 'CASTAÑEDA ALVITES CESAR', 'pcesar-77@hotmail.com', 'PRESIDENTE DE COMITE', '', 'MUNICIPALIDAD DISTRITAL DE ELIAS SOPLIN VARGAS', '', 'Gobierno Local', 'SAN MARTIN', 'RIOJA', 'ELIAS SOPLIN VARGAS'),
(335, '26730626', 'SANCHEZ TIRADO ALEJANDRO', 'JANS3@HOTMAIL.COM', 'PRESIDENTE DE COMITE', '', 'MUNICIPALIDAD DISTRITAL DE ENCAÑADA', '', 'Gobierno Local', 'CAJAMARCA', 'CAJAMARCA', 'ENCAÑADA'),
(336, '16514001', 'ESQUECHE RUIZ MANUEL', 'LARCYMER2@HOTMAIL.COM', 'PRESIDENTE DE COMITE', '', 'MUNICIPALIDAD DISTRITAL DE ETEN', '', 'Gobierno Local', 'LAMBAYEQUE', 'CHICLAYO', 'ETEN'),
(337, '05405079', 'MELENDEZ TANANTA CARLOS GUMERCINDO', 'CARGUMETA@HOTMAIL.COM', 'PRESIDENTE DE COMITE', '', 'MUNICIPALIDAD DISTRITAL DE FERNANDO LORES', '', 'Gobierno Local', 'LORETO', 'MAYNAS', 'IQUITOS'),
(338, '18887174', 'HERNANDEZ ALVA OTTO ALEX', 'SANCHEZARAUJOJESUS@GMAIL.COM', 'PRESIDENTE DE COMITE', '', 'MUNICIPALIDAD DISTRITAL DE FLORENCIA DE MORA', '', 'Gobierno Local', 'LA LIBERTAD', 'TRUJILLO', 'FLORENCIA DE MORA'),
(339, '44502510', 'PEREZ TORRES VICTOR HUGO', 'VPEREZ_11@HOTMAIL.COM', 'PRESIDENTE DE COMITE', '', 'MUNICIPALIDAD DISTRITAL DE GROCIO PRADO', '', 'Gobierno Local', 'ICA', 'CHINCHA', 'GROCIO PRADO'),
(340, '40495337', 'GARCIA SARAVIA VICTOR RONY', 'GARCIARONY2017@GMAIL.COM', 'PRESIDENTE DE COMITE', '', 'MUNICIPALIDAD DISTRITAL DE GROCIO PRADO', '', 'Gobierno Local', 'ICA', 'CHINCHA', 'GROCIO PRADO'),
(341, '19259546', 'GUANILO AYALA RICARDO ORLANDO', 'RICARDOGUANILO@HOTMAIL.COM', 'PRESIDENTE DE COMITE', '', 'MUNICIPALIDAD DISTRITAL DE GUADALUPE', '', 'Gobierno Local', 'LA LIBERTAD', 'PACASMAYO', 'GUADALUPE'),
(342, '41871068', 'SAPAICO RAMOS ESMILA JESSICA', 'ESMILA11@HOTMAIL.COM', 'PRESIDENTE DE COMITE', '', 'MUNICIPALIDAD DISTRITAL DE HUALHUAS', '', 'Gobierno Local', 'JUNIN', 'HUANCAYO', 'HUALHUAS'),
(343, '15741239', 'CHANGANA ALMEIDA DANIEL MISAEL', 'DCHANGANA@HOTMAIL.COM', 'PRESIDENTE DE COMITE', '', 'MUNICIPALIDAD DISTRITAL DE HUALMAY', '', 'Gobierno Local', 'LIMA', 'HUAURA', 'HUALMAY'),
(344, '20037850', 'ROJAS CURIÑAUPA ISIDORO MARTIN', 'MUNICIPALIDAD.HUANCAN@GMAIL.COM', 'PRESIDENTE DE COMITE', '', 'MUNICIPALIDAD DISTRITAL DE HUANCAN', '', 'Gobierno Local', 'JUNIN', 'HUANCAYO', 'HUANCAN'),
(345, '41441021', 'PAHUACHO URIBE ROLY REYNALDO', 'ROLYS_DOC@HOTMAIL.COM', 'PRESIDENTE DE COMITE', '', 'MUNICIPALIDAD DISTRITAL DE HUANCAN', '', 'Gobierno Local', 'JUNIN', 'HUANCAYO', 'HUANCAN'),
(346, '15862153', 'CONQUE COTRINA JACOB ESTEBAN', 'MUNICIPALIDADDISTRITALHUANCAPON@HOTMAIL.COM', 'PRESIDENTE DE COMITE', '', 'MUNICIPALIDAD DISTRITAL DE HUANCAPON', '', 'Gobierno Local', 'LIMA', 'CAJATAMBO', 'HUANCAPON'),
(347, '18020451', 'NAVARRO VARAS EDILBERTO HENRY', 'BNAVARRO59@HOTMAIL.COM', 'PRESIDENTE DE COMITE', '', 'MUNICIPALIDAD DISTRITAL DE HUANCHACO', '', 'Gobierno Local', 'LA LIBERTAD', 'TRUJILLO', 'HUANCHACO'),
(348, '25002542', 'DEL MAR SANTA CRUZ JUAN ENRIQUE', 'JEDELMAR12@HOTMAIL.COM', 'PRESIDENTE DE COMITE', '', 'MUNICIPALIDAD DISTRITAL DE HUANOQUITE', '', 'Gobierno Local', 'CUSCO', 'PARURO', 'HUANOQUITE'),
(349, '15761234', 'ZURITA BARRENECHEA ALFREDO TOMAS', 'ALFREDOZURITAB@HOTMAIL.COM', 'PRESIDENTE DE COMITE', '', 'MUNICIPALIDAD DISTRITAL DE HUAURA', '', 'Gobierno Local', 'LIMA', 'HUAURA', 'HUAURA'),
(350, '15590353', 'CASTAÑEDA CERNA MANUEL ELIAS', 'MANUEL_5033@HOTMAIL.COM', 'PRESIDENTE DE COMITE', '', 'MUNICIPALIDAD DISTRITAL DE HUAURA', '', 'Gobierno Local', 'LIMA', 'HUAURA', 'HUAURA'),
(351, '45603562', 'SACAICO PALACIOS MIGUEL ANGEL', 'MIGUEL.SACAICO@GMAIL.COM', 'PRESIDENTE DE COMITE', '', 'MUNICIPALIDAD DISTRITAL DE HUAYUCACHI', '', 'Gobierno Local', 'JUNIN', 'HUANCAYO', 'HUAYUCACHI'),
(352, '02873978', 'MANRIQUE ARAGON JAIME ALBERTO', 'MANRIQUEJAIME@HOTMAIL.COM', 'PRESIDENTE DE COMITE', '', 'MUNICIPALIDAD DISTRITAL DE IHUARI', '', 'Gobierno Local', 'LIMA', 'HUARAL', 'IHUARI'),
(353, '07215589', 'MALAGA CASTILLO WILLIAM MIGUEL', 'MMALAGAC@MUNILABAYA.GOB.PE', 'PRESIDENTE DE COMITE', '', 'MUNICIPALIDAD DISTRITAL DE ILABAYA', '', 'Gobierno Local', 'TACNA', 'TACNA', 'TACNA'),
(354, '15430079', 'CUBILLAS CAYCHO JAIME JAVIER', 'GERENCIA.MUNICIPAL@MUNIIMPERIAL.GOB.PE', 'PRESIDENTE DE COMITE', '', 'MUNICIPALIDAD DISTRITAL DE IMPERIAL', '', 'Gobierno Local', 'LIMA', 'CAÑETE', 'IMPERIAL'),
(355, '31673566', 'GONZALES ALFARO CESAR ALFREDO', 'CGONZALESALF@YAHOO.ES', 'PRESIDENTE DE COMITE', '', 'MUNICIPALIDAD DISTRITAL DE INDEPENDENCIA-HUARAZ', '', 'Gobierno Local', 'ANCASH', 'HUARAZ', 'INDEPENDENCIA'),
(356, '09473568', 'RIVERA CHUMPITAZ RUBEN RAFAEL', 'GMUNICIPAL@MUNIINDEPENDENCIA.GOB.PE', 'PRESIDENTE DE COMITE', '', 'MUNICIPALIDAD DISTRITAL DE INDEPENDENCIA-LIMA', '', 'Gobierno Local', 'LIMA', 'LIMA', 'INDEPENDENCIA'),
(357, '21417952', 'NAVARRO SOTOMAYOR JAVIER', 'J_NAVARROS@HOTMAIL.COM', 'PRESIDENTE DE COMITE', '', 'MUNICIPALIDAD DISTRITAL DE INDEPENDENCIA-PISCO', '', 'Gobierno Local', 'ICA', 'PISCO', 'INDEPENDENCIA'),
(358, '20072767', 'HUAYTA ORE PERCY', 'PERCYHUAYTA@YAHOO.AR', 'PRESIDENTE DE COMITE', '', 'MUNICIPALIDAD DISTRITAL DE INGENIO', '', 'Gobierno Local', 'JUNIN', 'HUANCAYO', 'INGENIO'),
(359, '41344338', 'TRUJILLO ALVAREZ MANUELA ', 'manu_trual@hotmail.com', 'PRESIDENTE DE COMITE', '', 'MUNICIPALIDAD DISTRITAL DE JACAS GRANDE', '', 'Gobierno Local', 'HUANUCO', 'HUAMALIES', 'JACAS GRANDE'),
(360, '29531092', 'ROMAN LOPEZ ALVARO SANTIAGO', 'ALROMAN1@HOTMAIL.COM', 'PRESIDENTE DE COMITE', '', 'MUNICIPALIDAD DISTRITAL DE JACOBO HUNTER', '', 'Gobierno Local', 'AREQUIPA', 'AREQUIPA', 'JACOBO HUNTER'),
(361, '40826681', 'COLUMBUS MURATA DIETHELL', 'DCOLUMBUS@MUNIJESUSMARIA.GOB.PE', 'PRESIDENTE DE COMITE', '', 'MUNICIPALIDAD DISTRITAL DE JESÚS MARÍA', '', 'Gobierno Local', 'LIMA', 'LIMA', 'JESUS MARIA'),
(362, '08229959', 'CACHO CUBA GILMER ANTONIO', 'GCACHO@MUNIJESUSMARIA.GOB.PE', 'PRESIDENTE DE COMITE', '', 'MUNICIPALIDAD DISTRITAL DE JESÚS MARÍA', '', 'Gobierno Local', 'LIMA', 'LIMA', 'JESUS MARIA'),
(363, '28297346', 'BELLIDO CERDA WILMER', 'WBELLIDOC@HOTMAIL.COM', 'PRESIDENTE DE COMITE', '', 'MUNICIPALIDAD DISTRITAL DE JESUS NAZARENO', '', 'Gobierno Local', 'AYACUCHO', 'HUAMANGA', 'JESUS NAZARENO'),
(364, '41613979', 'ESPEJO MEZA SHERLY VANESSA', 'SHERLY_ESPEJO@HOTMAIL.COM', 'PRESIDENTE DE COMITE', '', 'MUNICIPALIDAD DISTRITAL DE JOSE CRESPO Y CASTILLO', '', 'Gobierno Local', 'HUANUCO', 'LEONCIO PRADO', 'JOSE CRESPO Y CASTILLO'),
(365, '42117591', 'TORRES VERA WALTER BERNARDO JR.', 'WALTERTORRESJUNIO@HOTMAIL.COM', 'PRESIDENTE DE COMITE', '', 'MUNICIPALIDAD DISTRITAL DE JOSÉ LEONARDO ORTIZ', '', 'Gobierno Local', 'LAMBAYEQUE', 'CHICLAYO', 'JOSE LEONARDO ORTIZ'),
(366, '29701241', 'LAZO CORNEJO LELIA LOURDES', 'LLAZOCORNEJO@HOTMAIL.COM', 'PRESIDENTE DE COMITE', '', 'MUNICIPALIDAD DISTRITAL DE JOSÉ LUIS BUSTAMANTE Y RIVERO', '', 'Gobierno Local', 'AREQUIPA', 'AREQUIPA', 'JOSE LUIS BUSTAMANTE Y RIVERO'),
(367, '02837049', 'RUIZ BACA LUIS FELIPE', 'LFRUIZBACA@HOTMAIL.COM', 'PRESIDENTE DE COMITE', '', 'MUNICIPALIDAD DISTRITAL DE LA ARENA', '', 'Gobierno Local', 'PIURA', 'PIURA', 'LA ARENA'),
(368, '01174329', 'REATEGUI PEREYRA ENGELL BORIS', 'ENGELLREATEGUI@HOTMAIL.COM', 'PRESIDENTE DE COMITE', '', 'MUNICIPALIDAD DISTRITAL DE LA BANDA DE SHILCAYO', '', 'Gobierno Local', 'SAN MARTIN', 'SAN MARTIN', 'LA BANDA DE SHILCAYO'),
(369, '22093671', 'MARTINEZ ULLOA JOSE RUPERTO', 'ALETINOSPE@MSN.COM', 'PRESIDENTE DE COMITE', '', 'MUNICIPALIDAD DISTRITAL DE LA ESPERANZA-TRUJILLO', '', 'Gobierno Local', 'LA LIBERTAD', 'TRUJILLO', 'LA ESPERANZA'),
(370, '41393483', 'ESTEBA VARGAS WALTER ANTONIO', 'WHALANT@HOTMAIL.COM', 'PRESIDENTE DE COMITE', '', 'MUNICIPALIDAD DISTRITAL DE LA JOYA', '', 'Gobierno Local', 'AREQUIPA', 'AREQUIPA', 'LA JOYA'),
(371, '31774960', 'SALVADOR AGUILAR ELVER HERMIN', 'ELVERSALVADOR@HOTMAIL.COM', 'PRESIDENTE DE COMITE', '', 'MUNICIPALIDAD DISTRITAL DE LA MERCED-AIJA', '', 'Gobierno Local', 'ANCASH', 'AIJA', 'LA MERCED'),
(372, '21861883', 'GALVEZ SALDAÑA GINA YSELA', 'GGALVEZ@MUNIMOLINA.GOB.PE', 'PRESIDENTE DE COMITE', '', 'MUNICIPALIDAD DISTRITAL DE LA MOLINA', '', 'Gobierno Local', 'LIMA', 'LIMA', 'LA MOLINA'),
(373, '08159836', 'HERRERA ORENDO OCTAVIA JUANA', 'GERENCIAMUNICIPAL@MUNILAPERLA.GOB.PE', 'PRESIDENTE DE COMITE', '', 'MUNICIPALIDAD DISTRITAL DE LA PERLA', '', 'Gobierno Local', 'P. C. DEL CALLAO', 'PROV. CONST. DEL CALLAO', 'LA PERLA'),
(374, '10323459', 'CHIRINOS BERROCAL JESUS', 'PLANEAMIENTO@MUNILAPERLA.GOB.PE', 'PRESIDENTE DE COMITE', '', 'MUNICIPALIDAD DISTRITAL DE LA PERLA', '', 'Gobierno Local', 'P. C. DEL CALLAO', 'PROV. CONST. DEL CALLAO', 'LA PERLA'),
(375, '07562995', 'CAVERO VELAOCHAGA JUANA ROSA', 'J.CAVERO@MUNILAPUNTA.GOB.PE', 'PRESIDENTE DE COMITE', '', 'MUNICIPALIDAD DISTRITAL DE LA PUNTA', '', 'Gobierno Local', 'P. C. DEL CALLAO', 'PROV. CONST. DEL CALLAO', 'LA PUNTA'),
(376, '40125714', 'VALENCIA RIOS MARIO WILLIAM', 'WILLIAMCITO_2006@HOTMAIL.COM', 'PRESIDENTE DE COMITE', '', 'MUNICIPALIDAD DISTRITAL DE LA TINGUIÑA', '', 'Gobierno Local', 'ICA', 'ICA', 'LA TINGUIÑA'),
(377, '42345002', 'SANTOS ALBINES WILDER NEWELL ', 'WILDER_208@HOTMAIL.COM', 'PRESIDENTE DE COMITE', '', 'MUNICIPALIDAD DISTRITAL DE LA UNION-PIURA', '', 'Gobierno Local', 'PIURA', 'PIURA', 'LA UNION'),
(378, '16766584', 'CASTRO GROSSO MARIA RITA', 'MARITAGROSS26@HOTMAIL.COM', 'PRESIDENTE DE COMITE', '', 'MUNICIPALIDAD DISTRITAL DE LA VICTORIA-CHICLAYO', '', 'Gobierno Local', 'LAMBAYEQUE', 'CHICLAYO', 'LA VICTORIA'),
(379, '08561962', 'MUCHAYPIÑA REYES VICTOR MARIO', 'VMUCHAYPINAR@MUNILAVICTORIA.GOB.PE', 'PRESIDENTE DE COMITE', '', 'MUNICIPALIDAD DISTRITAL DE LA VICTORIA-LIMA', '', 'Gobierno Local', 'LIMA', 'LIMA', 'LA VICTORIA'),
(380, '18139565', 'CAMPOS VASQUEZ OSCAR MARTIN', 'MARCAM19741809@HOTMAIL.COM', 'PRESIDENTE DE COMITE', '', 'MUNICIPALIDAD DISTRITAL DE LAJAS', '', 'Gobierno Local', 'CAJAMARCA', 'CHOTA', 'LAJAS'),
(381, '03662530', 'LOZADA ZAPATA AMADO', 'ALO.LIBRA-71@HOTMAIL.COM', 'PRESIDENTE DE COMITE', '', 'MUNICIPALIDAD DISTRITAL DE LANCONES', '', 'Gobierno Local', 'PIURA', 'SULLANA', 'LANCONES'),
(382, '21414180', 'IBARRA CHANG TITO ANIBAR', 'TITOCHANG2011@HOTMAIL.COM', 'PRESIDENTE DE COMITE', '', 'MUNICIPALIDAD DISTRITAL DE LARAOS-HUAROCHIRI', '', 'Gobierno Local', 'LIMA', 'HUAROCHIRI', 'LARAOS'),
(383, '18135887', 'GUZMAN RIVERA DE MORALES GEOLIANA VALENTINA', 'GV.GUZMAN.RIVERA@HOTMAIL.COM', 'PRESIDENTE DE COMITE', '', 'MUNICIPALIDAD DISTRITAL DE LAREDO', '', 'Gobierno Local', 'LA LIBERTAD', 'TRUJILLO', 'LAREDO'),
(384, '33429760', 'SALON VALDIVIA HERMEREGILDO ', 'SALONVALDIVIA@GMAIL.COM', 'PRESIDENTE DE COMITE', '', 'MUNICIPALIDAD DISTRITAL DE LEVANTO', '', 'Gobierno Local', 'AMAZONAS', 'CHACHAPOYAS', 'LEVANTO'),
(385, '09534979', 'RODRIGUEZ JADROSICH IVÁN IGOR', 'IRODRIGUEZ@MUNILINCE.GOB.PE', 'PRESIDENTE DE COMITE', '', 'MUNICIPALIDAD DISTRITAL DE LINCE', '', 'Gobierno Local', 'LIMA', 'LIMA', 'LINCE'),
(386, '21441194', 'VERA BELLI JAVIER GUSTAVO', 'GM.MDLA@GMAIL.COM', 'PRESIDENTE DE COMITE', '', 'MUNICIPALIDAD DISTRITAL DE LOS AQUIJES', '', 'Gobierno Local', 'ICA', 'ICA', 'LOS AQUIJES'),
(387, '26708072', 'RAMIREZ REQUELME WALTER', 'WARARE5@HOTMAIL.COM', 'PRESIDENTE DE COMITE', '', 'MUNICIPALIDAD DISTRITAL DE LOS BAÑOS DEL INCA', '', 'Gobierno Local', 'CAJAMARCA', 'CAJAMARCA', 'LOS BAÑOS DEL INCA'),
(388, '07158645', 'REYNAGA RAMIREZ ALFREDO', 'AREYNAGA@MUNILOSOLIVOS.GOB.PE', 'PRESIDENTE DE COMITE', '', 'MUNICIPALIDAD DISTRITAL DE LOS OLIVOS', '', 'Gobierno Local', 'LIMA', 'LIMA', 'LOS OLIVOS'),
(389, '43616720', 'GRANDA AVERHOFF ERNESTO ALEJANDRO', 'GERENCIAMUNICIPAL@MUNICHOSICA.GOB.PE', 'PRESIDENTE DE COMITE', '', 'MUNICIPALIDAD DISTRITAL DE LURIGANCHO', '', 'Gobierno Local', 'LIMA', 'LIMA', 'LURIGANCHO'),
(390, '07447158', 'HAMADA GIL JOSE ANTONIO', 'JHAMADA@MUNILURIN.GOB.PE', 'PRESIDENTE DE COMITE', '', 'MUNICIPALIDAD DISTRITAL DE LURIN', '', 'Gobierno Local', 'LIMA', 'LIMA', 'LURIN'),
(391, '15436586', 'ROMAN SAAVEDRA JORGE ANTONIO', 'JROMAN@MUNIMAGDALENA.GOB.PE', 'PRESIDENTE DE COMITE', '', 'MUNICIPALIDAD DISTRITAL DE MAGDALENA DEL MAR', '', 'Gobierno Local', 'LIMA', 'LIMA', 'MAGDALENA DEL MAR'),
(392, '29445825', 'ESCARZA MAYCA NAPOLEON NICEFORO', 'NAPOLEON_AQP@HOTMAIL.COM', 'PRESIDENTE DE COMITE', '', 'MUNICIPALIDAD DISTRITAL DE MAJES', '', 'Gobierno Local', 'AREQUIPA', 'CAYLLOMA', 'MAJES'),
(393, '15386682', 'ALARCON NAPAN JOSE ALEJANDRO', 'JOSESINHO.ALARCON@HOTMAIL.COM', 'PRESIDENTE DE COMITE', '', 'MUNICIPALIDAD DISTRITAL DE MALA', '', 'Gobierno Local', 'LIMA', 'CAÑETE', 'MALA'),
(394, '31542964', 'HUAMANI HUARANCCA MAURO ', 'MAUROHHMDM@GMAIL.COM', 'PRESIDENTE DE COMITE', '', 'MUNICIPALIDAD DISTRITAL DE MAMARA', '', 'Gobierno Local', 'APURIMAC', 'GRAU', 'MAMARA'),
(395, '40490448', 'HUARANCA HUALPA LUIS YUÑIOR', 'JUNIOR_H_H@HOTMAIL.COM', 'PRESIDENTE DE COMITE', '', 'MUNICIPALIDAD DISTRITAL DE MANANTAY', '', 'Gobierno Local', 'UCAYALI', 'CORONEL PORTILLO', 'MANANTAY'),
(396, '43554113', 'JULCA REGALADO EFRAIN NUÑOS ', 'enjr1203@hotmail.com', 'PRESIDENTE DE COMITE', '', 'MUNICIPALIDAD DISTRITAL DE MANCOS', '', 'Gobierno Local', 'ANCASH', 'YUNGAY', 'MANCOS'),
(397, '05220987', 'TORRES AMARINGO WIGBERTO', 'MUNIMAQUIA@HOTMAIL.COM', 'PRESIDENTE DE COMITE', '', 'MUNICIPALIDAD DISTRITAL DE MAQUIA', '', 'Gobierno Local', 'LORETO', 'REQUENA', 'MAQUIA'),
(398, '24662395', 'VIVANCO LOVON FLOR DE MARIA', 'FLORDIMA_3@HOTMAIL.COM', 'PRESIDENTE DE COMITE', '', 'MUNICIPALIDAD DISTRITAL DE MARANGANI', '', 'Gobierno Local', 'CUSCO', 'CANCHIS', 'MARANGANI'),
(399, '42116085', 'QUISPE NICODEMOS SANTOS', 'CONDORCATA@HOTMAIL.COM', 'PRESIDENTE DE COMITE', '', 'MUNICIPALIDAD DISTRITAL DE MARCAS', '', 'Gobierno Local', 'HUANCAVELICA', 'ACOBAMBA', 'MARCAS'),
(400, '08630265', 'CESPEDES LAZO MANUEL ANTONIO', 'MANUELCESPEDES4@HOTMAIL.COM', 'PRESIDENTE DE COMITE', '', 'MUNICIPALIDAD DISTRITAL DE MARCAVELICA', '', 'Gobierno Local', 'PIURA', 'SULLANA', 'MARCAVELICA'),
(401, '29380697', 'BORJA RODRIGUEZ BENITO', 'BEBORO2000@YAHOO.ES', 'PRESIDENTE DE COMITE', '', 'MUNICIPALIDAD DISTRITAL DE MARIANO MELGAR', '', 'Gobierno Local', 'AREQUIPA', 'AREQUIPA', 'MARIANO MELGAR'),
(402, '06116165', 'BOGGIANO YBARBURU MILAGROS DEL ROCIO', 'MBOGGIANOY@CONTRALORIA.GOB.PE', 'PRESIDENTE DE COMITE', '', 'MUNICIPALIDAD DISTRITAL DE MI PERÚ', '', 'Gobierno Local', 'P. C. DEL CALLAO', 'PROV. CONST. DEL CALLAO', 'MI PERU'),
(403, '25585385', 'GUZMAN LOPEZ CESAR OCTAVIO ', 'CESARGUZMANPERU@GMAIL.COM', 'PRESIDENTE DE COMITE', '', 'MUNICIPALIDAD DISTRITAL DE MI PERÚ', '', 'Gobierno Local', 'P. C. DEL CALLAO', 'PROV. CONST. DEL CALLAO', 'MI PERU'),
(404, '29598144', 'AGUILAR PARQUI ROBERTO MARIO', 'RAGUIPAR@YAHOO.ES', 'PRESIDENTE DE COMITE', '', 'MUNICIPALIDAD DISTRITAL DE MIRAFLORES-AREQUIPA', '', 'Gobierno Local', 'AREQUIPA', 'AREQUIPA', 'MIRAFLORES'),
(405, '09996670', 'MEZA SALAZAR SERGIO MANUEL', 'SERGIO.MEZA@MIRAFLORES.GOB.PE ', 'PRESIDENTE DE COMITE', '', 'MUNICIPALIDAD DISTRITAL DE MIRAFLORES-LIMA', '', 'Gobierno Local', 'LIMA', 'LIMA', 'MIRAFLORES'),
(406, '17887088', 'BARBA TIRADO ADRIANO MANUEL ALFONSO', 'MANOLOBARBA1409@HOTMAIL.COM', 'PRESIDENTE DE COMITE', '', 'MUNICIPALIDAD DISTRITAL DE MOCHE', '', 'Gobierno Local', 'LA LIBERTAD', 'TRUJILLO', 'MOCHE'),
(407, '16761965', 'CHANDUVI BRAVO ZAIRA MARICELA', 'ZAIRACHB@HOTMAIL.COM', 'PRESIDENTE DE COMITE', '', 'MUNICIPALIDAD DISTRITAL DE MONSEFU', '', 'Gobierno Local', 'LAMBAYEQUE', 'CHICLAYO', 'MONSEFU'),
(408, '22494111', 'CALDERON VILLAR PERCY ORLANDO', 'CHINO_POCV@HOTMAIL.COM', 'PRESIDENTE DE COMITE', '', 'MUNICIPALIDAD DISTRITAL DE MONZON', '', 'Gobierno Local', 'HUANUCO', 'HUAMALIES', 'MONZON'),
(409, '42187382', 'GARCIA REATEGUI OSCAR ROGER', 'OSCAR_GARCIA_REATEGUI@LIVE.COM', 'PRESIDENTE DE COMITE', '', 'MUNICIPALIDAD DISTRITAL DE MORALES', '', 'Gobierno Local', 'SAN MARTIN', 'SAN MARTIN', 'MORALES'),
(410, '17563327', 'SANDOVAL VALDIVIESO JUAN MERCEDES', 'MESAVAL@YAHOO.ES', 'PRESIDENTE DE COMITE', '', 'MUNICIPALIDAD DISTRITAL DE MORROPE', '', 'Gobierno Local', 'LAMBAYEQUE', 'LAMBAYEQUE', 'MORROPE'),
(411, '17815244', 'MEDEROS GUEVARA ARTURO', 'MEDGUEVART@GMAIL.COM', 'PRESIDENTE DE COMITE', '', 'MUNICIPALIDAD DISTRITAL DE NUEVA CAJAMARCA', '', 'Gobierno Local', 'SAN MARTIN', 'RIOJA', 'NUEVA CAJAMARCA'),
(412, '32980084', 'HERNANDEZ CHUNGA VICTOR MAGNO', 'VICTORH25_8@HOTMAIL.COM', 'PRESIDENTE DE COMITE', '', 'MUNICIPALIDAD DISTRITAL DE NUEVO CHIMBOTE', '', 'Gobierno Local', 'ANCASH', 'SANTA', 'NUEVO CHIMBOTE'),
(413, '15437572', 'REYES DE LA CRUZ MIGUEL ANGEL', 'GERENCIAMUNICIPAL@MUNINUEVOIMPERIAL.GOB.PE', 'PRESIDENTE DE COMITE', '', 'MUNICIPALIDAD DISTRITAL DE NUEVO IMPERIAL', '', 'Gobierno Local', 'LIMA', 'CAÑETE', 'NUEVO IMPERIAL'),
(414, '18198120', 'MONTOYA TERRONES VICTOR ANDRES ', 'AMONTOYA_TERRONES@HOTMAIL.COM', 'PRESIDENTE DE COMITE', '', 'MUNICIPALIDAD DISTRITAL DE PACASMAYO', '', 'Gobierno Local', 'LA LIBERTAD', 'PACASMAYO', 'PACASMAYO'),
(415, '06644882', 'ALCALDE ARIAS ANDRES', 'G.MUNICIPAL@MUNIPACHACAMAC.GOB.PE', 'PRESIDENTE DE COMITE', '', 'MUNICIPALIDAD DISTRITAL DE PACHACAMAC', '', 'Gobierno Local', 'LIMA', 'LIMA', 'PACHACAMAC'),
(416, '47283923', 'ESPINO HOSTIA LIZBETH YESSENIA', 'LIZES0907@HOTMAIL.COM', 'PRESIDENTE DE COMITE', '', 'MUNICIPALIDAD DISTRITAL DE PACHACUTEC', '', 'Gobierno Local', 'ICA', 'ICA', 'PACHACUTEC'),
(417, '42202716', 'TRIGOSO PALAO LUIS ALBERTO', 'LUIBE@HOTMAIL.COM', 'PRESIDENTE DE COMITE', '', 'MUNICIPALIDAD DISTRITAL DE PACOCHA', '', 'Gobierno Local', 'MOQUEGUA', 'ILO', 'PACOCHA'),
(418, '40973844', 'ZARATE CHAVEZ JORGE EDUARDO', 'ZARATE.JE@HOTMAIL.COM', 'PRESIDENTE DE COMITE', '', 'MUNICIPALIDAD DISTRITAL DE PAIJAN', '', 'Gobierno Local', 'LA LIBERTAD', 'ASCOPE', 'PAIJAN'),
(419, '15665754', 'FLORES CIRIACO FREDDY PERSSY', 'FREDDYPERSSY@HOTMAIL.COM', 'PRESIDENTE DE COMITE', '', 'MUNICIPALIDAD DISTRITAL DE PARAMONGA', '', 'Gobierno Local', 'LIMA', 'BARRANCA', 'PARAMONGA'),
(420, '21876813', 'DIAZ HUAMANI BORIS ', 'BORISDIAZ_20@HOTMAIL.COM', 'PRESIDENTE DE COMITE', '', 'MUNICIPALIDAD DISTRITAL DE PARCONA', '', 'Gobierno Local', 'ICA', 'ICA', 'PARCONA'),
(421, '05398179', 'BARRERA SAYON ROBERT RICMAN', 'ROBERTRICMANB@GMAIL.COM', 'PRESIDENTE DE COMITE', '', 'MUNICIPALIDAD DISTRITAL DE PARINARI', '', 'Gobierno Local', 'LORETO', 'LORETO', 'PARINARI'),
(422, '16494446', 'SEYTUQUE FARRO PEDRO', 'SEYTUQUEFARRO@HOTMAIL.COM', 'PRESIDENTE DE COMITE', '', 'MUNICIPALIDAD DISTRITAL DE PATAPO', '', 'Gobierno Local', 'LAMBAYEQUE', 'CHICLAYO', 'PATAPO'),
(423, '15300250', 'CASTRO GIRIO CARLOS EMILIO', 'CARLOS_CASTRO_GIRIO@HOTMAIL.COM', 'PRESIDENTE DE COMITE', '', 'MUNICIPALIDAD DISTRITAL DE PATIVILCA', '', 'Gobierno Local', 'LIMA', 'BARRANCA', 'PATIVILCA'),
(424, '29553315', 'VILCA GUTIERREZ MIGUEL ANGEL', 'MAVILCAG1@HOTMAIL.COM', 'PRESIDENTE DE COMITE', '', 'MUNICIPALIDAD DISTRITAL DE PAUCARPATA', '', 'Gobierno Local', 'AREQUIPA', 'AREQUIPA', 'PAUCARPATA'),
(425, '07465752', 'ESCOBEDO CALDERON JOSE LUIS', 'JLEC1865@HOTMAIL.COM', 'PRESIDENTE DE COMITE', '', 'MUNICIPALIDAD DISTRITAL DE PAUCARPATA', '', 'Gobierno Local', 'AREQUIPA', 'AREQUIPA', 'PAUCARPATA'),
(426, '80602800', 'VELASQUEZ PAREDES MARCO ANTONIO', 'MARCOVP59@HOTMAIL.COM', 'PRESIDENTE DE COMITE', '', 'MUNICIPALIDAD DISTRITAL DE PICHARI', '', 'Gobierno Local', 'CUSCO', 'LA CONVENCION', 'PICHARI'),
(427, '19991224', 'GARAGATTI CANTO CESAR EDUARDO', 'DIRSAING@HOTMAIL.COM', 'PRESIDENTE DE COMITE', '', 'MUNICIPALIDAD DISTRITAL DE PILCOMAYO', '', 'Gobierno Local', 'JUNIN', 'HUANCAYO', 'PILCOMAYO'),
(428, '42054570', 'TADEO TORDECILLO ANGEL LENIN ', 'LENINTAYTO@GMAIL.COM', 'PRESIDENTE DE COMITE', '', 'MUNICIPALIDAD DISTRITAL DE PILLCO MARCA', '', 'Gobierno Local', 'HUANUCO', 'HUANUCO', 'PILLCO MARCA'),
(429, '40413296', 'RODRIGUEZ PERICHE LOURDES SUGELLY', 'LOURS13_RP@HOTMAIL.COM', 'PRESIDENTE DE COMITE', '', 'MUNICIPALIDAD DISTRITAL DE PIMENTEL', '', 'Gobierno Local', 'LAMBAYEQUE', 'CHICLAYO', 'PIMENTEL'),
(430, '40705297', 'LAZARO CONDORI TANIA ZOILA', 'NETTANIS21@GMAIL.COM', 'PRESIDENTE DE COMITE', '', 'MUNICIPALIDAD DISTRITAL DE PISAC', '', 'Gobierno Local', 'CUSCO', 'CALCA', 'PISAC'),
(431, '24711685', 'PUMA USCAMAYTA CIRILO', 'CIROPUMA2011@HOTMAIL.COM', 'PRESIDENTE DE COMITE', '', 'MUNICIPALIDAD DISTRITAL DE PITUMARCA', '', 'Gobierno Local', 'CUSCO', 'CANCHIS', 'PITUMARCA'),
(432, '00797856', 'MACHACA MAMANI NICANDRO', 'NICANDRO_MM@OUTLOOK.ES', 'PRESIDENTE DE COMITE', '', 'MUNICIPALIDAD DISTRITAL DE POCOLLAY', '', 'Gobierno Local', 'TACNA', 'TACNA', 'POCOLLAY'),
(433, '02679708', 'TORRES YBAÑEZ ELEAZAR', 'ELTORRESY@HOTMAIL.ES', 'PRESIDENTE DE COMITE', '', 'MUNICIPALIDAD DISTRITAL DE POMALCA', '', 'Gobierno Local', 'LAMBAYEQUE', 'CHICLAYO', 'POMALCA'),
(434, '01045025', 'MONTOYA VASQUEZ WALTER', 'WMONTOYA@HOTMAIL.COM', 'PRESIDENTE DE COMITE', '', 'MUNICIPALIDAD DISTRITAL DE POSIC', '', 'Gobierno Local', 'SAN MARTIN', 'RIOJA', 'POSIC'),
(435, '32970826', 'ALVA MENDOZA WALTER ROMMEL', 'ALVAMENDO@HOTMAIL.COM', 'PRESIDENTE DE COMITE', '', 'MUNICIPALIDAD DISTRITAL DE POZUZO', '', 'Gobierno Local', 'PASCO', 'OXAPAMPA', 'POZUZO'),
(436, '33812563', 'ROBLEDO JIMENEZ SEGUNDO REMIGIO ', 'SEGUNDOROBLEDO0611@GMAIL.COM', 'PRESIDENTE DE COMITE', '', 'MUNICIPALIDAD DISTRITAL DE PROVIDENCIA', '', 'Gobierno Local', 'AMAZONAS', 'LUYA', 'PROVIDENCIA'),
(437, '08410515', 'HUARACA INCA JULIO ANDRES', 'JULIOANDRES20@HOTMAIL.COM', 'PRESIDENTE DE COMITE', '', 'MUNICIPALIDAD DISTRITAL DE PUCUSANA', '', 'Gobierno Local', 'LIMA', 'LIMA', 'PUCUSANA'),
(438, '08884001', 'GRANADOS NOVOA ADOLFO LEONCIO', 'A_GRANADOS@MUNIPLIBRE.GOB.PE', 'PRESIDENTE DE COMITE', '', 'MUNICIPALIDAD DISTRITAL DE PUEBLO LIBRE(MAGDALENA VIEJA)', '', 'Gobierno Local', 'LIMA', 'LIMA', 'PUEBLO LIBRE(MAGDALENA VIEJA)'),
(439, '07370822', 'BENAVENTE QUISPE OSWALDO BASILIO', 'GMUNICIPAL@MUNIPNUEVOCHINCHA.GOB.PE', 'PRESIDENTE DE COMITE', '', 'MUNICIPALIDAD DISTRITAL DE PUEBLO NUEVO-CHINCHA', '', 'Gobierno Local', 'ICA', 'CHINCHA', 'PUEBLO NUEVO'),
(440, '17428218', 'JARAMILLO ALARCON NANCY MARIA', 'NANCYCAPRICE@HOTMAIL.COM', 'PRESIDENTE DE COMITE', '', 'MUNICIPALIDAD DISTRITAL DE PUEBLO NUEVO-FERREÑAFE', '', 'Gobierno Local', 'LAMBAYEQUE', 'FERREÑAFE', 'PUEBLO NUEVO'),
(441, '15860669', 'SANTA MARIA PEREZ ANGEL GUSTAVO ', 'ASANTAMARIA@MUNIPUENTEPIEDRA.GOB.PE', 'PRESIDENTE DE COMITE', '', 'MUNICIPALIDAD DISTRITAL DE PUENTE PIEDRA', '', 'Gobierno Local', 'LIMA', 'LIMA', 'PUENTE PIEDRA'),
(442, '05322943', 'SANCHEZ DELGADO MARKEY', 'MASADESD@GMAIL.COM', 'PRESIDENTE DE COMITE', '', 'MUNICIPALIDAD DISTRITAL DE PUNCHANA', '', 'Gobierno Local', 'LORETO', 'MAYNAS', 'PUNCHANA'),
(443, '09548459', 'CHAVEZ MEJIA ROSARIO DEL CARMEN', 'GERENCIAMUNICIPAL@MUNIPUNTAHERMOSA.GOB.PE', 'PRESIDENTE DE COMITE', '', 'MUNICIPALIDAD DISTRITAL DE PUNTA HERMOSA', '', 'Gobierno Local', 'LIMA', 'LIMA', 'PUNTA HERMOSA'),
(444, '09735597', 'CHAVEZ HUACHO SALVADOR', 'MUNIPUNTANEGRA.SGYAJ@GMAIL.COM', 'PRESIDENTE DE COMITE', '', 'MUNICIPALIDAD DISTRITAL DE PUNTA NEGRA', '', 'Gobierno Local', 'LIMA', 'LIMA', 'PUNTA NEGRA'),
(445, '41941273', 'LAMADRID ALVARADO ANGELLA ROXANA', 'ROXANANGELLA25@HOTMAIL.COM', 'PRESIDENTE DE COMITE', '', 'MUNICIPALIDAD DISTRITAL DE QUERECOTILLO-SULLANA', '', 'Gobierno Local', 'PIURA', 'SULLANA', 'QUERECOTILLO'),
(446, '19959960', 'PONCE NAJERA SILVANO ELIAS', 'SE.PONCE@HOTMAIL.COM', 'PRESIDENTE DE COMITE', '', 'MUNICIPALIDAD DISTRITAL DE QUILCAS-HUANCAYO', '', 'Gobierno Local', 'JUNIN', 'HUANCAYO', 'QUILCAS'),
(447, '19248874', 'BARDALES PAIRAZAMAN JOSE PEDRO', 'BARPAI31@YAHOO.ES', 'PRESIDENTE DE COMITE', '', 'MUNICIPALIDAD DISTRITAL DE RAZURI', '', 'Gobierno Local', 'LA LIBERTAD', 'ASCOPE', 'RAZURI'),
(448, '16637187', 'PERLECHE RAMOS JOSE LUIS', 'LUCHOPERLECHE@HOTMAIL.COM', 'PRESIDENTE DE COMITE', '', 'MUNICIPALIDAD DISTRITAL DE REQUE', '', 'Gobierno Local', 'LAMBAYEQUE', 'CHICLAYO', 'REQUE'),
(449, '09864594', 'LOPE ROMANI BELISARIO', 'IMANOLLRG@HOTMAIL.COM', 'PRESIDENTE DE COMITE', '', 'MUNICIPALIDAD DISTRITAL DE RIO TAMBO', '', 'Gobierno Local', 'JUNIN', 'SATIPO', 'RIO TAMBO'),
(450, '29473361', 'TORRES ZEGARRA SUSANA DOLORES', 'SUSANATORRES24@HOTMAIL.COM', 'PRESIDENTE DE COMITE', '', 'MUNICIPALIDAD DISTRITAL DE SABANDIA', '', 'Gobierno Local', 'AREQUIPA', 'AREQUIPA', 'SABANDIA'),
(451, '29699141', 'RIVEROS CHAVEZ AUGUSTO LUIS', 'ARIVER25@HOTMAIL.COM', 'PRESIDENTE DE COMITE', '', 'MUNICIPALIDAD DISTRITAL DE SACHACA', '', 'Gobierno Local', 'AREQUIPA', 'AREQUIPA', 'SACHACA'),
(452, '21559528', 'PEÑA JAYO DIONISIO ALBERTO', 'ALBERTO.PENA.J@HOTMAIL.COM', 'PRESIDENTE DE COMITE', '', 'MUNICIPALIDAD DISTRITAL DE SALAS-ICA', '', 'Gobierno Local', 'ICA', 'ICA', 'SALAS'),
(453, '18025725', 'PEREZ LOYOLA DE DE LA CRUZ KARIN ROCIO', 'KARIN-PL@HOTMAIL.COM', 'PRESIDENTE DE COMITE', '', 'MUNICIPALIDAD DISTRITAL DE SALAVERRY', '', 'Gobierno Local', 'LA LIBERTAD', 'TRUJILLO', 'SALAVERRY'),
(454, '03474508', 'SALDARRIAGA QUEVEDO YRIS YANET', 'YRISSQ@HOTMAIL.COM', 'PRESIDENTE DE COMITE', '', 'MUNICIPALIDAD DISTRITAL DE SALITRAL-SULLANA', '', 'Gobierno Local', 'PIURA', 'SULLANA', 'SALITRAL'),
(455, '00488334', 'ROMERO LOZA LUIS DAVID', 'LUIS_DROMERO@HOTMAIL.COM', 'PRESIDENTE DE COMITE', '', 'MUNICIPALIDAD DISTRITAL DE SAMA', '', 'Gobierno Local', 'TACNA', 'TACNA', 'SAMA'),
(456, '04431225', 'MENDOZA ALCAZAR SANDRA MILAGROS', 'MILI29102@HOTMAIL.COM', 'PRESIDENTE DE COMITE', '', 'MUNICIPALIDAD DISTRITAL DE SAMEGUA', '', 'Gobierno Local', 'MOQUEGUA', 'MARISCAL NIETO', 'SAMEGUA'),
(457, '41954643', 'MACHACA CHIPANA JUAN FREDY', 'MACHAQUITA8@HOTMAIL.COM', 'PRESIDENTE DE COMITE', '', 'MUNICIPALIDAD DISTRITAL DE SAMEGUA', '', 'Gobierno Local', 'MOQUEGUA', 'MARISCAL NIETO', 'SAMEGUA'),
(458, '42271916', 'ARECHE MORAN FRANZ OLIVER', 'FRANZOLIVER22@HOTMAIL.COM', 'PRESIDENTE DE COMITE', '', 'MUNICIPALIDAD DISTRITAL DE SAN AGUSTIN', '', 'Gobierno Local', 'JUNIN', 'HUANCAYO', 'SAN AGUSTIN'),
(459, '80082430', 'TASAYCO GONZALES MELINA HILDA', 'MELISITA_TASAYCO@OUTLOOK.ES', 'PRESIDENTE DE COMITE', '', 'MUNICIPALIDAD DISTRITAL DE SAN ANDRES', '', 'Gobierno Local', 'ICA', 'PISCO', 'SAN ANDRES'),
(460, '22287306', 'CHACALIAZA CARDENAS LUISA CATALINA', 'KLCHACALIAZA_5@HOTMAIL.COM', 'PRESIDENTE DE COMITE', '', 'MUNICIPALIDAD DISTRITAL DE SAN ANDRES', '', 'Gobierno Local', 'ICA', 'PISCO', 'SAN ANDRES'),
(461, '20440805', 'AGUIRRE DAVIRAN KATY ZULL', 'KATY.AGUIRRE@MUNISANBARTOLO.GOB.PE', 'PRESIDENTE DE COMITE', '', 'MUNICIPALIDAD DISTRITAL DE SAN BARTOLO', '', 'Gobierno Local', 'LIMA', 'LIMA', 'SAN BARTOLO'),
(462, '06769149', 'TORRES HUERTA ROBERTO HERNANDO', 'ROBERTO.TORRES@MSB.GOB.PE', 'PRESIDENTE DE COMITE', '', 'MUNICIPALIDAD DISTRITAL DE SAN BORJA', '', 'Gobierno Local', 'LIMA', 'LIMA', 'SAN BORJA'),
(463, '21794461', 'TASAYCO VASQUEZ CESAR AUGUSTO', 'CAUGUSTO179@GMAIL.COM', 'PRESIDENTE DE COMITE', '', 'MUNICIPALIDAD DISTRITAL DE SAN CLEMENTE', '', 'Gobierno Local', 'ICA', 'PISCO', 'SAN CLEMENTE'),
(464, '40382282', 'GARCIA CASTILLO GASTON IVAN', 'GASTONGARCIA2310@GMAIL.COM', 'PRESIDENTE DE COMITE', '', 'MUNICIPALIDAD DISTRITAL DE SAN DAMIAN', '', 'Gobierno Local', 'LIMA', 'HUAROCHIRI', 'SAN DAMIAN'),
(465, '07760613', 'VARGAS TERRONES KARINA NATIVIDAD', 'KARINA.VARGAS@MUNISANISIDRO.GOB.PE', 'PRESIDENTE DE COMITE', '', 'MUNICIPALIDAD DISTRITAL DE SAN ISIDRO-LIMA', '', 'Gobierno Local', 'LIMA', 'LIMA', 'SAN ISIDRO'),
(466, '23952169', 'DANCOURT VELASQUEZ DANIEL', 'DASOLARIS@HOTMAIL.COM', 'PRESIDENTE DE COMITE', '', 'MUNICIPALIDAD DISTRITAL DE SAN JERÓNIMO - CUSCO', '', 'Gobierno Local', 'CUSCO', 'CUSCO', 'SAN JERONIMO'),
(467, '23827363', 'GUZMAN VERA RUDY JOSE', 'RUDYGV0111@HOTMAIL.COM', 'PRESIDENTE DE COMITE', '', 'MUNICIPALIDAD DISTRITAL DE SAN JERÓNIMO - CUSCO', '', 'Gobierno Local', 'CUSCO', 'CUSCO', 'SAN JERONIMO'),
(468, '44627951', 'QUIÑONEZ MARTINEZ ELEALI JHANDIRA', 'JHANDIRAQM@HOTMAIL.COM', 'PRESIDENTE DE COMITE', '', 'MUNICIPALIDAD DISTRITAL DE SAN JERONIMO DE TUNAN', '', 'Gobierno Local', 'JUNIN', 'HUANCAYO', 'SAN JERONIMO DE TUNAN'),
(469, '19964428', 'SOLORZANO LAUREANO GERARDO NINIDIO', 'GERSOLAU@YAHOO.ES', 'PRESIDENTE DE COMITE', '', 'MUNICIPALIDAD DISTRITAL DE SAN JERONIMO DE TUNAN', '', 'Gobierno Local', 'JUNIN', 'HUANCAYO', 'SAN JERONIMO DE TUNAN'),
(470, '40431881', 'CAYLLAHUA QUISPE SAMUEL', 'SAMUELCQGERENTE@HOTMAIL.COM', 'PRESIDENTE DE COMITE', '', 'MUNICIPALIDAD DISTRITAL DE SAN JERONIMO-ANDAHUAYLAS', '', 'Gobierno Local', 'APURIMAC', 'ANDAHUAYLAS', 'SAN JERONIMO'),
(471, '43707202', 'POQUIOMA CASTAÑEDA JENDHER LEONIDAS', 'MUNISANJERONIMO_PACLAS@HOTMAIL.COM', 'PRESIDENTE DE COMITE', '', 'MUNICIPALIDAD DISTRITAL DE SAN JERONIMO-LUYA', '', 'Gobierno Local', 'AMAZONAS', 'LUYA', 'SAN JERONIMO'),
(472, '45306328', 'GAVILAN PALOMINO ARACELY SANDRA', 'SANDRA.GAVI@HOTMAIL.COM', 'PRESIDENTE DE COMITE', '', 'MUNICIPALIDAD DISTRITAL DE SAN JOSE DE LOS MOLINOS', '', 'Gobierno Local', 'ICA', 'ICA', 'SAN JOSE DE LOS MOLINOS'),
(473, '41661712', 'CHAVEZ PAZ CESAR AUGUSTO', 'info@munisanjosepacasmayo.gob.pe', 'PRESIDENTE DE COMITE', '', 'MUNICIPALIDAD DISTRITAL DE SAN JOSE-PACASMAYO', '', 'Gobierno Local', 'LA LIBERTAD', 'PACASMAYO', 'SAN JOSE'),
(474, '07655687', 'SORIANO DIAZ GERMAN', 'GERSOR_6@HOTMAIL.COM', 'PRESIDENTE DE COMITE', '', 'MUNICIPALIDAD DISTRITAL DE SAN JUAN BAUTISTA-HUAMANGA', '', 'Gobierno Local', 'AYACUCHO', 'HUAMANGA', 'SAN JUAN BAUTISTA'),
(475, '21552183', 'GARIBAY PACHAS MARIA DEL ROSARIO', 'MAROGAPA16@HOTMAIL.COM', 'PRESIDENTE DE COMITE', '', 'MUNICIPALIDAD DISTRITAL DE SAN JUAN BAUTISTA-ICA', '', 'Gobierno Local', 'ICA', 'ICA', 'SAN JUAN BAUTISTA'),
(476, '05288415', 'RENGIFO PEÑA JAIME', 'JAIMERENGIFOP@HOTMAIL.COM', 'PRESIDENTE DE COMITE', '', 'MUNICIPALIDAD DISTRITAL DE SAN JUAN BAUTISTA-MAYNAS', '', 'Gobierno Local', 'LORETO', 'MAYNAS', 'SAN JUAN BAUTISTA'),
(477, '33429805', 'GUTIERREZ CRUZ MARCO ANTONIO', 'ANTONIO_H12345@HOTMAIL.COM', 'PRESIDENTE DE COMITE', '', 'MUNICIPALIDAD DISTRITAL DE SAN JUAN DE LOPECANCHA', '', 'Gobierno Local', 'AMAZONAS', 'LUYA', 'SAN JUAN DE LOPECANCHA'),
(478, '08326633', 'SANCHEZ SANCHEZ EDILBERTO', 'SANCHEZ_30SA@YAHOO.ES', 'PRESIDENTE DE COMITE', '', 'MUNICIPALIDAD DISTRITAL DE SAN JUAN DE LURIGANCHO', '', 'Gobierno Local', 'LIMA', 'LIMA', 'SAN JUAN DE LURIGANCHO');
INSERT INTO `pdtes_filtrados` (`id`, `nro_documento`, `apellidos_nombres`, `correo`, `rol`, `codigo`, `nombre_entidad`, `proceso`, `cnig_nombre`, `cdpt_dpto`, `cprv_prov`, `cdst_distrit`) VALUES
(479, '08214181', 'CESPEDES MENDIETA MARCO ANTONIO ', 'GERENCIA.MUNICIPAL@MUNISJM.GOB.PE', 'PRESIDENTE DE COMITE', '', 'MUNICIPALIDAD DISTRITAL DE SAN JUAN DE MIRAFLORES', '', 'Gobierno Local', 'LIMA', 'LIMA', 'SAN JUAN DE MIRAFLORES'),
(480, '16149663', 'CASIAS BERNABEL ADOLFO HILARIO ', 'SANJUANDETANTARANCHE@HOTMAIL.COM', 'PRESIDENTE DE COMITE', '', 'MUNICIPALIDAD DISTRITAL DE SAN JUAN DE TANTARANCHE', '', 'Gobierno Local', 'LIMA', 'HUAROCHIRI', 'SAN JUAN DE TANTARANCHE'),
(481, '29720466', 'VELEZMORO PINTO JULIO MANUEL', 'JVELEZMORO@MUNISANLUIS.GOB.PE', 'PRESIDENTE DE COMITE', '', 'MUNICIPALIDAD DISTRITAL DE SAN LUIS-LIMA', '', 'Gobierno Local', 'LIMA', 'LIMA', 'SAN LUIS'),
(482, '40784853', 'GIRON SALAZAR BETZABETH', 'BGIRON@MDSMP.GOB.PE', 'PRESIDENTE DE COMITE', '', 'MUNICIPALIDAD DISTRITAL DE SAN MARTIN DE PORRES', '', 'Gobierno Local', 'LIMA', 'LIMA', 'SAN MARTIN DE PORRES'),
(483, '20019522', 'DE LA ROSA LUJAN JULIO CESAR', 'jdelarosa@mdsmp.gob.pe', 'PRESIDENTE DE COMITE', '', 'MUNICIPALIDAD DISTRITAL DE SAN MARTIN DE PORRES', '', 'Gobierno Local', 'LIMA', 'LIMA', 'SAN MARTIN DE PORRES'),
(484, '09278802', 'AMPUERO SANCHEZ HERNAN EDILBERTO', 'GMUNICIPAL@MUNISANMIGUEL.GOB.PE', 'PRESIDENTE DE COMITE', '', 'MUNICIPALIDAD DISTRITAL DE SAN MIGUEL', '', 'Gobierno Local', 'LIMA', 'LIMA', 'SAN MIGUEL'),
(485, '05365915', 'SILVA MACEDO EDWARD LUIS ', 'EDWARD.SILVAMACEDO@GMAIL.COM', 'PRESIDENTE DE COMITE', '', 'MUNICIPALIDAD DISTRITAL DE SAN PABLO-MARISCAL RAMÓN CASTILLA', '', 'Gobierno Local', 'LORETO', 'MARISCAL RAMON CASTILLA', 'SAN PABLO'),
(486, '31191706', 'FERNANDEZ PAIVA GARY', 'GAFERPAIVA@HOTMAIL.COM', 'PRESIDENTE DE COMITE', '', 'MUNICIPALIDAD DISTRITAL DE SAN SEBASTIÁN', '', 'Gobierno Local', 'CUSCO', 'CUSCO', 'SAN SEBASTIAN'),
(487, '44719142', 'TAMAYO QUILICHE OMAR', 'OMARUSP10@HOTMAIL.COM', 'PRESIDENTE DE COMITE', '', 'MUNICIPALIDAD DISTRITAL DE SANTA', '', 'Gobierno Local', 'ANCASH', 'SANTA', 'SANTA'),
(488, '07632219', 'CACERES BARRAZA CESAR AUGUSTO', 'CCACERES@MUNISANTANITA.GOB.PE', 'PRESIDENTE DE COMITE', '', 'MUNICIPALIDAD DISTRITAL DE SANTA ANITA', '', 'Gobierno Local', 'LIMA', 'LIMA', 'SANTA ANITA'),
(489, '33810858', 'RODRIGUEZ DE LA CRUZ CELSO WILLAMS ', 'delacruz_celso@hotmail.com', 'PRESIDENTE DE COMITE', '', 'MUNICIPALIDAD DISTRITAL DE SANTA CATALINA-LUYA', '', 'Gobierno Local', 'AMAZONAS', 'LUYA', 'SANTA CATALINA'),
(490, '08252549', 'BARRIGA GIL VICTOR ENRIQUE', 'GNEGRINI1976@GMAIL.COM', 'PRESIDENTE DE COMITE', '', 'MUNICIPALIDAD DISTRITAL DE SANTA MARIA DEL MAR', '', 'Gobierno Local', 'LIMA', 'LIMA', 'SANTA MARIA DEL MAR'),
(491, '15601371', 'BERNAL LOZA JAIME MIGUEL', 'BERNALLOZA@YAHOO.COM', 'PRESIDENTE DE COMITE', '', 'MUNICIPALIDAD DISTRITAL DE SANTA MARIA-HUAURA', '', 'Gobierno Local', 'LIMA', 'HUAURA', 'SANTA MARIA'),
(492, '04015081', 'LOPEZ ESPIRITU LIZANDRO', 'LLOPEZ_138@HOTMAIL.COM', 'PRESIDENTE DE COMITE', '', 'MUNICIPALIDAD DISTRITAL DE SANTA ROSA DE SACCO', '', 'Gobierno Local', 'JUNIN', 'YAULI', 'SANTA ROSA DE SACCO'),
(493, '43450300', 'MORI PEREZ EIDER', 'eidermori@gmail.com', 'PRESIDENTE DE COMITE', '', 'MUNICIPALIDAD DISTRITAL DE SANTA ROSA-EL DORADO', '', 'Gobierno Local', 'SAN MARTIN', 'EL DORADO', 'SANTA ROSA'),
(494, '09086863', 'PRADO MACALUPU FIDEL', 'FPRADOM@YAHOO.ES', 'PRESIDENTE DE COMITE', '', 'MUNICIPALIDAD DISTRITAL DE SANTA ROSA-LIMA', '', 'Gobierno Local', 'LIMA', 'LIMA', 'SANTA ROSA'),
(495, '41293230', 'RAMOS PAREDES GILBER BENJAMIN', 'GIBEN.RP@GMAIL.COM', 'PRESIDENTE DE COMITE', '', 'MUNICIPALIDAD DISTRITAL DE SANTIAGO DE CAO', '', 'Gobierno Local', 'LA LIBERTAD', 'ASCOPE', 'SANTIAGO DE CAO'),
(496, '17922901', 'AMAYA QUINTANA PABLO EMILIO', 'PEAMAYAQ@YAHOO.COM', 'PRESIDENTE DE COMITE', '', 'MUNICIPALIDAD DISTRITAL DE SANTIAGO DE CAO', '', 'Gobierno Local', 'LA LIBERTAD', 'ASCOPE', 'SANTIAGO DE CAO'),
(497, '32940520', 'JULCA BERMUDEZ JESUS PAULINO ', 'JESHUJU_7@HOTMAIL.COM', 'PRESIDENTE DE COMITE', '', 'MUNICIPALIDAD DISTRITAL DE SANTIAGO DE CHALLAS', '', 'Gobierno Local', 'LA LIBERTAD', 'PATAZ', 'SANTIAGO DE CHALLAS'),
(498, '06976603', 'OLIVOS RENGIFO WALDO FELIPE', 'WOLIVOS@MUNISURCO.GOB.PE', 'PRESIDENTE DE COMITE', '', 'MUNICIPALIDAD DISTRITAL DE SANTIAGO DE SURCO', '', 'Gobierno Local', 'LIMA', 'LIMA', 'SANTIAGO DE SURCO'),
(499, '23892310', 'LOAYZA RIVAS DAVID DANILO', 'SFERNANDEZO@CONTRALORIA.GOB.PE', 'PRESIDENTE DE COMITE', '', 'MUNICIPALIDAD DISTRITAL DE SANTIAGO-CUSCO', '', 'Gobierno Local', 'CUSCO', 'CUSCO', 'SANTIAGO'),
(500, '40668389', 'TATAJE AGUADO CARLOS ROBERTO', 'CTATAJE1@GMAIL.COM', 'PRESIDENTE DE COMITE', '', 'MUNICIPALIDAD DISTRITAL DE SANTIAGO-ICA', '', 'Gobierno Local', 'ICA', 'ICA', 'SANTIAGO'),
(501, '19992770', 'SALAS PALACIOS RONALD GUADALUPE', 'ARQRONY@HOTMAIL.ES', 'PRESIDENTE DE COMITE', '', 'MUNICIPALIDAD DISTRITAL DE SAÑO', '', 'Gobierno Local', 'JUNIN', 'HUANCAYO', 'SAÑO'),
(502, '19991104', 'LOREDO CHUPAN CESAR ANGEL', 'CELOREDO_08@HOTMAIL.COM', 'PRESIDENTE DE COMITE', '', 'MUNICIPALIDAD DISTRITAL DE SAPALLANGA', '', 'Gobierno Local', 'JUNIN', 'HUANCAYO', 'SAPALLANGA'),
(503, '20113466', 'MEZA ACOSTA VLADIMIR SANTIAGO', 'SANGANI2107@HOTMAIL.COM', 'PRESIDENTE DE COMITE', '', 'MUNICIPALIDAD DISTRITAL DE SAPALLANGA', '', 'Gobierno Local', 'JUNIN', 'HUANCAYO', 'SAPALLANGA'),
(504, '05935377', 'ANGULO FERREIRA MIGUEL', 'municipalidad.sarayacu@hotmail.com', 'PRESIDENTE DE COMITE', '', 'MUNICIPALIDAD DISTRITAL DE SARAYACU', '', 'Gobierno Local', 'LORETO', 'UCAYALI', 'SARAYACU'),
(505, '42188339', 'AQUINO CANO JAQUELIN ANGELA', 'JAC_ANGI@HOTMAIL.COM', 'PRESIDENTE DE COMITE', '', 'MUNICIPALIDAD DISTRITAL DE SAUSA', '', 'Gobierno Local', 'JUNIN', 'JAUJA', 'SAUSA'),
(506, '19937990', 'CHIPANA HERQUINIO ELOY EDISON', 'ARQELOYCHH@HOTMAIL.COM', 'PRESIDENTE DE COMITE', '', 'MUNICIPALIDAD DISTRITAL DE SICAYA', '', 'Gobierno Local', 'JUNIN', 'HUANCAYO', 'SICAYA'),
(507, '04068914', 'YAURI ESPINOZA HUGO ISAIAS', 'HLUGOIS@YAHOO.ES', 'PRESIDENTE DE COMITE', '', 'MUNICIPALIDAD DISTRITAL DE SIMON BOLIVAR', '', 'Gobierno Local', 'PASCO', 'PASCO', 'SIMON BOLIVAR'),
(508, '45548971', 'ROMERO CASTILLO OFELIA MEDALY', 'GERENCIAMUNICIPALMDS@GMAIL.COM', 'PRESIDENTE DE COMITE', '', 'MUNICIPALIDAD DISTRITAL DE SINSICAP', '', 'Gobierno Local', 'LA LIBERTAD', 'OTUZCO', 'SINSICAP'),
(509, '40402176', 'ALFEREZ MAYER JONATHAN PEDRO', 'GERENCIAMUNICIPAL@MUNISOCABAYA.GOB.PE', 'PRESIDENTE DE COMITE', '', 'MUNICIPALIDAD DISTRITAL DE SOCABAYA', '', 'Gobierno Local', 'AREQUIPA', 'AREQUIPA', 'SOCABAYA'),
(510, '21451940', 'CORONADO BENITES NIEVES ESDRAS', 'NIEVESCORONADO@HOTMAIL.COM', 'PRESIDENTE DE COMITE', '', 'MUNICIPALIDAD DISTRITAL DE SUBTANJALLA', '', 'Gobierno Local', 'ICA', 'ICA', 'SUBTANJALLA'),
(511, '21783116', 'TRILLO FLORES JUAN MANUEL', 'MANU_TRILLO@HOTMAIL.COM', 'PRESIDENTE DE COMITE', '', 'MUNICIPALIDAD DISTRITAL DE SUNAMPE', '', 'Gobierno Local', 'ICA', 'CHINCHA', 'SUNAMPE'),
(512, '15644903', 'FUMAGALLI MEDINA LUIS', 'LUIS_FUMAGALLI@HOTMAIL.COM', 'PRESIDENTE DE COMITE', '', 'MUNICIPALIDAD DISTRITAL DE SUPE', '', 'Gobierno Local', 'LIMA', 'BARRANCA', 'SUPE'),
(513, '42333782', 'ORTIZ JAIMES JUAN GUSTAVO', 'TAOCHIGUSTAVO@HOTMAIL.COM', 'PRESIDENTE DE COMITE', '', 'MUNICIPALIDAD DISTRITAL DE SUPE PUERTO', '', 'Gobierno Local', 'LIMA', 'BARRANCA', 'SUPE PUERTO'),
(514, '40051887', 'ESPINOZA LOARTE MANUEL MILENCO', 'MESPINOZA@MUNISURQUILLO.GOB.PE', 'PRESIDENTE DE COMITE', '', 'MUNICIPALIDAD DISTRITAL DE SURQUILLO', '', 'Gobierno Local', 'LIMA', 'LIMA', 'SURQUILLO'),
(515, '06257226', 'MOSQUEIRA CHAVEZ ELIZABETH', 'ELIZABETH50@HOTMAIL.FR', 'PRESIDENTE DE COMITE', '', 'MUNICIPALIDAD DISTRITAL DE TALAVERA', '', 'Gobierno Local', 'APURIMAC', 'ANDAHUAYLAS', 'TALAVERA'),
(516, '21793537', 'CASIANO AVALOS LUIS JESUS', 'JCASIANOA@HOTMAIL.COM', 'PRESIDENTE DE COMITE', '', 'MUNICIPALIDAD DISTRITAL DE TAMBO DE MORA', '', 'Gobierno Local', 'ICA', 'CHINCHA', 'TAMBO DE MORA'),
(517, '42470240', 'CARRION JUAREZ DAVID', 'ASESORIA_CARRIONASOCIADOS@HOTMAIL.COM', 'PRESIDENTE DE COMITE', '', 'MUNICIPALIDAD DISTRITAL DE TAMBO GRANDE', '', 'Gobierno Local', 'PIURA', 'PIURA', 'TAMBO GRANDE'),
(518, '02875267', 'RAMOS YESQUEN TEODORO', 'TEO468@HOTMAIL.COM', 'PRESIDENTE DE COMITE', '', 'MUNICIPALIDAD DISTRITAL DE TAMBO GRANDE', '', 'Gobierno Local', 'PIURA', 'PIURA', 'TAMBO GRANDE'),
(519, '01296702', 'BUSTINZA CARDENAS RENZO HERNAN', 'RENZOHBUCAR@GMAIL.COM', 'PRESIDENTE DE COMITE', '', 'MUNICIPALIDAD DISTRITAL DE TAMBURCO', '', 'Gobierno Local', 'APURIMAC', 'ABANCAY', 'TAMBURCO'),
(520, '21527469', 'PEÑA QUIJAITE JOSE EDUARDO', 'JOPE.Q@HOTMAIL.COM', 'PRESIDENTE DE COMITE', '', 'MUNICIPALIDAD DISTRITAL DE TATE', '', 'Gobierno Local', 'ICA', 'ICA', 'TATE'),
(521, '05328517', 'RENGIFO CASTILLO ROBERT ANTONIO', 'MUNI_CLAVERO_SOPLIN@OUTLOOK.ES', 'PRESIDENTE DE COMITE', '', 'MUNICIPALIDAD DISTRITAL DE TENIENTE MANUEL CLAVERO', '', 'Gobierno Local', 'LORETO', 'PUTUMAYO', 'TENIENTE MANUEL CLAVERO'),
(522, '43027085', 'TORRES CRUZ RICHARD RENE', 'GERENCIA_MUNICIPAL@MUNITIABAYA.GOB.PE', 'PRESIDENTE DE COMITE', '', 'MUNICIPALIDAD DISTRITAL DE TIABAYA', '', 'Gobierno Local', 'AREQUIPA', 'AREQUIPA', 'TIABAYA'),
(523, '40550553', 'TURPO DIAZ LUZ ALEJANDRINA', 'LUCECITA_2015TINTA@HOTMAIL.COM', 'PRESIDENTE DE COMITE', '', 'MUNICIPALIDAD DISTRITAL DE TINTA', '', 'Gobierno Local', 'CUSCO', 'CANCHIS', 'TINTA'),
(524, '16742561', 'NUÑEZ ALDANA ALAN RODOLFO', 'SFERNANDEZO@CONTRALORIA.GOB.PE', 'PRESIDENTE DE COMITE', '', 'MUNICIPALIDAD DISTRITAL DE TUMAN', '', 'Gobierno Local', 'LAMBAYEQUE', 'CHICLAYO', 'TUMAN'),
(525, '22296082', 'QUISPE ASTOCASA JULIO HERNAN', 'QUISPE.ASTOCASA@GMAIL.COM', 'PRESIDENTE DE COMITE', '', 'MUNICIPALIDAD DISTRITAL DE TUPAC AMARU INCA', '', 'Gobierno Local', 'ICA', 'PISCO', 'TUPAC AMARU INCA'),
(526, '18986509', 'QUEVEDO PRIETO CESAR WILDER ', 'CESITAR_0109@HOTMAIL.COM', 'PRESIDENTE DE COMITE', '', 'MUNICIPALIDAD DISTRITAL DE UCUNCHA', '', 'Gobierno Local', 'LA LIBERTAD', 'BOLIVAR', 'UCUNCHA'),
(527, '05249680', 'SILVA RIOS DAVID', 'DASIRIOS@HOTMAIL.COM', 'PRESIDENTE DE COMITE', '', 'MUNICIPALIDAD DISTRITAL DE URARINAS', '', 'Gobierno Local', 'LORETO', 'LORETO', 'URARINAS'),
(528, '08445770', 'CASTILLO SOTO JOSE LUIS', 'JCASTILLO@MUNIVENTANILLA.GOB.PE', 'PRESIDENTE DE COMITE', '', 'MUNICIPALIDAD DISTRITAL DE VENTANILLA', '', 'Gobierno Local', 'P. C. DEL CALLAO', 'PROV. CONST. DEL CALLAO', 'VENTANILLA'),
(529, '17801847', 'MALDONADO VILELA JOSE GASPAR', 'JOSE.MALDONADO@MUNIVICTORLARCO.GOB.PE', 'PRESIDENTE DE COMITE', '', 'MUNICIPALIDAD DISTRITAL DE VÍCTOR LARCO HERRERA', '', 'Gobierno Local', 'LA LIBERTAD', 'TRUJILLO', 'VICTOR LARCO HERRERA'),
(530, '23956634', 'NUÑEZ MONRROY EDMUNDO', 'ENMCUSCO@HOTMAIL.COM', 'PRESIDENTE DE COMITE', '', 'MUNICIPALIDAD DISTRITAL DE VILCABAMBA-LA CONVENCIÓN', '', 'Gobierno Local', 'CUSCO', 'LA CONVENCION', 'VILCABAMBA'),
(531, '08532562', 'HINOJOSA ALARCON EDGAR JESUS', 'EHINOJOSA@MUNIVES.GOB.PE', 'PRESIDENTE DE COMITE', '', 'MUNICIPALIDAD DISTRITAL DE VILLA EL SALVADOR', '', 'Gobierno Local', 'LIMA', 'LIMA', 'VILLA EL SALVADOR'),
(532, '10311686', 'SUMARAN SAAVEDRA LUIS ERMITAÑO', 'LSUMARAN@MUNIVES.GOB.PE', 'PRESIDENTE DE COMITE', '', 'MUNICIPALIDAD DISTRITAL DE VILLA EL SALVADOR', '', 'Gobierno Local', 'LIMA', 'LIMA', 'VILLA EL SALVADOR'),
(533, '10135514', 'MOROMIZATO GAVILAN RICARDO AUGUSTO ', 'RMOROMIZATO@MUNIVMT.GOB.PE', 'PRESIDENTE DE COMITE', '', 'MUNICIPALIDAD DISTRITAL DE VILLA MARÍA DEL TRIUNFO', '', 'Gobierno Local', 'LIMA', 'LIMA', 'VILLA MARIA DEL TRIUNFO'),
(534, '42852294', 'ZAVALETA DE LA CRUZ RONEL JESUS', 'RZAVALETA@MUNIVMT.GOB.PE', 'PRESIDENTE DE COMITE', '', 'MUNICIPALIDAD DISTRITAL DE VILLA MARÍA DEL TRIUNFO', '', 'Gobierno Local', 'LIMA', 'LIMA', 'VILLA MARIA DEL TRIUNFO'),
(535, '23863905', 'SANCHEZ SANCHEZ JOSE FRANCISCO ', 'JF2007SANCHEZ@HOTMAIL.COM', 'PRESIDENTE DE COMITE', '', 'MUNICIPALIDAD DISTRITAL DE WANCHAQ', '', 'Gobierno Local', 'CUSCO', 'CUSCO', 'WANCHAQ'),
(536, '41036450', 'FRISANCHO APAZA EDWIN', 'YEFRIEDU26@HOTMAIL.COM', 'PRESIDENTE DE COMITE', '', 'MUNICIPALIDAD DISTRITAL DE YANACANCHA-PASCO', '', 'Gobierno Local', 'PASCO', 'PASCO', 'YANACANCHA'),
(537, '29255022', 'BUSTAMANTE FLORES CESAR MARTIN', 'CBUSTAMANTEF@MUNIYANAHUARA.GOB.PE', 'PRESIDENTE DE COMITE', '', 'MUNICIPALIDAD DISTRITAL DE YANAHUARA', '', 'Gobierno Local', 'AREQUIPA', 'AREQUIPA', 'YANAHUARA'),
(538, '05274297', 'NORIEGA TELLO PEDRO AUGUSTO', 'PEDRONORIEGA1858@HOTMAIL.COM', 'PRESIDENTE DE COMITE', '', 'MUNICIPALIDAD DISTRITAL DE YAQUERANA', '', 'Gobierno Local', 'LORETO', 'REQUENA', 'YAQUERANA'),
(539, '5274297', 'NORIEGA TELLO PEDRO AUGUSTO', 'PEDRONORIEGA1858@HOTMAIL.COM', 'PRESIDENTE DE COMITE', '', 'MUNICIPALIDAD DISTRITAL DE YAQUERANA', '', 'Gobierno Local', 'LORETO', 'REQUENA', 'YAQUERANA'),
(540, '05920409', 'TUESTA SALDAÑA HUGO POMPEYO', 'HUGO_POMPEYO54@HOTMAIL.COM', 'PRESIDENTE DE COMITE', '', 'MUNICIPALIDAD DISTRITAL DE YARINACOCHA', '', 'Gobierno Local', 'UCAYALI', 'CORONEL PORTILLO', 'YARINACOCHA'),
(541, '42916706', 'QUISPE SALVATIERRA DIANA', 'DQUISPE@MUNIYAULI.GOB.PE', 'PRESIDENTE DE COMITE', '', 'MUNICIPALIDAD DISTRITAL DE YAULI-YAULI', '', 'Gobierno Local', 'JUNIN', 'YAULI', 'YAULI'),
(542, '09948183', 'LOPEZ AGUIRRE ROLANDO NILO', 'RONIALS@HOTMAIL.COM', 'PRESIDENTE DE COMITE', '', 'MUNICIPALIDAD DISTRITAL DE YAUYOS', '', 'Gobierno Local', 'JUNIN', 'JAUJA', 'YAUYOS'),
(543, '17826922', 'CAYETANO SALINAS JUAN ROBERTO ', 'caye1958@gmail.com', 'PRESIDENTE DE COMITE', '', 'MUNICIPALIDAD DISTRITAL DE YAVARI', '', 'Gobierno Local', 'LORETO', 'MARISCAL RAMON CASTILLA', 'YAVARI'),
(544, '29428377', 'RAMIREZ GUERRERO LUIS FELIPE', 'LRAMIREZ_G@HOTMAIL.COM', 'PRESIDENTE DE COMITE', '', 'MUNICIPALIDAD DISTRITAL DE YURA', '', 'Gobierno Local', 'AREQUIPA', 'AREQUIPA', 'YURA'),
(545, '07549990', 'FUENTES GALINDO GUSTAVO ADOLFO ARTURO', 'GFUENTES@MUNIRIMAC.GOB.PE', 'PRESIDENTE DE COMITE', '', 'MUNICIPALIDAD DISTRITAL DEL RIMAC', '', 'Gobierno Local', 'LIMA', 'LIMA', 'RIMAC'),
(546, '18103390', 'ALVAREZ HERRERA RAUL ALFREDO', 'GERENCIAMUNICIPAL@MUNIPORVENIR.GOB.PE', 'PRESIDENTE DE COMITE', '', 'MUNICIPALIDAD DISTRITAL EL PORVENIR - TRUJILLO', '', 'Gobierno Local', 'LA LIBERTAD', 'TRUJILLO', 'EL PORVENIR'),
(547, '06655315', 'GARCIA CARDENAS LUIS JAVIER', 'JGARCIAC.2002@GMAIL.COM', 'PRESIDENTE DE COMITE', '', 'MUNICIPALIDAD DISTRITAL VEINTISÉIS DE OCTUBRE', '', 'Gobierno Local', 'PIURA', 'PIURA', 'PIURA'),
(548, '25594843', 'CONSTANTINO FERNANDEZ ADA NELLY', 'ACONSTANTINO@MUNLIMA.GOB.PE', 'PRESIDENTE DE COMITE', '', 'MUNICIPALIDAD METROPOLITANA DE LIMA', '', 'Gobierno Local', 'LIMA', 'LIMA', 'LIMA'),
(549, '29637229', 'CORAZAO PINTO JESSICA', 'JESSISEB@HOTMAIL.COM', 'PRESIDENTE DE COMITE', '', 'MUNICIPALIDAD PROVINCIAL DE ABANCAY', '', 'Gobierno Local', 'APURIMAC', 'ABANCAY', 'ABANCAY'),
(550, '42228601', 'MEDRANO BENDEZU FERNANDO ', 'FERYAN1478@HOTMAIL.COM', 'PRESIDENTE DE COMITE', '', 'MUNICIPALIDAD PROVINCIAL DE ACOBAMBA', '', 'Gobierno Local', 'HUANCAVELICA', 'ACOBAMBA', 'ACOBAMBA'),
(551, '05592268', 'SALDAÑA RIOS MAURO', 'MAURO.SALDANA@HOTMAIL.COM', 'PRESIDENTE DE COMITE', '', 'MUNICIPALIDAD PROVINCIAL DE ALTO AMAZONAS', '', 'Gobierno Local', 'LORETO', 'ALTO AMAZONAS', 'YURIMAGUAS'),
(552, '22496879', 'JAUREGUI DEXTRE YONEL NORBERTO', 'YONEL_01@HOTMAIL.COM', 'PRESIDENTE DE COMITE', '', 'MUNICIPALIDAD PROVINCIAL DE AMBO', '', 'Gobierno Local', 'HUANUCO', 'AMBO', 'AMBO'),
(553, '09997131', 'ZAMANES SALAS LEONIDAS EDMUNDO', 'ING.ZAMANES@HOTMAIL.COM', 'PRESIDENTE DE COMITE', '', 'MUNICIPALIDAD PROVINCIAL DE ANDAHUAYLAS', '', 'Gobierno Local', 'APURIMAC', 'ANDAHUAYLAS', 'ANDAHUAYLAS'),
(554, '28306306', 'ZUBIATE PAREDES JUAN CESAR', 'GOBIERNA.PERU@GMAIL.COM', 'PRESIDENTE DE COMITE', '', 'MUNICIPALIDAD PROVINCIAL DE ANTA', '', 'Gobierno Local', 'CUSCO', 'ANTA', 'ANTA'),
(555, '29719487', 'CARRILLO MUÑOZ OSCAR ALEJANDRO', 'CARRILLOMUNOZ26@GMAIL.COM', 'PRESIDENTE DE COMITE', '', 'MUNICIPALIDAD PROVINCIAL DE AREQUIPA', '', 'Gobierno Local', 'AREQUIPA', 'AREQUIPA', 'AREQUIPA'),
(556, '33341386', 'AMES ZELAYA JORGE PATRICIO', 'JORGEPAZ01@MSN.COM', 'PRESIDENTE DE COMITE', '', 'MUNICIPALIDAD PROVINCIAL DE ASUNCION', '', 'Gobierno Local', 'ANCASH', 'ASUNCION', 'CHACAS'),
(557, '03099332', 'ANDRADE PINTADO EBER DULANTO', 'MUNICIPALIDAD@MUNIAYABACA.GOB.PE', 'PRESIDENTE DE COMITE', '', 'MUNICIPALIDAD PROVINCIAL DE AYABACA', '', 'Gobierno Local', 'PIURA', 'AYABACA', 'AYABACA'),
(558, '17842400', 'SAONA RODRIGUEZ ALIXS ARNULFO', 'ALIXSAONA@HOTMAIL.COM', 'PRESIDENTE DE COMITE', '', 'MUNICIPALIDAD PROVINCIAL DE BAGUA', '', 'Gobierno Local', 'AMAZONAS', 'BAGUA', 'BAGUA'),
(559, '21866891', 'MARTINEZ PALOMINO WILMER FELIX', 'PLANEAMIENTO@MUNIBARRANCA.GOB.PE', 'PRESIDENTE DE COMITE', '', 'MUNICIPALIDAD PROVINCIAL DE BARRANCA', '', 'Gobierno Local', 'LIMA', 'BARRANCA', 'BARRANCA'),
(560, '08571906', 'RAMIREZ VERGARAY LUIS GONZAGA', 'LUIRAMIREZVER@HOTMAIL.COM', 'PRESIDENTE DE COMITE', '', 'MUNICIPALIDAD PROVINCIAL DE CAJABAMBA', '', 'Gobierno Local', 'CAJAMARCA', 'CAJABAMBA', 'CAJABAMBA'),
(561, '18212318', 'VASQUEZ RODRIGUEZ LUIS ENRIQUE', 'LUVARO78@HOTMAIL.COM', 'PRESIDENTE DE COMITE', '', 'MUNICIPALIDAD PROVINCIAL DE CAJAMARCA', '', 'Gobierno Local', 'CAJAMARCA', 'CAJAMARCA', 'CAJAMARCA'),
(562, '10689958', 'MONTENEGRO DIAZ VICTOR HUGO', 'VICTOR.MONTENEGRO@UPAGU.EDU.PE', 'PRESIDENTE DE COMITE', '', 'MUNICIPALIDAD PROVINCIAL DE CAJAMARCA', '', 'Gobierno Local', 'CAJAMARCA', 'CAJAMARCA', 'CAJAMARCA'),
(563, '22240699', 'RODRIGUEZ ARGUEDAS ANTONIO GERMAN', 'AGRA_RODRIGUEZ@HOTMAIL.COM', 'PRESIDENTE DE COMITE', '', 'MUNICIPALIDAD PROVINCIAL DE CAMANA', '', 'Gobierno Local', 'AREQUIPA', 'CAMANA', 'CAMANA'),
(564, '29554305', 'SANCHEZ ARIAS STHANLEY BOHR', 'SANCHEZSTHANLEY@GMAIL.COM', 'PRESIDENTE DE COMITE', '', 'MUNICIPALIDAD PROVINCIAL DE CAMANA', '', 'Gobierno Local', 'AREQUIPA', 'CAMANA', 'CAMANA'),
(565, '24480779', 'QUISPITUPA TUPAYUPANQUI REYNALDO', 'RQUISPITUPA@HOTMAIL.COM', 'PRESIDENTE DE COMITE', '', 'MUNICIPALIDAD PROVINCIAL DE CANCHIS', '', 'Gobierno Local', 'CUSCO', 'CANCHIS', 'SICUANI'),
(566, '15354604', 'GONZALES GOMEZ MANUEL JULIO JOSE', 'MGONZALES_40@HOTMAIL.COM', 'PRESIDENTE DE COMITE', '', 'MUNICIPALIDAD PROVINCIAL DE CAÑETE', '', 'Gobierno Local', 'LIMA', 'CAÑETE', 'SAN VICENTE DE CAÑETE'),
(567, '32942891', 'CASTAÑEDA CENTURION JORGE ISAAC', 'JCASTANEDA@MUNICARHUAZ.GOB.PE', 'PRESIDENTE DE COMITE', '', 'MUNICIPALIDAD PROVINCIAL DE CARHUAZ', '', 'Gobierno Local', 'ANCASH', 'CARHUAZ', 'CARHUAZ'),
(568, '32978826', 'CUEVA HUARAZ ARQUIMIDEZ DANIEL', 'DANIELCONTADOR_4@HOTMAIL.COM', 'PRESIDENTE DE COMITE', '', 'MUNICIPALIDAD PROVINCIAL DE CASMA', '', 'Gobierno Local', 'ANCASH', 'CASMA', 'CASMA'),
(569, '09554025', 'LOJA ALVA EVER DOMINGO', 'EDLOJA@GMAIL.COM', 'PRESIDENTE DE COMITE', '', 'MUNICIPALIDAD PROVINCIAL DE CHACHAPOYAS', '', 'Gobierno Local', 'AMAZONAS', 'CHACHAPOYAS', 'CHACHAPOYAS'),
(570, '02899409', 'MOROCHO PEÑA ROBERTO CARLOS', 'RCTITO_007@HOTMAIL.COM', 'PRESIDENTE DE COMITE', '', 'MUNICIPALIDAD PROVINCIAL DE CHEPÉN', '', 'Gobierno Local', 'LA LIBERTAD', 'CHEPEN', 'CHEPEN'),
(571, '16481973', 'CORREA SOVERO MANUEL FERNANDO', 'FERNANDOCORREASOVERO@GMAIL.COM', 'PRESIDENTE DE COMITE', '', 'MUNICIPALIDAD PROVINCIAL DE CHICLAYO', '', 'Gobierno Local', 'LAMBAYEQUE', 'CHICLAYO', 'CHICLAYO'),
(572, '21871635', 'MALPICA FERNANDEZ FABIOLA MERCEDES', 'FM_MALPICAF@HOTMAIL.COM', 'PRESIDENTE DE COMITE', '', 'MUNICIPALIDAD PROVINCIAL DE CHINCHA', '', 'Gobierno Local', 'ICA', 'CHINCHA', 'CHINCHA ALTA'),
(573, '27424004', 'VARGAS VASQUEZ MARCO ANTONIO ', 'MARCOVA30@HOTMAIL.COM', 'PRESIDENTE DE COMITE', '', 'MUNICIPALIDAD PROVINCIAL DE CHOTA', '', 'Gobierno Local', 'CAJAMARCA', 'CHOTA', 'CHOTA'),
(574, '19896467', 'OSCANOA ZARATE LUISA RUBILINDA', 'RUBIOSCANOA@HOTMAIL.COM', 'PRESIDENTE DE COMITE', '', 'MUNICIPALIDAD PROVINCIAL DE CHUPACA', '', 'Gobierno Local', 'JUNIN', 'CHUPACA', 'CHUPACA'),
(575, '00038983', 'ARCE CORDOVA NELTON JAVIER', 'NELTONARCE@HOTMAIL.COM', 'PRESIDENTE DE COMITE', '', 'MUNICIPALIDAD PROVINCIAL DE CORONEL PORTILLO', '', 'Gobierno Local', 'UCAYALI', 'CORONEL PORTILLO', 'CALLERIA'),
(576, '27245256', 'PEDRAZA AGUILAR ANIBAL ', 'ANIBALPEDRAZA@MUNICUTERVO.GOB.PE', 'PRESIDENTE DE COMITE', '', 'MUNICIPALIDAD PROVINCIAL DE CUTERVO', '', 'Gobierno Local', 'CAJAMARCA', 'CUTERVO', 'CUTERVO'),
(577, '01315449', 'MAQUERA TICONA CESAR ROMAN', 'CRMAQUERA@GMAIL.COM', 'PRESIDENTE DE COMITE', '', 'MUNICIPALIDAD PROVINCIAL DE EL COLLAO', '', 'Gobierno Local', 'PUNO', 'EL COLLAO', 'ILAVE'),
(578, '23864144', 'CASTAÑEDA SOLIS JUAN CARLOS ', 'JCASTSOLIS@GMAIL.COM', 'PRESIDENTE DE COMITE', '', 'MUNICIPALIDAD PROVINCIAL DE ESPINAR', '', 'Gobierno Local', 'CUSCO', 'ESPINAR', 'ESPINAR'),
(579, '24864144', 'PAUCCARA HUAMANI LUIS', 'ECOCARLOSCAST@HOTMAIL.COM', 'PRESIDENTE DE COMITE', '', 'MUNICIPALIDAD PROVINCIAL DE ESPINAR', '', 'Gobierno Local', 'CUSCO', 'ESPINAR', 'ESPINAR'),
(580, '17400116', 'ZAMORA GUTIERREZ ZENOBIO CASIMIRO', 'ZZAMORA@MUNIFERRENAFE.GOB.PE', 'PRESIDENTE DE COMITE', '', 'MUNICIPALIDAD PROVINCIAL DE FERREÑAFE', '', 'Gobierno Local', 'LAMBAYEQUE', 'FERREÑAFE', 'FERREÑAFE'),
(581, '42554745', 'VICENTE SANCHEZ ELVER HENRY', 'GERENCIAMUNICIPAL@MUNIHUAMANGA.GOB.PE', 'PRESIDENTE DE COMITE', '', 'MUNICIPALIDAD PROVINCIAL DE HUAMANGA', '', 'Gobierno Local', 'AYACUCHO', 'HUAMANGA', 'AYACUCHO'),
(582, '02738842', 'FIESTAS ECHE TOMAS', 'TOMYFIESTAS@HOTMAIL.COM', 'PRESIDENTE DE COMITE', '', 'MUNICIPALIDAD PROVINCIAL DE HUANCABAMBA', '', 'Gobierno Local', 'PIURA', 'HUANCABAMBA', 'HUANCABAMBA'),
(583, '42779187', 'ESCOBAR REYMUNDO ALFREDO', 'ESREY84@HOTMAIL.COM', 'PRESIDENTE DE COMITE', '', 'MUNICIPALIDAD PROVINCIAL DE HUANCAVELICA', '', 'Gobierno Local', 'HUANCAVELICA', 'HUANCAVELICA', 'HUANCAVELICA'),
(584, '19836527', 'ROMERO TOVAR ALEJANDRO', 'AROMERO@MUNIHUANCAYO.GOB.PE', 'PRESIDENTE DE COMITE', '', 'MUNICIPALIDAD PROVINCIAL DE HUANCAYO', '', 'Gobierno Local', 'JUNIN', 'HUANCAYO', 'HUANCAYO'),
(585, '23662738', 'FLORES NAVARRETE EDGAR CAYO', 'CORPORACION.FC@HOTMAIL.COM', 'PRESIDENTE DE COMITE', '', 'MUNICIPALIDAD PROVINCIAL DE HUANTA', '', 'Gobierno Local', 'AYACUCHO', 'HUANTA', 'HUANTA'),
(586, '22517948', 'MONTES GODOY FIDEL FELIX', 'MONTESGODOY@GMAIL.COM', 'PRESIDENTE DE COMITE', '', 'MUNICIPALIDAD PROVINCIAL DE HUÁNUCO', '', 'Gobierno Local', 'HUANUCO', 'HUANUCO', 'HUANUCO'),
(587, '15960492', 'TOLEDO MALDONADO OSCAR SIMEON', 'OSCAR.TOLEDO@MUNIHUARAL.GOB.PE', 'PRESIDENTE DE COMITE', '', 'MUNICIPALIDAD PROVINCIAL DE HUARAL', '', 'Gobierno Local', 'LIMA', 'HUARAL', 'HUARAL'),
(588, '09344698', 'ALBA FIGUEROA PEDRO GUSTAVO ', 'G.ALBA@MUNIHUARAZ.GOB.PE', 'PRESIDENTE DE COMITE', '', 'MUNICIPALIDAD PROVINCIAL DE HUARAZ', '', 'Gobierno Local', 'ANCASH', 'HUARAZ', 'HUARAZ'),
(589, '18143263', 'DELGADO VILLANUEVA WILMER FELIPE', 'WILFEL.DV@GMAIL.COM', 'PRESIDENTE DE COMITE', '', 'MUNICIPALIDAD PROVINCIAL DE HUARMEY', '', 'Gobierno Local', 'ANCASH', 'HUARMEY', 'HUARMEY'),
(590, '08631606', 'GONZALEZ CARHUAVILCA HUGO FREDY ', 'HUGOFREDY10@HOTMAIL.COM', 'PRESIDENTE DE COMITE', '', 'MUNICIPALIDAD PROVINCIAL DE HUAROCHIRI', '', 'Gobierno Local', 'LIMA', 'HUAROCHIRI', 'MATUCANA'),
(591, '08679607', 'VALENCIA RINCON JUAN JOSE', 'JJVALENCIARINCON@HOTMAIL.COM', 'PRESIDENTE DE COMITE', '', 'MUNICIPALIDAD PROVINCIAL DE HUAURA', '', 'Gobierno Local', 'LIMA', 'HUAURA', 'HUACHO'),
(592, '21469339', 'ARAGONES VENTE MARIA NICOLASA', 'NICOARAVE@HOTMAIL.COM', 'PRESIDENTE DE COMITE', '', 'MUNICIPALIDAD PROVINCIAL DE ICA', '', 'Gobierno Local', 'ICA', 'ICA', 'ICA'),
(593, '07038579', 'MOSAIHUATE AGUIRRE MAXIMO EDUARDO ', 'edumosa52@hotmail.com', 'PRESIDENTE DE COMITE', '', 'MUNICIPALIDAD PROVINCIAL DE ICA', '', 'Gobierno Local', 'ICA', 'ICA', 'ICA'),
(594, '04434616', 'SILVA ACEVEDO ROSSMARY BETHSABE', 'ROSSMARY15@HOTMAIL.COM', 'PRESIDENTE DE COMITE', '', 'MUNICIPALIDAD PROVINCIAL DE ILO', '', 'Gobierno Local', 'MOQUEGUA', 'ILO', 'ILO'),
(595, '29512244', 'CALCINA HUANCA PEDRO', 'PCALCINA@MUNIMOLLENDO.GOB.PE', 'PRESIDENTE DE COMITE', '', 'MUNICIPALIDAD PROVINCIAL DE ISLAY', '', 'Gobierno Local', 'AREQUIPA', 'ISLAY', 'MOLLENDO'),
(596, '27848544', 'AGUIRRE CAMACHO RAUL GAVINO', 'RAGUIRRE@MUNIJAEN.GOB.PE', 'PRESIDENTE DE COMITE', '', 'MUNICIPALIDAD PROVINCIAL DE JAÉN', '', 'Gobierno Local', 'CAJAMARCA', 'JAEN', 'JAEN'),
(597, '41089420', 'SANTOS HUAMAN ANDRES PLACIDO', 'ANDRESPLAS@HOTMAIL.COM', 'PRESIDENTE DE COMITE', '', 'MUNICIPALIDAD PROVINCIAL DE JAUJA', '', 'Gobierno Local', 'JUNIN', 'JAUJA', 'JAUJA'),
(598, '30820302', 'VILLAVICENCIO FLORES RICHARD EMILIO', 'REVILLAVICENCIO@MUNIJORGEBASADRE.GOB.PE', 'PRESIDENTE DE COMITE', '', 'MUNICIPALIDAD PROVINCIAL DE JORGE BASADRE', '', 'Gobierno Local', 'TACNA', 'JORGE BASADRE', 'LOCUMBA'),
(599, '20905040', 'MOORE MALQUI ANDRES ', 'ANDRESJUNIN2017@GMAIL.COM', 'PRESIDENTE DE COMITE', '', 'MUNICIPALIDAD PROVINCIAL DE JUNÍN', '', 'Gobierno Local', 'JUNIN', 'JUNIN', 'JUNIN'),
(600, '29470450', 'CHAVEZ SALINAS DIEGO MARTIN', 'GERENCIAMUNICIPAL@MUNIDELACONVENCION.GOB.PE', 'PRESIDENTE DE COMITE', '', 'MUNICIPALIDAD PROVINCIAL DE LA CONVENCIÓN', '', 'Gobierno Local', 'CUSCO', 'LA CONVENCION', 'SANTA ANA'),
(601, '40480061', 'LÓPEZ VÁSQUEZ JOSÉ LUIS', 'YOCADELMAR2@HOTMAIL.COM', 'PRESIDENTE DE COMITE', '', 'MUNICIPALIDAD PROVINCIAL DE LAMBAYEQUE', '', 'Gobierno Local', 'LAMBAYEQUE', 'LAMBAYEQUE', 'LAMBAYEQUE'),
(602, '00090471', 'MELENDEZ ORDOÑEZ JHON HITLER', 'JHMO_30@HOTMAIL.COM', 'PRESIDENTE DE COMITE', '', 'MUNICIPALIDAD PROVINCIAL DE LEONCIO PRADO', '', 'Gobierno Local', 'HUANUCO', 'LEONCIO PRADO', 'RUPA-RUPA'),
(603, '05220135', 'GARCIA FERNANDEZ ENRIQUE', 'ENRIQUEGF@HOTMAIL.COM', 'PRESIDENTE DE COMITE', '', 'MUNICIPALIDAD PROVINCIAL DE LORETO', '', 'Gobierno Local', 'LORETO', 'LORETO', 'NAUTA'),
(604, '16621811', 'RODRIGUEZ SOTO LUIS GUILLERMO', 'LUISRODRIGUEZ_SOTO@HOTMAIL.COM', 'PRESIDENTE DE COMITE', '', 'MUNICIPALIDAD PROVINCIAL DE LUYA', '', 'Gobierno Local', 'AMAZONAS', 'LUYA', 'LAMUD'),
(605, '16730856', 'GONZALEZ TAPIA DELVER', 'DELVERGONZALEZ@HOTMAIL.COM', 'PRESIDENTE DE COMITE', '', 'MUNICIPALIDAD PROVINCIAL DE MARISCAL CÁCERES', '', 'Gobierno Local', 'SAN MARTIN', 'MARISCAL CACERES', 'JUANJUI'),
(606, '04406319', 'PONCE ZAMBRANO CARLOS ALBERTO', 'CARLOSPONCE_CPZ@HOTMAIL.COM', 'PRESIDENTE DE COMITE', '', 'MUNICIPALIDAD PROVINCIAL DE MARISCAL NIETO', '', 'Gobierno Local', 'MOQUEGUA', 'MARISCAL NIETO', 'MOQUEGUA'),
(607, '04436284', 'SANCHEZ PEREZ CLAUDIO', 'CLAUDIO_SANCHEZP@HOTMAIL.COM', 'PRESIDENTE DE COMITE', '', 'MUNICIPALIDAD PROVINCIAL DE MARISCAL NIETO', '', 'Gobierno Local', 'MOQUEGUA', 'MARISCAL NIETO', 'MOQUEGUA'),
(608, '05364041', 'MALAFAYA RUIZ PEDRO', 'PMR_ARIES@HOTMAIL.COM', 'PRESIDENTE DE COMITE', '', 'MUNICIPALIDAD PROVINCIAL DE MARISCAL RAMÓN CASTILLA', '', 'Gobierno Local', 'LORETO', 'MARISCAL RAMON CASTILLA', 'RAMON CASTILLA'),
(609, '05375152', 'PEZO VÁSQUEZ CARLOS ANGEL', 'CARLOSPEZO1@HOTMAIL.COM', 'PRESIDENTE DE COMITE', '', 'MUNICIPALIDAD PROVINCIAL DE MAYNAS', '', 'Gobierno Local', 'LORETO', 'MAYNAS', 'IQUITOS'),
(610, '29620685', 'ZEGARRA ARENAS ELOY GUSTAVO', 'ELOYTAVO@HOTMAIL.COM', 'PRESIDENTE DE COMITE', '', 'MUNICIPALIDAD PROVINCIAL DE MELGAR', '', 'Gobierno Local', 'PUNO', 'MELGAR', 'AYAVIRI'),
(611, '03370595', 'RUIDIAS OJEDA FERNANDO', 'ING.FERNANDOMD@GMAIL.COM', 'PRESIDENTE DE COMITE', '', 'MUNICIPALIDAD PROVINCIAL DE MORROPON', '', 'Gobierno Local', 'PIURA', 'MORROPON', 'CHULUCANAS'),
(612, '16450104', 'SALAS SIME JOSE ENRIQUE ', 'KIKESASISA@HOTMAIL.COM', 'PRESIDENTE DE COMITE', '', 'MUNICIPALIDAD PROVINCIAL DE MOYOBAMBA', '', 'Gobierno Local', 'SAN MARTIN', 'MOYOBAMBA', 'MOYOBAMBA'),
(613, '21793799', 'TASAYCO MUÑOZ EDUARDO FRANCISCO', 'EDWARDTAMU@HOTMAIL.COM', 'PRESIDENTE DE COMITE', '', 'MUNICIPALIDAD PROVINCIAL DE NAZCA', '', 'Gobierno Local', 'ICA', 'NAZCA', 'NAZCA'),
(614, '22490917', 'PALOMINO JUYPA AARON AUGUSTO', 'ARONUYPA@HOTMAIL.COM', 'PRESIDENTE DE COMITE', '', 'MUNICIPALIDAD PROVINCIAL DE OXAPAMPA', '', 'Gobierno Local', 'PASCO', 'OXAPAMPA', 'OXAPAMPA'),
(615, '06073166', 'ARENAS MORALES CARLOS NORBERTO', 'CNARENAS@HOTMAIL.COM', 'PRESIDENTE DE COMITE', '', 'MUNICIPALIDAD PROVINCIAL DE OYON', '', 'Gobierno Local', 'LIMA', 'OYON', 'OYON'),
(616, '19180281', 'ISLA GARCIA JUAN EDUARDO', 'EDUISGA1453@HOTMAIL.COM', 'PRESIDENTE DE COMITE', '', 'MUNICIPALIDAD PROVINCIAL DE PACASMAYO', '', 'Gobierno Local', 'LA LIBERTAD', 'PACASMAYO', 'SAN PEDRO DE LLOC'),
(617, '41273967', 'CRISOSTOMO ESTELA VILDER IVAN', 'I_VANCIT@HOTMAIL.COM', 'PRESIDENTE DE COMITE', '', 'MUNICIPALIDAD PROVINCIAL DE PADRE ABAD', '', 'Gobierno Local', 'UCAYALI', 'PADRE ABAD', 'PADRE ABAD'),
(618, '40382305', 'LINARES MASIAS JORGE LUIS', 'LINARESJORGE@HOTMAIL.COM', 'PRESIDENTE DE COMITE', '', 'MUNICIPALIDAD PROVINCIAL DE PAITA', '', 'Gobierno Local', 'PIURA', 'PAITA', 'PAITA'),
(619, '07763200', 'RODRIGUEZ GUERRA MIGUEL ANGEL', 'MIK_PASCO@HOTMAIL.COM', 'PRESIDENTE DE COMITE', '', 'MUNICIPALIDAD PROVINCIAL DE PASCO', '', 'Gobierno Local', 'PASCO', 'PASCO', 'CHAUPIMARCA'),
(620, '23920792', 'QUISPE CASTAÑEDA PLINIO', 'ACUARIOPQC@HOTMAIL.COM', 'PRESIDENTE DE COMITE', '', 'MUNICIPALIDAD PROVINCIAL DE PAUCARTAMBO', '', 'Gobierno Local', 'CUSCO', 'PAUCARTAMBO', 'PAUCARTAMBO'),
(621, '42476138', 'MOREYRA SALAS JORGE SERGIO', 'JSMOREYRA.64@GMAIL.COM', 'PRESIDENTE DE COMITE', '', 'MUNICIPALIDAD PROVINCIAL DE PISCO', '', 'Gobierno Local', 'ICA', 'PISCO', 'PISCO'),
(622, '02695296', 'FRIAS GUAYLUPO LUIS ALBERTO', 'LFRIASG@MUNIPIURA.GOB.PE', 'PRESIDENTE DE COMITE', '', 'MUNICIPALIDAD PROVINCIAL DE PIURA', '', 'Gobierno Local', 'PIURA', 'PIURA', 'PIURA'),
(623, '40491449', 'ALVAREZ MENDOZA JORGE ARTURO', 'ASSREPP@GMAIL.COM', 'PRESIDENTE DE COMITE', '', 'MUNICIPALIDAD PROVINCIAL DE PUNO', '', 'Gobierno Local', 'PUNO', 'PUNO', 'PUNO'),
(624, '05859806', 'DEL AGUILA MANUYAMA HENIGER', 'HENIGER1@HOTMAIL.COM', 'PRESIDENTE DE COMITE', '', 'MUNICIPALIDAD PROVINCIAL DE REQUENA', '', 'Gobierno Local', 'LORETO', 'REQUENA', 'REQUENA'),
(625, '18062823', 'CHAVEZ FLORES JORGE HECTOR', 'HECTORCHA08@HOTMAIL.COM', 'PRESIDENTE DE COMITE', '', 'MUNICIPALIDAD PROVINCIAL DE RIOJA', '', 'Gobierno Local', 'SAN MARTIN', 'RIOJA', 'RIOJA'),
(626, '00872666', 'FONSECA NUÑEZ IBRAIN', 'GMEPSI@MUNISANIGNACIO.GOB.PE', 'PRESIDENTE DE COMITE', '', 'MUNICIPALIDAD PROVINCIAL DE SAN IGNACIO', '', 'Gobierno Local', 'CAJAMARCA', 'SAN IGNACIO', 'SAN IGNACIO'),
(627, '40726158', 'OLIVEIRA AREVALO JUAN MANUEL', 'JMOLIVEIRA3@GMAIL.COM', 'PRESIDENTE DE COMITE', '', 'MUNICIPALIDAD PROVINCIAL DE SAN MARTIN', '', 'Gobierno Local', 'SAN MARTIN', 'SAN MARTIN', 'TARAPOTO'),
(628, '17930591', 'ORTIZ VERA HECTOR ORLANDO ', 'hov_777@hotmail.com', 'PRESIDENTE DE COMITE', '', 'MUNICIPALIDAD PROVINCIAL DE SAN MIGUEL', '', 'Gobierno Local', 'CAJAMARCA', 'SAN MIGUEL', 'SAN MIGUEL'),
(629, '02395411', 'RODRIGUEZ APAZA ISMAEL ELOY', 'ERODRIGUEZA@MUNISANROMAN.GOB.PE', 'PRESIDENTE DE COMITE', '', 'MUNICIPALIDAD PROVINCIAL DE SAN ROMÁN', '', 'Gobierno Local', 'PUNO', 'SAN ROMAN', 'JULIACA'),
(630, '18098197', 'RUIZ ARMAS JORGE ENRIQUE', 'JRUIZARMAS@HOTMAIL.COM', 'PRESIDENTE DE COMITE', '', 'MUNICIPALIDAD PROVINCIAL DE SÁNCHEZ CARRIÓN - HUAMACHUCO', '', 'Gobierno Local', 'LA LIBERTAD', 'SANCHEZ CARRION', 'HUAMACHUCO'),
(631, '17822655', 'AVILA CABALLERO ADRIAN ', 'ADRIAN_AVILA_57@HOTMAIL.COM', 'PRESIDENTE DE COMITE', '', 'MUNICIPALIDAD PROVINCIAL DE SÁNCHEZ CARRIÓN - HUAMACHUCO', '', 'Gobierno Local', 'LA LIBERTAD', 'SANCHEZ CARRION', 'HUAMACHUCO'),
(632, '40625470', 'SANCHEZ PAREDES DANIEL SAUL', 'DANSAPAREDES@HOTMAIL.COM', 'PRESIDENTE DE COMITE', '', 'MUNICIPALIDAD PROVINCIAL DE SANTIAGO DE CHUCO', '', 'Gobierno Local', 'LA LIBERTAD', 'SANTIAGO DE CHUCO', 'SANTIAGO DE CHUCO'),
(633, '03696351', 'QUEREVALU TUME MANUEL DOMINGO', 'MAQUEPESCA24@HOTMAIL.COM', 'PRESIDENTE DE COMITE', '', 'MUNICIPALIDAD PROVINCIAL DE SECHURA', '', 'Gobierno Local', 'PIURA', 'SECHURA', 'SECHURA'),
(634, '03509605', 'IRAZABAL ALAMO JORGE CARLOS', 'JIRAZABAL@MUNISULLANA.GOB.PE', 'PRESIDENTE DE COMITE', '', 'MUNICIPALIDAD PROVINCIAL DE SULLANA', '', 'Gobierno Local', 'PIURA', 'SULLANA', 'SULLANA'),
(635, '40670454', 'GAMBETTA MONTALVO EMERSON ALEXIS', 'EMERSONGAMBETTA@YAHOO.ES', 'PRESIDENTE DE COMITE', '', 'MUNICIPALIDAD PROVINCIAL DE TACNA', '', 'Gobierno Local', 'TACNA', 'TACNA', 'TACNA'),
(636, '02883306', 'TAVARA CHERRE LUIS GERARDO', 'LTAVARA@MUNITALARA.GOB.PE', 'PRESIDENTE DE COMITE', '', 'MUNICIPALIDAD PROVINCIAL DE TALARA', '', 'Gobierno Local', 'PIURA', 'TALARA', 'PARIÑAS'),
(637, '02840424', 'UBILLUS ZUÑIGA ERICH RENATO ', 'RENATOUBILLUS@HOTMAIL.COM', 'PRESIDENTE DE COMITE', '', 'MUNICIPALIDAD PROVINCIAL DE TALARA', '', 'Gobierno Local', 'PIURA', 'TALARA', 'PARIÑAS'),
(638, '29511477', 'RONDON PALOMINO ROLAN FLORENCIO', 'ROLAN_RONDON@OUTLOOK.COM', 'PRESIDENTE DE COMITE', '', 'MUNICIPALIDAD PROVINCIAL DE TAMBOPATA', '', 'Gobierno Local', 'MADRE DE DIOS', 'TAMBOPATA', 'TAMBOPATA'),
(639, '20015101', 'LAZARO AQUINO NERIO HERNAN', 'HLA_@HOTMAIL.COM', 'PRESIDENTE DE COMITE', '', 'MUNICIPALIDAD PROVINCIAL DE TARMA', '', 'Gobierno Local', 'JUNIN', 'TARMA', 'TARMA'),
(640, '04322212', 'CIELOS YABAR EDMUNDO', 'AMOGGIANO@CONTRALORIA.GOB.PE', 'PRESIDENTE DE COMITE', '', 'MUNICIPALIDAD PROVINCIAL DE TARMA', '', 'Gobierno Local', 'JUNIN', 'TARMA', 'TARMA'),
(641, '01202116', 'CONDE VILLAVICENCIO OSCAR JOSE', 'OCONDEV@HOTMAIL.COM', 'PRESIDENTE DE COMITE', '', 'MUNICIPALIDAD PROVINCIAL DE TAYACAJA', '', 'Gobierno Local', 'HUANCAVELICA', 'TAYACAJA', 'PAMPAS'),
(642, '17893593', 'ALVA PEREZ ABEL BERNARDO', 'BERNARDOALVAPEREZ@GMAIL.COM', 'PRESIDENTE DE COMITE', '', 'MUNICIPALIDAD PROVINCIAL DE TRUJILLO', '', 'Gobierno Local', 'LA LIBERTAD', 'TRUJILLO', 'TRUJILLO'),
(643, '17842464', 'MATTA BERRIOS WILLAM ALFREDO', 'WMATTAB@HOTMAIL.COM', 'PRESIDENTE DE COMITE', '', 'MUNICIPALIDAD PROVINCIAL DE TRUJILLO', '', 'Gobierno Local', 'LA LIBERTAD', 'TRUJILLO', 'TRUJILLO'),
(644, '06142338', 'BAMBAREN MIASTA MANUEL LIZANDRO ', 'MANOLOBAMBAREN@YAHOO.ES', 'PRESIDENTE DE COMITE', '', 'MUNICIPALIDAD PROVINCIAL DE TUMBES', '', 'Gobierno Local', 'TUMBES', 'TUMBES', 'TUMBES'),
(645, '05417584', 'VILLACORTA VILLACORTA CARLOS JAVIER', 'CARLOSJAVI_33@HOTMAIL.COM', 'PRESIDENTE DE COMITE', '', 'MUNICIPALIDAD PROVINCIAL DE UCAYALI', '', 'Gobierno Local', 'LORETO', 'UCAYALI', 'CONTAMANA'),
(646, '24951337', 'ARDILES ESPINOZA JORGE LUIS', 'JORGELUIS6704@HOTMAIL.COM', 'PRESIDENTE DE COMITE', '', 'MUNICIPALIDAD PROVINCIAL DE URUBAMBA', '', 'Gobierno Local', 'CUSCO', 'URUBAMBA', 'URUBAMBA'),
(647, '27713615', 'DELGADO COTRINA WILMER ORLANDO', 'WDELGADOC7@HOTMAIL.COM', 'PRESIDENTE DE COMITE', '', 'MUNICIPALIDAD PROVINCIAL DE UTCUBAMBA', '', 'Gobierno Local', 'AMAZONAS', 'UTCUBAMBA', 'BAGUA GRANDE'),
(648, '17871008', 'LANDAURO GAMARRA CECILIA', 'CECILIALANDAUROGAMARRA@OUTLOOK.COM', 'PRESIDENTE DE COMITE', '', 'MUNICIPALIDAD PROVINCIAL DE VIRÚ', '', 'Gobierno Local', 'LA LIBERTAD', 'VIRU', 'VIRU'),
(649, '20023318', 'RONCAL MADGE JULIO CESAR', 'JRONCAL@OUTLOOK.COM', 'PRESIDENTE DE COMITE', '', 'MUNICIPALIDAD PROVINCIAL DE YAULI', '', 'Gobierno Local', 'JUNIN', 'YAULI', 'LA OROYA'),
(650, '19920151', 'ARANA VERA VICTOR MANUEL', 'VICTORMANUEL.ARANAVERA@HOTMAIL.COM', 'PRESIDENTE DE COMITE', '', 'MUNICIPALIDAD PROVINCIAL DE YAUYOS', '', 'Gobierno Local', 'LIMA', 'YAUYOS', 'YAUYOS'),
(651, '41912164', 'MELGAREJO LEON ZICO RENE', 'ZMELGAREJO@MUNIYUNGAY.GOB.PE', 'PRESIDENTE DE COMITE', '', 'MUNICIPALIDAD PROVINCIAL DE YUNGAY', '', 'Gobierno Local', 'ANCASH', 'YUNGAY', 'YUNGAY'),
(652, '08189998', 'ZEGARRA GUZMAN OSCAR JAVIER', 'O.ZEGARRA@MUNICALLAO.GOB.PE', 'PRESIDENTE DE COMITE', '', 'MUNICIPALIDAD PROVINCIAL DEL CALLAO', '', 'Gobierno Local', 'P. C. DEL CALLAO', 'PROV. CONST. DEL CALLAO', 'CALLAO'),
(653, '31004744', 'MARTINEZ CALDERON MARIO ', 'MMARTINEZ@CUSCO.GOB.PE', 'PRESIDENTE DE COMITE', '', 'MUNICIPALIDAD PROVINCIAL DEL CUSCO', '', 'Gobierno Local', 'CUSCO', 'CUSCO', 'CUSCO'),
(654, '32735183', 'TAPIA PALACIOS EDGAR ALEXIS', 'ATP736@HOTMAIL.COM', 'PRESIDENTE DE COMITE', '', 'MUNICIPALIDAD PROVINCIAL DEL SANTA', '', 'Gobierno Local', 'ANCASH', 'SANTA', 'CHIMBOTE'),
(655, '30849632', 'MEDINA PRADA SALVADOR EDILBERTO', 'SMEDINA@ONP.GOB.PE', 'PRESIDENTE DE COMITE', '', 'OFICINA DE NORMALIZACIÓN PREVISIONAL - ONP', '', 'Gobierno Central', 'LIMA', 'LIMA', 'LIMA'),
(656, '16710724', 'TAPIA SOLARI LOURDES KATUSHKA', 'LTAPIA@ONAGI.GOB.PE', 'PRESIDENTE DE COMITE', '', 'OFICINA NACIONAL DE GOBIERNO INTERIOR', '', 'Gobierno Central', 'LIMA', 'LIMA', 'MIRAFLORES'),
(657, '06426027', 'CASTILLO MEZA ADOLFO CARLO MAGNO', 'PTESEN@ONPE.GOB.PE', 'PRESIDENTE DE COMITE', '', 'OFICINA NACIONAL DE PROCESOS ELECTORALES - ONPE', '', 'Gobierno Central', 'LIMA', 'LIMA', 'LIMA'),
(658, '07911850', 'RUIZ VEGA MONICA DIANA MARIA', 'MRUIZ@OEFA.GOB.PE', 'PRESIDENTE DE COMITE', '', 'ORGANISMO DE EVALUACIÓN Y FISCALIZACIÓN AMBIENTAL', '', 'Gobierno Central', 'LIMA', 'LIMA', 'JESUS MARIA'),
(659, '10499381', 'TANTAHUILLCA MAYHUA CLAUDIO', 'CTANTAHUILLCA@COFOPRI.GOB.PE', 'PRESIDENTE DE COMITE', '', 'ORGANISMO DE FORMALIZACIÓN DE LA PROPIEDAD INFORMAL - COFOPRI', '', 'Gobierno Central', 'LIMA', 'LIMA', 'SAN ISIDRO'),
(660, '18186486', 'MALCA MURGA JENY DEL ROCIO', 'JMALCA@COFOPRI.GOB.PE', 'PRESIDENTE DE COMITE', '', 'ORGANISMO DE FORMALIZACIÓN DE LA PROPIEDAD INFORMAL - COFOPRI', '', 'Gobierno Central', 'LIMA', 'LIMA', 'SAN ISIDRO'),
(661, '40702149', 'GALLARDO CAMACHO LENIN HORACIO', 'LGALLARDO@OSINFOR.GOB.PE', 'PRESIDENTE DE COMITE', '', 'ORGANISMO DE SUPERVISIÓN DE LOS RECURSOS FORESTALES Y DE FAUNA SILVESTRE - OSINFOR', '', 'Gobierno Central', 'LIMA', 'LIMA', 'MAGDALENA DEL MAR'),
(662, '08725375', 'VILLAVICENCIO FERNANDEZ DAVID RAMON', 'DVILLAVICENCIO@OSIPTEL.GOB.PE', 'PRESIDENTE DE COMITE', '', 'ORGANISMO SUPERVISOR DE INVERSIÓN PRIVADA EN TELECOMUNICACIONES - OSIPTEL', '', 'Gobierno Central', 'LIMA', 'LIMA', 'SAN BORJA'),
(663, '07886489', 'PAJARES SAYAN VICTORIA DEL PILAR', 'PPAJARES@OSINERGMIN.GOB.PE', 'PRESIDENTE DE COMITE', '', 'ORGANISMO SUPERVISOR DE LA INVERSIÓN EN ENERGÍA Y MINERÍA', '', 'Gobierno Central', 'LIMA', 'LIMA', 'MAGDALENA DEL MAR'),
(664, '40871160', 'REYNAGA ALVARADO PATRICIA', 'PREYNAGA@OSITRAN.GOB.PE', 'PRESIDENTE DE COMITE', '', 'ORGANISMO SUPERVISOR DE LA INVERSIÓN EN INFRAESTRUCTURA DE TRANSPORTE DE USO PUBLICO', '', 'Gobierno Central', 'LIMA', 'LIMA', 'SURQUILLO'),
(665, '10736339', 'PEREZ PALMA GARRETA CECILIA VERONICA', 'CPEREZPALMA@OSCE.GOB.PE', 'PRESIDENTE DE COMITE', '', 'ORGANISMO SUPERVISOR DE LAS CONTRATACIONES DEL ESTADO - OSCE', '', 'Gobierno Central', 'LIMA', 'LIMA', 'JESUS MARIA'),
(666, '09597126', 'RODRIGUEZ NEGRON GERARDO EGBERTO', 'GERARDO.RODRIGUEZ@OTASS.GOB.PE', 'PRESIDENTE DE COMITE', '', 'ORGANISMO TÉCNICO DE LA ADMINISTRACIÓN DE LOS SERVICIOS DE SANEAMIENTO', '', 'Gobierno Central', 'LIMA', 'LIMA', 'SAN ISIDRO'),
(667, '21408919', 'FLORES HERNANDEZ CARLOS FERNANDO', 'CARLOS.FLORES@LEYENDAS.GOB.PE', 'PRESIDENTE DE COMITE', '', 'PATRONATO DEL PARQUE DE LAS LEYENDAS - FELIPE BENAVIDES BARREDA', '', 'Gobierno Local', 'LIMA', 'LIMA', 'SAN MIGUEL'),
(668, '06640262', 'PINELO CHUMBE ROSA AMELIA', 'RPINELOCH@GMAIL.COM', 'PRESIDENTE DE COMITE', '', 'PEDAGÓGICO NACIONAL DE MONTERRICO', '', 'Gobierno Central', 'LIMA', 'LIMA', 'SANTIAGO DE SURCO'),
(669, '25844081', 'MONTALVO DE LOS SANTOS JHONI JOSE', 'AMOGGIANO@CONTRALORIA.GOB.PE', 'PRESIDENTE DE COMITE', '', 'PEDAGÓGICO NACIONAL DE MONTERRICO', '', 'Gobierno Central', 'LIMA', 'LIMA', 'SANTIAGO DE SURCO'),
(670, '40293748', 'RAZURI ALPISTE MIRTHA AGUSTINA', 'MIRTHA.RAZURI@PERUCOMPRAS.GOB.PE', 'PRESIDENTE DE COMITE', '', 'PERU COMPRAS', '', 'Gobierno Central', 'LIMA', 'LIMA', 'SAN ISIDRO'),
(671, '09150438', 'RODRIGUEZ CORNEJO MILTON UBALDO', 'MRODRIGUEZ@PERUPETRO.COM.PE', 'PRESIDENTE DE COMITE', '', 'PERUPETRO S.A.', '', 'Gobierno Central', 'LIMA', 'LIMA', 'SAN BORJA'),
(672, '09997123', 'CORONEL ESCOBAR JOSE ALFREDO', 'ACORONEL@PETROPERU.COM.PE', 'PRESIDENTE DE COMITE', '', 'PETRÓLEOS DEL PERÚ S.A. - PETROPERÚ', '', 'Gobierno Central', 'LIMA', 'LIMA', 'SAN ISIDRO'),
(673, '03360409', 'RUIDIAS FARFAN AUGUSTO', 'ARUIDIASF@PJ.GOB.PE', 'PRESIDENTE DE COMITE', '', 'PODER JUDICIAL', '', 'Gobierno Central', 'LIMA', 'LIMA', 'LIMA'),
(674, '08782310', 'LEON VELARDE AMEZAGA EMMA ANA MARIA', 'ELEONVELARDE@PRESIDENCIA.GOB.PE', 'PRESIDENTE DE COMITE', '', 'PRESIDENCIA DE LA REPÚBLICA - DESPACHO PRESIDENCIAL', '', 'Gobierno Central', 'LIMA', 'LIMA', 'LIMA'),
(675, '10150052', 'LEM CONDE BARBARA', 'BLM@PCM.GOB.PE', 'PRESIDENTE DE COMITE', '', 'PRESIDENCIA DEL CONSEJO DE MINISTROS - P C M', '', 'Gobierno Central', 'LIMA', 'LIMA', 'LIMA'),
(676, '08696071', 'RODRIGUEZ LAVA JORGE ALEJANDRO', 'JRODRIGUEZ@AGRORURAL.GOB.PE', 'PRESIDENTE DE COMITE', '', 'PROGRAMA DE DESARROLLO PRODUCTIVO AGRARIO RURAL - AGRO RURAL', '', 'Gobierno Central', 'LIMA', 'LIMA', 'JESUS MARIA'),
(677, '10611063', 'PASAPERA TRUJILLO FABIOLA SUSANA', 'FPASAPERA@PGRLM.GOB.PE', 'PRESIDENTE DE COMITE', '', 'PROGRAMA DE GOBIERNO REGIONAL DE LIMA METROPOLITANA', '', 'Gobierno Regional', 'LIMA', 'LIMA', 'LIMA'),
(678, '07209780', 'CHANG SERRANO JAVIER EDUARDO', 'JAVIER.CHANG@INABIF.GOB.PE', 'PRESIDENTE DE COMITE', '', 'PROGRAMA INTEGRAL NACIONAL PARA EL BIENESTAR FAMILIAR - INABIF', '', 'Gobierno Central', 'LIMA', 'LIMA', 'PUEBLO LIBRE(MAGDALENA VIEJA)'),
(679, '09102547', 'LI QUISPE JUAN CARLOS', 'JLI@PNCVFS.GOB.PE', 'PRESIDENTE DE COMITE', '', 'PROGRAMA NACIONAL CONTRA LA VIOLENCIA FAMILIAR Y SEXUAL', '', 'Gobierno Central', 'LIMA', 'LIMA', 'PUEBLO LIBRE(MAGDALENA VIEJA)'),
(680, '07971346', 'HERRERA CASTAÑEDA MABEL MILAGROS', 'MHERRERA@CUNAMAS.GOB.PE', 'PRESIDENTE DE COMITE', '', 'PROGRAMA NACIONAL CUNA MÁS', '', 'Gobierno Central', 'LIMA', 'LIMA', 'MIRAFLORES'),
(681, '07268809', 'BAUTISTA PORRAS HAYDEE MARIA', 'HAYDEE.BAUTISTA@QW.GOB.PE', 'PRESIDENTE DE COMITE', '', 'PROGRAMA NACIONAL DE ALIMENTACIÓN ESCOLAR QALI WARMA', '', 'Gobierno Central', 'LIMA', 'LIMA', 'EL AGUSTINO'),
(682, '04826362', 'ZUÑIGA CAPARO NATALYE', 'NZUNIGA@JUNTOS.GOB.PE', 'PRESIDENTE DE COMITE', '', 'PROGRAMA NACIONAL DE APOYO DIRECTO A LOS MÁS POBRES - JUNTOS', '', 'Gobierno Central', 'LIMA', 'LIMA', 'SAN ISIDRO'),
(683, '07866624', 'CONTRERAS KRUMBACH CRISTIAN SANTIAGO', 'CCONTRERAS@PENSION65.GOB.PE', 'PRESIDENTE DE COMITE', '', 'PROGRAMA NACIONAL DE ASISTENCIA SOLIDARIA PENSIÓN 65', '', 'Gobierno Central', 'LIMA', 'LIMA', 'MIRAFLORES'),
(684, '07630837', 'SANABRIA ZAMBRANO MARTIN HUMBERTO', 'MARTIN.SANABRIA@PRONABEC.GOB.PE', 'PRESIDENTE DE COMITE', '', 'PROGRAMA NACIONAL DE BECAS Y CREDITO EDUCATIVO', '', 'Gobierno Central', 'LIMA', 'LIMA', 'SAN BORJA'),
(685, '10223513', 'YNAMI CHIA CARLOS JAVIER', 'CYNAMI@MINAM.GOB.PE', 'PRESIDENTE DE COMITE', '', 'PROGRAMA NACIONAL DE CONSERVACIÓN DE BOSQUES PARA LA MITIGACIÓN DEL CAMBIO CLIMÁTICO', '', 'Gobierno Central', 'LIMA', 'LIMA', 'SAN ISIDRO'),
(686, '07967241', 'NAGAKI OSHIRO DIANA AMPARO', 'DIANA.NAGAKI@JOVENESPRODUCTIVOS.GOB.PE', 'PRESIDENTE DE COMITE', '', 'PROGRAMA NACIONAL DE EMPLEO JUVENIL JÓVENES PRODUCTIVOS', '', 'Gobierno Central', 'LIMA', 'LIMA', 'JESUS MARIA'),
(687, '09179000', 'ALVA ROJAS DAVID ALFREDO', 'DALVA@MINEDU.GOB.PE', 'PRESIDENTE DE COMITE', '', 'PROGRAMA NACIONAL DE INFRAESTRUCTURA EDUCATIVA - PRONIED', '', 'Gobierno Central', 'LIMA', 'LIMA', 'LIMA'),
(688, '80633065', 'CHAHUAYO DURAN SAUL DARIO', 'DARIO.CHAHUAYOD@PUCP.PE', 'PRESIDENTE DE COMITE', '', 'PROGRAMA NACIONAL PARA LA PROMOCIÓN DE OPORTUNIDADES LABORALES - IMPULSA PERÚ', '', '', 'LIMA', 'LIMA', 'JESUS MARIA'),
(689, '40462393', 'LOAYZA ALIAGA ENRIQUE OMAR', 'ELOAYZA@TRABAJAPERU.GOB.PE', 'PRESIDENTE DE COMITE', '', 'PROGRAMA PARA LA GENERACIÓN DE EMPLEO SOCIAL INCLUSIVO TRABAJA PERU', '', 'Gobierno Central', 'LIMA', 'LIMA', 'JESUS MARIA'),
(690, '42334588', 'GOMEZ CCORAHUA JOEL DAVID', 'JOELDAVIDGOMEZ@GMAIL.COM', 'PRESIDENTE DE COMITE', '', 'PROGRAMA REGIONAL DE IRRIGACIÓN Y DESARROLLO RURAL INTEGRADO', '', 'Gobierno Regional', 'AYACUCHO', 'HUAMANGA', 'AYACUCHO'),
(691, '08592783', 'PACHAS OCHOA MANUEL ASENCION', 'MPACHAS@PSI.GOB.PE', 'PRESIDENTE DE COMITE', '', 'PROGRAMA SUBSECTORIAL DE IRRIGACIONES', '', 'Gobierno Central', 'LIMA', 'LIMA', 'LIMA'),
(692, '21526869', 'ORTIZ CASTILLA RAFAEL HERNAN', 'RORTIZ@PSI.GOB.PE', 'PRESIDENTE DE COMITE', '', 'PROGRAMA SUBSECTORIAL DE IRRIGACIONES', '', 'Gobierno Central', 'LIMA', 'LIMA', 'LIMA'),
(693, '25484432', 'BURGA RAMIREZ JESUS HERNAN', 'HBURGA@LIMA2019.PE', 'PRESIDENTE DE COMITE', '', 'PROYECTO ESP. PARA LA PREPARACIÓN Y DESARROLLO DE LOS XVIII JUEGOS PANAMERICANOS DEL 2019', '', 'Gobierno Central', 'LIMA', 'LIMA', 'SAN LUIS'),
(694, '00487015', 'FLORES REVOLLAR CECILIA ZOILA', 'CFLORES@PET.GOB.PE', 'PRESIDENTE DE COMITE', '', 'PROYECTO ESPECIAL AFIANZAMIENTO Y AMPLIACION DE LOS RECURSOS HIDRICOS DE TACNA', '', 'Gobierno Regional', 'TACNA', 'TACNA', 'TACNA'),
(695, '32855658', 'GOMEZ SALAZAR CRUZ MANUEL', 'JSAMANIEGO@PEAM.GOB.PE', 'PRESIDENTE DE COMITE', '', 'PROYECTO ESPECIAL ALTO MAYO', '', 'Gobierno Regional', 'SAN MARTIN', 'MOYOBAMBA', 'MOYOBAMBA'),
(696, '05235861', 'SORIA RUIZ WILLIAM PABLO', 'PSORIAR@GMAIL.COM', 'PRESIDENTE DE COMITE', '', 'PROYECTO ESPECIAL BINACIONAL DESARROLLO INTEGRAL DE LA CUENCA DEL RIO PUTUMAYO', '', 'Gobierno Central', 'LORETO', 'MAYNAS', 'IQUITOS'),
(697, '01310911', 'SERRUTO CAHUANA TANIA', 'TANIASC4@HOTMAIL.COM', 'PRESIDENTE DE COMITE', '', 'PROYECTO ESPECIAL BINACIONAL LAGO TITICACA - PUNO', '', 'Gobierno Central', 'PUNO', 'PUNO', 'PUNO'),
(698, '41392144', 'CASTAÑEDA ESPINOZA GUILLERMO LEON HART', 'ADMINISTRACION@PEBPT.GOB.PE', 'PRESIDENTE DE COMITE', '', 'PROYECTO ESPECIAL BINACIONAL PUYANGO - TUMBES', '', 'Gobierno Central', 'TUMBES', 'TUMBES', 'TUMBES'),
(699, '18071079', 'VILLANUEVA SANCHEZ GROVER EDUARDO', 'GVILLANUEVA@CHAVIMOCHIC.GOB.PE', 'PRESIDENTE DE COMITE', '', 'PROYECTO ESPECIAL CHAVIMOCHIC', '', 'Gobierno Regional', 'LA LIBERTAD', 'TRUJILLO', 'TRUJILLO'),
(700, '32945282', 'ZAVALA SOTO MARIO WILLIAM ', 'MARIOZASO@HOTMAIL.COM', 'PRESIDENTE DE COMITE', '', 'PROYECTO ESPECIAL CHINECAS', '', 'Gobierno Regional', 'ANCASH', 'SANTA', 'NUEVO CHIMBOTE'),
(701, '02603031', 'ACLETO OSORIO EDUARDO', 'EACLETO_@HOTMAIL.COM', 'PRESIDENTE DE COMITE', '', 'PROYECTO ESPECIAL CHIRA-PIURA', '', 'Gobierno Regional', 'PIURA', 'PIURA', 'PIURA'),
(702, '80673759', 'CARRILLO LOPEZ WILMER', 'WCARRILLO@PROVIASDES.GOB.PE', 'PRESIDENTE DE COMITE', '', 'PROYECTO ESPECIAL DE INFRAESTRUCTURA DE TRANSPORTE DESCENTRALIZADO PROVIAS DESCENTRALIZADO', '', 'Gobierno Central', 'LIMA', 'LIMA', 'LIMA'),
(703, '04640274', 'SALAZAR TORRES NELLY ALEJANDRA', 'NSALAZAR@PROVIASNAC.GOB.PE', 'PRESIDENTE DE COMITE', '', 'PROYECTO ESPECIAL DE INFRAESTRUCTURA DE TRANSPORTE NACIONAL - PROVIAS NACIONAL', '', 'Gobierno Central', 'LIMA', 'LIMA', 'LIMA'),
(704, '10005583', 'MATIAS LEON JOSE CARLOS', 'AMOGGIANO@CONTRALORIA.GOB.PE', 'PRESIDENTE DE COMITE', '', 'PROYECTO ESPECIAL DE INFRAESTRUCTURA DE TRANSPORTE NACIONAL - PROVIAS NACIONAL', '', 'Gobierno Central', 'LIMA', 'LIMA', 'LIMA'),
(705, '01110478', 'MESTANZA DIAZ NANCY LUZ', 'NMESTANZA@PEHCBM.GOB.PE', 'PRESIDENTE DE COMITE', '', 'PROYECTO ESPECIAL HUALLAGA CENTRAL Y BAJO MAYO', '', 'Gobierno Regional', 'SAN MARTIN', 'SAN MARTIN', 'TARAPOTO'),
(706, '27847012', 'CORDOVA ADRIANZEN MARIO TULIO', 'MCADRIANZEN@HOTMAIL.COM', 'PRESIDENTE DE COMITE', '', 'PROYECTO ESPECIAL JAÉN SAN IGNACIO BAGUA', '', 'Gobierno Central', 'CAJAMARCA', 'JAEN', 'JAEN'),
(707, '05060857', 'FRIAS PERALTA MARIA MIROSLAVA', 'MIROWSLAVAF16@YAHOO.COM', 'PRESIDENTE DE COMITE', '', 'PROYECTO ESPECIAL MADRE DE DIOS (INADE)', '', 'Gobierno Regional', 'MADRE DE DIOS', 'TAHUAMANU', 'IBERIA'),
(708, '04080670', 'BRAVO MOSQUERA JACOBB TELESFORO', 'JACOBBRAVOM@HOTMAIL.COM', 'PRESIDENTE DE COMITE', '', 'PROYECTO ESPECIAL PICHIS PALCAZU', '', 'Gobierno Central', 'JUNIN', 'CHANCHAMAYO', 'CHANCHAMAYO'),
(709, '24003946', 'PEREIRA ALAGON JOSE CARLOS', 'JOSE.PEREIRA@MERISS.GOB.PE', 'PRESIDENTE DE COMITE', '', 'PROYECTO ESPECIAL PLAN MERISS - CUSCO', '', 'Gobierno Regional', 'CUSCO', 'CUSCO', 'WANCHAQ'),
(710, '23977461', 'OSORIO PAIVA IVAN', 'IOSORIO@CONTRALORIA.GOB.PE', 'PRESIDENTE DE COMITE', '', 'PROYECTO ESPECIAL REGIONAL   PLAN COPESCO', '', 'Gobierno Regional', 'CUSCO', 'CUSCO', 'WANCHAQ'),
(711, '41355198', 'GARATE PALACIOS ANTONIO ALEXANDER', 'ANTONIO.GARATE@PASTORGRANDE.GOB.PE', 'PRESIDENTE DE COMITE', '', 'PROYECTO ESPECIAL REGIONAL PASTO GRANDE - MOQUEGUA', '', 'Gobierno Regional', 'MOQUEGUA', 'MARISCAL NIETO', 'MOQUEGUA'),
(712, '15352193', 'MILLONES SANTOYO CESAR AUGUSTO', 'CMILLONES@PETACC.GOB.PE', 'PRESIDENTE DE COMITE', '', 'PROYECTO ESPECIAL TAMBO CCARACOCHA', '', 'Gobierno Regional', 'ICA', 'ICA', 'ICA'),
(713, '06640102', 'LOYOLA GARCIA FRIAS LUIS FELIPE FRANCISCO', 'CTREDBCS@GMAIL.COM', 'PRESIDENTE DE COMITE', '', 'RED DE SALUD BARRANCO CHORRILLOS SURCO', '', 'Gobierno Central', 'LIMA', 'LIMA', 'CHORRILLOS'),
(714, '43549432', 'ALTAMIRANO CAMACHO LUIS', 'LALTAMIRANO@REGIONCUSCO.GOB.PE', 'PRESIDENTE DE COMITE', '', 'RED DE SALUD CANAS CANCHIS ESPINAR - UNIDAD EJECUTORA 401 SALUD CANAS CANCHIS', '', 'Gobierno Regional', 'CUSCO', 'CANCHIS', 'SICUANI'),
(715, '06414203', 'RIOS OLIVOS LUIS ENRIQUE', 'LUISRIOSOL@GMAIL.COM', 'PRESIDENTE DE COMITE', '', 'RED DE SALUD RÍMAC SAN MARTÍN DE PORRES LOS OLIVOS', '', 'Gobierno Central', 'LIMA', 'LIMA', 'RIMAC'),
(716, '09631762', 'COLLAZOS ROMAN SERGIO OSCAR', 'SCOLLAZOS@MINSARSTA.GOB.PE', 'PRESIDENTE DE COMITE', '', 'RED DE SALUD VI TÚPAC AMARU', '', 'Gobierno Central', 'LIMA', 'LIMA', 'INDEPENDENCIA'),
(717, '31041795', 'QUISPE SULLCAHUAMAN ROSA LUZ', 'ROSA-2909@HOTMAIL.COM', 'PRESIDENTE DE COMITE', '', 'RED DE SERVICIOS DE SALUD CUSCO NORTE', '', 'Gobierno Regional', 'CUSCO', 'CUSCO', 'SANTIAGO'),
(718, '25301929', 'SANTA CRUZ CALDERON ZACARIAS', 'ZSANTACRUZ10@HOTMAIL.COM', 'PRESIDENTE DE COMITE', '', 'RED DE SERVICIOS DE SALUD CUSCO SUR', '', 'Gobierno Regional', 'CUSCO', 'CUSCO', 'SAN JERONIMO'),
(719, '23974947', 'CARRILLO PINO FRANK FRED', 'FREDCP27@HOTMAIL.COM', 'PRESIDENTE DE COMITE', '', 'RED DE SERVICIOS DE SALUD LA CONVENCION', '', 'Gobierno Regional', 'CUSCO', 'LA CONVENCION', 'SANTA ANA');
INSERT INTO `pdtes_filtrados` (`id`, `nro_documento`, `apellidos_nombres`, `correo`, `rol`, `codigo`, `nombre_entidad`, `proceso`, `cnig_nombre`, `cdpt_dpto`, `cprv_prov`, `cdst_distrit`) VALUES
(720, '08542067', 'GALLO REJAS ROBERTO ELEUTERIO', 'RGR2510@HOTMAIL.COM', 'PRESIDENTE DE COMITE', '', 'RED DE SERVICIOS DE SALUD SAN JUAN DE MIRAFLORES VILLA MARÍA DEL TRIUNFO', '', 'Gobierno Central', 'LIMA', 'LIMA', 'VILLA MARIA DEL TRIUNFO'),
(721, '21460322', 'ALVAREZ PAREDES JAVIER NATIVIDAD', 'JNALPAR@GMAIL.COM', 'PRESIDENTE DE COMITE', '', 'RED DE SERVICIOS DE SALUD SAN JUAN DE MIRAFLORES VILLA MARÍA DEL TRIUNFO', '', 'Gobierno Central', 'LIMA', 'LIMA', 'VILLA MARIA DEL TRIUNFO'),
(722, '16512585', 'GONZALES ZAVALETA VIDAL', 'RENDICIONDECUENTAS@REGIONSANMARTIN.GOB.PE', 'PRESIDENTE DE COMITE', '', 'REGIÓN SAN MARTÍN -  ALTO HUALLAGA - TOCACHE', '', 'Gobierno Regional', 'SAN MARTIN', 'TOCACHE', 'TOCACHE'),
(723, '07837877', 'BULLON SALAZAR LUIS ALBERTO', 'LBULLON@RENIEC.GOB.PE', 'PRESIDENTE DE COMITE', '', 'REGISTRO NACIONAL DE IDENTIFICACIÓN Y ESTADO CIVIL-RENIEC', '', 'Gobierno Central', 'LIMA', 'LIMA', 'LIMA'),
(724, '19998787', 'HERRERA IBAÑEZ OSCAR GREGORIO', 'HHERRERA@SEDAMHUANCAYO.COM.PE', 'PRESIDENTE DE COMITE', '', 'SEDAM HUANCAYO - EMPRESA DE SERVICIO DE AGUA POTABLE Y ALCANTARILLADO MUNICIPAL HUANCAYO', '', 'Gobierno Local', 'JUNIN', 'HUANCAYO', 'HUANCAYO'),
(725, '06408357', 'RODRIGUEZ CERVANTES CARLOS HERNANDO', 'CRODRIGUEZC@SIS.GOB.PE', 'PRESIDENTE DE COMITE', '', 'SEGURO INTEGRAL DE SALUD', '', 'Gobierno Central', 'LIMA', 'LIMA', 'SAN MIGUEL'),
(726, '06514517', 'DEL CASTILLO MORY JORGE GABRIEL', 'GABRIEL.DEL.CASTILLO@ESSALUD.GOB.PE', 'PRESIDENTE DE COMITE', '', 'SEGURO SOCIAL DE SALUD - ESSALUD', '', 'Gobierno Central', 'LIMA', 'LIMA', 'JESUS MARIA'),
(727, '41836124', 'SATURNO MAURICIO MIRIAM SUSAN', 'MIRIAM.SATURNO@ESSALUD.GOB.PE', 'PRESIDENTE DE COMITE', '', 'SEGURO SOCIAL DE SALUD - ESSALUD', '', 'Gobierno Central', 'LIMA', 'LIMA', 'JESUS MARIA'),
(728, '09850249', 'ANGULO DANERI MAGALI ZOILA ', 'MANGULOD@SERPOST.COM.PE', 'PRESIDENTE DE COMITE', '', 'SERPOST - EMPRESA DE SERVICIOS POSTALES DEL PERÚ S.A.', '', 'Gobierno Central', 'LIMA', 'LIMA', 'LOS OLIVOS'),
(729, '06030273', 'NUÑEZ SANCHEZ NELLY MIRIAM', 'NNUNEZ@SAT.GOB.PE', 'PRESIDENTE DE COMITE', '', 'SERVICIO DE ADMINISTRACIÓN TRIBUTARIA  DE LIMA- SAT LIMA', '', 'Gobierno Local', 'LIMA', 'LIMA', 'LIMA'),
(730, '16727365', 'CARRANZA AVALOS JANET DEL PILAR', 'J_CARRANZA@SATCAJAMARCO.GOB.PE', 'PRESIDENTE DE COMITE', '', 'SERVICIO DE ADMINISTRACION TRIBUTARIA DE CAJAMARCA - SAT CAJAMARCA', '', 'Gobierno Local', 'CAJAMARCA', 'CAJAMARCA', 'CAJAMARCA'),
(731, '06682685', 'OSPINA SALINAS JESUS ROBERTO', 'JOSPINA@SAT-H.GOB.PE', 'PRESIDENTE DE COMITE', '', 'SERVICIO DE ADMINISTRACIÓN TRIBUTARIA DE HUAMANGA MUNICIPAL', '', 'Gobierno Local', 'AYACUCHO', 'HUAMANGA', 'AYACUCHO'),
(732, '19915909', 'TUPPIA GONZALES JOSE LIZANDRO', 'JTUPPIA@SATH.GOB.PE', 'PRESIDENTE DE COMITE', '', 'SERVICIO DE ADMINISTRACIÓN TRIBUTARIA DE HUANCAYO - SAT HUANCAYO', '', 'Gobierno Local', 'JUNIN', 'HUANCAYO', 'HUANCAYO'),
(733, '02880204', 'PASAPERA SEMINARIO CARLOS JACINTO', 'CPASAPERA@SATP.GOB.PE', 'PRESIDENTE DE COMITE', '', 'SERVICIO DE ADMINISTRACIÓN TRIBUTARIA DE PIURA - SAT PIURA', '', 'Gobierno Local', 'PIURA', 'PIURA', 'PIURA'),
(734, '41883007', 'GARCIA MERA LEYDY VANESSA', 'LGARCIA@SATT.GOB.PE', 'PRESIDENTE DE COMITE', '', 'SERVICIO DE ADMINISTRACION TRIBUTARIA DE TRUJILLO - SAT TRUJILLO', '', 'Gobierno Local', 'LA LIBERTAD', 'TRUJILLO', 'TRUJILLO'),
(735, '29636564', 'CORDOVA LIZARRAGA JUAN CARLOS', 'JCORDOVAL@SEDAPAR.COM.PE', 'PRESIDENTE DE COMITE', '', 'SERVICIO DE AGUA POTABLE Y ALCANTARILLADO DE AREQUIPA S.A.', '', 'Gobierno Local', 'AREQUIPA', 'AREQUIPA', 'AREQUIPA'),
(736, '28237356', 'PALACIOS SULCA CESAR RAUL', 'PARAPALACIOS@GMAIL.COM', 'PRESIDENTE DE COMITE', '', 'SERVICIO DE AGUA POTABLE Y ALCANTARILLADO DE AYACUCHO S.A. (SEDA AYACUCHO)', '', 'Gobierno Local', 'AYACUCHO', 'HUAMANGA', 'AYACUCHO'),
(737, '09543761', 'VEGA BALTODANO NEIL MICHAEL', 'NVEGA@SEDAPAL.COM.PE', 'PRESIDENTE DE COMITE', '', 'SERVICIO DE AGUA POTABLE Y ALCANTARILLADO DE LIMA - SEDAPAL', '', 'Gobierno Central', 'LIMA', 'LIMA', 'EL AGUSTINO'),
(738, '00842647', 'RIOS GONZALES NORVINDA', 'FPISCOYA@SEDAPAL.COM.PE', 'PRESIDENTE DE COMITE', '', 'SERVICIO DE AGUA POTABLE Y ALCANTARILLADO DE LIMA - SEDAPAL', '', 'Gobierno Central', 'LIMA', 'LIMA', 'EL AGUSTINO'),
(739, '08426474', 'PISCOYA VERA HECTOR FERNANDO', 'FERNANDOPISCOYA@GMAIL.COM', 'PRESIDENTE DE COMITE', '', 'SERVICIO DE AGUA POTABLE Y ALCANTARILLADO DE LIMA - SEDAPAL', '', 'Gobierno Central', 'LIMA', 'LIMA', 'EL AGUSTINO'),
(740, '10714320', 'AMENERO SAAVEDRA JULIO EDUARDO', 'JAMENERO@SERPAR.GOB.PE', 'PRESIDENTE DE COMITE', '', 'SERVICIO DE PARQUES DE LIMA-SERPAR', '', 'Gobierno Local', 'LIMA', 'LIMA', 'LIMA'),
(741, '09643390', 'VALCARCEL RIVA RODOLFO MARTIN', 'RVALCARCEL@SERNANP.GOB.PE', 'PRESIDENTE DE COMITE', '', 'SERVICIO NACIONAL DE ÁREAS NATURALES PROTEGIDAS POR EL ESTADO', '', 'Gobierno Central', 'LIMA', 'LIMA', 'SAN ISIDRO'),
(742, '06623813', 'OBERTI IZQUIERDO RICARDO AUGUSTO', 'ROBERTI@SENCICO.GOB.PE', 'PRESIDENTE DE COMITE', '', 'SERVICIO NACIONAL DE CAPACITACIÓN PARA LA INDUSTRIA DE LA CONSTRUCCIÓN - SENCICO', '', 'Gobierno Central', 'LIMA', 'LIMA', 'SAN BORJA'),
(743, '07631637', 'ROJAS CUESTA MARY', 'MROJAS@SENACE.GOB.PE', 'PRESIDENTE DE COMITE', '', 'SERVICIO NACIONAL DE CERTIFICACIÓN AMBIENTAL PARA LAS INVERSIONES SOSTENIBLES', '', 'Gobierno Central', 'LIMA', 'LIMA', 'MIRAFLORES'),
(744, '09385633', 'CHAVARRY CORREA ALCIDES PELAYO', 'ACHAVARRY@SENAMHI.GOB.PE', 'PRESIDENTE DE COMITE', '', 'SERVICIO NACIONAL DE METEOROLOGÍA E HIDROLOGÍA DEL PERÚ - SENAMHI', '', 'Gobierno Central', 'LIMA', 'LIMA', 'JESUS MARIA'),
(745, '07620368', 'BARRENECHEA CABRERA JORGE CESAR RODRIGO', 'JBARRRENECHEA@SENASA.GOB.PE', 'PRESIDENTE DE COMITE', '', 'SERVICIO NACIONAL DE SANIDAD AGRARIA - SENASA', '', 'Gobierno Central', 'LIMA', 'LIMA', 'LA MOLINA'),
(746, '07179412', 'GOMEZ CASTRO OSCAR ENRIQUE', 'OGOMEZ@SERFOR.GOB.PE', 'PRESIDENTE DE COMITE', '', 'SERVICIO NACIONAL FORESTAL Y DE FAUNA SILVESTRE', '', 'Gobierno Central', 'LIMA', 'LIMA', 'LA MOLINA'),
(747, '26606571', 'LOZANO CABRERA JUAN BAUDELIO', 'JLOZANO@SEDALIB.COM.PE', 'PRESIDENTE DE COMITE', '', 'SERVICIOS DE AGUA POTABLE Y ALCANTARILLADO DE LA LIBERTAD S.A.', '', 'Gobierno Local', 'LA LIBERTAD', 'TRUJILLO', 'TRUJILLO'),
(748, '18135475', 'RODRIGUEZ ROJAS ROGER SANTIAGO', 'ACUARIOGARCIA425@HOTMAIL.COM', 'PRESIDENTE DE COMITE', '', 'SERVICIOS DE AGUA POTABLE Y ALCANTARILLADO DE LA LIBERTAD S.A.', '', 'Gobierno Local', 'LA LIBERTAD', 'TRUJILLO', 'TRUJILLO'),
(749, '43388360', 'DEL ALAMO CARRILLO HERBERT JOSE', 'HERBERTDELALAMO@SIMA.COM.PE', 'PRESIDENTE DE COMITE', '', 'SERVICIOS INDUSTRIALES DE LA MARINA S.A. - SIMA PERU', '', 'Gobierno Central', 'P. C. DEL CALLAO', 'PROV. CONST. DEL CALLAO', 'CALLAO'),
(750, '25554491', 'CORDANO RODRIGUEZ MIGUEL FRANCISCO', 'MIGUEL.CORDANO@SIERRAEXPORTADORA.GOB.PE', 'PRESIDENTE DE COMITE', '', 'SIERRA Y SELVA EXPORTADORA', '', 'Gobierno Central', 'LIMA', 'LIMA', 'SAN ISIDRO'),
(751, '25707675', 'LLANOS PONCE LUIS ALBERTO', 'LUIS.LLANOS@SISOL.GOB.PE', 'PRESIDENTE DE COMITE', '', 'SISTEMA METROPOLITANO DE LA SOLIDARIDAD - SISOL', '', 'Gobierno Local', 'LIMA', 'LIMA', 'SAN ISIDRO'),
(752, '09895379', 'MENDOZA PERALTA ERWIN JAVIER', 'EMENDOZA@SBLM.GOB.PE', 'PRESIDENTE DE COMITE', '', 'SOCIEDAD DE BENEFICENCIA DE LIMA METROPOLITANA', '', 'Gobierno Central', 'LIMA', 'LIMA', 'LIMA'),
(753, '10764064', 'YABAR CASTILLO MILUZKA', 'MILUSKAYC@HOTMAIL.COM', 'PRESIDENTE DE COMITE', '', 'SOCIEDAD DE BENEFICENCIA PÚBLICA  DE AREQUIPA', '', 'Gobierno Central', 'AREQUIPA', 'AREQUIPA', 'AREQUIPA'),
(754, '15345849', 'ARDILES GUTIERREZ JOSE MARIA', 'KULLCO07@HOTMAIL.COM', 'PRESIDENTE DE COMITE', '', 'SOCIEDAD DE BENEFICENCIA PUBLICA DE CAÑETE-LIMA', '', 'Gobierno Central', 'LIMA', 'CAÑETE', 'SAN VICENTE DE CAÑETE'),
(755, '16724754', 'CHAVEZ ALARCON MARTHA ELIZABETH', 'MCHAVEZ@SBCH.GOB.PE', 'PRESIDENTE DE COMITE', '', 'SOCIEDAD DE BENEFICENCIA PÚBLICA DE CHICLAYO', '', 'Gobierno Central', 'LAMBAYEQUE', 'CHICLAYO', 'CHICLAYO'),
(756, '32796239', 'MIRANDA CALDAS ALEJANDRO MAGNO', 'ALEJANDROMIRANDACALDAS@GMAIL.COM', 'PRESIDENTE DE COMITE', '', 'SOCIEDAD DE BENEFICENCIA PÚBLICA DE CHIMBOTE', '', 'Gobierno Central', 'ANCASH', 'SANTA', 'CHIMBOTE'),
(757, '15583062', 'COLLANTES ROSSEL MARIA DEL ROSARIO', 'MRCOLLANTESR@HOTMAIL.COM', 'PRESIDENTE DE COMITE', '', 'SOCIEDAD DE BENEFICENCIA PÚBLICA DE HUACHO', '', 'Gobierno Central', 'LIMA', 'HUAURA', 'HUACHO'),
(758, '20023486', 'LIPA MATOS JOSE LUIS', 'JLLIPA@SDH.GOB.PE', 'PRESIDENTE DE COMITE', '', 'SOCIEDAD DE BENEFICENCIA PÚBLICA DE HUANCAYO', '', 'Gobierno Central', 'JUNIN', 'HUANCAYO', 'HUANCAYO'),
(759, '20102396', 'HERMOZA KNUTZEN PAUL ENRIQUE', 'ENRIQUEHERMOZA197@GMAIL.COM', 'PRESIDENTE DE COMITE', '', 'SOCIEDAD DE BENEFICENCIA PÚBLICA DE HUANCAYO', '', 'Gobierno Central', 'JUNIN', 'HUANCAYO', 'HUANCAYO'),
(760, '00485249', 'PALACIOS QUIROZ MARIA ELENA', 'MPALACIOSQ@BENEFICENCIATACNA.GOB.PE', 'PRESIDENTE DE COMITE', '', 'SOCIEDAD DE BENEFICENCIA PÚBLICA DE TACNA', '', 'Gobierno Central', 'TACNA', 'TACNA', 'TACNA'),
(761, '18135041', 'PACHECO DE MEDRANO REGINA GRACIELA', 'RPACHECO@SBPTRUJILLO.GOB.PE', 'PRESIDENTE DE COMITE', '', 'SOCIEDAD DE BENEFICENCIA PUBLICA DE TRUJILLO', '', 'Gobierno Central', 'LA LIBERTAD', 'TRUJILLO', 'TRUJILLO'),
(762, '08784275', 'BONDY SEGUIN LUIS ROBERTO', 'GERENCIAGENERAL@SBPCALLAO.GOB.PE', 'PRESIDENTE DE COMITE', '', 'SOCIEDAD DE BENEFICENCIA PÚBLICA DEL CALLAO', '', 'Gobierno Central', 'P. C. DEL CALLAO', 'PROV. CONST. DEL CALLAO', 'CALLAO'),
(763, '20114197', 'JACOME ROJAS GREGORIO EMANUEL', 'GJACOME@SEAL.COM.PE', 'PRESIDENTE DE COMITE', '', 'SOCIEDAD ELÉCTRICA DEL SUR OESTE S.A. (SEAL)', '', 'Gobierno Central', 'AREQUIPA', 'AREQUIPA', 'AREQUIPA'),
(764, '40388076', 'VELIZ VIZCARDO GIANCARLO CHRISTIAN', 'GVELIZ@SEAL.COM.PE', 'PRESIDENTE DE COMITE', '', 'SOCIEDAD ELÉCTRICA DEL SUR OESTE S.A. (SEAL)', '', 'Gobierno Central', 'AREQUIPA', 'AREQUIPA', 'AREQUIPA'),
(765, '42031566', 'CERVANTES ENCINAS SAMUEL', 'RENDICIONDECUENTAS@REGIONSANMARTIN.GOB.PE', 'PRESIDENTE DE COMITE', '', 'SUB REGIÓN HUALLAGA CENTRAL-JUANJUÍ', '', 'Gobierno Regional', 'SAN MARTIN', 'MARISCAL CACERES', 'JUANJUI'),
(766, '09300344', 'BABA ARIMA JUAN ALBERTO', 'JBABA@SBS.GOB.PE', 'PRESIDENTE DE COMITE', '', 'SUPERINTENDENCIA DE BANCA SEGUROS Y AFP - SBS', '', 'Gobierno Central', 'LIMA', 'LIMA', 'SAN ISIDRO'),
(767, '10770560', 'REGALADO TAMAYO RAUL', 'RREGALADO@SUTRAN.GOB.PE', 'PRESIDENTE DE COMITE', '', 'SUPERINTENDENCIA DE TRANSPORTE TERRESTRE DE PERSONAS, CARGA Y MERCANCÍAS', '', 'Gobierno Central', 'LIMA', 'LIMA', 'LINCE'),
(768, '07781121', 'VARGAS PIÑA JULIO CESAR', 'JVARGAS@SMV.GOB.PE', 'PRESIDENTE DE COMITE', '', 'SUPERINTENDENCIA DEL MERCADO DE VALORES (EX- CONASEV)', '', 'Gobierno Central', 'LIMA', 'LIMA', 'MIRAFLORES'),
(769, '10623813', 'BENAVENTE RAMIREZ ZULEMA', 'ZBENAVENTE@SUCAMEC.GOB.PE', 'PRESIDENTE DE COMITE', '', 'SUPERINTENDENCIA NAC DE CONTROL DE SERV. DE SEG.ARMAS,MUNICIONES Y EXPLOSIVOS DE USO CIVIL', '', 'Gobierno Central', 'LIMA', 'LIMA', 'MAGDALENA DEL MAR'),
(770, '08737614', 'SHULCA MONGE MIGUEL ARMANDO', 'MSHULCA@SUNAT.GOB.PE', 'PRESIDENTE DE COMITE', '', 'SUPERINTENDENCIA NACIONAL DE ADUANAS Y DE ADMINISTRACIÓN TRIBUTARIA.', '', 'Gobierno Central', 'LIMA', 'LIMA', 'LIMA'),
(771, '07932870', 'GARCIA COSSIO LUIS ARTURO', 'LGARCIA@SBN.GOB.PE', 'PRESIDENTE DE COMITE', '', 'SUPERINTENDENCIA NACIONAL DE BIENES ESTATALES', '', 'Gobierno Central', 'LIMA', 'LIMA', 'SAN ISIDRO'),
(772, '06601681', 'NUÑEZ VILLENA ELIZABETH JESUS', ' ELIZABETHNUNEZ@SUNEDU.GOB.PE', 'PRESIDENTE DE COMITE', '', 'SUPERINTENDENCIA NACIONAL DE EDUCACIÓN SUPERIOR UNIVERSITARIA - SUNEDU', '', 'Gobierno Central', 'LIMA', 'LIMA', 'SANTIAGO DE SURCO'),
(773, '07634481', 'ROZAS VALVERDE ANA KARINA', 'KARINAROZAS@SUNEDU.GOB.PE', 'PRESIDENTE DE COMITE', '', 'SUPERINTENDENCIA NACIONAL DE EDUCACIÓN SUPERIOR UNIVERSITARIA - SUNEDU', '', 'Gobierno Central', 'LIMA', 'LIMA', 'SANTIAGO DE SURCO'),
(774, '07257699', 'VASQUEZ VINCES LUCY TERESA', 'LVASQUEZV@SUNAFIL.GOB.PE', 'PRESIDENTE DE COMITE', '', 'SUPERINTENDENCIA NACIONAL DE FISCALIZACIÓN LABORAL', '', 'Gobierno Central', 'LIMA', 'LIMA', 'JESUS MARIA'),
(775, '05398118', 'SEVILLA ECHEVARRIA EDUARDO ALFONSO', 'ESEVILLA@MIGRACIONES.GOB.PE', 'PRESIDENTE DE COMITE', '', 'SUPERINTENDENCIA NACIONAL DE MIGRACIONES', '', 'Gobierno Central', 'LIMA', 'LIMA', 'BREÑA'),
(776, '16681525', 'POTOZEN BRACO BORIS GONZALO', 'BPOTOZEN@MIGRACIONES.GOB.PE', 'PRESIDENTE DE COMITE', '', 'SUPERINTENDENCIA NACIONAL DE MIGRACIONES', '', 'Gobierno Central', 'LIMA', 'LIMA', 'BREÑA'),
(777, '09533481', 'ALVARADO GALLARDO ALEJANDRO ALVARO', 'AALVARADO@SUSALUD.GOB.PE', 'PRESIDENTE DE COMITE', '', 'SUPERINTENDENCIA NACIONAL DE SALUD', '', 'Gobierno Central', 'LIMA', 'LIMA', 'SANTIAGO DE SURCO'),
(778, '10223936', 'POBLETE MIERA JORGE', 'JPOBLETE@CONTRALORIA.GOB.PE', 'PRESIDENTE DE COMITE', '', 'SUPERINTENDENCIA NACIONAL DE SERVICIOS DE SANEAMIENTO - SUNASS', '', 'Gobierno Central', 'LIMA', 'LIMA', 'MAGDALENA DEL MAR'),
(779, '09277336', 'FERRER TAFUR HECTOR', 'HFERRER@SUNASS.GOB.PE', 'PRESIDENTE DE COMITE', '', 'SUPERINTENDENCIA NACIONAL DE SERVICIOS DE SANEAMIENTO - SUNASS', '', 'Gobierno Central', 'LIMA', 'LIMA', 'MAGDALENA DEL MAR'),
(780, '27741927', 'DELGADO AGUILAR HECTOR', 'HDAPPTO@HOTMAIL.COM', 'PRESIDENTE DE COMITE', '', 'UNIDAD DE GESTIÓN  EDUCATIVA LOCAL JAÉN - UGEL JAÉN', '', 'Gobierno Regional', 'CAJAMARCA', 'JAEN', 'JAEN'),
(781, '32136932', 'LOMOTE HUERTA CECILIO WILLIAM', 'WILLIAMLOMOTE@HOTMAIL.COM', 'PRESIDENTE DE COMITE', '', 'UNIDAD DE GESTIÓN  EDUCATIVA LOCAL JULCAN - LA LIBERTAD - UGEL JULCAN', '', 'Gobierno Regional', 'LA LIBERTAD', 'JULCAN', 'JULCAN'),
(782, '21882542', 'YALLE TABOADA EDITH ALEXANDRA', 'EDITH.YALLET@GMAIL.COM', 'PRESIDENTE DE COMITE', '', 'UNIDAD DE GESTIÓN EDUCATIVA  LOCAL HUARAZ - UGEL HUARAZ', '', 'Gobierno Regional', 'ANCASH', 'HUARAZ', 'HUARAZ'),
(783, '21862178', 'PACHAS REQUENA MARIA MERCEDES', 'MPACHAS@UGEL03.GOB.PE', 'PRESIDENTE DE COMITE', '', 'UNIDAD DE GESTIÓN EDUCATIVA LOCAL  03', '', 'Gobierno Central', 'LIMA', 'LIMA', 'LIMA'),
(784, '21815782', 'YATACO RAMIREZ LUIS ALBERTO', 'LYATACOR@UGEL01.GOB.PE', 'PRESIDENTE DE COMITE', '', 'UNIDAD DE GESTIÓN EDUCATIVA LOCAL 01', '', 'Gobierno Central', 'LIMA', 'LIMA', 'SAN JUAN DE MIRAFLORES'),
(785, '31653337', 'MELGAREJO HERRERA DORIS MARTHA', 'DORIS.MELGAREJO@UGEL02.GOB.PE', 'PRESIDENTE DE COMITE', '', 'UNIDAD DE GESTIÓN EDUCATIVA LOCAL 02', '', 'Gobierno Central', 'LIMA', 'LIMA', 'SAN MARTIN DE PORRES'),
(786, '02633584', 'PASAPERA CALLE AURELIA', 'AURELIA.PASAPERA@UGEL02.GOB.PE', 'PRESIDENTE DE COMITE', '', 'UNIDAD DE GESTIÓN EDUCATIVA LOCAL 02', '', 'Gobierno Central', 'LIMA', 'LIMA', 'SAN MARTIN DE PORRES'),
(787, '06245330', 'GARCIA PARDO MEDALITH GRACIELA', 'MEDALITH.GARCIA@UGEL04.GOB.PE', 'PRESIDENTE DE COMITE', '', 'UNIDAD DE GESTIÓN EDUCATIVA LOCAL 04', '', 'Gobierno Central', 'LIMA', 'LIMA', 'COMAS'),
(788, '25776879', 'MUÑOZ TUESTA ELVA MILAGROS', 'ELVAMUNOZ@GMAIL.COM', 'PRESIDENTE DE COMITE', '', 'UNIDAD DE GESTIÓN EDUCATIVA LOCAL 05', '', 'Gobierno Central', 'LIMA', 'LIMA', 'SAN JUAN DE LURIGANCHO'),
(789, '07734734', 'RAMIREZ BACA MARIA MILAGROS ALEJANDRINA', 'MRAMIREZ@UGEL06.GOB.PE', 'PRESIDENTE DE COMITE', '', 'UNIDAD DE GESTIÓN EDUCATIVA LOCAL 06', '', 'Gobierno Central', 'LIMA', 'LIMA', 'ATE'),
(790, '04652322', 'PUMA HUACAC EDGAR FREDY', 'EPUMA@UGEL07.GOB.PE', 'PRESIDENTE DE COMITE', '', 'UNIDAD DE GESTIÓN EDUCATIVA LOCAL 07', '', 'Gobierno Central', 'LIMA', 'LIMA', 'SAN BORJA'),
(791, '16683301', 'MARINI SALDAÑA ROSA YSABEL', 'RMARINI@UGEL08CANETE.GOB.PE', 'PRESIDENTE DE COMITE', '', 'UNIDAD DE GESTIÓN EDUCATIVA LOCAL 08 CAÑETE UGEL 08 CAÑETE', '', 'Gobierno Regional', 'LIMA', 'CAÑETE', 'SAN VICENTE DE CAÑETE'),
(792, '23940330', 'HUACAC GUZMAN GLADIS NANCY', 'GLADISNANCYHG@GMAIL.COM', 'PRESIDENTE DE COMITE', '', 'UNIDAD DE GESTIÓN EDUCATIVA LOCAL ACOMAYO - UGEL ACOMAYO', '', 'Gobierno Regional', 'CUSCO', 'ACOMAYO', 'ACOMAYO'),
(793, '23931143', 'CALDERON PIMENTEL CARINA', 'CARINACALDERON25@GMAIL.COM', 'PRESIDENTE DE COMITE', '', 'UNIDAD DE GESTIÓN EDUCATIVA LOCAL ANTA - UGEL ANTA', '', 'Gobierno Regional', 'CUSCO', 'ANTA', 'ANTA'),
(794, '32804972', 'LECCA RIVERA RUBEN EMILIANO', 'RUBENLECCA@HOTMAIL.COM', 'PRESIDENTE DE COMITE', '', 'UNIDAD DE GESTION EDUCATIVA LOCAL ASUNCION  CHACAS - UGEL ASUNCION', '', 'Gobierno Regional', 'ANCASH', 'ASUNCION', 'CHACAS'),
(795, '00868298', 'VELA RAMIREZ VICTOR', 'VITOCHOVELA@HOTMAIL.COM', 'PRESIDENTE DE COMITE', '', 'UNIDAD DE GESTION EDUCATIVA LOCAL BELLAVISTA - UGEL BELLAVISTA', '', 'Gobierno Regional', 'SAN MARTIN', 'BELLAVISTA', 'BELLAVISTA'),
(796, '26694571', 'MARTOS GUEVARA JOSEPH VLADIMIR', 'JOSEPH-MARTOS@HOTMAIL.COM', 'PRESIDENTE DE COMITE', '', 'UNIDAD DE GESTION EDUCATIVA LOCAL CAJABAMBA - UGEL CAJABAMBA', '', 'Gobierno Regional', 'CAJAMARCA', 'CAJABAMBA', 'CAJABAMBA'),
(797, '23990168', 'CARBAJAL MARCONI IVAN', 'UNIDADEJECUTORA311@UGELCALCA.GOB.PE', 'PRESIDENTE DE COMITE', '', 'UNIDAD DE GESTION EDUCATIVA LOCAL CALCA - UGEL CALCA', '', 'Gobierno Regional', 'CUSCO', 'CALCA', 'CALCA'),
(798, '24675740', 'ZAVALETA QUISPE MARIO ARCADIO', 'MZAVALETAQ@GMAIL.COM', 'PRESIDENTE DE COMITE', '', 'UNIDAD DE GESTIÓN EDUCATIVA LOCAL CANAS - UGEL CANAS', '', 'Gobierno Regional', 'CUSCO', 'CANAS', 'YANAOCA'),
(799, '24709437', 'CCALLE MAXI HENRY ADRIAN', 'HENRYADRIANCCALLE@HOTMAIL.COM', 'PRESIDENTE DE COMITE', '', 'UNIDAD DE GESTION EDUCATIVA LOCAL CANCHIS - UGEL CANCHIS', '', 'Gobierno Regional', 'CUSCO', 'CANCHIS', 'SICUANI'),
(800, '31608197', 'ZEBALLOS COLLAS MARIA DEL PILAR', 'PILARZC@HOTMAIL.COM', 'PRESIDENTE DE COMITE', '', 'UNIDAD DE GESTIÓN EDUCATIVA LOCAL CARHUAZ - ANCASH - UGEL CARHUAZ', '', 'Gobierno Regional', 'ANCASH', 'CARHUAZ', 'CARHUAZ'),
(801, '46493244', 'GONZALES BLANCO YOHAN GABRIEL', 'YGONZALESBLANCO@GMAIL.COM', 'PRESIDENTE DE COMITE', '', 'UNIDAD DE GESTIÓN EDUCATIVA LOCAL CARLOS FERMÍN FITZCARRALD SAN LUIS - UGEL FITZCARRALD', '', 'Gobierno Regional', 'ANCASH', 'CARLOS FERMIN FITZCARRALD', 'SAN LUIS'),
(802, '16673819', 'BALCAZAR QUINTANA DARIO', 'COLEGIOAMIGOS@HOTMAIL.COM', 'PRESIDENTE DE COMITE', '', 'UNIDAD DE GESTION EDUCATIVA LOCAL CHICLAYO - UGEL CHICLAYO', '', 'Gobierno Regional', 'LAMBAYEQUE', 'CHICLAYO', 'CHICLAYO'),
(803, '27375191', 'IDROGO BUSTAMANTE ERMITAÑO', 'ERIDBU21@GMAIL.COM', 'PRESIDENTE DE COMITE', '', 'UNIDAD DE GESTIÓN EDUCATIVA LOCAL CHOTA', '', 'Gobierno Regional', 'CAJAMARCA', 'CHOTA', 'CHOTA'),
(804, '23900500', 'HUAYLLANI PUMA FERNANDO FELIX', 'FERHUAYLLANI@HOTMAIL.COM', 'PRESIDENTE DE COMITE', '', 'UNIDAD DE GESTION EDUCATIVA LOCAL CHUMBIVILCAS - UGEL CHUMBIVILCAS', '', 'Gobierno Regional', 'CUSCO', 'CHUMBIVILCAS', 'SANTO TOMAS'),
(805, '27395536', 'GUEVARA PEREZ GODOFREDO', 'GUGUEPER@GMAIL.COM', 'PRESIDENTE DE COMITE', '', 'UNIDAD DE GESTION EDUCATIVA LOCAL CONTUMAZA - UGEL CONTUMAZA', '', 'Gobierno Regional', 'CAJAMARCA', 'CONTUMAZA', 'CONTUMAZA'),
(806, '00008176', 'CAMPOS ROJAS LILY', 'LILYCAM1974@GMAIL.COM', 'PRESIDENTE DE COMITE', '', 'UNIDAD DE GESTIÓN EDUCATIVA LOCAL CORONEL PORTILLO - UGEL CORONEL PORTILLO', '', 'Gobierno Regional', 'UCAYALI', 'CORONEL PORTILLO', 'MANANTAY'),
(807, '24365203', 'CARRION NINAN ANDRES ABELINO', 'CARRION105@YAHOO.COM', 'PRESIDENTE DE COMITE', '', 'UNIDAD DE GESTIÓN EDUCATIVA LOCAL CUSCO - UGEL CUSCO', '', 'Gobierno Regional', 'CUSCO', 'CUSCO', 'CUSCO'),
(808, '07253394', 'FUENTES CORONADO ROBINSON CARMELO', 'ROBINSON7FUENTES7@HOTMAIL.COM', 'PRESIDENTE DE COMITE', '', 'UNIDAD DE GESTION EDUCATIVA LOCAL HUANCASANCOS - UGEL HUANCASANCOS', '', 'Gobierno Regional', 'AYACUCHO', 'HUANCA SANCOS', 'SANCOS'),
(809, '32118978', 'QUINDE MENA DOMINGO VICENTE', 'DOMINGOQUINDE@HOTMAIL.COM', 'PRESIDENTE DE COMITE', '', 'UNIDAD DE GESTIÓN EDUCATIVA LOCAL HUARMEY - UGEL HUARMEY', '', 'Gobierno Regional', 'ANCASH', 'HUARMEY', 'HUARMEY'),
(810, '31679043', 'MANRIQUE AGAMA FULMER OLMEDO', 'FULMERMAN25@GMAIL.COM', 'PRESIDENTE DE COMITE', '', 'UNIDAD DE GESTIÓN EDUCATIVA LOCAL HUAYLAS - UGEL HUAYLAS', '', 'Gobierno Regional', 'ANCASH', 'HUAYLAS', 'CARAZ'),
(811, '04748859', 'ROSALES CASTILLO ROSA ELENA', 'ROSSAEL_21031@HOTMAIL.COM', 'PRESIDENTE DE COMITE', '', 'UNIDAD DE GESTIÓN EDUCATIVA LOCAL ILO - UGEL ILO', '', 'Gobierno Regional', 'MOQUEGUA', 'ILO', 'ILO'),
(812, '25304151', 'GARCIA CAVIEDES MIGUEL ANGEL', 'MIGARCICAVI@GMAIL.COM', 'PRESIDENTE DE COMITE', '', 'UNIDAD DE GESTIÓN EDUCATIVA LOCAL LA CONVENCIÓN - UGEL LA CONVENCIÓN', '', 'Gobierno Regional', 'CUSCO', 'LA CONVENCION', 'SANTA ANA'),
(813, '40575670', 'VILLAVERDE BETALLELUZ RAMIRO', 'RAM_BETA@HOTMAIL.COM', 'PRESIDENTE DE COMITE', '', 'UNIDAD DE GESTIÓN EDUCATIVA LOCAL LA MAR - UGEL LA MAR', '', 'Gobierno Regional', 'AYACUCHO', 'LA MAR', 'SAN MIGUEL'),
(814, '01134860', 'TORRES DAVILA ANGEL', 'ANGELTD65@HOTMAIL.COM', 'PRESIDENTE DE COMITE', '', 'UNIDAD DE GESTION EDUCATIVA LOCAL LAMAS - UGEL LAMAS', '', 'Gobierno Regional', 'SAN MARTIN', 'LAMAS', 'LAMAS'),
(815, '21409986', 'CHANGA CAMPOS CESAR RAUL', 'CESARRAULLUCANAS2016@GMAIL.COM', 'PRESIDENTE DE COMITE', '', 'UNIDAD DE GESTIÓN EDUCATIVA LOCAL LUCANAS PUQUIO - UGEL LUCANAS', '', 'Gobierno Regional', 'AYACUCHO', 'LUCANAS', 'PUQUIO'),
(816, '22430975', 'CARDENAS QUISPE GRETEL BELDAD', 'GEMA_BELDAD_7@HOTMAIL.COM', 'PRESIDENTE DE COMITE', '', 'UNIDAD DE GESTIÓN EDUCATIVA LOCAL MARAÑÓN HUACRACHUCO - UGEL MARAÑÓN', '', 'Gobierno Regional', 'HUANUCO', 'MARAÑON', 'HUACRACHUCO'),
(817, '00968205', 'PINEDO LOPEZ NEPTON', 'NEPILO60@HOTMAIL.COM', 'PRESIDENTE DE COMITE', '', 'UNIDAD DE GESTIÓN EDUCATIVA LOCAL MARISCAL CÁCERES -JUANJUI', '', 'Gobierno Regional', 'SAN MARTIN', 'MARISCAL CACERES', 'JUANJUI'),
(818, '16404761', 'LLAJA RAMIREZ BENJAMIN', 'J-ALVAREZT@HOTMAIL.COM', 'PRESIDENTE DE COMITE', '', 'UNIDAD DE GESTIÓN EDUCATIVA LOCAL MARISCAL RAMÓN CASTILLA CABALLOCOCHA - UGEL R. CASTILLA', '', 'Gobierno Regional', 'LORETO', 'MARISCAL RAMON CASTILLA', 'RAMON CASTILLA'),
(819, '06696349', 'CCORIMANYA HUICHI ATILIA VICTORIA', 'ATILIA_CH@HOTMAIL.COM', 'PRESIDENTE DE COMITE', '', 'UNIDAD DE GESTIÓN EDUCATIVA LOCAL PARINACOCHAS', '', 'Gobierno Regional', 'AYACUCHO', 'PARINACOCHAS', 'CORACORA'),
(820, '25319623', 'RIVAS GAMBOA YURI', 'JYTO88@HOTMAIL.COM', 'PRESIDENTE DE COMITE', '', 'UNIDAD DE GESTIÓN EDUCATIVA LOCAL PARURO - UGEL PARURO', '', 'Gobierno Regional', 'CUSCO', 'PARURO', 'PARURO'),
(821, '23986317', 'PAZ PEÑA NANCY MADELEINE', 'NANCY_112233@HOTMAIL.COM', 'PRESIDENTE DE COMITE', '', 'UNIDAD DE GESTIÓN EDUCATIVA LOCAL PAUCARTAMBO - UGEL PAUCARTAMBO', '', 'Gobierno Regional', 'CUSCO', 'PAUCARTAMBO', 'PAUCARTAMBO'),
(822, '23808333', 'ÑAHUI HUILLCA SATURNINO', 'SNAHUI10@GMAIL.COM', 'PRESIDENTE DE COMITE', '', 'UNIDAD DE GESTIÓN EDUCATIVA LOCAL QUISPICANCHIS - UGEL QUISPICANCHIS', '', 'Gobierno Regional', 'CUSCO', 'QUISPICANCHI', 'HUARO'),
(823, '42706125', 'VASQUEZ EDQUEN SEGUNDO FERNANDO', 'FER4270@HOTMAIL.COM', 'PRESIDENTE DE COMITE', '', 'UNIDAD DE GESTION EDUCATIVA LOCAL RIOJA - UGEL RIOJA', '', 'Gobierno Regional', 'SAN MARTIN', 'RIOJA', 'RIOJA'),
(824, '27725625', 'GONZALES CRUZ OSCAR', 'OSCAR6263@HOTMAIL.COM', 'PRESIDENTE DE COMITE', '', 'UNIDAD DE GESTIÓN EDUCATIVA LOCAL SAN IGNACIO - UGEL SAN IGNACIO', '', 'Gobierno Regional', 'CAJAMARCA', 'SAN IGNACIO', 'SAN IGNACIO'),
(825, '40451223', 'VASQUEZ SANCHEZ HENRY RAFAEL', 'HENRYRVS23@HOTMAIL.COM', 'PRESIDENTE DE COMITE', '', 'UNIDAD DE GESTION EDUCATIVA LOCAL SAN MARCOS - UGEL SAN MARCOS', '', 'Gobierno Regional', 'CAJAMARCA', 'SAN MARCOS', 'PEDRO GALVEZ'),
(826, '01123333', 'CARRANZA GARCIA CARMEN ROSA', 'CARRANCITA21@HOTMAIL.COM', 'PRESIDENTE DE COMITE', '', 'UNIDAD DE GESTIÓN EDUCATIVA LOCAL SAN MARTIN - TARAPOTO - UGEL SAN MARTIN', '', 'Gobierno Regional', 'SAN MARTIN', 'SAN MARTIN', 'TARAPOTO'),
(827, '45869088', 'SANCHEZ MERA TITO', 'ASESORIA@UGELSANMIGUEL.GOB.PE', 'PRESIDENTE DE COMITE', '', 'UNIDAD DE GESTION EDUCATIVA LOCAL SAN MIGUEL - UGEL SAN MIGUEL', '', 'Gobierno Regional', 'CAJAMARCA', 'SAN MIGUEL', 'SAN MIGUEL'),
(828, '26702812', 'QUIROZ NARVAEZ FERNANDO', 'QUIRNARFER@HOTMAIL.COM', 'PRESIDENTE DE COMITE', '', 'UNIDAD DE GESTION EDUCATIVA LOCAL SAN PABLO - UGEL SAN PABLO', '', 'Gobierno Regional', 'CAJAMARCA', 'SAN PABLO', 'SAN PABLO'),
(829, '16780119', 'EDQUEN CAMPOS JOSE FELIX', 'JOSEEDQUENCAMPOS@HOTMAIL.COM', 'PRESIDENTE DE COMITE', '', 'UNIDAD DE GESTION EDUCATIVA LOCAL SANTA CRUZ - UGEL SANTA CRUZ', '', 'Gobierno Regional', 'CAJAMARCA', 'SANTA CRUZ', 'SANTA CRUZ'),
(830, '08312804', 'SORIA BUSTAMANTE RUBEN ISMAEL', 'DIRECCION2016@UGELSATIPO.EDU.PE', 'PRESIDENTE DE COMITE', '', 'UNIDAD DE GESTION EDUCATIVA LOCAL SATIPO - UGEL SATIPO', '', 'Gobierno Regional', 'JUNIN', 'JUNIN', 'JUNIN'),
(831, '00509132', 'TICONA CALIZAYA GRACIELA LOURDES', 'GRACIELATICONAC@GMAIL.COM', 'PRESIDENTE DE COMITE', '', 'UNIDAD DE GESTIÓN EDUCATIVA LOCAL TACNA - UGEL TACNA', '', 'Gobierno Regional', 'TACNA', 'TACNA', 'TACNA'),
(832, '00962512', 'SALGUERO CONTRERAS FELIX RUBEN', 'FELIXSALGUEROC@GMAIL.COM', 'PRESIDENTE DE COMITE', '', 'UNIDAD DE GESTIÓN EDUCATIVA LOCAL TOCACHE - UGEL TOCACHE', '', 'Gobierno Regional', 'SAN MARTIN', 'TOCACHE', 'TOCACHE'),
(833, '25301405', 'VILLAVICENCIO QUISPE JOSE EDUARDO', 'JOSVILLAVICENCIO7@GMAIL.COM', 'PRESIDENTE DE COMITE', '', 'UNIDAD DE GESTIÓN EDUCATIVA LOCAL URUBAMBA - UGEL URUBAMBA', '', 'Gobierno Regional', 'CUSCO', 'URUBAMBA', 'URUBAMBA'),
(834, '25646078', 'CASTILLO CARRION JULIO CESAR', 'ZONASEGURA8@HOTMAIL.COM', 'PRESIDENTE DE COMITE', '', 'UNIDAD DE GESTIÓN EDUCATIVA LOCAL VENTANILLA - UGEL VENTANILLA', '', 'Gobierno Regional', 'P. C. DEL CALLAO', 'PROV. CONST. DEL CALLAO', 'VENTANILLA'),
(835, '06056637', 'CERONI MENDOZA CAROLINA DEL PILAR', 'CCERONI@MINEDU.GOB.PE', 'PRESIDENTE DE COMITE', '', 'UNIDAD EJECUTORA 120 PROGRAMA NACIONAL DE DOTACION DE MATERIALES EDUCATIVOS', '', 'Gobierno Central', 'LIMA', 'LIMA', 'SAN BORJA'),
(836, '01170097', 'AGUILAR CARTAGENA CARIÑOLI', 'CARINHOLIAGUILAR@GMAIL.COM', 'PRESIDENTE DE COMITE', '', 'UNIDAD EJECUTORA 403 SALUD ALTO HUALLAGA', '', 'Gobierno Regional', 'SAN MARTIN', 'TOCACHE', 'TOCACHE'),
(837, '40166476', 'RONDON VALDIVIA HARDY BENITO', 'TIM23AQP@HOTMAIL.COM', 'PRESIDENTE DE COMITE', '', 'UNIDAD EJECUTORA 408 - HOSPITAL DE ESPINAR.', '', 'Gobierno Regional', 'CUSCO', 'ESPINAR', 'ESPINAR'),
(838, '03651310', 'GUERRERO NAVARRO CESAR AUGUSTO', 'CGUERRERO@REGIONPIURA.GOB.PE', 'PRESIDENTE DE COMITE', '', 'UNIDAD EJECUTORA INSTITUTOS SUPERIORES DE EDUCACIÓN PÚBLICA REGIONAL DE PIURA', '', 'Gobierno Regional', 'PIURA', 'TALARA', 'PARIÑAS'),
(839, '09069894', 'SOTOMAYOR RUIZ RINO NICANOR', 'RINO@LAMOLINA.EDU.PE', 'PRESIDENTE DE COMITE', '', 'UNIVERSIDAD NACIONAL AGRARIA LA MOLINA', '', 'Gobierno Central', 'LIMA', 'LIMA', 'LA MOLINA'),
(840, '23994553', 'TORRES MAYORGA ERIC LEONIDAS', 'LEOTM8@HOTMAIL.COM', 'PRESIDENTE DE COMITE', '', 'UNIVERSIDAD NACIONAL AMAZÓNICA DE MADRE DE DIOS', '', 'Gobierno Central', 'MADRE DE DIOS', 'TAMBOPATA', 'TAMBOPATA'),
(841, '19813316', 'INGA JACAY FORTUNATO TARCISIO', 'INGAJACAYFORTU@HOTMAIL.COM', 'PRESIDENTE DE COMITE', '', 'UNIVERSIDAD NACIONAL DANIEL ALCIDES CARRIÓN - PASCO', '', 'Gobierno Central', 'PASCO', 'PASCO', 'YANACANCHA'),
(842, '17959787', 'RODRIGUEZ ARMAS ANGELA FREMIOT', 'ARODRIGUEZ@UNITRU.EDU.PE', 'PRESIDENTE DE COMITE', '', 'UNIVERSIDAD NACIONAL DE  TRUJILLO', '', 'Gobierno Central', 'LA LIBERTAD', 'TRUJILLO', 'TRUJILLO'),
(843, '10262083', 'CALLUPE CHAVEZ ROCIO DE MILAGRO', 'ROCIOCALLUPE@HOTMAIL.COM', 'PRESIDENTE DE COMITE', '', 'UNIVERSIDAD NACIONAL DE EDUCACIÓN ENRIQUE GUZMÁN Y VALLE - LA CANTUTA', '', 'Gobierno Central', 'LIMA', 'LIMA', 'LURIGANCHO'),
(844, '23267062', 'RAMIREZ RIVERA HUGO RAUL', 'HUGORAULRAMIREZ@GMAIL.COM', 'PRESIDENTE DE COMITE', '', 'UNIVERSIDAD NACIONAL DE HUANCAVELICA', '', 'Gobierno Central', 'HUANCAVELICA', 'HUANCAVELICA', 'HUANCAVELICA'),
(845, '06710050', 'MOSCOSO PALACIOS TERESA VICTORIA', 'TMOSCOSO@UNI.EDU.PE', 'PRESIDENTE DE COMITE', '', 'UNIVERSIDAD NACIONAL DE INGENIERÍA - UNI', '', 'Gobierno Central', 'LIMA', 'LIMA', 'RIMAC'),
(846, '05247581', 'VEGA SANDI CLOVIS MAURO', 'OGA@UNAPIQUITOS.EDU.PE', 'PRESIDENTE DE COMITE', '', 'UNIVERSIDAD NACIONAL DE LA AMAZONIA PERUANA', '', 'Gobierno Central', 'LORETO', 'MAYNAS', 'IQUITOS'),
(847, '03825394', 'CHOQUEHUANCA PANTA AFRANIO DAVID', 'DAVID161052@HOTMAIL.COM', 'PRESIDENTE DE COMITE', '', 'UNIVERSIDAD NACIONAL DE PIURA', '', 'Gobierno Central', 'PIURA', 'PIURA', 'CASTILLA'),
(848, '07618465', 'HIDALGO POZZI ROSSANA HERMINIA', 'RHPOZZI2603@HOTMAIL.COM', 'PRESIDENTE DE COMITE', '', 'UNIVERSIDAD NACIONAL DE SAN MARTÍN - TARAPOTO', '', 'Gobierno Central', 'SAN MARTIN', 'SAN MARTIN', 'TARAPOTO'),
(849, '00118145', 'ELESPURO NAJAR TERESA DE JESUS', 'TETITA2882@HOTMAIL.COM', 'PRESIDENTE DE COMITE', '', 'UNIVERSIDAD NACIONAL DE UCAYALI', '', 'Gobierno Central', 'UCAYALI', 'CORONEL PORTILLO', 'CALLERIA'),
(850, '02407514', 'ANCCO LOZA RODOLFO', 'RANCCO_LOZA@YAHOO.ES', 'PRESIDENTE DE COMITE', '', 'UNIVERSIDAD NACIONAL DEL ALTIPLANO - PUNO', '', 'Gobierno Central', 'PUNO', 'PUNO', 'PUNO'),
(851, '06258176', 'BAZALAR GONZALES LUIS ALBERTO', 'LUIS_BAZALAR@HOTMAIL.COM', 'PRESIDENTE DE COMITE', '', 'UNIVERSIDAD NACIONAL DEL CALLAO', '', 'Gobierno Central', 'P. C. DEL CALLAO', 'PROV. CONST. DEL CALLAO', 'BELLAVISTA'),
(852, '09182020', 'VALLE CANGALAYA JESUS ALFONSO', 'JESUS.VALLE@UNCP.EDU.PE', 'PRESIDENTE DE COMITE', '', 'UNIVERSIDAD NACIONAL DEL CENTRO DEL PERÚ - HUANCAYO', '', 'Gobierno Central', 'JUNIN', 'HUANCAYO', 'EL TAMBO'),
(853, '25683604', 'HIDALGO BAZALAR JESUS ALBERTO', 'PEDRO.COSTA@UNCP.EDU.PE', 'PRESIDENTE DE COMITE', '', 'UNIVERSIDAD NACIONAL DEL CENTRO DEL PERÚ - HUANCAYO', '', 'Gobierno Central', 'JUNIN', 'HUANCAYO', 'EL TAMBO'),
(854, '09742875', 'CONDORI QUISPE JOSE GUALBERTO', 'DIGA@UNFV.EDU.PE', 'PRESIDENTE DE COMITE', '', 'UNIVERSIDAD NACIONAL FEDERICO VILLARREAL', '', 'Gobierno Central', 'LIMA', 'LIMA', 'SAN MIGUEL'),
(855, '22412064', 'VARGAS RONCAL ROSARIO', 'RVRONCAL@HOTMAIL.COM', 'PRESIDENTE DE COMITE', '', 'UNIVERSIDAD NACIONAL HERMILIO VALDIZÁN - HUÁNUCO', '', 'Gobierno Central', 'HUANUCO', 'HUANUCO', 'PILLCO MARCA'),
(856, '23871743', 'APARICIO ARAGON WALTHER BENIGNO', 'HUAYKY@HOTMAIL.COM', 'PRESIDENTE DE COMITE', '', 'UNIVERSIDAD NACIONAL INTERCULTURAL FABIOLA SALAZAR LEGUÍA DE BAGUA', '', 'Gobierno Central', 'AMAZONAS', 'BAGUA', 'BAGUA'),
(857, '00474351', 'DAMIAN LOPEZ GERONIMO VICTOR', 'VICTORDL2@HOTMAIL.COM', 'PRESIDENTE DE COMITE', '', 'UNIVERSIDAD NACIONAL JORGE BASADRE GROHMANN - TACNA', '', 'Gobierno Central', 'TACNA', 'TACNA', 'TACNA'),
(858, '15645216', 'YONG GARCIA GODOFREDO', 'G_YONGARCIA@OUTLOOK.COM', 'PRESIDENTE DE COMITE', '', 'UNIVERSIDAD NACIONAL JOSÉ FAUSTINO SÁNCHEZ CARRIÓN - HUACHO', '', 'Gobierno Central', 'LIMA', 'HUAURA', 'HUACHO'),
(859, '15603574', 'ROMERO ORTIZ MAXIMO', 'MAXROM79@HOTMAIL.COM', 'PRESIDENTE DE COMITE', '', 'UNIVERSIDAD NACIONAL JOSÉ FAUSTINO SÁNCHEZ CARRIÓN - HUACHO', '', 'Gobierno Central', 'LIMA', 'HUAURA', 'HUACHO'),
(860, '41530072', 'FARFAN MUÑOZ IVAR RODRIGO', 'LFARFANM@UNMSM.EDU.PE', 'PRESIDENTE DE COMITE', '', 'UNIVERSIDAD NACIONAL MAYOR DE SAN MARCOS', '', 'Gobierno Central', 'LIMA', 'LIMA', 'LIMA'),
(861, '16497733', 'MENDOZA PESCORAN VIRGINIA EFIGENIA', 'VEMP2003@GMAIL.COM', 'PRESIDENTE DE COMITE', '', 'UNIVERSIDAD NACIONAL PEDRO RUIZ GALLO - LAMBAYEQUE', '', 'Gobierno Central', 'LAMBAYEQUE', 'LAMBAYEQUE', 'LAMBAYEQUE'),
(862, '29286623', 'BOLIVAR DIAZ EDGAR JUAN', 'EBOLIVAR@UNSA.EDU.PE', 'PRESIDENTE DE COMITE', '', 'UNIVERSIDAD NACIONAL SAN AGUSTÍN - AREQUIPA', '', 'Gobierno Central', 'AREQUIPA', 'AREQUIPA', 'AREQUIPA'),
(863, '23817651', 'BORDA PILINCO MANRIQUE', 'VRAD@UNSAAC.EDU.PE', 'PRESIDENTE DE COMITE', '', 'UNIVERSIDAD NACIONAL SAN ANTONIO ABAD-CUSCO', '', 'Gobierno Central', 'CUSCO', 'CUSCO', 'CUSCO'),
(864, '21426599', 'ROCHA ROCHA JAIME LEONARDO', 'JAIMELEONARDOR@GMAIL.COM', 'PRESIDENTE DE COMITE', '', 'UNIVERSIDAD NACIONAL SAN LUIS GONZAGA DE ICA', '', 'Gobierno Central', 'ICA', 'ICA', 'ICA'),
(865, '43327354', 'CASTILLO DE LA TORRE BRAULIO MANUEL', 'BCASTILLO@UNTECS.EDU.PE', 'PRESIDENTE DE COMITE', '', 'UNIVERSIDAD NACIONAL TECNOLÓGICA DE LIMA SUR', '', 'Gobierno Central', 'LIMA', 'LIMA', 'VILLA EL SALVADOR'),
(866, '18216915', 'LUJAN ESPINOZA MARIA NELLY', 'INVESTIGACION@UNTRM.EDU.PE', 'PRESIDENTE DE COMITE', '', 'UNIVERSIDAD NACIONAL TORIBIO RODRÍGUEZ DE MENDOZA DE AMAZONAS', '', 'Gobierno Central', 'AMAZONAS', 'CHACHAPOYAS', 'CHACHAPOYAS'),
(867, '02678560', 'APONTE MONTALBAN JORGE ALBERTO ', 'JAPONTE@ZEDPAITA.COM.PE', 'PRESIDENTE DE COMITE', '', 'ZONA ESPECIAL DE DESARROLLO PAITA - ZED PAITA', '', 'Gobierno Regional', 'PIURA', 'PAITA', 'PAITA'),
(868, '00495585', 'GOMEZ VALENTE XIMENA', 'XGOMEZ@ZOFRATACNA.COM.PE', 'PRESIDENTE DE COMITE', '', 'ZONA FRANCA  Y  ZONA COMERCIAL DE TACNA - ZOFRATACNA', '', 'Gobierno Regional', 'TACNA', 'TACNA', 'TACNA'),
(869, '00411266', 'ORTIZ FAUCHEUX JORGE JESUS', 'JORTIZ@ZOFRATACNA.COM.PE', 'PRESIDENTE DE COMITE', '', 'ZONA FRANCA  Y  ZONA COMERCIAL DE TACNA - ZOFRATACNA', '', 'Gobierno Regional', 'TACNA', 'TACNA', 'TACNA'),
(870, '19082476', 'PANTOJA BARBOZA RAFAEL IVAN', 'RPANTOJA_CHICL@SUNARP.GOB.PE', 'PRESIDENTE DE COMITE', '', 'ZONA REGISTRAL N° II - SEDE CHICLAYO', '', 'Gobierno Central', 'LAMBAYEQUE', 'CHICLAYO', 'CHICLAYO'),
(871, '31654052', 'ROJAS SALAZAR GROVER EDUARDO', 'GROJAS_HUARAZ@SUNARP.GOB.PE', 'PRESIDENTE DE COMITE', '', 'ZONA REGISTRAL N° VII - SEDE HUARAZ', '', 'Gobierno Central', 'ANCASH', 'HUARAZ', 'INDEPENDENCIA'),
(872, '00517062', 'ALZAMORA CANCINO BRENO ULIANOF', 'BALZAMORA_ABANC@SUNARP.GOB.PE', 'PRESIDENTE DE COMITE', '', 'ZONA REGISTRAL N° X  -SEDE CUSCO', '', 'Gobierno Central', 'CUSCO', 'CUSCO', 'WANCHAQ'),
(873, '29537248', 'PEREZ RIVEROS NICO FEDERICO', 'NPEREZ_AREQU@SUNARP.GOB.PE', 'PRESIDENTE DE COMITE', '', 'ZONA REGISTRAL N° XII - SEDE AREQUIPA', '', 'Gobierno Central', 'AREQUIPA', 'AREQUIPA', 'AREQUIPA'),
(874, '21558937', 'CARRASCO BENDEZU CARLOS ALBERTO', 'CCARRASCO_AYACUCHO@SUNARP.GOB.PE', 'PRESIDENTE DE COMITE', '', 'ZONA REGISTRAL N° XIV - SEDE AYACUCHO', '', '', 'AYACUCHO', 'HUAMANGA', 'AYACUCHO'),
(875, '06278376', 'MARRUFO AGUILAR GILMER', 'GMARRUFO_ICA@SUNARP.GOB.PE', 'PRESIDENTE DE COMITE', '', 'ZONA REGISTRAL Nº   XI  SEDE ICA', '', 'Gobierno Central', 'ICA', 'ICA', 'ICA'),
(876, '02857530', 'FAJARDO ARRIOLA LUIS JAVIER', 'LFAJARDO_PIURA@SUNARP.GOB.PE', 'PRESIDENTE DE COMITE', '', 'ZONA REGISTRAL Nº I- SEDE PIURA', '', 'Gobierno Central', 'PIURA', 'PIURA', 'PIURA'),
(877, '03380434', 'CEDANO POZO ENRIQUE ARTURO', 'ECEDANO@SUNARP.GOB.PE', 'PRESIDENTE DE COMITE', '', 'ZONA REGISTRAL Nº III - MOYOBAMBA - SAN MARTIN', '', 'Gobierno Central', 'SAN MARTIN', 'MOYOBAMBA', 'MOYOBAMBA'),
(878, '23886098', 'FARFAN SILVA JOSE LUIS', 'JFARFAN_IQUIT@SUNARP.GOB.PE', 'PRESIDENTE DE COMITE', '', 'ZONA REGISTRAL Nº IV - SEDE IQUITOS  EX  OFICINA REGISTRAL REGIONAL REGIÓN  LORETO', '', 'Gobierno Central', 'LORETO', 'MAYNAS', 'IQUITOS'),
(879, '08663233', 'MANTILLA ESPINOZA BERTHA NANCY', 'BMANTILLA_LIMA@SUNARP.GOB.PE', 'PRESIDENTE DE COMITE', '', 'ZONA REGISTRAL Nº IX - SEDE LIMA- EX OFICINA REGISTRAL LIMA Y CALLAO', '', 'Gobierno Central', 'LIMA', 'LIMA', 'JESUS MARIA'),
(880, '16682081', 'COLLAO PUICAN PETRONILA ELIZABETH', 'PCOLLAO_TRUJI@SUNARP.GOB.PE', 'PRESIDENTE DE COMITE', '', 'ZONA REGISTRAL Nº V - SEDE TRUJILLO - LA LIBERTAD', '', 'Gobierno Central', 'LA LIBERTAD', 'TRUJILLO', 'TRUJILLO'),
(881, '25625460', 'LAGUNA TORRES HECTOR ALEXIS', 'HLAGUNA_PUCAL@SUNARP.GOB.PE', 'PRESIDENTE DE COMITE', '', 'ZONA REGISTRAL Nº VI - SEDE PUCALLPA - UCAYALI', '', 'Gobierno Central', 'UCAYALI', 'CORONEL PORTILLO', 'CALLERIA'),
(882, '06277962', 'RIVERA PALOMINO ABEL ALEJANDRO', 'ARIVERA_HYO@SUNARP.GOB.PE', 'PRESIDENTE DE COMITE', '', 'ZONA REGISTRAL Nº VIII SEDE HUANCAYO - JUNÍN', '', 'Gobierno Central', 'JUNIN', 'HUANCAYO', 'EL TAMBO'),
(883, '06532632', 'GONZALES ESPINOZA FRANK DIOMEDES', 'FGONZALES_TACNA@SUNARP.GOB.PE', 'PRESIDENTE DE COMITE', '', 'ZONA REGISTRAL XIII  SEDE TACNA - EX OFICINA REGISTRAL REGIONAL REG.JOSÉ CARLOS MARIÁTEGUI', '', 'Gobierno Central', 'TACNA', 'TACNA', 'TACNA'),
(884, '04433648', 'AVENDAÑO MAYER FREDDY RAUL', 'FAVENDANO@ZEDILO.COM.PE', 'PRESIDENTE DE COMITE', '', 'ZONAS ESPECIALES DE DESARROLLO ILO - ZED ILO', '', 'Gobierno Regional', 'MOQUEGUA', 'ILO', 'ILO');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `preguntas`
--

CREATE TABLE `preguntas` (
  `id` int(10) UNSIGNED NOT NULL,
  `modulo_id` int(10) UNSIGNED NOT NULL,
  `titulo_pregunta` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tipo_pregunta` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL,
  `orden` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ubicacion` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `preguntas`
--

INSERT INTO `preguntas` (`id`, `modulo_id`, `titulo_pregunta`, `tipo_pregunta`, `slug`, `orden`, `ubicacion`, `created_at`, `updated_at`) VALUES
(1, 1, '¿Desde hace cuánto tiempo funciona el SCI de su institución?', '4', 'desde-hace-cuanto-tiempo-funciona-el-sci-de-su-institucion', '1', 'primera', '2017-08-10 06:09:57', '2017-08-10 06:09:57'),
(2, 1, '¿En qué etapa se encuentra?', '4', 'en-que-etapa-se-encuentra', '2', 'intermedia', '2017-08-10 06:11:12', '2017-08-10 06:11:12'),
(3, 1, 'Según su opinión, el Control Interno contribuye principalmente a:', '3', 'segun-su-opinion-el-control-interno-contribuye-principalmente-a', '3', 'intermedia', '2017-08-10 06:13:12', '2017-08-10 06:13:12'),
(4, 1, 'Según su opinión, el Control Interno debe ser aplicado en:', '3', 'segun-su-opinion-el-control-interno-debe-ser-aplicado-en', '4', 'intermedia', '2017-08-10 07:52:23', '2017-08-10 07:52:23'),
(5, 1, 'Según su opinión, el Control Interno lo debe realizar:', '4', 'segun-su-opinion-el-control-interno-lo-debe-realizar', '5', 'ultima', '2017-08-10 07:55:27', '2017-08-10 07:55:27'),
(6, 2, '¿En la institución se ha(n) realizado actividad(es) de sensibilización para la implementación del SCI?', '1', 'en-la-institucion-se-han-realizado-actividades-de-sensibilizacion-para-la-implementacion-del-sci', '1', 'primera', '2017-08-10 08:18:41', '2017-08-10 08:18:41'),
(7, 2, '¿Qué actividad(es) de sensibilización se ha(n) realizado?', '5', 'que-actividades-de-sensibilizacion-se-han-realizado', '2', 'intermedia', '2017-08-10 08:38:43', '2017-08-10 08:38:43'),
(8, 2, '¿Cada qué tiempo se ha(n) realizado actividad(es) de sensibilización?', '4', 'cada-que-tiempo-se-han-realizado-actividades-de-sensibilizacion', '3', 'intermedia', '2017-08-10 08:44:38', '2017-08-10 08:44:38'),
(9, 2, '¿Sobre qué tema(s) ha sido la(s) actividad(es) de sensibilización?', '5', 'sobre-que-temas-ha-sido-las-actividades-de-sensibilizacion', '4', 'intermedia', '2017-08-10 08:52:31', '2017-08-10 08:52:31'),
(10, 2, '¿A quiénes se dirigió la(s) actividad(es) de sensibilización?', '5', 'a-quienes-se-dirigio-las-actividades-de-sensibilizacion', '5', 'intermedia', '2017-08-10 08:54:57', '2017-08-10 08:54:57'),
(11, 2, '¿Según su opinión, la(s) actividad(es) de sensibilización ha(n) tenido la efectividad esperada?', '4', 'segun-su-opinion-las-actividades-de-sensibilizacion-han-tenido-la-efectividad-esperada', '6', 'intermedia', '2017-08-10 08:56:07', '2017-08-10 08:56:07'),
(12, 2, 'Valore el grado de efectividad de la sensibilización realizada', '4', 'valore-el-grado-de-efectividad-de-la-sensibilizacion-realizada', '7', 'intermedia', '2017-08-10 08:58:02', '2017-08-10 08:58:02'),
(13, 2, '¿Qué actividad de sensibilización realizada en su institución, ha tenido mayor éxito y por qué?', '6', 'que-actividad-de-sensibilizacion-realizada-en-su-institucion-ha-tenido-mayor-exito-y-por-que', '8', 'intermedia', '2017-08-10 09:05:32', '2017-08-10 09:05:32'),
(14, 2, 'Según su opinión, cada cuanto tiempo debe realizarse la sensibilización?', '4', 'segun-su-opinion-cada-cuanto-tiempo-debe-realizarse-la-sensibilizacion', '9', 'intermedia', '2017-08-10 09:22:42', '2017-08-10 09:22:42'),
(15, 2, '¿Cuál cree Ud. es el principal problema en la tarea de sensibilización?', '4', 'cual-cree-ud-es-el-principal-problema-en-la-tarea-de-sensibilizacion', '10', 'ultima', '2017-08-10 09:24:16', '2017-08-10 09:24:16'),
(16, 3, '¿La institución ha realizado acciones de capacitación sobre Control Interno?', '1', 'la-institucion-ha-realizado-acciones-de-capacitacion-sobre-control-interno', '1', 'primera', '2017-08-10 09:25:12', '2017-08-10 09:25:12'),
(17, 3, 'Indique sobre qué tema(s) ha(n) capacitado', '5', 'indique-sobre-que-temas-han-capacitado', '2', 'intermedia', '2017-08-10 09:26:58', '2017-08-10 09:26:58'),
(18, 3, 'La capacitación ha sido dirigida a:', '5', 'la-capacitacion-ha-sido-dirigida-a', '3', 'intermedia', '2017-08-10 09:28:29', '2017-08-10 09:28:29'),
(19, 3, '¿En las capacitaciones realizadas se ha brindado material de refuerzo sobre el SCI?', '1', 'en-las-capacitaciones-realizadas-se-ha-brindado-material-de-refuerzo-sobre-el-sci', '4', 'intermedia', '2017-08-10 09:28:59', '2017-08-10 09:28:59'),
(20, 3, '¿La entidad cuenta con un Plan de Sensibilización y Capacitación del SCI?', '1', 'la-entidad-cuenta-con-un-plan-de-sensibilizacion-y-capacitacion-del-sci', '5', 'intermedia', '2017-08-10 09:29:31', '2017-08-10 09:29:31'),
(21, 3, 'Según su opinión, ¿Cuál es el principal problema en la capacitación?', '4', 'segun-su-opinion-cual-es-el-principal-problema-en-la-capacitacion', '6', 'intermedia', '2017-08-10 09:30:56', '2017-08-10 09:30:56'),
(22, 3, 'Explique brevemente cómo sugiere Ud. mejorar la capacitación en CI en su institución', '2', 'explique-brevemente-como-sugiere-ud-mejorar-la-capacitacion-en-ci-en-su-institucion', '7', 'ultima', '2017-08-10 09:34:30', '2017-08-10 09:34:30');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `presidentes`
--

CREATE TABLE `presidentes` (
  `id` int(10) UNSIGNED NOT NULL,
  `entidad_id` int(10) UNSIGNED NOT NULL,
  `nombre_presidente` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dni` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `presidentes`
--

INSERT INTO `presidentes` (`id`, `entidad_id`, `nombre_presidente`, `dni`, `created_at`, `updated_at`) VALUES
(1, 1, 'LECHUGA PINO ERNESTO', '23926884', '2017-08-10 07:56:12', '2017-08-10 07:56:12'),
(2, 2, 'PELÁEZ HIDALGO GUIDO', '25647838', '2017-08-10 08:00:43', '2017-08-10 08:00:43'),
(3, 3, 'CAICEDO REAÑO LUIS ENRIQUE', '10550299', '2017-08-10 08:02:28', '2017-08-10 08:02:28'),
(4, 4, 'OLIVERA MURILLOS JOHN EDWARD', '41085718', '2017-08-10 08:07:38', '2017-08-10 08:07:38'),
(5, 5, 'MENDOZA OCAÑA RAMIRO MIGUEL', '18087219', '2017-08-10 08:10:32', '2017-08-10 08:10:32'),
(6, 6, 'MARTINEZ BENITES OSCAR HERNAN', '02685922', '2017-08-10 08:20:34', '2017-08-10 08:20:34'),
(7, 7, 'FARFAN MARTINEZ LUIS ALBERTO', '02621824', '2017-08-10 08:23:23', '2017-08-10 08:23:23'),
(8, 8, 'MANTILLA ESPINOZA BERTHA NANCY', '08663233', '2017-08-10 08:41:06', '2017-08-10 08:41:06'),
(9, 9, 'COLLAO PUICAN PETRONILA ELIZABETH', '16682081', '2017-08-10 08:45:32', '2017-08-10 08:45:32'),
(10, 10, 'AVENDAÑO MAYER FREDDY RAUL', '04433648', '2017-08-10 08:47:37', '2017-08-10 08:47:37'),
(11, 11, 'RIVERA PALOMINO ABEL ALEJANDRO', '06277962', '2017-08-10 09:10:25', '2017-08-10 09:10:25'),
(12, 12, 'BAZALAR GONZALES LUIS ALBERTO', '06258176', '2017-08-10 09:16:17', '2017-08-10 09:16:17'),
(13, 13, 'VALLE CANGALAYA JESUS ALFONSO', '09182020', '2017-08-10 09:38:38', '2017-08-10 09:38:38'),
(14, 14, 'GROSSMANN CASAS ELIZABETH', '23825773', '2017-08-10 09:41:28', '2017-08-10 09:41:28'),
(15, 15, 'LEÓN ANASTACIO ARTURO EDUARDO', '06106736', '2017-08-10 09:42:07', '2017-08-10 09:42:07'),
(16, 16, 'GONZALES RAMOS ALDO JESUS', '07763428', '2017-08-10 12:20:40', '2017-08-10 12:20:40'),
(17, 17, 'BORBOR VARGAS JHONY ALEXANDER', '40211032', '2017-08-10 12:33:06', '2017-08-10 12:33:06'),
(18, 18, 'RENGIFO CAMPOS ROGER', '00833218', '2017-08-10 13:13:39', '2017-08-10 13:13:39'),
(19, 19, 'SAN ROMAN ZUBIZARRETA EDWIN TEODORO', '23847719', '2017-08-10 13:21:49', '2017-08-10 13:21:49'),
(20, 20, 'CARRILLO ROJAS JORGE ALFREDO', '42285428', '2017-08-10 13:26:44', '2017-08-10 13:26:44'),
(21, 21, 'TORRES BERRIO REYSTVAN', '24712971', '2017-08-10 13:29:23', '2017-08-10 13:29:23'),
(22, 22, 'ASTUDILLO SALCEDO CESAR AUGUSTO', '10307948', '2017-08-10 13:37:20', '2017-08-10 13:37:20'),
(23, 23, 'MOLINA FEBRES SEGUNDO DALTON', '41252632', '2017-08-10 13:40:59', '2017-08-10 13:40:59'),
(24, 24, 'VELA MONTENEGRO ALDO ALEJANDRO', '45817295', '2017-08-10 13:46:36', '2017-08-10 13:46:36'),
(25, 25, 'MONTESINOS SANCHEZ MIGUEL ANGEL', '00795685', '2017-08-10 14:08:18', '2017-08-10 14:08:18');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `progreso_encuesta`
--

CREATE TABLE `progreso_encuesta` (
  `id` int(10) UNSIGNED NOT NULL,
  `entidad_id` int(10) UNSIGNED NOT NULL,
  `progreso` double(8,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `progreso_encuesta`
--

INSERT INTO `progreso_encuesta` (`id`, `entidad_id`, `progreso`, `created_at`, `updated_at`) VALUES
(1, 1, 0.64, '2017-08-10 07:56:12', '2017-08-10 07:57:00'),
(2, 2, 0.46, '2017-08-10 08:00:43', '2017-08-10 08:01:01'),
(3, 3, 0.64, '2017-08-10 08:02:28', '2017-08-10 08:03:09'),
(4, 4, 0.64, '2017-08-10 08:07:38', '2017-08-10 08:08:18'),
(5, 5, 1.00, '2017-08-10 08:10:32', '2017-08-10 08:11:32'),
(6, 6, 1.00, '2017-08-10 08:20:34', '2017-08-10 08:22:00'),
(7, 7, 0.55, '2017-08-10 08:23:23', '2017-08-10 08:24:24'),
(8, 8, 1.00, '2017-08-10 08:41:06', '2017-08-10 08:42:28'),
(9, 9, 0.70, '2017-08-10 08:45:33', '2017-08-10 08:46:24'),
(10, 10, 1.00, '2017-08-10 08:47:37', '2017-08-10 08:49:18'),
(11, 11, 0.94, '2017-08-10 09:10:25', '2017-08-10 09:13:39'),
(12, 12, 0.94, '2017-08-10 09:16:17', '2017-08-10 09:18:08'),
(13, 13, 0.61, '2017-08-10 09:38:38', '2017-08-10 09:39:47'),
(14, 14, 0.10, '2017-08-10 09:41:28', '2017-08-10 09:41:28'),
(15, 15, 0.10, '2017-08-10 09:42:07', '2017-08-10 09:42:07'),
(16, 16, 0.61, '2017-08-10 12:20:40', '2017-08-10 12:22:12'),
(17, 17, 0.61, '2017-08-10 12:33:06', '2017-08-10 12:35:11'),
(18, 18, 0.28, '2017-08-10 13:13:39', '2017-08-10 13:15:32'),
(19, 19, 0.22, '2017-08-10 13:21:49', '2017-08-10 13:22:11'),
(20, 20, 0.22, '2017-08-10 13:26:44', '2017-08-10 13:27:05'),
(21, 21, 0.22, '2017-08-10 13:29:23', '2017-08-10 13:29:47'),
(22, 22, 0.28, '2017-08-10 13:37:20', '2017-08-10 13:37:58'),
(23, 23, 0.34, '2017-08-10 13:40:59', '2017-08-10 13:43:59'),
(24, 24, 0.34, '2017-08-10 13:46:37', '2017-08-10 14:01:36'),
(25, 25, 0.28, '2017-08-10 14:08:18', '2017-08-10 14:08:52');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `respuestas`
--

CREATE TABLE `respuestas` (
  `id` int(10) UNSIGNED NOT NULL,
  `pregunta_id` int(10) UNSIGNED NOT NULL,
  `entidad_id` int(10) UNSIGNED NOT NULL,
  `rpta` varchar(300) COLLATE utf8mb4_unicode_ci NOT NULL,
  `indique_obs` varchar(300) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `respuestas`
--

INSERT INTO `respuestas` (`id`, `pregunta_id`, `entidad_id`, `rpta`, `indique_obs`, `created_at`, `updated_at`) VALUES
(1, 1, 1, '2 Años', '', '2017-08-10 07:56:33', '2017-08-10 07:56:33'),
(2, 2, 1, 'Etapa 4: Cierre de brechas', '', '2017-08-10 07:56:41', '2017-08-10 07:56:41'),
(3, 3, 1, 'Combatir la corrupción', '', '2017-08-10 07:56:59', '2017-08-10 07:56:59'),
(4, 3, 1, 'Identificar riesgos en la gestión', '', '2017-08-10 07:56:59', '2017-08-10 07:56:59'),
(5, 3, 1, 'Proteger los recursos del Estado', '', '2017-08-10 07:56:59', '2017-08-10 07:56:59'),
(6, 3, 1, 'Mejorar los procesos', '', '2017-08-10 07:57:00', '2017-08-10 07:57:00'),
(7, 3, 1, 'Mayor transparencia', '', '2017-08-10 07:57:00', '2017-08-10 07:57:00'),
(8, 3, 1, 'Lograr los objetivos institucionales', '', '2017-08-10 07:57:00', '2017-08-10 07:57:00'),
(9, 1, 2, '2 Años', '', '2017-08-10 08:00:55', '2017-08-10 08:00:55'),
(10, 2, 2, 'Etapa 2: Identificación de brechas', '', '2017-08-10 08:01:00', '2017-08-10 08:01:00'),
(11, 1, 3, '3 Años', '', '2017-08-10 08:02:40', '2017-08-10 08:02:40'),
(12, 2, 3, 'Etapa 3: Elaboración del Plan de trabajo para el cierre de brechas', '', '2017-08-10 08:02:44', '2017-08-10 08:02:44'),
(13, 3, 3, 'Combatir la corrupción', '', '2017-08-10 08:03:07', '2017-08-10 08:03:07'),
(14, 3, 3, 'Lograr los objetivos institucionales', '', '2017-08-10 08:03:08', '2017-08-10 08:03:08'),
(15, 3, 3, 'Identificar riesgos en la gestión', '', '2017-08-10 08:03:08', '2017-08-10 08:03:08'),
(16, 3, 3, 'Mejorar los procesos', '', '2017-08-10 08:03:08', '2017-08-10 08:03:08'),
(17, 3, 3, 'Proteger los recursos del Estado', '', '2017-08-10 08:03:08', '2017-08-10 08:03:08'),
(18, 3, 3, 'Mayor transparencia', '', '2017-08-10 08:03:09', '2017-08-10 08:03:09'),
(19, 1, 4, '3 Años', '', '2017-08-10 08:07:51', '2017-08-10 08:07:51'),
(20, 2, 4, 'Etapa 4: Cierre de brechas', '', '2017-08-10 08:08:00', '2017-08-10 08:08:00'),
(21, 3, 4, 'Combatir la corrupción', '', '2017-08-10 08:08:17', '2017-08-10 08:08:17'),
(22, 3, 4, 'Identificar riesgos en la gestión', '', '2017-08-10 08:08:17', '2017-08-10 08:08:17'),
(23, 3, 4, 'Proteger los recursos del Estado', '', '2017-08-10 08:08:17', '2017-08-10 08:08:17'),
(24, 3, 4, 'Mejorar los procesos', '', '2017-08-10 08:08:18', '2017-08-10 08:08:18'),
(25, 3, 4, 'Mayor transparencia', '', '2017-08-10 08:08:18', '2017-08-10 08:08:18'),
(26, 3, 4, 'Lograr los objetivos institucionales', '', '2017-08-10 08:08:18', '2017-08-10 08:08:18'),
(27, 1, 5, '2 Años', '', '2017-08-10 08:10:40', '2017-08-10 08:10:40'),
(28, 2, 5, 'Etapa 3: Elaboración del Plan de trabajo para el cierre de brechas', '', '2017-08-10 08:10:43', '2017-08-10 08:10:43'),
(29, 3, 5, 'Combatir la corrupción', '', '2017-08-10 08:10:56', '2017-08-10 08:10:56'),
(30, 3, 5, 'Identificar riesgos en la gestión', '', '2017-08-10 08:10:57', '2017-08-10 08:10:57'),
(31, 3, 5, 'Mejorar los procesos', '', '2017-08-10 08:10:57', '2017-08-10 08:10:57'),
(32, 3, 5, 'Proteger los recursos del Estado', '', '2017-08-10 08:10:57', '2017-08-10 08:10:57'),
(33, 3, 5, 'Mayor transparencia', '', '2017-08-10 08:10:57', '2017-08-10 08:10:57'),
(34, 3, 5, 'Lograr los objetivos institucionales', '', '2017-08-10 08:10:58', '2017-08-10 08:10:58'),
(35, 4, 5, 'Tesorería', '', '2017-08-10 08:11:07', '2017-08-10 08:11:07'),
(36, 4, 5, 'Contabilidad', '', '2017-08-10 08:11:08', '2017-08-10 08:11:08'),
(37, 4, 5, 'Logística', '', '2017-08-10 08:11:08', '2017-08-10 08:11:08'),
(38, 4, 5, 'Todas las áreas', '', '2017-08-10 08:11:08', '2017-08-10 08:11:08'),
(39, 5, 5, 'El Órgano de Control Institucional -OCI', '', '2017-08-10 08:11:31', '2017-08-10 08:11:31'),
(40, 1, 6, '3 Años', '', '2017-08-10 08:20:42', '2017-08-10 08:20:42'),
(41, 2, 6, 'Etapa 3: Elaboración del Plan de trabajo para el cierre de brechas', '', '2017-08-10 08:21:01', '2017-08-10 08:21:01'),
(42, 3, 6, 'Combatir la corrupción', '', '2017-08-10 08:21:23', '2017-08-10 08:21:23'),
(43, 3, 6, 'Identificar riesgos en la gestión', '', '2017-08-10 08:21:23', '2017-08-10 08:21:23'),
(44, 3, 6, 'Mejorar los procesos', '', '2017-08-10 08:21:23', '2017-08-10 08:21:23'),
(45, 3, 6, 'Proteger los recursos del Estado', '', '2017-08-10 08:21:24', '2017-08-10 08:21:24'),
(46, 3, 6, 'Mayor transparencia', '', '2017-08-10 08:21:24', '2017-08-10 08:21:24'),
(47, 3, 6, 'Lograr los objetivos institucionales', '', '2017-08-10 08:21:24', '2017-08-10 08:21:24'),
(48, 4, 6, 'Tesorería', '', '2017-08-10 08:21:33', '2017-08-10 08:21:33'),
(49, 4, 6, 'Logística', '', '2017-08-10 08:21:33', '2017-08-10 08:21:33'),
(50, 4, 6, 'Todas las áreas', '', '2017-08-10 08:21:34', '2017-08-10 08:21:34'),
(51, 4, 6, 'Contabilidad', '', '2017-08-10 08:21:34', '2017-08-10 08:21:34'),
(52, 5, 6, 'El Comité de Control Interno', '', '2017-08-10 08:21:45', '2017-08-10 08:21:45'),
(53, 6, 6, 'Si', '', '2017-08-10 08:22:00', '2017-08-10 08:22:00'),
(54, 1, 7, '1 Año', '', '2017-08-10 08:23:34', '2017-08-10 08:23:34'),
(55, 2, 7, 'Etapa 2: Identificación de brechas', '', '2017-08-10 08:23:41', '2017-08-10 08:23:41'),
(56, 3, 7, 'Combatir la corrupción', '', '2017-08-10 08:24:02', '2017-08-10 08:24:02'),
(57, 3, 7, 'Identificar riesgos en la gestión', '', '2017-08-10 08:24:02', '2017-08-10 08:24:02'),
(58, 3, 7, 'Mejorar los procesos', '', '2017-08-10 08:24:02', '2017-08-10 08:24:02'),
(59, 3, 7, 'Proteger los recursos del Estado', '', '2017-08-10 08:24:03', '2017-08-10 08:24:03'),
(60, 3, 7, 'Mayor transparencia', '', '2017-08-10 08:24:03', '2017-08-10 08:24:03'),
(61, 3, 7, 'Lograr los objetivos institucionales', '', '2017-08-10 08:24:03', '2017-08-10 08:24:03'),
(62, 4, 7, 'Tesorería', '', '2017-08-10 08:24:12', '2017-08-10 08:24:12'),
(63, 4, 7, 'Contabilidad', '', '2017-08-10 08:24:12', '2017-08-10 08:24:12'),
(64, 4, 7, 'Logística', '', '2017-08-10 08:24:13', '2017-08-10 08:24:13'),
(65, 4, 7, 'Todas las áreas', '', '2017-08-10 08:24:13', '2017-08-10 08:24:13'),
(66, 5, 7, 'La Alta Dirección', '', '2017-08-10 08:24:24', '2017-08-10 08:24:24'),
(67, 1, 8, '3 Años', '', '2017-08-10 08:41:15', '2017-08-10 08:41:15'),
(68, 2, 8, 'Etapa 3: Elaboración del Plan de trabajo para el cierre de brechas', '', '2017-08-10 08:41:24', '2017-08-10 08:41:24'),
(69, 3, 8, 'Combatir la corrupción', '', '2017-08-10 08:41:43', '2017-08-10 08:41:43'),
(70, 3, 8, 'Identificar riesgos en la gestión', '', '2017-08-10 08:41:43', '2017-08-10 08:41:43'),
(71, 3, 8, 'Mejorar los procesos', '', '2017-08-10 08:41:44', '2017-08-10 08:41:44'),
(72, 3, 8, 'Proteger los recursos del Estado', '', '2017-08-10 08:41:44', '2017-08-10 08:41:44'),
(73, 3, 8, 'Mayor transparencia', '', '2017-08-10 08:41:44', '2017-08-10 08:41:44'),
(74, 3, 8, 'Lograr los objetivos institucionales', '', '2017-08-10 08:41:44', '2017-08-10 08:41:44'),
(75, 4, 8, 'Tesorería', '', '2017-08-10 08:41:55', '2017-08-10 08:41:55'),
(76, 4, 8, 'Contabilidad', '', '2017-08-10 08:41:56', '2017-08-10 08:41:56'),
(77, 4, 8, 'Logística', '', '2017-08-10 08:41:56', '2017-08-10 08:41:56'),
(78, 4, 8, 'Todas las áreas', '', '2017-08-10 08:41:56', '2017-08-10 08:41:56'),
(79, 5, 8, 'La Alta Dirección', '', '2017-08-10 08:42:03', '2017-08-10 08:42:03'),
(80, 6, 8, 'Si', '', '2017-08-10 08:42:15', '2017-08-10 08:42:15'),
(81, 7, 8, 'Charla', '', '2017-08-10 08:42:27', '2017-08-10 08:42:27'),
(82, 7, 8, 'Reunión', '', '2017-08-10 08:42:28', '2017-08-10 08:42:28'),
(83, 7, 8, 'Activación', '', '2017-08-10 08:42:28', '2017-08-10 08:42:28'),
(84, 7, 8, 'Evento', '', '2017-08-10 08:42:28', '2017-08-10 08:42:28'),
(85, 1, 9, '2 Años', '', '2017-08-10 08:45:43', '2017-08-10 08:45:43'),
(86, 2, 9, 'Etapa 3: Elaboración del Plan de trabajo para el cierre de brechas', '', '2017-08-10 08:45:46', '2017-08-10 08:45:46'),
(87, 3, 9, 'Combatir la corrupción', '', '2017-08-10 08:45:55', '2017-08-10 08:45:55'),
(88, 3, 9, 'Identificar riesgos en la gestión', '', '2017-08-10 08:45:55', '2017-08-10 08:45:55'),
(89, 3, 9, 'Mejorar los procesos', '', '2017-08-10 08:45:56', '2017-08-10 08:45:56'),
(90, 3, 9, 'Proteger los recursos del Estado', '', '2017-08-10 08:45:56', '2017-08-10 08:45:56'),
(91, 3, 9, 'Mayor transparencia', '', '2017-08-10 08:45:56', '2017-08-10 08:45:56'),
(92, 3, 9, 'Lograr los objetivos institucionales', '', '2017-08-10 08:45:56', '2017-08-10 08:45:56'),
(93, 4, 9, 'Tesorería', '', '2017-08-10 08:46:02', '2017-08-10 08:46:02'),
(94, 4, 9, 'Logística', '', '2017-08-10 08:46:02', '2017-08-10 08:46:02'),
(95, 4, 9, 'Contabilidad', '', '2017-08-10 08:46:03', '2017-08-10 08:46:03'),
(96, 4, 9, 'Todas las áreas', '', '2017-08-10 08:46:03', '2017-08-10 08:46:03'),
(97, 5, 9, 'La Alta Dirección', '', '2017-08-10 08:46:14', '2017-08-10 08:46:14'),
(98, 6, 9, 'No', '', '2017-08-10 08:46:23', '2017-08-10 08:46:23'),
(99, 1, 10, '2 Años', '', '2017-08-10 08:47:43', '2017-08-10 08:47:43'),
(100, 2, 10, 'Etapa 3: Elaboración del Plan de trabajo para el cierre de brechas', '', '2017-08-10 08:47:47', '2017-08-10 08:47:47'),
(101, 3, 10, 'Combatir la corrupción', '', '2017-08-10 08:47:55', '2017-08-10 08:47:55'),
(102, 3, 10, 'Identificar riesgos en la gestión', '', '2017-08-10 08:47:55', '2017-08-10 08:47:55'),
(103, 3, 10, 'Mejorar los procesos', '', '2017-08-10 08:47:55', '2017-08-10 08:47:55'),
(104, 3, 10, 'Proteger los recursos del Estado', '', '2017-08-10 08:47:55', '2017-08-10 08:47:55'),
(105, 3, 10, 'Mayor transparencia', '', '2017-08-10 08:47:55', '2017-08-10 08:47:55'),
(106, 3, 10, 'Lograr los objetivos institucionales', '', '2017-08-10 08:47:56', '2017-08-10 08:47:56'),
(107, 4, 10, 'Tesorería', '', '2017-08-10 08:48:03', '2017-08-10 08:48:03'),
(108, 4, 10, 'Logística', '', '2017-08-10 08:48:03', '2017-08-10 08:48:03'),
(109, 4, 10, 'Contabilidad', '', '2017-08-10 08:48:03', '2017-08-10 08:48:03'),
(110, 4, 10, 'Todas las áreas', '', '2017-08-10 08:48:03', '2017-08-10 08:48:03'),
(111, 5, 10, 'El Órgano de Control Institucional -OCI', '', '2017-08-10 08:48:08', '2017-08-10 08:48:08'),
(112, 6, 10, 'Si', '', '2017-08-10 08:48:17', '2017-08-10 08:48:17'),
(113, 7, 10, 'Reunión', '', '2017-08-10 08:48:59', '2017-08-10 08:48:59'),
(114, 8, 10, '3 veces al año', '', '2017-08-10 08:49:17', '2017-08-10 08:49:17'),
(115, 1, 11, '3 Años', '', '2017-08-10 09:10:34', '2017-08-10 09:10:34'),
(116, 2, 11, 'Etapa 4: Cierre de brechas', '', '2017-08-10 09:10:39', '2017-08-10 09:10:39'),
(117, 3, 11, 'Combatir la corrupción', '', '2017-08-10 09:10:49', '2017-08-10 09:10:49'),
(118, 3, 11, 'Identificar riesgos en la gestión', '', '2017-08-10 09:10:50', '2017-08-10 09:10:50'),
(119, 3, 11, 'Proteger los recursos del Estado', '', '2017-08-10 09:10:50', '2017-08-10 09:10:50'),
(120, 3, 11, 'Mejorar los procesos', '', '2017-08-10 09:10:50', '2017-08-10 09:10:50'),
(121, 3, 11, 'Mayor transparencia', '', '2017-08-10 09:10:50', '2017-08-10 09:10:50'),
(122, 3, 11, 'Lograr los objetivos institucionales', '', '2017-08-10 09:10:51', '2017-08-10 09:10:51'),
(123, 4, 11, 'Tesorería', '', '2017-08-10 09:10:58', '2017-08-10 09:10:58'),
(124, 4, 11, 'Logística', '', '2017-08-10 09:10:58', '2017-08-10 09:10:58'),
(125, 4, 11, 'Contabilidad', '', '2017-08-10 09:10:59', '2017-08-10 09:10:59'),
(126, 4, 11, 'Todas las áreas', '', '2017-08-10 09:10:59', '2017-08-10 09:10:59'),
(127, 5, 11, 'El Órgano de Control Institucional -OCI', '', '2017-08-10 09:11:04', '2017-08-10 09:11:04'),
(128, 6, 11, 'No', '', '2017-08-10 09:11:15', '2017-08-10 09:11:15'),
(129, 7, 11, 'Activación', '', '2017-08-10 09:11:22', '2017-08-10 09:11:22'),
(130, 8, 11, '1 vez al año', '', '2017-08-10 09:11:29', '2017-08-10 09:11:29'),
(131, 9, 11, 'Filosofía de la institución (misión, visión, valores y objetivos de la institución)', '', '2017-08-10 09:13:04', '2017-08-10 09:13:04'),
(132, 10, 11, 'Personal de sus sedes en otras regiones', '', '2017-08-10 09:13:22', '2017-08-10 09:13:22'),
(133, 11, 11, 'No', '', '2017-08-10 09:13:31', '2017-08-10 09:13:31'),
(134, 12, 11, '40%', '', '2017-08-10 09:13:39', '2017-08-10 09:13:39'),
(135, 1, 12, '3 Años', '', '2017-08-10 09:16:25', '2017-08-10 09:16:25'),
(136, 2, 12, 'Etapa 3: Elaboración del Plan de trabajo para el cierre de brechas', '', '2017-08-10 09:16:30', '2017-08-10 09:16:30'),
(137, 3, 12, 'Combatir la corrupción', '', '2017-08-10 09:16:40', '2017-08-10 09:16:40'),
(138, 3, 12, 'Identificar riesgos en la gestión', '', '2017-08-10 09:16:40', '2017-08-10 09:16:40'),
(139, 3, 12, 'Mejorar los procesos', '', '2017-08-10 09:16:40', '2017-08-10 09:16:40'),
(140, 3, 12, 'Proteger los recursos del Estado', '', '2017-08-10 09:16:41', '2017-08-10 09:16:41'),
(141, 3, 12, 'Mayor transparencia', '', '2017-08-10 09:16:41', '2017-08-10 09:16:41'),
(142, 3, 12, 'Lograr los objetivos institucionales', '', '2017-08-10 09:16:41', '2017-08-10 09:16:41'),
(143, 4, 12, 'Tesorería', '', '2017-08-10 09:16:52', '2017-08-10 09:16:52'),
(144, 4, 12, 'Logística', '', '2017-08-10 09:16:52', '2017-08-10 09:16:52'),
(145, 4, 12, 'Contabilidad', '', '2017-08-10 09:16:53', '2017-08-10 09:16:53'),
(146, 4, 12, 'Todas las áreas', '', '2017-08-10 09:16:53', '2017-08-10 09:16:53'),
(147, 5, 12, 'El Órgano de Control Institucional -OCI', '', '2017-08-10 09:16:57', '2017-08-10 09:16:57'),
(148, 6, 12, 'No', '', '2017-08-10 09:17:07', '2017-08-10 09:17:07'),
(149, 7, 12, 'Charla', '', '2017-08-10 09:17:21', '2017-08-10 09:17:21'),
(150, 7, 12, 'Reunión', '', '2017-08-10 09:17:21', '2017-08-10 09:17:21'),
(151, 7, 12, 'Activación', '', '2017-08-10 09:17:21', '2017-08-10 09:17:21'),
(152, 8, 12, '1 vez al año', '', '2017-08-10 09:17:33', '2017-08-10 09:17:33'),
(153, 9, 12, 'Filosofía de la institución (misión, visión, valores y objetivos de la institución)', '', '2017-08-10 09:17:40', '2017-08-10 09:17:40'),
(154, 9, 12, 'Funcionamiento e importancia del Sistema de Control Interno', '', '2017-08-10 09:17:40', '2017-08-10 09:17:40'),
(155, 10, 12, 'Personal de todas las áreas', '', '2017-08-10 09:17:49', '2017-08-10 09:17:49'),
(156, 10, 12, 'Personal de sus sedes en otras regiones', '', '2017-08-10 09:17:50', '2017-08-10 09:17:50'),
(157, 11, 12, 'En parte', '', '2017-08-10 09:17:58', '2017-08-10 09:17:58'),
(158, 12, 12, '40%', '', '2017-08-10 09:18:07', '2017-08-10 09:18:07'),
(159, 1, 13, '2 Años', '', '2017-08-10 09:38:44', '2017-08-10 09:38:44'),
(160, 2, 13, 'Etapa 3: Elaboración del Plan de trabajo para el cierre de brechas', '', '2017-08-10 09:38:48', '2017-08-10 09:38:48'),
(161, 3, 13, 'Combatir la corrupción', '', '2017-08-10 09:38:54', '2017-08-10 09:38:54'),
(162, 3, 13, 'Identificar riesgos en la gestión', '', '2017-08-10 09:38:54', '2017-08-10 09:38:54'),
(163, 3, 13, 'Mejorar los procesos', '', '2017-08-10 09:38:55', '2017-08-10 09:38:55'),
(164, 3, 13, 'Proteger los recursos del Estado', '', '2017-08-10 09:38:55', '2017-08-10 09:38:55'),
(165, 3, 13, 'Mayor transparencia', '', '2017-08-10 09:38:55', '2017-08-10 09:38:55'),
(166, 3, 13, 'Lograr los objetivos institucionales', '', '2017-08-10 09:38:55', '2017-08-10 09:38:55'),
(167, 4, 13, 'Tesorería', '', '2017-08-10 09:39:02', '2017-08-10 09:39:02'),
(168, 4, 13, 'Logística', '', '2017-08-10 09:39:02', '2017-08-10 09:39:02'),
(169, 4, 13, 'Contabilidad', '', '2017-08-10 09:39:03', '2017-08-10 09:39:03'),
(170, 4, 13, 'Todas las áreas', '', '2017-08-10 09:39:03', '2017-08-10 09:39:03'),
(171, 5, 13, 'La Alta Dirección', '', '2017-08-10 09:39:07', '2017-08-10 09:39:07'),
(172, 6, 13, 'Si', '', '2017-08-10 09:39:14', '2017-08-10 09:39:14'),
(173, 7, 13, 'Reunión', '', '2017-08-10 09:39:20', '2017-08-10 09:39:20'),
(174, 7, 13, 'Activación', '', '2017-08-10 09:39:21', '2017-08-10 09:39:21'),
(175, 8, 13, '1 vez al año', '', '2017-08-10 09:39:26', '2017-08-10 09:39:26'),
(176, 9, 13, 'Filosofía de la institución (misión, visión, valores y objetivos de la institución)', '', '2017-08-10 09:39:31', '2017-08-10 09:39:31'),
(177, 9, 13, 'Funcionamiento e importancia del Sistema de Control Interno', '', '2017-08-10 09:39:32', '2017-08-10 09:39:32'),
(178, 10, 13, 'Personal de todas las áreas', '', '2017-08-10 09:39:38', '2017-08-10 09:39:38'),
(179, 10, 13, 'Personal de sus sedes en otras regiones', '', '2017-08-10 09:39:38', '2017-08-10 09:39:38'),
(180, 11, 13, 'No', '', '2017-08-10 09:39:42', '2017-08-10 09:39:42'),
(181, 12, 13, '20%', '', '2017-08-10 09:39:47', '2017-08-10 09:39:47'),
(182, 1, 16, '3 Años', '', '2017-08-10 12:20:48', '2017-08-10 12:20:48'),
(183, 2, 16, 'Etapa 3: Elaboración del Plan de trabajo para el cierre de brechas', '', '2017-08-10 12:20:54', '2017-08-10 12:20:54'),
(184, 3, 16, 'Combatir la corrupción', '', '2017-08-10 12:21:12', '2017-08-10 12:21:12'),
(185, 3, 16, 'Identificar riesgos en la gestión', '', '2017-08-10 12:21:12', '2017-08-10 12:21:12'),
(186, 3, 16, 'Mejorar los procesos', '', '2017-08-10 12:21:13', '2017-08-10 12:21:13'),
(187, 3, 16, 'Proteger los recursos del Estado', '', '2017-08-10 12:21:13', '2017-08-10 12:21:13'),
(188, 3, 16, 'Mayor transparencia', '', '2017-08-10 12:21:13', '2017-08-10 12:21:13'),
(189, 3, 16, 'Lograr los objetivos institucionales', '', '2017-08-10 12:21:13', '2017-08-10 12:21:13'),
(190, 4, 16, 'Tesorería', '', '2017-08-10 12:21:24', '2017-08-10 12:21:24'),
(191, 4, 16, 'Logística', '', '2017-08-10 12:21:25', '2017-08-10 12:21:25'),
(192, 4, 16, 'Contabilidad', '', '2017-08-10 12:21:25', '2017-08-10 12:21:25'),
(193, 4, 16, 'Todas las áreas', '', '2017-08-10 12:21:25', '2017-08-10 12:21:25'),
(194, 5, 16, 'La Alta Dirección', '', '2017-08-10 12:21:31', '2017-08-10 12:21:31'),
(195, 6, 16, 'Si', '', '2017-08-10 12:21:40', '2017-08-10 12:21:40'),
(196, 7, 16, 'Reunión', '', '2017-08-10 12:21:45', '2017-08-10 12:21:45'),
(197, 8, 16, '2 veces desde que se instaló el Comité', '', '2017-08-10 12:21:50', '2017-08-10 12:21:50'),
(198, 9, 16, 'Funcionamiento e importancia del Sistema de Control Interno', '', '2017-08-10 12:21:57', '2017-08-10 12:21:57'),
(199, 10, 16, 'Personal de todas las áreas', '', '2017-08-10 12:22:01', '2017-08-10 12:22:01'),
(200, 11, 16, 'No', '', '2017-08-10 12:22:07', '2017-08-10 12:22:07'),
(201, 12, 16, '40%', '', '2017-08-10 12:22:12', '2017-08-10 12:22:12'),
(202, 1, 17, '2 Años', '', '2017-08-10 12:33:21', '2017-08-10 12:33:21'),
(203, 2, 17, 'Etapa 3: Elaboración del Plan de trabajo para el cierre de brechas', '', '2017-08-10 12:33:25', '2017-08-10 12:33:25'),
(204, 3, 17, 'Combatir la corrupción', '', '2017-08-10 12:33:40', '2017-08-10 12:33:40'),
(205, 3, 17, 'Identificar riesgos en la gestión', '', '2017-08-10 12:33:41', '2017-08-10 12:33:41'),
(206, 3, 17, 'Mejorar los procesos', '', '2017-08-10 12:33:41', '2017-08-10 12:33:41'),
(207, 3, 17, 'Proteger los recursos del Estado', '', '2017-08-10 12:33:41', '2017-08-10 12:33:41'),
(208, 3, 17, 'Mayor transparencia', '', '2017-08-10 12:33:41', '2017-08-10 12:33:41'),
(209, 3, 17, 'Lograr los objetivos institucionales', '', '2017-08-10 12:33:41', '2017-08-10 12:33:41'),
(210, 4, 17, 'Tesorería', '', '2017-08-10 12:33:50', '2017-08-10 12:33:50'),
(211, 4, 17, 'Logística', '', '2017-08-10 12:33:50', '2017-08-10 12:33:50'),
(212, 4, 17, 'Contabilidad', '', '2017-08-10 12:33:50', '2017-08-10 12:33:50'),
(213, 4, 17, 'Todas las áreas', '', '2017-08-10 12:33:51', '2017-08-10 12:33:51'),
(214, 5, 17, 'Todos los trabajadores', '', '2017-08-10 12:33:58', '2017-08-10 12:33:58'),
(215, 6, 17, 'Si', '', '2017-08-10 12:34:10', '2017-08-10 12:34:10'),
(216, 7, 17, 'Reunión', '', '2017-08-10 12:34:20', '2017-08-10 12:34:20'),
(217, 7, 17, 'Activación', '', '2017-08-10 12:34:20', '2017-08-10 12:34:20'),
(218, 8, 17, '1 vez al año', '', '2017-08-10 12:34:28', '2017-08-10 12:34:28'),
(219, 9, 17, 'Funcionamiento e importancia del Sistema de Control Interno', '', '2017-08-10 12:34:36', '2017-08-10 12:34:36'),
(220, 9, 17, 'Anticorrupción', '', '2017-08-10 12:34:37', '2017-08-10 12:34:37'),
(221, 9, 17, 'Mejoras en los procesos de la institución', '', '2017-08-10 12:34:37', '2017-08-10 12:34:37'),
(222, 10, 17, 'Personal de sus sedes en otras regiones', '', '2017-08-10 12:34:41', '2017-08-10 12:34:41'),
(223, 11, 17, 'No', '', '2017-08-10 12:34:47', '2017-08-10 12:34:47'),
(224, 12, 17, '40%', '', '2017-08-10 12:35:11', '2017-08-10 12:35:11'),
(225, 1, 18, '3 Años', '', '2017-08-10 13:14:01', '2017-08-10 13:14:01'),
(226, 2, 18, 'Etapa 2: Identificación de brechas', '', '2017-08-10 13:14:14', '2017-08-10 13:14:14'),
(227, 3, 18, 'Proteger los recursos del Estado', '', '2017-08-10 13:15:32', '2017-08-10 13:15:32'),
(228, 1, 19, '3 Años', '', '2017-08-10 13:22:02', '2017-08-10 13:22:02'),
(229, 2, 19, 'Etapa 3: Elaboración del Plan de trabajo para el cierre de brechas', '', '2017-08-10 13:22:11', '2017-08-10 13:22:11'),
(230, 1, 20, '2 Años', '', '2017-08-10 13:26:57', '2017-08-10 13:26:57'),
(231, 2, 20, 'Etapa 3: Elaboración del Plan de trabajo para el cierre de brechas', '', '2017-08-10 13:27:05', '2017-08-10 13:27:05'),
(232, 1, 21, '2 Años', '', '2017-08-10 13:29:34', '2017-08-10 13:29:34'),
(233, 2, 21, 'Etapa 3: Elaboración del Plan de trabajo para el cierre de brechas', '', '2017-08-10 13:29:46', '2017-08-10 13:29:46'),
(234, 1, 22, '2 Años', '', '2017-08-10 13:37:35', '2017-08-10 13:37:35'),
(235, 2, 22, 'Etapa 3: Elaboración del Plan de trabajo para el cierre de brechas', '', '2017-08-10 13:37:43', '2017-08-10 13:37:43'),
(236, 3, 22, 'c', '', '2017-08-10 13:37:58', '2017-08-10 13:37:58'),
(237, 1, 23, '2 Años', '', '2017-08-10 13:41:08', '2017-08-10 13:41:08'),
(238, 2, 23, 'Etapa 3: Elaboración del Plan de trabajo para el cierre de brechas', '', '2017-08-10 13:41:12', '2017-08-10 13:41:12'),
(239, 1, 24, '3 Años', '', '2017-08-10 13:46:50', '2017-08-10 13:46:50'),
(240, 2, 24, 'Etapa 3: Elaboración del Plan de trabajo para el cierre de brechas', '', '2017-08-10 13:47:00', '2017-08-10 13:47:00'),
(241, 1, 25, '2 Años', '', '2017-08-10 14:08:32', '2017-08-10 14:08:32'),
(242, 2, 25, 'Etapa 3: Elaboración del Plan de trabajo para el cierre de brechas', '', '2017-08-10 14:08:37', '2017-08-10 14:08:37');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `secciones`
--

CREATE TABLE `secciones` (
  `id` int(10) UNSIGNED NOT NULL,
  `nombre_seccion` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tiempo_inicio` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tiempo_fin` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `encuesta_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `secciones`
--

INSERT INTO `secciones` (`id`, `nombre_seccion`, `slug`, `tiempo_inicio`, `tiempo_fin`, `encuesta_id`, `created_at`, `updated_at`) VALUES
(1, 'Cuestionario', 'cuestionario', '2017-08-14', '2017-08-15', 1, '2017-08-10 06:07:45', '2017-08-10 06:07:45');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `titulares`
--

CREATE TABLE `titulares` (
  `id` int(10) UNSIGNED NOT NULL,
  `entidad_id` int(10) UNSIGNED NOT NULL,
  `nombre_titular` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `titulares`
--

INSERT INTO `titulares` (`id`, `entidad_id`, `nombre_titular`, `created_at`, `updated_at`) VALUES
(1, 1, 'JHON FELIPE MEDINA ZAPATA', '2017-08-10 07:56:12', '2017-08-10 07:56:12'),
(2, 2, 'SKDJ FHAKJDFHKAJD FKAJSD', '2017-08-10 08:00:43', '2017-08-10 08:00:43'),
(3, 3, 'SDLKF SLKDF JSLDF JSLK DF', '2017-08-10 08:02:28', '2017-08-10 08:02:28'),
(4, 4, 'FU ASDJKFHAKDJF AJDFHAKJF D', '2017-08-10 08:07:38', '2017-08-10 08:07:38'),
(5, 5, 'KDJ SAJKDHASKJD SD', '2017-08-10 08:10:32', '2017-08-10 08:10:32'),
(6, 6, 'LKFJ ALSDKJFADKL FALDKJFLK ASDF', '2017-08-10 08:20:34', '2017-08-10 08:20:34'),
(7, 7, 'SDK FAJKS DFJAD FKJA DFKJDFKHAD', '2017-08-10 08:23:23', '2017-08-10 08:23:23'),
(8, 8, 'SDFS HDFKJSH DKJFHSKDJFHK', '2017-08-10 08:41:05', '2017-08-10 08:41:05'),
(9, 9, 'KSDJFH ASKJDF AKJSD FH', '2017-08-10 08:45:32', '2017-08-10 08:45:32'),
(10, 10, 'KDJ HSADKJF HADKJFH AKSDJF', '2017-08-10 08:47:37', '2017-08-10 08:47:37'),
(11, 11, 'FHAKJDFHAKSJ DFKJADSHFK', '2017-08-10 09:10:25', '2017-08-10 09:10:25'),
(12, 12, 'SKDJFHAJKDF HAJKD FKJA SDFKJ', '2017-08-10 09:16:17', '2017-08-10 09:16:17'),
(13, 13, 'KDJ FAKJSDHF AKJSH', '2017-08-10 09:38:37', '2017-08-10 09:38:37'),
(14, 14, 'SLDKF ALDKF JLADKFJLDJ', '2017-08-10 09:41:28', '2017-08-10 09:41:28'),
(15, 15, 'KSJD FHKASDJHFKAJ DFKJ', '2017-08-10 09:42:07', '2017-08-10 09:42:07'),
(16, 16, 'SDTSDTS', '2017-08-10 12:20:40', '2017-08-10 12:20:40'),
(17, 17, 'SFH ASDKJFHKJASHD', '2017-08-10 12:33:06', '2017-08-10 12:33:06'),
(18, 18, 'KJ CHFKJAS HKJAS DFKJAHSDF', '2017-08-10 13:13:39', '2017-08-10 13:13:39'),
(19, 19, 'KAKHKJFDG KSDFGK', '2017-08-10 13:21:49', '2017-08-10 13:21:49'),
(20, 20, 'DKF AHSDKFJHASD', '2017-08-10 13:26:44', '2017-08-10 13:26:44'),
(21, 21, 'KJD HFKJHDFK AFJKHADF', '2017-08-10 13:29:23', '2017-08-10 13:29:23'),
(22, 22, 'SDJKSDFHKAJSD', '2017-08-10 13:37:20', '2017-08-10 13:37:20'),
(23, 23, 'SKJ DFJKSHDFKJ S', '2017-08-10 13:40:59', '2017-08-10 13:40:59'),
(24, 24, 'SDJKHF AKSDFH', '2017-08-10 13:46:36', '2017-08-10 13:46:36'),
(25, 25, 'SKDJF HAKJDF AKSJH FKAJSDH F', '2017-08-10 14:08:18', '2017-08-10 14:08:18');

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
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Administrador', 'jhonazsh_17@yahoo.com', '$2y$10$yfC0eBBqhbcACMwzSS8EE.d62uxkpLiVpplJUuPs/YxMDbLbdRd/G', NULL, '2017-08-10 06:06:16', '2017-08-10 06:06:16');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `validacion`
--

CREATE TABLE `validacion` (
  `id` int(10) UNSIGNED NOT NULL,
  `presidente_dni` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `estado` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `validacion`
--

INSERT INTO `validacion` (`id`, `presidente_dni`, `estado`, `created_at`, `updated_at`) VALUES
(1, '23926884', 'validado', '2017-08-10 06:14:52', '2017-08-10 06:14:52'),
(2, '25647838', 'validado', '2017-08-10 08:00:27', '2017-08-10 08:00:27'),
(3, '10550299', 'validado', '2017-08-10 08:02:12', '2017-08-10 08:02:12'),
(4, '41085718', 'validado', '2017-08-10 08:07:15', '2017-08-10 08:07:15'),
(5, '18087219', 'validado', '2017-08-10 08:10:14', '2017-08-10 08:10:14'),
(6, '02685922', 'validado', '2017-08-10 08:16:31', '2017-08-10 08:16:31'),
(7, '02621824', 'validado', '2017-08-10 08:23:09', '2017-08-10 08:23:09'),
(8, '08663233', 'validado', '2017-08-10 08:40:51', '2017-08-10 08:40:51'),
(9, '16682081', 'validado', '2017-08-10 08:45:18', '2017-08-10 08:45:18'),
(10, '04433648', 'validado', '2017-08-10 08:47:20', '2017-08-10 08:47:20'),
(11, '06277962', 'validado', '2017-08-10 09:10:12', '2017-08-10 09:10:12'),
(12, '06258176', 'validado', '2017-08-10 09:16:01', '2017-08-10 09:16:01'),
(13, '09182020', 'validado', '2017-08-10 09:38:26', '2017-08-10 09:38:26'),
(14, '23825773', 'validado', '2017-08-10 09:41:15', '2017-08-10 09:41:15'),
(15, '06106736', 'validado', '2017-08-10 09:41:56', '2017-08-10 09:41:56'),
(16, '07763428', 'validado', '2017-08-10 12:20:21', '2017-08-10 12:20:21'),
(17, '40211032', 'validado', '2017-08-10 12:32:16', '2017-08-10 12:32:16'),
(18, '00833218', 'validado', '2017-08-10 13:13:25', '2017-08-10 13:13:25'),
(19, '23847719', 'validado', '2017-08-10 13:21:35', '2017-08-10 13:21:35'),
(20, '42285428', 'validado', '2017-08-10 13:26:30', '2017-08-10 13:26:30'),
(21, '24712971', 'validado', '2017-08-10 13:29:06', '2017-08-10 13:29:06'),
(22, '10307948', 'validado', '2017-08-10 13:37:07', '2017-08-10 13:37:07'),
(23, '41252632', 'validado', '2017-08-10 13:40:46', '2017-08-10 13:40:46'),
(24, '45817295', 'validado', '2017-08-10 13:46:24', '2017-08-10 13:46:24'),
(25, '00795685', 'validado', '2017-08-10 14:08:00', '2017-08-10 14:08:00');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `avance_encuesta`
--
ALTER TABLE `avance_encuesta`
  ADD PRIMARY KEY (`id`),
  ADD KEY `avance_encuesta_entidad_id_foreign` (`entidad_id`);

--
-- Indices de la tabla `encuestados`
--
ALTER TABLE `encuestados`
  ADD PRIMARY KEY (`id`),
  ADD KEY `encuestados_entidad_id_foreign` (`entidad_id`);

--
-- Indices de la tabla `encuestas`
--
ALTER TABLE `encuestas`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `entidades`
--
ALTER TABLE `entidades`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `modulos`
--
ALTER TABLE `modulos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `modulos_seccion_id_foreign` (`seccion_id`);

--
-- Indices de la tabla `notificaciones`
--
ALTER TABLE `notificaciones`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `opciones`
--
ALTER TABLE `opciones`
  ADD PRIMARY KEY (`id`),
  ADD KEY `opciones_pregunta_id_foreign` (`pregunta_id`);

--
-- Indices de la tabla `pdtes_filtrados`
--
ALTER TABLE `pdtes_filtrados`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `preguntas`
--
ALTER TABLE `preguntas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `preguntas_modulo_id_foreign` (`modulo_id`);

--
-- Indices de la tabla `presidentes`
--
ALTER TABLE `presidentes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `presidentes_entidad_id_foreign` (`entidad_id`);

--
-- Indices de la tabla `progreso_encuesta`
--
ALTER TABLE `progreso_encuesta`
  ADD PRIMARY KEY (`id`),
  ADD KEY `progreso_encuesta_entidad_id_foreign` (`entidad_id`);

--
-- Indices de la tabla `respuestas`
--
ALTER TABLE `respuestas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `respuestas_pregunta_id_foreign` (`pregunta_id`),
  ADD KEY `respuestas_entidad_id_foreign` (`entidad_id`);

--
-- Indices de la tabla `secciones`
--
ALTER TABLE `secciones`
  ADD PRIMARY KEY (`id`),
  ADD KEY `secciones_encuesta_id_foreign` (`encuesta_id`);

--
-- Indices de la tabla `titulares`
--
ALTER TABLE `titulares`
  ADD PRIMARY KEY (`id`),
  ADD KEY `titulares_entidad_id_foreign` (`entidad_id`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `validacion`
--
ALTER TABLE `validacion`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `avance_encuesta`
--
ALTER TABLE `avance_encuesta`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;
--
-- AUTO_INCREMENT de la tabla `encuestados`
--
ALTER TABLE `encuestados`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;
--
-- AUTO_INCREMENT de la tabla `encuestas`
--
ALTER TABLE `encuestas`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT de la tabla `entidades`
--
ALTER TABLE `entidades`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;
--
-- AUTO_INCREMENT de la tabla `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
--
-- AUTO_INCREMENT de la tabla `modulos`
--
ALTER TABLE `modulos`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT de la tabla `notificaciones`
--
ALTER TABLE `notificaciones`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;
--
-- AUTO_INCREMENT de la tabla `opciones`
--
ALTER TABLE `opciones`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
--
-- AUTO_INCREMENT de la tabla `pdtes_filtrados`
--
ALTER TABLE `pdtes_filtrados`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=885;
--
-- AUTO_INCREMENT de la tabla `preguntas`
--
ALTER TABLE `preguntas`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
--
-- AUTO_INCREMENT de la tabla `presidentes`
--
ALTER TABLE `presidentes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;
--
-- AUTO_INCREMENT de la tabla `progreso_encuesta`
--
ALTER TABLE `progreso_encuesta`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;
--
-- AUTO_INCREMENT de la tabla `respuestas`
--
ALTER TABLE `respuestas`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=243;
--
-- AUTO_INCREMENT de la tabla `secciones`
--
ALTER TABLE `secciones`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de la tabla `titulares`
--
ALTER TABLE `titulares`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;
--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de la tabla `validacion`
--
ALTER TABLE `validacion`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;
--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `avance_encuesta`
--
ALTER TABLE `avance_encuesta`
  ADD CONSTRAINT `avance_encuesta_entidad_id_foreign` FOREIGN KEY (`entidad_id`) REFERENCES `entidades` (`id`);

--
-- Filtros para la tabla `encuestados`
--
ALTER TABLE `encuestados`
  ADD CONSTRAINT `encuestados_entidad_id_foreign` FOREIGN KEY (`entidad_id`) REFERENCES `entidades` (`id`);

--
-- Filtros para la tabla `modulos`
--
ALTER TABLE `modulos`
  ADD CONSTRAINT `modulos_seccion_id_foreign` FOREIGN KEY (`seccion_id`) REFERENCES `secciones` (`id`);

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

--
-- Filtros para la tabla `presidentes`
--
ALTER TABLE `presidentes`
  ADD CONSTRAINT `presidentes_entidad_id_foreign` FOREIGN KEY (`entidad_id`) REFERENCES `entidades` (`id`);

--
-- Filtros para la tabla `progreso_encuesta`
--
ALTER TABLE `progreso_encuesta`
  ADD CONSTRAINT `progreso_encuesta_entidad_id_foreign` FOREIGN KEY (`entidad_id`) REFERENCES `entidades` (`id`);

--
-- Filtros para la tabla `respuestas`
--
ALTER TABLE `respuestas`
  ADD CONSTRAINT `respuestas_entidad_id_foreign` FOREIGN KEY (`entidad_id`) REFERENCES `entidades` (`id`),
  ADD CONSTRAINT `respuestas_pregunta_id_foreign` FOREIGN KEY (`pregunta_id`) REFERENCES `preguntas` (`id`);

--
-- Filtros para la tabla `secciones`
--
ALTER TABLE `secciones`
  ADD CONSTRAINT `secciones_encuesta_id_foreign` FOREIGN KEY (`encuesta_id`) REFERENCES `encuestas` (`id`);

--
-- Filtros para la tabla `titulares`
--
ALTER TABLE `titulares`
  ADD CONSTRAINT `titulares_entidad_id_foreign` FOREIGN KEY (`entidad_id`) REFERENCES `entidades` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
