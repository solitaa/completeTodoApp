-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Jan 24, 2019 at 09:19 AM
-- Server version: 5.7.23
-- PHP Version: 7.2.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `completetodoapp`
--

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_01_23_145700_create_todos_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `todos`
--

DROP TABLE IF EXISTS `todos`;
CREATE TABLE IF NOT EXISTS `todos` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `todo` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `completed` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `todos`
--

INSERT INTO `todos` (`id`, `todo`, `completed`, `created_at`, `updated_at`) VALUES
(15, 'harum officiis expedita autem hic in excepturi voluptas.', 0, '2019-01-24 17:03:03', '2019-01-24 17:15:42'),
(2, 'hic sed nihil ut mollitia ut fuga laudantium labore modi eum cupiditate eos.', 1, '2019-01-23 23:18:46', '2019-01-24 16:56:00'),
(14, 'Quidem nisi occaecati veniam qui natus ad amet.', 0, '2019-01-24 17:03:03', '2019-01-24 17:03:03'),
(4, 'Labore eos cumque non maxime aut quas iure omnis voluptatum omnis non sequi.', 1, '2019-01-23 23:18:46', '2019-01-24 16:56:57'),
(10, 'bvfvbf', 0, '2019-01-24 16:57:00', '2019-01-24 16:57:00'),
(11, 'dada', 0, '2019-01-24 16:58:52', '2019-01-24 16:58:52'),
(12, 'Aut facere ut optio minima dolore doloribus.', 0, '2019-01-24 17:03:03', '2019-01-24 17:03:03'),
(13, 'Voluptas aut illo omnis id dolorem non.', 0, '2019-01-24 17:03:03', '2019-01-24 17:03:03'),
(16, 'Possimus in ducimus architecto dolor rerum quisquam ut ullam eos quos quae incidunt.', 0, '2019-01-24 17:03:03', '2019-01-24 17:03:03'),
(17, 'Voluptatum sit rerum quo a accusantium quia sed reiciendis.', 0, '2019-01-24 17:03:03', '2019-01-24 17:03:03'),
(18, 'Et et velit quia quis et aliquid laudantium sequi eum et.', 0, '2019-01-24 17:03:03', '2019-01-24 17:03:03'),
(19, 'Officiis quis repellendus occaecati magni voluptas occaecati minus reiciendis reiciendis suscipit vel nihil.', 0, '2019-01-24 17:03:03', '2019-01-24 17:03:03'),
(20, 'Voluptatem nemo error quaerat aliquid dolores placeat inventore adipisci ut sint voluptates.', 0, '2019-01-24 17:03:03', '2019-01-24 17:03:03'),
(21, 'Omnis consectetur quos ea tempore aut harum error quisquam saepe qui eligendi alias similique.', 0, '2019-01-24 17:03:03', '2019-01-24 17:03:03'),
(22, 'vsvsf', 0, '2019-01-24 17:14:09', '2019-01-24 17:14:09');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
