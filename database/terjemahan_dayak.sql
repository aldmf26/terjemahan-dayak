-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 14, 2023 at 04:30 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `terjemahan_dayak`
--

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
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tb_terjemahan`
--

CREATE TABLE `tb_terjemahan` (
  `indonesia` varchar(250) NOT NULL,
  `dayak` varchar(250) NOT NULL,
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tb_terjemahan`
--

INSERT INTO `tb_terjemahan` (`indonesia`, `dayak`, `id`) VALUES
('apa', 'narai', 1),
('aku', 'yaku', 2),
('atas', 'ngambu', 3),
('asam', 'mansem', 4),
('air', 'danum', 5),
('asap', 'ansep', 6),
('api', 'apuy', 7),
('cerita', 'kesah', 8),
('cantik', 'bahalap', 9),
('cepat', 'barake', 10),
('cermin', 'caramin', 11),
('cari', 'gilau', 12),
('enak', 'mangat', 13),
('berapa', 'pire', 28),
('bagaimana', 'kilau kueh', 29),
('besok', 'jewu', 30),
('bawa', 'imbit', 31),
('bawah', 'liwa', 32),
('bangun tidur', 'minsik', 33),
('bangun kesiangan', 'malandau', 34),
('berenang', 'hanangui', 35),
('berdiri', 'mendeng', 36),
('besar', 'hai', 37),
('belum', 'hindai', 38),
('berangkat', 'tulak', 39),
('bernafas', 'manahaseng', 40),
('badan', 'kungan', 41),
('bisa', 'kawa/tahu', 42),
('bergerak', 'hagerak', 43),
('belakang', 'likur', 44),
('bunga', 'kambang', 45),
('bicara', 'hapander', 46),
('berjalan', 'mananjung', 47),
('buah', 'bua', 48),
('berkunjung', 'maja', 49),
('benci', 'muar', 50),
('banyak', 'are', 51),
('membuat', 'mawi', 52),
('baru', 'bahua', 53),
('binatang', 'satwa', 54),
('belakang', 'likur', 55),
('bohong', 'karamput', 56),
('benang', 'lambu', 57),
('berani', 'bahanyi', 58),
('bukan', 'beken', 59),
('bosan', 'peda', 60),
('bunyi', 'mahiau', 61),
('bertemu', 'supa', 62),
('di', 'si', 63),
('dia', 'le', 64),
('dulu', 'batuh', 65),
('di sini', 'si hituh', 66),
('di situ', 'si hite', 67),
('di sana', 'si kanih', 68),
('di samping', 'sisilan', 69),
('di dalam', 'si huang', 70),
('di suruh', 'inyuhu', 71),
('dekat', 'tukep', 72),
('duduk', 'munduk', 73),
('darah', 'daha', 74),
('datang', 'dumah', 75),
('demam', 'haban', 76),
('daun', 'dawen', 77),
('desa', 'lebu', 78),
('duri', 'duhi', 79),
('dingin', 'badarem', 80),
('durian', 'duhian', 81),
('dalam', 'dalem', 82),
('dapat', 'dapet', 83),
('gelap', 'kaput', 84),
('gigi', 'kasingan', 85),
('gigit', 'pangkit', 86),
('gembira', 'kasukaan', 87),
('gatal', 'bagatel', 88),
('gemuk', 'basepot', 89),
('habis', 'lepah', 90),
('hidup', 'belum', 91),
('hari', 'andau', 92),
('istri', 'sawe', 93),
('ikan', 'lauk', 94),
('jauh', 'kejau', 95),
('jika', 'jaka', 96),
('jarum', 'pilus', 97),
('jangan', 'ela', 98),
('jendela', 'lalungkang', 99),
('juga', 'kiya', 100),
('jatuh', 'manjatu', 101),
('kapan', 'hamaparaya', 102),
('kenapa', 'buhen', 103),
('kemarin', 'jalemei', 104),
('kamu', 'ikau', 105),
('kalian', 'ketuh', 106),
('kita', 'itah', 107),
('kiri', 'sambil', 108),
('kanan', 'gintau', 109),
('kecil', 'kurik', 110),
('kembali', 'hampuli', 111),
('kebun', 'kabun', 112),
('kerja', 'gawi', 113),
('keluarga', 'hampari', 114),
('ke mana', 'kankueh', 115),
('ke bawah', 'kan liwa', 116),
('kampung', 'lebu', 117),
('kasihan', 'pansi', 118),
('kata', 'auh', 119),
('kalian', 'ketoh', 120),
('kebakaaran', 'bakehu', 121),
('liur', 'iweh', 122),
('lapar', 'balewu', 123),
('luka', 'bahimang', 124),
('lama', 'tahi', 125),
('lantai', 'lenseh', 126),
('maling', 'manakau', 127),
('membunuh', 'mampatei', 128),
('mati', 'matei', 129),
('memotong', 'manetek', 130),
('membelah', 'manyila', 131),
('membakar', 'mamapui', 132),
('menanam', 'mimbul', 133),
('membeli', 'mamili', 134),
('membuang', 'manganan', 135),
('muntah', 'muta', 136),
('meludah', 'maluja', 137),
('menangis', 'manangis', 138),
('makan', 'kuman', 139),
('minum', 'mihup', 140),
('mudik', 'murik', 141),
('mendengar', 'mahining', 142),
('muda', 'tabela', 143),
('malam', 'hamelam', 144),
('mimpi', 'nupi', 145),
('memanggil', 'mengahu', 146),
('mengobati', 'manantamba', 147),
('malu', 'maheman', 148),
('mencari', 'mangilau', 149),
('malas', 'kuler', 150),
('masuk', 'tame', 151),
('mau', 'maku', 152),
('masak', 'mansak', 153),
('menahan', 'maarit', 154),
('mandi', 'manduy', 155),
('mereka', 'ewen', 156),
('minta', 'baluku', 157),
('meninggal', 'malihi', 158),
('menolong', 'mandahup', 159),
('mau', 'handak', 160),
('memakai', 'mahapa', 161),
('naik', 'mandai', 162),
('nanti', 'kareh', 163),
('nama', 'aran', 164),
('orang', 'uluh', 165),
('orang tua', 'uluh bakas', 166),
('pagi', 'sunsung', 167),
('punya', 'ayum', 168),
('pisau', 'lading', 169),
('pintar', 'harati', 170),
('pemalas', 'panguler', 171),
('padi', 'parei', 172),
('pelit', 'pangisit', 173),
('patah', 'bapela', 174),
('panas', 'balasu', 175),
('pulang', 'buli', 176),
('pergi', 'tulak', 177),
('rakyat', 'hambarayap', 178),
('rumah', 'huma', 179),
('rindu', 'taharu', 180),
('ramai', 'rami', 181),
('saya', 'yaku', 182),
('siapa', 'aweh', 183),
('sore', 'sarak saru/sanja', 184),
('sakit', 'kapahe', 185),
('semua', 'uras', 186),
('sini', 'hituh', 187),
('situ', 'hite', 188),
('sana', 'kanih', 189),
('samping', 'silan', 190),
('setelah', 'limba', 191),
('sendok', 'sasudu', 192),
('suami', 'bane', 193),
('semuanya', 'samandeyah', 194),
('sungai', 'sungei', 195),
('sebentar', 'sanjulu', 196),
('sendiri', 'kabuat', 197),
('seperti', 'kilau', 198),
('sering', 'rancak', 199),
('sekarang', 'utuh', 200),
('sudah', 'jadi', 201),
('tadi', 'tanau', 202),
('turun', 'muhun', 203),
('tumpul', 'kadian', 204),
('takut', 'mikeh', 205),
('tidak', 'jida', 206),
('tua', 'bakas', 207),
('tangga', 'hejan', 208),
('tertawa', 'tatawe', 209),
('tolong', 'duhup', 210),
('tertinggal', 'tapalihi', 211),
('tidur', 'batiruh', 212),
('terkejut', 'tangkejet', 213),
('tanah', 'nyelu', 214),
('terbang', 'tarawang', 215),
('telur', 'hanteloh', 216),
('tempat', 'ukan', 217),
('untuk', 'akan', 218),
('ya', 'iyuh', 219),
('yang', 'ji', 220);

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
(2, 'ald', 'aldi@gmail.com', NULL, '$2y$10$Ee4SoFrV.ka0mi8e2hF7POwhX1t0Plykd.qizbDf84ZH6A1TrdCW.', NULL, '2023-08-14 06:17:19', '2023-08-14 06:17:19');

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
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `tb_terjemahan`
--
ALTER TABLE `tb_terjemahan`
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
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tb_terjemahan`
--
ALTER TABLE `tb_terjemahan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=229;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
