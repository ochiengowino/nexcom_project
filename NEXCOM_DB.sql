-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 12, 2021 at 02:18 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `nexcom_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `carts`
--

CREATE TABLE `carts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` double NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `completed_orders`
--

CREATE TABLE `completed_orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tecshop_products_id` bigint(20) NOT NULL,
  `tecshop_users_id` int(11) NOT NULL,
  `product` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` int(11) NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `data`
--

CREATE TABLE `data` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` int(11) NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `data`
--

INSERT INTO `data` (`id`, `product`, `price`, `image`, `created_at`, `updated_at`) VALUES
(1, 'Earphones', 200, '/images/c.jpg', '2021-01-11 04:13:29', '2021-01-11 04:13:29');

-- --------------------------------------------------------

--
-- Table structure for table `employees`
--

CREATE TABLE `employees` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `designation` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `employees`
--

INSERT INTO `employees` (`id`, `name`, `designation`, `created_at`, `updated_at`) VALUES
(1, 'Kelly', 'Nurse', '2021-01-27 09:50:38', '2021-01-27 09:50:38'),
(3, 'Reggie', 'Dentist', '2021-01-27 09:54:01', '2021-01-27 09:54:01'),
(4, 'Nelly', 'Doctor', '2021-01-27 10:36:06', '2021-01-27 10:36:06');

-- --------------------------------------------------------

--
-- Table structure for table `items`
--

CREATE TABLE `items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` double NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `items_ordered`
--

CREATE TABLE `items_ordered` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `tecshop_products_id` bigint(20) UNSIGNED NOT NULL,
  `quantity` int(10) UNSIGNED NOT NULL,
  `price` decimal(20,2) NOT NULL,
  `product` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `items_ordered`
--

INSERT INTO `items_ordered` (`id`, `order_id`, `tecshop_products_id`, `quantity`, `price`, `product`, `created_at`, `updated_at`) VALUES
(1, 132, 80, 2, '200.00', 'Ear pods', '2021-03-11 08:12:20', '2021-03-11 08:12:20'),
(2, 133, 81, 1, '2000.00', 'Headphones', '2021-03-11 09:08:53', '2021-03-11 09:08:53'),
(3, 133, 82, 1, '1500.00', 'Speaker', '2021-03-11 09:08:54', '2021-03-11 09:08:54'),
(4, 133, 80, 1, '200.00', 'Ear pods', '2021-03-11 09:08:54', '2021-03-11 09:08:54'),
(5, 133, 85, 1, '3000.00', 'Black Wire', '2021-03-11 09:08:54', '2021-03-11 09:08:54'),
(6, 133, 87, 1, '4000.00', 'Roku Premier', '2021-03-11 09:08:54', '2021-03-11 09:08:54'),
(7, 133, 104, 1, '500.00', 'Home Assistant', '2021-03-11 09:08:54', '2021-03-11 09:08:54'),
(8, 133, 111, 1, '1000.00', 'Tesla Coil', '2021-03-11 09:08:54', '2021-03-11 09:08:54'),
(9, 133, 118, 2, '5000.00', 'Speaker', '2021-03-11 09:08:54', '2021-03-11 09:08:54');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(4, '2014_10_12_000000_create_users_table', 1),
(5, '2014_10_12_100000_create_password_resets_table', 1),
(6, '2020_10_29_124100_create_products_table', 1),
(7, '2020_12_18_075127_create_items_table', 2),
(8, '2020_12_21_091808_create_shops_table', 2),
(9, '2020_12_21_150905_create_carts_table', 2),
(10, '2021_01_06_062631_create_data_table', 3),
(11, '2021_01_09_084320_create_tecshop_users_table', 3),
(12, '2021_01_10_172950_create_tecshop_products_table', 4),
(13, '2021_01_10_180520_create_tecshop_carts_table', 5),
(15, '2021_01_19_121102_create_ordered_items_table', 6),
(16, '2021_01_27_114028_create_employees_table', 7),
(17, '2021_02_01_080245_create_tecshop_wishlists_table', 8),
(18, '2021_02_05_063620_create_order_history_table', 9),
(19, '2021_02_05_065141_create_completed_orders_table', 10);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_number` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tecshop_users_id` int(10) UNSIGNED NOT NULL,
  `status` enum('pending','processing','completed','decline') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `total` decimal(20,2) NOT NULL,
  `item_count` int(10) UNSIGNED NOT NULL,
  `payment_status` tinyint(1) NOT NULL DEFAULT 1,
  `first_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `street_address` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `region` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone_number` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cart` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `order_number`, `tecshop_users_id`, `status`, `total`, `item_count`, `payment_status`, `first_name`, `last_name`, `street_address`, `region`, `phone_number`, `email`, `cart`, `created_at`, `updated_at`) VALUES
(1, '600ebc8713bcb', 1, 'pending', '13200.00', 6, 1, 'test_f', 'test_l', 'Embakasi', 'Nairobi', '4165', '', 'a:3:{i:1;a:5:{s:2:\"id\";i:1;s:7:\"product\";s:9:\"Earphones\";s:8:\"quantity\";i:1;s:5:\"price\";i:200;s:5:\"image\";s:13:\"/images/c.jpg\";}i:5;a:5:{s:2:\"id\";i:5;s:7:\"product\";s:7:\"Calisto\";s:8:\"quantity\";i:2;s:5:\"price\";i:2000;s:5:\"image\";s:13:\"/images/f.jpg\";}i:6;a:5:{s:2:\"id\";i:6;s:7:\"product\";s:10:\"Black Wire\";s:8:\"quantity\";i:3;s:5:\"price\";i:3000;s:5:\"image\";s:13:\"/images/g.jpg\";}}', '2021-01-25 09:41:43', '2021-01-25 09:41:43'),
(2, '600ebc872d5d3', 1, 'pending', '13200.00', 6, 1, 'test_f', 'test_l', 'Embakasi', 'Nairobi', '4165', '', 'a:3:{i:1;a:5:{s:2:\"id\";i:1;s:7:\"product\";s:9:\"Earphones\";s:8:\"quantity\";i:1;s:5:\"price\";i:200;s:5:\"image\";s:13:\"/images/c.jpg\";}i:5;a:5:{s:2:\"id\";i:5;s:7:\"product\";s:7:\"Calisto\";s:8:\"quantity\";i:2;s:5:\"price\";i:2000;s:5:\"image\";s:13:\"/images/f.jpg\";}i:6;a:5:{s:2:\"id\";i:6;s:7:\"product\";s:10:\"Black Wire\";s:8:\"quantity\";i:3;s:5:\"price\";i:3000;s:5:\"image\";s:13:\"/images/g.jpg\";}}', '2021-01-25 09:41:43', '2021-01-25 09:41:43'),
(3, '600ebc874dc8c', 1, 'pending', '13200.00', 6, 1, 'test_f', 'test_l', 'Embakasi', 'Nairobi', '4165', '', 'a:3:{i:1;a:5:{s:2:\"id\";i:1;s:7:\"product\";s:9:\"Earphones\";s:8:\"quantity\";i:1;s:5:\"price\";i:200;s:5:\"image\";s:13:\"/images/c.jpg\";}i:5;a:5:{s:2:\"id\";i:5;s:7:\"product\";s:7:\"Calisto\";s:8:\"quantity\";i:2;s:5:\"price\";i:2000;s:5:\"image\";s:13:\"/images/f.jpg\";}i:6;a:5:{s:2:\"id\";i:6;s:7:\"product\";s:10:\"Black Wire\";s:8:\"quantity\";i:3;s:5:\"price\";i:3000;s:5:\"image\";s:13:\"/images/g.jpg\";}}', '2021-01-25 09:41:43', '2021-01-25 09:41:43'),
(4, '600ebe22641fe', 1, 'pending', '13200.00', 6, 1, 'test_f', 'test_l', 'Kitale', 'Busia', '4165', '', 'a:3:{i:1;a:5:{s:2:\"id\";i:1;s:7:\"product\";s:9:\"Earphones\";s:8:\"quantity\";i:1;s:5:\"price\";i:200;s:5:\"image\";s:13:\"/images/c.jpg\";}i:5;a:5:{s:2:\"id\";i:5;s:7:\"product\";s:7:\"Calisto\";s:8:\"quantity\";i:2;s:5:\"price\";i:2000;s:5:\"image\";s:13:\"/images/f.jpg\";}i:6;a:5:{s:2:\"id\";i:6;s:7:\"product\";s:10:\"Black Wire\";s:8:\"quantity\";i:3;s:5:\"price\";i:3000;s:5:\"image\";s:13:\"/images/g.jpg\";}}', '2021-01-25 09:48:34', '2021-01-25 09:48:34'),
(5, '600ebe6b882d8', 1, 'pending', '13200.00', 6, 1, 'test_f', 'test_l', 'Kitale', 'Busia', '4165', '', 'a:3:{i:1;a:5:{s:2:\"id\";i:1;s:7:\"product\";s:9:\"Earphones\";s:8:\"quantity\";i:1;s:5:\"price\";i:200;s:5:\"image\";s:13:\"/images/c.jpg\";}i:5;a:5:{s:2:\"id\";i:5;s:7:\"product\";s:7:\"Calisto\";s:8:\"quantity\";i:2;s:5:\"price\";i:2000;s:5:\"image\";s:13:\"/images/f.jpg\";}i:6;a:5:{s:2:\"id\";i:6;s:7:\"product\";s:10:\"Black Wire\";s:8:\"quantity\";i:3;s:5:\"price\";i:3000;s:5:\"image\";s:13:\"/images/g.jpg\";}}', '2021-01-25 09:49:47', '2021-01-25 09:49:47'),
(6, '600ebed728a8f', 1, 'completed', '13200.00', 6, 3, 'test_f', 'test_l', 'Kitale', 'Busia', '4165', '', 'a:3:{i:1;a:5:{s:2:\"id\";i:1;s:7:\"product\";s:9:\"Earphones\";s:8:\"quantity\";i:1;s:5:\"price\";i:200;s:5:\"image\";s:13:\"/images/c.jpg\";}i:5;a:5:{s:2:\"id\";i:5;s:7:\"product\";s:7:\"Calisto\";s:8:\"quantity\";i:2;s:5:\"price\";i:2000;s:5:\"image\";s:13:\"/images/f.jpg\";}i:6;a:5:{s:2:\"id\";i:6;s:7:\"product\";s:10:\"Black Wire\";s:8:\"quantity\";i:3;s:5:\"price\";i:3000;s:5:\"image\";s:13:\"/images/g.jpg\";}}', '2021-01-25 09:51:35', '2021-01-29 04:42:46'),
(7, '600ebef8ac03d', 1, 'pending', '13200.00', 6, 1, 'test_f', 'test_l', 'Kitale', 'Busia', '4165', '', 'a:3:{i:1;a:5:{s:2:\"id\";i:1;s:7:\"product\";s:9:\"Earphones\";s:8:\"quantity\";i:1;s:5:\"price\";i:200;s:5:\"image\";s:13:\"/images/c.jpg\";}i:5;a:5:{s:2:\"id\";i:5;s:7:\"product\";s:7:\"Calisto\";s:8:\"quantity\";i:2;s:5:\"price\";i:2000;s:5:\"image\";s:13:\"/images/f.jpg\";}i:6;a:5:{s:2:\"id\";i:6;s:7:\"product\";s:10:\"Black Wire\";s:8:\"quantity\";i:3;s:5:\"price\";i:3000;s:5:\"image\";s:13:\"/images/g.jpg\";}}', '2021-01-25 09:52:08', '2021-01-25 09:52:08'),
(8, '600ebf3b13821', 1, 'pending', '13200.00', 6, 1, 'test_f', 'test_l', 'Kitale', 'Busia', '4165', '', 'a:3:{i:1;a:5:{s:2:\"id\";i:1;s:7:\"product\";s:9:\"Earphones\";s:8:\"quantity\";i:1;s:5:\"price\";i:200;s:5:\"image\";s:13:\"/images/c.jpg\";}i:5;a:5:{s:2:\"id\";i:5;s:7:\"product\";s:7:\"Calisto\";s:8:\"quantity\";i:2;s:5:\"price\";i:2000;s:5:\"image\";s:13:\"/images/f.jpg\";}i:6;a:5:{s:2:\"id\";i:6;s:7:\"product\";s:10:\"Black Wire\";s:8:\"quantity\";i:3;s:5:\"price\";i:3000;s:5:\"image\";s:13:\"/images/g.jpg\";}}', '2021-01-25 09:53:15', '2021-01-25 09:53:15'),
(9, '600ebf549da31', 1, 'pending', '13200.00', 6, 1, 'test_f', 'test_l', 'Kitale', 'Busia', '4165', '', 'a:3:{i:1;a:5:{s:2:\"id\";i:1;s:7:\"product\";s:9:\"Earphones\";s:8:\"quantity\";i:1;s:5:\"price\";i:200;s:5:\"image\";s:13:\"/images/c.jpg\";}i:5;a:5:{s:2:\"id\";i:5;s:7:\"product\";s:7:\"Calisto\";s:8:\"quantity\";i:2;s:5:\"price\";i:2000;s:5:\"image\";s:13:\"/images/f.jpg\";}i:6;a:5:{s:2:\"id\";i:6;s:7:\"product\";s:10:\"Black Wire\";s:8:\"quantity\";i:3;s:5:\"price\";i:3000;s:5:\"image\";s:13:\"/images/g.jpg\";}}', '2021-01-25 09:53:40', '2021-01-25 09:53:40'),
(10, '600ebf67b6498', 1, 'completed', '13200.00', 6, 1, 'test_f', 'test_l', 'Kitale', 'Busia', '4165', '', 'a:3:{i:1;a:5:{s:2:\"id\";i:1;s:7:\"product\";s:9:\"Earphones\";s:8:\"quantity\";i:1;s:5:\"price\";i:200;s:5:\"image\";s:13:\"/images/c.jpg\";}i:5;a:5:{s:2:\"id\";i:5;s:7:\"product\";s:7:\"Calisto\";s:8:\"quantity\";i:2;s:5:\"price\";i:2000;s:5:\"image\";s:13:\"/images/f.jpg\";}i:6;a:5:{s:2:\"id\";i:6;s:7:\"product\";s:10:\"Black Wire\";s:8:\"quantity\";i:3;s:5:\"price\";i:3000;s:5:\"image\";s:13:\"/images/g.jpg\";}}', '2021-01-25 09:53:59', '2021-01-29 04:19:16'),
(11, '600ebfd147ad8', 1, 'pending', '9200.00', 4, 1, 'test_f', 'test_l', 'Madiany', 'Rarieda', '454694', '', 'a:2:{i:1;a:5:{s:2:\"id\";i:1;s:7:\"product\";s:9:\"Earphones\";s:8:\"quantity\";i:1;s:5:\"price\";i:200;s:5:\"image\";s:13:\"/images/c.jpg\";}i:6;a:5:{s:2:\"id\";i:6;s:7:\"product\";s:10:\"Black Wire\";s:8:\"quantity\";i:3;s:5:\"price\";i:3000;s:5:\"image\";s:13:\"/images/g.jpg\";}}', '2021-01-25 09:55:45', '2021-01-25 09:55:45'),
(12, '600ec051b89be', 1, 'pending', '16600.00', 10, 1, 'test_f', 'test_l', 'Ndori', 'Rarieda', '6985123', '', 'a:4:{i:1;a:5:{s:2:\"id\";i:1;s:7:\"product\";s:9:\"Earphones\";s:8:\"quantity\";i:3;s:5:\"price\";i:200;s:5:\"image\";s:13:\"/images/c.jpg\";}i:6;a:5:{s:2:\"id\";i:6;s:7:\"product\";s:10:\"Black Wire\";s:8:\"quantity\";i:3;s:5:\"price\";i:3000;s:5:\"image\";s:13:\"/images/g.jpg\";}i:2;a:5:{s:2:\"id\";i:2;s:7:\"product\";s:10:\"Headphones\";s:8:\"quantity\";i:2;s:5:\"price\";i:2000;s:5:\"image\";s:13:\"/images/c.jpg\";}i:3;a:5:{s:2:\"id\";i:3;s:7:\"product\";s:7:\"Speaker\";s:8:\"quantity\";i:2;s:5:\"price\";i:1500;s:5:\"image\";s:13:\"/images/d.jpg\";}}', '2021-01-25 09:57:53', '2021-01-25 09:57:53'),
(13, '600ec0a0e9ed9', 1, 'pending', '16600.00', 10, 1, 'test_f', 'test_l', 'Akala', 'Siaya', '468463', '', 'a:4:{i:1;a:5:{s:2:\"id\";i:1;s:7:\"product\";s:9:\"Earphones\";s:8:\"quantity\";i:3;s:5:\"price\";i:200;s:5:\"image\";s:13:\"/images/c.jpg\";}i:6;a:5:{s:2:\"id\";i:6;s:7:\"product\";s:10:\"Black Wire\";s:8:\"quantity\";i:3;s:5:\"price\";i:3000;s:5:\"image\";s:13:\"/images/g.jpg\";}i:2;a:5:{s:2:\"id\";i:2;s:7:\"product\";s:10:\"Headphones\";s:8:\"quantity\";i:2;s:5:\"price\";i:2000;s:5:\"image\";s:13:\"/images/c.jpg\";}i:3;a:5:{s:2:\"id\";i:3;s:7:\"product\";s:7:\"Speaker\";s:8:\"quantity\";i:2;s:5:\"price\";i:1500;s:5:\"image\";s:13:\"/images/d.jpg\";}}', '2021-01-25 09:59:12', '2021-01-25 09:59:12'),
(14, '600ec0a111991', 1, 'pending', '16600.00', 10, 1, 'test_f', 'test_l', 'Akala', 'Siaya', '468463', '', 'a:4:{i:1;a:5:{s:2:\"id\";i:1;s:7:\"product\";s:9:\"Earphones\";s:8:\"quantity\";i:3;s:5:\"price\";i:200;s:5:\"image\";s:13:\"/images/c.jpg\";}i:6;a:5:{s:2:\"id\";i:6;s:7:\"product\";s:10:\"Black Wire\";s:8:\"quantity\";i:3;s:5:\"price\";i:3000;s:5:\"image\";s:13:\"/images/g.jpg\";}i:2;a:5:{s:2:\"id\";i:2;s:7:\"product\";s:10:\"Headphones\";s:8:\"quantity\";i:2;s:5:\"price\";i:2000;s:5:\"image\";s:13:\"/images/c.jpg\";}i:3;a:5:{s:2:\"id\";i:3;s:7:\"product\";s:7:\"Speaker\";s:8:\"quantity\";i:2;s:5:\"price\";i:1500;s:5:\"image\";s:13:\"/images/d.jpg\";}}', '2021-01-25 09:59:13', '2021-01-25 09:59:13'),
(15, '600ec0a13793d', 1, 'pending', '16600.00', 10, 1, 'test_f', 'test_l', 'Akala', 'Siaya', '468463', '', 'a:4:{i:1;a:5:{s:2:\"id\";i:1;s:7:\"product\";s:9:\"Earphones\";s:8:\"quantity\";i:3;s:5:\"price\";i:200;s:5:\"image\";s:13:\"/images/c.jpg\";}i:6;a:5:{s:2:\"id\";i:6;s:7:\"product\";s:10:\"Black Wire\";s:8:\"quantity\";i:3;s:5:\"price\";i:3000;s:5:\"image\";s:13:\"/images/g.jpg\";}i:2;a:5:{s:2:\"id\";i:2;s:7:\"product\";s:10:\"Headphones\";s:8:\"quantity\";i:2;s:5:\"price\";i:2000;s:5:\"image\";s:13:\"/images/c.jpg\";}i:3;a:5:{s:2:\"id\";i:3;s:7:\"product\";s:7:\"Speaker\";s:8:\"quantity\";i:2;s:5:\"price\";i:1500;s:5:\"image\";s:13:\"/images/d.jpg\";}}', '2021-01-25 09:59:13', '2021-01-25 09:59:13'),
(16, '600ec0a14c5a3', 1, 'pending', '16600.00', 10, 1, 'test_f', 'test_l', 'Akala', 'Siaya', '468463', '', 'a:4:{i:1;a:5:{s:2:\"id\";i:1;s:7:\"product\";s:9:\"Earphones\";s:8:\"quantity\";i:3;s:5:\"price\";i:200;s:5:\"image\";s:13:\"/images/c.jpg\";}i:6;a:5:{s:2:\"id\";i:6;s:7:\"product\";s:10:\"Black Wire\";s:8:\"quantity\";i:3;s:5:\"price\";i:3000;s:5:\"image\";s:13:\"/images/g.jpg\";}i:2;a:5:{s:2:\"id\";i:2;s:7:\"product\";s:10:\"Headphones\";s:8:\"quantity\";i:2;s:5:\"price\";i:2000;s:5:\"image\";s:13:\"/images/c.jpg\";}i:3;a:5:{s:2:\"id\";i:3;s:7:\"product\";s:7:\"Speaker\";s:8:\"quantity\";i:2;s:5:\"price\";i:1500;s:5:\"image\";s:13:\"/images/d.jpg\";}}', '2021-01-25 09:59:13', '2021-01-25 09:59:13'),
(17, '600ec12843e63', 1, 'pending', '16600.00', 10, 1, 'test_f', 'test_l', 'Mbita', 'Suba', '468463', '', 'a:4:{i:1;a:5:{s:2:\"id\";i:1;s:7:\"product\";s:9:\"Earphones\";s:8:\"quantity\";i:3;s:5:\"price\";i:200;s:5:\"image\";s:13:\"/images/c.jpg\";}i:6;a:5:{s:2:\"id\";i:6;s:7:\"product\";s:10:\"Black Wire\";s:8:\"quantity\";i:3;s:5:\"price\";i:3000;s:5:\"image\";s:13:\"/images/g.jpg\";}i:2;a:5:{s:2:\"id\";i:2;s:7:\"product\";s:10:\"Headphones\";s:8:\"quantity\";i:2;s:5:\"price\";i:2000;s:5:\"image\";s:13:\"/images/c.jpg\";}i:3;a:5:{s:2:\"id\";i:3;s:7:\"product\";s:7:\"Speaker\";s:8:\"quantity\";i:2;s:5:\"price\";i:1500;s:5:\"image\";s:13:\"/images/d.jpg\";}}', '2021-01-25 10:01:28', '2021-01-25 10:01:28'),
(18, '600ec1a8ceaf0', 1, 'pending', '16600.00', 10, 1, 'test_f', 'test_l', 'Mbita', 'Suba', '468463', '', 'a:4:{i:1;a:5:{s:2:\"id\";i:1;s:7:\"product\";s:9:\"Earphones\";s:8:\"quantity\";i:3;s:5:\"price\";i:200;s:5:\"image\";s:13:\"/images/c.jpg\";}i:6;a:5:{s:2:\"id\";i:6;s:7:\"product\";s:10:\"Black Wire\";s:8:\"quantity\";i:3;s:5:\"price\";i:3000;s:5:\"image\";s:13:\"/images/g.jpg\";}i:2;a:5:{s:2:\"id\";i:2;s:7:\"product\";s:10:\"Headphones\";s:8:\"quantity\";i:2;s:5:\"price\";i:2000;s:5:\"image\";s:13:\"/images/c.jpg\";}i:3;a:5:{s:2:\"id\";i:3;s:7:\"product\";s:7:\"Speaker\";s:8:\"quantity\";i:2;s:5:\"price\";i:1500;s:5:\"image\";s:13:\"/images/d.jpg\";}}', '2021-01-25 10:03:36', '2021-01-25 10:03:36'),
(19, '600ec1c1e291f', 1, 'pending', '16600.00', 10, 1, 'test_f', 'test_l', 'Mbita', 'Suba', '468463', '', 'a:4:{i:1;a:5:{s:2:\"id\";i:1;s:7:\"product\";s:9:\"Earphones\";s:8:\"quantity\";i:3;s:5:\"price\";i:200;s:5:\"image\";s:13:\"/images/c.jpg\";}i:6;a:5:{s:2:\"id\";i:6;s:7:\"product\";s:10:\"Black Wire\";s:8:\"quantity\";i:3;s:5:\"price\";i:3000;s:5:\"image\";s:13:\"/images/g.jpg\";}i:2;a:5:{s:2:\"id\";i:2;s:7:\"product\";s:10:\"Headphones\";s:8:\"quantity\";i:2;s:5:\"price\";i:2000;s:5:\"image\";s:13:\"/images/c.jpg\";}i:3;a:5:{s:2:\"id\";i:3;s:7:\"product\";s:7:\"Speaker\";s:8:\"quantity\";i:2;s:5:\"price\";i:1500;s:5:\"image\";s:13:\"/images/d.jpg\";}}', '2021-01-25 10:04:01', '2021-01-25 10:04:01'),
(20, '600ec22875d81', 1, 'pending', '16600.00', 10, 1, 'test_f', 'test_l', 'Kayole', 'Nairobi', '468463', '', 'a:4:{i:1;a:5:{s:2:\"id\";i:1;s:7:\"product\";s:9:\"Earphones\";s:8:\"quantity\";i:3;s:5:\"price\";i:200;s:5:\"image\";s:13:\"/images/c.jpg\";}i:6;a:5:{s:2:\"id\";i:6;s:7:\"product\";s:10:\"Black Wire\";s:8:\"quantity\";i:3;s:5:\"price\";i:3000;s:5:\"image\";s:13:\"/images/g.jpg\";}i:2;a:5:{s:2:\"id\";i:2;s:7:\"product\";s:10:\"Headphones\";s:8:\"quantity\";i:2;s:5:\"price\";i:2000;s:5:\"image\";s:13:\"/images/c.jpg\";}i:3;a:5:{s:2:\"id\";i:3;s:7:\"product\";s:7:\"Speaker\";s:8:\"quantity\";i:2;s:5:\"price\";i:1500;s:5:\"image\";s:13:\"/images/d.jpg\";}}', '2021-01-25 10:05:44', '2021-01-25 10:05:44'),
(21, '600ec2931681f', 1, 'pending', '16600.00', 10, 1, 'test_f', 'test_l', 'Kangundo', 'Machakos', '468463', '', 'a:4:{i:1;a:5:{s:2:\"id\";i:1;s:7:\"product\";s:9:\"Earphones\";s:8:\"quantity\";i:3;s:5:\"price\";i:200;s:5:\"image\";s:13:\"/images/c.jpg\";}i:6;a:5:{s:2:\"id\";i:6;s:7:\"product\";s:10:\"Black Wire\";s:8:\"quantity\";i:3;s:5:\"price\";i:3000;s:5:\"image\";s:13:\"/images/g.jpg\";}i:2;a:5:{s:2:\"id\";i:2;s:7:\"product\";s:10:\"Headphones\";s:8:\"quantity\";i:2;s:5:\"price\";i:2000;s:5:\"image\";s:13:\"/images/c.jpg\";}i:3;a:5:{s:2:\"id\";i:3;s:7:\"product\";s:7:\"Speaker\";s:8:\"quantity\";i:2;s:5:\"price\";i:1500;s:5:\"image\";s:13:\"/images/d.jpg\";}}', '2021-01-25 10:07:31', '2021-01-25 10:07:31'),
(22, '600ec2dcd0e83', 1, 'pending', '16600.00', 10, 1, 'test_f', 'test_l', 'Litein', 'Baringo', '987456', '', 'a:4:{i:1;a:5:{s:2:\"id\";i:1;s:7:\"product\";s:9:\"Earphones\";s:8:\"quantity\";i:3;s:5:\"price\";i:200;s:5:\"image\";s:13:\"/images/c.jpg\";}i:6;a:5:{s:2:\"id\";i:6;s:7:\"product\";s:10:\"Black Wire\";s:8:\"quantity\";i:3;s:5:\"price\";i:3000;s:5:\"image\";s:13:\"/images/g.jpg\";}i:2;a:5:{s:2:\"id\";i:2;s:7:\"product\";s:10:\"Headphones\";s:8:\"quantity\";i:2;s:5:\"price\";i:2000;s:5:\"image\";s:13:\"/images/c.jpg\";}i:3;a:5:{s:2:\"id\";i:3;s:7:\"product\";s:7:\"Speaker\";s:8:\"quantity\";i:2;s:5:\"price\";i:1500;s:5:\"image\";s:13:\"/images/d.jpg\";}}', '2021-01-25 10:08:44', '2021-01-25 10:08:44'),
(23, '600ec451d86cf', 1, 'pending', '16600.00', 10, 1, 'test_f', 'test_l', 'Litein', 'Baringo', '987456', '', 'a:4:{i:1;a:5:{s:2:\"id\";i:1;s:7:\"product\";s:9:\"Earphones\";s:8:\"quantity\";i:3;s:5:\"price\";i:200;s:5:\"image\";s:13:\"/images/c.jpg\";}i:6;a:5:{s:2:\"id\";i:6;s:7:\"product\";s:10:\"Black Wire\";s:8:\"quantity\";i:3;s:5:\"price\";i:3000;s:5:\"image\";s:13:\"/images/g.jpg\";}i:2;a:5:{s:2:\"id\";i:2;s:7:\"product\";s:10:\"Headphones\";s:8:\"quantity\";i:2;s:5:\"price\";i:2000;s:5:\"image\";s:13:\"/images/c.jpg\";}i:3;a:5:{s:2:\"id\";i:3;s:7:\"product\";s:7:\"Speaker\";s:8:\"quantity\";i:2;s:5:\"price\";i:1500;s:5:\"image\";s:13:\"/images/d.jpg\";}}', '2021-01-25 10:14:57', '2021-01-25 10:14:57'),
(24, '600ec4ae4c39a', 1, 'pending', '16600.00', 10, 1, 'test_f', 'test_l', 'Pap Ondit', 'Nyakach', '56148', '', 'a:4:{i:1;a:5:{s:2:\"id\";i:1;s:7:\"product\";s:9:\"Earphones\";s:8:\"quantity\";i:3;s:5:\"price\";i:200;s:5:\"image\";s:13:\"/images/c.jpg\";}i:6;a:5:{s:2:\"id\";i:6;s:7:\"product\";s:10:\"Black Wire\";s:8:\"quantity\";i:3;s:5:\"price\";i:3000;s:5:\"image\";s:13:\"/images/g.jpg\";}i:2;a:5:{s:2:\"id\";i:2;s:7:\"product\";s:10:\"Headphones\";s:8:\"quantity\";i:2;s:5:\"price\";i:2000;s:5:\"image\";s:13:\"/images/c.jpg\";}i:3;a:5:{s:2:\"id\";i:3;s:7:\"product\";s:7:\"Speaker\";s:8:\"quantity\";i:2;s:5:\"price\";i:1500;s:5:\"image\";s:13:\"/images/d.jpg\";}}', '2021-01-25 10:16:30', '2021-01-25 10:16:30'),
(25, '600ec4f06ddff', 1, 'pending', '16600.00', 10, 1, 'test_f', 'test_l', 'Pap Ondit', 'Nyakach', '56148', '', 'a:4:{i:1;a:5:{s:2:\"id\";i:1;s:7:\"product\";s:9:\"Earphones\";s:8:\"quantity\";i:3;s:5:\"price\";i:200;s:5:\"image\";s:13:\"/images/c.jpg\";}i:6;a:5:{s:2:\"id\";i:6;s:7:\"product\";s:10:\"Black Wire\";s:8:\"quantity\";i:3;s:5:\"price\";i:3000;s:5:\"image\";s:13:\"/images/g.jpg\";}i:2;a:5:{s:2:\"id\";i:2;s:7:\"product\";s:10:\"Headphones\";s:8:\"quantity\";i:2;s:5:\"price\";i:2000;s:5:\"image\";s:13:\"/images/c.jpg\";}i:3;a:5:{s:2:\"id\";i:3;s:7:\"product\";s:7:\"Speaker\";s:8:\"quantity\";i:2;s:5:\"price\";i:1500;s:5:\"image\";s:13:\"/images/d.jpg\";}}', '2021-01-25 10:17:36', '2021-01-25 10:17:36'),
(26, '600ec552c360e', 1, 'pending', '16600.00', 10, 1, 'test_f', 'test_l', 'Makadier', 'Nyatike', '56148', '', 'a:4:{i:1;a:5:{s:2:\"id\";i:1;s:7:\"product\";s:9:\"Earphones\";s:8:\"quantity\";i:3;s:5:\"price\";i:200;s:5:\"image\";s:13:\"/images/c.jpg\";}i:6;a:5:{s:2:\"id\";i:6;s:7:\"product\";s:10:\"Black Wire\";s:8:\"quantity\";i:3;s:5:\"price\";i:3000;s:5:\"image\";s:13:\"/images/g.jpg\";}i:2;a:5:{s:2:\"id\";i:2;s:7:\"product\";s:10:\"Headphones\";s:8:\"quantity\";i:2;s:5:\"price\";i:2000;s:5:\"image\";s:13:\"/images/c.jpg\";}i:3;a:5:{s:2:\"id\";i:3;s:7:\"product\";s:7:\"Speaker\";s:8:\"quantity\";i:2;s:5:\"price\";i:1500;s:5:\"image\";s:13:\"/images/d.jpg\";}}', '2021-01-25 10:19:14', '2021-01-25 10:19:14'),
(27, '600ec6729ad18', 1, 'pending', '16600.00', 10, 1, 'test_f', 'test_l', 'Ndhiwa', 'Homa Bay', '56148', '', 'a:4:{i:1;a:5:{s:2:\"id\";i:1;s:7:\"product\";s:9:\"Earphones\";s:8:\"quantity\";i:3;s:5:\"price\";i:200;s:5:\"image\";s:13:\"/images/c.jpg\";}i:6;a:5:{s:2:\"id\";i:6;s:7:\"product\";s:10:\"Black Wire\";s:8:\"quantity\";i:3;s:5:\"price\";i:3000;s:5:\"image\";s:13:\"/images/g.jpg\";}i:2;a:5:{s:2:\"id\";i:2;s:7:\"product\";s:10:\"Headphones\";s:8:\"quantity\";i:2;s:5:\"price\";i:2000;s:5:\"image\";s:13:\"/images/c.jpg\";}i:3;a:5:{s:2:\"id\";i:3;s:7:\"product\";s:7:\"Speaker\";s:8:\"quantity\";i:2;s:5:\"price\";i:1500;s:5:\"image\";s:13:\"/images/d.jpg\";}}', '2021-01-25 10:24:02', '2021-01-25 10:24:02'),
(28, '600ec6bf1b017', 1, 'pending', '16600.00', 10, 1, 'test_f', 'test_l', 'Awasi', 'Nyando', '69812', '', 'a:4:{i:1;a:5:{s:2:\"id\";i:1;s:7:\"product\";s:9:\"Earphones\";s:8:\"quantity\";i:3;s:5:\"price\";i:200;s:5:\"image\";s:13:\"/images/c.jpg\";}i:6;a:5:{s:2:\"id\";i:6;s:7:\"product\";s:10:\"Black Wire\";s:8:\"quantity\";i:3;s:5:\"price\";i:3000;s:5:\"image\";s:13:\"/images/g.jpg\";}i:2;a:5:{s:2:\"id\";i:2;s:7:\"product\";s:10:\"Headphones\";s:8:\"quantity\";i:2;s:5:\"price\";i:2000;s:5:\"image\";s:13:\"/images/c.jpg\";}i:3;a:5:{s:2:\"id\";i:3;s:7:\"product\";s:7:\"Speaker\";s:8:\"quantity\";i:2;s:5:\"price\";i:1500;s:5:\"image\";s:13:\"/images/d.jpg\";}}', '2021-01-25 10:25:19', '2021-01-25 10:25:19'),
(29, '600ec719a51ac', 1, 'pending', '16600.00', 10, 1, 'test_f', 'test_l', 'Madiany', 'Rarieda', '69812', '', 'a:4:{i:1;a:5:{s:2:\"id\";i:1;s:7:\"product\";s:9:\"Earphones\";s:8:\"quantity\";i:3;s:5:\"price\";i:200;s:5:\"image\";s:13:\"/images/c.jpg\";}i:6;a:5:{s:2:\"id\";i:6;s:7:\"product\";s:10:\"Black Wire\";s:8:\"quantity\";i:3;s:5:\"price\";i:3000;s:5:\"image\";s:13:\"/images/g.jpg\";}i:2;a:5:{s:2:\"id\";i:2;s:7:\"product\";s:10:\"Headphones\";s:8:\"quantity\";i:2;s:5:\"price\";i:2000;s:5:\"image\";s:13:\"/images/c.jpg\";}i:3;a:5:{s:2:\"id\";i:3;s:7:\"product\";s:7:\"Speaker\";s:8:\"quantity\";i:2;s:5:\"price\";i:1500;s:5:\"image\";s:13:\"/images/d.jpg\";}}', '2021-01-25 10:26:49', '2021-01-25 10:26:49'),
(30, '600ec763c8948', 1, 'pending', '16600.00', 10, 1, 'test_f', 'test_l', 'Kabarnet', 'Baringo', '69812', '', 'a:4:{i:1;a:5:{s:2:\"id\";i:1;s:7:\"product\";s:9:\"Earphones\";s:8:\"quantity\";i:3;s:5:\"price\";i:200;s:5:\"image\";s:13:\"/images/c.jpg\";}i:6;a:5:{s:2:\"id\";i:6;s:7:\"product\";s:10:\"Black Wire\";s:8:\"quantity\";i:3;s:5:\"price\";i:3000;s:5:\"image\";s:13:\"/images/g.jpg\";}i:2;a:5:{s:2:\"id\";i:2;s:7:\"product\";s:10:\"Headphones\";s:8:\"quantity\";i:2;s:5:\"price\";i:2000;s:5:\"image\";s:13:\"/images/c.jpg\";}i:3;a:5:{s:2:\"id\";i:3;s:7:\"product\";s:7:\"Speaker\";s:8:\"quantity\";i:2;s:5:\"price\";i:1500;s:5:\"image\";s:13:\"/images/d.jpg\";}}', '2021-01-25 10:28:03', '2021-01-25 10:28:03'),
(31, '600ec7e124efd', 1, 'pending', '16600.00', 10, 1, 'test_f', 'test_l', 'Kapsabet', 'Nandi', '69812', '', 'a:4:{i:1;a:5:{s:2:\"id\";i:1;s:7:\"product\";s:9:\"Earphones\";s:8:\"quantity\";i:3;s:5:\"price\";i:200;s:5:\"image\";s:13:\"/images/c.jpg\";}i:6;a:5:{s:2:\"id\";i:6;s:7:\"product\";s:10:\"Black Wire\";s:8:\"quantity\";i:3;s:5:\"price\";i:3000;s:5:\"image\";s:13:\"/images/g.jpg\";}i:2;a:5:{s:2:\"id\";i:2;s:7:\"product\";s:10:\"Headphones\";s:8:\"quantity\";i:2;s:5:\"price\";i:2000;s:5:\"image\";s:13:\"/images/c.jpg\";}i:3;a:5:{s:2:\"id\";i:3;s:7:\"product\";s:7:\"Speaker\";s:8:\"quantity\";i:2;s:5:\"price\";i:1500;s:5:\"image\";s:13:\"/images/d.jpg\";}}', '2021-01-25 10:30:09', '2021-01-25 10:30:09'),
(32, '600ec878e962a', 1, 'pending', '16600.00', 10, 1, 'test_f', 'test_l', 'Kapsabet', 'Nandi', '69812', '', 'a:4:{i:1;a:5:{s:2:\"id\";i:1;s:7:\"product\";s:9:\"Earphones\";s:8:\"quantity\";i:3;s:5:\"price\";i:200;s:5:\"image\";s:13:\"/images/c.jpg\";}i:6;a:5:{s:2:\"id\";i:6;s:7:\"product\";s:10:\"Black Wire\";s:8:\"quantity\";i:3;s:5:\"price\";i:3000;s:5:\"image\";s:13:\"/images/g.jpg\";}i:2;a:5:{s:2:\"id\";i:2;s:7:\"product\";s:10:\"Headphones\";s:8:\"quantity\";i:2;s:5:\"price\";i:2000;s:5:\"image\";s:13:\"/images/c.jpg\";}i:3;a:5:{s:2:\"id\";i:3;s:7:\"product\";s:7:\"Speaker\";s:8:\"quantity\";i:2;s:5:\"price\";i:1500;s:5:\"image\";s:13:\"/images/d.jpg\";}}', '2021-01-25 10:32:40', '2021-01-25 10:32:40'),
(33, '600ec8d0dfe1b', 6, 'pending', '12700.00', 6, 1, 'Mary', 'Murkey', 'Bahati', 'Nakuru', '325698', '', 'a:6:{i:1;a:5:{s:2:\"id\";i:1;s:7:\"product\";s:9:\"Earphones\";s:8:\"quantity\";i:1;s:5:\"price\";i:200;s:5:\"image\";s:13:\"/images/c.jpg\";}i:2;a:5:{s:2:\"id\";i:2;s:7:\"product\";s:10:\"Headphones\";s:8:\"quantity\";i:1;s:5:\"price\";i:2000;s:5:\"image\";s:13:\"/images/c.jpg\";}i:3;a:5:{s:2:\"id\";i:3;s:7:\"product\";s:7:\"Speaker\";s:8:\"quantity\";i:1;s:5:\"price\";i:1500;s:5:\"image\";s:13:\"/images/d.jpg\";}i:4;a:5:{s:2:\"id\";i:4;s:7:\"product\";s:7:\"Voyager\";s:8:\"quantity\";i:1;s:5:\"price\";i:4000;s:5:\"image\";s:13:\"/images/e.jpg\";}i:5;a:5:{s:2:\"id\";i:5;s:7:\"product\";s:7:\"Calisto\";s:8:\"quantity\";i:1;s:5:\"price\";i:2000;s:5:\"image\";s:13:\"/images/f.jpg\";}i:6;a:5:{s:2:\"id\";i:6;s:7:\"product\";s:10:\"Black Wire\";s:8:\"quantity\";i:1;s:5:\"price\";i:3000;s:5:\"image\";s:13:\"/images/g.jpg\";}}', '2021-01-25 10:34:08', '2021-01-25 10:34:08'),
(34, '600ec94d02ff0', 6, 'pending', '12700.00', 6, 1, 'Mary', 'Murkey', 'Lodwar', 'Turkana', '89564', '', 'a:6:{i:1;a:5:{s:2:\"id\";i:1;s:7:\"product\";s:9:\"Earphones\";s:8:\"quantity\";i:1;s:5:\"price\";i:200;s:5:\"image\";s:13:\"/images/c.jpg\";}i:2;a:5:{s:2:\"id\";i:2;s:7:\"product\";s:10:\"Headphones\";s:8:\"quantity\";i:1;s:5:\"price\";i:2000;s:5:\"image\";s:13:\"/images/c.jpg\";}i:3;a:5:{s:2:\"id\";i:3;s:7:\"product\";s:7:\"Speaker\";s:8:\"quantity\";i:1;s:5:\"price\";i:1500;s:5:\"image\";s:13:\"/images/d.jpg\";}i:4;a:5:{s:2:\"id\";i:4;s:7:\"product\";s:7:\"Voyager\";s:8:\"quantity\";i:1;s:5:\"price\";i:4000;s:5:\"image\";s:13:\"/images/e.jpg\";}i:5;a:5:{s:2:\"id\";i:5;s:7:\"product\";s:7:\"Calisto\";s:8:\"quantity\";i:1;s:5:\"price\";i:2000;s:5:\"image\";s:13:\"/images/f.jpg\";}i:6;a:5:{s:2:\"id\";i:6;s:7:\"product\";s:10:\"Black Wire\";s:8:\"quantity\";i:1;s:5:\"price\";i:3000;s:5:\"image\";s:13:\"/images/g.jpg\";}}', '2021-01-25 10:36:13', '2021-01-25 10:36:13'),
(35, '600ec9bc59523', 6, 'pending', '12700.00', 6, 1, 'Mary', 'Murkey', 'Lodwar', 'Turkana', '89564', '', 'a:6:{i:1;a:5:{s:2:\"id\";i:1;s:7:\"product\";s:9:\"Earphones\";s:8:\"quantity\";i:1;s:5:\"price\";i:200;s:5:\"image\";s:13:\"/images/c.jpg\";}i:2;a:5:{s:2:\"id\";i:2;s:7:\"product\";s:10:\"Headphones\";s:8:\"quantity\";i:1;s:5:\"price\";i:2000;s:5:\"image\";s:13:\"/images/c.jpg\";}i:3;a:5:{s:2:\"id\";i:3;s:7:\"product\";s:7:\"Speaker\";s:8:\"quantity\";i:1;s:5:\"price\";i:1500;s:5:\"image\";s:13:\"/images/d.jpg\";}i:4;a:5:{s:2:\"id\";i:4;s:7:\"product\";s:7:\"Voyager\";s:8:\"quantity\";i:1;s:5:\"price\";i:4000;s:5:\"image\";s:13:\"/images/e.jpg\";}i:5;a:5:{s:2:\"id\";i:5;s:7:\"product\";s:7:\"Calisto\";s:8:\"quantity\";i:1;s:5:\"price\";i:2000;s:5:\"image\";s:13:\"/images/f.jpg\";}i:6;a:5:{s:2:\"id\";i:6;s:7:\"product\";s:10:\"Black Wire\";s:8:\"quantity\";i:1;s:5:\"price\";i:3000;s:5:\"image\";s:13:\"/images/g.jpg\";}}', '2021-01-25 10:38:04', '2021-01-25 10:38:04'),
(36, '600eca3542fcb', 6, 'pending', '12700.00', 6, 1, 'Mary', 'Murkey', 'Kilgoris', 'Tans Mara', '465789', '', 'a:6:{i:1;a:5:{s:2:\"id\";i:1;s:7:\"product\";s:9:\"Earphones\";s:8:\"quantity\";i:1;s:5:\"price\";i:200;s:5:\"image\";s:13:\"/images/c.jpg\";}i:2;a:5:{s:2:\"id\";i:2;s:7:\"product\";s:10:\"Headphones\";s:8:\"quantity\";i:1;s:5:\"price\";i:2000;s:5:\"image\";s:13:\"/images/c.jpg\";}i:3;a:5:{s:2:\"id\";i:3;s:7:\"product\";s:7:\"Speaker\";s:8:\"quantity\";i:1;s:5:\"price\";i:1500;s:5:\"image\";s:13:\"/images/d.jpg\";}i:4;a:5:{s:2:\"id\";i:4;s:7:\"product\";s:7:\"Voyager\";s:8:\"quantity\";i:1;s:5:\"price\";i:4000;s:5:\"image\";s:13:\"/images/e.jpg\";}i:5;a:5:{s:2:\"id\";i:5;s:7:\"product\";s:7:\"Calisto\";s:8:\"quantity\";i:1;s:5:\"price\";i:2000;s:5:\"image\";s:13:\"/images/f.jpg\";}i:6;a:5:{s:2:\"id\";i:6;s:7:\"product\";s:10:\"Black Wire\";s:8:\"quantity\";i:1;s:5:\"price\";i:3000;s:5:\"image\";s:13:\"/images/g.jpg\";}}', '2021-01-25 10:40:05', '2021-01-25 10:40:05'),
(37, '600ed2d7b7ce5', 6, 'pending', '12700.00', 6, 1, 'Mary', 'Murkey', 'Baragoi', 'Samburu', '213654', '', 'a:6:{i:1;a:5:{s:2:\"id\";i:1;s:7:\"product\";s:9:\"Earphones\";s:8:\"quantity\";i:1;s:5:\"price\";i:200;s:5:\"image\";s:13:\"/images/c.jpg\";}i:2;a:5:{s:2:\"id\";i:2;s:7:\"product\";s:10:\"Headphones\";s:8:\"quantity\";i:1;s:5:\"price\";i:2000;s:5:\"image\";s:13:\"/images/c.jpg\";}i:3;a:5:{s:2:\"id\";i:3;s:7:\"product\";s:7:\"Speaker\";s:8:\"quantity\";i:1;s:5:\"price\";i:1500;s:5:\"image\";s:13:\"/images/d.jpg\";}i:4;a:5:{s:2:\"id\";i:4;s:7:\"product\";s:7:\"Voyager\";s:8:\"quantity\";i:1;s:5:\"price\";i:4000;s:5:\"image\";s:13:\"/images/e.jpg\";}i:5;a:5:{s:2:\"id\";i:5;s:7:\"product\";s:7:\"Calisto\";s:8:\"quantity\";i:1;s:5:\"price\";i:2000;s:5:\"image\";s:13:\"/images/f.jpg\";}i:6;a:5:{s:2:\"id\";i:6;s:7:\"product\";s:10:\"Black Wire\";s:8:\"quantity\";i:1;s:5:\"price\";i:3000;s:5:\"image\";s:13:\"/images/g.jpg\";}}', '2021-01-25 11:16:55', '2021-01-25 11:16:55'),
(38, '600ed46010c23', 6, 'pending', '12700.00', 6, 1, 'Mary', 'Murkey', 'Baragoi', 'Samburu', '213654', '', 'a:6:{i:1;a:5:{s:2:\"id\";i:1;s:7:\"product\";s:9:\"Earphones\";s:8:\"quantity\";i:1;s:5:\"price\";i:200;s:5:\"image\";s:13:\"/images/c.jpg\";}i:2;a:5:{s:2:\"id\";i:2;s:7:\"product\";s:10:\"Headphones\";s:8:\"quantity\";i:1;s:5:\"price\";i:2000;s:5:\"image\";s:13:\"/images/c.jpg\";}i:3;a:5:{s:2:\"id\";i:3;s:7:\"product\";s:7:\"Speaker\";s:8:\"quantity\";i:1;s:5:\"price\";i:1500;s:5:\"image\";s:13:\"/images/d.jpg\";}i:4;a:5:{s:2:\"id\";i:4;s:7:\"product\";s:7:\"Voyager\";s:8:\"quantity\";i:1;s:5:\"price\";i:4000;s:5:\"image\";s:13:\"/images/e.jpg\";}i:5;a:5:{s:2:\"id\";i:5;s:7:\"product\";s:7:\"Calisto\";s:8:\"quantity\";i:1;s:5:\"price\";i:2000;s:5:\"image\";s:13:\"/images/f.jpg\";}i:6;a:5:{s:2:\"id\";i:6;s:7:\"product\";s:10:\"Black Wire\";s:8:\"quantity\";i:1;s:5:\"price\";i:3000;s:5:\"image\";s:13:\"/images/g.jpg\";}}', '2021-01-25 11:23:28', '2021-01-25 11:23:28'),
(39, '600ed48da00b0', 6, 'pending', '12700.00', 6, 1, 'Mary', 'Murkey', 'Baragoi', 'Samburu', '213654', '', 'a:6:{i:1;a:5:{s:2:\"id\";i:1;s:7:\"product\";s:9:\"Earphones\";s:8:\"quantity\";i:1;s:5:\"price\";i:200;s:5:\"image\";s:13:\"/images/c.jpg\";}i:2;a:5:{s:2:\"id\";i:2;s:7:\"product\";s:10:\"Headphones\";s:8:\"quantity\";i:1;s:5:\"price\";i:2000;s:5:\"image\";s:13:\"/images/c.jpg\";}i:3;a:5:{s:2:\"id\";i:3;s:7:\"product\";s:7:\"Speaker\";s:8:\"quantity\";i:1;s:5:\"price\";i:1500;s:5:\"image\";s:13:\"/images/d.jpg\";}i:4;a:5:{s:2:\"id\";i:4;s:7:\"product\";s:7:\"Voyager\";s:8:\"quantity\";i:1;s:5:\"price\";i:4000;s:5:\"image\";s:13:\"/images/e.jpg\";}i:5;a:5:{s:2:\"id\";i:5;s:7:\"product\";s:7:\"Calisto\";s:8:\"quantity\";i:1;s:5:\"price\";i:2000;s:5:\"image\";s:13:\"/images/f.jpg\";}i:6;a:5:{s:2:\"id\";i:6;s:7:\"product\";s:10:\"Black Wire\";s:8:\"quantity\";i:1;s:5:\"price\";i:3000;s:5:\"image\";s:13:\"/images/g.jpg\";}}', '2021-01-25 11:24:13', '2021-01-25 11:24:13'),
(40, '600ed4b463295', 6, 'pending', '12700.00', 6, 1, 'Mary', 'Murkey', 'Baragoi', 'Samburu', '213654', '', 'a:6:{i:1;a:5:{s:2:\"id\";i:1;s:7:\"product\";s:9:\"Earphones\";s:8:\"quantity\";i:1;s:5:\"price\";i:200;s:5:\"image\";s:13:\"/images/c.jpg\";}i:2;a:5:{s:2:\"id\";i:2;s:7:\"product\";s:10:\"Headphones\";s:8:\"quantity\";i:1;s:5:\"price\";i:2000;s:5:\"image\";s:13:\"/images/c.jpg\";}i:3;a:5:{s:2:\"id\";i:3;s:7:\"product\";s:7:\"Speaker\";s:8:\"quantity\";i:1;s:5:\"price\";i:1500;s:5:\"image\";s:13:\"/images/d.jpg\";}i:4;a:5:{s:2:\"id\";i:4;s:7:\"product\";s:7:\"Voyager\";s:8:\"quantity\";i:1;s:5:\"price\";i:4000;s:5:\"image\";s:13:\"/images/e.jpg\";}i:5;a:5:{s:2:\"id\";i:5;s:7:\"product\";s:7:\"Calisto\";s:8:\"quantity\";i:1;s:5:\"price\";i:2000;s:5:\"image\";s:13:\"/images/f.jpg\";}i:6;a:5:{s:2:\"id\";i:6;s:7:\"product\";s:10:\"Black Wire\";s:8:\"quantity\";i:1;s:5:\"price\";i:3000;s:5:\"image\";s:13:\"/images/g.jpg\";}}', '2021-01-25 11:24:52', '2021-01-25 11:24:52'),
(41, '600fb63862c75', 4, 'pending', '5000.00', 3, 1, 'Peter', 'James', 'Kapenguria', 'West Pokot', '234567', '', 'a:2:{i:2;a:5:{s:2:\"id\";i:2;s:7:\"product\";s:10:\"Headphones\";s:8:\"quantity\";i:1;s:5:\"price\";i:2000;s:5:\"image\";s:13:\"/images/c.jpg\";}i:3;a:5:{s:2:\"id\";i:3;s:7:\"product\";s:7:\"Speaker\";s:8:\"quantity\";i:2;s:5:\"price\";i:1500;s:5:\"image\";s:13:\"/images/d.jpg\";}}', '2021-01-26 03:27:04', '2021-01-26 03:27:04'),
(42, '600fcd7919477', 4, 'pending', '23500.00', 11, 1, 'Peter', 'James', 'Pap Ondit', 'Trans-Nzoia', '4578', '', 'a:4:{i:2;a:5:{s:2:\"id\";i:2;s:7:\"product\";s:10:\"Headphones\";s:8:\"quantity\";i:1;s:5:\"price\";i:2000;s:5:\"image\";s:13:\"/images/c.jpg\";}i:3;a:5:{s:2:\"id\";i:3;s:7:\"product\";s:7:\"Speaker\";s:8:\"quantity\";i:5;s:5:\"price\";i:1500;s:5:\"image\";s:13:\"/images/d.jpg\";}i:4;a:5:{s:2:\"id\";i:4;s:7:\"product\";s:7:\"Voyager\";s:8:\"quantity\";i:2;s:5:\"price\";i:4000;s:5:\"image\";s:13:\"/images/e.jpg\";}i:5;a:5:{s:2:\"id\";i:5;s:7:\"product\";s:7:\"Calisto\";s:8:\"quantity\";i:3;s:5:\"price\";i:2000;s:5:\"image\";s:13:\"/images/f.jpg\";}}', '2021-01-26 05:06:17', '2021-01-26 05:06:17'),
(43, '600fcf6a6aeae', 4, 'pending', '23500.00', 11, 1, 'Peter', 'James', 'Pap Ondit', 'Trans-Nzoia', '4578', '', 'a:4:{i:2;a:5:{s:2:\"id\";i:2;s:7:\"product\";s:10:\"Headphones\";s:8:\"quantity\";i:1;s:5:\"price\";i:2000;s:5:\"image\";s:13:\"/images/c.jpg\";}i:3;a:5:{s:2:\"id\";i:3;s:7:\"product\";s:7:\"Speaker\";s:8:\"quantity\";i:5;s:5:\"price\";i:1500;s:5:\"image\";s:13:\"/images/d.jpg\";}i:4;a:5:{s:2:\"id\";i:4;s:7:\"product\";s:7:\"Voyager\";s:8:\"quantity\";i:2;s:5:\"price\";i:4000;s:5:\"image\";s:13:\"/images/e.jpg\";}i:5;a:5:{s:2:\"id\";i:5;s:7:\"product\";s:7:\"Calisto\";s:8:\"quantity\";i:3;s:5:\"price\";i:2000;s:5:\"image\";s:13:\"/images/f.jpg\";}}', '2021-01-26 05:14:34', '2021-01-26 05:14:34'),
(44, '600fd2579bb28', 4, 'pending', '23500.00', 11, 1, 'Peter', 'James', 'Pap Ondit', 'Trans-Nzoia', '4578', '', 'a:4:{i:2;a:5:{s:2:\"id\";i:2;s:7:\"product\";s:10:\"Headphones\";s:8:\"quantity\";i:1;s:5:\"price\";i:2000;s:5:\"image\";s:13:\"/images/c.jpg\";}i:3;a:5:{s:2:\"id\";i:3;s:7:\"product\";s:7:\"Speaker\";s:8:\"quantity\";i:5;s:5:\"price\";i:1500;s:5:\"image\";s:13:\"/images/d.jpg\";}i:4;a:5:{s:2:\"id\";i:4;s:7:\"product\";s:7:\"Voyager\";s:8:\"quantity\";i:2;s:5:\"price\";i:4000;s:5:\"image\";s:13:\"/images/e.jpg\";}i:5;a:5:{s:2:\"id\";i:5;s:7:\"product\";s:7:\"Calisto\";s:8:\"quantity\";i:3;s:5:\"price\";i:2000;s:5:\"image\";s:13:\"/images/f.jpg\";}}', '2021-01-26 05:27:03', '2021-01-26 05:27:03'),
(45, '600fd3436b617', 4, 'pending', '23500.00', 11, 1, 'Peter', 'James', 'Pap Ondit', 'Trans-Nzoia', '4578', '', 'a:4:{i:2;a:5:{s:2:\"id\";i:2;s:7:\"product\";s:10:\"Headphones\";s:8:\"quantity\";i:1;s:5:\"price\";i:2000;s:5:\"image\";s:13:\"/images/c.jpg\";}i:3;a:5:{s:2:\"id\";i:3;s:7:\"product\";s:7:\"Speaker\";s:8:\"quantity\";i:5;s:5:\"price\";i:1500;s:5:\"image\";s:13:\"/images/d.jpg\";}i:4;a:5:{s:2:\"id\";i:4;s:7:\"product\";s:7:\"Voyager\";s:8:\"quantity\";i:2;s:5:\"price\";i:4000;s:5:\"image\";s:13:\"/images/e.jpg\";}i:5;a:5:{s:2:\"id\";i:5;s:7:\"product\";s:7:\"Calisto\";s:8:\"quantity\";i:3;s:5:\"price\";i:2000;s:5:\"image\";s:13:\"/images/f.jpg\";}}', '2021-01-26 05:30:59', '2021-01-26 05:30:59'),
(46, '600fd36fe614f', 4, 'pending', '23500.00', 11, 1, 'Peter', 'James', 'Pap Ondit', 'Trans-Nzoia', '4578', '', 'a:4:{i:2;a:5:{s:2:\"id\";i:2;s:7:\"product\";s:10:\"Headphones\";s:8:\"quantity\";i:1;s:5:\"price\";i:2000;s:5:\"image\";s:13:\"/images/c.jpg\";}i:3;a:5:{s:2:\"id\";i:3;s:7:\"product\";s:7:\"Speaker\";s:8:\"quantity\";i:5;s:5:\"price\";i:1500;s:5:\"image\";s:13:\"/images/d.jpg\";}i:4;a:5:{s:2:\"id\";i:4;s:7:\"product\";s:7:\"Voyager\";s:8:\"quantity\";i:2;s:5:\"price\";i:4000;s:5:\"image\";s:13:\"/images/e.jpg\";}i:5;a:5:{s:2:\"id\";i:5;s:7:\"product\";s:7:\"Calisto\";s:8:\"quantity\";i:3;s:5:\"price\";i:2000;s:5:\"image\";s:13:\"/images/f.jpg\";}}', '2021-01-26 05:31:43', '2021-01-26 05:31:43'),
(47, '600fd4d1e3336', 4, 'pending', '23500.00', 11, 1, 'Peter', 'James', 'Pap Ondit', 'Trans-Nzoia', '4578', '', 'a:4:{i:2;a:5:{s:2:\"id\";i:2;s:7:\"product\";s:10:\"Headphones\";s:8:\"quantity\";i:1;s:5:\"price\";i:2000;s:5:\"image\";s:13:\"/images/c.jpg\";}i:3;a:5:{s:2:\"id\";i:3;s:7:\"product\";s:7:\"Speaker\";s:8:\"quantity\";i:5;s:5:\"price\";i:1500;s:5:\"image\";s:13:\"/images/d.jpg\";}i:4;a:5:{s:2:\"id\";i:4;s:7:\"product\";s:7:\"Voyager\";s:8:\"quantity\";i:2;s:5:\"price\";i:4000;s:5:\"image\";s:13:\"/images/e.jpg\";}i:5;a:5:{s:2:\"id\";i:5;s:7:\"product\";s:7:\"Calisto\";s:8:\"quantity\";i:3;s:5:\"price\";i:2000;s:5:\"image\";s:13:\"/images/f.jpg\";}}', '2021-01-26 05:37:37', '2021-01-26 05:37:37'),
(48, '600fd4d571c7c', 4, 'pending', '23500.00', 11, 1, 'Peter', 'James', 'Pap Ondit', 'Trans-Nzoia', '4578', '', 'a:4:{i:2;a:5:{s:2:\"id\";i:2;s:7:\"product\";s:10:\"Headphones\";s:8:\"quantity\";i:1;s:5:\"price\";i:2000;s:5:\"image\";s:13:\"/images/c.jpg\";}i:3;a:5:{s:2:\"id\";i:3;s:7:\"product\";s:7:\"Speaker\";s:8:\"quantity\";i:5;s:5:\"price\";i:1500;s:5:\"image\";s:13:\"/images/d.jpg\";}i:4;a:5:{s:2:\"id\";i:4;s:7:\"product\";s:7:\"Voyager\";s:8:\"quantity\";i:2;s:5:\"price\";i:4000;s:5:\"image\";s:13:\"/images/e.jpg\";}i:5;a:5:{s:2:\"id\";i:5;s:7:\"product\";s:7:\"Calisto\";s:8:\"quantity\";i:3;s:5:\"price\";i:2000;s:5:\"image\";s:13:\"/images/f.jpg\";}}', '2021-01-26 05:37:41', '2021-01-26 05:37:41'),
(49, '600fd50fd95a5', 4, 'pending', '23500.00', 11, 1, 'Peter', 'James', 'Pap Ondit', 'Trans-Nzoia', '4578', '', 'a:4:{i:2;a:5:{s:2:\"id\";i:2;s:7:\"product\";s:10:\"Headphones\";s:8:\"quantity\";i:1;s:5:\"price\";i:2000;s:5:\"image\";s:13:\"/images/c.jpg\";}i:3;a:5:{s:2:\"id\";i:3;s:7:\"product\";s:7:\"Speaker\";s:8:\"quantity\";i:5;s:5:\"price\";i:1500;s:5:\"image\";s:13:\"/images/d.jpg\";}i:4;a:5:{s:2:\"id\";i:4;s:7:\"product\";s:7:\"Voyager\";s:8:\"quantity\";i:2;s:5:\"price\";i:4000;s:5:\"image\";s:13:\"/images/e.jpg\";}i:5;a:5:{s:2:\"id\";i:5;s:7:\"product\";s:7:\"Calisto\";s:8:\"quantity\";i:3;s:5:\"price\";i:2000;s:5:\"image\";s:13:\"/images/f.jpg\";}}', '2021-01-26 05:38:39', '2021-01-26 05:38:39'),
(50, '600fd520878bd', 4, 'pending', '23500.00', 11, 1, 'Peter', 'James', 'Pap Ondit', 'Trans-Nzoia', '4578', '', 'a:4:{i:2;a:5:{s:2:\"id\";i:2;s:7:\"product\";s:10:\"Headphones\";s:8:\"quantity\";i:1;s:5:\"price\";i:2000;s:5:\"image\";s:13:\"/images/c.jpg\";}i:3;a:5:{s:2:\"id\";i:3;s:7:\"product\";s:7:\"Speaker\";s:8:\"quantity\";i:5;s:5:\"price\";i:1500;s:5:\"image\";s:13:\"/images/d.jpg\";}i:4;a:5:{s:2:\"id\";i:4;s:7:\"product\";s:7:\"Voyager\";s:8:\"quantity\";i:2;s:5:\"price\";i:4000;s:5:\"image\";s:13:\"/images/e.jpg\";}i:5;a:5:{s:2:\"id\";i:5;s:7:\"product\";s:7:\"Calisto\";s:8:\"quantity\";i:3;s:5:\"price\";i:2000;s:5:\"image\";s:13:\"/images/f.jpg\";}}', '2021-01-26 05:38:56', '2021-01-26 05:38:56'),
(51, '600fd5f1ef082', 4, 'pending', '23500.00', 11, 1, 'Peter', 'James', 'Pap Ondit', 'Trans-Nzoia', '4578', '', 'a:4:{i:2;a:5:{s:2:\"id\";i:2;s:7:\"product\";s:10:\"Headphones\";s:8:\"quantity\";i:1;s:5:\"price\";i:2000;s:5:\"image\";s:13:\"/images/c.jpg\";}i:3;a:5:{s:2:\"id\";i:3;s:7:\"product\";s:7:\"Speaker\";s:8:\"quantity\";i:5;s:5:\"price\";i:1500;s:5:\"image\";s:13:\"/images/d.jpg\";}i:4;a:5:{s:2:\"id\";i:4;s:7:\"product\";s:7:\"Voyager\";s:8:\"quantity\";i:2;s:5:\"price\";i:4000;s:5:\"image\";s:13:\"/images/e.jpg\";}i:5;a:5:{s:2:\"id\";i:5;s:7:\"product\";s:7:\"Calisto\";s:8:\"quantity\";i:3;s:5:\"price\";i:2000;s:5:\"image\";s:13:\"/images/f.jpg\";}}', '2021-01-26 05:42:26', '2021-01-26 05:42:26'),
(52, '600fd62198269', 4, 'pending', '23500.00', 11, 1, 'Peter', 'James', 'Pap Ondit', 'Trans-Nzoia', '4578', '', 'a:4:{i:2;a:5:{s:2:\"id\";i:2;s:7:\"product\";s:10:\"Headphones\";s:8:\"quantity\";i:1;s:5:\"price\";i:2000;s:5:\"image\";s:13:\"/images/c.jpg\";}i:3;a:5:{s:2:\"id\";i:3;s:7:\"product\";s:7:\"Speaker\";s:8:\"quantity\";i:5;s:5:\"price\";i:1500;s:5:\"image\";s:13:\"/images/d.jpg\";}i:4;a:5:{s:2:\"id\";i:4;s:7:\"product\";s:7:\"Voyager\";s:8:\"quantity\";i:2;s:5:\"price\";i:4000;s:5:\"image\";s:13:\"/images/e.jpg\";}i:5;a:5:{s:2:\"id\";i:5;s:7:\"product\";s:7:\"Calisto\";s:8:\"quantity\";i:3;s:5:\"price\";i:2000;s:5:\"image\";s:13:\"/images/f.jpg\";}}', '2021-01-26 05:43:13', '2021-01-26 05:43:13'),
(53, '600fd93539ee1', 4, 'pending', '23500.00', 11, 1, 'Peter', 'James', 'Pap Ondit', 'Trans-Nzoia', '4578', '', 'a:4:{i:2;a:5:{s:2:\"id\";i:2;s:7:\"product\";s:10:\"Headphones\";s:8:\"quantity\";i:1;s:5:\"price\";i:2000;s:5:\"image\";s:13:\"/images/c.jpg\";}i:3;a:5:{s:2:\"id\";i:3;s:7:\"product\";s:7:\"Speaker\";s:8:\"quantity\";i:5;s:5:\"price\";i:1500;s:5:\"image\";s:13:\"/images/d.jpg\";}i:4;a:5:{s:2:\"id\";i:4;s:7:\"product\";s:7:\"Voyager\";s:8:\"quantity\";i:2;s:5:\"price\";i:4000;s:5:\"image\";s:13:\"/images/e.jpg\";}i:5;a:5:{s:2:\"id\";i:5;s:7:\"product\";s:7:\"Calisto\";s:8:\"quantity\";i:3;s:5:\"price\";i:2000;s:5:\"image\";s:13:\"/images/f.jpg\";}}', '2021-01-26 05:56:21', '2021-01-26 05:56:21'),
(54, '600fd98fe3c31', 4, 'pending', '23500.00', 11, 1, 'Peter', 'James', 'Pap Ondit', 'Trans-Nzoia', '4578', '', 'a:4:{i:2;a:5:{s:2:\"id\";i:2;s:7:\"product\";s:10:\"Headphones\";s:8:\"quantity\";i:1;s:5:\"price\";i:2000;s:5:\"image\";s:13:\"/images/c.jpg\";}i:3;a:5:{s:2:\"id\";i:3;s:7:\"product\";s:7:\"Speaker\";s:8:\"quantity\";i:5;s:5:\"price\";i:1500;s:5:\"image\";s:13:\"/images/d.jpg\";}i:4;a:5:{s:2:\"id\";i:4;s:7:\"product\";s:7:\"Voyager\";s:8:\"quantity\";i:2;s:5:\"price\";i:4000;s:5:\"image\";s:13:\"/images/e.jpg\";}i:5;a:5:{s:2:\"id\";i:5;s:7:\"product\";s:7:\"Calisto\";s:8:\"quantity\";i:3;s:5:\"price\";i:2000;s:5:\"image\";s:13:\"/images/f.jpg\";}}', '2021-01-26 05:57:51', '2021-01-26 05:57:51'),
(55, '600fd9dd1ce46', 4, 'pending', '23500.00', 11, 1, 'Peter', 'James', 'Pap Ondit', 'Trans-Nzoia', '4578', '', 'a:4:{i:2;a:5:{s:2:\"id\";i:2;s:7:\"product\";s:10:\"Headphones\";s:8:\"quantity\";i:1;s:5:\"price\";i:2000;s:5:\"image\";s:13:\"/images/c.jpg\";}i:3;a:5:{s:2:\"id\";i:3;s:7:\"product\";s:7:\"Speaker\";s:8:\"quantity\";i:5;s:5:\"price\";i:1500;s:5:\"image\";s:13:\"/images/d.jpg\";}i:4;a:5:{s:2:\"id\";i:4;s:7:\"product\";s:7:\"Voyager\";s:8:\"quantity\";i:2;s:5:\"price\";i:4000;s:5:\"image\";s:13:\"/images/e.jpg\";}i:5;a:5:{s:2:\"id\";i:5;s:7:\"product\";s:7:\"Calisto\";s:8:\"quantity\";i:3;s:5:\"price\";i:2000;s:5:\"image\";s:13:\"/images/f.jpg\";}}', '2021-01-26 05:59:09', '2021-01-26 05:59:09'),
(56, '600fda8c65f0f', 4, 'pending', '23500.00', 11, 1, 'Peter', 'James', 'Pap Ondit', 'Trans-Nzoia', '4578', '', 'a:4:{i:2;a:5:{s:2:\"id\";i:2;s:7:\"product\";s:10:\"Headphones\";s:8:\"quantity\";i:1;s:5:\"price\";i:2000;s:5:\"image\";s:13:\"/images/c.jpg\";}i:3;a:5:{s:2:\"id\";i:3;s:7:\"product\";s:7:\"Speaker\";s:8:\"quantity\";i:5;s:5:\"price\";i:1500;s:5:\"image\";s:13:\"/images/d.jpg\";}i:4;a:5:{s:2:\"id\";i:4;s:7:\"product\";s:7:\"Voyager\";s:8:\"quantity\";i:2;s:5:\"price\";i:4000;s:5:\"image\";s:13:\"/images/e.jpg\";}i:5;a:5:{s:2:\"id\";i:5;s:7:\"product\";s:7:\"Calisto\";s:8:\"quantity\";i:3;s:5:\"price\";i:2000;s:5:\"image\";s:13:\"/images/f.jpg\";}}', '2021-01-26 06:02:04', '2021-01-26 06:02:04'),
(57, '600fdab25f807', 4, 'pending', '23500.00', 11, 1, 'Peter', 'James', 'Pap Ondit', 'Trans-Nzoia', '4578', '', 'a:4:{i:2;a:5:{s:2:\"id\";i:2;s:7:\"product\";s:10:\"Headphones\";s:8:\"quantity\";i:1;s:5:\"price\";i:2000;s:5:\"image\";s:13:\"/images/c.jpg\";}i:3;a:5:{s:2:\"id\";i:3;s:7:\"product\";s:7:\"Speaker\";s:8:\"quantity\";i:5;s:5:\"price\";i:1500;s:5:\"image\";s:13:\"/images/d.jpg\";}i:4;a:5:{s:2:\"id\";i:4;s:7:\"product\";s:7:\"Voyager\";s:8:\"quantity\";i:2;s:5:\"price\";i:4000;s:5:\"image\";s:13:\"/images/e.jpg\";}i:5;a:5:{s:2:\"id\";i:5;s:7:\"product\";s:7:\"Calisto\";s:8:\"quantity\";i:3;s:5:\"price\";i:2000;s:5:\"image\";s:13:\"/images/f.jpg\";}}', '2021-01-26 06:02:42', '2021-01-26 06:02:42'),
(58, '600fdb5b923ec', 4, 'pending', '23500.00', 11, 1, 'Peter', 'James', 'Pap Ondit', 'Trans-Nzoia', '4578', '', 'a:4:{i:2;a:5:{s:2:\"id\";i:2;s:7:\"product\";s:10:\"Headphones\";s:8:\"quantity\";i:1;s:5:\"price\";i:2000;s:5:\"image\";s:13:\"/images/c.jpg\";}i:3;a:5:{s:2:\"id\";i:3;s:7:\"product\";s:7:\"Speaker\";s:8:\"quantity\";i:5;s:5:\"price\";i:1500;s:5:\"image\";s:13:\"/images/d.jpg\";}i:4;a:5:{s:2:\"id\";i:4;s:7:\"product\";s:7:\"Voyager\";s:8:\"quantity\";i:2;s:5:\"price\";i:4000;s:5:\"image\";s:13:\"/images/e.jpg\";}i:5;a:5:{s:2:\"id\";i:5;s:7:\"product\";s:7:\"Calisto\";s:8:\"quantity\";i:3;s:5:\"price\";i:2000;s:5:\"image\";s:13:\"/images/f.jpg\";}}', '2021-01-26 06:05:31', '2021-01-26 06:05:31'),
(59, '600fdd9d8b3eb', 4, 'pending', '23500.00', 11, 1, 'Peter', 'James', 'Pap Ondit', 'Trans-Nzoia', '4578', '', 'a:4:{i:2;a:5:{s:2:\"id\";i:2;s:7:\"product\";s:10:\"Headphones\";s:8:\"quantity\";i:1;s:5:\"price\";i:2000;s:5:\"image\";s:13:\"/images/c.jpg\";}i:3;a:5:{s:2:\"id\";i:3;s:7:\"product\";s:7:\"Speaker\";s:8:\"quantity\";i:5;s:5:\"price\";i:1500;s:5:\"image\";s:13:\"/images/d.jpg\";}i:4;a:5:{s:2:\"id\";i:4;s:7:\"product\";s:7:\"Voyager\";s:8:\"quantity\";i:2;s:5:\"price\";i:4000;s:5:\"image\";s:13:\"/images/e.jpg\";}i:5;a:5:{s:2:\"id\";i:5;s:7:\"product\";s:7:\"Calisto\";s:8:\"quantity\";i:3;s:5:\"price\";i:2000;s:5:\"image\";s:13:\"/images/f.jpg\";}}', '2021-01-26 06:15:09', '2021-01-26 06:15:09'),
(60, '600fddbdce2fd', 4, 'pending', '23500.00', 11, 1, 'Peter', 'James', 'Pap Ondit', 'Trans-Nzoia', '4578', '', 'a:4:{i:2;a:5:{s:2:\"id\";i:2;s:7:\"product\";s:10:\"Headphones\";s:8:\"quantity\";i:1;s:5:\"price\";i:2000;s:5:\"image\";s:13:\"/images/c.jpg\";}i:3;a:5:{s:2:\"id\";i:3;s:7:\"product\";s:7:\"Speaker\";s:8:\"quantity\";i:5;s:5:\"price\";i:1500;s:5:\"image\";s:13:\"/images/d.jpg\";}i:4;a:5:{s:2:\"id\";i:4;s:7:\"product\";s:7:\"Voyager\";s:8:\"quantity\";i:2;s:5:\"price\";i:4000;s:5:\"image\";s:13:\"/images/e.jpg\";}i:5;a:5:{s:2:\"id\";i:5;s:7:\"product\";s:7:\"Calisto\";s:8:\"quantity\";i:3;s:5:\"price\";i:2000;s:5:\"image\";s:13:\"/images/f.jpg\";}}', '2021-01-26 06:15:41', '2021-01-26 06:15:41'),
(61, '600fddd79547a', 4, 'pending', '23500.00', 11, 1, 'Peter', 'James', 'Pap Ondit', 'Trans-Nzoia', '4578', '', 'a:4:{i:2;a:5:{s:2:\"id\";i:2;s:7:\"product\";s:10:\"Headphones\";s:8:\"quantity\";i:1;s:5:\"price\";i:2000;s:5:\"image\";s:13:\"/images/c.jpg\";}i:3;a:5:{s:2:\"id\";i:3;s:7:\"product\";s:7:\"Speaker\";s:8:\"quantity\";i:5;s:5:\"price\";i:1500;s:5:\"image\";s:13:\"/images/d.jpg\";}i:4;a:5:{s:2:\"id\";i:4;s:7:\"product\";s:7:\"Voyager\";s:8:\"quantity\";i:2;s:5:\"price\";i:4000;s:5:\"image\";s:13:\"/images/e.jpg\";}i:5;a:5:{s:2:\"id\";i:5;s:7:\"product\";s:7:\"Calisto\";s:8:\"quantity\";i:3;s:5:\"price\";i:2000;s:5:\"image\";s:13:\"/images/f.jpg\";}}', '2021-01-26 06:16:07', '2021-01-26 06:16:07'),
(62, '600fdfd4852ac', 4, 'pending', '23500.00', 11, 1, 'Peter', 'James', 'Pap Ondit', 'Trans-Nzoia', '4578', '', 'a:4:{i:2;a:5:{s:2:\"id\";i:2;s:7:\"product\";s:10:\"Headphones\";s:8:\"quantity\";i:1;s:5:\"price\";i:2000;s:5:\"image\";s:13:\"/images/c.jpg\";}i:3;a:5:{s:2:\"id\";i:3;s:7:\"product\";s:7:\"Speaker\";s:8:\"quantity\";i:5;s:5:\"price\";i:1500;s:5:\"image\";s:13:\"/images/d.jpg\";}i:4;a:5:{s:2:\"id\";i:4;s:7:\"product\";s:7:\"Voyager\";s:8:\"quantity\";i:2;s:5:\"price\";i:4000;s:5:\"image\";s:13:\"/images/e.jpg\";}i:5;a:5:{s:2:\"id\";i:5;s:7:\"product\";s:7:\"Calisto\";s:8:\"quantity\";i:3;s:5:\"price\";i:2000;s:5:\"image\";s:13:\"/images/f.jpg\";}}', '2021-01-26 06:24:36', '2021-01-26 06:24:36'),
(63, '600fdfe22f985', 4, 'pending', '23500.00', 11, 1, 'Peter', 'James', 'Pap Ondit', 'Trans-Nzoia', '4578', '', 'a:4:{i:2;a:5:{s:2:\"id\";i:2;s:7:\"product\";s:10:\"Headphones\";s:8:\"quantity\";i:1;s:5:\"price\";i:2000;s:5:\"image\";s:13:\"/images/c.jpg\";}i:3;a:5:{s:2:\"id\";i:3;s:7:\"product\";s:7:\"Speaker\";s:8:\"quantity\";i:5;s:5:\"price\";i:1500;s:5:\"image\";s:13:\"/images/d.jpg\";}i:4;a:5:{s:2:\"id\";i:4;s:7:\"product\";s:7:\"Voyager\";s:8:\"quantity\";i:2;s:5:\"price\";i:4000;s:5:\"image\";s:13:\"/images/e.jpg\";}i:5;a:5:{s:2:\"id\";i:5;s:7:\"product\";s:7:\"Calisto\";s:8:\"quantity\";i:3;s:5:\"price\";i:2000;s:5:\"image\";s:13:\"/images/f.jpg\";}}', '2021-01-26 06:24:50', '2021-01-26 06:24:50'),
(64, '600fe0287e7c7', 4, 'pending', '23500.00', 11, 1, 'Peter', 'James', 'Pap Ondit', 'Trans-Nzoia', '4578', '', 'a:4:{i:2;a:5:{s:2:\"id\";i:2;s:7:\"product\";s:10:\"Headphones\";s:8:\"quantity\";i:1;s:5:\"price\";i:2000;s:5:\"image\";s:13:\"/images/c.jpg\";}i:3;a:5:{s:2:\"id\";i:3;s:7:\"product\";s:7:\"Speaker\";s:8:\"quantity\";i:5;s:5:\"price\";i:1500;s:5:\"image\";s:13:\"/images/d.jpg\";}i:4;a:5:{s:2:\"id\";i:4;s:7:\"product\";s:7:\"Voyager\";s:8:\"quantity\";i:2;s:5:\"price\";i:4000;s:5:\"image\";s:13:\"/images/e.jpg\";}i:5;a:5:{s:2:\"id\";i:5;s:7:\"product\";s:7:\"Calisto\";s:8:\"quantity\";i:3;s:5:\"price\";i:2000;s:5:\"image\";s:13:\"/images/f.jpg\";}}', '2021-01-26 06:26:00', '2021-01-26 06:26:00'),
(65, '600fe06f4c85e', 4, 'pending', '23500.00', 11, 1, 'Peter', 'James', 'Pap Ondit', 'Trans-Nzoia', '4578', '', 'a:4:{i:2;a:5:{s:2:\"id\";i:2;s:7:\"product\";s:10:\"Headphones\";s:8:\"quantity\";i:1;s:5:\"price\";i:2000;s:5:\"image\";s:13:\"/images/c.jpg\";}i:3;a:5:{s:2:\"id\";i:3;s:7:\"product\";s:7:\"Speaker\";s:8:\"quantity\";i:5;s:5:\"price\";i:1500;s:5:\"image\";s:13:\"/images/d.jpg\";}i:4;a:5:{s:2:\"id\";i:4;s:7:\"product\";s:7:\"Voyager\";s:8:\"quantity\";i:2;s:5:\"price\";i:4000;s:5:\"image\";s:13:\"/images/e.jpg\";}i:5;a:5:{s:2:\"id\";i:5;s:7:\"product\";s:7:\"Calisto\";s:8:\"quantity\";i:3;s:5:\"price\";i:2000;s:5:\"image\";s:13:\"/images/f.jpg\";}}', '2021-01-26 06:27:11', '2021-01-26 06:27:11'),
(66, '600fe127b280e', 4, 'pending', '23500.00', 11, 1, 'Peter', 'James', 'Pap Ondit', 'Trans-Nzoia', '4578', '', 'a:4:{i:2;a:5:{s:2:\"id\";i:2;s:7:\"product\";s:10:\"Headphones\";s:8:\"quantity\";i:1;s:5:\"price\";i:2000;s:5:\"image\";s:13:\"/images/c.jpg\";}i:3;a:5:{s:2:\"id\";i:3;s:7:\"product\";s:7:\"Speaker\";s:8:\"quantity\";i:5;s:5:\"price\";i:1500;s:5:\"image\";s:13:\"/images/d.jpg\";}i:4;a:5:{s:2:\"id\";i:4;s:7:\"product\";s:7:\"Voyager\";s:8:\"quantity\";i:2;s:5:\"price\";i:4000;s:5:\"image\";s:13:\"/images/e.jpg\";}i:5;a:5:{s:2:\"id\";i:5;s:7:\"product\";s:7:\"Calisto\";s:8:\"quantity\";i:3;s:5:\"price\";i:2000;s:5:\"image\";s:13:\"/images/f.jpg\";}}', '2021-01-26 06:30:15', '2021-01-26 06:30:15'),
(67, '600fe136c080b', 4, 'pending', '23500.00', 11, 1, 'Peter', 'James', 'Pap Ondit', 'Trans-Nzoia', '4578', '', 'a:4:{i:2;a:5:{s:2:\"id\";i:2;s:7:\"product\";s:10:\"Headphones\";s:8:\"quantity\";i:1;s:5:\"price\";i:2000;s:5:\"image\";s:13:\"/images/c.jpg\";}i:3;a:5:{s:2:\"id\";i:3;s:7:\"product\";s:7:\"Speaker\";s:8:\"quantity\";i:5;s:5:\"price\";i:1500;s:5:\"image\";s:13:\"/images/d.jpg\";}i:4;a:5:{s:2:\"id\";i:4;s:7:\"product\";s:7:\"Voyager\";s:8:\"quantity\";i:2;s:5:\"price\";i:4000;s:5:\"image\";s:13:\"/images/e.jpg\";}i:5;a:5:{s:2:\"id\";i:5;s:7:\"product\";s:7:\"Calisto\";s:8:\"quantity\";i:3;s:5:\"price\";i:2000;s:5:\"image\";s:13:\"/images/f.jpg\";}}', '2021-01-26 06:30:30', '2021-01-26 06:30:30'),
(68, '600fe1ad0b289', 4, 'pending', '23500.00', 11, 1, 'Peter', 'James', 'Pap Ondit', 'Trans-Nzoia', '4578', '', 'a:4:{i:2;a:5:{s:2:\"id\";i:2;s:7:\"product\";s:10:\"Headphones\";s:8:\"quantity\";i:1;s:5:\"price\";i:2000;s:5:\"image\";s:13:\"/images/c.jpg\";}i:3;a:5:{s:2:\"id\";i:3;s:7:\"product\";s:7:\"Speaker\";s:8:\"quantity\";i:5;s:5:\"price\";i:1500;s:5:\"image\";s:13:\"/images/d.jpg\";}i:4;a:5:{s:2:\"id\";i:4;s:7:\"product\";s:7:\"Voyager\";s:8:\"quantity\";i:2;s:5:\"price\";i:4000;s:5:\"image\";s:13:\"/images/e.jpg\";}i:5;a:5:{s:2:\"id\";i:5;s:7:\"product\";s:7:\"Calisto\";s:8:\"quantity\";i:3;s:5:\"price\";i:2000;s:5:\"image\";s:13:\"/images/f.jpg\";}}', '2021-01-26 06:32:29', '2021-01-26 06:32:29'),
(69, '600fe1bedbd33', 4, 'pending', '23500.00', 11, 1, 'Peter', 'James', 'Pap Ondit', 'Trans-Nzoia', '4578', '', 'a:4:{i:2;a:5:{s:2:\"id\";i:2;s:7:\"product\";s:10:\"Headphones\";s:8:\"quantity\";i:1;s:5:\"price\";i:2000;s:5:\"image\";s:13:\"/images/c.jpg\";}i:3;a:5:{s:2:\"id\";i:3;s:7:\"product\";s:7:\"Speaker\";s:8:\"quantity\";i:5;s:5:\"price\";i:1500;s:5:\"image\";s:13:\"/images/d.jpg\";}i:4;a:5:{s:2:\"id\";i:4;s:7:\"product\";s:7:\"Voyager\";s:8:\"quantity\";i:2;s:5:\"price\";i:4000;s:5:\"image\";s:13:\"/images/e.jpg\";}i:5;a:5:{s:2:\"id\";i:5;s:7:\"product\";s:7:\"Calisto\";s:8:\"quantity\";i:3;s:5:\"price\";i:2000;s:5:\"image\";s:13:\"/images/f.jpg\";}}', '2021-01-26 06:32:46', '2021-01-26 06:32:46');
INSERT INTO `orders` (`id`, `order_number`, `tecshop_users_id`, `status`, `total`, `item_count`, `payment_status`, `first_name`, `last_name`, `street_address`, `region`, `phone_number`, `email`, `cart`, `created_at`, `updated_at`) VALUES
(70, '600fe1eaeef6e', 4, 'pending', '23500.00', 11, 1, 'Peter', 'James', 'Pap Ondit', 'Trans-Nzoia', '4578', '', 'a:4:{i:2;a:5:{s:2:\"id\";i:2;s:7:\"product\";s:10:\"Headphones\";s:8:\"quantity\";i:1;s:5:\"price\";i:2000;s:5:\"image\";s:13:\"/images/c.jpg\";}i:3;a:5:{s:2:\"id\";i:3;s:7:\"product\";s:7:\"Speaker\";s:8:\"quantity\";i:5;s:5:\"price\";i:1500;s:5:\"image\";s:13:\"/images/d.jpg\";}i:4;a:5:{s:2:\"id\";i:4;s:7:\"product\";s:7:\"Voyager\";s:8:\"quantity\";i:2;s:5:\"price\";i:4000;s:5:\"image\";s:13:\"/images/e.jpg\";}i:5;a:5:{s:2:\"id\";i:5;s:7:\"product\";s:7:\"Calisto\";s:8:\"quantity\";i:3;s:5:\"price\";i:2000;s:5:\"image\";s:13:\"/images/f.jpg\";}}', '2021-01-26 06:33:30', '2021-01-26 06:33:30'),
(71, '600fe2021210b', 4, 'pending', '23500.00', 11, 1, 'Peter', 'James', 'Pap Ondit', 'Trans-Nzoia', '4578', '', 'a:4:{i:2;a:5:{s:2:\"id\";i:2;s:7:\"product\";s:10:\"Headphones\";s:8:\"quantity\";i:1;s:5:\"price\";i:2000;s:5:\"image\";s:13:\"/images/c.jpg\";}i:3;a:5:{s:2:\"id\";i:3;s:7:\"product\";s:7:\"Speaker\";s:8:\"quantity\";i:5;s:5:\"price\";i:1500;s:5:\"image\";s:13:\"/images/d.jpg\";}i:4;a:5:{s:2:\"id\";i:4;s:7:\"product\";s:7:\"Voyager\";s:8:\"quantity\";i:2;s:5:\"price\";i:4000;s:5:\"image\";s:13:\"/images/e.jpg\";}i:5;a:5:{s:2:\"id\";i:5;s:7:\"product\";s:7:\"Calisto\";s:8:\"quantity\";i:3;s:5:\"price\";i:2000;s:5:\"image\";s:13:\"/images/f.jpg\";}}', '2021-01-26 06:33:54', '2021-01-26 06:33:54'),
(72, '600fe27eecc5f', 4, 'pending', '23500.00', 11, 1, 'Peter', 'James', 'Pap Ondit', 'Trans-Nzoia', '4578', '', 'a:4:{i:2;a:5:{s:2:\"id\";i:2;s:7:\"product\";s:10:\"Headphones\";s:8:\"quantity\";i:1;s:5:\"price\";i:2000;s:5:\"image\";s:13:\"/images/c.jpg\";}i:3;a:5:{s:2:\"id\";i:3;s:7:\"product\";s:7:\"Speaker\";s:8:\"quantity\";i:5;s:5:\"price\";i:1500;s:5:\"image\";s:13:\"/images/d.jpg\";}i:4;a:5:{s:2:\"id\";i:4;s:7:\"product\";s:7:\"Voyager\";s:8:\"quantity\";i:2;s:5:\"price\";i:4000;s:5:\"image\";s:13:\"/images/e.jpg\";}i:5;a:5:{s:2:\"id\";i:5;s:7:\"product\";s:7:\"Calisto\";s:8:\"quantity\";i:3;s:5:\"price\";i:2000;s:5:\"image\";s:13:\"/images/f.jpg\";}}', '2021-01-26 06:35:58', '2021-01-26 06:35:58'),
(73, '600fe35b34d60', 4, 'pending', '23500.00', 11, 1, 'Peter', 'James', 'Pap Ondit', 'Trans-Nzoia', '4578', '', 'a:4:{i:2;a:5:{s:2:\"id\";i:2;s:7:\"product\";s:10:\"Headphones\";s:8:\"quantity\";i:1;s:5:\"price\";i:2000;s:5:\"image\";s:13:\"/images/c.jpg\";}i:3;a:5:{s:2:\"id\";i:3;s:7:\"product\";s:7:\"Speaker\";s:8:\"quantity\";i:5;s:5:\"price\";i:1500;s:5:\"image\";s:13:\"/images/d.jpg\";}i:4;a:5:{s:2:\"id\";i:4;s:7:\"product\";s:7:\"Voyager\";s:8:\"quantity\";i:2;s:5:\"price\";i:4000;s:5:\"image\";s:13:\"/images/e.jpg\";}i:5;a:5:{s:2:\"id\";i:5;s:7:\"product\";s:7:\"Calisto\";s:8:\"quantity\";i:3;s:5:\"price\";i:2000;s:5:\"image\";s:13:\"/images/f.jpg\";}}', '2021-01-26 06:39:39', '2021-01-26 06:39:39'),
(74, '600fe56bb394b', 4, 'pending', '15500.00', 9, 1, 'Peter', 'James', 'Sighor', 'Pokot', '07555', '', 'a:3:{i:2;a:5:{s:2:\"id\";i:2;s:7:\"product\";s:10:\"Headphones\";s:8:\"quantity\";i:1;s:5:\"price\";i:2000;s:5:\"image\";s:13:\"/images/c.jpg\";}i:3;a:5:{s:2:\"id\";i:3;s:7:\"product\";s:7:\"Speaker\";s:8:\"quantity\";i:5;s:5:\"price\";i:1500;s:5:\"image\";s:13:\"/images/d.jpg\";}i:5;a:5:{s:2:\"id\";i:5;s:7:\"product\";s:7:\"Calisto\";s:8:\"quantity\";i:3;s:5:\"price\";i:2000;s:5:\"image\";s:13:\"/images/f.jpg\";}}', '2021-01-26 06:48:27', '2021-01-26 06:48:27'),
(75, '600fe5eaf153b', 4, 'pending', '15500.00', 9, 1, 'Peter', 'James', 'Sighor', 'Pokot', '07555', '', 'a:3:{i:2;a:5:{s:2:\"id\";i:2;s:7:\"product\";s:10:\"Headphones\";s:8:\"quantity\";i:1;s:5:\"price\";i:2000;s:5:\"image\";s:13:\"/images/c.jpg\";}i:3;a:5:{s:2:\"id\";i:3;s:7:\"product\";s:7:\"Speaker\";s:8:\"quantity\";i:5;s:5:\"price\";i:1500;s:5:\"image\";s:13:\"/images/d.jpg\";}i:5;a:5:{s:2:\"id\";i:5;s:7:\"product\";s:7:\"Calisto\";s:8:\"quantity\";i:3;s:5:\"price\";i:2000;s:5:\"image\";s:13:\"/images/f.jpg\";}}', '2021-01-26 06:50:35', '2021-01-26 06:50:35'),
(76, '600fe93154e9e', 4, 'pending', '15500.00', 9, 1, 'Peter', 'James', 'Sighor', 'Pokot', '07555', '', 'a:3:{i:2;a:5:{s:2:\"id\";i:2;s:7:\"product\";s:10:\"Headphones\";s:8:\"quantity\";i:1;s:5:\"price\";i:2000;s:5:\"image\";s:13:\"/images/c.jpg\";}i:3;a:5:{s:2:\"id\";i:3;s:7:\"product\";s:7:\"Speaker\";s:8:\"quantity\";i:5;s:5:\"price\";i:1500;s:5:\"image\";s:13:\"/images/d.jpg\";}i:5;a:5:{s:2:\"id\";i:5;s:7:\"product\";s:7:\"Calisto\";s:8:\"quantity\";i:3;s:5:\"price\";i:2000;s:5:\"image\";s:13:\"/images/f.jpg\";}}', '2021-01-26 07:04:33', '2021-01-26 07:04:33'),
(77, '600ff80f2b902', 4, 'pending', '15500.00', 9, 1, 'Peter', 'James', 'Sighor', 'Pokot', '07555', '', 'a:3:{i:2;a:5:{s:2:\"id\";i:2;s:7:\"product\";s:10:\"Headphones\";s:8:\"quantity\";i:1;s:5:\"price\";i:2000;s:5:\"image\";s:13:\"/images/c.jpg\";}i:3;a:5:{s:2:\"id\";i:3;s:7:\"product\";s:7:\"Speaker\";s:8:\"quantity\";i:5;s:5:\"price\";i:1500;s:5:\"image\";s:13:\"/images/d.jpg\";}i:5;a:5:{s:2:\"id\";i:5;s:7:\"product\";s:7:\"Calisto\";s:8:\"quantity\";i:3;s:5:\"price\";i:2000;s:5:\"image\";s:13:\"/images/f.jpg\";}}', '2021-01-26 08:07:59', '2021-01-26 08:07:59'),
(78, '600ff889bf974', 4, 'pending', '15500.00', 9, 1, 'Peter', 'James', 'Sighor', 'Pokot', '07555', '', 'a:3:{i:2;a:5:{s:2:\"id\";i:2;s:7:\"product\";s:10:\"Headphones\";s:8:\"quantity\";i:1;s:5:\"price\";i:2000;s:5:\"image\";s:13:\"/images/c.jpg\";}i:3;a:5:{s:2:\"id\";i:3;s:7:\"product\";s:7:\"Speaker\";s:8:\"quantity\";i:5;s:5:\"price\";i:1500;s:5:\"image\";s:13:\"/images/d.jpg\";}i:5;a:5:{s:2:\"id\";i:5;s:7:\"product\";s:7:\"Calisto\";s:8:\"quantity\";i:3;s:5:\"price\";i:2000;s:5:\"image\";s:13:\"/images/f.jpg\";}}', '2021-01-26 08:10:01', '2021-01-26 08:10:01'),
(79, '600ff92e0d75f', 4, 'pending', '15500.00', 9, 1, 'Peter', 'James', 'Sighor', 'Pokot', '07555', '', 'a:3:{i:2;a:5:{s:2:\"id\";i:2;s:7:\"product\";s:10:\"Headphones\";s:8:\"quantity\";i:1;s:5:\"price\";i:2000;s:5:\"image\";s:13:\"/images/c.jpg\";}i:3;a:5:{s:2:\"id\";i:3;s:7:\"product\";s:7:\"Speaker\";s:8:\"quantity\";i:5;s:5:\"price\";i:1500;s:5:\"image\";s:13:\"/images/d.jpg\";}i:5;a:5:{s:2:\"id\";i:5;s:7:\"product\";s:7:\"Calisto\";s:8:\"quantity\";i:3;s:5:\"price\";i:2000;s:5:\"image\";s:13:\"/images/f.jpg\";}}', '2021-01-26 08:12:46', '2021-01-26 08:12:46'),
(80, '600ff93d505dd', 4, 'pending', '15500.00', 9, 1, 'Peter', 'James', 'Sighor', 'Pokot', '07555', '', 'a:3:{i:2;a:5:{s:2:\"id\";i:2;s:7:\"product\";s:10:\"Headphones\";s:8:\"quantity\";i:1;s:5:\"price\";i:2000;s:5:\"image\";s:13:\"/images/c.jpg\";}i:3;a:5:{s:2:\"id\";i:3;s:7:\"product\";s:7:\"Speaker\";s:8:\"quantity\";i:5;s:5:\"price\";i:1500;s:5:\"image\";s:13:\"/images/d.jpg\";}i:5;a:5:{s:2:\"id\";i:5;s:7:\"product\";s:7:\"Calisto\";s:8:\"quantity\";i:3;s:5:\"price\";i:2000;s:5:\"image\";s:13:\"/images/f.jpg\";}}', '2021-01-26 08:13:01', '2021-01-26 08:13:01'),
(81, '600ff96bda108', 4, 'pending', '15500.00', 9, 1, 'Peter', 'James', 'Sighor', 'Pokot', '07555', '', 'a:3:{i:2;a:5:{s:2:\"id\";i:2;s:7:\"product\";s:10:\"Headphones\";s:8:\"quantity\";i:1;s:5:\"price\";i:2000;s:5:\"image\";s:13:\"/images/c.jpg\";}i:3;a:5:{s:2:\"id\";i:3;s:7:\"product\";s:7:\"Speaker\";s:8:\"quantity\";i:5;s:5:\"price\";i:1500;s:5:\"image\";s:13:\"/images/d.jpg\";}i:5;a:5:{s:2:\"id\";i:5;s:7:\"product\";s:7:\"Calisto\";s:8:\"quantity\";i:3;s:5:\"price\";i:2000;s:5:\"image\";s:13:\"/images/f.jpg\";}}', '2021-01-26 08:13:47', '2021-01-26 08:13:47'),
(82, '600ff99eb62a4', 4, 'pending', '15500.00', 9, 1, 'Peter', 'James', 'Sighor', 'Pokot', '07555', '', 'a:3:{i:2;a:5:{s:2:\"id\";i:2;s:7:\"product\";s:10:\"Headphones\";s:8:\"quantity\";i:1;s:5:\"price\";i:2000;s:5:\"image\";s:13:\"/images/c.jpg\";}i:3;a:5:{s:2:\"id\";i:3;s:7:\"product\";s:7:\"Speaker\";s:8:\"quantity\";i:5;s:5:\"price\";i:1500;s:5:\"image\";s:13:\"/images/d.jpg\";}i:5;a:5:{s:2:\"id\";i:5;s:7:\"product\";s:7:\"Calisto\";s:8:\"quantity\";i:3;s:5:\"price\";i:2000;s:5:\"image\";s:13:\"/images/f.jpg\";}}', '2021-01-26 08:14:38', '2021-01-26 08:14:38'),
(83, '600ff9dd28238', 4, 'pending', '15500.00', 9, 1, 'Peter', 'James', 'Sighor', 'Pokot', '07555', '', 'a:3:{i:2;a:5:{s:2:\"id\";i:2;s:7:\"product\";s:10:\"Headphones\";s:8:\"quantity\";i:1;s:5:\"price\";i:2000;s:5:\"image\";s:13:\"/images/c.jpg\";}i:3;a:5:{s:2:\"id\";i:3;s:7:\"product\";s:7:\"Speaker\";s:8:\"quantity\";i:5;s:5:\"price\";i:1500;s:5:\"image\";s:13:\"/images/d.jpg\";}i:5;a:5:{s:2:\"id\";i:5;s:7:\"product\";s:7:\"Calisto\";s:8:\"quantity\";i:3;s:5:\"price\";i:2000;s:5:\"image\";s:13:\"/images/f.jpg\";}}', '2021-01-26 08:15:41', '2021-01-26 08:15:41'),
(84, '600ffa1d52d81', 4, 'pending', '15500.00', 9, 1, 'Peter', 'James', 'Sighor', 'Pokot', '07555', '', 'a:3:{i:2;a:5:{s:2:\"id\";i:2;s:7:\"product\";s:10:\"Headphones\";s:8:\"quantity\";i:1;s:5:\"price\";i:2000;s:5:\"image\";s:13:\"/images/c.jpg\";}i:3;a:5:{s:2:\"id\";i:3;s:7:\"product\";s:7:\"Speaker\";s:8:\"quantity\";i:5;s:5:\"price\";i:1500;s:5:\"image\";s:13:\"/images/d.jpg\";}i:5;a:5:{s:2:\"id\";i:5;s:7:\"product\";s:7:\"Calisto\";s:8:\"quantity\";i:3;s:5:\"price\";i:2000;s:5:\"image\";s:13:\"/images/f.jpg\";}}', '2021-01-26 08:16:45', '2021-01-26 08:16:45'),
(85, '600ffb591862b', 4, 'pending', '15500.00', 9, 1, 'Peter', 'James', 'Sighor', 'Pokot', '07555', '', 'a:3:{i:2;a:5:{s:2:\"id\";i:2;s:7:\"product\";s:10:\"Headphones\";s:8:\"quantity\";i:1;s:5:\"price\";i:2000;s:5:\"image\";s:13:\"/images/c.jpg\";}i:3;a:5:{s:2:\"id\";i:3;s:7:\"product\";s:7:\"Speaker\";s:8:\"quantity\";i:5;s:5:\"price\";i:1500;s:5:\"image\";s:13:\"/images/d.jpg\";}i:5;a:5:{s:2:\"id\";i:5;s:7:\"product\";s:7:\"Calisto\";s:8:\"quantity\";i:3;s:5:\"price\";i:2000;s:5:\"image\";s:13:\"/images/f.jpg\";}}', '2021-01-26 08:22:01', '2021-01-26 08:22:01'),
(86, '600ffd1e671f4', 4, 'pending', '15500.00', 9, 1, 'Peter', 'James', 'Sighor', 'Pokot', '07555', '', 'a:3:{i:2;a:5:{s:2:\"id\";i:2;s:7:\"product\";s:10:\"Headphones\";s:8:\"quantity\";i:1;s:5:\"price\";i:2000;s:5:\"image\";s:13:\"/images/c.jpg\";}i:3;a:5:{s:2:\"id\";i:3;s:7:\"product\";s:7:\"Speaker\";s:8:\"quantity\";i:5;s:5:\"price\";i:1500;s:5:\"image\";s:13:\"/images/d.jpg\";}i:5;a:5:{s:2:\"id\";i:5;s:7:\"product\";s:7:\"Calisto\";s:8:\"quantity\";i:3;s:5:\"price\";i:2000;s:5:\"image\";s:13:\"/images/f.jpg\";}}', '2021-01-26 08:29:34', '2021-01-26 08:29:34'),
(87, '600ffd1ebe275', 4, 'pending', '15500.00', 9, 1, 'Peter', 'James', 'Sighor', 'Pokot', '07555', '', 'a:3:{i:2;a:5:{s:2:\"id\";i:2;s:7:\"product\";s:10:\"Headphones\";s:8:\"quantity\";i:1;s:5:\"price\";i:2000;s:5:\"image\";s:13:\"/images/c.jpg\";}i:3;a:5:{s:2:\"id\";i:3;s:7:\"product\";s:7:\"Speaker\";s:8:\"quantity\";i:5;s:5:\"price\";i:1500;s:5:\"image\";s:13:\"/images/d.jpg\";}i:5;a:5:{s:2:\"id\";i:5;s:7:\"product\";s:7:\"Calisto\";s:8:\"quantity\";i:3;s:5:\"price\";i:2000;s:5:\"image\";s:13:\"/images/f.jpg\";}}', '2021-01-26 08:29:34', '2021-01-26 08:29:34'),
(88, '601000e3d544b', 4, 'pending', '15500.00', 9, 1, 'Peter', 'James', 'Lokichar', 'Turkana', '125478', '', 'a:3:{i:2;a:5:{s:2:\"id\";i:2;s:7:\"product\";s:10:\"Headphones\";s:8:\"quantity\";i:1;s:5:\"price\";i:2000;s:5:\"image\";s:13:\"/images/c.jpg\";}i:3;a:5:{s:2:\"id\";i:3;s:7:\"product\";s:7:\"Speaker\";s:8:\"quantity\";i:5;s:5:\"price\";i:1500;s:5:\"image\";s:13:\"/images/d.jpg\";}i:5;a:5:{s:2:\"id\";i:5;s:7:\"product\";s:7:\"Calisto\";s:8:\"quantity\";i:3;s:5:\"price\";i:2000;s:5:\"image\";s:13:\"/images/f.jpg\";}}', '2021-01-26 08:45:39', '2021-01-26 08:45:39'),
(89, '601003906013c', 4, 'pending', '15500.00', 9, 1, 'Peter', 'James', 'Lokichar', 'Turkana', '125478', '', 'a:3:{i:2;a:5:{s:2:\"id\";i:2;s:7:\"product\";s:10:\"Headphones\";s:8:\"quantity\";i:1;s:5:\"price\";i:2000;s:5:\"image\";s:13:\"/images/c.jpg\";}i:3;a:5:{s:2:\"id\";i:3;s:7:\"product\";s:7:\"Speaker\";s:8:\"quantity\";i:5;s:5:\"price\";i:1500;s:5:\"image\";s:13:\"/images/d.jpg\";}i:5;a:5:{s:2:\"id\";i:5;s:7:\"product\";s:7:\"Calisto\";s:8:\"quantity\";i:3;s:5:\"price\";i:2000;s:5:\"image\";s:13:\"/images/f.jpg\";}}', '2021-01-26 08:57:04', '2021-01-26 08:57:04'),
(90, '601004052d913', 4, 'pending', '15500.00', 9, 1, 'Peter', 'James', 'Lokichar', 'Turkana', '125478', '', 'a:3:{i:2;a:5:{s:2:\"id\";i:2;s:7:\"product\";s:10:\"Headphones\";s:8:\"quantity\";i:1;s:5:\"price\";i:2000;s:5:\"image\";s:13:\"/images/c.jpg\";}i:3;a:5:{s:2:\"id\";i:3;s:7:\"product\";s:7:\"Speaker\";s:8:\"quantity\";i:5;s:5:\"price\";i:1500;s:5:\"image\";s:13:\"/images/d.jpg\";}i:5;a:5:{s:2:\"id\";i:5;s:7:\"product\";s:7:\"Calisto\";s:8:\"quantity\";i:3;s:5:\"price\";i:2000;s:5:\"image\";s:13:\"/images/f.jpg\";}}', '2021-01-26 08:59:01', '2021-01-26 08:59:01'),
(91, '6010041fcd306', 4, 'pending', '15500.00', 9, 1, 'Peter', 'James', 'Lokichar', 'Turkana', '125478', '', 'a:3:{i:2;a:5:{s:2:\"id\";i:2;s:7:\"product\";s:10:\"Headphones\";s:8:\"quantity\";i:1;s:5:\"price\";i:2000;s:5:\"image\";s:13:\"/images/c.jpg\";}i:3;a:5:{s:2:\"id\";i:3;s:7:\"product\";s:7:\"Speaker\";s:8:\"quantity\";i:5;s:5:\"price\";i:1500;s:5:\"image\";s:13:\"/images/d.jpg\";}i:5;a:5:{s:2:\"id\";i:5;s:7:\"product\";s:7:\"Calisto\";s:8:\"quantity\";i:3;s:5:\"price\";i:2000;s:5:\"image\";s:13:\"/images/f.jpg\";}}', '2021-01-26 08:59:27', '2021-01-26 08:59:27'),
(92, '60100440b8682', 4, 'pending', '15500.00', 9, 1, 'Peter', 'James', 'Lokichar', 'Turkana', '125478', '', 'a:3:{i:2;a:5:{s:2:\"id\";i:2;s:7:\"product\";s:10:\"Headphones\";s:8:\"quantity\";i:1;s:5:\"price\";i:2000;s:5:\"image\";s:13:\"/images/c.jpg\";}i:3;a:5:{s:2:\"id\";i:3;s:7:\"product\";s:7:\"Speaker\";s:8:\"quantity\";i:5;s:5:\"price\";i:1500;s:5:\"image\";s:13:\"/images/d.jpg\";}i:5;a:5:{s:2:\"id\";i:5;s:7:\"product\";s:7:\"Calisto\";s:8:\"quantity\";i:3;s:5:\"price\";i:2000;s:5:\"image\";s:13:\"/images/f.jpg\";}}', '2021-01-26 09:00:00', '2021-01-26 09:00:00'),
(93, '601004732af5f', 4, 'pending', '15500.00', 9, 1, 'Peter', 'James', 'Lokichar', 'Turkana', '125478', '', 'a:3:{i:2;a:5:{s:2:\"id\";i:2;s:7:\"product\";s:10:\"Headphones\";s:8:\"quantity\";i:1;s:5:\"price\";i:2000;s:5:\"image\";s:13:\"/images/c.jpg\";}i:3;a:5:{s:2:\"id\";i:3;s:7:\"product\";s:7:\"Speaker\";s:8:\"quantity\";i:5;s:5:\"price\";i:1500;s:5:\"image\";s:13:\"/images/d.jpg\";}i:5;a:5:{s:2:\"id\";i:5;s:7:\"product\";s:7:\"Calisto\";s:8:\"quantity\";i:3;s:5:\"price\";i:2000;s:5:\"image\";s:13:\"/images/f.jpg\";}}', '2021-01-26 09:00:51', '2021-01-26 09:00:51'),
(94, '6010050c99da0', 4, 'pending', '15500.00', 9, 1, 'Peter', 'James', 'Lokichar', 'Turkana', '125478', '', 'a:3:{i:2;a:5:{s:2:\"id\";i:2;s:7:\"product\";s:10:\"Headphones\";s:8:\"quantity\";i:1;s:5:\"price\";i:2000;s:5:\"image\";s:13:\"/images/c.jpg\";}i:3;a:5:{s:2:\"id\";i:3;s:7:\"product\";s:7:\"Speaker\";s:8:\"quantity\";i:5;s:5:\"price\";i:1500;s:5:\"image\";s:13:\"/images/d.jpg\";}i:5;a:5:{s:2:\"id\";i:5;s:7:\"product\";s:7:\"Calisto\";s:8:\"quantity\";i:3;s:5:\"price\";i:2000;s:5:\"image\";s:13:\"/images/f.jpg\";}}', '2021-01-26 09:03:24', '2021-01-26 09:03:24'),
(95, '601005241c55c', 4, 'pending', '15500.00', 9, 1, 'Peter', 'James', 'Lokichar', 'Turkana', '125478', '', 'a:3:{i:2;a:5:{s:2:\"id\";i:2;s:7:\"product\";s:10:\"Headphones\";s:8:\"quantity\";i:1;s:5:\"price\";i:2000;s:5:\"image\";s:13:\"/images/c.jpg\";}i:3;a:5:{s:2:\"id\";i:3;s:7:\"product\";s:7:\"Speaker\";s:8:\"quantity\";i:5;s:5:\"price\";i:1500;s:5:\"image\";s:13:\"/images/d.jpg\";}i:5;a:5:{s:2:\"id\";i:5;s:7:\"product\";s:7:\"Calisto\";s:8:\"quantity\";i:3;s:5:\"price\";i:2000;s:5:\"image\";s:13:\"/images/f.jpg\";}}', '2021-01-26 09:03:48', '2021-01-26 09:03:48'),
(96, '601005310a01e', 4, 'pending', '15500.00', 9, 1, 'Peter', 'James', 'Lokichar', 'Turkana', '125478', '', 'a:3:{i:2;a:5:{s:2:\"id\";i:2;s:7:\"product\";s:10:\"Headphones\";s:8:\"quantity\";i:1;s:5:\"price\";i:2000;s:5:\"image\";s:13:\"/images/c.jpg\";}i:3;a:5:{s:2:\"id\";i:3;s:7:\"product\";s:7:\"Speaker\";s:8:\"quantity\";i:5;s:5:\"price\";i:1500;s:5:\"image\";s:13:\"/images/d.jpg\";}i:5;a:5:{s:2:\"id\";i:5;s:7:\"product\";s:7:\"Calisto\";s:8:\"quantity\";i:3;s:5:\"price\";i:2000;s:5:\"image\";s:13:\"/images/f.jpg\";}}', '2021-01-26 09:04:01', '2021-01-26 09:04:01'),
(97, '6010053840c34', 4, 'pending', '15500.00', 9, 1, 'Peter', 'James', 'Lokichar', 'Turkana', '125478', '', 'a:3:{i:2;a:5:{s:2:\"id\";i:2;s:7:\"product\";s:10:\"Headphones\";s:8:\"quantity\";i:1;s:5:\"price\";i:2000;s:5:\"image\";s:13:\"/images/c.jpg\";}i:3;a:5:{s:2:\"id\";i:3;s:7:\"product\";s:7:\"Speaker\";s:8:\"quantity\";i:5;s:5:\"price\";i:1500;s:5:\"image\";s:13:\"/images/d.jpg\";}i:5;a:5:{s:2:\"id\";i:5;s:7:\"product\";s:7:\"Calisto\";s:8:\"quantity\";i:3;s:5:\"price\";i:2000;s:5:\"image\";s:13:\"/images/f.jpg\";}}', '2021-01-26 09:04:08', '2021-01-26 09:04:08'),
(98, '601006e24bc1f', 4, 'pending', '15500.00', 9, 1, 'Peter', 'James', 'Lokichar', 'Turkana', '125478', '', 'a:3:{i:2;a:5:{s:2:\"id\";i:2;s:7:\"product\";s:10:\"Headphones\";s:8:\"quantity\";i:1;s:5:\"price\";i:2000;s:5:\"image\";s:13:\"/images/c.jpg\";}i:3;a:5:{s:2:\"id\";i:3;s:7:\"product\";s:7:\"Speaker\";s:8:\"quantity\";i:5;s:5:\"price\";i:1500;s:5:\"image\";s:13:\"/images/d.jpg\";}i:5;a:5:{s:2:\"id\";i:5;s:7:\"product\";s:7:\"Calisto\";s:8:\"quantity\";i:3;s:5:\"price\";i:2000;s:5:\"image\";s:13:\"/images/f.jpg\";}}', '2021-01-26 09:11:14', '2021-01-26 09:11:14'),
(99, '6010070c0bc87', 4, 'pending', '15500.00', 9, 1, 'Peter', 'James', 'Lokichar', 'Turkana', '125478', '', 'a:3:{i:2;a:5:{s:2:\"id\";i:2;s:7:\"product\";s:10:\"Headphones\";s:8:\"quantity\";i:1;s:5:\"price\";i:2000;s:5:\"image\";s:13:\"/images/c.jpg\";}i:3;a:5:{s:2:\"id\";i:3;s:7:\"product\";s:7:\"Speaker\";s:8:\"quantity\";i:5;s:5:\"price\";i:1500;s:5:\"image\";s:13:\"/images/d.jpg\";}i:5;a:5:{s:2:\"id\";i:5;s:7:\"product\";s:7:\"Calisto\";s:8:\"quantity\";i:3;s:5:\"price\";i:2000;s:5:\"image\";s:13:\"/images/f.jpg\";}}', '2021-01-26 09:11:56', '2021-01-26 09:11:56'),
(100, '60100af71d5d5', 4, 'pending', '15500.00', 9, 1, 'Peter', 'James', 'Lokichar', 'Turkana', '125478', '', 'a:3:{i:2;a:5:{s:2:\"id\";i:2;s:7:\"product\";s:10:\"Headphones\";s:8:\"quantity\";i:1;s:5:\"price\";i:2000;s:5:\"image\";s:13:\"/images/c.jpg\";}i:3;a:5:{s:2:\"id\";i:3;s:7:\"product\";s:7:\"Speaker\";s:8:\"quantity\";i:5;s:5:\"price\";i:1500;s:5:\"image\";s:13:\"/images/d.jpg\";}i:5;a:5:{s:2:\"id\";i:5;s:7:\"product\";s:7:\"Calisto\";s:8:\"quantity\";i:3;s:5:\"price\";i:2000;s:5:\"image\";s:13:\"/images/f.jpg\";}}', '2021-01-26 09:28:39', '2021-01-26 09:28:39'),
(101, '60100b7482bab', 4, 'pending', '19500.00', 10, 1, 'Peter', 'James', 'Baragoi', 'Samburu', '45217', '', 'a:4:{i:2;a:5:{s:2:\"id\";i:2;s:7:\"product\";s:10:\"Headphones\";s:8:\"quantity\";i:1;s:5:\"price\";i:2000;s:5:\"image\";s:13:\"/images/c.jpg\";}i:3;a:5:{s:2:\"id\";i:3;s:7:\"product\";s:7:\"Speaker\";s:8:\"quantity\";i:5;s:5:\"price\";i:1500;s:5:\"image\";s:13:\"/images/d.jpg\";}i:5;a:5:{s:2:\"id\";i:5;s:7:\"product\";s:7:\"Calisto\";s:8:\"quantity\";i:3;s:5:\"price\";i:2000;s:5:\"image\";s:13:\"/images/f.jpg\";}i:4;a:5:{s:2:\"id\";i:4;s:7:\"product\";s:7:\"Voyager\";s:8:\"quantity\";i:1;s:5:\"price\";i:4000;s:5:\"image\";s:13:\"/images/e.jpg\";}}', '2021-01-26 09:30:44', '2021-01-26 09:30:44'),
(102, '60100b9cb941f', 4, 'pending', '19500.00', 10, 1, 'Peter', 'James', 'Baragoi', 'Samburu', '45217', '', 'a:4:{i:2;a:5:{s:2:\"id\";i:2;s:7:\"product\";s:10:\"Headphones\";s:8:\"quantity\";i:1;s:5:\"price\";i:2000;s:5:\"image\";s:13:\"/images/c.jpg\";}i:3;a:5:{s:2:\"id\";i:3;s:7:\"product\";s:7:\"Speaker\";s:8:\"quantity\";i:5;s:5:\"price\";i:1500;s:5:\"image\";s:13:\"/images/d.jpg\";}i:5;a:5:{s:2:\"id\";i:5;s:7:\"product\";s:7:\"Calisto\";s:8:\"quantity\";i:3;s:5:\"price\";i:2000;s:5:\"image\";s:13:\"/images/f.jpg\";}i:4;a:5:{s:2:\"id\";i:4;s:7:\"product\";s:7:\"Voyager\";s:8:\"quantity\";i:1;s:5:\"price\";i:4000;s:5:\"image\";s:13:\"/images/e.jpg\";}}', '2021-01-26 09:31:24', '2021-01-26 09:31:24'),
(103, '60100d1740dbd', 4, 'pending', '19500.00', 10, 1, 'Peter', 'James', 'Baragoi', 'Samburu', '45217', '', 'a:4:{i:2;a:5:{s:2:\"id\";i:2;s:7:\"product\";s:10:\"Headphones\";s:8:\"quantity\";i:1;s:5:\"price\";i:2000;s:5:\"image\";s:13:\"/images/c.jpg\";}i:3;a:5:{s:2:\"id\";i:3;s:7:\"product\";s:7:\"Speaker\";s:8:\"quantity\";i:5;s:5:\"price\";i:1500;s:5:\"image\";s:13:\"/images/d.jpg\";}i:5;a:5:{s:2:\"id\";i:5;s:7:\"product\";s:7:\"Calisto\";s:8:\"quantity\";i:3;s:5:\"price\";i:2000;s:5:\"image\";s:13:\"/images/f.jpg\";}i:4;a:5:{s:2:\"id\";i:4;s:7:\"product\";s:7:\"Voyager\";s:8:\"quantity\";i:1;s:5:\"price\";i:4000;s:5:\"image\";s:13:\"/images/e.jpg\";}}', '2021-01-26 09:37:43', '2021-01-26 09:37:43'),
(104, '60100d52c9c72', 4, 'pending', '19500.00', 10, 1, 'Peter', 'James', 'Kesses', 'Wareng', '5469', '', 'a:4:{i:2;a:5:{s:2:\"id\";i:2;s:7:\"product\";s:10:\"Headphones\";s:8:\"quantity\";i:1;s:5:\"price\";i:2000;s:5:\"image\";s:13:\"/images/c.jpg\";}i:3;a:5:{s:2:\"id\";i:3;s:7:\"product\";s:7:\"Speaker\";s:8:\"quantity\";i:5;s:5:\"price\";i:1500;s:5:\"image\";s:13:\"/images/d.jpg\";}i:5;a:5:{s:2:\"id\";i:5;s:7:\"product\";s:7:\"Calisto\";s:8:\"quantity\";i:3;s:5:\"price\";i:2000;s:5:\"image\";s:13:\"/images/f.jpg\";}i:4;a:5:{s:2:\"id\";i:4;s:7:\"product\";s:7:\"Voyager\";s:8:\"quantity\";i:1;s:5:\"price\";i:4000;s:5:\"image\";s:13:\"/images/e.jpg\";}}', '2021-01-26 09:38:42', '2021-01-26 09:38:42'),
(105, '60100dbd6dc82', 4, 'pending', '19500.00', 10, 1, 'Peter', 'James', 'Kesses', 'Wareng', '5469', '', 'a:4:{i:2;a:5:{s:2:\"id\";i:2;s:7:\"product\";s:10:\"Headphones\";s:8:\"quantity\";i:1;s:5:\"price\";i:2000;s:5:\"image\";s:13:\"/images/c.jpg\";}i:3;a:5:{s:2:\"id\";i:3;s:7:\"product\";s:7:\"Speaker\";s:8:\"quantity\";i:5;s:5:\"price\";i:1500;s:5:\"image\";s:13:\"/images/d.jpg\";}i:5;a:5:{s:2:\"id\";i:5;s:7:\"product\";s:7:\"Calisto\";s:8:\"quantity\";i:3;s:5:\"price\";i:2000;s:5:\"image\";s:13:\"/images/f.jpg\";}i:4;a:5:{s:2:\"id\";i:4;s:7:\"product\";s:7:\"Voyager\";s:8:\"quantity\";i:1;s:5:\"price\";i:4000;s:5:\"image\";s:13:\"/images/e.jpg\";}}', '2021-01-26 09:40:29', '2021-01-26 09:40:29'),
(106, '60100de5a980f', 4, 'pending', '19500.00', 10, 1, 'Peter', 'James', 'Sirisia', 'Bungoma', '5469', '', 'a:4:{i:2;a:5:{s:2:\"id\";i:2;s:7:\"product\";s:10:\"Headphones\";s:8:\"quantity\";i:1;s:5:\"price\";i:2000;s:5:\"image\";s:13:\"/images/c.jpg\";}i:3;a:5:{s:2:\"id\";i:3;s:7:\"product\";s:7:\"Speaker\";s:8:\"quantity\";i:5;s:5:\"price\";i:1500;s:5:\"image\";s:13:\"/images/d.jpg\";}i:5;a:5:{s:2:\"id\";i:5;s:7:\"product\";s:7:\"Calisto\";s:8:\"quantity\";i:3;s:5:\"price\";i:2000;s:5:\"image\";s:13:\"/images/f.jpg\";}i:4;a:5:{s:2:\"id\";i:4;s:7:\"product\";s:7:\"Voyager\";s:8:\"quantity\";i:1;s:5:\"price\";i:4000;s:5:\"image\";s:13:\"/images/e.jpg\";}}', '2021-01-26 09:41:09', '2021-01-26 09:41:09'),
(107, '60100e94715e7', 4, 'pending', '19500.00', 10, 1, 'Peter', 'James', 'Sirisia', 'Bungoma', '5469', '', 'a:4:{i:2;a:5:{s:2:\"id\";i:2;s:7:\"product\";s:10:\"Headphones\";s:8:\"quantity\";i:1;s:5:\"price\";i:2000;s:5:\"image\";s:13:\"/images/c.jpg\";}i:3;a:5:{s:2:\"id\";i:3;s:7:\"product\";s:7:\"Speaker\";s:8:\"quantity\";i:5;s:5:\"price\";i:1500;s:5:\"image\";s:13:\"/images/d.jpg\";}i:5;a:5:{s:2:\"id\";i:5;s:7:\"product\";s:7:\"Calisto\";s:8:\"quantity\";i:3;s:5:\"price\";i:2000;s:5:\"image\";s:13:\"/images/f.jpg\";}i:4;a:5:{s:2:\"id\";i:4;s:7:\"product\";s:7:\"Voyager\";s:8:\"quantity\";i:1;s:5:\"price\";i:4000;s:5:\"image\";s:13:\"/images/e.jpg\";}}', '2021-01-26 09:44:04', '2021-01-26 09:44:04'),
(108, '60100e9c88d40', 4, 'pending', '19500.00', 10, 1, 'Peter', 'James', 'Sirisia', 'Bungoma', '5469', '', 'a:4:{i:2;a:5:{s:2:\"id\";i:2;s:7:\"product\";s:10:\"Headphones\";s:8:\"quantity\";i:1;s:5:\"price\";i:2000;s:5:\"image\";s:13:\"/images/c.jpg\";}i:3;a:5:{s:2:\"id\";i:3;s:7:\"product\";s:7:\"Speaker\";s:8:\"quantity\";i:5;s:5:\"price\";i:1500;s:5:\"image\";s:13:\"/images/d.jpg\";}i:5;a:5:{s:2:\"id\";i:5;s:7:\"product\";s:7:\"Calisto\";s:8:\"quantity\";i:3;s:5:\"price\";i:2000;s:5:\"image\";s:13:\"/images/f.jpg\";}i:4;a:5:{s:2:\"id\";i:4;s:7:\"product\";s:7:\"Voyager\";s:8:\"quantity\";i:1;s:5:\"price\";i:4000;s:5:\"image\";s:13:\"/images/e.jpg\";}}', '2021-01-26 09:44:12', '2021-01-26 09:44:12'),
(109, '601011874386e', 4, 'pending', '19500.00', 10, 1, 'Peter', 'James', 'Sirisia', 'Bungoma', '5469', '', 'a:4:{i:2;a:5:{s:2:\"id\";i:2;s:7:\"product\";s:10:\"Headphones\";s:8:\"quantity\";i:1;s:5:\"price\";i:2000;s:5:\"image\";s:13:\"/images/c.jpg\";}i:3;a:5:{s:2:\"id\";i:3;s:7:\"product\";s:7:\"Speaker\";s:8:\"quantity\";i:5;s:5:\"price\";i:1500;s:5:\"image\";s:13:\"/images/d.jpg\";}i:5;a:5:{s:2:\"id\";i:5;s:7:\"product\";s:7:\"Calisto\";s:8:\"quantity\";i:3;s:5:\"price\";i:2000;s:5:\"image\";s:13:\"/images/f.jpg\";}i:4;a:5:{s:2:\"id\";i:4;s:7:\"product\";s:7:\"Voyager\";s:8:\"quantity\";i:1;s:5:\"price\";i:4000;s:5:\"image\";s:13:\"/images/e.jpg\";}}', '2021-01-26 09:56:39', '2021-01-26 09:56:39'),
(110, '60113d0076b4d', 6, 'pending', '11000.00', 11, 1, 'Mary', 'Murkey', 'Ganze', 'Kilifi', '88523', '', 'a:3:{i:1;a:5:{s:2:\"id\";i:1;s:7:\"product\";s:9:\"Earphones\";s:8:\"quantity\";i:5;s:5:\"price\";i:200;s:5:\"image\";s:13:\"/images/c.jpg\";}i:2;a:5:{s:2:\"id\";i:2;s:7:\"product\";s:10:\"Headphones\";s:8:\"quantity\";i:2;s:5:\"price\";i:2000;s:5:\"image\";s:13:\"/images/c.jpg\";}i:3;a:5:{s:2:\"id\";i:3;s:7:\"product\";s:7:\"Speaker\";s:8:\"quantity\";i:4;s:5:\"price\";i:1500;s:5:\"image\";s:13:\"/images/d.jpg\";}}', '2021-01-27 07:14:24', '2021-01-27 07:14:24'),
(111, '6011532cd0361', 6, 'pending', '11000.00', 11, 1, 'Mary', 'Murkey', 'Likoni', 'Mombasa', '88523', '', 'a:3:{i:1;a:5:{s:2:\"id\";i:1;s:7:\"product\";s:9:\"Earphones\";s:8:\"quantity\";i:5;s:5:\"price\";i:200;s:5:\"image\";s:13:\"/images/c.jpg\";}i:2;a:5:{s:2:\"id\";i:2;s:7:\"product\";s:10:\"Headphones\";s:8:\"quantity\";i:2;s:5:\"price\";i:2000;s:5:\"image\";s:13:\"/images/c.jpg\";}i:3;a:5:{s:2:\"id\";i:3;s:7:\"product\";s:7:\"Speaker\";s:8:\"quantity\";i:4;s:5:\"price\";i:1500;s:5:\"image\";s:13:\"/images/d.jpg\";}}', '2021-01-27 08:49:00', '2021-01-27 08:49:00'),
(112, '601258e59d514', 4, 'pending', '13000.00', 12, 1, 'Peter', 'James', 'Kinango', 'Kwale', '214568', '', 'a:3:{i:3;a:5:{s:2:\"id\";i:3;s:7:\"product\";s:7:\"Speaker\";s:8:\"quantity\";i:4;s:5:\"price\";i:1500;s:5:\"image\";s:13:\"/images/d.jpg\";}i:2;a:5:{s:2:\"id\";i:2;s:7:\"product\";s:10:\"Headphones\";s:8:\"quantity\";i:3;s:5:\"price\";i:2000;s:5:\"image\";s:13:\"/images/c.jpg\";}i:1;a:5:{s:2:\"id\";i:1;s:7:\"product\";s:9:\"Earphones\";s:8:\"quantity\";i:5;s:5:\"price\";i:200;s:5:\"image\";s:13:\"/images/c.jpg\";}}', '2021-01-28 03:25:41', '2021-01-28 03:25:41'),
(113, '6012672aeeaf0', 4, 'pending', '13000.00', 12, 1, 'Peter', 'James', 'Bura', 'Tana River', '214568', '', 'a:3:{i:3;a:5:{s:2:\"id\";i:3;s:7:\"product\";s:7:\"Speaker\";s:8:\"quantity\";i:4;s:5:\"price\";i:1500;s:5:\"image\";s:13:\"/images/d.jpg\";}i:2;a:5:{s:2:\"id\";i:2;s:7:\"product\";s:10:\"Headphones\";s:8:\"quantity\";i:3;s:5:\"price\";i:2000;s:5:\"image\";s:13:\"/images/c.jpg\";}i:1;a:5:{s:2:\"id\";i:1;s:7:\"product\";s:9:\"Earphones\";s:8:\"quantity\";i:5;s:5:\"price\";i:200;s:5:\"image\";s:13:\"/images/c.jpg\";}}', '2021-01-28 04:26:35', '2021-01-28 04:26:35'),
(114, '6012aa7c6e266', 4, 'pending', '39000.00', 21, 1, 'Peter', 'James', 'Kiunga', 'Lamu', '5645564', 'peter@peter.com', 'a:6:{i:3;a:5:{s:2:\"id\";i:3;s:7:\"product\";s:7:\"Speaker\";s:8:\"quantity\";i:4;s:5:\"price\";i:1500;s:5:\"image\";s:13:\"/images/d.jpg\";}i:2;a:5:{s:2:\"id\";i:2;s:7:\"product\";s:10:\"Headphones\";s:8:\"quantity\";i:3;s:5:\"price\";i:2000;s:5:\"image\";s:13:\"/images/c.jpg\";}i:1;a:5:{s:2:\"id\";i:1;s:7:\"product\";s:9:\"Earphones\";s:8:\"quantity\";i:5;s:5:\"price\";i:200;s:5:\"image\";s:13:\"/images/c.jpg\";}i:5;a:5:{s:2:\"id\";i:5;s:7:\"product\";s:7:\"Calisto\";s:8:\"quantity\";i:3;s:5:\"price\";i:2000;s:5:\"image\";s:13:\"/images/f.jpg\";}i:6;a:5:{s:2:\"id\";i:6;s:7:\"product\";s:10:\"Black Wire\";s:8:\"quantity\";i:4;s:5:\"price\";i:3000;s:5:\"image\";s:13:\"/images/g.jpg\";}i:4;a:5:{s:2:\"id\";i:4;s:7:\"product\";s:7:\"Voyager\";s:8:\"quantity\";i:2;s:5:\"price\";i:4000;s:5:\"image\";s:13:\"/images/e.jpg\";}}', '2021-01-28 09:13:48', '2021-01-28 09:13:48'),
(115, '6013aa6b9a284', 1, 'completed', '21000.00', 7, 1, 'test_f', 'test_l', 'Kiunga', 'Lamu', '85236', 'test@test.com', 'a:3:{i:5;a:5:{s:2:\"id\";i:5;s:7:\"product\";s:7:\"Calisto\";s:8:\"quantity\";i:2;s:5:\"price\";i:2000;s:5:\"image\";s:13:\"/images/f.jpg\";}i:4;a:5:{s:2:\"id\";i:4;s:7:\"product\";s:7:\"Voyager\";s:8:\"quantity\";i:2;s:5:\"price\";i:4000;s:5:\"image\";s:13:\"/images/e.jpg\";}i:6;a:5:{s:2:\"id\";i:6;s:7:\"product\";s:10:\"Black Wire\";s:8:\"quantity\";i:3;s:5:\"price\";i:3000;s:5:\"image\";s:13:\"/images/g.jpg\";}}', '2021-01-29 03:25:47', '2021-01-29 04:13:09'),
(116, '6013cbc7bdc82', 1, 'pending', '25000.00', 9, 1, 'test_f', 'test_l', 'Bungule', 'Taita Taveta', '7569', 'test@test.com', 'a:3:{i:5;a:5:{s:2:\"id\";i:5;s:7:\"product\";s:7:\"Calisto\";s:8:\"quantity\";i:4;s:5:\"price\";i:2000;s:5:\"image\";s:13:\"/images/f.jpg\";}i:4;a:5:{s:2:\"id\";i:4;s:7:\"product\";s:7:\"Voyager\";s:8:\"quantity\";i:2;s:5:\"price\";i:4000;s:5:\"image\";s:13:\"/images/e.jpg\";}i:6;a:5:{s:2:\"id\";i:6;s:7:\"product\";s:10:\"Black Wire\";s:8:\"quantity\";i:3;s:5:\"price\";i:3000;s:5:\"image\";s:13:\"/images/g.jpg\";}}', '2021-01-29 05:48:07', '2021-01-29 05:48:07'),
(117, '6013d78291ebd', 2, 'pending', '12500.00', 6, 1, 'User_f', 'User_l', 'Mwanda', 'Wundanyi', '965471', 'user1@user.com', 'a:3:{i:2;a:5:{s:2:\"id\";i:2;s:7:\"product\";s:10:\"Headphones\";s:8:\"quantity\";i:1;s:5:\"price\";i:2000;s:5:\"image\";s:13:\"/images/c.jpg\";}i:3;a:5:{s:2:\"id\";i:3;s:7:\"product\";s:7:\"Speaker\";s:8:\"quantity\";i:3;s:5:\"price\";i:1500;s:5:\"image\";s:13:\"/images/d.jpg\";}i:6;a:5:{s:2:\"id\";i:6;s:7:\"product\";s:10:\"Black Wire\";s:8:\"quantity\";i:2;s:5:\"price\";i:3000;s:5:\"image\";s:13:\"/images/g.jpg\";}}', '2021-01-29 06:38:10', '2021-01-29 06:38:10'),
(118, '60141e53a1331', 6, 'pending', '21600.00', 13, 1, 'Mary', 'Murkey', 'Maralal', 'Samburu', '895523', 'mary@mary.com', 'a:5:{i:2;a:5:{s:2:\"id\";i:2;s:7:\"product\";s:10:\"Headphones\";s:8:\"quantity\";i:2;s:5:\"price\";i:2000;s:5:\"image\";s:13:\"/images/c.jpg\";}i:1;a:5:{s:2:\"id\";i:1;s:7:\"product\";s:9:\"Earphones\";s:8:\"quantity\";i:3;s:5:\"price\";i:200;s:5:\"image\";s:13:\"/images/c.jpg\";}i:3;a:5:{s:2:\"id\";i:3;s:7:\"product\";s:7:\"Speaker\";s:8:\"quantity\";i:2;s:5:\"price\";i:1500;s:5:\"image\";s:13:\"/images/d.jpg\";}i:6;a:5:{s:2:\"id\";i:6;s:7:\"product\";s:10:\"Black Wire\";s:8:\"quantity\";i:2;s:5:\"price\";i:3000;s:5:\"image\";s:13:\"/images/g.jpg\";}i:5;a:5:{s:2:\"id\";i:5;s:7:\"product\";s:7:\"Calisto\";s:8:\"quantity\";i:4;s:5:\"price\";i:2000;s:5:\"image\";s:13:\"/images/f.jpg\";}}', '2021-01-29 11:40:19', '2021-01-29 11:40:19'),
(119, '6015083698a6a', 7, 'pending', '2000.00', 1, 1, 'Derrick', 'Jefferson', 'Kayole', 'Nairobi', '85231', 'demotest@test.com', 'a:1:{i:2;a:5:{s:2:\"id\";i:2;s:7:\"product\";s:10:\"Headphones\";s:8:\"quantity\";i:1;s:5:\"price\";i:2000;s:5:\"image\";s:13:\"/images/c.jpg\";}}', '2021-01-30 04:18:14', '2021-01-30 04:18:14'),
(120, '60151d3c00b12', 7, 'pending', '15600.00', 9, 1, 'Derrick', 'Jefferson', 'Mamboleo', 'Kisumu', '752369', 'demotest@test.com', 'a:3:{i:1;a:5:{s:2:\"id\";i:1;s:7:\"product\";s:9:\"Earphones\";s:8:\"quantity\";i:3;s:5:\"price\";i:200;s:5:\"image\";s:13:\"/images/c.jpg\";}i:5;a:5:{s:2:\"id\";i:5;s:7:\"product\";s:7:\"Calisto\";s:8:\"quantity\";i:3;s:5:\"price\";i:2000;s:5:\"image\";s:13:\"/images/f.jpg\";}i:6;a:5:{s:2:\"id\";i:6;s:7:\"product\";s:10:\"Black Wire\";s:8:\"quantity\";i:3;s:5:\"price\";i:3000;s:5:\"image\";s:13:\"/images/g.jpg\";}}', '2021-01-30 05:47:56', '2021-01-30 05:47:56'),
(121, '60154d1281a1c', 7, 'pending', '15600.00', 9, 1, 'Derrick', 'Jefferson', 'Umoja', 'Nairobi', '8539', 'demotest@test.com', 'a:3:{i:1;a:5:{s:2:\"id\";i:1;s:7:\"product\";s:9:\"Earphones\";s:8:\"quantity\";i:3;s:5:\"price\";i:200;s:5:\"image\";s:13:\"/images/c.jpg\";}i:5;a:5:{s:2:\"id\";i:5;s:7:\"product\";s:7:\"Calisto\";s:8:\"quantity\";i:3;s:5:\"price\";i:2000;s:5:\"image\";s:13:\"/images/f.jpg\";}i:6;a:5:{s:2:\"id\";i:6;s:7:\"product\";s:10:\"Black Wire\";s:8:\"quantity\";i:3;s:5:\"price\";i:3000;s:5:\"image\";s:13:\"/images/g.jpg\";}}', '2021-01-30 09:12:02', '2021-01-30 09:12:02'),
(122, '601e6b027a07f', 8, 'pending', '3700.00', 3, 1, 'Francis', 'Adunga', 'msa rd', 'Nairobi', '0706390397', 'ceo@directcore.com', 'a:3:{i:1;a:5:{s:2:\"id\";i:1;s:7:\"product\";s:9:\"Earphones\";s:8:\"quantity\";i:1;s:5:\"price\";i:200;s:5:\"image\";s:13:\"/images/c.jpg\";}i:2;a:5:{s:2:\"id\";i:2;s:7:\"product\";s:10:\"Headphones\";s:8:\"quantity\";i:1;s:5:\"price\";i:2000;s:5:\"image\";s:13:\"/images/c.jpg\";}i:3;a:5:{s:2:\"id\";i:3;s:7:\"product\";s:7:\"Speaker\";s:8:\"quantity\";i:1;s:5:\"price\";i:1500;s:5:\"image\";s:13:\"/images/d.jpg\";}}', '2021-02-06 07:10:10', '2021-02-06 07:10:10'),
(123, '601e6e513352e', 1, 'pending', '1500.00', 1, 1, 'test_f', 'test_l', 'Lari', 'Meru', '45893', 'test@test.com', 'a:1:{i:3;a:5:{s:2:\"id\";i:3;s:7:\"product\";s:7:\"Speaker\";s:8:\"quantity\";i:1;s:5:\"price\";i:1500;s:5:\"image\";s:13:\"/images/d.jpg\";}}', '2021-02-06 07:24:17', '2021-02-06 07:24:17'),
(124, '601e7be864aac', 1, 'pending', '8600.00', 7, 1, 'test_f', 'test_l', 'kasarani', 'Nairobi', '87965', 'test@test.com', 'a:3:{i:2;a:5:{s:2:\"id\";i:2;s:7:\"product\";s:10:\"Headphones\";s:8:\"quantity\";i:2;s:5:\"price\";i:2000;s:5:\"image\";s:13:\"/images/c.jpg\";}i:1;a:5:{s:2:\"id\";i:1;s:7:\"product\";s:9:\"Earphones\";s:8:\"quantity\";i:3;s:5:\"price\";i:200;s:5:\"image\";s:13:\"/images/c.jpg\";}i:5;a:5:{s:2:\"id\";i:5;s:7:\"product\";s:7:\"Calisto\";s:8:\"quantity\";i:2;s:5:\"price\";i:2000;s:5:\"image\";s:13:\"/images/f.jpg\";}}', '2021-02-06 08:22:16', '2021-02-06 08:22:16'),
(125, '601e7d2b7df81', 1, 'pending', '200.00', 1, 1, 'test_f', 'test_l', 'Kisauni', 'Mombasa', '569874', 'test@test.com', 'a:1:{i:1;a:5:{s:2:\"id\";i:1;s:7:\"product\";s:9:\"Earphones\";s:8:\"quantity\";i:1;s:5:\"price\";i:200;s:5:\"image\";s:13:\"/images/c.jpg\";}}', '2021-02-06 08:27:39', '2021-02-06 08:27:39'),
(126, '601e7e1926280', 1, 'pending', '200.00', 1, 1, 'test_f', 'test_l', 'Embakasi', 'Select Your Region', '85694', 'test@test.com', 'a:1:{i:1;a:5:{s:2:\"id\";i:1;s:7:\"product\";s:9:\"Earphones\";s:8:\"quantity\";i:1;s:5:\"price\";i:200;s:5:\"image\";s:13:\"/images/c.jpg\";}}', '2021-02-06 08:31:37', '2021-02-06 08:31:37'),
(127, '60213d4fe642b', 9, 'pending', '3700.00', 3, 1, 'ken', 'kent', 'burma', 'Nairobi', '4547', 'ken@kent.com', 'a:3:{i:2;a:5:{s:2:\"id\";i:2;s:7:\"product\";s:10:\"Headphones\";s:8:\"quantity\";i:1;s:5:\"price\";i:2000;s:5:\"image\";s:13:\"/images/c.jpg\";}i:3;a:5:{s:2:\"id\";i:3;s:7:\"product\";s:7:\"Speaker\";s:8:\"quantity\";i:1;s:5:\"price\";i:1500;s:5:\"image\";s:13:\"/images/d.jpg\";}i:1;a:5:{s:2:\"id\";i:1;s:7:\"product\";s:9:\"Earphones\";s:8:\"quantity\";i:1;s:5:\"price\";i:200;s:5:\"image\";s:13:\"/images/c.jpg\";}}', '2021-02-08 10:31:59', '2021-02-08 10:31:59'),
(128, '602290b471129', 21, 'pending', '2000.00', 1, 1, 'anita', 'patel', 'Embakasi', 'Nairobi', '4589', 'ka@k.com', 'a:1:{i:2;a:5:{s:2:\"id\";i:2;s:7:\"product\";s:10:\"Headphones\";s:8:\"quantity\";i:1;s:5:\"price\";i:2000;s:5:\"image\";s:13:\"/images/c.jpg\";}}', '2021-02-09 10:40:05', '2021-02-09 10:40:05'),
(129, '602290d9dc595', 21, 'pending', '2000.00', 1, 1, 'anita', 'patel', 'Embakasi', 'Nairobi', '4589', 'ka@k.com', 'a:1:{i:2;a:5:{s:2:\"id\";i:2;s:7:\"product\";s:10:\"Headphones\";s:8:\"quantity\";i:1;s:5:\"price\";i:2000;s:5:\"image\";s:13:\"/images/c.jpg\";}}', '2021-02-09 10:40:41', '2021-02-09 10:40:41'),
(130, '60368207ea802', 1, 'pending', '23100.00', 11, 1, 'test_f', 'test_l', 'Mvita', 'Mombasa', '852963', 'test@test.com', 'a:4:{i:2;a:5:{s:2:\"id\";i:2;s:7:\"product\";s:10:\"Headphones\";s:8:\"quantity\";i:3;s:5:\"price\";i:2000;s:5:\"image\";s:13:\"/images/c.jpg\";}i:8;a:5:{s:2:\"id\";i:8;s:7:\"product\";s:12:\"Roku Premier\";s:8:\"quantity\";i:2;s:5:\"price\";i:4000;s:5:\"image\";s:14:\"/images/e6.png\";}i:28;a:5:{s:2:\"id\";i:28;s:7:\"product\";s:14:\"Tophome earbud\";s:8:\"quantity\";i:2;s:5:\"price\";i:550;s:5:\"image\";s:14:\"/images/l2.jpg\";}i:35;a:5:{s:2:\"id\";i:35;s:7:\"product\";s:17:\"Streamlight 73001\";s:8:\"quantity\";i:4;s:5:\"price\";i:2000;s:5:\"image\";s:14:\"/images/d1.jpg\";}}', '2021-02-24 13:42:48', '2021-02-24 13:42:48'),
(131, '6049d6661fd46', 1, 'pending', '200.00', 1, 1, 'test_f', 'test_l', 'Mathare', 'Nairobi', '85242', 'test@test.com', 'a:1:{i:80;a:5:{s:2:\"id\";i:80;s:7:\"product\";s:8:\"Ear pods\";s:8:\"quantity\";i:1;s:5:\"price\";s:3:\"200\";s:5:\"image\";s:61:\"<img src=\"../images/c.jpg\" alt=\"\" width=\"200\" height=\"250\" />\";}}', '2021-03-11 05:35:50', '2021-03-11 05:35:50'),
(132, '6049fb144ea3d', 1, 'pending', '400.00', 2, 1, 'test_f', 'test_l', 'Nyalenda', 'Kisumu', '52051', 'test@test.com', 'a:1:{i:80;a:5:{s:2:\"id\";i:80;s:7:\"product\";s:8:\"Ear pods\";s:8:\"quantity\";i:2;s:5:\"price\";s:3:\"200\";s:5:\"image\";s:61:\"<img src=\"../images/c.jpg\" alt=\"\" width=\"200\" height=\"250\" />\";}}', '2021-03-11 08:12:20', '2021-03-11 08:12:20'),
(133, '604a0855c9a39', 1, 'pending', '22200.00', 9, 1, 'test_f', 'test_l', 'Kisauni', 'Mombasa', '85274', 'test@test.com', 'a:8:{i:81;a:5:{s:2:\"id\";i:81;s:7:\"product\";s:10:\"Headphones\";s:8:\"quantity\";i:1;s:5:\"price\";s:4:\"2000\";s:5:\"image\";s:61:\"<img src=\"../images/c.jpg\" alt=\"\" width=\"200\" height=\"250\" />\";}i:82;a:5:{s:2:\"id\";i:82;s:7:\"product\";s:7:\"Speaker\";s:8:\"quantity\";i:1;s:5:\"price\";s:4:\"1500\";s:5:\"image\";s:61:\"<img src=\"../images/c.jpg\" alt=\"\" width=\"200\" height=\"250\" />\";}i:80;a:5:{s:2:\"id\";i:80;s:7:\"product\";s:8:\"Ear pods\";s:8:\"quantity\";i:1;s:5:\"price\";s:3:\"200\";s:5:\"image\";s:61:\"<img src=\"../images/c.jpg\" alt=\"\" width=\"200\" height=\"250\" />\";}i:85;a:5:{s:2:\"id\";i:85;s:7:\"product\";s:10:\"Black Wire\";s:8:\"quantity\";i:1;s:5:\"price\";s:4:\"3000\";s:5:\"image\";s:58:\"<img src=\"images/g.jpg\" alt=\"\" width=\"200\" height=\"250\" />\";}i:87;a:5:{s:2:\"id\";i:87;s:7:\"product\";s:12:\"Roku Premier\";s:8:\"quantity\";i:1;s:5:\"price\";s:4:\"4000\";s:5:\"image\";s:59:\"<img src=\"images/e6.png\" alt=\"\" width=\"200\" height=\"250\" />\";}i:104;a:5:{s:2:\"id\";i:104;s:7:\"product\";s:14:\"Home Assistant\";s:8:\"quantity\";i:1;s:5:\"price\";s:3:\"500\";s:5:\"image\";s:59:\"<img src=\"images/e3.png\" alt=\"\" width=\"200\" height=\"250\" />\";}i:111;a:5:{s:2:\"id\";i:111;s:7:\"product\";s:10:\"Tesla Coil\";s:8:\"quantity\";i:1;s:5:\"price\";s:4:\"1000\";s:5:\"image\";s:58:\"<img src=\"images/f.jpg\" alt=\"\" width=\"200\" height=\"250\" />\";}i:118;a:5:{s:2:\"id\";i:118;s:7:\"product\";s:7:\"Speaker\";s:8:\"quantity\";i:2;s:5:\"price\";s:4:\"5000\";s:5:\"image\";s:62:\"<img src=\"../images/s4.jpg\" alt=\"\" width=\"200\" height=\"250\" />\";}}', '2021-03-11 09:08:53', '2021-03-11 09:08:53');

-- --------------------------------------------------------

--
-- Table structure for table `order_history`
--

CREATE TABLE `order_history` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` int(11) NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` char(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('benjaminochieng99@gmail.com', '$2y$10$dqwpR90FuDeHKGom2s0AfuPZh.XwxjDHTj2SrVVqlgrVqHLL3o0ui', '2021-01-20 03:28:07'),
('b.ochieng@directcore.com', '$2y$10$Qx0wwqX3OkiD5l6uCR1G/e5JFl.g4m8i6xQBzAV.GCbMiCtEZnYYC', '2021-01-20 03:28:59');

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `tecshop_users_id` int(11) NOT NULL,
  `amount` int(11) NOT NULL,
  `currency` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description2` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `description3` text COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `title`, `description`, `description2`, `created_at`, `updated_at`, `description3`) VALUES
(1, '<h2 style=\"text-align: left; line-height: 1;\"><span style=\"font-size: 50px;\">Internet Access</span></h2>\r\n<h2 style=\"text-align: left; line-height: 1;\"><span style=\"font-size: 50px;\">for Home</span></h2>', NULL, NULL, '2020-11-02 04:36:47', '2020-11-26 03:52:14', NULL),
(2, '<h2 style=\"line-height: 1; text-align: left;\"><span style=\"font-size: 50px;\">Internet Access</span><br /><span style=\"font-size: 50px;\">for BUSINESS</span></h2>', NULL, NULL, '2020-11-02 04:38:55', '2020-11-26 03:50:37', NULL),
(3, '<h2><span style=\"font-size: 50px;\">Nexcom WiFi</span></h2>\r\n<h2>&nbsp;</h2>', NULL, NULL, '2020-11-02 04:39:23', '2020-11-18 03:23:54', NULL),
(4, '<p><span style=\"font-size: 22px;\"><strong>Internet access</strong></span></p>\r\n<p><span style=\"font-size: 22px;\"><strong>for Home</strong></span></p>', '<p style=\"line-height: 2.2;\"><span style=\"font-size: 18px;\">Get Connected</span></p>', NULL, '2020-11-02 04:39:54', '2020-11-16 08:38:51', NULL),
(5, '<p><strong><span style=\"font-size: 22px;\">Internet access</span></strong></p>\r\n<p><strong><span style=\"font-size: 22px;\">for SME Business</span></strong></p>', '<p style=\"line-height: 2.2;\"><span style=\"font-size: 18px;\">Get Connected</span></p>', NULL, '2020-11-02 04:40:02', '2020-11-10 04:38:18', NULL),
(6, '<p><span style=\"font-size: 21px;\"><strong>Internet on demand</strong></span></p>\r\n<p><span style=\"font-size: 12pt;\"><strong>NEXCOM &nbsp;</strong><img src=\"../images/wifi.png\" alt=\"\" width=\"42\" height=\"15\" /></span></p>', '<p style=\"line-height: 2.2;\"><span style=\"font-size: 18px; text-align: center;\">Get Connected</span></p>', NULL, '2020-11-02 04:40:23', '2020-11-18 05:42:07', NULL),
(7, '<h2 id=\"q\">Questions?</h2>', '<p style=\"line-height: 27px;\"><span style=\"font-size: 15px;\">Give us a shout out</span><br /><span style=\"font-size: 15px;\">&nbsp;<span class=\"fa fa-phone\" style=\"color: #f7a220;\">&nbsp;</span>0111636443</span><br /><span style=\"font-size: 15px;\">sales@directcore.com&nbsp;</span><br /><br /></p>', '<ul style=\"list-style-type: none;\">\r\n<li>&nbsp;</li>\r\n</ul>', '2020-11-02 04:41:13', '2020-11-18 08:56:07', NULL),
(8, '<h3 id=\"q\">Request a call back</h3>', '<p>Interested in Internet Access</p>', NULL, '2020-11-02 04:41:32', '2020-11-13 05:49:15', NULL),
(9, '<h2 style=\"text-align: left; line-height: 18px;\"><br /><span style=\"font-size: 15px;\">&nbsp;Get Internet</span></h2>', NULL, NULL, '2020-11-03 03:56:55', '2020-11-20 06:40:14', NULL),
(10, '<h2 style=\"text-align: left; line-height: 18px;\"><br /><span style=\"font-size: 15px;\">Services</span></h2>', NULL, NULL, '2020-11-03 03:57:02', '2020-11-16 09:01:46', NULL),
(11, '<h2 style=\"text-align: left; line-height: 18px;\"><br /><span style=\"font-size: 15px;\">Contact Us</span></h2>', NULL, NULL, '2020-11-03 03:57:12', '2020-11-16 09:01:22', NULL),
(12, '<h2 style=\"text-align: left; line-height: 18px;\"><br /><span style=\"font-size: 15px;\">My Account</span></h2>', NULL, NULL, '2020-11-03 03:57:25', '2020-11-20 07:11:25', NULL),
(13, '<h2 style=\"text-align: left; line-height: 1;\">Internet Access<br />for HOME</h2>', NULL, NULL, '2020-11-03 10:30:40', '2020-11-10 03:46:24', NULL),
(14, '<h2>Internet Access<br />\r\nfor HOME</h2>', '', '', '2020-11-04 04:51:15', '2020-11-04 04:51:15', NULL),
(15, '<p style=\"line-height: 15px;\"><span style=\"font-size: 40px;\">Internet Access&nbsp;</span></p>\r\n<p style=\"line-height: 15px;\"><span style=\"font-size: 40px;\">for Home</span></p>', NULL, NULL, '2020-11-04 06:05:18', '2021-02-09 07:19:28', NULL),
(16, '<p>6 <span style=\"font-size: 18px;\">MBPS</span></p>', '<p><sup>Ksh</sup>&nbsp;2,900</p>', '<ul style=\"list-style-type: none;\">\r\n<li><em class=\"fa fa-check\" style=\"color: #fa9d3b;\">&nbsp;</em>Data Volume - Unlimited</li>\r\n<li><em class=\"fa fa-check\" style=\"color: #fa9d3b;\">&nbsp;</em>Data Speed - upto 6 Mbps</li>\r\n<li><em class=\"fa fa-check\" style=\"color: #fa9d3b;\">&nbsp;</em>Validity - Monthly</li>\r\n</ul>', '2020-11-04 06:55:15', '2020-11-12 06:03:14', NULL),
(17, '<p>12 <span style=\"font-size: 18px;\">MBPS</span></p>', '<p><sup>Ksh</sup>&nbsp;4,000</p>', '<ul style=\"list-style-type: none;\">\r\n<li><em class=\"fa fa-check\" style=\"color: #fa9d3b;\">&nbsp;</em>Data Volume - Unlimited</li>\r\n<li><em class=\"fa fa-check\" style=\"color: #fa9d3b;\">&nbsp;</em>Data Speed - upto 12 Mbps</li>\r\n<li><em class=\"fa fa-check\" style=\"color: #fa9d3b;\">&nbsp;</em>Validity - Monthly</li>\r\n</ul>', '2020-11-04 07:01:17', '2020-11-12 06:10:38', NULL),
(18, '<p>25 <span style=\"font-size: 18px;\">MBPS</span></p>', '<p><sup>Ksh</sup>&nbsp;6,500</p>', '<ul style=\"list-style-type: none;\">\r\n<li><em class=\"fa fa-check\" style=\"color: #fa9d3b;\">&nbsp;</em>Data Volume - Unlimited</li>\r\n<li><em class=\"fa fa-check\" style=\"color: #fa9d3b;\">&nbsp;</em>Data Speed - upto 25 Mbps</li>\r\n<li><em class=\"fa fa-check\" style=\"color: #fa9d3b;\">&nbsp;</em>Validity - Monthly</li>\r\n</ul>', '2020-11-04 09:07:30', '2020-11-12 06:15:15', NULL),
(19, '<p>3 <span style=\"font-size: 18px;\">MBPS</span></p>', '<p><sup id=\"the_up\">KES</sup>&nbsp;3,600</p>', '<ul style=\"list-style-type: none;\">\r\n<li><em class=\"fa fa-check\" style=\"color: #074578;\">&nbsp;</em>Data Volume - Unlimited</li>\r\n<li><em class=\"fa fa-check\" style=\"color: #074578;\">&nbsp;</em>Data Speed - upto 3 Mbps</li>\r\n<li><em class=\"fa fa-check\" style=\"color: #074578;\">&nbsp;</em>Validity - Monthly</li>\r\n</ul>', '2020-11-04 09:44:59', '2020-11-19 03:02:47', NULL),
(20, '<p>6 <span style=\"font-size: 18px;\">MBPS</span></p>', '<p><sup id=\"the_up\">KES</sup>&nbsp;6,000</p>', '<ul style=\"list-style-type: none;\">\r\n<li><em class=\"fa fa-check\" style=\"color: #074578;\">&nbsp;</em>Data Volume - Unlimited</li>\r\n<li><em class=\"fa fa-check\" style=\"color: #074578;\">&nbsp;</em>Data Speed - upto 6 Mbps</li>\r\n<li><em class=\"fa fa-check\" style=\"color: #074578;\">&nbsp;</em>Validity - Monthly</li>\r\n</ul>', '2020-11-04 09:49:35', '2020-11-12 07:02:46', NULL),
(21, '<p>12 <span style=\"font-size: 18px;\">MBPS</span></p>', '<p><sup id=\"the_up\">KES</sup>&nbsp;14,500</p>', '<ul style=\"list-style-type: none;\">\r\n<li><em class=\"fa fa-check\" style=\"color: #074578;\">&nbsp;</em>Data Volume - Unlimited</li>\r\n<li><em class=\"fa fa-check\" style=\"color: #074578;\">&nbsp;</em>Data Speed - upto 12 Mbps</li>\r\n<li><em class=\"fa fa-check\" style=\"color: #074578;\">&nbsp;</em>Validity - Monthly</li>\r\n</ul>', '2020-11-04 09:52:01', '2020-11-12 07:05:04', NULL),
(22, '<p>20 <span style=\"font-size: 18px;\">MBPS</span></p>', '<p><sup id=\"the_up\">KES</sup>&nbsp;19,000</p>', '<ul style=\"list-style-type: none;\">\r\n<li><em class=\"fa fa-check\" style=\"color: #074578;\">&nbsp;</em>Data Volume - Unlimited</li>\r\n<li><em class=\"fa fa-check\" style=\"color: #074578;\">&nbsp;</em>Data Speed - upto 20 Mbps</li>\r\n<li><em class=\"fa fa-check\" style=\"color: #074578;\">&nbsp;</em>Validity - Monthly</li>\r\n</ul>', '2020-11-04 09:52:48', '2020-11-12 07:07:10', NULL),
(23, 'Enterprise Solutions', NULL, NULL, '2020-11-04 09:54:47', '2020-11-04 10:14:43', NULL),
(24, '<p style=\"font-size: 20px;\">Dedicated Internet</p>', '<p>With Dedicated Internet Access, your company is guaranteed to receive the bandwidth you purchased, 100% of the time.</p>', '<p style=\"line-height: 52px;\">Read More</p>', '2020-11-04 09:55:50', '2020-11-23 08:58:24', NULL),
(25, '<p style=\"font-size: 20px;\">Smart Solutions</p>', '<p>Smart solutions is a general term for systems combining innovative technologies, both in terms of hardware (Internet of Things) and software.</p>', '<p style=\"line-height: 52px;\">Read More</p>', '2020-11-04 10:16:58', '2020-11-12 08:43:15', NULL),
(26, '<p style=\"font-size: 20px;\">Hosting</p>', '<p>Web hosting is a service that allows organizations and individuals to post a website or web page onto the Internet.</p>', '<p style=\"line-height: 52px;\">Read More</p>', '2020-11-04 10:18:52', '2020-11-12 08:44:41', NULL),
(27, '<p style=\"font-size: 40px;\">Nexcom <img src=\"../../images/wifi.png\" alt=\"\" width=\"72\" height=\"50\" /></p>', NULL, NULL, '2020-11-04 10:19:34', '2020-11-12 08:56:21', NULL),
(28, '<p style=\"font-size: 18px;\">Hourly</p>', '<p><sup>Ksh</sup>&nbsp;20</p>', '<ul style=\"list-style-type: none;\">\r\n<li><em class=\"fa fa-check\" style=\"color: #fa9d3b;\">&nbsp;</em>Validity - Per Hour</li>\r\n</ul>', '2020-11-04 10:20:35', '2020-11-12 09:07:19', NULL),
(29, '<p style=\"font-size: 18px;\">Daily</p>', '<p><sup>Ksh</sup>&nbsp;70</p>', '<ul style=\"list-style-type: none;\">\r\n<li><em class=\"fa fa-check\" style=\"color: #fa9d3b;\">&nbsp;</em>Validity - Per Day</li>\r\n</ul>', '2020-11-04 10:21:20', '2020-11-12 09:09:38', NULL),
(30, '<p style=\"font-size: 18px;\">Weekly</p>', '<p><sup>Ksh</sup>&nbsp;500</p>', '<ul style=\"list-style-type: none;\">\r\n<li><em class=\"fa fa-check\" style=\"color: #fa9d3b;\">&nbsp;</em>Validity - Per Week</li>\r\n</ul>', '2020-11-04 10:22:15', '2020-11-12 09:11:11', NULL),
(31, '<p style=\"font-size: 18px;\">Monthly</p>', '<p><sup>Ksh</sup>&nbsp;1500</p>', '<ul style=\"list-style-type: none;\">\r\n<li><em class=\"fa fa-check\" style=\"color: #fa9d3b;\">&nbsp;</em>Validity - Per Month</li>\r\n</ul>', '2020-11-04 10:23:57', '2020-11-12 09:13:16', NULL),
(32, '<h2 class=\"title__line\"><span style=\"font-size: 25px;\">Wifi</span></h2>', '<p style=\"line-height: 30px;\">High Speed Broadband Internet is brought to your home through wireless access radio technology, commonly known as Wireless to the Home(WTTH).<br />Fiber On Air deploys state of art access features such as beamforming, MIMO, adaptive modulation, and interference mitigation techniques to deliver high speed internet connectivity to your home.</p>\r\n<ul style=\"margin-top: -22px;\">\r\n<li>No data capping</li>\r\n<li>No speed throttling</li>\r\n<li>Express installation</li>\r\n</ul>', NULL, '2020-11-04 10:24:41', '2020-11-13 05:44:09', NULL),
(33, '<h2 style=\"line-height: 40px;\"><span style=\"font-size: 25px;\">How it works</span></h2>', '<p style=\"line-height: 27px;\">It uses radio waves/frequency from any of our pop as a mode of transmission with an extensive coverage network</p>', NULL, '2020-11-04 10:25:08', '2020-11-12 10:00:30', NULL),
(34, '<p><span style=\"font-size: 40px;\">Contact Us</span></p>', NULL, NULL, '2020-11-04 10:28:17', '2020-11-12 10:07:54', NULL),
(35, '<p><span style=\"font-size: 24px; color: #0f3d56;\"><em class=\"fa fa-map-marker\" style=\"color: #0f3d56;\">&nbsp;&nbsp;</em>ADDRESS</span></p>', '<p>No. 3 Sri Aurobindo Avenue,<br />Off Mzima Springs; Lavington.<br />P.O. Box 26766 - 00100, Nairobi.</p>', NULL, '2020-11-04 10:33:02', '2020-11-23 09:10:49', NULL),
(36, '<p><span style=\"font-size: 24px; color: #0f3d56;\"><em class=\"fa fa-phone\" style=\"color: #0f3d56;\">&nbsp;&nbsp;</em>PHONE NUMBER</span></p>', '<p>+254 20 232 55 99</p>\r\n<p>&nbsp;0750499916</p>', NULL, '2020-11-04 10:33:27', '2020-11-16 11:13:21', NULL),
(37, '<p><span style=\"font-size: 24px; color: #0f3d56;\"><em class=\"fa fa-envelope\" style=\"color: #0f3d56;\">&nbsp;&nbsp;</em>EMAIL</span></p>', '<p>sales@directcore.com</p>', NULL, '2020-11-04 10:33:58', '2020-11-12 10:34:55', NULL),
(38, '<p style=\"line-height: 15px;\"><span style=\"font-size: 40px;\">Internet Access&nbsp;</span></p>\r\n<p style=\"line-height: 15px;\"><span style=\"font-size: 40px;\">for Business</span></p>', NULL, NULL, '2020-11-04 11:02:34', '2020-11-12 06:51:38', NULL),
(40, '<div class=\"single__wedget\">\r\n<h2 class=\"ft__title\">Contact Us</h2>\r\n</div>', '<p><em class=\"fa fa-envelope\">&nbsp;</em> sales@directcore.com</p>\r\n<p><em class=\"fa fa-phone\">&nbsp;</em> +254 20 232 55 99</p>\r\n<p><em class=\"fa fa-map-marker\">&nbsp;</em> No. 3 Sri Aurobindo Avenue, Off Mzima Springs; Lavington.</p>', NULL, '2020-11-05 10:58:22', '2020-11-23 08:58:45', NULL),
(41, '<h2 class=\"ft__title\">Social</h2>', '<ul class=\"ft__contact__link\">\r\n<li><a href=\"https://web.facebook.com/DirectcoreTech/\"> <em class=\"fa fa-facebook\">&nbsp;</em>&nbsp;&nbsp; Facebook</a></li>\r\n<li><a href=\"https://www.instagram.com/directcoretechnologies/\"> <em class=\"fa fa-instagram\">&nbsp;</em>&nbsp;&nbsp; Instagram</a></li>\r\n<li><a href=\"https://www.linkedin.com/company/18811754/admin/\" aria-invalid=\"true\"> <em class=\"fa fa-linkedin\">&nbsp;</em>&nbsp;&nbsp; Linked In</a></li>\r\n<li><a href=\"https://twitter.com/DirectcoreTech\"> <em class=\"fa fa-twitter\">&nbsp;</em>&nbsp;&nbsp; Twitter</a></li>\r\n</ul>', NULL, '2020-11-05 11:19:20', '2020-11-13 05:21:37', NULL),
(42, '<h2 class=\"ft__title\">Links</h2>', '<ul class=\"ft__contact__link\">\r\n<li><a href=\"{{ url(\'/about\') }}\" aria-invalid=\"true\">About Us</a></li>\r\n<li><a href=\"{{ url(\'/FAQs\') }}\" aria-invalid=\"true\">FAQs</a></li>\r\n<li><a class=\"\" href=\"{{ url(\'/solutions\') }}\" aria-invalid=\"true\">Support Services</a></li>\r\n<li><!-- <a href=\"{{ url(\'privacy-policy\') }}\">Privacy Policy</a> --> <a href=\"#\">Privacy Policy</a></li>\r\n<li><a href=\"{{ url(\'terms-and-conditions\') }}\" aria-invalid=\"true\">Terms And Conditions</a></li>\r\n</ul>', NULL, '2020-11-05 11:25:18', '2020-11-13 05:24:36', NULL),
(43, '<p><span style=\"font-size: 40px;\">About Us</span></p>', NULL, NULL, '2020-11-05 11:25:44', '2020-11-18 05:39:48', NULL),
(44, '<h2>Nexcom Internet</h2>', '<p>We provide Internet services for commercial and residential communities alike. We&rsquo;re locally owned and operated, and we&rsquo;re committed to redefining Internet services with faster and more reliable connectivity, affordable pricing, and exceptional customer service.</p>', NULL, '2020-11-05 12:01:45', '2020-11-14 08:33:19', NULL),
(45, '<p><img src=\"../images/logo/nexcom.png\" alt=\"\" width=\"188\" height=\"55\" /></p>', '<p>We provide Internet services for commercial and residential communities alike. We&rsquo;re locally owned and operated, and we&rsquo;re committed to redefining Internet services with faster and more reliable connectivity, affordable pricing, and exceptional customer service</p>', NULL, '2020-11-06 04:04:58', '2020-11-23 06:22:08', NULL),
(46, '<h2>Nexcom WiFi</h2>', '<div>\r\n<p>High Speed Broadband Internet is brought to your home through wireless access radio technology, commonly known as Wireless to the Home(WTTH).</p>\r\n</div>', NULL, '2020-11-14 08:29:24', '2020-11-16 09:45:24', NULL),
(47, '<h2>Internet access for Home</h2>', '<p>Our fiber optic enabled service to enjoy the kind of internet your family deserves. Connect multiple devices in your home at the same time, any time of the day or night.</p>', NULL, '2020-11-14 08:35:03', '2020-11-18 05:41:11', NULL),
(48, '<h2>Internet access for Business</h2>', '<p>Keeps your business connected at the speed of light, ensuring your business is always on, responsive and ready to make the most of emerging opportunities.</p>', NULL, '2020-11-14 08:35:26', '2020-11-14 08:35:26', NULL),
(49, '<p><span style=\"font-size: 40px;\">FAQs</span></p>', '<h3>Frequently Asked Questions</h3>', NULL, '2020-11-16 06:47:49', '2020-11-16 10:53:59', NULL),
(50, '<h2>Frequently Asked Questions</h2>', NULL, NULL, '2020-11-16 06:54:04', '2020-11-16 06:54:04', NULL),
(51, '<h2>General</h2>', NULL, NULL, '2020-11-16 06:54:59', '2020-11-16 06:54:59', NULL),
(52, '<p>What is Nexcom WiFi?</p>', '<p>This is a premium service that gives you unlimited access to seamless fast and reliable broadband internet.</p>', NULL, '2020-11-16 06:56:01', '2020-11-21 05:32:34', NULL),
(53, '<p>Does it make any difference to my speeds if I connect more devices</p>', '<p>Yes. Each device is likely to be using background data. Sharing your bandwidth over more devices will usually lead to slower speeds on each individual device. But adding more devices will not change your total speed, which remains at up to max Mbps.</p>', NULL, '2020-11-16 06:57:09', '2020-11-16 06:57:09', NULL),
(54, '<p>How does WIFI Work?</p>', '<p>Think of it like water, we bring the water (the bandwidth), into a venue using physical pipes, these pipes are connected to the water system (the internet). Once inside a venue we use a sprinkler system (Access Points) to spray the water around. This spray is WiFi. Your phone, laptop or tablet is a cup and when you are connected to Nexcom WiFi you are essentially standing in the spray area catching water in a cup. Simple as that!!!</p>', NULL, '2020-11-16 06:57:40', '2020-11-16 06:57:40', NULL),
(55, '<p>How do I get assistance in case I have queries, issues or complaints?</p>', '<p>For assistance, please call:<br />+254 20 232 5599 or +254 700 583 417<br />Alternatively, you can send an email to:<br />sales@directcore.com</p>', NULL, '2020-11-16 06:58:53', '2020-11-16 06:58:53', NULL),
(56, '<p><span style=\"font-size: 28px;\">Terms and Conditions</span></p>', '<p class=\"first__tc\">1. Service Application</p>\r\n<p class=\"first__tc2\">This form is legally binding as proof of service application and Service Level Agreement.</p>\r\n<p class=\"first__tc\">2. Service Acceptance</p>\r\n<p class=\"first__tc2\">If Service Acceptance and Handover Certificate is not signed within 4 days of service provisioning, and the service is optimum in our opinion, this will document will serve as acceptance to commence billing from the service provision date.</p>\r\n<p class=\"first__tc\">3. Term</p>\r\n<p class=\"first__tc2\">This agreement shall remain in force for a period indicated above from the commencement date and shall thereafter renew automatically for periods equivalent to service contract duration unless terminated in accordance with clause No. 7 below.</p>\r\n<p class=\"first__tc\">4. Warranty</p>\r\n<p class=\"first__tc2\">Wherever applicable, Warranty lasts for 6 months after equipments purchase and does not cover for equipment malfunctions due to faulty power, lack of UPS, power spikes or surges. Warranty can thereafter be extended at 20% of initial purchase price.</p>\r\n<p class=\"first__tc\">5. Equipment</p>\r\n<p class=\"first__tc2\">All equipment provided by Directcore Technologies Limited for free, remains property of Directcore Technologies Limited and will be recovered when the service contract is terminated.</p>\r\n<p class=\"first__tc\">6. Payment Mode</p>\r\n<p class=\"first__tc2\">The services will be provided on pre-paid basis.</p>\r\n<p class=\"first__tc\">7. Termination</p>\r\n<p class=\"first__tc2\">Either party shall be entitled to terminate this contract by giving a ninety (90) days notice in writing. The termination of this Agreement for whatever cause shall in no way prejudice the rights of either party accrued to the date of such termination and shall affect the Master Service Agreement to the extent of services provided in this service order form ONLY.</p>\r\n<p class=\"first__tc\">8. Confidentiality</p>\r\n<p class=\"first__tc2\">Each party to this Agreement shall at all times use its best endeavors to keep confidential (and to procure that its offices, employees and agents shall keep confidential) any information it may acquire in relation to clients, business or affairs of the other party to this Agreement and shall not use or disclose such information without the consent of the other party to this Agreement or in accordance with an order of a court of competent jurisdiction. The customer acknowledges that all of the information contained in this Internet Services Order Form is proprietary and confidential to Directcore Technologies Limited.</p>\r\n<p class=\"first__tc\">9. Partnership</p>\r\n<p class=\"first__tc2\">Nothing in this Agreement shall be deemed to constitute a partnership between the parties to this Agreement nor constitute any party the agent of the other party or otherwise entitle any party to have authority to bind the other party to this Agreement for any purpose.</p>\r\n<p class=\"first__tc\">10. Force Majeure</p>\r\n<p class=\"first__tc2\">Neither party shall be responsible for any delay or failure in performance of this Agreement due to Force Majeure such as war, hostilities, revolution, civil commotion, strikes, lockouts, epidemics, accidents, fire, wind, flood, earthquakes or by any law or order, proclamation, regulation or ordinance of any government or any sub-division thereof or because any act of God, nature or public enemy, act or omission of carriers or suppliers or for any other cause beyond the control of the party affected. In case of Force Majeure, the party affected will notify the other party as soon as possible.</p>\r\n<p class=\"first__tc\">11. Legal Jurisdiction</p>\r\n<p class=\"first__tc2\">This Agreement shall be governed and construed in accordance with the laws of the Republic of Kenya, which shall mean present laws or any statutory modification or reenactment thereof for the time being in force.</p>\r\n<p class=\"first__tc\">12. Arbitration</p>\r\n<p class=\"first__tc2\">Any dispute or question which may arise at any time between the parties regarding the construction of this Agreement or the rights or liabilities of the parties shall be referred to the decision of a single arbitrator in Nairobi to be agreed upon between the parties or in default of agreement within fourteen (14) days after service by one of the parties hereto on the other of notice of the existence of such dispute difference or question to be appointed at the request of either party by the Chairman for the time being Kenya Branch of Chartered Institute of Arbitrators and such arbitration shall be conducted in accordance with and subject to the provisions of the Arbitration Act (Chapter 49 of the Laws of Kenya) as may be amended from time to time and the rules of the Chartered Institute of Arbitrators (Kenya Branch) shall apply to such arbitration proceedings.</p>\r\n<p class=\"first__tc\">13. Licenses</p>\r\n<p class=\"first__tc2\">The customer will be responsible for their licenses, compliance, systems and software level security. Directcore Technologies Limited wholly or through its partners will provide security to the infrastructure, necessary compliance and licenses required for the infrastructure.</p>', NULL, '2020-11-16 06:59:34', '2020-11-16 10:05:33', NULL),
(57, '<h2 style=\"text-align: left; line-height: 18px;\"><br /><span style=\"font-size: 15px;\">FAQs</span></h2>', NULL, NULL, '2020-11-16 09:09:33', '2020-11-16 09:09:33', NULL),
(58, '<p>General</p>', NULL, NULL, '2020-11-16 10:10:21', '2020-11-16 10:10:21', NULL),
(59, '<p>Payments</p>', NULL, NULL, '2020-11-16 10:10:31', '2020-11-16 10:10:31', NULL),
(60, '<p>Product and Services</p>', NULL, NULL, '2020-11-16 10:10:46', '2020-11-16 10:10:46', NULL),
(61, '<p>Technical Issues</p>', NULL, NULL, '2020-11-16 10:10:59', '2020-11-16 10:10:59', NULL),
(62, '<p><span style=\"font-size: 28px;\">Subscribe to Internet Access for BUSINESS</span></p>', '<p style=\"line-height: 40px;\"><span style=\"font-size: 16px;\">Submit a connection request below</span></p>', NULL, '2020-11-19 04:43:25', '2020-11-20 06:14:23', NULL),
(63, '<p><span style=\"font-size: 28px;\">Subscribe to Internet Access for HOME</span></p>', '<p style=\"line-height: 40px;\"><span style=\"font-size: 16px;\">Submit a connection request below</span></p>', NULL, '2020-11-19 04:45:03', '2020-11-20 06:08:30', NULL),
(65, '<p><span style=\"font-size: 40px;\">Dedicated Internet</span></p>', '<h2 class=\"title__line \">Internet</h2>\r\n<p>Did you know that when you sign up for internet with an internet service provider (ISP), you&rsquo;re sharing internet through a single cable with everyone in your area? While sharing is caring, it&rsquo;s not ideal when you&rsquo;re trying to run a video conference or download a large file. By switching to a dedicated internet connection, your internet goes directly and only to your office. That means no more sharing with neighboring buildings and people that hog that treasured bandwidth.</p>', '<h2>Dedicated Internet</h2>\r\n<p>Dedicated internet access (DIA) is a private connection between your business and the web.<br />With DIA, unlike regular broadband service, your business doesn&rsquo;t have to compete with other subscribers for bandwidth. That means you can enjoy upload speeds that are just as a fast as download speeds no matter the time of day. Think of it as having a lane on the highway that&rsquo;s yours and yours alone. Even at rush hour, you&rsquo;re able to travel at a consistent speed. This rock-solid internet performance will support your business&rsquo;s critical operations.</p>', '2020-11-19 10:50:04', '2020-11-20 05:08:50', '<h2>Advantages of Dedicated Internet</h2>\r\n<p style=\"line-height: 8px;\"><em class=\"fa fa-check\" style=\"color: #fa9d3b;\">&nbsp;</em>Guaranteed bandwidth</p>\r\n<p style=\"line-height: 8px;\"><em class=\"fa fa-check\" style=\"color: #fa9d3b;\">&nbsp;</em>Power and speed</p>\r\n<p style=\"line-height: 8px;\"><em class=\"fa fa-check\" style=\"color: #fa9d3b;\">&nbsp;</em>Dedicated customer service</p>\r\n<p style=\"line-height: 8px;\"><em class=\"fa fa-check\" style=\"color: #fa9d3b;\">&nbsp;</em>Increased productivity</p>\r\n<p style=\"line-height: 8px;\"><em class=\"fa fa-check\" style=\"color: #fa9d3b;\">&nbsp;</em>Enhanced security</p>'),
(66, '<p><span style=\"font-size: 40px;\">Smart Solutions</span></p>', '<h3 class=\"title__line text-center\">What are Smart Solutions?</h3>\r\n<p>As a service provider, we strive to be perceived as the most innovative company in the Facility Management industry. We achieve this goal by continuously identifying, developing and launching innovative solutions that provide tangible values ​​to our customers and ourselves.<br />At Nexcom, we focus on understanding how new technologies like the Internet of Things, AI and Mobility can be used to increase attraction, productivity, efficiency and sustainability in an office environment.<br />Through our comprehensive innovation ecosystem, together with customers, partners and employees, we identify, develop and launch selected services under the collective name Smart Solutions.</p>', NULL, '2020-11-19 10:54:26', '2020-11-23 10:29:23', '<div>\r\n<p>&nbsp;</p>\r\n</div>\r\n<div>\r\n<div>&nbsp;</div>\r\n</div>\r\n<p>&nbsp;</p>'),
(67, '<p><span style=\"font-size: 40px;\">Hosting</span></p>', '<h2 class=\"title__line\" style=\"font-size: 22px;\">What is Web Hosting?</h2>\r\n<p>Web hosting is a service that allows organizations and individuals to post a website or web page onto the Internet. A web host, or web hosting service provider, is a business that provides the technologies and services needed for the website or webpage to be viewed in the Internet. Websites are hosted, or stored, on special computers called servers. When Internet users want to view your website, all they need to do is type your website address or domain into their browser. Their computer will then connect to your server and your webpages will be delivered to them through the browser. <br />Nexcom hosting require that you own your domain in order to host with us. If you do not have a domain, we will help you purchase one.</p>', NULL, '2020-11-19 10:57:01', '2020-11-25 06:35:50', NULL),
(68, '<p class=\"cta-text\">Interested? <a class=\"cta-btn align-middle\" href=\"{{ url(\'/contact\') }}\" aria-invalid=\"true\">Please contact our consultants and sales reprentatives</a></p>', NULL, NULL, '2020-11-20 05:10:53', '2020-11-20 05:29:05', NULL),
(69, '<p><img src=\"../images/logo/nexcom.png\" alt=\"\" width=\"188\" height=\"55\" /></p>', NULL, NULL, '2020-11-20 06:46:22', '2020-11-20 07:07:45', NULL),
(70, '<p><span class=\"float-left\"> Copyright &copy; Nexcom, 2020. All Rights Reserved.</span><span class=\"float-right\"> A Product of <a href=\"https://www.directcore.com/\">Directcore Technologies Limited</a> </span></p>', NULL, NULL, '2020-12-01 11:34:45', '2020-12-01 11:34:45', NULL),
(71, '<h2 class=\"bradcaump-title\">Tecshop</h2>', '<p style=\"line-height: 40px;\"><span style=\"font-size: 16px;\">Devices and Accessories</span></p>', NULL, '2021-02-08 04:51:28', '2021-02-08 05:31:43', NULL),
(72, '<a id=\"tec_history_text\" href=\"../tec_history\"> <span class=\"fa fa-history fa-lg\" aria-hidden=\"true\"></span> Order History </a>', '<a id=\"wishlist_text\" href=\"../wishlist\"> <span class=\"fa fa-heart fa-lg wishlist_fa\" aria-hidden=\"true\"></span> Wishlists </a>', '<a id=\"signIn_Text\" class=\"dropdown-toggle\" href=\"...\" data-toggle=\"dropdown\"> Tecshop User Account </a>', '2021-02-08 05:42:49', '2021-02-08 08:21:32', NULL),
(73, '<p><a href=\"#multi-item-example\"><img class=\"img-responsive lazyload\" src=\"../images/wifi_icon.png\" /><span>WiFi Performance</span></a></p>', '<p><a href=\"#multi-item-example2\"><img class=\"img-responsive lazyload\" src=\"../images/smarthome_icon.png\" /><span>Security &amp; Automation</span></a></p>', '<p><a href=\"#multi-item-example3\"><img class=\"img-responsive lazyload\" src=\"../images/wfh_icon.png\" /><span>Work and Learn From Home</span></a></p>', '2021-02-08 05:44:11', '2021-02-08 06:18:02', '<p><a href=\"#multi-item-example4\"><img class=\"img-responsive lazyload\" src=\"../images/ent_icon.png\" /><span>Entertainment &amp; Streaming</span></a></p>'),
(74, '<h2>Wifi Performance</h2>', '<p style=\"color: black;\">Reach WiFi slow or dead zones in your home with WiFi range extenders.</p>', NULL, '2021-02-08 05:45:18', '2021-02-08 05:45:18', NULL),
(75, '<h2>Smart-home Security &amp; Automation</h2>', '<p style=\"color: black;\">Boost your security or simplify &amp; Automate</p>', NULL, '2021-02-08 05:46:14', '2021-02-08 05:46:14', NULL),
(76, '<h2>Work and Learn from Home</h2>', '<p style=\"color: black;\">Build your most productive work and learn from home office with webcams, headsets and more.</p>', NULL, '2021-02-08 05:47:07', '2021-02-08 05:47:07', NULL),
(77, '<h2>Entertainment and Streaming</h2>', '<p style=\"color: black;\">Take your home entertainment to the next level.</p>', NULL, '2021-02-08 05:48:06', '2021-02-08 05:48:06', NULL),
(78, '<p class=\"nav-pills\">Cameras</p>', '<p class=\"nav-pills\">Lighting</p>', '<p class=\"nav-pills\">Smart Switches and Plugs</p>', '2021-02-08 06:26:37', '2021-02-08 07:10:26', '<p class=\"nav-pills\">Doorbells</p>'),
(79, '<img class=\"card-img-top card_img_descr\" style=\"width: 260px; height: 300px;\" src=\"../images/family-nexcom-internet-1920p.jpg\" />', 'WiFi Performance', '<div class=\"card tec_card mb-2 border-0\">&nbsp;</div>', '2021-02-08 07:51:04', '2021-02-09 09:18:55', NULL),
(80, '<img src=\"../images/c.jpg\" alt=\"\" width=\"200\" height=\"250\" />', 'Ear pods', '200', '2021-02-09 03:48:17', '2021-03-11 08:28:33', 'Add To Cart'),
(81, '<img src=\"../images/c.jpg\" alt=\"\" width=\"200\" height=\"250\" />', 'Headphones', '2000', '2021-02-09 03:49:45', '2021-02-09 04:53:37', 'Add To Cart'),
(82, '<img src=\"../images/c.jpg\" alt=\"\" width=\"200\" height=\"250\" />', 'Speaker', '1500', '2021-02-09 03:50:34', '2021-02-09 04:54:24', 'Add To Cart'),
(83, '<img src=\"images/e.jpg\" alt=\"\" width=\"200\" height=\"250\" />', 'Voyager', '4000', '2021-02-09 04:56:46', '2021-02-09 04:56:46', 'Add To Cart'),
(84, '<img src=\"images/f.jpg\" alt=\"\" width=\"200\" height=\"250\" />', 'Calisto', '2000', '2021-02-09 04:57:44', '2021-02-09 04:57:44', 'Add To Cart'),
(85, '<img src=\"images/g.jpg\" alt=\"\" width=\"200\" height=\"250\" />', 'Black Wire', '3000', '2021-02-09 04:58:42', '2021-02-09 04:58:42', 'Add To Cart'),
(86, '<img src=\"images/e4.jpg\" alt=\"\" width=\"200\" height=\"250\" />', 'Roku Streaming', '5000', '2021-02-09 05:28:41', '2021-02-09 05:44:01', 'Add To Cart'),
(87, '<img src=\"images/e6.png\" alt=\"\" width=\"200\" height=\"250\" />', 'Roku Premier', '4000', '2021-02-09 05:30:13', '2021-02-09 05:30:13', 'Add To Cart'),
(88, '<img src=\"images/e7.jpg\" alt=\"\" width=\"200\" height=\"250\" />', 'Roku Express', '3000', '2021-02-09 05:31:13', '2021-02-09 05:31:13', 'Add To Cart'),
(89, '<img src=\"images/g.jpg\" alt=\"\" width=\"200\" height=\"250\" />', 'Roku Ultra', '1000', '2021-02-09 05:32:35', '2021-02-09 05:32:35', 'Add To Cart'),
(90, '<img src=\"images/e8.jpg\" alt=\"\" width=\"200\" height=\"250\" />', 'Alro Pro', '900', '2021-02-09 05:33:54', '2021-02-09 05:33:54', 'Add To Cart'),
(91, '<img src=\"images/e9.jpg\" alt=\"\" width=\"200\" height=\"250\" />', 'Alro Ultra', '1800', '2021-02-09 05:35:13', '2021-02-09 05:35:13', 'Add To Cart'),
(92, '<img src=\"images/h.jpg\" alt=\"\" width=\"200\" height=\"250\" />', 'Go Pro', '550', '2021-02-09 06:16:11', '2021-02-09 06:16:11', 'Add To Cart'),
(93, '<img src=\"images/c1.png\" alt=\"\" width=\"200\" height=\"250\" />', 'e-reader', '4000', '2021-02-09 06:17:13', '2021-02-09 06:17:13', 'Add To Cart'),
(94, '<img src=\"images/c2.jpg\" alt=\"\" width=\"200\" height=\"250\" />', 'Smart Stand', '2500', '2021-02-09 06:18:20', '2021-02-09 06:53:43', 'Add To Cart'),
(95, '<img src=\"images/c3.jpg\" alt=\"\" width=\"200\" height=\"250\" />', 'Small Strip', '1000', '2021-02-09 06:19:22', '2021-02-09 07:01:18', 'Add To Cart'),
(96, '<img src=\"images/c4.jpg\" alt=\"\" width=\"200\" height=\"250\" />', 'Amazon Echo', '900', '2021-02-09 06:20:31', '2021-02-09 06:20:31', 'Add To Cart'),
(97, '<img src=\"images/c5.jpg\" alt=\"\" width=\"200\" height=\"250\" />', 'VR Viewer', '1800', '2021-02-09 06:21:20', '2021-02-09 06:21:20', 'Add To Cart'),
(98, '<img src=\"images/c6.jpg\" alt=\"\" width=\"200\" height=\"250\" />', 'Home Camera', '4400', '2021-02-09 06:22:20', '2021-02-09 07:02:32', 'Add To Cart'),
(99, '<img src=\"images/d1.jpg\" alt=\"\" width=\"200\" height=\"250\" />', 'PowerCore', '2000', '2021-02-09 06:23:33', '2021-02-09 07:02:51', 'Add To Cart'),
(100, '<img src=\"images/d2.jpg\" alt=\"\" width=\"200\" height=\"250\" />', 'Ring Stick', '1800', '2021-02-09 06:24:41', '2021-02-09 06:24:41', 'Add To Cart'),
(101, '<img src=\"../images/e.jpg\" alt=\"\" width=\"200\" height=\"250\" />', 'Wireless E', '1100', '2021-02-09 06:27:11', '2021-02-24 13:40:53', 'Add To Cart'),
(102, '<img src=\"images/e.jpg\" alt=\"\" width=\"200\" height=\"250\" />', 'Camera Lens', '5000', '2021-02-09 06:29:03', '2021-02-09 07:03:51', 'Add To Cart'),
(103, '<img src=\"images/e2.png\" alt=\"\" width=\"200\" height=\"250\" />', 'Car Mount', '6000', '2021-02-09 06:30:08', '2021-02-09 07:41:34', 'Add To Cart'),
(104, '<img src=\"images/e3.png\" alt=\"\" width=\"200\" height=\"250\" />', 'Home Assistant', '500', '2021-02-09 06:31:04', '2021-02-09 07:41:57', 'Add To Cart'),
(105, '<img src=\"images/l1.jpg\" alt=\"\" width=\"200\" height=\"250\" />', 'Cables', '4000', '2021-02-09 06:32:59', '2021-02-09 09:56:20', 'Add To Cart'),
(106, '<img src=\"images/l2.jpg\" alt=\"\" width=\"200\" height=\"250\" />', 'Storage Box', '800', '2021-02-09 06:33:49', '2021-02-09 06:33:49', 'Add To Cart'),
(107, '<img src=\"images/l2.jpg\" alt=\"\" width=\"200\" height=\"250\" />', 'Tahome Earbud', '550', '2021-02-09 08:00:51', '2021-02-09 08:00:51', 'Add To Cart'),
(108, '<img src=\"images/l3.jpg\" alt=\"\" width=\"200\" height=\"250\" />', 'PowerADD', '4000', '2021-02-09 08:02:13', '2021-02-09 08:40:18', 'Add To Cart'),
(109, '<img src=\"images/e.jpg\" alt=\"\" width=\"200\" height=\"250\" />', 'Smart Stand', '2500', '2021-02-09 08:03:56', '2021-02-09 08:36:28', 'Add To Cart'),
(110, '<img src=\"images/e.jpg\" alt=\"\" width=\"200\" height=\"250\" />', 'Smart Stand', '2500', '2021-02-09 08:06:37', '2021-02-09 08:36:52', 'Add To Cart'),
(111, '<img src=\"images/f.jpg\" alt=\"\" width=\"200\" height=\"250\" />', 'Tesla Coil', '1000', '2021-02-09 08:07:26', '2021-02-09 08:07:26', 'Add To Cart'),
(112, '<img src=\"images/g.jpg\" alt=\"\" width=\"200\" height=\"250\" />', 'Amir Clip', '900', '2021-02-09 08:08:17', '2021-02-09 08:08:17', 'Add To Cart'),
(113, '<img src=\"images/h.jpg\" alt=\"\" width=\"200\" height=\"250\" />', 'RFID', '1800', '2021-02-09 08:09:08', '2021-02-09 08:34:40', 'Add To Cart'),
(114, '<img src=\"images/c2.jpg\" alt=\"\" width=\"200\" height=\"250\" />', 'Samsung Evo', '4400', '2021-02-09 08:10:12', '2021-02-09 08:39:13', 'Add To Cart'),
(115, '<img src=\"images/d1.jpg\" alt=\"\" width=\"200\" height=\"250\" />', 'Streamlight', '2000', '2021-02-09 08:11:14', '2021-02-09 08:35:07', 'Add To Cart'),
(116, '<img src=\"images/s1.jpg\" alt=\"\" width=\"200\" height=\"250\" />', 'Jelly Comb', '1800', '2021-02-09 08:12:20', '2021-02-09 08:12:20', 'Add To Cart'),
(117, '<img src=\"images/s2.jpg\" alt=\"\" width=\"200\" height=\"250\" />', 'Bellabeat Leaf', '1100', '2021-02-09 08:13:25', '2021-02-09 08:13:25', 'Add To Cart'),
(118, '<img src=\"../images/s4.jpg\" alt=\"\" width=\"200\" height=\"250\" />', 'Speaker', '5000', '2021-02-09 08:14:37', '2021-02-24 13:41:28', 'Add To Cart'),
(119, '<img class=\"imgg\" src=\"../images/sm1.png\" alt=\"\" width=\"200\" height=\"250\" />', 'Marshall Acton', 'Ksh 6000', '2021-02-09 08:15:49', '2021-03-10 17:59:02', 'Add To Cart'),
(120, '<img src=\"images/sm2.jpg\" alt=\"\" width=\"200\" height=\"250\" />', 'Polar Vantage', '500', '2021-02-09 08:16:42', '2021-02-09 08:16:42', 'Add To Cart'),
(121, '<img src=\"images/h.jpg\" alt=\"\" width=\"200\" height=\"250\" />', 'Rangefinder', '4000', '2021-02-09 08:17:34', '2021-02-09 08:17:34', 'Add To Cart'),
(122, '<img class=\"card-img-top card_img_descr\" style=\"width: 260px; height: 300px;\" src=\"../images/nexcom-business-1920p.jpg\" />', 'Entertainment and Streaming', NULL, '2021-02-09 08:48:06', '2021-02-09 08:51:59', NULL),
(123, '<img class=\"card-img-top card_img_descr\" style=\"width: 260px; height: 300px;\" src=\"images/nexcom-business-1920p.jpg\" />', 'Work and Learn From Home', NULL, '2021-02-09 08:56:11', '2021-02-09 08:56:11', NULL),
(124, '<img class=\"card-img-top card_img_descr\" style=\"width: 260px; height: 300px;\" src=\"images/nexcom-business-1920p.jpg\" />', 'Smart-Home Security', NULL, '2021-02-09 08:59:37', '2021-02-09 08:59:37', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `shops`
--

CREATE TABLE `shops` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` double NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `shops`
--

INSERT INTO `shops` (`id`, `product`, `price`, `image`, `created_at`, `updated_at`) VALUES
(1, 'earphones', 200, '/images/c.jpg', NULL, NULL),
(2, 'headphones', 2000, '/images/c.jpg', NULL, NULL),
(3, 'speaker', 1500, '/images/d.jpg', NULL, NULL),
(4, 'earphones', 200, '/images/c.jpg', NULL, NULL),
(5, 'headphones', 2000, '/images/c.jpg', NULL, NULL),
(6, 'speaker', 1500, '/images/d.jpg', NULL, NULL),
(7, 'earphones', 200, '/images/c.jpg', NULL, NULL),
(8, 'headphones', 2000, '/images/c.jpg', NULL, NULL),
(9, 'speaker', 1500, '/images/d.jpg', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tecshop_carts`
--

CREATE TABLE `tecshop_carts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `userId` int(11) NOT NULL,
  `product` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` int(11) NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `qty` int(11) NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tecshop_products`
--

CREATE TABLE `tecshop_products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` int(11) NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `qty` int(11) NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tecshop_products`
--

INSERT INTO `tecshop_products` (`id`, `product`, `price`, `image`, `qty`, `description`, `created_at`, `updated_at`) VALUES
(1, 'Earphones', 200, '/images/c.jpg', 1, '', NULL, NULL),
(2, 'Headphones', 2000, '/images/c.jpg', 1, '', NULL, NULL),
(3, 'Speaker', 1500, '/images/d.jpg', 1, '', NULL, NULL),
(4, 'Voyager', 4000, '/images/e.jpg', 1, '', NULL, NULL),
(5, 'Calisto', 2000, '/images/f.jpg', 1, '', NULL, NULL),
(6, 'Black Wire', 3000, '/images/g.jpg', 1, '', NULL, NULL),
(7, 'Roku Streaming ', 5000, '/images/e4.jpg', 1, '', NULL, NULL),
(8, 'Roku Premier', 4000, '/images/e6.png', 1, '', NULL, NULL),
(9, 'Roku Express', 3000, '/images/e7.jpg', 1, '', NULL, NULL),
(10, 'Roku Ultra', 1000, '/images/g.jpg', 1, '', NULL, NULL),
(11, 'Alro Pro', 900, '/images/e8.jpg', 1, '', NULL, NULL),
(12, 'Alro Ultra', 1800, '/images/e9.jpg', 1, '', NULL, NULL),
(13, 'Go Pro', 550, '/images/h.jpg', 1, '', NULL, NULL),
(14, 'e-reader', 4000, '/images/c1.png', 1, '', NULL, NULL),
(15, 'smartphone stand', 2500, '/images/c2.jpg', 1, '', NULL, NULL),
(16, 'small power strip', 1000, '/images/c3.jpg', 1, '', NULL, NULL),
(17, 'Amazon Echo', 900, '/images/c4.jpg', 1, '', NULL, NULL),
(18, 'VR viewer', 1800, '/images/c5.jpg', 1, '', NULL, NULL),
(19, 'Home security camera', 4400, '/images/c6.jpg', 1, '', NULL, NULL),
(20, 'Anker PowerCore', 2000, '/images/d1.jpg', 1, '', NULL, NULL),
(21, 'Ring Stick', 1800, '/images/d2.jpg', 1, '', NULL, NULL),
(22, 'wireless earbuds', 1100, '/images/e.jpg', 1, '', NULL, NULL),
(23, 'camera lens kit', 5000, '/images/e.jpg', 1, '', NULL, NULL),
(24, 'flexible car mount', 6000, '/images/e2.jpg', 1, '', NULL, NULL),
(25, 'smart home assistant', 500, '/images/e3.jpg', 1, '', NULL, NULL),
(26, 'charging cables', 4000, '/images/l1.jpg', 1, '', NULL, NULL),
(27, 'storage box', 800, '/images/l2.jpg', 1, '', NULL, NULL),
(28, 'Tophome earbud', 550, '/images/l2.jpg', 1, '', NULL, NULL),
(29, 'POWERADD Energy', 4000, '/images/l3.jpg', 1, '', NULL, NULL),
(30, 'smartphone stand', 2500, '/images/e.jpg', 1, '', NULL, NULL),
(31, 'Tesla Coil ', 1000, '/images/f.jpg', 1, '', NULL, NULL),
(32, 'Amir clip', 900, '/images/g.jpg', 1, '', NULL, NULL),
(33, 'Travelambo RFID', 1800, '/images/h.jpg', 1, '', NULL, NULL),
(34, 'Samsung Evo', 4400, '/images/s3.png', 1, '', NULL, NULL),
(35, 'Streamlight 73001', 2000, '/images/d1.jpg', 1, '', NULL, NULL),
(36, 'Jelly Comb', 1800, '/images/s1.jpg', 1, '', NULL, NULL),
(37, 'Bellabeat Leaf', 1100, '/images/s2.jpg', 1, '', NULL, NULL),
(38, 'Bluetooth speaker', 5000, '/images/s4.jpg', 1, '', NULL, NULL),
(39, 'Marshall Acton', 6000, '/images/sm1.png', 1, '', NULL, NULL),
(40, 'Polar Vantage', 500, '/images/sm2.jpg', 1, '', NULL, NULL),
(41, 'Rangefinder', 4000, '/images/h.jpg', 1, '', NULL, NULL),
(42, 'storage box', 800, '/images/l2.jpg', 1, '', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tecshop_users`
--

CREATE TABLE `tecshop_users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `first_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `middle_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone_no` int(11) NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tecshop_users`
--

INSERT INTO `tecshop_users` (`id`, `first_name`, `middle_name`, `last_name`, `phone_no`, `email`, `address`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'test_f', 'test_m', 'test_l', 0, 'test@test.com', '', NULL, '$2y$10$NpLg8xxDkID6s6Q8GunohuIVK8i8TUXR9nY615P8ufkfQOzSb04Xi', NULL, '2021-01-10 14:27:32', '2021-01-10 14:27:32'),
(2, 'User_f', 'User_m', 'User_l', 0, 'user1@user.com', '', NULL, '$2y$10$O1KGLwAiTXmkrt6W898cQeageUmdkBOuTJ/gf97nkq75nR2E1M0iK', NULL, '2021-01-20 05:59:03', '2021-01-20 05:59:03'),
(4, 'Peter', 'John', 'James', 0, 'peter@peter.com', '', NULL, '$2y$10$39g8RqUot5WvklChnurRxOZcICacK4Wvsdt63ahRGdDkfWf7043bu', NULL, '2021-01-20 06:05:58', '2021-01-20 06:05:58'),
(6, 'Mary', 'Martha', 'Murkey', 0, 'mary@mary.com', '', NULL, '$2y$10$.q7LdceL0bBdios1Ii0Ld.7TjuqjmuTWaPha/kbvjk8r/SslnWn4i', NULL, '2021-01-20 06:09:12', '2021-01-20 06:09:12'),
(7, 'Derrick', 'Thomas', 'Jefferson', 0, 'demotest@test.com', '', NULL, '$2y$10$cM4AJFeBXkDCUSPikp9Ge.xon/J919V2GgJmL9VoyrKvcFGEsok/W', NULL, '2021-01-30 04:13:21', '2021-01-30 04:13:21'),
(8, 'Francis', 'm', 'j', 0, 'ceo@directcore.com', '', NULL, '$2y$10$ErhRtSLtIecfsZZkk2YTh.n0r0VM9G30Y3HZVgEyxIsw/QnSLxcA2', NULL, '2021-02-06 07:05:27', '2021-02-06 07:05:27'),
(9, 'ken', 'kevin', 'kent', 0, 'ken@kent.com', '', NULL, '$2y$10$4WbTpbA4ENIBFmNloci8oeMEhJV7OFE60SDETvgso/WuOqf3ni6M6', NULL, '2021-02-08 10:30:16', '2021-02-08 10:30:16'),
(10, 'dan', 'daniel', 'derrick', 0, 'dan@daniel.com', '', NULL, '$2y$10$k25q8xD2Phw7C5f5CyU2hOwTI.4JylVe19VBUnzVKpBLRG0a4xES2', NULL, '2021-02-08 11:01:30', '2021-02-08 11:01:30'),
(11, 'robert', 'ron', 'regan', 0, 'ron@ron.com', '', NULL, '$2y$10$1iZ1IWtK0MTAMtz3Bb0CgeQaankD0bw7WuhpuWI/KJjAwNPr2Nwcu', NULL, '2021-02-08 11:02:50', '2021-02-08 11:02:50'),
(12, 'robert', 'peterson', 'dan', 0, 'dan@dan.com', '', NULL, '$2y$10$C6imXcbaPBA6OLqSiylcdedwAgweiXDX38nouXysC0QJnhhnoYci2', NULL, '2021-02-08 11:05:07', '2021-02-08 11:05:07'),
(13, 'garry', 'john', 'tim', 0, 'tim@tim.com', '', NULL, '$2y$10$179fxT2VhpHR3yJIxkRJ8.7nzd6VyW2nfq2bSr3qsXTiiZUyad7K6', NULL, '2021-02-09 09:25:05', '2021-02-09 09:25:05'),
(15, 'kyle', 'clarke', 'YOUNG', 0, 'c@c.com', '', NULL, '$2y$10$7FrUu2AwVsTiy14rVgSshOSaiQbMnU1KOgZD9KLyxKGs2ptDEcGiS', NULL, '2021-02-09 09:27:55', '2021-02-09 09:27:55'),
(17, 'r', 'd', 'h', 0, 'h@h.com', '', NULL, '$2y$10$YTHS6Rrm.rTqsOQxoup.newo571/xYyCSJrRjJxEHJV9ZOPTCKbve', NULL, '2021-02-09 09:30:13', '2021-02-09 09:30:13'),
(18, 'ty', 'df', 'gdf', 0, 'j@j.com', '', NULL, '$2y$10$j1Iwb3kP2Q1NcDcg3uPv1u87BONl7.zhG9I2zXNt0JaoWS5tLZy2G', NULL, '2021-02-09 09:31:08', '2021-02-09 09:31:08'),
(19, 'Paul', 'james', 'ederson', 0, 'james@james.com', '', NULL, '$2y$10$ocnI071EgdxqxgTnYhZZ4uBlHF79vIhY0IdQhDSPLnJpvNctMj7fi', NULL, '2021-02-09 09:33:15', '2021-02-09 09:33:15'),
(21, 'anita', 'khan', 'patel', 0, 'ka@k.com', '', NULL, '$2y$10$4Gn6DpoGTTjFPO/mDN3/neGavT25PwQx0GVvMlFBd8/NrV4kUzNVi', NULL, '2021-02-09 09:36:23', '2021-02-09 09:36:23');

-- --------------------------------------------------------

--
-- Table structure for table `tecshop_wishlists`
--

CREATE TABLE `tecshop_wishlists` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tecshop_users_id` bigint(20) UNSIGNED NOT NULL,
  `tecshop_products_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tecshop_wishlists`
--

INSERT INTO `tecshop_wishlists` (`id`, `tecshop_users_id`, `tecshop_products_id`, `created_at`, `updated_at`) VALUES
(2, 1, 80, '2021-03-11 08:04:50', '2021-03-11 08:04:50'),
(3, 1, 81, '2021-03-11 08:33:58', '2021-03-11 08:33:58');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'BEN', 'benjaminochieng99@gmail.com', NULL, '$2y$10$GULukPz.PZca6Zn2wnEnb.kwduxm6OMuyOTYO9CTAMNZhULdL46r6', NULL, '2020-11-02 06:06:07', '2020-11-02 06:06:07'),
(2, 'Francis', 'francis@directcore.com', NULL, '$2y$10$2VhYPiswDwxXYEnYVSr.OeqXLeca9xznbBRqb8NQ/KbUJY9IbM6ki', NULL, '2020-11-09 04:09:12', '2020-11-09 04:09:12'),
(4, 'BENJAMIN', 'b.ochieng@directcore.com', NULL, '$2y$10$iroNAVIVeoBXK4i.k.z6FOQqAp0gSR03ER..GoxKS2Ou2v.Y21Zw2', NULL, '2020-11-09 09:22:38', '2020-11-09 09:22:38'),
(5, 'James', 'hello@gmail.com', NULL, '$2y$10$rvQgBq/Cx5f1WPEzMvUL2.VnjHJO4Yy7Nik61FE4lH9gLoP00Rb2u', NULL, '2020-11-17 04:57:24', '2020-11-17 04:57:24'),
(19, 'Muli', 'cmuli@directcore.com', NULL, '$2y$10$l2NnmFZ4V3RIrKob6XvQWOCTBEI3Mw8XJfWeoBnOgs9UPbntT97Qm', NULL, '2020-11-18 05:57:15', '2020-11-18 05:57:15'),
(21, 'User', 'user@user.com', NULL, '$2y$10$zCVYNsjgZnVhQfqTPhOcHeINAE43uZfg3/bOKJrTEP2czHXjjLRPG', NULL, '2020-11-20 07:29:34', '2020-11-20 07:29:34'),
(22, 'User2', 'user2@user.com', NULL, '$2y$10$7goxPlIghIgbkGxQUZBjkuDQ0VvF5FdEn0efzQycEVN3lvl4XHQxW', NULL, '2020-11-21 06:03:39', '2020-11-21 06:03:39');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `carts`
--
ALTER TABLE `carts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `completed_orders`
--
ALTER TABLE `completed_orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `data`
--
ALTER TABLE `data`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `employees`
--
ALTER TABLE `employees`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `items`
--
ALTER TABLE `items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `items_ordered`
--
ALTER TABLE `items_ordered`
  ADD PRIMARY KEY (`id`),
  ADD KEY `items_ordereds_order_id_foreign` (`order_id`),
  ADD KEY `items_ordereds_tecshop_products_id_foreign` (`tecshop_products_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_history`
--
ALTER TABLE `order_history`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `payments_order_id_foreign` (`order_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shops`
--
ALTER TABLE `shops`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tecshop_carts`
--
ALTER TABLE `tecshop_carts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tecshop_products`
--
ALTER TABLE `tecshop_products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tecshop_users`
--
ALTER TABLE `tecshop_users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `tecshop_users_email_unique` (`email`);

--
-- Indexes for table `tecshop_wishlists`
--
ALTER TABLE `tecshop_wishlists`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tecshop_wishlists_tecshop_users_id_foreign` (`tecshop_users_id`),
  ADD KEY `tecshop_wishlists_tecshop_products_id_foreign` (`tecshop_products_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `carts`
--
ALTER TABLE `carts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `completed_orders`
--
ALTER TABLE `completed_orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `data`
--
ALTER TABLE `data`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `employees`
--
ALTER TABLE `employees`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `items`
--
ALTER TABLE `items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `items_ordered`
--
ALTER TABLE `items_ordered`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=134;

--
-- AUTO_INCREMENT for table `order_history`
--
ALTER TABLE `order_history`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=125;

--
-- AUTO_INCREMENT for table `shops`
--
ALTER TABLE `shops`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `tecshop_carts`
--
ALTER TABLE `tecshop_carts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tecshop_products`
--
ALTER TABLE `tecshop_products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `tecshop_users`
--
ALTER TABLE `tecshop_users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `tecshop_wishlists`
--
ALTER TABLE `tecshop_wishlists`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `items_ordered`
--
ALTER TABLE `items_ordered`
  ADD CONSTRAINT `items_ordereds_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `items_ordereds_tecshop_products_id_foreign` FOREIGN KEY (`tecshop_products_id`) REFERENCES `products` (`id`);

--
-- Constraints for table `payments`
--
ALTER TABLE `payments`
  ADD CONSTRAINT `payments_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `tecshop_wishlists`
--
ALTER TABLE `tecshop_wishlists`
  ADD CONSTRAINT `tecshop_wishlists_tecshop_products_id_foreign` FOREIGN KEY (`tecshop_products_id`) REFERENCES `products` (`id`),
  ADD CONSTRAINT `tecshop_wishlists_tecshop_users_id_foreign` FOREIGN KEY (`tecshop_users_id`) REFERENCES `tecshop_users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
