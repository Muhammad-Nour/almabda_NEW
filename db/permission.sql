-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jul 18, 2023 at 04:28 PM
-- Server version: 5.7.24
-- PHP Version: 7.4.20

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `almabda_site`
--

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

DROP TABLE IF EXISTS `permissions`;
CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(2, 'clients', 'admin', '2022-06-26 23:53:36', '2022-06-26 23:53:36'),
(4, 'suppliers', 'admin', '2022-06-26 23:53:37', '2022-06-26 23:53:37'),
(6, 'users', 'admin', '2022-06-26 23:53:37', '2022-06-26 23:53:37'),
(7, 'roles', 'admin', '2022-06-26 23:53:37', '2022-06-26 23:53:37'),
(10, 'add', 'admin', '2022-06-26 23:53:37', '2022-06-26 23:53:37'),
(11, 'edit', 'admin', '2022-06-26 23:53:37', '2022-06-26 23:53:37'),
(12, 'delete', 'admin', '2022-06-26 23:53:38', '2022-06-26 23:53:38'),
(13, 'show', 'admin', '2022-07-03 19:56:59', '2022-07-03 19:56:59'),
(14, 'customs', 'admin', '2023-06-18 19:57:11', '2023-06-18 19:57:11'),
(15, 'partners', 'admin', '2023-07-04 21:02:17', '2023-07-04 21:02:17'),
(16, 'projects', 'admin', '2023-07-04 22:28:07', '2023-07-04 22:28:07'),
(17, 'contacts', 'admin', '2023-07-05 20:05:44', '2023-07-05 20:05:44'),
(18, 'categories', 'admin', '2023-07-17 19:32:07', '2023-07-17 19:32:07'),
(20, 'add_category', 'admin', '2023-07-17 19:33:00', '2023-07-17 19:33:00'),
(21, 'edit_category', 'admin', '2023-07-17 19:33:22', '2023-07-17 19:33:22'),
(22, 'delete_category', 'admin', '2023-07-17 19:56:04', '2023-07-17 19:56:04');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_name_guard_name_unique` (`name`,`guard_name`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
