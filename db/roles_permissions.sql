-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Aug 07, 2023 at 08:55 PM
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
-- Table structure for table `model_has_permissions`
--

DROP TABLE IF EXISTS `model_has_permissions`;
CREATE TABLE `model_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `model_has_roles`
--

DROP TABLE IF EXISTS `model_has_roles`;
CREATE TABLE `model_has_roles` (
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(1, 'App\\Models\\Admin', 1),
(1, 'App\\Models\\Admin', 2),
(7, 'App\\Models\\Admin', 3);

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

DROP TABLE IF EXISTS `permissions`;
CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `foreign_keyyy` int(11) DEFAULT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `foreign_keyyy`, `guard_name`, `created_at`, `updated_at`) VALUES
(2, 'clients', NULL, 'admin', '2022-06-26 23:53:36', '2022-06-26 23:53:36'),
(4, 'suppliers', NULL, 'admin', '2022-06-26 23:53:37', '2022-06-26 23:53:37'),
(6, 'users', NULL, 'admin', '2022-06-26 23:53:37', '2022-06-26 23:53:37'),
(7, 'roles', NULL, 'admin', '2022-06-26 23:53:37', '2022-06-26 23:53:37'),
(14, 'customs', NULL, 'admin', '2023-06-18 19:57:11', '2023-06-18 19:57:11'),
(15, 'partners', NULL, 'admin', '2023-07-04 21:02:17', '2023-07-04 21:02:17'),
(16, 'projects', NULL, 'admin', '2023-07-04 22:28:07', '2023-07-04 22:28:07'),
(17, 'contacts', NULL, 'admin', '2023-07-05 20:05:44', '2023-07-05 20:05:44'),
(18, 'categories', NULL, 'admin', '2023-07-17 19:32:07', '2023-07-17 19:32:07'),
(20, 'add_category', 18, 'admin', '2023-07-17 19:33:00', '2023-07-17 19:33:00'),
(21, 'edit_category', 18, 'admin', '2023-07-17 19:33:22', '2023-07-17 19:33:22'),
(22, 'delete_category', 18, 'admin', '2023-07-17 19:56:04', '2023-07-17 19:56:04'),
(23, 'news', NULL, 'admin', '2023-07-18 21:13:33', '2023-07-18 21:13:33'),
(24, 'add_news', 23, 'admin', '2023-07-18 21:14:10', '2023-07-18 21:14:10'),
(25, 'edit_news', 23, 'admin', '2023-07-18 21:14:30', '2023-07-18 21:14:30'),
(26, 'delete_news', 23, 'admin', '2023-07-18 21:14:47', '2023-07-18 21:14:47'),
(27, 'products', NULL, 'admin', '2023-07-21 14:06:37', '2023-07-21 14:06:37'),
(28, 'add_products', 27, 'admin', NULL, NULL),
(29, 'edit_products', 27, 'admin', NULL, NULL),
(30, 'delete_products', 27, 'admin', NULL, NULL),
(31, 'branches', NULL, 'admin', NULL, NULL),
(32, 'add_branches', 31, 'admin', NULL, NULL),
(33, 'edit_branches', 31, 'admin', NULL, NULL),
(34, 'delete_branches', 31, 'admin', NULL, NULL),
(35, 'add_clients', 2, 'admin', '2023-08-05 19:50:09', '2023-08-05 19:50:09'),
(36, 'edit_clients', 2, 'admin', '2023-08-05 19:50:09', '2023-08-05 19:50:09'),
(37, 'delete_clients', 2, 'admin', '2023-08-05 19:50:09', '2023-08-05 19:50:09'),
(38, 'add_suppliers', 4, 'admin', '2023-08-05 19:57:24', '2023-08-05 19:57:24'),
(39, 'edit_suppliers', 4, 'admin', '2023-08-05 19:57:53', '2023-08-05 19:57:53'),
(40, 'delete_suppliers', 4, 'admin', '2023-08-05 19:58:13', '2023-08-05 19:58:13'),
(42, 'edit_customs', 14, 'admin', '2023-08-05 20:03:22', '2023-08-05 20:03:22'),
(44, 'add_partners', 15, 'admin', '2023-08-05 20:05:20', '2023-08-05 20:05:20'),
(45, 'edit_partners', 15, 'admin', '2023-08-05 20:06:45', '2023-08-05 20:06:45'),
(46, 'delete_partners', 15, 'admin', '2023-08-05 20:07:05', '2023-08-05 20:07:05'),
(47, 'add_projects', 16, 'admin', '2023-08-05 20:12:54', '2023-08-05 20:12:54'),
(48, 'edit_projects', 16, 'admin', '2023-08-05 20:13:34', '2023-08-05 20:13:34'),
(49, 'delete_projects', 16, 'admin', '2023-08-05 20:14:08', '2023-08-05 20:14:08'),
(50, 'add_contacts', 17, 'admin', '2023-08-05 20:14:48', '2023-08-05 20:14:48'),
(51, 'edit_contacts', 17, 'admin', '2023-08-05 20:15:20', '2023-08-05 20:15:20'),
(52, 'delete_contacts', 17, 'admin', '2023-08-05 20:15:54', '2023-08-05 20:15:54'),
(53, 'add_users', 6, 'admin', '2023-08-05 20:24:58', '2023-08-05 20:24:58'),
(54, 'edit_users', 6, 'admin', '2023-08-05 20:25:21', '2023-08-05 20:25:21'),
(55, 'delete_users', 6, 'admin', '2023-08-05 20:25:50', '2023-08-05 20:25:50'),
(56, 'add_roles', 7, 'admin', '2023-08-05 20:26:20', '2023-08-05 20:26:20'),
(57, 'edit_roles', 7, 'admin', '2023-08-05 20:26:48', '2023-08-05 20:26:48'),
(58, 'delete_roles', 7, 'admin', '2023-08-05 20:27:17', '2023-08-05 20:27:17'),
(59, 'sliders', NULL, 'admin', '2023-08-05 20:59:26', '2023-08-05 20:59:26'),
(60, 'add_sliders', 59, 'admin', '2023-08-06 20:59:49', '2023-08-06 20:59:49'),
(61, 'edit_sliders', 59, 'admin', '2023-08-06 21:02:08', '2023-08-06 21:02:13'),
(62, 'delete_sliders', 59, 'admin', '2023-08-05 21:00:51', '2023-08-05 21:00:51'),
(65, 'details_branches', 31, 'admin', '2023-08-06 20:34:47', '2023-08-06 20:34:47'),
(66, 'settings', NULL, 'admin', '2023-08-06 21:09:38', '2023-08-06 21:09:38'),
(67, 'edit_settings', 66, 'admin', '2023-08-06 21:10:39', '2023-08-06 21:10:39'),
(68, 'details_projects', 16, 'admin', '2023-08-06 21:26:46', '2023-08-06 21:26:46');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'owner', 'admin', '2022-06-26 23:53:41', '2022-06-26 23:53:41'),
(6, 'admin', 'admin', '2022-07-26 20:56:43', '2022-07-26 20:56:43'),
(7, 'مشرف', 'admin', '2023-08-07 20:14:38', '2023-08-07 20:14:38');

-- --------------------------------------------------------

--
-- Table structure for table `role_has_permissions`
--

DROP TABLE IF EXISTS `role_has_permissions`;
CREATE TABLE `role_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_has_permissions`
--

INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
(2, 1),
(4, 1),
(6, 1),
(7, 1),
(14, 1),
(15, 1),
(16, 1),
(17, 1),
(18, 1),
(20, 1),
(21, 1),
(22, 1),
(23, 1),
(24, 1),
(25, 1),
(26, 1),
(27, 1),
(28, 1),
(29, 1),
(30, 1),
(31, 1),
(32, 1),
(33, 1),
(34, 1),
(35, 1),
(36, 1),
(37, 1),
(38, 1),
(39, 1),
(40, 1),
(42, 1),
(44, 1),
(45, 1),
(46, 1),
(47, 1),
(48, 1),
(49, 1),
(50, 1),
(51, 1),
(52, 1),
(53, 1),
(54, 1),
(55, 1),
(56, 1),
(57, 1),
(58, 1),
(59, 1),
(60, 1),
(61, 1),
(62, 1),
(65, 1),
(66, 1),
(67, 1),
(68, 1),
(2, 6),
(4, 6),
(6, 6),
(7, 6),
(14, 6),
(15, 6),
(16, 6),
(17, 6),
(18, 6),
(20, 6),
(21, 6),
(22, 6),
(23, 6),
(24, 6),
(25, 6),
(26, 6),
(27, 6),
(28, 6),
(29, 6),
(30, 6),
(31, 6),
(32, 6),
(33, 6),
(34, 6),
(35, 6),
(36, 6),
(37, 6),
(38, 6),
(39, 6),
(40, 6),
(42, 6),
(44, 6),
(45, 6),
(46, 6),
(47, 6),
(48, 6),
(49, 6),
(50, 6),
(51, 6),
(52, 6),
(53, 6),
(54, 6),
(55, 6),
(56, 6),
(57, 6),
(58, 6),
(59, 6),
(60, 6),
(61, 6),
(62, 6),
(65, 6),
(2, 7),
(4, 7),
(15, 7),
(16, 7),
(17, 7),
(18, 7),
(23, 7),
(27, 7),
(31, 7),
(44, 7),
(59, 7);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  ADD KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  ADD KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
