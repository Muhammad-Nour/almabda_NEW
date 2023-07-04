-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jul 04, 2023 at 01:36 PM
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
-- Table structure for table `customs`
--

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
(1, 'about', '<p>\r\nمؤسسة المبدأ للديكور لبيع مواد الديكور بالجملة والقطاعى وتصميم وتنفيذ تشطيبات الديكور للشقق والمكاتب والمؤسسات. توفير خامات عالية الجودة وتقديم ارقى التصميمات للديكورات\r\n</p>\r\n<p>\r\nمؤسسة المبدأ للديكور لبيع مواد الديكور بالجملة والقطاعى وتصميم وتنفيذ تشطيبات الديكور للشقق والمكاتب والمؤسسات. توفير خامات عالية الجودة وتقديم ارقى التصميمات للديكورات\r\n</p>\r\n<p>\r\nمؤسسة المبدأ للديكور لبيع مواد الديكور بالجملة والقطاعى وتصميم وتنفيذ تشطيبات الديكور للشقق والمكاتب والمؤسسات. توفير خامات عالية الجودة وتقديم ارقى التصميمات للديكورات\r\n</p>\r\n<p>\r\nمؤسسة المبدأ للديكور لبيع مواد الديكور بالجملة والقطاعى وتصميم وتنفيذ تشطيبات الديكور للشقق والمكاتب والمؤسسات. توفير خامات عالية الجودة وتقديم ارقى التصميمات للديكورات\r\n</p>', '<p>\r\nAl Mabdhel Decoration Est. Wholesale and retail sale of decoration materials, design and implementation of decorative finishes for apartments, offices and institutions. Providing high quality materials and providing the finest designs for decorations\r\n</p>\r\n<p>\r\nAl Mabdhel Decoration Est. Wholesale and retail sale of decoration materials, design and implementation of decorative finishes for apartments, offices and institutions. Providing high quality materials and providing the finest designs for decorations\r\n</p>\r\n<p>\r\nAl Mabdhel Decoration Est. Wholesale and retail sale of decoration materials, design and implementation of decorative finishes for apartments, offices and institutions. Providing high quality materials and providing the finest designs for decorations\r\n</p>\r\n<p>\r\nAl Mabdhel Decoration Est. Wholesale and retail sale of decoration materials, design and implementation of decorative finishes for apartments, offices and institutions. Providing high quality materials and providing the finest designs for decorations\r\n</p>', 'single-project-1-655x496.jpg', 1, NULL, '2023-07-04 07:28:52', '2023-07-04 07:28:52'),
(2, 'secrets_photo', '', '', 'video-2-570x438.jpg', 1, NULL, '2023-07-04 07:28:52', '2023-07-04 07:28:52'),
(3, 'secret1', 'التركيز على عملائنا', 'Focus on our clients', '', 1, NULL, '2023-07-04 07:28:52', '2023-07-04 07:28:52'),
(4, 'secret2', 'الإبداع فى التصميم', 'Creativity in design', '', 1, NULL, '2023-07-04 07:28:52', '2023-07-04 07:28:52'),
(5, 'secret3', 'أسعار تنافسية', 'Competitive prices', '', 1, NULL, '2023-07-04 07:28:52', '2023-07-04 07:28:52'),
(6, 'secret4', 'جودة متميزة', 'Premium quality', '', 1, NULL, '2023-07-04 07:28:52', '2023-07-04 07:28:52'),
(7, 'secrets_video', 'https://www.youtube.com/embed/e_TCFkRDmls', 'https://www.youtube.com/embed/e_TCFkRDmls', '', 1, NULL, '2023-07-04 07:28:52', '2023-07-04 07:28:52');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `customs`
--
ALTER TABLE `customs`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `customs`
--
ALTER TABLE `customs`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
