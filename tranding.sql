-- phpMyAdmin SQL Dump
-- version 4.5.4.1deb2ubuntu2.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Nov 28, 2021 at 05:04 PM
-- Server version: 5.7.33-0ubuntu0.16.04.1
-- PHP Version: 7.4.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `rebpol`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'admin@admin.com', '$2y$10$iTcQQM0zkCR89tcgFmOZJ.1.0yqqA/GPb8T9JO3R2z0zUY944IiEK', '', NULL, '2020-08-07 01:55:38');

-- --------------------------------------------------------

--
-- Table structure for table `admin_password_resets`
--

CREATE TABLE `admin_password_resets` (
  `id` int(11) NOT NULL,
  `email` varchar(191) NOT NULL,
  `token` varchar(191) NOT NULL,
  `status` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin_password_resets`
--

INSERT INTO `admin_password_resets` (`id`, `email`, `token`, `status`, `created_at`, `updated_at`) VALUES
(5, 'prantobackup@gmail.com', 'H2oqruNWw8B5fY65o0kKDaIqZjAbkz', 1, '2018-09-16 16:10:06', NULL),
(6, 'prantobackup@gmail.com', '0GnvI4a1FGQIkG9IkdTz3ru8kmbq1J', 1, '2018-09-16 16:10:53', NULL),
(7, 'prantobackup@gmail.com', 'u4Y3LiJxzb5KfST6NvIbxzO71JuegE', 1, '2018-09-16 16:13:30', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `basic_settings`
--

CREATE TABLE `basic_settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `sitename` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `esender` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `emessage` longtext COLLATE utf8mb4_unicode_ci,
  `service_title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `service_sub_title` text COLLATE utf8mb4_unicode_ci,
  `test_title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `test_sub_title` text COLLATE utf8mb4_unicode_ci,
  `blog_title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `blog_sub_title` text COLLATE utf8mb4_unicode_ci,
  `footer` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `footer_text` text COLLATE utf8mb4_unicode_ci,
  `team_title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `team_sub_title` text COLLATE utf8mb4_unicode_ci,
  `sponser_title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sponser_sub_title` text COLLATE utf8mb4_unicode_ci,
  `statis_1_icon` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `statis_2_icon` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `statis_3_icon` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `statis_4_icon` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `statis_1_count` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `statis_2_count` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `statis_3_count` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `statis_4_count` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `statis_1_title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `statis_2_title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `statis_3_title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `statis_4_title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `about_title` text COLLATE utf8mb4_unicode_ci,
  `about_des` longtext COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `basic_settings`
--

INSERT INTO `basic_settings` (`id`, `sitename`, `color`, `phone`, `email`, `address`, `esender`, `emessage`, `service_title`, `service_sub_title`, `test_title`, `test_sub_title`, `blog_title`, `blog_sub_title`, `footer`, `footer_text`, `team_title`, `team_sub_title`, `sponser_title`, `sponser_sub_title`, `statis_1_icon`, `statis_2_icon`, `statis_3_icon`, `statis_4_icon`, `statis_1_count`, `statis_2_count`, `statis_3_count`, `statis_4_count`, `statis_1_title`, `statis_2_title`, `statis_3_title`, `statis_4_title`, `about_title`, `about_des`, `created_at`, `updated_at`) VALUES
(1, 'Prominence', 'cf3030', '01234564795', 'support@gmail.com', 'Dhaka 1215, Bangladesh', 'example@example.com', '&nbsp;<img src="https://i.imgur.com/Sf1IGmV.png" width="1138"><div><br></div><div>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</div><div><br></div><div>&nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;<div>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; <font size="4">&nbsp;<b>Hi {{name}}&nbsp;,</b></font></div><div><span style="font-size: 0.875rem;"><br></span></div><div><span style="font-size: 0.875rem;">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<b>{{message}}</b></span></div><div><span style="font-size: 0.875rem;"><br></span></div><h6><span style="font-size: 0.875rem;">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</span><font size="3" style="">Thank You,<br></font><font size="3">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;Form Company Team</font></h6><div><span style="font-size: 0.875rem;"><br></span></div><div><span style="font-size: 0.875rem;"><br></span></div><div><span style="font-size: 0.875rem;"><br></span></div><div><span style="font-size: 0.875rem;"><br></span></div><div><span style="font-size: 0.875rem;">&nbsp;</span><img src="https://i.imgur.com/8PcY9xq.png" width="1136" style="font-size: 0.875rem;"><span style="font-size: 0.875rem;">&nbsp;</span><br></div><div><span style="font-size: 0.875rem;"><br></span></div><div><span style="font-size: 0.875rem;"><br></span></div><div><span style="font-size: 0.875rem;"><br></span></div><div><span style="font-size: 0.875rem;"><br></span></div><div><span style="font-size: 0.875rem;"><br></span></div><div><span style="font-size: 0.875rem;"><br></span></div><div><span style="font-size: 0.875rem;"><br></span></div><div><span style="font-size: 0.875rem;">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</span><br></div></div>', 'Our Service', 'Contrary to popular belief, Lorem Ipsum is not simply', 'Our Product Category', 'Clients & Feedback', 'Our Product', 'There are many variations', '2018 © All Rights Reserved', 'The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from "de Finibus Bonorum et Malorum" by Cicero are also reproduced in their exact original form, accompanied by', 'Team Section', 'The standard chunk of', 'It is a long established fact', 'There are many variations of passages of Lorem Ipsum available', 'user', 'building', 'clock-o', 'th', '5252', '6450', '3569', '6222', 'Happy Client', 'Total State', 'Work Time', 'Complete Work', 'About Us Contrary to popular belief', '<p style="margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;">Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of "de Finibus Bonorum et Malorum" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, "Lorem ipsum dolor sit amet..", comes from a line in section 1.10.32.</p><div><p style="margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;">Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of "de Finibus Bonorum et Malorum" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, "Lorem ipsum dolor sit amet..", comes from a line in section 1.10.32.</p></div><div><p style="margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;">Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of "de Finibus Bonorum et Malorum" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, "Lorem ipsum dolor sit amet..", comes from a line in section 1.10.32.</p></div><div><br></div>', NULL, '2019-08-20 11:18:45');

-- --------------------------------------------------------

--
-- Table structure for table `blogs`
--

CREATE TABLE `blogs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `cat_id` int(11) DEFAULT NULL,
  `title` varchar(256) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `blogs`
--

INSERT INTO `blogs` (`id`, `cat_id`, `title`, `image`, `file`, `description`, `created_at`, `updated_at`) VALUES
(1, 1, 'Industrial website redesign for marketing to engineers', '1596954515.jpg', '1598459317.pdf', '<img src="https://i.imgur.com/wC1XTWV.jpg" width="513"><div><br></div><div><br></div><div><br></div><div>It appears garment manufacturers are at last breathing a sigh of relief as work orders for apparel items from international retailers are coming back with the reopening of their stores in the European and American markets.\r\n\r\nThe signs of recovery for the garment sector are also evident in the export figures of July when Bangladesh earned $3.24 billion from apparel shipment though the amount is 1.98 per cent lower than a year earlier.\r\n\r\nHowever, garment export receipts in July are 14.18 per cent higher than the monthly target of $2.84 billion.\r\n\r\nOf the total garment shipment, knitwear exports grew 4.30 per cent year-on-year to $1.75 billion while woven exports fell 8.43 per cent to $1.49 billion, according to data from the Export Promotion Bureau.\r\n\r\nEarnings from apparel shipment in April, May and June stood at $0.37 billion, $1.23 billion and $2.28 billion respectively.</div>', '2020-07-23 04:30:41', '2020-09-15 01:13:14'),
(2, 2, 'Industrial Content Marketing for Engineers', '1596954564.jpg', '1598352004.pdf', 'It appears garment manufacturers are at last breathing a sigh of relief as work orders for apparel items from international retailers are coming back with the reopening of their stores in the European and American markets.\r\n\r\nThe signs of recovery for the garment sector are also evident in the export figures of July when Bangladesh earned $3.24 billion from apparel shipment though the amount is 1.98 per cent lower than a year earlier.\r\n\r\nHowever, garment export receipts in July are 14.18 per cent higher than the monthly target of $2.84 billion.\r\n\r\nOf the total garment shipment, knitwear exports grew 4.30 per cent year-on-year to $1.75 billion while woven exports fell 8.43 per cent to $1.49 billion, according to data from the Export Promotion Bureau.\r\n\r\nEarnings from apparel shipment in April, May and June stood at $0.37 billion, $1.23 billion and $2.28 billion respectively.', '2020-07-24 03:33:54', '2020-08-26 13:46:36'),
(3, 3, 'Use industrial content marketing', '1596954578.jpg', '1598435310.pdf', 'It appears garment manufacturers are at last breathing a sigh of relief as work orders for apparel items from international retailers are coming back with the reopening of their stores in the European and American markets.\r\n\r\nThe signs of recovery for the garment sector are also evident in the export figures of July when Bangladesh earned $3.24 billion from apparel shipment though the amount is 1.98 per cent lower than a year earlier.\r\n\r\nHowever, garment export receipts in July are 14.18 per cent higher than the monthly target of $2.84 billion.\r\n\r\nOf the total garment shipment, knitwear exports grew 4.30 per cent year-on-year to $1.75 billion while woven exports fell 8.43 per cent to $1.49 billion, according to data from the Export Promotion Bureau.\r\n\r\nEarnings from apparel shipment in April, May and June stood at $0.37 billion, $1.23 billion and $2.28 billion respectively.', '2020-07-24 03:34:12', '2020-08-26 13:46:45'),
(6, 4, 'World Trade Organisation', '1598430427.jpg', '1598435355.pdf', 'Between January and July, Vietnam, Bangladesh\'s main competitor in global apparel trade, exported textile and garment items worth $16.2 billion. In that time, Bangladesh\'s apparel exports stood at $15.2 billion.', '2020-08-26 02:27:08', '2020-08-26 13:47:03'),
(7, 1, 'According to the latest data from the World', '1598431226.jpg', '1598431226.pdf', 'They include One Household One Farm project, Shelter Project, Digital Bangladesh, Education Support Program, Women Empowerment, Electricity at every household, Community clinic, social safety net and protecting the environment.', '2020-08-26 02:40:26', '2020-08-26 02:40:26'),
(9, 3, 'It appears garment manufacturers', '1598594353.jpg', '1598594353.pdf', '<div>It appears garment manufacturers are at last breathing a sigh of relief as work orders for apparel items from international retailers are coming back with the reopening of their stores in the European. It appears garment manufacturers are at last breathing a sigh of relief as work orders for apparel items from international retailers are coming back with the reopening of their stores in the European. It appears garment manufacturers are at last breathing a sigh of relief as work orders for apparel items from international retailers are coming back with the reopening of their stores in the European.</div>', '2020-08-27 23:59:14', '2020-09-15 01:10:54');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Education', '2020-08-26 10:03:48', '2020-08-27 02:25:35'),
(2, 'Project', '2020-08-26 13:44:38', '2020-08-27 02:25:44'),
(3, 'Work', '2020-08-26 13:46:09', '2020-08-26 13:46:09'),
(4, 'Service', '2020-08-26 13:46:21', '2020-08-26 13:46:21');

-- --------------------------------------------------------

--
-- Table structure for table `companies`
--

CREATE TABLE `companies` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(256) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `companies`
--

INSERT INTO `companies` (`id`, `image`, `title`, `description`, `created_at`, `updated_at`) VALUES
(1, '1596954826.jpg', 'Team of Professional', 'It appears garment manufacturers are at last breathing a sigh of relief as work orders for apparel items from', '2020-07-23 04:24:01', '2020-08-09 00:33:46'),
(2, '1596954845.jpg', 'Full of services', 'It appears garment manufacturers are at last breathing a sigh of relief as work orders for apparel items from', '2020-07-24 01:44:52', '2020-08-09 00:34:05'),
(3, '1596954859.jpg', 'Smart Technology', 'It appears garment manufacturers are at last breathing a sigh of relief as work orders for apparel items from', '2020-07-24 01:45:22', '2020-08-09 00:34:19'),
(4, '1596954870.jpg', '27/7 Support', 'It appears garment manufacturers are at last breathing a sigh of relief as work orders for apparel items from', '2020-07-24 01:45:48', '2020-08-09 00:34:30');

-- --------------------------------------------------------

--
-- Table structure for table `counters`
--

CREATE TABLE `counters` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(256) COLLATE utf8mb4_unicode_ci NOT NULL,
  `number` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `counters`
--

INSERT INTO `counters` (`id`, `icon`, `title`, `number`, `created_at`, `updated_at`) VALUES
(1, 'flaticon-mine', 'Certified Engineers', '300', '2020-07-23 09:36:07', '2020-07-24 03:49:32'),
(2, 'flaticon-face', 'Happy Clients', '150', '2020-07-24 03:50:06', '2020-07-24 03:50:06'),
(3, 'flaticon-trophy-1', 'Award Won', '100', '2020-07-24 03:50:31', '2020-07-24 03:50:31'),
(4, 'flaticon-like-1', 'Projects Done', '120', '2020-07-24 03:51:01', '2020-07-24 03:51:01');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `features`
--

CREATE TABLE `features` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(256) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `features`
--

INSERT INTO `features` (`id`, `title`, `image`, `description`, `created_at`, `updated_at`) VALUES
(1, 'Metal and Non - Metals', '1596955586.jpg', 'It appears garment manufacturers are at last breathing a sigh of relief as work orders for apparel items from international retailers are coming back with the reopening of their stores in the European and American markets.\r\n\r\nThe signs of recovery for the garment sector are also evident in the export figures of July when Bangladesh earned $3.24 billion from apparel shipment though the amount is 1.98 per cent lower than a year earlier.\r\n\r\nHowever, garment export receipts in July are 14.18 per cent higher than the monthly target of $2.84 billion.\r\n\r\nOf the total garment shipment, knitwear exports grew 4.30 per cent year-on-year to $1.75 billion while woven exports fell 8.43 per cent to $1.49 billion, according to data from the Export Promotion Bureau.\r\n\r\nEarnings from apparel shipment in April, May and June stood at $0.37 billion, $1.23 billion and $2.28 billion respectively.', '2020-07-23 04:28:25', '2020-08-09 00:46:26'),
(2, 'Construction Materials', '1596955602.jpg', 'It appears garment manufacturers are at last breathing a sigh of relief as work orders for apparel items from international retailers are coming back with the reopening of their stores in the European and American markets.\r\n\r\nThe signs of recovery for the garment sector are also evident in the export figures of July when Bangladesh earned $3.24 billion from apparel shipment though the amount is 1.98 per cent lower than a year earlier.\r\n\r\nHowever, garment export receipts in July are 14.18 per cent higher than the monthly target of $2.84 billion.\r\n\r\nOf the total garment shipment, knitwear exports grew 4.30 per cent year-on-year to $1.75 billion while woven exports fell 8.43 per cent to $1.49 billion, according to data from the Export Promotion Bureau.\r\n\r\nEarnings from apparel shipment in April, May and June stood at $0.37 billion, $1.23 billion and $2.28 billion respectively.', '2020-07-24 02:10:53', '2020-08-09 00:46:42');

-- --------------------------------------------------------

--
-- Table structure for table `generals`
--

CREATE TABLE `generals` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `web_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `service_header` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `service_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `service_description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `company_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `company_header` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `about_video` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `about_img` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `features_header` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `features_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `features_description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact_header` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact_number` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact_email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact_address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `blog_header` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `blog_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `blog_description` text COLLATE utf8mb4_unicode_ci,
  `about_description` text COLLATE utf8mb4_unicode_ci,
  `about_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `privacy_policy_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `privacy_policy_description` text COLLATE utf8mb4_unicode_ci,
  `footer_description` text COLLATE utf8mb4_unicode_ci,
  `footer` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `admin_footer` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `map_url` text COLLATE utf8mb4_unicode_ci,
  `color` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `trending_incresed_day` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `trending_incresed_average` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `trending_test_email` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `generals`
--

INSERT INTO `generals` (`id`, `web_title`, `service_header`, `service_title`, `service_description`, `company_title`, `company_header`, `about_video`, `about_img`, `features_header`, `features_title`, `features_description`, `contact_header`, `contact_title`, `contact_number`, `contact_email`, `contact_address`, `blog_header`, `blog_title`, `blog_description`, `about_description`, `about_title`, `privacy_policy_title`, `privacy_policy_description`, `footer_description`, `footer`, `admin_footer`, `map_url`, `color`, `trending_incresed_day`, `trending_incresed_average`, `trending_test_email`, `created_at`, `updated_at`) VALUES
(1, 'Rebpol', 'Services form', 'Our Best Service', 'Wasn\'t a dream. His room, a proper human room although a little too small, lay peacefully between its four familiar walls collection of textile samples lay spread out on the table Samsa was a travelling salesman.', 'Our Company', 'Welcome to', 'https://www.youtube.com/embed/N-dwZNFeZI8', 'D:\\xampp\\tmp\\phpC96.tmp', 'Recently we have finished', 'Featured Projects', 'Wasn\'t a dream. His room, a proper human room although a little too small, lay peacefully between its four familiar walls collection of textile samples lay spread out on the table Samsa was a travelling salesman.', 'If you need any industrial solution, please contact with us', 'cadsd', '+8801122334455', 'group@info.com', 'House no, 2005  dreem city insprine urrine London.', 'Industry News', 'Blog', 'Wasn\'t a dream. His room, a proper human room although a little too small, lay peacefully between its four familiar walls collection of textile samples lay spread out on the table Samsa was a travelling salesman.', 'It appears garment manufacturers are at last breathing a sigh of relief as work orders for apparel items from international retailers are coming back with the reopening of their stores in the European and American markets.\r\n\r\nThe signs of recovery for the garment sector are also evident in the export figures of July when Bangladesh earned $3.24 billion from apparel shipment though the amount is 1.98 per cent lower than a year earlier.\r\n\r\nHowever, garment export receipts in July are 14.18 per cent higher than the monthly target of $2.84 billion. Of the total garment shipment, knitwear exports grew 4.30 per cent year-on-year to $1.75 billion while woven exports fell 8.43 per cent to $1.49 billion, according to data from the Export Promotion Bureau. Earnings from apparel shipment in April, May and June stood at $0.37 billion, $1.23 billion and $2.28 billion respectively.', 'CEO', 'Privacy Policy', 'It appears garment manufacturers are at last breathing a sigh of relief as work orders for apparel items from international retailers are coming back with the reopening of their stores in the European and American markets. The signs of recovery for the garment sector are also evident in the export figures of July when Bangladesh earned $3.24 billion from apparel shipment though the amount is 1.98 per cent lower than a year earlier. However, garment export receipts in July are 14.18 per cent higher than the monthly target of $2.84 billion. Of the total garment shipment, knitwear exports grew 4.30 per cent year-on-year to $1.75 billion while woven exports fell 8.43 per cent to $1.49 billion, according to data from the Export Promotion Bureau. Earnings from apparel shipment in April, May and June stood at $0.37 billion, $1.23 billion and $2.28 billion respectively.', 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable.', 'Copyright &copy; 2020. All rights reserved.', 'Copyright &copy; all right reserved - 2020', '<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3654.136709507606!2d90.40986461438283!3d23.67106858462848!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3755b97f771456c9%3A0xe7476c9d441f10e7!2sTeghoria%20High%20School!5e0!3m2!1sen!2sbd!4v1596182028325!5m2!1sen!2sbd" width="600" height="450" frameborder="0" style="border:0;" allowfullscreen="" aria-hidden="false" tabindex="0"></iframe>', 'dd0b00', '30d', '5', 'prantobackup@gmail.com', '2020-08-01 01:11:11', '2021-11-28 10:50:27');

-- --------------------------------------------------------

--
-- Table structure for table `how_it_works`
--

CREATE TABLE `how_it_works` (
  `id` int(10) UNSIGNED NOT NULL,
  `icon` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `detail` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `how_it_works`
--

INSERT INTO `how_it_works` (`id`, `icon`, `title`, `detail`, `created_at`, `updated_at`) VALUES
(1, 'user', 'Sms Bulk', 'The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested.', '2019-08-20 10:49:42', '2019-08-20 10:49:42'),
(2, 'phone', 'Contrary to', 'The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested.', '2019-08-20 10:49:56', '2019-08-20 10:53:10'),
(3, 'camera', 'Bulk SMS', 'The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested.', '2019-08-20 10:50:19', '2019-08-20 10:50:19');

-- --------------------------------------------------------

--
-- Table structure for table `menus`
--

CREATE TABLE `menus` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(256) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menus`
--

INSERT INTO `menus` (`id`, `name`, `title`, `image`, `description`, `created_at`, `updated_at`) VALUES
(1, 'Services', 'college', '1597822556.jpg', 'However, garment export receipts in July are 14.18 per cent higher than the monthly target of $2.84 billion.\r\n\r\nOf the total garment shipment, knitwear exports grew 4.30 per cent year-on-year to $1.75 billion while woven exports fell 8.43 per cent to $1.49 billion, according to data from the Export Promotion Bureau.\r\n\r\nEarnings from apparel shipment in April, May and June stood at $0.37 billion, $1.23 billion and $2.28 billion respectively.', '2020-07-21 23:48:27', '2020-08-19 01:35:57'),
(2, 'Our Work', 'This is my First Post', '1596955027.jpg', 'It appears garment manufacturers are at last breathing a sigh of relief as work orders for apparel items from international retailers are coming back with the reopening of their stores in the European and American markets.\r\n\r\nThe signs of recovery for the garment sector are also evident in the export figures of July when Bangladesh earned $3.24 billion from apparel shipment though the amount is 1.98 per cent lower than a year earlier.\r\n\r\nHowever, garment export receipts in July are 14.18 per cent higher than the monthly target of $2.84 billion.\r\n\r\nOf the total garment shipment, knitwear exports grew 4.30 per cent year-on-year to $1.75 billion while woven exports fell 8.43 per cent to $1.49 billion, according to data from the Export Promotion Bureau.\r\n\r\nEarnings from apparel shipment in April, May and June stood at $0.37 billion, $1.23 billion and $2.28 billion respectively.', '2020-07-22 01:09:42', '2020-08-09 00:37:07'),
(3, 'Testimonials', 'CEO', '1596955228.jpg', 'It appears garment manufacturers are at last breathing a sigh of relief as work orders for apparel items from international retailers are coming back with the reopening of their stores in the European and American markets.\r\n\r\nThe signs of recovery for the garment sector are also evident in the export figures of July when Bangladesh earned $3.24 billion from apparel shipment though the amount is 1.98 per cent lower than a year earlier.\r\n\r\nHowever, garment export receipts in July are 14.18 per cent higher than the monthly target of $2.84 billion. Of the total garment shipment, knitwear exports grew 4.30 per cent year-on-year to $1.75 billion while woven exports fell 8.43 per cent to $1.49 billion, according to data from the Export Promotion Bureau.\r\n\r\nEarnings from apparel shipment in April, May and June stood at $0.37 billion, $1.23 billion and $2.28 billion respectively.', '2020-07-24 11:57:52', '2020-08-11 04:32:31');

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
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2020_07_21_132841_create_admins_table', 1),
(5, '2020_07_22_053703_create_menus_table', 1),
(6, '2020_07_22_053823_create_works_table', 1),
(7, '2020_07_22_053926_create_sliders_table', 1),
(8, '2020_07_22_054055_create_sub_menus_table', 1),
(9, '2020_07_22_054153_create_services_table', 1),
(15, '2020_07_22_054244_create_companies_table', 2),
(16, '2020_07_22_054327_create_testimonials_table', 2),
(17, '2020_07_22_062353_create_admins_table', 2),
(18, '2020_07_23_092317_create_generals_table', 2),
(19, '2020_07_23_094723_create_features_table', 2),
(20, '2020_07_23_095106_create_partners_table', 3),
(21, '2020_07_23_095124_create_blogs_table', 3),
(22, '2020_07_23_095142_create_socials_table', 3),
(23, '2020_07_23_095315_create_counters_table', 3),
(24, '2020_07_27_111203_create_subscribers_table', 4),
(25, '2020_07_31_060402_create_contacts_table', 5),
(26, '2020_08_26_154656_create_categories_table', 6);

-- --------------------------------------------------------

--
-- Table structure for table `partners`
--

CREATE TABLE `partners` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `partners`
--

INSERT INTO `partners` (`id`, `image`, `created_at`, `updated_at`) VALUES
(1, '1596955411.jpg', '2020-07-23 04:46:59', '2020-08-09 00:43:32'),
(2, '1596955422.jpg', '2020-07-24 03:25:40', '2020-08-09 00:43:42'),
(3, '1596955432.jpg', '2020-07-24 03:25:49', '2020-08-09 00:43:52'),
(4, '1596955442.jpg', '2020-07-24 03:25:58', '2020-08-09 00:44:02'),
(5, '1596955452.jpg', '2020-07-24 03:28:14', '2020-08-09 00:44:12');

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
-- Table structure for table `sections`
--

CREATE TABLE `sections` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `text` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sections`
--

INSERT INTO `sections` (`id`, `title`, `image`, `text`, `created_at`, `updated_at`) VALUES
(1, 'It is a long established fact', '1566318156.jpg', '<p style="margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;">There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.</p><div><p style="margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;">There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.</p></div><div><br></div>', '2018-10-24 02:15:05', '2019-08-20 10:22:36'),
(3, 'There are many variations', '1540369086.jpg', 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.', '2018-10-24 02:18:06', '2018-10-24 02:18:06'),
(4, 'Contrary to popular belief', '1566317823.jpg', 'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of "de Finibus Bonorum et Malorum" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, "Lorem ipsum dolor sit amet..", comes from a line in section 1.10.32.\r\n\r\nContrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of "de Finibus Bonorum et Malorum" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, "Lorem ipsum dolor sit amet..", comes from a line in section 1.10.32.', '2018-10-24 02:25:41', '2019-08-20 10:17:04');

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

CREATE TABLE `services` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(256) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `services`
--

INSERT INTO `services` (`id`, `image`, `title`, `description`, `created_at`, `updated_at`) VALUES
(1, '1596955740.jpg', 'Mechanical Engineering', 'It appears garment manufacturers are at last breathing a sigh of relief as work orders for apparel items from international retailers are coming back with the reopening of their stores in the European and American markets.\r\n\r\nThe signs of recovery for the garment sector are also evident in the export figures of July when Bangladesh earned $3.24 billion from apparel shipment though the amount is 1.98 per cent lower than a year earlier.\r\n\r\nHowever, garment export receipts in July are 14.18 per cent higher than the monthly target of $2.84 billion.\r\n\r\nOf the total garment shipment, knitwear exports grew 4.30 per cent year-on-year to $1.75 billion while woven exports fell 8.43 per cent to $1.49 billion, according to data from the Export Promotion Bureau.\r\n\r\nEarnings from apparel shipment in April, May and June stood at $0.37 billion, $1.23 billion and $2.28 billion respectively.', '2020-07-23 00:54:20', '2020-08-09 00:49:00'),
(2, '1596955751.jpg', 'Pharmaceutical Research', 'It appears garment manufacturers are at last breathing a sigh of relief as work orders for apparel items from international retailers are coming back with the reopening of their stores in the European and American markets.\r\n\r\nThe signs of recovery for the garment sector are also evident in the export figures of July when Bangladesh earned $3.24 billion from apparel shipment though the amount is 1.98 per cent lower than a year earlier.\r\n\r\nHowever, garment export receipts in July are 14.18 per cent higher than the monthly target of $2.84 billion.\r\n\r\nOf the total garment shipment, knitwear exports grew 4.30 per cent year-on-year to $1.75 billion while woven exports fell 8.43 per cent to $1.49 billion, according to data from the Export Promotion Bureau.\r\n\r\nEarnings from apparel shipment in April, May and June stood at $0.37 billion, $1.23 billion and $2.28 billion respectively.', '2020-07-24 01:37:53', '2020-08-09 00:49:11'),
(3, '1596955761.jpg', 'Asbestos Remediation', 'It appears garment manufacturers are at last breathing a sigh of relief as work orders for apparel items from international retailers are coming back with the reopening of their stores in the European and American markets.\r\n\r\nThe signs of recovery for the garment sector are also evident in the export figures of July when Bangladesh earned $3.24 billion from apparel shipment though the amount is 1.98 per cent lower than a year earlier.\r\n\r\nHowever, garment export receipts in July are 14.18 per cent higher than the monthly target of $2.84 billion.\r\n\r\nOf the total garment shipment, knitwear exports grew 4.30 per cent year-on-year to $1.75 billion while woven exports fell 8.43 per cent to $1.49 billion, according to data from the Export Promotion Bureau.\r\n\r\nEarnings from apparel shipment in April, May and June stood at $0.37 billion, $1.23 billion and $2.28 billion respectively.', '2020-07-24 01:38:13', '2020-08-09 00:49:21'),
(4, '1596955773.jpg', 'Petroleum and Gas', 'It appears garment manufacturers are at last breathing a sigh of relief as work orders for apparel items from international retailers are coming back with the reopening of their stores in the European and American markets.\r\n\r\nThe signs of recovery for the garment sector are also evident in the export figures of July when Bangladesh earned $3.24 billion from apparel shipment though the amount is 1.98 per cent lower than a year earlier.\r\n\r\nHowever, garment export receipts in July are 14.18 per cent higher than the monthly target of $2.84 billion.\r\n\r\nOf the total garment shipment, knitwear exports grew 4.30 per cent year-on-year to $1.75 billion while woven exports fell 8.43 per cent to $1.49 billion, according to data from the Export Promotion Bureau.\r\n\r\nEarnings from apparel shipment in April, May and June stood at $0.37 billion, $1.23 billion and $2.28 billion respectively.', '2020-07-24 01:38:36', '2020-08-09 00:49:33'),
(5, '1596955785.jpg', 'Industrial Cleaning Services', 'It appears garment manufacturers are at last breathing a sigh of relief as work orders for apparel items from international retailers are coming back with the reopening of their stores in the European and American markets.\r\n\r\nThe signs of recovery for the garment sector are also evident in the export figures of July when Bangladesh earned $3.24 billion from apparel shipment though the amount is 1.98 per cent lower than a year earlier.\r\n\r\nHowever, garment export receipts in July are 14.18 per cent higher than the monthly target of $2.84 billion.\r\n\r\nOf the total garment shipment, knitwear exports grew 4.30 per cent year-on-year to $1.75 billion while woven exports fell 8.43 per cent to $1.49 billion, according to data from the Export Promotion Bureau.\r\n\r\nEarnings from apparel shipment in April, May and June stood at $0.37 billion, $1.23 billion and $2.28 billion respectively.', '2020-07-24 01:39:04', '2020-08-09 00:49:45'),
(6, '1596955802.jpg', 'Painting and Protective', 'It appears garment manufacturers are at last breathing a sigh of relief as work orders for apparel items from international retailers are coming back with the reopening of their stores in the European and American markets.\r\n\r\nThe signs of recovery for the garment sector are also evident in the export figures of July when Bangladesh earned $3.24 billion from apparel shipment though the amount is 1.98 per cent lower than a year earlier.\r\n\r\nHowever, garment export receipts in July are 14.18 per cent higher than the monthly target of $2.84 billion.\r\n\r\nOf the total garment shipment, knitwear exports grew 4.30 per cent year-on-year to $1.75 billion while woven exports fell 8.43 per cent to $1.49 billion, according to data from the Export Promotion Bureau.\r\n\r\nEarnings from apparel shipment in April, May and June stood at $0.37 billion, $1.23 billion and $2.28 billion respectively.', '2020-07-24 01:39:32', '2020-08-09 00:50:02');

-- --------------------------------------------------------

--
-- Table structure for table `sliders`
--

CREATE TABLE `sliders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `header` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(256) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sliders`
--

INSERT INTO `sliders` (`id`, `image`, `header`, `title`, `created_at`, `updated_at`) VALUES
(1, '1597217171.jpg', 'Welcome', 'We are the best industrial company in the world', '2020-07-23 00:38:29', '2020-08-12 01:26:15'),
(2, '1600156097.jpg', 'Welcome', 'We are the best industrial company in the world', '2020-07-24 01:20:46', '2020-09-15 01:48:21');

-- --------------------------------------------------------

--
-- Table structure for table `socials`
--

CREATE TABLE `socials` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `socials`
--

INSERT INTO `socials` (`id`, `icon`, `url`, `created_at`, `updated_at`) VALUES
(1, 'facebook', 'https://www.facebook.com', '2020-07-23 09:08:43', '2020-07-24 03:41:33'),
(2, 'twitter', 'https://www.twitter.com', '2020-07-24 03:40:21', '2020-07-24 03:40:21'),
(3, 'instagram', 'https://www.instagram.com', '2020-07-24 03:40:44', '2020-07-24 03:40:44'),
(4, 'linkedin', 'https://bd.linkedin.com/', '2020-08-27 05:30:00', '2020-08-27 05:31:51');

-- --------------------------------------------------------

--
-- Table structure for table `sponsers`
--

CREATE TABLE `sponsers` (
  `id` int(10) UNSIGNED NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sponsers`
--

INSERT INTO `sponsers` (`id`, `image`, `created_at`, `updated_at`) VALUES
(2, '1540367147.png', '2018-10-24 01:34:25', '2018-10-24 01:45:47'),
(3, '1540367140.png', '2018-10-24 01:35:33', '2018-10-24 01:45:40'),
(4, '1540367124.png', '2018-10-24 01:35:45', '2018-10-24 01:45:24'),
(5, '1540367115.png', '2018-10-24 01:35:57', '2018-10-24 01:45:15');

-- --------------------------------------------------------

--
-- Table structure for table `subscribers`
--

CREATE TABLE `subscribers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `subscribers`
--

INSERT INTO `subscribers` (`id`, `email`, `created_at`, `updated_at`) VALUES
(1, 'admin@admin.com', NULL, NULL),
(2, 'subroo.f2119@gmail.com', '2020-07-27 08:04:02', '2020-07-27 08:04:02'),
(3, 'admin@min.com', '2020-07-27 08:06:27', '2020-07-27 08:06:27'),
(4, 'suboo.f2119@gmail.com', '2020-07-31 03:09:56', '2020-07-31 03:09:56');

-- --------------------------------------------------------

--
-- Table structure for table `sub_menus`
--

CREATE TABLE `sub_menus` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `menu_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(256) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sub_menus`
--

INSERT INTO `sub_menus` (`id`, `menu_id`, `name`, `title`, `image`, `description`, `created_at`, `updated_at`) VALUES
(1, 1, 'Services 1', 'Services 1', '1596956021.jpg', 'It appears garment manufacturers are at last breathing a sigh of relief as work orders for apparel items from international retailers are coming back with the reopening of their stores in the European and American markets.\r\n\r\nThe signs of recovery for the garment sector are also evident in the export figures of July when Bangladesh earned $3.24 billion from apparel shipment though the amount is 1.98 per cent lower than a year earlier.\r\n\r\nHowever, garment export receipts in July are 14.18 per cent higher than the monthly target of $2.84 billion.\r\n\r\nOf the total garment shipment, knitwear exports grew 4.30 per cent year-on-year to $1.75 billion while woven exports fell 8.43 per cent to $1.49 billion, according to data from the Export Promotion Bureau.\r\n\r\nEarnings from apparel shipment in April, May and June stood at $0.37 billion, $1.23 billion and $2.28 billion respectively.', NULL, NULL),
(2, 2, 'Work 1', 'Work 1', '1596956032.jpg', 'It appears garment manufacturers are at last breathing a sigh of relief as work orders for apparel items from international retailers are coming back with the reopening of their stores in the European and American markets.\r\n\r\nThe signs of recovery for the garment sector are also evident in the export figures of July when Bangladesh earned $3.24 billion from apparel shipment though the amount is 1.98 per cent lower than a year earlier.\r\n\r\nHowever, garment export receipts in July are 14.18 per cent higher than the monthly target of $2.84 billion.\r\n\r\nOf the total garment shipment, knitwear exports grew 4.30 per cent year-on-year to $1.75 billion while woven exports fell 8.43 per cent to $1.49 billion, according to data from the Export Promotion Bureau.\r\n\r\nEarnings from apparel shipment in April, May and June stood at $0.37 billion, $1.23 billion and $2.28 billion respectively.', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `teams`
--

CREATE TABLE `teams` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `designation` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `teams`
--

INSERT INTO `teams` (`id`, `name`, `designation`, `image`, `created_at`, `updated_at`) VALUES
(1, 'The standard chunk of Lorem', 'The standard chunk of Lorem Ipsum', '1540295499.jpg', '2018-10-06 05:57:47', '2019-08-16 12:54:24'),
(2, 'Contrary to popular belief, Lorem Ipsum is not simply random text', 'The standard chunk of Lorem Ipsum', '1540295472.jpg', '2018-10-06 06:12:02', '2019-08-16 12:54:35'),
(5, 'It is a long established fact that a reader', 'The standard chunk of Lorem Ipsum', '1540295444.jpg', '2018-10-06 06:43:45', '2019-08-16 12:54:42'),
(6, 'There are many variations', 'The standard chunk of Lorem Ipsum', '1540295140.jpg', '2018-10-23 05:45:40', '2019-08-16 12:54:50');

-- --------------------------------------------------------

--
-- Table structure for table `testimonials`
--

CREATE TABLE `testimonials` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `designation` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `testimonials`
--

INSERT INTO `testimonials` (`id`, `image`, `name`, `designation`, `description`, `created_at`, `updated_at`) VALUES
(1, '1597822469.jpg', 'Amelia', 'CEO', 'It appears garment manufacturers are at last breathing a sigh of relief as work orders for apparel items from international retailers are coming back with the reopening of their stores in the European and American markets.', '2020-07-23 04:24:19', '2020-08-19 01:35:09'),
(2, '1597822056.jpg', 'Jack', 'Developer', 'It appears garment manufacturers are at last breathing a sigh of relief as work orders for apparel items from international retailers are coming back with the reopening of their stores in the European and American markets.', '2020-07-24 01:53:53', '2020-08-19 01:35:20');

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

-- --------------------------------------------------------

--
-- Table structure for table `works`
--

CREATE TABLE `works` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(256) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `works`
--

INSERT INTO `works` (`id`, `image`, `title`, `description`, `created_at`, `updated_at`) VALUES
(1, '1596956431.jpg', 'Business Insights', 'It appears garment manufacturers are at last breathing a sigh of relief as work orders for apparel items from', '2020-07-23 00:48:46', '2020-08-25 10:37:36'),
(2, '1596956445.jpg', 'Market Reacherch', 'It appears garment manufacturers are at last breathing a sigh of relief as work orders for apparel items from.', '2020-07-24 01:26:02', '2020-08-09 01:00:45'),
(3, '1596956459.jpg', 'Thought leadership', 'It appears garment manufacturers are at last breathing a sigh of relief as work orders for apparel items from', '2020-07-24 01:26:24', '2020-08-09 01:00:59');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admins_email_unique` (`email`);

--
-- Indexes for table `admin_password_resets`
--
ALTER TABLE `admin_password_resets`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `token` (`token`);

--
-- Indexes for table `basic_settings`
--
ALTER TABLE `basic_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blogs`
--
ALTER TABLE `blogs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `companies`
--
ALTER TABLE `companies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `counters`
--
ALTER TABLE `counters`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `features`
--
ALTER TABLE `features`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `generals`
--
ALTER TABLE `generals`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `generals_contact_email_unique` (`contact_email`);

--
-- Indexes for table `how_it_works`
--
ALTER TABLE `how_it_works`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `partners`
--
ALTER TABLE `partners`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `sections`
--
ALTER TABLE `sections`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sliders`
--
ALTER TABLE `sliders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `socials`
--
ALTER TABLE `socials`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sponsers`
--
ALTER TABLE `sponsers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subscribers`
--
ALTER TABLE `subscribers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `subscribers_email_unique` (`email`);

--
-- Indexes for table `sub_menus`
--
ALTER TABLE `sub_menus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `testimonials`
--
ALTER TABLE `testimonials`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `works`
--
ALTER TABLE `works`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `blogs`
--
ALTER TABLE `blogs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `companies`
--
ALTER TABLE `companies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `counters`
--
ALTER TABLE `counters`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `features`
--
ALTER TABLE `features`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `generals`
--
ALTER TABLE `generals`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `menus`
--
ALTER TABLE `menus`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;
--
-- AUTO_INCREMENT for table `partners`
--
ALTER TABLE `partners`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `services`
--
ALTER TABLE `services`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `sliders`
--
ALTER TABLE `sliders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `socials`
--
ALTER TABLE `socials`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `subscribers`
--
ALTER TABLE `subscribers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `sub_menus`
--
ALTER TABLE `sub_menus`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `testimonials`
--
ALTER TABLE `testimonials`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `works`
--
ALTER TABLE `works`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
