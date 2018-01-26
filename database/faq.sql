-- phpMyAdmin SQL Dump
-- version 4.5.2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Dec 17, 2017 at 09:43 PM
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

--
-- Indexes for dumped tables
--

--
-- Indexes for table `faq`
--
ALTER TABLE `faq`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `faq`
--
ALTER TABLE `faq`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
