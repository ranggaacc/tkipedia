-- phpMyAdmin SQL Dump
-- version 4.5.2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Dec 17, 2017 at 09:26 PM
-- Server version: 10.1.16-MariaDB
-- PHP Version: 5.6.24

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `webtkipedia`
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
-- Table structure for table `faq`
--

CREATE TABLE `faq` (
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
-- Dumping data for table `faq`
--

INSERT INTO `faq` (`id`, `title`, `kategori`, `description`, `tanggal`, `created_at`, `updated_at`, `view`, `user`, `picture`, `file1`, `file2`) VALUES
(25, 'INGIN MENJADI TKI ?', 'FAQ', '<p>Ikuti prosedur menjadi TKI yang sesuai dengan undang-undang sebagai berikut :</p>\r\n\r\n<ol>\r\n	<li>Datang dan tanyakan kepada Pejabat Dinas Nakertrans Kabupaten /Kota terdekat untuk memperoleh informasi tentang PPTKIS yang resmi /ilegal</li>\r\n	<li>Datang dan diskusi dengan pengurus PPTKIS sesuai dengan informasi dari Nakertrans Kabupaten /Kota</li>\r\n	<li>Ikuti penyuluhan yang dilaksanakan oleh petugas BNP2TKI , BP3TKI , UPT-P3TKI Surabaya , LP3TKI, PPTKIS dan Disnakertrans Kab/Kota.</li>\r\n	<li>Daftarkan diri di Dinas Nakertrans Kabupaten /Kota terdekat sesuai dengan status kependudukan.</li>\r\n	<li>Ikuti proses seleksi yang dilaksanakan oleh PPTKIS dan Dinas Nakertrans /Kota</li>\r\n	<li>Tandatangani Perjanjian Penempatan dengan PPTKIS yang disahkan oleh Dinas Nakertrans Kabupaten /Kota</li>\r\n	<li>Pastikan bahwa hak dan kewajiban para pihak dicantumkan secara jelas dalam perjanjian kerja.</li>\r\n	<li>Pahami isi dan tandatangani Perjanjian Kerja yang telah disahkan oleh Perwakilan RI di Negara Penempatan</li>\r\n	<li>Ikuti Pembekalan Akhir Pemberangkatan (PAP) dari BNP2TKI</li>\r\n	<li>Miliki Kartu Tenaga Kerja LuarNegeri (KTKLN) yang diperoleh secara GRATIS di BP3TKI, LP3TKI,P4TKI, dan UPT P3TKI di Surabaya</li>\r\n	<li>Lapor ke Perwakilan RI setibanya di Negara Penempatan</li>\r\n	<li>Setelah Kontrak Kerja berakhir, kembali ke tanah air dan lapor ke petugas BNP2TKI di Bandara /Pelabuhan kedatangan&nbsp;</li>\r\n</ol>\r\n', '2017-12-17', '2017-12-01 10:30:57', '2017-12-17 13:41:56', 8, 'Hendrik', '/upload/images/1.jpg', '/upload/file/status.png', '/upload/file/BONUS SI.txt'),
(26, 'SYARAT CTKI /TKI', 'FAQ', '<p>Pencari kerja yang berminat untuk bekerja diluar negeri harus mendaftarkan diri atau di daftarkan pada Instansi Kabupaten /Kota dengan persyaratan :<br />\r\n1.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Berusia sekurang-kurangnya 18 tahun&nbsp; , kecuali bagi calon TKI yang dipekerjakan pada pengguna perorangan /rumah tangga sekurang-kurangnya berusia 21 tahun<br />\r\n2.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Sehat jasmani dan rohani<br />\r\n3.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Memiliki keterampilan<br />\r\n4.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Tidak dalam keadaan hamil (TKI perempuan)<br />\r\n5.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Calon TKI terdaftar di Dinas Tenaga Kerja setempat<br />\r\nMemiliki dokumen lengkap</p>\r\n', '2017-12-17', '2017-12-01 10:31:37', '2017-12-17 13:42:34', 2, 'Hendrik', '/upload/images/1509847378946.jpg', '/upload/file/evaluasi DRAFT SKRIPSI.txt', '/upload/file/evaluasi DRAFT SKRIPSI.txt'),
(27, 'BAGAIMANA MENJADI TKI YANG AMAN?', 'FAQ', '<ol>\r\n	<li>Carilah PPTKIS yang resmi / Legal</li>\r\n	<li>Ikuti penyuluhan oleh petugas BNP2TKI, BP3TKI, UPT-P3TKI Surabaya , LP3TKI, P4TKI, PPTKIS dan Disnaker Kabupaten / Kota</li>\r\n	<li>Mendaftar di Disnaker Kabupaten /Kota</li>\r\n	<li>Ikuti proses seleksi yang dilakukan oleh PPTKIS dan Disnaker Kabupaten /Kota</li>\r\n	<li>Menandatangani perjanjian penempatan dengan PPTKIS yang disahkan oleh Disnakertrans Kabupaten /Kota</li>\r\n	<li>Pastikan mendapat asuransi ,pendidikan&nbsp; dan pelatihan mendapat Paspor dan Visa Kerja</li>\r\n	<li>Pahami isi dan tandatangani perjanjian kerja yang telah disahkan oleh Perwakilan RI</li>\r\n	<li>Wajib mengikuti Pembekalan Akhir Pemberangkatan (PAP) dari BP3TKI</li>\r\n	<li>Wajib memiliki Kartu Tenaga Kerja Luar Negeri (KTKLN) yang diperoleh secara GRATIS di BNP2TKI /BP3TKI/LP3TKI/P4TKI</li>\r\n	<li>Lapor ke Perwakilan RI setelah tiba di Negara penempatan</li>\r\n	<li>Setelah Kontrak Kerja berakhir , kembali ke tanah air dan lapor ke petugas BP3TKI di bandara /Pelabuhan</li>\r\n</ol>\r\n', '2017-12-17', '2017-12-01 10:32:15', '2017-12-17 13:42:59', 4, 'Hendrik', '/upload/images/8394.jpg', '/upload/file/Pengembangan Bisnis TIK-O5 Squad.rtf', NULL),
(28, 'APA ITU TKI ILEGAL?', 'FAQ', '<p>Warga negara indonesia yang bekerja ke luar negeri melalui prosedur penempatan TKI yang tidak benar (NON PROSEDURAL) . prosedur Penempatan TKI yang TIDAK BENAR<br />\r\n&nbsp;( NON PROSEDURAL) antara lain :<br />\r\n-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Memalsukan dokumen dan memanipulasi data diri calon TKI<br />\r\n-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Mengabaikan prosedur dan mekanisme penempatan TKI yang telah diatur oleh undang-undang dan ketentuan hukum yang berlaku<br />\r\n&nbsp;</p>\r\n', '2017-12-17', '2017-12-01 10:33:46', '2017-12-17 13:43:22', 0, 'Hendrik', '/upload/images/1.jpg', '/upload/file/EXODIA REBORN.docx', NULL),
(29, 'APA SAJA SYARAT CARA MENJADI TKI KOREA DENGAN PROGRAM G TO G ?', 'FAQ', '<ol>\r\n	<li>Lulus tes EPS TOPIK, dengan melampirkan foto copy sertifikat EPS TOPIK.</li>\r\n	<li>Tidak sedang dicekal dicekal pergi ke luar negeri.</li>\r\n	<li>Tidak pernah di deportasi dari negara Korea/ilegal stay.</li>\r\n	<li>Tidak mempunyai catatan kriminal dan tidak pernah dihukum atau dipenjara.</li>\r\n	<li>&nbsp;Mengisi formulir pendaftaran dengan jelas dan benar.</li>\r\n	<li>&nbsp;Foto copy KTP usia 18 -39 tahun.</li>\r\n	<li>Foto copy Kartu Keluarga</li>\r\n	<li>Foto copy ijasah pendidikan formal serendah-rendahnya lulusan SLTP atau sederajat.</li>\r\n	<li>Foto copy paspor yang masih berlaku</li>\r\n	<li>&nbsp;Pas foto terbaru berwarna ukuran 3 X 4 cm sebanyak 2 lembar.</li>\r\n	<li>Asli surat keterangan catatan kepolisian (SKCK)</li>\r\n	<li>Asli sertifikat hasil pemeriksaan kesehatan (medical check up).</li>\r\n	<li>Asli bukti pendaftaran pencari kerja (AK I) dari dinas yang menangani bidang ketenagakerjaan.</li>\r\n	<li>Asli surat ijin dari Suami/isteri/Orang tua atau wali diatas meterai Rp. 6000,- diketahui lurah atau kepala desa.</li>\r\n</ol>\r\n', '2017-12-17', '2017-12-01 14:00:46', '2017-12-17 13:43:42', 0, 'Hendrik', NULL, NULL, NULL);

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
-- Table structure for table `tanya`
--

CREATE TABLE `tanya` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL,
  `description` text NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `email` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tanya`
--

INSERT INTO `tanya` (`id`, `name`, `description`, `created_at`, `updated_at`, `email`) VALUES
(19, 'Hendrik', 'ddfdfdf', '2017-12-17 14:22:28', '2017-12-17 14:22:28', 'drikdoank@gmail.com');

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
(31, 'Hendrik', NULL, '', '', '', '', '', '', '', '', '', '', '', 'drikdoank@gmail.com', '0000-00-00', '/upload/images/profil/31-Hendrik-avatar5.png', 'admin', '$2y$10$FDw/HZYzgrsN7xh2Hw6HTeHUMBp.x4YrOuaaMDntb5Ad2vihCvxG2', NULL, '2017-10-22 23:42:47', '2017-12-17 06:44:28', '1', 1, NULL, NULL);

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
-- Indexes for table `faq`
--
ALTER TABLE `faq`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `informasi`
--
ALTER TABLE `informasi`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `perundangan`
--
ALTER TABLE `perundangan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tanya`
--
ALTER TABLE `tanya`
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
-- AUTO_INCREMENT for table `faq`
--
ALTER TABLE `faq`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;
--
-- AUTO_INCREMENT for table `informasi`
--
ALTER TABLE `informasi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;
--
-- AUTO_INCREMENT for table `perundangan`
--
ALTER TABLE `perundangan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `tanya`
--
ALTER TABLE `tanya`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
