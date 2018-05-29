-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 29-Maio-2018 às 19:04
-- Versão do servidor: 10.1.25-MariaDB
-- PHP Version: 7.1.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `devmaker`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `lista`
--

CREATE TABLE `lista` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(50) NOT NULL DEFAULT '0',
  `item` varchar(500) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `lista`
--

INSERT INTO `lista` (`id`, `title`, `item`) VALUES
(59, 'Primeira postagem', 'Temos uma primeira postagem. Está tudo ok.'),
(60, 'Nova postagem', 'Temos uma postagem nova, está tudo certo.');

-- --------------------------------------------------------

--
-- Estrutura da tabela `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `password_resets`
--

CREATE TABLE `password_resets` (
  `id` int(11) UNSIGNED NOT NULL,
  `email` varchar(50) NOT NULL,
  `token` varchar(250) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `password_resets`
--

INSERT INTO `password_resets` (`id`, `email`, `token`, `created_at`) VALUES
(26, 'marcos.w.queiroz@gmail.com', '$2y$10$rU/pr3UaaphbJ1OKDSlqHuluyjostL9g48n5WIACQaeanBsz8xpzu', '2018-05-29 18:34:29'),
(27, 'dev@marcosqueirozweb.com', '$2y$10$pZ7/qCJKEhbO7Pgli9w/..S1zZH7kAvJCW7POx14d9qBgGwoOHB9C', '2018-05-29 18:37:28');

-- --------------------------------------------------------

--
-- Estrutura da tabela `users`
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
-- Extraindo dados da tabela `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Marcos', 'marcos@marcos.com', '$2y$10$eaZzeorxbqXUN7wIyVs61.hejYet3q8ShH6kfnkB37oT05PCODvtq', 'OO6sWD6Jy0l5VAWXVjD2hJZiaUTTwPUUPr41nDx47Mp2OD0lrPIXaRrbpQlP', '2018-05-28 22:06:51', '2018-05-28 22:06:51'),
(2, 'João', 'joao@joao.com.br', '$2y$10$jBqdstOPkbWzFVOr8ABAauJyUw6kD2BdO972C3WV4CV7Vb3KwvEEa', '3Iz2Qay5tZb7AYiCo8fEgFD958Fh7fBF1XO2YvsNgCMJpI5XYwyHMhwoLJBO', '2018-05-28 23:24:43', '2018-05-28 23:24:43'),
(3, 'Marcos', 'marcos.w.queiroz@gmail.com', '$2y$10$m3ySgc/D6DUXsSwW09/wl.WTPGHiAY7fJ8iAaIhwpAdQ3mVDghCji', 'IFjHoiBeBMNrExE9HLNoFLlZ5suNTDHxGRUJe9oYW9kuOo1iLhfkPpQWJ12Y', '2018-05-29 15:27:47', '2018-05-29 17:08:53'),
(4, 'Marcos', 'dev@marcosqueirozweb.com', '$2y$10$2V4OA6DoLa1ClbD15x47Uu0JBD3wFcQX2PsVLnidZ6XUHGtKM9/y.', 'CvGiuSbnwj3fwdKGl5j0Ndmc21Grn9DgZMK4Fmn6DvIZOdB5Mmluw085e7hE', '2018-05-29 18:37:14', '2018-05-29 18:37:14');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `lista`
--
ALTER TABLE `lista`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `lista`
--
ALTER TABLE `lista`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;
--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `password_resets`
--
ALTER TABLE `password_resets`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
