-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Sep 27, 2023 at 12:43 PM
-- Server version: 8.0.30
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mecom`
--

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `id` bigint UNSIGNED NOT NULL,
  `brand_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `brand_slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `brand_image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`id`, `brand_name`, `brand_slug`, `brand_image`, `created_at`, `updated_at`) VALUES
(2, 'Nokia', 'nokia', 'upload/brand/1777536302635427.png', '2023-09-19 22:02:08', '2023-09-20 00:18:38'),
(3, 'SS1', 'ss1', 'upload/brand/1777535688656113.png', '2023-09-20 00:08:52', '2023-09-20 00:08:52'),
(4, 'ARMAN', 'arman', 'upload/brand/1777538194593921.png', '2023-09-20 00:48:42', '2023-09-20 00:48:42'),
(5, 'Apple', 'apple', 'upload/brand/1778170583185193.webp', '2023-09-27 00:20:15', '2023-09-27 00:20:15'),
(6, 'Samsung', 'samsung', 'upload/brand/1778170594515985.webp', '2023-09-27 00:20:26', '2023-09-27 00:20:26'),
(7, 'Xiaomi', 'xiaomi', 'upload/brand/1778170602901611.webp', '2023-09-27 00:20:34', '2023-09-27 00:20:34'),
(8, 'Asus', 'asus', 'upload/brand/1778170616901920.webp', '2023-09-27 00:20:47', '2023-09-27 00:20:47');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint UNSIGNED NOT NULL,
  `category_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `category_name`, `category_slug`, `category_image`, `created_at`, `updated_at`) VALUES
(1, 'Male', 'Products for male', 'upload/category/1777860860822487.jpg', '2023-09-23 14:17:21', '2023-09-23 14:17:21'),
(2, 'SmartPhone', 'smart phone', 'upload/category/1778170390274148.jpg', '2023-09-27 00:17:11', '2023-09-27 00:17:11'),
(3, 'Watch', 'watch', 'upload/category/1778170403586955.jpg', '2023-09-27 00:17:24', '2023-09-27 00:17:24'),
(4, 'Tablet', 'tablet', 'upload/category/1778170422554828.jpg', '2023-09-27 00:17:42', '2023-09-27 00:17:42'),
(5, 'Laptop', 'Laptop', 'upload/category/1778170443735166.jpg', '2023-09-27 00:18:02', '2023-09-27 00:18:02'),
(6, 'Security Component', 'Security Component', 'upload/category/1778170522536135.jpg', '2023-09-27 00:19:17', '2023-09-27 00:19:17'),
(7, 'Network', 'Network', 'upload/category/1778170535498782.jpg', '2023-09-27 00:19:30', '2023-09-27 00:19:30'),
(8, 'CCTV', 'CCTV', 'upload/category/1778170560990426.jpg', '2023-09-27 00:19:54', '2023-09-27 00:19:54');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
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

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2023_09_18_033833_create_brands_table', 2),
(6, '2023_09_20_114702_create_sliders_table', 3),
(8, '2023_09_23_192425_create_categories_table', 4),
(9, '2023_09_23_213959_create_products_table', 5);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
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

CREATE TABLE `products` (
  `id` bigint UNSIGNED NOT NULL,
  `brand_id` int NOT NULL,
  `category_id` int NOT NULL,
  `product_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_qty` int NOT NULL,
  `product_tags` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_size` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_color` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `selling_price` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `discount_price` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `short_desc` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `long_desc` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `vendor_id` int DEFAULT NULL,
  `hot_deals` int DEFAULT NULL,
  `featured` int DEFAULT NULL,
  `special_offer` int DEFAULT NULL,
  `special_deals` int DEFAULT NULL,
  `status` int NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `brand_id`, `category_id`, `product_name`, `product_slug`, `product_code`, `product_qty`, `product_tags`, `product_size`, `product_color`, `selling_price`, `discount_price`, `short_desc`, `long_desc`, `product_image`, `vendor_id`, `hot_deals`, `featured`, `special_offer`, `special_deals`, `status`, `created_at`, `updated_at`) VALUES
(1, 3, 1, 'Bags', 'bags', 'B', 120, 'leather, woman', 'M', 'Red', '1200', '300', 'Woman Carry Bag', 'Woman Carry Bag', 'upload/product/1778024515452422.jpg', 12, 1, NULL, 1, 1, 0, '2023-09-25 09:38:34', '2023-09-26 21:48:49'),
(2, 2, 1, 'Bags', 'bags', 'B', 120, 'leather, woman', 'M', 'Red', '1200', '150', 'Woman Carry Bag', 'Woman Carry Bag', 'upload/product/1778010853896939.jpeg', 2, NULL, NULL, NULL, NULL, 0, '2023-09-25 06:01:25', '2023-09-26 21:48:50'),
(3, 2, 1, 'Bags', 'bags', 'B', 120, 'leather, woman', 'M', 'Red', '1200', '300', 'Woman Carry Bag', 'Woman Carry Bag', 'upload/product/1778023796352698.jpg', 5, NULL, NULL, NULL, NULL, 0, '2023-09-25 09:27:08', '2023-09-26 21:48:51'),
(5, 3, 1, 'A4TECH Bloody A91 Inrared Micro Switch Gaming Mouse', 'a4tech bloody a91 inrared micro switch gaming mouse', 'PCM', 120, 'mouse, computer, accessories', 'M', 'Black', '1200', '20', 'A4Tech Mouse', 'A4Tech Mouse', 'upload/product/1778161631125598.jpg', 2, 1, 1, 1, 1, 1, '2023-09-26 21:57:58', '2023-09-26 21:57:58'),
(6, 4, 1, 'Check 3 Spectrophotometer for Color Measurement', 'check 3 spectrophotometer for color measurement', 'DC', 120, 'Datacolor', 'M', 'White', '2000', '20', 'Check 3 Spectrophotometer for Color Measurement', 'Check 3 Spectrophotometer for Color Measurement | Datacolor', 'upload/product/1778161832648570.jpeg', 5, NULL, NULL, NULL, NULL, 1, '2023-09-26 22:01:10', '2023-09-26 22:01:10'),
(7, 4, 1, 'Hoco J103 22.5W 10000mAh Discovery Edition Power Bank', 'hoco j103 22.5w 10000mah discovery edition power bank', 'PB', 500, 'mobile, accessories', 'M', 'Transparent', '200', '2', 'Hoco J103 22.5W 10000mAh Discovery Edition Power Bank', 'Hoco J103 22.5W 10000mAh Discovery Edition Power Bank', 'upload/product/1778161891052608.jpg', 5, NULL, NULL, NULL, NULL, 1, '2023-09-26 22:02:06', '2023-09-26 22:02:06'),
(8, 4, 1, 'Tech PC 10th Gen Core i3 10100', 'tech pc 10th gen core i3 10100', 'PC', 12, 'PC, computer', 'M', 'None', '12000', '150', 'Tech PC 10th Gen Core i3 10100', 'Tech PC 10th Gen Core i3 10100 | Tech Village Computer Shop', 'upload/product/1778161968958640.webp', 5, NULL, NULL, NULL, NULL, 1, '2023-09-26 22:03:20', '2023-09-26 22:03:20'),
(9, 4, 1, 'ZKTeco GL300 Intelligent Fingerprinting Glassdoor Lock', 'zkteco gl300 intelligent fingerprinting glassdoor lock', 'DL', 12, 'lock, sensor', 'M', 'Black', '5000', '100', 'ZKTeco GL300 Intelligent Fingerprinting Glassdoor Lock', 'ZKTeco GL300 Intelligent Fingerprinting Glassdoor Lock', 'upload/product/1778162030186779.jpg', 5, NULL, NULL, NULL, NULL, 1, '2023-09-26 22:04:18', '2023-09-26 22:04:18'),
(10, 4, 1, 'ZKTeco MultiBio 800-H', 'zkteco multibio 800-h', 'DC', 12, 'sensor, lock', 'M', 'Black', '1200', '1150', 'ZKTeco MultiBio 800-H Face Recognition', 'ZKTeco MultiBio 800-H Face Recognition Time Attendance And Access Control Terminal', 'upload/product/1778162108724820.jpg', 5, NULL, NULL, NULL, NULL, 1, '2023-09-26 22:05:33', '2023-09-26 22:05:33'),
(11, 4, 1, 'Dahua Imou IPC-T22AP 2MP IR Dome Network Camera', 'dahua imou ipc-t22ap 2mp ir dome network camera', 'Imou IPC-T22AP', 500, 'wifi, camera', 'M', 'White', '5000', '4800', 'DAHUA IMOU IPC-T22AP IS ONE KIND OF 2MP IR DOME NETWORK CAMERA. IT FEATURES WITH 1/2.8” 2 MEGAPIXEL PROGRESSIVE CMOS, 2MP (1920 X 1080), NIGHT VISION: 30M (98FT) DISTANCE, 2.8/3.6/6MM FIXED LENS, FIELD OF VIEW: 2.8MM', 'FEATURES\r\nSensor: 1/2.8 \" Progressive Scan CMOS\r\nMatrix size: 2.1 Mpx, Night Vision\r\nResolution: 1920 x 1080 px\r\nLens: 2.8 mm; Ethernet : 100 Mbpse', 'upload/product/1778169491543682.webp', 5, NULL, NULL, NULL, NULL, 1, '2023-09-27 00:02:54', '2023-09-27 00:02:54'),
(12, 4, 1, 'DH-HAC-EW2501P 5MP HDCVI IR-Fisheye Camera', 'dh-hac-ew2501p 5mp hdcvi ir-fisheye camera', 'DH-HAC-EW2501P', 100, 'analog, camera', 'M', 'White', '6000', NULL, 'The Dahua HAC-EW2501P 5MP HDCVI IR-Fisheye Camera has 1/2.8” 5 Megapixel progressive scan CMOS. In this camera triple-stream encoding is · H.265&H.264.', 'FEATURES\r\n1/2.8\" 2Megapixel STARVIS™ CMOS\r\nPowerful 25x optical zoom\r\nStarlight Technology\r\n120dB true WDR, 3D DNR\r\nMax. 25fps@1080P\r\nIR distance up to 100m', 'upload/product/1778169613571084.webp', 5, NULL, NULL, NULL, NULL, 1, '2023-09-27 00:04:50', '2023-09-27 00:04:50'),
(13, 4, 1, 'Fanvil X4G Color Display Executive PoE Gigabit IP Phone Set', 'fanvil x4g color display executive poe gigabit ip phone set', 'X4G', 12, 'phone, HD Voice', 'M', 'Black', '7500', '7200', 'THE X4G IS A FEATURE-RICH SIP PHONE FOR BUSINESS. THE 4-LINE IP PHONE HAS BEEN DESIGNED BY PURSUING EASE OF USE IN EVEN THE TINIEST DETAILS. DUAL 10/100 MBPS(X4G: 10/100/1000 MBPS) NETWORK PORTS WITH INTEGRATED POE ARE IDEAL FOR EXTENDED NETWORK USE.', 'FEATURES\r\nPOE, HD voice\r\n4 SIP Lines\r\n2.8\" +2.4\" Color display\r\n2*100 Base-T Ethernet\r\n30 DSS Keys\r\nGigabit (10/100/1000Mbps Ethernet) with Adapter', 'upload/product/1778169741658595.webp', 5, NULL, NULL, NULL, NULL, 1, '2023-09-27 00:06:53', '2023-09-27 00:06:53'),
(14, 4, 1, 'ZKTeco TS2011 Tripod Turnstile With Controller And RFID Reader', 'zkteco ts2011 tripod turnstile with controller and rfid reader', 'TS2011', 10, 'security, entrance', 'L', 'Silver', '75000', '72500', 'Alloy Steel Tripod Hub Prevents Mechanical Wear', 'FEATURES\r\nCard capacity : 30,000\r\nEvent capacity : 100,000\r\nFlow Rate : 25-48 passaage/minute \r\nWorking Environment  0 to +40°C', 'upload/product/1778169879995231.webp', 5, NULL, NULL, NULL, NULL, 1, '2023-09-27 00:09:04', '2023-09-27 00:09:04');

-- --------------------------------------------------------

--
-- Table structure for table `sliders`
--

CREATE TABLE `sliders` (
  `id` bigint UNSIGNED NOT NULL,
  `slider_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slider_desc` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slider_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sliders`
--

INSERT INTO `sliders` (`id`, `slider_title`, `slider_desc`, `slider_image`, `created_at`, `updated_at`) VALUES
(4, '1', '1', 'upload/slider/1777567771922100.png', '2023-09-20 08:38:50', '2023-09-20 08:38:50'),
(5, '2', '2', 'upload/slider/1777567796048153.png', '2023-09-20 08:39:13', '2023-09-20 08:39:13'),
(6, '3', '3', 'upload/slider/1777567804869748.jpeg', '2023-09-20 08:39:21', '2023-09-20 08:39:21'),
(7, '4', '4', 'upload/slider/1777567811576249.jpeg', '2023-09-20 08:39:27', '2023-09-20 08:39:27'),
(8, '5', '5', 'upload/slider/1777567819966297.webp', '2023-09-20 08:39:35', '2023-09-20 08:39:35'),
(9, '6', '6', 'upload/slider/1777567829757440.jpeg', '2023-09-20 08:39:45', '2023-09-20 08:39:45'),
(10, '7', '7', 'upload/slider/1777567837333304.jpg', '2023-09-20 08:39:52', '2023-09-20 08:39:52'),
(11, '8', '8', 'upload/slider/1777567844596280.jpg', '2023-09-20 08:39:59', '2023-09-20 08:39:59'),
(12, '9', '9', 'upload/slider/1777567852048717.png', '2023-09-20 08:40:06', '2023-09-20 08:40:06'),
(13, '10', '10', 'upload/slider/1777567863045333.jpg', '2023-09-20 08:40:16', '2023-09-20 08:40:16');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `photo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` text COLLATE utf8mb4_unicode_ci,
  `role` enum('admin','vendor','user') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'user',
  `status` enum('active','inactive') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `username`, `email`, `email_verified_at`, `password`, `photo`, `phone`, `address`, `role`, `status`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'admin', 'admin@gmail.com', NULL, '$2y$10$jfRZW71NdNnw.xzzbvMaPudAiGEMLRiHkBGVs4.RvrmGdeaeSKwjS', NULL, '12345678910', 'CTG', 'admin', 'active', NULL, NULL, NULL),
(2, 'ARMAN Vendor', 'vendor', 'vendor@gmail.com', NULL, '$2y$10$nGl6iB1XyHirdsIWLf1jL.6Q6DJHYNBjDNl6KFeVvpiqAbP6hQ06.', NULL, '12345678910', 'CTG', 'vendor', 'active', NULL, NULL, NULL),
(3, 'User', 'user', 'user@gmail.com', NULL, '$2y$10$B7NUYNTq1f616zkQdbwbgunXVrfl9xXtnMCR7A3KeDtjsgMjxTHjS', NULL, '12345678910', 'CTG', 'user', 'active', NULL, NULL, NULL),
(4, 'Emely Bogisich', NULL, 'sdamore@example.org', '2023-09-03 05:52:46', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'https://via.placeholder.com/68x68.png/0044ee?text=quibusdam', '1-256-348-3415', '491 Maggie Island\nSouth Emilio, HI 91681', 'user', 'active', 'TFA8YdPHpN', '2023-09-03 05:52:46', '2023-09-03 05:52:46'),
(5, 'Myles Weber', 'fVendor1', 'blanda.grace@example.com', '2023-09-03 05:52:46', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'https://via.placeholder.com/68x68.png/00aadd?text=voluptas', '281-635-3466', '7112 Lily Brook Apt. 377\nRatkeview, KY 16195', 'vendor', 'active', 'hw6lCvQ8N9', '2023-09-03 05:52:46', '2023-09-03 05:52:46'),
(6, 'Prof. Shanie Pfeffer', NULL, 'ines20@example.com', '2023-09-03 05:52:46', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'https://via.placeholder.com/68x68.png/0066dd?text=rem', '(640) 855-2235', '8966 Winston Terrace\nOrtizville, GA 72839-1134', 'user', 'inactive', 'snqSjGSCAY', '2023-09-03 05:52:46', '2023-09-03 05:52:46'),
(7, 'Abraham Muller III', NULL, 'nharber@example.org', '2023-09-03 05:52:46', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'https://via.placeholder.com/68x68.png/00ccaa?text=sunt', '1-440-489-0942', '7039 Emard Motorway Apt. 059\nWiegandfurt, MI 68791', 'vendor', 'inactive', 'fPEOwD2us9', '2023-09-03 05:52:46', '2023-09-03 05:52:46'),
(8, 'Darrick Pouros', NULL, 'tgerhold@example.org', '2023-09-03 05:52:46', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'https://via.placeholder.com/68x68.png/00bb77?text=reiciendis', '959.959.3630', '181 Reina Prairie Apt. 580\nSawaynchester, MN 57990', 'user', 'inactive', 'omJzdNsLkK', '2023-09-03 05:52:46', '2023-09-03 05:52:46'),
(9, 'Elsa Beahan', NULL, 'vicky.wisoky@example.net', '2023-09-03 05:52:46', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'https://via.placeholder.com/68x68.png/00ee33?text=quos', '+1-743-519-7498', '7674 Botsford Cliff\nVladimirport, OH 69452', 'user', 'active', 'ebyLbbBN46', '2023-09-03 05:52:46', '2023-09-03 05:52:46'),
(10, 'Daniella Swift', NULL, 'sherman@example.org', '2023-09-03 05:52:46', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'https://via.placeholder.com/68x68.png/00ff77?text=voluptatum', '+1-586-632-4159', '9725 Lehner Square\nRansomchester, ID 75261-4088', 'vendor', 'inactive', 'u9pCALFKmq', '2023-09-03 05:52:46', '2023-09-03 05:52:46'),
(11, 'Mrs. Marilou Botsford', NULL, 'horn@example.org', '2023-09-03 05:52:46', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'https://via.placeholder.com/68x68.png/00aa55?text=temporibus', '775-534-3417', '24488 Meda Mountains\nFeilstad, ND 51771', 'vendor', 'inactive', 'yujdsrM6GD', '2023-09-03 05:52:46', '2023-09-03 05:52:46'),
(12, 'Jevon Torphy III', 'fVendor2', 'zoila84@example.net', '2023-09-03 05:52:46', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'https://via.placeholder.com/68x68.png/0066dd?text=culpa', '+1 (442) 250-9004', '800 Brando Groves Suite 869\nLeslyburgh, IA 96579', 'vendor', 'active', 'LGkVpHd0pe', '2023-09-03 05:52:46', '2023-09-03 05:52:46'),
(13, 'Devyn Gutmann', NULL, 'carolanne89@example.org', '2023-09-03 05:52:46', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'https://via.placeholder.com/68x68.png/00ee99?text=eligendi', '+1-641-625-1728', '68849 Lynch Lodge\nPaucekchester, WV 97197', 'admin', 'active', 'mYnRWH9Oe6', '2023-09-03 05:52:46', '2023-09-03 05:52:46'),
(14, 'Miss Kiana Spinka Jr.', NULL, 'feeney.janiya@example.com', '2023-09-03 05:52:46', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'https://via.placeholder.com/68x68.png/001122?text=iure', '1-989-374-2368', '95234 Kling Mill Apt. 206\nSouth Providenci, UT 16290-7557', 'admin', 'inactive', 'wu4sWEOpti', '2023-09-03 05:52:46', '2023-09-03 05:52:46'),
(15, 'Ross Greenfelder I', NULL, 'wolf.will@example.org', '2023-09-03 05:52:46', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'https://via.placeholder.com/68x68.png/00aa55?text=qui', '720-238-3890', '12083 Haag Mountains\nLake Letha, IA 17068', 'user', 'inactive', 'pijywy8vDy', '2023-09-03 05:52:46', '2023-09-03 05:52:46'),
(16, 'Grace Rolfson', NULL, 'nola.ryan@example.org', '2023-09-03 05:52:46', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'https://via.placeholder.com/68x68.png/00aa44?text=quae', '1-360-284-2877', '338 Schultz Crossing\nNorth Tristontown, RI 71513', 'admin', 'inactive', '6SnZhPm6TB', '2023-09-03 05:52:46', '2023-09-03 05:52:46'),
(17, 'Adrienne Auer', NULL, 'lweber@example.com', '2023-09-03 05:52:46', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'https://via.placeholder.com/68x68.png/0044ff?text=in', '310-556-0323', '33783 Tracey Union Apt. 639\nXanderfurt, ND 74940-0157', 'admin', 'active', 'I397aNFpJf', '2023-09-03 05:52:46', '2023-09-03 05:52:46'),
(18, 'Shanie McLaughlin', NULL, 'presley32@example.com', '2023-09-03 05:52:46', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'https://via.placeholder.com/68x68.png/009900?text=maiores', '256-786-4392', '947 McDermott Burgs\nNorth Vellaborough, ND 84184-0682', 'admin', 'inactive', 'BYMKuouTGx', '2023-09-03 05:52:46', '2023-09-03 05:52:46'),
(19, 'sanjida', NULL, 'sanjida@gmail.com', NULL, '$2y$10$J42P4.g.64ykV/xknpPazOCDeVKPZ7ioaXpEhoEyueCU5LpKdqJTW', NULL, NULL, NULL, 'user', 'active', NULL, '2023-09-03 21:46:41', '2023-09-03 21:46:41'),
(20, 'ARIMANU', NULL, 'jj@bd.com', NULL, '$2y$10$XdQdwQ3RhXaZR4FP/Ig8..H/Fad6mWS0uMgpKRhRaGgsNwZL/VC6C', NULL, NULL, NULL, 'user', 'active', NULL, '2023-09-17 00:53:33', '2023-09-17 00:53:33'),
(21, 'saima', NULL, 'saima@gmail.com', NULL, '$2y$10$0ik3OwIzXe4L9cUnvkhzuusTjdGxMENXWKDbmfMN7xcowDdtZHAQS', NULL, NULL, NULL, 'user', 'active', NULL, '2023-09-17 21:24:22', '2023-09-17 21:24:22');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
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
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

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
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `sliders`
--
ALTER TABLE `sliders`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
