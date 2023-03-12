-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 12, 2023 at 12:59 AM
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
-- Database: `dbapelin`
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
-- Table structure for table `log_activities`
--

CREATE TABLE `log_activities` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `ip` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subject` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `method` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `agent` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `log_activities`
--

INSERT INTO `log_activities` (`id`, `user_id`, `ip`, `subject`, `method`, `url`, `agent`, `created_at`, `updated_at`) VALUES
(1, 1, '127.0.0.1', 'berhasil menambahkan Paket', 'POST', 'http://localhost:8000/paket', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', '2023-03-06 05:54:41', '2023-03-06 05:54:41'),
(2, 1, '127.0.0.1', 'berhasil mengubah paket', 'PUT', 'http://localhost:8000/paket/1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', '2023-03-06 05:55:19', '2023-03-06 05:55:19'),
(3, 1, '127.0.0.1', 'berhasil melakukan transaksi', 'POST', 'http://localhost:8000/transaksi/member/1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', '2023-03-06 05:57:01', '2023-03-06 05:57:01'),
(4, 1, '127.0.0.1', 'berhasil Logout', 'POST', 'http://localhost:8000/logout', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', '2023-03-06 05:57:25', '2023-03-06 05:57:25'),
(5, 1, '127.0.0.1', 'berhasil Login', 'POST', 'http://localhost:8000/login', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', '2023-03-06 06:44:00', '2023-03-06 06:44:00'),
(6, 1, '127.0.0.1', 'berhasil mengubah paket', 'PUT', 'http://localhost:8000/paket/1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', '2023-03-06 06:52:17', '2023-03-06 06:52:17'),
(7, 1, '127.0.0.1', 'berhasil menambahkan Paket', 'POST', 'http://localhost:8000/paket', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', '2023-03-06 06:59:05', '2023-03-06 06:59:05'),
(8, 1, '127.0.0.1', 'berhasil melakukan transaksi', 'POST', 'http://localhost:8000/transaksi/member/1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', '2023-03-06 07:01:43', '2023-03-06 07:01:43'),
(9, 1, '127.0.0.1', 'berhasil mengupdate transaksi', 'PUT', 'http://localhost:8000/transaksi/2', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', '2023-03-06 07:01:52', '2023-03-06 07:01:52'),
(10, 1, '127.0.0.1', 'berhasil mengubah paket', 'PUT', 'http://localhost:8000/paket/2', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', '2023-03-06 07:15:22', '2023-03-06 07:15:22'),
(11, 1, '127.0.0.1', 'berhasil menghapus Paket', 'DELETE', 'http://localhost:8000/paket/1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', '2023-03-06 07:24:28', '2023-03-06 07:24:28'),
(12, 1, '127.0.0.1', 'berhasil menghapus Paket', 'DELETE', 'http://localhost:8000/paket/2', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', '2023-03-06 07:24:34', '2023-03-06 07:24:34'),
(13, 1, '127.0.0.1', 'berhasil menambahkan Paket', 'POST', 'http://localhost:8000/paket', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', '2023-03-06 07:24:53', '2023-03-06 07:24:53'),
(14, 1, '127.0.0.1', 'berhasil melakukan transaksi', 'POST', 'http://localhost:8000/transaksi/member/1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', '2023-03-06 07:26:52', '2023-03-06 07:26:52'),
(15, 1, '127.0.0.1', 'berhasil melakukan transaksi', 'POST', 'http://localhost:8000/transaksi/member/2', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', '2023-03-06 07:30:23', '2023-03-06 07:30:23'),
(16, 1, '127.0.0.1', 'berhasil Logout', 'POST', 'http://localhost:8000/logout', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', '2023-03-06 07:42:20', '2023-03-06 07:42:20'),
(17, 1, '127.0.0.1', 'berhasil Login', 'POST', 'http://localhost:8000/login', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', '2023-03-07 01:09:40', '2023-03-07 01:09:40'),
(18, 1, '127.0.0.1', 'berhasil melakukan transaksi', 'POST', 'http://localhost:8000/transaksi/member/1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', '2023-03-07 01:13:50', '2023-03-07 01:13:50'),
(19, 1, '127.0.0.1', 'berhasil Logout', 'POST', 'http://localhost:8000/logout', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', '2023-03-07 01:15:37', '2023-03-07 01:15:37');

-- --------------------------------------------------------

--
-- Table structure for table `members`
--

CREATE TABLE `members` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jenis_kelamin` enum('L','P') COLLATE utf8mb4_unicode_ci NOT NULL,
  `alamat` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `tlp` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `members`
--

INSERT INTO `members` (`id`, `nama`, `jenis_kelamin`, `alamat`, `tlp`) VALUES
(1, 'Jiso', 'P', 'Padaherang', '888222999333'),
(2, 'Lalisa', 'P', 'Karangsari', '888111999777');

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
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2023_02_03_185218_create_outlets_table', 1),
(6, '2023_02_03_185554_add_outlet_id_to_users_table', 1),
(7, '2023_02_04_123937_create_pakets_table', 1),
(8, '2023_02_06_084938_create_members_table', 1),
(9, '2023_02_06_100422_create_transaksis_table', 1),
(10, '2023_02_06_100522_create_transaksi_details_table', 1),
(11, '2023_02_08_123911_create_log_activities_table', 1),
(12, '2023_03_06_102329_add_diskon_and_harga_akhir_to_paket', 1),
(13, '2023_03_06_105215_add_diskon_paket_to_transaksi_details_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `outlets`
--

CREATE TABLE `outlets` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alamat` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `tlp` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `outlets`
--

INSERT INTO `outlets` (`id`, `nama`, `alamat`, `tlp`) VALUES
(1, 'Toko Dati Laundry', 'Padaherang', '858907834522'),
(2, 'Dati Laundry-2', 'Pangandaran', '897867451001');

-- --------------------------------------------------------

--
-- Table structure for table `pakets`
--

CREATE TABLE `pakets` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `outlet_id` bigint(20) UNSIGNED NOT NULL,
  `nama_paket` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jenis` enum('kiloan','selimut','bed_cover','kaos','lain') COLLATE utf8mb4_unicode_ci NOT NULL,
  `diskon` int(11) DEFAULT NULL,
  `harga` int(11) NOT NULL,
  `harga_akhir` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pakets`
--

INSERT INTO `pakets` (`id`, `outlet_id`, `nama_paket`, `jenis`, `diskon`, `harga`, `harga_akhir`) VALUES
(3, 1, 'Express one day', 'kiloan', 5000, 25000, 20000),
(4, 1, 'Express (6 jam)', 'kiloan', 2500, 35000, 32500),
(5, 1, 'Regular (2 Hari)', 'kiloan', NULL, 15000, 15000);

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

-- --------------------------------------------------------

--
-- Table structure for table `transaksis`
--

CREATE TABLE `transaksis` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `outlet_id` bigint(20) UNSIGNED NOT NULL,
  `member_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `kode_invoice` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tgl` datetime NOT NULL,
  `batas_waktu` datetime NOT NULL,
  `tgl_bayar` datetime DEFAULT NULL,
  `biaya_tambahan` int(11) DEFAULT NULL,
  `diskon` int(11) DEFAULT NULL,
  `pajak` int(11) NOT NULL,
  `sub_total` int(11) NOT NULL,
  `qty_total` int(11) NOT NULL,
  `total_bayar` int(11) NOT NULL,
  `cash` int(11) DEFAULT NULL,
  `kembalian` int(11) DEFAULT NULL,
  `status` enum('baru','proses','selesai','diambil') COLLATE utf8mb4_unicode_ci NOT NULL,
  `dibayar` enum('dibayar','belum_bayar') COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `transaksis`
--

INSERT INTO `transaksis` (`id`, `outlet_id`, `member_id`, `user_id`, `kode_invoice`, `tgl`, `batas_waktu`, `tgl_bayar`, `biaya_tambahan`, `diskon`, `pajak`, `sub_total`, `qty_total`, `total_bayar`, `cash`, `kembalian`, `status`, `dibayar`) VALUES
(1, 1, 1, 1, '202303060001', '2023-03-06 12:57:01', '2023-03-07 12:56:00', '2023-03-06 12:57:01', NULL, NULL, 1000, 10000, 2, 11000, 15000, 4000, 'selesai', 'dibayar'),
(2, 1, 1, 1, '202303060002', '2023-03-06 14:01:43', '2023-03-08 14:01:00', '2023-03-06 14:01:52', NULL, NULL, 1300, 13000, 2, 14300, 15000, 700, 'baru', 'dibayar'),
(3, 1, 1, 1, '202303060003', '2023-03-06 14:26:52', '2023-03-09 14:26:00', '2023-03-06 14:26:52', NULL, NULL, 1500, 15000, 1, 16500, 20000, 3500, 'proses', 'dibayar'),
(4, 1, 2, 1, '202303060004', '2023-03-06 14:30:23', '2023-03-07 14:30:00', '2023-03-06 14:30:23', NULL, NULL, 6500, 65000, 2, 71500, 100000, 28500, 'proses', 'dibayar'),
(5, 1, 1, 1, '202303070005', '2023-03-07 08:13:50', '2023-03-09 08:13:00', '2023-03-07 08:13:50', NULL, NULL, 4000, 40000, 2, 44000, 50000, 6000, 'proses', 'dibayar');

-- --------------------------------------------------------

--
-- Table structure for table `transaksi_details`
--

CREATE TABLE `transaksi_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `transaksi_id` bigint(20) UNSIGNED NOT NULL,
  `paket_id` bigint(20) UNSIGNED NOT NULL,
  `harga` int(11) NOT NULL,
  `diskon_paket` int(11) DEFAULT NULL,
  `qty` int(11) NOT NULL,
  `sub_total` int(11) NOT NULL,
  `keterangan` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `transaksi_details`
--

INSERT INTO `transaksi_details` (`id`, `transaksi_id`, `paket_id`, `harga`, `diskon_paket`, `qty`, `sub_total`, `keterangan`) VALUES
(3, 3, 5, 15000, NULL, 1, 15000, 'cela'),
(4, 4, 4, 35000, 2500, 2, 65000, 'baju2 3 celana'),
(5, 5, 3, 25000, 5000, 2, 40000, 'one set');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role` enum('admin','kasir','owner') COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `outlet_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `nama`, `username`, `password`, `role`, `remember_token`, `created_at`, `updated_at`, `outlet_id`) VALUES
(1, 'Administrator', 'admin', '$2y$10$h2FkBqrJ6Q2dZsWvAU4e2.bf1mcrsWGdIXVCV17J8KOuV0sEZJbmG', 'admin', NULL, NULL, NULL, 1),
(2, 'Kasir', 'kasir', '$2y$10$kOf4KTLBGhJavRRPyQ5dTut5mbLG8FIEi65FUIGesTSnoWe/SKJte', 'kasir', NULL, NULL, NULL, 1),
(3, 'Pemilik', 'owner', '$2y$10$l2mVHFHaglXAVGph5qLNNeDyWwY/pyAtgyEeMzhwXGMLtBQpJFNA6', 'owner', NULL, NULL, NULL, 1);

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
-- Indexes for table `log_activities`
--
ALTER TABLE `log_activities`
  ADD PRIMARY KEY (`id`),
  ADD KEY `log_activities_user_id_foreign` (`user_id`);

--
-- Indexes for table `members`
--
ALTER TABLE `members`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `outlets`
--
ALTER TABLE `outlets`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pakets`
--
ALTER TABLE `pakets`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pakets_outlet_id_foreign` (`outlet_id`);

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
-- Indexes for table `transaksis`
--
ALTER TABLE `transaksis`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `transaksis_kode_invoice_unique` (`kode_invoice`),
  ADD KEY `transaksis_outlet_id_foreign` (`outlet_id`),
  ADD KEY `transaksis_member_id_foreign` (`member_id`),
  ADD KEY `transaksis_user_id_foreign` (`user_id`);

--
-- Indexes for table `transaksi_details`
--
ALTER TABLE `transaksi_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `transaksi_details_transaksi_id_foreign` (`transaksi_id`),
  ADD KEY `transaksi_details_paket_id_foreign` (`paket_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_username_unique` (`username`),
  ADD KEY `users_outlet_id_foreign` (`outlet_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `log_activities`
--
ALTER TABLE `log_activities`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `members`
--
ALTER TABLE `members`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `outlets`
--
ALTER TABLE `outlets`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `pakets`
--
ALTER TABLE `pakets`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `transaksis`
--
ALTER TABLE `transaksis`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `transaksi_details`
--
ALTER TABLE `transaksi_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `log_activities`
--
ALTER TABLE `log_activities`
  ADD CONSTRAINT `log_activities_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `pakets`
--
ALTER TABLE `pakets`
  ADD CONSTRAINT `pakets_outlet_id_foreign` FOREIGN KEY (`outlet_id`) REFERENCES `outlets` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `transaksis`
--
ALTER TABLE `transaksis`
  ADD CONSTRAINT `transaksis_member_id_foreign` FOREIGN KEY (`member_id`) REFERENCES `members` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `transaksis_outlet_id_foreign` FOREIGN KEY (`outlet_id`) REFERENCES `outlets` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `transaksis_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `transaksi_details`
--
ALTER TABLE `transaksi_details`
  ADD CONSTRAINT `transaksi_details_paket_id_foreign` FOREIGN KEY (`paket_id`) REFERENCES `pakets` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `transaksi_details_transaksi_id_foreign` FOREIGN KEY (`transaksi_id`) REFERENCES `transaksis` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_outlet_id_foreign` FOREIGN KEY (`outlet_id`) REFERENCES `outlets` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
