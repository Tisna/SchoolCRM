-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Feb 07, 2018 at 05:29 PM
-- Server version: 5.7.19
-- PHP Version: 7.1.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_crm`
--

-- --------------------------------------------------------

--
-- Table structure for table `tb_biaya_pendaftaran`
--

CREATE TABLE `tb_biaya_pendaftaran` (
  `id` int(5) UNSIGNED NOT NULL,
  `id_tahun_ajaran` int(10) UNSIGNED DEFAULT NULL,
  `biaya` double UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_biaya_pendaftaran`
--

INSERT INTO `tb_biaya_pendaftaran` (`id`, `id_tahun_ajaran`, `biaya`) VALUES
(1, 8, 150000),
(2, 9, 100000),
(3, 6, 100000);

-- --------------------------------------------------------

--
-- Table structure for table `tb_detail_kegiatan`
--

CREATE TABLE `tb_detail_kegiatan` (
  `id` int(10) NOT NULL,
  `nip` varchar(20) DEFAULT NULL,
  `kegiatan_id` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tb_detail_perkembangan`
--

CREATE TABLE `tb_detail_perkembangan` (
  `id` int(10) NOT NULL,
  `raport_id` int(10) DEFAULT NULL,
  `perkembangan_id` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tb_detail_raport`
--

CREATE TABLE `tb_detail_raport` (
  `id` int(10) NOT NULL,
  `registrasi_id` int(10) DEFAULT NULL,
  `raport_id` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tb_detail_siswa`
--

CREATE TABLE `tb_detail_siswa` (
  `id` int(10) UNSIGNED NOT NULL,
  `id_siswa` int(10) UNSIGNED DEFAULT NULL,
  `id_kelas` int(10) UNSIGNED DEFAULT NULL,
  `id_tahun_ajaran` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_detail_siswa`
--

INSERT INTO `tb_detail_siswa` (`id`, `id_siswa`, `id_kelas`, `id_tahun_ajaran`) VALUES
(7, 4, 6, 7),
(8, 5, 6, 6),
(14, 6, 6, 6),
(15, 7, 6, 6),
(16, 8, 6, 6),
(17, 11, 6, 6),
(18, 13, 6, 6),
(19, 20, 6, 9);

-- --------------------------------------------------------

--
-- Table structure for table `tb_diskon`
--

CREATE TABLE `tb_diskon` (
  `id` int(10) NOT NULL,
  `tahun_ajaran` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `diskon` float NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_diskon`
--

INSERT INTO `tb_diskon` (`id`, `tahun_ajaran`, `diskon`) VALUES
(1, 1, 10),
(2, 2, 12),
(3, 6, 10),
(4, 7, 12);

-- --------------------------------------------------------

--
-- Table structure for table `tb_faq`
--

CREATE TABLE `tb_faq` (
  `id` int(10) NOT NULL,
  `kontent` text,
  `judul` varchar(250) DEFAULT NULL,
  `status` varchar(50) DEFAULT 'active'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_faq`
--

INSERT INTO `tb_faq` (`id`, `kontent`, `judul`, `status`) VALUES
(1, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\ntempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\r\nquis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\r\nconsequat. Duis aute irure dolor in reprehenderit in voluptate velit esse\r\ncillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non\r\nproident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'Apa itu TK?', 'active'),
(2, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\ntempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\r\nquis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\r\nconsequat. Duis aute irure dolor in reprehenderit in voluptate velit esse\r\ncillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non\r\nproident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'Mengapa TK?', 'active');

-- --------------------------------------------------------

--
-- Table structure for table `tb_galeri`
--

CREATE TABLE `tb_galeri` (
  `id` int(10) UNSIGNED NOT NULL,
  `nip` varchar(20) NOT NULL,
  `judul` varchar(200) NOT NULL,
  `deskripsi` text NOT NULL,
  `status` varchar(50) NOT NULL DEFAULT 'active'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_galeri`
--

INSERT INTO `tb_galeri` (`id`, `nip`, `judul`, `deskripsi`, `status`) VALUES
(3, '1782928282', 'Menulis', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit', 'active'),
(4, '1782928282', 'Membaca', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud', 'active'),
(5, '1782928282', 'Text', 'Retxxx', 'active'),
(6, '1782928282', 'Test2', 'Tes2', 'active');

-- --------------------------------------------------------

--
-- Table structure for table `tb_galeri_detail`
--

CREATE TABLE `tb_galeri_detail` (
  `id` int(10) UNSIGNED NOT NULL,
  `id_galeri` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `foto` varchar(200) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_galeri_detail`
--

INSERT INTO `tb_galeri_detail` (`id`, `id_galeri`, `foto`) VALUES
(35, 4, '29ee001d4f05f14d09ff6581edf7733f.png'),
(36, 4, '4468a3e875ee4e91dc54a19f5098ceda.png'),
(37, 3, 'ecf5164c8bc93625a0223a79e7680567.png'),
(38, 3, '1353f0ee5e7683d092c4f705582b442a.png'),
(39, 5, '01f746a56d33ad29a70f84a446f01c8c.jpg'),
(40, 5, '7a87ecf2be0193b7644173687059a5a7.jpg'),
(41, 6, 'af02e39f9dd87755be8860a4270b1050.jpg'),
(42, 6, 'a35beb8d61d7117e25cbefe0514b58da.png');

-- --------------------------------------------------------

--
-- Table structure for table `tb_guru`
--

CREATE TABLE `tb_guru` (
  `nip` varchar(20) NOT NULL,
  `nama` varchar(200) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(200) NOT NULL,
  `alamat` text NOT NULL,
  `tgl_lahir` date NOT NULL,
  `jenis_kelamin` tinyint(1) NOT NULL,
  `tlpn` varchar(16) NOT NULL,
  `status` varchar(10) NOT NULL,
  `type` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_guru`
--

INSERT INTO `tb_guru` (`nip`, `nama`, `username`, `password`, `alamat`, `tgl_lahir`, `jenis_kelamin`, `tlpn`, `status`, `type`) VALUES
('1010101', 'KAdek', 'kadek', '$2y$10$WeCujfSoUWgG49h3hTySMOXfq6Dc6jjCQkMWc67t38SPdGkz.ibB.', 'Lorem rsss', '2017-11-28', 2, '010192323', 'active', 'guru'),
('12312312', 'sdfw', 'admin3', '$2y$10$rzNrSDGKdpxtAIiPV/152uusSeAipITnjIGaAo0T1DRvZ4lUnawSO', 'wefwf', '2017-12-04', 1, '113e3', 'active', 'guru'),
('1782928282', 'Wayan Adi', 'admin', '$2y$10$GK25lbYVQK5Z2fV.mlnc9eCP4RTtu5GCrysEUK/HO7BmwyYchx0nG', 'DPS', '2017-01-10', 1, '028288', 'active', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `tb_kegiatan`
--

CREATE TABLE `tb_kegiatan` (
  `id` int(10) UNSIGNED NOT NULL,
  `id_kelas` int(10) UNSIGNED DEFAULT NULL,
  `nip` varchar(20) DEFAULT NULL,
  `nama` varchar(200) DEFAULT NULL,
  `deskripsi` text,
  `foto` varchar(230) DEFAULT NULL,
  `tgl` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_kegiatan`
--

INSERT INTO `tb_kegiatan` (`id`, `id_kelas`, `nip`, `nama`, `deskripsi`, `foto`, `tgl`) VALUES
(28, 6, '1010101', 'We', 'www', '6d329f4d31adb511e9e00861eef84f2a.jpg', '2017-12-04'),
(29, 6, '1010101', 'sasa', 'asas', '78458dd455466c851e1e28203cc9782f.jpg', '2017-12-05'),
(30, 2, '1010101', 'sdf', 'ssds', '2b46cb1370f2675a25ba1fd95810b5ef.png', '2018-02-05');

-- --------------------------------------------------------

--
-- Table structure for table `tb_kelas`
--

CREATE TABLE `tb_kelas` (
  `id` int(10) UNSIGNED NOT NULL,
  `kelas` varchar(20) DEFAULT NULL,
  `maximal_siswa` tinyint(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_kelas`
--

INSERT INTO `tb_kelas` (`id`, `kelas`, `maximal_siswa`) VALUES
(2, 'B', 30),
(6, 'A', 30);

-- --------------------------------------------------------

--
-- Table structure for table `tb_ortu`
--

CREATE TABLE `tb_ortu` (
  `id` int(10) UNSIGNED NOT NULL,
  `nama_ayah` varchar(200) DEFAULT NULL,
  `nama_ibu` varchar(200) DEFAULT NULL,
  `email` varchar(200) DEFAULT NULL,
  `username` varchar(50) DEFAULT NULL,
  `password` varchar(200) DEFAULT NULL,
  `pekerjaan_ayah` int(5) UNSIGNED DEFAULT NULL,
  `pekerjaan_ibu` int(5) UNSIGNED DEFAULT NULL,
  `alamat` text,
  `tlpn` varchar(20) DEFAULT NULL,
  `status` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_ortu`
--

INSERT INTO `tb_ortu` (`id`, `nama_ayah`, `nama_ibu`, `email`, `username`, `password`, `pekerjaan_ayah`, `pekerjaan_ibu`, `alamat`, `tlpn`, `status`) VALUES
(58, 'Rizal', 'Anna', 'rizal@gmail.com', 'rizal1', '$2y$10$ui5nq/QLg0Xg/We51E3Jc.9ecZiIhPzoblTvzfNb6FREhgNxd9y5K', 2, 4, 'DPS sdsd', '081912323', 'active'),
(59, 'Arya', 'Wintari', 'desi@gmail.com', 'desi', '$2y$10$4vQ0ZXoNtzPaKaEZTd6zPejPE1Yn/b.GOKS2AIwK/3uHByfC3PyEi', 2, 4, 'Denpasar', '6281237773824', 'active'),
(66, 'Wayan Adi', 'Desi', 'wayan@mail.com', 'dsn', '$2y$10$kz34le868zU0i7kTxh3dSOUZcBhuh.38an.G6TiEkdfHfM9JFqK.a', 2, 4, 'Denpasar', '6281237773821', 'active'),
(67, 'Aziz', 'Ani', 'aziz@maial.com', 'aziz', '$2y$10$6ltJfp6YFhU.40zFvfcI6OznFWPuCFz8fYEY86.9UJ615.qHoudCm', 2, 5, 'Denpasar', '628128282822', 'active');

-- --------------------------------------------------------

--
-- Table structure for table `tb_pekerjaan`
--

CREATE TABLE `tb_pekerjaan` (
  `id` int(5) UNSIGNED NOT NULL,
  `pekerjaan` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_pekerjaan`
--

INSERT INTO `tb_pekerjaan` (`id`, `pekerjaan`) VALUES
(1, 'TNI'),
(2, 'Wiraswasta'),
(4, 'Ibu Rumah Tangga'),
(5, 'PNS'),
(6, 'Lainnya');

-- --------------------------------------------------------

--
-- Table structure for table `tb_pendaftaran`
--

CREATE TABLE `tb_pendaftaran` (
  `id` int(10) UNSIGNED NOT NULL,
  `id_siswa` int(10) UNSIGNED NOT NULL,
  `id_ortu` int(10) UNSIGNED NOT NULL,
  `id_tahun_ajaran` int(10) UNSIGNED NOT NULL,
  `tgl_daftar` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `jumlah_bayar` float NOT NULL,
  `cara_bayar` varchar(200) NOT NULL,
  `status` varchar(20) NOT NULL DEFAULT 'unpaid',
  `foto` varchar(200) DEFAULT NULL,
  `kk` varchar(200) DEFAULT NULL,
  `keterangan` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_pendaftaran`
--

INSERT INTO `tb_pendaftaran` (`id`, `id_siswa`, `id_ortu`, `id_tahun_ajaran`, `tgl_daftar`, `jumlah_bayar`, `cara_bayar`, `status`, `foto`, `kk`, `keterangan`) VALUES
(1, 4, 58, 6, '2017-12-21 10:53:11', 100000, 'transfer', 'paid', '51da8c3b9fd197afb41fc909af33b944.png', NULL, NULL),
(2, 5, 59, 6, '2017-12-21 11:04:31', 100000, 'tunai', 'paid', '47460723b0a47d88ba2979e088a5f95d.png', NULL, NULL),
(3, 6, 59, 6, '2017-12-24 02:59:21', 90000, 'transfer', 'paid', '06ec7291e7c5ae6cb940fef00b42cb76.png', NULL, NULL),
(4, 7, 58, 6, '2017-12-24 03:00:40', 90000, 'tunai', 'paid', '6bee1034b0763cc19d1384313c4b903b.png', NULL, NULL),
(5, 8, 58, 6, '2017-12-24 03:13:58', 90000, 'transfer', 'paid', 'dfd2e228ca51dabf574d6912a9bef315.jpg', NULL, NULL),
(8, 11, 58, 6, '2017-12-25 01:43:55', 90000, 'transfer', 'paid', '56a8da1d3bcb2e9b334a778be5b1d781.png', NULL, NULL),
(10, 13, 58, 6, '2017-12-31 02:32:36', 90000, 'transfer', 'paid', '0552fd25d5b2312eb092cca17d9e868a.jpg', NULL, NULL),
(13, 18, 58, 6, '2018-01-16 11:14:11', 99000, 'transfer', 'unpaid', NULL, 'fa2ddc442776bf441c4b426255605df4.png', NULL),
(15, 20, 58, 9, '2018-01-17 10:45:49', 125000, 'transfer', 'paid', 'ac018c944201804922b7d8532626569c.png', 'e8c1c9df03dd0b3a2e206e18b0c9df3f.png', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tb_perkembangan`
--

CREATE TABLE `tb_perkembangan` (
  `id` int(10) UNSIGNED NOT NULL,
  `nip` varchar(20) DEFAULT NULL,
  `nis` varchar(10) DEFAULT NULL,
  `id_kelas` int(10) UNSIGNED DEFAULT NULL,
  `id_tahun_ajaran` int(10) UNSIGNED DEFAULT NULL,
  `pembiasaan` varchar(1) DEFAULT NULL,
  `bahasa` varchar(1) DEFAULT NULL,
  `daya_fikir` varchar(1) DEFAULT NULL,
  `motorik` varchar(1) DEFAULT NULL,
  `tgl` date DEFAULT NULL,
  `id_kegiatan` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_perkembangan`
--

INSERT INTO `tb_perkembangan` (`id`, `nip`, `nis`, `id_kelas`, `id_tahun_ajaran`, `pembiasaan`, `bahasa`, `daya_fikir`, `motorik`, `tgl`, `id_kegiatan`) VALUES
(8, '1010101', '0001', 6, 7, 'B', 'A', 'B', 'A', '2017-12-04', 28),
(9, '1010101', '0001', 6, 7, 'A', 'B', 'B', 'A', '2017-12-05', 29);

-- --------------------------------------------------------

--
-- Table structure for table `tb_raport`
--

CREATE TABLE `tb_raport` (
  `id` int(10) UNSIGNED NOT NULL,
  `tahun` int(10) UNSIGNED DEFAULT NULL,
  `nip` varchar(20) DEFAULT NULL,
  `nis` varchar(10) DEFAULT NULL,
  `id_kelas` int(10) UNSIGNED DEFAULT NULL,
  `pembiasaan` varchar(3) DEFAULT NULL,
  `bahasa` varchar(3) DEFAULT NULL,
  `daya_fikir` varchar(3) DEFAULT NULL,
  `motorik` varchar(3) DEFAULT NULL,
  `total_nilai` varchar(3) DEFAULT NULL,
  `keterangan` text,
  `naik_kelas` tinyint(1) DEFAULT NULL,
  `tgl` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_raport`
--

INSERT INTO `tb_raport` (`id`, `tahun`, `nip`, `nis`, `id_kelas`, `pembiasaan`, `bahasa`, `daya_fikir`, `motorik`, `total_nilai`, `keterangan`, `naik_kelas`, `tgl`) VALUES
(22, 6, '1010101', '0001', 6, 'A', 'B', 'B', 'B', 'B', 'wwd', 1, '2018-01-09'),
(23, 7, '1010101', '0001', 6, 'A', 'B', 'B', 'B', 'B', 'sds', 0, '2018-01-09');

-- --------------------------------------------------------

--
-- Table structure for table `tb_riwayat_kelas`
--

CREATE TABLE `tb_riwayat_kelas` (
  `id` int(10) UNSIGNED NOT NULL,
  `nip` varchar(20) DEFAULT NULL,
  `nis` varchar(10) DEFAULT NULL,
  `raport_id` int(10) DEFAULT NULL,
  `riwayat` text,
  `tgl` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tb_siswa`
--

CREATE TABLE `tb_siswa` (
  `nis` varchar(10) DEFAULT NULL,
  `id` int(10) UNSIGNED NOT NULL,
  `id_ortu` int(10) UNSIGNED DEFAULT NULL,
  `nama` varchar(200) DEFAULT NULL,
  `alamat` text,
  `tgl_lahir` date DEFAULT NULL,
  `jenis_kelamin` tinyint(1) DEFAULT NULL,
  `status` varchar(50) DEFAULT 'non-active'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_siswa`
--

INSERT INTO `tb_siswa` (`nis`, `id`, `id_ortu`, `nama`, `alamat`, `tgl_lahir`, `jenis_kelamin`, `status`) VALUES
('0001', 4, 58, 'Desi', 'Denpasar', '2013-05-13', 1, 'active'),
('0002', 5, 59, 'Desi ayuni', 'Denpasar', '2010-06-14', 2, 'active'),
('0003', 6, 59, 'Putu Ayu', 'Denpasar', '2012-05-16', 2, 'active'),
('0004', 7, 58, 'Deka Sand', 'Denpasar', '2013-01-07', 1, 'active'),
('0005', 8, 58, 'Astuti', 'DPS', '2017-12-03', 2, 'active'),
('0006', 11, 58, 'Azis', 'Denpasar', '2017-12-04', 1, 'active'),
('0007', 13, 58, 'anu', 'dps', '2017-12-27', 2, 'active'),
(NULL, 18, 58, 'asasawq', 'asasa', '2018-01-01', 1, 'non-active'),
('0008', 20, 58, 'wewewwew', 'wewewewe', '2017-12-31', 1, 'active');

-- --------------------------------------------------------

--
-- Table structure for table `tb_tahun_ajaran`
--

CREATE TABLE `tb_tahun_ajaran` (
  `id` int(10) UNSIGNED NOT NULL,
  `tahun` varchar(200) DEFAULT NULL,
  `semester` varchar(200) DEFAULT NULL,
  `biaya_daftar` double DEFAULT NULL,
  `tgl_mulai` date DEFAULT NULL,
  `tgl_selesai` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_tahun_ajaran`
--

INSERT INTO `tb_tahun_ajaran` (`id`, `tahun`, `semester`, `biaya_daftar`, `tgl_mulai`, `tgl_selesai`) VALUES
(1, '2011/2012', 'semester 1', 100000, '2011-07-01', '2017-12-30'),
(2, '2011/2012', 'semester 2', 105000, '2012-01-01', '2012-06-30'),
(3, '2012/2013', 'semester 2', 103000, '2019-08-02', '2019-12-21'),
(6, '2017/2018', 'semester 1', 110000, '2017-07-01', '2017-12-31'),
(7, '2017/2018', 'semester 2', 115000, '2018-01-04', '2018-06-27'),
(8, '2018/2019', 'semester 1', 120000, '2018-08-06', '2018-12-20'),
(9, '2018/2019', 'semester 2', 125000, '2019-01-03', '2019-06-25');

-- --------------------------------------------------------

--
-- Table structure for table `tb_tentang`
--

CREATE TABLE `tb_tentang` (
  `id` int(10) NOT NULL,
  `content` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_tentang`
--

INSERT INTO `tb_tentang` (`id`, `content`) VALUES
(4, '<p>Jalan Jaya Giri XXIV A, Denpasar, Bali 081238123456</p><p>Jam Operasional</p><p>Senin-Jumat : 08:00-12:00 WITA<br></p>');

-- --------------------------------------------------------

--
-- Table structure for table `tb_user`
--

CREATE TABLE `tb_user` (
  `user_id` int(5) UNSIGNED NOT NULL,
  `username` varchar(50) NOT NULL,
  `ortu_id` int(10) UNSIGNED DEFAULT NULL,
  `nip` varchar(20) DEFAULT NULL,
  `password` varchar(200) NOT NULL,
  `status` varchar(20) NOT NULL,
  `login_status` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_user`
--

INSERT INTO `tb_user` (`user_id`, `username`, `ortu_id`, `nip`, `password`, `status`, `login_status`) VALUES
(21, 'admin', NULL, '1234', '$2y$10$Yh2zTJFlSi2jMccNPOS9AOg1zW9tXlN8X7N8saP8SC/H.8H56DDiy', 'admin', 'active'),
(24, '3rewr', 1, NULL, 'sdsd', 'sdf', 'sf');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_biaya_pendaftaran`
--
ALTER TABLE `tb_biaya_pendaftaran`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_tb_biaya_pendaftaran_tb_tahun_ajaran` (`id_tahun_ajaran`);

--
-- Indexes for table `tb_detail_kegiatan`
--
ALTER TABLE `tb_detail_kegiatan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_detail_perkembangan`
--
ALTER TABLE `tb_detail_perkembangan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_detail_raport`
--
ALTER TABLE `tb_detail_raport`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_detail_siswa`
--
ALTER TABLE `tb_detail_siswa`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id_siswa` (`id_siswa`),
  ADD KEY `FK_tb_detail_siswa_tb_kelas` (`id_kelas`),
  ADD KEY `FK_tb_detail_siswa_tb_tahun_ajaran` (`id_tahun_ajaran`);

--
-- Indexes for table `tb_diskon`
--
ALTER TABLE `tb_diskon`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_tb_diskon_tb_tahun_ajaran` (`tahun_ajaran`);

--
-- Indexes for table `tb_faq`
--
ALTER TABLE `tb_faq`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_galeri`
--
ALTER TABLE `tb_galeri`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_tb_galeri_tb_guru` (`nip`);

--
-- Indexes for table `tb_galeri_detail`
--
ALTER TABLE `tb_galeri_detail`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_tb_galeri_detail_tb_galeri` (`id_galeri`);

--
-- Indexes for table `tb_guru`
--
ALTER TABLE `tb_guru`
  ADD PRIMARY KEY (`nip`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `tb_kegiatan`
--
ALTER TABLE `tb_kegiatan`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_tb_kegiatan_tb_kelas` (`id_kelas`),
  ADD KEY `FK_tb_kegiatan_tb_guru` (`nip`);

--
-- Indexes for table `tb_kelas`
--
ALTER TABLE `tb_kelas`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_ortu`
--
ALTER TABLE `tb_ortu`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD UNIQUE KEY `email` (`email`),
  ADD KEY `FK_tb_ortu_tb_pekerjaan` (`pekerjaan_ayah`),
  ADD KEY `FK_tb_ortu_tb_pekerjaan_2` (`pekerjaan_ibu`);

--
-- Indexes for table `tb_pekerjaan`
--
ALTER TABLE `tb_pekerjaan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_pendaftaran`
--
ALTER TABLE `tb_pendaftaran`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_tb_pendaftaran_tb_ortu` (`id_ortu`),
  ADD KEY `FK_tb_pendaftaran_tb_siswa` (`id_siswa`),
  ADD KEY `FK_tb_pendaftaran_tb_tahun_ajaran` (`id_tahun_ajaran`);

--
-- Indexes for table `tb_perkembangan`
--
ALTER TABLE `tb_perkembangan`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_tb_perkembangan_tb_guru` (`nip`),
  ADD KEY `FK_tb_perkembangan_tb_siswa` (`nis`),
  ADD KEY `FK_tb_perkembangan_tb_kelas` (`id_kelas`),
  ADD KEY `FK_tb_perkembangan_tb_tahun_ajaran` (`id_tahun_ajaran`);

--
-- Indexes for table `tb_raport`
--
ALTER TABLE `tb_raport`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_tb_raport_tb_guru` (`nip`),
  ADD KEY `FK_tb_raport_tb_siswa` (`nis`),
  ADD KEY `FK_tb_raport_tb_tahun_ajaran` (`tahun`),
  ADD KEY `FK_tb_raport_tb_kelas` (`id_kelas`);

--
-- Indexes for table `tb_riwayat_kelas`
--
ALTER TABLE `tb_riwayat_kelas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_tb_riwayat_kelas_tb_guru` (`nip`),
  ADD KEY `FK_tb_riwayat_kelas_tb_siswa` (`nis`);

--
-- Indexes for table `tb_siswa`
--
ALTER TABLE `tb_siswa`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `nis` (`nis`),
  ADD KEY `FK_tb_siswa_tb_ortu` (`id_ortu`);

--
-- Indexes for table `tb_tahun_ajaran`
--
ALTER TABLE `tb_tahun_ajaran`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_tentang`
--
ALTER TABLE `tb_tentang`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_user`
--
ALTER TABLE `tb_user`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD KEY `FK_tb_user_tb_guru` (`nip`),
  ADD KEY `FK_tb_user_tb_ortu` (`ortu_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tb_biaya_pendaftaran`
--
ALTER TABLE `tb_biaya_pendaftaran`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `tb_detail_kegiatan`
--
ALTER TABLE `tb_detail_kegiatan`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tb_detail_perkembangan`
--
ALTER TABLE `tb_detail_perkembangan`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tb_detail_raport`
--
ALTER TABLE `tb_detail_raport`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tb_detail_siswa`
--
ALTER TABLE `tb_detail_siswa`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
--
-- AUTO_INCREMENT for table `tb_diskon`
--
ALTER TABLE `tb_diskon`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `tb_faq`
--
ALTER TABLE `tb_faq`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `tb_galeri`
--
ALTER TABLE `tb_galeri`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `tb_galeri_detail`
--
ALTER TABLE `tb_galeri_detail`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;
--
-- AUTO_INCREMENT for table `tb_kegiatan`
--
ALTER TABLE `tb_kegiatan`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;
--
-- AUTO_INCREMENT for table `tb_kelas`
--
ALTER TABLE `tb_kelas`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `tb_ortu`
--
ALTER TABLE `tb_ortu`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=68;
--
-- AUTO_INCREMENT for table `tb_pekerjaan`
--
ALTER TABLE `tb_pekerjaan`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `tb_pendaftaran`
--
ALTER TABLE `tb_pendaftaran`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT for table `tb_perkembangan`
--
ALTER TABLE `tb_perkembangan`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `tb_raport`
--
ALTER TABLE `tb_raport`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
--
-- AUTO_INCREMENT for table `tb_riwayat_kelas`
--
ALTER TABLE `tb_riwayat_kelas`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tb_siswa`
--
ALTER TABLE `tb_siswa`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT for table `tb_tahun_ajaran`
--
ALTER TABLE `tb_tahun_ajaran`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `tb_tentang`
--
ALTER TABLE `tb_tentang`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `tb_user`
--
ALTER TABLE `tb_user`
  MODIFY `user_id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `tb_biaya_pendaftaran`
--
ALTER TABLE `tb_biaya_pendaftaran`
  ADD CONSTRAINT `FK_tb_biaya_pendaftaran_tb_tahun_ajaran` FOREIGN KEY (`id_tahun_ajaran`) REFERENCES `tb_tahun_ajaran` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tb_detail_siswa`
--
ALTER TABLE `tb_detail_siswa`
  ADD CONSTRAINT `FK_tb_detail_siswa_tb_kelas` FOREIGN KEY (`id_kelas`) REFERENCES `tb_kelas` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_tb_detail_siswa_tb_siswa` FOREIGN KEY (`id_siswa`) REFERENCES `tb_siswa` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_tb_detail_siswa_tb_tahun_ajaran` FOREIGN KEY (`id_tahun_ajaran`) REFERENCES `tb_tahun_ajaran` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tb_diskon`
--
ALTER TABLE `tb_diskon`
  ADD CONSTRAINT `FK_tb_diskon_tb_tahun_ajaran` FOREIGN KEY (`tahun_ajaran`) REFERENCES `tb_tahun_ajaran` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tb_galeri`
--
ALTER TABLE `tb_galeri`
  ADD CONSTRAINT `FK_tb_galeri_tb_guru` FOREIGN KEY (`nip`) REFERENCES `tb_guru` (`nip`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tb_galeri_detail`
--
ALTER TABLE `tb_galeri_detail`
  ADD CONSTRAINT `FK_tb_galeri_detail_tb_galeri` FOREIGN KEY (`id_galeri`) REFERENCES `tb_galeri` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tb_kegiatan`
--
ALTER TABLE `tb_kegiatan`
  ADD CONSTRAINT `FK_tb_kegiatan_tb_guru` FOREIGN KEY (`nip`) REFERENCES `tb_guru` (`nip`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_tb_kegiatan_tb_kelas` FOREIGN KEY (`id_kelas`) REFERENCES `tb_kelas` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tb_ortu`
--
ALTER TABLE `tb_ortu`
  ADD CONSTRAINT `FK_tb_ortu_tb_pekerjaan` FOREIGN KEY (`pekerjaan_ayah`) REFERENCES `tb_pekerjaan` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_tb_ortu_tb_pekerjaan_2` FOREIGN KEY (`pekerjaan_ibu`) REFERENCES `tb_pekerjaan` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `tb_pendaftaran`
--
ALTER TABLE `tb_pendaftaran`
  ADD CONSTRAINT `FK_tb_pendaftaran_tb_ortu` FOREIGN KEY (`id_ortu`) REFERENCES `tb_ortu` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_tb_pendaftaran_tb_siswa` FOREIGN KEY (`id_siswa`) REFERENCES `tb_siswa` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_tb_pendaftaran_tb_tahun_ajaran` FOREIGN KEY (`id_tahun_ajaran`) REFERENCES `tb_tahun_ajaran` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tb_perkembangan`
--
ALTER TABLE `tb_perkembangan`
  ADD CONSTRAINT `FK_tb_perkembangan_tb_guru` FOREIGN KEY (`nip`) REFERENCES `tb_guru` (`nip`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_tb_perkembangan_tb_kelas` FOREIGN KEY (`id_kelas`) REFERENCES `tb_kelas` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_tb_perkembangan_tb_siswa` FOREIGN KEY (`nis`) REFERENCES `tb_siswa` (`nis`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_tb_perkembangan_tb_tahun_ajaran` FOREIGN KEY (`id_tahun_ajaran`) REFERENCES `tb_tahun_ajaran` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tb_raport`
--
ALTER TABLE `tb_raport`
  ADD CONSTRAINT `FK_tb_raport_tb_guru` FOREIGN KEY (`nip`) REFERENCES `tb_guru` (`nip`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_tb_raport_tb_kelas` FOREIGN KEY (`id_kelas`) REFERENCES `tb_kelas` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_tb_raport_tb_siswa` FOREIGN KEY (`nis`) REFERENCES `tb_siswa` (`nis`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_tb_raport_tb_tahun_ajaran` FOREIGN KEY (`tahun`) REFERENCES `tb_tahun_ajaran` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `tb_riwayat_kelas`
--
ALTER TABLE `tb_riwayat_kelas`
  ADD CONSTRAINT `FK_tb_riwayat_kelas_tb_guru` FOREIGN KEY (`nip`) REFERENCES `tb_guru` (`nip`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_tb_riwayat_kelas_tb_siswa` FOREIGN KEY (`nis`) REFERENCES `tb_siswa` (`nis`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tb_siswa`
--
ALTER TABLE `tb_siswa`
  ADD CONSTRAINT `FK_tb_siswa_tb_ortu` FOREIGN KEY (`id_ortu`) REFERENCES `tb_ortu` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
