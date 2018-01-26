-- phpMyAdmin SQL Dump
-- version 4.5.2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Aug 28, 2017 at 05:07 PM
-- Server version: 10.1.16-MariaDB
-- PHP Version: 5.6.24

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `haikers`
--

-- --------------------------------------------------------

--
-- Table structure for table `bikes`
--

CREATE TABLE `bikes` (
  `id` int(10) NOT NULL,
  `kode` varchar(150) NOT NULL,
  `type` varchar(50) NOT NULL,
  `name` varchar(200) DEFAULT NULL,
  `description` text,
  `created_at` datetime DEFAULT NULL,
  `picture` text,
  `user` varchar(100) DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `updated_at` date DEFAULT NULL,
  `url` text,
  `jenis` varchar(150) NOT NULL,
  `cc` int(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bikes`
--

INSERT INTO `bikes` (`id`, `kode`, `type`, `name`, `description`, `created_at`, `picture`, `user`, `status`, `updated_at`, `url`, `jenis`, `cc`) VALUES
(1, 'B101', 'yamaha', 'Yamaha XZF', 'Yamaha One', '2017-02-02 16:45:41', '/upload/images/life.png', 'drikdoank@gmail.com', 1, '2017-06-15', 'http://www.lifebuoy.com/Images/3557/3557-1105376-product-total_10-hand_wash.png', 'sport', 150),
(2, 'B102', 'honda', 'Sampho Pantene ', 'Sampho Pantene Anti Ketombe', '2017-02-13 16:45:41', '/upload/images/sampho.jpg', 'drikdoank@gmail.com', 1, '2017-04-08', 'http://merkterbaik.com/wp-content/uploads/2016/06/Pantene-Hair-Fall-Control-Shampoo.jpg', 'sport', 250),
(3, 'B103', 'suzuki', 'Pepsodent', 'Pepsodent Double Clean', '2017-04-05 11:29:54', '/upload/images/$2y$10$0wkWMsr6DBPL5Jbz90lViO07hyHkesqdyW4.mt8RjYH8zPi.H8KRm', 'drikdoank@gmail.com', 1, '2017-04-08', 'http://image.elevenia.co.id/g/9/1/9/4/9/2/5919492_B.jpg', 'sport', 250);

-- --------------------------------------------------------

--
-- Table structure for table `count_connectedby_day_user`
--

CREATE TABLE `count_connectedby_day_user` (
  `user` varchar(100) DEFAULT NULL,
  `id_aplikasi` int(10) DEFAULT NULL,
  `day` date DEFAULT NULL,
  `wifi_count` bigint(21) DEFAULT NULL,
  `cellular_count` bigint(21) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `count_connectedby_month`
--

CREATE TABLE `count_connectedby_month` (
  `month` int(2) DEFAULT NULL,
  `wifi_count` bigint(21) DEFAULT NULL,
  `cellular_count` bigint(21) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `count_connectedby_month_user`
--

CREATE TABLE `count_connectedby_month_user` (
  `user` varchar(100) DEFAULT NULL,
  `id_aplikasi` int(10) DEFAULT NULL,
  `month` int(2) DEFAULT NULL,
  `wifi_count` bigint(21) DEFAULT NULL,
  `cellular_count` bigint(21) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `count_connectedby_year`
--

CREATE TABLE `count_connectedby_year` (
  `year` int(4) DEFAULT NULL,
  `wifi_count` bigint(21) DEFAULT NULL,
  `cellular_count` bigint(21) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `count_connectedby_year_user`
--

CREATE TABLE `count_connectedby_year_user` (
  `user` varchar(100) DEFAULT NULL,
  `id_aplikasi` int(10) DEFAULT NULL,
  `year` int(4) DEFAULT NULL,
  `wifi_count` bigint(21) DEFAULT NULL,
  `cellular_count` bigint(21) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `count_dashboard`
--

CREATE TABLE `count_dashboard` (
  `count_activity` bigint(21) DEFAULT NULL,
  `count_click` bigint(21) DEFAULT NULL,
  `count_view` bigint(21) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `count_dashboard_user`
--

CREATE TABLE `count_dashboard_user` (
  `user` varchar(100) DEFAULT NULL,
  `id_aplikasi` int(10) DEFAULT NULL,
  `count_activity` bigint(21) DEFAULT NULL,
  `count_click` bigint(21) DEFAULT NULL,
  `count_view` bigint(21) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `count_install`
--

CREATE TABLE `count_install` (
  `total_install` bigint(21) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `editor_review`
--

CREATE TABLE `editor_review` (
  `id` int(10) NOT NULL,
  `name` varchar(200) DEFAULT NULL,
  `description` text,
  `created_at` datetime DEFAULT NULL,
  `picture` text,
  `user` varchar(100) DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `updated_at` date DEFAULT NULL,
  `url` text
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `editor_review`
--

INSERT INTO `editor_review` (`id`, `name`, `description`, `created_at`, `picture`, `user`, `status`, `updated_at`, `url`) VALUES
(4, 'Ducati 2010', 'sjdlkhhskdhsjdhsdhskjd\r\njhskdhskdhkjsd\r\n,dsdshjdskdk', '2017-06-15 14:29:56', '/upload/images/Best-Deals-Helmet-3.jpg', 'drikdoank@gmail.com', 1, '2017-06-15', NULL),
(2, 'Sampho Pantene ', 'Sampho Pantene Anti Ketombe LKJSDHSDJSHDKJSHKDKJSD', '2017-02-13 16:45:41', '/upload/images/sampho.jpg', 'drikdoank@gmail.com', 1, '2017-06-15', 'http://merkterbaik.com/wp-content/uploads/2016/06/Pantene-Hair-Fall-Control-Shampoo.jpg'),
(3, 'Pepsodent', 'Pepsodent Double Clean', '2017-04-05 11:29:54', '/upload/images/$2y$10$0wkWMsr6DBPL5Jbz90lViO07hyHkesqdyW4.mt8RjYH8zPi.H8KRm', 'drikdoank@gmail.com', 1, '2017-04-08', 'http://image.elevenia.co.id/g/9/1/9/4/9/2/5919492_B.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `event`
--

CREATE TABLE `event` (
  `id` int(10) NOT NULL,
  `name` varchar(200) DEFAULT NULL,
  `description` text,
  `created_at` datetime DEFAULT NULL,
  `day_start` time DEFAULT NULL,
  `day_end` time DEFAULT NULL,
  `picture` text,
  `user` varchar(100) DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `updated_at` date DEFAULT NULL,
  `penyelenggara` varchar(150) DEFAULT NULL,
  `location` text,
  `type` varchar(100) NOT NULL,
  `address` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `event`
--

INSERT INTO `event` (`id`, `name`, `description`, `created_at`, `day_start`, `day_end`, `picture`, `user`, `status`, `updated_at`, `penyelenggara`, `location`, `type`, `address`) VALUES
(1, 'Sabun Mandi Lifebouy', 'Sabun Mandi Lifebouy Cair', '2017-02-13 16:45:41', '02:01:00', '02:03:00', '/upload/images/life.png', 'drikdoank@gmail.com', 1, '2017-06-21', 'haiker bogor', 'Bogor', 'bazar', 'Jl. Rancakendal Luhur No. 49 Bandung'),
(2, 'Sampho Pantene ', 'Sampho Pantene Anti Ketombe', '2017-02-13 16:45:41', '00:12:00', '05:34:00', '/upload/images/sampho.jpg', 'drikdoank@gmail.com', 1, '2017-06-21', 'haiker depok', 'Depok', 'bazar', 'sdsdss'),
(3, 'Pepsodent', 'Pepsodent Double Clean', '2017-04-05 11:29:54', '03:43:00', '03:43:00', '/upload/images/$2y$10$0wkWMsr6DBPL5Jbz90lViO07hyHkesqdyW4.mt8RjYH8zPi.H8KRm', 'drikdoank@gmail.com', 1, '2017-06-21', 'haiker bogor', 'Jakarta', 'bazar', 'fdffdd'),
(5, 'Jalan-Jalan', 'AA', '2017-06-15 13:40:17', '03:43:00', '04:55:00', '/upload/images/Home-image-Exhibition.jpg', 'drikdoank@gmail.com', 1, '2017-06-21', 'haiker', NULL, 'bazar', 'Jl. Rancakendal Luhur No. 49 Bandung');

-- --------------------------------------------------------

--
-- Table structure for table `exhibition`
--

CREATE TABLE `exhibition` (
  `id` int(10) NOT NULL,
  `name` varchar(200) DEFAULT NULL,
  `description` text,
  `created_at` datetime DEFAULT NULL,
  `day_start` date DEFAULT NULL,
  `day_end` date DEFAULT NULL,
  `picture` text,
  `user` varchar(100) DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `updated_at` date DEFAULT NULL,
  `penyelenggara` varchar(150) DEFAULT NULL,
  `location` text,
  `type` varchar(100) NOT NULL,
  `address` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `exhibition`
--

INSERT INTO `exhibition` (`id`, `name`, `description`, `created_at`, `day_start`, `day_end`, `picture`, `user`, `status`, `updated_at`, `penyelenggara`, `location`, `type`, `address`) VALUES
(1, 'jdjfkdjf', 'kjldkfjldk', '2017-06-21 20:53:27', '2017-06-01', '2017-06-30', '/upload/images/result.png', 'drikdoank@gmail.com', 1, '2017-06-21', 'fkd;fkjdf', NULL, 'exhibition', 'kfdjkfjdlkf');

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `id` int(11) NOT NULL,
  `title` varchar(150) NOT NULL,
  `description` text NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `user` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `feedback`
--

INSERT INTO `feedback` (`id`, `title`, `description`, `created_at`, `updated_at`, `user`) VALUES
(1, 'Alus euy', 'Alus apanananan', '2017-07-03 02:46:56', '2017-07-03 02:46:56', 'didok49@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `inbox`
--

CREATE TABLE `inbox` (
  `id` int(11) NOT NULL,
  `id_receiver` varchar(250) NOT NULL,
  `id_user` varchar(150) NOT NULL,
  `created_at` datetime NOT NULL,
  `title` varchar(150) NOT NULL,
  `description` text NOT NULL,
  `read_at` datetime NOT NULL,
  `send_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `kode_produk` varchar(15) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `inbox`
--

INSERT INTO `inbox` (`id`, `id_receiver`, `id_user`, `created_at`, `title`, `description`, `read_at`, `send_at`, `updated_at`, `kode_produk`) VALUES
(336, 'didok496@gmail.com', 'admin-haiker@gmail.com', '2017-07-03 05:28:21', 'Selamat Bergabung di Haikers Crew', 'Haiker adalah kependekan dari Hai Baikers. Ia mulai dipopulerkan pada tahun 1960 dengan diluncurkannya lembaran-lembaran Letraset yang menggunakan kalimat-kalimat dari Lorem Ipsum, dan seiring munculnya perangkat lunak Desktop Publishing seperti Aldus PageMaker juga memiliki versi Lorem Ipsum.', '0000-00-00 00:00:00', '2017-07-03 05:28:21', '2017-07-03 05:28:21', '4'),
(337, 'didok496@gmail.com', 'admin-haiker@gmail.com', '2017-07-03 05:29:30', 'Selamat Bergabung di Haikers Crew', 'Haiker adalah kependekan dari Hai Baikers. Ia mulai dipopulerkan pada tahun 1960 dengan diluncurkannya lembaran-lembaran Letraset yang menggunakan kalimat-kalimat dari Lorem Ipsum, dan seiring munculnya perangkat lunak Desktop Publishing seperti Aldus PageMaker juga memiliki versi Lorem Ipsum.', '0000-00-00 00:00:00', '2017-07-03 05:29:30', '2017-07-03 05:29:30', '4'),
(338, 'didok49@gmail.com', 'admin-haiker@gmail.com', '2017-07-03 05:44:36', 'Order dengan kode 261d2d9e365b', 'Hai Fajar. Order kamu dengan product kode 1 telah kami terima dan akan kami proses. Terima kasih', '0000-00-00 00:00:00', '2017-07-03 05:44:36', '2017-07-03 05:44:36', '4'),
(339, 'didok49@gmail.com', 'admin-haiker@gmail.com', '2017-07-03 05:46:12', 'Order dengan kode 1bd9869757e5', 'Hai Fajar. Order kamu dengan product kode 1 sebanyak 2 item telah kami terima dan akan kami proses. Terima kasih', '0000-00-00 00:00:00', '2017-07-03 05:46:12', '2017-07-03 05:46:12', '4'),
(340, 'drikdoank@gmail.com', 'admin-haiker@gmail.com', '2017-07-04 14:19:21', 'Order dengan kode f330d6910c74', 'Hai Hendrik. Order kamu dengan product kode 4 sebanyak 1 item telah kami terima dan akan kami proses. Terima kasih', '0000-00-00 00:00:00', '2017-07-04 14:19:21', '2017-07-04 14:19:21', '4'),
(341, 'drikdoank@gmail.com', 'admin-haiker@gmail.com', '2017-07-04 14:22:17', 'Order dengan kode 72a3c624a3c4', 'Hai Hendrik. Order kamu dengan product kode 4 sebanyak 1 item telah kami terima dan akan kami proses. Terima kasih', '0000-00-00 00:00:00', '2017-07-04 14:22:17', '2017-07-04 14:22:17', '4'),
(342, 'drikdoank@gmail.com', 'admin-haiker@gmail.com', '2017-07-04 14:22:44', 'Order dengan kode cfffb7ec3f0d', 'Hai Hendrik. Order kamu dengan product kode 4 sebanyak 1 item telah kami terima dan akan kami proses. Terima kasih', '0000-00-00 00:00:00', '2017-07-04 14:22:44', '2017-07-04 14:22:44', '4');

-- --------------------------------------------------------

--
-- Table structure for table `map_country`
--

CREATE TABLE `map_country` (
  `user` varchar(100) DEFAULT NULL,
  `id_aplikasi` int(10) DEFAULT NULL,
  `year` int(4) DEFAULT NULL,
  `country` varchar(150) DEFAULT NULL,
  `count_country` bigint(21) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `map_country_admin`
--

CREATE TABLE `map_country_admin` (
  `year` int(4) DEFAULT NULL,
  `country` varchar(150) DEFAULT NULL,
  `count_country` bigint(21) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `map_region`
--

CREATE TABLE `map_region` (
  `user` varchar(100) DEFAULT NULL,
  `id_aplikasi` int(10) DEFAULT NULL,
  `year` int(4) DEFAULT NULL,
  `regional` varchar(200) DEFAULT NULL,
  `count_region` bigint(21) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `map_region_admin`
--

CREATE TABLE `map_region_admin` (
  `year` int(4) DEFAULT NULL,
  `regional` varchar(200) DEFAULT NULL,
  `count_region` bigint(21) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `map_state`
--

CREATE TABLE `map_state` (
  `user` varchar(100) DEFAULT NULL,
  `id_aplikasi` int(10) DEFAULT NULL,
  `year` int(4) DEFAULT NULL,
  `regional` varchar(200) DEFAULT NULL,
  `count_state` bigint(21) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `map_state_admin`
--

CREATE TABLE `map_state_admin` (
  `year` int(4) DEFAULT NULL,
  `regional` varchar(200) DEFAULT NULL,
  `count_state` bigint(21) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
-- Table structure for table `operator_per_day`
--

CREATE TABLE `operator_per_day` (
  `day` date DEFAULT NULL,
  `tri_count` bigint(21) DEFAULT NULL,
  `telkomsel_count` bigint(21) DEFAULT NULL,
  `indosat_count` bigint(21) DEFAULT NULL,
  `xl_count` bigint(21) DEFAULT NULL,
  `smartfren_count` bigint(21) DEFAULT NULL,
  `other_count` bigint(21) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `operator_per_day_user`
--

CREATE TABLE `operator_per_day_user` (
  `user` varchar(100) DEFAULT NULL,
  `id_aplikasi` int(10) DEFAULT NULL,
  `day` date DEFAULT NULL,
  `telkomsel_count` bigint(21) DEFAULT NULL,
  `tri_count` bigint(21) DEFAULT NULL,
  `indosat_count` bigint(21) DEFAULT NULL,
  `xl_count` bigint(21) DEFAULT NULL,
  `smartfren_count` bigint(21) DEFAULT NULL,
  `other_count` bigint(21) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `operator_per_month`
--

CREATE TABLE `operator_per_month` (
  `month` int(2) DEFAULT NULL,
  `telkomsel_count` bigint(21) DEFAULT NULL,
  `indosat_count` bigint(21) DEFAULT NULL,
  `xl_count` bigint(21) DEFAULT NULL,
  `smartfren_count` bigint(21) DEFAULT NULL,
  `other_count` bigint(21) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `operator_per_month_user`
--

CREATE TABLE `operator_per_month_user` (
  `user` varchar(100) DEFAULT NULL,
  `id_aplikasi` int(10) DEFAULT NULL,
  `month` int(2) DEFAULT NULL,
  `telkomsel_count` bigint(21) DEFAULT NULL,
  `indosat_count` bigint(21) DEFAULT NULL,
  `xl_count` bigint(21) DEFAULT NULL,
  `smartfren_count` bigint(21) DEFAULT NULL,
  `other_count` bigint(21) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `operator_per_year`
--

CREATE TABLE `operator_per_year` (
  `year` int(4) DEFAULT NULL,
  `telkomsel_count` bigint(21) DEFAULT NULL,
  `indosat_count` bigint(21) DEFAULT NULL,
  `xl_count` bigint(21) DEFAULT NULL,
  `smartfren_count` bigint(21) DEFAULT NULL,
  `other_count` bigint(21) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `operator_per_year_user`
--

CREATE TABLE `operator_per_year_user` (
  `user` varchar(100) DEFAULT NULL,
  `id_aplikasi` int(10) DEFAULT NULL,
  `year` int(4) DEFAULT NULL,
  `telkomsel_count` bigint(21) DEFAULT NULL,
  `indosat_count` bigint(21) DEFAULT NULL,
  `xl_count` bigint(21) DEFAULT NULL,
  `smartfren_count` bigint(21) DEFAULT NULL,
  `other_count` bigint(21) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `order`
--

CREATE TABLE `order` (
  `id` int(11) NOT NULL,
  `kode_order` varchar(250) NOT NULL,
  `kode_merchant` varchar(150) NOT NULL,
  `note` varchar(250) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` date NOT NULL,
  `quantity` int(10) NOT NULL,
  `delivery_address` text NOT NULL,
  `amount` decimal(10,0) NOT NULL,
  `user` varchar(100) NOT NULL,
  `kode_product` varchar(100) NOT NULL,
  `status` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `order`
--

INSERT INTO `order` (`id`, `kode_order`, `kode_merchant`, `note`, `created_at`, `updated_at`, `quantity`, `delivery_address`, `amount`, `user`, `kode_product`, `status`) VALUES
(1, '72a3c624a3c4', 'e31a86651925', 'Helm 1', '2017-07-04 07:22:17', '2017-07-04', 1, 'Bogor', '12000', 'drikdoank@gmail.com', '4', 0),
(2, 'cfffb7ec3f0d', '5ab60b70b134', 'Helm 1', '2017-07-04 07:22:44', '2017-07-04', 1, 'Bogor', '12000', 'drikdoank@gmail.com', '4', 0);

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
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `id` int(10) NOT NULL,
  `kode` varchar(100) NOT NULL,
  `name` varchar(200) DEFAULT NULL,
  `description` text,
  `created_at` datetime DEFAULT NULL,
  `picture` text,
  `user` varchar(100) DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `updated_at` date DEFAULT NULL,
  `price` decimal(10,0) NOT NULL,
  `type` varchar(150) NOT NULL,
  `promotion` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `kode`, `name`, `description`, `created_at`, `picture`, `user`, `status`, `updated_at`, `price`, `type`, `promotion`) VALUES
(1, 'A101', 'Helm 2', 'Helm Cantik', NULL, '/upload/images/Best-Deals-Helmet-2.jpg', 'drikdoank@gmail.com', 1, '2017-06-15', '10000', 'helmet', 'best deal'),
(2, 'A102', 'Helm 3', 'Helm 3', '2017-02-13 16:45:41', '/upload/images/Best-Deals-Helmet-3.jpg', 'drikdoank@gmail.com', 1, '2017-06-15', '1500', 'helmet', 'best deal'),
(3, 'A103', 'Helm 4', 'Helm 4', '2017-04-05 11:29:54', '/upload/images/Best-Deals-Helmet-4.jpg', 'drikdoank@gmail.com', 1, '2017-06-15', '2000', 'helmet', 'flash sale'),
(4, 'A104', 'Helm 1', 'hdkfjkdkfj', '2017-06-15 11:47:22', '/upload/images/$2y$10$ZHvyy1Wmv.3q5tQUNVVA4uNsrqF5AP.jJQry1JWxP5kgctvz.QIom', 'drikdoank@gmail.com', 1, '2017-06-15', '12000', 'fhdkjfdkhk', 'fdhkjf');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `birthdate` date NOT NULL,
  `img` varchar(225) COLLATE utf8_unicode_ci NOT NULL,
  `role` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `status` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `plan` int(10) NOT NULL,
  `activated` int(1) DEFAULT NULL,
  `gender` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `domisili` text COLLATE utf8_unicode_ci,
  `status_kawin` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `hp` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `birthdate`, `img`, `role`, `password`, `remember_token`, `created_at`, `updated_at`, `status`, `plan`, `activated`, `gender`, `domisili`, `status_kawin`, `hp`) VALUES
(2, 'Indriyani', 'indri@gmail.com', '0000-00-00', 'user7-128x128.jpg', 'user', '$2y$10$avEe2V5oowSLzBkazFliXOud3urBM9ItlugDteFdXLKKQVTFHqQJK', NULL, '2016-09-23 23:37:50', '2016-09-23 23:37:50', '1', 3, 1, 'Male', 'Bogor', 'Menikah', '03828392'),
(3, 'Hendra', 'hendrik@gmail.com', '0000-00-00', 'user2-160x160.jpg', 'user', 'c3ec0f7b054e729c5a716c8125839829', 'I0IdI1Z05VTSkaC88UIU9inheOBfoCBMSPVSD6s0hN5OnJBlJ4QCfz1Ovixy', '2016-09-26 18:41:32', '2016-09-26 18:41:38', '1', 3, 1, 'Male', 'Bogor', 'Menikah', '03828392'),
(5, 'Anis', 'anis@gmail.com', '0000-00-00', 'user2-160x160.jpg', 'user', '$2y$10$Vx7.Ba16euhEsXShotUEeOwFOdtjsz22V0/QgkHSLNFG8ZFP89.c6', NULL, '2017-09-26 18:42:47', '2016-09-26 18:42:47', '1', 3, 1, 'Male', 'Bogor', 'Menikah', '03828392'),
(6, 'Indriyani', 'indriyani.cs49@gmail.com', '0000-00-00', 'user7-128x128.jpg', 'user', '$2y$10$Z/CL3nOYV5Q.FM0fSHFRtuqEcE/IDzH9eb7ItbSx9/9.tmzY8cJuS', 'ffWrZPzxtOXZqZWZJdZLqWtTNbgRN20Z48TapcnFPA4i0TALvUcpH1DPENoW', '2016-10-02 07:14:30', '2017-01-12 04:24:49', '1', 3, 1, 'Male', 'Bogor', 'Menikah', '03828392'),
(11, 'Admin', 'dashboard@appxoffer.com', '0000-00-00', '/upload/images/profil/11-Hendrik-hhh.jpg', 'admin', '$2a$06$6p5LtvF2r9khqm/31PbyPueMlQWIGJA0RvXR8kGh4h8PnDE1hbT0a', 'K9UkZUR9KDNvBGniIrnIqYPyGhD6YmV6XbZH7rWwiWtPX9kJV7ayX3DsoOq3', '2017-02-12 02:57:38', '2017-04-21 22:45:42', '1', 3, 1, 'Male', 'Bogor', 'Menikah', '03828392'),
(12, 'Hendrik', 'drikdoank@gmail.com', '0000-00-00', '/upload/images/profil/12-Hendrik-2cd5b9399f832b095755404a20e6035d.png', 'admin', '$2y$10$HzPlWN977DjEpzPR//mVseM1Ksg/WBuukAgeURL1MlgyWtclQ/Vy2', 'D0nipw9t1PaSZQe2lJvFC40k50vvN1Tm7NYZCBM89Pq8oVcYzfTpxPIXE40q', '2017-02-13 09:31:28', '2017-08-25 04:22:29', '1', 3, 1, 'Male', 'Bogor', 'Menikah', '03828392'),
(14, 'Fajar', 'fajar@gmail.com', '0000-00-00', '/upload/images/profil/12-Hendrik-2cd5b9399f832b095755404a20e6035d.png', 'user', '$2y$10$QS70NUj9XrkoIF.dOMev.Od7AYTGo5v.hB/s5zPtkV5LBOea.YI/i', NULL, '2017-06-15 08:35:36', '2017-06-15 08:35:36', '1', 0, 1, 'Male', 'Bogor', 'Menikah', '03828392'),
(15, 'Fajar', 'didok49@gmail.com', '0000-00-00', '/upload/images/profil/12-Hendrik-2cd5b9399f832b095755404a20e6035d.png', 'user', '$2y$10$8RHl0Pecu9/WNrmEjxtpHeDuZtBdYcvpABAs3GayGe.ND25ZhE.Ey', NULL, '2017-06-15 08:36:25', '2017-06-15 08:36:25', '1', 0, 1, 'Male', 'Depok', 'Menikah', '03828392'),
(16, 'Fajar', 'didok123@gmail.com', '0000-00-00', '', 'user', '$2y$10$ASuuSIt7HNkPswZHeLYeIultYzgmGWbxeYb5NqYrFIYDQvjBKA4Nu', NULL, '2017-06-15 21:10:27', '2017-06-15 21:10:27', '1', 0, 1, 'male', NULL, 'single', '093283092'),
(17, 'Fajar', 'didok13@gmail.com', '0000-00-00', '', 'user', '$2y$10$sc2X3mRT2BzzTAzFqljmHeKduvV7iLhdWlKo1axK5yYlfTQXeG1ZW', NULL, '2017-06-15 21:18:40', '2017-06-15 21:18:40', '1', 0, 1, 'male', 'Bandung', 'single', '093283092'),
(18, 'Fajar', 'didok2213@gmail.com', '0000-00-00', '', 'user', '$2y$10$65QsvjY17julxMuzGvPBsOviz0HRXS.wZCja8qlvgW9.g/juetgB2', NULL, '2017-06-15 21:20:41', '2017-06-15 21:20:41', '1', 0, NULL, 'male', 'Bandung', 'single', '093283092'),
(19, 'Fajar', 'didok3@gmail.com', '0000-00-00', '', 'user', '$2y$10$Dsz1NPHED7eYwwRhMdQADOVHZUZwkUvbYe/Gp/0C/0Fca8oEWrrIy', NULL, '2017-06-17 01:48:00', '2017-06-17 01:48:00', '1', 0, 1, 'male', 'Bandung', 'single', '093283092'),
(20, 'Fajar', 'dido22k3@gmail.com', '1991-02-01', '', 'user', '$2y$10$qnKr1ZDoVHJdcxnzlWmuZucLgJXzU16Vbx1Fh1od.mYQ81eGosYoe', NULL, '2017-06-17 03:05:29', '2017-06-17 03:05:29', '1', 0, 1, 'male', 'Bandung', 'single', '093283092'),
(21, 'kkjdksd', 'sd,sd,.sd', '2017-01-01', '', 'user', '$2y$10$xZVJc4ksIpr/8kI19ps82uy9cnGHJBH/PE5hQb/vG6Qx43nuQNAiO', NULL, '2017-06-21 08:30:42', '2017-06-21 08:30:42', '1', 0, 1, 'male', 'sdsdsd', 'sd', '093283092'),
(22, 'Hendrik', 'didok496@gmail.com', '1991-02-01', '', 'user', '$2y$10$1bmzS5gPz.DNKbDUBu3yO.5Omglnd/nqUensVoaX.1UA4AQfC5zWS', NULL, '2017-07-02 22:28:21', '2017-07-02 22:28:21', '1', 0, 1, 'male', 'Bandung', 'single', '093283092'),
(23, 'Hendrik', 'didok2496@gmail.com', '1991-02-01', '', 'user', '$2y$10$CDd.jBYa3vyAmEQ7Djk4aupopFxmEVwxO2dr2td5GWbpJ.azVpIf2', NULL, '2017-07-02 22:29:30', '2017-07-02 22:29:30', '1', 0, 1, 'male', 'Bandung', 'single', '093283092');

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
(1, 10, 'e0d6132def4e05d100fd1a7b01b02a480c6aff26c31f9f2cabb414f64722729b', '2017-02-04 06:09:53', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `view_activity_by_type_device_per_day`
--

CREATE TABLE `view_activity_by_type_device_per_day` (
  `day` date DEFAULT NULL,
  `samsung_count` bigint(21) DEFAULT NULL,
  `xiaomi_count` bigint(21) DEFAULT NULL,
  `apple_count` bigint(21) DEFAULT NULL,
  `other_count` bigint(21) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `view_activity_by_type_device_per_day_user`
--

CREATE TABLE `view_activity_by_type_device_per_day_user` (
  `user` varchar(100) DEFAULT NULL,
  `id_aplikasi` int(10) DEFAULT NULL,
  `day` date DEFAULT NULL,
  `samsung_count` bigint(21) DEFAULT NULL,
  `xiaomi_count` bigint(21) DEFAULT NULL,
  `apple_count` bigint(21) DEFAULT NULL,
  `other_count` bigint(21) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `view_activity_by_type_device_per_month`
--

CREATE TABLE `view_activity_by_type_device_per_month` (
  `month` int(2) DEFAULT NULL,
  `samsung_count` bigint(21) DEFAULT NULL,
  `apple_count` bigint(21) DEFAULT NULL,
  `other_count` bigint(21) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `view_activity_by_type_device_per_month_user`
--

CREATE TABLE `view_activity_by_type_device_per_month_user` (
  `user` varchar(100) DEFAULT NULL,
  `id_aplikasi` int(10) DEFAULT NULL,
  `month` int(2) DEFAULT NULL,
  `samsung_count` bigint(21) DEFAULT NULL,
  `apple_count` bigint(21) DEFAULT NULL,
  `other_count` bigint(21) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `view_activity_by_type_device_per_year`
--

CREATE TABLE `view_activity_by_type_device_per_year` (
  `year` int(4) DEFAULT NULL,
  `samsung_count` bigint(21) DEFAULT NULL,
  `apple_count` bigint(21) DEFAULT NULL,
  `other_count` bigint(21) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `view_activity_by_type_device_per_year_user`
--

CREATE TABLE `view_activity_by_type_device_per_year_user` (
  `user` varchar(100) DEFAULT NULL,
  `id_aplikasi` int(10) DEFAULT NULL,
  `year` int(4) DEFAULT NULL,
  `samsung_count` bigint(21) DEFAULT NULL,
  `apple_count` bigint(21) DEFAULT NULL,
  `other_count` bigint(21) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `view_by_click_per_day`
--

CREATE TABLE `view_by_click_per_day` (
  `day` date DEFAULT NULL,
  `login_count` bigint(21) DEFAULT NULL,
  `start_count` bigint(21) DEFAULT NULL,
  `save_count` bigint(21) DEFAULT NULL,
  `close_count` bigint(21) DEFAULT NULL,
  `delete_count` bigint(21) DEFAULT NULL,
  `other_count` bigint(21) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `view_by_click_per_day_user`
--

CREATE TABLE `view_by_click_per_day_user` (
  `user` varchar(100) DEFAULT NULL,
  `id_aplikasi` int(10) DEFAULT NULL,
  `day` date DEFAULT NULL,
  `login_count` bigint(21) DEFAULT NULL,
  `start_count` bigint(21) DEFAULT NULL,
  `save_count` bigint(21) DEFAULT NULL,
  `close_count` bigint(21) DEFAULT NULL,
  `delete_count` bigint(21) DEFAULT NULL,
  `other_count` bigint(21) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `view_by_click_per_month`
--

CREATE TABLE `view_by_click_per_month` (
  `month` int(2) DEFAULT NULL,
  `login_count` bigint(21) DEFAULT NULL,
  `save_count` bigint(21) DEFAULT NULL,
  `close_count` bigint(21) DEFAULT NULL,
  `delete_count` bigint(21) DEFAULT NULL,
  `other_count` bigint(21) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `view_by_click_per_month_user`
--

CREATE TABLE `view_by_click_per_month_user` (
  `user` varchar(100) DEFAULT NULL,
  `id_aplikasi` int(10) DEFAULT NULL,
  `month` int(2) DEFAULT NULL,
  `login_count` bigint(21) DEFAULT NULL,
  `save_count` bigint(21) DEFAULT NULL,
  `close_count` bigint(21) DEFAULT NULL,
  `delete_count` bigint(21) DEFAULT NULL,
  `other_count` bigint(21) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `view_by_click_per_year`
--

CREATE TABLE `view_by_click_per_year` (
  `year` int(4) DEFAULT NULL,
  `login_count` bigint(21) DEFAULT NULL,
  `save_count` bigint(21) DEFAULT NULL,
  `close_count` bigint(21) DEFAULT NULL,
  `delete_count` bigint(21) DEFAULT NULL,
  `other_count` bigint(21) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `view_by_click_per_year_user`
--

CREATE TABLE `view_by_click_per_year_user` (
  `user` varchar(100) DEFAULT NULL,
  `id_aplikasi` int(10) DEFAULT NULL,
  `year` int(4) DEFAULT NULL,
  `login_count` bigint(21) DEFAULT NULL,
  `save_count` bigint(21) DEFAULT NULL,
  `close_count` bigint(21) DEFAULT NULL,
  `delete_count` bigint(21) DEFAULT NULL,
  `other_count` bigint(21) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `view_by_view_page_perday`
--

CREATE TABLE `view_by_view_page_perday` (
  `day` date DEFAULT NULL,
  `main_count` bigint(21) DEFAULT NULL,
  `welcome_count` bigint(21) DEFAULT NULL,
  `registration_count` bigint(21) DEFAULT NULL,
  `shopping_count` bigint(21) DEFAULT NULL,
  `order_count` bigint(21) DEFAULT NULL,
  `other_count` bigint(21) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `view_by_view_page_perday_user`
--

CREATE TABLE `view_by_view_page_perday_user` (
  `user` varchar(100) DEFAULT NULL,
  `id_aplikasi` int(10) DEFAULT NULL,
  `day` date DEFAULT NULL,
  `main_count` bigint(21) DEFAULT NULL,
  `welcome_count` bigint(21) DEFAULT NULL,
  `registration_count` bigint(21) DEFAULT NULL,
  `shopping_count` bigint(21) DEFAULT NULL,
  `order_count` bigint(21) DEFAULT NULL,
  `other_count` bigint(21) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `view_by_view_page_permonth`
--

CREATE TABLE `view_by_view_page_permonth` (
  `month` int(2) DEFAULT NULL,
  `welcome_count` bigint(21) DEFAULT NULL,
  `registration_count` bigint(21) DEFAULT NULL,
  `shopping_count` bigint(21) DEFAULT NULL,
  `order_count` bigint(21) DEFAULT NULL,
  `other_count` bigint(21) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `view_by_view_page_permonth_user`
--

CREATE TABLE `view_by_view_page_permonth_user` (
  `user` varchar(100) DEFAULT NULL,
  `id_aplikasi` int(10) DEFAULT NULL,
  `month` int(2) DEFAULT NULL,
  `welcome_count` bigint(21) DEFAULT NULL,
  `registration_count` bigint(21) DEFAULT NULL,
  `shopping_count` bigint(21) DEFAULT NULL,
  `order_count` bigint(21) DEFAULT NULL,
  `other_count` bigint(21) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `view_by_view_page_peryear`
--

CREATE TABLE `view_by_view_page_peryear` (
  `year` int(4) DEFAULT NULL,
  `welcome_count` bigint(21) DEFAULT NULL,
  `registration_count` bigint(21) DEFAULT NULL,
  `shopping_count` bigint(21) DEFAULT NULL,
  `order_count` bigint(21) DEFAULT NULL,
  `other_count` bigint(21) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `view_install_month_admin`
--

CREATE TABLE `view_install_month_admin` (
  `month` int(2) DEFAULT NULL,
  `count_install` bigint(21) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `view_install_per_day`
--

CREATE TABLE `view_install_per_day` (
  `user` varchar(100) DEFAULT NULL,
  `day` date DEFAULT NULL,
  `count_install` bigint(21) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `view_install_per_day_admin`
--

CREATE TABLE `view_install_per_day_admin` (
  `day` date DEFAULT NULL,
  `count_install` bigint(21) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `view_install_per_month`
--

CREATE TABLE `view_install_per_month` (
  `user` varchar(100) DEFAULT NULL,
  `month` int(2) DEFAULT NULL,
  `count_install` bigint(21) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `view_install_per_year`
--

CREATE TABLE `view_install_per_year` (
  `user` varchar(100) DEFAULT NULL,
  `year` int(4) DEFAULT NULL,
  `count_install` bigint(21) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `view_install_year_admin`
--

CREATE TABLE `view_install_year_admin` (
  `year` int(4) DEFAULT NULL,
  `count_install` bigint(21) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `vloger`
--

CREATE TABLE `vloger` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `user` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `category` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `picture` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `url` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `status` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `vloger`
--

INSERT INTO `vloger` (`id`, `created_at`, `updated_at`, `name`, `user`, `category`, `picture`, `url`, `description`, `status`) VALUES
(1, '2016-11-22 17:00:00', '2016-11-22 20:31:52', 'Makan Bareng Dua', 'drikdoank@gmail.com', 'Life style', 'tes.jpg', 'https://www.youtube.com/embed/XGSy3_Czz8k', '264d277baad16c73231065bcdd020c01', 0),
(2, '2016-11-22 17:00:00', '2017-06-15 08:11:17', 'Ngaji', 'drikdoank@gmail.com', 'Book', '/upload/images/Best-Deals-Helmet-6.jpg', 'https://www.youtube.com/watch?v=8QMC1FwuwxA', '264d277baad16c73231065bcdd020c02', 1),
(3, '2016-11-22 17:00:00', '2017-03-28 21:06:46', 'Gudang App', 'drikdoank@gmail.com', 'Games', '/upload/images/logo.png', 'https://www.youtube.com/embed/XGSy3_Czz8k', '264d277baad16c73231065bcdd020c03', 1),
(4, '2016-11-22 17:00:00', '2016-11-23 02:32:58', 'Karoke', 'drikdoank@gmail.com', 'Music', '""', 'https://www.youtube.com/embed/XGSy3_Czz8k', '264d277baad16c73231065bcdd020c05', 1),
(5, '2016-11-22 20:41:25', '2016-11-22 20:41:25', 'Dorong Kereta', 'drikdoank@gmail.com', 'Games', 'bunga.jpg', 'https://www.youtube.com/embed/XGSy3_Czz8k', '264d277baad16c73231065bcdd020c04', 1),
(6, '2016-12-22 03:09:48', '2016-12-26 23:29:12', 'app', 'indriyani.cs49@gmail.com', 'Food', '/upload/images/pp.jpg', 'https://www.youtube.com/embed/XGSy3_Czz8k', '264d277baad16c73231065bcdd020c00', 1);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
