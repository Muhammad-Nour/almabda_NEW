-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Sep 03, 2022 at 11:19 PM
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
-- Database: `enaiah`
--

-- --------------------------------------------------------

--
-- Table structure for table `additionals`
--

DROP TABLE IF EXISTS `additionals`;
CREATE TABLE `additionals` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `date` date NOT NULL,
  `reason` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` double(10,2) NOT NULL,
  `employee_id` int(11) NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `additionals`
--

INSERT INTO `additionals` (`id`, `date`, `reason`, `amount`, `employee_id`, `user_id`, `created_at`, `updated_at`) VALUES
(1, '2022-08-31', 'مكافاة', 300.00, 11, 1, '2022-08-31 01:25:00', '2022-08-30 01:45:05');

-- --------------------------------------------------------

--
-- Table structure for table `alerts`
--

DROP TABLE IF EXISTS `alerts`;
CREATE TABLE `alerts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `date` date NOT NULL,
  `alert` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date_alert` date NOT NULL,
  `seen` tinyint(1) NOT NULL DEFAULT '0',
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `alerts`
--

INSERT INTO `alerts` (`id`, `date`, `alert`, `date_alert`, `seen`, `user_id`, `created_at`, `updated_at`) VALUES
(1, '2022-08-25', 'شراء طلبية دواء جديدة', '2022-08-27', 0, 1, '2022-08-25 01:25:44', '2022-08-25 01:25:44'),
(3, '2022-08-25', 'شراء طلبية اجهزة طبية', '2022-09-02', 0, 1, '2022-08-25 01:55:45', '2022-08-25 02:06:18'),
(4, '2022-08-25', 'تنفيذ جرد للمخزن', '2022-09-06', 0, 1, '2022-08-25 02:27:38', '2022-08-25 02:27:38');

-- --------------------------------------------------------

--
-- Table structure for table `balancings`
--

DROP TABLE IF EXISTS `balancings`;
CREATE TABLE `balancings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `date` date NOT NULL,
  `type` tinyint(4) NOT NULL,
  `total_price` double(10,2) NOT NULL DEFAULT '0.00',
  `store_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `balancings`
--

INSERT INTO `balancings` (`id`, `date`, `type`, `total_price`, `store_id`, `user_id`, `created_at`, `updated_at`) VALUES
(1, '2022-08-27', 1, 400.00, 1, 1, '2022-08-27 00:01:16', '2022-08-27 00:02:02'),
(2, '2022-08-27', 2, 400.00, 1, 1, '2022-08-27 00:44:48', '2022-08-27 00:46:20');

-- --------------------------------------------------------

--
-- Table structure for table `balancing_product`
--

DROP TABLE IF EXISTS `balancing_product`;
CREATE TABLE `balancing_product` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` int(11) NOT NULL,
  `balancing_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `price` double(10,2) NOT NULL,
  `quantity_price` double(10,2) NOT NULL,
  `lot_number` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `balancing_product`
--

INSERT INTO `balancing_product` (`id`, `product_id`, `balancing_id`, `quantity`, `price`, `quantity_price`, `lot_number`, `expiration`) VALUES
(1, 1, 1, 2, 200.00, 400.00, '6547', '2022-09-09'),
(2, 1, 2, 2, 200.00, 400.00, '1456', '2022-08-27');

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

DROP TABLE IF EXISTS `brands`;
CREATE TABLE `brands` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`id`, `name`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'ماركة 1', 1, '2022-06-12 11:02:34', '2022-06-12 11:02:34'),
(2, 'ماركة 2', 1, '2022-06-12 11:02:42', '2022-06-12 11:02:42'),
(3, 'ماركة 3', 1, '2022-06-12 11:02:50', '2022-06-12 11:02:50'),
(4, 'ماركة 4', 1, '2022-08-23 21:51:35', '2022-08-23 21:51:35');

-- --------------------------------------------------------

--
-- Table structure for table `clients`
--

DROP TABLE IF EXISTS `clients`;
CREATE TABLE `clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bank` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `account` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `vat_number` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `commerical_number` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `balance` double NOT NULL DEFAULT '0',
  `discount` double(8,2) NOT NULL DEFAULT '0.00',
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `clients`
--

INSERT INTO `clients` (`id`, `name`, `phone`, `address`, `bank`, `account`, `vat_number`, `commerical_number`, `balance`, `discount`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'يوسف سامى كامل', '01054879641', 'القاهرة', 'الجزيرة', '545456445646', '546545346456', NULL, 1700, 4.00, 1, '2022-06-12 17:27:28', '2022-08-20 23:03:59'),
(2, 'هانى حاتم على', '01054879641', 'القاهرة', 'الراجحى', '545456445646', '546545346456', NULL, 5000, 3.00, 1, '2022-06-12 17:28:22', '2022-06-12 17:28:22'),
(3, 'على خليل', '0154856566', 'القاهرة', '0', '0', '0', '0', 500, 0.00, 1, '2022-08-09 01:01:07', '2022-08-22 02:30:59');

-- --------------------------------------------------------

--
-- Table structure for table `deductions`
--

DROP TABLE IF EXISTS `deductions`;
CREATE TABLE `deductions` (
  `id` int(11) NOT NULL,
  `date` date NOT NULL,
  `amount` double NOT NULL,
  `reason` varchar(255) NOT NULL,
  `employee_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL,
  `updated_at` timestamp NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `deductions`
--

INSERT INTO `deductions` (`id`, `date`, `amount`, `reason`, `employee_id`, `user_id`, `created_at`, `updated_at`) VALUES
(23, '2022-09-02', 100, 'تاخير', 11, 1, '2022-09-02 02:29:27', '2022-09-02 02:29:27');

-- --------------------------------------------------------

--
-- Table structure for table `employees`
--

DROP TABLE IF EXISTS `employees`;
CREATE TABLE `employees` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `address` varchar(255) DEFAULT NULL,
  `phone` varchar(150) DEFAULT NULL,
  `position` varchar(150) DEFAULT NULL,
  `national_id` varchar(255) DEFAULT NULL,
  `salary` double(10,2) DEFAULT NULL,
  `vacation` int(11) NOT NULL,
  `insurance` double NOT NULL,
  `additional` double NOT NULL,
  `loan` double NOT NULL,
  `deduction` double NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL,
  `updated_at` timestamp NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `employees`
--

INSERT INTO `employees` (`id`, `name`, `address`, `phone`, `position`, `national_id`, `salary`, `vacation`, `insurance`, `additional`, `loan`, `deduction`, `user_id`, `created_at`, `updated_at`) VALUES
(11, 'احمد هانى على', 'القاهرة', '01151379295', 'مشرف', '29211161356', 5200.00, 0, 200, 500, 300, 200, 9, '2022-07-17 23:00:49', '2022-09-02 02:29:27'),
(12, 'عماد', 'حوض نجيح', '01151379295', 'مشرف', '2921116130251015', 5200.00, 0, 0, 0, 0, 0, 9, '2022-07-21 00:07:30', '2022-08-30 01:45:45');

-- --------------------------------------------------------

--
-- Table structure for table `expenses`
--

DROP TABLE IF EXISTS `expenses`;
CREATE TABLE `expenses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `date` date NOT NULL,
  `statment` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payment_way` int(11) NOT NULL,
  `amount` double NOT NULL,
  `section_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `expenses`
--

INSERT INTO `expenses` (`id`, `date`, `statment`, `payment_way`, `amount`, `section_id`, `user_id`, `created_at`, `updated_at`) VALUES
(1, '2022-06-07', 'كهرباء', 1, 1000, 1, 1, '2022-06-12 17:50:00', '2022-06-12 17:50:00'),
(2, '2022-06-10', 'ايجار', 1, 2000, 2, 1, '2022-06-12 17:50:26', '2022-06-12 17:50:26');

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
-- Table structure for table `loans`
--

DROP TABLE IF EXISTS `loans`;
CREATE TABLE `loans` (
  `id` int(11) NOT NULL,
  `date` date NOT NULL,
  `amount` double NOT NULL,
  `reason` varchar(255) NOT NULL,
  `employee_id` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `paid` int(11) NOT NULL DEFAULT '0',
  `disbursement_date` date DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `loans`
--

INSERT INTO `loans` (`id`, `date`, `amount`, `reason`, `employee_id`, `status`, `paid`, `disbursement_date`, `created_at`, `updated_at`, `user_id`) VALUES
(1, '2022-08-29', 2500, 'مولود جديد', 12, 1, 1, '2022-08-29', '2022-08-29 20:54:42', '2022-08-29 20:56:29', 9),
(2, '2022-08-29', 1050, 'مولود جديد', 12, 1, 1, '2022-08-29', '2022-08-29 20:54:53', '2022-08-29 21:12:50', 9);

-- --------------------------------------------------------

--
-- Table structure for table `loans_pays`
--

DROP TABLE IF EXISTS `loans_pays`;
CREATE TABLE `loans_pays` (
  `id` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `employee_id` int(11) NOT NULL,
  `reason` varchar(255) NOT NULL,
  `amount` double NOT NULL,
  `date` date NOT NULL,
  `disbursement_date` timestamp NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `loans_pays`
--

INSERT INTO `loans_pays` (`id`, `status`, `employee_id`, `reason`, `amount`, `date`, `disbursement_date`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 1, 12, 'ملكش دعوة', 10000, '2022-08-21', '2022-08-22 22:00:00', 9, '2022-08-21 01:15:23', '2022-08-21 01:15:23'),
(2, 1, 11, 'مياة', 10000, '2022-08-21', '2022-08-25 22:00:00', 9, '2022-08-23 22:44:59', '2022-08-23 22:44:59'),
(3, 2, 12, 'test12', 10000, '2022-08-24', '2022-08-30 22:00:00', 9, '2022-08-23 23:32:04', '2022-08-23 23:32:04'),
(4, 1, 11, 'مياة', 1405, '2022-08-15', '2022-09-09 22:00:00', 9, '2022-08-24 23:12:30', '2022-08-24 23:12:30'),
(5, 1, 11, 'مياة', 50, '2022-08-16', '2022-08-24 22:00:00', 9, '2022-08-24 23:12:35', '2022-08-24 23:12:35'),
(6, 2, 12, 'ملكش دعوة', 10000, '2022-08-16', '2022-09-07 22:00:00', 9, '2022-08-24 23:14:41', '2022-08-24 23:14:41'),
(7, 2, 11, 'مياة', 10000, '2022-08-16', '2022-09-09 22:00:00', 9, '2022-08-24 23:14:51', '2022-08-24 23:14:51');

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
(1, 'App\\Models\\User', 1),
(6, 'App\\Models\\User', 1),
(1, 'App\\Models\\User', 14),
(6, 'App\\Models\\User', 14),
(1, 'App\\Models\\User', 15),
(6, 'App\\Models\\User', 15);

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

-- --------------------------------------------------------

--
-- Table structure for table `payment_clients`
--

DROP TABLE IF EXISTS `payment_clients`;
CREATE TABLE `payment_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `date` date NOT NULL,
  `client_id` int(11) NOT NULL,
  `statement` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payment_way` int(11) NOT NULL,
  `prev_balance` double(10,2) NOT NULL,
  `amount` double(10,2) NOT NULL,
  `balance` double(10,2) NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `payment_clients`
--

INSERT INTO `payment_clients` (`id`, `date`, `client_id`, `statement`, `payment_way`, `prev_balance`, `amount`, `balance`, `user_id`, `created_at`, `updated_at`) VALUES
(1, '2022-06-07', 1, 'دفعة اولى', 1, 4000.00, 2000.00, 2000.00, 1, '2022-06-07 17:53:00', '2022-06-07 17:53:00'),
(3, '2022-08-21', 1, 'دفعة سداد من فاتورة', 3, 2000.00, 300.00, 1700.00, 1, '2022-08-20 22:59:00', '2022-08-20 23:03:59'),
(4, '2022-08-21', 1, 'دفعة سداد من فاتورة', 3, 2000.00, 200.00, 1800.00, 1, '2022-08-20 22:59:00', '2022-08-20 22:59:00');

-- --------------------------------------------------------

--
-- Table structure for table `payment_suppliers`
--

DROP TABLE IF EXISTS `payment_suppliers`;
CREATE TABLE `payment_suppliers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `date` date NOT NULL,
  `supplier_id` int(11) NOT NULL,
  `statement` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payment_way` int(11) NOT NULL,
  `prev_balance` double(10,2) NOT NULL,
  `amount` double(10,2) NOT NULL,
  `balance` double(10,2) NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `payment_suppliers`
--

INSERT INTO `payment_suppliers` (`id`, `date`, `supplier_id`, `statement`, `payment_way`, `prev_balance`, `amount`, `balance`, `user_id`, `created_at`, `updated_at`) VALUES
(1, '2022-06-10', 1, 'دفعة اولى', 1, 3000.00, 1000.00, 2000.00, 1, '2022-06-10 17:51:00', '2022-06-10 17:51:00'),
(2, '2022-06-12', 1, 'دفعة  ثانية', 1, 2000.00, 1000.00, 1000.00, 1, '2022-06-12 17:51:00', '2022-06-12 17:51:00'),
(3, '2022-08-21', 1, 'دفعة سداد من فاتورة', 4, 1301.00, 600.00, 701.00, 1, '2022-08-21 00:25:00', '2022-08-21 00:26:33');

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
(1, 'brands', 'web', '2022-06-26 23:53:36', '2022-06-26 23:53:36'),
(2, 'clients', 'web', '2022-06-26 23:53:36', '2022-06-26 23:53:36'),
(3, 'products', 'web', '2022-06-26 23:53:37', '2022-06-26 23:53:37'),
(4, 'suppliers', 'web', '2022-06-26 23:53:37', '2022-06-26 23:53:37'),
(5, 'safes', 'web', '2022-06-26 23:53:37', '2022-06-26 23:53:37'),
(6, 'users', 'web', '2022-06-26 23:53:37', '2022-06-26 23:53:37'),
(7, 'roles', 'web', '2022-06-26 23:53:37', '2022-06-26 23:53:37'),
(8, 'expenses', 'web', '2022-06-26 23:53:37', '2022-06-26 23:53:37'),
(9, 'sections', 'web', '2022-06-26 23:53:37', '2022-06-26 23:53:37'),
(10, 'add', 'web', '2022-06-26 23:53:37', '2022-06-26 23:53:37'),
(11, 'edit', 'web', '2022-06-26 23:53:37', '2022-06-26 23:53:37'),
(12, 'delete', 'web', '2022-06-26 23:53:38', '2022-06-26 23:53:38'),
(13, 'show', 'web', '2022-07-03 19:56:59', '2022-07-03 19:56:59'),
(14, 'payments', 'web', '2022-07-03 21:07:52', '2022-07-03 21:07:52'),
(15, 'total', 'web', '2022-07-03 22:46:20', '2022-07-03 22:46:20'),
(16, 'employees', 'web', '2022-07-17 19:54:28', '2022-07-17 19:54:28'),
(17, 'deductions', 'web', '2022-07-17 19:54:28', '2022-07-17 19:54:28'),
(18, 'loans', 'web', '2022-07-17 19:54:28', '2022-07-17 19:54:28'),
(19, 'vacations', 'web', '2022-07-17 19:54:28', '2022-07-17 19:54:28'),
(20, 'additionals', 'web', '2022-07-17 19:54:28', '2022-07-17 19:54:28'),
(21, 'requests', 'web', '2022-07-17 19:54:28', '2022-07-17 19:54:28');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `unit` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `quantity` int(11) NOT NULL DEFAULT '0',
  `price` double(10,2) NOT NULL DEFAULT '0.00',
  `purchase_price` double(10,2) NOT NULL DEFAULT '0.00',
  `notify` int(11) DEFAULT '1',
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `brand_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `unit`, `quantity`, `price`, `purchase_price`, `notify`, `user_id`, `brand_id`, `created_at`, `updated_at`) VALUES
(1, 'صنف 1', 'علبة', 31, 250.00, 200.00, 100, 1, 1, '2022-06-12 11:04:51', '2022-08-27 00:46:20'),
(3, 'صنف 3', 'علبة', 80, 500.00, 60.00, 100, 1, 3, '2022-06-12 11:05:23', '2022-07-19 02:21:44'),
(7, 'صنف 2', 'علبة', 51, 200.00, 40.00, 100, 1, 2, '2022-06-12 11:04:51', '2022-07-21 17:57:07'),
(8, 'صنف 10', 'حبة', 1, 100.00, 1.00, 1, 1, 1, '2022-08-02 02:02:54', '2022-08-22 02:23:24'),
(9, 'صنف 7', 'حبة', 0, 200.00, 0.00, 1, 1, 1, '2022-08-08 00:37:39', '2022-08-08 00:37:39'),
(11, 'صنف 8', 'كرتون', 0, 100.00, 0.00, 1, 1, 2, '2022-08-08 00:42:09', '2022-08-08 00:42:09'),
(12, 'صنف 9', 'انبوب', 0, 150.00, 0.00, 1, 1, 3, '2022-08-08 00:43:27', '2022-08-08 00:43:27'),
(19, 'صنف 20', 'قطعة', 0, 100.00, 0.00, 1, 1, 1, '2022-08-09 00:32:15', '2022-08-09 00:32:15'),
(20, 'صنف 12', 'قطعة', 0, 100.00, 0.00, 1, 1, 1, '2022-08-09 00:32:23', '2022-08-09 00:32:23'),
(21, 'صنف 13', 'انبوب', 0, 100.00, 0.00, 1, 1, 3, '2022-08-26 15:58:10', '2022-08-26 15:58:10'),
(23, 'ى لا', 'حبة', 0, 2.00, 0.00, 553, 1, 1, '2022-09-02 04:30:09', '2022-09-02 04:30:09'),
(24, 'للابر', 'حبة', 0, 60.00, 0.00, 5535, 1, 3, '2022-09-02 04:32:19', '2022-09-02 04:32:19'),
(25, 'lkjkm', 'قطعة', 0, 6.00, 0.00, 4, 1, 2, '2022-09-02 04:39:15', '2022-09-02 04:39:15'),
(26, 'mbn', 'حبة', 0, 2.00, 0.00, 6, 1, 1, '2022-09-02 04:57:04', '2022-09-02 04:57:04'),
(27, 'mh', 'علبة', 0, 5.00, 0.00, 6, 1, 2, '2022-09-02 04:57:34', '2022-09-02 04:57:34'),
(28, 'hgfgh', 'قطعة', 0, 5.00, 0.00, 5, 1, 2, '2022-09-02 04:58:17', '2022-09-02 04:58:17'),
(29, 'ff', 'حبة', 0, 6.00, 0.00, 6, 1, 1, '2022-09-02 04:59:08', '2022-09-02 04:59:08'),
(30, 'fddf', 'حبة', 0, 5.00, 0.00, 6, 1, 2, '2022-09-02 05:01:17', '2022-09-02 05:01:17'),
(31, 'ds', 'حبة', 0, 5.00, 0.00, 6, 1, 2, '2022-09-02 05:01:40', '2022-09-02 05:01:40');

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
-- Table structure for table `purchases`
--

DROP TABLE IF EXISTS `purchases`;
CREATE TABLE `purchases` (
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
  `total` double(10,2) NOT NULL DEFAULT '0.00',
  `payment` double(10,2) NOT NULL DEFAULT '0.00',
  `remain` double(10,2) NOT NULL DEFAULT '0.00',
  `due_days` int(11) NOT NULL DEFAULT '0',
  `due_date` date DEFAULT NULL,
  `shipping_cost` double(10,2) NOT NULL DEFAULT '0.00',
  `extra_cost` double(10,2) NOT NULL DEFAULT '0.00',
  `prev_balance` double(10,2) NOT NULL DEFAULT '0.00',
  `balance` double(10,2) NOT NULL DEFAULT '0.00',
  `supplier_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `purchases`
--

INSERT INTO `purchases` (`id`, `date`, `type`, `payment_way`, `total_price`, `discount_percent`, `discount`, `net_price`, `vat`, `vat_value`, `total`, `payment`, `remain`, `due_days`, `due_date`, `shipping_cost`, `extra_cost`, `prev_balance`, `balance`, `supplier_id`, `user_id`, `created_at`, `updated_at`) VALUES
(1, '2022-07-04', 1, 1, 1000.00, 0.00, 0.00, 1000.00, 0.00, 0.00, 1000.00, 0.00, 1000.00, 10, '2022-08-21', 0.00, 0.00, 0.00, 1000.00, 1, 1, '2022-07-04 01:08:48', '2022-07-04 01:08:48'),
(4, '2022-07-18', 1, 1, 1.00, 0.00, 0.00, 1.00, 0.00, 0.00, 1.00, 0.00, 1.00, 0, '2022-08-22', 0.00, 0.00, 1000.00, 1001.00, 1, 3, '2022-07-18 09:10:57', '2022-07-19 01:03:08'),
(5, '2022-07-22', 1, 1, 6000.00, 0.10, 0.00, 5400.00, 0.00, 0.00, 5400.00, 400.00, 5000.00, 30, '2022-08-23', 100.00, -4.55, 2000.00, 7000.00, 2, 3, '2022-07-22 02:19:10', '2022-07-19 02:21:44'),
(8, '2022-07-21', 2, 1, 400.00, 0.00, 0.00, 400.00, 0.00, 0.00, 400.00, 0.00, 400.00, 0, '2022-08-24', 0.00, 0.00, 1001.00, 601.00, 1, 3, '2022-07-21 05:32:13', '2022-07-21 17:39:18'),
(9, '2022-07-21', 1, 1, 800.00, 0.00, 0.00, 800.00, 0.00, 0.00, 800.00, 400.00, 400.00, 0, '2022-08-19', 0.00, 0.00, 601.00, 1001.00, 1, 3, '2022-07-21 05:52:30', '2022-07-21 17:55:02'),
(10, '2022-07-21', 1, 1, 400.00, 0.00, 0.00, 400.00, 0.00, 0.00, 400.00, 100.00, 300.00, 0, '2022-08-24', 0.00, 0.00, 1001.00, 1301.00, 1, 3, '2022-07-21 05:55:02', '2022-07-21 17:57:07'),
(18, '2022-08-21', 1, 2, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0, '2022-08-19', 0.00, 0.00, 0.00, 0.00, 1, 1, '2022-08-21 00:57:13', '2022-08-21 00:57:13'),
(19, '2022-08-21', 1, 2, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0, '2022-08-25', 0.00, 0.00, 0.00, 0.00, 1, 1, '2022-08-21 00:57:13', '2022-08-21 00:57:13'),
(21, '2022-08-21', 1, 2, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0, '2022-08-31', 0.00, 0.00, 0.00, 0.00, 1, 1, '2022-08-21 00:57:13', '2022-08-21 00:57:13'),
(22, '2022-08-21', 1, 1, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0, '2022-08-24', 0.00, 0.00, 0.00, 0.00, 1, 1, '2022-08-21 01:01:59', '2022-08-21 01:01:59'),
(23, '2022-08-21', 1, 1, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0, '2022-08-31', 0.00, 0.00, 0.00, 0.00, 1, 1, '2022-08-21 01:01:59', '2022-08-21 01:01:59'),
(24, '2022-08-21', 1, 1, 1.00, 0.00, 0.00, 1.00, 0.00, 0.00, 1.00, 0.00, 1.00, 5, '2022-08-26', 0.00, 0.00, 701.00, 702.00, 1, 1, '2022-08-21 01:01:59', '2022-08-21 01:05:54'),
(27, '2022-08-22', 1, 1, 2000.00, 0.00, 0.00, 2000.00, 0.00, 0.00, 2000.00, 0.00, 2000.00, 20, '2022-09-11', 0.00, 0.00, 0.00, 2000.00, 12, 1, '2022-08-22 00:20:02', '2022-08-22 00:21:10'),
(40, '2022-08-22', 1, 1, 2000.00, 0.00, 0.00, 2000.00, 0.00, 0.00, 2000.00, 0.00, 2000.00, 5, '2022-08-27', 0.00, 0.00, 2000.00, 4000.00, 12, 1, '2022-08-22 00:47:30', '2022-08-22 00:51:36'),
(60, '2022-08-22', 1, 1, 1.00, 0.00, 0.00, 1.00, 0.00, 0.00, 1.00, 0.00, 1.00, 0, NULL, 0.00, 0.00, 702.00, 703.00, 1, 1, '2022-08-22 02:20:41', '2022-08-22 02:23:24');

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
(1, 'owner', 'web', '2022-06-26 23:53:41', '2022-06-26 23:53:41'),
(6, 'admin', 'web', '2022-07-26 20:56:43', '2022-07-26 20:56:43');

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
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(6, 1),
(7, 1),
(8, 1),
(9, 1),
(10, 1),
(11, 1),
(12, 1),
(13, 1),
(14, 1),
(15, 1),
(16, 1),
(17, 1),
(18, 1),
(19, 1),
(20, 1),
(21, 1),
(1, 6),
(2, 6),
(3, 6),
(4, 6);

-- --------------------------------------------------------

--
-- Table structure for table `safes`
--

DROP TABLE IF EXISTS `safes`;
CREATE TABLE `safes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `date` date NOT NULL,
  `amount` double(10,2) NOT NULL,
  `total` tinyint(1) NOT NULL DEFAULT '0',
  `start` tinyint(1) NOT NULL DEFAULT '0',
  `status` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `safes`
--

INSERT INTO `safes` (`id`, `date`, `amount`, `total`, `start`, `status`, `created_at`, `updated_at`) VALUES
(1, '2022-06-01', 98400.00, 1, 0, 0, '2022-06-01 16:21:38', '2022-08-28 23:39:23'),
(2, '2022-06-01', 100000.00, 0, 1, 1, '2022-06-01 16:21:38', '2022-06-01 16:21:38'),
(3, '2022-06-06', 1000.00, 0, 0, 1, '2022-06-06 17:29:00', '2022-06-06 17:29:00'),
(4, '2022-06-09', 2000.00, 0, 0, 2, '2022-06-09 17:30:00', '2022-06-09 17:30:00'),
(5, '2022-06-11', 3000.00, 0, 0, 1, '2022-06-11 17:30:00', '2022-06-11 17:30:00');

-- --------------------------------------------------------

--
-- Table structure for table `salaries`
--

DROP TABLE IF EXISTS `salaries`;
CREATE TABLE `salaries` (
  `id` int(11) NOT NULL,
  `date` date NOT NULL,
  `salary` double(10,2) NOT NULL DEFAULT '0.00',
  `additional` double(10,2) NOT NULL DEFAULT '0.00',
  `insurance` double(10,2) NOT NULL DEFAULT '0.00',
  `deduction` double(10,2) NOT NULL DEFAULT '0.00',
  `loan` double(10,2) NOT NULL DEFAULT '0.00',
  `total_deduction` double(10,2) NOT NULL,
  `net_amount` double(10,2) NOT NULL,
  `employee_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL,
  `updated_at` timestamp NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `salaries`
--

INSERT INTO `salaries` (`id`, `date`, `salary`, `additional`, `insurance`, `deduction`, `loan`, `total_deduction`, `net_amount`, `employee_id`, `user_id`, `created_at`, `updated_at`) VALUES
(4, '2022-08-31', 5200.00, 1000.00, 200.00, 500.00, 1200.00, 1900.00, 4300.00, 11, 1, '2022-08-30 23:34:00', '2022-08-28 23:39:23');

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
-- Table structure for table `sections`
--

DROP TABLE IF EXISTS `sections`;
CREATE TABLE `sections` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sections`
--

INSERT INTO `sections` (`id`, `name`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'بند 1', 1, '2022-06-12 17:29:13', '2022-06-12 17:29:13'),
(2, 'بند 2', 1, '2022-06-12 17:29:19', '2022-06-12 17:29:19'),
(3, 'بند 3', 1, '2022-06-12 17:29:23', '2022-06-12 17:29:23');

-- --------------------------------------------------------

--
-- Table structure for table `stores`
--

DROP TABLE IF EXISTS `stores`;
CREATE TABLE `stores` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `main` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `stores`
--

INSERT INTO `stores` (`id`, `name`, `main`, `created_at`, `updated_at`) VALUES
(1, 'المخزن الرئيسى', 1, '2022-06-29 20:29:14', '2022-06-29 20:29:14');

-- --------------------------------------------------------

--
-- Table structure for table `suppliers`
--

DROP TABLE IF EXISTS `suppliers`;
CREATE TABLE `suppliers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bank` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `account` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `vat_number` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `commerical_number` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `balance` double NOT NULL DEFAULT '0',
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `suppliers`
--

INSERT INTO `suppliers` (`id`, `name`, `phone`, `address`, `bank`, `account`, `vat_number`, `commerical_number`, `balance`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'احمد محمد كمال', '01065819399', 'السعودية , جازان', '65564564', '544454564', '5645645465', '544546546', 703, 1, '2022-06-12 11:13:21', '2022-08-22 02:23:24'),
(2, 'محمد ابراهيم يوسف', '01065819399', 'السعودية , جازان', '65564564', '544454564', '5645645465', '544546546', 7000, 1, '2022-06-12 11:17:10', '2022-07-19 02:21:44'),
(11, 'على يوسف محمد', '0154856566', 'القاهرة', '0', '0', '0', '0', 0, 1, '2022-08-09 00:13:20', '2022-08-09 00:13:20'),
(12, 'عامر محمد سيد', '0154856566', 'القاهرة', '0', '0', '0', '0', 4000, 1, '2022-08-09 00:17:08', '2022-08-22 00:51:36');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
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
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `roles_name`, `remember_token`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Ahmed', 'ahmed@gmail.com', NULL, '$2y$10$1KlsjH6ifLTdAVvjUyv4duqdYnypH.Y./uCrL4UvyIPL5CUc8T/I2', '[\"owner\"]', '3r4aMRlwIF30G6Pp81alBhcXh81TlfVyZwmoLTQx3yUfaeig3UM5vWL2izvE', 1, NULL, '2022-07-24 05:39:52'),
(2, 'muhammad nour', 'muhammad.nour111@gmail.com', NULL, '$2y$10$1KlsjH6ifLTdAVvjUyv4duqdYnypH.Y./uCrL4UvyIPL5CUc8T/I2', '[\"owner\"]', 'Xe8xB64woPPk2Td81DQCjIOXjxu0VXrbbHP5n61ZcMBgYuwlVh3EzKyuz5oY', 0, NULL, NULL),
(3, 'ali', 'ali@gmail.com', NULL, '$2y$10$/2MFNPjWqDt1DTG3sC/NHedeLtkoSzGU1VgjKRB3HDn7CHTsJEMhe', '[\"owner\"]', '1', 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `vacations`
--

DROP TABLE IF EXISTS `vacations`;
CREATE TABLE `vacations` (
  `id` int(11) NOT NULL,
  `date` date NOT NULL,
  `number_days` int(11) NOT NULL,
  `reason` varchar(255) NOT NULL,
  `vacation_date` date NOT NULL,
  `employee_id` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `vacations`
--

INSERT INTO `vacations` (`id`, `date`, `number_days`, `reason`, `vacation_date`, `employee_id`, `status`, `user_id`, `created_at`, `updated_at`) VALUES
(13, '2022-09-01', 15, 'تأخير', '2022-09-01', 12, 1, 9, '2022-09-01 01:11:52', '2022-09-01 02:23:54');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `additionals`
--
ALTER TABLE `additionals`
  ADD PRIMARY KEY (`id`),
  ADD KEY `brands_user_id_foreign` (`user_id`);

--
-- Indexes for table `alerts`
--
ALTER TABLE `alerts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `brands_user_id_foreign` (`user_id`);

--
-- Indexes for table `balancings`
--
ALTER TABLE `balancings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `balancing_product`
--
ALTER TABLE `balancing_product`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`id`),
  ADD KEY `brands_user_id_foreign` (`user_id`);

--
-- Indexes for table `clients`
--
ALTER TABLE `clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `clients_user_id_foreign` (`user_id`);

--
-- Indexes for table `deductions`
--
ALTER TABLE `deductions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `employees`
--
ALTER TABLE `employees`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `expenses`
--
ALTER TABLE `expenses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `expenses_section_id_foreign` (`section_id`),
  ADD KEY `expenses_user_id_foreign` (`user_id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `loans`
--
ALTER TABLE `loans`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `loans_pays`
--
ALTER TABLE `loans_pays`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `payment_clients`
--
ALTER TABLE `payment_clients`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payment_suppliers`
--
ALTER TABLE `payment_suppliers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`),
  ADD KEY `products_user_id_foreign` (`user_id`),
  ADD KEY `products_brand_id_foreign` (`brand_id`);

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
-- Indexes for table `purchases`
--
ALTER TABLE `purchases`
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
-- Indexes for table `safes`
--
ALTER TABLE `safes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `salaries`
--
ALTER TABLE `salaries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sales`
--
ALTER TABLE `sales`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sections`
--
ALTER TABLE `sections`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sections_user_id_foreign` (`user_id`);

--
-- Indexes for table `stores`
--
ALTER TABLE `stores`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `suppliers`
--
ALTER TABLE `suppliers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `suppliers_user_id_foreign` (`user_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `vacations`
--
ALTER TABLE `vacations`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `additionals`
--
ALTER TABLE `additionals`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `alerts`
--
ALTER TABLE `alerts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `balancings`
--
ALTER TABLE `balancings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `balancing_product`
--
ALTER TABLE `balancing_product`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `clients`
--
ALTER TABLE `clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `deductions`
--
ALTER TABLE `deductions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `employees`
--
ALTER TABLE `employees`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `expenses`
--
ALTER TABLE `expenses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `loans`
--
ALTER TABLE `loans`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `loans_pays`
--
ALTER TABLE `loans_pays`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `payment_clients`
--
ALTER TABLE `payment_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `payment_suppliers`
--
ALTER TABLE `payment_suppliers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

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
-- AUTO_INCREMENT for table `purchases`
--
ALTER TABLE `purchases`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `safes`
--
ALTER TABLE `safes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `salaries`
--
ALTER TABLE `salaries`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `sales`
--
ALTER TABLE `sales`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `sections`
--
ALTER TABLE `sections`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `stores`
--
ALTER TABLE `stores`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `suppliers`
--
ALTER TABLE `suppliers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `vacations`
--
ALTER TABLE `vacations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `brands`
--
ALTER TABLE `brands`
  ADD CONSTRAINT `brands_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `clients`
--
ALTER TABLE `clients`
  ADD CONSTRAINT `clients_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `expenses`
--
ALTER TABLE `expenses`
  ADD CONSTRAINT `expenses_section_id_foreign` FOREIGN KEY (`section_id`) REFERENCES `sections` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `expenses_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

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
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_brand_id_foreign` FOREIGN KEY (`brand_id`) REFERENCES `brands` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `products_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `sections`
--
ALTER TABLE `sections`
  ADD CONSTRAINT `sections_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `suppliers`
--
ALTER TABLE `suppliers`
  ADD CONSTRAINT `suppliers_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
