-- phpMyAdmin SQL Dump
-- version 4.9.4deb1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jun 04, 2020 at 11:40 AM
-- Server version: 8.0.20-0ubuntu0.19.10.1
-- PHP Version: 7.3.11-0ubuntu0.19.10.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `propertys`
--

-- --------------------------------------------------------

--
-- Table structure for table `areas`
--

CREATE TABLE `areas` (
  `id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `state_id` bigint UNSIGNED NOT NULL,
  `title` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `areas`
--

INSERT INTO `areas` (`id`, `created_at`, `updated_at`, `state_id`, `title`) VALUES
(1, NULL, NULL, 1, 'منطقه ۱ شهرداری تهران'),
(2, NULL, NULL, 1, 'منطقه ۲ شهرداری تهران'),
(3, NULL, NULL, 1, 'منطقه ۳ شهرداری تهران');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `title`, `created_at`, `updated_at`) VALUES
(1, 'اپارتمان', NULL, NULL),
(2, 'ویلایی', NULL, NULL),
(3, 'باغ', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `images`
--

CREATE TABLE `images` (
  `id` bigint UNSIGNED NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `property_id` bigint UNSIGNED NOT NULL,
  `title` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `images`
--

INSERT INTO `images` (`id`, `url`, `created_at`, `updated_at`, `property_id`, `title`) VALUES
(17, 'post/2020/6/3/1591177798/', '2020-06-03 05:19:58', '2020-06-03 05:19:58', 26, 'avatar.jpg'),
(18, 'post/2020/6/3/1591182631/', '2020-06-03 06:40:31', '2020-06-03 06:40:31', 27, 'chart01.png'),
(19, 'post/2020/6/3/1591182675/', '2020-06-03 06:41:15', '2020-06-03 06:41:15', 28, 'chart01.png'),
(20, 'post/2020/6/3/1591182757/', '2020-06-03 06:42:37', '2020-06-03 06:42:37', 29, 'chart01.png'),
(21, 'post/2020/6/3/1591183380/', '2020-06-03 06:53:00', '2020-06-03 06:53:00', 30, 'chart01.png'),
(22, 'post/2020/6/3/1591183543/', '2020-06-03 06:55:44', '2020-06-03 06:55:44', 31, 'chart01.png'),
(23, 'post/2020/6/3/1591183559/', '2020-06-03 06:55:59', '2020-06-03 06:55:59', 32, 'chart01.png'),
(24, 'post/2020/6/3/1591183571/', '2020-06-03 06:56:11', '2020-06-03 06:56:11', 33, 'chart01.png'),
(25, 'post/2020/6/3/1591183596/', '2020-06-03 06:56:36', '2020-06-03 06:56:36', 34, 'chart01.png'),
(26, 'post/2020/6/3/1591183630/', '2020-06-03 06:57:11', '2020-06-03 06:57:11', 35, 'chart01.png'),
(27, 'post/2020/6/3/1591183825/', '2020-06-03 07:00:26', '2020-06-03 07:00:26', 36, 'chart01.png'),
(28, 'post/2020/6/3/1591183851/', '2020-06-03 07:00:51', '2020-06-03 07:00:51', 37, 'chart01.png'),
(29, 'post/2020/6/3/1591183862/', '2020-06-03 07:01:02', '2020-06-03 07:01:02', 38, 'chart01.png'),
(30, 'post/2020/6/3/1591183993/', '2020-06-03 07:03:14', '2020-06-03 07:03:14', 39, 'chart01.png'),
(31, 'post/2020/6/3/1591189629/', '2020-06-03 08:37:09', '2020-06-03 08:37:09', 40, 'chart01.png'),
(32, 'post/2020/6/3/1591189686/', '2020-06-03 08:38:07', '2020-06-03 08:38:07', 41, 'chart01.png'),
(33, 'post/2020/6/3/1591189700/', '2020-06-03 08:38:21', '2020-06-03 08:38:21', 42, 'chart01.png'),
(34, 'post/2020/6/3/1591189716/', '2020-06-03 08:38:36', '2020-06-03 08:38:36', 43, 'chart01.png'),
(35, 'post/2020/6/3/1591189774/', '2020-06-03 08:39:34', '2020-06-03 08:39:34', 44, 'chart01.png'),
(36, 'post/2020/6/3/1591189883/', '2020-06-03 08:41:23', '2020-06-03 08:41:23', 45, 'chart01.png'),
(37, 'post/2020/6/3/1591189895/', '2020-06-03 08:41:35', '2020-06-03 08:41:35', 46, 'chart01.png'),
(38, 'post/2020/6/3/1591189943/', '2020-06-03 08:42:23', '2020-06-03 08:42:23', 47, 'chart01.png'),
(39, 'post/2020/6/3/1591190041/', '2020-06-03 08:44:01', '2020-06-03 08:44:01', 48, 'chart01.png'),
(40, 'post/2020/6/3/1591190073/', '2020-06-03 08:44:33', '2020-06-03 08:44:33', 49, 'chart01.png'),
(41, 'post/2020/6/3/1591190210/', '2020-06-03 08:46:50', '2020-06-03 08:46:50', 50, 'chart01.png'),
(42, 'post/2020/6/3/1591190347/', '2020-06-03 08:49:08', '2020-06-03 08:49:08', 51, 'chart01.png'),
(43, 'post/2020/6/3/1591190466/', '2020-06-03 08:51:06', '2020-06-03 08:51:06', 52, 'chart01.png'),
(44, 'post/2020/6/3/1591190474/', '2020-06-03 08:51:14', '2020-06-03 08:51:14', 53, 'chart01.png'),
(45, 'post/2020/6/3/1591190838/', '2020-06-03 08:57:18', '2020-06-03 08:57:18', 54, 'chart01.png'),
(46, 'post/2020/6/3/1591190860/', '2020-06-03 08:57:40', '2020-06-03 08:57:40', 55, 'chart01.png'),
(47, 'post/2020/6/3/1591190901/', '2020-06-03 08:58:22', '2020-06-03 08:58:22', 56, 'chart01.png'),
(48, 'post/2020/6/3/1591190939/', '2020-06-03 08:58:59', '2020-06-03 08:58:59', 57, 'chart01.png'),
(49, 'post/2020/6/3/1591190968/', '2020-06-03 08:59:28', '2020-06-03 08:59:28', 58, 'chart01.png'),
(50, 'post/2020/6/3/1591191050/', '2020-06-03 09:00:50', '2020-06-03 09:00:50', 59, 'chart01.png'),
(51, 'post/2020/6/3/1591191068/', '2020-06-03 09:01:08', '2020-06-03 09:01:08', 60, 'chart01.png'),
(52, 'post/2020/6/3/1591191102/', '2020-06-03 09:01:42', '2020-06-03 09:01:42', 61, 'chart01.png'),
(53, 'post/2020/6/3/1591191116/', '2020-06-03 09:01:56', '2020-06-03 09:01:56', 62, 'chart01.png'),
(54, 'post/2020/6/3/1591191117/', '2020-06-03 09:01:57', '2020-06-03 09:01:57', 63, 'chart01.png'),
(55, 'post/2020/6/3/1591191144/', '2020-06-03 09:02:24', '2020-06-03 09:02:24', 64, 'chart01.png'),
(56, 'post/2020/6/3/1591191162/', '2020-06-03 09:02:42', '2020-06-03 09:02:42', 65, 'chart01.png'),
(57, 'post/2020/6/3/1591191271/', '2020-06-03 09:04:31', '2020-06-03 09:04:31', 66, 'chart01.png'),
(58, 'post/2020/6/3/1591191307/', '2020-06-03 09:05:07', '2020-06-03 09:05:07', 67, 'chart01.png'),
(59, 'post/2020/6/3/1591191359/', '2020-06-03 09:06:00', '2020-06-03 09:06:00', 68, 'chart01.png'),
(60, 'post/2020/6/3/1591191371/', '2020-06-03 09:06:12', '2020-06-03 09:06:12', 69, 'chart01.png'),
(61, 'post/2020/6/3/1591191464/', '2020-06-03 09:07:44', '2020-06-03 09:07:44', 70, 'chart01.png'),
(62, 'post/2020/6/3/1591191486/', '2020-06-03 09:08:06', '2020-06-03 09:08:06', 71, 'chart01.png'),
(63, 'post/2020/6/3/1591197378/', '2020-06-03 10:46:19', '2020-06-03 10:46:19', 72, 'chart01.png'),
(64, 'post/2020/6/3/1591198821/', '2020-06-03 11:10:21', '2020-06-03 11:10:21', 73, 'avatar.jpg'),
(65, 'post/2020/6/3/1591198913/', '2020-06-03 11:11:53', '2020-06-03 11:11:53', 74, 'avatar.jpg'),
(66, 'post/2020/6/3/1591198955/', '2020-06-03 11:12:36', '2020-06-03 11:12:36', 75, 'avatar.jpg'),
(67, 'post/2020/6/3/1591198997/', '2020-06-03 11:13:17', '2020-06-03 11:13:17', 76, 'avatar.jpg'),
(68, 'post/2020/6/3/1591199064/', '2020-06-03 11:14:24', '2020-06-03 11:14:24', 77, 'avatar.jpg'),
(69, 'post/2020/6/3/1591199132/', '2020-06-03 11:15:32', '2020-06-03 11:15:32', 78, 'avatar.jpg'),
(70, 'post/2020/6/3/1591199147/', '2020-06-03 11:15:48', '2020-06-03 11:15:48', 79, 'avatar.jpg'),
(71, 'post/2020/6/3/1591199277/', '2020-06-03 11:17:57', '2020-06-03 11:17:57', 80, 'avatar.jpg'),
(72, 'post/2020/6/3/1591201979/', '2020-06-03 12:02:59', '2020-06-03 12:02:59', 81, 'avatar.jpg'),
(73, 'post/2020/6/3/1591202125/', '2020-06-03 12:05:25', '2020-06-03 12:05:25', 82, 'avatar.jpg'),
(74, 'post/2020/6/3/1591202155/', '2020-06-03 12:05:55', '2020-06-03 12:05:55', 83, 'avatar.jpg'),
(75, 'post/2020/6/3/1591202184/', '2020-06-03 12:06:24', '2020-06-03 12:06:24', 84, 'avatar.jpg'),
(76, 'post/2020/6/3/1591202265/', '2020-06-03 12:07:45', '2020-06-03 12:07:45', 85, 'avatar.jpg'),
(77, 'post/2020/6/3/1591202301/', '2020-06-03 12:08:21', '2020-06-03 12:08:21', 86, 'avatar.jpg');

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
(1, '2014_09_01_184655_create_roles_table', 1),
(2, '2014_10_12_000000_create_users_table', 1),
(3, '2014_10_12_100000_create_password_resets_table', 1),
(4, '2019_08_19_000000_create_failed_jobs_table', 1),
(5, '2020_05_02_160646_create_categories_table', 1),
(6, '2020_06_01_185520_create_states_table', 1),
(7, '2020_06_01_190019_create_areas_table', 1),
(8, '2020_06_01_190300_create_propertys_table', 1),
(10, '2020_06_01_192947_create_images_table', 1),
(14, '2020_06_04_082904_create_property_user_table', 2);

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
-- Table structure for table `propertys`
--

CREATE TABLE `propertys` (
  `id` bigint UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `categorie_id` bigint UNSIGNED NOT NULL,
  `area_id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `status` enum('true','false') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'false'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `propertys`
--

INSERT INTO `propertys` (`id`, `title`, `description`, `created_at`, `updated_at`, `categorie_id`, `area_id`, `user_id`, `status`) VALUES
(26, 'Another name of item ', 'Some small description goes here', '2020-06-03 05:19:58', '2020-06-03 05:19:58', 2, 2, 0, 'false'),
(27, 'Another name of item ', 'Some small description goes here', '2020-06-03 06:40:31', '2020-06-03 06:40:31', 3, 2, 0, 'false'),
(28, 'Another name of item ', 'Some small description goes here', '2020-06-03 06:41:15', '2020-06-03 06:41:15', 3, 2, 0, 'false'),
(29, 'Another name of item ', 'Some small description goes here', '2020-06-03 06:42:37', '2020-06-03 06:42:37', 3, 2, 0, 'false'),
(30, 'Another name of item ', 'Some small description goes here', '2020-06-03 06:53:00', '2020-06-03 06:53:00', 3, 2, 3, 'false'),
(31, 'Another name of item ', 'Some small description goes here', '2020-06-03 06:55:43', '2020-06-03 06:55:43', 3, 2, 3, 'false'),
(32, 'Another name of item ', 'Some small description goes here', '2020-06-03 06:55:59', '2020-06-03 06:55:59', 3, 2, 3, 'false'),
(33, 'Another name of item ', 'Some small description goes here', '2020-06-03 06:56:11', '2020-06-03 06:56:11', 3, 2, 3, 'false'),
(34, 'Another name of item ', 'Some small description goes here', '2020-06-03 06:56:36', '2020-06-03 06:56:36', 3, 2, 3, 'false'),
(35, 'Another name of item ', 'Some small description goes here', '2020-06-03 06:57:10', '2020-06-03 06:57:10', 3, 2, 3, 'false'),
(36, 'Another name of item ', 'Some small description goes here', '2020-06-03 07:00:25', '2020-06-03 07:00:25', 3, 2, 3, 'false'),
(37, 'Another name of item ', 'Some small description goes here', '2020-06-03 07:00:51', '2020-06-03 07:00:51', 3, 2, 3, 'false'),
(38, 'Another name of item ', 'Some small description goes here', '2020-06-03 07:01:02', '2020-06-03 07:01:02', 3, 2, 3, 'false'),
(39, 'Another name of item ', 'Some small description goes here', '2020-06-03 07:03:13', '2020-06-03 07:03:13', 3, 2, 3, 'false'),
(40, 'Another name of item ', 'Some small description goes here', '2020-06-03 08:37:09', '2020-06-03 08:37:09', 3, 2, 3, 'false'),
(41, 'Another name of item ', 'Some small description goes here', '2020-06-03 08:38:06', '2020-06-03 08:38:06', 3, 2, 3, 'false'),
(42, 'Another name of item ', 'Some small description goes here', '2020-06-03 08:38:20', '2020-06-03 08:38:20', 3, 2, 3, 'false'),
(43, 'Another name of item ', 'Some small description goes here', '2020-06-03 08:38:36', '2020-06-03 08:38:36', 3, 2, 3, 'false'),
(44, 'Another name of item ', 'Some small description goes here', '2020-06-03 08:39:34', '2020-06-03 08:39:34', 3, 2, 3, 'false'),
(45, 'Another name of item ', 'Some small description goes here', '2020-06-03 08:41:23', '2020-06-03 08:41:23', 3, 2, 3, 'false'),
(46, 'Another name of item ', 'Some small description goes here', '2020-06-03 08:41:35', '2020-06-03 08:41:35', 3, 2, 3, 'false'),
(47, 'Another name of item ', 'Some small description goes here', '2020-06-03 08:42:23', '2020-06-03 08:42:23', 3, 2, 3, 'false'),
(48, 'Another name of item ', 'Some small description goes here', '2020-06-03 08:44:01', '2020-06-03 08:44:01', 3, 2, 3, 'false'),
(49, 'Another name of item ', 'Some small description goes here', '2020-06-03 08:44:33', '2020-06-03 08:44:33', 3, 2, 3, 'false'),
(50, 'Another name of item ', 'Some small description goes here', '2020-06-03 08:46:50', '2020-06-03 08:46:50', 3, 2, 3, 'false'),
(51, 'Another name of item ', 'Some small description goes here', '2020-06-03 08:49:07', '2020-06-03 08:49:07', 3, 2, 3, 'false'),
(52, 'Another name of item ', 'Some small description goes here', '2020-06-03 08:51:06', '2020-06-03 08:51:06', 3, 2, 3, 'false'),
(53, 'Another name of item ', 'Some small description goes here', '2020-06-03 08:51:14', '2020-06-03 08:51:14', 3, 2, 3, 'false'),
(54, 'Another name of item ', 'Some small description goes here', '2020-06-03 08:57:18', '2020-06-03 08:57:18', 3, 2, 3, 'false'),
(55, 'Another name of item ', 'Some small description goes here', '2020-06-03 08:57:40', '2020-06-03 08:57:40', 3, 2, 3, 'false'),
(56, 'Another name of item ', 'Some small description goes here', '2020-06-03 08:58:21', '2020-06-03 08:58:21', 3, 2, 3, 'false'),
(57, 'Another name of item ', 'Some small description goes here', '2020-06-03 08:58:59', '2020-06-03 08:58:59', 3, 2, 3, 'false'),
(58, 'Another name of item ', 'Some small description goes here', '2020-06-03 08:59:28', '2020-06-03 08:59:28', 3, 2, 3, 'false'),
(59, 'Another name of item ', 'Some small description goes here', '2020-06-03 09:00:50', '2020-06-03 09:00:50', 3, 2, 3, 'false'),
(60, 'Another name of item ', 'Some small description goes here', '2020-06-03 09:01:08', '2020-06-03 09:01:08', 3, 2, 3, 'false'),
(61, 'Another name of item ', 'Some small description goes here', '2020-06-03 09:01:42', '2020-06-03 09:01:42', 3, 2, 3, 'false'),
(62, 'Another name of item ', 'Some small description goes here', '2020-06-03 09:01:56', '2020-06-03 09:01:56', 3, 2, 3, 'false'),
(63, 'Another name of item ', 'Some small description goes here', '2020-06-03 09:01:57', '2020-06-03 09:01:57', 3, 2, 3, 'false'),
(64, 'Another name of item ', 'Some small description goes here', '2020-06-03 09:02:24', '2020-06-03 09:02:24', 3, 2, 3, 'false'),
(65, 'Another name of item ', 'Some small description goes here', '2020-06-03 09:02:42', '2020-06-03 09:02:42', 3, 2, 3, 'false'),
(66, 'Another name of item ', 'Some small description goes here', '2020-06-03 09:04:31', '2020-06-03 09:04:31', 3, 2, 3, 'false'),
(67, 'Another name of item ', 'Some small description goes here', '2020-06-03 09:05:07', '2020-06-03 09:05:07', 3, 2, 3, 'false'),
(68, 'Another name of item ', 'Some small description goes here', '2020-06-03 09:05:59', '2020-06-03 09:05:59', 3, 2, 3, 'false'),
(69, 'Another name of item ', 'Some small description goes here', '2020-06-03 09:06:11', '2020-06-03 09:06:11', 3, 2, 3, 'false'),
(70, 'Another name of item ', 'Some small description goes here', '2020-06-03 09:07:44', '2020-06-03 09:07:44', 3, 2, 3, 'false'),
(71, 'Another name of item ', 'Some small description goes here', '2020-06-03 09:08:06', '2020-06-03 09:08:06', 3, 2, 3, 'false'),
(72, 'Another name of item ', 'Some small description goes here', '2020-06-03 10:46:18', '2020-06-03 10:46:18', 3, 2, 5, 'false'),
(73, 'Another name of item ', 'Some small description goes here', '2020-06-03 11:10:21', '2020-06-03 11:10:21', 2, 2, 3, 'false'),
(74, 'Another name of item ', 'Some small description goes here', '2020-06-03 11:11:53', '2020-06-03 11:11:53', 2, 2, 3, 'false'),
(75, 'Another name of item ', 'Some small description goes here', '2020-06-03 11:12:35', '2020-06-03 11:12:35', 2, 2, 3, 'false'),
(76, 'Another name of item ', 'Some small description goes here', '2020-06-03 11:13:17', '2020-06-03 11:13:17', 2, 2, 3, 'false'),
(77, 'Another name of item ', 'Some small description goes here', '2020-06-03 11:14:24', '2020-06-03 11:14:24', 2, 2, 3, 'false'),
(78, 'Another name of item ', 'Some small description goes here', '2020-06-03 11:15:32', '2020-06-03 11:15:32', 2, 2, 3, 'false'),
(79, 'Another name of item ', 'Some small description goes here', '2020-06-03 11:15:47', '2020-06-03 11:15:47', 2, 2, 3, 'false'),
(80, 'Another name of item ', 'Some small description goes here', '2020-06-03 11:17:57', '2020-06-03 11:17:57', 2, 2, 3, 'false'),
(81, 'Another name of item ', 'Some small description goes here', '2020-06-03 12:02:59', '2020-06-03 12:02:59', 3, 3, 3, 'false'),
(82, 'Another name of item ', 'Some small description goes here', '2020-06-03 12:05:25', '2020-06-04 06:45:09', 3, 3, 3, 'true'),
(83, 'Another name of item ', 'Some small description goes here', '2020-06-03 12:05:55', '2020-06-04 06:44:38', 3, 3, 3, 'true'),
(84, 'Another name of item ', 'Some small description goes here', '2020-06-03 12:06:24', '2020-06-03 17:06:04', 3, 3, 3, 'true'),
(85, 'Another name of item ', 'Some small description goes here', '2020-06-03 12:07:45', '2020-06-03 12:39:58', 1, 1, 3, 'true'),
(86, 'Another name of item ', 'Some small description goes here', '2020-06-03 12:08:21', '2020-06-03 12:39:01', 2, 1, 3, 'true');

-- --------------------------------------------------------

--
-- Table structure for table `property_user`
--

CREATE TABLE `property_user` (
  `id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `property_id` bigint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `property_user`
--

INSERT INTO `property_user` (`id`, `created_at`, `updated_at`, `user_id`, `property_id`) VALUES
(44, NULL, NULL, 6, 85);

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `title`, `description`, `created_at`, `updated_at`) VALUES
(1, 'user', '', NULL, NULL),
(2, 'property', '', NULL, NULL),
(4, 'admin', '', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `states`
--

CREATE TABLE `states` (
  `id` bigint UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `states`
--

INSERT INTO `states` (`id`, `title`, `created_at`, `updated_at`) VALUES
(1, 'تهران', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `role_id` bigint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `role_id`) VALUES
(2, 'reza', 'reza@gmail.com', NULL, '$2y$10$Yo/0zXGyGm9/m..nWMAqH.n7P/0gz2qizEdm2pF3uVCBNvB8oOMgi', NULL, '2020-06-02 11:46:32', '2020-06-02 11:46:32', 2),
(3, 'amins', 'amins@gmail.com', NULL, '$2y$10$Az62TQnYdVBJ3kZ9BEklNOr7BIK2kyoMAK0MuB0zllgJNkFvvIw2y', NULL, '2020-06-03 02:32:44', '2020-06-03 02:32:44', 1),
(4, 'admin', 'admin@gmail.com', NULL, '$2y$10$n9fdYgiaCeVcCXXGHOL6xe2/KnzQdd6.HfQhIKCxT.VUyMSiey41G', NULL, '2020-06-03 17:05:54', '2020-06-03 17:05:54', 2),
(5, 'admin1000', 'admin1000@gmail.com', NULL, '$2y$10$yRhNbMPa8a2QDz3NREhZ5eWZHy/hbdGkeUi3Ml7Di8nEMqSpljN4y', NULL, '2020-06-03 18:48:43', '2020-06-03 18:48:43', 4),
(6, 'aminUser', 'aminUser@gmail.com', NULL, '$2y$10$2fYeI1zlVVMdf78Ht0cI1.kd5ZzWTehuUaZuXYKcN7QHygrK/WcUm', NULL, '2020-06-04 03:08:17', '2020-06-04 03:08:17', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `areas`
--
ALTER TABLE `areas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `areas_state_id_foreign` (`state_id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `images`
--
ALTER TABLE `images`
  ADD PRIMARY KEY (`id`),
  ADD KEY `images_property_id_foreign` (`property_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `propertys`
--
ALTER TABLE `propertys`
  ADD PRIMARY KEY (`id`),
  ADD KEY `propertys_categorie_id_foreign` (`categorie_id`);

--
-- Indexes for table `property_user`
--
ALTER TABLE `property_user`
  ADD PRIMARY KEY (`id`),
  ADD KEY `property_user_user_id_foreign` (`user_id`),
  ADD KEY `property_user_property_id_foreign` (`property_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `states`
--
ALTER TABLE `states`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `users_role_id_foreign` (`role_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `areas`
--
ALTER TABLE `areas`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `images`
--
ALTER TABLE `images`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=78;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `propertys`
--
ALTER TABLE `propertys`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=87;

--
-- AUTO_INCREMENT for table `property_user`
--
ALTER TABLE `property_user`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `states`
--
ALTER TABLE `states`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `areas`
--
ALTER TABLE `areas`
  ADD CONSTRAINT `areas_state_id_foreign` FOREIGN KEY (`state_id`) REFERENCES `states` (`id`);

--
-- Constraints for table `images`
--
ALTER TABLE `images`
  ADD CONSTRAINT `images_property_id_foreign` FOREIGN KEY (`property_id`) REFERENCES `propertys` (`id`);

--
-- Constraints for table `propertys`
--
ALTER TABLE `propertys`
  ADD CONSTRAINT `propertys_categorie_id_foreign` FOREIGN KEY (`categorie_id`) REFERENCES `categories` (`id`);

--
-- Constraints for table `property_user`
--
ALTER TABLE `property_user`
  ADD CONSTRAINT `property_user_property_id_foreign` FOREIGN KEY (`property_id`) REFERENCES `propertys` (`id`),
  ADD CONSTRAINT `property_user_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
