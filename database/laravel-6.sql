-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jul 07, 2024 at 06:52 PM
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
-- Database: `apcvrs`
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
-- Table structure for table `departments`
--

CREATE TABLE `departments` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `purpose` varchar(255) DEFAULT NULL,
  `description` varchar(255) NOT NULL,
  `location` varchar(255) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `departments`
--

INSERT INTO `departments` (`id`, `name`, `purpose`, `description`, `location`, `email`, `created_at`, `updated_at`) VALUES
('1', 'Pay Tuition', 'Finance Office', 'Handles all financial transactions and budgeting.', 'Accounting/Finance Office |\r\nFourth Floor Room 411  ', 'danielmauricio1413@gmail.com', '2024-06-19 00:10:08', '2024-05-20 18:10:00'),
('10', 'To meet a specific person in APC for official business\r\n\r\n\r\n', 'Discussion room ', 'Responsible for student admissions and recruitment.', 'Fourth Floor \r\nConference | Discussion Room', 'danielmauricio1413@gmail.com', '2024-06-19 00:10:13', '2024-05-20 18:10:00'),
('11', 'To meet a specific person in APC for personal reasons\r\n\r\n\r\n', 'Meeting rooms', 'Responsible for student admissions and recruitment.', 'Fourth Floor \r\nConference | Discussion Room', 'danielmauricio1413@gmail.com', '2024-06-19 00:10:16', '2024-05-20 18:10:00'),
('12', 'To use rented facility (ex. Basketball court, auditorium)\r\n\r\n', 'Different offices', 'Responsible for student admissions and recruitment.', 'Basketball court, auditorium | \r\nEleventh Floor Room 1117 ', 'danielmauricio1413@gmail.com', '2024-06-19 00:10:18', '2024-05-20 18:10:00'),
('2', 'Apply/Retrieve Official Docs', 'Registrar Office', 'Manages student records and enrollment processes.', 'Registrar Office | \r\nFourth Floor Room 413  ', 'danielmauricio1413@gmail.com', '2024-06-19 00:10:20', '2024-05-20 18:10:00'),
('3', 'Purchase PE uniform', 'Logistics Office', 'Responsible for student admissions and recruitment.', 'Logistics Office  | Tenth Floor Room 1009 ', 'danielmauricio1413@gmail.com', '2024-06-18 23:52:39', '2024-05-20 18:10:00'),
('4', 'Discuss academic performance of child with ExD/PD', 'Discussion room', 'Responsible for student admissions and recruitment.', 'Discussion room | Fourth Floor \r\nConference/Discussion Room ', 'danielmauricio1413@gmail.com', '2024-06-19 00:10:27', '2024-05-20 18:10:00'),
('5', 'Discuss academic performance of child with faculty', 'Discussion room', 'Responsible for student admissions and recruitment.', 'Discussion room | Fourth Floor \r\nConference/Discussion Room ', 'danielmauricio1413@gmail.com', '2024-06-19 00:10:30', '2024-05-20 18:10:00'),
('6', 'Discuss academic performance of child with guidance', 'Guidance office', 'Responsible for student admissions and recruitment.', 'Guidance Office | Tenth Floor Room 1110 ', 'danielmauricio1413@gmail.com', '2024-06-19 00:10:33', '2024-05-20 18:10:00'),
('7', 'Re-apply to go back to school - process\r\n\r\n', 'Registrar\r\n', 'Responsible for student admissions and recruitment.', 'Registrar | Fourth Floor Room 413 ', 'danielmauricio1413@gmail.com', '2024-06-19 00:10:35', '2024-05-20 18:10:00'),
('8', 'Re-apply to go back to school – acad planning w/ ExD\r\n\r\n\r\n', 'Discussion room', 'Responsible for student admissions and recruitment.', 'Discussion room | Fourth Floor \r\nConference/Discussion Room ', 'danielmauricio1413@gmail.com', '2024-06-19 00:10:37', '2024-05-20 18:10:00'),
('9', 'Apply to APC as SHS, College student, transferee\r\n\r\n', 'Admissions', 'Responsible for student admissions and recruitment.', 'Admissions | Ground Floor Room 111 ', 'danielmauricio1413@gmail.com', '2024-06-19 00:10:39', '2024-05-20 18:10:00');

-- --------------------------------------------------------

--
-- Table structure for table `department_user_table`
--

CREATE TABLE `department_user_table` (
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `department_id` bigint(20) UNSIGNED NOT NULL,
  `status` varchar(50) DEFAULT '',
  `finished_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `department_user_table`
--

INSERT INTO `department_user_table` (`user_id`, `department_id`, `status`, `finished_at`) VALUES
(157, 1, 'Done', NULL),
(158, 1, 'On Going', NULL),
(159, 1, 'Done', '2024-06-18 16:02:05'),
(159, 10, 'Done', '2024-06-18 16:02:55'),
(160, 1, 'Done', '2024-06-18 16:01:28'),
(161, 1, 'Done', '2024-06-19 01:48:36'),
(161, 12, 'Done', '2024-06-19 01:48:21'),
(161, 9, 'Done', '2024-06-19 01:48:05'),
(162, 1, 'Done', '2024-06-19 01:54:05'),
(163, 1, 'On Going', NULL),
(163, 10, 'On Going', NULL),
(163, 11, 'On Going', NULL),
(164, 1, 'Done', '2024-06-19 08:03:51'),
(164, 10, 'Done', '2024-06-19 08:04:08'),
(164, 11, 'Done', '2024-06-19 08:03:48'),
(165, 1, 'Done', '2024-06-19 08:08:25'),
(165, 10, 'Done', '2024-06-19 08:08:21'),
(166, 1, 'Done', '2024-06-19 08:16:29'),
(166, 10, 'Done', '2024-06-19 08:20:22'),
(167, 1, 'Done', '2024-06-19 09:34:08'),
(167, 10, 'Done', '2024-06-19 09:37:41'),
(167, 11, 'Done', '2024-06-19 09:38:06'),
(168, 1, 'Done', '2024-06-20 10:44:10'),
(168, 10, 'Done', '2024-06-20 10:44:54'),
(168, 11, 'Done', '2024-06-20 10:45:00'),
(169, 1, 'On Going', NULL),
(169, 10, 'On Going', NULL),
(169, 11, 'On Going', NULL),
(170, 1, 'On Going', NULL),
(171, 2, 'On Going', NULL),
(172, 11, 'On Going', NULL),
(173, 1, 'On Going', NULL),
(174, 1, 'On Going', NULL),
(174, 10, 'On Going', NULL),
(175, 1, 'On Going', NULL),
(175, 10, 'On Going', NULL),
(176, 10, 'On Going', NULL),
(177, 1, 'On Going', NULL),
(177, 10, 'On Going', NULL),
(178, 1, 'On Going', NULL),
(179, 5, 'On Going', NULL),
(180, 11, 'On Going', NULL),
(181, 1, 'On Going', NULL),
(182, 1, 'On Going', NULL),
(182, 10, 'Done', '2024-06-26 09:40:14'),
(182, 11, 'Done', '2024-06-26 09:43:25');

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
  `department_status` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `purposes`
--

INSERT INTO `purposes` (`id`, `description`, `department_id`, `department_status`, `created_at`, `updated_at`) VALUES
('1d1c25f8-58d2-43e9-b732-a562c6c02df3', 'Pay Tuition', '', '', '2024-05-06 15:21:50', '2024-05-06 15:21:50'),
('1d1c25f8-58d2-43e9-b732-a562c6c02df3', 'Inquire', '', '', '2024-05-06 15:21:50', '2024-05-06 15:21:50'),
('10fc85cf-3b1d-4d81-852a-d72950b02810', 'Inquire', '', '', '2024-05-06 15:29:06', '2024-05-06 15:29:06'),
('10fc85cf-3b1d-4d81-852a-d72950b02810', 'Request Documents', '', '', '2024-05-06 15:29:06', '2024-05-06 15:29:06'),
('45e06436-68d1-4804-a9ff-fe0c464ca684', 'Pay Tuition', '', '', '2024-05-06 15:59:54', '2024-05-06 15:59:54'),
('45e06436-68d1-4804-a9ff-fe0c464ca684', 'Inquire', '', '', '2024-05-06 15:59:54', '2024-05-06 15:59:54'),
('45e06436-68d1-4804-a9ff-fe0c464ca684', 'Request Documents', '', '', '2024-05-06 15:59:54', '2024-05-06 15:59:54'),
('d8ed3222-e176-4e29-a9f1-7930e433b07f', 'Pay Tuition', '', '', '2024-05-06 16:55:44', '2024-05-06 16:55:44'),
('d8ed3222-e176-4e29-a9f1-7930e433b07f', 'Inquire', '', '', '2024-05-06 16:55:44', '2024-05-06 16:55:44'),
('cc2d3d38-61d8-4fe3-9101-6805c2067b5c', 'Pay Tuition', '', '', '2024-05-06 17:16:57', '2024-05-06 17:16:57'),
('cc2d3d38-61d8-4fe3-9101-6805c2067b5c', 'Inquire', '', '', '2024-05-06 17:16:57', '2024-05-06 17:16:57'),
('cc2d3d38-61d8-4fe3-9101-6805c2067b5c', 'Request Documents', '', '', '2024-05-06 17:16:57', '2024-05-06 17:16:57'),
('34b0b684-05e2-4fa3-a7db-2256008c0857', 'Pay Tuition', '', '', '2024-05-06 21:49:49', '2024-05-06 21:49:49'),
('34b0b684-05e2-4fa3-a7db-2256008c0857', 'Inquire', '', '', '2024-05-06 21:49:49', '2024-05-06 21:49:49'),
('14310e60-311f-435c-ad8f-3bc67a746137', 'Pay Tuition', '', '', '2024-05-07 08:36:55', '2024-05-07 08:36:55'),
('14310e60-311f-435c-ad8f-3bc67a746137', 'Inquire', '', '', '2024-05-07 08:36:55', '2024-05-07 08:36:55'),
('14310e60-311f-435c-ad8f-3bc67a746137', 'Request Documents', '', '', '2024-05-07 08:36:55', '2024-05-07 08:36:55'),
('93fd0126-1c37-43ae-994f-08998b44d332', 'Pay Tuition', '', '', '2024-05-07 09:08:31', '2024-05-07 09:08:31'),
('93fd0126-1c37-43ae-994f-08998b44d332', 'Inquire', '', '', '2024-05-07 09:08:31', '2024-05-07 09:08:31'),
('93fd0126-1c37-43ae-994f-08998b44d332', 'Request Documents', '', '', '2024-05-07 09:08:31', '2024-05-07 09:08:31'),
('dbb681e3-0484-4943-b702-7dbebc87cf28', 'Pay Tuition', '', '', '2024-05-07 09:43:02', '2024-05-07 09:43:02'),
('2aa36089-b295-4217-ada0-f4481ac65b3f', 'Pay Tuition', '', '', '2024-05-14 09:50:33', '2024-05-14 09:50:33'),
('2aa36089-b295-4217-ada0-f4481ac65b3f', 'Inquire', '', '', '2024-05-14 09:50:33', '2024-05-14 09:50:33'),
('2aa36089-b295-4217-ada0-f4481ac65b3f', 'Request Documents', '', '', '2024-05-14 09:50:33', '2024-05-14 09:50:33'),
('cba5eda5-22dd-4b24-948b-163b47ee00d3', 'Pay Tuition', '', '', '2024-05-15 21:06:43', '2024-05-15 21:06:43'),
('cba5eda5-22dd-4b24-948b-163b47ee00d3', 'Inquire', '', '', '2024-05-15 21:06:43', '2024-05-15 21:06:43'),
('cba5eda5-22dd-4b24-948b-163b47ee00d3', 'Request Documents', '', '', '2024-05-15 21:06:43', '2024-05-15 21:06:43'),
('5e79bafc-6330-4e05-9b51-1c8f368ed762', 'Inquire', '', '', '2024-05-20 15:22:31', '2024-05-20 15:22:31'),
('5e79bafc-6330-4e05-9b51-1c8f368ed762', 'Request Documents', '', '', '2024-05-20 15:22:31', '2024-05-20 15:22:31'),
('7887345e-d82a-4779-98a2-b9dc0cf06efa', 'Inquire', '', '', '2024-05-20 15:28:13', '2024-05-20 15:28:13'),
('7887345e-d82a-4779-98a2-b9dc0cf06efa', 'Request Documents', '', '', '2024-05-20 15:28:13', '2024-05-20 15:28:13'),
('940de55c-a8a9-436c-a77f-30d03a1f6c2f', 'Inquire', '', '', '2024-05-20 15:30:41', '2024-05-20 15:30:41'),
('940de55c-a8a9-436c-a77f-30d03a1f6c2f', 'Request Documents', '', '', '2024-05-20 15:30:41', '2024-05-20 15:30:41'),
('32e2e754-928e-41bd-9da4-e1a5a5038d71', 'Pay Tuition', '', '', '2024-05-20 15:32:01', '2024-05-20 15:32:01'),
('32e2e754-928e-41bd-9da4-e1a5a5038d71', 'Inquire', '', '', '2024-05-20 15:32:01', '2024-05-20 15:32:01'),
('32e2e754-928e-41bd-9da4-e1a5a5038d71', 'Request Documents', '', '', '2024-05-20 15:32:01', '2024-05-20 15:32:01'),
('1228292e-ebfc-4b47-95d0-8c2e17f08c46', 'Inquire', 'test', '', '2024-05-20 16:13:56', '2024-05-20 16:13:56'),
('1228292e-ebfc-4b47-95d0-8c2e17f08c46', 'Request Documents', 'test', '', '2024-05-20 16:13:56', '2024-05-20 16:13:56'),
('d22aa8ea-9879-4417-8d1e-16a29e92996e', 'Pay Tuition', 'test', '', '2024-05-21 08:50:24', '2024-05-21 08:50:24'),
('d22aa8ea-9879-4417-8d1e-16a29e92996e', 'Inquire', 'test', '', '2024-05-21 08:50:24', '2024-05-21 08:50:24'),
('d22aa8ea-9879-4417-8d1e-16a29e92996e', 'Request Documents', 'test', '', '2024-05-21 08:50:24', '2024-05-21 08:50:24'),
('4b960486-4c19-4847-92dd-4c94623ebb4c', 'Inquire', 'test', '', '2024-05-21 13:28:36', '2024-05-21 13:28:36'),
('4b960486-4c19-4847-92dd-4c94623ebb4c', 'Request Documents', 'test', '', '2024-05-21 13:28:36', '2024-05-21 13:28:36'),
('0d063903-4b90-46bf-be34-4a989b48aa7f', 'Inquire', 'test', '', '2024-05-21 14:21:03', '2024-05-21 14:21:03'),
('0d063903-4b90-46bf-be34-4a989b48aa7f', 'Request Documents', 'test', '', '2024-05-21 14:21:03', '2024-05-21 14:21:03'),
('cf753c27-9359-4518-846a-0fd1aa0c042e', 'Inquire', 'test', '', '2024-05-21 14:27:54', '2024-05-21 14:27:54'),
('cf753c27-9359-4518-846a-0fd1aa0c042e', 'Request Documents', 'test', '', '2024-05-21 14:27:54', '2024-05-21 14:27:54'),
('a491da0e-8f60-425e-8fca-b1c6eb36a36a', 'Registrar', '2', '', '2024-05-21 15:37:40', '2024-05-21 15:37:40'),
('a491da0e-8f60-425e-8fca-b1c6eb36a36a', 'Admissions', '3', '', '2024-05-21 15:37:40', '2024-05-21 15:37:40'),
('33ccd892-028a-4f0e-8b25-6d666e119043', 'Finance', '1', '', '2024-05-21 15:40:08', '2024-05-21 15:40:08'),
('33ccd892-028a-4f0e-8b25-6d666e119043', 'Registrar', '2', '', '2024-05-21 15:40:08', '2024-05-21 15:40:08'),
('94e0a1ed-177f-46a6-a369-5c24cf527c49', 'Finance', '1', '', '2024-05-21 15:42:59', '2024-05-21 15:42:59'),
('94e0a1ed-177f-46a6-a369-5c24cf527c49', 'Registrar', '2', '', '2024-05-21 15:42:59', '2024-05-21 15:42:59'),
('94e0a1ed-177f-46a6-a369-5c24cf527c49', 'Admissions', '3', '', '2024-05-21 15:42:59', '2024-05-21 15:42:59'),
('1ad0784e-3215-42d2-8d1c-99f604670e67', 'Finance', '1', '', '2024-05-21 15:44:10', '2024-05-21 15:44:10'),
('1ad0784e-3215-42d2-8d1c-99f604670e67', 'Registrar', '2', '', '2024-05-21 15:44:10', '2024-05-21 15:44:10'),
('3233515b-07ed-4e9b-9f0c-9f20dd2901c5', 'Finance', '1', '', '2024-05-21 15:45:20', '2024-05-21 15:45:20'),
('3233515b-07ed-4e9b-9f0c-9f20dd2901c5', 'Registrar', '2', '', '2024-05-21 15:45:20', '2024-05-21 15:45:20'),
('3233515b-07ed-4e9b-9f0c-9f20dd2901c5', 'Admissions', '3', '', '2024-05-21 15:45:20', '2024-05-21 15:45:20'),
('32f1dda6-132d-4432-bf34-a02ba7d4ec4e', 'Finance', '1', '', '2024-05-21 15:46:27', '2024-05-21 15:46:27'),
('32f1dda6-132d-4432-bf34-a02ba7d4ec4e', 'Registrar', '2', '', '2024-05-21 15:46:27', '2024-05-21 15:46:27'),
('32f1dda6-132d-4432-bf34-a02ba7d4ec4e', 'Admissions', '3', '', '2024-05-21 15:46:27', '2024-05-21 15:46:27'),
('bd3d4be1-1e7c-4894-9f94-b59c77399901', 'Registrar', '2', '', '2024-05-21 15:47:16', '2024-05-21 15:47:16'),
('bd3d4be1-1e7c-4894-9f94-b59c77399901', 'Admissions', '3', '', '2024-05-21 15:47:16', '2024-05-21 15:47:16'),
('3153e44d-342a-47a8-9c5a-2f756d1f4a65', 'Finance', '1', '', '2024-05-21 15:51:24', '2024-05-21 15:51:24'),
('3153e44d-342a-47a8-9c5a-2f756d1f4a65', 'Registrar', '2', '', '2024-05-21 15:51:24', '2024-05-21 15:51:24'),
('3153e44d-342a-47a8-9c5a-2f756d1f4a65', 'Admissions', '3', '', '2024-05-21 15:51:24', '2024-05-21 15:51:24'),
('a00bafcd-3250-426b-8283-de22106c2c49', 'Finance', '1', '', '2024-05-27 18:32:36', '2024-05-27 18:32:36'),
('9b523033-6fa2-4b52-b611-dea1019546e5', 'Finance', '1', '', '2024-05-27 18:34:29', '2024-05-27 18:34:29'),
('d44da4a6-a901-436d-8352-66370ec228ec', 'Finance', '1', '', '2024-05-27 18:36:35', '2024-05-27 18:36:35'),
('0b0daf53-e068-4884-9e50-620a21de5cb8', 'Finance', '1', '', '2024-05-27 18:38:24', '2024-05-27 18:38:24'),
('13eed8ea-8bff-41e4-8f42-56e7252cce90', 'Finance', '1', '', '2024-05-27 18:41:28', '2024-05-27 18:41:28'),
('4bcb0ef0-8881-4a01-9f4b-b88e7e67d4e8', 'Finance', '1', '', '2024-05-28 08:01:30', '2024-05-28 08:01:30'),
('88a50ba4-03ab-4a94-a365-8bffc445b568', 'Finance', '1', '', '2024-05-28 09:19:39', '2024-05-28 09:19:39'),
('bb696fdb-dc4c-4883-a949-ade84f290826', 'Finance', '1', '', '2024-05-28 15:33:03', '2024-05-28 15:33:03'),
('4d9738c0-5363-40f3-b84c-395e11c90608', 'Finance', '1', '', '2024-06-01 17:49:09', '2024-06-01 17:49:09'),
('a614b67c-a942-498a-869a-02802d43088d', 'Finance', '1', '', '2024-06-01 17:52:04', '2024-06-01 17:52:04'),
('c07a863a-186e-43b3-b4c6-391be800e960', 'Finance', '1', '', '2024-06-02 22:34:31', '2024-06-02 22:34:31'),
('b0a41d02-c4e0-4057-8c8c-967d78424472', 'Finance', '1', '', '2024-06-03 00:30:04', '2024-06-03 00:30:04'),
('4f8e3021-b2e2-46bc-b990-ad1ee273c9f8', 'Finance', '1', '', '2024-06-03 00:40:02', '2024-06-03 00:40:02'),
('beff15ab-ad31-4914-af71-fef0547c626d', 'Finance', '1', '', '2024-06-03 10:34:49', '2024-06-03 10:34:49'),
('beff15ab-ad31-4914-af71-fef0547c626d', 'Registrar', '2', '', '2024-06-03 10:34:49', '2024-06-03 10:34:49'),
('beff15ab-ad31-4914-af71-fef0547c626d', 'Admissions', '3', '', '2024-06-03 10:34:49', '2024-06-03 10:34:49'),
('9d2ecb0d-94e3-4b74-a223-e8546485b42b', 'Finance', '1', '', '2024-06-03 12:31:35', '2024-06-03 12:31:35'),
('9d2ecb0d-94e3-4b74-a223-e8546485b42b', 'Registrar', '2', '', '2024-06-03 12:31:35', '2024-06-03 12:31:35'),
('9d2ecb0d-94e3-4b74-a223-e8546485b42b', 'Admissions', '3', '', '2024-06-03 12:31:35', '2024-06-03 12:31:35'),
('e35c9371-f836-4a05-85ee-57d9ad9e78a2', 'Finance', '1', '', '2024-06-03 12:33:43', '2024-06-03 12:33:43'),
('e35c9371-f836-4a05-85ee-57d9ad9e78a2', 'Registrar', '2', '', '2024-06-03 12:33:43', '2024-06-03 12:33:43'),
('e35c9371-f836-4a05-85ee-57d9ad9e78a2', 'Admissions', '3', '', '2024-06-03 12:33:43', '2024-06-03 12:33:43'),
('73cdaa9c-cab1-4bd6-a388-94504a49a4a1', 'Finance', '1', '', '2024-06-04 09:20:19', '2024-06-04 09:20:19'),
('73cdaa9c-cab1-4bd6-a388-94504a49a4a1', 'Registrar', '2', '', '2024-06-04 09:20:19', '2024-06-04 09:20:19'),
('be102ca7-f5f6-4814-9f17-fbcfa0d805ab', 'Finance', '1', '', '2024-06-07 14:09:25', '2024-06-07 14:09:25'),
('be102ca7-f5f6-4814-9f17-fbcfa0d805ab', 'Registrar', '2', '', '2024-06-07 14:09:25', '2024-06-07 14:09:25'),
('be102ca7-f5f6-4814-9f17-fbcfa0d805ab', 'Admissions', '3', '', '2024-06-07 14:09:25', '2024-06-07 14:09:25'),
('9986aa60-a633-42d2-896b-f739f5d78775', 'Finance', '1', '', '2024-06-07 14:21:45', '2024-06-07 14:21:45'),
('9986aa60-a633-42d2-896b-f739f5d78775', 'Registrar', '2', '', '2024-06-07 14:21:45', '2024-06-07 14:21:45'),
('9986aa60-a633-42d2-896b-f739f5d78775', 'Admissions', '3', '', '2024-06-07 14:21:45', '2024-06-07 14:21:45'),
('dd01bea2-7660-414b-905a-be490d2af596', 'Finance', '1', '', '2024-06-07 14:32:30', '2024-06-07 14:32:30'),
('dd01bea2-7660-414b-905a-be490d2af596', 'Registrar', '2', '', '2024-06-07 14:32:30', '2024-06-07 14:32:30'),
('2acbfd13-4d7e-45cf-90ba-ba4099d656f9', 'Finance', '1', 'No', '2024-06-07 15:17:23', '2024-06-07 15:17:23'),
('2acbfd13-4d7e-45cf-90ba-ba4099d656f9', 'Registrar', '2', 'No', '2024-06-07 15:17:23', '2024-06-07 15:17:23'),
('0cfe2187-b24f-42f9-8852-54865ea8f54f', 'Finance', '1', 'No', '2024-06-07 15:20:17', '2024-06-07 15:20:17'),
('0cfe2187-b24f-42f9-8852-54865ea8f54f', 'Registrar', '2', 'No', '2024-06-07 15:20:17', '2024-06-07 15:20:17'),
('eb0a49d2-10dd-4342-bbeb-34154d02d70b', 'Finance', '1', 'No', '2024-06-07 15:26:39', '2024-06-07 15:26:39'),
('eb0a49d2-10dd-4342-bbeb-34154d02d70b', 'Registrar', '2', 'No', '2024-06-07 15:26:39', '2024-06-07 15:26:39'),
('8661a866-78e8-41a6-b68c-8213afd41e91', 'Finance', '1', 'No', '2024-06-07 15:29:17', '2024-06-07 15:29:17'),
('8661a866-78e8-41a6-b68c-8213afd41e91', 'Registrar', '2', 'No', '2024-06-07 15:29:17', '2024-06-07 15:29:17'),
('bee62f0e-f707-4b98-80dd-d42283dfcf82', 'Finance', '1', 'No', '2024-06-07 15:30:13', '2024-06-07 15:30:13'),
('bee62f0e-f707-4b98-80dd-d42283dfcf82', 'Registrar', '2', 'No', '2024-06-07 15:30:13', '2024-06-07 15:30:13'),
('149e6c73-b18b-4c2f-9897-fdb52b9e14af', 'Finance', '1', 'No', '2024-06-07 15:38:13', '2024-06-07 15:38:13'),
('149e6c73-b18b-4c2f-9897-fdb52b9e14af', 'Registrar', '2', 'No', '2024-06-07 15:38:13', '2024-06-07 15:38:13'),
('f6d935e5-940d-452b-a205-b8deadce6ed5', 'Finance', '1', 'No', '2024-06-07 15:49:22', '2024-06-07 15:49:22'),
('f6d935e5-940d-452b-a205-b8deadce6ed5', 'Registrar', '2', 'No', '2024-06-07 15:49:22', '2024-06-07 15:49:22'),
('52922ba4-053e-4737-a103-10d34235b494', 'Finance', '1', 'No', '2024-06-07 15:53:01', '2024-06-07 15:53:01'),
('52922ba4-053e-4737-a103-10d34235b494', 'Registrar', '2', 'No', '2024-06-07 15:53:01', '2024-06-07 15:53:01'),
('7be40eb5-5da0-4932-83ec-5249b9c05be6', 'Finance', '1', 'No', '2024-06-07 15:55:35', '2024-06-07 15:55:35'),
('7be40eb5-5da0-4932-83ec-5249b9c05be6', 'Registrar', '2', 'No', '2024-06-07 15:55:35', '2024-06-07 15:55:35'),
('c27933b0-5bfc-460e-917a-6c1bdc0db5b0', 'Finance', '1', 'No', '2024-06-07 15:57:35', '2024-06-07 15:57:35'),
('c27933b0-5bfc-460e-917a-6c1bdc0db5b0', 'Registrar', '2', 'No', '2024-06-07 15:57:35', '2024-06-07 15:57:35'),
('e3d94409-b9eb-443c-b63c-ec67c9b1c3e1', 'Finance', '1', 'No', '2024-06-07 16:01:47', '2024-06-07 16:01:47'),
('e3d94409-b9eb-443c-b63c-ec67c9b1c3e1', 'Registrar', '2', 'No', '2024-06-07 16:01:47', '2024-06-07 16:01:47'),
('8f7d5a9d-cdb4-4a7a-8b29-62e7c7672636', 'Finance', '1', 'No', '2024-06-07 16:02:31', '2024-06-07 16:02:31'),
('8f7d5a9d-cdb4-4a7a-8b29-62e7c7672636', 'Registrar', '2', 'No', '2024-06-07 16:02:31', '2024-06-07 16:02:31'),
('a2b0dac4-5071-4a19-a2e2-155b0d2cfb44', 'Finance', '1', 'No', '2024-06-07 16:05:38', '2024-06-07 16:05:38'),
('a2b0dac4-5071-4a19-a2e2-155b0d2cfb44', 'Registrar', '2', 'No', '2024-06-07 16:05:38', '2024-06-07 16:05:38'),
('38b83c66-5dde-4f8b-98c1-e899d35dc8b1', 'Finance', '1', 'No', '2024-06-07 16:06:50', '2024-06-07 16:06:50'),
('38b83c66-5dde-4f8b-98c1-e899d35dc8b1', 'Registrar', '2', 'No', '2024-06-07 16:06:50', '2024-06-07 16:06:50'),
('2615c619-0ee7-46d4-877a-409c6203442a', 'Finance', '1', 'No', '2024-06-07 16:39:16', '2024-06-07 16:39:16'),
('2615c619-0ee7-46d4-877a-409c6203442a', 'Registrar', '2', 'No', '2024-06-07 16:39:16', '2024-06-07 16:39:16'),
('b07ef930-6bbd-4fd3-8ac7-bdb702ab506c', 'Finance', '1', 'No', '2024-06-07 16:46:00', '2024-06-07 16:46:00'),
('b07ef930-6bbd-4fd3-8ac7-bdb702ab506c', 'Registrar', '2', 'No', '2024-06-07 16:46:00', '2024-06-07 16:46:00'),
('bcc09c3f-4fe3-42e0-8b40-974a6ce704fc', 'Finance', '1', 'No', '2024-06-07 16:46:51', '2024-06-07 16:46:51'),
('bcc09c3f-4fe3-42e0-8b40-974a6ce704fc', 'Registrar', '2', 'No', '2024-06-07 16:46:51', '2024-06-07 16:46:51'),
('d502ec75-810a-42ee-8e0e-0fa9cb449607', 'Finance', '1', 'No', '2024-06-07 17:04:45', '2024-06-07 17:04:45'),
('d502ec75-810a-42ee-8e0e-0fa9cb449607', 'Registrar', '2', 'No', '2024-06-07 17:04:45', '2024-06-07 17:04:45'),
('b6a41c6c-5a25-49ef-a485-cf46c2054b21', 'Finance', '1', 'No', '2024-06-08 13:33:17', '2024-06-08 13:33:17'),
('b6a41c6c-5a25-49ef-a485-cf46c2054b21', 'Registrar', '2', 'No', '2024-06-08 13:33:17', '2024-06-08 13:33:17'),
('5486fdd1-53f2-47e2-98fd-834d49dc143b', 'Finance', '1', 'No', '2024-06-08 13:35:44', '2024-06-08 13:35:44'),
('5486fdd1-53f2-47e2-98fd-834d49dc143b', 'Registrar', '2', 'No', '2024-06-08 13:35:44', '2024-06-08 13:35:44'),
('e1d568c0-9f05-4618-9436-e7a2941069a0', 'Finance', '1', 'No', '2024-06-08 13:58:51', '2024-06-08 13:58:51'),
('e1d568c0-9f05-4618-9436-e7a2941069a0', 'Registrar', '2', 'No', '2024-06-08 13:58:51', '2024-06-08 13:58:51'),
('4cee74dc-b216-4ed2-8d53-e9b133faabe3', 'Finance', '1', 'No', '2024-06-08 14:02:31', '2024-06-08 14:02:31'),
('4cee74dc-b216-4ed2-8d53-e9b133faabe3', 'Registrar', '2', 'No', '2024-06-08 14:02:31', '2024-06-08 14:02:31'),
('ac2747bc-dd23-4b80-8cfe-5d9911b5ab12', 'Finance', '1', 'No', '2024-06-08 14:04:08', '2024-06-08 14:04:08'),
('ac2747bc-dd23-4b80-8cfe-5d9911b5ab12', 'Registrar', '2', 'No', '2024-06-08 14:04:08', '2024-06-08 14:04:08'),
('03496401-04b1-4bd7-9a38-c1123433bebf', 'Finance', '1', 'No', '2024-06-08 14:06:31', '2024-06-08 14:06:31'),
('03496401-04b1-4bd7-9a38-c1123433bebf', 'Registrar', '2', 'No', '2024-06-08 14:06:31', '2024-06-08 14:06:31'),
('82ccb7c1-f806-41f7-b451-5f4db39d2e2f', 'Finance', '1', 'No', '2024-06-08 14:07:40', '2024-06-08 14:07:40'),
('82ccb7c1-f806-41f7-b451-5f4db39d2e2f', 'Registrar', '2', 'No', '2024-06-08 14:07:40', '2024-06-08 14:07:40'),
('8c8e225c-0fa4-4015-ac5b-f4e11deb8549', 'Finance', '1', 'No', '2024-06-08 14:08:55', '2024-06-08 14:08:55'),
('8c8e225c-0fa4-4015-ac5b-f4e11deb8549', 'Registrar', '2', 'No', '2024-06-08 14:08:55', '2024-06-08 14:08:55'),
('c550ba5c-410b-45cc-a1c4-a24309c1c52e', 'Finance', '1', 'No', '2024-06-08 14:11:03', '2024-06-08 14:11:03'),
('c550ba5c-410b-45cc-a1c4-a24309c1c52e', 'Registrar', '2', 'No', '2024-06-08 14:11:03', '2024-06-08 14:11:03'),
('81bedb05-a2bf-4eee-b239-837207d06f02', 'Finance', '1', 'No', '2024-06-08 14:11:37', '2024-06-08 14:11:37'),
('81bedb05-a2bf-4eee-b239-837207d06f02', 'Registrar', '2', 'No', '2024-06-08 14:11:37', '2024-06-08 14:11:37'),
('a26313a5-59e1-492b-8410-345b4adf5888', 'Finance', '1', 'No', '2024-06-08 14:14:33', '2024-06-08 14:14:33'),
('a26313a5-59e1-492b-8410-345b4adf5888', 'Registrar', '2', 'No', '2024-06-08 14:14:33', '2024-06-08 14:14:33'),
('aa01f234-c565-4cc7-a46c-f55e92578fb3', 'Finance', '1', 'No', '2024-06-08 14:59:41', '2024-06-08 14:59:41'),
('aa01f234-c565-4cc7-a46c-f55e92578fb3', 'Registrar', '2', 'No', '2024-06-08 14:59:41', '2024-06-08 14:59:41'),
('1228fb19-c5cf-4602-81aa-9117a9c0304c', 'Pay Tuition', '1', 'No', '2024-06-08 16:05:45', '2024-06-08 16:05:45'),
('1228fb19-c5cf-4602-81aa-9117a9c0304c', 'To meet a specific person in APC for official business\r\n\r\n\r\n', '10', 'No', '2024-06-08 16:05:45', '2024-06-08 16:05:45'),
('1228fb19-c5cf-4602-81aa-9117a9c0304c', 'To meet a specific person in APC for personal reasons\r\n\r\n\r\n', '11', 'No', '2024-06-08 16:05:45', '2024-06-08 16:05:45'),
('1228fb19-c5cf-4602-81aa-9117a9c0304c', 'To use rented facility (ex. Basketball court, auditorium)\r\n\r\n', '12', 'No', '2024-06-08 16:05:45', '2024-06-08 16:05:45'),
('1228fb19-c5cf-4602-81aa-9117a9c0304c', 'Apply/Retrieve Official Docs', '2', 'No', '2024-06-08 16:05:45', '2024-06-08 16:05:45'),
('6aaa073c-133b-43ce-aec0-7b2f7e9c7014', 'To meet a specific person in APC for personal reasons\r\n\r\n\r\n', '11', 'No', '2024-06-09 15:23:25', '2024-06-09 15:23:25'),
('6aaa073c-133b-43ce-aec0-7b2f7e9c7014', 'Discuss academic performance of child with ExD/PD', '4', 'No', '2024-06-09 15:23:25', '2024-06-09 15:23:25'),
('6aaa073c-133b-43ce-aec0-7b2f7e9c7014', 'Discuss academic performance of child with guidance', '6', 'No', '2024-06-09 15:23:25', '2024-06-09 15:23:25'),
('6aaa073c-133b-43ce-aec0-7b2f7e9c7014', 'Apply to APC as SHS, College student, transferee\r\n\r\n', '9', 'No', '2024-06-09 15:23:25', '2024-06-09 15:23:25'),
('dadb5372-be70-4fef-a0c9-e0ebc328ff5a', 'Pay Tuition', '1', 'No', '2024-06-09 15:24:14', '2024-06-09 15:24:14'),
('dadb5372-be70-4fef-a0c9-e0ebc328ff5a', 'To meet a specific person in APC for official business\r\n\r\n\r\n', '10', 'No', '2024-06-09 15:24:14', '2024-06-09 15:24:14'),
('dadb5372-be70-4fef-a0c9-e0ebc328ff5a', 'To meet a specific person in APC for personal reasons\r\n\r\n\r\n', '11', 'No', '2024-06-09 15:24:14', '2024-06-09 15:24:14'),
('1d8f13ee-d852-477c-afb3-4cfe22f3b21a', 'To meet a specific person in APC for official business\r\n\r\n\r\n', '10', 'No', '2024-06-09 15:24:49', '2024-06-09 15:24:49'),
('c0c1896c-4768-4a97-be95-1fb63806af11', 'Pay Tuition', '1', 'No', '2024-06-09 15:26:18', '2024-06-09 15:26:18'),
('c0c1896c-4768-4a97-be95-1fb63806af11', 'To meet a specific person in APC for personal reasons\r\n\r\n\r\n', '11', 'No', '2024-06-09 15:26:18', '2024-06-09 15:26:18'),
('c0c1896c-4768-4a97-be95-1fb63806af11', 'Apply/Retrieve Official Docs', '2', 'No', '2024-06-09 15:26:18', '2024-06-09 15:26:18'),
('5408cdd3-75da-41c0-ad43-3c95a9199548', 'Pay Tuition', '1', 'No', '2024-06-09 16:06:36', '2024-06-09 16:06:36'),
('5408cdd3-75da-41c0-ad43-3c95a9199548', 'To meet a specific person in APC for personal reasons\r\n\r\n\r\n', '11', 'No', '2024-06-09 16:06:36', '2024-06-09 16:06:36'),
('5408cdd3-75da-41c0-ad43-3c95a9199548', 'To use rented facility (ex. Basketball court, auditorium)\r\n\r\n', '12', 'No', '2024-06-09 16:06:36', '2024-06-09 16:06:36'),
('babf446e-9a7b-43a2-ac79-433eb4feaac4', 'Pay Tuition', '1', 'No', '2024-06-09 16:18:50', '2024-06-09 16:18:50'),
('2b85008e-41f9-404e-8693-c266fe225b91', 'To meet a specific person in APC for official business\r\n\r\n\r\n', '10', 'No', '2024-06-09 16:19:56', '2024-06-09 16:19:56'),
('2b85008e-41f9-404e-8693-c266fe225b91', 'To meet a specific person in APC for personal reasons\r\n\r\n\r\n', '11', 'No', '2024-06-09 16:19:56', '2024-06-09 16:19:56'),
('2b85008e-41f9-404e-8693-c266fe225b91', 'To use rented facility (ex. Basketball court, auditorium)\r\n\r\n', '12', 'No', '2024-06-09 16:19:56', '2024-06-09 16:19:56'),
('66efea41-a327-4e6c-8c76-8f4a4cb090a9', 'To meet a specific person in APC for official business\r\n\r\n\r\n', '10', 'No', '2024-06-09 16:26:32', '2024-06-09 16:26:32'),
('66efea41-a327-4e6c-8c76-8f4a4cb090a9', 'To meet a specific person in APC for personal reasons\r\n\r\n\r\n', '11', 'No', '2024-06-09 16:26:32', '2024-06-09 16:26:32'),
('5a9da43d-3f9b-4539-b822-273248657950', 'To meet a specific person in APC for personal reasons\r\n\r\n\r\n', '11', 'No', '2024-06-09 16:30:03', '2024-06-09 16:30:03'),
('5a9da43d-3f9b-4539-b822-273248657950', 'To use rented facility (ex. Basketball court, auditorium)\r\n\r\n', '12', 'No', '2024-06-09 16:30:03', '2024-06-09 16:30:03'),
('f36bb874-602b-458d-9b58-a39ed4129576', 'To meet a specific person in APC for personal reasons\r\n\r\n\r\n', '11', 'No', '2024-06-09 16:32:36', '2024-06-09 16:32:36'),
('f36bb874-602b-458d-9b58-a39ed4129576', 'To use rented facility (ex. Basketball court, auditorium)\r\n\r\n', '12', 'No', '2024-06-09 16:32:36', '2024-06-09 16:32:36'),
('afb3857f-51f2-4951-8b3a-64f24a15002f', 'To meet a specific person in APC for personal reasons\r\n\r\n\r\n', '11', 'No', '2024-06-09 16:40:04', '2024-06-09 16:40:04'),
('9aabc053-c3b7-4606-a8a7-aaffa446b8f9', 'To meet a specific person in APC for official business\r\n\r\n\r\n', '10', 'No', '2024-06-09 16:43:49', '2024-06-09 16:43:49'),
('9aabc053-c3b7-4606-a8a7-aaffa446b8f9', 'To meet a specific person in APC for personal reasons\r\n\r\n\r\n', '11', 'No', '2024-06-09 16:43:49', '2024-06-09 16:43:49'),
('52fda0d7-b17a-4479-bb9e-607d1300df5d', 'To meet a specific person in APC for official business\r\n\r\n\r\n', '10', 'No', '2024-06-09 16:47:12', '2024-06-09 16:47:12'),
('52fda0d7-b17a-4479-bb9e-607d1300df5d', 'To meet a specific person in APC for personal reasons\r\n\r\n\r\n', '11', 'No', '2024-06-09 16:47:12', '2024-06-09 16:47:12'),
('f9cb4f3a-3e59-404e-b4a3-982b8f83b115', 'To meet a specific person in APC for official business\r\n\r\n\r\n', '10', 'No', '2024-06-09 16:49:41', '2024-06-09 16:49:41'),
('f9cb4f3a-3e59-404e-b4a3-982b8f83b115', 'To meet a specific person in APC for personal reasons\r\n\r\n\r\n', '11', 'No', '2024-06-09 16:49:41', '2024-06-09 16:49:41'),
('ca330ab3-6376-4428-bf4a-1a3e71df358a', 'To meet a specific person in APC for personal reasons\r\n\r\n\r\n', '11', 'No', '2024-06-09 16:54:37', '2024-06-09 16:54:37'),
('0863efba-4f35-4d8a-9672-676a083adee0', 'To meet a specific person in APC for personal reasons\r\n\r\n\r\n', '11', 'No', '2024-06-09 16:58:57', '2024-06-09 16:58:57'),
('74c5ad79-f524-418d-9316-5d9da5815305', 'To meet a specific person in APC for official business\r\n\r\n\r\n', '10', 'No', '2024-06-09 17:03:57', '2024-06-09 17:03:57'),
('bd5b0f5a-bc08-4997-9dd1-b78cc5a888cb', 'To use rented facility (ex. Basketball court, auditorium)\r\n\r\n', '12', 'No', '2024-06-09 17:07:34', '2024-06-09 17:07:34'),
('3daa3870-b222-4534-b906-74871a7bfd2a', 'To meet a specific person in APC for official business\r\n\r\n\r\n', '10', 'No', '2024-06-09 17:34:57', '2024-06-09 17:34:57'),
('469ff9a0-243f-4a3d-b5a1-d5eb95b55a01', 'To meet a specific person in APC for personal reasons\r\n\r\n\r\n', '11', 'No', '2024-06-09 17:35:51', '2024-06-09 17:35:51'),
('15a15e53-cdb2-48b9-83c4-52b408d0c8ac', 'To meet a specific person in APC for official business\r\n\r\n\r\n', '10', 'No', '2024-06-09 17:36:55', '2024-06-09 17:36:55'),
('7d810542-fd28-4b89-b9c0-469db71bc89a', 'Pay Tuition', '1', 'No', '2024-06-09 17:50:01', '2024-06-09 17:50:01'),
('7d810542-fd28-4b89-b9c0-469db71bc89a', 'To meet a specific person in APC for official business\r\n\r\n\r\n', '10', 'No', '2024-06-09 17:50:01', '2024-06-09 17:50:01'),
('b4bff408-03dd-4e4e-9227-f359314d34de', 'To meet a specific person in APC for personal reasons\r\n\r\n\r\n', '11', 'No', '2024-06-09 17:51:48', '2024-06-09 17:51:48'),
('b4bff408-03dd-4e4e-9227-f359314d34de', 'To use rented facility (ex. Basketball court, auditorium)\r\n\r\n', '12', 'No', '2024-06-09 17:51:48', '2024-06-09 17:51:48'),
('2b8f8f7f-a170-4e91-93c9-a5ebbbe6a3d8', 'To meet a specific person in APC for official business\r\n\r\n\r\n', '10', 'No', '2024-06-09 17:54:29', '2024-06-09 17:54:29'),
('2d682ef4-be7b-4f49-9af9-5b43556bf535', 'To meet a specific person in APC for official business\r\n\r\n\r\n', '10', 'No', '2024-06-09 17:55:13', '2024-06-09 17:55:13'),
('2d682ef4-be7b-4f49-9af9-5b43556bf535', 'To meet a specific person in APC for personal reasons\r\n\r\n\r\n', '11', 'No', '2024-06-09 17:55:13', '2024-06-09 17:55:13'),
('219d96c1-4560-4d97-a2b5-332641dfde5c', 'To meet a specific person in APC for personal reasons\r\n\r\n\r\n', '11', 'No', '2024-06-09 17:56:10', '2024-06-09 17:56:10'),
('d748e2cc-47eb-452b-97b0-ff4418480bbf', 'To meet a specific person in APC for official business\r\n\r\n\r\n', '10', 'No', '2024-06-10 13:18:26', '2024-06-10 13:18:26'),
('d748e2cc-47eb-452b-97b0-ff4418480bbf', 'To meet a specific person in APC for personal reasons\r\n\r\n\r\n', '11', 'No', '2024-06-10 13:18:26', '2024-06-10 13:18:26'),
('28bfca84-6192-4556-819e-d6d2c9fa3c41', 'To meet a specific person in APC for official business\r\n\r\n\r\n', '10', 'No', '2024-06-10 13:29:44', '2024-06-10 13:29:44'),
('28bfca84-6192-4556-819e-d6d2c9fa3c41', 'Apply/Retrieve Official Docs', '2', 'No', '2024-06-10 13:29:44', '2024-06-10 13:29:44'),
('28bfca84-6192-4556-819e-d6d2c9fa3c41', 'Discuss academic performance of child with faculty', '5', 'No', '2024-06-10 13:29:44', '2024-06-10 13:29:44'),
('28bfca84-6192-4556-819e-d6d2c9fa3c41', 'Re-apply to go back to school - process\r\n\r\n', '7', 'No', '2024-06-10 13:29:44', '2024-06-10 13:29:44'),
('ddaa2863-a04c-4719-80c5-2d44a8118740', 'To meet a specific person in APC for personal reasons\r\n\r\n\r\n', '11', 'No', '2024-06-10 13:45:29', '2024-06-10 13:45:29'),
('ddaa2863-a04c-4719-80c5-2d44a8118740', 'To use rented facility (ex. Basketball court, auditorium)\r\n\r\n', '12', 'No', '2024-06-10 13:45:29', '2024-06-10 13:45:29'),
('39e91c7b-58b7-40e0-ac6f-4aee48fcd726', 'To meet a specific person in APC for personal reasons\r\n\r\n\r\n', '11', 'No', '2024-06-10 13:46:41', '2024-06-10 13:46:41'),
('39e91c7b-58b7-40e0-ac6f-4aee48fcd726', 'To use rented facility (ex. Basketball court, auditorium)\r\n\r\n', '12', 'No', '2024-06-10 13:46:41', '2024-06-10 13:46:41'),
('d29ca2d9-1728-4952-a154-1714ed8f9a48', 'To meet a specific person in APC for personal reasons\r\n\r\n\r\n', '11', 'No', '2024-06-10 13:48:31', '2024-06-10 13:48:31'),
('d29ca2d9-1728-4952-a154-1714ed8f9a48', 'To use rented facility (ex. Basketball court, auditorium)\r\n\r\n', '12', 'No', '2024-06-10 13:48:31', '2024-06-10 13:48:31'),
('98ab8d66-1c6d-4ba5-8853-8898ba568409', 'To meet a specific person in APC for personal reasons\r\n\r\n\r\n', '11', 'No', '2024-06-10 13:48:59', '2024-06-10 13:48:59'),
('98ab8d66-1c6d-4ba5-8853-8898ba568409', 'To use rented facility (ex. Basketball court, auditorium)\r\n\r\n', '12', 'No', '2024-06-10 13:48:59', '2024-06-10 13:48:59'),
('f0c4135e-2c8e-4f65-9684-d30fc6e5e0c1', 'To meet a specific person in APC for personal reasons\r\n\r\n\r\n', '11', 'No', '2024-06-10 13:52:15', '2024-06-10 13:52:15'),
('f0c4135e-2c8e-4f65-9684-d30fc6e5e0c1', 'To use rented facility (ex. Basketball court, auditorium)\r\n\r\n', '12', 'No', '2024-06-10 13:52:15', '2024-06-10 13:52:15'),
('92b6f39f-58d2-47f4-8bb0-d4b5f9672e43', 'To meet a specific person in APC for official business\r\n\r\n\r\n', '10', 'No', '2024-06-10 13:53:19', '2024-06-10 13:53:19'),
('92b6f39f-58d2-47f4-8bb0-d4b5f9672e43', 'To meet a specific person in APC for personal reasons\r\n\r\n\r\n', '11', 'No', '2024-06-10 13:53:19', '2024-06-10 13:53:19'),
('92b6f39f-58d2-47f4-8bb0-d4b5f9672e43', 'To use rented facility (ex. Basketball court, auditorium)\r\n\r\n', '12', 'No', '2024-06-10 13:53:19', '2024-06-10 13:53:19'),
('bb590866-a0dc-4558-9264-6908c35d3029', 'To meet a specific person in APC for official business\r\n\r\n\r\n', '10', 'No', '2024-06-10 13:53:41', '2024-06-10 13:53:41'),
('bb590866-a0dc-4558-9264-6908c35d3029', 'To meet a specific person in APC for personal reasons\r\n\r\n\r\n', '11', 'No', '2024-06-10 13:53:41', '2024-06-10 13:53:41'),
('bb590866-a0dc-4558-9264-6908c35d3029', 'To use rented facility (ex. Basketball court, auditorium)\r\n\r\n', '12', 'No', '2024-06-10 13:53:41', '2024-06-10 13:53:41'),
('9b3d5a79-750c-4d58-91c5-c6af6137a036', 'To meet a specific person in APC for official business\r\n\r\n\r\n', '10', 'No', '2024-06-10 14:02:58', '2024-06-10 14:02:58'),
('9b3d5a79-750c-4d58-91c5-c6af6137a036', 'To meet a specific person in APC for personal reasons\r\n\r\n\r\n', '11', 'No', '2024-06-10 14:02:58', '2024-06-10 14:02:58'),
('2ab2919f-5f19-4133-8c41-c2ac002e67d4', 'To meet a specific person in APC for personal reasons\r\n\r\n\r\n', '11', 'No', '2024-06-10 14:13:39', '2024-06-10 14:13:39'),
('40c0bdda-5079-43fe-b75b-9e821cd3b909', 'Pay Tuition', '1', 'Yes', '2024-06-10 14:20:47', '2024-06-10 14:28:57'),
('10234f01-5657-4ed5-894a-7b1e1f3ac16f', 'To meet a specific person in APC for official business\r\n\r\n\r\n', '10', 'No', '2024-06-10 14:54:46', '2024-06-10 14:54:46'),
('10234f01-5657-4ed5-894a-7b1e1f3ac16f', 'To meet a specific person in APC for personal reasons\r\n\r\n\r\n', '11', 'No', '2024-06-10 14:54:46', '2024-06-10 14:54:46'),
('ae932680-020e-4367-9f40-0c7b6c3dff2a', 'To meet a specific person in APC for official business\r\n\r\n\r\n', '10', 'No', '2024-06-10 14:56:44', '2024-06-10 14:56:44'),
('ae932680-020e-4367-9f40-0c7b6c3dff2a', 'To meet a specific person in APC for personal reasons\r\n\r\n\r\n', '11', 'No', '2024-06-10 14:56:44', '2024-06-10 14:56:44'),
('798688b8-7e42-4bb6-b3c8-f31b9d74c72b', 'To meet a specific person in APC for official business\r\n\r\n\r\n', '10', 'Yes', '2024-06-10 14:57:09', '2024-06-10 14:57:25'),
('798688b8-7e42-4bb6-b3c8-f31b9d74c72b', 'To meet a specific person in APC for personal reasons\r\n\r\n\r\n', '11', 'Yes', '2024-06-10 14:57:09', '2024-06-10 14:57:25'),
('9ab65f2c-98c2-43c2-b65f-d5807a22d015', 'To meet a specific person in APC for official business\r\n\r\n\r\n', '10', 'No', '2024-06-10 14:59:17', '2024-06-10 14:59:17'),
('9ab65f2c-98c2-43c2-b65f-d5807a22d015', 'To meet a specific person in APC for personal reasons\r\n\r\n\r\n', '11', 'No', '2024-06-10 14:59:17', '2024-06-10 14:59:17'),
('f61bcc23-f10a-44ab-938b-7af3402fe917', 'To meet a specific person in APC for official business\r\n\r\n\r\n', '10', 'Yes', '2024-06-10 14:59:41', '2024-06-10 15:00:04'),
('ac79daf0-51d5-4cb5-9e35-af57c222a615', 'To meet a specific person in APC for official business\r\n\r\n\r\n', '10', 'Yes', '2024-06-10 15:07:24', '2024-06-10 15:07:49'),
('eccbda1f-c389-45ce-88c2-c4997a1c3cad', 'To meet a specific person in APC for official business\r\n\r\n\r\n', '10', 'Yes', '2024-06-10 15:41:51', '2024-06-10 15:42:08'),
('eccbda1f-c389-45ce-88c2-c4997a1c3cad', 'To meet a specific person in APC for personal reasons\r\n\r\n\r\n', '11', 'Yes', '2024-06-10 15:41:51', '2024-06-10 15:42:08'),
('10ff80d6-1fe9-45c3-b67d-a50ebe0abb57', 'To meet a specific person in APC for official business\r\n\r\n\r\n', '10', 'No', '2024-06-10 16:11:52', '2024-06-10 16:11:52'),
('10ff80d6-1fe9-45c3-b67d-a50ebe0abb57', 'To meet a specific person in APC for personal reasons\r\n\r\n\r\n', '11', 'No', '2024-06-10 16:11:52', '2024-06-10 16:11:52'),
('51173632-afe7-474c-9918-f05041e7f6a3', 'To meet a specific person in APC for official business\r\n\r\n\r\n', '10', 'Yes', '2024-06-10 16:12:16', '2024-06-10 16:12:34'),
('51173632-afe7-474c-9918-f05041e7f6a3', 'To meet a specific person in APC for personal reasons\r\n\r\n\r\n', '11', 'Yes', '2024-06-10 16:12:16', '2024-06-10 16:12:34'),
('6a2ac48d-b209-4608-978a-197d59405359', 'To meet a specific person in APC for official business\r\n\r\n\r\n', '10', 'No', '2024-06-10 16:39:48', '2024-06-10 16:39:48'),
('6a2ac48d-b209-4608-978a-197d59405359', 'To meet a specific person in APC for personal reasons\r\n\r\n\r\n', '11', 'No', '2024-06-10 16:39:48', '2024-06-10 16:39:48'),
('53754d48-b9d4-4250-bb46-14adf3673c39', 'To meet a specific person in APC for official business\r\n\r\n\r\n', '10', 'No', '2024-06-10 16:41:30', '2024-06-10 16:41:30'),
('53754d48-b9d4-4250-bb46-14adf3673c39', 'To meet a specific person in APC for personal reasons\r\n\r\n\r\n', '11', 'No', '2024-06-10 16:41:30', '2024-06-10 16:41:30'),
('cbc0cd8b-d930-4e8d-aef2-469598da9661', 'Pay Tuition', '1', 'Yes', '2024-06-10 16:59:03', '2024-06-10 17:00:34'),
('cbc0cd8b-d930-4e8d-aef2-469598da9661', 'To meet a specific person in APC for personal reasons\r\n\r\n\r\n', '11', 'Yes', '2024-06-10 16:59:03', '2024-06-10 17:00:34'),
('cbc0cd8b-d930-4e8d-aef2-469598da9661', 'To use rented facility (ex. Basketball court, auditorium)\r\n\r\n', '12', 'Yes', '2024-06-10 16:59:03', '2024-06-10 17:00:34');

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
('1nYICf22uOu3otEXzcvchTwOnsx4xQrMunNY4IdI', NULL, '172.96.171.222', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/51.0.2704.103 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoia3hIeTg2U2k5dmNOU1JnU2V2dGZackVaeGIwQTFPSzNlNGdYckZMMCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly82OC4xODMuMjI4LjE5MiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1719361470),
('1pyyxjkBt1PToEB6tckxkfeCDMiptrpcN9wLChTX', NULL, '202.57.63.181', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiM3ZQOGFjQjhhQ0lsT3ZmbUU4V0p0eVB1Y0tJZ2FJczNsWTFJUjJlZCI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzA6Imh0dHA6Ly82OC4xODMuMjI4LjE5Mi9yZWdpc3RlciI7fX0=', 1719365347),
('4v9obvOcxuggE8qaUIpdXugj3YAxXto9T7VX8N4c', 1, '175.176.41.210', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoidkdrSnFlZmViVUpWVDg1SXRWUHh3YUtvWDVuWW5GMmdXUFpEVklmYSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mzc6Imh0dHA6Ly82OC4xODMuMjI4LjE5Mi9hZG1pbi1kYXNoYm9hcmQiO31zOjUwOiJsb2dpbl93ZWJfNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aToxO30=', 1719368106),
('8BxoHcNxD9ELXJh5xTeYezaaVtFsJTz7VLh2luKL', NULL, '110.54.166.234', 'Mozilla/5.0 (iPad; CPU OS 17_5 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) GSA/321.1.642804631 Mobile/15E148 Safari/604.1', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoicHZFWHFkdVV4SXZFZDUzRnFGSnRnbGFVVVM2UGFZOE9BQ1V4Z1lodSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly82OC4xODMuMjI4LjE5MiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1719364028),
('8IFJrihTVQPEfvgiulmYjUlT5kt14NJcnsazF35E', NULL, '143.110.222.166', 'Mozilla/5.0 (iPhone; CPU iPhone OS 16_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/16.1 Mobile/15E148 Safari/604.1', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiaVkzWHNkY2NJV0EybktzUE4xa0sxUnZLbmJYUWo2QlQ1WHZ2SWc1cSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly82OC4xODMuMjI4LjE5MiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1719370902),
('8KV1d9L1lWHQm9idPVkpYfGniHx2Q0sVk5EWpKsk', NULL, '143.110.222.166', 'Mozilla/5.0 (iPhone; CPU iPhone OS 16_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/16.1 Mobile/15E148 Safari/604.1', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiTnBIOVBOaEdhdkVvdE5NZ05COXZwalJDNlVRWDBleHdHWUJGUmZTdCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly82OC4xODMuMjI4LjE5MiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1719363492),
('EMlQKcSdEFdhzL9LXeg82oc8tI3uMGfsR5WM0WLz', NULL, '175.176.41.210', 'Mozilla/5.0 (iPhone; CPU iPhone OS 17_5 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) CriOS/126.0.6478.54 Mobile/15E148 Safari/604.1', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiNm82OTJZd0tRNmZZSnF2TngzQXo2MnN2cjhTN1pFU09RRzNJcGlIZCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly82OC4xODMuMjI4LjE5MiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1719364886),
('EU1KGyK20PJxrZGkGHpWaPZPZXEU46gF2h6DkgrG', NULL, '110.54.160.160', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoia1ExUldhWDdPNkJmUEp2UmEyUmVZMzB1MnVpMkNjNmN3V2F3QWtTaCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzA6Imh0dHA6Ly82OC4xODMuMjI4LjE5Mi9yZWdpc3RlciI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1719364910),
('Fip8lgWLCODdyeEltPQBjZKfKZieWjgcyUtd2rgE', NULL, '143.110.222.166', 'Mozilla/5.0 (iPhone; CPU iPhone OS 16_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/16.1 Mobile/15E148 Safari/604.1', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiZzE2NmRxUEQyME1Kb0JNUGRGdng1QjBvejFZSFVBbzMyTWR5MFlOSSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly82OC4xODMuMjI4LjE5MiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1719367017),
('I0AeJOx4jzSqPZI8QgFE3KiGyJcC51OOt9EkR19a', 180, '202.57.49.249', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiMGE5a0VBaUNkWHlxN1IwRVV3SDU2NjJndmhtNWJkOFpEWE9zTWNmdCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzA6Imh0dHA6Ly82OC4xODMuMjI4LjE5Mi9yZWdpc3RlciI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fXM6NTA6ImxvZ2luX3dlYl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjE4MDt9', 1719365082),
('I7iT4088hf9lj3eVTQ8tfzGAHbP9Z4g2F6bpedAO', NULL, '176.9.72.62', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.85 Safari/537.36 Edg/90.0.818.46', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiRWNzRWpSQ29jY3Znc0JDMFhFS09XblVkWW1BTGhITzNxRkRyMDBaayI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1719367145),
('IbhYs8rdwVnN2jItb0cz50wQ23hcMm5YSlhB82iq', NULL, '175.176.41.210', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoic1dZVlA1RlQzY2RjN1RGVmpEVWRhOXNxMFh2aTg2clcxQ1FvMFk0QSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1719365446),
('IshQD9WhPnGXedACopLa7te7vlN6cke7YGrUENTn', NULL, '176.9.72.62', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.85 Safari/537.36 Edg/90.0.818.46', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiTDJPMkR3MFM5SGhOZTh6Q2lmb3ltSWM3RVpZTEljcE9GTkNXZ2VVMiI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1719371906),
('LJtkRnlQn1NX3El4XptOWFpaJon0E4rDz15FbhX8', NULL, '54.170.192.250', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_5) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.132 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoidExKVTlCUDVLVjJFRjI2YTFVSXAyYjF4ejVVV3ZsYzlrb1lwUEZVaSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly82OC4xODMuMjI4LjE5MiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1719364922),
('LjwN6RVyqJZZ3ict32RG7R3EWCV2hAoJjp4W2XAK', 182, '175.176.41.210', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiN3gxVWYyQmlFelRDYzZCRlRjSk11VldtdkFROXYzNWV2bGtzR1lBNCI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzA6Imh0dHA6Ly82OC4xODMuMjI4LjE5Mi9yZWdpc3RlciI7fXM6NTA6ImxvZ2luX3dlYl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjE4Mjt9', 1719365717),
('Lk5ERwp5iTmdlcc096FmWrUx7XbWRNl1rHhec8Ww', NULL, '110.54.166.234', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiWG1IbDQ2RDFoV3pWNnJpanZiRzAxOVFDeVI1Wkw2SXdpRGduMThFSCI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly82OC4xODMuMjI4LjE5MiI7fX0=', 1719361808),
('lyelNkPa0Dag2h2IjpJVetPP7lujNvJNmoBBI1QB', NULL, '65.154.226.167', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/117.0.5938.132 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiM1RLbU1BN1FDWDl5OVFRN1FSRVU5VWk0NWdkMVhUVGE5czB4NXQ3VyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly82OC4xODMuMjI4LjE5MiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1719364941),
('noNtl8Zgch3Jv2bgfLDKyCbR2cxEEMbstNcSukYD', NULL, '202.57.49.249', 'QR Scanner Android', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoickZSZlhoREtuc0hhTFdmZWd0MkNoSDV3VlpuUU9COG5BcHFGZ1RGNSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly82OC4xODMuMjI4LjE5MiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1719365269),
('Ru3C8HO6myxS6IUi4SWq2IdNhflPxBXiykjx2u5C', NULL, '142.93.177.97', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiV3RPRXVqSzd1QTUzQzNLMjNhOVZtc2FlTzJndG1odmp4T1Jyc1hQTCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly82OC4xODMuMjI4LjE5MiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1719369019),
('RVRjbvQjKQxGjsZiEliQAEIbW1V4VEB2Wqtjqo1P', NULL, '110.54.166.234', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/17.5 Safari/605.1.15', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoibVFSRGdaRGY1eHhUWDhqWERhOXRXVE1yUjNBbkZsSGlHSWE0RDU3UyI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly82OC4xODMuMjI4LjE5MiI7fX0=', 1719364010),
('sgFF4hTZRExYBw9xP5yZ4Sf56rTv9IMUXrDrL0kk', NULL, '143.110.222.166', 'Mozilla/5.0 (iPhone; CPU iPhone OS 16_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/16.1 Mobile/15E148 Safari/604.1', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiWktXS0FwUDRacFU5WWVDVVd6YmxZNlJ2Y2VGWFRacjN2QXZYUHFJViI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly82OC4xODMuMjI4LjE5MiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1719360772),
('SXrFQVco5BFGjZ9itAEdID9vy12c3nDq17Axfvmg', NULL, '176.9.72.62', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.85 Safari/537.36 Edg/90.0.818.46', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiQ1BnQXRKRjNwUkttNWJCYXhlOFhIYmVsNjdqS2ZiNnN0U2ZGck9yVyI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1719371022),
('t5H2ww6Dzuniyo22ojASm5cAwg0u8W62l82hE3fJ', NULL, '136.158.28.56', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiMWJwRGNSR21RRkZVVXJKSzBzcFd3YUY4d1lCcHhnSnVZOVB4ajRYZSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly82OC4xODMuMjI4LjE5MiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1720371099),
('uu0kD8baAB9swNjLHgFiPC6q318mNNnVy6pchyzj', NULL, '103.203.57.1', 'HTTP Banner Detection (https://security.ipip.net)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiUjdKeElBYmlZMzV0MFprcDI4Wk1ucUc3bUdUWmZjeWF1N2U3SmxHOSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly82OC4xODMuMjI4LjE5MiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1719370770),
('vGxEPgNBFnYA43fxu0bXva6IcaIQKuOTdFLt6hVM', NULL, '185.191.126.213', '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoibkVQNnExaUJybnNWMGp0aHZoVDZqTjdXTGJRUkltcjdLc1FWU2xYUCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly82OC4xODMuMjI4LjE5MiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1719363777),
('VK9oeAFRLu3DWX4tkhtiXe9fy5hIq3Obvo6Vlen3', NULL, '202.57.63.181', 'QR Scanner Android', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiZFpRdWJrcTBqRnYzb2Vnakd2bFZRYzJSanZ5cWR5VEwxbkFBSUU4SCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly82OC4xODMuMjI4LjE5MiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1719364883),
('vkHzbUQLOAfCf5N9GmfQpvLGZygeAznFQXywoPxr', 181, '175.176.41.210', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiWHJWM0RURWRzSTFLa2NpU0tEQnFudFBwaW9LTEM5ZHdRUGlpeVNwaCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzA6Imh0dHA6Ly82OC4xODMuMjI4LjE5Mi9yZWdpc3RlciI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fXM6NTA6ImxvZ2luX3dlYl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjE4MTt9', 1719365443),
('Y15Cq1zYApLcfkITZDekwMSccGEtE8bZOWH6un3t', NULL, '185.224.128.43', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.85 Safari/537.36 Edg/90.0.818.46', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiNEJlNDhqV05yVDBOMHFxQ25iNTVWY2hUc2Q3R3ZwZlE1aHBTM0JWVSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1719359254),
('y6b3rOYUJRd6B76UORP6EvZt2AzeBKk0FpEN66mJ', NULL, '66.249.64.224', 'Mozilla/5.0 (Linux; Android 6.0.1; Nexus 5X Build/MMB29P) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.6422.175 Mobile Safari/537.36 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiUUVzald6Y1d4d1JkWVNzNmtlSkRscTJ1SzFiN0RPeHBJTDlUMWhQNSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDY6Imh0dHA6Ly93d3cuNjgtMTgzLTIyOC0xOTIuY3ByYXBpZC5jb20vcmVnaXN0ZXIiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1719365993),
('YL10Xu7VQU4vmLUVxmDnN9hJUhCc6JQ0hZl2Ij5q', NULL, '162.216.149.112', 'Expanse, a Palo Alto Networks company, searches across the global IPv4 space multiple times per day to identify customers&#39; presences on the Internet. If you would like to be excluded from our scans, please send IP addresses/domains to: scaninfo@paloaltonetworks.com', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiVnQ5ZmNzQlFoRDdWNkoyRjRCSDlIcjYzeDdLaWRTaDNvQVl4RnV0TyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly82OC4xODMuMjI4LjE5MiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1719362070),
('Zf7JQzsWjCsiS2tkjAO4vP1qEYkgUqkQ4rIQuJBu', NULL, '1.37.67.135', 'Mozilla/5.0 (Linux; Android 13; 2201117TG) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Mobile Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiYm1oRWlnUFVrd0VEV3d1SW5BWlRvRm55N2NiSFdEUWt0Rlp3dE9HdyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly82OC4xODMuMjI4LjE5MiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1719361749),
('ZoYlZuzryFiCeTEtobyRGMuTkBsvuD7oIctlOIfj', NULL, '185.224.128.43', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.85 Safari/537.36 Edg/90.0.818.46', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiZjlZVTAxV2hXNUVjWWRRWmZkRmhVSkxYc1FBcGJCQXB2Y1B4UzdnYSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1719364993);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `first_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `phone_number` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `logout_time` timestamp NULL DEFAULT NULL,
  `role` varchar(50) NOT NULL DEFAULT 'visitor'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `first_name`, `last_name`, `phone_number`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `logout_time`, `role`) VALUES
(1, 'Admin', NULL, NULL, 'admin@admin.com', NULL, '$2y$12$a7NAWK9vFDaQdHrYOoE50umcheacj4rxbNl7Do.Uo/rpuaUYmAJFW', 'LQLDxs49FO5WIAqj7GEyAsTtZGeomgr8kmB3NY2huo70anKwjljt77wNNBt7', '2024-05-04 17:10:29', '2024-06-18 13:04:16', NULL, 'admin'),
(2, 'Guard', NULL, NULL, 'guard@guard.com', NULL, '$2y$12$tKNpeMJ9JZ9zhz/vXFd.6OF21UwITmYCDQm4p2v2gqpOlCbA2Y5tq', 'J0TPGOnIHIoSMvXCY7XEliLMolL99p0pCAnXVRyvz7jZCqGOI4l8VXAxhk9w', '2024-05-05 10:38:05', '2024-06-18 13:03:54', NULL, 'guard'),
(162, 'Ready', 'Defense', '09126312535', 'cbespiritu@student.apc.edu.ph', NULL, '$2y$12$6dPRsuG9U5THm0LwBZqRs.ptmy/juFI42K4yfsp2n.0OH52g5fsum', NULL, '2024-06-19 01:53:06', '2024-06-19 08:21:06', '2024-06-19 08:21:06', 'visitor'),
(163, 'Anlo', 'Villaflor', '09127321465', 'cbespiritu@student.apc.edu.ph', NULL, '$2y$12$n4xZ4U917r6oFiv.22K12.ct/Uf/5Xi4VF2fI087er.WCpdOX6oNy', NULL, '2024-06-19 07:36:39', '2024-06-19 07:36:39', NULL, 'visitor'),
(164, 'Juan Daniel', 'Mauricio', '09312312312', 'danielmauricio1413@gmail.com', NULL, '$2y$12$OnyfQG8SjkR.atCRS1es0.LWUYdamzpuMeIGRx37U7Lm3d7y20dpW', NULL, '2024-06-19 08:02:58', '2024-06-19 09:38:44', '2024-06-19 09:38:44', 'visitor'),
(165, 'AnloNewtest', 'Villaflor', '09127321736', 'cbespiritu@student.apc.edu.ph', NULL, '$2y$12$n32cCFN9.3J5UFBeQRlII.sM.8zHJLLmxBF6y6bVdkWCCz5d3nAJK', NULL, '2024-06-19 08:07:31', '2024-06-19 08:07:31', NULL, 'visitor'),
(166, 'Smx', 'Team', '09123621532', 'cbespiritu@student.apc.edu.ph', NULL, '$2y$12$fD3nMybLiyeOwbEiRl6/O.k4SOxNuNLuyLW5Olq8QUk8.guVYBWLW', NULL, '2024-06-19 08:14:37', '2024-06-19 08:21:26', '2024-06-19 08:21:26', 'visitor'),
(167, 'Juan Daniel', 'Maurcicio', '09179834957', 'danielmauricio1413@gmail.com', NULL, '$2y$12$RjNY947lk2xiAPMuQhLXfuqbOOcI.Olt.SyN7JnphpLSXA8dm9XZ.', NULL, '2024-06-19 09:33:01', '2024-06-19 09:33:01', NULL, 'visitor'),
(168, 'Cy', 'Malupet', '09123616236', 'cbespiritu@student.apc.edu.ph', NULL, '$2y$12$x47XCWBCcSzacoJSHyy/xeGg/BR4.aKywcJEyqElGvIVhg.h1UM3W', NULL, '2024-06-20 10:42:25', '2024-06-20 10:45:07', '2024-06-20 10:45:07', 'visitor'),
(169, 'Juan Daniel', 'Mauricio', '09453984758', 'daniel@gmail.com', NULL, '$2y$12$KbGF76aHxeeYpmpDCchVjOHXJBcjXKVf32WYIt3DSJhMi4KiVPqs.', NULL, '2024-06-26 01:18:38', '2024-06-26 01:18:38', NULL, 'visitor'),
(170, 'Ashley', 'Pojol', '09165825607', 'acpojol@student.apc.edu.ph', NULL, '$2y$12$cRT3YDyaXXyK3UmUMWKOf.tUMe.H8j5nKGjdtNu9.XU3CT4Ygn61K', NULL, '2024-06-26 01:18:38', '2024-06-26 01:18:38', NULL, 'visitor'),
(171, 'Yawa', 'Ka', '09554137804', 'gejumpunaulo@gmail.com', NULL, '$2y$12$xafPraiOQz/DzBqFK0Cx0eB5Gq8BpCWGPMxMK7Dp9q8uDjd6eh3zW', NULL, '2024-06-26 01:19:37', '2024-06-26 01:19:37', NULL, 'visitor'),
(172, 'Yawa', 'Ka', '09634451278', 'gejumpunaulo@gmail.com', NULL, '$2y$12$71OJJv6Rqg.sbLpws4Pop.hPxd66BbpmZjlTqYeiiK/ztWSMgwSA2', NULL, '2024-06-26 01:22:36', '2024-06-26 01:22:36', NULL, 'visitor'),
(173, 'Jasmine', 'Tolents', '09541346805', 'jatolentino@student.apc.edu.ph', NULL, '$2y$12$qF.uLCLYNEklxWXhN4/vAuPvREZQiB8oPH3GzJNLvBu1CyGwhPSsG', NULL, '2024-06-26 02:07:33', '2024-06-26 02:07:33', NULL, 'visitor'),
(174, 'Carl Jethro', 'Espiritu', '09610680014', 'cbespiritu@student.apc.edu.ph', NULL, '$2y$12$ONdBCY3XwGoPAXtGX7y8k.0s1OledwUqeukTZqTRkyTrCFt/ixRrm', NULL, '2024-06-26 02:09:05', '2024-06-26 02:09:05', NULL, 'visitor'),
(175, 'Carl Jethro', 'Espiritu', '09610680014', 'cbespiritu@student.apc.edu.ph', NULL, '$2y$12$5.SEah/K6a36VLYeHp.AFuvbjwKH/vWPBMHECN9aImxw793NtX.Am', NULL, '2024-06-26 02:10:33', '2024-06-26 02:10:33', NULL, 'visitor'),
(176, 'hatdog', 'gaming', '09872345617', 'gejumpunaulo@gmail.com', NULL, '$2y$12$qZSUhNh6Y./s.fe7swaw0u5Pp.D2JBAKhqwam5Nn6kptRnTnx1c1K', NULL, '2024-06-26 08:28:27', '2024-06-26 08:28:27', NULL, 'visitor'),
(177, 'Lili', 'Grace', '09634584215', 'jejemoto@gmail.com', NULL, '$2y$12$3MHDI0pFk1LBzrinVhbsHOpyvcaU2ziFLjO3oB5/nKGvIHApLsZ4i', NULL, '2024-06-26 08:29:59', '2024-06-26 08:29:59', NULL, 'visitor'),
(178, 'jasmine', 'haha', '09937272727', 'hello@gmail.com', NULL, '$2y$12$Y04ry7U0sCYNKXTRqNNjvOzLczo4UDhyWhUhaiy0hwsPYm/4eSoZ6', NULL, '2024-06-26 08:30:54', '2024-06-26 08:30:54', NULL, 'visitor'),
(179, 'Jasmine', 'wahaha', '09198273646', 'hahahaha@gmail.com', NULL, '$2y$12$7uMO/nnjliy7TxaVj18MR.jKodzYkN1t1cI/uLWkrmiAtSWPlVy9i', NULL, '2024-06-26 08:32:48', '2024-06-26 08:32:48', NULL, 'visitor'),
(180, 'Aga', 'Muhlach', '09054301234', 'manuelc@apc.edu.ph', NULL, '$2y$12$FTuX4ROTGiSALBOqJ/AUCOWR5dao9hTd/1Mzx4XhW8dfgWbsdahTG', NULL, '2024-06-26 09:24:38', '2024-06-26 09:24:38', NULL, 'visitor'),
(181, 'Carl Jethro', 'Espiritu', '09610680014', 'cbespiritu@student.apc.edu.ph', NULL, '$2y$12$oThWxMjee3lXPGtJmE97/uxa09zJIj4M7ccJ7LDFusUgZfUXL2tiq', NULL, '2024-06-26 09:30:40', '2024-06-26 09:30:40', NULL, 'visitor'),
(182, 'Piolo', 'Pascual', '09123612326', 'piolopascual@gmail.com', NULL, '$2y$12$K.qVxcXWkIFv1T5k2V23E.Rcuhgoyvnp60vr4d7Gtt3vzrz7IvNge', NULL, '2024-06-26 09:35:12', '2024-06-26 09:35:12', NULL, 'visitor');

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=183;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
