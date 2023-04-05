-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 05-04-2023 a las 02:07:51
-- Versión del servidor: 10.4.25-MariaDB
-- Versión de PHP: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `parcial`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `citas_examenes`
--

CREATE TABLE `citas_examenes` (
  `Asignacion` bigint(20) UNSIGNED NOT NULL,
  `Fecha_Examen` varchar(200) NOT NULL,
  `Tipo_Examen` varchar(200) NOT NULL,
  `Hora` varchar(200) NOT NULL,
  `Ciudad` varchar(200) NOT NULL,
  `Ced` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `citas_medicas`
--

CREATE TABLE `citas_medicas` (
  `Asignacion` bigint(20) UNSIGNED NOT NULL,
  `Fehca_cita` varchar(200) NOT NULL,
  `Tipo_cita` varchar(200) NOT NULL,
  `Hora` varchar(200) NOT NULL,
  `Ciudad` varchar(200) NOT NULL,
  `Ced` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `citas_medicas`
--

INSERT INTO `citas_medicas` (`Asignacion`, `Fehca_cita`, `Tipo_cita`, `Hora`, `Ciudad`, `Ced`) VALUES
(47, '2023-03-23', 'Telemedica', '10:38', 'Bucaramanga', '1005259101');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empleados`
--

CREATE TABLE `empleados` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nombre` varchar(200) NOT NULL,
  `apellido1` varchar(200) NOT NULL,
  `apelldio2` varchar(200) NOT NULL,
  `edad` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `empleados`
--

INSERT INTO `empleados` (`id`, `nombre`, `apellido1`, `apelldio2`, `edad`) VALUES
(1, 'manuel', 'castro', 'malaver', '20'),
(2, 'yuli', 'lipez', 'capacho', '20'),
(3, 'michell', 'sierra', 'rabelo', '12'),
(35, 'rafael', 'rodriguez', 'costa', '30'),
(36, 'rafael', 'rodriguez', 'costa', '30'),
(37, 'rafael', 'rodriguez', 'costa', '30'),
(38, 'andres ', 'sierra', 'castro', '11'),
(39, 'diego', 'castro', 'malaver', '21');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `taller`
--

CREATE TABLE `taller` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `cedula` varchar(200) NOT NULL,
  `nombre` varchar(200) NOT NULL,
  `area` varchar(200) NOT NULL,
  `categoria` varchar(200) NOT NULL,
  `telefono` varchar(200) NOT NULL,
  `descripcion` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `taller`
--

INSERT INTO `taller` (`id`, `cedula`, `nombre`, `area`, `categoria`, `telefono`, `descripcion`) VALUES
(4, '1005259101', 'manuel ricardo castro malaver', 'sistemas', 'doctorado', '3142118741', 'experto en back end    '),
(45, '1234567890', 'diego fernando rodriguez alvarez', 'sistemas', 'especialidad', '3245675321', 'experto en seguridad cibernética y experto sistemas operativos');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `Documento` varchar(200) NOT NULL,
  `tipo_doc` varchar(200) NOT NULL,
  `Nombre` varchar(200) NOT NULL,
  `Apellido` varchar(200) NOT NULL,
  `Correo` varchar(200) NOT NULL,
  `Telefono` varchar(200) NOT NULL,
  `password` varchar(200) NOT NULL,
  `Fecha_Nac` varchar(200) NOT NULL,
  `Expediccion_Ced` varchar(200) NOT NULL,
  `Tipos_Afiliacion` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`Documento`, `tipo_doc`, `Nombre`, `Apellido`, `Correo`, `Telefono`, `password`, `Fecha_Nac`, `Expediccion_Ced`, `Tipos_Afiliacion`) VALUES
('1005259101', 'C.C.', 'manuel ricardo', 'castro malaver', 'malavermanuelricardo@gmail.com', '3208946678', '123', '2002-12-27', '2021-01-04', 'contributivo');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `citas_examenes`
--
ALTER TABLE `citas_examenes`
  ADD PRIMARY KEY (`Asignacion`),
  ADD UNIQUE KEY `Asignacion` (`Asignacion`),
  ADD KEY `foraneaExamen` (`Ced`);

--
-- Indices de la tabla `citas_medicas`
--
ALTER TABLE `citas_medicas`
  ADD PRIMARY KEY (`Asignacion`),
  ADD UNIQUE KEY `Asignacion` (`Asignacion`),
  ADD KEY `foraneacita` (`Ced`);

--
-- Indices de la tabla `empleados`
--
ALTER TABLE `empleados`
  ADD UNIQUE KEY `id` (`id`);

--
-- Indices de la tabla `taller`
--
ALTER TABLE `taller`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`Documento`),
  ADD UNIQUE KEY `Correo` (`Correo`),
  ADD UNIQUE KEY `Documento` (`Documento`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `citas_examenes`
--
ALTER TABLE `citas_examenes`
  MODIFY `Asignacion` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT de la tabla `citas_medicas`
--
ALTER TABLE `citas_medicas`
  MODIFY `Asignacion` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT de la tabla `empleados`
--
ALTER TABLE `empleados`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT de la tabla `taller`
--
ALTER TABLE `taller`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `citas_examenes`
--
ALTER TABLE `citas_examenes`
  ADD CONSTRAINT `foraneaExamen` FOREIGN KEY (`Ced`) REFERENCES `usuarios` (`Documento`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `citas_medicas`
--
ALTER TABLE `citas_medicas`
  ADD CONSTRAINT `foraneacita` FOREIGN KEY (`Ced`) REFERENCES `usuarios` (`Documento`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
