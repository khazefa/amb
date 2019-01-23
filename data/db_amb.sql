-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Jan 23, 2019 at 04:43 PM
-- Server version: 5.7.23
-- PHP Version: 7.2.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_amb`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `adminID` int(4) NOT NULL,
  `adminname` varchar(30) NOT NULL DEFAULT '',
  `adminrealname` varchar(75) DEFAULT NULL,
  `adminpassword` varchar(32) NOT NULL DEFAULT '',
  `adminemail` varchar(40) NOT NULL DEFAULT '',
  `adminkat` varchar(50) DEFAULT NULL,
  `admintipe` varchar(20) NOT NULL,
  `admingroup` varchar(50) NOT NULL,
  `adminrole` text,
  `admindropped` tinyint(1) NOT NULL DEFAULT '0',
  `adminactivated` tinyint(1) NOT NULL DEFAULT '0',
  `updated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `user_media` varchar(15) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`adminID`, `adminname`, `adminrealname`, `adminpassword`, `adminemail`, `adminkat`, `admintipe`, `admingroup`, `adminrole`, `admindropped`, `adminactivated`, `updated`, `user_media`) VALUES
(1, 'galandro', 'Galih Tirta', '7e60bc642fefc11b43792e8745df6c1d', 'galandrocyber@gmail.com', NULL, 'CMS', '', 'admin,adminwebsite,menusub,menucat,kategori,media,bidang,wilayah,tonality,ukuran,warna,tujuan,opini,suratpembaca,scanning,analisascanning,analiscetak,analisistemcetak,sinopsiscetak,tv,online,analistv,periodiktv,sinopsistv,analisol,periodikol,sinopsisol,galeri,flipbook,isudominan,laporan,laptonality', 0, 1, '0000-00-00 00:00:00', ''),
(7, 'ikauntari', 'Ika Meilani Untari', '5497024debf33225daf3cced2725a64f', '', NULL, 'CMS', '', 'admin,adminwebsite,change,kategori,media,bidang,wilayah,tonality,ukuran,warna,tujuan,opini,suratpembaca,scanning,analisascanning,analisaperiodik,analisaharian,edittone,laporan,laptonality', 0, 1, '2015-11-06 02:42:15', ''),
(5, 'ikauntari', 'Ika Meilani Untari', '5497024debf33225daf3cced2725a64f', '', '', 'Website', '', 'kirimkomentar,tampilkomentar,analisaberita,arsipberita,databaseberita,totalberita,nadaberita,bidangberita,narasumberberita', 0, 1, '2015-11-06 02:39:11', ''),
(6, 'iman', 'Iman Maulana', '9ccaf4e36bb19bd8beab2a1e8f1731cf', 'iman@imanmaulana.com', NULL, 'Website', '', 'tampilkomentar,analisaberita,arsipberita,databaseberita,totalberita,nadaberita,bidangberita,narasumberberita', 0, 1, '2015-05-05 06:55:01', ''),
(10, 'shendy', 'Shendy Ariel', 'a341d0eefb6977bf41b4b32b1cc9b540', '', NULL, 'CMS', '', 'change,kategori,media,bidang,wilayah,tonality,ukuran,warna,scanning,analisascanning,analisaperiodik,analisaharian,analisaissue,analisaperiodikartikel,analisaperiodikbidang,analisaperiodiktone,edittone', 0, 1, '2015-04-20 09:18:37', ''),
(11, 'megantoro', 'Megantoro', 'cccc919d78a60f72258a4d37cc192520', '', NULL, 'CMS', '', 'admin,adminwebsite,change,kategori,media,bidang,wilayah,tonality,ukuran,warna,tujuan,opini,suratpembaca,scanning,analisascanning,analisaperiodik,analisaharian,edittone,laporan,laptonality', 0, 1, '2015-10-12 04:01:07', ''),
(12, 'andrean', 'Andrean', 'dd573120e473c889140e34e817895495', '', NULL, 'CMS', '', 'change,scanning,analisascanning,analiscetak,analisistemcetak,sinopsiscetak,laporan,laptonality', 0, 1, '0000-00-00 00:00:00', ''),
(721, 'kelkramatpela', 'Kelurahan Kramat Pela', 'd5d9b3f5f8ff9975c35cdb0a3b3df266', 'kelkramatpela', '', 'Website', 'Kelurahan', 'tampilkomentar,analisaberita,arsipberita,databaseberita,totalberita,nadaberita,bidangberita,narasumberberita', 0, 1, '2016-06-16 03:37:52', ''),
(763, 'satria', 'Satria', '235e8cbdc61f694d398a9e54a1b8e438', 'satria@gmail.com', NULL, 'CMS', '', 'online,analisol,periodikol,sinopsisol,pengunjung', 0, 1, '0000-00-00 00:00:00', ''),
(760, 'sumarsono', 'sumarsono', '49d77744b1a9c777530194b076c34efe', 'sumarsono', '', 'Website', '', 'analisaberita,arsipberita,databaseberita,totalberita,nadaberita,bidangberita,narasumberberita', 0, 1, '2016-12-02 06:42:29', ''),
(761, 'satria', 'satri', '235e8cbdc61f694d398a9e54a1b8e438', 'satria', '', 'Website', '', 'tampilkomentar,analisaberita,arsipberita,databaseberita,totalberita,nadaberita,bidangberita,narasumberberita', 0, 1, '2017-01-05 01:44:31', ''),
(15, 'djakawinarso', 'Djaka Winarso', '2c8383dffafe468086bac06ae9933af7', '', NULL, 'Website', '', 'analisaberita,arsipberita,databaseberita,totalberita,nadaberita,bidangberita,narasumberberita', 0, 1, '2015-04-10 04:13:25', ''),
(16, 'tonopurwantoro', 'Tono Purwantoro', '696212391bc474e6c8818dddbc3c31e4', '', NULL, 'Website', '', 'analisaberita,arsipberita,databaseberita,totalberita,nadaberita,bidangberita,narasumberberita', 0, 1, '2015-04-10 04:15:03', ''),
(17, 'erfi', 'Erfi Puspitasari', 'e93484a47c38a76ff24ff863275e7400', '', NULL, 'Website', '', 'analisaberita,arsipberita,databaseberita,totalberita,nadaberita,bidangberita,narasumberberita', 0, 1, '2015-04-10 04:13:36', ''),
(18, 'shendy', 'Shendy Ariel', 'a341d0eefb6977bf41b4b32b1cc9b540', '', NULL, 'Website', '', 'analisaberita,arsipberita,databaseberita,totalberita,nadaberita,bidangberita,narasumberberita', 0, 1, '2015-04-10 04:14:42', ''),
(19, 'megantoro', 'Megantoro', 'cccc919d78a60f72258a4d37cc192520', '', NULL, 'Website', '', 'analisaberita,arsipberita,databaseberita,totalberita,nadaberita,bidangberita,narasumberberita', 0, 1, '2015-04-10 04:14:19', ''),
(20, 'andrean', 'Andrean', 'dd573120e473c889140e34e817895495', '', NULL, 'Website', '', 'analisaberita,arsipberita,databaseberita,totalberita,nadaberita,bidangberita,narasumberberita', 0, 1, '2015-11-19 05:17:35', ''),
(21, 'riri', 'Riri Sudirman', '86ae0211818cfc618f8c84433a433467', '', NULL, 'Website', '', 'analisaberita,arsipberita,databaseberita,totalberita,nadaberita,bidangberita,narasumberberita', 0, 1, '2015-04-10 04:14:30', ''),
(22, 'trisuryani', 'Tri Suryani', 'b85593ca6abda3f203e0af8239beb228', '', NULL, 'Website', '', 'analisaberita,arsipberita,databaseberita,totalberita,nadaberita,bidangberita,narasumberberita', 0, 1, '2015-04-10 04:15:14', ''),
(765, 'discktrp', 'Dinas Cipta Karya, Tata Ruang dan Pertanahan', 'a859180f73f65167ea2927d4a6f60fee', 'discktrp', '28072016140126', 'Website', '', 'arsipberita,databaseberita,totalberita,nadaberita,bidangberita,narasumberberita', 0, 1, '2017-05-31 00:36:45', ''),
(28, 'tr1', 'TR1', '81dc9bdb52d04dc20036dbd8313ed055', '', NULL, 'CMS', '', 'kategori,media,bidang,wilayah,tonality,ukuran,warna,scanning', 0, 1, '2015-04-20 09:18:50', ''),
(29, 'tr2', 'TR2', '81dc9bdb52d04dc20036dbd8313ed055', '', NULL, 'CMS', '', 'kategori,media,bidang,wilayah,tonality,ukuran,warna,scanning', 0, 1, '2015-04-20 09:18:56', ''),
(30, 'tr3', 'TR3', '81dc9bdb52d04dc20036dbd8313ed055', '', NULL, 'CMS', '', 'kategori,media,bidang,wilayah,tonality,ukuran,warna,scanning', 0, 1, '2015-04-20 09:19:03', ''),
(31, 'tr4', 'TR4', '81dc9bdb52d04dc20036dbd8313ed055', '', NULL, 'CMS', '', 'kategori,media,bidang,wilayah,tonality,ukuran,warna,scanning', 0, 1, '2015-04-20 09:19:10', ''),
(32, 'jakarta', 'Jakarta', '5587cedfcf1b961cc6ce71e6690b6ef1', '', '', 'Website', '', 'arsipberita,databaseberita,totalberita,nadaberita,bidangberita,narasumberberita', 0, 1, '2015-12-22 03:57:26', ''),
(33, 'wagubdki', 'Wakil Gubernur DKI Jakara', '3bbc3311f142f731fa738caca5605212', '', '', 'Website', 'Komentar', 'kirimkomentar,arsipberita,databaseberita,totalberita,nadaberita,bidangberita,narasumberberita', 0, 1, '2015-11-05 03:51:18', ''),
(34, 'sekdadki', 'Sekretaris Daerah', '2d98a5d2a27624160c51b47f344f6f32', '', '', 'Website', 'Komentar', 'kirimkomentar,tampilkomentar,arsipberita,databaseberita,totalberita,nadaberita,bidangberita,narasumberberita', 0, 1, '2015-10-12 06:38:54', ''),
(35, 'asekda', 'Asisten Sekretaris Daerah', '5fe35672228b705d521599cb2e9b49b2', '', NULL, 'Website', 'Komentar', 'kirimkomentar,tampilkomentar,arsipberita,databaseberita,totalberita,nadaberita,bidangberita,narasumberberita', 0, 1, '2015-06-17 03:38:03', ''),
(36, 'aspem', 'Asisten Pemeritahan', 'd4304c02d429f623d7971477fca8469c', '', '', 'Website', 'Komentar', 'kirimkomentar,tampilkomentar,arsipberita,databaseberita,totalberita,nadaberita,bidangberita,narasumberberita', 0, 1, '2015-11-03 09:23:33', ''),
(37, 'asadminkeu', 'Asisten Administrasi dan Keuangan', '6b61175eff5479f38ffa8c5189e5cbc5', '', NULL, 'Website', 'Komentar', 'kirimkomentar,tampilkomentar,arsipberita,databaseberita,totalberita,nadaberita,bidangberita,narasumberberita', 0, 1, '2015-06-17 03:39:29', ''),
(38, 'aspereko', 'Asisten Perekonomian', 'a297d9f5288355d9aa4ac99823533afb', '', '', 'Website', 'Komentar', 'kirimkomentar,tampilkomentar,arsipberita,databaseberita,totalberita,nadaberita,bidangberita,narasumberberita', 0, 1, '2015-10-12 06:37:09', ''),
(39, 'aspemblh', 'Asisten Pembangunan dan Lingkungan Hidup', '5dfab9b2b31ad9e531153ee780d7c2ae', '', '', 'Website', 'Komentar', 'kirimkomentar,tampilkomentar,arsipberita,databaseberita,totalberita,nadaberita,bidangberita,narasumberberita', 0, 1, '2015-10-12 06:37:37', ''),
(40, 'askesmas', 'Asisten Kesejahteraan Masyarakat', '5ced79eb59def966769092b62893a793', '', NULL, 'Website', 'Komentar', 'kirimkomentar,tampilkomentar,arsipberita,databaseberita,totalberita,nadaberita,bidangberita,narasumberberita', 0, 1, '2015-06-17 03:41:11', ''),
(41, 'walkotjp', 'Pemerintah Kota Administrasi Jakarta Pusat', '39aaca32f08efa54e6f716eed82a3fa7', 'walkotjp', '', 'Website', 'Komentar', 'arsipberita,totalberita,nadaberita,bidangberita,narasumberberita', 0, 1, '2016-09-02 03:55:44', ''),
(42, 'walkotjs', 'Pemerintah Kota Administrasi Jakarta Selatan', '174b16b3a177749288517a307cfca498', 'walkotjs', '', 'Website', 'Komentar', 'arsipberita,totalberita,nadaberita,bidangberita,narasumberberita', 0, 1, '2016-09-02 03:55:57', ''),
(43, 'walkotjt', 'Pemerintah Kota Administrasi Jakarta Timur', '08342df7891c84cdbc0ecc07c970bd72', 'walkotjt', '', 'Website', 'Komentar', 'arsipberita,totalberita,nadaberita,bidangberita,narasumberberita', 0, 1, '2016-09-02 03:56:12', ''),
(44, 'walkotjb', 'Pemerintah Kota Administrasi Jakarta Barat', 'e82a63524c86cb231979d7892351fdfb', 'walkotjb', '', 'Website', 'Komentar', 'arsipberita,totalberita,nadaberita,bidangberita,narasumberberita', 0, 1, '2016-09-02 03:55:28', ''),
(45, 'walkotju', 'Pemerintah Kota Administrasi Jakarta Utara', '57252067ad669230ad68c479e351c806', 'walkotju', '', 'Website', 'Komentar', 'arsipberita,totalberita,nadaberita,bidangberita,narasumberberita', 0, 1, '2016-09-02 03:56:27', ''),
(46, 'kepseribu', 'Kabupaten Kota Administrasi Kepulauan Seribu', '4e136c86d2edfdca73b009c83b6f9638', 'kepseribu', '', 'Website', 'Komentar', 'arsipberita,totalberita,nadaberita,bidangberita,narasumberberita', 0, 1, '2016-09-02 05:08:21', ''),
(716, 'kelpelamampang', 'Kelurahan Pela Mampang', '2165941c39be79cdad255559d5263131', 'kelpelamampang', '', 'Website', 'Kelurahan', 'tampilkomentar,arsipberita,databaseberita,totalberita,nadaberita,bidangberita,narasumberberita', 0, 1, '2016-05-25 07:38:35', ''),
(764, 'Raides', 'Raides', 'fcea920f7412b5da7be0cf42b8c93759', '', '', 'Website', '', '', 0, 1, '2017-04-05 08:53:09', ''),
(711, 'adminonline', 'administrator', 'b707f7a24eaeb5df6b452190fc61d7f0', 'admin@cmskdj.com', NULL, 'CMS', '', 'change,online', 0, 1, '0000-00-00 00:00:00', ''),
(52, 'joy', 'Joy', '0d5425118d7aaa57e0f18a9e0d87104b', '', NULL, 'CMS', '', 'scanning,analisascanning,analiscetak,analisistemcetak,sinopsiscetak,galeri,flipbook,isudominan', 0, 1, '0000-00-00 00:00:00', ''),
(710, 'admintv', 'administrator', '60a94fd59d996bb108c7e56319a1c35e', 'admin@cmskdj.com', NULL, 'CMS', '', 'change,tv', 0, 1, '0000-00-00 00:00:00', ''),
(53, 'birotapem', 'Biro Tata Pemerintahan Setda Provinsi DKI Jakarta', '7ef9e4a4333767ff2ec0d28636886ad4', 'birotapem', '28072016135705', 'Website', '', 'arsipberita,totalberita,nadaberita,bidangberita,narasumberberita', 0, 1, '2017-05-31 00:25:48', ''),
(54, 'bplhd', 'Badan Pengelola Lingkungan Hidup Daerah', '80ae5bdd9ac517c9353d10e3cb940221', 'bplhd', '20150702124534', 'Website', '', 'arsipberita,totalberita,nadaberita,bidangberita,narasumberberita', 0, 1, '2016-09-02 04:00:21', ''),
(55, 'diskominfomas', 'Dinas Komunikasi, Informatika dan Statistik', '067f33448371478d964ed917e1181588', '', '20150220091913', 'Website', '', 'tampilkomentar,arsipberita,databaseberita', 0, 1, '2017-05-31 00:43:26', ''),
(56, 'bpbpm', 'Badan Pembinaan BUMD dan Penanaman Modal', '0fd57b4ba6184c420a2612e7575a0f2e', '', '20150702123424', 'Website', '', 'tampilkomentar,arsipberita,databaseberita', 0, 1, '2015-10-12 06:27:11', ''),
(57, 'diskumkmp', 'Dinas Koperasi, UMKM dan Perdagangan', 'a21ed5eab713f8f426a5bdd5af50f433', '', '20150702123445', 'Website', '', 'tampilkomentar,arsipberita,databaseberita', 0, 1, '2015-10-29 06:50:58', ''),
(58, 'disperindgi', 'Dinas Perindustrian dan Energi', '97150b4a3136b4a348a247d6cb14439f', 'disperindgi', '20150220092142', 'Website', '', 'arsipberita,totalberita,nadaberita,bidangberita,narasumberberita', 0, 1, '2017-05-31 00:48:36', ''),
(59, 'diskpkp', 'Dinas Ketahanan Pangan, Kelautan dan Pertanian', '24b2d972a2bdc9b65d62f13e57e712dd', 'diskpkp', '20150220092202', 'Website', '', 'arsipberita,totalberita,nadaberita,bidangberita,narasumberberita', 0, 1, '2017-05-31 00:40:54', ''),
(60, 'disparbud', 'Dinas Pariwisata dan Kebudayaan', '8d9d16274ca12e248c7cde8843e01d0f', 'disparbud', '20150220092220', 'Website', '', 'arsipberita,totalberita,nadaberita,bidangberita,narasumberberita', 0, 1, '2017-07-17 02:46:04', ''),
(61, 'dishubtrans', 'Dinas Perhubungan dan Transportasi', '5498e3ef0216bfacc7d441936230aa7d', 'dishubtrans', '20150220095942', 'Website', '', 'arsipberita,totalberita,nadaberita,bidangberita,narasumberberita', 0, 1, '2017-05-31 00:43:00', ''),
(62, 'disnakertrans', 'Dinas Tenaga Kerja dan Transmigrasi', '72ed774fa1293e91877eafa099b2461f', 'disnakertrans', '28072016135412', 'Website', '', 'arsipberita,totalberita,nadaberita,bidangberita,narasumberberita', 0, 1, '2017-05-31 00:38:27', ''),
(63, 'kpkm', 'Kantor Pengelola Kawasan Monas', '77ccd60c9bd598530581212b5669a25e', '', '20150702123645', 'Website', '', 'tampilkomentar,arsipberita,databaseberita', 0, 1, '2015-09-29 07:43:13', ''),
(64, 'bpkd', 'Badan Pengelola Keuangan Daerah', '33ca2497a03481e7b264f2878be9c11d', 'bpkd', '06012017162841', 'Website', '', 'arsipberita,totalberita,nadaberita,bidangberita,narasumberberita', 0, 1, '2017-07-18 04:38:22', ''),
(65, 'bppbj', 'Badan Pelayanan Pengadaan Barang dan Jas', 'fb03e8f00d9bcd119e36d3b02605eb4e', 'bppbj', '20150702123801', 'Website', '', 'arsipberita,totalberita,nadaberita,bidangberita,narasumberberita', 0, 1, '2016-09-02 03:59:48', ''),
(66, 'dpp', 'Dinas Pelayanan Pajak', '8f35e1bdb16422c6f5758990651b0675', 'dpp', '20150702123824', 'Website', '', 'arsipberita,totalberita,nadaberita,bidangberita,narasumberberita', 0, 1, '2016-09-02 04:24:32', ''),
(67, 'biroakas', 'Biro Administrasi Keuangan dan Aset Setda Provinsi DKI Jakarta', '797f848557bedce286cb909fc29cf4e2', 'biroakas', '28072016135646', 'Website', '', 'arsipberita,totalberita,nadaberita,bidangberita,narasumberberita', 0, 1, '2017-05-31 00:30:07', ''),
(68, 'disbinamarga', 'Dinas Bina Marga', '72026be92d1ec38b8dca695b1e1acbf4', 'disbinamarga', '20150220092401', 'Website', '', 'arsipberita,totalberita,nadaberita,bidangberita,narasumberberita', 0, 1, '2017-05-31 00:34:14', ''),
(69, 'distataair', 'Dinas Sumber Daya Air', '770523b35d9ddc4142f374c4eafa90e2', 'distataair', '02032015073744', 'Website', '', 'arsipberita,totalberita,nadaberita,bidangberita,narasumberberita', 0, 1, '2017-05-31 00:34:29', ''),
(70, 'disperum', 'Dinas Perumahan Rakyat dan Kawasan Permukiman', '26109109e0606b0163b434b32c376aab', 'disperum', '20150220092421', 'Website', '', 'arsipberita,totalberita,nadaberita,bidangberita,narasumberberita', 0, 1, '2017-05-31 00:37:11', ''),
(71, 'dpk', 'Dinas Penataan Kota', '16af7685091b99740264214efcd10d63', 'dpk', '20150702124647', 'Website', '', 'arsipberita,totalberita,nadaberita,bidangberita,narasumberberita', 0, 1, '2016-09-02 04:30:52', ''),
(72, 'distaman', 'Dinas Kehutanan', '828d80360d98ca746f01bea447a97f79', 'distaman', '20150220092446', 'Website', '', 'arsipberita,databaseberita,totalberita,nadaberita,bidangberita,narasumberberita', 0, 1, '2017-05-31 00:47:50', ''),
(74, 'tmsragunan', 'Taman Marga Satwa', '75906c070e5f2aa404d1f822d7be5625', '', '20150702124741', 'Website', '', 'tampilkomentar,arsipberita,databaseberita', 0, 1, '2015-10-12 05:44:53', ''),
(75, 'bpmpkb', 'Badan Pemberdayaan Masyarakat dan Peremp', '7cddd9a46c399cb4d635bc99712282ad', 'bpmpkb', '20150702124811', 'Website', '', 'arsipberita,totalberita,nadaberita,bidangberita,narasumberberita', 0, 1, '2016-09-02 04:00:46', ''),
(76, 'bpad', 'Badan Pengelola Aset Daerah', 'd35b7fd8a6b116d046e74b6869748819', 'bpad', '28072016135516', 'Website', '', 'arsipberita,totalberita,nadaberita,bidangberita,narasumberberita', 0, 1, '2017-05-31 00:52:54', ''),
(77, 'dinsos', 'Dinas Sosial Provinsi DKI Jakarta', '003f8e5a78e78e1fb84fc233d4bf882a', 'dinsos', '20150220092605', 'Website', '', 'arsipberita,totalberita,nadaberita,bidangberita,narasumberberita', 0, 1, '2017-05-31 00:38:09', ''),
(78, 'disdik', 'Dinas Pendidikan Provinsi DKI Jakarta', 'b9510da9bc807fcb6f32a4fcd8ddc87d', 'disdik', '20150220092621', 'Website', '', 'arsipberita,totalberita,nadaberita,bidangberita,narasumberberita', 0, 1, '2017-05-31 00:33:24', ''),
(79, 'dinkes', 'Dinas Kesehatan Provinsi DKI Jakarta', '1a93e5cb6c9998b2c5e413e8489ada9d', 'dinkes', '20150220092638', 'Website', '', 'arsipberita,totalberita,nadaberita,bidangberita,narasumberberita', 0, 1, '2017-07-06 00:49:35', ''),
(80, 'disorda', 'Dinas Pemuda dan Olahraga Provinsi DKI Jakarta', '3ff6e04cce40801b1078b33b2e6b85ca', 'disorda', '20150220092658', 'Website', '', 'arsipberita,totalberita,nadaberita,bidangberita,narasumberberita', 0, 1, '2017-05-31 00:44:57', ''),
(81, 'rsud', 'RSUD', 'b3e1cf10e5bef6592f9f43067bb14a5c', '', '20150702125020', 'Website', '', 'tampilkomentar,arsipberita,databaseberita', 0, 1, '2015-10-15 04:53:28', ''),
(82, 'rskd', 'RSKD', 'f495c5cc80eb6f49539d4ea207337a2f', '', '20150702125032', 'Website', '', 'tampilkomentar,arsipberita,databaseberita', 0, 1, '2015-09-29 08:08:11', ''),
(83, 'birohukum', 'Biro Hukum Setda Provinsi DKI Jakarta', '7615686037d0519c22abc375554e1773', 'birohukum', '28072016135723', 'Website', '', 'arsipberita,totalberita,nadaberita,bidangberita,narasumberberita', 0, 1, '2017-05-31 00:26:01', ''),
(84, 'biroorb', 'Biro Organisasi dan Reformasi Birokrasi Setda Provinsi DKI Jakarta', '3c112916de419810ff91d68ca56024d2', 'biroorb', '28072016135802', 'Website', '', 'arsipberita,totalberita,nadaberita,bidangberita,narasumberberita', 0, 1, '2017-05-31 00:26:27', ''),
(85, 'birokdhkln', 'Biro Kepala Daerah dan Kerjasama Luar Negeri Setda Provinsi DKI Jakarta', 'c177c7d0afd78953fd165f77ec76ad33', 'birokdhkln', '28072016135906', 'Website', '', 'arsipberita,totalberita,nadaberita,bidangberita,narasumberberita', 0, 1, '2017-05-31 00:26:53', ''),
(86, 'dispkp', 'Dinas Penanggulangan Kebakaran dan Penye', 'fd6125ac58e8f338e41b312bc67ca305', 'dispkp', '20150220091820', 'Website', '', 'arsipberita,totalberita,nadaberita,bidangberita,narasumberberita', 0, 1, '2017-05-31 00:37:52', ''),
(87, 'disdukcapil', 'Dinas Kependudukan dan Catatan Sipil', 'cfdb3e16f01e3de95940f26a0de9d724', 'disdukcapil', '20150220091752', 'Website', '', 'arsipberita,totalberita,nadaberita,bidangberita,narasumberberita', 0, 1, '2017-05-31 00:42:45', ''),
(88, 'dprd', 'Sekretariat DPRD Provinsi DKI Jakarta', 'e8187691d0d58fe417e87dd8584a8ea8', 'dprd', '20150220110405', 'Website', '', 'arsipberita,totalberita,nadaberita,bidangberita,narasumberberita', 0, 1, '2017-05-31 00:32:20', ''),
(89, 'bkd', 'Badan Kepegawaian Daerah (BKD)', 'be33c03dd14596fb9eb64c676f25f466', 'bkd', '20150220091934', 'Website', '', 'arsipberita,totalberita,nadaberita,bidangberita,narasumberberita', 0, 1, '2017-05-31 00:56:31', ''),
(90, 'bakesbangpol', 'Badan Kesatuan Bangsa dan Politik (Bangk', 'ff770d52b59255df22921d54a69c1af2', 'bakesbangpol', '20150220091956', 'Website', '', 'arsipberita,totalberita,nadaberita,bidangberita,narasumberberita', 0, 1, '2017-05-31 00:58:09', ''),
(91, 'bapeldik', 'Badan Pendidikan dan Pelatihan', 'cfe3a73bc488e01cd9bf451af19a0085', 'bapeldik', '20150702124333', 'Website', '', 'arsipberita,totalberita,nadaberita,bidangberita,narasumberberita', 0, 1, '2016-09-02 03:59:11', ''),
(92, 'bptsp', 'Dinas Penanaman Modal dan Pelayanan Terpadu Satu Pintu', '9a7f6ef6082e473154a508183f2262f8', 'bptsp', '20150220092009', 'Website', '', 'arsipberita,totalberita,nadaberita,bidangberita,narasumberberita', 0, 1, '2017-05-31 00:44:23', ''),
(93, 'kotadmin', 'Kota Adminitrasi', '1a1f5c7b17e38dcb22b8eceeb91f4487', '', '20150702124403', 'Website', '', 'tampilkomentar,arsipberita,databaseberita', 0, 1, '2015-09-29 08:20:46', ''),
(94, 'kabadmin', 'Kab Adminitrasi', '9443df62ca18f06969a2b29d8bad35c9', '', '20150702124420', 'Website', '', 'tampilkomentar,arsipberita,databaseberita', 0, 1, '2015-09-29 08:21:27', ''),
(95, 'satpolpp', 'Satpol PP Provinsi DKI Jakarta', '3965223bd37756ba93c49c547d565720', 'satpolpp', '20150220092034', 'Website', '', 'arsipberita,totalberita,nadaberita,bidangberita,narasumberberita', 0, 1, '2017-05-31 00:48:53', ''),
(96, 'bpbd', 'Badan Penanggulangan Bencana Daerah (BPB', 'f4b87ee0226ef0b10ec0d78a8b2282ed', 'bpbd', '28072016140006', 'Website', '', 'arsipberita,totalberita,nadaberita,bidangberita,narasumberberita', 0, 1, '2017-05-31 00:57:52', ''),
(97, 'korpri', 'Sekretariat KORPRI Provinsi DKI Jakarta', 'c4d8a1e3d6e94b13a0eb085711d75104', 'korpri', '', 'Website', '', 'arsipberita,totalberita,nadaberita,bidangberita,narasumberberita', 0, 1, '2016-09-05 05:14:27', ''),
(98, 'iikarunia', 'Iikarunia', 'e10adc3949ba59abbe56e057f20f883e', '', NULL, 'CMS', '', 'change,kategori,media,bidang,wilayah,tonality,ukuran,warna,tujuan,scanning,analisascanning,analisaperiodik,analisaharian,edittone', 0, 1, '2015-09-30 04:39:21', ''),
(717, 'iikarunia', 'II Karunia', 'd8578edf8458ce06fbc5bb76a58c5ca4', 'iikarunia', '', 'Website', '', 'tampilkomentar,analisaberita,arsipberita,databaseberita,totalberita,nadaberita,bidangberita,narasumberberita', 0, 1, '2016-05-31 00:56:37', ''),
(100, 'gubernurdki', 'Gubernur DKI Jakarta', 'ec62435ff2145e4f1f6d456d40d2525a', 'gubernurdki', '', 'Website', 'Komentar', 'kirimkomentar,analisaberita,arsipberita,databaseberita,totalberita,nadaberita,bidangberita,narasumberberita', 0, 1, '2017-07-18 03:17:25', ''),
(101, 'depgub', 'Deputi Gubernur DKI', '83c6de06fb53d3cf29c2ee7af1a067fd', '', '', 'Website', '', 'tampilkomentar,analisaberita,arsipberita,databaseberita', 0, 1, '2015-10-12 07:15:18', ''),
(102, 'asdepgub', 'Asisten Deputi Gubernur DKI', '40e55f2663a35e76cb29bd6ab2b0ed88', '', '', 'Website', '', 'tampilkomentar,analisaberita,arsipberita,databaseberita', 0, 1, '2015-10-12 07:14:29', ''),
(103, 'kecpseribuu', 'Kecamatan Pulau Seribu Utara', '0d02c39cc4c246fe15e5f0c389a07400', '', '', 'Website', 'Kecamatan', 'tampilkomentar,analisaberita,arsipberita,databaseberita', 0, 1, '2015-10-13 02:23:41', ''),
(104, 'kecpseribus', 'Kecamatan Pulau Seribu Selatan', '1b04233c234abed3ad8089a2a3b0a52f', '', '', 'Website', 'Kecamatan', 'tampilkomentar,analisaberita,arsipberita,databaseberita', 0, 1, '2015-10-13 02:23:14', ''),
(105, 'kecta', 'Kecamatan Tanah Abang', '47d33d8a1f1cb71257e71d2663bf0a13', '', '', 'Website', 'Kecamatan', 'tampilkomentar,analisaberita,arsipberita,databaseberita', 0, 1, '2015-10-13 02:24:00', ''),
(106, 'kecmtg', 'Kecamatan Menteng', '783c58b14573ecc2a1d92140862013e5', '', '', 'Website', 'Kecamatan', 'tampilkomentar,analisaberita,arsipberita,databaseberita', 0, 1, '2015-10-13 02:23:04', ''),
(107, 'kecsen', 'Kecamatan Senen', 'e119eae06a49105040cb4b6bd529f5e5', '', '', 'Website', 'Kecamatan', 'tampilkomentar,analisaberita,arsipberita,databaseberita', 0, 1, '2015-10-13 02:24:28', ''),
(108, 'kecgbr', 'Kecamatan Gambir', '76a764230c68522b243b2bfad3851977', '', '', 'Website', 'Kecamatan', 'tampilkomentar,analisaberita,arsipberita,databaseberita', 0, 1, '2015-10-13 02:24:57', ''),
(109, 'kecswhbsr', 'Kecamatan Sawah Besar', '1da2c553fd66418daa24052352860804', '', '', 'Website', 'Kecamatan', 'tampilkomentar,analisaberita,arsipberita,databaseberita', 0, 1, '2015-10-13 02:25:45', ''),
(110, 'keckmyrn', 'Kecamatan Kemayoran', '984f6f9f9693db69366e2a1acb0fbab8', '', '', 'Website', 'Kecamatan', 'tampilkomentar,analisaberita,arsipberita,databaseberita', 0, 1, '2015-10-13 02:26:13', ''),
(111, 'keccp', 'Kecamatan Cempaka Putih', '9fd7c5b95b9ad60555060326f2ebe731', '', '', 'Website', 'Kecamatan', 'tampilkomentar,analisaberita,arsipberita,databaseberita', 0, 1, '2015-10-13 02:26:47', ''),
(112, 'kecjb', 'Kecamatan Johar Baru', '7042fc519ec19f8a38e651af30b847f9', '', '', 'Website', 'Kecamatan', 'tampilkomentar,analisaberita,arsipberita,databaseberita', 0, 1, '2015-10-13 02:27:17', ''),
(113, 'kecpdmgn', 'Kecamatan Pademangan', '8d8a4a29018a73e0238aaefcafc6db32', '', '', 'Website', 'Kecamatan', 'tampilkomentar,analisaberita,arsipberita,databaseberita', 0, 1, '2015-10-13 02:27:54', ''),
(114, 'kectjp', 'Kecamatan Tanjung Priok', '7f95ac28a1441bb19325fb9e1627d8dd', '', '', 'Website', 'Kecamatan', 'tampilkomentar,analisaberita,arsipberita,databaseberita', 0, 1, '2015-10-13 02:28:42', ''),
(115, 'keckoja', 'Kecamatan Koja', '5e413ec0463f4bfd4e6f7f827facbcb4', '', '', 'Website', '', '', 0, 1, '2015-10-13 02:29:11', ''),
(116, 'kecclcg', 'Kecamatan Cilincing', '9d8c8384b52bb52fb8c1c570e1d3ad8b', '', '', 'Website', 'Kecamatan', 'tampilkomentar,analisaberita,arsipberita,databaseberita', 0, 1, '2015-10-13 02:29:54', ''),
(117, 'keckg', 'Kecamatan Kelapa Gading', '4913e7e1cacb0511d049ad6fb0583be2', '', '', 'Website', 'Kecamatan', 'tampilkomentar,analisaberita,arsipberita,databaseberita', 0, 1, '2015-10-13 02:30:43', ''),
(118, 'kecpjrgn', 'Kecamatan Penjaringan', '00ab0eaad7d9d170542334b8315cbca7', '', '', 'Website', 'Kecamatan', 'tampilkomentar,analisaberita,arsipberita,databaseberita', 0, 1, '2015-10-13 02:31:14', ''),
(119, 'keccgk', 'Kecamatan Cengkareng', 'efc6a46ddb8d9fa2637289d865b66020', '', '', 'Website', 'Kecamatan', 'tampilkomentar,analisaberita,arsipberita,databaseberita', 0, 1, '2015-10-13 02:32:19', ''),
(120, 'kecgp', 'Kecamatan Grogol Petamburan', 'e2eec1bfd7b55ce477991a61082ba877', '', '', 'Website', 'Kecamatan', 'tampilkomentar,analisaberita,arsipberita,databaseberita', 0, 1, '2015-10-13 02:32:53', ''),
(121, 'kectmbr', 'Kecamatan Tambora', '818bfe768aee7263c60f79775ce8c5a7', '', '', 'Website', 'Kecamatan', 'tampilkomentar,analisaberita,arsipberita,databaseberita', 0, 1, '2015-10-13 02:33:26', ''),
(122, 'kectmnsr', 'Kecamatan Taman Sari', '579bd2233f270f0efa4a2e59eaa3b9ad', '', '', 'Website', 'Kecamatan', 'tampilkomentar,analisaberita,arsipberita,databaseberita', 0, 1, '2015-10-13 02:34:02', ''),
(123, 'kecplm', 'Kecamatan Palmerah', 'e920ed7149d2f6e61e4461841247cc1a', '', '', 'Website', '', 'tampilkomentar,analisaberita,arsipberita,databaseberita', 0, 1, '2015-10-13 02:35:05', ''),
(124, 'keckj', 'Kecamatan Kebon Jeruk', '67d74e58cfa92811c39145362f8f869b', '', '', 'Website', 'Kecamatan', 'tampilkomentar,analisaberita,arsipberita,databaseberita', 0, 1, '2015-10-13 02:35:53', ''),
(125, 'keckem', 'Kecamatan Kembangan', '94a7be3811a5e884e75340bd4419fe4e', '', '', 'Website', 'Kecamatan', 'tampilkomentar,analisaberita,arsipberita,databaseberita', 0, 1, '2015-10-13 02:36:22', ''),
(126, 'keckldrs', 'Kecamatan Kali Deres', 'c35af2d40e9bc961ace97f5936bece42', '', '', 'Website', 'Kecamatan', 'tampilkomentar,analisaberita,arsipberita,databaseberita', 0, 1, '2015-10-13 02:37:12', ''),
(127, 'kectbt', 'Kecamatan Tebet', '93c1658c91a1753602b2f5e7f0b3a4d9', '', '', 'Website', 'Kecamatan', 'tampilkomentar,analisaberita,arsipberita,databaseberita', 0, 1, '2015-10-13 02:38:14', ''),
(128, 'kecstbd', 'Kecamatan Setiabudi', 'f2c994e2a63146d3b30417e462ba9b3e', '', '', 'Website', 'Kecamatan', 'tampilkomentar,analisaberita,arsipberita,databaseberita', 0, 1, '2015-10-13 02:38:44', ''),
(129, 'kecmp', 'Kecamatan Mampang Prapatan', 'd62e975ce5966b8aa510be5db092b555', '', '', 'Website', 'Kecamatan', 'tampilkomentar,analisaberita,arsipberita,databaseberita', 0, 1, '2015-10-13 02:39:17', ''),
(130, 'kecpm', 'Kecamatan Pasar Minggu', '7652f1eb42bf7b4a8b4d5cd844edd3f9', '', '', 'Website', 'Kecamatan', 'tampilkomentar,analisaberita,arsipberita,databaseberita', 0, 1, '2015-10-13 02:39:41', ''),
(131, 'kecclndk', 'Kecamatan Cilandak', 'aef726955da5faba3bf064deac58c9ba', '', '', 'Website', 'Kecamatan', '', 0, 1, '2015-10-13 02:40:58', ''),
(132, 'kecpncrn', 'Kecamatan Pancoran', '89e1ce9255ab908807fb021bed5b7db9', '', '', 'Website', 'Kecamatan', 'tampilkomentar,analisaberita,arsipberita,databaseberita', 0, 1, '2015-10-13 02:41:41', ''),
(133, 'keckl', 'Kecamatan Kebayoran Lama', '709dc12064a5705da8c4f8e1b3c46e0d', '', '', 'Website', 'Kecamatan', 'tampilkomentar,analisaberita,arsipberita,databaseberita', 0, 1, '2015-10-13 02:42:21', ''),
(134, 'keckb', 'Kecamatan Kebayoran Baru', '129a8e73bb0fedf85afb7920d62a5be2', '', '', 'Website', 'Kecamatan', 'tampilkomentar,analisaberita,arsipberita,databaseberita', 0, 1, '2015-10-13 02:42:46', ''),
(135, 'kecpsngrhn', 'Kecamatan Pesanggrahan', '5aeb70a11f2457ffaf7e1190f16d880f', '', '', 'Website', 'Kecamatan', 'tampilkomentar,analisaberita,arsipberita,databaseberita', 0, 1, '2015-10-13 02:43:27', ''),
(136, 'kecjgkrs', 'Kecamatan Jagakarsa', '05141517329f150384aafad3851e3ecf', '', '', 'Website', 'Kecamatan', 'tampilkomentar,analisaberita,arsipberita,databaseberita', 0, 1, '2015-10-13 02:43:55', ''),
(137, 'kecmtrmn', 'Kecamatan Matraman', '8735228de261bde8a55fc1961f573c48', '', '', 'Website', 'Kecamatan', 'tampilkomentar,analisaberita,arsipberita,databaseberita', 0, 1, '2015-10-13 02:44:33', ''),
(138, 'kecjtngr', 'Kecamatan Jatinegara', '7d6a76d775fbd920044f8d3f4f87d5b3', '', '', 'Website', 'Kecamatan', 'tampilkomentar,analisaberita,arsipberita,databaseberita', 0, 1, '2015-10-13 02:45:08', ''),
(139, 'kecds', 'Kecamatan Duren Sawit', '89593e53b2082fb08a77076e508c2b13', '', '', 'Website', 'Kecamatan', 'tampilkomentar,analisaberita,arsipberita,databaseberita', 0, 1, '2015-10-13 02:45:43', ''),
(140, 'kecpg', 'Kecamatan Pulo Gadung', '6792ae949d6fd9e8963e7aef0858566b', '', '', 'Website', 'Kecamatan', 'tampilkomentar,analisaberita,arsipberita,databaseberita', 0, 1, '2015-10-13 02:46:09', ''),
(141, 'kecckg', 'Kecamatan Cakung', '9b5519a6a88423cf74719e35fef1f81e', '', '', 'Website', 'Kecamatan', 'tampilkomentar,analisaberita,arsipberita,databaseberita', 0, 1, '2015-10-13 02:46:46', ''),
(142, 'kecmksr', 'Kecamatan Makasar', '6879ab9b8114f806fe8f3b52973d1d0d', '', '', 'Website', 'Kecamatan', 'tampilkomentar,analisaberita,arsipberita,databaseberita', 0, 1, '2015-10-13 02:47:21', ''),
(143, 'kecpr', 'Kecamatan Pasar Rebo', 'f4466cf59de7830d941cc757565f8a83', '', '', 'Website', 'Kecamatan', 'tampilkomentar,analisaberita,arsipberita,databaseberita', 0, 1, '2015-10-13 02:48:49', ''),
(144, 'keckrjt', 'Kecamatan Kramat Jati', '041a3718578adf120399688522debb39', '', '', 'Website', 'Kecamatan', 'tampilkomentar,analisaberita,arsipberita,databaseberita', 0, 1, '2015-10-13 02:49:14', ''),
(145, 'keccrcs', 'Kecamatan Ciracas', 'eda2ad629e4e4c1863df355bff437539', '', '', 'Website', 'Kecamatan', 'tampilkomentar,analisaberita,arsipberita,databaseberita', 0, 1, '2015-10-13 02:49:55', ''),
(146, 'keccpyg', 'Kecamatan Cipayung', '83603ff6b0052ec8c326e7e83b8417e7', '', '', 'Website', 'Kecamatan', 'tampilkomentar,analisaberita,arsipberita,databaseberita', 0, 1, '2015-10-13 02:50:32', ''),
(147, 'kelkka', 'Kelurahan Kedaung Kali Angke', '739f2f372296b84afb31ca5642e14c79', '', '', 'Website', 'Kelurahan', 'tampilkomentar,analisaberita,arsipberita,databaseberita', 0, 1, '2015-10-13 03:13:37', ''),
(148, 'kelslg', 'Kelurahan Selong', '3aea5f9d0463d591381d1455b837f700', '', '', 'Website', 'Kelurahan', 'tampilkomentar,analisaberita,arsipberita,databaseberita', 0, 1, '2015-10-13 03:16:44', ''),
(149, 'kelkpk', 'Kelurahan Kapuk', 'b99c9d43f57f2fb046c94c94347b458c', '', '', 'Website', 'Kelurahan', 'tampilkomentar,analisaberita,arsipberita,databaseberita', 0, 1, '2015-10-13 03:17:35', ''),
(150, 'kelgng', 'Kelurahan Gunung', 'b25357dc0e6765bd74f998ef1440c3c5', '', '', 'Website', 'Kelurahan', 'tampilkomentar,analisaberita,arsipberita,databaseberita', 0, 1, '2015-10-13 03:18:40', ''),
(151, 'kelgmbr', 'Kelurahan Gambir', '50e0aa31ff0ce6d49c72a1c9e437f292', '', '', 'Website', 'Kelurahan', 'tampilkomentar,analisaberita,arsipberita,databaseberita', 0, 1, '2015-10-13 03:18:45', ''),
(152, 'kelcgkbrt', 'Kelurahan Cengkareng Barat', '5c3646c88883490760216b71ecdd14d0', '', '', 'Website', 'Kelurahan', 'tampilkomentar,analisaberita,arsipberita,databaseberita', 0, 1, '2015-10-13 03:19:40', ''),
(153, 'kelkp', 'Kelurahan Kramat Pela', '74f47c05166335127864eb2a6c6845d0', '', '', 'Website', 'Kelurahan', 'tampilkomentar,analisaberita,arsipberita,databaseberita', 0, 1, '2015-10-13 03:19:43', ''),
(154, 'kelcgktmr', 'Kelurahan Cengkareng Timur', '6d8e1e89066070370ab2b633f70f9c26', '', '', 'Website', 'Kelurahan', 'tampilkomentar,analisaberita,arsipberita,databaseberita', 0, 1, '2015-10-13 03:20:22', ''),
(155, 'kelgu', 'Kelurahan Gandaria Utara', '98dd939552f3850b6f61017a2d4089d8', '', '', 'Website', 'Kelurahan', 'tampilkomentar,analisaberita,arsipberita,databaseberita', 0, 1, '2015-10-13 03:20:27', ''),
(156, 'kelrwb', 'Kelurahan Rawa Buaya', '8eca7d1d3628cbfef9949f192aa1d36e', '', '', 'Website', 'Kelurahan', 'tampilkomentar,analisaberita,arsipberita,databaseberita', 0, 1, '2015-10-13 03:21:08', ''),
(157, 'kelcptu', 'Kelurahan Cipete Utara', 'fee4002a04bbc8c4b2448048bf5a2760', '', '', 'Website', 'Kelurahan', 'tampilkomentar,analisaberita,arsipberita,databaseberita', 0, 1, '2015-10-13 03:38:46', ''),
(158, 'kelkk', 'Kelurahan Kebon Kelapa', '11ad4e762e533d92a95c037514ce240d', '', '', 'Website', '', 'tampilkomentar,analisaberita,arsipberita,databaseberita', 0, 1, '2015-10-13 03:23:31', ''),
(159, 'kelpulo', 'Kelurahan Pulo', '9bf314150deac8a4019cdb01129ad63a', '', '', 'Website', 'Kelurahan', 'tampilkomentar,analisaberita,arsipberita,databaseberita', 0, 1, '2015-10-13 03:22:05', ''),
(160, 'keldk', 'Kelurahan Duri Kosambi', '74d1973fb959e17ab4a184f335732192', '', '', 'Website', 'Kelurahan', 'tampilkomentar,analisaberita,arsipberita,databaseberita', 0, 1, '2015-10-13 03:22:06', ''),
(161, 'keltmg', 'Kelurahan Tomang', '9a84f4e3590c1a87c29edffca8a5d911', '', '', 'Website', 'Kelurahan', 'tampilkomentar,analisaberita,arsipberita,databaseberita', 0, 1, '2015-10-13 03:22:58', ''),
(162, 'kelmlwi', 'Kelurahan Melawai', '19f4952f9f31adce75508c6930fd490d', '', '', 'Website', 'Kelurahan', 'tampilkomentar,analisaberita,arsipberita,databaseberita', 0, 1, '2015-10-13 03:23:29', ''),
(163, 'kelgrl', 'Kelurahan Grogol', '106d0c6221d3143148c885b8a339df65', '', '', 'Website', 'Kelurahan', 'tampilkomentar,analisaberita,arsipberita', 0, 1, '2015-10-13 03:23:49', ''),
(164, 'kelptggn', 'Kelurahan Petogogan', 'b8398035243d68a06dc977ce60443037', '', '', 'Website', 'Kelurahan', 'tampilkomentar,analisaberita,arsipberita,databaseberita', 0, 1, '2015-10-13 03:24:12', ''),
(165, 'keljlr', 'Kelurahan Jelambar', '6b794250c44e48be5a95612dfb72f4a8', '', '', 'Website', 'Kelurahan', 'tampilkomentar,analisaberita,arsipberita,databaseberita', 0, 1, '2015-10-13 03:24:47', ''),
(166, 'kelrb', 'Kelurahan Rawa Barat', 'a56f5eb145e0de404386a8e36e553bd0', '', '', 'Website', 'Kelurahan', 'tampilkomentar,analisaberita,arsipberita,databaseberita', 0, 1, '2015-10-13 03:25:17', ''),
(167, 'keljlrb', 'Kelurahan Jelambar Baru', 'dec41ec40c0633768eee6c09b026d921', '', '', 'Website', 'Kelurahan', 'tampilkomentar,analisaberita,arsipberita,databaseberita', 0, 1, '2015-10-13 03:25:26', ''),
(168, 'kelsnyn', 'Kelurahan Senayan', 'b229bb690d2af8b982621cf16d0f3b96', '', '', 'Website', 'Kelurahan', 'tampilkomentar,analisaberita,arsipberita', 0, 1, '2015-10-13 03:25:58', ''),
(169, 'kelwjyksm', 'Kelurahan Wijaya Kusuma', '200e05fd1c8eaaf0e03cb9183d0b19c4', '', '', 'Website', 'Kelurahan', 'tampilkomentar,analisaberita,arsipberita,databaseberita', 0, 1, '2015-10-13 03:26:46', ''),
(170, 'kelptjs', 'Kelurahan Petojo Selatan', 'fcc6ed95549bc1c2f1fc572f4fc8a889', '', '', 'Website', 'Kelurahan', 'tampilkomentar,analisaberita,arsipberita,databaseberita', 0, 1, '2015-10-13 03:34:56', ''),
(171, 'kelgrgu', 'Kelurahan Grogol Utara', 'a69890d743498c7624f2bdd095d13098', '', '', 'Website', 'Kelurahan', 'tampilkomentar,analisaberita,arsipberita,databaseberita', 0, 1, '2015-10-13 03:27:19', ''),
(172, 'kelgrgs', 'Kelurahan Grogol Selatan', 'b9ad0a44717c4651050402815404a2b9', '', '', 'Website', 'Kelurahan', 'tampilkomentar,analisaberita,databaseberita', 0, 1, '2015-11-02 04:32:22', ''),
(173, 'keltdu', 'Kelurahan Tanjung Duren Utara', 'ad1e3799665f031284b2253e21d7a38d', '', '', 'Website', 'Kelurahan', 'tampilkomentar,analisaberita,arsipberita,databaseberita', 0, 1, '2015-10-13 03:27:56', ''),
(174, 'keldp', 'Kelurahan Duri Pulo', '7ed6b6d897e9b6cfa10978089d6ad9e8', '', '', 'Website', 'Kelurahan', 'tampilkomentar,analisaberita,arsipberita,databaseberita', 0, 1, '2015-10-13 03:28:11', ''),
(175, 'kelklu', 'Kelurahan Kebayoran Lama Utara', 'a90111ba49b52adf816271d7478a1766', '', '', 'Website', 'Kelurahan', 'tampilkomentar,analisaberita,arsipberita,databaseberita', 0, 1, '2015-10-13 03:28:30', ''),
(176, 'keltd', 'Kelurahan Tanjung Duren', 'd78832ced5e4184db7bb2a6724ca3903', '', '', 'Website', 'Kelurahan', 'tampilkomentar,analisaberita,arsipberita,databaseberita', 0, 1, '2015-10-13 03:28:32', ''),
(177, 'kelkls', 'Kelurahan Kebayoran Lama Selatan', 'a90111ba49b52adf816271d7478a1766', '', '', 'Website', 'Kelurahan', 'tampilkomentar,analisaberita,arsipberita,databaseberita', 0, 1, '2015-10-13 03:29:06', ''),
(178, 'keltds', 'Kelurahan Tanjung Duren Selatan', '44a3909b2d0809d6f2e8cb8f7747ef14', '', '', 'Website', 'Kelurahan', 'tampilkomentar,analisaberita,arsipberita,databaseberita', 0, 1, '2015-10-13 03:29:16', ''),
(179, 'kelkml', 'Kelurahan Kamal', '1229110f5fae761755606e7c143dccb8', '', '', 'Website', 'Kelurahan', 'tampilkomentar,analisaberita,arsipberita,databaseberita', 0, 1, '2015-10-13 03:29:54', ''),
(180, 'kelcplr', 'Kelurahan Cipulir', '747b98ba57c96dff64f046912dd47838', '', '', 'Website', 'Kelurahan', 'tampilkomentar,analisaberita,arsipberita,databaseberita', 0, 1, '2015-10-13 03:29:56', ''),
(181, 'kelta', 'Kelurahan Tegal Alur', '8c4b1250d2528774c837db30338a22bf', '', '', 'Website', 'Kelurahan', 'tampilkomentar,analisaberita,arsipberita,databaseberita', 0, 1, '2015-10-13 03:30:31', ''),
(182, 'kelpi', 'Kelurahan Pondok Indah', '6581ac1d2c9e68135e44e12422071751', '', '', 'Website', 'Kelurahan', 'tampilkomentar,analisaberita,arsipberita,databaseberita', 0, 1, '2015-10-13 03:30:39', ''),
(183, 'kelcdng', 'Kelurahan Cideng', 'df407c849ba177c67b556a7eb81a626d', '', '', 'Website', 'Kelurahan', 'tampilkomentar,analisaberita,arsipberita,databaseberita', 0, 1, '2015-10-20 05:02:23', ''),
(184, 'kelpgd', 'Kelurahan Pegadungan', '56ca8762c6dab10d3ff379027c9974a4', '', '', 'Website', 'Kelurahan', 'tampilkomentar,analisaberita,databaseberita', 0, 1, '2015-11-02 05:55:20', ''),
(185, 'kelpp', 'Kelurahan Pondok Pinang', '9dc82e0d3d9200f28de9f4993adda578', '', '', 'Website', 'Kelurahan', 'tampilkomentar,analisaberita,arsipberita,databaseberita', 0, 1, '2015-10-13 03:31:31', ''),
(186, 'kelkds', 'Kelurahan Kalideres', '56ca8762c6dab10d3ff379027c9974a4', '', '', 'Website', 'Kelurahan', 'tampilkomentar,analisaberita,arsipberita,databaseberita', 0, 1, '2015-10-13 03:31:39', ''),
(187, 'kelptju', 'Kelurahan Petojo Utara', '3f455eb98af3542060845319b93e2d9f', '', '', 'Website', 'Kelurahan', 'tampilkomentar,analisaberita,arsipberita,databaseberita', 0, 1, '2015-10-13 03:35:25', ''),
(188, 'kelpu', 'Kelurahan Petukangan Utara', '97d673996cca0c0d8e1a31cb4be9d4a3', '', '', 'Website', 'Kelurahan', 'tampilkomentar,analisaberita,arsipberita,databaseberita', 0, 1, '2015-10-13 03:32:09', ''),
(189, 'kelsmn', 'Kelurahan Semanan', 'e2e4ebbe4973484038c7f01752cb5886', '', '', 'Website', 'Kelurahan', 'tampilkomentar,analisaberita,arsipberita,databaseberita', 0, 1, '2015-10-13 03:32:09', ''),
(190, 'kelbenhil', 'Kelurahan Bendungan Hilir', '23e8207bf102dce51377268acaece56b', '', '', 'Website', 'Kelurahan', 'tampilkomentar,analisaberita,arsipberita,databaseberita', 0, 1, '2015-10-13 03:39:59', ''),
(191, 'keldrk', 'Kelurahan Duri Kepa', '7fefa0f1ed9f246408bae805c3371b6c', '', '', 'Website', 'Kelurahan', 'tampilkomentar,analisaberita,arsipberita,databaseberita', 0, 1, '2015-10-13 03:33:44', ''),
(192, 'kelps', 'Kelurahan Petukangan Selatan', '2fe680b1856329ca8adf96aa92b2b8f6', '', '', 'Website', 'Kelurahan', 'tampilkomentar,analisaberita,arsipberita,databaseberita', 0, 1, '2015-10-13 03:33:47', ''),
(193, 'kelkt', 'Kelurahan Karet Tengsin', '2409c77b1884aa8cf237f0b4a79f2859', '', '', 'Website', 'Kelurahan', 'tampilkomentar,analisaberita,arsipberita,databaseberita', 0, 1, '2015-10-13 03:34:01', ''),
(194, 'kelkdys', 'Kelurahan Kedoya Selatan', '6ed766ba0c9fa5e12c8a85463e66689f', '', '', 'Website', 'Kelurahan', 'tampilkomentar,analisaberita,arsipberita,databaseberita', 0, 1, '2015-10-13 03:34:16', ''),
(195, 'kelkdyu', 'Kelurahan Kedoya Utara', '7b7779cecc014a5f7b62d4ace83227a6', '', '', 'Website', 'Kelurahan', 'tampilkomentar,analisaberita,arsipberita,databaseberita', 0, 1, '2015-10-13 03:35:37', ''),
(196, 'kelkm', 'Kelurahan Kebon Melati', '35e9a1c9cbb0daf4da88241c0552e55c', '', '', 'Website', 'Kelurahan', 'tampilkomentar,analisaberita,arsipberita,databaseberita', 0, 1, '2015-10-13 03:36:03', ''),
(197, 'kelurahanpesanggrahan', 'Kelurahan Pesanggrahan', 'dd46539b3799812c37fb5baba39842a7', 'kelurahanpesanggrahan', '', 'Website', 'Kelurahan', 'tampilkomentar,analisaberita,arsipberita,databaseberita', 0, 1, '2016-02-22 05:07:05', ''),
(198, 'kelkbj', 'Kelurahan Kebon Jeruk', 'e45770ea62c7ace5152d22d0aa63ad82', '', '', 'Website', 'Kelurahan', 'tampilkomentar,analisaberita,arsipberita,databaseberita', 0, 1, '2015-10-13 03:36:35', ''),
(199, 'kelkb', 'Kelurahan Kebon Kacang', 'b67d47f642d932c15a925d013996c921', '', '', 'Website', 'Kelurahan', 'tampilkomentar,analisaberita,arsipberita,databaseberita', 0, 1, '2015-10-13 03:36:41', ''),
(200, 'kelbintaro', 'Kelurahan Bintaro', '2f214e32ab5a210173c33eaf031af9a3', '', '', 'Website', 'Kelurahan', 'tampilkomentar,analisaberita,arsipberita,databaseberita', 0, 1, '2015-10-13 03:37:04', ''),
(201, 'kelsu', 'Kelurahan Sukabumi Utara', 'ec63a0ee6fe2db55da00ad7cb00ee4d8', '', '', 'Website', 'Kelurahan', 'tampilkomentar,analisaberita,arsipberita,databaseberita', 0, 1, '2015-10-13 03:37:11', ''),
(202, 'kelklpu', 'Kelurahan Kelapa Dua', '4f2541e1d6ac28a7bfe1a1691e357018', '', '', 'Website', 'Kelurahan', 'tampilkomentar,analisaberita,databaseberita', 0, 1, '2015-10-13 03:37:46', ''),
(203, 'kelkambal', 'Kelurahan Kampung Bali', 'cb607789a8f79d09bc61de13ec87b181', '', '', 'Website', 'Kelurahan', 'tampilkomentar,analisaberita,arsipberita,databaseberita', 0, 1, '2015-10-13 03:37:47', ''),
(204, 'kelcpts', 'Kelurahan Cipete Selatan', 'b7cbdf38a7eefd7d3121612c6c901463', '', '', 'Website', 'Kelurahan', 'tampilkomentar,analisaberita,arsipberita,databaseberita', 0, 1, '2015-10-13 03:38:08', ''),
(205, 'kelss', 'Kelurahan Sukabumi Selatan', 'a083934d37a7ffa4d872a5c73c4a4bfc', '', '', 'Website', 'Kelurahan', 'tampilkomentar,analisaberita,arsipberita,databaseberita', 0, 1, '2015-10-13 03:38:21', ''),
(206, 'kelpet', 'Kelurahan Petamburan ', '5713d510673d198d09b83801b070195a', '', '', 'Website', 'Kelurahan', 'tampilkomentar,analisaberita,arsipberita,databaseberita', 0, 1, '2015-10-20 05:03:39', ''),
(207, 'kelks', 'Kelurahan Kembangan Selatan', 'b2e6a9432c9469c2f964f545e9dbafaf', '', '', 'Website', 'Kelurahan', 'tampilkomentar,analisaberita,arsipberita,databaseberita', 0, 1, '2015-10-13 03:39:01', ''),
(208, 'Kelgel', 'Kelurahan Gelora', 'fffd3ea100132bb88c64355db99a0b0a', '', '', 'Website', 'Kelurahan', 'tampilkomentar,analisaberita,arsipberita,databaseberita', 0, 1, '2015-10-13 03:39:22', ''),
(209, 'kelku', 'Kelurahan Kembangan Utara', 'efc0e2da54534edf18ddb2a9b80dedae', '', '', 'Website', 'Kelurahan', 'tampilkomentar,analisaberita,arsipberita,databaseberita', 0, 1, '2015-10-13 03:39:34', ''),
(210, 'kelgs', 'Kelurahan Gandaria  Selatan', '90096f4f3d86ede1c5c69563418b992e', '', '', 'Website', '', 'tampilkomentar,analisaberita,arsipberita,databaseberita', 0, 1, '2015-10-13 03:40:04', ''),
(211, 'kelmu', 'Kelurahan Meruya Utara', '412f015facb79e107f017f5a668ab6fe', '', '', 'Website', 'Kelurahan', 'tampilkomentar,analisaberita,arsipberita,databaseberita', 0, 1, '2015-10-13 03:40:07', ''),
(212, 'kelcldkb', 'Kelurahan Cilandak Barat', '6648265510b966c633e34f66f353ad73', '', '', 'Website', 'Kelurahan', 'tampilkomentar,analisaberita,arsipberita,databaseberita', 0, 1, '2015-10-13 03:40:39', ''),
(213, 'kelsrs', 'Kelurahan Serengseng', '9841643d506a711a97e3e8586f34ed5a', '', '', 'Website', 'Kelurahan', 'tampilkomentar,analisaberita,arsipberita,databaseberita', 0, 1, '2015-10-13 03:40:47', ''),
(214, 'kelmtg', 'Kelurahan Menteng', '54c567a0b03bb8d1d2cfc53fab1729b9', '', '', 'Website', 'Kelurahan', 'tampilkomentar,analisaberita,arsipberita,databaseberita', 0, 1, '2015-10-13 03:41:06', ''),
(215, 'kellbbl', 'Kelurahan Lebak Bulus', 'c692a85e79c4441d83c02fc7f7f43513', '', '', 'Website', 'Kelurahan', 'tampilkomentar,analisaberita,arsipberita,databaseberita', 0, 1, '2015-10-13 03:41:11', ''),
(216, 'kljgl', 'Kelurahan Joglo', 'e4bc86a0197161a350a035e1d3c7729f', '', '', 'Website', 'Kelurahan', 'tampilkomentar,analisaberita,arsipberita,databaseberita', 0, 1, '2015-10-13 03:41:17', ''),
(217, 'kelpdklb', 'Kelurahan Pondok Labu', 'c4bd550ebbfecdff7f47530e8abdff58', '', '', 'Website', 'Kelurahan', 'tampilkomentar,analisaberita,arsipberita,databaseberita', 0, 1, '2015-10-13 03:41:43', ''),
(218, 'kelmslt', 'Kelurahan Meruya Selatan', '091675d79c1fdb35e8f3acb79663935d', '', '', 'Website', 'Kelurahan', 'tampilkomentar,analisaberita,arsipberita,databaseberita', 0, 1, '2015-10-15 04:21:16', ''),
(219, 'kelpgsn', 'Kelurahan Pegangsaan ', '73b0deeba77f282dcd3ee2071a3e63b4', '', '', 'Website', 'Kelurahan', 'tampilkomentar,analisaberita,arsipberita,databaseberita', 0, 1, '2015-10-13 03:42:07', ''),
(220, 'kelslp', 'Kelurahan Slipi', '3b829f11b9989d8c3284d287be6fa611', '', '', 'Website', 'Kelurahan', 'tampilkomentar,analisaberita,arsipberita,databaseberita', 0, 1, '2015-10-13 03:42:43', ''),
(221, 'kelpjb', 'Kelurahan Pejaten Barat', '8013e33be2908ae496423855c1a376e1', '', '', 'Website', 'Kelurahan', 'tampilkomentar,analisaberita,arsipberita,databaseberita', 0, 1, '2015-10-13 03:42:55', ''),
(222, 'kelckni', 'Kelurahan Cikini', 'dabe77e09fbe0349c7264551af815df2', '', '', 'Website', 'Kelurahan', 'tampilkomentar,analisaberita,arsipberita,databaseberita', 0, 1, '2015-10-13 03:42:56', ''),
(223, 'kelkbu', 'Kelurahan Kota Bambu Utara', 'dc8cb1febc37182441cc998e4b60c7a8', '', '', 'Website', 'Kelurahan', 'tampilkomentar,analisaberita,arsipberita,databaseberita', 0, 1, '2015-10-13 03:43:16', ''),
(224, 'kelpjt', 'Kelurahan Pejaten Timur', '7d158036a9fb4876bb4ebbfd5806f9e3', '', '', 'Website', 'Kelurahan', 'tampilkomentar,analisaberita,arsipberita,databaseberita', 0, 1, '2015-10-13 03:43:25', ''),
(225, 'kelksr', 'Kelurahan Kebon Sirih', 'adb81fdca3f6b9e5168b195e3a83a839', '', '', 'Website', 'Kelurahan', 'tampilkomentar,analisaberita,arsipberita,databaseberita', 0, 1, '2015-10-15 04:03:18', ''),
(226, 'keljp', 'Kelurahan Jati Pulo', '2f2ea33990576d15dcd8ef88a3c8a98e', '', '', 'Website', 'Kelurahan', 'tampilkomentar,analisaberita,arsipberita,databaseberita', 0, 1, '2015-10-13 03:43:49', ''),
(227, 'kelpsmg', 'Kelurahan Pasar Minggu', '59b8ac3a917ee94085317e89ece41a48', '', '', 'Website', 'Kelurahan', 'tampilkomentar,analisaberita,arsipberita,databaseberita', 0, 1, '2015-10-13 03:44:14', ''),
(228, 'kelplm', 'Kelurahan Palmerah', '481a5b3c34aa48d7b5b898ed2104543a', '', '', 'Website', 'Kelurahan', 'tampilkomentar,analisaberita,arsipberita,databaseberita', 0, 1, '2015-10-13 03:44:26', ''),
(229, 'kelgdnd', 'Kelurahan Gondangdia', 'd42ff383fe1b7602e4018e3b5eea2c49', '', '', 'Website', 'Kelurahan', 'tampilkomentar,analisaberita,arsipberita,databaseberita', 0, 1, '2015-10-13 03:44:34', ''),
(230, 'kelkbgsn', 'Kelurahan Kebagusan', '795369bea001d5e6c2b75241c4892932', '', '', 'Website', 'Kelurahan', 'tampilkomentar,analisaberita,arsipberita,databaseberita', 0, 1, '2015-10-13 03:44:41', ''),
(231, 'kelkms', 'Kelurahan Kemanggisan', 'b1c65415f5eacc17b5f2e622ac2fd52c', '', '', 'Website', 'Kelurahan', 'tampilkomentar,analisaberita,arsipberita,databaseberita', 0, 1, '2015-10-13 03:45:03', ''),
(232, 'keljtpdg', 'Kelurahan Jati Padang', '90990e32a9a308874c04d66990050886', '', '', 'Website', 'Kelurahan', 'tampilkomentar,analisaberita,arsipberita,databaseberita', 0, 1, '2015-10-13 03:45:20', ''),
(233, 'kelsnn', 'Kelurahan Senen', 'fedbd7ebb299325d43c9cd4b89996014', '', '', 'Website', 'Kelurahan', 'tampilkomentar,analisaberita,arsipberita,databaseberita', 0, 1, '2015-10-13 03:45:31', ''),
(234, 'kelkbs', 'Kelurahan Kota Bambu Selatan', '154ff6b4b0ed67a7103c0c80a0c22022', '', '', 'Website', 'Kelurahan', 'tampilkomentar,analisaberita,arsipberita,databaseberita', 0, 1, '2015-10-13 03:45:39', ''),
(235, 'kelcldkt', 'Kelurahan Cilandak Timur', '7b75928ada24de67b60d8438c953c571', '', '', 'Website', '', 'tampilkomentar,analisaberita,arsipberita,databaseberita', 0, 1, '2015-10-13 03:45:56', ''),
(236, 'kelkwtng', 'Kelurahan Kwitang', '581976727b047945cb65eca0e8093a73', '', '', 'Website', 'Kelurahan', 'tampilkomentar,analisaberita,arsipberita,databaseberita', 0, 1, '2015-10-13 03:46:16', ''),
(237, 'kelpns', 'Kelurahan Pinangsia', '8a906a6a9b4886bc36ba900e65fd297b', '', '', 'Website', 'Kelurahan', 'tampilkomentar,analisaberita,arsipberita,databaseberita', 0, 1, '2015-10-13 03:46:23', ''),
(238, 'kelrgnn', 'Kelurahan Ragunan', '6f4e56681d2d67fa835021a1b48c7a01', '', '', 'Website', 'Kelurahan', 'tampilkomentar,analisaberita,arsipberita,databaseberita', 0, 1, '2015-10-13 03:46:28', ''),
(239, 'kelglk', 'Kelurahan Glodok', '719bec1fecda248dcee7044f7be4e8e0', '', '', 'Website', 'Kelurahan', 'tampilkomentar,analisaberita,arsipberita,databaseberita', 0, 1, '2015-10-13 03:47:03', ''),
(240, 'kelknri', 'Kelurahan Kenari', '6a28f7cd5d6b39e774cda5ae5f5944db', '', '', 'Website', 'Kelurahan', 'tampilkomentar,analisaberita,arsipberita,databaseberita', 0, 1, '2015-10-13 03:47:09', ''),
(241, 'kelkgg', 'Kelurahan Keagungan', 'fe7b2e684d42a7cbda4e669de65497bf', '', '', 'Website', 'Kelurahan', 'tampilkomentar,analisaberita,arsipberita,databaseberita', 0, 1, '2015-10-13 03:47:50', ''),
(242, 'kelpsbn', 'Kelurahan Paseban', 'bff70c682633ee9ec8520172e2ed8b4a', '', '', 'Website', 'Kelurahan', 'tampilkomentar,analisaberita,arsipberita,databaseberita', 0, 1, '2015-10-13 03:48:15', ''),
(243, 'kelkkt', 'Kelurahan Krukut', '0a9626a4bab76d25abeb972ae5b0e66a', '', '', 'Website', 'Kelurahan', 'tampilkomentar,analisaberita,arsipberita,databaseberita', 0, 1, '2015-10-13 03:48:24', '');
INSERT INTO `admin` (`adminID`, `adminname`, `adminrealname`, `adminpassword`, `adminemail`, `adminkat`, `admintipe`, `admingroup`, `adminrole`, `admindropped`, `adminactivated`, `updated`, `user_media`) VALUES
(244, 'keltms', 'Kelurahan Taman Sari', 'b076494ea0aadede1a9814871ea740e5', '', '', 'Website', 'Kelurahan', 'tampilkomentar,analisaberita,arsipberita,databaseberita', 0, 1, '2015-10-13 03:49:22', ''),
(245, 'keltjbrt', 'Kelurahan Tanjung Barat', 'ea59139658400b3b8dc34bde3044b056', '', '', 'Website', 'Kelurahan', 'tampilkomentar,analisaberita,arsipberita,databaseberita', 0, 1, '2015-10-13 03:49:10', ''),
(246, 'kelkrmt', 'Kelurahan Kramat', '994268191f48880d46bba909b3a88133', '', '', 'Website', 'Kelurahan', 'tampilkomentar,analisaberita,arsipberita,databaseberita', 0, 1, '2015-10-13 03:49:11', ''),
(247, 'kella', 'Kelurahan Lenteng Agung', 'bb8b2d964f4719ff7305f7d1c942e41b', '', '', 'Website', 'Kelurahan', 'tampilkomentar,analisaberita,arsipberita,databaseberita', 0, 1, '2015-10-13 03:49:55', ''),
(248, 'kelmph', 'Kelurahan Maphar', 'c11e049627297c4206ff9f718a621732', '', '', 'Website', 'Kelurahan', 'tampilkomentar,analisaberita,arsipberita,databaseberita', 0, 1, '2015-10-13 03:50:02', ''),
(249, 'kelbgr', 'Kelurahan Bungur', '9b3276f523218e7630ab1bcf65d78df9', '', '', 'Website', 'Kelurahan', 'tampilkomentar,analisaberita,arsipberita,databaseberita', 0, 1, '2015-10-13 03:50:13', ''),
(250, 'keltgk', 'Kelurahan Tangki', '133907a3dbcbe696b6bc278ec10d9450', '', '', 'Website', 'Kelurahan', 'tampilkomentar,analisaberita,arsipberita,databaseberita', 0, 1, '2015-10-13 03:50:33', ''),
(251, 'keljgkr', 'Kelurahan Jagakrsa', '73ccac0fc9a49f8e8934b82b40593513', '', '', 'Website', 'Kelurahan', 'tampilkomentar,arsipberita,databaseberita', 0, 1, '2015-11-02 04:33:00', ''),
(252, 'kelmgb', 'Kelurahan Mangga Besar', '1bc1fb4bac609d23cce36b56568f088b', '', '', 'Website', 'Kelurahan', 'tampilkomentar,analisaberita,arsipberita,databaseberita', 0, 1, '2015-10-13 03:51:09', ''),
(253, 'kelcpt', 'Kelurahan Cempaka Putih Timur', 'b538c9ac4eae50f280c4520b0932513e', '', '', 'Website', 'Kelurahan', 'tampilkomentar,analisaberita,arsipberita,databaseberita', 0, 1, '2015-10-13 03:51:15', ''),
(254, 'kelcgj', 'Kelurahan Ciganjur', '7ed678ae492f3d67f588323b57e66725', '', '', 'Website', 'Kelurahan', 'tampilkomentar,analisaberita,arsipberita,databaseberita', 0, 1, '2015-10-13 03:51:21', ''),
(255, 'kelts', 'Kelurahan Tanah Sereal', '6e123b052c4f693d16720c2b38a8cd37', '', '', 'Website', 'Kelurahan', 'tampilkomentar,analisaberita,arsipberita,databaseberita', 0, 1, '2015-10-13 03:51:48', ''),
(256, 'kelssw', 'Kelurahan Sawah Besar', '87ae5c64ef046840c73e7e1eb63476da', '', '', 'Website', 'Kelurahan', 'tampilkomentar,analisaberita,arsipberita,databaseberita', 0, 1, '2015-10-13 03:51:57', ''),
(257, 'kelcpb', 'Kelurahan Cempaka Putih Barat', 'ef47e5fa02a15df0dbca65fd68347aa2', '', '', 'Website', 'Kelurahan', 'tampilkomentar,analisaberita,arsipberita,databaseberita', 0, 1, '2015-10-13 03:52:07', ''),
(258, 'keltbr', 'Kelurahan Tambora', '54e99e8acd937fbbb70ad9c648609e6f', '', '', 'Website', 'Kelurahan', 'tampilkomentar,analisaberita,arsipberita,databaseberita', 0, 1, '2015-10-13 03:52:21', ''),
(259, 'kelcpdk', 'Kelurahan Cipedak', '1a7103b72dc93bb48aeac12571aad127', '', '', 'Website', 'Kelurahan', 'tampilkomentar,analisaberita,arsipberita,databaseberita', 0, 1, '2015-10-13 03:52:30', ''),
(260, 'kelrm', 'Kelurahan Roa Malaka', 'a2ddce76d23a8b7a5a0cd4a98373ac7b', '', '', 'Website', 'Kelurahan', 'tampilkomentar,analisaberita,arsipberita,databaseberita', 0, 1, '2015-10-13 03:52:52', ''),
(261, 'kelpkn', 'Kelurahan Pekojan', '75465f6d5ce6b35bb20f2e7ec2d20d74', '', '', 'Website', 'Kelurahan', 'tampilkomentar,analisaberita,arsipberita,databaseberita', 0, 1, '2015-10-13 03:53:36', ''),
(262, 'kelkngb', 'Kelurahan Kuningan Barat', '28c401557e535a2dec5e1041ebe2b1c3', '', '', 'Website', 'Kelurahan', 'tampilkomentar,analisaberita,arsipberita,databaseberita', 0, 1, '2015-10-13 03:53:40', ''),
(263, 'kelrwari', 'Kelurahan Rawasari', 'f1a0d534edf499ce9a101b3c9102c104', '', '', 'Website', 'Kelurahan', 'tampilkomentar,analisaberita,arsipberita,databaseberita', 0, 1, '2015-10-13 03:53:52', ''),
(264, 'keljbtl', 'Kelurahan Jembatan Lima', 'c7f9fade44dfacdbcaae402ef2ccfdf2', '', '', 'Website', 'Kelurahan', 'tampilkomentar,analisaberita,arsipberita,databaseberita', 0, 1, '2015-10-13 03:54:12', ''),
(265, 'kelmpl', 'Kelurahan Mampang Pela', 'b62f8b1011b30297fc0a92d711cc7bbc', '', '', 'Website', 'Kelurahan', 'tampilkomentar,analisaberita,arsipberita,databaseberita', 0, 1, '2015-10-13 03:54:13', ''),
(266, 'kelglr', 'Kelurahan Galur', '90cebe75039be677116fba7074b9d513', '', '', 'Website', 'Kelurahan', 'tampilkomentar,analisaberita,arsipberita,databaseberita', 0, 1, '2015-10-13 03:54:36', ''),
(267, 'kelkrd', 'Kelurahan Krendang', 'f25897a32838ecf342714abe4ffc8343', '', '', 'Website', 'Kelurahan', 'tampilkomentar,analisaberita,arsipberita,databaseberita', 0, 1, '2015-10-13 03:54:45', ''),
(268, 'keldu', 'Kelurahan Duri Utara', '9a0d79dd7812d39113ab8f0455f5524e', '', '', 'Website', 'Kelurahan', 'tampilkomentar,analisaberita,arsipberita,databaseberita', 0, 1, '2015-10-13 03:55:19', ''),
(269, 'kelbgk', 'Kelurahan Bangka', 'd8ff18d1c79d04ee0063f47c1e6ec3e3', '', '', 'Website', 'Kelurahan', 'tampilkomentar,analisaberita,arsipberita,databaseberita', 0, 1, '2015-10-13 03:55:33', ''),
(270, 'kelttgh', 'Kelurahan Tanah Tinggi', '4ed649d360a7776123b026fac9067501', '', '', 'Website', 'Kelurahan', 'tampilkomentar,analisaberita,arsipberita,databaseberita', 0, 1, '2015-10-13 03:55:35', ''),
(271, 'kelds', 'Kelurahan Duri Selatan', '15056c4e2bb4b23007d20ed75b904db9', '', '', 'Website', 'Kelurahan', 'tampilkomentar,analisaberita,arsipberita,databaseberita', 0, 1, '2015-10-13 03:55:49', ''),
(272, 'kelkr', 'Kelurahan Kampung Rawa', '7e715c6eaea754534b2fc60930e4e9b7', '', '', 'Website', 'Kelurahan', 'tampilkomentar,analisaberita,arsipberita,databaseberita', 0, 1, '2015-10-20 05:01:40', ''),
(273, 'kelkla', 'Kelurahan Kalianyar', '9e504669635ff07c02591c52f243ee59', '', '', 'Website', 'Kelurahan', 'tampilkomentar,analisaberita,arsipberita,databaseberita', 0, 1, '2015-10-15 03:44:09', ''),
(274, 'keltpar', 'Kelurahan Tegal Parang', '1cadac21b92afe246d50971494bc5341', '', '', 'Website', 'Kelurahan', 'tampilkomentar,analisaberita,arsipberita', 0, 1, '2015-10-13 03:56:23', ''),
(275, 'keljb', 'Kelurahan Jembatan Besi', '95ed91757e2021c40145458f8f5af1f9', '', '', 'Website', 'Kelurahan', 'tampilkomentar,analisaberita,arsipberita,databaseberita', 0, 1, '2015-10-13 03:56:54', ''),
(276, 'keljhb', 'Kelurahan Johar baru', '9bf46faeb260aabec6b8bf7d9e2a3629', '', '', 'Website', 'Kelurahan', 'tampilkomentar,analisaberita,arsipberita,databaseberita', 0, 1, '2015-10-13 04:27:07', ''),
(277, 'kelklbt', 'Kelurahan Kalibata', '1791b1eed717498a63d20a73c8733643', '', '', 'Website', 'Kelurahan', 'tampilkomentar,analisaberita,arsipberita,databaseberita', 0, 1, '2015-10-13 03:57:02', ''),
(278, 'kelagk', 'Kelurahan Angke', 'a7db1fb663178e31d620e71bb24ca0bc', '', '', 'Website', 'Kelurahan', 'tampilkomentar,analisaberita,arsipberita,databaseberita', 0, 1, '2015-10-13 03:57:33', ''),
(279, 'kelrwjt', 'Kelurahan Rawa Jati', 'b131dd71da19fe6b6e2bb992a3baad83', '', '', 'Website', 'Kelurahan', 'tampilkomentar,arsipberita,databaseberita', 0, 1, '2015-11-02 04:33:37', ''),
(280, 'kelgss', 'Kelurahan Gunung Sahari Selatan', 'be11cf916b90bbc864dcc707438aae33', '', '', 'Website', 'Kelurahan', 'tampilkomentar,analisaberita,arsipberita,databaseberita', 0, 1, '2015-10-13 03:57:56', ''),
(281, 'keldt', 'Kelurahan Duren Tiga', '62226d3516acb2f2bd1e0b504c8ebe8e', '', '', 'Website', 'Kelurahan', 'tampilkomentar,analisaberita,arsipberita,databaseberita', 0, 1, '2015-10-13 03:58:37', ''),
(282, 'kelkmyr', 'Kelurahan Kemayoran ', 'c7169bf51336bea97958c929291630f5', '', '', 'Website', 'Kelurahan', 'tampilkomentar,analisaberita,arsipberita,databaseberita', 0, 1, '2015-10-13 03:58:55', ''),
(283, 'kelckk', 'Kelurahan Cikoko', '83d0db1cca027ec9c21df6a708e15dd0', '', '', 'Website', 'Kelurahan', 'tampilkomentar,analisaberita,arsipberita,databaseberita', 0, 1, '2015-10-13 03:59:02', ''),
(284, 'kelpgdgn', 'Kelurahan Pengadegan', 'd74c5524a952a807779237c10849988d', '', '', 'Website', 'Kelurahan', 'tampilkomentar,analisaberita,arsipberita,databaseberita', 0, 1, '2015-10-13 03:59:35', ''),
(285, 'Kelkksg', 'Kelurahan Kebon Kosong', 'ee394f4ab8434fe2f5754cd61f69b346', '', '', 'Website', 'Kelurahan', 'tampilkomentar,analisaberita,arsipberita,databaseberita', 0, 1, '2015-10-13 03:59:57', ''),
(286, 'kelpncrn', 'Kelurahan Pancoran', '3cca3e6def9c897a22d2fbf5bf56d540', '', '', 'Website', 'Kelurahan', 'tampilkomentar,analisaberita,arsipberita,databaseberita', 0, 1, '2015-10-13 04:00:02', ''),
(287, 'kelhm', 'Kelurahan Harapan Mulya', 'cdf5211de1d93790f080201405fcfefc', '', '', 'Website', 'Kelurahan', 'tampilkomentar,analisaberita,arsipberita,databaseberita', 0, 1, '2015-10-13 04:00:52', ''),
(288, 'keltbtt', 'Kelurahan Tebet Timur', '73f899822b30aee3de97c6c7c878b8b5', '', '', 'Website', 'Kelurahan', 'tampilkomentar,analisaberita,arsipberita,databaseberita', 0, 1, '2015-10-13 04:00:58', ''),
(289, 'keltbtb', 'Kelurahan Tebet Barat', 'a11f30b8c297c658118ecd01131ebecd', '', '', 'Website', 'Kelurahan', 'tampilkomentar,analisaberita,arsipberita,databaseberita', 0, 1, '2015-10-13 04:01:21', ''),
(290, 'kelcb', 'Kelurahan Cempaka Baru', '1e054387cc7395a82db5aa22e73ba119', '', '', 'Website', 'Kelurahan', 'tampilkomentar,analisaberita,arsipberita,databaseberita', 0, 1, '2015-10-13 04:01:46', ''),
(291, 'kelkebonbaru', 'Kelurahan Kebon Baru', '67cc220b042c6bbdcbbb310bc02b79ac', '', '', 'Website', 'Kelurahan', 'tampilkomentar,analisaberita,arsipberita,databaseberita', 0, 1, '2016-03-17 09:16:46', ''),
(292, 'kelbd', 'Kelurahan Bukit Duri', 'facefe168c191e8c6b6d52c27240e545', '', '', 'Website', '', 'tampilkomentar,analisaberita,arsipberita,databaseberita', 0, 1, '2015-10-13 04:02:24', ''),
(293, 'kelup', 'Kelurahan Utan Panjang', 'acbd0ab6022ef77ffec4e188856fa6d5', '', '', 'Website', 'Kelurahan', 'tampilkomentar,analisaberita,arsipberita,databaseberita', 0, 1, '2015-10-13 04:02:31', ''),
(294, 'kelmgri', 'Kelurahan Manggarai', '66fb35e9182d4a9f85a0ba84096e445b', '', '', 'Website', 'Kelurahan', 'tampilkomentar,analisaberita,arsipberita,databaseberita', 0, 1, '2015-10-13 04:03:00', ''),
(295, 'kelsbt', 'Kelurahan Sumur Batu', '4435162b3b290b2080e32938c90d400c', '', '', 'Website', 'Kelurahan', 'tampilkomentar,analisaberita,arsipberita,databaseberita', 0, 1, '2015-10-15 04:38:12', ''),
(296, 'kelmgris', 'Kelurahan Manggarai Selatan', '6fe752c3357f9c92d9b2370157326ebd', '', '', 'Website', 'Kelurahan', 'tampilkomentar,analisaberita,arsipberita,databaseberita', 0, 1, '2015-10-13 04:03:28', ''),
(297, 'kelmntgd', 'Kelurahan Menteng Dalam', 'c49e708777b6f39ae458ce74849b804b', '', '', 'Website', 'Kelurahan', 'tampilkomentar,arsipberita,databaseberita', 0, 1, '2015-11-02 04:34:19', ''),
(298, 'kelsrdg', 'Kelurahan Serdang', 'bcc453666f94902bf7d026052e0c3ada', '', '', 'Website', 'Kelurahan', 'tampilkomentar,analisaberita,arsipberita,databaseberita', 0, 1, '2015-10-13 04:04:06', ''),
(299, 'kelpsrb', 'Kelurahan Pasar Baru', '21b151cc3c843b02375e8c86a32c502d', '', '', 'Website', 'Kelurahan', 'tampilkomentar,analisaberita,arsipberita,databaseberita', 0, 1, '2015-10-13 04:04:45', ''),
(300, 'kelstbd', 'Kelurahan Setiabudi', '41d9619210ccc60505db8f6fee8c9646', '', '', 'Website', 'Kelurahan', 'tampilkomentar,analisaberita,arsipberita,databaseberita', 0, 1, '2015-10-13 04:04:50', ''),
(301, 'kelkrt', 'Kelurahan Karet', '8a7e2f6f15b4f9a5ace8c2768c414134', '', '', 'Website', 'Kelurahan', 'tampilkomentar,analisaberita,arsipberita,databaseberita', 0, 1, '2015-10-13 04:05:19', ''),
(302, 'kelkrts', 'Kelurahan Karet Selatan', 'a68f793d578758051fec222a336ea5f0', '', '', 'Website', 'Kelurahan', 'tampilkomentar,analisaberita,arsipberita,databaseberita', 0, 1, '2015-10-13 04:06:08', ''),
(303, 'kelgsu', 'Kelurahan GunungSahari Utara', '985b3221e3c5091130ab5cd20d50de30', '', '', 'Website', 'Kelurahan', 'tampilkomentar,analisaberita,arsipberita,databaseberita', 0, 1, '2015-10-13 04:06:10', ''),
(304, 'kelkrtk', 'Kelurahan Karet Kuningan', 'a91a531f7a0dd4b12a429bdf86774209', '', '', 'Website', 'Kelurahan', 'tampilkomentar,analisaberita,arsipberita,databaseberita', 0, 1, '2015-10-13 04:06:44', ''),
(305, 'kelmds', 'Kelurahan Mangga Dua Selatan', 'b1f59ba5126b216eecf9562c2de9f5fb', '', '', 'Website', 'Kelurahan', 'tampilkomentar,analisaberita,arsipberita,databaseberita', 0, 1, '2015-10-20 05:01:57', ''),
(306, 'kelkngt', 'Kelurahan Kuningan Timur', 'a91a531f7a0dd4b12a429bdf86774209', '', '', 'Website', 'Kelurahan', 'tampilkomentar,analisaberita,arsipberita,databaseberita', 0, 1, '2015-10-13 04:08:02', ''),
(307, 'kelka', 'Kelurahan Karang Anyar', '0f5be1911becdfb9e6eb1bcac33f2ede', '', '', 'Website', 'Kelurahan', 'tampilkomentar,analisaberita,arsipberita,databaseberita', 0, 1, '2015-10-13 04:08:06', ''),
(308, 'kelkju', 'Kelurahan Koja Utara', '34385493f6afc0710b1f68f39a22989f', '', '', 'Website', 'Kelurahan', 'tampilkomentar,analisaberita,arsipberita,databaseberita', 0, 1, '2015-10-13 04:10:01', ''),
(309, 'kelmntga', 'Kelurahan Menteng Atas', 'bf3078f8e478a05d9a65ceaae9a363bd', '', '', 'Website', 'Kelurahan', 'tampilkomentar,analisaberita,arsipberita,databaseberita', 0, 1, '2015-10-13 04:08:36', ''),
(310, 'kelkrtni', 'Kelurahan Kartini', '890055ce6197e5d838f97475deaab744', '', '', 'Website', 'Kelurahan', 'tampilkomentar,analisaberita,arsipberita,databaseberita', 0, 1, '2015-10-13 04:08:52', ''),
(311, 'kelkjs', 'Kelurahan Koja Selatan', '8605336af2620c5a21ba56416f474036', '', '', 'Website', 'Kelurahan', 'tampilkomentar,analisaberita,arsipberita,databaseberita', 0, 1, '2015-10-13 04:09:18', ''),
(312, 'kelpsrmg', 'Kelurahan Pasar Manggis', 'b58bffd1577c318741bdbdafb58e1df6', '', '', 'Website', 'Kelurahan', 'tampilkomentar,analisaberita,arsipberita,databaseberita', 0, 1, '2015-10-13 04:09:49', ''),
(313, 'kelgntr', 'Kelurahan Guntur', 'b11f130618467f21192085bffea1a24c', '', '', 'Website', '', 'tampilkomentar,analisaberita,arsipberita,databaseberita', 0, 1, '2015-10-13 04:10:59', ''),
(314, 'kelrbu', 'Kelurahan Rawa Badak Utara', 'eb2f29e330d3acb1988ca117c9d7b1c2', '', '', 'Website', 'Kelurahan', 'tampilkomentar,analisaberita,arsipberita,databaseberita', 0, 1, '2015-10-13 04:10:42', ''),
(315, 'kelrbs', 'Kelurahan Rawa Badak Selatan', '6ae0f84e6d3fb781328f615ad1169d65', '', '', 'Website', 'Kelurahan', 'tampilkomentar,analisaberita,arsipberita,databaseberita', 0, 1, '2015-10-13 04:11:18', ''),
(316, 'keltu', 'Kelurahan Tugu Utara', 'fdb9545b2a278bb7ec2b16202712330a', '', '', 'Website', 'Kelurahan', 'tampilkomentar,analisaberita,arsipberita,databaseberita', 0, 1, '2015-10-13 04:11:52', ''),
(317, 'kelplklp', 'Kelurahan Pulau Kelapa', '44d4e112859f02f73d9e799c2d17efe2', '', '', 'Website', 'Kelurahan', 'tampilkomentar,analisaberita,arsipberita,databaseberita', 0, 1, '2015-10-13 04:12:28', ''),
(318, 'keltgs', 'Kelurahan Tugu Selatan', '9b75b8f18d1b16d2a382fa9cb8982533', '', '', 'Website', 'Kelurahan', 'tampilkomentar,analisaberita,arsipberita,databaseberita', 0, 1, '2015-10-13 04:12:41', ''),
(319, 'kelpsbr', 'Kelurahan Pisangan Baru', '1bd6f87532ace21e5280b610021f9870', '', '', 'Website', 'Kelurahan', 'tampilkomentar,analisaberita,arsipberita,databaseberita', 0, 1, '2015-10-13 04:12:49', ''),
(320, 'kelplhrp', 'Kelurahan Pulau Harapan', '9e7d8bd3a651cad01c2ee9a28a35562e', '', '', 'Website', '', 'tampilkomentar,analisaberita,arsipberita,databaseberita', 0, 1, '2015-10-13 04:13:07', ''),
(321, 'kellga', 'Kelurahan Lagoa', 'ee22913ac13bee5b7800570f3dd89a08', '', '', 'Website', 'Kelurahan', 'tampilkomentar,analisaberita,arsipberita,databaseberita', 0, 1, '2015-10-13 04:13:22', ''),
(322, 'kelpluj', 'Kelurahan Pulau Untung Jawa', '26bbd22c7be0670f137892358e706a7e', '', '', 'Website', '', '', 0, 1, '2015-10-13 04:14:00', ''),
(323, 'Keluks', 'Kelurahan Utan Kayu Selatan', '8c618f8b39cc501185c5aa5e4c901dfb', '', '', 'Website', 'Kelurahan', 'tampilkomentar,analisaberita,arsipberita,databaseberita', 0, 1, '2015-10-13 04:14:04', ''),
(324, 'kelkgb', 'Kelurahan Kelapa Gading Barat', '70b71ae222be779f8be5b4cc192d8c76', '', '', 'Website', 'Kelurahan', 'tampilkomentar,analisaberita,arsipberita,databaseberita', 0, 1, '2015-10-13 04:14:07', ''),
(325, 'kelkgt', 'Kelurahan Kelapa Gading Timur', '09a45f9d4aa79cc441b223d4059646a8', '', '', 'Website', 'Kelurahan', '', 0, 1, '2015-10-13 04:14:37', ''),
(326, 'kelpltd', 'Kelurahan Pulau Tidung', 'a65fad06e662aee99a9b9092122e1438', '', '', 'Website', 'Kelurahan', 'tampilkomentar,analisaberita,arsipberita,databaseberita', 0, 1, '2015-10-13 04:14:41', ''),
(327, 'keluku', 'Kelurahan Utan Kayu Utara', '3d0004788a8d491e429d37e39948cb5e', '', '', 'Website', 'Kelurahan', 'tampilkomentar,analisaberita,arsipberita,databaseberita', 0, 1, '2015-10-13 04:14:48', ''),
(328, 'kelplpr', 'Kelurahan Pulau Pari', '11b45e09a54170673fe477281026deda', '', '', 'Website', '', 'tampilkomentar,analisaberita,arsipberita,databaseberita', 0, 1, '2015-10-13 04:15:13', ''),
(329, 'kelpd', 'Kelurahan Pegangsaan Dua', 'c02b8ee42dc58ef1ce3a5fb21212c69c', '', '', 'Website', 'Kelurahan', 'tampilkomentar,analisaberita,arsipberita,databaseberita', 0, 1, '2015-10-13 04:15:16', ''),
(330, 'kelkmns', 'Kelurahan Kayu Manis', '6b663b29d68a908f05c693ec3a4cdc0b', '', '', 'Website', 'Kelurahan', 'tampilkomentar,analisaberita,arsipberita,databaseberita', 0, 1, '2015-10-13 04:15:39', ''),
(331, 'kelplpgg', 'Kelurahan Pulau Panggang', 'c2b1fcae2e5777e348aed888b012f0f5', '', '', 'Website', 'Kelurahan', 'tampilkomentar,analisaberita,arsipberita,databaseberita', 0, 1, '2015-10-13 04:15:43', ''),
(332, 'keltjp', 'Kelurahan Tanjung Priok', '2d094d16ceaf2d5a97230954d1a77a02', '', '', 'Website', 'Kelurahan', 'tampilkomentar,analisaberita,arsipberita,databaseberita', 0, 1, '2015-10-13 04:15:55', ''),
(333, 'kelpm', 'Kelurahan Pal Meriam', 'b4d9c44918ccd83ee50f185a2280314e', '', '', 'Website', 'Kelurahan', 'tampilkomentar,analisaberita,arsipberita,databaseberita', 0, 1, '2015-10-13 04:16:23', ''),
(334, 'kelkbw', 'Kelurahan Kebon Bawang', '57d4e68fcb1c41a06400028e5eae005d', '', '', 'Website', 'Kelurahan', 'tampilkomentar,analisaberita,arsipberita,databaseberita', 0, 1, '2015-10-15 03:43:50', ''),
(335, 'kelkmggs', 'Kelurahan Kebon Manggis', 'fc84bcfe72e22eca754d0cd3171cd10a', '', '', 'Website', 'Kelurahan', 'tampilkomentar,analisaberita,arsipberita,databaseberita', 0, 1, '2015-10-13 04:17:18', ''),
(336, 'kelkpt', 'Kelurahan Kayu Putih', 'adb81fdca3f6b9e5168b195e3a83a839', '', '', 'Website', 'Kelurahan', 'tampilkomentar,analisaberita,arsipberita,databaseberita', 0, 1, '2015-10-15 04:03:31', ''),
(337, 'keljt', 'Kelurahan Jati', '2611abc80bab4d4d8580fb165385a8a5', '', '', 'Website', 'Kelurahan', 'tampilkomentar,analisaberita,arsipberita,databaseberita', 0, 1, '2015-10-13 04:19:48', ''),
(338, 'kelrwmngn', 'Kelurahan Rawamangun', 'd6b0a073f47b13aff7c82a6431d214e3', '', '', 'Website', 'Kelurahan', 'tampilkomentar,analisaberita,arsipberita,databaseberita', 0, 1, '2015-10-13 04:20:41', ''),
(339, 'kelpt', 'Kelurahan Pisangan Timur', 'b07e5a254df0afc844f5385df238a930', '', '', 'Website', 'Kelurahan', 'tampilkomentar,analisaberita,arsipberita,databaseberita', 0, 1, '2015-10-13 04:22:07', ''),
(340, 'kelcpng', 'Kelurahan Cipinang', 'ba57c5f29aa8ea286e91a384d5835c45', '', '', 'Website', 'Kelurahan', 'tampilkomentar,analisaberita,arsipberita,databaseberita', 0, 1, '2015-10-13 04:22:56', ''),
(341, 'keljkm', 'Kelurahan Jatinegara Kaum', 'cf3613d44601c4e83192a95b2c9b60f8', '', '', 'Website', 'Kelurahan', 'tampilkomentar,analisaberita,arsipberita,databaseberita', 0, 1, '2015-10-13 04:24:07', ''),
(342, 'kelplgdg', 'Kelurahan Pulogadung', '03e371803a1a372f2837cff04c0972c8', '', '', 'Website', 'Kelurahan', 'tampilkomentar,analisaberita,arsipberita,databaseberita', 0, 1, '2015-10-13 04:25:39', ''),
(343, 'kelckng', 'Kelurahan Cakung', '2cffc85cdf3b730ab3b0402add1f8ef0', '', '', 'Website', 'Kelurahan', 'tampilkomentar,analisaberita,arsipberita,databaseberita', 0, 1, '2015-10-13 04:26:08', ''),
(344, 'kelmst', 'Kelurahan Menteng Mester', 'd455f09bacfe5f44148d4d1a5d9d2e47', '', '', 'Website', 'Kelurahan', 'tampilkomentar,analisaberita,arsipberita,databaseberita', 0, 1, '2015-10-15 04:21:48', ''),
(345, 'kelckngt', 'Kelurahan Cakung Timur', '29c59627aae09ef9ffe8eac5e38eb36e', '', '', 'Website', 'Kelurahan', 'tampilkomentar,analisaberita,arsipberita,databaseberita', 0, 1, '2015-10-13 04:26:39', ''),
(346, 'kelkmly', 'Kelurahan Kampung Melayu', '58888d969554c0ef2ed86e4727193573', '', '', 'Website', 'Kelurahan', 'tampilkomentar,analisaberita,arsipberita,databaseberita', 0, 1, '2015-10-13 04:27:26', ''),
(347, 'kelrwt', 'Kelurahan Rawa Terate', 'bca8f1999bcf5237a11a874802f384d4', '', '', 'Website', 'Kelurahan', 'tampilkomentar,analisaberita,arsipberita,databaseberita', 0, 1, '2015-10-13 04:27:52', ''),
(348, 'kelbdc', 'Kelurahan Bidaracina', '11961d6f15b155335326f8dcd06dd180', '', '', 'Website', 'Kelurahan', 'tampilkomentar,analisaberita,arsipberita,databaseberita', 0, 1, '2015-10-13 04:28:07', ''),
(349, 'keljtngr', 'Kelurahan Jatinegara', '5a9fb4b83a033290ce2b6d3cbf0a0485', '', '', 'Website', 'Kelurahan', 'tampilkomentar,analisaberita,arsipberita,databaseberita', 0, 1, '2015-10-13 04:28:30', ''),
(350, 'kelpglgn', 'Kelurahan Penggilingan', 'd7d8baf528c14f04393e097e42f13a6f', '', '', 'Website', 'Kelurahan', 'tampilkomentar,analisaberita,arsipberita,databaseberita', 0, 1, '2015-10-13 04:29:05', ''),
(351, 'kelcc', 'Kelurahan Cipinang Cempedek', 'b26e403b5e8e5d9f548f81a4bf25fb50', '', '', 'Website', 'Kelurahan', 'tampilkomentar,analisaberita,arsipberita,databaseberita', 0, 1, '2015-10-13 04:29:15', ''),
(352, 'kelplgbg', 'Kelurahan Pulo Gebang', '301d7ba500359b3e641d2de9b852628c', '', '', 'Website', 'Kelurahan', 'tampilkomentar,analisaberita,arsipberita,databaseberita', 0, 1, '2015-10-13 04:29:38', ''),
(353, 'kelrbg', 'Kelurahan Rawa Bunga', '1503515ac8146652981160d185467f2a', '', '', 'Website', 'Kelurahan', 'tampilkomentar,analisaberita,arsipberita,databaseberita', 0, 1, '2015-10-13 04:30:10', ''),
(354, 'kelujm', 'Kelurahan Ujung Menteng', '7bfacf073eed73916c15454af2dba9ab', '', '', 'Website', '', 'tampilkomentar,analisaberita,arsipberita,databaseberita', 0, 1, '2015-10-20 06:19:12', ''),
(355, 'kellbby', 'Kelurahan Lubang Buaya', 'c4e17f6337b5dcd65c6420430dfc4eed', '', '', 'Website', 'Kelurahan', 'tampilkomentar,analisaberita,arsipberita,databaseberita', 0, 1, '2015-10-13 04:30:45', ''),
(356, 'kelcbu', 'Kelurahan Cipinang Besar Utara', 'bcb68b0db006bcbe1e95f0b530358805', '', '', 'Website', 'Kelurahan', 'tampilkomentar,analisaberita,arsipberita,databaseberita', 0, 1, '2015-10-13 04:31:13', ''),
(357, 'kelceger', 'Kelurahan Ceger', '88c785078967df0ae50b3405496cbc9a', '', '', 'Website', 'Kelurahan', 'tampilkomentar,analisaberita,arsipberita,databaseberita', 0, 1, '2015-10-13 04:31:18', ''),
(358, 'kelcpyg', 'Kelurahan Cipayung', 'dda7e7cdecab8bb9c42624bf030bc941', '', '', 'Website', 'Kelurahan', 'tampilkomentar,analisaberita,arsipberita,databaseberita', 0, 1, '2015-10-13 04:31:51', ''),
(359, 'kelcbs', 'Kelurahan Cipinang Besar Selatan', 'c3ab97562307615f104838e53c4d35e6', '', '', 'Website', 'Kelurahan', 'tampilkomentar,analisaberita,arsipberita,databaseberita', 0, 1, '2015-10-13 04:32:10', ''),
(360, 'kelmunjul', 'Kelurahan Munjul', 'bf63a46f1bf51726252866cdaa5fa636', '', '', 'Website', 'Kelurahan', 'tampilkomentar,analisaberita,arsipberita,databaseberita', 0, 1, '2015-10-13 04:32:27', ''),
(361, 'kelpdrgn', 'Kelurahan Pondok Ranggon', '339fb39e5995c170b4ce1077213b766c', '', '', 'Website', 'Kelurahan', 'tampilkomentar,analisaberita,arsipberita,databaseberita', 0, 1, '2015-10-13 04:32:56', ''),
(362, 'kelcm', 'Kelurahan Cipinang Muara', '7a9bf3e665e24ca7f289d23bf251cb24', '', '', 'Website', 'Kelurahan', 'tampilkomentar,analisaberita,arsipberita,databaseberita', 0, 1, '2015-10-13 04:32:56', ''),
(363, 'kelclgkp', 'Kelurahan Cilangkao', '17fcb64a29641eefdb123cb0b8679466', '', '', 'Website', 'Kelurahan', 'tampilkomentar,analisaberita,arsipberita,databaseberita', 0, 1, '2015-10-13 04:33:30', ''),
(364, 'kelpbmb', 'Kelurahan Pondok Bambu', '3de85001c67d64d2622518497e9f1e64', '', '', 'Website', 'Kelurahan', 'tampilkomentar,analisaberita,arsipberita,databaseberita', 0, 1, '2015-10-13 04:33:40', ''),
(365, 'kelsetu', 'Kelurahan Setu', '95899a57eef2bb8265a0f66c0364ea87', '', '', 'Website', 'Kelurahan', 'tampilkomentar,analisaberita,arsipberita,databaseberita', 0, 1, '2015-10-13 04:34:03', ''),
(366, 'keldswt', 'Kelurahan Duren Sawit', '051bbbb7aeae5059452de85e44a5ebb6', '', '', 'Website', 'Kelurahan', 'tampilkomentar,analisaberita,arsipberita,databaseberita', 0, 1, '2015-10-15 03:28:46', ''),
(367, 'kelbmba', 'Kelurahan Bambu Apus', 'ed85cd9fee7604d1b2da4ad52b355d98', '', '', 'Website', 'Kelurahan', 'tampilkomentar,analisaberita,arsipberita,databaseberita', 0, 1, '2015-10-13 04:34:32', ''),
(368, 'kelcbr', 'Kelurahan Cibubur', 'e9ea1da0c8937a9a020a868e6f50ddb3', '', '', 'Website', 'Kelurahan', 'tampilkomentar,analisaberita,arsipberita,databaseberita', 0, 1, '2015-10-13 04:35:04', ''),
(369, 'kelkdw', 'Kelurahan Kelapa Dua Wetan', '0a9f0a5ad803a1943bddc44c61aebbc1', '', '', 'Website', 'Kelurahan', 'tampilkomentar,analisaberita,arsipberita,databaseberita', 0, 1, '2015-10-13 04:35:33', ''),
(370, 'kelcrcs', 'Kelurahan Ciracas', 'b7833355870a152141c635c4ec6798f3', '', '', 'Website', 'Kelurahan', 'tampilkomentar,analisaberita,arsipberita,databaseberita', 0, 1, '2015-10-13 04:36:05', ''),
(371, 'kelsskn', 'Kelurahan Susukan', '12fa46b6c89325e3c6d55a7538b951d8', '', '', 'Website', 'Kelurahan', 'tampilkomentar,analisaberita,arsipberita,databaseberita', 0, 1, '2015-10-13 04:36:26', ''),
(372, 'kelpklp', 'Kelurahan Pondok Kelapa', '8ea2bc6e827a4e26cd9017f40af70fad', '', '', 'Website', 'Kelurahan ', 'tampilkomentar,analisaberita,arsipberita,databaseberita', 0, 1, '2015-10-13 04:36:43', ''),
(373, 'kelpkyn', 'Kelurahan Pekayon', '41fcb105ecfeb554be2d30af040ea98a', '', '', 'Website', 'Kelurahan', 'tampilkomentar,analisaberita,arsipberita,databaseberita', 0, 1, '2015-10-13 04:37:08', ''),
(374, 'kelpkkpi', 'Kelurahan Pondok Kopi', '06e070e89d68d263eff9332f1247f777', '', '', 'Website', 'Kelurahan', 'tampilkomentar,analisaberita,arsipberita,databaseberita', 0, 1, '2015-10-15 04:46:33', ''),
(375, 'kelkpgd', 'Kelurahan Kampung  Gedong', '6ac696cd654f7ebc55b30b7076f4db8f', '', '', 'Website', 'Kelurahan', 'tampilkomentar,analisaberita,arsipberita,databaseberita', 0, 1, '2015-10-13 04:37:40', ''),
(376, 'kelcjtg', 'Kelurahan Cijantung', '7b2726181f9e323646d780879a33fe89', '', '', 'Website', 'Kelurahan', 'tampilkomentar,analisaberita,arsipberita,databaseberita', 0, 1, '2015-10-13 04:38:07', ''),
(377, 'kelmj', 'Kelurahan Malaka Jaya', 'c5cf7d95f7bd42e229583f8d8e007ba0', '', '', 'Website', 'Kelurahan', 'tampilkomentar,analisaberita,arsipberita,databaseberita', 0, 1, '2015-10-13 04:38:11', ''),
(378, 'kelkmpbr', 'Kelurahan Kampung Baru', 'a4db92989119a778e6c303f86b3d806c', '', '', 'Website', 'Kelurahan', 'tampilkomentar,analisaberita,arsipberita,databaseberita', 0, 1, '2015-10-13 04:38:41', ''),
(379, 'kelms', 'Kelurahan Malaka Sari', '597fe30de27ab846249457bfa06cd74b', '', '', 'Website', 'Kelurahan', 'tampilkomentar,analisaberita,arsipberita,databaseberita', 0, 1, '2015-10-13 04:38:54', ''),
(380, 'kelklsr', 'Kelurahan Kalisari', 'e31e0bd98d9c291ce74299136b8ecd17', '', '', 'Website', '', 'tampilkomentar,analisaberita,arsipberita,databaseberita', 0, 1, '2015-10-13 04:39:07', ''),
(381, 'kelkldr', 'Kelurahan Klender', '2330dc84f09bb696a27c7cec8ede833b', '', '', 'Website', 'Kelurahan', 'tampilkomentar,analisaberita,arsipberita,databaseberita', 0, 1, '2015-10-13 04:39:43', ''),
(382, 'kelpngrt', 'Kelurahan Pinang Ranti', 'b9d236cf94e1c88eaf453f7d5cf52875', '', '', 'Website', 'Kelurahan', 'tampilkomentar,analisaberita,arsipberita,databaseberita', 0, 1, '2015-10-13 04:39:49', ''),
(383, 'kelmksr', 'Kelurahan Makasar', '81be64d91be84ecabde82ea275415294', '', '', 'Website', 'Kelurahan', 'tampilkomentar,analisaberita,arsipberita,databaseberita', 0, 1, '2015-10-13 04:40:21', ''),
(384, 'kelkj', 'Kelurahan Kramat Jati', '62090fdaf76bc08ba2a1de39b93e582c', '', '', 'Website', 'Kelurahan', 'tampilkomentar,analisaberita,arsipberita,databaseberita', 0, 1, '2015-10-13 04:40:50', ''),
(385, 'kelhlpk', 'Kelurahan Halim Perdana Kusuma', '854526cb7bb2d70598036f58d4793afd', '', '', 'Website', 'Kelurahan', 'tampilkomentar,analisaberita,arsipberita,databaseberita', 0, 1, '2015-10-13 04:40:54', ''),
(386, 'kelcpngm', 'Kelurahan Cipinang Melayu', '8ffe6b7f804b9b03bf7bfafcab9b25af', '', '', 'Website', 'Kelurahan', 'tampilkomentar,analisaberita,arsipberita,databaseberita', 0, 1, '2015-10-13 04:41:36', ''),
(387, 'kelbampr', 'Kelurahan Batu Ampar', 'b5f143b398fb1f4e6f6d9e0731b3e18b', '', '', 'Website', 'Kelurahan', 'tampilkomentar,analisaberita,arsipberita,databaseberita', 0, 1, '2015-10-13 04:41:55', ''),
(388, 'kelkbpl', 'Kelurahan Kebon Pala', '23c14896b97d05e01365712c40df9fdd', '', '', 'Website', 'Kelurahan', 'tampilkomentar,analisaberita,arsipberita,databaseberita', 0, 1, '2015-10-13 04:42:09', ''),
(389, 'kelbkmbng', 'Kelurahan Balekambang', '8584c44ccd55114e539a7e263f9ce713', '', '', 'Website', 'Kelurahan', 'tampilkomentar,analisaberita,arsipberita,databaseberita', 0, 1, '2015-10-13 04:42:50', ''),
(390, 'kelktgh', 'Kelurahan Kampung Tengah', '6c0b13cc207fbc8a46e4385c062b1476', '', '', 'Website', 'Kelurahan', 'tampilkomentar,analisaberita,arsipberita,databaseberita', 0, 1, '2015-10-13 04:43:40', ''),
(391, 'keldkh', 'Kelurahan Dukuh', '4aa01e054f81d0454e3468c88ca41d3b', '', '', 'Website', 'Kelurahan', 'tampilkomentar,analisaberita,arsipberita,databaseberita', 0, 1, '2015-10-13 04:44:16', ''),
(392, 'kelclltn', 'Kelurahan Cililitan', '8913c0a1458652b3c92413d61501f594', '', '', 'Website', 'Kelurahan', 'tampilkomentar,analisaberita,arsipberita,databaseberita', 0, 1, '2015-10-13 04:45:18', ''),
(393, 'kelcwng', 'Kelurahan Cawang', '467c266b24bb833b25a3220623db2224', '', '', 'Website', 'Kelurahan', 'tampilkomentar,analisaberita,arsipberita,databaseberita', 0, 1, '2015-10-13 04:45:55', ''),
(394, 'kelsb', 'Kelurahan Sungai Bambu ', 'faf5dc4e389c86d28f0ed4dc254ef0cd', '', '', 'Website', 'Kelurahan', 'tampilkomentar,analisaberita,arsipberita,databaseberita', 0, 1, '2015-10-13 06:20:11', ''),
(395, 'kelppg', 'Kelurahan Papanggo', '3255287fc7d87540a734b9b4e03c4fc4', '', '', 'Website', 'Kelurahan', 'tampilkomentar,analisaberita,arsipberita,databaseberita', 0, 1, '2015-10-13 06:20:49', ''),
(396, 'kelwrs', 'Kelurahan Warakas', 'bf1c8e1f9c7b70a33d7bcd225e1b40f8', '', '', 'Website', 'Kelurahan', 'tampilkomentar,analisaberita,arsipberita,databaseberita', 0, 1, '2015-10-13 06:21:25', ''),
(397, 'kelsa', 'Kelurahan Sunter Agung', 'c081f0e4a03c237dd6f38f20d7b1779d', '', '', 'Website', 'Kelurahan', 'tampilkomentar,analisaberita,arsipberita,databaseberita', 0, 1, '2015-10-13 06:22:03', ''),
(398, 'sudinkumkmpjs', 'Suku Dinas Koperasi, UMKM dan Perdagangan Kota Administrasi Jakarta Selatan', '1e4e5030e9e257738dceb6b622b13b3a', '', '', 'Website', '', 'tampilkomentar,analisaberita,arsipberita,databaseberita', 0, 1, '2016-05-02 06:25:15', ''),
(399, 'kelsj', 'Kelurahan Sunter Jaya', 'ed6b4ad5c5896baca5b74701088a856a', '', '', 'Website', 'Kelurahan', 'tampilkomentar,analisaberita,arsipberita,databaseberita', 0, 1, '2015-10-13 06:22:36', ''),
(400, 'kelpdmt', 'Kelurahan Pademangan Timur', '6cba6a4a6295747c489815f6b8ec2179', '', '', 'Website', 'Kelurahan', 'tampilkomentar,analisaberita,arsipberita,databaseberita', 0, 1, '2015-10-13 06:23:12', ''),
(401, 'sudinkumkmpjb', 'Suku Dinas Koperasi, UMKM dan Perdagangan Kota Administrasi Jakarta Barat', 'dbb6b0dfdb041cda61dee74cf9d7ac47', '', '', 'Website', '', 'tampilkomentar,arsipberita,databaseberita', 0, 1, '2016-05-02 06:24:52', ''),
(402, 'kelpdmb', 'Kelurahan Pademangan Barat', 'df7fb05ac36dcc778d0cf5fd0e66eeff', '', '', 'Website', 'Kelurahan', 'tampilkomentar,analisaberita,arsipberita,databaseberita', 0, 1, '2015-10-13 06:24:03', ''),
(403, 'sudinpejs', 'Suku Dinas Perindustrian dan Energi Kota Administrasi Jakarta Selatan', 'aaf2acf3d02d9856261555e8a4677821', '', '', 'Website', '', 'tampilkomentar,analisaberita,arsipberita,databaseberita', 0, 1, '2016-05-02 07:19:27', ''),
(404, 'kelanc', 'Kelurahan Ancol', '6386e0f50493a18ba92cff7ce9e58c77', '', '', 'Website', 'Kelurahan', 'tampilkomentar,analisaberita,arsipberita,databaseberita', 0, 1, '2015-10-13 06:24:36', ''),
(405, 'sudinnaspejb', 'Suku Dinas Perindustrian dan Energi Kota Administrasi Jakarta Barat', 'd6249b9f66d5e2f8fe0e2baafc9a26d5', '', '', 'Website', '', 'tampilkomentar,analisaberita,arsipberita,databaseberita', 0, 1, '2016-05-02 07:14:22', ''),
(406, 'sudinkpkpjs', 'Suku Dinas KPKP Kota Administrasi Jakarta Selatan', 'fc92f4c5a30d4c682768b58e148a4e56', '', '', 'Website', '', 'tampilkomentar,analisaberita,arsipberita,databaseberita', 0, 1, '2016-05-02 06:23:37', ''),
(407, 'kelpjg', 'Kelurahan Penjaringan', '747677f54e40060738c18ac307da7b65', '', '', 'Website', 'Kelurahan', 'tampilkomentar,analisaberita,arsipberita,databaseberita', 0, 1, '2015-10-13 06:25:33', ''),
(408, 'sudinparbudjs', 'Suku Dinas Pariwisata dan Kebudayaan Kota Administrasi Jakarta Selatan', 'f70b463a1e89b3bbd24a6db56b042f12', '', '', 'Website', '', 'tampilkomentar,analisaberita,arsipberita,databaseberita', 0, 1, '2016-05-02 07:17:46', ''),
(409, 'kelplt', 'Kelurahan Pluit', '65df512970389c3b196196578e29fc68', '', '', 'Website', 'Kelurahan', 'tampilkomentar,analisaberita,arsipberita,databaseberita', 0, 1, '2015-10-13 06:26:02', ''),
(410, 'kelpjgl', 'Kelurahan Pejagalan', '95575367711fbb335e28a5a1773f1910', '', '', 'Website', 'Kelurahan', 'tampilkomentar,analisaberita,arsipberita,databaseberita', 0, 1, '2015-10-13 06:27:53', ''),
(411, 'sudinaskpkpjb', 'Suku Dinas KPKP Kota Administrasi Jakarta Barat', '0bb24602164226ec1912a7797d416853', '', '', 'Website', '', 'tampilkomentar,arsipberita,databaseberita', 0, 1, '2016-05-02 02:04:46', ''),
(412, 'sudinhubtransjs', 'Suku Dinas Perhubungan dan Transportasi Kota Administrasi Jakarta Selatan', 'da236639244ef61ce0a0cb310be12c9d', '', '', 'Website', '', 'tampilkomentar,analisaberita,arsipberita,databaseberita', 0, 1, '2016-05-02 03:48:57', ''),
(413, 'kelkpkm', 'Kelurahan Kapuk Muara', '068311a60fa01b715a86a5e7a7f8a960', '', '', 'Website', 'Kelurahan', 'tampilkomentar,analisaberita,arsipberita,databaseberita', 0, 1, '2015-10-13 06:27:18', ''),
(414, 'sudinnakertransjs', 'Suku Dinas Tenaga Kerja dan Transmigrasi Kota Administrasi Jakarta Selatan', '929ec989f33b707513ffdb873d3d3172', '', '', 'Website', '', 'tampilkomentar,analisaberita,arsipberita,databaseberita', 0, 1, '2016-05-02 07:13:25', ''),
(415, 'sudinparbudjb', 'Suku Dinas Pariwisata dan Kebudayaan Kota Administrasi Jakarta Barat', '9f8d3c040a1ccd41acab6ae4c12fec3d', '', '', 'Website', '', 'tampilkomentar,analisaberita,arsipberita,databaseberita', 0, 1, '2016-05-02 07:17:13', ''),
(416, 'kelkmlm', 'Kelurahan Kamal Muara', 'b3bfc0b28f7ad302920512bec346314d', '', '', 'Website', 'Kelurahan', 'tampilkomentar,analisaberita,arsipberita,databaseberita', 0, 1, '2015-10-13 06:28:21', ''),
(417, 'sudinppjs', 'Suku Dinas Pelayanan Pajak Kota Administrasi Jakarta Selatan', 'd97501bd05ec6a7168393b7fd359db59', '', '', 'Website', '', 'tampilkomentar,analisaberita,arsipberita,databaseberita', 0, 1, '2016-05-02 07:24:00', ''),
(418, 'kelklb', 'Kelurahan Kali Baru', '74f010be6880bd1275e39f8f6c54075f', '', '', 'Website', 'Kelurahan', 'tampilkomentar,analisaberita,arsipberita,databaseberita', 0, 1, '2015-10-21 02:46:18', ''),
(419, 'sudinhubtransjb', 'Suku Dinas Perhubungan dan Transportasi Kota Administrasi Jakarta Barat', '10dc2529ee90f69dae9881fc312c735a', '', '', 'Website', '', 'tampilkomentar,analisaberita,arsipberita,databaseberita', 0, 1, '2016-05-02 03:47:27', ''),
(420, 'kelclc', 'Kelurahan Cilincing', 'a2674d90aa5f82a422b2744fb977dfc0', '', '', 'Website', 'Kelurahan', 'tampilkomentar,analisaberita,arsipberita,databaseberita', 0, 1, '2015-10-13 06:29:34', ''),
(421, 'sudinkominfomasjs', 'Suku Dinas Kominfomas Kota Administrasi Jakarta Selatan ', 'f3c207725675f468f88a0f0e8c978958', '', '', 'Website', '', 'tampilkomentar,analisaberita,arsipberita,databaseberita', 0, 1, '2016-05-02 06:21:22', ''),
(422, 'sudindamkarjs', 'Suku Dinas Penanggulangan Kebakaran Kota Administrasi Jakarta Selatan', '0429bab3df829e7025972ac38a2b1b0f', '', '', 'Website', '', 'tampilkomentar,analisaberita,arsipberita,databaseberita', 0, 1, '2016-05-02 02:11:54', ''),
(423, 'kelsmpb', 'Kelurahan Semper Barat', '2cb4e9e80ef721f8feaed08e3ba089c0', '', '', 'Website', 'Kelurahan', 'tampilkomentar,analisaberita,arsipberita,databaseberita', 0, 1, '2015-10-13 06:30:17', ''),
(424, 'sudinkertransjb', 'Suku Dinas Tenaga Kerja dan Transmigrasi Kota Administrasi Jakarta Barat', 'c190b9680ec3760bdb9ac48d44aad9bc', '', '', 'Website', '', 'tampilkomentar,analisaberita,arsipberita,databaseberita', 0, 1, '2016-05-02 06:18:37', ''),
(425, 'sudindukcapiljs', 'Suku Dinas Kependudukan dan Catatan Sipil Kota Administrasi Jakarta Selatan', '770c3b64e97a394b5f07198708d7357c', '', '', 'Website', '', 'tampilkomentar,analisaberita,arsipberita,databaseberita', 0, 1, '2016-05-02 03:46:26', ''),
(426, 'kelsmpt', 'Kelurahan Semper Timur', 'e4b7fa814ec7af23c6ebcd5f38becbdf', '', '', 'Website', 'Kelurahan', 'tampilkomentar,analisaberita,arsipberita,databaseberita', 0, 1, '2015-10-13 06:30:59', ''),
(427, 'sudinppjb', 'Suku Dinas Pelayanan Pajak Kota Administrasi Jakarta Barat', 'f539a4c2d565f289b454db29087b32e1', '', '', 'Website', '', 'tampilkomentar,analisaberita,arsipberita,databaseberita', 0, 1, '2016-05-02 07:23:13', ''),
(428, 'sudintajs', 'Suku Dinas Sumber Daya Air Kota Administrasi Jakarta Selatan', 'f45eb1a461debdc983f6f2d8308fe3c6', 'sudintajs', '', 'Website', '', 'tampilkomentar,analisaberita,arsipberita,databaseberita', 0, 1, '2017-03-21 02:09:28', ''),
(429, 'kelskp', 'Kelurahan Sukapura', '6760cec0e8e5d4ed2eeb9e69053d4002', '', '', 'Website', 'Kelurahan', 'tampilkomentar,analisaberita,arsipberita,databaseberita', 0, 1, '2015-10-13 06:31:31', ''),
(430, 'kelrrt', 'Kelurahan Rorotan', 'c56ef43d68200bd74cefa9a380418b3a', '', '', 'Website', 'Kelurahan', 'tampilkomentar,analisaberita,arsipberita,databaseberita', 0, 1, '2015-10-13 06:31:56', ''),
(431, 'sudinkominfomasjb', 'Suku Dinas Kominfomas Kota Administrasi Jakarta Barat', 'bd6542f7eb9113c3588f6a87e70e4bb7', '', '', 'Website', '', 'tampilkomentar,analisaberita,arsipberita,databaseberita', 0, 1, '2016-05-03 01:20:28', ''),
(432, 'sudinpgpdjs', 'Sudin Perumahan Rakyat & Kawasan Permukiman Kota Administrasi Jakarta Selat', '01a27087ca327acb90cf37d96b08f75c', 'sudinpgpdjs', '', 'Website', '', 'tampilkomentar,analisaberita,arsipberita,databaseberita', 0, 1, '2017-03-21 02:10:30', ''),
(433, 'kelmrn', 'Kelurahan Marunda', '1e9b359395a4a43e6fa86f3fff011698', '', '', 'Website', 'Kelurahan', 'tampilkomentar,analisaberita,arsipberita,databaseberita', 0, 1, '2015-10-13 06:32:33', ''),
(434, 'sudintatakotajs', 'Suku Dinas Penataan Kota Administrasi Jakarta Selatan', '493a401a95b7ee9e79f8300c819b99e0', '', '', 'Website', '', 'tampilkomentar,arsipberita,databaseberita', 0, 1, '2016-05-03 01:14:20', ''),
(435, 'sudindamkarjb', 'Suku Dinas Penanggulangan Kebakaran Kota Administrasi Jakarta Barat', 'f0170386ac3fe17fcb169009bc3dcc21', '', '', 'Website', '', 'tampilkomentar,analisaberita,arsipberita,databaseberita', 0, 1, '2016-05-02 02:10:11', ''),
(436, 'sudintamanjs', 'Suku Dinas Pertamanan dan Pemakaman Kota Administrasi Jakarta Selatan', '164318e8e664a12dfdb22457a2714fb8', '', '', 'Website', '', 'tampilkomentar,analisaberita,arsipberita,databaseberita', 0, 1, '2016-05-03 01:08:30', ''),
(437, 'sudindukcapiljb', 'Suku Dinas Kependudukan dan Catatan Sipil Kota Administrasi Jakarta Barat', 'f45fe4fbc4c945fca0be1b791506987b', '', '', 'Website', '', 'tampilkomentar,analisaberita,arsipberita,databaseberita', 0, 1, '2016-05-02 03:45:46', ''),
(438, 'sudinbersihjs', 'Suku Dinas Kebersihan Kota Administrasi Jakarta Selatan', 'e10d5cb949b76f822334c6924697917c', '', '', 'Website', '', 'tampilkomentar,analisaberita,arsipberita,databaseberita', 0, 1, '2016-05-02 02:02:37', ''),
(439, 'sudinasbmjb', 'Suku Dinas Bina Marga Kota Administrasi Jakarta Barat', 'c5dd2b7112b0003921502566c124c813', '', '', 'Website', '', 'tampilkomentar,arsipberita,databaseberita', 0, 1, '2016-05-02 01:58:53', ''),
(440, 'sudinsosjs', 'Suku Dinas Sosial Kota Administrasi Jakarta Selatan', 'de01a9b639722cc102c33ef1d72469e8', '', '', 'Website', '', '', 0, 1, '2016-05-02 07:25:50', ''),
(441, 'sudindikjs', 'Suku Dinas Pendidikan Kota Administrasi Jakarta Selatan', '8837db315e8d7a7810c4abef686b185e', '', '', 'Website', '', 'tampilkomentar,analisaberita,arsipberita,databaseberita', 0, 1, '2016-05-03 01:15:50', ''),
(442, 'sudintajb', 'Suku Dinas Sumber Daya Air Kota Administrasi Jakarta Barat', 'f369809b150cf20f964770a06e7ecddd', 'sudintajb', '', 'Website', '', 'tampilkomentar,analisaberita,arsipberita,databaseberita', 0, 1, '2017-03-21 02:08:40', ''),
(443, 'sudinkesjs', 'Suku Dinas Kesehatan Kota Administrasi Jakarta Selatan', '077a7100df484b6b98850139068f0cda', '', '', 'Website', '', 'tampilkomentar,analisaberita,arsipberita,databaseberita', 0, 1, '2016-05-02 06:19:37', ''),
(444, 'sudinaspgpdjb', 'Sudin Perumahan Rakyat & Kawasan Permukiman Kota Administrasi Jakarta Barat', '556ffccb4a3719219e85f4e3ff080202', 'joy', '', 'Website', '', 'tampilkomentar,analisaberita,arsipberita,databaseberita', 0, 1, '2017-03-21 02:02:39', ''),
(445, 'sudinordajs', 'Suku Dinas Olahraga dan Pemuda Kota Administrasi Jakarta Selatan', '4f9e7a18b249e238f79602dcfb2f9c9a', '', '', 'Website', '', 'tampilkomentar,analisaberita,arsipberita,databaseberita', 0, 1, '2016-05-02 07:16:13', ''),
(446, 'sudintatakotajb', 'Suku Dinas Penataan Kota Administrasi Jakarta Barat', '45487ab477385d5a0285b4e542a18e79', '', '', 'Website', '', 'tampilkomentar,arsipberita,databaseberita', 0, 1, '2016-05-03 01:13:58', ''),
(447, 'sudinkumkmpju', 'Suku Dinas Koperasi, UMKM dan Perdagangan Kota Administrasi Jakarta Utara', '4686d51701f623c25cd1c654fda356c4', '', '', 'Website', '', 'tampilkomentar,analisaberita,arsipberita,databaseberita', 0, 1, '2016-05-02 07:15:07', ''),
(448, 'sudintamanjb', 'Suku Dinas Pertamanan dan Pemakaman Kota Administrasi Jakarta Barat', '3fda860976cbf24af032f82bb03f15f0', '', '', 'Website', '', 'tampilkomentar,analisaberita,arsipberita,databaseberita', 0, 1, '2016-05-03 01:07:57', ''),
(449, 'sudinpejp', 'Suku Dinas Perindustrian dan Energi Kota Administrasi Jakarta Pusat', 'eeafbeeb7354c3c77449ead09d39f83b', '', '', 'Website', '', 'tampilkomentar,analisaberita,arsipberita,databaseberita', 0, 1, '2016-05-02 07:18:58', ''),
(450, 'sudinbersihjb', 'Suku Dinas Kebersihan Kota Administrasi Jakarta Barat', 'dfcbc296169945d7622794923db0a595', '', '', 'Website', '', 'tampilkomentar,analisaberita,arsipberita,databaseberita', 0, 1, '2016-05-02 02:00:51', ''),
(451, 'sudinkpkpjp', 'Suku Dinas KPKP Kota Administrasi Jakarta Pusat', '0c53210f438c24cdd13a09011ac6a79c', '', '', 'Website', '', 'tampilkomentar,analisaberita,arsipberita,databaseberita', 0, 1, '2016-05-02 06:23:17', ''),
(452, 'sudinsosjb', 'Suku Dinas Sosial Kota Administrasi Jakarta Barat', 'a6d1501c32c24278efa58079afb26e0f', '', '', 'Website', '', 'tampilkomentar,analisaberita,arsipberita,databaseberita', 0, 1, '2016-05-02 07:25:05', ''),
(453, 'sudinparbudjp', 'Suku Dinas Pariwisata dan Kebudayaan Kota Administrasi Jakarta Pusat', 'ac97c26e4218213d1378d865ff155dc0', '', '', 'Website', '', 'tampilkomentar,analisaberita,arsipberita,databaseberita', 0, 1, '2016-05-02 07:17:26', ''),
(454, 'sudinkumkmpjp', 'Suku Dinas Koperasi, UMKM dan Perdagangan Kota Administrasi Jakarta Pusat', 'c479a0749f820ac2265e8aa32959c5eb', '', '', 'Website', '', 'tampilkomentar,analisaberita,arsipberita,databaseberita', 0, 1, '2016-05-02 06:25:04', ''),
(455, 'sudindikjb', 'Suku Dinas Pendidikan Kota Administrasi Jakarta Barat', '2cfa4218f3da165b2403801419f36dde', '', '', 'Website', '', 'tampilkomentar,analisaberita,arsipberita,databaseberita', 0, 1, '2016-05-02 02:16:11', ''),
(456, 'sudinkesjb', 'Suku Dinas Kesehatan Kota Administrasi Jakarta Barat', 'c2b69cbe473d835d16701cd0763e7bd2', '', '', 'Website', '', 'tampilkomentar,analisaberita,arsipberita,databaseberita', 0, 1, '2016-05-02 06:19:21', ''),
(457, 'sudinhubtransjp', 'Suku Dinas Perhubungan dan Transportasi Kota Administrasi Jakarta Pusat', '2b3a66173ca9aa7cfdb159fe0826f34d', '', '', 'Website', '', 'tampilkomentar,analisaberita,arsipberita,databaseberita', 0, 1, '2016-05-02 03:47:39', ''),
(458, 'sudinnakertransjp', 'Suku Dinas Tenaga Kerja dan Transmigrasi Kota Administrasi Jakarta Pusat', '45d8fd03c088b9de5d416fcacefc9526', '', '', 'Website', '', 'tampilkomentar,analisaberita,arsipberita,databaseberita', 0, 1, '2016-05-02 07:13:11', ''),
(459, 'sudinppjp', 'Suku Dinas Pelayanan Pajak Kota Administrasi Jakarta Pusat', 'eb9ee82cb2b48638d071de83bc4db34f', '', '', 'Website', '', 'tampilkomentar,analisaberita,arsipberita,databaseberita', 0, 1, '2016-05-02 07:23:45', ''),
(460, 'sudinsordajb', 'Suku Dinas Olahraga dan Pemuda Kota Administrasi Jakarta Barat', 'b591b1a3e0a633b145875da431dcca63', '', '', 'Website', '', 'tampilkomentar,analisaberita,arsipberita,databaseberita', 0, 1, '2016-05-02 07:24:53', ''),
(461, 'sudinkominfomasjp', 'Suku Dinas Kominfomas Kota Administrasi Jakarta Pusat', '75b4a19c0bc22bf6dd6c6da077288248', '', '', 'Website', '', 'tampilkomentar,analisaberita,arsipberita,databaseberita', 0, 1, '2016-05-02 06:22:04', ''),
(462, 'sudinpeju', 'Suku Dinas Perindustrian dan Energi Kota Administrasi Jakarta Utara', 'c0cdcf2e615e7215505a1e1c094ca5f1', '', '', 'Website', '', 'tampilkomentar,analisaberita,arsipberita,databaseberita', 0, 1, '2016-05-02 07:20:00', ''),
(463, 'sudinkumkmpjt', 'Suku Dinas Koperasi, UMKM dan Perdagangan Kota Administrasi Jakarta Timur', '02ccbddc0f16095d47306c9b83e94157', '', '', 'Website', '', 'tampilkomentar,analisaberita,arsipberita,databaseberita', 0, 1, '2016-05-02 06:25:29', ''),
(464, 'sudindamkarjp', 'Suku Dinas Penanggulangan Kebakaran Kota Administrasi Jakarta Pusat', 'eb54ecf78b08552e5b4a0239eb5d7547', '', '', 'Website', '', 'tampilkomentar,analisaberita,arsipberita,databaseberita', 0, 1, '2016-05-02 02:10:58', ''),
(465, 'sudinpejt', 'Suku Dinas Perindustrian dan Energi Kota Administrasi Jakarta Timur', '0c3b220f7dbb7e6711d5c998fc8104a0', '', '', 'Website', '', 'tampilkomentar,analisaberita,arsipberita,databaseberita', 0, 1, '2016-05-02 07:19:43', ''),
(466, 'sudinkpkpju', 'Suku Dinas KPKP Kota Administrasi Jakarta Pusat', '199754bfeb5db08323407e38f938c36c', '', '', 'Website', '', 'tampilkomentar,analisaberita,arsipberita,databaseberita', 0, 1, '2016-05-02 06:24:08', ''),
(467, 'sudinkpkpjt', 'Suku Dinas KPKP Kota Administrasi Jakarta Timur', 'b9e410b820aff4c46531aa315599077f', '', '', 'Website', '', 'tampilkomentar,analisaberita,arsipberita,databaseberita', 0, 1, '2016-05-02 06:23:54', ''),
(468, 'sudinbmjs', 'Suku Dinas Bina Marga Kota Administrasi Jakarta Selatan', '53f77043b6d7a32e79161d78a00f237c', '', '', 'Website', '', 'tampilkomentar,analisaberita,arsipberita,databaseberita', 0, 1, '2016-05-02 02:07:42', ''),
(469, 'sudinparbudju', 'Suku Dinas Pariwisata dan Kebudayaan Kota Administrasi Jakarta Utara', 'a62db393cc773eb95ec8ab77e8e27d1d', '', '', 'Website', '', 'tampilkomentar,analisaberita,arsipberita,databaseberita', 0, 1, '2016-05-02 07:18:01', ''),
(470, 'sudinbmjp', 'Suku Dinas Bina Marga Kota Administrasi Jakarta Pusat', '8a22a88d9cbb0f64b26b9363f4c1fdbc', '', '', 'Website', '', 'tampilkomentar,analisaberita,arsipberita,databaseberita', 0, 1, '2016-05-02 02:06:05', ''),
(471, 'sudinbudjt', 'Suku Dinas Pariwisata dan Kebudayaan Kota Administrasi Jakarta Timur', 'aec58346e3a3d175788a5a7eb9f94e13', '', '', 'Website', '', 'tampilkomentar,analisaberita,arsipberita,databaseberita', 0, 1, '2016-05-02 02:08:58', ''),
(472, 'sudintajp', 'Suku Dinas Sumber Daya Air Kota Administrasi Jakarta Pusat', '26541a925294f9a04993dcd32a8cc592', 'sudintajp', '', 'Website', '', 'tampilkomentar,analisaberita,arsipberita,databaseberita', 0, 1, '2017-03-21 02:09:09', ''),
(473, 'sudinhubtransju', 'Suku Dinas Perhubungan dan Transportasi Kota Administrasi Jakarta Utara', '4c4eb927e349ec3ef2554695f356d328', '', '', 'Website', '', 'tampilkomentar,analisaberita,arsipberita,databaseberita', 0, 1, '2016-05-02 06:17:58', ''),
(474, 'sudinhubtransjt', 'Suku Dinas Perhubungan dan Transportasi Kota Administrasi Jakarta Timur', '40cf6ec0aef8a743b31e6ec60ff35c7e', '', '', 'Website', '', 'tampilkomentar,analisaberita,arsipberita,databaseberita', 0, 1, '2016-05-02 06:17:47', ''),
(475, 'sudindukcapiljp', 'Suku Dinas Kependudukan dan Catatan Sipil Kota Administrasi Jakarta Pusat', '46eb3aa6ee20c2d0b86545d4e21b4357', '', '', 'Website', '', 'tampilkomentar,analisaberita,arsipberita,databaseberita', 0, 1, '2016-05-02 03:46:06', ''),
(476, 'sudinkertransju', 'Suku Dinas Tenaga Kerja dan Transmigrasi Kota Administrasi Jakarta Utara', '7bfb360e24b40739792839bb6ab62f92', '', '', 'Website', '', 'tampilkomentar,analisaberita,arsipberita,databaseberita', 0, 1, '2016-05-02 06:19:09', ''),
(477, 'sudinkertransjt', 'Suku Dinas Tenaga Kerja dan Transmigrasi Kota Administrasi Jakarta Timur', '83c61578f38296363447acb8df39ac75', '', '', 'Website', '', 'tampilkomentar,analisaberita,arsipberita,databaseberita', 0, 1, '2016-05-02 06:18:57', ''),
(478, 'sudinppju', 'Suku Dinas Pelayanan Pajak Kota Administrasi Jakarta Utara', 'b1d0afe83b5ad6effe0e0cd6282d4b25', '', '', 'Website', '', 'tampilkomentar,analisaberita,arsipberita,databaseberita', 0, 1, '2016-05-02 07:24:19', ''),
(479, 'sudinpgpdjp', 'Sudin Perumahan Rakyat & Kawasan Permukiman Kota Administrasi Jakarta Pusat', 'fc665f5e65e0769c5fc9127d0f41dc8b', 'sudinpgpdjp', '', 'Website', '', 'tampilkomentar,analisaberita,arsipberita,databaseberita', 0, 1, '2017-03-21 02:10:17', '');
INSERT INTO `admin` (`adminID`, `adminname`, `adminrealname`, `adminpassword`, `adminemail`, `adminkat`, `admintipe`, `admingroup`, `adminrole`, `admindropped`, `adminactivated`, `updated`, `user_media`) VALUES
(480, 'sudinppjt', 'Suku Dinas Pelayanan Pajak Kota Administrasi Jakarta Timur', '0cbbd5f79a8b9d2137357a371f05a111', '', '', 'Website', '', 'tampilkomentar,analisaberita,arsipberita,databaseberita', 0, 1, '2016-05-02 07:24:10', ''),
(481, 'sudinastatakotajp', 'Suku Dinas Penataan Kota Administrasi Jakarta Pusat', '14f77583f4da3de7cb60ab7db567caef', '', '', 'Website', '', 'tampilkomentar,arsipberita,databaseberita', 0, 1, '2016-05-03 01:17:35', ''),
(482, 'sudinkominfomasju', 'Suku Dinas Kominfomas Kota Administrasi Jakarta Utara', '9f1a6f1275a5bd487f3a5babe82ff42a', '', '', 'Website', '', 'tampilkomentar,analisaberita,arsipberita,databaseberita', 0, 1, '2016-05-02 06:22:18', ''),
(483, 'sudinkominfomasjt', 'Suku Dinas Kominfomas Kota Administrasi Jakarta Timur', '756d4a527773b29a6be94fda613c4468', '', '', 'Website', '', 'tampilkomentar,analisaberita,arsipberita,databaseberita', 0, 1, '2016-05-02 06:21:37', ''),
(484, 'sudinbersihjp', 'Suku Dinas Kebersihan Kota Administrasi Jakarta Pusat', '7933d560527cab13358b4866ab41fe6f', '', '', 'Website', '', 'tampilkomentar,analisaberita,arsipberita,databaseberita', 0, 1, '2016-05-02 02:01:27', ''),
(485, 'sudindamkarjt', 'Suku Dinas Penanggulangan Kebakaran Kota Administrasi Jakarta Timur ', '8f4a7f798720581e7a0f6b13eb6e41f8', '', '', 'Website', '', 'tampilkomentar,analisaberita,arsipberita,databaseberita', 0, 1, '2016-05-02 02:14:42', ''),
(486, 'sudindamkarju', 'Suku Dinas Penanggulangan Kebakaran Kota Administrasi Jakarta Utara ', '42e907e49f9beedf63f9e597e337bb3d', '', '', 'Website', '', 'tampilkomentar,analisaberita,arsipberita,databaseberita', 0, 1, '2016-05-02 02:15:20', ''),
(487, 'sudintamanjp', 'Suku Dinas Pertamanan dan Pemakaman Kota Administrasi Jakarta Pusat', '6614c1db19410ba0f994de8f73bb39a2', '', '', 'Website', '', 'tampilkomentar,analisaberita,arsipberita,databaseberita', 0, 1, '2016-05-03 01:08:19', ''),
(488, 'sudindukcapilju', 'Suku Dinas Kependudukan dan Catatan Sipil Kota Administrasi Jakarta Utara', '602a63cf7a0144d1b906ddd5c7242eed', '', '', 'Website', '', 'tampilkomentar,analisaberita,arsipberita,databaseberita', 0, 1, '2016-05-02 03:46:49', ''),
(489, 'sudinsosjp', 'Suku Dinas Sosial Kota Administrasi Jakarta Pusat', 'b373e0dfce2d0ecf229b3b5c2ef20fc4', '', '', 'Website', '', 'tampilkomentar,analisaberita,arsipberita,databaseberita', 0, 1, '2016-05-03 01:22:40', ''),
(490, 'sudindukcapiljt', 'Suku Dinas Kependudukan dan Catatan Sipil Kota Administrasi Jakarta Timur', 'cff4a0e65b35bc7a6d274d9690a021b2', '', '', 'Website', '', 'tampilkomentar,analisaberita,arsipberita,databaseberita', 0, 1, '2016-05-02 03:46:38', ''),
(491, 'sudindikjp', 'Suku Dinas Pendidikan Kota Administrasi Jakarta Pusat', 'f4d3488d0b37bafd33c21302cccca8dc', '', '', 'Website', '', 'tampilkomentar,analisaberita,arsipberita,databaseberita', 0, 1, '2016-05-03 01:15:42', ''),
(492, 'sudinbmju', 'Suku Dinas Bina Marga Kota Administrasi Jakarta Utara', 'f2ed5f9678742c8ac37cf15561843b52', '', '', 'Website', '', 'tampilkomentar,analisaberita,arsipberita,databaseberita', 0, 1, '2016-05-02 02:08:16', ''),
(493, 'sudinbmjt', 'Suku Dinas Bina Marga Kota Administrasi Jakarta Timur', 'b79c25f48e23dda059240b7b18755049', '', '', 'Website', '', 'tampilkomentar,analisaberita,arsipberita,databaseberita', 0, 1, '2016-05-02 02:08:03', ''),
(494, 'Sudinkesjp', 'Suku Dinas Kesehatan Kota Administrasi Jakarta Pusat', '167242c09b006197c6613ab4057a5167', '', '', 'Website', '', 'tampilkomentar,analisaberita,arsipberita,databaseberita', 0, 1, '2016-05-02 06:19:28', ''),
(495, 'sudintaju', 'Suku Dinas Sumber Daya Air Kota Administrasi Jakarta Utara', 'a5558701dc589d9b8f50545bb8d011e8', 'sudintaju', '', 'Website', '', 'tampilkomentar,analisaberita,arsipberita,databaseberita', 0, 1, '2017-03-21 02:09:50', ''),
(496, 'sudinordajp', 'Suku Dinas Olahraga dan Pemuda Kota Administrasi Jakarta Pusat', 'a3b3906203b0bc198ca66417d9f2a800', '', '', 'Website', '', 'tampilkomentar,analisaberita,arsipberita,databaseberita', 0, 1, '2016-05-02 07:15:59', ''),
(497, 'sudintajt', 'Suku Dinas Sumber Daya Air Administrasi Jakarta Timur', '7d717a5bbd78a3a77e5452102dfd7c23', 'sudintajt', '', 'Website', '', 'tampilkomentar,analisaberita,arsipberita,databaseberita', 0, 1, '2017-03-21 02:07:51', ''),
(498, 'sudinpgpdju', 'Sudin Perumahan Rakyat & Kawasan Permukiman Kota Administrasi Jakarta Utara', 'e0bbd29ea4308fa87d100af75585dfe4', 'sudinpgpdju', '', 'Website', '', 'tampilkomentar,analisaberita,arsipberita,databaseberita', 0, 1, '2017-03-21 02:10:52', ''),
(499, 'sudinpgpdjt', 'Sudin Perumahan Rakyat & Kawasan Permukiman Kota Administrasi Jakarta Timur', '5e4769876289361af3e43959f9083229', 'sudinpgpdjt', '', 'Website', '', 'tampilkomentar,analisaberita,arsipberita,databaseberita', 0, 1, '2017-03-21 02:10:42', ''),
(500, 'sudintatakotaju', 'Suku Dinas Penataan Kota Administrasi Jakarta Utara', 'fe654a868995ae7db0ff59c4911b7bd2', '', '', 'Website', '', 'tampilkomentar,arsipberita,databaseberita', 0, 1, '2016-05-03 01:13:35', ''),
(501, 'sudintaman', 'Suku Dinas Pertamanan dan Pemakaman Jaka', '193376381378ddfd1803fa6d27def599', '', '', 'Website', '', 'tampilkomentar,analisaberita,arsipberita,databaseberita', 0, 1, '2015-10-13 07:01:25', ''),
(502, 'sudintatakotajt', 'Suku Dinas Penataan Kota Administrasi Jakarta Timur', 'd1f387b9bf9f592b3723bf54d92b5bc4', '', '', 'Website', '', 'tampilkomentar,arsipberita,databaseberita', 0, 1, '2016-05-03 01:13:42', ''),
(503, 'sudinbersihju', 'Suku Dinas Kebersihan Kota Administrasi Jakarta Utara', '01ef23e481e2e120a0ebe2808b16b82c', '', '', 'Website', '', 'tampilkomentar,analisaberita,arsipberita,databaseberita', 0, 1, '2016-05-02 02:03:33', ''),
(504, 'sudintamanjt', 'Suku Dinas Pertamanan dan Pemakaman Kota Administrasi Jakarta Timur', 'a96697c15dda629eae3f2cfaec0d5472', '', '', 'Website', '', 'tampilkomentar,analisaberita,arsipberita,databaseberita', 0, 1, '2016-05-03 01:08:40', ''),
(505, 'sudinsosju', 'Suku Dinas Sosial Kota Administrasi Jakarta Utara', 'bbfe5df0a9578c51a04e48dc23807b30', '', '', 'Website', '', 'tampilkomentar,analisaberita,arsipberita,databaseberita', 0, 1, '2016-05-03 01:02:46', ''),
(506, 'sudinbersihjt', 'Suku Dinas Kebersihan Kota Administrasi Jakarta Timur', '87b2cb371b2552917d19463b216320e7', '', '', 'Website', '', 'tampilkomentar,analisaberita,arsipberita,databaseberita', 0, 1, '2016-05-02 02:03:06', ''),
(507, 'sudindikju', 'Suku Dinas Pendidikan Kota Administrasi Jakarta Utara', '059ddf311fa1a00cbee0c5cd69aeb49f', '', '', 'Website', '', 'tampilkomentar,analisaberita,arsipberita,databaseberita', 0, 1, '2016-05-03 01:16:09', ''),
(508, 'sudinsosjt', 'Suku Dinas Sosial Kota Administrasi Jakarta Timur', '209f42788e0fbc4b76f81e8260538b06', '', '', 'Website', '', 'tampilkomentar,analisaberita,arsipberita,databaseberita', 0, 1, '2016-05-02 10:18:07', ''),
(509, 'sudinkesju', 'Suku Dinas Kesehatan Kota Administrasi Jakarta Utara', '89d9620daf775d5802becfe6a3a1d0ee', '', '', 'Website', '', 'tampilkomentar,analisaberita,arsipberita,databaseberita', 0, 1, '2016-05-02 06:19:54', ''),
(510, 'sudindikjt', 'Suku Dinas Pendidikan Kota Administrasi Jakarta Timur', '49473dcc4d8204104b80befbf7d50f1a', '', '', 'Website', '', 'tampilkomentar,analisaberita,arsipberita,databaseberita', 0, 1, '2016-05-03 01:15:58', ''),
(511, 'sudinordaju', 'Suku Dinas Olahraga dan Pemuda Kota Administrasi Jakarta Utara', '91336efdb5048fdfb5f962b131abbd78', '', '', 'Website', '', 'tampilkomentar,analisaberita,arsipberita,databaseberita', 0, 1, '2016-05-02 07:16:38', ''),
(512, 'sudinkesjt', 'Suku Dinas Kesehatan Kota Administrasi Jakarta Timur', '28470bae6084eb09516859a2466c4143', '', '', 'Website', '', 'tampilkomentar,analisaberita,arsipberita,databaseberita', 0, 1, '2016-05-02 06:19:46', ''),
(513, 'sudinordajt', 'Suku Dinas Olahraga dan Pemuda Kota Administrasi Jakarta Timur', '71e57fb1d112d3e2b72474292ea03839', '', '', 'Website', '', 'tampilkomentar,analisaberita,arsipberita,databaseberita', 0, 1, '2016-05-02 07:16:26', ''),
(514, 'pdamdki', 'PDAM Provinsi DKI Jakarta', '9495d54baba38c6ae7f47957b43e68bc', '', '', 'Website', '', 'tampilkomentar,analisaberita,arsipberita,databaseberita', 0, 1, '2015-10-13 07:34:55', ''),
(515, 'bkdju', 'Badan Kepegawaian Daerah Jakarta Utara', '0000b5e14b4768d2a22c1ca5bd16163f', '', '', 'Website', '', 'tampilkomentar,analisaberita,arsipberita,databaseberita', 0, 1, '2015-10-13 07:35:12', ''),
(516, 'bkdjs', 'Badan Kepegawaian Daerah Jakarta Selatan', '44ea3dc82ca9482f629ab0d20ab1bbc6', '', '', 'Website', '', 'tampilkomentar,analisaberita,arsipberita,databaseberita', 0, 1, '2015-10-13 07:36:03', ''),
(517, 'bkdjp', 'Badan Kepegawaian Daerah Jakarta Pusat', 'cc26c5c51f51f363929645300c062474', '', '', 'Website', '', 'tampilkomentar,analisaberita,arsipberita,databaseberita', 0, 1, '2015-10-13 07:36:34', ''),
(518, 'paljaya', 'PD, Pal Jaya', '95aba6a2448033b80b1c9794c1940e4f', '', '', 'Website', '', 'tampilkomentar,analisaberita,arsipberita,databaseberita', 0, 1, '2015-10-13 07:36:35', ''),
(519, 'bkdjt', 'Badan Kepegawaian Daerah Jakarta Timur', '6a9cecf0df5e8a8a6ce0fcd365fbaa96', '', '', 'Website', '', 'tampilkomentar,analisaberita,arsipberita,databaseberita', 0, 1, '2015-10-13 07:37:11', ''),
(520, 'bkdjb', 'Badan Kepegawaian Daerah Jakarta Barat', '46c81511b1e33e6072d1a801aeefc03f', '', '', 'Website', '', 'tampilkomentar,analisaberita,arsipberita,databaseberita', 0, 1, '2015-10-13 07:37:38', ''),
(521, 'dharmajaya', 'PD. Dharma Jaya', 'e73eed4978d12003285e0a9475ad71f6', '', '', 'Website', '', 'tampilkomentar,analisaberita,arsipberita,databaseberita', 0, 1, '2015-10-13 07:37:40', ''),
(522, 'bakesbangpoljp', 'Badan Kesatuan Bangsa dan Politik Jakart', 'ffda3f361ed80b4ffb86f38fb1b5f7f5', '', '', 'Website', '', 'tampilkomentar,analisaberita,arsipberita,databaseberita', 0, 1, '2015-10-13 07:38:59', ''),
(523, 'bakesbangpolju', 'Badan Kesatuan Bangsa dan Politik Jakart', '91176b70b947e5de49f68d593559c9c7', '', '', 'Website', '', 'tampilkomentar,analisaberita,arsipberita,databaseberita', 0, 1, '2015-10-13 07:39:50', ''),
(524, 'pdpsj', 'PD. Pembangunan Sarana Jaya', 'b68d66e73fa14a91e1b38cc984ee725d', '', '', 'Website', '', 'tampilkomentar,analisaberita,arsipberita,databaseberita', 0, 1, '2015-10-13 07:40:49', ''),
(525, 'bakesbangpoljs', 'Badan Kesatuan Bangsa dan Politik Jakart', '6f6cdbaa2f78efc006f58d07f008221c', '', '', 'Website', '', 'tampilkomentar,analisaberita,arsipberita,databaseberita', 0, 1, '2015-10-13 07:40:25', ''),
(526, 'bakesbangpoljt', 'Badan Kesatuan Bangsa dan Politik Jakart', '54d4e7a680c21d9b1efbf183c5f04bf9', '', '', 'Website', '', 'tampilkomentar,analisaberita,arsipberita,databaseberita', 0, 1, '2015-10-13 07:41:04', ''),
(527, 'bakesbangpoljb', 'Badan Kesatuan Bangsa dan Politik Jakart', '38a36eea800477572534fc5cef44c074', '', '', 'Website', '', 'tampilkomentar,analisaberita,arsipberita,databaseberita', 0, 1, '2015-10-13 07:41:34', ''),
(528, 'pdpj', 'PD. Pasar Jaya', '15bdbb413134e0def6f73ff3fceff649', '', '', 'Website', '', 'tampilkomentar,analisaberita,arsipberita,databaseberita', 0, 1, '2015-10-13 07:42:12', ''),
(529, 'bpthrlokasari', 'BP. THR Lokasari', 'dd74388b9a388a1359397a931762bee6', '', '', 'Website', '', 'tampilkomentar,analisaberita,arsipberita,databaseberita', 0, 1, '2015-10-13 07:43:07', ''),
(530, 'bplhdjp', 'Badan Pengelola Lingkungan Hidup Jakarta', 'b1996b2eda41f82020e7794cd1c5cbcc', '', '', 'Website', '', 'tampilkomentar,analisaberita,arsipberita,databaseberita', 0, 1, '2015-10-13 07:43:42', ''),
(531, 'bankdki', 'PT. Bank DKI', '3f6a26867ad2b8e90ed0772185c78239', 'bankdki', '', 'Website', '', 'tampilkomentar,analisaberita,arsipberita,databaseberita,totalberita,nadaberita,bidangberita,narasumberberita', 0, 1, '2016-06-28 03:42:15', ''),
(532, 'bplhdjt', 'Badan Pengelola Lingkungan Hidup Jakarta', '368bbe9749e98b73bb1857ed9066fc41', '', '', 'Website', '', 'tampilkomentar,analisaberita,arsipberita,databaseberita', 0, 1, '2015-10-13 07:44:18', ''),
(533, 'bplhdju', 'Badan Pengelola Lingkungan Hidup Jakarta', '846c3df411a37eca1b1677d287f47e0e', '', '', 'Website', '', 'tampilkomentar,analisaberita,arsipberita,databaseberita', 0, 1, '2015-10-13 07:45:09', ''),
(534, 'ptjp', 'PT. Jakarta Propertindo', '2460dd9a1b5e8050ad6be73293ca733b', '', '', 'Website', '', 'tampilkomentar,analisaberita,arsipberita,databaseberita', 0, 1, '2015-10-13 07:45:24', ''),
(535, 'bplhdjb', 'Badan Pengelola Lingkungan Hidup Jakarta', 'c83c9d017476b0964a55f20c385c8751', '', '', 'Website', '', 'tampilkomentar,analisaberita,arsipberita,databaseberita', 0, 1, '2015-10-13 07:46:11', ''),
(536, 'bplhdjs', 'Badan Pengelola Lingkungan Hidup Jakarta', '917e62fdc2b96715326547a34c59212e', '', '', 'Website', '', 'tampilkomentar,analisaberita,arsipberita,databaseberita', 0, 1, '2015-10-13 07:46:42', ''),
(537, 'jayaancol', 'PT. Pembangunan Jaya Ancol, Tbk', 'f775ce05d7689bf7ccf207688de2d646', '', '', 'Website', '', 'tampilkomentar,analisaberita,arsipberita,databaseberita', 0, 1, '2015-10-13 07:46:57', ''),
(538, 'bpmpkbjp', 'Badan Pemberdayaan Masyarakat dan Peremp', '1685f90278599b08354a5b69cac46b49', '', '', 'Website', '', 'tampilkomentar,analisaberita,arsipberita,databaseberita', 0, 1, '2015-10-13 07:48:03', ''),
(539, 'fscj', 'PT. Food Station Cipinang Jaya', '571e6d01b20dce6e71f33510d733d526', '', '', 'Website', '', 'tampilkomentar,analisaberita,arsipberita,databaseberita', 0, 1, '2015-10-13 07:48:37', ''),
(540, 'bpmpkbju', 'Badan Pemberdayaan Masyarakat dan Peremp', 'dadd796f8a1b040146fd0e149be797e5', '', '', 'Website', '', 'tampilkomentar,analisaberita,arsipberita,databaseberita', 0, 1, '2015-10-13 07:48:56', ''),
(541, 'jiep', 'PT. Jiep', 'f10ace395939fb025ebf3339eb7ad732', '', '', 'Website', '', 'tampilkomentar,analisaberita,arsipberita,databaseberita', 0, 1, '2015-10-13 07:49:16', ''),
(542, 'bpmpkbjt', 'Badan Pemberdayaan Masyarakat dan Peremp', 'fe684bafa21646bc32ca0ea58d3e7dee', '', '', 'Website', '', 'tampilkomentar,analisaberita,arsipberita,databaseberita', 0, 1, '2015-10-13 07:49:28', ''),
(543, 'bpmpkbjs', 'Badan Pemberdayaan Masyarakat dan Peremp', '37e9a09dcfbaf0a74113a5bc8b711e52', '', '', 'Website', '', 'tampilkomentar,analisaberita,arsipberita,databaseberita', 0, 1, '2015-10-13 07:50:01', ''),
(544, 'bpmpkbjb', 'Badan Pemberdayaan Masyarakat dan Peremp', 'b6253485bbc88f7e5aa47ca82748f1dd', '', '', 'Website', '', 'tampilkomentar,analisaberita,arsipberita,databaseberita', 0, 1, '2015-10-13 07:50:32', ''),
(545, 'ptpj', 'PT. Pembanguan Jaya', '9034fc9f2c0133bea648306936127697', '', '', 'Website', '', 'tampilkomentar,analisaberita,arsipberita,databaseberita', 0, 1, '2015-10-13 07:50:36', ''),
(546, 'ptct', 'PT. Cemani Toka', '0d6e7c4f156bcbda846f2160b2c25209', '', '', 'Website', '', 'tampilkomentar,analisaberita,arsipberita,databaseberita', 0, 1, '2015-10-13 07:51:34', ''),
(547, 'bazis', 'Badan Amil Zakat Infaq dan Shadaqah Prov', 'b06285c892a7b1277f1b171328d0cf6e', '', '', 'Website', '', 'tampilkomentar,analisaberita,arsipberita,databaseberita', 0, 1, '2015-10-13 07:53:12', ''),
(548, 'ptra', 'PT. Ratax Armada', 'ffbf6679e3df4446afe1189b8e051428', '', '', 'Website', '', 'tampilkomentar,arsipberita,databaseberita', 0, 1, '2015-11-03 03:53:55', ''),
(549, 'bazisjp', 'Badan Amil Zakat Infaq dan Shadaqah Jaka', '131dd9c633a78fbcec0cced40ad8389b', '', '', 'Website', '', 'tampilkomentar,analisaberita,arsipberita,databaseberita', 0, 1, '2015-10-13 07:53:54', ''),
(550, 'ptdj', 'PT. Delta Jakarta, Tbk', 'dec8989f161315c83365eead0b1a2c78', '', '', 'Website', '', 'tampilkomentar,analisaberita,arsipberita,databaseberita', 0, 1, '2015-10-13 07:54:34', ''),
(551, 'bazisjs', 'Badan Amil Zakat Infaq dan Shadaqah Jaka', '9b2e9f01339076b0c665ae3190aff27a', '', '', 'Website', '', 'tampilkomentar,analisaberita,arsipberita,databaseberita', 0, 1, '2015-10-13 07:54:36', ''),
(552, 'bazisju', 'Badan Amil Zakat Infaq dan Shadaqah Jaka', '5babaa3e4759d7032b75177d61be3f82', '', '', 'Website', '', 'tampilkomentar,analisaberita,arsipberita,databaseberita', 0, 1, '2015-10-13 07:55:03', ''),
(553, 'bazisjt', 'Badan Amil Zakat Infaq dan Shadaqah Jaka', 'dc7dc10cbdbec2d7d2105a3aa33e220d', '', '', 'Website', '', 'tampilkomentar,analisaberita,arsipberita,databaseberita', 0, 1, '2015-10-13 07:55:33', ''),
(554, 'ptpi', 'PT. Pakuan Internasional', 'd42db1f4aaac5e0d76507ea27675295c', '', '', 'Website', '', 'tampilkomentar,analisaberita,arsipberita,databaseberita', 0, 1, '2015-10-13 07:55:38', ''),
(555, 'bazisjb', 'Badan Amil Zakat Infaq dan Shadaqah Jaka', 'affa81606f8f4325e52733ccd28b3c22', '', '', 'Website', '', 'tampilkomentar,analisaberita,arsipberita,databaseberita', 0, 1, '2015-10-13 07:55:59', ''),
(556, 'ptaba', 'PT. Asuransi bangunan Askrida', '942a757e98c8f4302cd7149b0f7a12c6', '', '', 'Website', '', 'tampilkomentar,analisaberita,arsipberita,databaseberita', 0, 1, '2015-10-13 07:56:48', ''),
(557, 'ptkbn', 'PT. Kawasan Berikat Nusantara', 'b712f49026256c5c4c91f9d7b59ec561', '', '', 'Website', '', 'tampilkomentar,arsipberita,databaseberita', 0, 1, '2015-11-02 06:42:12', ''),
(558, 'ptgssj', 'PT. Graha Sahari Surya Jaya', '61f1014b84312110b06209320e29a1b9', '', '', 'Website', '', '', 0, 1, '2015-10-13 07:59:13', ''),
(559, 'jieexpo', 'PT Jakarta International Expo', '719c1fa2c365946d71709ba5b238e781', '', '', 'Website', '', 'tampilkomentar,analisaberita,arsipberita,databaseberita', 0, 1, '2015-10-13 07:59:22', ''),
(560, 'mrt', 'PT. MRT', '0af3955ead7b7c16b90a8ed833ad9e0c', '', '', 'Website', '', 'tampilkomentar,analisaberita,arsipberita,databaseberita', 0, 1, '2015-10-13 07:59:47', ''),
(561, 'ptjts', 'PT. Jakarta Tourisindo', '749045212850be0c1001d71c906c8ad8', '', '', 'Website', '', 'tampilkomentar,arsipberita,databaseberita', 0, 1, '2015-11-03 06:56:09', ''),
(562, 'rshaji', 'PT. RS. Haji Indonesia', '67d072be7c529578fdb9bf3bd3b3392f', '', '', 'Website', '', 'tampilkomentar,analisaberita,arsipberita,databaseberita', 0, 1, '2015-10-13 08:00:31', ''),
(563, 'sudintamanju', 'Suku Dinas Pertamanan dan Pemakaman Kota Administrasi Jakarta Utara', '10acaefd3bac3ddcf5456eaa2f497ccc', '', '', 'Website', '', 'tampilkomentar,analisaberita,arsipberita,databaseberita', 0, 1, '2016-05-03 01:08:49', ''),
(564, 'sudinkumkmppseribu', 'Suku Dinas Koperasi, UMKM, dan Perdagangan Kab Administrasi Kep Seribu', '746023997ebe089e79bc27d83eefa48b', '', '', 'Website', '', 'tampilkomentar,analisaberita,arsipberita,databaseberita', 0, 1, '2016-05-02 06:25:59', ''),
(565, 'sudinpepseribu', 'Suku Dinas Perindustrian dan Energi Kab Administrasi Kepulauan Seribu', 'd1c01b34cbfc40be1bac0bcc45bf6726', '', '', 'Website', '', 'tampilkomentar,analisaberita,arsipberita,databaseberita', 0, 1, '2016-05-02 07:20:33', ''),
(566, 'sudinkpkppseribu', 'Suku Dinas KPKP Keb Administrasi Kepulauan Seribu', '6f3bdb994043c82aebeb7945e8bd96b8', '', '', 'Website', '', 'tampilkomentar,analisaberita,arsipberita,databaseberita', 0, 1, '2016-05-02 06:24:31', ''),
(567, 'sudinparbudpseribu', 'Suku Dinas Pariwisata dan kebudayaan Keb Administrasi Kepulauan Seribu', '649f5ac5f11ab6124e324851beb830d3', '', '', 'Website', '', 'tampilkomentar,analisaberita,arsipberita,databaseberita', 0, 1, '2016-05-02 07:18:35', ''),
(568, 'sudinhubtranspseribu', 'Suku Dinas Perhubungan dan Transportasi Kab Administrasi Kepulauan Seribu', '4a49791727bf1e4a9d92fcb003ee0d15', '', '', 'Website', '', 'tampilkomentar,analisaberita,arsipberita,databaseberita', 0, 1, '2016-05-02 06:18:20', ''),
(569, 'sudinnakertranspseribu', 'Suku Dinas Tenaga Kerja dan Transmigrasi Kab Administrasi Kepulauan Seribu', 'a2f2def8b3eb647aa9f831d57c9ee632', '', '', 'Website', '', 'tampilkomentar,analisaberita,arsipberita,databaseberita', 0, 1, '2016-05-02 07:13:52', ''),
(570, 'sudinpppseribu', 'Suku Dinas Pelayanan Pajak Kab Administrasi Kepulauan Seribu', '850d808946eebb92f485d7417c92a2d3', '', '', 'Website', '', 'tampilkomentar,analisaberita,arsipberita,databaseberita', 0, 1, '2016-05-02 07:24:40', ''),
(571, 'sudinkominfomaspseribu', 'Suku Dinas Kominfomas Kab Administrasi Kepulauan Seribu', '4f94b513874349415210e57169097760', 'sudinkominfomaspseribu', '', 'Website', '', 'tampilkomentar,arsipberita,databaseberita,totalberita,nadaberita,bidangberita,narasumberberita', 0, 1, '2016-05-02 06:22:41', ''),
(572, 'sudindamkarpseribu', 'Suku Dinas Penanggulangan Kebakaran Kabupaten Administrasi Kepulauan Seribu', 'cdc93f263daa6712dd3138c20a31afb2', '', '', 'Website', '', 'tampilkomentar,analisaberita,arsipberita,databaseberita', 0, 1, '2016-05-02 02:15:48', ''),
(573, 'sudindukcapilpseribu', 'Suku Dinas Kependudukan dan Catatan Sipil Kab Administrasi Kepulauan Seribu', '02f02a1e175863eb7baefd1f2df2af28', '', '', 'Website', '', 'tampilkomentar,analisaberita,arsipberita,databaseberita', 0, 1, '2016-05-02 03:47:12', ''),
(574, 'sudinbmpseribu', 'Suku Dinas Bina Marga Kabupaten Administrasi Kepulauan Seribu', '1bf8822964242f55c29dbf77a2afa43d', '', '', 'Website', '', 'tampilkomentar,analisaberita,arsipberita,databaseberita', 0, 1, '2016-05-02 02:08:38', ''),
(575, 'sudintapseribu', 'Suku Dinas Tata Air Kab Administrasi Kep Seribu', '06c5a21cb7e7bc16bab49ccbf65d1cdd', '', '', 'Website', '', 'tampilkomentar,analisaberita,arsipberita,databaseberita', 0, 1, '2016-05-03 01:09:29', ''),
(576, 'sudinpgpdpseribu', 'Sudin Perumahan Rakyat & Kawasan Permukiman Kota Administrasi Kep Seribu', 'ec0230b4b4ae4e72b94a739bf6e9a9b7', 'sudinpgpdpseribu', '', 'Website', '', 'tampilkomentar,analisaberita,arsipberita,databaseberita', 0, 1, '2017-03-21 02:11:03', ''),
(577, 'dinastatakota', 'Suku Dinas Tata Kota Kepulauan Seribu', '895bf803fce99065e22abd03ed7837c0', '', '', 'Website', '', 'tampilkomentar,analisaberita,arsipberita,databaseberita', 0, 1, '2015-10-15 01:18:39', ''),
(578, 'sudintamanpseribu', 'Suku Dinas Pertamanan dan Pemakaman Kab Administrasi Kep Seribu', '2a85df5668bd3f41f8af288c1b94a7b2', '', '', 'Website', '', 'tampilkomentar,analisaberita,arsipberita,databaseberita', 0, 1, '2016-05-03 01:09:06', ''),
(579, 'sudinbersihpseribu', 'Suku Dinas Kebersihan Kabupaten Kepulauan Seribu', 'bc742ad6dd43ef9e5e0a13e19eda6286', '', '', 'Website', '', 'tampilkomentar,analisaberita,arsipberita,databaseberita', 0, 1, '2016-05-02 02:05:39', ''),
(580, 'sudinsospseribu', 'Suku Dinas Sosial Kab Administrasi Kepulauan Seribu', '0049648c22c180481648f92a6357e695', '', '', 'Website', '', 'tampilkomentar,analisaberita,arsipberita,databaseberita', 0, 1, '2016-05-03 01:02:59', ''),
(581, 'sudindikpseribu', 'Suku Dinas Pendidikan Kab Administrasi Kepulauan Seribu', '810ed550c4dc0ea4b4ec46048799f95e', '', '', 'Website', '', 'tampilkomentar,analisaberita,arsipberita,databaseberita', 0, 1, '2016-05-03 01:16:24', ''),
(582, 'sudinkespseribu', 'Suku Dinas Kesehatan Kab Administrasi Kepulauan Seribu', '8979ecaceb0b0af28768d63471836df0', '', '', 'Website', '', 'tampilkomentar,analisaberita,arsipberita,databaseberita', 0, 1, '2016-05-02 06:20:07', ''),
(583, 'sudinordapseribu', 'Suku Dinas Olahraga dan Pemuda Kab Administrasi Kepulauan Seribu', '1777295af5fa65f3258a1693c17b0102', '', '', 'Website', '', 'tampilkomentar,analisaberita,arsipberita,databaseberita', 0, 1, '2016-05-02 07:17:01', ''),
(584, 'transjakarta', 'PT. Transportasi Jakarta', 'e1bb70f0375a1d7733f71bf485a0262f', '', '', 'Website', '', 'tampilkomentar,arsipberita,databaseberita', 0, 1, '2015-11-06 06:03:19', ''),
(585, 'fstj', 'PT. Food Station Tjipinang Jaya', '4b831cf50380713ad362e892d392286c', '', '', 'Website', '', 'tampilkomentar,analisaberita,arsipberita,databaseberita', 0, 1, '2015-10-15 05:45:12', ''),
(586, 'rskudds', 'RSKUD Duren Sawit', '098c498cba45399990278804242e6bbb', '', '', 'Website', '', 'tampilkomentar,analisaberita,arsipberita,databaseberita', 0, 1, '2015-10-16 03:42:06', ''),
(587, 'rsudba', 'RSUD Budi Asih', '5d8d734e14a4ad8025d4bd6707991c10', '', '', 'Website', '', 'tampilkomentar,analisaberita,arsipberita,databaseberita', 0, 1, '2015-10-16 03:43:01', ''),
(588, 'rsudprebo', 'RSUD Pasar Rebo', '521afd60ab977d0f3e2c156cfc1bc62b', '', '', 'Website', '', 'tampilkomentar,analisaberita,arsipberita,databaseberita', 0, 1, '2015-10-16 03:43:53', ''),
(589, 'rsudcgk', 'RSUD Cengkareng', 'd10e5e95653241d46d4d0af1feba1b68', '', '', 'Website', '', 'tampilkomentar,analisaberita,arsipberita,databaseberita', 0, 1, '2015-10-16 03:44:27', ''),
(643, 'psppkk', 'PSPP Khusnul Khotimah', 'a7e9333140c70025c567ebe4048961a1', '', '', 'Website', '', 'tampilkomentar,arsipberita,databaseberita', 0, 1, '2015-11-03 06:02:18', ''),
(591, 'rsudkoja', 'RSUD Koja', '9f459b03eb1ce1dc2d4a0d111e0437a3', '', '', 'Website', '', 'tampilkomentar,analisaberita,arsipberita,databaseberita', 0, 1, '2015-10-16 03:45:30', ''),
(592, 'kelulujami', 'Kelurahan Ulujami', 'd381ed0229a740d316fea4004fa7eba5', '', '', 'Website', '', 'tampilkomentar,analisaberita,arsipberita,databaseberita', 0, 1, '2015-10-16 04:24:32', ''),
(593, 'bappeda', 'Badan Perencanaan Pembangunan Daerah', '5daf21d5a174841f7368b6172d107462', 'bappeda', '02082016102744', 'Website', '', 'arsipberita,totalberita,nadaberita,bidangberita,narasumberberita', 0, 1, '2017-05-31 00:49:30', ''),
(594, 'inspektorat', 'Inspektorat', '9795e862af22ecb7ebc171e1dc46c068', 'inspektorat', '02082016102635', 'Website', '', 'arsipberita,totalberita,nadaberita,bidangberita,narasumberberita', 0, 1, '2017-05-31 00:32:35', ''),
(595, 'kelmprptn', 'Kelurahan Mampang Prapatan', '4a79e47602d509836b9b5ff14bdd8408', '', '', 'Website', '', 'tampilkomentar,analisaberita,arsipberita,databaseberita', 0, 1, '2015-10-16 05:59:13', ''),
(596, 'kelsemanggi', 'Kelurahan Semanggi', '76fb6e3c580d6dcc918a75ba51d646b6', '', '', 'Website', '', 'tampilkomentar,analisaberita,arsipberita,databaseberita', 0, 1, '2015-10-16 06:09:08', ''),
(597, 'kelbaru', 'Kelurahan Baru', '74ba3c94e7f17a4b5e6c911f76a3f6b8', '', '', 'Website', '', 'tampilkomentar,analisaberita,arsipberita,databaseberita', 0, 1, '2015-10-16 06:14:13', ''),
(598, 'kelgedong', 'Kelurahan Gedong', 'feefb95348d8d846772ace53c1a9d5f9', '', '', 'Website', '', 'tampilkomentar,analisaberita,arsipberita,databaseberita', 0, 1, '2015-10-16 06:15:43', ''),
(599, 'kelrambutan', 'Kelurahan Rambutan', 'cb6af2895ee701c9a1c25d81d2032fcd', '', '', 'Website', '', 'tampilkomentar,analisaberita,arsipberita,databaseberita', 0, 1, '2015-10-16 06:21:03', ''),
(600, 'keltengah', 'Kelurahan Tengah', '17c0b654a7d8f1671d42209c3ac6c68c', '', '', 'Website', '', 'tampilkomentar,analisaberita,arsipberita,databaseberita', 0, 1, '2015-10-16 06:24:16', ''),
(601, 'kelblmstr', 'Kelurahan Bali Mester', '55ab1ef03cda333bf0390fc19b1b87f5', '', '', 'Website', '', 'tampilkomentar,analisaberita,arsipberita,databaseberita', 0, 1, '2015-10-16 06:27:19', ''),
(602, 'kelmender', 'Kelurahan Mender', '1b3d79d2066318f58e85eb95d410445e', '', '', 'Website', '', 'tampilkomentar,analisaberita,arsipberita,databaseberita', 0, 1, '2015-10-16 06:30:07', ''),
(603, 'keljoglo', 'Kelurahan Joglo', 'e4b9b0dc157e632986bd762bf6d2b5e5', '', '', 'Website', '', 'tampilkomentar,analisaberita,arsipberita,databaseberita', 0, 1, '2015-10-16 06:55:47', ''),
(604, 'kelsrsw', 'Kelurahan Serengseng Sawah', 'f2f8197440628bf2c4fe34c54259f264', '', '', 'Website', '', 'tampilkomentar,analisaberita,arsipberita,databaseberita', 0, 1, '2015-10-16 06:58:46', ''),
(605, 'kelksmb', 'Kelurahan Kosambi', '6770535624adf1cf7656285a154af2a1', '', '', 'Website', '', 'tampilkomentar,analisaberita,arsipberita,databaseberita', 0, 1, '2015-10-16 07:03:17', ''),
(606, 'puskespminggu', 'Puskesmas Pasar Minggu', '5b5abef051d9b60fbc66313746c6dfc4', '', '', 'Website', '', 'tampilkomentar,analisaberita,arsipberita,databaseberita', 0, 0, '2015-10-30 03:55:43', ''),
(706, 'Syali', 'Syali Gestanon', '5f0a9911739ae3f4b1866afb605da7e9', 'syali', NULL, 'CMS', '', 'admin,adminwebsite,menusub,menucat,change,kategori,media,bidang,wilayah,tonality,ukuran,warna,tujuan,opini,suratpembaca,scanning,analisascanning,analiscetak,analisistemcetak,sinopsiscetak,tv,online,analistv,periodiktv,sinopsistv,analisol,periodikol,sinopsisol,laporan,laptonality', 0, 1, '0000-00-00 00:00:00', ''),
(608, 'puskesmksr', 'Puskesmas Makassar', 'b00bd8916e61cc37372e6dcc4473dc28', '', '', 'Website', '', 'tampilkomentar,analisaberita,arsipberita,databaseberita,nadaberita,bidangberita,narasumberberita', 0, 1, '2015-10-30 04:32:08', ''),
(609, 'uptkotatua', 'UPT Kota Tua', 'f0d7094a87af01e988cf8275319fe64f', '', '', 'Website', '', 'tampilkomentar,analisaberita,arsipberita,databaseberita,nadaberita,bidangberita,narasumberberita', 0, 1, '2015-10-30 04:36:18', ''),
(610, 'rsukjgkrs', 'RSUK Jagakarsa', 'f9ce4068044d3a551cf979a6d06ea6a3', '', '', 'Website', '', 'tampilkomentar,analisaberita,arsipberita,databaseberita,nadaberita,bidangberita,narasumberberita', 0, 1, '2015-10-30 04:38:30', ''),
(611, 'biroeko', 'Biro Perekonomian', '961755cc6089086240f0a32a057fb247', '', '', 'Website', '', 'tampilkomentar,analisaberita,arsipberita,databaseberita', 0, 1, '2015-10-30 07:14:03', ''),
(612, 'akperjykrt', 'Akper Jayakarta', 'b696d8821fe9b44fd4fdc30eba2763c2', '', '', 'Website', '', 'tampilkomentar,analisaberita,arsipberita,databaseberita', 0, 1, '2015-10-30 07:38:08', ''),
(613, 'sudiparbudjt', 'Suku Dinas Pariwisata dan Kebudayaan Kota Administrasi Jakarta Timur', 'd06508d8f71252b375d9544fe886ac6b', 'megantoro', '', 'Website', '', 'tampilkomentar,analisaberita,arsipberita,databaseberita', 0, 1, '2016-05-03 01:13:14', ''),
(614, 'bpadks', 'Badan Perpustakaan dan Arsip Daerah Kepu', '90bb6bf5f3ca8160af1168215009fbb6', '', '', 'Website', '', 'tampilkomentar,analisaberita,databaseberita', 0, 1, '2015-11-02 00:56:44', ''),
(615, 'biroumum', 'Biro Umum Setda Provinsi DKI Jakarta', 'f8326382b1bc0c4e484ff26ab65e0c39', 'biroumum', '02082016102608', 'Website', '', 'arsipberita,totalberita,nadaberita,bidangberita,narasumberberita', 0, 1, '2017-05-31 00:27:21', ''),
(616, 'uptp3k', 'UP Pusat Pelatihan Profesi Kepariwisataa', '39193976aec02f6e59692f3ed18b780e', '', '', 'Website', '', 'tampilkomentar,arsipberita,databaseberita', 0, 1, '2015-11-02 02:59:34', ''),
(617, 'biropkota', 'Biro Penataan Kota', '6a42c94f656dadc4703116a477845a8c', '', '', 'Website', '', 'tampilkomentar,arsipberita,databaseberita', 0, 1, '2015-11-02 03:03:52', ''),
(618, 'gremajajb', 'Unit Pengelola Gelanggang Remaja Jakarta', '131b1e0f40181e3f55cca080c1956d38', '', '', 'Website', '', 'tampilkomentar,arsipberita,databaseberita', 0, 1, '2015-11-02 03:29:08', ''),
(619, 'upkar', 'Unit Pengelola Kereta Api ringan', 'bb4364bd5f331e549348e4e9c5d54ea4', '', '', 'Website', '', 'tampilkomentar,arsipberita,databaseberita', 0, 1, '2015-11-02 04:05:16', ''),
(620, 'pansosbk', 'Panti Sosial Perlindungan Bhakti Kasih ', '9b4ec2ef692207efe9d2a99066c9fa12', '', '', 'Website', '', 'tampilkomentar,arsipberita,databaseberita', 0, 1, '2015-11-02 04:50:56', ''),
(621, 'ppsb', 'Unit Pengelola Pusat Pelatihan Seni Buda', '1d18714df014a1e88dc83b20fe1f1236', '', '', 'Website', '', 'tampilkomentar,arsipberita,databaseberita', 0, 1, '2015-11-02 05:43:45', ''),
(622, 'bpadjb', 'Badan Perpustakaan Arsip Daerah Jakarta ', 'c87f5ea4070a027b267faf9dd6ded2b9', '', '', 'Website', '', 'tampilkomentar,arsipberita,databaseberita', 0, 1, '2015-11-02 05:54:54', ''),
(623, 'satpolppjb', 'Satpol PP Kota Administrasi Jakarta Barat', 'ee1bc54fe9aeb2b505180d855b6639b2', '', '', 'Website', '', 'tampilkomentar,arsipberita,databaseberita', 0, 1, '2016-05-03 01:17:58', ''),
(624, 'inspektoratjb', 'Inspektorat Jakarta Barat', '2db2ffeee30074c2eafffcd51be8d139', '', '', 'Website', '', 'tampilkomentar,arsipberita,databaseberita', 0, 1, '2015-11-02 06:09:56', ''),
(625, 'kanpekojb', 'Kantor Perencanaan Pembangunan Kota Jaka', 'fce6916fcdf12a7c4268edf89841b7a9', '', '', 'Website', '', 'tampilkomentar,arsipberita,databaseberita', 0, 1, '2015-11-02 06:17:58', ''),
(626, 'sekorprijb', 'Sekertariat Korpri Jakarta Barat', '18f102f6eb472cce4b0d5b08c39d0524', '', '', 'Website', '', 'tampilkomentar,arsipberita,databaseberita', 0, 1, '2015-11-02 06:27:43', ''),
(627, 'ppkbcilincing', 'UPT Pusat PKB Cilincing', '981bfd8f25bf6d21e9f6edc6208a7134', '', '', 'Website', '', 'tampilkomentar,arsipberita,databaseberita', 0, 1, '2015-11-02 06:37:03', ''),
(628, 'gremajaju', 'Unit Pengelola Gelanggang Remaja Jakarta', '445bb240c44934a7411e17f75d40309b', '', '', 'Website', '', 'tampilkomentar,arsipberita,databaseberita', 0, 1, '2015-11-02 07:37:17', ''),
(629, 'kkkpseribu', 'Kantor Kepegawaian Kota Kepulauan Seribu', 'c534263b6c54b34855576d9adf5a4546', '', '', 'Website', '', 'tampilkomentar,arsipberita,databaseberita', 0, 1, '2015-11-02 07:41:05', ''),
(630, 'bpmpkbpseribu', 'Badan Pemberdayaan Masyarakat dan Peremp', '006440f26ea1391d4985f0cb54d7ac99', '', '', 'Website', '', '', 0, 1, '2015-11-02 07:44:25', ''),
(631, 'sekrekorpripseribu', 'Sekertariat Korpri Kepulauan Seribu', 'a4e28b5bdb1d3c754f85518edcee22da', '', '', 'Website', '', 'tampilkomentar,arsipberita,databaseberita', 0, 1, '2015-11-02 07:46:32', ''),
(632, 'sudinnaspppseribu', 'Suku Dinas Pelayanan Pajak Kab Administrasi Kepulauan Seribu', '9e060974c00e55602b402dd9125936d2', '', '', 'Website', '', 'tampilkomentar,arsipberita,databaseberita', 0, 1, '2016-05-02 07:15:39', ''),
(633, 'inspektoratpseribu', 'Inspektorat Kepulauan Seribu', 'd21114a056c46bdb9a3846ecc7bfe352', '', '', 'Website', '', 'tampilkomentar,arsipberita,databaseberita', 0, 1, '2015-11-02 07:52:45', ''),
(634, 'gorcdh', 'Gelanggang Olahraga Cendrawasih', 'f39d8ffee50af96374996114c0495b82', '', '', 'Website', '', 'tampilkomentar,arsipberita,databaseberita', 0, 1, '2015-11-02 07:58:35', ''),
(635, 'klhpseribu', 'Kantor Lingkungan Hidup Kepulauan Seribu', 'ea0fd9b653cb3e32f0d54a2a9756f4b8', '', '', 'Website', '', 'tampilkomentar,arsipberita,databaseberita', 0, 1, '2015-11-02 08:00:31', ''),
(636, 'kanpekabpseribu', 'Kantor Pemerintah Kabupaten Kepulauan Seribu', '20d7493ee87ddb404d80ed52147f6d05', '', '', 'Website', '', 'tampilkomentar,arsipberita,databaseberita', 0, 1, '2016-05-02 01:57:20', ''),
(637, 'diklatdamkar', 'Pusat Pendidikan dan Pelatihan Pemadam K', '06628363469fea54bd0112238427ade2', '', '', 'Website', '', 'tampilkomentar,arsipberita,databaseberita', 0, 1, '2015-11-02 08:25:25', ''),
(638, 'psblhs3', 'PSBL Harapan Sentosa 3 Dinas Sosial Prov', '25870d9c13e06b3ef9ca10f5ea4552cb', '', '', 'Website', '', 'tampilkomentar,arsipberita,databaseberita', 0, 1, '2015-11-03 02:13:43', ''),
(639, 'uprsw2', 'Unit Pengelola Rumah Susun Wilayah 2', '6a361f8c20b0374b91be5ef58da2217f', '', '', 'Website', '', 'tampilkomentar,arsipberita,databaseberita', 0, 1, '2015-11-03 02:31:22', ''),
(640, 'upmsdispar', 'Unit Pengelola Museum Seni Dinas Pariwis', '3fc6d894421b2b1a09710fea7f2f95d6', '', '', 'Website', '', 'tampilkomentar,arsipberita,databaseberita', 0, 1, '2015-11-03 04:28:15', ''),
(641, 'pbdkl', 'Pusat Budidaya dan Konservasi Laut', 'f82e3f1e3950fe9b366c6f171d7783d7', '', '', 'Website', '', 'tampilkomentar,arsipberita,databaseberita', 0, 1, '2015-11-03 04:50:38', ''),
(642, 'rsudtarakan', 'RSUD Tarakan', 'faa74baf4e67647e5bf6da5782adcb59', '', '', 'Website', '', 'tampilkomentar,arsipberita,databaseberita', 0, 1, '2015-11-03 05:08:56', ''),
(644, 'pansosaapu1', 'Panti Sosial Asuhan Anak Putra Utama 1', 'ea084d729d8b3503477efc792e12ae63', '', '', 'Website', '', 'tampilkomentar,arsipberita,databaseberita', 0, 1, '2015-11-03 06:09:51', ''),
(645, 'birodikmental', 'Biro Pendidikan dan Mental Spiritual Setda Provinsi DKI Jakarta', 'f163b5d9a2baefa5050dd75d250c041c', 'birodikmental', '02082016102948', 'Website', '', 'arsipberita,totalberita,nadaberita,bidangberita,narasumberberita', 0, 1, '2017-05-31 00:31:31', ''),
(646, 'birokesos', 'Biro Kesejahteraan Sosial Setda Provinsi DKI Jakarta', '68a1babc3b918e59d6b0176a5de50ba4', 'birokesos', '02082016102923', 'Website', '', 'arsipberita,totalberita,nadaberita,bidangberita,narasumberberita', 0, 1, '2017-05-31 00:31:13', ''),
(647, 'upmkju', 'Unit Pengelola Museum Kebaharian Jakarta', '4078e8082ae82862d5e1de842ee7bf9d', '', '', 'Website', '', 'tampilkomentar,arsipberita,databaseberita', 0, 1, '2015-11-04 01:32:23', ''),
(648, 'pansosbgbk', 'Panti Sosial Bina Grahita Belaian Kasih', '5e26f8b6788d079e3ca22eb35cf0dbd6', '', '', 'Website', '', 'tampilkomentar,arsipberita,databaseberita', 0, 1, '2015-11-04 06:30:12', ''),
(649, 'pansostwbm1', 'Panti Sosial Tresna werdha Budi Mulia 1 ', '384cc73f5ccdf8ef7f6172dbd886d865', '', '', 'Website', '', 'tampilkomentar,arsipberita,databaseberita', 0, 1, '2015-11-04 06:53:27', ''),
(650, 'pansosbibd2', 'Panti Sosial Bina Insan Bangun Daya 2 ', '50d9e6ef1e09faf8bb2aa965627a742c', '', '', 'Website', '', 'tampilkomentar,arsipberita,databaseberita', 0, 1, '2015-11-04 06:54:28', ''),
(651, 'pansosbkwhm', 'Panti Sosial Bina Karya Wanita Harapan M', '8bbdfdb17e1f81c802cc5d26c0817c48', '', '', 'Website', '', 'tampilkomentar,arsipberita,databaseberita', 0, 1, '2015-11-04 07:30:10', ''),
(652, 'pansosbkhj', 'Panti Sosial Bina Karya Harapan Jaya', 'd6d8b93f0e5ddad08c7a2079b84c9872', '', '', 'Website', '', 'tampilkomentar,arsipberita,databaseberita', 0, 1, '2015-11-04 07:39:25', ''),
(653, 'jsc', 'UPT Jakarta Smart City', '3df946509e125a20cdf02187f01d8072', '', '', 'Website', '', 'tampilkomentar,arsipberita,databaseberita', 0, 1, '2015-11-05 04:04:17', ''),
(654, 'psbdbb', 'PSBD Budi Bhakti', 'a2956277c4cdaa3f6d6f6a34c7123c1e', '', '', 'Website', '', 'tampilkomentar,arsipberita,databaseberita', 0, 1, '2015-11-05 05:44:53', ''),
(655, 'upgorjs', 'Unit Pengelola Gelanggang Remaja Jakarta', '6bc292be8ad853bbc63f8f8213d1a645', '', '', 'Website', '', 'tampilkomentar,arsipberita,databaseberita', 0, 1, '2015-11-05 08:12:58', ''),
(656, 'pansosaapu2', 'Panti Sosial  Asuhan Anak Putra Utama 2', 'dad2b3990621b826a4b10871ce0e6c88', '', '', 'Website', '', 'tampilkomentar,arsipberita,databaseberita', 0, 1, '2015-11-06 01:50:07', ''),
(657, 'pansostwbm4', 'Panti Sosial Tresna werdha Budi Mulia 4', 'e2a04cfabf53f429a3d16092ed62b92a', '', '', 'Website', '', 'tampilkomentar,arsipberita,databaseberita', 0, 1, '2015-11-06 07:00:52', ''),
(658, 'satpolpseribu', 'Satpol PP Kab Administrasi Kepulauan Seribu', 'a2397f6f877dfcd7f25bb2192e647081', '', '', 'Website', '', 'tampilkomentar,arsipberita,databaseberita', 0, 1, '2016-05-03 01:18:14', ''),
(659, 'rsupseribu', 'Rumah Sakit Umum Kepulauan Seribu', '2c8551939a8b7c1535abb254fb343ef5', '', '', 'Website', '', 'tampilkomentar,arsipberita,databaseberita', 0, 1, '2015-11-11 02:53:36', ''),
(660, 'samb', 'Seksi Analisa dan Pemberitaan Media', '4f01a009c0ac219e33d7a7cafde632b6', '', '', 'Website', '', 'tampilkomentar,arsipberita,databaseberita', 0, 1, '2015-11-11 02:57:20', ''),
(661, 'kaarsipseribu', 'Kantor Arsip Kepulauan Seribu', '15aa94116fda9d4b4316f43124d797b5', '', '', 'Website', '', 'tampilkomentar,arsipberita,databaseberita', 0, 1, '2015-11-11 02:59:20', ''),
(662, 'galih', 'Galih Tirta Samudra', '2928a1392e32267da703c333c3a476c7', 'galih', '02032015073744', 'Website', '', 'tampilkomentar,arsipberita,databaseberita', 0, 1, '2017-05-17 08:58:37', ''),
(663, 'firman', 'Firman', '7eda9a0d45d4dbfa99e06d4f402c2e67', 'firman', '', 'Website', '', 'tampilkomentar,arsipberita,databaseberita', 0, 1, '2016-01-19 04:34:59', ''),
(664, 'galih', 'galih', '2928a1392e32267da703c333c3a476c7', 'galih', NULL, 'CMS', '', 'admin,adminwebsite,menusub,menucat,kategori,media,bidang,wilayah,tonality,ukuran,warna,tujuan,opini,suratpembaca,scanning,analisascanning,analisaperiodik,analisaharian,edittone,laporan,laptonality', 0, 1, '2015-11-26 00:05:12', ''),
(665, 'firman', 'firman', '7eda9a0d45d4dbfa99e06d4f402c2e67', 'firman', NULL, 'CMS', '', 'admin,adminwebsite,menusub,menucat,change,kategori,media,bidang,wilayah,tonality,ukuran,warna,tujuan,opini,suratpembaca,scanning,analisascanning,flipbook,laporan,laptonality', 0, 1, '0000-00-00 00:00:00', ''),
(666, 'miftah', 'Mas Miftah', '2a0c22d3d3f2a236d4c79a37333771d0', '', '', 'Website', '', 'tampilkomentar,analisaberita,arsipberita,databaseberita,totalberita,nadaberita,bidangberita,narasumberberita', 0, 1, '2016-01-15 02:08:55', ''),
(667, 'joyreza', 'Joy Reza Ramli', 'c585e80bf841dfaaa8fa049689cc5c0a', '', '', 'Website', '', 'kirimkomentar,tampilkomentar,analisaberita,arsipberita,databaseberita,totalberita,nadaberita,bidangberita,narasumberberita', 0, 1, '2015-11-30 02:00:01', ''),
(668, 'miftah', 'Mas Miftah', '2a0c22d3d3f2a236d4c79a37333771d0', 'miftah', NULL, 'CMS', '', 'admin,adminwebsite,menusub,menucat,change,kategori,media,bidang,wilayah,tonality,ukuran,warna,tujuan,opini,suratpembaca,scanning,analisascanning,analiscetak,analisistemcetak,sinopsiscetak,tv,online,analistv,periodiktv,sinopsistv,analisol,periodikol,sinopsisol,galeri,flipbook,laporan,laptonality', 0, 1, '2016-07-21 04:58:20', ''),
(669, 'joyreza', 'Joy Reza Ramli', '2a0c22d3d3f2a236d4c79a37333771d0', '', NULL, 'CMS', '', 'admin,adminwebsite,change,kategori,media,bidang,wilayah,tonality,ukuran,warna,tujuan,opini,suratpembaca,scanning,analisascanning,isudominan,pengunjung,laporan,laptonality', 0, 1, '0000-00-00 00:00:00', ''),
(670, 'tgupp', 'Tim Gubernur Untuk Percepatan Pembanguna', '706a83e0c2b2dd8d57b546c1c4e77650', '', '', 'Website', '', 'tampilkomentar,arsipberita,databaseberita,totalberita,nadaberita,bidangberita,narasumberberita', 0, 1, '2015-12-02 01:02:50', ''),
(671, 'menta', 'Menta Basita Bangun', '14796874e69496c2e3fb2e796b084165', '', '', 'Website', '', 'tampilkomentar,arsipberita,databaseberita,totalberita,nadaberita,bidangberita,narasumberberita', 0, 1, '2015-12-07 02:12:02', ''),
(672, 'samb', 'Seksi Analisa dan Monitoring Media', '4f01a009c0ac219e33d7a7cafde632b6', '', '', 'Website', '', 'tampilkomentar,arsipberita,databaseberita,totalberita,nadaberita,bidangberita,narasumberberita', 0, 1, '2015-12-11 07:52:07', ''),
(673, 'siepublikasi', 'Seksi Publikasi dan Dokumentasi', 'c65e4aab4fe857b2680d792f40c5babb', '', '', 'Website', '', 'tampilkomentar,arsipberita,databaseberita,totalberita,nadaberita,bidangberita,narasumberberita', 0, 1, '2015-12-11 02:35:22', ''),
(674, 'siekemitraan', 'Seksi Kemitraan', '67204fd068a1fae7bdf9e257414e09d4', '', '', 'Website', '', 'tampilkomentar,arsipberita,databaseberita,totalberita,nadaberita,bidangberita,narasumberberita', 0, 1, '2015-12-11 02:35:53', ''),
(675, 'penerbitan', 'Seksi Penerbitan dan Media Luar Ruang', '49c45e2757e401ae34c6646b1805c5af', '', '', 'Website', '', 'tampilkomentar,arsipberita,databaseberita,totalberita,nadaberita,bidangberita,narasumberberita', 0, 1, '2015-12-11 07:52:26', ''),
(676, 'siepip', 'Seksi Informasi Publik', 'dd3c0d86ecf2efcd84cb9a58d9100887', '', '', 'Website', '', 'tampilkomentar,arsipberita,databaseberita,totalberita,nadaberita,bidangberita,narasumberberita', 0, 1, '2015-12-11 07:53:19', ''),
(677, 'siedatin', 'Seksi Data dan Informasi', 'dd3c0d86ecf2efcd84cb9a58d9100887', '', '', 'Website', '', 'tampilkomentar,arsipberita,databaseberita', 0, 1, '2015-12-11 07:52:53', ''),
(678, 'bidhum', 'Kabid Kehumasan', '5ec882fb7d781bb338e7bde3ea8fd0d1', '', '', 'Website', '', 'tampilkomentar,arsipberita,databaseberita,totalberita,nadaberita,bidangberita,narasumberberita', 0, 1, '2015-12-11 07:54:21', ''),
(679, 'bidpip', 'Kabid Informasi Publik', 'c7d6cb5d2ab75ce8beb1b2ba80a23b10', '', '', 'Website', '', 'tampilkomentar,arsipberita,databaseberita,totalberita,nadaberita,bidangberita,narasumberberita', 0, 1, '2015-12-11 07:55:08', ''),
(709, 'Dadang', 'Dadang', 'f63f1ed278d0cb8f2ede661328779791', 'dadang', NULL, 'CMS', '', 'scanning,analisascanning,analiscetak,analisistemcetak,sinopsiscetak,galeri,flipbook,laporan,laptonality', 0, 1, '0000-00-00 00:00:00', ''),
(681, 'erik', 'erik', 'f12537e9605b2b1bf3122bb12a0e24f7', 'erik', NULL, 'CMS', '', 'admin,adminwebsite,menusub,menucat,change,kategori,media,bidang,wilayah,tonality,ukuran,warna,tujuan,opini,suratpembaca,scanning,analisascanning,analiscetak,analisistemcetak,sinopsiscetak,tv,online,analistv,periodiktv,sinopsistv,analisol,periodikol,sinopsisol,laporan', 0, 1, '0000-00-00 00:00:00', ''),
(682, 'agus', 'agus', '01c3c766ce47082b1b130daedd347ffd', 'agus', NULL, 'CMS', '', 'change,scanning,analiscetak,analisistemcetak,sinopsiscetak,isudominan,laporan', 0, 1, '0000-00-00 00:00:00', ''),
(762, 'fadhli', 'fadhli', '131037ff94e6e0386ed50624286024fc', 'fadhli', NULL, 'CMS', '', 'admin,adminwebsite,kategori,media,bidang,wilayah,tonality,ukuran,warna,tujuan,opini,suratpembaca,scanning,analisascanning,analiscetak,analisistemcetak,sinopsiscetak,tv,online,analistv,periodiktv,sinopsistv,analisol,periodikol,sinopsisol,galeri,flipbook,isudominan,pengunjung,laporan', 0, 1, '0000-00-00 00:00:00', ''),
(684, 'lily', 'lily', 'b42669c97237ef087cc18c67afaac878', 'lily', NULL, 'CMS', '', 'admin,adminwebsite,menusub,menucat,change,kategori,media,bidang,wilayah,tonality,ukuran,warna,tujuan,opini,suratpembaca,scanning,analisascanning,analiscetak,analisistemcetak,sinopsiscetak,tv,online,analistv,periodiktv,sinopsistv,analisol,periodikol,sinopsisol,galeri,flipbook,laporan', 0, 1, '2016-07-29 06:05:23', ''),
(685, 'agus', 'agus', '01c3c766ce47082b1b130daedd347ffd', 'agus', '', 'Website', '', 'tampilkomentar,analisaberita,arsipberita,databaseberita,totalberita,nadaberita,bidangberita,narasumberberita', 0, 1, '2016-01-15 02:07:50', ''),
(687, 'fadhli', 'fadhli', '131037ff94e6e0386ed50624286024fc', 'fadhli', '', 'Website', '', 'tampilkomentar,analisaberita,arsipberita,databaseberita,totalberita,nadaberita,bidangberita,narasumberberita', 0, 1, '2017-01-05 01:44:46', ''),
(688, 'joy', 'joy', '0d5425118d7aaa57e0f18a9e0d87104b', 'joy', '', 'Website', '', 'tampilkomentar,analisaberita,arsipberita,databaseberita,totalberita,nadaberita,bidangberita,narasumberberita', 0, 1, '2016-01-14 02:34:12', ''),
(689, 'joy', 'joy', '0d5425118d7aaa57e0f18a9e0d87104b', 'joy', NULL, 'CMS', '', 'admin,adminwebsite,menusub,menucat,change,kategori,media,bidang,wilayah,tonality,ukuran,warna,tujuan,opini,suratpembaca,scanning,analisascanning,analiscetak,analisistemcetak,sinopsiscetak,galeri,flipbook,isudominan,pengunjung,laporan,laptonality', 0, 1, '0000-00-00 00:00:00', ''),
(707, 'KPKIP', 'KPKIP', '6b5e36a86e4ae9dda3e34000fdde20c1', 'kpkip', '', 'Website', '', 'tampilkomentar,arsipberita,databaseberita,totalberita,nadaberita,bidangberita,narasumberberita', 0, 1, '2016-01-27 04:04:13', ''),
(691, 'syali', 'syali', '5f0a9911739ae3f4b1866afb605da7e9', 'syali', '', 'Website', '', 'tampilkomentar,analisaberita,arsipberita,databaseberita,totalberita,nadaberita,bidangberita,narasumberberita', 0, 1, '2016-01-15 02:08:38', ''),
(692, 'erik', 'erik', 'f12537e9605b2b1bf3122bb12a0e24f7', 'erik', '', 'Website', '', 'tampilkomentar,arsipberita,databaseberita,totalberita,nadaberita,bidangberita,narasumberberita', 0, 1, '2016-01-19 04:34:51', ''),
(693, 'Nurjanah', 'Nurjanah', 'd46c27017fac1d3c02a701a2b785187c', 'nurjanah', '', 'Website', '', 'tampilkomentar,analisaberita,arsipberita,databaseberita,totalberita,nadaberita,bidangberita,narasumberberita', 0, 1, '2016-01-13 02:30:30', ''),
(694, 'user', 'user', '6ad14ba9986e3615423dfca256d04e3f', 'user', '', 'Website', '', 'tampilkomentar,analisaberita,databaseberita,totalberita,nadaberita,bidangberita,narasumberberita', 0, 1, '2016-01-13 02:30:55', ''),
(695, 'Pandu', 'Pandu', '5d883487aaeec9f700c1eb9b7a61c4ad', 'pandu', '', 'Website', '', 'tampilkomentar,analisaberita,arsipberita,databaseberita,totalberita,nadaberita,bidangberita,narasumberberita', 0, 1, '2016-01-13 02:34:14', ''),
(696, 'pandu', 'pandu', '5d883487aaeec9f700c1eb9b7a61c4ad', 'pandu', NULL, 'CMS', '', 'admin,adminwebsite,menusub,menucat,change,kategori,media,bidang,wilayah,tonality,ukuran,warna,tujuan,opini,suratpembaca,scanning,analisascanning,analiscetak,analisistemcetak,sinopsiscetak,galeri,flipbook,Isu Dominan,laporan,laptonality', 0, 1, '0000-00-00 00:00:00', ''),
(698, 'depgubtrlh', 'Deputi Gubernur Tata Ruang & Lingkungan ', '026f88a2fc46ece0ce666444c1aba5f3', 'depgubtrlh', '', 'Website', '', 'tampilkomentar,analisaberita,arsipberita,databaseberita,totalberita,nadaberita,bidangberita,narasumberberita', 0, 1, '2016-01-13 03:34:19', ''),
(699, 'kabidhumas', 'Kepala Bidang Kehumasan', 'ca1bfce1828ef5c5f3eeff8a8e099a5e', 'kabidhumas', '', 'Website', '', 'tampilkomentar,analisaberita,arsipberita,databaseberita,totalberita,nadaberita,bidangberita,narasumberberita', 0, 1, '2016-01-13 03:46:31', ''),
(700, 'kabidpip', 'Kepala Bidang Pengelola Informasi Publik', 'b4a2657840460e82814dd2bacaeee5dc', 'kabidpip', '', 'Website', '', 'tampilkomentar,analisaberita,arsipberita,databaseberita,totalberita,nadaberita,bidangberita,narasumberberita', 0, 1, '2016-01-13 03:47:23', ''),
(703, 'wwalkotjs', 'Wakil Walikota Jakarta Selatan', '04ec7baf201c95ecd1e3031b5d186fc9', 'wwalkotjs', '', 'Website', '', 'analisaberita,totalberita,nadaberita,bidangberita,narasumberberita', 0, 1, '2016-09-02 03:56:48', ''),
(702, 'sekto', 'Sekretaris Kota', 'f3edd929366a9cc46955f8e524338d03', 'sekto', '', 'Website', '', 'tampilkomentar,analisaberita,arsipberita,databaseberita,totalberita,nadaberita,bidangberita,narasumberberita', 0, 1, '2016-01-13 06:16:14', ''),
(704, 'ROP', 'Respon Opini Publik', '215285ba6df9f7e7a6e9120461a75eaa', 'rop', '', 'Website', '', 'tampilkomentar,analisaberita,arsipberita,databaseberita,totalberita,nadaberita,bidangberita,narasumberberita', 0, 1, '2016-01-15 04:13:08', ''),
(705, 'BUMPD', 'Badan Pembinaan BUMPD', 'bf7b09ea3477f4b61ebb5f4fcc61b196', '', '', 'Website', '', 'tampilkomentar,analisaberita,arsipberita,databaseberita', 0, 1, '2016-01-18 07:51:32', ''),
(708, 'kelsenayan', 'kelurahan_senayan', '50e82bd9dfea9081562c664d911ada59', '', '', 'Website', '', 'tampilkomentar,arsipberita,databaseberita,totalberita,nadaberita,bidangberita,narasumberberita', 0, 1, '2016-02-09 03:26:55', ''),
(712, 'postel', 'Bidang Postel', '4cef4bdf1831dbef7ffcdb8b0274fd12', 'postel', '', 'Website', '', 'tampilkomentar,arsipberita,databaseberita,totalberita,nadaberita,bidangberita,narasumberberita', 0, 1, '2016-04-12 05:00:08', ''),
(713, 'dadang', 'Dadang', 'f63f1ed278d0cb8f2ede661328779791', 'dadang', '', 'Website', '', 'analisaberita,arsipberita,databaseberita,totalberita,nadaberita,bidangberita,narasumberberita', 0, 1, '2016-04-15 03:17:33', '');
INSERT INTO `admin` (`adminID`, `adminname`, `adminrealname`, `adminpassword`, `adminemail`, `adminkat`, `admintipe`, `admingroup`, `adminrole`, `admindropped`, `adminactivated`, `updated`, `user_media`) VALUES
(714, 'Uyankes', 'Unit Pelayanan Kesehatan Lt 23', '6843745430b51e8ceb09f43d4782c61b', 'uyankes', '', 'Website', '', 'tampilkomentar,arsipberita,databaseberita,totalberita,nadaberita,bidangberita,narasumberberita', 0, 1, '2016-05-12 00:13:48', ''),
(749, 'diskebersihan', 'Dinas Lingkungan Hidup dan Kebersihan Provinsi DKI Jakarta', 'f8511470f22ee3e0dec362f3e9fa8864', 'diskebersihan', '20150220092511', 'Website', '', 'arsipberita,totalberita,nadaberita,bidangberita,narasumberberita', 0, 1, '2017-05-31 00:42:29', ''),
(718, 'dokpub', 'Dokumentasi Publikasi', 'affc489d5b577943fb286356a8e269dc', 'dokpub', '', 'Website', '', 'tampilkomentar,arsipberita,databaseberita,totalberita,nadaberita,bidangberita,narasumberberita', 0, 1, '2016-06-02 02:03:46', ''),
(719, 'henry', 'henry', '9f876785ec5425a0511339bed7230c2a', 'henry', '', 'Website', '', 'tampilkomentar,analisaberita,arsipberita,databaseberita,totalberita,nadaberita,bidangberita,narasumberberita', 0, 1, '2016-06-03 07:25:50', ''),
(720, 'yuni', 'yuni', 'b7dfe9096cebb53152aa5ce78a1a61c9', 'yuni', '', 'Website', '', 'tampilkomentar,analisaberita,arsipberita,databaseberita,totalberita,nadaberita,bidangberita,narasumberberita', 0, 1, '2016-06-10 03:36:50', ''),
(722, 'amb', 'Analisa Monitoring Berita', '3d835c627b3b88c0db914b79ddfae85a', 'amb', '', 'Website', '', 'arsipberita,totalberita,nadaberita,bidangberita,narasumberberita', 0, 1, '2016-11-02 01:51:52', ''),
(724, 'Dian Ekowati', 'Kadis Kominfomas', '9e91b87fd349d7ca761b312f27089651', 'dianekowati', '', 'Website', '', 'kirimkomentar,tampilkomentar,analisaberita,arsipberita,databaseberita,totalberita,nadaberita,bidangberita,narasumberberita', 0, 1, '2016-07-11 04:21:51', ''),
(726, 'dianekowati', 'Kadis Kominfomas', '9e91b87fd349d7ca761b312f27089651', 'dianekowati', '', 'Website', '', 'kirimkomentar,tampilkomentar,analisaberita,arsipberita,databaseberita,totalberita,nadaberita,bidangberita,narasumberberita', 0, 1, '2016-07-11 04:26:04', ''),
(727, 'AMB', 'Analisa Monitoring Berita', 'cab0f17fe49f79f68b50fb87460275b9', 'amb', NULL, 'CMS', '', 'admin,adminwebsite,kategori,media,bidang,wilayah,tonality,ukuran,warna,tujuan,opini,suratpembaca,scanning,analisascanning,analiscetak,analisistemcetak,sinopsiscetak,tv,online,analistv,periodiktv,sinopsistv,analisol,periodikol,sinopsisol,galeri,flipbook,laporan,laptonality', 0, 1, '2016-11-02 01:57:09', ''),
(728, 'kasiedp', 'kasiedp', 'ad02c2dc12b46256931649be3f6633e2', 'kasiedp', '', 'Website', '', 'analisaberita,arsipberita,databaseberita,totalberita,nadaberita,bidangberita,narasumberberita', 0, 1, '2016-07-20 02:15:16', ''),
(729, 'kasiekemitraan', 'kasiekemitraan', '29925e03c69132c26c510d813d0fd6e1', 'kasiekemitraan', '', 'Website', '', 'analisaberita,arsipberita,databaseberita,totalberita,nadaberita,bidangberita,narasumberberita', 0, 1, '2016-07-20 02:17:43', ''),
(730, 'kasieip', 'kasieip', '4a4989611aa830baf893ff27840a5de2', 'kasieip', '', 'Website', '', 'analisaberita,arsipberita,databaseberita,totalberita,nadaberita,bidangberita,narasumberberita', 0, 1, '2016-07-20 02:18:13', ''),
(731, 'kasiedatin', 'kasiedatin', '1b85285a6fbfcc8203dfc23f5d3fbdea', 'kasiedatin', '', 'Website', '', 'analisaberita,arsipberita,databaseberita,totalberita,nadaberita,bidangberita,narasumberberita', 0, 1, '2016-07-20 02:18:35', ''),
(732, 'kasiepmlr', 'kasiepmlr', 'e599c361bd82d6faad607222ab0b3622', 'kasiepmlr', '', 'Website', '', 'analisaberita,arsipberita,databaseberita,totalberita,nadaberita,bidangberita,narasumberberita', 0, 1, '2016-07-20 02:19:03', ''),
(733, 'updibpkad', 'updibpkad', '18bd6bb690b5355c13f728c63f94e213', 'updibpkad', '', 'Website', '', 'analisaberita,arsipberita,databaseberita,totalberita,nadaberita,bidangberita,narasumberberita', 0, 1, '2016-07-20 03:26:39', ''),
(734, 'AMB2', 'AMB2', '3d835c627b3b88c0db914b79ddfae85a', 'amb2', NULL, 'CMS', '', 'admin,adminwebsite,kategori,media,bidang,wilayah,tonality,ukuran,warna,tujuan,opini,suratpembaca,scanning,analisascanning,analiscetak,analisistemcetak,sinopsiscetak,flipbook', 0, 1, '2016-09-05 06:40:42', ''),
(735, 'satpolppju', 'Satpol PP Jakarta Utara', 'e09e01c4a11201c17fd9d75c4959e4e6', 'satpolppju', '', 'Website', '', 'tampilkomentar,arsipberita,databaseberita,totalberita,nadaberita,bidangberita,narasumberberita', 0, 1, '2016-07-27 04:50:56', ''),
(736, 'satpolppjs', 'Satpol PP Jakarta Selatan', '5bbeac9ecd99fef30ed52cc6ccd0d53a', 'satpolppjs', '', 'Website', '', 'tampilkomentar,arsipberita,databaseberita,totalberita,nadaberita,bidangberita,narasumberberita', 0, 1, '2016-07-27 04:51:26', ''),
(737, 'satpolppjt', 'Satpol PP Jakarta Timur', 'e2f9fe68f1d295e14b0dc2d849299a28', 'satpolppjt', '', 'Website', '', 'tampilkomentar,arsipberita,databaseberita,totalberita,nadaberita,bidangberita,narasumberberita', 0, 1, '2016-07-27 04:52:07', ''),
(738, 'satpolppjp', 'Satpol PP Jakarta Pusat', '87dfe86a5341334f0dacc55bafaf4cb8', 'satpolppjp', '', 'Website', '', 'tampilkomentar,arsipberita,databaseberita,totalberita,nadaberita,bidangberita,narasumberberita', 0, 1, '2016-07-27 04:52:39', ''),
(743, 'shedy', 'shedy123', '45e141dd279dfefd04c01df7c840bde6', 'shedy', NULL, 'CMS', '', 'admin,adminwebsite,menusub,menucat,kategori,media,bidang,wilayah,tonality,ukuran,warna,tujuan,opini,suratpembaca,scanning,analisascanning,analiscetak,analisistemcetak,sinopsiscetak,tv,online,analistv,periodiktv,sinopsistv,analisol,periodikol,sinopsisol,galeri,flipbook,laporan', 0, 1, '2016-07-29 06:12:44', ''),
(741, 'shedy', 'shedy', '45e141dd279dfefd04c01df7c840bde6', 'shedy', '', 'Website', '', 'tampilkomentar,arsipberita,databaseberita,totalberita,nadaberita,bidangberita,narasumberberita', 0, 1, '2016-07-29 06:10:22', ''),
(742, 'lily', 'lily123', 'b42669c97237ef087cc18c67afaac878', 'lily', '', 'Website', '', 'tampilkomentar,arsipberita,databaseberita,totalberita,nadaberita,bidangberita,narasumberberita', 0, 1, '2016-07-29 06:10:41', ''),
(744, 'kpud', 'kpud', '6d1148b3286332ca7ec3ec7626d044b4', 'kpud', '', 'Website', '', 'tampilkomentar,analisaberita,arsipberita,databaseberita,totalberita,nadaberita,bidangberita,narasumberberita', 0, 1, '2016-08-03 03:57:16', ''),
(745, 'pwi', 'pwi', 'bae8d8519d96353ebac953d019739a08', 'pwi@gmail.com', '', 'Website', '', 'kirimkomentar,tampilkomentar,analisaberita,arsipberita,databaseberita,totalberita,nadaberita,bidangberita,narasumberberita', 0, 1, '2016-08-12 07:36:28', ''),
(746, 'bpbumdpm', 'Badan Pembinaan Badan Usaha Milik Daerah', 'dcdcd8dd7c660ce5f76a112dc9b78191', 'bpbumdpm', '28072016135335', 'Website', '', 'arsipberita,totalberita,nadaberita,bidangberita,narasumberberita', 0, 1, '2017-05-31 00:56:15', ''),
(747, 'biropklh', 'Biro Penataan Kota dan Lingkungan Hidup Setda Provinsi DKI Jakarta', '72c070a31fbe17a456b0c8ad658ed1f0', 'biropklh', '02082016102817', 'Website', '', 'arsipberita,totalberita,nadaberita,bidangberita,narasumberberita', 0, 1, '2017-05-31 00:30:40', ''),
(748, 'biroperekonomian', 'Biro Perekonomian Setda Provinsi DKI Jakarta', 'c81c35880bdf43350b068d0a815e5340', 'biroperekonomian', '03082016085642', 'Website', '', 'arsipberita,totalberita,nadaberita,bidangberita,narasumberberita', 0, 1, '2017-05-31 00:27:47', ''),
(750, 'diskukmp', 'Dinas Koperasi Usaha Mikro, Kecil, Menengah dan Perdagangan Provinsi DKI Ja', 'e362d1665d0b1b42cb07fae41fbc8991', 'diskukmp', '20150220092121', 'Website', '', 'arsipberita,totalberita,nadaberita,bidangberita,narasumberberita', 0, 1, '2017-05-31 00:43:44', ''),
(751, 'kpkip', 'kpkip', '6b5e36a86e4ae9dda3e34000fdde20c1', 'kpkip', '', 'Website', '', 'totalberita,nadaberita,bidangberita,narasumberberita', 0, 1, '2016-09-22 01:37:19', ''),
(752, 'venny', 'venny', '9b7339300ff201f5399f9f6c98896a3c', 'venny', '', 'Website', '', 'totalberita,nadaberita,bidangberita,narasumberberita', 0, 1, '2016-09-22 02:24:21', ''),
(753, 'komisionerkip', 'Komisioner KIP', '59798938c5783c006cce6f8cc5471a15', 'komisionerkip', '', 'Website', '', 'totalberita,nadaberita,bidangberita,narasumberberita', 0, 1, '2016-09-22 02:28:01', ''),
(754, 'komisionerkpid', 'Komisioner KPID', 'faac3f8cc72f5d3a3f2ae4638f42cdc6', 'komisionerkpid', '', 'Website', '', 'totalberita,nadaberita,bidangberita,narasumberberita', 0, 1, '2016-09-22 02:26:19', ''),
(755, 'soni', 'Soni', '239c81f9f49ce3ae4d8d99e508c90abe', '', '', 'Website', '', '', 0, 1, '2016-10-28 08:53:47', ''),
(756, 'victor', 'Victor', '17a821dfa961c93a6c586ca257750fb2', '', '', 'Website', '', '', 0, 1, '2016-10-28 08:54:52', ''),
(757, 'feri', 'Feri', 'd25ecbc660ab7bdd1a770fdb2db15c9c', '', '', 'Website', '', '', 0, 1, '2016-10-28 08:55:21', ''),
(758, 'atur', 'atur', 'eddf080da6d76efe1751524e615d8dba', 'aturtoto@gmail.com', '', 'Website', '', 'analisaberita,arsipberita,totalberita,nadaberita,bidangberita,narasumberberita', 0, 1, '2016-11-14 04:15:58', ''),
(759, 'ferry rende', 'ferry rende', '3e8f58918f681ece4816a547a117bebc', 'ferry', '', 'Website', '', 'arsipberita,totalberita,nadaberita,bidangberita,narasumberberita', 0, 1, '2016-11-22 01:57:01', ''),
(766, 'disppapp', 'Dinas Pemberdayaan, Perlindungan Anak dan Pengendalian Penduduk', '18ac6b6fca1d7a714d618db06cd82714', 'disppapp', '20150220092724', 'Website', '', 'arsipberita,databaseberita,totalberita,nadaberita,bidangberita,narasumberberita', 0, 1, '2017-05-31 00:39:50', ''),
(767, 'dispusip', 'Dinas Perpustakaan dan Kearsipan Daerah', 'cfcaa3ae31b659292dc5b598250ca990', 'dispusip', '20150220092745', 'Website', '', 'arsipberita,databaseberita,totalberita,nadaberita,bidangberita,narasumberberita', 0, 1, '2017-05-31 00:47:13', ''),
(768, 'bprd', 'Badan Pajak dan Retribusi Daerah', 'a6e9bbf349424175cb780b204ae96917', 'bprd', '28072016135604', 'Website', '', 'arsipberita,databaseberita,totalberita,nadaberita,bidangberita,narasumberberita', 0, 1, '2017-05-31 00:55:07', '');

-- --------------------------------------------------------

--
-- Table structure for table `admincontent`
--

CREATE TABLE `admincontent` (
  `admincontentID` int(11) NOT NULL,
  `adminID` varchar(16) NOT NULL DEFAULT '',
  `adminfromID` varchar(16) NOT NULL DEFAULT '',
  `admincontentdatecreated` datetime DEFAULT NULL,
  `admincontentartikelID` varchar(16) NOT NULL DEFAULT '',
  `admincontentartikel` varchar(30) NOT NULL,
  `admincontenttext` text NOT NULL,
  `admincontentstatus` varchar(50) DEFAULT NULL,
  `admincontentpublished` tinyint(1) DEFAULT '0',
  `admincontentdropped` tinyint(1) DEFAULT '0',
  `admincontentflag` tinyint(1) DEFAULT '0',
  `admincontentactivated` int(6) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admincontent`
--

INSERT INTO `admincontent` (`admincontentID`, `adminID`, `adminfromID`, `admincontentdatecreated`, `admincontentartikelID`, `admincontentartikel`, `admincontenttext`, `admincontentstatus`, `admincontentpublished`, `admincontentdropped`, `admincontentflag`, `admincontentactivated`) VALUES
(1, '20', '23', '2015-06-16 16:06:11', '11357', 'Lulung Tidak Terima Laporan Pe', 'ddddddddddddd', NULL, 1, 0, 1, 0),
(2, '55', '7', '2015-09-18 08:09:47', '29774', 'Indikasi Penyalahgunaan Menara', 'Test. <br><br>Pak, FYI.', NULL, 1, 0, 1, 0),
(3, '55', '7', '2015-09-18 08:09:57', '29774', 'Indikasi Penyalahgunaan Menara', 'Test. <br><br>Pak, FYI.', NULL, 1, 0, 1, 0),
(4, '55', '5', '2015-10-12 16:10:34', '32890', 'Terkendala Jarak', 'Tes', NULL, 1, 0, 1, 0),
(5, '53', '5', '2015-11-12 10:11:40', '37129', 'Layanan e-KTP Sasar Pelajar', 'Tes Fira', NULL, 1, 0, 1, 0),
(6, '687', '685', '2016-01-06 08:01:30', '45164', 'Bupati Kep Seribu Minta Kesela', 'tes', NULL, 1, 0, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `bidangartikel`
--

CREATE TABLE `bidangartikel` (
  `bidangID` int(11) NOT NULL,
  `bidangcode` varchar(16) NOT NULL DEFAULT '',
  `bidangsubcode` varchar(16) NOT NULL DEFAULT '',
  `bidangdatecreated` datetime DEFAULT NULL,
  `bidangtitle` varchar(150) NOT NULL,
  `bidangsubtitle` varchar(150) NOT NULL,
  `bidangpublished` tinyint(1) DEFAULT '0',
  `priory` int(11) DEFAULT '0',
  `bidangurl` text
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bidangartikel`
--

INSERT INTO `bidangartikel` (`bidangID`, `bidangcode`, `bidangsubcode`, `bidangdatecreated`, `bidangtitle`, `bidangsubtitle`, `bidangpublished`, `priory`, `bidangurl`) VALUES
(13, '20150213131501', '20150220091752', '2016-07-28 13:44:17', 'Pemerintahan', 'DINAS KEPENDUDUKAN DAN CATATAN SIPIL', 1, 0, NULL),
(46, '20150302111533', '02032015111533', '2015-03-02 11:16:37', 'Wilayah', 'LURAH', 0, 0, NULL),
(14, '20150213131501', '20150220091820', '2016-07-28 13:43:47', 'Pemerintahan', 'DINA PENANGGULANGAN KEBAKARAN DAN PENYELAMATAN', 1, 0, NULL),
(15, '20150213131501', '20150220091913', '2017-01-06 16:23:43', 'Pemerintahan', 'DINAS KOMUNIKASI, INFORMATIKA DAN STATISTIK', 1, 0, NULL),
(16, '20150213131501', '20150220091934', '2017-01-06 16:33:10', 'Pemerintahan', 'BADAN KEPEGAWAIAN DAERAH', 1, 0, NULL),
(17, '20150213131501', '20150220091956', '2016-07-28 13:44:48', 'Pemerintahan', 'BADAN KESATUAN BANGSA DAN POLITIK', 1, 0, NULL),
(18, '20150213131501', '20150220092009', '2017-01-06 16:26:05', 'Pemerintahan', 'DINAS PENANAMAN MODAL DAN PELAYANAN TERPADU SATU PINTU', 1, 0, NULL),
(19, '20150213131501', '20150220092034', '2016-07-28 13:43:15', 'Pemerintahan', 'SATPOL PP', 1, 0, NULL),
(20, '20150220091567', '20150220092121', '2016-08-03 11:24:57', 'Perekonomian dan Keuangan', 'DINAS KOPERASI USAHA MIKRO KECIL MENENGAH SERTA PERDAGANGAN', 1, 0, NULL),
(21, '20150220091567', '20150220092142', '2016-08-03 11:25:14', 'Perekonomian dan Keuangan', 'DINAS PERINDUSTRIAN DAN ENERGI', 1, 0, NULL),
(22, '20150220091567', '20150220092202', '2017-01-06 16:21:08', 'Perekonomian dan Keuangan', 'DINAS KETAHANAN PANGAN, KELAUTAN, DAN PERTANIAN', 1, 0, NULL),
(23, '20150220091567', '20150220092220', '2016-08-03 11:23:56', 'Perekonomian dan Keuangan', 'DINAS PARIWISATA DAN KEBUDAYAAN', 1, 0, NULL),
(25, '20150220091641', '20150220092401', '2016-08-02 10:31:16', 'Pembangunan dan Lingkungan Hidup', 'DINAS BINA MARGA', 1, 0, NULL),
(26, '20150220091641', '20150220092421', '2017-01-06 16:16:20', 'Pembangunan dan Lingkungan Hidup', 'DINAS PERUMAHAN RAKYAT DAN KAWASAN PERMUKIMAN', 1, 0, NULL),
(27, '20150220091641', '20150220092446', '2017-01-06 16:27:45', 'Pembangunan dan Lingkungan Hidup', 'DINAS KEHUTANAN', 1, 0, NULL),
(28, '20150220091641', '20150220092511', '2017-01-06 16:22:59', 'Pembangunan dan Lingkungan Hidup', 'DINAS LINGKUNGAN HIDUP DAN KEBERSIHAN', 1, 0, NULL),
(29, '20150220091641', '20150220092534', '2017-01-06 16:22:13', 'Pembangunan dan Lingkungan Hidup', 'DINAS LINGKUNGAN HIDUP DAN KEBERSIHAN', 1, 0, NULL),
(30, '20150220091610', '20150220092605', '2016-07-28 13:39:41', 'Kesejahteraan Rakyat', 'DINAS SOSIAL', 1, 0, NULL),
(31, '20150220091610', '20150220092621', '2016-07-28 13:38:06', 'Kesejahteraan Rakyat', 'DINAS PENDIDIKAN', 1, 0, NULL),
(32, '20150220091610', '20150220092638', '2016-07-28 13:37:15', 'Kesejahteraan Rakyat', 'DINAS KESEHATAN', 1, 0, NULL),
(33, '20150220091610', '20150220092658', '2017-01-06 16:27:02', 'Kesejahteraan Rakyat', 'DINAS PEMUDA DAN OLAHRAGA', 1, 0, NULL),
(34, '20150220091610', '20150220092724', '2017-01-06 16:20:06', 'Kesejahteraan Rakyat', 'DINAS PEMBERDAYAAN, PERLINDUNGAN ANAK DAN PENGENDALIAN PENDUDUK', 1, 0, NULL),
(35, '20150220091610', '20150220092745', '2016-07-28 13:38:40', 'Kesejahteraan Rakyat', 'BADAN PERPUSTAKAAN DAN ARSIP DAERAH', 1, 0, NULL),
(49, '20150302111533', '02032015111616', '2015-03-02 11:16:16', 'Wilayah', 'SUKU DINAS', 0, 0, NULL),
(44, '20150220091641', '02032015073744', '2017-01-06 16:13:51', 'Pembangunan dan Lingkungan Hidup', 'DINAS SUMBER DAYA AIR', 1, 0, NULL),
(47, '20150302111533', '02032015111545', '2015-03-02 11:16:26', 'Wilayah', 'CAMAT', 0, 0, NULL),
(48, '20150302111533', '02032015111604', '2015-03-02 11:16:04', 'Wilayah', 'WALIKOTA', 0, 0, NULL),
(42, '20150220091567', '20150220095942', '2017-01-06 16:23:21', 'Perekonomian dan Keuangan', 'DINAS PERHUBUNGAN', 1, 0, NULL),
(43, '20150213131501', '20150220110405', '2016-07-28 13:42:56', 'Pemerintahan', 'SEKRETARIAT DPRD', 1, 0, NULL),
(50, '20160702711530', '27072016115057', '2016-07-27 11:50:57', 'Surat Pembaca', 'SURAT PEMBACA', 1, 0, NULL),
(79, '20150220091567', '06012017162841', '2017-01-06 16:29:06', 'Perekonomian dan Keuangan', 'Badan PENGELOLA KEUANGAN DAERAH', 1, 0, NULL),
(51, '20150220091567', '28072016135335', '2017-01-06 16:31:18', 'Perekonomian dan Keuangan', 'BADAN PEMBINAAN BUMD', 1, 0, NULL),
(52, '20150220091567', '28072016135412', '2016-08-03 11:26:00', 'Perekonomian dan Keuangan', 'DINAS TENAGA KERJA DAN TRANSMIGRASI', 1, 0, NULL),
(53, '20150220091567', '28072016135446', '2016-08-03 11:25:46', 'Perekonomian dan Keuangan', 'KAWASAN PENGELOLA KAWASAN MONAS', 1, 0, NULL),
(54, '20150220091567', '28072016135516', '2017-01-06 16:29:23', 'Perekonomian dan Keuangan', 'BADAN PENGELOLA ASET DAERAH', 1, 0, NULL),
(55, '20150220091567', '28072016135543', '2016-07-28 13:55:43', 'Perekonomian dan Keuangan', 'BADAN PELAYANAN PENGADAAN BARANG DAN JASA', 1, 0, NULL),
(56, '20150220091567', '28072016135604', '2017-01-06 16:30:00', 'Perekonomian dan Keuangan', 'BADAN PAJAK DAN RETRIBUSI DAERAH', 1, 0, NULL),
(57, '20150220091567', '28072016135646', '2016-07-28 13:56:46', 'Perekonomian dan Keuangan', 'BIRO ADMINISTRASI KEUANGAN DAN ASET SETDA', 1, 0, NULL),
(58, '20150213131501', '28072016135705', '2016-07-28 13:57:05', 'Pemerintahan', 'BiRO TATA PEMERINTAHAN', 1, 0, NULL),
(59, '20150213131501', '28072016135723', '2016-07-28 13:57:23', 'Pemerintahan', 'BIRO HUKUM', 1, 0, NULL),
(60, '20150213131501', '28072016135802', '2016-07-28 13:58:02', 'Pemerintahan', 'BIRO ORGANISASI DAN REFORMASI BIROKRASI', 1, 0, NULL),
(61, '20150213131501', '28072016135906', '2016-07-28 13:59:06', 'Pemerintahan', 'BIRO KEPALA DAERAH DAN KERJASAMA LUAR NEGERI', 1, 0, NULL),
(62, '20150213131501', '28072016135938', '2017-01-06 16:34:08', 'Pemerintahan', 'BADAN PENGEMBANGAN SDM', 1, 0, NULL),
(63, '20150213131501', '28072016140006', '2016-07-28 14:00:06', 'Pemerintahan', 'BADAN PENANGGULANGAN BENCANA DAERAH', 1, 0, NULL),
(64, '20150213131501', '28072016140032', '2017-01-06 16:32:47', 'Pemerintahan', 'BADAN KEPEGAWAIAN DAERAH', 1, 0, NULL),
(65, '20150220091641', '28072016140126', '2017-01-06 16:14:55', 'Pembangunan dan Lingkungan Hidup', 'DINAS CIPTA KARYA, TATA RUANG, DAN PERTANAHAN', 1, 0, NULL),
(66, '20150220091641', '28072016140150', '2016-08-02 10:28:58', 'Pembangunan dan Lingkungan Hidup', 'KANTOR PENGELOLA TAMAN MARGA SATWA RAGUNAN', 1, 0, NULL),
(67, '20150220091610', '28072016140222', '2016-07-28 14:02:22', 'Kesejahteraan Rakyat', 'RSUD', 1, 0, NULL),
(68, '20150220091610', '28072016140247', '2016-07-28 14:02:47', 'Kesejahteraan Rakyat', 'RSKD', 1, 0, NULL),
(70, '20150220091567', '02082016102608', '2016-08-02 10:26:08', 'Perekonomian dan Keuangan', 'BIRO UMUM', 1, 0, NULL),
(71, '20150213131501', '02082016102635', '2016-08-02 10:26:35', 'Pemerintahan', 'INSPEKTORAT', 1, 0, NULL),
(72, '20150213131501', '02082016102744', '2016-08-02 10:27:44', 'Pemerintahan', 'BADAN PERENCANAAN PEMBANGUNAN DAERAH', 1, 0, NULL),
(73, '20150220091641', '02082016102817', '2016-08-02 10:28:17', 'Pembangunan dan Lingkungan Hidup', 'BIRO PENATAAN KOTA DAN LINGKUNGAN HIDUP', 1, 0, NULL),
(74, '20150220091610', '02082016102923', '2016-08-02 10:29:23', 'Kesejahteraan Rakyat', 'BIRO KESEJAHTERAAN SOSIAL', 1, 0, NULL),
(75, '20150220091610', '02082016102948', '2016-08-02 10:29:48', 'Kesejahteraan Rakyat', 'BIRO PENDIDIKAN DAN MENTAL SPIRITUAL', 1, 0, NULL),
(77, '20150220091567', '03082016085642', '2016-08-03 10:02:46', 'Perekonomian dan Keuangan', 'BIRO PEREKONOMIAN', 1, 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `kategoriartikel`
--

CREATE TABLE `kategoriartikel` (
  `kategoriID` int(11) NOT NULL,
  `kategoricode` varchar(16) NOT NULL DEFAULT '',
  `kategoridatecreated` datetime DEFAULT NULL,
  `kategorititle` varchar(150) NOT NULL,
  `kategoripublished` tinyint(1) DEFAULT '0',
  `priory` int(11) DEFAULT '0',
  `kategoriurl` text
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kategoriartikel`
--

INSERT INTO `kategoriartikel` (`kategoriID`, `kategoricode`, `kategoridatecreated`, `kategorititle`, `kategoripublished`, `priory`, `kategoriurl`) VALUES
(11, '20150226082755', '2015-02-26 08:27:55', 'Berita Foto', 1, 0, NULL),
(6, '20150129100941', '2015-02-20 11:34:37', 'Artikel', 1, 0, NULL),
(7, '20150213131413', '2015-02-13 13:14:13', 'Opini', 1, 0, NULL),
(10, '20150224115405', '2015-02-24 11:54:05', 'Surat Pembaca', 1, 0, NULL),
(9, '20150224115159', '2015-02-24 11:51:59', 'Berita', 1, 0, NULL),
(12, '20150611223415', '2015-06-11 22:34:15', 'Tajuk Rencana', 1, 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `mediaartikel`
--

CREATE TABLE `mediaartikel` (
  `mediaID` int(11) NOT NULL,
  `mediacode` varchar(16) NOT NULL DEFAULT '',
  `mediadatecreated` datetime DEFAULT NULL,
  `mediatitle` varchar(150) NOT NULL,
  `mediatipe` varchar(50) NOT NULL,
  `mediapublished` tinyint(1) DEFAULT '0',
  `priory` int(11) DEFAULT '0',
  `mediaurl` text
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mediaartikel`
--

INSERT INTO `mediaartikel` (`mediaID`, `mediacode`, `mediadatecreated`, `mediatitle`, `mediatipe`, `mediapublished`, `priory`, `mediaurl`) VALUES
(5, '20150129115258', '2015-01-29 11:52:58', 'Media Indonesia', 'Media Cetak', 1, 0, NULL),
(7, '20150205122502', '2015-02-05 12:25:02', 'Jawa Pos', 'Media Cetak', 1, 0, NULL),
(8, '20150205122529', '2015-02-05 12:25:29', 'Rakyat Merdeka', 'Media Cetak', 1, 0, NULL),
(9, '20150205122549', '2015-02-05 12:25:49', 'Republika', 'Media Cetak', 1, 0, NULL),
(10, '20150206093842', '2015-02-06 09:38:42', 'Non Stop', 'Media Cetak', 1, 0, NULL),
(11, '20150206093909', '2015-02-06 09:39:09', 'Koran Tempo', 'Media Cetak', 1, 0, NULL),
(12, '20150206094206', '2015-02-06 09:42:06', 'Warta Kota', 'Media Cetak', 1, 0, NULL),
(13, '20150206094650', '2015-02-06 09:46:50', 'Pos Kota', 'Media Cetak', 1, 0, NULL),
(14, '20150218104730', '2016-08-29 12:10:46', 'Indo Pos', 'Media Cetak', 1, 0, NULL),
(16, '20150218114106', '2015-02-18 11:41:06', 'Koran Jakarta', 'Media Cetak', 1, 0, NULL),
(17, '20150218130928', '2016-08-29 12:10:56', 'The Jakarta Post', 'Media Cetak', 1, 0, NULL),
(18, '20150220093328', '2015-02-20 09:33:28', 'Bisnis Indonesia', 'Media Cetak', 1, 0, NULL),
(19, '20150220131330', '2015-02-20 13:13:30', 'Koran Sindo', 'Media Cetak', 1, 0, NULL),
(20, '20150220131841', '2015-02-20 13:18:41', 'Suara Karya', 'Media Cetak', 1, 0, NULL),
(21, '20150220141141', '2015-02-20 14:11:41', 'Harian Terbit', 'Media Cetak', 1, 0, NULL),
(22, '20150223101651', '2016-08-31 13:04:09', 'Sinar Harapan', 'Media Cetak', 0, 0, NULL),
(23, '20150223133420', '2015-02-23 13:34:20', 'Suara Pembaruan', 'Media Cetak', 1, 0, NULL),
(24, '20150225072819', '2015-06-11 22:36:56', 'GATRA (Majalah)', 'Media Cetak', 1, 0, NULL),
(25, '20150225111524', '2015-03-05 10:23:48', 'TEMPO (Majalah)', 'Media Cetak', 1, 0, NULL),
(26, '20150305102939', '2015-03-05 10:29:39', 'Kompas ', 'Media Cetak', 1, 0, NULL),
(27, '20150611223518', '2015-06-11 22:35:18', 'Harian Pelita', 'Media Cetak', 1, 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `reset_password`
--

CREATE TABLE `reset_password` (
  `res_id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `email` varchar(128) NOT NULL,
  `activation_id` varchar(32) NOT NULL,
  `agent` varchar(512) NOT NULL,
  `client_ip` varchar(32) NOT NULL,
  `created_at` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `wilayahartikel`
--

CREATE TABLE `wilayahartikel` (
  `wilayahID` int(11) NOT NULL,
  `wilayahcode` varchar(16) NOT NULL DEFAULT '',
  `wilayahdatecreated` datetime DEFAULT NULL,
  `wilayahtitle` varchar(150) NOT NULL,
  `wilayahpublished` tinyint(1) DEFAULT '0',
  `priory` int(11) DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `wilayahartikel`
--

INSERT INTO `wilayahartikel` (`wilayahID`, `wilayahcode`, `wilayahdatecreated`, `wilayahtitle`, `wilayahpublished`, `priory`) VALUES
(4, '20150129103705', '2015-01-29 10:37:05', 'Jakarta Selatan', 1, 0),
(3, '20150129103659', '2015-01-29 10:36:59', 'Jakarta Barat', 1, 0),
(2, '20150129103711', '2015-01-29 10:37:11', 'Jakarta Utara', 1, 0),
(5, '20150218105115', '2015-02-18 10:51:15', 'Jakarta Timur', 1, 0),
(1, '20150218105127', '2015-02-18 10:51:27', 'Jakarta Pusat', 1, 0),
(6, '20150220125407', '2015-02-20 12:54:07', 'Kepulauan Seribu', 1, 0),
(9, '20160628060052', '2016-06-28 06:00:52', 'Non Wilayah', 1, 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`adminID`);

--
-- Indexes for table `admincontent`
--
ALTER TABLE `admincontent`
  ADD PRIMARY KEY (`admincontentID`);

--
-- Indexes for table `bidangartikel`
--
ALTER TABLE `bidangartikel`
  ADD PRIMARY KEY (`bidangID`);

--
-- Indexes for table `kategoriartikel`
--
ALTER TABLE `kategoriartikel`
  ADD PRIMARY KEY (`kategoriID`);

--
-- Indexes for table `mediaartikel`
--
ALTER TABLE `mediaartikel`
  ADD PRIMARY KEY (`mediaID`);

--
-- Indexes for table `reset_password`
--
ALTER TABLE `reset_password`
  ADD PRIMARY KEY (`res_id`),
  ADD KEY `email` (`email`);

--
-- Indexes for table `wilayahartikel`
--
ALTER TABLE `wilayahartikel`
  ADD PRIMARY KEY (`wilayahID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `adminID` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=769;

--
-- AUTO_INCREMENT for table `admincontent`
--
ALTER TABLE `admincontent`
  MODIFY `admincontentID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `bidangartikel`
--
ALTER TABLE `bidangartikel`
  MODIFY `bidangID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=80;

--
-- AUTO_INCREMENT for table `kategoriartikel`
--
ALTER TABLE `kategoriartikel`
  MODIFY `kategoriID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `mediaartikel`
--
ALTER TABLE `mediaartikel`
  MODIFY `mediaID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `reset_password`
--
ALTER TABLE `reset_password`
  MODIFY `res_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wilayahartikel`
--
ALTER TABLE `wilayahartikel`
  MODIFY `wilayahID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
