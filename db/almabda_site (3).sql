-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jul 03, 2023 at 06:42 PM
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
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` bigint(20) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subject` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `notes` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `projects`
--

CREATE TABLE `projects` (
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
-- Dumping data for table `projects`
--

INSERT INTO `projects` (`id`, `name_ar`, `name_en`, `photo`, `admin_id`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 'مشروع 1', 'project 1', 'grid-gallery-1-1200x800-original.jpg', 1, NULL, '2023-07-03 12:49:01', '2023-07-03 12:49:01'),
(2, 'مشروع 2', 'project 2', 'grid-gallery-2-1200x800-original.jpg', 1, NULL, '2023-07-03 12:49:01', '2023-07-03 12:49:01'),
(3, 'مشروع 3', 'project 3', 'grid-gallery-3-1200x800-original.jpg', 1, NULL, '2023-07-03 12:49:01', '2023-07-03 12:49:01'),
(4, 'مشروع 4', 'project 4', 'grid-gallery-4-1200x800-original.jpg', 1, NULL, '2023-07-03 12:49:01', '2023-07-03 12:49:01'),
(5, 'مشروع 5', 'project 5', 'grid-gallery-5-1200x800-original.jpg', 1, NULL, '2023-07-03 12:49:01', '2023-07-03 12:49:01'),
(6, 'مشروع 6', 'project 6', 'grid-gallery-6-1200x800-original.jpg', 1, NULL, '2023-07-03 12:49:01', '2023-07-03 12:49:01');

-- --------------------------------------------------------

--
-- Table structure for table `project_galleries`
--

CREATE TABLE `project_galleries` (
  `id` bigint(20) NOT NULL,
  `photo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `project_id` int(11) NOT NULL,
  `admin_id` int(11) NOT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `project_galleries`
--

INSERT INTO `project_galleries` (`id`, `photo`, `project_id`, `admin_id`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 'fullwidth-gallery-8-1200x800-original.jpg', 1, 1, NULL, '2023-07-03 13:12:48', '2023-07-03 13:12:48'),
(2, 'fullwidth-gallery-7-1200x800-original.jpg', 1, 1, NULL, '2023-07-03 13:12:48', '2023-07-03 13:12:48'),
(3, 'fullwidth-gallery-5-1200x800-original.jpg', 1, 1, NULL, '2023-07-03 13:12:48', '2023-07-03 13:12:48'),
(4, 'fullwidth-gallery-4-1200x800-original.jpg', 1, 1, NULL, '2023-07-03 13:12:48', '2023-07-03 13:12:48'),
(5, 'grid-gallery-1-1200x800-original.jpg', 1, 1, NULL, '2023-07-03 13:12:48', '2023-07-03 13:12:48'),
(6, 'fullwidth-gallery-1-1200x800-original.jpg', 1, 1, NULL, '2023-07-03 13:12:48', '2023-07-03 13:12:48');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `projects`
--
ALTER TABLE `projects`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name_en` (`name_en`),
  ADD UNIQUE KEY `name_ar` (`name_ar`);

--
-- Indexes for table `project_galleries`
--
ALTER TABLE `project_galleries`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `projects`
--
ALTER TABLE `projects`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `project_galleries`
--
ALTER TABLE `project_galleries`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
