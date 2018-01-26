-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Dec 01, 2017 at 04:41 PM
-- Server version: 10.1.10-MariaDB
-- PHP Version: 7.0.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tkipedia`
--

-- --------------------------------------------------------

--
-- Table structure for table `artikel`
--

CREATE TABLE `artikel` (
  `id` int(11) NOT NULL,
  `title` varchar(150) NOT NULL,
  `description` text NOT NULL,
  `tanggal` date NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `view` int(200) NOT NULL,
  `user` varchar(200) NOT NULL,
  `picture` varchar(150) DEFAULT NULL,
  `file1` varchar(150) DEFAULT NULL,
  `file2` varchar(150) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `artikel`
--

INSERT INTO `artikel` (`id`, `title`, `description`, `tanggal`, `created_at`, `updated_at`, `view`, `user`, `picture`, `file1`, `file2`) VALUES
(15, 'tampan', 'dfsfsdfsd', '1996-04-04', '2017-12-01 09:50:34', '2017-12-01 14:36:39', 8, 'asdsa', '/upload/images/1.jpg', '/upload/file/42962_RENCANA PEMBIAYAAN (1).xlsx', '/upload/file/BMC_Institut Pertanian Bogor_O5-Squad_JembatanBudaya (2).pdf'),
(16, 'hendrik', '<p><strong>asdsadasdsadas&nbsp; <s>sdasdasdasdasdasdasd</s></strong></p>\r\n', '2017-12-01', '2017-12-01 10:05:26', '2017-12-01 12:59:50', 3, 'hendrik', '/upload/images/DSC_0005_4x6.JPG', '/upload/file/Daftar Ulang, Wisuda Tahap III 1718.pdf', '/upload/file/draft pidato KEB.docx'),
(17, 'khaidir afif', '<p>sfasdfasdfsd<s>asdfasdfadsfasdfasd</s></p>\r\n', '2017-01-01', '2017-12-01 10:07:56', '2017-12-01 13:00:05', 5, 'khaidir afif', '/upload/images/DSC_0007_4x6-min-min-min.JPG', '/upload/file/DSC_0005_4x6.JPG', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `customer_aktif`
--

CREATE TABLE `customer_aktif` (
  `id` int(10) NOT NULL,
  `first_name` varchar(200) DEFAULT NULL,
  `middle_name` varchar(150) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `id_card` varchar(150) DEFAULT NULL,
  `no_member` varchar(150) NOT NULL,
  `no_pengajuan` varchar(150) NOT NULL,
  `lokasi_diminati` varchar(150) DEFAULT NULL,
  `picture` text,
  `user` varchar(100) DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `updated_at` date DEFAULT NULL,
  `id_member` varchar(150) NOT NULL,
  `closing_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `customer_pasif`
--

CREATE TABLE `customer_pasif` (
  `id` int(10) NOT NULL,
  `first_name` varchar(200) DEFAULT NULL,
  `middle_name` varchar(150) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `id_card` varchar(150) DEFAULT NULL,
  `no_member` varchar(150) NOT NULL,
  `no_pengajuan` varchar(150) NOT NULL,
  `email` varchar(150) NOT NULL,
  `hp` varchar(150) NOT NULL,
  `jalan` varchar(150) NOT NULL,
  `kota` varchar(150) NOT NULL,
  `provinsi` varchar(150) NOT NULL,
  `negara` varchar(150) NOT NULL,
  `kodepos` varchar(150) NOT NULL,
  `lokasi_diminati` varchar(150) DEFAULT NULL,
  `tipe_diminati` varchar(150) DEFAULT NULL,
  `picture` text,
  `user` varchar(100) DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `updated_at` date DEFAULT NULL,
  `id_member` varchar(150) NOT NULL,
  `closing_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `event`
--

CREATE TABLE `event` (
  `id` int(10) NOT NULL,
  `title` varchar(200) DEFAULT NULL,
  `description` text,
  `created_at` datetime DEFAULT NULL,
  `picture` text,
  `user` varchar(100) DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `updated_at` date DEFAULT NULL,
  `penyelenggara` varchar(150) DEFAULT NULL,
  `address` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `event`
--

INSERT INTO `event` (`id`, `title`, `description`, `created_at`, `picture`, `user`, `status`, `updated_at`, `penyelenggara`, `address`) VALUES
(1, 'a', 'a', '2017-09-09 16:05:29', '/upload/images/npwp.jpg', NULL, NULL, '2017-09-09', 'a', 'a');

-- --------------------------------------------------------

--
-- Table structure for table `galeri`
--

CREATE TABLE `galeri` (
  `id` int(11) NOT NULL,
  `name` varchar(30) NOT NULL,
  `description` varchar(100) NOT NULL,
  `picture` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `user` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `informasi`
--

CREATE TABLE `informasi` (
  `id` int(11) NOT NULL,
  `title` varchar(150) NOT NULL,
  `kategori` varchar(50) NOT NULL,
  `description` text NOT NULL,
  `tanggal` date NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `view` int(200) NOT NULL,
  `user` varchar(200) NOT NULL,
  `picture` varchar(150) DEFAULT NULL,
  `file1` varchar(150) DEFAULT NULL,
  `file2` varchar(150) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `informasi`
--

INSERT INTO `informasi` (`id`, `title`, `kategori`, `description`, `tanggal`, `created_at`, `updated_at`, `view`, `user`, `picture`, `file1`, `file2`) VALUES
(25, 'baru 1', 'Lembaga Terkait', '<ul>\r\n	<li>kategori 1</li>\r\n	<li>kategori 1</li>\r\n	<li>kategori 1</li>\r\n</ul>\r\n', '2017-12-01', '2017-12-01 10:30:57', '2017-12-01 14:44:58', 8, 'baru 1', '/upload/images/1.jpg', '/upload/file/status.png', '/upload/file/BONUS SI.txt'),
(26, 'baru 2', 'kategori2', '<ul>\r\n	<li>kategori2</li>\r\n	<li>kategori2</li>\r\n	<li>kategori2</li>\r\n	<li>&nbsp;</li>\r\n</ul>\r\n', '2017-12-02', '2017-12-01 10:31:37', '2017-12-01 14:42:53', 2, 'baru 2 ', '/upload/images/1509847378946.jpg', '/upload/file/evaluasi DRAFT SKRIPSI.txt', '/upload/file/evaluasi DRAFT SKRIPSI.txt'),
(27, 'baru 3', 'Istilah Umum TKI', '<ul>\r\n	<li>kategori3</li>\r\n	<li>kategori3</li>\r\n	<li>kategori3</li>\r\n</ul>\r\n', '2017-12-01', '2017-12-01 10:32:15', '2017-12-01 14:45:06', 4, 'baru 3', '/upload/images/8394.jpg', '/upload/file/Pengembangan Bisnis TIK-O5 Squad.rtf', NULL),
(28, 'baru 4', 'Calon Tenaga Kerja Indoesia', '<ul>\r\n	<li>kategori4</li>\r\n	<li>kategori4</li>\r\n</ul>\r\n', '2017-12-01', '2017-12-01 10:33:46', '2017-12-01 14:02:08', 0, 'baru 4', '/upload/images/1.jpg', '/upload/file/EXODIA REBORN.docx', NULL),
(29, '12312', 'Calon Tenaga Kerja Indoesia', '<p>123123</p>\r\n', '2017-12-01', '2017-12-01 14:00:46', '2017-12-01 14:00:46', 0, '12123', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `info_program`
--

CREATE TABLE `info_program` (
  `id` int(11) NOT NULL,
  `user` varchar(150) NOT NULL,
  `created_at` datetime NOT NULL,
  `title` varchar(150) NOT NULL,
  `jenis` varchar(20) NOT NULL,
  `description` text NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `info_program`
--

INSERT INTO `info_program` (`id`, `user`, `created_at`, `title`, `jenis`, `description`, `updated_at`) VALUES
(1, '', '2017-09-09 16:41:16', 'Syarat dan Ketentuan', 'sdank', 'ldsdhs;sdk;sjdsjlkdsjdks', '2017-09-09 16:41:16');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`migration`, `batch`) VALUES
('2014_10_12_000000_create_users_table', 1),
('2014_10_12_100000_create_password_resets_table', 1),
('2016_09_12_150440_create_blogs_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('drikdoank@gmail.com', '6ab2f44831d31b104d23697c06b771799151b3b56cfcc31c24c34972b0470abc', '2017-02-02 06:07:50');

-- --------------------------------------------------------

--
-- Table structure for table `perundangan`
--

CREATE TABLE `perundangan` (
  `id` int(11) NOT NULL,
  `kategori` varchar(50) NOT NULL,
  `link` text NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `perundangan`
--

INSERT INTO `perundangan` (`id`, `kategori`, `link`, `created_at`, `updated_at`) VALUES
(1, 'UU', '	https://jdih.bnp2tki.go.id/index.php?lang=en', '2017-12-01 00:00:00', '2017-12-01 15:40:08'),
(2, 'PERPU', 'https://jdih.bnp2tki.go.id/index.php?lang=en', '2017-12-01 00:00:00', '2017-12-01 00:00:00'),
(3, 'PP', 'https://jdih.bnp2tki.go.id/index.php?lang=en', '2017-12-01 00:00:00', '2017-12-01 15:34:14'),
(4, 'PERPRES', 'https://jdih.bnp2tki.go.id/index.php?lang=en', '2017-12-01 00:00:00', '2017-12-01 00:00:00'),
(5, 'KEPRES', 'https://jdih.bnp2tki.go.id/index.php?lang=en', '2017-12-01 00:00:00', '2017-12-01 00:00:00'),
(7, 'INPRES', 'https://jdih.bnp2tki.go.id/index.php?lang=en', '2017-12-01 00:00:00', '2017-12-01 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `id` int(10) NOT NULL,
  `kode` varchar(100) NOT NULL,
  `name` varchar(200) DEFAULT NULL,
  `description` text,
  `created_at` datetime DEFAULT NULL,
  `picture_3D` varchar(150) DEFAULT NULL,
  `user` varchar(100) DEFAULT NULL,
  `status` int(10) DEFAULT NULL,
  `updated_at` date DEFAULT NULL,
  `price_list` varchar(150) NOT NULL,
  `progress` decimal(10,0) NOT NULL,
  `website` varchar(100) NOT NULL,
  `marketing_book` varchar(100) NOT NULL,
  `lokasi_lat` double NOT NULL,
  `lokasi_long` decimal(10,0) NOT NULL,
  `alamat` varchar(250) NOT NULL,
  `jenis` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `kode`, `name`, `description`, `created_at`, `picture_3D`, `user`, `status`, `updated_at`, `price_list`, `progress`, `website`, `marketing_book`, `lokasi_lat`, `lokasi_long`, `alamat`, `jenis`) VALUES
(1, 'A1010', 'Taman Wisata', 'kjHAKADSGDJSHGDJHSGDHJSD', '2017-09-09 16:37:57', '/upload/images/npwp.jpg', NULL, NULL, '2017-09-09', '/upload/images/npwp.jpg', '20', 'www.tamanceria.com', '/upload/images/KTP.jpg', 0, '0', 'Jalan Agstis, Jakarta', 'Condotel'),
(2, '3', '3', '3', '2017-11-29 04:16:14', NULL, NULL, NULL, '2017-11-29', '', '3', '', '', 3, '3', '3', '3');

-- --------------------------------------------------------

--
-- Table structure for table `reward`
--

CREATE TABLE `reward` (
  `id` int(10) UNSIGNED NOT NULL,
  `id_product` int(10) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `user` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `category` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `value` decimal(10,0) NOT NULL,
  `type` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `status` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `testimoni`
--

CREATE TABLE `testimoni` (
  `id` int(11) NOT NULL,
  `title` varchar(150) NOT NULL,
  `description` text NOT NULL,
  `user` varchar(150) NOT NULL,
  `category` varchar(150) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `url` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `testimoni`
--

INSERT INTO `testimoni` (`id`, `title`, `description`, `user`, `category`, `created_at`, `updated_at`, `url`) VALUES
(2, 'a', 'a', '', 'a', '2017-09-09 15:55:53', '2017-09-09 15:55:53', 'a');

-- --------------------------------------------------------

--
-- Table structure for table `transaction`
--

CREATE TABLE `transaction` (
  `id` int(11) NOT NULL,
  `kode_order` varchar(250) NOT NULL,
  `note` varchar(250) NOT NULL,
  `updated_at` date NOT NULL,
  `created_at` datetime NOT NULL,
  `quantity` int(10) NOT NULL,
  `user` varchar(100) NOT NULL,
  `status` int(10) NOT NULL,
  `id_product` int(10) NOT NULL,
  `id_reward` int(10) NOT NULL,
  `id_customer` int(10) NOT NULL,
  `id_member` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `no_member` varchar(150) COLLATE utf8_unicode_ci DEFAULT NULL,
  `id_card` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `middle_name` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `last_name` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `agama` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `jalan` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `kota` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `provinsi` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `negara` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `kodepos` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `group_member` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `sumber` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `birthdate` date NOT NULL,
  `picture` varchar(225) COLLATE utf8_unicode_ci NOT NULL,
  `role` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `status` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `activated` int(1) DEFAULT NULL,
  `gender` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `hp` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `no_member`, `id_card`, `middle_name`, `last_name`, `agama`, `jalan`, `kota`, `provinsi`, `negara`, `kodepos`, `group_member`, `sumber`, `email`, `birthdate`, `picture`, `role`, `password`, `remember_token`, `created_at`, `updated_at`, `status`, `activated`, `gender`, `hp`) VALUES
(1, 'Hendra', '0', '2323q3232323', '', '', 'Islam', 'Jalan Budi', 'Subang', 'Jawa Barat', 'Indonesia', '18760', '', '', 'hendra@gmail.com', '2017-09-06', '/upload/images/12-Hendrik-2cd5b9399f832b095755404a20e6035d.jpeg', 'adminunit', '$2y$10$V8UGtfS3dLg4t.i9FWeR9.MbpxLfVvX8sr/LGypvHFdr5Tm2TMpme', NULL, '2017-09-09 09:25:48', '2017-09-09 09:25:48', '', 1, 'Pria', '23029389283'),
(29, 'Hendrik', '2121212', '3210121212121212', 'bapak', 'weee', '', 'Manggis Raya', 'Bogor', 'Jawa Barat', 'singapura', '16680', 'wika-group', 'website', 'ssss@gmail.com', '2017-10-23', '', 'member', '', NULL, '2017-10-22 23:37:29', '2017-10-22 23:37:29', '', 1, NULL, '032323232'),
(31, 'Hendrik', NULL, '', '', '', '', '', '', '', '', '', '', '', 'drikdoank@gmail.com', '0000-00-00', '/upload/images/profil/31-Hendrik-K-BioBOOStcopy.jpg', 'admin', '$2y$10$FDw/HZYzgrsN7xh2Hw6HTeHUMBp.x4YrOuaaMDntb5Ad2vihCvxG2', NULL, '2017-10-22 23:42:47', '2017-10-22 23:42:58', '1', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `user_activations`
--

CREATE TABLE `user_activations` (
  `Id` int(10) NOT NULL,
  `user_id` int(10) DEFAULT NULL,
  `token` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `activated` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_activations`
--

INSERT INTO `user_activations` (`Id`, `user_id`, `token`, `created_at`, `activated`) VALUES
(1, 10, 'e0d6132def4e05d100fd1a7b01b02a480c6aff26c31f9f2cabb414f64722729b', '2017-02-04 06:09:53', NULL),
(0, 13, '08fe36cd578b911a47caf69087e1727128c7575ee519cd42e0b2e20df856b088', '2017-10-22 21:29:42', NULL),
(0, 14, '6b55e44fa534c32b83fce3c2e25d7b82c86fcc4c39e14451f28c3518a68f216d', '2017-10-22 21:32:10', NULL),
(0, 31, 'e4236f2e7442171a6e2b5e82e1aefcacc75c6817fbc222f3db6ad45144417b14', '2017-11-28 20:34:04', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `artikel`
--
ALTER TABLE `artikel`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customer_aktif`
--
ALTER TABLE `customer_aktif`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customer_pasif`
--
ALTER TABLE `customer_pasif`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `event`
--
ALTER TABLE `event`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `galeri`
--
ALTER TABLE `galeri`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `informasi`
--
ALTER TABLE `informasi`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `info_program`
--
ALTER TABLE `info_program`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `perundangan`
--
ALTER TABLE `perundangan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reward`
--
ALTER TABLE `reward`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `testimoni`
--
ALTER TABLE `testimoni`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transaction`
--
ALTER TABLE `transaction`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `artikel`
--
ALTER TABLE `artikel`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
--
-- AUTO_INCREMENT for table `customer_aktif`
--
ALTER TABLE `customer_aktif`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `customer_pasif`
--
ALTER TABLE `customer_pasif`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `event`
--
ALTER TABLE `event`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `galeri`
--
ALTER TABLE `galeri`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `informasi`
--
ALTER TABLE `informasi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;
--
-- AUTO_INCREMENT for table `info_program`
--
ALTER TABLE `info_program`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `perundangan`
--
ALTER TABLE `perundangan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `reward`
--
ALTER TABLE `reward`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `testimoni`
--
ALTER TABLE `testimoni`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
