-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 22, 2017 at 03:40 PM
-- Server version: 10.1.28-MariaDB
-- PHP Version: 7.1.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
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
  `active` varchar(5) NOT NULL,
  `file1` varchar(150) DEFAULT NULL,
  `file2` varchar(150) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `artikel`
--

INSERT INTO `artikel` (`id`, `title`, `description`, `tanggal`, `created_at`, `updated_at`, `view`, `user`, `picture`, `active`, `file1`, `file2`) VALUES
(15, 'Tahap Akhir Proses Seleksi CPNS di BNP2TKi', '<p><strong>Jakarta, BNP2TKI, Selasa (07/11) -</strong>&nbsp; Badan Nasional Penempatan dan Perlindungan Tenaga Kerja Indonesia (BNP2TKI) telah menyelesaikan seluruh proses tes seleksi Calon Pegawai Negeri Sipil (CPNS) untuk mengisi 87 formasi pegawai BNP2TKI Selasa 7 November 2017 Gedung Graha Bhima Sakti INKOPAU Pancoran Jakarta Selatan.<br />\r\n&nbsp;</p>\r\n\r\n<p>Sekretaris Utama BNP2TKI, Hermono saat meninjau proses seleksi tes CPNS tahap akhir di Graha Bhima Sakti mengingatkan kepada para peserta seleksi CPNS BNP2TKI bahwa tes&nbsp;<em>TOEFL</em>&nbsp;ini yang penting adalah ketenangan dan fokus, tenang, dan harus&nbsp;<em>confident&nbsp;</em>dengan kemampuan masing-masing.<br />\r\n&nbsp;</p>\r\n\r\n<p>&ldquo;Jangan lupa berdo&rsquo;a menurut kepercayaan masing-masing, kuncinya cuma ketenangan saja, mudah-mudahan mendapatkan hasil yang terbaik untuk dapat mengisi 87 formasi yang tersedia di BNP2TKI,&rdquo; ungkap Hermono.&nbsp;<br />\r\n&nbsp;</p>\r\n\r\n<p>Lebih lanjut Kepala Bagian Perencanaan dan Pengembangan Pegawai, Biro Organisasi dan Kepegawaian BNP2TKI Dwi Heru Susanto menjelaskan dari 3.812 pelamar yang dinyatakan lulus seleksi administrasi dan mengikuti Seleksi Kompetensi Dasar (SKD) dengan sistem&nbsp;<em>Computer Assisted Test</em>&nbsp;(CAT) tanggal 25 &ndash; 27 Oktober 2017 di Badan Kepegawaian Negara (BKN) Pusat, sebanyak 233 peserta berhasil melanjutkan untuk mengikuti tes Seleksi Kompetensi Bidang (SKB) yang dilaksanakan selama dua hari pada tanggal 6-7 November 2017. Namun demikian hanya 221 peserta yang mengikuti tes SKB ini, dimana sebanyak 12 orang tidak hadir.<br />\r\n&nbsp;</p>\r\n\r\n<p>Hasil tes seleksi SKD dan SKB ini nantinya akan disampaikan langsung ke Panitia Seleksi Nasional &nbsp;Kementerian Pendayagunaan Aparatur Negara dan Reformasi Birokrasi (KemenPAN-RB) dan segera di umumkan di website&nbsp;<em><a href=\"http://www.bnp2tki.go.id/\" target=\"_blank\">www.bnp2tki.go.id</a></em>,&rdquo; tegas Heru.</p>\r\n', '2017-12-22', '2017-12-01 09:50:34', '2017-12-22 14:37:10', 29, 'Admin', '/upload/images/d1.jpg', '1', '/upload/file/42962_RENCANA PEMBIAYAAN (1).xlsx', '/upload/file/BMC_Institut Pertanian Bogor_O5-Squad_JembatanBudaya (2).pdf'),
(16, 'BP3TKI Lampung kukuhkan penggerak KKBM', '<p>BNP2TKI, Kamis (23/11) Dalam upaya&nbsp;membangun dan mengembangkan komunitas tenaga kerja Indonesia di daerah potensi tenaga kerja Indonesia. Balai Pelayanan Penempatan dan Perlindungan Tenaga Kerja Indonesia (BP3TKI) Lampung kukuhkan&nbsp;Penggerak Komunitas Keluarga Buruh Migran (KKBM) Wilayah Lampung Timur.<br />\r\n<br />\r\nPengukuhan para penggerak atau yang disebut&nbsp;<em>Community Organizer</em>&nbsp;Komunitas Keluarga Buruh Migran (CO KKBM) dilaksanakan secara&nbsp; simbolis dengan penyematan tanda pengenal atau ID Card CO KKBM oleh Kepala BP3TKI Lampung, Mangiring Hasoloan Sinaga berikut penyerahan media komunikasi berupa &nbsp;<em>leaflet, roll up banner</em>, dan&nbsp;<em>sticker</em>&nbsp;untuk diletakkan di sekretariat CO KKBM sebagai sarana bagi CO KKBM untuk menyebarluaskan informasi dan prosedur bekerja ke luar negeri.<br />\r\n<br />\r\nPara Penggerak Komunitas Buruh Migran yang dikukuhkan terdiri dari 6 (enam) orang, tiga orang penggerak dari wilayah kecamatan Sekampung dan 3 orang dari kecamatan Purbolinggo, Kabupaten Lampung Timur. Keenam orang penggerak antara lain, Eli Astuti Dewi, Setyo Hartono, Aji Wibowo, Suwanto, Suryadi, dan Supeno.<br />\r\n<br />\r\nKegiatan yang diselenggarakan di Resto Bumei Tuwah Bepadan, Lampung Timur ini dihadiri oleh Forum Komunikasi Pimpinan Kecamatan Sekampung dan Purbolinggo, perwakilan Dinas Tenaga Kerja, Usaha Mikro, dan Koperasi Kabupaten Lampung Timur, Kepala Desa di kecamatan Sekampung dan Purbolinggo, perwakilan anggota Koperasi TKI Purna Maju Lestari, perwakilan PPTKIS di Lampung Timur serta anggota KKBM.<br />\r\n<br />\r\nKKBM (Komunitas Keluarga Buruh Migran) adalah komunitas yang berasal dari, oleh, dan untuk masyarakat setempat. KKBM dapat membentuk kelompok, paguyuban atau koperasi yang bersama-sama melakukan kegiatan usaha ekonomi dan pemberian layanan informasi dan pendampingan/advokasi kasus TKI. Anggota KKBM terdiri dari para TKI Purna; keluarga dari TKI yang masih bekerja di luar negeri; keluarga TKI Purna; paralegal; penggiat isu Buruh Migran; dan penggerak KKBM (<em>Community Organizer</em>/CO).&nbsp;<em>Community Organizer</em>&nbsp;yang selanjutnya disebut CO adalah sekelompok orang yang diberi tugas untuk memberikan pelayanan informasi dan advokasi kepada Calon TKI/TKI/TKI Purna dan keluarganya.<br />\r\n<br />\r\nKepala BP3TKI Lampung, Mangiring Hasoloan Sinaga mengatakan bahwa kedepan CO KKBM ini diharapkan dapat membantu BP3TKI Lampung untuk semakin dekat dengan masyarakat karena mereka berada di dalam masyarakat itu sendiri.<br />\r\n&nbsp;<br />\r\nKegiatan pemberdayaan TKI purna dan keluarganya yang dilaksanakan BP3TKI Lampung juga telah melibatkan CO KKBM pada saat identifikasi calon peserta. Selain itu, pada beberapa kesempatan dalam pelayanan pengaduan dan penelusuran alamat TKI bermasalah pihak BP3TKI Lampung juga melibatkan CO KKBM.<br />\r\n&ldquo;<em>Dengan dikukuhkannya CO KKBM ini menegaskan bahwa mereka merupakan perpanjangan tangan BP3TKI Lampung yang resmi di daerah kantong-kantong TKI dan keberadaannya tentu membutuhkan dukungan dari setiap hadirin yang hadir</em>&rdquo; tutup Sinaga.</p>\r\n', '2017-12-22', '2017-12-01 10:05:26', '2017-12-22 11:55:38', 11, 'Publisher', '/upload/images/d2.jpg', '1', '/upload/file/Daftar Ulang, Wisuda Tahap III 1718.pdf', '/upload/file/draft pidato KEB.docx'),
(17, 'BNP2TKI: Peresmian Program LTSP di Lombok Tengah', '<p>Lombok, BNP2TKI, Rabu (29/11/2017)- Deputi Penempatan Tenaga Kerja BNP2TKI, Teguh Hendro Cahyono didampingi Wakil Bupati Lombok, L Pathul Bahri hadir meresmikan program Layanan Terpadu Satu Pintu Penempatan dan Perlindungan Tenaga Kerja Indonesia (LTSP-P2TKI) Kabupaten Lombok Tengah yang mulai dioperasikan, Senin (27/11/2017).<br />\r\n<br />\r\nLTSP-P2TKI ini dibentuk untuk memberikan layanan terbaik bagi masyarakat khususnya para Tenaga Kerja Indonesia (TKI) sebagai pahlawan devisa negara. Layanan ini juga bertujuan mencegah adanya pungutan liar dalam proses pembuatan dokumen calon TKI.<br />\r\nKepala Dinas Tenaga Kerja dan Transmigrasi Lombok Tengah, H Masrun menambahkan, pelayanan di LTSP-P2TKI ini dilakukan secara online. Ada delapan instansi yang tergabung dalam layanan itu yakni Dinas Dukcapil Lombok Tengah, Dinas Tenaga Kerja, Imigrasi Mataram, Kepolisian Resort (Polres)Lombok Tengah, BP3TKI Mataram, Asuransi, dan Dinas Kesehatan untuk pelayanan&nbsp;check up.<br />\r\n<br />\r\nSelain itu, Kepala BP3TKI Mataram, Mucharom Ashadi (yang saat ini telah resmi menjabat Kepala BP3TKI Jakarta), mengungkapkan bahwa program LTSP sebagai wujud konkrit kehadiran pemerintah dalam memberikan kemudahan pelayanan penempatan dan perlindungan TKI.<br />\r\n<br />\r\n&ldquo;Adanya LTSP ini agar &nbsp;pelayanan menjadi lebih cepat, murah, tepat, tanpa diskriminasi, aman dan terlindungi&rdquo; ujarnya.<br />\r\n<br />\r\nMucharom melanjutkan, kehadiran pemerintah melalui LTSP yang mencakupi &nbsp;lembaga seperti BP3TKI, Disnaker, BPJS Ketenagakerjaan serta perbankan memudahkan pelayanan bagi calon TKI.&nbsp;</p>\r\n', '2017-12-22', '2017-12-01 10:07:56', '2017-12-22 06:58:53', 7, 'Publisher', '/upload/images/d3.png', '1', '/upload/file/DSC_0005_4x6.JPG', NULL),
(18, 'Bekerja ke Luar Negeri Secara Legal dan Aman', '<p>Menjadi Tenaga Kerja Indonesia (TKI) adalah keputusan perubahan hidup yang penting dan Anda harus mempersiapkannya dengan baik.</p>\r\n\r\n<p>Ada banyak keuntungan bekerja di luar negeri tetapi juga banyak resiko dan tantangannya.</p>\r\n\r\n<p>Seseorang yang bekerja ke luar negeri harus memiliki dokumen resmi. TKI tidak berdokumen resmi mendapatkan perlindungan yang sangat sedikit sehingga mempunyai posisi tawar yang sangat rendah dalam hal penerimaan gaji/upahdan sering menjadi korban perdagangan orang. Seringkali mereka mendapatkan hak yang sangat sedikit di negara dimana mereka bekerja, bahkan jika tertangkap oleh pemerintah negara penempatan &ndash; misalnya karena melarikan diridari kekerasan yang dilakukan pengguna &ndash; mereka mungkin akan dideportasi termasuk menunggu lama di pos-pospenahanan.</p>\r\n\r\n<p>Perlu diketahui juga bahwa Anda dapat berada pada situasi yang sulit meskipun Anda bekerja di luar negeri secara legal.TKI memang sering mengalami diskriminasi atau perlakuan tidak bersahabat dari orang lokal di negara penempatanatau jatuh ke tangan pengguna yang melakukan kekerasan serta pelaku perdagangan orang.</p>\r\n\r\n<p>Cara terbaik untuk menghindari resiko ini adalah dengan perencanaan yang matang, mendapatkan pekerjaan mela-lui PPTKIS yang resmi, dan mempersiapkan dokumen yang legal. Perlu diingat bahwa mendapatkan informasi yangbenar juga merupakan hal yang sangat penting agar Anda mengetahui masalah yang mungkin dihadapi serta ke manaharus pergi kalau Anda berada dalam situasi yang sulit.</p>\r\n\r\n<p>Buku Saku Bekerja ke Luar Negeri Secara Legal dan Aman ini akan membantu Anda membuat keputusan yangcerdas tentang apa dan bagaimana bekerja di luar negeri dan memandu Anda dalam proses tersebut. Namun, inibukan hanya satu-satunya informasi bagi Anda. Membaca Buku Saku ini hanya sebuah awal, kemudian carilah infor-masi lebih lengkap di kantor DISNAKERTRANS Kabupaten/Kota atau di BP3TKI di wilayah Anda.</p>\r\n\r\n<p>Simpan Buku Saku ini dengan paspor Anda serta semua dokumen penting Anda di tempat yang aman.</p>\r\n\r\n<p>Semoga selamat dalam perjalanan!</p>\r\n', '2017-12-22', '2017-12-22 06:48:26', '2017-12-22 11:39:31', 3, 'Publisher', '/upload/images/images.jpg', '1', NULL, NULL);

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
  `active` varchar(5) NOT NULL,
  `file1` varchar(150) DEFAULT NULL,
  `file2` varchar(150) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `faq`
--

INSERT INTO `faq` (`id`, `title`, `kategori`, `description`, `tanggal`, `created_at`, `updated_at`, `view`, `user`, `picture`, `active`, `file1`, `file2`) VALUES
(25, 'INGIN MENJADI TKI ?', 'FAQ', '<p>Ikuti prosedur menjadi TKI yang sesuai dengan undang-undang sebagai berikut :</p>\r\n\r\n<ol>\r\n	<li>Datang dan tanyakan kepada Pejabat Dinas Nakertrans Kabupaten /Kota terdekat untuk memperoleh informasi tentang PPTKIS yang resmi /ilegal</li>\r\n	<li>Datang dan diskusi dengan pengurus PPTKIS sesuai dengan informasi dari Nakertrans Kabupaten /Kota</li>\r\n	<li>Ikuti penyuluhan yang dilaksanakan oleh petugas BNP2TKI , BP3TKI , UPT-P3TKI Surabaya , LP3TKI, PPTKIS dan Disnakertrans Kab/Kota.</li>\r\n	<li>Daftarkan diri di Dinas Nakertrans Kabupaten /Kota terdekat sesuai dengan status kependudukan.</li>\r\n	<li>Ikuti proses seleksi yang dilaksanakan oleh PPTKIS dan Dinas Nakertrans /Kota</li>\r\n	<li>Tandatangani Perjanjian Penempatan dengan PPTKIS yang disahkan oleh Dinas Nakertrans Kabupaten /Kota</li>\r\n	<li>Pastikan bahwa hak dan kewajiban para pihak dicantumkan secara jelas dalam perjanjian kerja.</li>\r\n	<li>Pahami isi dan tandatangani Perjanjian Kerja yang telah disahkan oleh Perwakilan RI di Negara Penempatan</li>\r\n	<li>Ikuti Pembekalan Akhir Pemberangkatan (PAP) dari BNP2TKI</li>\r\n	<li>Miliki Kartu Tenaga Kerja LuarNegeri (KTKLN) yang diperoleh secara GRATIS di BP3TKI, LP3TKI,P4TKI, dan UPT P3TKI di Surabaya</li>\r\n	<li>Lapor ke Perwakilan RI setibanya di Negara Penempatan</li>\r\n	<li>Setelah Kontrak Kerja berakhir, kembali ke tanah air dan lapor ke petugas BNP2TKI di Bandara /Pelabuhan kedatangan&nbsp;</li>\r\n</ol>\r\n', '2017-12-17', '2017-12-01 10:30:57', '2017-12-22 07:35:58', 11, 'Hendrik', '/upload/images/1.jpg', '0', '/upload/file/status.png', '/upload/file/BONUS SI.txt'),
(26, 'SYARAT CTKI /TKI', 'FAQ', '<p>Pencari kerja yang berminat untuk bekerja diluar negeri harus mendaftarkan diri atau di daftarkan pada Instansi Kabupaten /Kota dengan persyaratan :<br />\r\n1.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Berusia sekurang-kurangnya 18 tahun&nbsp; , kecuali bagi calon TKI yang dipekerjakan pada pengguna perorangan /rumah tangga sekurang-kurangnya berusia 21 tahun<br />\r\n2.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Sehat jasmani dan rohani<br />\r\n3.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Memiliki keterampilan<br />\r\n4.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Tidak dalam keadaan hamil (TKI perempuan)<br />\r\n5.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Calon TKI terdaftar di Dinas Tenaga Kerja setempat<br />\r\nMemiliki dokumen lengkap</p>\r\n', '2017-12-17', '2017-12-01 10:31:37', '2017-12-22 13:44:02', 2, 'Hendrik', '/upload/images/1509847378946.jpg', '0', '/upload/file/evaluasi DRAFT SKRIPSI.txt', '/upload/file/evaluasi DRAFT SKRIPSI.txt'),
(27, 'BAGAIMANA MENJADI TKI YANG AMAN?', 'FAQ', '<ol>\r\n	<li>Carilah PPTKIS yang resmi / Legal</li>\r\n	<li>Ikuti penyuluhan oleh petugas BNP2TKI, BP3TKI, UPT-P3TKI Surabaya , LP3TKI, P4TKI, PPTKIS dan Disnaker Kabupaten / Kota</li>\r\n	<li>Mendaftar di Disnaker Kabupaten /Kota</li>\r\n	<li>Ikuti proses seleksi yang dilakukan oleh PPTKIS dan Disnaker Kabupaten /Kota</li>\r\n	<li>Menandatangani perjanjian penempatan dengan PPTKIS yang disahkan oleh Disnakertrans Kabupaten /Kota</li>\r\n	<li>Pastikan mendapat asuransi ,pendidikan&nbsp; dan pelatihan mendapat Paspor dan Visa Kerja</li>\r\n	<li>Pahami isi dan tandatangani perjanjian kerja yang telah disahkan oleh Perwakilan RI</li>\r\n	<li>Wajib mengikuti Pembekalan Akhir Pemberangkatan (PAP) dari BP3TKI</li>\r\n	<li>Wajib memiliki Kartu Tenaga Kerja Luar Negeri (KTKLN) yang diperoleh secara GRATIS di BNP2TKI /BP3TKI/LP3TKI/P4TKI</li>\r\n	<li>Lapor ke Perwakilan RI setelah tiba di Negara penempatan</li>\r\n	<li>Setelah Kontrak Kerja berakhir , kembali ke tanah air dan lapor ke petugas BP3TKI di bandara /Pelabuhan</li>\r\n</ol>\r\n', '2017-12-17', '2017-12-01 10:32:15', '2017-12-22 07:39:56', 4, 'Hendrik', '/upload/images/8394.jpg', '1', '/upload/file/Pengembangan Bisnis TIK-O5 Squad.rtf', NULL),
(28, 'APA ITU TKI ILEGAL?', 'FAQ', '<p>Warga negara indonesia yang bekerja ke luar negeri melalui prosedur penempatan TKI yang tidak benar (NON PROSEDURAL) . prosedur Penempatan TKI yang TIDAK BENAR<br />\r\n&nbsp;( NON PROSEDURAL) antara lain :<br />\r\n-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Memalsukan dokumen dan memanipulasi data diri calon TKI<br />\r\n-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Mengabaikan prosedur dan mekanisme penempatan TKI yang telah diatur oleh undang-undang dan ketentuan hukum yang berlaku<br />\r\n&nbsp;</p>\r\n', '2017-12-17', '2017-12-01 10:33:46', '2017-12-22 07:41:25', 0, 'Hendrik', '/upload/images/1.jpg', '1', '/upload/file/EXODIA REBORN.docx', NULL),
(29, 'APA SAJA SYARAT CARA MENJADI TKI KOREA DENGAN PROGRAM G TO G ?', 'FAQ', '<ol>\r\n	<li>Lulus tes EPS TOPIK, dengan melampirkan foto copy sertifikat EPS TOPIK.</li>\r\n	<li>Tidak sedang dicekal dicekal pergi ke luar negeri.</li>\r\n	<li>Tidak pernah di deportasi dari negara Korea/ilegal stay.</li>\r\n	<li>Tidak mempunyai catatan kriminal dan tidak pernah dihukum atau dipenjara.</li>\r\n	<li>&nbsp;Mengisi formulir pendaftaran dengan jelas dan benar.</li>\r\n	<li>&nbsp;Foto copy KTP usia 18 -39 tahun.</li>\r\n	<li>Foto copy Kartu Keluarga</li>\r\n	<li>Foto copy ijasah pendidikan formal serendah-rendahnya lulusan SLTP atau sederajat.</li>\r\n	<li>Foto copy paspor yang masih berlaku</li>\r\n	<li>&nbsp;Pas foto terbaru berwarna ukuran 3 X 4 cm sebanyak 2 lembar.</li>\r\n	<li>Asli surat keterangan catatan kepolisian (SKCK)</li>\r\n	<li>Asli sertifikat hasil pemeriksaan kesehatan (medical check up).</li>\r\n	<li>Asli bukti pendaftaran pencari kerja (AK I) dari dinas yang menangani bidang ketenagakerjaan.</li>\r\n	<li>Asli surat ijin dari Suami/isteri/Orang tua atau wali diatas meterai Rp. 6000,- diketahui lurah atau kepala desa.</li>\r\n</ol>\r\n', '2017-12-17', '2017-12-01 14:00:46', '2017-12-22 07:41:28', 0, 'Hendrik', NULL, '1', NULL, NULL),
(30, '1', 'FAQ', '', '2017-12-18', '2017-12-18 14:20:17', '2017-12-22 07:40:24', 1, 'Hendrik', NULL, '1', NULL, NULL),
(31, '1', 'FAQ', '<p>sldksalkdas</p>\r\n', '2017-12-18', '2017-12-18 14:20:39', '2017-12-18 14:20:39', 0, 'Hendrik', NULL, '', NULL, NULL),
(32, '1', 'FAQ', '<p>sldksalkdas</p>\r\n', '2017-12-18', '2017-12-18 14:25:00', '2017-12-18 14:25:00', 0, 'Hendrik', NULL, '', NULL, NULL),
(33, '23', 'FAQ', '', '2017-12-18', '2017-12-18 14:25:12', '2017-12-18 14:25:12', 0, 'Hendrik', NULL, '', NULL, NULL),
(34, '333', 'FAQ', '', '2017-12-18', '2017-12-18 14:25:23', '2017-12-18 14:25:23', 0, 'Hendrik', NULL, '', NULL, NULL),
(35, '123123', 'FAQ', '', '2017-12-18', '2017-12-18 14:25:55', '2017-12-18 14:25:55', 0, 'Hendrik', NULL, '', NULL, NULL);

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
  `active` varchar(5) NOT NULL,
  `file1` varchar(150) DEFAULT NULL,
  `file2` varchar(150) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `informasi`
--

INSERT INTO `informasi` (`id`, `title`, `kategori`, `description`, `tanggal`, `created_at`, `updated_at`, `view`, `user`, `picture`, `active`, `file1`, `file2`) VALUES
(27, 'Sesi Penyuluhan', 'Istilah Umum TKI', '<ul>\r\n	<li>Panduan untuk Fasilitator: Sesi Penyuluhan tentang Bekerja ke Luar Negeri Secara Legal dan Aman</li>\r\n</ul>\r\n', '2017-12-22', '2017-12-01 10:32:15', '2017-12-22 13:43:46', 9, 'Publisher', '/upload/images/download (3).jpg', '0', '/upload/file/Pengembangan Bisnis TIK-O5 Squad.rtf', NULL),
(28, 'Fasilitasi TKI Bermasalah', 'Istilah Umum TKI', '<ul>\r\n	<li><strong>Prosedur TKI Bermasalah</strong><br />\r\n	1. TKI turun dari pesawat/kapal, menuju counter&nbsp;pemeriksaan Imigrasi untuk pengecekan dokumen&nbsp;keimigrasian oleh pihak Imigrasi<br />\r\n	2. Setelah dilakukan pemeriksaan imigrasi, TKI menuju&nbsp;conveyor untuk mengambil barang bawaan TKI.<br />\r\n	3. Setelah mengambil barang dari conveyor, TKI menuju&nbsp;ke counter Bea Cukai untuk dilakukan pemeriksaan&nbsp;Kepabeanan.<br />\r\n	4. Bagi TKI yang&nbsp;<strong>BERMASALAH</strong>, dapat mendatangi&nbsp;HELP DESK BNP2TKI yang berada di Common Use&nbsp;Lounge untuk difasilitasi dan dilayani kepulangannya&nbsp;oleh BNP2TKI.<br />\r\n	<br />\r\n	<br />\r\n	<strong>Pelayanan Pengaduan TKI (Crisis Center BNP2TKI)</strong><br />\r\n	<strong>TELEPON DARI DALAM NEGERI</strong>&nbsp;<br />\r\n	HALO TKI 800 1000&nbsp;<br />\r\n	24 JAM&nbsp;BEBAS PULSA<br />\r\n	<br />\r\n	<strong>TELEPON DARI LUAR NEGERI</strong><br />\r\n	+6221- 29244800<br />\r\n	<br />\r\n	<strong>DATANG LANGSUNG (TATAP MUKA)</strong><br />\r\n	Gedung Pelayanan Pengaduan TKI (CRISIS CENTRE) BNP2TKI<br />\r\n	Jl. MT Haryono Kav 52 Pancoran, Jakarta Selatan 12770&nbsp;<br />\r\n	<br />\r\n	<strong>SMS 7266</strong><br />\r\n	ketik : ACA # TKI # NAMA PENGIRIM # Masalah yang diadukan<br />\r\n	<br />\r\n	<strong>FAKSIMILI</strong><br />\r\n	021 - 29244810<br />\r\n	<br />\r\n	<strong>E-MAIL</strong><br />\r\n	halotki@bnp2tki.go.id<br />\r\n	<br />\r\n	<strong>SURAT MENYURAT</strong><br />\r\n	BADAN NASIONAL PENEMPATAN DAN PERLINDUNGAN&nbsp;<br />\r\n	TENAGA KERJA INDONESIA<br />\r\n	Jl. MT Haryono Kav 52 Pancoran, Jakarta Selatan 12770&nbsp;&nbsp;</li>\r\n</ul>\r\n', '2017-12-22', '2017-12-01 10:33:46', '2017-12-22 06:45:42', 1, 'Publisher', '/upload/images/download (2).jpg', '1', '/upload/file/EXODIA REBORN.docx', NULL),
(29, 'Apakah Migrasi Tenaga Kerja?', 'Calon Tenaga Kerja Indoesia', '<p>Migrasi tenaga kerja adalah tindakan berpindah ke negara lain untuk tujuan bekerja.</p>\r\n\r\n<p>Manfaat Berkerja ke&nbsp;Luar Negeri</p>\r\n\r\n<ul>\r\n	<li>Membantu ekonomi keluarga.</li>\r\n	<li>Memberikan kehidupan yang lebih baik bagi keluarga.</li>\r\n	<li>Membantu keluarga dan masyarakat dengan pengetahuan dan ketrampilan yang saya peroleh dari luar negeri.</li>\r\n	<li>Menjadi lebih mandiri dan memiliki banyak inisiatif (wiraswasta).</li>\r\n	<li>Memberikan pelayanan yang berguna bagi negara tempat saya bekerja, dan dengan demikian dapat membantu pembangunan negara tersebut.</li>\r\n	<li>Mengenal kebudayaan dan bahasa negara lain.</li>\r\n	<li>Mempromosikan mengenai negara dan kebudayaan Indonesia di luar negeri.</li>\r\n</ul>\r\n', '2017-12-22', '2017-12-01 14:00:46', '2017-12-22 06:05:29', 3, 'Publisher', '/upload/images/download.jpg', '1', NULL, NULL),
(30, 'Kementerian Tenaga Kerja Dipisahkan', 'Lembaga Terkait', '<p>Presiden Joko Widodo berencana memisahkan Kementerian Tenaga Kerja dengan Transmigrasi. Hal ihwal mengenai transmigrasi nantinya akan diurus oleh Kementerian Pembangunan Daerah Tertinggal.<br />\r\n<br />\r\n&quot;Melihat perkembangan industri dalam negeri yang tak bisa lepas dari geopolitik dan geoekonomi yang terjadi, sudah semestinya Indonesia fokus terhadap masalah ketenagakerjaan,&quot; ujar Ketua DPP Rieke Diah Pitaloka kepada detikcom, Sabtu (25/10/2014).<br />\r\n<br />\r\nOleh karena itu urusan ketenagakerjaan harus menjadi fokus, sehingga Kementerian Tenaga Kerja harus berdiri sendiri. Menurut data BPS pada Februari 2014 angkatan kerja di Indonesia berjumlah 125,3 juta jiwa.</p>\r\n\r\n<p>&quot;Dengan angka sebesar itu tentu jadi problem bagi Indonesia untuk memiliki kementerian khusus ketenagakerjaan. Perlu ada perbaikan terus menerus terhadap kualitas dan perlindungan terhadap pekerja Indonesia dalam dan luar negeri yang bergerak secara pararel dengan penguatan industri nasional,&quot; imbuh anggota DPR tersebut.<br />\r\n<br />\r\nDengan terfokusnya isu ketenagakerjaan dapat diintegrasikan dengan kebijakan ekonomi, industri, dan perdagangan. Harapannya adalah agar permasalahan perizinan dipersingkat dan dipermudah.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Sumber: Detik.com</p>\r\n', '2017-12-22', '2017-12-22 05:56:15', '2017-12-22 06:04:38', 8, 'Publisher', '/upload/images/download (1).jpg', '1', '/upload/file/2601-5750-1-SM.pdf', NULL);

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
(1, '', '	https://jdih.bnp2tki.go.id/index.php?lang=en', '2017-12-01 00:00:00', '2017-12-21 02:24:05'),
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
(19, 'Hendrik', 'ddfdfdf', '2017-12-17 14:22:28', '2017-12-17 14:22:28', 'drikdoank@gmail.com'),
(20, 'rangga', 'mantap gak ?\r\n', '2017-12-22 07:32:28', '2017-12-22 07:32:28', 'rangga@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `nama` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `alamat` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `status` varchar(5) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `picture` varchar(225) COLLATE utf8_unicode_ci NOT NULL,
  `role` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `kontak` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `nama`, `alamat`, `status`, `email`, `picture`, `role`, `password`, `remember_token`, `created_at`, `updated_at`, `kontak`) VALUES
(1, 'Entry', 'lampung', 'on', 'entry@gmail.com', '/upload/images/12-Hendrik-2cd5b9399f832b095755404a20e6035d.jpeg', 'entry', '$2y$10$V8UGtfS3dLg4t.i9FWeR9.MbpxLfVvX8sr/LGypvHFdr5Tm2TMpme', '2ZSbUXrr49j9ljF20XVplf40fr7ZlTegVkpxsJ4lcDZGictY4qxQwqYMk8oo', '2017-09-09 09:25:48', '2017-12-22 06:42:49', '23029389283'),
(29, 'Publisher', 'lampung', 'on', 'publisher@gmail.com', '/upload/images/12-Hendrik-2cd5b9399f832b095755404a20e6035d.jpeg', 'publisher', '$2y$10$FDw/HZYzgrsN7xh2Hw6HTeHUMBp.x4YrOuaaMDntb5Ad2vihCvxG2', '1e0IA7trqnsWZoJ5p9Z1gytcZDHI1kYERTXYcinsKE8cV7CgXZhFZxx71gd2', '2017-10-22 23:37:29', '2017-12-22 06:45:27', '032323232'),
(31, 'Admin', 'lampung', 'on', 'admin@gmail.com', '/upload/images/profil/aaaaaa.JPG', 'admin', '$2y$10$m1tpKZdGgrqbm0KAGYpD4.CFqaQczZ2dg1nNnYb/9kqL8sw2WKDpa', 'WX5kyEs3vW8YyVWiSGXa0zokY2pnrr6Y5C9TsA5LzHJsMhya1078BhBuXlsj', '2017-10-22 23:42:47', '2017-12-22 07:34:11', '12312312');

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
(0, 31, 'e4236f2e7442171a6e2b5e82e1aefcacc75c6817fbc222f3db6ad45144417b14', '2017-11-28 20:34:04', NULL),
(0, 36, 'f5300e9a6945fcf03f1b6dcfe965abb0ed1ac2361b3c6757e4624391ab6710bf', '2017-12-22 04:04:27', NULL),
(0, 37, '4374b80f7b221c4363c606ebcc687225f48766e539eae89cbc105acee0801257', '2017-12-22 04:58:47', NULL),
(0, 1, 'b5daab8979eda3c27ae329ba691452b09f8203ace560139e738ebbb959018b7a', '2017-12-22 05:06:19', NULL),
(0, 38, '9bc6bd01f7051a5b8e33d9c14082b70fc8bbfb17acc3db65ad2ffffa16ba3870', '2017-12-22 05:29:20', NULL);

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `faq`
--
ALTER TABLE `faq`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `informasi`
--
ALTER TABLE `informasi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `perundangan`
--
ALTER TABLE `perundangan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tanya`
--
ALTER TABLE `tanya`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
