-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Dec 21, 2017 at 12:33 AM
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
(2, 2, 12);

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
(4, '1782928282', 'Membaca', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud', 'active');

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
(33, 4, '139bbcd0a91d461a892eb27d86a0ddd0.png'),
(34, 3, 'ff7d1a90e9d0eba75f5d8c7292957bc7.png');

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
('1010101', 'KAdek', 'kadek', '$2y$10$KpHvuv4Vd5yLq584wlkUMOwXhNZAaM6Y0kxYnyMN2U.WUFO3zzK4y', 'Lorem', '2017-11-28', 2, '010191919', 'active', 'guru'),
('12312312', 'sdfw', 'admin3', '$2y$10$rzNrSDGKdpxtAIiPV/152uusSeAipITnjIGaAo0T1DRvZ4lUnawSO', 'wefwf', '2017-12-04', 1, '113e3', 'active', 'guru'),
('1782928282', 'Wayan Adi', 'admin', '$2y$10$4vndF2p9G7iomU8vhQMnV.hDUpYF09A8ZQdNFzg/aIEwdfjGOv9Pm', 'DPS', '2017-01-10', 1, '0282882', 'active', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `tb_kegiatan`
--

CREATE TABLE `tb_kegiatan` (
  `id` int(10) UNSIGNED NOT NULL,
  `nip` varchar(20) DEFAULT NULL,
  `nama` varchar(200) DEFAULT NULL,
  `deskripsi` text,
  `tgl` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_kegiatan`
--

INSERT INTO `tb_kegiatan` (`id`, `nip`, `nama`, `deskripsi`, `tgl`) VALUES
(2, '1010101', 'Menulis', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\ntempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\r\nquis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo', '2017-12-03');

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
  `nama` varchar(200) DEFAULT NULL,
  `email` varchar(200) DEFAULT NULL,
  `username` varchar(50) DEFAULT NULL,
  `password` varchar(200) DEFAULT NULL,
  `tgl_lahir` date DEFAULT NULL,
  `alamat` text,
  `jenis_kelamin` tinyint(1) DEFAULT NULL,
  `tlpn` varchar(20) DEFAULT NULL,
  `status` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_ortu`
--

INSERT INTO `tb_ortu` (`id`, `nama`, `email`, `username`, `password`, `tgl_lahir`, `alamat`, `jenis_kelamin`, `tlpn`, `status`) VALUES
(58, 'Rizal', 'rizal@gmail.com', 'rizal', '$2y$10$K0acEZQAvsA54BVgSCaY0.jJjg8EXUJIYvlLj3ZO9moq4.ZvyxYTq', '2017-12-11', 'DPS', 1, '08191', 'active');

-- --------------------------------------------------------

--
-- Table structure for table `tb_pendaftaran`
--

CREATE TABLE `tb_pendaftaran` (
  `id` int(10) UNSIGNED NOT NULL,
  `id_siswa` int(10) UNSIGNED NOT NULL,
  `id_ortu` int(10) UNSIGNED NOT NULL,
  `tgl_daftar` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `jumlah_bayar` float NOT NULL,
  `cara_bayar` varchar(200) NOT NULL,
  `status` varchar(20) NOT NULL DEFAULT 'unpaid',
  `foto` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tb_perkembangan`
--

CREATE TABLE `tb_perkembangan` (
  `id` int(10) NOT NULL,
  `nip` varchar(20) DEFAULT NULL,
  `nis` varchar(10) DEFAULT NULL,
  `aktif` varchar(50) DEFAULT NULL,
  `sosial` varchar(50) DEFAULT NULL,
  `motorik` varchar(50) DEFAULT NULL,
  `daya_ingat` varchar(50) DEFAULT NULL,
  `tgl` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tb_raport`
--

CREATE TABLE `tb_raport` (
  `id` int(10) NOT NULL,
  `tahun` int(10) DEFAULT NULL,
  `nip` varchar(20) DEFAULT NULL,
  `nis` varchar(10) DEFAULT NULL,
  `total_nilai` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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

-- --------------------------------------------------------

--
-- Table structure for table `tb_tahun_ajaran`
--

CREATE TABLE `tb_tahun_ajaran` (
  `id` int(10) UNSIGNED NOT NULL,
  `tahun` varchar(200) DEFAULT NULL,
  `semester` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_tahun_ajaran`
--

INSERT INTO `tb_tahun_ajaran` (`id`, `tahun`, `semester`) VALUES
(1, '2011/2012', 'semester 1'),
(2, '2011/2012', 'semester 2'),
(3, '2012/2013', 'semester 1');

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
(3, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\ntempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\r\nquis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\r\nconsequat. Duis aute irure dolor in reprehenderit in voluptate velit esse\r\ncillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non\r\nproident, sunt in culpa qui officia deserunt mollit anim id est laborum.');

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
  ADD KEY `FK_tb_detail_siswa_tb_siswa` (`id_siswa`),
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
  ADD PRIMARY KEY (`id`);

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
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `tb_pendaftaran`
--
ALTER TABLE `tb_pendaftaran`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_tb_pendaftaran_tb_ortu` (`id_ortu`),
  ADD KEY `FK_tb_pendaftaran_tb_siswa` (`id_siswa`);

--
-- Indexes for table `tb_perkembangan`
--
ALTER TABLE `tb_perkembangan`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_tb_perkembangan_tb_guru` (`nip`),
  ADD KEY `FK_tb_perkembangan_tb_siswa` (`nis`);

--
-- Indexes for table `tb_raport`
--
ALTER TABLE `tb_raport`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_tb_raport_tb_guru` (`nip`),
  ADD KEY `FK_tb_raport_tb_siswa` (`nis`);

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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tb_diskon`
--
ALTER TABLE `tb_diskon`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `tb_faq`
--
ALTER TABLE `tb_faq`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `tb_galeri`
--
ALTER TABLE `tb_galeri`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `tb_galeri_detail`
--
ALTER TABLE `tb_galeri_detail`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;
--
-- AUTO_INCREMENT for table `tb_kegiatan`
--
ALTER TABLE `tb_kegiatan`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `tb_kelas`
--
ALTER TABLE `tb_kelas`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `tb_ortu`
--
ALTER TABLE `tb_ortu`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;
--
-- AUTO_INCREMENT for table `tb_pendaftaran`
--
ALTER TABLE `tb_pendaftaran`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tb_perkembangan`
--
ALTER TABLE `tb_perkembangan`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tb_raport`
--
ALTER TABLE `tb_raport`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tb_riwayat_kelas`
--
ALTER TABLE `tb_riwayat_kelas`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tb_siswa`
--
ALTER TABLE `tb_siswa`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `tb_tahun_ajaran`
--
ALTER TABLE `tb_tahun_ajaran`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `tb_tentang`
--
ALTER TABLE `tb_tentang`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `tb_user`
--
ALTER TABLE `tb_user`
  MODIFY `user_id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;
--
-- Constraints for dumped tables
--

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
-- Constraints for table `tb_pendaftaran`
--
ALTER TABLE `tb_pendaftaran`
  ADD CONSTRAINT `FK_tb_pendaftaran_tb_ortu` FOREIGN KEY (`id_ortu`) REFERENCES `tb_ortu` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_tb_pendaftaran_tb_siswa` FOREIGN KEY (`id_siswa`) REFERENCES `tb_siswa` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tb_perkembangan`
--
ALTER TABLE `tb_perkembangan`
  ADD CONSTRAINT `FK_tb_perkembangan_tb_guru` FOREIGN KEY (`nip`) REFERENCES `tb_guru` (`nip`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_tb_perkembangan_tb_siswa` FOREIGN KEY (`nis`) REFERENCES `tb_siswa` (`nis`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tb_raport`
--
ALTER TABLE `tb_raport`
  ADD CONSTRAINT `FK_tb_raport_tb_guru` FOREIGN KEY (`nip`) REFERENCES `tb_guru` (`nip`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_tb_raport_tb_siswa` FOREIGN KEY (`nis`) REFERENCES `tb_siswa` (`nis`) ON DELETE CASCADE ON UPDATE CASCADE;

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