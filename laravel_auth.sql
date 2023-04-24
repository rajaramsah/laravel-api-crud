-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 24, 2023 at 07:47 PM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laravel_auth`
--

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `personal_access_tokens`
--

INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `expires_at`, `created_at`, `updated_at`) VALUES
(1, 'App\\Models\\User', 2, 'ram@example.com', '5119e0aea56b9e14514dd85b47d896dfe8c8019bf40ab2c4b81513da25f21b88', '[\"*\"]', NULL, NULL, '2023-03-05 03:59:43', '2023-03-05 03:59:43'),
(4, 'App\\Models\\User', 3, 'ram@example.com', 'd906d91bcdf3644069794c2e0cefd9e1489a8a7e00c763046919b07da15023fb', '[\"*\"]', '2023-03-05 05:05:32', NULL, '2023-03-05 05:04:44', '2023-03-05 05:05:32'),
(5, 'App\\Models\\User', 3, 'ram@example.com', 'a75a1cadc4183adaf601e5a159a382df4a341be7c917102d3a0c13bdb66c879f', '[\"*\"]', '2023-03-05 05:24:49', NULL, '2023-03-05 05:21:40', '2023-03-05 05:24:49'),
(6, 'App\\Models\\User', 3, 'ram@example.com', 'c63da2bf22c9ec699ecf61d41663e8861d48de1ed17d27a2627b62ba0d365916', '[\"*\"]', NULL, NULL, '2023-03-05 05:25:18', '2023-03-05 05:25:18'),
(7, 'App\\Models\\User', 4, 'rajaramsah26@gmail.com', 'cac82d9c8d3fe9dd1a8d665fb89f8c1c18d7e4ac29ac47524be021c2e4bba62b', '[\"*\"]', NULL, NULL, '2023-03-06 10:11:02', '2023-03-06 10:11:02'),
(10, 'App\\Models\\User', 6, 'sawalia@gmail.com', '68a3139a8b628e271aeb082dc2702a452a9887a820504263b234a731ed8f20b4', '[\"*\"]', NULL, NULL, '2023-03-14 11:15:10', '2023-03-14 11:15:10'),
(11, 'App\\Models\\User', 7, 'anju@gmail.com', '8a5e9b3c2c2f77c180362062313015f42ff15604e037e38a69f4d724e871ebe1', '[\"*\"]', NULL, NULL, '2023-03-23 11:59:13', '2023-03-23 11:59:13');

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
  `tc` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `tc`, `created_at`, `updated_at`) VALUES
(3, 'ram', 'ram@example.com', NULL, '$2y$10$MZs9b5VJd..P2wdLfy3kK.UabRqDBbsMjzjhHyBfknvUW0tSe.CQS', NULL, 1, '2023-03-05 04:01:33', '2023-03-05 05:24:49'),
(4, 'rajaramsah', 'rajaramsah26@gmail.com', NULL, '$2y$10$9A0.8Q4TAGpYBCxz3e2kbOXjXNHAnmkch.R3T5Nzf9wCRsBsUcMm6', NULL, 1, '2023-03-06 10:11:01', '2023-03-06 10:11:01'),
(5, 'dilip', 'dilipabc@gmail.com', NULL, '$2y$10$rhFzV4wGUzcIVnmRpfY6NOxy2wUlQfg.ov/TNPzPm2z1WeYeenh9C', NULL, 1, '2023-03-10 02:56:28', '2023-03-10 02:56:28'),
(6, 'sawalia', 'sawalia@gmail.com', NULL, '$2y$10$fA5x5tOQvZEgZ4VlgT7.nOPzTG9i7.JtdxnIKYsbMYujJmmKHZjZK', NULL, 1, '2023-03-14 11:15:10', '2023-03-14 11:15:10'),
(7, 'anju', 'anju@gmail.com', NULL, '$2y$10$HZlh8WyMVo.zSFNE53mo9ekVtSTguc.08ocpkzNnr8n3GDDLw2ALK', NULL, 1, '2023-03-23 11:59:13', '2023-03-23 11:59:13');

--
-- Indexes for dumped tables
--

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
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

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
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
