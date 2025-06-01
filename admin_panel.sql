-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 01, 2025 at 08:35 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `admin_panel`
--

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Electronics', '2025-05-27 05:55:51', '2025-05-30 11:19:33'),
(2, 'Fashion\r\n', '2025-05-27 05:58:23', '2025-05-27 05:58:23'),
(5, 'Personal Care', '2025-05-31 07:06:42', '2025-05-31 07:06:42');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `total_jobs` int(11) NOT NULL,
  `pending_jobs` int(11) NOT NULL,
  `failed_jobs` int(11) NOT NULL,
  `failed_job_ids` longtext NOT NULL,
  `options` mediumtext DEFAULT NULL,
  `cancelled_at` int(11) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `finished_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(4, '2025_05_25_061204_add_is_admin_to_users_table', 2),
(5, '2025_05_25_073925_create_categories_table', 3),
(6, '2025_05_25_074129_create_products_table', 4);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `price` decimal(8,2) NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `description`, `price`, `category_id`, `created_at`, `updated_at`) VALUES
(1, 'Mehroon T-Shirt', 'Plain Mehroon T-Shirt With logo', 1300.00, 2, '2025-05-28 09:47:23', '2025-05-29 00:31:25'),
(2, 'Classic Denim Jacket', 'Stylish and durable denim jacket for all seasons.', 3200.00, 2, '2025-05-28 09:50:49', '2025-05-28 09:50:49'),
(3, 'Bluetooth Headphoness', 'Wireless headphones with noise cancellation and HD sound.', 2500.00, 1, '2025-05-28 09:51:13', '2025-05-31 07:46:38'),
(5, 'Power Bank 20000mah', 'High-capacity power bank with fast charging support.', 4500.00, 1, '2025-05-28 09:52:18', '2025-05-29 00:32:25'),
(6, 'Leather Wallet', 'Premium leather wallet with multiple compartments.', 2600.00, 2, '2025-05-28 09:52:45', '2025-05-28 09:52:45'),
(8, 'Wireless Mouse', 'Smooth and ergonomic mouse with long battery life.', 1600.00, 1, '2025-05-28 09:54:13', '2025-05-28 09:54:13'),
(10, 'Sunglasses', 'Stylish aviator sunglasses with UV400 protection.', 1000.00, 2, '2025-05-28 09:56:16', '2025-05-28 09:56:16'),
(12, 'Casual Loafers', 'Stylish and comfortable loafers for men', 2000.00, 2, '2025-05-28 09:57:35', '2025-05-28 09:57:35'),
(15, 'Lether Belt', 'Geniune Leather Belt', 900.00, 2, '2025-05-29 00:38:58', '2025-05-29 00:38:58'),
(16, 'Smart LED TV', 'Full HD Smart LED TV with built-in apps and HDMI/USB ports.', 52999.00, 1, '2025-05-31 07:10:39', '2025-05-31 07:10:39'),
(17, 'Hair Dryer 1200W', 'Compact hair dryer with 2 heat settings and foldable handle.', 2499.00, 1, '2025-05-31 07:11:21', '2025-05-31 07:11:21'),
(18, 'Sports Sneakers', 'Lightweight running shoes with breathable fabric and durable sole', 2300.00, 2, '2025-05-31 07:11:54', '2025-05-31 07:11:54'),
(19, 'Beard Trimmer', 'Rechargeable beard trimmer with adjustable length settings.', 1850.00, 1, '2025-05-31 07:12:22', '2025-05-31 07:12:22'),
(20, 'Men\'s Cotton T-Shirt', 'Soft cotton round-neck T-shirt in various colors and sizes.', 1650.00, 2, '2025-05-31 07:13:05', '2025-05-31 07:13:05'),
(21, 'Ladies Handbag - Leather', 'Stylish leather handbag with gold hardware and zipper compartments.', 3200.00, 2, '2025-05-31 07:13:31', '2025-05-31 07:13:31'),
(22, 'Bluetooth Speaker', 'Compact speaker with deep bass and 10-hour playtime.', 4250.00, 1, '2025-05-31 07:15:25', '2025-05-31 07:15:25'),
(23, 'USB-C Fast Charger 25W', 'Quick charge adapter for smartphones and tablets.', 3100.00, 1, '2025-05-31 07:15:54', '2025-05-31 07:15:54'),
(24, 'Rose Water Spray', 'Refreshing face mist with natural rose extracts.', 250.00, 5, '2025-05-31 07:16:22', '2025-05-31 07:16:22'),
(25, 'Women’s Casual Kurti', 'Printed cotton kurti for everyday wear.', 3000.00, 2, '2025-05-31 07:16:58', '2025-05-31 07:16:58'),
(27, 'Smart Watch', 'Water Proof Smart Watch', 3750.00, 1, '2025-05-31 07:46:15', '2025-05-31 07:46:15'),
(28, 'T_Shirt', 'Plain Mehrron T Shirt', 1500.00, 2, '2025-05-31 07:53:27', '2025-05-31 07:53:40');

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('cbZzY5mX1T3dZqPMICZfZASxImEUrUdBpAsverSS', 3, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/136.0.0.0 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiNWVCcHl5aVBTaE11eWw0bEhNRjlENjNyeFlGYzhKVTNpdlc5cVp4MCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9kYXNoYm9hcmQiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX1zOjUwOiJsb2dpbl93ZWJfNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aTozO30=', 1748696084);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `is_admin` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `is_admin`) VALUES
(1, 'Shoaib Khan', 'shoaibkhan1447026@gmail.com', NULL, '$2y$12$hkcWUzPJNDf/dg.xuYOBtei0beCrmX1rTVS9RnDuTEUnQJ9.AY4re', NULL, '2025-05-25 01:01:24', '2025-05-25 01:01:24', 0),
(3, 'Admin', 'admin@gmail.com', NULL, '$2y$12$Ob7vlJzbgYBo/XKZbP2BRuhZu3lMC31MyGI3U/mFu1mXoXHDG2CZG', NULL, '2025-05-28 08:54:15', '2025-05-28 08:54:15', 1),
(4, 'Saiyyan', 'saiyan@gmail.com', NULL, '$2y$12$3xCbh4ccesBad.V.sVexyuCqjgmqLhG7eW.usBGZgeYUvV4TjH6U.', NULL, '2025-05-29 01:07:38', '2025-05-29 01:07:38', 0),
(5, 'Kinza', 'kinza@gmail.com', NULL, '$2y$12$dRIMpxy62LnUqVGJwhO1ledsnJZ2Mg9YhOj8H7ALv.rCsXLaEfi4m', NULL, '2025-05-29 01:10:58', '2025-05-29 01:10:58', 0),
(6, 'Shayan', 'shayan@gmail.com', NULL, '$2y$12$.ervNS1RnIE9kHQOVHPTUOQu9NsBMN3Hun3vlnRkuHfc442YCVnqS', NULL, '2025-05-29 01:11:43', '2025-05-29 01:11:43', 0),
(7, 'Rahat', 'rahat@gmail.com', NULL, '$2y$12$utHlxL.z9wa8RUww5A/EbumNFjJx1JVfTMMDn4mAXl94Ceu31CKWu', NULL, '2025-05-30 10:26:02', '2025-05-30 10:26:02', 0),
(8, 'khalid', 'khalid@gmail.com', NULL, '$2y$12$4kR7lqHZXWZ/wiHmYaMOC.dlADtf7tQC1EhsD3Nys0YffkmxadM4a', NULL, '2025-05-30 10:47:00', '2025-05-30 10:47:00', 0),
(9, 'john', 'john@gmail.com', NULL, '$2y$12$ahs.453m/a.FYJDerlLcleD53xfScOl2co3jvS9qfLx9ophQEoQ.C', NULL, '2025-05-30 11:02:02', '2025-05-30 12:01:49', 0),
(11, 'pushpaa', 'pushpa@gmail.com', NULL, '$2y$12$ACr6tF7QosXRWMUptxh5eOdOpMwhX72HlvAOSMm5E5UUPEm5hhCnW', NULL, '2025-05-30 12:06:07', '2025-05-30 12:06:31', 0),
(12, 'naina', 'naina@gmail.com', NULL, '$2y$12$aiFq/D.WoxXJm3ZxwsT9H.JG50bGF/sT..6mD5GP1p0aYST2f/Tam', NULL, '2025-05-31 07:47:12', '2025-05-31 07:47:12', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_name_unique` (`name`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_category_id_foreign` (`category_id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

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
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
