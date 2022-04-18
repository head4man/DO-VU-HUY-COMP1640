-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 08, 2021 at 05:16 AM
-- Server version: 10.4.20-MariaDB
-- PHP Version: 8.0.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `comp1640`
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
-- Table structure for table `likes`
--

CREATE TABLE `likes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL COMMENT 'user_id',
  `likeable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `likeable_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `likes`
--

INSERT INTO `likes` (`id`, `user_id`, `likeable_type`, `likeable_id`, `created_at`, `updated_at`) VALUES
(16, 4, 'App\\Models\\Ideas', 6, '2021-10-24 08:43:18', '2021-10-24 08:43:18'),
(24, 1, 'App\\Models\\Ideas', 6, '2021-10-24 09:38:08', '2021-10-24 09:38:08'),
(27, 1, 'App\\Models\\Ideas', 3, '2021-10-24 09:47:08', '2021-10-24 09:47:08'),
(28, 4, 'App\\Models\\Ideas', 3, '2021-10-24 12:54:35', '2021-10-24 12:54:35'),
(29, 4, 'App\\Models\\Ideas', 5, '2021-10-25 02:56:10', '2021-10-25 02:56:10');

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
(3, '2018_12_14_000000_create_likes_table', 1),
(4, '2019_08_19_000000_create_failed_jobs_table', 1),
(5, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(6, '2020_04_04_000000_create_user_follower_table', 1);

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
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `roles_user`
--

CREATE TABLE `roles_user` (
  `id_user_roles` int(10) UNSIGNED NOT NULL,
  `roles_id_roles` int(11) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `roles_user`
--

INSERT INTO `roles_user` (`id_user_roles`, `roles_id_roles`, `user_id`) VALUES
(1, 4, 1),
(2, 3, 3),
(3, 2, 2),
(4, 1, 4);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_category_ideas`
--

CREATE TABLE `tbl_category_ideas` (
  `category_id` int(10) UNSIGNED NOT NULL,
  `category_idea_name` varchar(255) NOT NULL,
  `category_idea_slug` varchar(255) NOT NULL,
  `category_idea_desc` varchar(255) NOT NULL,
  `Topic_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_category_ideas`
--

INSERT INTO `tbl_category_ideas` (`category_id`, `category_idea_name`, `category_idea_slug`, `category_idea_desc`, `Topic_id`) VALUES
(1, 'Information Technology', 'information-technology', '<p>information</p>', 2),
(2, 'Business Management', 'business-management', '<p>bussiness</p>', 2),
(3, 'Event Management', 'event-management', '<p>123</p>', 3),
(4, 'Graphic Design', 'graphic-design', '<p>123</p>', 1),
(5, 'Information Technology test', 'information-technology-test', '<p>alo</p>', 1),
(6, 'Event Management Test', 'event-management-test', '<p>alo</p>', 3);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_comment`
--

CREATE TABLE `tbl_comment` (
  `comment_id` int(11) NOT NULL,
  `comment_user_name` varchar(255) NOT NULL,
  `comment_user_email` varchar(255) NOT NULL,
  `comment_content` text NOT NULL,
  `comment_by` int(11) NOT NULL,
  `idea_id` int(11) NOT NULL,
  `created_comment_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_comment`
--

INSERT INTO `tbl_comment` (`comment_id`, `comment_user_name`, `comment_user_email`, `comment_content`, `comment_by`, `idea_id`, `created_comment_at`, `updated_at`) VALUES
(1, 'user', 'User@gmail.com', 'alo', 0, 6, '2021-10-24 09:41:30', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_ideas`
--

CREATE TABLE `tbl_ideas` (
  `idea_id` int(10) UNSIGNED NOT NULL,
  `idea_article` varchar(255) NOT NULL,
  `idea_slug` varchar(255) NOT NULL,
  `idea_sum` tinytext NOT NULL,
  `idea_desc` text NOT NULL,
  `idea_author` varchar(255) NOT NULL,
  `idea_author_email` varchar(255) NOT NULL,
  `idea_document` varchar(255) NOT NULL,
  `post_as` int(11) NOT NULL,
  `category_id` int(10) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_ideas`
--

INSERT INTO `tbl_ideas` (`idea_id`, `idea_article`, `idea_slug`, `idea_sum`, `idea_desc`, `idea_author`, `idea_author_email`, `idea_document`, `post_as`, `category_id`, `created_at`, `updated_at`) VALUES
(1, 'Test0', 'test0', '<p>123</p>', '<p>123</p>', 'Trung', 'Admin@gmail.com', '', 0, 4, '2021-10-24 08:28:39', NULL),
(2, 'Test 1', 'test-1', '<p>abc</p>', '<p>abc</p>', 'Tan', 'Admin@gmail.com', '', 1, 3, '2021-10-24 08:29:01', NULL),
(3, 'Test 3', 'test-3', '<p>12345</p>', '<p>1234</p>', 'Tan', 'Admin@gmail.com', '', 0, 2, '2021-10-24 08:29:22', NULL),
(4, 'Test 4', 'test-4', '<p>123456a</p>', '<p>1234ad</p>', 'Trung', 'Admin@gmail.com', '', 1, 1, '2021-10-24 08:29:46', NULL),
(5, 'test 10', 'test-10', '<p>123123</p>', '<p>123123</p>', 'Trung', 'Admin@gmail.com', '', 0, 4, '2021-10-24 08:30:04', NULL),
(6, 'test paginate', 'test-paginate', '<p>123123</p>', '<p>123123123</p>', 'Trung', 'Admin@gmail.com', '', 1, 4, '2021-10-24 08:30:41', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_roles`
--

CREATE TABLE `tbl_roles` (
  `id_roles` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_roles`
--

INSERT INTO `tbl_roles` (`id_roles`, `name`) VALUES
(1, 'admin'),
(2, 'QA manager'),
(3, 'QA'),
(4, 'users');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_topic`
--

CREATE TABLE `tbl_topic` (
  `topic_id` int(11) NOT NULL,
  `topic_name` varchar(255) NOT NULL,
  `topic_slug` varchar(255) NOT NULL,
  `due_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_topic`
--

INSERT INTO `tbl_topic` (`topic_id`, `topic_name`, `topic_slug`, `due_date`) VALUES
(1, 'A', 'a', '2021-10-30 00:00:00'),
(2, 'B', 'b', '2021-10-01 00:00:00'),
(3, 'C', 'c', '2021-10-31 00:00:00');

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
(1, 'user', 'User@gmail.com', NULL, '202cb962ac59075b964b07152d234b70', NULL, NULL, NULL),
(2, 'QA manager', 'QAMana@gmail.com', NULL, '202cb962ac59075b964b07152d234b70', NULL, NULL, NULL),
(3, 'QA', 'QA@gmail.com', NULL, '202cb962ac59075b964b07152d234b70', NULL, NULL, NULL),
(4, 'Admin', 'Admin@gmail.com', NULL, '202cb962ac59075b964b07152d234b70', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `user_follower`
--

CREATE TABLE `user_follower` (
  `id` int(10) UNSIGNED NOT NULL,
  `following_id` bigint(20) UNSIGNED NOT NULL,
  `follower_id` bigint(20) UNSIGNED NOT NULL,
  `accepted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
-- Indexes for table `likes`
--
ALTER TABLE `likes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `likes_likeable_type_likeable_id_index` (`likeable_type`,`likeable_id`),
  ADD KEY `likes_user_id_index` (`user_id`);

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
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `roles_user`
--
ALTER TABLE `roles_user`
  ADD PRIMARY KEY (`id_user_roles`);

--
-- Indexes for table `tbl_category_ideas`
--
ALTER TABLE `tbl_category_ideas`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `tbl_comment`
--
ALTER TABLE `tbl_comment`
  ADD PRIMARY KEY (`comment_id`);

--
-- Indexes for table `tbl_ideas`
--
ALTER TABLE `tbl_ideas`
  ADD PRIMARY KEY (`idea_id`);

--
-- Indexes for table `tbl_roles`
--
ALTER TABLE `tbl_roles`
  ADD PRIMARY KEY (`id_roles`);

--
-- Indexes for table `tbl_topic`
--
ALTER TABLE `tbl_topic`
  ADD PRIMARY KEY (`topic_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `user_follower`
--
ALTER TABLE `user_follower`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_follower_following_id_index` (`following_id`),
  ADD KEY `user_follower_follower_id_index` (`follower_id`),
  ADD KEY `user_follower_accepted_at_index` (`accepted_at`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `likes`
--
ALTER TABLE `likes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `roles_user`
--
ALTER TABLE `roles_user`
  MODIFY `id_user_roles` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tbl_category_ideas`
--
ALTER TABLE `tbl_category_ideas`
  MODIFY `category_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tbl_comment`
--
ALTER TABLE `tbl_comment`
  MODIFY `comment_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_ideas`
--
ALTER TABLE `tbl_ideas`
  MODIFY `idea_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tbl_roles`
--
ALTER TABLE `tbl_roles`
  MODIFY `id_roles` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tbl_topic`
--
ALTER TABLE `tbl_topic`
  MODIFY `topic_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `user_follower`
--
ALTER TABLE `user_follower`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
