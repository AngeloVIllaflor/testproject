-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: May 24, 2024 at 05:54 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laravel`
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

--
-- Dumping data for table `cache`
--

INSERT INTO `cache` (`key`, `value`, `expiration`) VALUES
('user@gmail.com|127.0.0.1', 'i:1;', 1714900255),
('user@gmail.com|127.0.0.1:timer', 'i:1714900255;', 1714900255);

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
-- Table structure for table `departments`
--

CREATE TABLE `departments` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `departments`
--

INSERT INTO `departments` (`id`, `name`, `description`, `email`, `created_at`, `updated_at`) VALUES
('1', 'Finance', 'Handles all financial transactions and budgeting.', 'danielmauricio1413@gmail.com', '2024-05-21 02:00:00', '2024-05-21 02:00:00'),
('2', 'Registrar', 'Manages student records and enrollment processes.', 'anvillaflor@student.apc.edu.ph', '2024-05-22 07:50:20', '2024-05-21 02:05:00'),
('3', 'Admissions', 'Responsible for student admissions and recruitment.', '', '2024-05-22 08:06:59', '2024-05-21 02:10:00');

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
(3, '0001_01_01_000002_create_jobs_table', 1);

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
-- Table structure for table `purposes`
--

CREATE TABLE `purposes` (
  `id` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `department_id` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `purposes`
--

INSERT INTO `purposes` (`id`, `description`, `department_id`, `created_at`, `updated_at`) VALUES
('1d1c25f8-58d2-43e9-b732-a562c6c02df3', 'Pay Tuition', '', '2024-05-06 23:21:50', '2024-05-06 23:21:50'),
('1d1c25f8-58d2-43e9-b732-a562c6c02df3', 'Inquire', '', '2024-05-06 23:21:50', '2024-05-06 23:21:50'),
('10fc85cf-3b1d-4d81-852a-d72950b02810', 'Inquire', '', '2024-05-06 23:29:06', '2024-05-06 23:29:06'),
('10fc85cf-3b1d-4d81-852a-d72950b02810', 'Request Documents', '', '2024-05-06 23:29:06', '2024-05-06 23:29:06'),
('45e06436-68d1-4804-a9ff-fe0c464ca684', 'Pay Tuition', '', '2024-05-06 23:59:54', '2024-05-06 23:59:54'),
('45e06436-68d1-4804-a9ff-fe0c464ca684', 'Inquire', '', '2024-05-06 23:59:54', '2024-05-06 23:59:54'),
('45e06436-68d1-4804-a9ff-fe0c464ca684', 'Request Documents', '', '2024-05-06 23:59:54', '2024-05-06 23:59:54'),
('d8ed3222-e176-4e29-a9f1-7930e433b07f', 'Pay Tuition', '', '2024-05-07 00:55:44', '2024-05-07 00:55:44'),
('d8ed3222-e176-4e29-a9f1-7930e433b07f', 'Inquire', '', '2024-05-07 00:55:44', '2024-05-07 00:55:44'),
('cc2d3d38-61d8-4fe3-9101-6805c2067b5c', 'Pay Tuition', '', '2024-05-07 01:16:57', '2024-05-07 01:16:57'),
('cc2d3d38-61d8-4fe3-9101-6805c2067b5c', 'Inquire', '', '2024-05-07 01:16:57', '2024-05-07 01:16:57'),
('cc2d3d38-61d8-4fe3-9101-6805c2067b5c', 'Request Documents', '', '2024-05-07 01:16:57', '2024-05-07 01:16:57'),
('34b0b684-05e2-4fa3-a7db-2256008c0857', 'Pay Tuition', '', '2024-05-07 05:49:49', '2024-05-07 05:49:49'),
('34b0b684-05e2-4fa3-a7db-2256008c0857', 'Inquire', '', '2024-05-07 05:49:49', '2024-05-07 05:49:49'),
('14310e60-311f-435c-ad8f-3bc67a746137', 'Pay Tuition', '', '2024-05-07 16:36:55', '2024-05-07 16:36:55'),
('14310e60-311f-435c-ad8f-3bc67a746137', 'Inquire', '', '2024-05-07 16:36:55', '2024-05-07 16:36:55'),
('14310e60-311f-435c-ad8f-3bc67a746137', 'Request Documents', '', '2024-05-07 16:36:55', '2024-05-07 16:36:55'),
('93fd0126-1c37-43ae-994f-08998b44d332', 'Pay Tuition', '', '2024-05-07 17:08:31', '2024-05-07 17:08:31'),
('93fd0126-1c37-43ae-994f-08998b44d332', 'Inquire', '', '2024-05-07 17:08:31', '2024-05-07 17:08:31'),
('93fd0126-1c37-43ae-994f-08998b44d332', 'Request Documents', '', '2024-05-07 17:08:31', '2024-05-07 17:08:31'),
('dbb681e3-0484-4943-b702-7dbebc87cf28', 'Pay Tuition', '', '2024-05-07 17:43:02', '2024-05-07 17:43:02'),
('2aa36089-b295-4217-ada0-f4481ac65b3f', 'Pay Tuition', '', '2024-05-14 17:50:33', '2024-05-14 17:50:33'),
('2aa36089-b295-4217-ada0-f4481ac65b3f', 'Inquire', '', '2024-05-14 17:50:33', '2024-05-14 17:50:33'),
('2aa36089-b295-4217-ada0-f4481ac65b3f', 'Request Documents', '', '2024-05-14 17:50:33', '2024-05-14 17:50:33'),
('cba5eda5-22dd-4b24-948b-163b47ee00d3', 'Pay Tuition', '', '2024-05-16 05:06:43', '2024-05-16 05:06:43'),
('cba5eda5-22dd-4b24-948b-163b47ee00d3', 'Inquire', '', '2024-05-16 05:06:43', '2024-05-16 05:06:43'),
('cba5eda5-22dd-4b24-948b-163b47ee00d3', 'Request Documents', '', '2024-05-16 05:06:43', '2024-05-16 05:06:43'),
('5e79bafc-6330-4e05-9b51-1c8f368ed762', 'Inquire', '', '2024-05-20 23:22:31', '2024-05-20 23:22:31'),
('5e79bafc-6330-4e05-9b51-1c8f368ed762', 'Request Documents', '', '2024-05-20 23:22:31', '2024-05-20 23:22:31'),
('7887345e-d82a-4779-98a2-b9dc0cf06efa', 'Inquire', '', '2024-05-20 23:28:13', '2024-05-20 23:28:13'),
('7887345e-d82a-4779-98a2-b9dc0cf06efa', 'Request Documents', '', '2024-05-20 23:28:13', '2024-05-20 23:28:13'),
('940de55c-a8a9-436c-a77f-30d03a1f6c2f', 'Inquire', '', '2024-05-20 23:30:41', '2024-05-20 23:30:41'),
('940de55c-a8a9-436c-a77f-30d03a1f6c2f', 'Request Documents', '', '2024-05-20 23:30:41', '2024-05-20 23:30:41'),
('32e2e754-928e-41bd-9da4-e1a5a5038d71', 'Pay Tuition', '', '2024-05-20 23:32:01', '2024-05-20 23:32:01'),
('32e2e754-928e-41bd-9da4-e1a5a5038d71', 'Inquire', '', '2024-05-20 23:32:01', '2024-05-20 23:32:01'),
('32e2e754-928e-41bd-9da4-e1a5a5038d71', 'Request Documents', '', '2024-05-20 23:32:01', '2024-05-20 23:32:01'),
('1228292e-ebfc-4b47-95d0-8c2e17f08c46', 'Inquire', 'test', '2024-05-21 00:13:56', '2024-05-21 00:13:56'),
('1228292e-ebfc-4b47-95d0-8c2e17f08c46', 'Request Documents', 'test', '2024-05-21 00:13:56', '2024-05-21 00:13:56'),
('d22aa8ea-9879-4417-8d1e-16a29e92996e', 'Pay Tuition', 'test', '2024-05-21 16:50:24', '2024-05-21 16:50:24'),
('d22aa8ea-9879-4417-8d1e-16a29e92996e', 'Inquire', 'test', '2024-05-21 16:50:24', '2024-05-21 16:50:24'),
('d22aa8ea-9879-4417-8d1e-16a29e92996e', 'Request Documents', 'test', '2024-05-21 16:50:24', '2024-05-21 16:50:24'),
('4b960486-4c19-4847-92dd-4c94623ebb4c', 'Inquire', 'test', '2024-05-21 21:28:36', '2024-05-21 21:28:36'),
('4b960486-4c19-4847-92dd-4c94623ebb4c', 'Request Documents', 'test', '2024-05-21 21:28:36', '2024-05-21 21:28:36'),
('0d063903-4b90-46bf-be34-4a989b48aa7f', 'Inquire', 'test', '2024-05-21 22:21:03', '2024-05-21 22:21:03'),
('0d063903-4b90-46bf-be34-4a989b48aa7f', 'Request Documents', 'test', '2024-05-21 22:21:03', '2024-05-21 22:21:03'),
('cf753c27-9359-4518-846a-0fd1aa0c042e', 'Inquire', 'test', '2024-05-21 22:27:54', '2024-05-21 22:27:54'),
('cf753c27-9359-4518-846a-0fd1aa0c042e', 'Request Documents', 'test', '2024-05-21 22:27:54', '2024-05-21 22:27:54'),
('a491da0e-8f60-425e-8fca-b1c6eb36a36a', 'Registrar', '2', '2024-05-21 23:37:40', '2024-05-21 23:37:40'),
('a491da0e-8f60-425e-8fca-b1c6eb36a36a', 'Admissions', '3', '2024-05-21 23:37:40', '2024-05-21 23:37:40'),
('33ccd892-028a-4f0e-8b25-6d666e119043', 'Finance', '1', '2024-05-21 23:40:08', '2024-05-21 23:40:08'),
('33ccd892-028a-4f0e-8b25-6d666e119043', 'Registrar', '2', '2024-05-21 23:40:08', '2024-05-21 23:40:08'),
('94e0a1ed-177f-46a6-a369-5c24cf527c49', 'Finance', '1', '2024-05-21 23:42:59', '2024-05-21 23:42:59'),
('94e0a1ed-177f-46a6-a369-5c24cf527c49', 'Registrar', '2', '2024-05-21 23:42:59', '2024-05-21 23:42:59'),
('94e0a1ed-177f-46a6-a369-5c24cf527c49', 'Admissions', '3', '2024-05-21 23:42:59', '2024-05-21 23:42:59'),
('1ad0784e-3215-42d2-8d1c-99f604670e67', 'Finance', '1', '2024-05-21 23:44:10', '2024-05-21 23:44:10'),
('1ad0784e-3215-42d2-8d1c-99f604670e67', 'Registrar', '2', '2024-05-21 23:44:10', '2024-05-21 23:44:10'),
('3233515b-07ed-4e9b-9f0c-9f20dd2901c5', 'Finance', '1', '2024-05-21 23:45:20', '2024-05-21 23:45:20'),
('3233515b-07ed-4e9b-9f0c-9f20dd2901c5', 'Registrar', '2', '2024-05-21 23:45:20', '2024-05-21 23:45:20'),
('3233515b-07ed-4e9b-9f0c-9f20dd2901c5', 'Admissions', '3', '2024-05-21 23:45:20', '2024-05-21 23:45:20'),
('32f1dda6-132d-4432-bf34-a02ba7d4ec4e', 'Finance', '1', '2024-05-21 23:46:27', '2024-05-21 23:46:27'),
('32f1dda6-132d-4432-bf34-a02ba7d4ec4e', 'Registrar', '2', '2024-05-21 23:46:27', '2024-05-21 23:46:27'),
('32f1dda6-132d-4432-bf34-a02ba7d4ec4e', 'Admissions', '3', '2024-05-21 23:46:27', '2024-05-21 23:46:27'),
('bd3d4be1-1e7c-4894-9f94-b59c77399901', 'Registrar', '2', '2024-05-21 23:47:16', '2024-05-21 23:47:16'),
('bd3d4be1-1e7c-4894-9f94-b59c77399901', 'Admissions', '3', '2024-05-21 23:47:16', '2024-05-21 23:47:16'),
('3153e44d-342a-47a8-9c5a-2f756d1f4a65', 'Finance', '1', '2024-05-21 23:51:24', '2024-05-21 23:51:24'),
('3153e44d-342a-47a8-9c5a-2f756d1f4a65', 'Registrar', '2', '2024-05-21 23:51:24', '2024-05-21 23:51:24'),
('3153e44d-342a-47a8-9c5a-2f756d1f4a65', 'Admissions', '3', '2024-05-21 23:51:24', '2024-05-21 23:51:24');

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
('DMGVliu4qvA0tED344RrUsGZSNIOAegjG72GaOFl', NULL, '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiNk5FclJYVDVDWGQzTWtsTTJYMDIzdTdEcFFLbTVzQkE1ZDljamViVCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzA6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9yZWdpc3RlciI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1716450951),
('HkeYWBJNa3e2jGIXtRMFdRWld34fBbqk4KYU58SP', NULL, '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoic3pTUjBhcnpNaHhxamk4NVBtMEVpSmJCWUZLVHhRazVEMWdIRko3QyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzA6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9yZWdpc3RlciI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1716466230);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `first_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `phone_number` varchar(255) DEFAULT NULL,
  `purpose_id` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `first_name`, `last_name`, `phone_number`, `purpose_id`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'testuser', NULL, NULL, NULL, NULL, NULL, NULL, '$2y$12$vvGs5pDDUxnFSZvKHQE6A.SqMuDi21EtSIYMlcFA4gowy.2iBFMpq', NULL, '2024-05-05 01:10:29', '2024-05-05 01:10:29'),
(2, 'secondtest', NULL, NULL, NULL, NULL, NULL, NULL, '$2y$12$uK13VdXpmTg/jlkPz87nq.6TAYCwALa.mm.5Kr97dlw63guI62Rz6', NULL, '2024-05-05 18:38:05', '2024-05-05 18:38:05'),
(3, 'userthree', NULL, NULL, NULL, NULL, NULL, NULL, '$2y$12$Cu18c9ABIMkUnJ9nNQSSYOkzl2JJ79MR35YewpyMBUZbAD79y4OGG', NULL, '2024-05-06 00:22:27', '2024-05-06 00:22:27'),
(4, 'test1', NULL, NULL, NULL, NULL, NULL, NULL, '$2y$12$gitz0MzY/m2iGORC9yZGbORd9azRxsIOEymYtckx3750i4GzaYGze', NULL, '2024-05-06 22:09:24', '2024-05-06 22:09:24'),
(5, 'testtest', NULL, NULL, NULL, NULL, NULL, NULL, '$2y$12$D3UeWXEu/jZzKF29O3Fs2eSrM4kFK1pdvQs/21RjJe8xHoZU0yhxq', NULL, '2024-05-06 22:10:44', '2024-05-06 22:10:44'),
(6, 'ddasdasdasda', NULL, NULL, NULL, NULL, NULL, NULL, '$2y$12$R.fjlGzuvZmk0/m4jCU/2ORck1u0Ju.L8L.HvI/HWFJA/PUBekFoi', NULL, '2024-05-06 22:14:37', '2024-05-06 22:14:37'),
(7, 'dasdasd', NULL, NULL, NULL, NULL, NULL, NULL, '$2y$12$SKnayePbfLxh22SwzGTnEeAj1rtYpqrF9CzhAQ8OmbiK94tB8iFKG', NULL, '2024-05-06 22:16:19', '2024-05-06 22:16:19'),
(8, 'dasdasd', NULL, NULL, NULL, NULL, NULL, NULL, '$2y$12$RLn4ile/032PKeugnjjq0OP1Yr7obNk2L1tpj41404E8zANe20Nha', NULL, '2024-05-06 22:18:38', '2024-05-06 22:18:38'),
(9, 'dasdasd', NULL, NULL, NULL, NULL, NULL, NULL, '$2y$12$.3I9MtvjcxcQ5AleJsnEYuKTlsLIC4I47NdfSjXXTuGmWYMMkJWO6', NULL, '2024-05-06 22:23:42', '2024-05-06 22:23:42'),
(10, 'test test', NULL, NULL, NULL, NULL, NULL, NULL, '$2y$12$MeZXtQXTAiXZ2uVZGvJSd.M1GYZF2Hux1oZD5c6k8N5JuBXloZBc2', NULL, '2024-05-06 22:26:46', '2024-05-06 22:26:46'),
(11, 'testtesttest', 'gumana', 'kaya', '84823974287', NULL, NULL, NULL, '$2y$12$KwCBVQQJl3f5BDlPpyTNTufyjsNkKsuzjOo9SOKY7uZZLYYGBbzAG', NULL, '2024-05-06 22:33:59', '2024-05-06 22:33:59'),
(12, 'test21', 'teste', 'testet', '432423434', '044441fd-3804-4474-b61c-1026cb1e83a2', NULL, NULL, '$2y$12$EB80YhaYjCfOcqHWgSUUsur0g/uBaWuyY3XpzNHXQ5mWQ/mSHirB.', NULL, '2024-05-06 22:48:32', '2024-05-06 22:48:32'),
(13, 'tasdad', 'dasdasda', 'dasdasd', '4323423423', 'ee7f1be1-67d2-4318-b20e-20f04cc0f27e', NULL, NULL, '$2y$12$UWwYWhfNqWMYMWe2zYcTt.j3fTEfe0z07tc4Guo3sXpkedHmk2nWq', NULL, '2024-05-06 23:08:27', '2024-05-06 23:08:27'),
(14, 'testtest', 'testtestsda', 'dasdasdasda', 'dasdasdad', '1d1c25f8-58d2-43e9-b732-a562c6c02df3', NULL, NULL, '$2y$12$q.iTgYgctqEYS2lucysj8OincFCZ2oV4qLf8wP7o8.pnvVu0sOcV.', NULL, '2024-05-06 23:21:50', '2024-05-06 23:21:50'),
(15, 'dasdasd', 'rdsfa', 'dasda', '5234234', '10fc85cf-3b1d-4d81-852a-d72950b02810', NULL, NULL, '$2y$12$t3coFzG8NxzFTmlwv2u3iOOgIbyvRIAnXWJsxAXQhLTebds9K/MNm', NULL, '2024-05-06 23:29:06', '2024-05-06 23:29:06'),
(16, 'testte', 'dasdas', 'dasdsad', '42342234', '45e06436-68d1-4804-a9ff-fe0c464ca684', NULL, NULL, '$2y$12$suxyG5xxuZwmw0/sQgzlLeXFFkVNjhjTvlqRKwJSZi4pWsq48pgvi', NULL, '2024-05-06 23:59:54', '2024-05-06 23:59:54'),
(17, 'dasdasda', 'test', 'test', '4234234234', 'd8ed3222-e176-4e29-a9f1-7930e433b07f', NULL, NULL, '$2y$12$fPC.CJOu/mtA/1dah.ABa.znhIk28rkAFGb.RZudNBB5WPj9LfrVm', NULL, '2024-05-07 00:55:44', '2024-05-07 00:55:44'),
(18, 'test', 'last test', 'last4', '23423423', 'cc2d3d38-61d8-4fe3-9101-6805c2067b5c', NULL, NULL, '$2y$12$.AxcXibksj/uRA709KJKsO17vvzjWDjeX5vv9YN1r7mSCgRjzSE2.', NULL, '2024-05-07 01:16:57', '2024-05-07 01:16:57'),
(19, 'si ano', 'si', 'ano', '12345678900', '34b0b684-05e2-4fa3-a7db-2256008c0857', NULL, NULL, '$2y$12$3Ox8iscIyMuVmzbZpPxPo.1nySShFMpzycE0wzERhXhRLfjw4ww26', NULL, '2024-05-07 05:49:49', '2024-05-07 05:49:49'),
(20, 'anokaya', 'ano', 'kaya', '12345678910', '14310e60-311f-435c-ad8f-3bc67a746137', NULL, NULL, '$2y$12$kcX4Wu3Wu8yQLU2AFhkswOwpzPsKG5xRKOPlGJOxFmxfeYasDvBv6', NULL, '2024-05-07 16:36:55', '2024-05-07 16:36:55'),
(21, 'testesttest', 'test', 'new', '1234456789k', '93fd0126-1c37-43ae-994f-08998b44d332', NULL, NULL, '$2y$12$xzZz0WZNgIIBz13D96tq0eKtslHi0IuyI23vEC5euW8nni8Q47hb.', NULL, '2024-05-07 17:08:31', '2024-05-07 17:08:31'),
(22, 'juan', 'juan', 'dela cruz', '09610680014', 'dbb681e3-0484-4943-b702-7dbebc87cf28', NULL, NULL, '$2y$12$o5ETZ8nLX6zGLX1xue60OeynmgtulWdlDz40JSKE2V3zO6WK.Zzqi', NULL, '2024-05-07 17:43:02', '2024-05-07 17:43:02'),
(23, 'wqeafv', 'newnew', 'new', '123123123', 'a42483c0-bce1-4117-abf4-7a7ce2ef173d', NULL, NULL, '$2y$12$eVhVQvL7ocQPk0z9tPq/d.wcu2Sgu2HRMGYjvg215RJcLvsuhrHPa', NULL, '2024-05-14 17:24:59', '2024-05-14 17:24:59'),
(24, 'newnewnew', 'new', 'name', '1232344234', '2aa36089-b295-4217-ada0-f4481ac65b3f', NULL, NULL, '$2y$12$VEBwYgNin0kAoThwMUgpi.55ffRaAKWZeYJ4dSjS0G.z52ChXX9O2', NULL, '2024-05-14 17:50:33', '2024-05-14 17:50:33'),
(25, 'si ano', 'si', 'ano', '123312353214123', 'cba5eda5-22dd-4b24-948b-163b47ee00d3', NULL, NULL, '$2y$12$PvOP9fItILnf4YN4PQvYZ.Z6Juz0fNgJhmyH3RAZralU.Tp5JsS/C', NULL, '2024-05-16 05:06:43', '2024-05-16 05:06:43'),
(27, 'email email test', 'testtest', 'test', '32713628', '7887345e-d82a-4779-98a2-b9dc0cf06efa', NULL, NULL, '$2y$12$dw1UcwVgjNyGS0cwFtwcwuyYgiyBzDNs3Q1OFwnttkeIJaQE7qewm', NULL, '2024-05-20 23:28:13', '2024-05-20 23:28:13'),
(29, 'sinobato', 'sino', 'bato', '21312312323', '32e2e754-928e-41bd-9da4-e1a5a5038d71', NULL, NULL, '$2y$12$TwROgcK2C/UzNq0t1zi8C.bUMUoo8Uo5d3xkWgC1aDjx909b5Tr4i', NULL, '2024-05-20 23:32:01', '2024-05-20 23:32:01'),
(30, 'test', 'test', 'testt', '324242424', '026403d0-ecf5-4329-8123-d42bc44d6f54', NULL, NULL, '$2y$12$M58Lk0t3Tm/B9OGA8.I1C.jVVPaWvg6HvlpD4Kh58Cuqkte6uISZ6', NULL, '2024-05-21 00:11:16', '2024-05-21 00:11:16'),
(31, 'test', 'test', 'testt', '324242424', '1228292e-ebfc-4b47-95d0-8c2e17f08c46', NULL, NULL, '$2y$12$SNobWTH3Wk94T9q3MNUTnOBtPqfRbhpO5LjYniHREsF.iJEW1pgT6', NULL, '2024-05-21 00:13:56', '2024-05-21 00:13:56'),
(32, 'leslie pelor', 'leslie', 'pelor', '09329894859', 'd22aa8ea-9879-4417-8d1e-16a29e92996e', NULL, NULL, '$2y$12$7bWgLUKRxflcGjMB/Sc3jux4cqOEZ/509sBOXAAZarcdF8KpUp5ze', NULL, '2024-05-21 16:50:24', '2024-05-21 16:50:24'),
(33, 'tests', 'testt', 'testt', '423423444', '4b960486-4c19-4847-92dd-4c94623ebb4c', NULL, NULL, '$2y$12$cWwqlHr/KuvGvR9xuF7WKu6LAoo4jBUn3uuu7eBJGA50d3.LR2JUu', NULL, '2024-05-21 21:28:36', '2024-05-21 21:28:36'),
(35, NULL, 'test test', 'direqredsa', '23424244423', '0d063903-4b90-46bf-be34-4a989b48aa7f', 'dichoso.kelvin27@gmail.com', NULL, '$2y$12$DcxdVpGcz6G0OyD9sX64A.1Rn8Py0Nxc2EeX5aRHclElM62ojsQU2', NULL, '2024-05-21 22:21:03', '2024-05-21 22:21:03'),
(36, NULL, 'test', 'testte', '42342424', 'cf753c27-9359-4518-846a-0fd1aa0c042e', 'dichoso.kelvin27@gmail.com', NULL, '$2y$12$5xLZOGI1G16IQdoKumcE1.bsu3GdiowvyH32c1Pkz3.2GL1kmirrG', NULL, '2024-05-21 22:27:54', '2024-05-21 22:27:54'),
(37, NULL, 'test', 'testt', '423424242', '3a1b85af-d657-4a7c-aecc-2d32f3c7bd52', 'dichoso.kelvin27@gmail.com', NULL, '$2y$12$DEGPB6gv.8ktIAx4FmAPS.vun7h0RsqA7zT2g3TdzrCnxbwWG0vw2', NULL, '2024-05-21 23:10:41', '2024-05-21 23:10:41'),
(38, NULL, 'test', 'testt', '423424242', '815ffacd-6205-4951-a334-d1755396a47d', 'dichoso.kelvin27@gmail.com', NULL, '$2y$12$5pW8LAsBdXr4/7PWcikY7OE2Ara04kVF.HqzTNMW0ex3riRSAFe9q', NULL, '2024-05-21 23:11:26', '2024-05-21 23:11:26'),
(39, NULL, 'test', 'testt', '423424242', '72a0fb9c-4749-4307-8a8c-9dde3f745bf0', 'dichoso.kelvin27@gmail.com', NULL, '$2y$12$owhjOhTkCl1dZiLvEt.0GuFDpSg/YBvYVEOyB3uZlZSEGdv9YdDIi', NULL, '2024-05-21 23:12:39', '2024-05-21 23:12:39'),
(40, NULL, 'test', 'test', '4234234234', 'a491da0e-8f60-425e-8fca-b1c6eb36a36a', 'dichoso.kelvin27@gmail.com', NULL, '$2y$12$xhnRubwsunYUALevks77ruxpevHBfl9oAVBN6MNfVNk9MlRfhQXAC', NULL, '2024-05-21 23:37:40', '2024-05-21 23:37:40'),
(41, NULL, 'testt', 'testt', '4234324234', '33ccd892-028a-4f0e-8b25-6d666e119043', 'dichoso.kelvin27@gmail.com', NULL, '$2y$12$l96KYuCsyL7ELCrzG5Zf4OMe/6Jq4/HqW6TkJwIigfl8yCAsO5WL6', NULL, '2024-05-21 23:40:08', '2024-05-21 23:40:08'),
(42, NULL, 'test', 'test42', '423432324', '94e0a1ed-177f-46a6-a369-5c24cf527c49', 'dichoso.kelvin27@gmail.com', NULL, '$2y$12$fPPj.nDYmDQoFf.lt9OdLeKDN3COlQ4x8WLYCu.XALD2WuMSXksGK', NULL, '2024-05-21 23:42:59', '2024-05-21 23:42:59'),
(43, NULL, 'dsadada', 'dasdada', '423423424', '1ad0784e-3215-42d2-8d1c-99f604670e67', 'dichoso.kelvin27@gmail.com', NULL, '$2y$12$jz5mD71Yap0VHAP2wMWuK.JAspKlzmruDtv4I1nssNlhZJzE4nSQS', NULL, '2024-05-21 23:44:10', '2024-05-21 23:44:10'),
(44, NULL, 'redasda', 'dadasda', '423423423', '3233515b-07ed-4e9b-9f0c-9f20dd2901c5', 'dichoso.kelvin27@gmail.com', NULL, '$2y$12$nbMWBGwlztga.qGhRlLPcuyfbaxoXW7UL7329ONDRMHr2uvcONgZ2', NULL, '2024-05-21 23:45:20', '2024-05-21 23:45:20'),
(45, NULL, 'test', 'dasdadas', '4324242', '32f1dda6-132d-4432-bf34-a02ba7d4ec4e', 'dichoso.kelvin27@gmail.com', NULL, '$2y$12$5nsldNCyeSHHfFb.vLh0rO42ks53veoVFRu7D1EEhIgq4hikU9EMG', NULL, '2024-05-21 23:46:27', '2024-05-21 23:46:27'),
(46, NULL, 'test', 'testt', '4234242', 'bd3d4be1-1e7c-4894-9f94-b59c77399901', 'dichoso.kelvin27@gmail.com', NULL, '$2y$12$f9PvwpLmZwd44iZ0FSjaG.i97FAoYAcE5TIO9TQRc.Fnfjs9SPmVO', NULL, '2024-05-21 23:47:16', '2024-05-21 23:47:16'),
(47, NULL, 'test', 'test', '4234234234', '3153e44d-342a-47a8-9c5a-2f756d1f4a65', 'dichoso.kelvin27@gmail.com', NULL, '$2y$12$WRo1.y1Ju2RvURXzytbzxeBnYb5qtSARmUoUzEiTtQCdazXQTqO3C', NULL, '2024-05-21 23:51:24', '2024-05-21 23:51:24');

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
-- Indexes for table `departments`
--
ALTER TABLE `departments`
  ADD PRIMARY KEY (`id`);

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
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
