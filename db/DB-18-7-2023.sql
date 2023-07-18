-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jul 18, 2023 at 05:25 PM
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
-- Table structure for table `admins`
--

DROP TABLE IF EXISTS `admins`;
CREATE TABLE `admins` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `roles_name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `name`, `email`, `email_verified_at`, `password`, `roles_name`, `remember_token`, `status`, `created_at`, `updated_at`) VALUES
(1, 'ahmed', 'ahmed@gmail.com', NULL, '$2y$10$1KlsjH6ifLTdAVvjUyv4duqdYnypH.Y./uCrL4UvyIPL5CUc8T/I2', '[\"owner\"]', 'MP0qZN7YcKWFTUzGWvChY738gu4BTdeURw8vMjEv84Ew2q5fZj6EsZQ34IId', 1, NULL, '2023-02-19 22:16:04'),
(2, 'muhammad nour', 'muhammad.nour111@gmail.com', NULL, '$2y$10$p/jaTeCfGwuhOBUuo1s23.9yg5XZx/LJXjsYyOM8WWqYb8ecivEFe', '[\"owner\"]', 'WFucFnx9NdnFRppMqHMbie5N0PNKHriS6cx6kctRzKnb3Twi6x8QUyjayTXa', 1, NULL, '2023-02-04 23:12:11');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name_ar` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name_en` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` int(11) DEFAULT NULL,
  `admin_id` bigint(20) UNSIGNED NOT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name_ar`, `name_en`, `code`, `admin_id`, `updated_by`, `created_at`, `updated_at`) VALUES
(7, 'الفوم المصرى', 'a', 1, 1, NULL, '2023-02-16 00:18:57', '2023-02-20 22:53:24'),
(8, 'فوم - تاجات', 'b', 2, 1, NULL, '2023-02-20 22:53:38', '2023-02-20 22:53:38'),
(9, 'فوم - زوايا', 'c', 3, 2, NULL, '2023-06-02 20:02:05', '2023-06-02 20:02:05'),
(10, 'الأوراك', 'd', 4, 2, NULL, '2023-06-07 20:25:25', '2023-06-07 20:25:25'),
(11, 'ستيل', 'e', 5, 2, NULL, '2023-06-07 20:26:04', '2023-06-07 20:26:04'),
(12, 'مرايات ديكور', 'f', 6, 2, NULL, '2023-06-07 21:13:00', '2023-06-07 21:13:00'),
(13, 'بلاطات ثرى دى', 'g', 7, 2, NULL, '2023-06-07 21:16:57', '2023-06-07 21:16:57'),
(14, 'بديل الرخام', 'h', 8, 2, NULL, '2023-06-07 20:25:25', '2023-06-07 20:25:25'),
(15, 'الفوم الصينى', 'i', 9, 2, NULL, '2023-06-07 20:26:04', '2023-06-07 20:26:04'),
(16, 'بديل الخشب', 'j', 10, 2, NULL, '2023-06-07 21:13:00', '2023-06-07 21:13:00'),
(17, 'باركيه Spc', 'k', 11, 2, NULL, '2023-06-07 21:16:57', '2023-06-07 21:16:57');

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

DROP TABLE IF EXISTS `contacts`;
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

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`id`, `name`, `phone`, `email`, `subject`, `message`, `notes`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 'محمد نور محمد', '01151379295', 'muhammad.nour111@gmail.com', 'شكر و تقدير', 'شكرا لمجهودكم', 'لا يوجد', NULL, '2023-07-10 22:29:28', '2023-07-10 22:29:28');

-- --------------------------------------------------------

--
-- Table structure for table `customs`
--

DROP TABLE IF EXISTS `customs`;
CREATE TABLE `customs` (
  `id` bigint(20) NOT NULL,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description_ar` text COLLATE utf8mb4_unicode_ci,
  `description_en` text COLLATE utf8mb4_unicode_ci,
  `photo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `admin_id` int(11) NOT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `customs`
--

INSERT INTO `customs` (`id`, `code`, `description_ar`, `description_en`, `photo`, `admin_id`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 'about', 'مؤسسة المبدأ للديكور لبيع مواد الديكور بالجملة والقطاعى وتصميم وتنفيذ تشطيبات الديكور للشقق والمكاتب والمؤسسات. توفير خامات عالية الجودة وتقديم ارقى التصميمات للديكورات\r\n</p>\r\n<p>\r\nمؤسسة المبدأ للديكور لبيع مواد الديكور بالجملة والقطاعى وتصميم وتنفيذ تشطيبات الديكور للشقق والمكاتب والمؤسسات. توفير خامات عالية الجودة وتقديم ارقى التصميمات للديكورات\r\n</p>\r\n<p>\r\nمؤسسة المبدأ للديكور لبيع مواد الديكور بالجملة والقطاعى وتصميم وتنفيذ تشطيبات الديكور للشقق والمكاتب والمؤسسات. توفير خامات عالية الجودة وتقديم ارقى التصميمات للديكورات\r\n</p>\r\n<p>\r\nمؤسسة المبدأ للديكور لبيع مواد الديكور بالجملة والقطاعى وتصميم وتنفيذ تشطيبات الديكور للشقق والمكاتب والمؤسسات. توفير خامات عالية الجودة وتقديم ارقى التصميمات للديكورات 00', 'Al Mabdhel Decoration Est. Wholesale and retail sale of decoration materials, design and implementation of decorative finishes for apartments, offices and institutions. Providing high quality materials and providing the finest designs for decorations\r\n</p>\r\n<p>\r\nAl Mabdhel Decoration Est. Wholesale and retail sale of decoration materials, design and implementation of decorative finishes for apartments, offices and institutions. Providing high quality materials and providing the finest designs for decorations\r\n</p>\r\n<p>\r\n  Al Mabdhel Decoration Est. Wholesale and retail sale of decoration materials, design and implementation of decorative finishes for apartments, offices and institutions. Providing high quality materials and providing the finest designs for decorations\r\n</p>\r\n<p>\r\nAl Mabdhel Decoration Est. Wholesale and retail sale of decoration materials, design and implementation of decorative finishes for apartments, offices and institutions. Providing high quality materials and providing the finest designs for decorations  00', 'custom/17903945_618157781714857_5476120378350959786_n.png', 2, NULL, '2023-07-04 07:28:52', '2023-07-10 20:34:47'),
(2, 'secrets_photo', '', '', 'video-2-570x438.jpg', 1, NULL, '2023-07-04 07:28:52', '2023-07-04 07:28:52'),
(3, 'secret1', 'التركيز على عملائنا', 'Focus on our clients', '', 1, NULL, '2023-07-04 07:28:52', '2023-07-04 07:28:52'),
(4, 'secret2', 'الإبداع فى التصميم', 'Creativity in design', '', 1, NULL, '2023-07-04 07:28:52', '2023-07-04 07:28:52'),
(5, 'secret3', 'أسعار تنافسية', 'Competitive prices', '', 1, NULL, '2023-07-04 07:28:52', '2023-07-04 07:28:52'),
(6, 'secret4', 'جودة متميزة', 'Premium quality', '', 1, NULL, '2023-07-04 07:28:52', '2023-07-04 07:28:52'),
(7, 'secrets_video', 'https://www.youtube.com/embed/e_TCFkRDmls', 'https://www.youtube.com/embed/e_TCFkRDmls', '', 1, NULL, '2023-07-04 07:28:52', '2023-07-04 07:28:52');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(1, 'App\\Models\\Admin', 2);

-- --------------------------------------------------------

--
-- Table structure for table `partners`
--

DROP TABLE IF EXISTS `partners`;
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
(4, 'kjlk', 'trgdgf', 'partners-1-270x145.png', 1, NULL, '2023-07-04 07:13:52', '2023-07-04 07:13:52'),
(5, 'jhjs', 'hkjhj', 'partners-3-270x145.png', 1, NULL, '2023-07-04 07:13:52', '2023-07-04 07:13:52'),
(6, 'kjlkg', 'trgdgfd', 'partners-4-270x145.png', 1, NULL, '2023-07-04 07:13:52', '2023-07-04 07:13:52'),
(7, 'jhjd', 'hkjhsa', 'partners-6-270x145.png', 1, NULL, '2023-07-04 07:13:52', '2023-07-04 07:13:52'),
(8, 'kjlkds', 'trgdgfas', 'partners-7-270x145.png', 1, NULL, '2023-07-04 07:13:52', '2023-07-04 07:13:52'),
(9, 'jhjssa', 'hkjhjaf', 'partners-5-270x145.png', 1, NULL, '2023-07-04 07:13:52', '2023-07-04 07:13:52'),
(10, 'kjlkga', 'trgdgfds', 'partners-8-270x145.png', 1, NULL, '2023-07-04 07:13:52', '2023-07-04 07:13:52'),
(11, 'شركة 1', 'company 1', '10.jpg', 2, NULL, '2023-07-04 21:20:43', '2023-07-04 21:39:51');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('muhammad.nour1111@gmail.com', '$2y$10$Q19..cD/r91R/b2L7S4QiewO6FKLjWpngEF6tiu7Aq1MhY/3Ioo9G', '2023-06-05 21:58:24');

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

DROP TABLE IF EXISTS `password_reset_tokens`;
CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `password_reset_tokens`
--

INSERT INTO `password_reset_tokens` (`email`, `token`, `created_at`) VALUES
('muhammad.nour111@gmail.com', '$2y$10$DLRJdfGy/HDLRuI2J5VnLuY6yQWPrNnBc5b1zNG4KRIGYp2zJUCma', '2023-03-20 20:06:49');

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

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

DROP TABLE IF EXISTS `personal_access_tokens`;
CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name_ar` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name_en` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `unit_ar` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `unit_en` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `quantity` int(11) NOT NULL,
  `pre_price` double(10,2) NOT NULL,
  `discount` double(10,2) NOT NULL DEFAULT '0.00',
  `price` double(10,2) NOT NULL DEFAULT '0.00',
  `purchase_price` double(10,2) NOT NULL DEFAULT '0.00',
  `notify` int(11) DEFAULT '100',
  `photo` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `small_photo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description_ar` text CHARACTER SET utf8,
  `description_en` text COLLATE utf8mb4_unicode_ci,
  `details_ar` text CHARACTER SET utf8,
  `details_en` text COLLATE utf8mb4_unicode_ci,
  `admin_id` bigint(20) UNSIGNED NOT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name_ar`, `name_en`, `unit_ar`, `unit_en`, `quantity`, `pre_price`, `discount`, `price`, `purchase_price`, `notify`, `photo`, `small_photo`, `description_ar`, `description_en`, `details_ar`, `details_en`, `admin_id`, `updated_by`, `category_id`, `created_at`, `updated_at`) VALUES
(1, 'منتج 1', 'product 1', 'قطعة', 'قطعة', 2, 15.00, 0.00, 10.00, 20.00, 1, 'admin/add3.jpg', 'admin/add2.jpg', 'أ', 'A', 'أ', 'A', 2, 2, 7, NULL, '2023-07-02 11:31:21'),
(2, 'عربي', 'إنجليزي', 'رول', 'رول', 5, 110.00, 0.00, 100.00, 120.00, 1, 'admin/IMG_76329281233627٠٠٠.jpeg', 'admin/dekorat2day.com_1366487586713.jpg', 'ا', 'a', 'ا', 'a', 2, 2, 7, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `product_galleries`
--

DROP TABLE IF EXISTS `product_galleries`;
CREATE TABLE `product_galleries` (
  `id` int(11) NOT NULL,
  `photo` varchar(255) NOT NULL,
  `product_id` int(11) NOT NULL,
  `admin_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL,
  `updated_at` timestamp NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `product_galleries`
--

INSERT INTO `product_galleries` (`id`, `photo`, `product_id`, `admin_id`, `created_at`, `updated_at`) VALUES
(8, 'admin/3.PNG', 63, 1, '2023-01-11 23:17:20', '2023-01-11 23:17:20'),
(9, 'admin/111.PNG', 63, 1, '2023-01-11 23:17:20', '2023-01-11 23:17:20'),
(10, 'admin/slider.PNG', 77, 1, '2023-01-12 00:17:45', '2023-01-12 00:17:45'),
(11, 'admin/vali.PNG', 77, 1, '2023-01-12 00:17:45', '2023-01-12 00:17:45'),
(16, 'admin/2525.PNG', 79, 1, '2023-01-14 20:02:57', '2023-01-20 17:37:58'),
(17, 'admin/31.PNG', 79, 1, '2023-01-14 20:02:57', '2023-01-14 20:02:57'),
(20, 'admin/a.PNG', 81, 1, '2023-01-16 23:53:45', '2023-01-16 23:53:45'),
(21, 'admin/15.PNG', 81, 1, '2023-01-16 23:53:45', '2023-01-24 19:28:28'),
(22, 'admin/7.PNG', 81, 1, '2023-01-16 23:53:45', '2023-01-20 17:40:15'),
(23, 'admin/30.PNG', 81, 1, '2023-01-17 00:53:57', '2023-01-20 17:41:57'),
(24, 'admin/3.PNG', 81, 1, '2023-01-17 00:53:57', '2023-01-23 23:25:19'),
(25, 'admin/303.PNG', 81, 1, '2023-01-17 00:53:57', '2023-01-23 23:28:27'),
(26, 'admin/add2.jpg', 2, 2, '2023-06-06 20:56:54', '2023-06-06 20:56:54'),
(27, 'admin/add3.jpg', 1, 2, '2023-06-20 22:34:49', '2023-07-02 11:41:08'),
(28, 'admin/add2.jpg', 1, 2, '2023-07-02 11:41:27', '2023-07-02 11:41:27'),
(29, 'admin/add1.jpg', 1, 2, '2023-07-02 11:41:28', '2023-07-02 11:41:28'),
(30, 'admin/IMG_76798366235249.jpeg', 2, 2, '2023-07-05 23:25:34', '2023-07-05 23:25:34'),
(31, 'admin/imga312eea09762f98447a574ec88ff7f18.jpg', 2, 2, '2023-07-05 23:25:34', '2023-07-05 23:25:34'),
(32, 'admin/kw3QgGZqYzE.jpg', 2, 2, '2023-07-05 23:25:34', '2023-07-05 23:25:34');

-- --------------------------------------------------------

--
-- Table structure for table `product_purchase`
--

DROP TABLE IF EXISTS `product_purchase`;
CREATE TABLE `product_purchase` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` int(11) NOT NULL,
  `purchase_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `price` double(10,2) NOT NULL,
  `discount_product` double(10,2) NOT NULL,
  `discount_percent_product` double(10,2) NOT NULL,
  `net_price_product` double(10,2) NOT NULL,
  `quantity_price` double(10,2) NOT NULL,
  `sale_price` double(10,2) NOT NULL,
  `lot_number` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_purchase`
--

INSERT INTO `product_purchase` (`id`, `product_id`, `purchase_id`, `quantity`, `price`, `discount_product`, `discount_percent_product`, `net_price_product`, `quantity_price`, `sale_price`, `lot_number`, `expiration`) VALUES
(1, 1, 1, 1, 500.00, 0.00, 0.00, 500.00, 500.00, 0.00, '546412', '2022-07-28'),
(2, 1, 4, 1, 1.00, 0.00, 0.00, 1.00, 1.00, 200.00, '1', '2022-07-18'),
(3, 7, 5, 30, 50.00, 10.00, 0.00, 40.00, 1200.00, 200.00, '123', '2022-09-30'),
(4, 3, 5, 80, 60.00, 0.00, 0.05, 60.00, 4800.00, 500.00, '456', '2022-09-22'),
(7, 7, 8, 10, 40.00, 0.00, 0.00, 40.00, 400.00, 200.00, '123', '2022-09-30'),
(8, 7, 9, 20, 40.00, 0.00, 0.00, 40.00, 800.00, 200.00, '123', '2022-07-21'),
(9, 7, 10, 10, 40.00, 0.00, 0.00, 40.00, 400.00, 200.00, '789', '2022-07-21'),
(17, 1, 18, 10, 200.00, 0.00, 0.00, 200.00, 2000.00, 250.00, '1456', '2022-09-09'),
(18, 1, 19, 10, 200.00, 0.00, 0.00, 200.00, 2000.00, 250.00, '1456', '2022-09-09'),
(20, 1, 21, 10, 200.00, 0.00, 0.00, 200.00, 2000.00, 250.00, '1456', '2022-09-09'),
(21, 1, 22, 1, 1.00, 0.00, 0.00, 1.00, 1.00, 250.00, '189', '2022-08-31'),
(22, 1, 23, 1, 1.00, 0.00, 0.00, 1.00, 1.00, 250.00, '189', '2022-08-31'),
(23, 1, 24, 1, 1.00, 0.00, 0.00, 1.00, 1.00, 250.00, '189', '2022-08-31'),
(26, 1, 27, 10, 200.00, 0.00, 0.00, 200.00, 2000.00, 250.00, '6547', '2022-08-22'),
(39, 1, 40, 10, 200.00, 0.00, 0.00, 200.00, 2000.00, 250.00, '6547', '2022-09-10'),
(59, 8, 60, 1, 1.00, 0.00, 0.00, 1.00, 1.00, 100.00, '8645', '2022-09-09');

-- --------------------------------------------------------

--
-- Table structure for table `product_sale`
--

DROP TABLE IF EXISTS `product_sale`;
CREATE TABLE `product_sale` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` int(11) NOT NULL,
  `sale_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `price` double(10,2) NOT NULL,
  `discount_product` double(10,2) NOT NULL,
  `discount_percent_product` double(10,2) NOT NULL,
  `net_price_product` double(10,2) NOT NULL,
  `quantity_price` double(10,2) NOT NULL,
  `lot_number` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` date NOT NULL,
  `purchase_price` double(10,2) NOT NULL,
  `quantity_purchase` double(10,2) NOT NULL,
  `profit` double(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_sale`
--

INSERT INTO `product_sale` (`id`, `product_id`, `sale_id`, `quantity`, `price`, `discount_product`, `discount_percent_product`, `net_price_product`, `quantity_price`, `lot_number`, `expiration`, `purchase_price`, `quantity_purchase`, `profit`) VALUES
(1, 1, 1, 1, 500.00, 0.00, 0.00, 500.00, 500.00, '655665', '2022-07-31', 0.00, 0.00, 0.00),
(2, 1, 2, 1, 250.00, 0.00, 0.00, 250.00, 250.00, '1', '2022-07-18', 1.00, 1.00, 249.00),
(3, 1, 3, 1, 250.00, 0.00, 0.00, 250.00, 250.00, '1456', '2022-09-09', 200.00, 200.00, 50.00);

-- --------------------------------------------------------

--
-- Table structure for table `product_store`
--

DROP TABLE IF EXISTS `product_store`;
CREATE TABLE `product_store` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `lot_number` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` date NOT NULL,
  `purchase_price` double(10,2) NOT NULL,
  `quantity` int(11) NOT NULL,
  `quantity_price` double(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_store`
--

INSERT INTO `product_store` (`id`, `product_id`, `store_id`, `lot_number`, `expiration`, `purchase_price`, `quantity`, `quantity_price`) VALUES
(1, 1, 1, '1', '2022-07-18', 1.00, 0, -249.00),
(2, 7, 1, '123', '2022-09-30', 40.00, 40, 1600.00),
(3, 3, 1, '456', '2022-09-22', 60.00, 80, 4800.00),
(4, 7, 1, '789', '2022-09-30', 40.00, 40, 1600.00),
(5, 1, 1, '1456', '2022-09-09', 200.00, 7, 1350.00),
(6, 1, 1, '189', '2022-08-31', 1.00, 2, 2.00),
(8, 1, 1, '6547', '2022-08-22', 200.00, 22, 4400.00),
(26, 8, 1, '8645', '2022-09-09', 1.00, 1, 1.00);

-- --------------------------------------------------------

--
-- Table structure for table `projects`
--

DROP TABLE IF EXISTS `projects`;
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
(1, 'مشروع 1', 'project 1', 'projects/shbab2.net1346285763_982.jpg', 2, 2, '2023-07-03 12:49:01', NULL),
(2, 'مشروع 2', 'project 2', 'grid-gallery-2-1200x800-original.jpg', 1, NULL, '2023-07-03 12:49:01', '2023-07-03 12:49:01'),
(3, 'مشروع 3', 'project 3', 'grid-gallery-3-1200x800-original.jpg', 1, NULL, '2023-07-03 12:49:01', '2023-07-03 12:49:01'),
(4, 'مشروع 4', 'project 4', 'grid-gallery-4-1200x800-original.jpg', 1, NULL, '2023-07-03 12:49:01', '2023-07-03 12:49:01'),
(7, 'مشروع 10', 'project 10', 'projects/12512722_566061653560022_8881626929959495847_n.jpg', 2, 2, NULL, '2023-07-09 00:43:26'),
(8, 'مشروع 9', 'project 9', 'projects/1.png', 2, 2, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `project_galleries`
--

DROP TABLE IF EXISTS `project_galleries`;
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
(6, 'fullwidth-gallery-1-1200x800-original.jpg', 7, 1, NULL, '2023-07-03 13:12:48', '2023-07-03 13:12:48'),
(7, 'admin/IMG_76329281233627٠٠٠.jpeg', 7, 2, NULL, '2023-07-05 23:59:23', '2023-07-05 23:59:23'),
(8, 'admin/imga312eea09762f98447a574ec88ff7f18.jpg', 7, 2, NULL, '2023-07-05 23:59:23', '2023-07-05 23:59:23'),
(9, 'admin/kw3QgGZqYzE.jpg', 7, 2, NULL, '2023-07-05 23:59:23', '2023-07-05 23:59:23'),
(10, 'projects/1.png', 8, 2, 2, '2023-07-06 00:07:17', '2023-07-12 19:59:28'),
(12, 'projects/shbab2.net1346285763_982.jpg', 7, 2, NULL, '2023-07-08 23:02:52', '2023-07-08 23:02:52'),
(13, 'projects/10.jpg', 7, 2, NULL, '2023-07-08 23:03:54', '2023-07-08 23:03:54'),
(14, 'projects/12208567_509066015926253_1757348999780941133_n.jpg', 7, 2, 2, '2023-07-08 23:05:05', '2023-07-08 23:05:05'),
(15, 'projects/12106895_509065835926271_4091863902025177841_n.jpg', 7, 2, 2, '2023-07-09 00:43:50', '2023-07-09 00:43:50');

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
(6, 'admin', 'admin', '2022-07-26 20:56:43', '2022-07-26 20:56:43');

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
(10, 1),
(11, 1),
(12, 1),
(13, 1),
(14, 1),
(15, 1),
(16, 1),
(17, 1),
(18, 1),
(20, 1),
(21, 1),
(22, 1),
(2, 6),
(4, 6),
(6, 6),
(7, 6),
(10, 6),
(11, 6),
(12, 6),
(13, 6),
(14, 6),
(15, 6),
(16, 6),
(17, 6);

-- --------------------------------------------------------

--
-- Table structure for table `sales`
--

DROP TABLE IF EXISTS `sales`;
CREATE TABLE `sales` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `date` date NOT NULL,
  `type` tinyint(4) NOT NULL,
  `payment_way` int(11) NOT NULL,
  `total_price` double(10,2) NOT NULL DEFAULT '0.00',
  `discount_percent` double(10,2) NOT NULL DEFAULT '0.00',
  `discount` double(10,2) NOT NULL DEFAULT '0.00',
  `net_price` double(10,2) NOT NULL DEFAULT '0.00',
  `vat` double(10,2) NOT NULL DEFAULT '0.00',
  `vat_value` double(10,2) NOT NULL DEFAULT '0.00',
  `shipping_cost` double(10,2) NOT NULL DEFAULT '0.00',
  `total` double(10,2) NOT NULL DEFAULT '0.00',
  `payment` double(10,2) NOT NULL DEFAULT '0.00',
  `remain` double(10,2) NOT NULL DEFAULT '0.00',
  `due_days` int(11) NOT NULL DEFAULT '0',
  `due_date` date DEFAULT NULL,
  `prev_balance` double(10,2) NOT NULL DEFAULT '0.00',
  `balance` double(10,2) NOT NULL DEFAULT '0.00',
  `client_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sales`
--

INSERT INTO `sales` (`id`, `date`, `type`, `payment_way`, `total_price`, `discount_percent`, `discount`, `net_price`, `vat`, `vat_value`, `shipping_cost`, `total`, `payment`, `remain`, `due_days`, `due_date`, `prev_balance`, `balance`, `client_id`, `user_id`, `created_at`, `updated_at`) VALUES
(1, '2022-07-04', 1, 1, 1000.00, 0.00, 0.00, 1000.00, 0.00, 0.00, 0.00, 1000.00, 500.00, 500.00, 10, '2022-08-22', 0.00, 500.00, 1, 1, '2022-07-04 01:10:44', '2022-07-04 01:10:44'),
(2, '2022-08-21', 1, 1, 250.00, 0.00, 0.00, 250.00, 0.00, 0.00, 0.00, 250.00, 0.00, 250.00, 6, '2022-08-27', 0.00, 250.00, 3, 1, '2022-08-21 01:13:03', '2022-08-21 01:13:32'),
(3, '2022-08-22', 1, 1, 250.00, 0.00, 0.00, 250.00, 0.00, 0.00, 0.00, 250.00, 0.00, 250.00, 0, NULL, 250.00, 500.00, 3, 1, '2022-08-22 02:24:56', '2022-08-22 02:30:59');

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

DROP TABLE IF EXISTS `sessions`;
CREATE TABLE `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci,
  `payload` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('E1HSkNgPXyavtRQwpQwHxVb2nAAFLpNW9118sYmQ', 2, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiMlZCWU1ocWVieFA4aHJJM2FtSFJtN3RGZmIwRWJDbVVWcXdyakJPZCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzQ6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9yb2xlcy82L2VkaXQiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX1zOjUyOiJsb2dpbl9hZG1pbl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjI7fQ==', 1689626483),
('HVtV6pG0OzymRFQWCIvciQyHRMfJmBKmTUu3Uygn', 2, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36', 'YTo1OntzOjY6Il90b2tlbiI7czo0MDoiOVppOVhCVURxcmJvRVdrZXg1RzdQWGp6Q09zSWVaMXNZdk1sWUYwQSI7czozOiJ1cmwiO2E6MTp7czo4OiJpbnRlbmRlZCI7czo0NjoiaHR0cDovLzEyNy4wLjAuMTo4MDAwL3Byb2plY3RzZ2FsbGVyaWVzLzUvZWRpdCI7fXM6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjI3OiJodHRwOi8vMTI3LjAuMC4xOjgwMDAvYWRtaW4iO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX1zOjUyOiJsb2dpbl9hZG1pbl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjI7fQ==', 1689194685);

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

DROP TABLE IF EXISTS `settings`;
CREATE TABLE `settings` (
  `id` int(11) NOT NULL,
  `key` varchar(255) NOT NULL,
  `value` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL,
  `updated_at` timestamp NOT NULL,
  `admin_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `key`, `value`, `created_at`, `updated_at`, `admin_id`) VALUES
(1, 'phone', '011513792950', '2023-01-29 20:51:21', '2023-01-29 22:52:19', 1),
(2, 'email', 'muha@gmail.com', '2023-01-29 22:28:50', '2023-01-29 22:28:50', 1),
(5, 'address', 'مدينة نصر - القاهرة', '2023-01-29 22:53:32', '2023-01-29 22:53:32', 1);

-- --------------------------------------------------------

--
-- Table structure for table `sliders`
--

DROP TABLE IF EXISTS `sliders`;
CREATE TABLE `sliders` (
  `id` bigint(20) NOT NULL,
  `photo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title_ar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title_en` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description_ar` text COLLATE utf8mb4_unicode_ci,
  `description_en` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sliders`
--

INSERT INTO `sliders` (`id`, `photo`, `title_ar`, `title_en`, `description_ar`, `description_en`, `created_at`, `updated_at`, `user_id`) VALUES
(2, 'slider-5-slide-2-1770x742.jpg', 'صورة 3', 'image 3', 'الوصف', 'description', NULL, NULL, 0),
(3, 'slider-5-slide-3-1770x742.jpg', 'صورة 4', 'image 4', 'الوصف', 'description', NULL, NULL, 0),
(4, 'add1.jpg', 'صورة رقم 1', 'image no.1', 'الوصف', 'description', NULL, NULL, 1),
(5, 'add2.jpg', 'صورة رقم 1', 'image no.1', 'الوصف', 'description', NULL, NULL, 1),
(6, 'add4.jpg', 'صورة رقم 1', 'image no.1', 'امممم', 'abcde', NULL, '2023-01-23 21:17:40', 1),
(8, 'add3.jpg', 'صورة رقم 4', 'image no.4', 'اااا', 'aaaa', '2023-01-23 21:52:35', '2023-01-23 21:52:35', 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` int(11) DEFAULT NULL,
  `address` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `two_factor_secret` text COLLATE utf8mb4_unicode_ci,
  `two_factor_recovery_codes` text COLLATE utf8mb4_unicode_ci,
  `two_factor_confirmed_at` timestamp NULL DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `current_team_id` bigint(20) UNSIGNED DEFAULT NULL,
  `profile_photo_path` varchar(2048) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `phone`, `address`, `status`, `email_verified_at`, `password`, `two_factor_secret`, `two_factor_recovery_codes`, `two_factor_confirmed_at`, `remember_token`, `current_team_id`, `profile_photo_path`, `created_at`, `updated_at`) VALUES
(1, 'محمد نور محمد', 'muhammad.nour1111@gmail.com', 1151379294, 'cairo - egypt', 0, NULL, '$2y$10$OZ1d/nsf0YICwn3yXkNISeQD998OVE6EWSLC/Mo80CgLrrbxP8r1i', NULL, NULL, NULL, 'KcTPv7xhXaHlJxWmVQsRbNp5dGDdahudRZmMOhgJT2HT7Da76u9Wk1p4uPqw', NULL, 'profile-photos/Kv2pUEFxefd3bQ9PWkjuqyFIgd82wbDAR6J4yghK.jpg', '2023-03-12 18:22:37', '2023-06-13 20:44:25'),
(2, 'ali', 'ali@gmail.com', 0, '', 0, NULL, '$2y$10$VZTM4c/jaP17cfSqZoI8BOMkcwB8OwHD495ZPFkpCmnD5sQh6aTha', NULL, NULL, NULL, NULL, NULL, NULL, '2023-05-17 20:02:18', '2023-05-17 20:02:18'),
(3, 'assem', 'assem@gmail.com', 0, '', 0, NULL, '$2y$10$zhYBBu0w0SrAObotna9zkeVHP0Mm205GRcu6Iaue5SxxZE87jwZYK', NULL, NULL, NULL, NULL, NULL, NULL, '2023-05-28 22:05:40', '2023-05-28 22:05:40'),
(4, 'Assem', 'assem1@gmail.com', NULL, NULL, NULL, NULL, '$2y$10$mjNBF9J8VFjWjrSQbYDwUuRRU9TF6.RvWfcTKdC0F5N.ZMP/0TFaO', NULL, NULL, NULL, NULL, NULL, NULL, '2023-06-12 21:30:56', '2023-06-12 21:30:56'),
(5, 'ahmed ali', 'ahmeda@gmail.com', 1029914171, 'cairo - egypt', NULL, NULL, '$2y$10$S4ZlvbRbWKgi7UVMQdw/Iuf32yGG6.5MNleroFva8WvW1Z4egAT7i', NULL, NULL, NULL, NULL, NULL, NULL, '2023-06-12 21:35:30', '2023-06-12 21:35:30');

-- --------------------------------------------------------

--
-- Table structure for table `usersss`
--

DROP TABLE IF EXISTS `usersss`;
CREATE TABLE `usersss` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `roles_name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `usersss`
--

INSERT INTO `usersss` (`id`, `name`, `email`, `email_verified_at`, `password`, `roles_name`, `remember_token`, `status`, `created_at`, `updated_at`) VALUES
(3, 'ali', 'ali@gmail.com', NULL, '$2y$10$1KlsjH6ifLTdAVvjUyv4duqdYnypH.Y./uCrL4UvyIPL5CUc8T/I2', '', '46UTkO4m7lsQJYSI2uXe0KROyRDlozEXGOpNmUutQhWdWM74kmRBEWFKpeeP', 1, NULL, '2023-02-04 23:12:26'),
(4, 'assem', 'a@gmail.com', NULL, '$2y$10$1KlsjH6ifLTdAVvjUyv4duqdYnypH.Y./uCrL4UvyIPL5CUc8T/I2', '', NULL, 1, NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name_ar` (`name_ar`),
  ADD UNIQUE KEY `name_en` (`name_en`),
  ADD KEY `brands_admin_id_foreign` (`admin_id`) USING BTREE;

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customs`
--
ALTER TABLE `customs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `partners`
--
ALTER TABLE `partners`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name_en` (`name_en`),
  ADD UNIQUE KEY `name_ar` (`name_ar`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name_en` (`name_en`),
  ADD UNIQUE KEY `name_ar` (`name_ar`),
  ADD KEY `products_admin_id_foreign` (`admin_id`),
  ADD KEY `products_brand_id_foreign` (`category_id`);

--
-- Indexes for table `product_galleries`
--
ALTER TABLE `product_galleries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_purchase`
--
ALTER TABLE `product_purchase`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_sale`
--
ALTER TABLE `product_sale`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_store`
--
ALTER TABLE `product_store`
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
-- Indexes for table `sales`
--
ALTER TABLE `sales`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sliders`
--
ALTER TABLE `sliders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `usersss`
--
ALTER TABLE `usersss`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `customs`
--
ALTER TABLE `customs`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `partners`
--
ALTER TABLE `partners`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `product_galleries`
--
ALTER TABLE `product_galleries`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `product_purchase`
--
ALTER TABLE `product_purchase`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;

--
-- AUTO_INCREMENT for table `product_sale`
--
ALTER TABLE `product_sale`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `product_store`
--
ALTER TABLE `product_store`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `projects`
--
ALTER TABLE `projects`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `project_galleries`
--
ALTER TABLE `project_galleries`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `sales`
--
ALTER TABLE `sales`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `sliders`
--
ALTER TABLE `sliders`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `usersss`
--
ALTER TABLE `usersss`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `categories`
--
ALTER TABLE `categories`
  ADD CONSTRAINT `category` FOREIGN KEY (`admin_id`) REFERENCES `admins` (`id`) ON DELETE CASCADE;

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
