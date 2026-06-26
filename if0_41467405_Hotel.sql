-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Servidor: sql102.byetcluster.com
-- Tiempo de generación: 26-06-2026 a las 10:27:27
-- Versión del servidor: 11.4.12-MariaDB
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
-- Base de datos: `if0_41467405_Hotel`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clientes`
--

CREATE TABLE `clientes` (
  `id` int(11) NOT NULL,
  `nombre` varchar(100) DEFAULT NULL,
  `numero_de_telefono` varchar(20) DEFAULT NULL,
  `numero_de_identificacion` varchar(30) DEFAULT NULL,
  `fecha_de_nacimiento` date DEFAULT NULL,
  `direccion` varchar(120) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `clientes`
--

INSERT INTO `clientes` (`id`, `nombre`, `numero_de_telefono`, `numero_de_identificacion`, `fecha_de_nacimiento`, `direccion`) VALUES
(1, 'Juan Pérez', '70000001', 'ID0001', '1995-01-15', 'San Salvador'),
(2, 'María López', '70000002', 'ID0002', '1994-02-18', 'Santa Ana'),
(3, 'Carlos Gómez', '70000003', 'ID0003', '1996-03-20', 'Sonsonate'),
(4, 'Ana Martínez', '70000004', 'ID0004', '1997-04-12', 'La Libertad'),
(5, 'Luis Hernández', '70000005', 'ID0005', '1993-05-30', 'San Miguel'),
(6, 'Sofía Ramírez', '70000006', 'ID0006', '1998-06-14', 'Usulután'),
(7, 'José Díaz', '70000007', 'ID0007', '1992-07-22', 'Ahuachapán'),
(8, 'Laura Flores', '70000008', 'ID0008', '1991-08-10', 'La Paz'),
(9, 'Miguel Torres', '70000009', 'ID0009', '1999-09-09', 'Cuscatlán'),
(10, 'Carmen Ruiz', '70000010', 'ID0010', '1990-10-01', 'Chalatenango'),
(11, 'Pedro Castro', '70000011', 'ID0011', '1995-11-11', 'Morazán'),
(12, 'Daniela Cruz', '70000012', 'ID0012', '1996-12-25', 'San Vicente'),
(13, 'Ricardo Molina', '70000013', 'ID0013', '1994-01-08', 'Cabañas'),
(14, 'Patricia Silva', '70000014', 'ID0014', '1997-02-17', 'La Unión'),
(15, 'Fernando Vega', '70000015', 'ID0015', '1993-03-13', 'San Salvador'),
(16, 'Gabriela Ortiz', '70000016', 'ID0016', '1998-04-27', 'Santa Ana'),
(17, 'Diego Rivas', '70000017', 'ID0017', '1991-05-05', 'Sonsonate'),
(18, 'Valeria Reyes', '70000018', 'ID0018', '1992-06-19', 'San Miguel'),
(19, 'Jorge Navarro', '70000019', 'ID0019', '1999-07-28', 'La Libertad'),
(20, 'Natalia Campos', '70000020', 'ID0020', '1990-08-16', 'Usulután'),
(21, 'Kevin Romero', '70000021', 'ID0021', '1995-09-03', 'Ahuachapán'),
(22, 'Paola Méndez', '70000022', 'ID0022', '1996-10-22', 'La Paz'),
(23, 'Óscar Herrera', '70000023', 'ID0023', '1994-11-29', 'Cuscatlán'),
(24, 'Andrea Fuentes', '70000024', 'ID0024', '1997-12-07', 'Morazán'),
(25, 'Roberto Aguilar', '70000025', 'ID0025', '1993-01-19', 'San Vicente');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empleados`
--

CREATE TABLE `empleados` (
  `id` int(11) NOT NULL,
  `nombre` varchar(100) DEFAULT NULL,
  `cargo` varchar(50) DEFAULT NULL,
  `telefono` varchar(20) DEFAULT NULL,
  `salario` decimal(10,2) DEFAULT NULL,
  `fecha_contratacion` date DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `empleados`
--

INSERT INTO `empleados` (`id`, `nombre`, `cargo`, `telefono`, `salario`, `fecha_contratacion`) VALUES
(1, 'Mario López', 'Gerente', '60000001', '1200.00', '2022-01-10'),
(2, 'Ana Pérez', 'Recepcionista', '60000002', '650.00', '2022-02-12'),
(3, 'Luis Gómez', 'Limpieza', '60000003', '500.00', '2022-03-15'),
(4, 'Carlos Díaz', 'Seguridad', '60000004', '550.00', '2022-04-18'),
(5, 'María Ruiz', 'Recepcionista', '60000005', '650.00', '2022-05-20'),
(6, 'José Torres', 'Limpieza', '60000006', '500.00', '2022-06-22'),
(7, 'Laura Castro', 'Gerente', '60000007', '1200.00', '2022-07-25'),
(8, 'Pedro Flores', 'Seguridad', '60000008', '550.00', '2022-08-12'),
(9, 'Sofía Hernández', 'Recepcionista', '60000009', '650.00', '2022-09-10'),
(10, 'Miguel Martínez', 'Limpieza', '60000010', '500.00', '2022-10-05'),
(11, 'Daniel Ramírez', 'Seguridad', '60000011', '550.00', '2022-11-01'),
(12, 'Patricia Silva', 'Recepcionista', '60000012', '650.00', '2022-12-08'),
(13, 'Ricardo Molina', 'Gerente', '60000013', '1200.00', '2023-01-14'),
(14, 'Gabriela Cruz', 'Limpieza', '60000014', '500.00', '2023-02-19'),
(15, 'Fernando Vega', 'Seguridad', '60000015', '550.00', '2023-03-11'),
(16, 'Andrea Ortiz', 'Recepcionista', '60000016', '650.00', '2023-04-17'),
(17, 'Diego Rivas', 'Limpieza', '60000017', '500.00', '2023-05-20'),
(18, 'Valeria Reyes', 'Gerente', '60000018', '1200.00', '2023-06-22'),
(19, 'Jorge Navarro', 'Seguridad', '60000019', '550.00', '2023-07-25'),
(20, 'Natalia Campos', 'Recepcionista', '60000020', '650.00', '2023-08-14'),
(21, 'Kevin Romero', 'Limpieza', '60000021', '500.00', '2023-09-09'),
(22, 'Paola Méndez', 'Seguridad', '60000022', '550.00', '2023-10-10'),
(23, 'Óscar Herrera', 'Recepcionista', '60000023', '650.00', '2023-11-12'),
(24, 'Andrea Fuentes', 'Limpieza', '60000024', '500.00', '2023-12-18'),
(25, 'Roberto Aguilar', 'Gerente', '60000025', '1200.00', '2024-01-05');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `habitaciones`
--

CREATE TABLE `habitaciones` (
  `id` int(11) NOT NULL,
  `numero_de_habitacion` varchar(10) DEFAULT NULL,
  `tipo_de_habitacion` varchar(30) DEFAULT NULL,
  `piso` varchar(10) DEFAULT NULL,
  `descripcion_habitacion` text DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `habitaciones`
--

INSERT INTO `habitaciones` (`id`, `numero_de_habitacion`, `tipo_de_habitacion`, `piso`, `descripcion_habitacion`) VALUES
(1, 'H001', 'Simple', '1', 'Habitación Simple'),
(2, 'H002', 'Doble', '1', 'Habitación Doble'),
(3, 'H003', 'Suite', '1', 'Habitación Suite'),
(4, 'H004', 'Simple', '1', 'Habitación Simple'),
(5, 'H005', 'Doble', '1', 'Habitación Doble'),
(6, 'H006', 'Suite', '2', 'Habitación Suite'),
(7, 'H007', 'Simple', '2', 'Habitación Simple'),
(8, 'H008', 'Doble', '2', 'Habitación Doble'),
(9, 'H009', 'Suite', '2', 'Habitación Suite'),
(10, 'H010', 'Simple', '2', 'Habitación Simple'),
(11, 'H011', 'Doble', '3', 'Habitación Doble'),
(12, 'H012', 'Suite', '3', 'Habitación Suite'),
(13, 'H013', 'Simple', '3', 'Habitación Simple'),
(14, 'H014', 'Doble', '3', 'Habitación Doble'),
(15, 'H015', 'Suite', '3', 'Habitación Suite'),
(16, 'H016', 'Simple', '4', 'Habitación Simple'),
(17, 'H017', 'Doble', '4', 'Habitación Doble'),
(18, 'H018', 'Suite', '4', 'Habitación Suite'),
(19, 'H019', 'Simple', '4', 'Habitación Simple'),
(20, 'H020', 'Doble', '4', 'Habitación Doble'),
(21, 'H021', 'Suite', '5', 'Habitación Suite'),
(22, 'H022', 'Simple', '5', 'Habitación Simple'),
(23, 'H023', 'Doble', '5', 'Habitación Doble'),
(24, 'H024', 'Suite', '5', 'Habitación Suite'),
(25, 'H025', 'Simple', '5', 'Habitación Simple');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pagos`
--

CREATE TABLE `pagos` (
  `id` int(11) NOT NULL,
  `fecha_pago` date DEFAULT NULL,
  `monto` decimal(10,2) DEFAULT NULL,
  `metodo_pago` varchar(30) DEFAULT NULL,
  `id_reserva` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `pagos`
--

INSERT INTO `pagos` (`id`, `fecha_pago`, `monto`, `metodo_pago`, `id_reserva`) VALUES
(1, '2026-03-01', '100.00', 'Efectivo', 1),
(2, '2026-03-02', '120.00', 'Tarjeta', 2),
(3, '2026-03-03', '180.00', 'Transferencia', 3),
(4, '2026-03-04', '100.00', 'Efectivo', 4),
(5, '2026-03-05', '120.00', 'Tarjeta', 5),
(6, '2026-03-06', '180.00', 'Transferencia', 6),
(7, '2026-03-07', '100.00', 'Efectivo', 7),
(8, '2026-03-08', '120.00', 'Tarjeta', 8),
(9, '2026-03-09', '180.00', 'Transferencia', 9),
(10, '2026-03-10', '100.00', 'Efectivo', 10),
(11, '2026-03-11', '120.00', 'Tarjeta', 11),
(12, '2026-03-12', '180.00', 'Transferencia', 12),
(13, '2026-03-13', '100.00', 'Efectivo', 13),
(14, '2026-03-14', '120.00', 'Tarjeta', 14),
(15, '2026-03-15', '180.00', 'Transferencia', 15),
(16, '2026-03-16', '100.00', 'Efectivo', 16),
(17, '2026-03-17', '120.00', 'Tarjeta', 17),
(18, '2026-03-18', '180.00', 'Transferencia', 18),
(19, '2026-03-19', '100.00', 'Efectivo', 19),
(20, '2026-03-20', '120.00', 'Tarjeta', 20),
(21, '2026-03-21', '180.00', 'Transferencia', 21),
(22, '2026-03-22', '100.00', 'Efectivo', 22),
(23, '2026-03-23', '120.00', 'Tarjeta', 23),
(24, '2026-03-24', '180.00', 'Transferencia', 24),
(25, '2026-03-25', '100.00', 'Efectivo', 25);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `reservas`
--

CREATE TABLE `reservas` (
  `id` int(11) NOT NULL,
  `fecha_entrada` date DEFAULT NULL,
  `fecha_salida` date DEFAULT NULL,
  `estado` varchar(20) DEFAULT NULL,
  `id_cliente` int(11) DEFAULT NULL,
  `id_habitacion` int(11) DEFAULT NULL,
  `id_empleado` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `reservas`
--

INSERT INTO `reservas` (`id`, `fecha_entrada`, `fecha_salida`, `estado`, `id_cliente`, `id_habitacion`, `id_empleado`) VALUES
(1, '2026-03-01', '2026-03-03', 'Confirmada', 1, 1, 1),
(2, '2026-03-02', '2026-03-04', 'Confirmada', 2, 2, 2),
(3, '2026-03-03', '2026-03-05', 'Confirmada', 3, 3, 3),
(4, '2026-03-04', '2026-03-06', 'Pendiente', 4, 4, 4),
(5, '2026-03-05', '2026-03-07', 'Confirmada', 5, 5, 5),
(6, '2026-03-06', '2026-03-08', 'Confirmada', 6, 6, 6),
(7, '2026-03-07', '2026-03-09', 'Pendiente', 7, 7, 7),
(8, '2026-03-08', '2026-03-10', 'Confirmada', 8, 8, 8),
(9, '2026-03-09', '2026-03-11', 'Confirmada', 9, 9, 9),
(10, '2026-03-10', '2026-03-12', 'Pendiente', 10, 10, 10),
(11, '2026-03-11', '2026-03-13', 'Confirmada', 11, 11, 11),
(12, '2026-03-12', '2026-03-14', 'Confirmada', 12, 12, 12),
(13, '2026-03-13', '2026-03-15', 'Pendiente', 13, 13, 13),
(14, '2026-03-14', '2026-03-16', 'Confirmada', 14, 14, 14),
(15, '2026-03-15', '2026-03-17', 'Confirmada', 15, 15, 15),
(16, '2026-03-16', '2026-03-18', 'Pendiente', 16, 16, 16),
(17, '2026-03-17', '2026-03-19', 'Confirmada', 17, 17, 17),
(18, '2026-03-18', '2026-03-20', 'Confirmada', 18, 18, 18),
(19, '2026-03-19', '2026-03-21', 'Pendiente', 19, 19, 19),
(20, '2026-03-20', '2026-03-22', 'Confirmada', 20, 20, 20),
(21, '2026-03-21', '2026-03-23', 'Confirmada', 21, 21, 21),
(22, '2026-03-22', '2026-03-24', 'Pendiente', 22, 22, 22),
(23, '2026-03-23', '2026-03-25', 'Confirmada', 23, 23, 23),
(24, '2026-03-24', '2026-03-26', 'Confirmada', 24, 24, 24),
(25, '2026-03-25', '2026-03-27', 'Pendiente', 25, 25, 25);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `empleados`
--
ALTER TABLE `empleados`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `habitaciones`
--
ALTER TABLE `habitaciones`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `pagos`
--
ALTER TABLE `pagos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_reserva` (`id_reserva`);

--
-- Indices de la tabla `reservas`
--
ALTER TABLE `reservas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_cliente` (`id_cliente`),
  ADD KEY `id_habitacion` (`id_habitacion`),
  ADD KEY `id_empleado` (`id_empleado`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
