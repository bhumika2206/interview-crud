-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 09, 2024 at 08:47 AM
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
-- Database: `interview-crud`
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
(4, '2024_08_07_110515_create_teachers_table', 1),
(5, '2024_08_07_110526_create_students_table', 1);

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
('6mhCIVjicCKXAar7igs990CWQ0VNXwA06DcrEPgi', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'YTo1OntzOjY6Il90b2tlbiI7czo0MDoidVk4TUJ1Wk9kWFl6QnExVkE0bVc3TXV1cFlKMlJxRFhOU3Jhc2Q3RiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzY6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hZG1pbi9zdHVkZW50cyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fXM6NTA6ImxvZ2luX3dlYl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjE7czo0OiJhdXRoIjthOjE6e3M6MjE6InBhc3N3b3JkX2NvbmZpcm1lZF9hdCI7aToxNzIzMTgyNTU2O319', 1723184497);

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `student_name` varchar(255) NOT NULL,
  `class_teacher_id` bigint(20) UNSIGNED NOT NULL,
  `class` varchar(255) NOT NULL,
  `admission_date` date NOT NULL,
  `yearly_fees` decimal(8,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`id`, `student_name`, `class_teacher_id`, `class`, `admission_date`, `yearly_fees`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Dr. Lori Heidenreich', 1, 'B', '2015-08-19', 3368.57, '2024-08-07 05:54:23', '2024-08-07 06:15:00', NULL),
(2, 'Pattie Feeney', 1, 'C', '1980-06-05', 2614.62, '2024-08-07 05:54:23', '2024-08-07 05:54:23', NULL),
(3, 'Prof. Toney Murphy Jr.', 1, 'A', '1971-06-21', 3079.48, '2024-08-07 05:54:23', '2024-08-07 05:54:23', NULL),
(4, 'Ms. Lauriane O\'Connell', 1, 'B', '2014-04-22', 1845.89, '2024-08-07 05:54:23', '2024-08-07 05:54:23', NULL),
(5, 'Eileen Robel', 1, 'C', '1974-08-28', 2284.33, '2024-08-07 05:54:23', '2024-08-07 05:54:23', NULL),
(6, 'Terence Littel', 2, 'B', '1991-10-21', 4965.76, '2024-08-07 05:54:23', '2024-08-07 05:54:23', NULL),
(7, 'Mr. Marley Gusikowski', 2, 'B', '2015-11-02', 4406.74, '2024-08-07 05:54:23', '2024-08-07 05:54:23', NULL),
(8, 'Miss Amie Stokes', 2, 'A', '1996-04-16', 4641.89, '2024-08-07 05:54:23', '2024-08-07 05:54:23', NULL),
(9, 'Dr. Richard Ebert III', 2, 'A', '1981-06-18', 1445.30, '2024-08-07 05:54:23', '2024-08-07 05:54:23', NULL),
(10, 'Herbert White', 2, 'A', '2007-08-11', 3455.74, '2024-08-07 05:54:23', '2024-08-07 05:54:23', NULL),
(11, 'Kaylie Considine', 3, 'B', '1985-12-24', 3014.74, '2024-08-07 05:54:23', '2024-08-07 05:54:23', NULL),
(12, 'Dr. Grover Leannon II', 3, 'C', '1989-05-12', 1430.46, '2024-08-07 05:54:23', '2024-08-07 05:54:23', NULL),
(13, 'Leann Cruickshank V', 3, 'B', '1993-02-04', 1750.68, '2024-08-07 05:54:23', '2024-08-07 05:54:23', NULL),
(14, 'Dr. Demario Barrows DVM', 3, 'A', '2023-11-20', 1999.03, '2024-08-07 05:54:23', '2024-08-07 05:54:23', NULL),
(15, 'Ms. Sonya Rau DVM', 3, 'C', '2000-07-16', 3227.25, '2024-08-07 05:54:23', '2024-08-07 05:54:23', NULL),
(16, 'Elizabeth Bradtke', 4, 'B', '2011-06-03', 4383.32, '2024-08-07 05:54:23', '2024-08-07 05:54:23', NULL),
(17, 'General Monahan', 4, 'A', '1995-02-05', 4327.12, '2024-08-07 05:54:23', '2024-08-07 05:54:23', NULL),
(18, 'Ms. Mozelle Dicki', 4, 'A', '1986-07-29', 4181.28, '2024-08-07 05:54:23', '2024-08-07 05:54:23', NULL),
(19, 'Brett Kuhic', 4, 'B', '1980-08-31', 4856.32, '2024-08-07 05:54:23', '2024-08-07 05:54:23', NULL),
(20, 'Aleen Johnston', 4, 'C', '1992-04-25', 2741.08, '2024-08-07 05:54:23', '2024-08-07 05:54:23', NULL),
(21, 'Kurtis Waters', 5, 'C', '1993-02-08', 4946.62, '2024-08-07 05:54:23', '2024-08-07 05:54:23', NULL),
(22, 'Mrs. Kaitlin Daugherty II', 5, 'B', '1983-10-10', 4715.06, '2024-08-07 05:54:23', '2024-08-07 05:54:23', NULL),
(23, 'Ada Herzog V', 5, 'B', '2017-07-15', 2437.43, '2024-08-07 05:54:23', '2024-08-07 05:54:23', NULL),
(24, 'Dr. Delbert Robel', 5, 'A', '1983-04-08', 4835.65, '2024-08-07 05:54:23', '2024-08-07 05:54:23', NULL),
(25, 'Dr. Beryl Ryan DDS', 5, 'C', '2011-09-08', 3344.71, '2024-08-07 05:54:23', '2024-08-07 05:54:23', NULL),
(26, 'Selena Moen', 6, 'A', '2019-07-13', 4545.40, '2024-08-07 05:54:23', '2024-08-07 05:54:23', NULL),
(27, 'Mitchell Cormier', 6, 'B', '1972-06-30', 4274.85, '2024-08-07 05:54:23', '2024-08-07 05:54:23', NULL),
(28, 'Mr. Sherman Bernier V', 6, 'A', '1985-11-21', 2052.10, '2024-08-07 05:54:23', '2024-08-07 05:54:23', NULL),
(29, 'Hillard Williamson', 6, 'C', '2002-05-03', 1089.23, '2024-08-07 05:54:23', '2024-08-07 05:54:23', NULL),
(30, 'Jamir Goldner', 6, 'C', '2023-07-03', 3513.39, '2024-08-07 05:54:23', '2024-08-07 05:54:23', NULL),
(31, 'Thaddeus Barton', 7, 'B', '1999-03-29', 1112.18, '2024-08-07 05:54:23', '2024-08-07 05:54:23', NULL),
(32, 'Kendall Davis', 7, 'A', '1990-06-13', 2651.19, '2024-08-07 05:54:23', '2024-08-07 05:54:23', NULL),
(33, 'Zelda Schuster Sr.', 7, 'A', '1988-08-19', 3906.83, '2024-08-07 05:54:23', '2024-08-07 05:54:23', NULL),
(34, 'Hillard Deckow III', 7, 'B', '2022-02-23', 3495.45, '2024-08-07 05:54:23', '2024-08-07 05:54:23', NULL),
(35, 'Dr. Isaiah Crist', 7, 'A', '1985-07-14', 3730.94, '2024-08-07 05:54:23', '2024-08-07 05:54:23', NULL),
(36, 'Dr. Fred Klocko', 8, 'B', '1987-07-08', 3465.29, '2024-08-07 05:54:23', '2024-08-07 05:54:23', NULL),
(37, 'Alexandrine Upton', 8, 'B', '1979-10-25', 2026.54, '2024-08-07 05:54:23', '2024-08-07 05:54:23', NULL),
(38, 'Suzanne Schamberger', 8, 'A', '2014-10-15', 3226.47, '2024-08-07 05:54:23', '2024-08-07 05:54:23', NULL),
(39, 'Lavada Will', 8, 'A', '2024-01-30', 3843.49, '2024-08-07 05:54:23', '2024-08-07 05:54:23', NULL),
(40, 'Rosendo O\'Keefe', 8, 'C', '2004-04-02', 3974.89, '2024-08-07 05:54:23', '2024-08-07 05:54:23', NULL),
(41, 'Kadin Rau', 9, 'C', '2023-08-18', 1582.96, '2024-08-07 05:54:23', '2024-08-07 05:54:23', NULL),
(42, 'Rubye Stark', 9, 'A', '2018-05-30', 4547.80, '2024-08-07 05:54:23', '2024-08-07 05:54:23', NULL),
(43, 'Lempi Dibbert MD', 9, 'A', '1994-01-30', 1059.10, '2024-08-07 05:54:23', '2024-08-07 05:54:23', NULL),
(44, 'Trevion Cartwright', 9, 'A', '2000-04-02', 4563.91, '2024-08-07 05:54:23', '2024-08-07 05:54:23', NULL),
(45, 'Mrs. Joelle Torphy V', 9, 'B', '1995-11-08', 1205.99, '2024-08-07 05:54:23', '2024-08-07 05:54:23', NULL),
(46, 'Dr. Amparo Runte', 10, 'B', '2011-09-18', 3720.30, '2024-08-07 05:54:23', '2024-08-07 05:54:23', NULL),
(47, 'Kale Dietrich III', 10, 'C', '1983-08-29', 3738.15, '2024-08-07 05:54:23', '2024-08-07 05:54:23', NULL),
(48, 'Lorna Nikolaus', 10, 'A', '1999-12-18', 3980.79, '2024-08-07 05:54:23', '2024-08-07 05:54:23', NULL),
(49, 'Noelia Renner', 10, 'C', '1976-06-26', 1541.14, '2024-08-07 05:54:23', '2024-08-07 05:54:23', NULL),
(50, 'Johanna Fritsch', 10, 'B', '1994-09-14', 1174.13, '2024-08-07 05:54:23', '2024-08-07 05:54:23', NULL),
(51, 'test', 1, 'a', '2024-12-10', 150000.00, '2024-08-07 06:14:14', '2024-08-09 00:30:07', '2024-08-09 00:30:07'),
(52, 'qwqwqwq', 3, 'B', '1360-01-01', 15000.00, '2024-08-09 00:30:40', '2024-08-09 00:31:08', NULL),
(53, 'qwqwqw', 10, 'B', '1223-01-01', 15000.00, '2024-08-09 00:35:46', '2024-08-09 00:45:41', '2024-08-09 00:45:41');

-- --------------------------------------------------------

--
-- Table structure for table `teachers`
--

CREATE TABLE `teachers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `teacher_name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `teachers`
--

INSERT INTO `teachers` (`id`, `teacher_name`, `created_at`, `updated_at`) VALUES
(1, 'Alyson Spencer', '2024-08-07 05:54:23', '2024-08-07 05:54:23'),
(2, 'Alysson Emmerich V', '2024-08-07 05:54:23', '2024-08-07 05:54:23'),
(3, 'Evert Streich', '2024-08-07 05:54:23', '2024-08-07 05:54:23'),
(4, 'Larry Weimann', '2024-08-07 05:54:23', '2024-08-07 05:54:23'),
(5, 'Nasir Koelpin', '2024-08-07 05:54:23', '2024-08-07 05:54:23'),
(6, 'Mr. Eladio Gusikowski', '2024-08-07 05:54:23', '2024-08-07 05:54:23'),
(7, 'Mr. Julius Reichert I', '2024-08-07 05:54:23', '2024-08-07 05:54:23'),
(8, 'Arlene Pfannerstill', '2024-08-07 05:54:23', '2024-08-07 05:54:23'),
(9, 'Kelvin Jones', '2024-08-07 05:54:23', '2024-08-07 05:54:23'),
(10, 'Mr. Gaston Hickle V', '2024-08-07 05:54:23', '2024-08-07 05:54:23');

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
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'admin@gmail.com', NULL, '$2y$12$r0JAc3YmaAmFHJ7KCQHs4.Q7Tqloqvs3roZ1kOl0q6B5U/vxUuiZe', NULL, '2024-08-07 06:04:30', '2024-08-07 06:04:30');

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
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`id`),
  ADD KEY `students_class_teacher_id_foreign` (`class_teacher_id`);

--
-- Indexes for table `teachers`
--
ALTER TABLE `teachers`
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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT for table `teachers`
--
ALTER TABLE `teachers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `students`
--
ALTER TABLE `students`
  ADD CONSTRAINT `students_class_teacher_id_foreign` FOREIGN KEY (`class_teacher_id`) REFERENCES `teachers` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
