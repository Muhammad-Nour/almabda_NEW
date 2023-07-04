-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jul 04, 2023 at 01:35 PM
-- Server version: 5.7.24
-- PHP Version: 7.4.11

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
-- Table structure for table `partners`
--

CREATE TABLE `partners` (
  `id` bigint(20) NOT NULL,
  `name_ar` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name_en` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `photo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `admin_id` int(11) NOT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `partners`
--

INSERT INTO `partners` (`id`, `name_ar`, `name_en`, `photo`, `admin_id`, `updated_by`, `created_at`, `updated_at`) VALUES
(3, 'jhj', 'hkjh', 'partners-2-270x145.png', 1, NULL, '2023-07-04 07:13:52', '2023-07-04 07:13:52'),
(4, 'kjlk', 'trgdgf', 'partners-1-270x145.png', 1, NULL, '2023-07-04 07:13:52', '2023-07-04 07:13:52'),
(5, 'jhjs', 'hkjhj', 'partners-3-270x145.png', 1, NULL, '2023-07-04 07:13:52', '2023-07-04 07:13:52'),
(6, 'kjlkg', 'trgdgfd', 'partners-4-270x145.png', 1, NULL, '2023-07-04 07:13:52', '2023-07-04 07:13:52'),
(7, 'jhjd', 'hkjhsa', 'partners-6-270x145.png', 1, NULL, '2023-07-04 07:13:52', '2023-07-04 07:13:52'),
(8, 'kjlkds', 'trgdgfas', 'partners-7-270x145.png', 1, NULL, '2023-07-04 07:13:52', '2023-07-04 07:13:52'),
(9, 'jhjssa', 'hkjhjaf', 'partners-5-270x145.png', 1, NULL, '2023-07-04 07:13:52', '2023-07-04 07:13:52'),
(10, 'kjlkga', 'trgdgfds', 'partners-8-270x145.png', 1, NULL, '2023-07-04 07:13:52', '2023-07-04 07:13:52');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `partners`
--
ALTER TABLE `partners`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name_en` (`name_en`),
  ADD UNIQUE KEY `name_ar` (`name_ar`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `partners`
--
ALTER TABLE `partners`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
