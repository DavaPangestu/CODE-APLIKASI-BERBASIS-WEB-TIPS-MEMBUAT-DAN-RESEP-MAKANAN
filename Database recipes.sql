-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jan 06, 2025 at 12:57 AM
-- Server version: 8.0.30
-- PHP Version: 8.3.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `adamganteng`
--

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `owner` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` bigint UNSIGNED NOT NULL,
  `recipe_id` bigint UNSIGNED NOT NULL,
  `comment` text COLLATE utf8mb4_unicode_ci,
  `rating` tinyint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ingredients`
--

CREATE TABLE `ingredients` (
  `id` bigint UNSIGNED NOT NULL,
  `recipe_id` bigint UNSIGNED NOT NULL,
  `ingredient` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ingredients`
--

INSERT INTO `ingredients` (`id`, `recipe_id`, `ingredient`, `created_at`, `updated_at`) VALUES
(235, 1, '2 piring nasi putih', NULL, NULL),
(236, 1, '2 butir telur', NULL, NULL),
(237, 1, '2 siung bawang putih', NULL, NULL),
(238, 1, '2 sdm kecap manis', NULL, NULL),
(239, 1, '1 batang daun bawang', NULL, NULL),
(240, 1, 'Minyak goreng', NULL, NULL),
(241, 1, 'Garam dan merica secukupnya', NULL, NULL),
(242, 2, '1 Ekor ayam (1kg)', NULL, NULL),
(243, 2, 'Jeruk nipis, lada bubuk, bawang putih & garam secukupnya', NULL, NULL),
(244, 2, '8-10 Lembar daun jeruk', NULL, NULL),
(245, 2, '250-300 ml Air kelapa/Air biasa', NULL, NULL),
(246, 2, '8-10 bh Cabe merah + Rawit secukupnya', NULL, NULL),
(247, 2, '6 Siung bawang putih (25 gr)', NULL, NULL),
(248, 2, '1 sdm Ketumbar', NULL, NULL),
(249, 2, '5 gram kunyit (2cm)', NULL, NULL),
(250, 2, '20 gram jahe', NULL, NULL),
(251, 2, '3 butir kemiri', NULL, NULL),
(252, 2, '8-10 Siung bawang merah', NULL, NULL),
(253, 2, 'ada bubuk, garam, penyedap secukupnya', NULL, NULL),
(254, 2, 'Margarine secukupnya', NULL, NULL),
(255, 2, '7-9 sdm Kecap manis', NULL, NULL),
(256, 3, '1 kg daging sapi (potong sesuai selera)', NULL, NULL),
(257, 3, '1 liter santan (dari 3-4 butir kelapa)', NULL, NULL),
(258, 3, '5 lembar daun jeruk', NULL, NULL),
(259, 3, '2 lembar daun kunyit (ikat simpul)', NULL, NULL),
(260, 3, '2 batang serai (memarkan)', NULL, NULL),
(261, 3, '2 buah asam kandis', NULL, NULL),
(262, 3, 'Gula merah secukupnya', NULL, NULL),
(263, 3, 'Garam secukupnya', NULL, NULL),
(264, 3, '8 butir bawang merah', NULL, NULL),
(265, 3, '5 siung bawang putih', NULL, NULL),
(266, 3, '10 buah cabai merah', NULL, NULL),
(267, 3, '2 cm jahe', NULL, NULL),
(268, 3, '3 cm lengkuas', NULL, NULL),
(269, 3, '1 sdt ketumbar', NULL, NULL),
(270, 3, '4 butir kemiri', NULL, NULL),
(271, 4, '1 kg sandung lamur [Potong Kotak Kecil]', NULL, NULL),
(272, 4, '100 gr lemak sapi', NULL, NULL),
(273, 4, '2 liter air', NULL, NULL),
(274, 4, 'Beberapa lembar daun jeruk', NULL, NULL),
(275, 4, '2 batang serai', NULL, NULL),
(276, 4, '2 butir kapulaga', NULL, NULL),
(277, 4, '1 buah bunga lawang', NULL, NULL),
(278, 4, '1 batang kayu manis', NULL, NULL),
(279, 4, '1/4 sdt jinten', NULL, NULL),
(280, 4, '4 lembar daun salam', NULL, NULL),
(281, 4, '1 liter susu', NULL, NULL),
(282, 4, '1.5 sdm garam', NULL, NULL),
(283, 4, '1 sdm kaldu jamur', NULL, NULL),
(284, 4, '1/4 sdm merica bubuk', NULL, NULL),
(285, 4, '1/2 sdm gula', NULL, NULL),
(286, 4, '1 batang daun bawang', NULL, NULL),
(287, 4, 'Bawang goreng untuk taburan', NULL, NULL),
(288, 4, '6 siung bawang putih', NULL, NULL),
(289, 4, '11 siung bawang merah', NULL, NULL),
(290, 4, '5 butir kemiri yang sudah dibakar', NULL, NULL),
(291, 4, '1 ruas jempol kunyit', NULL, NULL),
(292, 4, '1 ruas jempol lengkuas', NULL, NULL),
(293, 4, '1 ruas jempol jahe', NULL, NULL),
(294, 4, '6 buah cabai keriting', NULL, NULL),
(295, 4, 'Sedikit minyak dan air', NULL, NULL),
(296, 5, '4 sdm minyak goreng', NULL, NULL),
(297, 5, '2.5 liter air', NULL, NULL),
(298, 5, '1 ekor ayam kampung', NULL, NULL),
(299, 5, '4 butir kapulaga', NULL, NULL),
(300, 5, '6 cm kayu manis', NULL, NULL),
(301, 5, '3 butir cengkih', NULL, NULL),
(302, 5, '2 buah pekak', NULL, NULL),
(303, 5, '1 buah biji pala', NULL, NULL),
(304, 5, '2 sdt garam', NULL, NULL),
(305, 5, '8 siung bawang putih', NULL, NULL),
(306, 5, '12 butir bawang merah', NULL, NULL),
(307, 5, '3 cm jahe', NULL, NULL),
(308, 5, '2 sdt garam', NULL, NULL),
(309, 5, '½ sdt merica', NULL, NULL),
(310, 5, '4 butir kemiri', NULL, NULL),
(311, 5, '3 cm kunyit', NULL, NULL),
(312, 6, '7-8 siung bawang putih', NULL, NULL),
(313, 6, '5 siung bawang merah', NULL, NULL),
(314, 6, '3 butir kemiri', NULL, NULL),
(315, 6, '8 buah cabai keriting merah', NULL, NULL),
(316, 6, '5 buah cabai kering, rendam air hangat', NULL, NULL),
(317, 6, '2 ruas jahe', NULL, NULL),
(318, 6, '½ sdt lada putih utuh atau ¼ sdt lada bubuk', NULL, NULL),
(319, 6, '1 sachet terasi, opsional', NULL, NULL),
(320, 6, 'Minyak secukupnya', NULL, NULL),
(321, 6, 'Kol, iris', NULL, NULL),
(322, 6, 'Tauge', NULL, NULL),
(323, 6, 'Pelengkap: Jeruk limau, cabai rawit hijau, timun, emping, kacang goreng', NULL, NULL),
(324, 7, '15 sdm (sendok makan biasa) atau 150 ml air hangat', NULL, NULL),
(325, 7, '1 sdt ragi instan', NULL, NULL),
(326, 7, '2 sdm gula pasir', NULL, NULL),
(327, 7, '20 sdm (sendok makan biasa) atau 1 1/2 cup atau 200 gr tepung terigu protein tinggi', NULL, NULL),
(328, 7, '1 sdt garam', NULL, NULL),
(329, 7, 'Sosis dan mozzarella secukupnya', NULL, NULL),
(330, 7, 'Bread crumbs / tepung roti secukupnya', NULL, NULL),
(331, 7, 'Catatan: Sebelum dililit pakai adonan, pastikan mozzarella atau sosisnya kering supaya lebih gampang nempel', NULL, NULL),
(332, 7, 'Catatan: Gunakan tusukan yang tebal (saya pakai sumpit)', NULL, NULL),
(333, 8, '4 sdm Minyak Goreng', NULL, NULL),
(334, 8, '4 siung Bawang Putih, dimemarkan & dicincang kasar', NULL, NULL),
(335, 8, '4 buah Bawang Merah, cincang', NULL, NULL),
(336, 8, '1 batang Daun Bawang Prei, dirajang', NULL, NULL),
(337, 8, '2 buah Cabe Merah, dirajang halus', NULL, NULL),
(338, 8, '2 sdt Terasi Goreng', NULL, NULL),
(339, 8, '1/2 sdt Garam', NULL, NULL),
(340, 8, '1/2 sdt Gula Pasir', NULL, NULL),
(341, 8, '1/2 sdt Ladaku Merica Bubuk', NULL, NULL),
(342, 8, '2 sdm Air', NULL, NULL),
(343, 8, '2 butir Telur', NULL, NULL),
(344, 8, '75 g Suwiran Ayam Goreng', NULL, NULL),
(345, 8, '75 g Kol, dirajang kasar', NULL, NULL),
(346, 8, '50 g Taoge', NULL, NULL),
(347, 8, '50 g Sawi Hijau, dirajang', NULL, NULL),
(348, 8, '500 g Nasi', NULL, NULL),
(349, 8, '1 sdm Kecap Manis', NULL, NULL),
(350, 8, '2 sdm Saus Tomat', NULL, NULL),
(351, 8, '1 sdm Kecap Asin', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `instructions`
--

CREATE TABLE `instructions` (
  `id` bigint UNSIGNED NOT NULL,
  `instruction` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `recipe_id` bigint UNSIGNED NOT NULL,
  `step` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `instructions`
--

INSERT INTO `instructions` (`id`, `instruction`, `recipe_id`, `step`, `created_at`, `updated_at`) VALUES
(217, 'Tumis bawang putih hingga harum.', 1, 1, NULL, NULL),
(218, 'Masukkan telur, aduk hingga matang.', 1, 2, NULL, NULL),
(219, 'Tambahkan nasi putih, aduk rata.', 1, 3, NULL, NULL),
(220, 'Tambahkan kecap manis, garam, dan merica.', 1, 4, NULL, NULL),
(221, 'Tambahkan daun bawang, aduk rata, dan sajikan.', 1, 5, NULL, NULL),
(222, 'Tumis bawang putih hingga harum.', 2, 1, NULL, NULL),
(223, 'Masukkan ayam, aduk hingga matang.', 2, 2, NULL, NULL),
(224, 'Tambahkan bumbu lainnya, aduk rata.', 2, 3, NULL, NULL),
(225, 'Masukkan air kelapa, masak hingga meresap.', 2, 4, NULL, NULL),
(226, 'Panggang ayam hingga matang dan harum.', 2, 5, NULL, NULL),
(227, 'Tumis bumbu halus hingga harum.', 3, 1, NULL, NULL),
(228, 'Masukkan daun jeruk, daun kunyit, serai, dan asam kandis. Aduk rata.', 3, 2, NULL, NULL),
(229, 'Tambahkan potongan daging sapi, masak hingga berubah warna.', 3, 3, NULL, NULL),
(230, 'Tuang santan perlahan sambil diaduk agar tidak pecah. Masak dengan api sedang.', 3, 4, NULL, NULL),
(231, 'Aduk perlahan hingga santan mengental dan daging empuk.', 3, 5, NULL, NULL),
(232, 'Kecilkan api, masak hingga rendang kering dan berminyak.', 3, 6, NULL, NULL),
(233, 'Koreksi rasa dengan garam dan gula merah. Sajikan hangat.', 3, 7, NULL, NULL),
(234, 'Sangrai beberapa bumbu (kayu manis, bunga lawang).', 4, 1, NULL, NULL),
(235, 'Haluskan bumbu halus dengan tumbuk atau blender.', 4, 2, NULL, NULL),
(236, 'Potong-potong daging sandung lamur kecil-kecil.', 4, 3, NULL, NULL),
(237, 'Tumis semua bumbu hingga harum.', 4, 4, NULL, NULL),
(238, 'Masukkan air dan presto daging hingga empuk.', 4, 5, NULL, NULL),
(239, 'Buka panci presto dengan aman, lalu masukkan susu dan seasoning.', 4, 6, NULL, NULL),
(240, 'Masak hingga kuah meresap dan matang sempurna.', 4, 7, NULL, NULL),
(241, 'Sajikan dengan topping seperti kentang goreng, tomat, daun bawang, dan bawang goreng.', 4, 8, NULL, NULL),
(242, 'Tambahkan jeruk nipis sebelum dinikmati. Selamat mencoba!', 4, 9, NULL, NULL),
(243, 'Haluskan semua bahan bumbu.', 5, 1, NULL, NULL),
(244, 'Tumis bahan bumbu halus hingga matang.', 5, 2, NULL, NULL),
(245, 'Rebus ayam kampung, masukkan kapulaga, kayu manis, cengkih, pekak, biji pala, dan garam hingga mendidih.', 5, 3, NULL, NULL),
(246, 'Angkat ayam, kemudian masukkan bumbu halus, masak hingga mendidih.', 5, 4, NULL, NULL),
(247, 'Suir-suir ayam.', 5, 5, NULL, NULL),
(248, 'Sajikan dengan ketupat, bihun, perkedel, dan telur rebus.', 5, 6, NULL, NULL),
(249, 'Blender bawang putih, bawang merah, kemiri, lada putih, jahe, terasi, cabai keriting, dan cabai kering dengan sedikit minyak hingga halus lalu tumis hingga harum, sisihkan.', 6, 1, NULL, NULL),
(250, 'Untuk acar, iris bawang merah, masukkan cuka, gula, dan garam, aduk rata.', 6, 2, NULL, NULL),
(251, 'Panaskan minyak, masukkan ati ampela tumis hingga wangi. Kemudian masukkan udang dan cumi, masak hingga air sedikit menyusut.', 6, 3, NULL, NULL),
(252, 'Masukkan telur, aduk, lalu masukkan bawang merah, daun bawang, tomat, dan bumbu halus, aduk rata.', 6, 4, NULL, NULL),
(253, 'Tambahkan kecap manis, kecap ikan, dan bubuk kari, aduk rata.', 6, 5, NULL, NULL),
(254, 'Masukkan air dan kaldu sapi bubuk, aduk kembali lalu tambahkan seledri dan mie, masak selama dua-tiga menit.', 6, 6, NULL, NULL),
(255, 'Masukkan kol dan tauge, masak sebentar.', 6, 7, NULL, NULL),
(256, 'Mie Aceh siap disajikan dengan pelengkap seperti jeruk limau dan emping.', 6, 8, NULL, NULL),
(257, 'Campurkan air hangat, ragi instan, dan gula pasir. Diamkan hingga berbusa.', 7, 1, NULL, NULL),
(258, 'Tambahkan tepung terigu dan garam. Aduk hingga menjadi adonan yang kalis.', 7, 2, NULL, NULL),
(259, 'Potong sosis dan mozzarella sesuai ukuran yang diinginkan. Tusukkan ke tusukan tebal.', 7, 3, NULL, NULL),
(260, 'Lapisi sosis dan mozzarella dengan adonan, lalu gulingkan ke tepung roti.', 7, 4, NULL, NULL),
(261, 'Goreng dalam minyak panas hingga kecokelatan. Angkat dan tiriskan.', 7, 5, NULL, NULL),
(262, 'Sajikan corndog hangat dengan saus favorit Anda.', 7, 6, NULL, NULL),
(263, 'Campur gula, garam, dan Ladaku Merica Bubuk, aduk rata dan sisihkan.', 8, 1, NULL, NULL),
(264, 'Campur kecap manis, saus tomat, dan kecap asin, aduk rata dan sisihkan.', 8, 2, NULL, NULL),
(265, 'Tumis bawang putih hingga kekuningan. Tambahkan bawang merah dan daun bawang prei, tumis hingga harum.', 8, 3, NULL, NULL),
(266, 'Masukkan cabe dan terasi, aduk cepat hingga harum.', 8, 4, NULL, NULL),
(267, 'Masukkan campuran gula, garam, Ladaku Merica Bubuk, dan campuran kecap. Tambahkan telur, orak-arik hingga matang.', 8, 5, NULL, NULL),
(268, 'Masukkan air, suwiran ayam goreng, kol, taoge, dan sawi hijau. Aduk rata.', 8, 6, NULL, NULL),
(269, 'Masukkan nasi, aduk hingga bumbu merata.', 8, 7, NULL, NULL),
(270, 'Sajikan dengan bawang goreng, kerupuk, sambal, dan acar sesuai selera.', 8, 8, NULL, NULL);

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
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(4, '2025_01_05_134429_create_users_table', 2),
(5, '2025_01_05_140918_create_recipes_table', 3),
(6, '2025_01_05_145215_add_name_to_users_table', 4),
(7, '2025_01_05_153403_create_recipes_table', 5),
(8, '2025_01_05_153757_create_recipes_table', 6),
(9, '2025_01_05_193652_create_ingredients_table', 7),
(10, '2025_01_05_193714_create_instructions_table', 7),
(11, '2025_01_05_193733_create_comments_table', 7),
(12, '2025_01_05_210257_create_instructions_table', 8),
(13, '2025_01_05_212128_create_recipes_table', 9),
(14, '2025_01_05_212705_create_instructions_table', 10),
(15, '2025_01_05_212926_create_ingredients_table', 10),
(16, '2025_01_05_215258_create_comments_table', 11),
(17, '2025_01_05_222626_add_video_url_to_recipes_table', 12),
(18, '2025_01_05_225354_create_comments_table', 13),
(19, '2025_01_05_230740_add_rating_to_comments_table', 14),
(20, '2025_01_05_231806_add_rating_to_recipes_table', 15),
(21, '2025_01_05_232722_add_rating_to_comments_table', 16),
(22, '2025_01_05_235005_create_comments_table', 17);

-- --------------------------------------------------------

--
-- Table structure for table `recipes`
--

CREATE TABLE `recipes` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `cook_time` int NOT NULL DEFAULT '0',
  `servings` int NOT NULL DEFAULT '1',
  `url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `video_url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `recipes`
--

INSERT INTO `recipes` (`id`, `name`, `slug`, `image`, `description`, `cook_time`, `servings`, `url`, `created_at`, `updated_at`, `video_url`) VALUES
(1, 'Nasi Goreng Spesial', 'nasi-goreng-spesial', 'nasi-goreng.jpg', 'Waktu masak 30 menit, disajikan untuk 2 porsi.', 30, 2, '/recipe/nasi-goreng-spesial', '2025-01-05 15:47:09', '2025-01-05 15:47:09', 'https://www.youtube.com/embed/zPWE_aINqTU'),
(2, 'Ayam Bakar', 'ayam-bakar', 'ayam-bakar-hitam-manis.jpg', 'Waktu masak 60 menit, disajikan untuk 6 porsi.', 60, 6, '/recipe/ayam-bakar', '2025-01-05 15:47:09', '2025-01-05 15:47:09', 'https://www.youtube.com/embed/YmY1N32ljD0'),
(3, 'Rendang', 'rendang', 'rendang.jpg', 'Waktu masak 60 menit, disajikan untuk 6 porsi.', 60, 6, '/recipe/rendang', '2025-01-05 15:47:09', '2025-01-05 15:47:09', 'https://www.youtube.com/embed/6Z3xN7521jE'),
(4, 'Soto Betawi', 'soto-betawi', 'soto-betawi.jpg', 'Waktu masak 60 menit, disajikan untuk 6 porsi.', 60, 6, '/recipe/soto-betawi', '2025-01-05 15:47:09', '2025-01-05 15:47:09', 'https://www.youtube.com/embed/YkZpAQ0AR0c'),
(5, 'Soto Banjar', 'soto-banjar', 'soto-banjar.jpg', 'Waktu masak 60 menit, disajikan untuk 6 porsi.', 60, 6, '/recipe/soto-banjar', '2025-01-05 15:47:09', '2025-01-05 15:47:09', 'https://www.youtube.com/embed/WDF3cWfU6Uw?start=1'),
(6, 'Mie Aceh', 'mie-aceh', 'mie-aceh.jpg', 'Waktu masak 60 menit, disajikan untuk 6 porsi.', 60, 6, '/recipe/mie-aceh', '2025-01-05 15:47:09', '2025-01-05 15:47:09', 'https://www.youtube.com/embed/OGtn3u23Yjw'),
(7, 'Jajanan Mozarella Corndog', 'corndog', 'corndog.jpg', 'Waktu masak 60 menit, disajikan untuk 6 porsi.', 60, 6, '/recipe/corndog', '2025-01-05 15:47:09', '2025-01-05 15:47:09', 'https://www.youtube.com/embed/FZB6hSsziQI?start=85'),
(8, 'Nasi Goreng Jawa', 'nasi-goreng-jawa', 'nasi-goreng-jawa.jpg', 'Waktu masak 60 menit, disajikan untuk 6 porsi.', 60, 6, '/recipe/nasi-goreng-jawa', '2025-01-05 15:47:09', '2025-01-05 15:47:09', 'https://www.youtube.com/embed/G91-C1IP4DU');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `comments_recipe_id_foreign` (`recipe_id`);

--
-- Indexes for table `ingredients`
--
ALTER TABLE `ingredients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ingredients_recipe_id_foreign` (`recipe_id`);

--
-- Indexes for table `instructions`
--
ALTER TABLE `instructions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `instructions_recipe_id_foreign` (`recipe_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `recipes`
--
ALTER TABLE `recipes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `recipes_slug_unique` (`slug`);

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
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `ingredients`
--
ALTER TABLE `ingredients`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=352;

--
-- AUTO_INCREMENT for table `instructions`
--
ALTER TABLE `instructions`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=271;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `recipes`
--
ALTER TABLE `recipes`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `comments_recipe_id_foreign` FOREIGN KEY (`recipe_id`) REFERENCES `recipes` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `ingredients`
--
ALTER TABLE `ingredients`
  ADD CONSTRAINT `ingredients_recipe_id_foreign` FOREIGN KEY (`recipe_id`) REFERENCES `recipes` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `instructions`
--
ALTER TABLE `instructions`
  ADD CONSTRAINT `instructions_recipe_id_foreign` FOREIGN KEY (`recipe_id`) REFERENCES `recipes` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
