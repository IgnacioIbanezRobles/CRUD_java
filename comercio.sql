-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 28-11-2023 a las 19:08:59
-- Versión del servidor: 10.4.28-MariaDB
-- Versión de PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `comercio`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `departamentos`
--

CREATE TABLE `departamentos` (
  `id_departamento` int(11) NOT NULL,
  `Nombre` varchar(30) NOT NULL,
  `Presupuesto` decimal(10,2) NOT NULL,
  `Gastos` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empleados`
--

CREATE TABLE `empleados` (
  `id_empleados` int(11) NOT NULL,
  `nombre` varchar(30) NOT NULL,
  `apellido` varchar(30) NOT NULL,
  `apellido2` varchar(30) NOT NULL,
  `Puesto` varchar(20) NOT NULL,
  `Salario` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `empleados`
--

INSERT INTO `empleados` (`id_empleados`, `nombre`, `apellido`, `apellido2`, `Puesto`, `Salario`) VALUES
(1, 'Alejandro', 'Jacinto', 'Benavente', 'Asalariado', 3000.00),
(2, 'Federico', 'de Palma', 'Loranzo', 'Becario', 500.00),
(3, 'Manuel', 'Lorca', 'De pez', 'Analista', 2222.00),
(7, 'Juan', 'Pérez', 'Gómez', 'Gerente', 50000.00),
(8, 'María', 'López', 'Fernández', 'Asistente', 30000.00),
(9, 'Carlos', 'García', 'Martínez', 'Desarrollador', 45000.00),
(10, 'Ana', 'Rodríguez', 'Sánchez', 'Analista', 40000.00),
(11, 'Eduardo', 'Martínez', 'López', 'Contador', 55000.00),
(12, 'Sofía', 'Hernández', 'González', 'Diseñador', 42000.00),
(13, 'Alberto', 'Díaz', 'Ramírez', 'Asistente', 32000.00),
(14, 'Laura', 'Gutiérrez', 'Silva', 'Gerente', 52000.00),
(15, 'Javier', 'Fernández', 'Luna', 'Desarrollador', 48000.00),
(16, 'Mónica', 'Ramírez', 'Pérez', 'Analista', 41000.00),
(17, 'Ricardo', 'Silva', 'Gómez', 'Contador', 56000.00),
(18, 'Paola', 'González', 'Hernández', 'Diseñador', 43000.00),
(19, 'David', 'Luna', 'Fernández', 'Gerente', 51000.00),
(20, 'Natalia', 'Martínez', 'Ramírez', 'Desarrollador', 47000.00),
(21, 'Felipe', 'Pérez', 'Gutiérrez', 'Analista', 42000.00),
(22, 'Isabel', 'Hernández', 'López', 'Contador', 54000.00),
(23, 'Oscar', 'Ramírez', 'González', 'Diseñador', 44000.00),
(24, 'Camila', 'Silva', 'Fernández', 'Gerente', 53000.00),
(25, 'Juan', 'Luna', 'Pérez', 'Desarrollador', 46000.00),
(26, 'Alicia', 'Gómez', 'Martínez', 'Analista', 43000.00),
(27, 'Francisco', 'Martínez', 'Hernández', 'Contador', 58000.00),
(28, 'Patricia', 'Fernández', 'Ramírez', 'Diseñador', 45000.00),
(29, 'Andrés', 'Pérez', 'Gutiérrez', 'Gerente', 54000.00),
(30, 'Valeria', 'Hernández', 'Luna', 'Desarrollador', 49000.00),
(31, 'Manuel', 'Gutiérrez', 'Silva', 'Analista', 41000.00),
(32, 'Carmen', 'Ramírez', 'Pérez', 'Contador', 57000.00),
(33, 'Roberto', 'Silva', 'Gómez', 'Diseñador', 46000.00),
(34, 'Fernanda', 'González', 'Hernández', 'Gerente', 52000.00),
(35, 'Gustavo', 'Luna', 'Fernández', 'Desarrollador', 48000.00),
(36, 'Liliana', 'Martínez', 'Ramírez', 'Analista', 43000.00);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `id_producto` int(100) NOT NULL,
  `Nombre` varchar(20) NOT NULL,
  `Precio` decimal(10,2) NOT NULL,
  `Cantidad` int(255) NOT NULL,
  `Fecha` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`id_producto`, `Nombre`, `Precio`, `Cantidad`, `Fecha`) VALUES
(1, 'PC Asus', 22.00, 44, '2002-12-12'),
(2, 'Smartphone Samsung G', 899.99, 30, '2023-11-24'),
(3, 'Smartwatch Apple Wat', 399.99, 15, '2023-11-25'),
(4, 'Cámara Mirrorless So', 1999.99, 10, '2023-11-25'),
(6, 'Teclado mecánico Cor', 169.99, 40, '2023-11-27'),
(7, 'Mouse Logitech G Pro', 129.99, 30, '2023-11-27'),
(8, 'Auriculares Sony WH-', 299.99, 15, '2023-11-28'),
(9, 'Router ASUS RT-AX88U', 249.99, 20, '2023-11-28'),
(10, 'Tableta gráfica Waco', 349.99, 12, '2023-11-29'),
(11, 'Altavoces Bluetooth ', 199.99, 18, '2023-11-29'),
(12, 'Impresora 3D Crealit', 259.99, 8, '2023-11-30'),
(13, 'SSD Samsung 970 EVO ', 149.99, 25, '2023-11-30'),
(14, 'Proyector Epson Home', 2499.99, 5, '2023-12-01'),
(16, 'Tarjeta gráfica NVID', 699.99, 10, '2023-12-02'),
(20, 'Television OLED LG C', 1999.99, 5, '2023-12-04'),
(21, 'Smart TV Samsung QLE', 1299.99, 10, '2023-12-05'),
(22, 'Impresora láser Brot', 199.99, 15, '2023-12-05'),
(23, 'Tarjeta madre ASUS R', 349.99, 8, '2023-12-06'),
(24, 'Reproductor de strea', 79.99, 25, '2023-12-06'),
(26, 'Cámara de seguridad ', 299.99, 12, '2023-12-07'),
(27, 'Monitor gaming ASUS ', 279.99, 18, '2023-12-08'),
(28, 'Auriculares inalámbr', 149.99, 30, '2022-12-08'),
(29, 'Disco duro externo S', 119.99, 12, '2023-12-09'),
(30, 'Procesador AMD Ryzen', 549.99, 5, '2023-12-09'),
(31, 'Smartphone iPhone 13', 1099.99, 15, '2023-12-10'),
(32, 'Sistema de altavoces', 399.99, 8, '2023-12-10'),
(33, 'Lámpara inteligente ', 59.99, 25, '2023-12-11'),
(34, 'Portátil gaming Alie', 2199.99, 10, '2023-12-11'),
(35, 'Monitor curvo Samsun', 699.99, 20, '2023-12-12'),
(36, 'Teclado mecánico Raz', 169.99, 15, '2023-12-12'),
(37, 'Router gaming TP-Lin', 399.99, 10, '2023-12-13'),
(38, 'Cámara de acción GoP', 349.99, 8, '2023-12-13'),
(39, 'Auriculares gaming S', 149.99, 12, '2023-12-14'),
(40, 'Monitor portátil ASU', 249.99, 15, '2023-12-14'),
(41, 'Huawei PRO', 200.00, 55, '2002-12-12');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`username`, `password`) VALUES
('admin', 'admin'),
('ignacio', '320744bffe3a6ee6ab788f4f9ead0edbc60d5be6'),
('manuel', 'qwerty'),
('paco', '1234');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ventas`
--

CREATE TABLE `ventas` (
  `id_venta` int(11) NOT NULL,
  `Fecha_venta` datetime NOT NULL,
  `Vendedor` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_producto` int(11) NOT NULL,
  `Cantidad` int(11) NOT NULL,
  `Precio_Unitario` decimal(10,2) NOT NULL,
  `Subtotal` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `ventas`
--

INSERT INTO `ventas` (`id_venta`, `Fecha_venta`, `Vendedor`, `id_producto`, `Cantidad`, `Precio_Unitario`, `Subtotal`) VALUES
(2, '2023-11-20 00:00:00', 'fernandez', 1, 66, 4.00, 264.00),
(3, '2023-11-20 00:00:00', 'manuel', 1, 3, 4.00, 12.00),
(4, '2023-11-23 16:35:58', 'Ramon', 1, 5, 6.00, 30.00),
(5, '2023-10-23 16:20:02', 'perez', 1, 5, 6.00, 30.00),
(6, '2023-11-24 10:15:30', 'gonzalez', 2, 3, 8.00, 24.00),
(7, '2023-11-25 14:45:00', 'lopez', 4, 10, 4.00, 40.00),
(8, '2023-11-26 12:30:45', 'gomez', 1, 8, 7.00, 56.00),
(9, '2023-11-27 09:20:15', 'rodriguez', 1, 6, 10.00, 60.00),
(10, '2020-09-05 00:00:00', 'Miguel', 4, 2, 200.00, 400.00);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `departamentos`
--
ALTER TABLE `departamentos`
  ADD PRIMARY KEY (`id_departamento`);

--
-- Indices de la tabla `empleados`
--
ALTER TABLE `empleados`
  ADD PRIMARY KEY (`id_empleados`);

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`id_producto`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`username`);

--
-- Indices de la tabla `ventas`
--
ALTER TABLE `ventas`
  ADD PRIMARY KEY (`id_venta`),
  ADD KEY `id_producto` (`id_producto`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `departamentos`
--
ALTER TABLE `departamentos`
  MODIFY `id_departamento` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `empleados`
--
ALTER TABLE `empleados`
  MODIFY `id_empleados` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT de la tabla `productos`
--
ALTER TABLE `productos`
  MODIFY `id_producto` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT de la tabla `ventas`
--
ALTER TABLE `ventas`
  MODIFY `id_venta` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `ventas`
--
ALTER TABLE `ventas`
  ADD CONSTRAINT `ventas_ibfk_1` FOREIGN KEY (`id_producto`) REFERENCES `productos` (`id_producto`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
