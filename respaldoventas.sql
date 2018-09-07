-- phpMyAdmin SQL Dump
-- version 4.8.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 07-09-2018 a las 02:59:39
-- Versión del servidor: 10.1.31-MariaDB
-- Versión de PHP: 7.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `ventas`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `carousels`
--

CREATE TABLE `carousels` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `file` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT 'sin-imagen.jpg',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `carousels`
--

INSERT INTO `carousels` (`id`, `title`, `description`, `file`, `created_at`, `updated_at`) VALUES
(3, 'Carousel1', 'Mi primer imagen', 'http://localhost/cris/public/image/4SsUUFN2RksmSfZmz5DF8fkOn3GCv6wJdWBXKn7Y.jpeg', '2018-08-09 03:22:39', '2018-08-09 03:22:39'),
(4, 'Carousel2', 'Mi segunda Imagen', 'http://localhost/cris/public/image/EJhWbPzkJf3QJkVWT9QQWGSBLpSgSMFsogNV6m6E.jpeg', '2018-08-09 03:23:13', '2018-08-09 03:23:13'),
(5, 'Carousel3', 'Mi tercera imagen', 'http://localhost/cris/public/image/cGkkvyHumPOKqtkp0EADPwho6xZ3qzpnNpgXdHbm.jpeg', '2018-08-09 03:23:51', '2018-08-09 03:23:51'),
(6, 'Carousel4', 'Mi imagen 4', 'http://localhost/cris/public/image/A2hi2gpGEFSbKwxVXVzBO74irRhvqlmrqnVLqKAe.jpeg', '2018-08-09 03:24:25', '2018-08-09 03:24:25'),
(7, 'Carousel5', 'Mi imagen 5', 'http://localhost/cris/public/image/dsmkFvK1iOtcTiQPgNc6Kjj52F8OanrF2xaEOrnk.jpeg', '2018-08-09 03:35:51', '2018-08-09 03:35:51');

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
(36, '2014_10_12_000000_create_users_table', 1),
(37, '2014_10_12_100000_create_password_resets_table', 1),
(38, '2018_07_25_230704_create_products_table', 1),
(39, '2018_08_07_222215_create_carousels_table', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `products`
--

CREATE TABLE `products` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `short` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `file` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT 'sin-imagen.jpg',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `products`
--

INSERT INTO `products` (`id`, `name`, `short`, `body`, `file`, `created_at`, `updated_at`) VALUES
(1, 'Omnis tenetur magnam.', 'Ad soluta vel temporibus eius qui fugiat. Qui vel pariatur est ea. Porro sed voluptatem harum est.', 'Aut pariatur aliquid qui nemo iure assumenda. Quidem omnis tempora sit eaque. Hic minima ut dolores repellat consequatur aspernatur enim.', 'http://localhost/cris/public/image/mvhC9CRWXRfdu6lFL61ZouBFBz1PuvikEGyedOKK.jpeg', '2018-08-08 02:28:00', '2018-08-09 01:58:33'),
(2, 'Maxime ut.', 'Est laborum dolor sequi animi corrupti. Iste fuga sapiente et omnis.', 'Sapiente dignissimos in sint totam natus non. Vero et earum reprehenderit quos saepe. Ea aut modi sunt voluptates. Dolorem expedita est tempore nemo.', 'http://localhost/cris/public/image/r41LSndKPoXNd1r0ZeyJWfDr8Bb6TvRwvaFShBky.jpeg', '2018-08-08 02:28:00', '2018-08-15 06:33:39'),
(3, 'Unde suscipit non.', 'In necessitatibus laborum et dolore ut. Dolorem nemo voluptas expedita.', 'Est labore corporis deserunt nihil maiores ipsam. Aut autem et blanditiis accusamus ut dicta neque. Debitis quas sed est quia voluptatibus. Reiciendis quod officia vero nesciunt pariatur cumque fuga.', 'https://lorempixel.com/50/100/?40079', '2018-08-08 02:28:00', '2018-08-08 02:28:00'),
(4, 'Deleniti tempore consequatur.', 'Quis tempora fugit dolores sapiente. Aperiam quibusdam assumenda aspernatur.', 'Consequatur consequuntur ut ad unde dicta voluptatem aut. Aspernatur sint molestias dolores. Magni temporibus earum rerum cumque aspernatur labore nostrum. Consequuntur quia quasi officiis.', 'https://lorempixel.com/50/100/?39686', '2018-08-08 02:28:00', '2018-08-08 02:28:00'),
(5, 'Sit non sapiente.', 'Labore quos et et est. Aliquam quae iusto eos. Unde ab rem illo similique quo.', 'Est aperiam culpa doloribus voluptate. Facilis architecto et cupiditate totam id fugiat qui. Eum ipsam unde sed in doloremque omnis officiis nemo. Non est qui reiciendis quod.', 'https://lorempixel.com/50/100/?96100', '2018-08-08 02:28:00', '2018-08-08 02:28:00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'London Gaylord', 'abner.heathcote@example.net', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'sGNmP26kA9', '2018-08-08 02:28:00', '2018-08-08 02:28:00'),
(2, 'Berneice Bechtelar', 'anita69@example.net', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'vOjNCOKU6y', '2018-08-08 02:28:00', '2018-08-08 02:28:00'),
(3, 'Jamar Windler', 'shanie.corwin@example.com', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'mf991MnciU', '2018-08-08 02:28:00', '2018-08-08 02:28:00'),
(4, 'Anabelle Moore', 'ida91@example.net', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', '5ZnGaNqoum', '2018-08-08 02:28:00', '2018-08-08 02:28:00'),
(5, 'Reed Rempel', 'sleannon@example.com', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', '36IQibBpuj', '2018-08-08 02:28:00', '2018-08-08 02:28:00'),
(6, 'Braulio Schimmel', 'otha.bosco@example.net', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'ml93xTXvvo', '2018-08-08 02:28:00', '2018-08-08 02:28:00'),
(7, 'Grayce Bruen MD', 'strosin.myrtice@example.com', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'J2tTWMaO48', '2018-08-08 02:28:00', '2018-08-08 02:28:00'),
(8, 'Emerson Kovacek', 'abshire.aleen@example.net', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'BB2QSc76rz', '2018-08-08 02:28:00', '2018-08-08 02:28:00'),
(9, 'Teresa Nader', 'daniel.trey@example.org', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', '4XacVmCTQF', '2018-08-08 02:28:00', '2018-08-08 02:28:00'),
(10, 'Faustino Christiansen', 'ukilback@example.org', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'YLikac4scR', '2018-08-08 02:28:00', '2018-08-08 02:28:00'),
(11, 'Cristal Gaviria', 'cristal.61@gmail.com', '$2y$10$CfGFpbihfEuqiNyqPUxpF.IBDi6O1DkCuLZ4VG4g5.xJ7lurP2Ygq', NULL, '2018-08-08 02:28:01', '2018-08-08 02:28:01');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `carousels`
--
ALTER TABLE `carousels`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indices de la tabla `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `carousels`
--
ALTER TABLE `carousels`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT de la tabla `products`
--
ALTER TABLE `products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
