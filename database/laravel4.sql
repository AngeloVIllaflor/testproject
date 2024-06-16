-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               5.7.31 - MySQL Community Server (GPL)
-- Server OS:                    Win64
-- HeidiSQL Version:             11.2.0.6213
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Dumping database structure for testproject
DROP DATABASE IF EXISTS `testproject`;
CREATE DATABASE IF NOT EXISTS `testproject` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;
USE `testproject`;

-- Dumping structure for table testproject.cache
DROP TABLE IF EXISTS `cache`;
CREATE TABLE IF NOT EXISTS `cache` (
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int(11) NOT NULL,
  PRIMARY KEY (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table testproject.cache: ~2 rows (approximately)
DELETE FROM `cache`;
/*!40000 ALTER TABLE `cache` DISABLE KEYS */;
INSERT INTO `cache` (`key`, `value`, `expiration`) VALUES
	('user@gmail.com|127.0.0.1', 'i:1;', 1714900255),
	('user@gmail.com|127.0.0.1:timer', 'i:1714900255;', 1714900255);
/*!40000 ALTER TABLE `cache` ENABLE KEYS */;

-- Dumping structure for table testproject.cache_locks
DROP TABLE IF EXISTS `cache_locks`;
CREATE TABLE IF NOT EXISTS `cache_locks` (
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `owner` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int(11) NOT NULL,
  PRIMARY KEY (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table testproject.cache_locks: ~0 rows (approximately)
DELETE FROM `cache_locks`;
/*!40000 ALTER TABLE `cache_locks` DISABLE KEYS */;
/*!40000 ALTER TABLE `cache_locks` ENABLE KEYS */;

-- Dumping structure for table testproject.departments
DROP TABLE IF EXISTS `departments`;
CREATE TABLE IF NOT EXISTS `departments` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `purpose` varchar(255) DEFAULT NULL,
  `description` varchar(255) NOT NULL,
  `location` varchar(255) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Dumping data for table testproject.departments: ~12 rows (approximately)
DELETE FROM `departments`;
/*!40000 ALTER TABLE `departments` DISABLE KEYS */;
INSERT INTO `departments` (`id`, `name`, `purpose`, `description`, `location`, `email`, `created_at`, `updated_at`) VALUES
	('1', 'Pay Tuition', 'Finance Office', 'Handles all financial transactions and budgeting.', 'ROOM 1', 'danielmauricio1413@gmail.com', '2024-06-11 08:26:46', '2024-05-21 02:00:00'),
	('10', 'To meet a specific person in APC for official business\r\n\r\n\r\n', 'Different offices', 'Responsible for student admissions and recruitment.', 'ROOM 2', 'danielmauricio1413@gmail.com', '2024-06-11 08:26:52', '2024-05-21 02:10:00'),
	('11', 'To meet a specific person in APC for personal reasons\r\n\r\n\r\n', 'Meeting rooms', 'Responsible for student admissions and recruitment.', NULL, 'danielmauricio1413@gmail.com', '2024-06-09 07:15:06', '2024-05-21 02:10:00'),
	('12', 'To use rented facility (ex. Basketball court, auditorium)\r\n\r\n', 'Different offices', 'Responsible for student admissions and recruitment.', 'ROOM 4', 'danielmauricio1413@gmail.com', '2024-06-11 08:27:03', '2024-05-21 02:10:00'),
	('2', 'Apply/Retrieve Official Docs', 'Registrar Office', 'Manages student records and enrollment processes.', NULL, 'anvillaflor@student.apc.edu.ph', '2024-06-09 07:08:45', '2024-05-21 02:05:00'),
	('3', 'Purchase PE uniform', 'Logistics Office', 'Responsible for student admissions and recruitment.', NULL, 'danielmauricio1413@gmail.com', '2024-06-09 07:15:00', '2024-05-21 02:10:00'),
	('4', 'Discuss academic performance of child with ExD/PD', 'Discussion room', 'Responsible for student admissions and recruitment.', 'ROOM3', 'danielmauricio1413@gmail.com', '2024-06-11 08:26:57', '2024-05-21 02:10:00'),
	('5', 'Discuss academic performance of child with faculty', 'Discussion room', 'Responsible for student admissions and recruitment.', 'ROOM 5', 'danielmauricio1413@gmail.com', '2024-06-11 08:27:07', '2024-05-21 02:10:00'),
	('6', 'Discuss academic performance of child with guidance', 'Guidance office', 'Responsible for student admissions and recruitment.', NULL, 'danielmauricio1413@gmail.com', '2024-06-09 07:14:54', '2024-05-21 02:10:00'),
	('7', 'Re-apply to go back to school - process\r\n\r\n', 'Registrar\r\n', 'Responsible for student admissions and recruitment.', NULL, 'danielmauricio1413@gmail.com', '2024-06-09 07:15:13', '2024-05-21 02:10:00'),
	('8', 'Re-apply to go back to school – acad planning w/ ExD\r\n\r\n\r\n', 'Discussion room', 'Responsible for student admissions and recruitment.', NULL, 'danielmauricio1413@gmail.com', '2024-06-09 07:14:46', '2024-05-21 02:10:00'),
	('9', 'Apply to APC as SHS, College student, transferee\r\n\r\n', 'Admissions', 'Responsible for student admissions and recruitment.', NULL, 'danielmauricio1413@gmail.com', '2024-06-09 07:14:13', '2024-05-21 02:10:00');
/*!40000 ALTER TABLE `departments` ENABLE KEYS */;

-- Dumping structure for table testproject.department_user_table
DROP TABLE IF EXISTS `department_user_table`;
CREATE TABLE IF NOT EXISTS `department_user_table` (
  `user_id` bigint(20) unsigned NOT NULL,
  `department_id` bigint(20) unsigned NOT NULL,
  `status` varchar(50) DEFAULT '',
  `finished_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

-- Dumping data for table testproject.department_user_table: 4 rows
DELETE FROM `department_user_table`;
/*!40000 ALTER TABLE `department_user_table` DISABLE KEYS */;
INSERT INTO `department_user_table` (`user_id`, `department_id`, `status`, `finished_at`) VALUES
	(153, 1, 'On Going', NULL),
	(153, 10, 'On Going', NULL),
	(153, 11, 'On Going', NULL),
	(153, 12, 'Done', '2024-06-17 02:51:17'),
	(154, 1, 'On Going', NULL),
	(154, 2, 'On Going', NULL),
	(154, 3, 'On Going', NULL),
	(155, 1, 'Done', '2024-06-16 11:11:32'),
	(155, 10, 'Done', '2024-06-16 11:12:20'),
	(155, 12, 'Done', '2024-06-16 11:12:35');
/*!40000 ALTER TABLE `department_user_table` ENABLE KEYS */;

-- Dumping structure for table testproject.failed_jobs
DROP TABLE IF EXISTS `failed_jobs`;
CREATE TABLE IF NOT EXISTS `failed_jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table testproject.failed_jobs: ~0 rows (approximately)
DELETE FROM `failed_jobs`;
/*!40000 ALTER TABLE `failed_jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `failed_jobs` ENABLE KEYS */;

-- Dumping structure for table testproject.jobs
DROP TABLE IF EXISTS `jobs`;
CREATE TABLE IF NOT EXISTS `jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `queue` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint(3) unsigned NOT NULL,
  `reserved_at` int(10) unsigned DEFAULT NULL,
  `available_at` int(10) unsigned NOT NULL,
  `created_at` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `jobs_queue_index` (`queue`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table testproject.jobs: ~0 rows (approximately)
DELETE FROM `jobs`;
/*!40000 ALTER TABLE `jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `jobs` ENABLE KEYS */;

-- Dumping structure for table testproject.job_batches
DROP TABLE IF EXISTS `job_batches`;
CREATE TABLE IF NOT EXISTS `job_batches` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_jobs` int(11) NOT NULL,
  `pending_jobs` int(11) NOT NULL,
  `failed_jobs` int(11) NOT NULL,
  `failed_job_ids` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `options` mediumtext COLLATE utf8mb4_unicode_ci,
  `cancelled_at` int(11) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `finished_at` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table testproject.job_batches: ~0 rows (approximately)
DELETE FROM `job_batches`;
/*!40000 ALTER TABLE `job_batches` DISABLE KEYS */;
/*!40000 ALTER TABLE `job_batches` ENABLE KEYS */;

-- Dumping structure for table testproject.migrations
DROP TABLE IF EXISTS `migrations`;
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table testproject.migrations: ~3 rows (approximately)
DELETE FROM `migrations`;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
	(1, '0001_01_01_000000_create_users_table', 1),
	(2, '0001_01_01_000001_create_cache_table', 1),
	(3, '0001_01_01_000002_create_jobs_table', 1);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;

-- Dumping structure for table testproject.password_reset_tokens
DROP TABLE IF EXISTS `password_reset_tokens`;
CREATE TABLE IF NOT EXISTS `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table testproject.password_reset_tokens: ~0 rows (approximately)
DELETE FROM `password_reset_tokens`;
/*!40000 ALTER TABLE `password_reset_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_reset_tokens` ENABLE KEYS */;

-- Dumping structure for table testproject.purposes
DROP TABLE IF EXISTS `purposes`;
CREATE TABLE IF NOT EXISTS `purposes` (
  `id` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `department_id` varchar(255) NOT NULL,
  `department_status` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Dumping data for table testproject.purposes: ~259 rows (approximately)
DELETE FROM `purposes`;
/*!40000 ALTER TABLE `purposes` DISABLE KEYS */;
INSERT INTO `purposes` (`id`, `description`, `department_id`, `department_status`, `created_at`, `updated_at`) VALUES
	('1d1c25f8-58d2-43e9-b732-a562c6c02df3', 'Pay Tuition', '', '', '2024-05-06 23:21:50', '2024-05-06 23:21:50'),
	('1d1c25f8-58d2-43e9-b732-a562c6c02df3', 'Inquire', '', '', '2024-05-06 23:21:50', '2024-05-06 23:21:50'),
	('10fc85cf-3b1d-4d81-852a-d72950b02810', 'Inquire', '', '', '2024-05-06 23:29:06', '2024-05-06 23:29:06'),
	('10fc85cf-3b1d-4d81-852a-d72950b02810', 'Request Documents', '', '', '2024-05-06 23:29:06', '2024-05-06 23:29:06'),
	('45e06436-68d1-4804-a9ff-fe0c464ca684', 'Pay Tuition', '', '', '2024-05-06 23:59:54', '2024-05-06 23:59:54'),
	('45e06436-68d1-4804-a9ff-fe0c464ca684', 'Inquire', '', '', '2024-05-06 23:59:54', '2024-05-06 23:59:54'),
	('45e06436-68d1-4804-a9ff-fe0c464ca684', 'Request Documents', '', '', '2024-05-06 23:59:54', '2024-05-06 23:59:54'),
	('d8ed3222-e176-4e29-a9f1-7930e433b07f', 'Pay Tuition', '', '', '2024-05-07 00:55:44', '2024-05-07 00:55:44'),
	('d8ed3222-e176-4e29-a9f1-7930e433b07f', 'Inquire', '', '', '2024-05-07 00:55:44', '2024-05-07 00:55:44'),
	('cc2d3d38-61d8-4fe3-9101-6805c2067b5c', 'Pay Tuition', '', '', '2024-05-07 01:16:57', '2024-05-07 01:16:57'),
	('cc2d3d38-61d8-4fe3-9101-6805c2067b5c', 'Inquire', '', '', '2024-05-07 01:16:57', '2024-05-07 01:16:57'),
	('cc2d3d38-61d8-4fe3-9101-6805c2067b5c', 'Request Documents', '', '', '2024-05-07 01:16:57', '2024-05-07 01:16:57'),
	('34b0b684-05e2-4fa3-a7db-2256008c0857', 'Pay Tuition', '', '', '2024-05-07 05:49:49', '2024-05-07 05:49:49'),
	('34b0b684-05e2-4fa3-a7db-2256008c0857', 'Inquire', '', '', '2024-05-07 05:49:49', '2024-05-07 05:49:49'),
	('14310e60-311f-435c-ad8f-3bc67a746137', 'Pay Tuition', '', '', '2024-05-07 16:36:55', '2024-05-07 16:36:55'),
	('14310e60-311f-435c-ad8f-3bc67a746137', 'Inquire', '', '', '2024-05-07 16:36:55', '2024-05-07 16:36:55'),
	('14310e60-311f-435c-ad8f-3bc67a746137', 'Request Documents', '', '', '2024-05-07 16:36:55', '2024-05-07 16:36:55'),
	('93fd0126-1c37-43ae-994f-08998b44d332', 'Pay Tuition', '', '', '2024-05-07 17:08:31', '2024-05-07 17:08:31'),
	('93fd0126-1c37-43ae-994f-08998b44d332', 'Inquire', '', '', '2024-05-07 17:08:31', '2024-05-07 17:08:31'),
	('93fd0126-1c37-43ae-994f-08998b44d332', 'Request Documents', '', '', '2024-05-07 17:08:31', '2024-05-07 17:08:31'),
	('dbb681e3-0484-4943-b702-7dbebc87cf28', 'Pay Tuition', '', '', '2024-05-07 17:43:02', '2024-05-07 17:43:02'),
	('2aa36089-b295-4217-ada0-f4481ac65b3f', 'Pay Tuition', '', '', '2024-05-14 17:50:33', '2024-05-14 17:50:33'),
	('2aa36089-b295-4217-ada0-f4481ac65b3f', 'Inquire', '', '', '2024-05-14 17:50:33', '2024-05-14 17:50:33'),
	('2aa36089-b295-4217-ada0-f4481ac65b3f', 'Request Documents', '', '', '2024-05-14 17:50:33', '2024-05-14 17:50:33'),
	('cba5eda5-22dd-4b24-948b-163b47ee00d3', 'Pay Tuition', '', '', '2024-05-16 05:06:43', '2024-05-16 05:06:43'),
	('cba5eda5-22dd-4b24-948b-163b47ee00d3', 'Inquire', '', '', '2024-05-16 05:06:43', '2024-05-16 05:06:43'),
	('cba5eda5-22dd-4b24-948b-163b47ee00d3', 'Request Documents', '', '', '2024-05-16 05:06:43', '2024-05-16 05:06:43'),
	('5e79bafc-6330-4e05-9b51-1c8f368ed762', 'Inquire', '', '', '2024-05-20 23:22:31', '2024-05-20 23:22:31'),
	('5e79bafc-6330-4e05-9b51-1c8f368ed762', 'Request Documents', '', '', '2024-05-20 23:22:31', '2024-05-20 23:22:31'),
	('7887345e-d82a-4779-98a2-b9dc0cf06efa', 'Inquire', '', '', '2024-05-20 23:28:13', '2024-05-20 23:28:13'),
	('7887345e-d82a-4779-98a2-b9dc0cf06efa', 'Request Documents', '', '', '2024-05-20 23:28:13', '2024-05-20 23:28:13'),
	('940de55c-a8a9-436c-a77f-30d03a1f6c2f', 'Inquire', '', '', '2024-05-20 23:30:41', '2024-05-20 23:30:41'),
	('940de55c-a8a9-436c-a77f-30d03a1f6c2f', 'Request Documents', '', '', '2024-05-20 23:30:41', '2024-05-20 23:30:41'),
	('32e2e754-928e-41bd-9da4-e1a5a5038d71', 'Pay Tuition', '', '', '2024-05-20 23:32:01', '2024-05-20 23:32:01'),
	('32e2e754-928e-41bd-9da4-e1a5a5038d71', 'Inquire', '', '', '2024-05-20 23:32:01', '2024-05-20 23:32:01'),
	('32e2e754-928e-41bd-9da4-e1a5a5038d71', 'Request Documents', '', '', '2024-05-20 23:32:01', '2024-05-20 23:32:01'),
	('1228292e-ebfc-4b47-95d0-8c2e17f08c46', 'Inquire', 'test', '', '2024-05-21 00:13:56', '2024-05-21 00:13:56'),
	('1228292e-ebfc-4b47-95d0-8c2e17f08c46', 'Request Documents', 'test', '', '2024-05-21 00:13:56', '2024-05-21 00:13:56'),
	('d22aa8ea-9879-4417-8d1e-16a29e92996e', 'Pay Tuition', 'test', '', '2024-05-21 16:50:24', '2024-05-21 16:50:24'),
	('d22aa8ea-9879-4417-8d1e-16a29e92996e', 'Inquire', 'test', '', '2024-05-21 16:50:24', '2024-05-21 16:50:24'),
	('d22aa8ea-9879-4417-8d1e-16a29e92996e', 'Request Documents', 'test', '', '2024-05-21 16:50:24', '2024-05-21 16:50:24'),
	('4b960486-4c19-4847-92dd-4c94623ebb4c', 'Inquire', 'test', '', '2024-05-21 21:28:36', '2024-05-21 21:28:36'),
	('4b960486-4c19-4847-92dd-4c94623ebb4c', 'Request Documents', 'test', '', '2024-05-21 21:28:36', '2024-05-21 21:28:36'),
	('0d063903-4b90-46bf-be34-4a989b48aa7f', 'Inquire', 'test', '', '2024-05-21 22:21:03', '2024-05-21 22:21:03'),
	('0d063903-4b90-46bf-be34-4a989b48aa7f', 'Request Documents', 'test', '', '2024-05-21 22:21:03', '2024-05-21 22:21:03'),
	('cf753c27-9359-4518-846a-0fd1aa0c042e', 'Inquire', 'test', '', '2024-05-21 22:27:54', '2024-05-21 22:27:54'),
	('cf753c27-9359-4518-846a-0fd1aa0c042e', 'Request Documents', 'test', '', '2024-05-21 22:27:54', '2024-05-21 22:27:54'),
	('a491da0e-8f60-425e-8fca-b1c6eb36a36a', 'Registrar', '2', '', '2024-05-21 23:37:40', '2024-05-21 23:37:40'),
	('a491da0e-8f60-425e-8fca-b1c6eb36a36a', 'Admissions', '3', '', '2024-05-21 23:37:40', '2024-05-21 23:37:40'),
	('33ccd892-028a-4f0e-8b25-6d666e119043', 'Finance', '1', '', '2024-05-21 23:40:08', '2024-05-21 23:40:08'),
	('33ccd892-028a-4f0e-8b25-6d666e119043', 'Registrar', '2', '', '2024-05-21 23:40:08', '2024-05-21 23:40:08'),
	('94e0a1ed-177f-46a6-a369-5c24cf527c49', 'Finance', '1', '', '2024-05-21 23:42:59', '2024-05-21 23:42:59'),
	('94e0a1ed-177f-46a6-a369-5c24cf527c49', 'Registrar', '2', '', '2024-05-21 23:42:59', '2024-05-21 23:42:59'),
	('94e0a1ed-177f-46a6-a369-5c24cf527c49', 'Admissions', '3', '', '2024-05-21 23:42:59', '2024-05-21 23:42:59'),
	('1ad0784e-3215-42d2-8d1c-99f604670e67', 'Finance', '1', '', '2024-05-21 23:44:10', '2024-05-21 23:44:10'),
	('1ad0784e-3215-42d2-8d1c-99f604670e67', 'Registrar', '2', '', '2024-05-21 23:44:10', '2024-05-21 23:44:10'),
	('3233515b-07ed-4e9b-9f0c-9f20dd2901c5', 'Finance', '1', '', '2024-05-21 23:45:20', '2024-05-21 23:45:20'),
	('3233515b-07ed-4e9b-9f0c-9f20dd2901c5', 'Registrar', '2', '', '2024-05-21 23:45:20', '2024-05-21 23:45:20'),
	('3233515b-07ed-4e9b-9f0c-9f20dd2901c5', 'Admissions', '3', '', '2024-05-21 23:45:20', '2024-05-21 23:45:20'),
	('32f1dda6-132d-4432-bf34-a02ba7d4ec4e', 'Finance', '1', '', '2024-05-21 23:46:27', '2024-05-21 23:46:27'),
	('32f1dda6-132d-4432-bf34-a02ba7d4ec4e', 'Registrar', '2', '', '2024-05-21 23:46:27', '2024-05-21 23:46:27'),
	('32f1dda6-132d-4432-bf34-a02ba7d4ec4e', 'Admissions', '3', '', '2024-05-21 23:46:27', '2024-05-21 23:46:27'),
	('bd3d4be1-1e7c-4894-9f94-b59c77399901', 'Registrar', '2', '', '2024-05-21 23:47:16', '2024-05-21 23:47:16'),
	('bd3d4be1-1e7c-4894-9f94-b59c77399901', 'Admissions', '3', '', '2024-05-21 23:47:16', '2024-05-21 23:47:16'),
	('3153e44d-342a-47a8-9c5a-2f756d1f4a65', 'Finance', '1', '', '2024-05-21 23:51:24', '2024-05-21 23:51:24'),
	('3153e44d-342a-47a8-9c5a-2f756d1f4a65', 'Registrar', '2', '', '2024-05-21 23:51:24', '2024-05-21 23:51:24'),
	('3153e44d-342a-47a8-9c5a-2f756d1f4a65', 'Admissions', '3', '', '2024-05-21 23:51:24', '2024-05-21 23:51:24'),
	('a00bafcd-3250-426b-8283-de22106c2c49', 'Finance', '1', '', '2024-05-28 02:32:36', '2024-05-28 02:32:36'),
	('9b523033-6fa2-4b52-b611-dea1019546e5', 'Finance', '1', '', '2024-05-28 02:34:29', '2024-05-28 02:34:29'),
	('d44da4a6-a901-436d-8352-66370ec228ec', 'Finance', '1', '', '2024-05-28 02:36:35', '2024-05-28 02:36:35'),
	('0b0daf53-e068-4884-9e50-620a21de5cb8', 'Finance', '1', '', '2024-05-28 02:38:24', '2024-05-28 02:38:24'),
	('13eed8ea-8bff-41e4-8f42-56e7252cce90', 'Finance', '1', '', '2024-05-28 02:41:28', '2024-05-28 02:41:28'),
	('4bcb0ef0-8881-4a01-9f4b-b88e7e67d4e8', 'Finance', '1', '', '2024-05-28 16:01:30', '2024-05-28 16:01:30'),
	('88a50ba4-03ab-4a94-a365-8bffc445b568', 'Finance', '1', '', '2024-05-28 17:19:39', '2024-05-28 17:19:39'),
	('bb696fdb-dc4c-4883-a949-ade84f290826', 'Finance', '1', '', '2024-05-28 23:33:03', '2024-05-28 23:33:03'),
	('4d9738c0-5363-40f3-b84c-395e11c90608', 'Finance', '1', '', '2024-06-02 01:49:09', '2024-06-02 01:49:09'),
	('a614b67c-a942-498a-869a-02802d43088d', 'Finance', '1', '', '2024-06-02 01:52:04', '2024-06-02 01:52:04'),
	('c07a863a-186e-43b3-b4c6-391be800e960', 'Finance', '1', '', '2024-06-03 06:34:31', '2024-06-03 06:34:31'),
	('b0a41d02-c4e0-4057-8c8c-967d78424472', 'Finance', '1', '', '2024-06-03 08:30:04', '2024-06-03 08:30:04'),
	('4f8e3021-b2e2-46bc-b990-ad1ee273c9f8', 'Finance', '1', '', '2024-06-03 08:40:02', '2024-06-03 08:40:02'),
	('beff15ab-ad31-4914-af71-fef0547c626d', 'Finance', '1', '', '2024-06-03 18:34:49', '2024-06-03 18:34:49'),
	('beff15ab-ad31-4914-af71-fef0547c626d', 'Registrar', '2', '', '2024-06-03 18:34:49', '2024-06-03 18:34:49'),
	('beff15ab-ad31-4914-af71-fef0547c626d', 'Admissions', '3', '', '2024-06-03 18:34:49', '2024-06-03 18:34:49'),
	('9d2ecb0d-94e3-4b74-a223-e8546485b42b', 'Finance', '1', '', '2024-06-03 20:31:35', '2024-06-03 20:31:35'),
	('9d2ecb0d-94e3-4b74-a223-e8546485b42b', 'Registrar', '2', '', '2024-06-03 20:31:35', '2024-06-03 20:31:35'),
	('9d2ecb0d-94e3-4b74-a223-e8546485b42b', 'Admissions', '3', '', '2024-06-03 20:31:35', '2024-06-03 20:31:35'),
	('e35c9371-f836-4a05-85ee-57d9ad9e78a2', 'Finance', '1', '', '2024-06-03 20:33:43', '2024-06-03 20:33:43'),
	('e35c9371-f836-4a05-85ee-57d9ad9e78a2', 'Registrar', '2', '', '2024-06-03 20:33:43', '2024-06-03 20:33:43'),
	('e35c9371-f836-4a05-85ee-57d9ad9e78a2', 'Admissions', '3', '', '2024-06-03 20:33:43', '2024-06-03 20:33:43'),
	('73cdaa9c-cab1-4bd6-a388-94504a49a4a1', 'Finance', '1', '', '2024-06-04 17:20:19', '2024-06-04 17:20:19'),
	('73cdaa9c-cab1-4bd6-a388-94504a49a4a1', 'Registrar', '2', '', '2024-06-04 17:20:19', '2024-06-04 17:20:19'),
	('be102ca7-f5f6-4814-9f17-fbcfa0d805ab', 'Finance', '1', '', '2024-06-07 22:09:25', '2024-06-07 22:09:25'),
	('be102ca7-f5f6-4814-9f17-fbcfa0d805ab', 'Registrar', '2', '', '2024-06-07 22:09:25', '2024-06-07 22:09:25'),
	('be102ca7-f5f6-4814-9f17-fbcfa0d805ab', 'Admissions', '3', '', '2024-06-07 22:09:25', '2024-06-07 22:09:25'),
	('9986aa60-a633-42d2-896b-f739f5d78775', 'Finance', '1', '', '2024-06-07 22:21:45', '2024-06-07 22:21:45'),
	('9986aa60-a633-42d2-896b-f739f5d78775', 'Registrar', '2', '', '2024-06-07 22:21:45', '2024-06-07 22:21:45'),
	('9986aa60-a633-42d2-896b-f739f5d78775', 'Admissions', '3', '', '2024-06-07 22:21:45', '2024-06-07 22:21:45'),
	('dd01bea2-7660-414b-905a-be490d2af596', 'Finance', '1', '', '2024-06-07 22:32:30', '2024-06-07 22:32:30'),
	('dd01bea2-7660-414b-905a-be490d2af596', 'Registrar', '2', '', '2024-06-07 22:32:30', '2024-06-07 22:32:30'),
	('2acbfd13-4d7e-45cf-90ba-ba4099d656f9', 'Finance', '1', 'No', '2024-06-07 23:17:23', '2024-06-07 23:17:23'),
	('2acbfd13-4d7e-45cf-90ba-ba4099d656f9', 'Registrar', '2', 'No', '2024-06-07 23:17:23', '2024-06-07 23:17:23'),
	('0cfe2187-b24f-42f9-8852-54865ea8f54f', 'Finance', '1', 'No', '2024-06-07 23:20:17', '2024-06-07 23:20:17'),
	('0cfe2187-b24f-42f9-8852-54865ea8f54f', 'Registrar', '2', 'No', '2024-06-07 23:20:17', '2024-06-07 23:20:17'),
	('eb0a49d2-10dd-4342-bbeb-34154d02d70b', 'Finance', '1', 'No', '2024-06-07 23:26:39', '2024-06-07 23:26:39'),
	('eb0a49d2-10dd-4342-bbeb-34154d02d70b', 'Registrar', '2', 'No', '2024-06-07 23:26:39', '2024-06-07 23:26:39'),
	('8661a866-78e8-41a6-b68c-8213afd41e91', 'Finance', '1', 'No', '2024-06-07 23:29:17', '2024-06-07 23:29:17'),
	('8661a866-78e8-41a6-b68c-8213afd41e91', 'Registrar', '2', 'No', '2024-06-07 23:29:17', '2024-06-07 23:29:17'),
	('bee62f0e-f707-4b98-80dd-d42283dfcf82', 'Finance', '1', 'No', '2024-06-07 23:30:13', '2024-06-07 23:30:13'),
	('bee62f0e-f707-4b98-80dd-d42283dfcf82', 'Registrar', '2', 'No', '2024-06-07 23:30:13', '2024-06-07 23:30:13'),
	('149e6c73-b18b-4c2f-9897-fdb52b9e14af', 'Finance', '1', 'No', '2024-06-07 23:38:13', '2024-06-07 23:38:13'),
	('149e6c73-b18b-4c2f-9897-fdb52b9e14af', 'Registrar', '2', 'No', '2024-06-07 23:38:13', '2024-06-07 23:38:13'),
	('f6d935e5-940d-452b-a205-b8deadce6ed5', 'Finance', '1', 'No', '2024-06-07 23:49:22', '2024-06-07 23:49:22'),
	('f6d935e5-940d-452b-a205-b8deadce6ed5', 'Registrar', '2', 'No', '2024-06-07 23:49:22', '2024-06-07 23:49:22'),
	('52922ba4-053e-4737-a103-10d34235b494', 'Finance', '1', 'No', '2024-06-07 23:53:01', '2024-06-07 23:53:01'),
	('52922ba4-053e-4737-a103-10d34235b494', 'Registrar', '2', 'No', '2024-06-07 23:53:01', '2024-06-07 23:53:01'),
	('7be40eb5-5da0-4932-83ec-5249b9c05be6', 'Finance', '1', 'No', '2024-06-07 23:55:35', '2024-06-07 23:55:35'),
	('7be40eb5-5da0-4932-83ec-5249b9c05be6', 'Registrar', '2', 'No', '2024-06-07 23:55:35', '2024-06-07 23:55:35'),
	('c27933b0-5bfc-460e-917a-6c1bdc0db5b0', 'Finance', '1', 'No', '2024-06-07 23:57:35', '2024-06-07 23:57:35'),
	('c27933b0-5bfc-460e-917a-6c1bdc0db5b0', 'Registrar', '2', 'No', '2024-06-07 23:57:35', '2024-06-07 23:57:35'),
	('e3d94409-b9eb-443c-b63c-ec67c9b1c3e1', 'Finance', '1', 'No', '2024-06-08 00:01:47', '2024-06-08 00:01:47'),
	('e3d94409-b9eb-443c-b63c-ec67c9b1c3e1', 'Registrar', '2', 'No', '2024-06-08 00:01:47', '2024-06-08 00:01:47'),
	('8f7d5a9d-cdb4-4a7a-8b29-62e7c7672636', 'Finance', '1', 'No', '2024-06-08 00:02:31', '2024-06-08 00:02:31'),
	('8f7d5a9d-cdb4-4a7a-8b29-62e7c7672636', 'Registrar', '2', 'No', '2024-06-08 00:02:31', '2024-06-08 00:02:31'),
	('a2b0dac4-5071-4a19-a2e2-155b0d2cfb44', 'Finance', '1', 'No', '2024-06-08 00:05:38', '2024-06-08 00:05:38'),
	('a2b0dac4-5071-4a19-a2e2-155b0d2cfb44', 'Registrar', '2', 'No', '2024-06-08 00:05:38', '2024-06-08 00:05:38'),
	('38b83c66-5dde-4f8b-98c1-e899d35dc8b1', 'Finance', '1', 'No', '2024-06-08 00:06:50', '2024-06-08 00:06:50'),
	('38b83c66-5dde-4f8b-98c1-e899d35dc8b1', 'Registrar', '2', 'No', '2024-06-08 00:06:50', '2024-06-08 00:06:50'),
	('2615c619-0ee7-46d4-877a-409c6203442a', 'Finance', '1', 'No', '2024-06-08 00:39:16', '2024-06-08 00:39:16'),
	('2615c619-0ee7-46d4-877a-409c6203442a', 'Registrar', '2', 'No', '2024-06-08 00:39:16', '2024-06-08 00:39:16'),
	('b07ef930-6bbd-4fd3-8ac7-bdb702ab506c', 'Finance', '1', 'No', '2024-06-08 00:46:00', '2024-06-08 00:46:00'),
	('b07ef930-6bbd-4fd3-8ac7-bdb702ab506c', 'Registrar', '2', 'No', '2024-06-08 00:46:00', '2024-06-08 00:46:00'),
	('bcc09c3f-4fe3-42e0-8b40-974a6ce704fc', 'Finance', '1', 'No', '2024-06-08 00:46:51', '2024-06-08 00:46:51'),
	('bcc09c3f-4fe3-42e0-8b40-974a6ce704fc', 'Registrar', '2', 'No', '2024-06-08 00:46:51', '2024-06-08 00:46:51'),
	('d502ec75-810a-42ee-8e0e-0fa9cb449607', 'Finance', '1', 'No', '2024-06-08 01:04:45', '2024-06-08 01:04:45'),
	('d502ec75-810a-42ee-8e0e-0fa9cb449607', 'Registrar', '2', 'No', '2024-06-08 01:04:45', '2024-06-08 01:04:45'),
	('b6a41c6c-5a25-49ef-a485-cf46c2054b21', 'Finance', '1', 'No', '2024-06-08 21:33:17', '2024-06-08 21:33:17'),
	('b6a41c6c-5a25-49ef-a485-cf46c2054b21', 'Registrar', '2', 'No', '2024-06-08 21:33:17', '2024-06-08 21:33:17'),
	('5486fdd1-53f2-47e2-98fd-834d49dc143b', 'Finance', '1', 'No', '2024-06-08 21:35:44', '2024-06-08 21:35:44'),
	('5486fdd1-53f2-47e2-98fd-834d49dc143b', 'Registrar', '2', 'No', '2024-06-08 21:35:44', '2024-06-08 21:35:44'),
	('e1d568c0-9f05-4618-9436-e7a2941069a0', 'Finance', '1', 'No', '2024-06-08 21:58:51', '2024-06-08 21:58:51'),
	('e1d568c0-9f05-4618-9436-e7a2941069a0', 'Registrar', '2', 'No', '2024-06-08 21:58:51', '2024-06-08 21:58:51'),
	('4cee74dc-b216-4ed2-8d53-e9b133faabe3', 'Finance', '1', 'No', '2024-06-08 22:02:31', '2024-06-08 22:02:31'),
	('4cee74dc-b216-4ed2-8d53-e9b133faabe3', 'Registrar', '2', 'No', '2024-06-08 22:02:31', '2024-06-08 22:02:31'),
	('ac2747bc-dd23-4b80-8cfe-5d9911b5ab12', 'Finance', '1', 'No', '2024-06-08 22:04:08', '2024-06-08 22:04:08'),
	('ac2747bc-dd23-4b80-8cfe-5d9911b5ab12', 'Registrar', '2', 'No', '2024-06-08 22:04:08', '2024-06-08 22:04:08'),
	('03496401-04b1-4bd7-9a38-c1123433bebf', 'Finance', '1', 'No', '2024-06-08 22:06:31', '2024-06-08 22:06:31'),
	('03496401-04b1-4bd7-9a38-c1123433bebf', 'Registrar', '2', 'No', '2024-06-08 22:06:31', '2024-06-08 22:06:31'),
	('82ccb7c1-f806-41f7-b451-5f4db39d2e2f', 'Finance', '1', 'No', '2024-06-08 22:07:40', '2024-06-08 22:07:40'),
	('82ccb7c1-f806-41f7-b451-5f4db39d2e2f', 'Registrar', '2', 'No', '2024-06-08 22:07:40', '2024-06-08 22:07:40'),
	('8c8e225c-0fa4-4015-ac5b-f4e11deb8549', 'Finance', '1', 'No', '2024-06-08 22:08:55', '2024-06-08 22:08:55'),
	('8c8e225c-0fa4-4015-ac5b-f4e11deb8549', 'Registrar', '2', 'No', '2024-06-08 22:08:55', '2024-06-08 22:08:55'),
	('c550ba5c-410b-45cc-a1c4-a24309c1c52e', 'Finance', '1', 'No', '2024-06-08 22:11:03', '2024-06-08 22:11:03'),
	('c550ba5c-410b-45cc-a1c4-a24309c1c52e', 'Registrar', '2', 'No', '2024-06-08 22:11:03', '2024-06-08 22:11:03'),
	('81bedb05-a2bf-4eee-b239-837207d06f02', 'Finance', '1', 'No', '2024-06-08 22:11:37', '2024-06-08 22:11:37'),
	('81bedb05-a2bf-4eee-b239-837207d06f02', 'Registrar', '2', 'No', '2024-06-08 22:11:37', '2024-06-08 22:11:37'),
	('a26313a5-59e1-492b-8410-345b4adf5888', 'Finance', '1', 'No', '2024-06-08 22:14:33', '2024-06-08 22:14:33'),
	('a26313a5-59e1-492b-8410-345b4adf5888', 'Registrar', '2', 'No', '2024-06-08 22:14:33', '2024-06-08 22:14:33'),
	('aa01f234-c565-4cc7-a46c-f55e92578fb3', 'Finance', '1', 'No', '2024-06-08 22:59:41', '2024-06-08 22:59:41'),
	('aa01f234-c565-4cc7-a46c-f55e92578fb3', 'Registrar', '2', 'No', '2024-06-08 22:59:41', '2024-06-08 22:59:41'),
	('1228fb19-c5cf-4602-81aa-9117a9c0304c', 'Pay Tuition', '1', 'No', '2024-06-09 00:05:45', '2024-06-09 00:05:45'),
	('1228fb19-c5cf-4602-81aa-9117a9c0304c', 'To meet a specific person in APC for official business\r\n\r\n\r\n', '10', 'No', '2024-06-09 00:05:45', '2024-06-09 00:05:45'),
	('1228fb19-c5cf-4602-81aa-9117a9c0304c', 'To meet a specific person in APC for personal reasons\r\n\r\n\r\n', '11', 'No', '2024-06-09 00:05:45', '2024-06-09 00:05:45'),
	('1228fb19-c5cf-4602-81aa-9117a9c0304c', 'To use rented facility (ex. Basketball court, auditorium)\r\n\r\n', '12', 'No', '2024-06-09 00:05:45', '2024-06-09 00:05:45'),
	('1228fb19-c5cf-4602-81aa-9117a9c0304c', 'Apply/Retrieve Official Docs', '2', 'No', '2024-06-09 00:05:45', '2024-06-09 00:05:45'),
	('6aaa073c-133b-43ce-aec0-7b2f7e9c7014', 'To meet a specific person in APC for personal reasons\r\n\r\n\r\n', '11', 'No', '2024-06-09 23:23:25', '2024-06-09 23:23:25'),
	('6aaa073c-133b-43ce-aec0-7b2f7e9c7014', 'Discuss academic performance of child with ExD/PD', '4', 'No', '2024-06-09 23:23:25', '2024-06-09 23:23:25'),
	('6aaa073c-133b-43ce-aec0-7b2f7e9c7014', 'Discuss academic performance of child with guidance', '6', 'No', '2024-06-09 23:23:25', '2024-06-09 23:23:25'),
	('6aaa073c-133b-43ce-aec0-7b2f7e9c7014', 'Apply to APC as SHS, College student, transferee\r\n\r\n', '9', 'No', '2024-06-09 23:23:25', '2024-06-09 23:23:25'),
	('dadb5372-be70-4fef-a0c9-e0ebc328ff5a', 'Pay Tuition', '1', 'No', '2024-06-09 23:24:14', '2024-06-09 23:24:14'),
	('dadb5372-be70-4fef-a0c9-e0ebc328ff5a', 'To meet a specific person in APC for official business\r\n\r\n\r\n', '10', 'No', '2024-06-09 23:24:14', '2024-06-09 23:24:14'),
	('dadb5372-be70-4fef-a0c9-e0ebc328ff5a', 'To meet a specific person in APC for personal reasons\r\n\r\n\r\n', '11', 'No', '2024-06-09 23:24:14', '2024-06-09 23:24:14'),
	('1d8f13ee-d852-477c-afb3-4cfe22f3b21a', 'To meet a specific person in APC for official business\r\n\r\n\r\n', '10', 'No', '2024-06-09 23:24:49', '2024-06-09 23:24:49'),
	('c0c1896c-4768-4a97-be95-1fb63806af11', 'Pay Tuition', '1', 'No', '2024-06-09 23:26:18', '2024-06-09 23:26:18'),
	('c0c1896c-4768-4a97-be95-1fb63806af11', 'To meet a specific person in APC for personal reasons\r\n\r\n\r\n', '11', 'No', '2024-06-09 23:26:18', '2024-06-09 23:26:18'),
	('c0c1896c-4768-4a97-be95-1fb63806af11', 'Apply/Retrieve Official Docs', '2', 'No', '2024-06-09 23:26:18', '2024-06-09 23:26:18'),
	('5408cdd3-75da-41c0-ad43-3c95a9199548', 'Pay Tuition', '1', 'No', '2024-06-10 00:06:36', '2024-06-10 00:06:36'),
	('5408cdd3-75da-41c0-ad43-3c95a9199548', 'To meet a specific person in APC for personal reasons\r\n\r\n\r\n', '11', 'No', '2024-06-10 00:06:36', '2024-06-10 00:06:36'),
	('5408cdd3-75da-41c0-ad43-3c95a9199548', 'To use rented facility (ex. Basketball court, auditorium)\r\n\r\n', '12', 'No', '2024-06-10 00:06:36', '2024-06-10 00:06:36'),
	('babf446e-9a7b-43a2-ac79-433eb4feaac4', 'Pay Tuition', '1', 'No', '2024-06-10 00:18:50', '2024-06-10 00:18:50'),
	('2b85008e-41f9-404e-8693-c266fe225b91', 'To meet a specific person in APC for official business\r\n\r\n\r\n', '10', 'No', '2024-06-10 00:19:56', '2024-06-10 00:19:56'),
	('2b85008e-41f9-404e-8693-c266fe225b91', 'To meet a specific person in APC for personal reasons\r\n\r\n\r\n', '11', 'No', '2024-06-10 00:19:56', '2024-06-10 00:19:56'),
	('2b85008e-41f9-404e-8693-c266fe225b91', 'To use rented facility (ex. Basketball court, auditorium)\r\n\r\n', '12', 'No', '2024-06-10 00:19:56', '2024-06-10 00:19:56'),
	('66efea41-a327-4e6c-8c76-8f4a4cb090a9', 'To meet a specific person in APC for official business\r\n\r\n\r\n', '10', 'No', '2024-06-10 00:26:32', '2024-06-10 00:26:32'),
	('66efea41-a327-4e6c-8c76-8f4a4cb090a9', 'To meet a specific person in APC for personal reasons\r\n\r\n\r\n', '11', 'No', '2024-06-10 00:26:32', '2024-06-10 00:26:32'),
	('5a9da43d-3f9b-4539-b822-273248657950', 'To meet a specific person in APC for personal reasons\r\n\r\n\r\n', '11', 'No', '2024-06-10 00:30:03', '2024-06-10 00:30:03'),
	('5a9da43d-3f9b-4539-b822-273248657950', 'To use rented facility (ex. Basketball court, auditorium)\r\n\r\n', '12', 'No', '2024-06-10 00:30:03', '2024-06-10 00:30:03'),
	('f36bb874-602b-458d-9b58-a39ed4129576', 'To meet a specific person in APC for personal reasons\r\n\r\n\r\n', '11', 'No', '2024-06-10 00:32:36', '2024-06-10 00:32:36'),
	('f36bb874-602b-458d-9b58-a39ed4129576', 'To use rented facility (ex. Basketball court, auditorium)\r\n\r\n', '12', 'No', '2024-06-10 00:32:36', '2024-06-10 00:32:36'),
	('afb3857f-51f2-4951-8b3a-64f24a15002f', 'To meet a specific person in APC for personal reasons\r\n\r\n\r\n', '11', 'No', '2024-06-10 00:40:04', '2024-06-10 00:40:04'),
	('9aabc053-c3b7-4606-a8a7-aaffa446b8f9', 'To meet a specific person in APC for official business\r\n\r\n\r\n', '10', 'No', '2024-06-10 00:43:49', '2024-06-10 00:43:49'),
	('9aabc053-c3b7-4606-a8a7-aaffa446b8f9', 'To meet a specific person in APC for personal reasons\r\n\r\n\r\n', '11', 'No', '2024-06-10 00:43:49', '2024-06-10 00:43:49'),
	('52fda0d7-b17a-4479-bb9e-607d1300df5d', 'To meet a specific person in APC for official business\r\n\r\n\r\n', '10', 'No', '2024-06-10 00:47:12', '2024-06-10 00:47:12'),
	('52fda0d7-b17a-4479-bb9e-607d1300df5d', 'To meet a specific person in APC for personal reasons\r\n\r\n\r\n', '11', 'No', '2024-06-10 00:47:12', '2024-06-10 00:47:12'),
	('f9cb4f3a-3e59-404e-b4a3-982b8f83b115', 'To meet a specific person in APC for official business\r\n\r\n\r\n', '10', 'No', '2024-06-10 00:49:41', '2024-06-10 00:49:41'),
	('f9cb4f3a-3e59-404e-b4a3-982b8f83b115', 'To meet a specific person in APC for personal reasons\r\n\r\n\r\n', '11', 'No', '2024-06-10 00:49:41', '2024-06-10 00:49:41'),
	('ca330ab3-6376-4428-bf4a-1a3e71df358a', 'To meet a specific person in APC for personal reasons\r\n\r\n\r\n', '11', 'No', '2024-06-10 00:54:37', '2024-06-10 00:54:37'),
	('0863efba-4f35-4d8a-9672-676a083adee0', 'To meet a specific person in APC for personal reasons\r\n\r\n\r\n', '11', 'No', '2024-06-10 00:58:57', '2024-06-10 00:58:57'),
	('74c5ad79-f524-418d-9316-5d9da5815305', 'To meet a specific person in APC for official business\r\n\r\n\r\n', '10', 'No', '2024-06-10 01:03:57', '2024-06-10 01:03:57'),
	('bd5b0f5a-bc08-4997-9dd1-b78cc5a888cb', 'To use rented facility (ex. Basketball court, auditorium)\r\n\r\n', '12', 'No', '2024-06-10 01:07:34', '2024-06-10 01:07:34'),
	('3daa3870-b222-4534-b906-74871a7bfd2a', 'To meet a specific person in APC for official business\r\n\r\n\r\n', '10', 'No', '2024-06-10 01:34:57', '2024-06-10 01:34:57'),
	('469ff9a0-243f-4a3d-b5a1-d5eb95b55a01', 'To meet a specific person in APC for personal reasons\r\n\r\n\r\n', '11', 'No', '2024-06-10 01:35:51', '2024-06-10 01:35:51'),
	('15a15e53-cdb2-48b9-83c4-52b408d0c8ac', 'To meet a specific person in APC for official business\r\n\r\n\r\n', '10', 'No', '2024-06-10 01:36:55', '2024-06-10 01:36:55'),
	('7d810542-fd28-4b89-b9c0-469db71bc89a', 'Pay Tuition', '1', 'No', '2024-06-10 01:50:01', '2024-06-10 01:50:01'),
	('7d810542-fd28-4b89-b9c0-469db71bc89a', 'To meet a specific person in APC for official business\r\n\r\n\r\n', '10', 'No', '2024-06-10 01:50:01', '2024-06-10 01:50:01'),
	('b4bff408-03dd-4e4e-9227-f359314d34de', 'To meet a specific person in APC for personal reasons\r\n\r\n\r\n', '11', 'No', '2024-06-10 01:51:48', '2024-06-10 01:51:48'),
	('b4bff408-03dd-4e4e-9227-f359314d34de', 'To use rented facility (ex. Basketball court, auditorium)\r\n\r\n', '12', 'No', '2024-06-10 01:51:48', '2024-06-10 01:51:48'),
	('2b8f8f7f-a170-4e91-93c9-a5ebbbe6a3d8', 'To meet a specific person in APC for official business\r\n\r\n\r\n', '10', 'No', '2024-06-10 01:54:29', '2024-06-10 01:54:29'),
	('2d682ef4-be7b-4f49-9af9-5b43556bf535', 'To meet a specific person in APC for official business\r\n\r\n\r\n', '10', 'No', '2024-06-10 01:55:13', '2024-06-10 01:55:13'),
	('2d682ef4-be7b-4f49-9af9-5b43556bf535', 'To meet a specific person in APC for personal reasons\r\n\r\n\r\n', '11', 'No', '2024-06-10 01:55:13', '2024-06-10 01:55:13'),
	('219d96c1-4560-4d97-a2b5-332641dfde5c', 'To meet a specific person in APC for personal reasons\r\n\r\n\r\n', '11', 'No', '2024-06-10 01:56:10', '2024-06-10 01:56:10'),
	('d748e2cc-47eb-452b-97b0-ff4418480bbf', 'To meet a specific person in APC for official business\r\n\r\n\r\n', '10', 'No', '2024-06-10 21:18:26', '2024-06-10 21:18:26'),
	('d748e2cc-47eb-452b-97b0-ff4418480bbf', 'To meet a specific person in APC for personal reasons\r\n\r\n\r\n', '11', 'No', '2024-06-10 21:18:26', '2024-06-10 21:18:26'),
	('28bfca84-6192-4556-819e-d6d2c9fa3c41', 'To meet a specific person in APC for official business\r\n\r\n\r\n', '10', 'No', '2024-06-10 21:29:44', '2024-06-10 21:29:44'),
	('28bfca84-6192-4556-819e-d6d2c9fa3c41', 'Apply/Retrieve Official Docs', '2', 'No', '2024-06-10 21:29:44', '2024-06-10 21:29:44'),
	('28bfca84-6192-4556-819e-d6d2c9fa3c41', 'Discuss academic performance of child with faculty', '5', 'No', '2024-06-10 21:29:44', '2024-06-10 21:29:44'),
	('28bfca84-6192-4556-819e-d6d2c9fa3c41', 'Re-apply to go back to school - process\r\n\r\n', '7', 'No', '2024-06-10 21:29:44', '2024-06-10 21:29:44'),
	('ddaa2863-a04c-4719-80c5-2d44a8118740', 'To meet a specific person in APC for personal reasons\r\n\r\n\r\n', '11', 'No', '2024-06-10 21:45:29', '2024-06-10 21:45:29'),
	('ddaa2863-a04c-4719-80c5-2d44a8118740', 'To use rented facility (ex. Basketball court, auditorium)\r\n\r\n', '12', 'No', '2024-06-10 21:45:29', '2024-06-10 21:45:29'),
	('39e91c7b-58b7-40e0-ac6f-4aee48fcd726', 'To meet a specific person in APC for personal reasons\r\n\r\n\r\n', '11', 'No', '2024-06-10 21:46:41', '2024-06-10 21:46:41'),
	('39e91c7b-58b7-40e0-ac6f-4aee48fcd726', 'To use rented facility (ex. Basketball court, auditorium)\r\n\r\n', '12', 'No', '2024-06-10 21:46:41', '2024-06-10 21:46:41'),
	('d29ca2d9-1728-4952-a154-1714ed8f9a48', 'To meet a specific person in APC for personal reasons\r\n\r\n\r\n', '11', 'No', '2024-06-10 21:48:31', '2024-06-10 21:48:31'),
	('d29ca2d9-1728-4952-a154-1714ed8f9a48', 'To use rented facility (ex. Basketball court, auditorium)\r\n\r\n', '12', 'No', '2024-06-10 21:48:31', '2024-06-10 21:48:31'),
	('98ab8d66-1c6d-4ba5-8853-8898ba568409', 'To meet a specific person in APC for personal reasons\r\n\r\n\r\n', '11', 'No', '2024-06-10 21:48:59', '2024-06-10 21:48:59'),
	('98ab8d66-1c6d-4ba5-8853-8898ba568409', 'To use rented facility (ex. Basketball court, auditorium)\r\n\r\n', '12', 'No', '2024-06-10 21:48:59', '2024-06-10 21:48:59'),
	('f0c4135e-2c8e-4f65-9684-d30fc6e5e0c1', 'To meet a specific person in APC for personal reasons\r\n\r\n\r\n', '11', 'No', '2024-06-10 21:52:15', '2024-06-10 21:52:15'),
	('f0c4135e-2c8e-4f65-9684-d30fc6e5e0c1', 'To use rented facility (ex. Basketball court, auditorium)\r\n\r\n', '12', 'No', '2024-06-10 21:52:15', '2024-06-10 21:52:15'),
	('92b6f39f-58d2-47f4-8bb0-d4b5f9672e43', 'To meet a specific person in APC for official business\r\n\r\n\r\n', '10', 'No', '2024-06-10 21:53:19', '2024-06-10 21:53:19'),
	('92b6f39f-58d2-47f4-8bb0-d4b5f9672e43', 'To meet a specific person in APC for personal reasons\r\n\r\n\r\n', '11', 'No', '2024-06-10 21:53:19', '2024-06-10 21:53:19'),
	('92b6f39f-58d2-47f4-8bb0-d4b5f9672e43', 'To use rented facility (ex. Basketball court, auditorium)\r\n\r\n', '12', 'No', '2024-06-10 21:53:19', '2024-06-10 21:53:19'),
	('bb590866-a0dc-4558-9264-6908c35d3029', 'To meet a specific person in APC for official business\r\n\r\n\r\n', '10', 'No', '2024-06-10 21:53:41', '2024-06-10 21:53:41'),
	('bb590866-a0dc-4558-9264-6908c35d3029', 'To meet a specific person in APC for personal reasons\r\n\r\n\r\n', '11', 'No', '2024-06-10 21:53:41', '2024-06-10 21:53:41'),
	('bb590866-a0dc-4558-9264-6908c35d3029', 'To use rented facility (ex. Basketball court, auditorium)\r\n\r\n', '12', 'No', '2024-06-10 21:53:41', '2024-06-10 21:53:41'),
	('9b3d5a79-750c-4d58-91c5-c6af6137a036', 'To meet a specific person in APC for official business\r\n\r\n\r\n', '10', 'No', '2024-06-10 22:02:58', '2024-06-10 22:02:58'),
	('9b3d5a79-750c-4d58-91c5-c6af6137a036', 'To meet a specific person in APC for personal reasons\r\n\r\n\r\n', '11', 'No', '2024-06-10 22:02:58', '2024-06-10 22:02:58'),
	('2ab2919f-5f19-4133-8c41-c2ac002e67d4', 'To meet a specific person in APC for personal reasons\r\n\r\n\r\n', '11', 'No', '2024-06-10 22:13:39', '2024-06-10 22:13:39'),
	('40c0bdda-5079-43fe-b75b-9e821cd3b909', 'Pay Tuition', '1', 'Yes', '2024-06-10 22:20:47', '2024-06-10 22:28:57'),
	('10234f01-5657-4ed5-894a-7b1e1f3ac16f', 'To meet a specific person in APC for official business\r\n\r\n\r\n', '10', 'No', '2024-06-10 22:54:46', '2024-06-10 22:54:46'),
	('10234f01-5657-4ed5-894a-7b1e1f3ac16f', 'To meet a specific person in APC for personal reasons\r\n\r\n\r\n', '11', 'No', '2024-06-10 22:54:46', '2024-06-10 22:54:46'),
	('ae932680-020e-4367-9f40-0c7b6c3dff2a', 'To meet a specific person in APC for official business\r\n\r\n\r\n', '10', 'No', '2024-06-10 22:56:44', '2024-06-10 22:56:44'),
	('ae932680-020e-4367-9f40-0c7b6c3dff2a', 'To meet a specific person in APC for personal reasons\r\n\r\n\r\n', '11', 'No', '2024-06-10 22:56:44', '2024-06-10 22:56:44'),
	('798688b8-7e42-4bb6-b3c8-f31b9d74c72b', 'To meet a specific person in APC for official business\r\n\r\n\r\n', '10', 'Yes', '2024-06-10 22:57:09', '2024-06-10 22:57:25'),
	('798688b8-7e42-4bb6-b3c8-f31b9d74c72b', 'To meet a specific person in APC for personal reasons\r\n\r\n\r\n', '11', 'Yes', '2024-06-10 22:57:09', '2024-06-10 22:57:25'),
	('9ab65f2c-98c2-43c2-b65f-d5807a22d015', 'To meet a specific person in APC for official business\r\n\r\n\r\n', '10', 'No', '2024-06-10 22:59:17', '2024-06-10 22:59:17'),
	('9ab65f2c-98c2-43c2-b65f-d5807a22d015', 'To meet a specific person in APC for personal reasons\r\n\r\n\r\n', '11', 'No', '2024-06-10 22:59:17', '2024-06-10 22:59:17'),
	('f61bcc23-f10a-44ab-938b-7af3402fe917', 'To meet a specific person in APC for official business\r\n\r\n\r\n', '10', 'Yes', '2024-06-10 22:59:41', '2024-06-10 23:00:04'),
	('ac79daf0-51d5-4cb5-9e35-af57c222a615', 'To meet a specific person in APC for official business\r\n\r\n\r\n', '10', 'Yes', '2024-06-10 23:07:24', '2024-06-10 23:07:49'),
	('eccbda1f-c389-45ce-88c2-c4997a1c3cad', 'To meet a specific person in APC for official business\r\n\r\n\r\n', '10', 'Yes', '2024-06-10 23:41:51', '2024-06-10 23:42:08'),
	('eccbda1f-c389-45ce-88c2-c4997a1c3cad', 'To meet a specific person in APC for personal reasons\r\n\r\n\r\n', '11', 'Yes', '2024-06-10 23:41:51', '2024-06-10 23:42:08'),
	('10ff80d6-1fe9-45c3-b67d-a50ebe0abb57', 'To meet a specific person in APC for official business\r\n\r\n\r\n', '10', 'No', '2024-06-11 00:11:52', '2024-06-11 00:11:52'),
	('10ff80d6-1fe9-45c3-b67d-a50ebe0abb57', 'To meet a specific person in APC for personal reasons\r\n\r\n\r\n', '11', 'No', '2024-06-11 00:11:52', '2024-06-11 00:11:52'),
	('51173632-afe7-474c-9918-f05041e7f6a3', 'To meet a specific person in APC for official business\r\n\r\n\r\n', '10', 'Yes', '2024-06-11 00:12:16', '2024-06-11 00:12:34'),
	('51173632-afe7-474c-9918-f05041e7f6a3', 'To meet a specific person in APC for personal reasons\r\n\r\n\r\n', '11', 'Yes', '2024-06-11 00:12:16', '2024-06-11 00:12:34'),
	('6a2ac48d-b209-4608-978a-197d59405359', 'To meet a specific person in APC for official business\r\n\r\n\r\n', '10', 'No', '2024-06-11 00:39:48', '2024-06-11 00:39:48'),
	('6a2ac48d-b209-4608-978a-197d59405359', 'To meet a specific person in APC for personal reasons\r\n\r\n\r\n', '11', 'No', '2024-06-11 00:39:48', '2024-06-11 00:39:48'),
	('53754d48-b9d4-4250-bb46-14adf3673c39', 'To meet a specific person in APC for official business\r\n\r\n\r\n', '10', 'No', '2024-06-11 00:41:30', '2024-06-11 00:41:30'),
	('53754d48-b9d4-4250-bb46-14adf3673c39', 'To meet a specific person in APC for personal reasons\r\n\r\n\r\n', '11', 'No', '2024-06-11 00:41:30', '2024-06-11 00:41:30'),
	('cbc0cd8b-d930-4e8d-aef2-469598da9661', 'Pay Tuition', '1', 'Yes', '2024-06-11 00:59:03', '2024-06-11 01:00:34'),
	('cbc0cd8b-d930-4e8d-aef2-469598da9661', 'To meet a specific person in APC for personal reasons\r\n\r\n\r\n', '11', 'Yes', '2024-06-11 00:59:03', '2024-06-11 01:00:34'),
	('cbc0cd8b-d930-4e8d-aef2-469598da9661', 'To use rented facility (ex. Basketball court, auditorium)\r\n\r\n', '12', 'Yes', '2024-06-11 00:59:03', '2024-06-11 01:00:34');
/*!40000 ALTER TABLE `purposes` ENABLE KEYS */;

-- Dumping structure for table testproject.sessions
DROP TABLE IF EXISTS `sessions`;
CREATE TABLE IF NOT EXISTS `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) unsigned DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `sessions_user_id_index` (`user_id`),
  KEY `sessions_last_activity_index` (`last_activity`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table testproject.sessions: ~5 rows (approximately)
DELETE FROM `sessions`;
/*!40000 ALTER TABLE `sessions` DISABLE KEYS */;
INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
	('BdRyND27EqQkRClEImPvV9XV8BwhZQNlVczvwP7n', 155, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36 OPR/109.0.0.0', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoieWlYWjlHeEdjRVBGZEY2Q3Z1WXRWaVdRT2dldmZyV0Iyb0U1QWs1bCI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzA6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMC9yZWdpc3RlciI7fXM6NTA6ImxvZ2luX3dlYl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjE1NTt9', 1718564722),
	('CPtYuP0tptX2BEpSC2EBzUh53WQDKIN6WqYyL5FO', 140, '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiZmR4MThWQ244M1lQNE1XOGtocHFyM1RaR0hydmR4VFpQMEtIV2swbyI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzA6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMS9yZWdpc3RlciI7fXM6NTA6ImxvZ2luX3dlYl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjE0MDt9', 1718089162),
	('PV81J3YCRobYBhscUokZ1qdNLEALebay8hPAxW80', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36 OPR/109.0.0.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoibWFmbVV1QVJyZXpPZDM1SXQwRGR0UlJTSUhWSzNZalRJc09RNWZERiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjc6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMC9ndWFyZCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1718565158),
	('qVfmMsqQjEsm7wb2lK3PxSFMacADOlt8CYQDJjEo', 145, '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiMXR5c01OenZLaXd4a2g2VngwYWczU05EQXBXbWpHa3poREdhcmR3cSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzA6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMS9yZWdpc3RlciI7fXM6NTA6ImxvZ2luX3dlYl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjE0NTt9', 1718093518),
	('rIKQXBTDpHtMaA0UYMtl7yYcyMuBm0E0ABQ0MNpC', NULL, '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiVUZQSEJYdmdtRU16NWNmRkF5S2tBUTRKYmVhU2xZeTB0eHYzelFCTSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzY6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMS91cGRhdGUvc3VjY2VzcyI7fX0=', 1718096819),
	('rqG6dtW3zYg3gFcRWQS8ZGm8aHVY4VuCcuaUfKep', 138, '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiZVoxZHBvdkM0Nzd5ek9Vc1BmTDZEaVRNb1lZRzJiRG96azNPQUR5bCI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzA6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMS9yZWdpc3RlciI7fXM6NTA6ImxvZ2luX3dlYl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjEzODt9', 1718089013);
/*!40000 ALTER TABLE `sessions` ENABLE KEYS */;

-- Dumping structure for table testproject.users
DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `first_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone_number` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `purpose_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `visit_status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=156 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table testproject.users: ~150 rows (approximately)
DELETE FROM `users`;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` (`id`, `name`, `first_name`, `last_name`, `phone_number`, `purpose_id`, `email`, `visit_status`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
	(1, 'testuser', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$12$vvGs5pDDUxnFSZvKHQE6A.SqMuDi21EtSIYMlcFA4gowy.2iBFMpq', NULL, '2024-05-05 01:10:29', '2024-05-05 01:10:29'),
	(2, 'secondtest', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$12$uK13VdXpmTg/jlkPz87nq.6TAYCwALa.mm.5Kr97dlw63guI62Rz6', NULL, '2024-05-05 18:38:05', '2024-05-05 18:38:05'),
	(3, 'userthree', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$12$Cu18c9ABIMkUnJ9nNQSSYOkzl2JJ79MR35YewpyMBUZbAD79y4OGG', NULL, '2024-05-06 00:22:27', '2024-05-06 00:22:27'),
	(4, 'test1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$12$gitz0MzY/m2iGORC9yZGbORd9azRxsIOEymYtckx3750i4GzaYGze', NULL, '2024-05-06 22:09:24', '2024-05-06 22:09:24'),
	(5, 'testtest', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$12$D3UeWXEu/jZzKF29O3Fs2eSrM4kFK1pdvQs/21RjJe8xHoZU0yhxq', NULL, '2024-05-06 22:10:44', '2024-05-06 22:10:44'),
	(6, 'ddasdasdasda', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$12$R.fjlGzuvZmk0/m4jCU/2ORck1u0Ju.L8L.HvI/HWFJA/PUBekFoi', NULL, '2024-05-06 22:14:37', '2024-05-06 22:14:37'),
	(7, 'dasdasd', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$12$SKnayePbfLxh22SwzGTnEeAj1rtYpqrF9CzhAQ8OmbiK94tB8iFKG', NULL, '2024-05-06 22:16:19', '2024-05-06 22:16:19'),
	(8, 'dasdasd', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$12$RLn4ile/032PKeugnjjq0OP1Yr7obNk2L1tpj41404E8zANe20Nha', NULL, '2024-05-06 22:18:38', '2024-05-06 22:18:38'),
	(9, 'dasdasd', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$12$.3I9MtvjcxcQ5AleJsnEYuKTlsLIC4I47NdfSjXXTuGmWYMMkJWO6', NULL, '2024-05-06 22:23:42', '2024-05-06 22:23:42'),
	(10, 'test test', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$12$MeZXtQXTAiXZ2uVZGvJSd.M1GYZF2Hux1oZD5c6k8N5JuBXloZBc2', NULL, '2024-05-06 22:26:46', '2024-05-06 22:26:46'),
	(11, 'testtesttest', 'gumana', 'kaya', '84823974287', NULL, NULL, NULL, NULL, '$2y$12$KwCBVQQJl3f5BDlPpyTNTufyjsNkKsuzjOo9SOKY7uZZLYYGBbzAG', NULL, '2024-05-06 22:33:59', '2024-05-06 22:33:59'),
	(12, 'test21', 'teste', 'testet', '432423434', '044441fd-3804-4474-b61c-1026cb1e83a2', NULL, NULL, NULL, '$2y$12$EB80YhaYjCfOcqHWgSUUsur0g/uBaWuyY3XpzNHXQ5mWQ/mSHirB.', NULL, '2024-05-06 22:48:32', '2024-05-06 22:48:32'),
	(13, 'tasdad', 'dasdasda', 'dasdasd', '4323423423', 'ee7f1be1-67d2-4318-b20e-20f04cc0f27e', NULL, NULL, NULL, '$2y$12$UWwYWhfNqWMYMWe2zYcTt.j3fTEfe0z07tc4Guo3sXpkedHmk2nWq', NULL, '2024-05-06 23:08:27', '2024-05-06 23:08:27'),
	(14, 'testtest', 'testtestsda', 'dasdasdasda', 'dasdasdad', '1d1c25f8-58d2-43e9-b732-a562c6c02df3', NULL, NULL, NULL, '$2y$12$q.iTgYgctqEYS2lucysj8OincFCZ2oV4qLf8wP7o8.pnvVu0sOcV.', NULL, '2024-05-06 23:21:50', '2024-05-06 23:21:50'),
	(15, 'dasdasd', 'rdsfa', 'dasda', '5234234', '10fc85cf-3b1d-4d81-852a-d72950b02810', NULL, NULL, NULL, '$2y$12$t3coFzG8NxzFTmlwv2u3iOOgIbyvRIAnXWJsxAXQhLTebds9K/MNm', NULL, '2024-05-06 23:29:06', '2024-05-06 23:29:06'),
	(16, 'testte', 'dasdas', 'dasdsad', '42342234', '45e06436-68d1-4804-a9ff-fe0c464ca684', NULL, NULL, NULL, '$2y$12$suxyG5xxuZwmw0/sQgzlLeXFFkVNjhjTvlqRKwJSZi4pWsq48pgvi', NULL, '2024-05-06 23:59:54', '2024-05-06 23:59:54'),
	(17, 'dasdasda', 'test', 'test', '4234234234', 'd8ed3222-e176-4e29-a9f1-7930e433b07f', NULL, NULL, NULL, '$2y$12$fPC.CJOu/mtA/1dah.ABa.znhIk28rkAFGb.RZudNBB5WPj9LfrVm', NULL, '2024-05-07 00:55:44', '2024-05-07 00:55:44'),
	(18, 'test', 'last test', 'last4', '23423423', 'cc2d3d38-61d8-4fe3-9101-6805c2067b5c', NULL, NULL, NULL, '$2y$12$.AxcXibksj/uRA709KJKsO17vvzjWDjeX5vv9YN1r7mSCgRjzSE2.', NULL, '2024-05-07 01:16:57', '2024-05-07 01:16:57'),
	(19, 'si ano', 'si', 'ano', '12345678900', '34b0b684-05e2-4fa3-a7db-2256008c0857', NULL, NULL, NULL, '$2y$12$3Ox8iscIyMuVmzbZpPxPo.1nySShFMpzycE0wzERhXhRLfjw4ww26', NULL, '2024-05-07 05:49:49', '2024-05-07 05:49:49'),
	(20, 'anokaya', 'ano', 'kaya', '12345678910', '14310e60-311f-435c-ad8f-3bc67a746137', NULL, NULL, NULL, '$2y$12$kcX4Wu3Wu8yQLU2AFhkswOwpzPsKG5xRKOPlGJOxFmxfeYasDvBv6', NULL, '2024-05-07 16:36:55', '2024-05-07 16:36:55'),
	(21, 'testesttest', 'test', 'new', '1234456789k', '93fd0126-1c37-43ae-994f-08998b44d332', NULL, NULL, NULL, '$2y$12$xzZz0WZNgIIBz13D96tq0eKtslHi0IuyI23vEC5euW8nni8Q47hb.', NULL, '2024-05-07 17:08:31', '2024-05-07 17:08:31'),
	(22, 'juan', 'juan', 'dela cruz', '09610680014', 'dbb681e3-0484-4943-b702-7dbebc87cf28', NULL, NULL, NULL, '$2y$12$o5ETZ8nLX6zGLX1xue60OeynmgtulWdlDz40JSKE2V3zO6WK.Zzqi', NULL, '2024-05-07 17:43:02', '2024-05-07 17:43:02'),
	(23, 'wqeafv', 'newnew', 'new', '123123123', 'a42483c0-bce1-4117-abf4-7a7ce2ef173d', NULL, NULL, NULL, '$2y$12$eVhVQvL7ocQPk0z9tPq/d.wcu2Sgu2HRMGYjvg215RJcLvsuhrHPa', NULL, '2024-05-14 17:24:59', '2024-05-14 17:24:59'),
	(24, 'newnewnew', 'new', 'name', '1232344234', '2aa36089-b295-4217-ada0-f4481ac65b3f', NULL, NULL, NULL, '$2y$12$VEBwYgNin0kAoThwMUgpi.55ffRaAKWZeYJ4dSjS0G.z52ChXX9O2', NULL, '2024-05-14 17:50:33', '2024-05-14 17:50:33'),
	(25, 'si ano', 'si', 'ano', '123312353214123', 'cba5eda5-22dd-4b24-948b-163b47ee00d3', NULL, NULL, NULL, '$2y$12$PvOP9fItILnf4YN4PQvYZ.Z6Juz0fNgJhmyH3RAZralU.Tp5JsS/C', NULL, '2024-05-16 05:06:43', '2024-05-16 05:06:43'),
	(27, 'email email test', 'testtest', 'test', '32713628', '7887345e-d82a-4779-98a2-b9dc0cf06efa', NULL, NULL, NULL, '$2y$12$dw1UcwVgjNyGS0cwFtwcwuyYgiyBzDNs3Q1OFwnttkeIJaQE7qewm', NULL, '2024-05-20 23:28:13', '2024-05-20 23:28:13'),
	(29, 'sinobato', 'sino', 'bato', '21312312323', '32e2e754-928e-41bd-9da4-e1a5a5038d71', NULL, NULL, NULL, '$2y$12$TwROgcK2C/UzNq0t1zi8C.bUMUoo8Uo5d3xkWgC1aDjx909b5Tr4i', NULL, '2024-05-20 23:32:01', '2024-05-20 23:32:01'),
	(30, 'test', 'test', 'testt', '324242424', '026403d0-ecf5-4329-8123-d42bc44d6f54', NULL, NULL, NULL, '$2y$12$M58Lk0t3Tm/B9OGA8.I1C.jVVPaWvg6HvlpD4Kh58Cuqkte6uISZ6', NULL, '2024-05-21 00:11:16', '2024-05-21 00:11:16'),
	(31, 'test', 'test', 'testt', '324242424', '1228292e-ebfc-4b47-95d0-8c2e17f08c46', NULL, NULL, NULL, '$2y$12$SNobWTH3Wk94T9q3MNUTnOBtPqfRbhpO5LjYniHREsF.iJEW1pgT6', NULL, '2024-05-21 00:13:56', '2024-05-21 00:13:56'),
	(32, 'leslie pelor', 'leslie', 'pelor', '09329894859', 'd22aa8ea-9879-4417-8d1e-16a29e92996e', NULL, NULL, NULL, '$2y$12$7bWgLUKRxflcGjMB/Sc3jux4cqOEZ/509sBOXAAZarcdF8KpUp5ze', NULL, '2024-05-21 16:50:24', '2024-05-21 16:50:24'),
	(33, 'tests', 'testt', 'testt', '423423444', '4b960486-4c19-4847-92dd-4c94623ebb4c', NULL, NULL, NULL, '$2y$12$cWwqlHr/KuvGvR9xuF7WKu6LAoo4jBUn3uuu7eBJGA50d3.LR2JUu', NULL, '2024-05-21 21:28:36', '2024-05-21 21:28:36'),
	(35, NULL, 'test test', 'direqredsa', '23424244423', '0d063903-4b90-46bf-be34-4a989b48aa7f', 'dichoso.kelvin27@gmail.com', NULL, NULL, '$2y$12$DcxdVpGcz6G0OyD9sX64A.1Rn8Py0Nxc2EeX5aRHclElM62ojsQU2', NULL, '2024-05-21 22:21:03', '2024-05-21 22:21:03'),
	(36, NULL, 'test', 'testte', '42342424', 'cf753c27-9359-4518-846a-0fd1aa0c042e', 'dichoso.kelvin27@gmail.com', NULL, NULL, '$2y$12$5xLZOGI1G16IQdoKumcE1.bsu3GdiowvyH32c1Pkz3.2GL1kmirrG', NULL, '2024-05-21 22:27:54', '2024-05-21 22:27:54'),
	(37, NULL, 'test', 'testt', '423424242', '3a1b85af-d657-4a7c-aecc-2d32f3c7bd52', 'dichoso.kelvin27@gmail.com', NULL, NULL, '$2y$12$DEGPB6gv.8ktIAx4FmAPS.vun7h0RsqA7zT2g3TdzrCnxbwWG0vw2', NULL, '2024-05-21 23:10:41', '2024-05-21 23:10:41'),
	(38, NULL, 'test', 'testt', '423424242', '815ffacd-6205-4951-a334-d1755396a47d', 'dichoso.kelvin27@gmail.com', NULL, NULL, '$2y$12$5pW8LAsBdXr4/7PWcikY7OE2Ara04kVF.HqzTNMW0ex3riRSAFe9q', NULL, '2024-05-21 23:11:26', '2024-05-21 23:11:26'),
	(39, NULL, 'test', 'testt', '423424242', '72a0fb9c-4749-4307-8a8c-9dde3f745bf0', 'dichoso.kelvin27@gmail.com', NULL, NULL, '$2y$12$owhjOhTkCl1dZiLvEt.0GuFDpSg/YBvYVEOyB3uZlZSEGdv9YdDIi', NULL, '2024-05-21 23:12:39', '2024-05-21 23:12:39'),
	(40, NULL, 'test', 'test', '4234234234', 'a491da0e-8f60-425e-8fca-b1c6eb36a36a', 'dichoso.kelvin27@gmail.com', NULL, NULL, '$2y$12$xhnRubwsunYUALevks77ruxpevHBfl9oAVBN6MNfVNk9MlRfhQXAC', NULL, '2024-05-21 23:37:40', '2024-05-21 23:37:40'),
	(41, NULL, 'testt', 'testt', '4234324234', '33ccd892-028a-4f0e-8b25-6d666e119043', 'dichoso.kelvin27@gmail.com', NULL, NULL, '$2y$12$l96KYuCsyL7ELCrzG5Zf4OMe/6Jq4/HqW6TkJwIigfl8yCAsO5WL6', NULL, '2024-05-21 23:40:08', '2024-05-21 23:40:08'),
	(42, NULL, 'test', 'test42', '423432324', '94e0a1ed-177f-46a6-a369-5c24cf527c49', 'dichoso.kelvin27@gmail.com', NULL, NULL, '$2y$12$fPPj.nDYmDQoFf.lt9OdLeKDN3COlQ4x8WLYCu.XALD2WuMSXksGK', NULL, '2024-05-21 23:42:59', '2024-05-21 23:42:59'),
	(43, NULL, 'dsadada', 'dasdada', '423423424', '1ad0784e-3215-42d2-8d1c-99f604670e67', 'dichoso.kelvin27@gmail.com', NULL, NULL, '$2y$12$jz5mD71Yap0VHAP2wMWuK.JAspKlzmruDtv4I1nssNlhZJzE4nSQS', NULL, '2024-05-21 23:44:10', '2024-05-21 23:44:10'),
	(44, NULL, 'redasda', 'dadasda', '423423423', '3233515b-07ed-4e9b-9f0c-9f20dd2901c5', 'dichoso.kelvin27@gmail.com', NULL, NULL, '$2y$12$nbMWBGwlztga.qGhRlLPcuyfbaxoXW7UL7329ONDRMHr2uvcONgZ2', NULL, '2024-05-21 23:45:20', '2024-05-21 23:45:20'),
	(45, NULL, 'test', 'dasdadas', '4324242', '32f1dda6-132d-4432-bf34-a02ba7d4ec4e', 'dichoso.kelvin27@gmail.com', NULL, NULL, '$2y$12$5nsldNCyeSHHfFb.vLh0rO42ks53veoVFRu7D1EEhIgq4hikU9EMG', NULL, '2024-05-21 23:46:27', '2024-05-21 23:46:27'),
	(46, NULL, 'test', 'testt', '4234242', 'bd3d4be1-1e7c-4894-9f94-b59c77399901', 'dichoso.kelvin27@gmail.com', NULL, NULL, '$2y$12$f9PvwpLmZwd44iZ0FSjaG.i97FAoYAcE5TIO9TQRc.Fnfjs9SPmVO', NULL, '2024-05-21 23:47:16', '2024-05-21 23:47:16'),
	(47, NULL, 'test', 'test', '4234234234', '3153e44d-342a-47a8-9c5a-2f756d1f4a65', 'dichoso.kelvin27@gmail.com', NULL, NULL, '$2y$12$WRo1.y1Ju2RvURXzytbzxeBnYb5qtSARmUoUzEiTtQCdazXQTqO3C', NULL, '2024-05-21 23:51:24', '2024-05-21 23:51:24'),
	(48, NULL, 'aslkdj', 'laksjdlaksdj', '1092381209', 'a00bafcd-3250-426b-8283-de22106c2c49', 'danielmauricio1413@gmail.com', NULL, NULL, '$2y$12$DSrypKiR9Lgsjr1jUXQocuut2K1kBz2KixgpnUNzEhPadPQwodA2u', NULL, '2024-05-28 02:32:36', '2024-05-28 02:32:36'),
	(49, NULL, 'aslkdnwq', 'wqeqwondf', '901230912', '9b523033-6fa2-4b52-b611-dea1019546e5', 'danielmauricio1413@gmail.com', NULL, NULL, '$2y$12$b5iOkF1YroBrxwDdTq1vo.HkJQkQ3cPexqah69HXg59zga6c/U98y', NULL, '2024-05-28 02:34:29', '2024-05-28 02:34:29'),
	(50, NULL, 'alskdjlsaknjd', 'lakdsnlkqwnd', '10923801293', 'd44da4a6-a901-436d-8352-66370ec228ec', 'danielmauricio1413@gmail.com', NULL, NULL, '$2y$12$gcYUiFiEnXvXK1kDi5P0BecVs5FivkIZqJSF2PHIRnqX6vxi8lidm', NULL, '2024-05-28 02:36:35', '2024-05-28 02:36:35'),
	(51, NULL, 'sadljasd', 'asljdhashdkh', '203948209384', '0b0daf53-e068-4884-9e50-620a21de5cb8', 'danielmauricio1413@gmail.com', NULL, NULL, '$2y$12$vcHrb1Yso8nEQ1o4LgcnkeMN4YbElG8fApE7mm5zs/ra4/ssEzPb6', NULL, '2024-05-28 02:38:24', '2024-05-28 02:38:24'),
	(52, NULL, 'aslkdasldkj', 'laskjdlaksdsaj', '091283091283', '13eed8ea-8bff-41e4-8f42-56e7252cce90', 'danielmauricio1413@gmail.com', NULL, NULL, '$2y$12$8F2YQtbTwvmCjl8b/xJw0OsbLpxIl5UFdFqy4Qvc.PpE88gMe1dty', NULL, '2024-05-28 02:41:28', '2024-05-28 02:41:28'),
	(53, NULL, 'jasmine', 'tolentino', '091823091283', '4bcb0ef0-8881-4a01-9f4b-b88e7e67d4e8', 'danielmauricio1413@gmail.com', NULL, NULL, '$2y$12$j2q2YP9KlB.x8CkFGbPQnOcbTPDiPv.v6k9n/wUH/7mVVYYlEt0TO', NULL, '2024-05-28 16:01:30', '2024-05-28 16:01:30'),
	(54, NULL, 'jasmine', 'tolentino', '098309834983', '88a50ba4-03ab-4a94-a365-8bffc445b568', 'danielmauricio1413@gmail.com', NULL, NULL, '$2y$12$JdfmrH.A9CSQEeCT7iDIUOZU8UEnNpf2TWc5o4PrFavkpMScWlXG.', NULL, '2024-05-28 17:19:39', '2024-05-28 17:19:39'),
	(55, NULL, 'lasjdlsadkj', 'laskdjlasjdlkajd', '09081209382', 'bb696fdb-dc4c-4883-a949-ade84f290826', NULL, NULL, NULL, '$2y$12$nEds6D/qfuH1TTqWOuSkaeFbqgOn5BMi.hry8Z3Xq/7Fs8fVT25zq', NULL, '2024-05-28 23:33:03', '2024-05-28 23:33:03'),
	(56, NULL, 'testingko', 'lang', '098843482733', '4d9738c0-5363-40f3-b84c-395e11c90608', 'danielmauricio1413@gmail.com', NULL, NULL, '$2y$12$88zRpaUNCw4T8tJMb6XXLuPgcHkhRy4FYVZZH4Ru3hfGaUWgrI1AC', NULL, '2024-06-02 01:49:09', '2024-06-02 01:49:09'),
	(57, NULL, 'pasokka', 'please', '096583484789', 'a614b67c-a942-498a-869a-02802d43088d', 'danielmauricio1413@gmail.com', NULL, NULL, '$2y$12$lN8/5oegNOcSIr4KH8PmEOyPzsSU8tV24wSjoWr5I3n7Cp/NWsG8C', NULL, '2024-06-02 01:52:04', '2024-06-02 01:52:04'),
	(58, NULL, 'lksadklasjd', 'laksdlsakdjalkdsj', '9012312312332', 'c07a863a-186e-43b3-b4c6-391be800e960', 'danielmauricio1413@gmail.com', NULL, NULL, '$2y$12$0Y/Ns9DiwVT0yPZ5hNjy3uxu4eNVP0LUIDwaj0PI5sXY.qFaAtLna', NULL, '2024-06-03 06:34:31', '2024-06-03 06:34:31'),
	(59, NULL, 'etobagongpirsname', 'etobagodin', '09238483948', 'b0a41d02-c4e0-4057-8c8c-967d78424472', 'danielmauricio1413@gmail.com', NULL, NULL, '$2y$12$1nnKnLFQSIB6M569oK6eQOcMWQJnOrj/fZc4cul9h76OXrrwKDba.', NULL, '2024-06-03 08:30:04', '2024-06-03 08:30:04'),
	(60, NULL, 'etopangalawana', 'sigesgie', '098723948394', '4f8e3021-b2e2-46bc-b990-ad1ee273c9f8', 'danielmauricio1413@gmail.com', NULL, NULL, '$2y$12$Ep8oaMADlQ0v.sXAaDnhCORB.gSo5CIH4QCRLYI/s7tqIoDVKZHDq', NULL, '2024-06-03 08:40:02', '2024-06-03 08:40:02'),
	(61, NULL, 'hmmmm', 'anokaya', '90834234839475', 'beff15ab-ad31-4914-af71-fef0547c626d', 'danielmauricio1413@gmail.com', NULL, NULL, '$2y$12$yYPo/Q87ZD.9mAGLNBCn0.Jd.stUad.v/XPrMJbpPMbpzIdhLrkMG', NULL, '2024-06-03 18:34:49', '2024-06-03 18:34:49'),
	(62, NULL, 'Jun', 'Dal', '0923438249343', '9d2ecb0d-94e3-4b74-a223-e8546485b42b', 'danielmauricio1413@gmail.com', NULL, NULL, '$2y$12$rArneUfE5uKyJ5/W9Oy2ruLNxqFDSojFmpG89U0fHl9ZJdlVpEvQu', NULL, '2024-06-03 20:31:35', '2024-06-03 20:31:35'),
	(63, NULL, 'sdasd', 'asdasdasd', '09123439284', 'e35c9371-f836-4a05-85ee-57d9ad9e78a2', 'danielmauricio1413@gmail.com', NULL, NULL, '$2y$12$CLC9u64WRhJnip/8tq3ac.Ns3X/Mlbd/9Hv1ebU1RD/E./KxCTs7y', NULL, '2024-06-03 20:33:43', '2024-06-03 20:33:43'),
	(64, NULL, 'juan', 'alayan', '09783283746', '73cdaa9c-cab1-4bd6-a388-94504a49a4a1', 'jamauricio@student.apc.edu.ph', NULL, NULL, '$2y$12$PiWFOKDSUwWB3X05CKsdD.GKRfliBwCLqYXg0PitIDFZCr3MWiLHi', NULL, '2024-06-04 17:20:19', '2024-06-04 17:20:19'),
	(65, NULL, 'dsadasdasd', 'dsadadsad', '094873843743', 'be102ca7-f5f6-4814-9f17-fbcfa0d805ab', 'dichoso.kelvin27@gmail.com', NULL, NULL, '$2y$12$38EFpKEV6xNS.03dUFcHeemKmDalSEKdIkh3O3I2FE5wz8kXnjDkG', NULL, '2024-06-07 22:09:25', '2024-06-07 22:09:25'),
	(66, NULL, 'kelvin', 'dichoso', '0932472842', '9986aa60-a633-42d2-896b-f739f5d78775', 'sdasdasdasdasd@gmail.com', NULL, NULL, '$2y$12$sMbo245t0Ryfzs1cJphMgez5.mqcps/rMajO.gyxaMxJqxV3UGIt2', NULL, '2024-06-07 22:21:45', '2024-06-07 22:21:45'),
	(67, NULL, 'testet', 'testet', '9348728424323', 'dd01bea2-7660-414b-905a-be490d2af596', 'testt', NULL, NULL, '$2y$12$krv7TDxtMmuc4a2Pp/oL1.jdQgnM83UIgbOrMMEMqHVy.EWr2vlN.', NULL, '2024-06-07 22:32:30', '2024-06-07 22:32:30'),
	(68, NULL, 'kelkel', 'testtest', '09324328424', '2acbfd13-4d7e-45cf-90ba-ba4099d656f9', 'dsadjkladjadkljad!@gmail,.coim', NULL, NULL, '$2y$12$SFqIeZ0/haT0fsJB8/yo/eeC6fbHCu4e/6vIwEqoUsG2BwTMO1ysi', NULL, '2024-06-07 23:17:23', '2024-06-07 23:17:23'),
	(69, NULL, 'kelvin', 'dichoso', '932847238942423', '0cfe2187-b24f-42f9-8852-54865ea8f54f', 'teadssadasdad@gmail.com', 'No', NULL, '$2y$12$.r.0I2iUYyXFOY6G/oI5Lu/dHHjMIxbpW0OHHKJzvSql0R/LcstRS', NULL, '2024-06-07 23:20:17', '2024-06-07 23:20:17'),
	(70, NULL, 'dasdasdas', 'dasdada', 'dasdada', 'eb0a49d2-10dd-4342-bbeb-34154d02d70b', 'dasdadasdasd', 'No', NULL, '$2y$12$/ssUFSpRVrw6/Qzo3Z3HyOvI9KRKi/0OBS4JySN0aSrIRAV6TMvR.', NULL, '2024-06-07 23:26:39', '2024-06-07 23:26:39'),
	(71, NULL, 'dasdasd', 'dsfdsfs', '43245345435', '8661a866-78e8-41a6-b68c-8213afd41e91', 'testuser@gmail.com', 'No', NULL, '$2y$12$.EiMR2dbqqLTS7cNl.HBXe9rVr96ggtUry0zGCTF9j9wPiFq1Bm0y', NULL, '2024-06-07 23:29:17', '2024-06-07 23:29:17'),
	(72, NULL, 'dasdjkasdjkhasd', 'dasdajskdajksd', '5435345345', 'bee62f0e-f707-4b98-80dd-d42283dfcf82', 'dichoso.kelvin27@gmail.com', 'No', NULL, '$2y$12$AEKNCoAPrkS3o/x199ekWuIQKQ3Nz428ME83OFMzyXG7ugCCyxAHi', NULL, '2024-06-07 23:30:13', '2024-06-07 23:30:13'),
	(73, NULL, 'jsdajdksdad', 'dasdada', '3842349823424', '149e6c73-b18b-4c2f-9897-fdb52b9e14af', 'dichoso.kelvin27@gmail.com', 'No', NULL, '$2y$12$wBm4LVgcZIQ.jPFpqoBNL.DSFZAH0xTRkRw/nGBTtUHHGmokbnQSm', NULL, '2024-06-07 23:38:13', '2024-06-07 23:38:13'),
	(74, NULL, 'dasdasd', 'teradasd', 'dasdad', 'f6d935e5-940d-452b-a205-b8deadce6ed5', 'testuser@gmail.com', 'No', NULL, '$2y$12$jrlh7rzhjPS2pWRL9O5PfuSdFpMkoYG8Hcut7N2xM.UxPlQYjGR.2', NULL, '2024-06-07 23:49:22', '2024-06-07 23:49:22'),
	(75, NULL, 'dasjdasddasd', 'sdasdasd', '43873874324', '52922ba4-053e-4737-a103-10d34235b494', 'dasdasdasd@gmail.com', 'No', NULL, '$2y$12$0.LWqXF470P/UTmGsqvHXu43M/fpclmkjJ1rLzMOqq8oJGb6M0Vyq', NULL, '2024-06-07 23:53:01', '2024-06-07 23:53:01'),
	(76, NULL, 'dasdasdasdasd', 'dasdasdad', '423482384724', '7be40eb5-5da0-4932-83ec-5249b9c05be6', 'dichoso.kelvin27@gmail.com', 'No', NULL, '$2y$12$ZmCKVLcu.V4Yr07alP2uM.74KnF7QUyKi3WRodZAuZ1RtXeB/BhnG', NULL, '2024-06-07 23:55:35', '2024-06-07 23:55:35'),
	(77, NULL, 'dasdasd', 'dasdas', '4354235345', 'c27933b0-5bfc-460e-917a-6c1bdc0db5b0', 'dasdasd@gmail.com', 'No', NULL, '$2y$12$aQXA.H0tdjslrMH2E5vZfu3JuyUSdxRSdCMByelGqkXVqB88ZedpK', NULL, '2024-06-07 23:57:35', '2024-06-07 23:57:35'),
	(78, NULL, 'dasdassa', 'dajdhasjd', '4237462482', 'e3d94409-b9eb-443c-b63c-ec67c9b1c3e1', 'alayanrodney@gmail.com', 'No', NULL, '$2y$12$Gu32DUZrgUTaOOiR.Qg4quTHI2qDHE/iUDJEDR0nEKtoLIY7noI3e', NULL, '2024-06-08 00:01:47', '2024-06-08 00:01:47'),
	(79, NULL, 'dasdasd', 'dasdasdas', '32423423', '8f7d5a9d-cdb4-4a7a-8b29-62e7c7672636', 'cbespiritu@student.apc.edu.ph', 'No', NULL, '$2y$12$9HM4ax37/w7bVDkDCzNDMeOZZtc0rvtG2in0kTF.JCXYYoLNivo3i', NULL, '2024-06-08 00:02:31', '2024-06-08 00:02:31'),
	(80, NULL, 'dasdasd', 'dadasd', '34242342', 'a2b0dac4-5071-4a19-a2e2-155b0d2cfb44', 'cbespiritu@student.apc.edu.ph', 'No', NULL, '$2y$12$WsBTkouP5vyyPgVgo/O3tu82HC73suJ1b.fzKpdo7gTt27YSqwiCa', NULL, '2024-06-08 00:05:38', '2024-06-08 00:05:38'),
	(81, NULL, 'dasdasda', 'dasdasd', '34234234', '38b83c66-5dde-4f8b-98c1-e899d35dc8b1', 'ewhjadshdfasf', 'No', NULL, '$2y$12$2y4FDOcxDHum/6ZhKaR9nOLEQQ/8IYxlnAVMwxLQdcEzt8DOWtTFq', NULL, '2024-06-08 00:06:50', '2024-06-08 00:06:50'),
	(82, NULL, 'testdasd', 'dasdasda', 'r32r42342342', '2615c619-0ee7-46d4-877a-409c6203442a', 'dashjdajkdad@gmail.com', 'No', NULL, '$2y$12$yWVHARe4lsVEj27SlUSvAuBqE7hxzXNeDXC7XYDCmfUZirrypPtwe', NULL, '2024-06-08 00:39:16', '2024-06-08 00:39:16'),
	(83, NULL, 'dasdasda', 'dasdasd', '234234234', 'b07ef930-6bbd-4fd3-8ac7-bdb702ab506c', 'alayanrodney@gmail.com', 'No', NULL, '$2y$12$bmsAynuocTeml0ftXRqlG.Z0rBHHb9ZqOsfoRXDAWS7lEQsVvG/qS', NULL, '2024-06-08 00:46:00', '2024-06-08 00:46:00'),
	(84, NULL, 'asdsadasd', 'dasdasd', '3424234', 'bcc09c3f-4fe3-42e0-8b40-974a6ce704fc', 'addasda', 'No', NULL, '$2y$12$xtfk4k3USYcTqG9ZBv3nFuFVtizWpSSFjrg7POsVWLs611Z.Cipl2', NULL, '2024-06-08 00:46:51', '2024-06-08 00:46:51'),
	(85, NULL, 'dasdasda', 'dasdasd', '43242342', 'd502ec75-810a-42ee-8e0e-0fa9cb449607', 'testuser@gmail.com', 'No', NULL, '$2y$12$cwrdqVtiX/YXinnbwtLYgum.YB9qwyfvlVqWZfPNRiaK2a2XBCcW2', NULL, '2024-06-08 01:04:45', '2024-06-08 01:04:45'),
	(86, NULL, 'Uybago', 'Naba', '98234234234234', 'b6a41c6c-5a25-49ef-a485-cf46c2054b21', 'danielmauricio1413@gmail.com', 'No', NULL, '$2y$12$CMEIs5D/P0JWhPX0Yd6fuOEJd/3nhOCzR3tbNlpNkzVDSyoBHxNhy', NULL, '2024-06-08 21:33:17', '2024-06-08 21:33:17'),
	(87, NULL, 'asdasd', 'adsasdsad', '091823091283', '5486fdd1-53f2-47e2-98fd-834d49dc143b', 'danielmauricio1413@gmail.com', 'No', NULL, '$2y$12$quJgtqk7OQhJv9APhBcZd.PFI0tMgQLipsBmkEHvJNn8Gl3JVXwue', NULL, '2024-06-08 21:35:44', '2024-06-08 21:35:44'),
	(88, NULL, 'asdasdsad', 'asdasdsad', '094334344534', 'e1d568c0-9f05-4618-9436-e7a2941069a0', 'danielmauricio1413@gmail.com', 'No', NULL, '$2y$12$sPdFlYcSTgAkeX71ZTYpae7OxVg2mrLODE72iSHHGSlypYTgjyrh2', NULL, '2024-06-08 21:58:51', '2024-06-08 21:58:51'),
	(89, NULL, 'kjasdkjasd', 'ksdkjsadkjas', '123394394', '4cee74dc-b216-4ed2-8d53-e9b133faabe3', 'danielmauricio1413@gmail.com', 'No', NULL, '$2y$12$bp50Q4s0nPKjZrL2PUJfYuSBT4.76BLV9xVtErtxQZvwHjoRAO0OO', NULL, '2024-06-08 22:02:31', '2024-06-08 22:02:31'),
	(90, NULL, 'adsasdsad', 'sadasdsad', '1029319312', 'ac2747bc-dd23-4b80-8cfe-5d9911b5ab12', 'danielmauricio1413@gmail.com', 'No', NULL, '$2y$12$RHc80.h496T3G/zl.bGxNugypnuUChbnJZJ9QORRtTpm7OEifldku', NULL, '2024-06-08 22:04:08', '2024-06-08 22:04:08'),
	(91, NULL, 'asdasdsa', 'asdasdasd', '0912343491', '03496401-04b1-4bd7-9a38-c1123433bebf', 'danielmauricio1413@gmail.com', 'No', NULL, '$2y$12$3EF9SFm10zlf/rSKfffize3v63XRJdwTuXZjksYdGHvZyg4sG0.N.', NULL, '2024-06-08 22:06:31', '2024-06-08 22:06:31'),
	(92, NULL, 'akjsdhaksjdh', 'akjsdhkasjdhsakjdh', '123123123123', '82ccb7c1-f806-41f7-b451-5f4db39d2e2f', 'danielmauricio1413@gmail.com', 'No', NULL, '$2y$12$dSYaRcoSfNi6HzudBXuSuutDBSQmk8jgaN8i7Ibh/wblSnU/P0HZe', NULL, '2024-06-08 22:07:40', '2024-06-08 22:07:40'),
	(93, NULL, 'asdasdasd', 'asdasdasd', '123123123', '8c8e225c-0fa4-4015-ac5b-f4e11deb8549', 'danielmauricio1413@gmail.com', 'No', NULL, '$2y$12$rjEVMCqJyzDH7ITsv/rQAOEMzW6rh9vvGJDKmQNEgQLnOKbaef1i6', NULL, '2024-06-08 22:08:55', '2024-06-08 22:08:55'),
	(94, NULL, 'asdasdasd', 'asdasdasd', '234234324', 'c550ba5c-410b-45cc-a1c4-a24309c1c52e', 'danielmauricio1413@gmail.com', 'No', NULL, '$2y$12$gIxBYGprWenMF.gF8tD7T.XTaJyK3/klbZEaX.U5ylUU0HD1Y2JGe', NULL, '2024-06-08 22:11:03', '2024-06-08 22:11:03'),
	(95, NULL, 'asdasdasd', 'asdasdasd', '123123123', '81bedb05-a2bf-4eee-b239-837207d06f02', 'danielmauricio1413@gmail.com', 'No', NULL, '$2y$12$9SttI70T1lJgNkHrgY6XfuZu9xSGa7tywGL9q6TjJVvszmp66TXcK', NULL, '2024-06-08 22:11:37', '2024-06-08 22:11:37'),
	(96, NULL, 'asdasdasd', 'asdasdasd', '12312312321', 'a26313a5-59e1-492b-8410-345b4adf5888', 'danielmauricio1413@gmail.com', 'No', NULL, '$2y$12$Mf5BbQrGmSU.rHlgyt.nxOfXSbiGtExn9DENUz9oKFVt5n4D5gM9K', NULL, '2024-06-08 22:14:33', '2024-06-08 22:14:33'),
	(97, NULL, 'Juan Daniel', 'Mauricio', '09674983498', 'aa01f234-c565-4cc7-a46c-f55e92578fb3', 'danielmauricio1413@gmail.com', 'No', NULL, '$2y$12$y391cx4B4wXGJ.HEeFHMu.qvit9R5JCEqkJ1aDv6QbbMNqcDeO.ji', NULL, '2024-06-08 22:59:41', '2024-06-08 22:59:41'),
	(98, NULL, 'Juan Daniel', 'Mauricio', '09234353434', '1228fb19-c5cf-4602-81aa-9117a9c0304c', 'danielmauricio1413@gmail.com', 'No', NULL, '$2y$12$hvSAUxY7z4EEFq4ikpco0edccQRZIaRHQEX46i2WHVpycbWkvf2lm', NULL, '2024-06-09 00:05:45', '2024-06-09 00:05:45'),
	(99, NULL, 'Juan Daniel', 'Mauricio', '09363249385', '6aaa073c-133b-43ce-aec0-7b2f7e9c7014', 'danielmauricio1413@gmail.com', 'No', NULL, '$2y$12$2w5kN7U2cebdqe6c9/JRFuIFJpjj.7EluvavQGGedz5WKqm83Y4am', NULL, '2024-06-09 23:23:25', '2024-06-09 23:23:25'),
	(100, NULL, 'lkasdlksaj', 'alskdjaslkdj', '091283019238', 'dadb5372-be70-4fef-a0c9-e0ebc328ff5a', NULL, 'No', NULL, '$2y$12$cDiLGkDWDmDBOH5/O1G/bOmKNm3Aemaz7.ME0v3yqvi8SEQjq2q.6', NULL, '2024-06-09 23:24:14', '2024-06-09 23:24:14'),
	(101, NULL, 'a;lskdas;dlk', 'a;sldkas;dlk', '0980981234', '1d8f13ee-d852-477c-afb3-4cfe22f3b21a', NULL, 'No', NULL, '$2y$12$I1tK7dfhmCopWHBNarUuxeG8IT8w4.G4Vp1BBoii/pD1JTZu8MdY6', NULL, '2024-06-09 23:24:49', '2024-06-09 23:24:49'),
	(102, NULL, 'kajshd', 'akjsdh', '98237239847', 'c0c1896c-4768-4a97-be95-1fb63806af11', NULL, 'No', NULL, '$2y$12$9l4WloxHg6wSB70JAPAWS.GOjivr.femCihRt1jXJXyHQniN61iZK', NULL, '2024-06-09 23:26:18', '2024-06-09 23:26:18'),
	(103, NULL, 'asdasd', 'asdasd', '091238019238', '5408cdd3-75da-41c0-ad43-3c95a9199548', NULL, 'No', NULL, '$2y$12$NuWzeG5oIcdOO8hr.u6pvuQTtw0Dt2NMiw2vb3/xV3R6B6wR0Q1xu', NULL, '2024-06-10 00:06:36', '2024-06-10 00:06:36'),
	(104, NULL, 'Cyrus', 'Gabilla', '1', 'babf446e-9a7b-43a2-ac79-433eb4feaac4', NULL, 'No', NULL, '$2y$12$mQTbeVp0ESQRf6emYMFuZOAgoc9osXsjJydGninXaAlnizreYotiG', NULL, '2024-06-10 00:18:50', '2024-06-10 00:18:50'),
	(105, NULL, 'sdfkhsdfjkhsdfs', 'asjkdadjk', '673282386', '2b85008e-41f9-404e-8693-c266fe225b91', 'gdrgtetertet@gmail.com', 'No', NULL, '$2y$12$IIyNLp7bhQDe/bGcJJ8OO.c8ZIviZZKjDGz0AEl7xJd1kTVwSaDdC', NULL, '2024-06-10 00:19:56', '2024-06-10 00:19:56'),
	(106, NULL, 'hdasjdasdhjk', 'kjasdhjkasdkjh', '324234242', '66efea41-a327-4e6c-8c76-8f4a4cb090a9', 'ddasdasda', 'No', NULL, '$2y$12$DKXd85duhYfpvPAU3YNNEONfOHGVsg3CEazkmAe8m1drBk2UMdj7C', NULL, '2024-06-10 00:26:32', '2024-06-10 00:26:32'),
	(107, NULL, 'dasdasd', 'dasdasdq', '423423424', '5a9da43d-3f9b-4539-b822-273248657950', 'dasdasdasd@gmail.com', 'No', NULL, '$2y$12$f3JLvQb9dHh1yHsD7lwW4u2c99DzDc1nd/ysEilOryeDHwGB4gthO', NULL, '2024-06-10 00:30:03', '2024-06-10 00:30:03'),
	(108, NULL, 'ewqdasdasda', 'dsadasda', '34432423', 'f36bb874-602b-458d-9b58-a39ed4129576', 'dichoso.kelvin27@gmail.com', 'No', NULL, '$2y$12$glhoPjgsxUl8fnpAjJPadu5nWs3lTLTkyu.jErCvOlevtPaIA9t2O', NULL, '2024-06-10 00:32:36', '2024-06-10 00:32:36'),
	(109, NULL, 'dasdsadasd', 'dasdasd', '4234242', 'afb3857f-51f2-4951-8b3a-64f24a15002f', 'dichoso.kelvin27@gmail.com', 'No', NULL, '$2y$12$8CbPbNmm0pExrT3gAO0XFe4svYjerNu1UoADaK28sgVlGB8zyGZn6', NULL, '2024-06-10 00:40:04', '2024-06-10 00:40:04'),
	(110, NULL, 'Kelvin', 'DIchoso', '4234897278424', '9aabc053-c3b7-4606-a8a7-aaffa446b8f9', 'dichoso.kelvin27@gmail.com', 'No', NULL, '$2y$12$Teagx9kulROweTc/xfKK0ObCXw0wBjGEJAuHYY0GqnxbaYRovI3Qi', NULL, '2024-06-10 00:43:49', '2024-06-10 00:43:49'),
	(111, NULL, 'dsadajkshdkjah', 'sahkdjhkasd', '4238742874', '52fda0d7-b17a-4479-bb9e-607d1300df5d', 'djkhadjkakjdasd', 'No', NULL, '$2y$12$b71htZ1Gaw1rAlrNFG4i8.paTotJC8GzAkeX4GLYVGx/RIIEu5kna', NULL, '2024-06-10 00:47:12', '2024-06-10 00:47:12'),
	(112, NULL, 'Kelvin', 'Dichoso', '237842876423', 'f9cb4f3a-3e59-404e-b4a3-982b8f83b115', 'dasdada', 'No', NULL, '$2y$12$ww7DPXdXpEzub0hW/ekzSOwhC.Jarmz9ejwfm6hSKCuBaCPwMtW4e', NULL, '2024-06-10 00:49:41', '2024-06-10 00:49:41'),
	(113, NULL, 'Hey', 'test', '423423424', 'ca330ab3-6376-4428-bf4a-1a3e71df358a', 'dichoso.kelvin27@gmail.com', 'No', NULL, '$2y$12$5EW3zUULEmwrxd0Tm6U3qOU1IxOxcBwxjQ75di8T0Ca0b9ToIY8jy', NULL, '2024-06-10 00:54:37', '2024-06-10 00:54:37'),
	(114, NULL, 'dsadasdas', 'dasdasdasd', '2342342342', '0863efba-4f35-4d8a-9672-676a083adee0', 'dasdasd', 'No', NULL, '$2y$12$9hQTSjbBavK6g24/D.wyC.OaN2N.9JHejJsl7uxEtU6r8N6MoCxkm', NULL, '2024-06-10 00:58:57', '2024-06-10 00:58:57'),
	(115, NULL, 'dasdasd', 'dasdas', '432423342', '74c5ad79-f524-418d-9316-5d9da5815305', 'dasdas', 'No', NULL, '$2y$12$pafeDo/HDVc9q949wO1Dy.Gym1uG2dIK8UZDE.TQ9406jb..hlR7a', NULL, '2024-06-10 01:03:57', '2024-06-10 01:03:57'),
	(116, NULL, 'dasdasd', 'dasdasd', '243443', 'bd5b0f5a-bc08-4997-9dd1-b78cc5a888cb', 'dichoso.kelvin27@gmail.com', 'No', NULL, '$2y$12$luR5T0izTAgmI81r8XLQJu.Q8RfmJhGp1astKFYXx0ipjeKVcE0Mm', NULL, '2024-06-10 01:07:34', '2024-06-10 01:07:34'),
	(117, NULL, 'dasdasd', 'dksajdjka', '43242424', '3daa3870-b222-4534-b906-74871a7bfd2a', 'dasjkdakjsda', 'No', NULL, '$2y$12$tvsMqzOJrKPxOOnbSR5A4elz./HxhGHh9/KBjsqM2RtmvI0jgj0Si', NULL, '2024-06-10 01:34:57', '2024-06-10 01:34:57'),
	(118, NULL, 'dsadasda', 'dasdad', '4234242', '469ff9a0-243f-4a3d-b5a1-d5eb95b55a01', 'asdasda', 'No', NULL, '$2y$12$ji4oqEkvlfvHGtGCqAbJzuX5IvH5wWHpGDxnHzIRcGbT0sd1kxJty', NULL, '2024-06-10 01:35:51', '2024-06-10 01:35:51'),
	(119, NULL, 'dasdasd', 'dasdas', '432424', '15a15e53-cdb2-48b9-83c4-52b408d0c8ac', 'dasda', 'No', NULL, '$2y$12$8/cUxS6MiksXaPnWNImhrOrOdkiZ7HFj2OOcPY/FDoEqQuKa0g.Wy', NULL, '2024-06-10 01:36:55', '2024-06-10 01:36:55'),
	(120, NULL, 'dasdasd', 'dasda', '234242', '7d810542-fd28-4b89-b9c0-469db71bc89a', 'dasdasd', 'No', NULL, '$2y$12$MH4.ZvFEvYKcUDI7JovO3Osprkb2FotAOBqx/NeVZIlTUp/9nF50e', NULL, '2024-06-10 01:50:01', '2024-06-10 01:50:01'),
	(121, NULL, 'dasdasd', 'dasdas', '242342342', 'b4bff408-03dd-4e4e-9227-f359314d34de', 'dasd', 'No', NULL, '$2y$12$hJLjPpSevN9AXPctojHnROrO2HtdCEwCet8.XWOUXjDEi.2Art8j.', NULL, '2024-06-10 01:51:48', '2024-06-10 01:51:48'),
	(122, NULL, 'dasdasda', 'dasda', '432423424', '2b8f8f7f-a170-4e91-93c9-a5ebbbe6a3d8', 'dasda', 'No', NULL, '$2y$12$R5nIejbYQwJe8dYLKfPKjOTN5Fi/CUmKycj3OBeMs0rSxpZ71CpYG', NULL, '2024-06-10 01:54:29', '2024-06-10 01:54:29'),
	(123, NULL, 'dasdasd', 'dada', '42342342', '2d682ef4-be7b-4f49-9af9-5b43556bf535', 'dasdadasd', 'No', NULL, '$2y$12$R7COuu8CvUEsmK9TsnaPpeS9qNbG4lPA6LlGMD8p2bNmCGMthKw1q', NULL, '2024-06-10 01:55:13', '2024-06-10 01:55:13'),
	(124, NULL, 'dasdad', 'dadas', '3424234', '219d96c1-4560-4d97-a2b5-332641dfde5c', 'dasda', 'No', NULL, '$2y$12$qJRjHyMrt7i8vqRMoD/5pOGdQN1N.Ce1w.wswr1jiQpbf7q03I3Ni', NULL, '2024-06-10 01:56:10', '2024-06-10 01:56:10'),
	(125, NULL, 'test', 'surname', '4324234234', 'd748e2cc-47eb-452b-97b0-ff4418480bbf', 'dichoso.kelvin27@gmail.com', 'No', NULL, '$2y$12$FgNmMRuteB2isJsmW7uOWOFwt0fADwDXVgkazXjDOY23Bt269.tOO', NULL, '2024-06-10 21:18:26', '2024-06-10 21:18:26'),
	(126, NULL, 'test', 'name', '098324987234', '28bfca84-6192-4556-819e-d6d2c9fa3c41', 'danielmauricio1413@gmail.com', 'No', NULL, '$2y$12$xD2KYMHD1VMyHE0gT3GqResCJ.K4e7cAsu02mWNmCAHqmXMTTRzhW', NULL, '2024-06-10 21:29:44', '2024-06-10 21:29:44'),
	(127, NULL, 'dkasdasd', 'adsjdad', '4327234242', 'ddaa2863-a04c-4719-80c5-2d44a8118740', 'dichoso.kelvin27@gmail.com', 'No', NULL, '$2y$12$B.CzUA9y1qedmdjvYV33ZuR7Tl0eiWYprD5x7l8eYUtG90HaD.lwO', NULL, '2024-06-10 21:45:29', '2024-06-10 21:45:29'),
	(128, NULL, 'kelvin', 'dichoso', '423423423424', '39e91c7b-58b7-40e0-ac6f-4aee48fcd726', 'jamauricio@student.apc.edu.ph', 'No', NULL, '$2y$12$8H/a7X1eNvhgyMlyRE/rlOQo746DFpJEixLXqo3PUbozvVzPgncya', NULL, '2024-06-10 21:46:41', '2024-06-10 21:46:41'),
	(129, NULL, 'test', 'lang', '37485345345', 'd29ca2d9-1728-4952-a154-1714ed8f9a48', 'jamauricio@student.apc.edu.ph', 'No', NULL, '$2y$12$MKXo7mrJ3IDI.l2NYPMflO3L2CtZsQh/oU3hCXhJt8LE04.ZIB/22', NULL, '2024-06-10 21:48:31', '2024-06-10 21:48:31'),
	(130, NULL, 'kelvin', 'dichosodas', '4234234234', '98ab8d66-1c6d-4ba5-8853-8898ba568409', 'dichoso.kelvin27@gmail.com', 'No', NULL, '$2y$12$USGqGcbZ.tT0c13nnlWBGuk3ApZFRQs.FkPNMPbsTQ.E1MiAPxSMG', NULL, '2024-06-10 21:48:59', '2024-06-10 21:48:59'),
	(131, NULL, 'dahjdakdad', 'dasdasda', '4324234', 'f0c4135e-2c8e-4f65-9684-d30fc6e5e0c1', 'jamauricio@student.apc.edu.ph', 'No', NULL, '$2y$12$weR053UooJk33IBibsM6JuwWwyX0XXD2/mtzPYvkYWDXhB3Uza9ci', NULL, '2024-06-10 21:52:15', '2024-06-10 21:52:15'),
	(132, NULL, 'dasdasdad', 'dasdasdad', 'dasdasdasd', '92b6f39f-58d2-47f4-8bb0-d4b5f9672e43', 'jamauricio@student.apc.edu.ph', 'No', NULL, '$2y$12$uPHl7d6ICBXIKDwc/TA2duAQEnEbuO9a7nZHIv6oQ6znmgrTEsPBK', NULL, '2024-06-10 21:53:19', '2024-06-10 21:53:19'),
	(133, NULL, 'dasdada', 'dadasd', '423423424', 'bb590866-a0dc-4558-9264-6908c35d3029', 'jamauricio@student.apc.edu.ph', 'No', NULL, '$2y$12$Eamd0PVLO15oQstesVCpve3d/PjyeTiJC7zjGmrMkOrkq3XoypQQK', NULL, '2024-06-10 21:53:41', '2024-06-10 21:53:41'),
	(134, NULL, 'kelvin', 'dichoso', '4236424242', '9b3d5a79-750c-4d58-91c5-c6af6137a036', 'dasdasdasd', 'No', NULL, '$2y$12$PcNLzSPGmAcbPUwjWb3KCOn0qeAxGYoZHCRt10xfG.c29XRkSMHVS', NULL, '2024-06-10 22:02:58', '2024-06-10 22:02:58'),
	(135, NULL, 'dasdasdasd', 'dasdasd', '42342342', '2ab2919f-5f19-4133-8c41-c2ac002e67d4', 'dasdada', 'No', NULL, '$2y$12$Mgkpsokj0ZM8WEHik6PKHOKLkKWkXJemuNLMUW2QpaYgqlp1fKm9e', NULL, '2024-06-10 22:13:39', '2024-06-10 22:13:39'),
	(136, NULL, 'test', 'testq', '4234242', '40c0bdda-5079-43fe-b75b-9e821cd3b909', 'jamauricio@student.apc.edu.ph', 'No', NULL, '$2y$12$QFtcftIfQz7niV0oZK2dTezCClfqqqLzStpuWFNvQCA9x93Mr.GUu', NULL, '2024-06-10 22:20:47', '2024-06-10 22:20:47'),
	(137, NULL, 'test', 'test', '42342424', '10234f01-5657-4ed5-894a-7b1e1f3ac16f', 'dasdasd', 'No', NULL, '$2y$12$Yf.9OCkz/aDUkCi0rbvVLufGLwFts077x6PJwobTx2U5KxPf44XMK', NULL, '2024-06-10 22:54:46', '2024-06-10 22:54:46'),
	(138, NULL, 'dadasda', 'dasdad', '423423424', 'ae932680-020e-4367-9f40-0c7b6c3dff2a', 'dichoso.kelvin27@gmail.com', 'No', NULL, '$2y$12$1KOPpElH/e5HrCv09eziBOs1lUmYELlbvoNH61vQViaHzDzD34N/6', NULL, '2024-06-10 22:56:44', '2024-06-10 22:56:44'),
	(139, NULL, 'sdasdad', 'sdfsfsf', '423424234', '798688b8-7e42-4bb6-b3c8-f31b9d74c72b', 'jamauricio@student.apc.edu.ph', 'No', NULL, '$2y$12$tJHv7uMKW7ZbN/WP09y1k.68Uu3CZxLWjhQWF5OY/mSd5XXtSGjl.', NULL, '2024-06-10 22:57:09', '2024-06-10 22:57:09'),
	(140, NULL, 'sfdfsdfs', 'fdsfsdf', '34242', '9ab65f2c-98c2-43c2-b65f-d5807a22d015', 'jamauricio@student.apc.edu.ph', 'No', NULL, '$2y$12$yAD7e4hMc02Bra3wm5OXYOIRu7Y5cUS5fTLgbzT3WYV3jTOllQO5m', NULL, '2024-06-10 22:59:17', '2024-06-10 22:59:17'),
	(141, NULL, 'sdfsdfsdf', 'fdsfsf', '43242342', 'f61bcc23-f10a-44ab-938b-7af3402fe917', 'dichoso.kelvin27@gmail.com', 'No', NULL, '$2y$12$NRRuCxTg/nNeXT8qKb8mC.TRS5LHDI0NVBL/kyPKUyCCS6zA1CNr2', NULL, '2024-06-10 22:59:41', '2024-06-10 22:59:41'),
	(142, NULL, 'asdasd', 'dasdasd', '4234234', 'ac79daf0-51d5-4cb5-9e35-af57c222a615', 'jamauricio@student.apc.edu.ph', 'No', NULL, '$2y$12$uSE/ajNkTkQ8tZUHWboIseES2QMRIZVU4urTZi5aYpjPBy0NN1nQ6', NULL, '2024-06-10 23:07:24', '2024-06-10 23:07:24'),
	(143, NULL, 'ssSsDQWDQ', 'SDFSFDSDF', '42342342342', 'ec9a1268-375b-4807-97e4-a321a13ef6d1', 'DASDADA', 'No', NULL, '$2y$12$tDCjFuwdJoApGRqBdtIiNumXTIimjIl238fbbSjdVbCAEzd99Jud2', NULL, '2024-06-10 23:40:35', '2024-06-10 23:40:35'),
	(144, NULL, 'dasdasdad', 'dasdasd', '423424', 'eccbda1f-c389-45ce-88c2-c4997a1c3cad', 'dasdad', 'No', NULL, '$2y$12$9/D/wo6zQyL8TCQCwE4h0etsxZRyFAA0LPSe9q6DNeuMYt1dgPB6q', NULL, '2024-06-10 23:41:51', '2024-06-10 23:41:51'),
	(145, NULL, 'cvsfsdfsdfs', 'fsdfsdfsdf', '34234242342', '10ff80d6-1fe9-45c3-b67d-a50ebe0abb57', 'testuser@gmail.com', 'No', NULL, '$2y$12$gRP24i05wH4LDwxI2knbg.PZDMf8dqZ6pNDdUxB85ykmtXZTFi7A6', NULL, '2024-06-11 00:11:52', '2024-06-11 00:11:52'),
	(146, NULL, 'dasbjdjahsd', 'hjqsadjhadjhg', '76432674273', '51173632-afe7-474c-9918-f05041e7f6a3', 'jamauricio@student.apc.edu.ph', 'No', NULL, '$2y$12$2bcw8dm7xOuyv8c6..xPlurWa4WtKjE7fynqPbB8IHhnQb.s3M/zm', NULL, '2024-06-11 00:12:16', '2024-06-11 00:12:16'),
	(147, NULL, 'sadasd', 'dasdasd', '09814324128', '6a2ac48d-b209-4608-978a-197d59405359', 'jamauricio@student.apc.edu.ph', 'No', NULL, '$2y$12$pUY.aTKJzU8OrtZG6v0MwuLG8Y.DqvVTpi9y9ujH/ArRpyOTL./Uy', NULL, '2024-06-11 00:39:48', '2024-06-11 00:39:48'),
	(148, NULL, 'Kelvin', 'dichoso', '09814324128', '53754d48-b9d4-4250-bb46-14adf3673c39', 'testuser@gmail.com', 'No', NULL, '$2y$12$GYM1tzLnww3neeiBEMHSvOABX2jHehGkVuTwiLAh54fo3sNPdE5NG', NULL, '2024-06-11 00:41:30', '2024-06-11 00:41:30'),
	(149, NULL, 'dadasdasd', 'dasdadasda', '09784267428', 'cbc0cd8b-d930-4e8d-aef2-469598da9661', 'alayanrodney@gmail.com', 'No', NULL, '$2y$12$.XrJ3WqMUXcbm2c3lAb2s.UE.DLx7zOxtOh54W6QzCBrnNU5CjjNO', NULL, '2024-06-11 00:59:03', '2024-06-11 00:59:03'),
	(150, NULL, 'testing123', 'testing231', '09066225621', NULL, 'alectesting@gmail.com', 'No', NULL, '$2y$12$g561lr1uV8gMwHPIZFRoMuXwi0I7am/m/yafx//gS4yhPqOi8FlKq', NULL, '2024-06-16 10:31:09', '2024-06-16 10:31:09'),
	(151, NULL, 'testing123', 'testing231', '09066225621', NULL, 'alectesting@gmail.com', 'No', NULL, '$2y$12$XsDgkykKBCg0v4dd/9V5juq1Ld8q7XNyRlnkcpKo93/6UBpzkXBAq', NULL, '2024-06-16 10:31:32', '2024-06-16 10:31:32'),
	(152, NULL, 'testing123', 'testing231', '09066225621', NULL, 'alectesting@gmail.com', 'No', NULL, '$2y$12$1Tkvvac1a/I909jc7O0tS.AxwFaFs9/Sqqp0N4.X28p.kNRcyF7JW', NULL, '2024-06-16 10:31:53', '2024-06-16 10:31:53'),
	(153, NULL, 'testing321', 'testing 123', '09066225621', NULL, 'alectesting2@gmail.com', 'No', NULL, '$2y$12$HUP2t2YW.a0aDHSuNuEnEeNAuIWZ8HhnS24vMSOGZkwE5NGUHgIdi', NULL, '2024-06-17 10:32:52', '2024-06-16 10:32:52'),
	(154, NULL, 'anlo', 'the gorl', '09066225621', NULL, 'anloverygood@gmail.com', 'No', NULL, '$2y$12$Z5/XGammvcSSXzfO89/SHuxX7NF/Kc/1pstnjfkCNhRIcYn6R.5De', NULL, '2024-06-16 11:04:11', '2024-06-16 11:04:11'),
	(155, NULL, 'anlo', 'verygood', '09066225611', NULL, 'anloverygood@gmail.com', 'No', NULL, '$2y$12$.hDrB5Y4DN/xY99wcO8fDuV5T8ZPhGZF2A2OevXtNenhRi1vBySyC', NULL, '2024-06-17 11:05:15', '2024-06-16 11:05:15');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
