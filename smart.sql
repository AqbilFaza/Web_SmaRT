-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 21, 2023 at 07:56 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `smart`
--

-- --------------------------------------------------------

--
-- Table structure for table `table_admin`
--

CREATE TABLE `table_admin` (
  `id_admin` int(11) NOT NULL,
  `nama` varchar(250) NOT NULL,
  `email` varchar(45) NOT NULL,
  `kata_sandi` varchar(250) NOT NULL,
  `foto_profil` varchar(250) DEFAULT 'Default_Profile.png',
  `jenis_kelamin` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `table_admin`
--

INSERT INTO `table_admin` (`id_admin`, `nama`, `email`, `kata_sandi`, `foto_profil`, `jenis_kelamin`) VALUES
(1, 'Gilang Andri Asto', 'admin@test.com', '$2a$10$jNltS9UiM8V4BFbCpHLIFumLG91/ZgJWHXMyQ7m2qyA1NZvHBSnwq', 'Default_Profile.png', 'Laki-Laki');

-- --------------------------------------------------------

--
-- Table structure for table `table_arsip_surat`
--

CREATE TABLE `table_arsip_surat` (
  `id_surat_masuk` int(11) NOT NULL,
  `id_surat` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `nama` varchar(45) NOT NULL,
  `nik` varchar(45) NOT NULL,
  `tempat_lahir` varchar(45) NOT NULL,
  `tanggal_lahir` date NOT NULL,
  `jenis_kelamin` varchar(45) NOT NULL,
  `agama` varchar(45) NOT NULL,
  `alamat` varchar(45) NOT NULL,
  `waktu_diajukan` datetime NOT NULL DEFAULT current_timestamp(),
  `id_status` int(11) NOT NULL DEFAULT 1,
  `updated_time` datetime DEFAULT NULL,
  `no_surat` varchar(50) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `table_arsip_surat`
--

INSERT INTO `table_arsip_surat` (`id_surat_masuk`, `id_surat`, `id_user`, `nama`, `nik`, `tempat_lahir`, `tanggal_lahir`, `jenis_kelamin`, `agama`, `alamat`, `waktu_diajukan`, `id_status`, `updated_time`, `no_surat`, `updated_by`) VALUES
(3, 4, 1, 'Shani Indira', '345678901', 'Yogyakarta', '1998-02-02', 'Perempuan', 'Islam', 'Jl Pattimura no 08', '2023-12-08 19:38:10', 2, '2023-12-19 22:26:01', '11/SPKTP/XII/2023', 1),
(16, 6, 2, 'Devi Kinal Putri', '234567890', 'Bandung', '1998-10-11', 'Perempuan', 'Islam', 'Jl Baru no 09', '2023-12-08 21:44:50', 2, '2023-12-19 22:26:01', '13/SKK/XII/2023', 1),
(23, 11, 1, 'Melody', '987654321', 'Bandung', '1992-03-24', 'Perempuan', 'Islam', 'Jl. Panarukan no 50', '2023-12-09 11:40:18', 2, '2023-12-19 22:26:01', '16/SKBMR/XII/2023', 1),
(24, 5, 1, 'Ardi', '12345', 'Kuningan', '2002-10-10', 'Laki-laki', 'Islam', 'Kuningan', '2023-12-10 14:31:33', 2, '2023-12-19 22:26:01', '17/SPKK/XII/2023', 1),
(33, 4, 20, 'Asep', '1234567890', 'Oslo', '2023-12-20', 'Laki-Laki', 'khonghucu', 'Jalan mawar', '2023-12-20 15:34:02', 3, '2023-12-20 15:40:26', '18/SPKTP/XII/2023', NULL),
(36, 8, 20, 'Aldi Taher', '342323110188111', 'Miami', '2023-12-21', 'Laki-Laki', 'budha', 'Jalan anggrek', '2023-12-21 01:31:20', 1, NULL, NULL, NULL),
(40, 7, 20, 'Sinta Dewi', '35367213445345', 'Jakarta', '1991-10-09', 'Perempuan', 'islam', 'Jl. Kamboja', '2023-12-21 03:23:07', 1, NULL, NULL, NULL),
(43, 2, 20, 'aaa', '1234567890', 'asd', '2023-12-21', 'Perempuan', 'islam', 'Jl. melati', '2023-12-21 13:53:31', 1, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `table_status`
--

CREATE TABLE `table_status` (
  `id_status` int(11) NOT NULL,
  `nama_status` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `table_status`
--

INSERT INTO `table_status` (`id_status`, `nama_status`) VALUES
(1, 'Diajukan'),
(2, 'Ditolak'),
(3, 'Selesai');

-- --------------------------------------------------------

--
-- Table structure for table `table_surat`
--

CREATE TABLE `table_surat` (
  `id_surat` int(11) NOT NULL,
  `singkatan` varchar(10) NOT NULL,
  `jenis_surat` varchar(45) NOT NULL,
  `isi_surat` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `table_surat`
--

INSERT INTO `table_surat` (`id_surat`, `singkatan`, `jenis_surat`, `isi_surat`) VALUES
(1, 'SKD', 'Surat Keterangan Domisili', 'Bahwa yang bersangkutan benar-benar penduduk di wilayah RT 11 Kelurahan Wanasari, Cibitung, Bekasi.\r\nBahwa yang bersangkutan memiliki alamat sesuai yang tercatat dalam data kependudukan RT 11.\r\nBahwa yang bersangkutan adalah warga yang baik dan taat aturan di lingkungan RT 11.'),
(2, 'SKU', 'Surat Keterangan Usaha', ''),
(3, 'SKTM', 'Surat Keterangan Tidak Mampu', ''),
(4, 'SPKTP', 'Surat Pengantar KTP', ''),
(5, 'SPKK', 'Surat Pengantar KK', ''),
(6, 'SKK', 'Surat Keterangan Kematian', ''),
(7, 'SPN', 'Surat Pengantar Nikah', ''),
(8, 'SPC', 'Surat Permohonan Cerai', ''),
(9, 'SKPO', 'Surat Keterangan Penghasilan Ortu', ''),
(10, 'SKBM', 'Surat Keterangan Belum Menikah', ''),
(11, 'SKBMR', 'Surat Keterangan Belum Memiliki Rumah', '');

-- --------------------------------------------------------

--
-- Table structure for table `table_user`
--

CREATE TABLE `table_user` (
  `id_user` int(11) NOT NULL,
  `nama` varchar(250) NOT NULL,
  `kata_sandi` varchar(250) NOT NULL,
  `email` varchar(45) NOT NULL,
  `jenis_kelamin` varchar(45) DEFAULT NULL,
  `tanggal_lahir` varchar(45) DEFAULT NULL,
  `ktp` varchar(250) DEFAULT NULL,
  `kk` varchar(250) DEFAULT NULL,
  `foto_profil` varchar(250) DEFAULT 'Default_Profile.png'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `table_user`
--

INSERT INTO `table_user` (`id_user`, `nama`, `kata_sandi`, `email`, `jenis_kelamin`, `tanggal_lahir`, `ktp`, `kk`, `foto_profil`) VALUES
(1, 'Cindy Yuvia', '$2a$10$QD7Pj0PEQy5VBiLs3FwWJupQOEE5xGBz0K4imHTdZYLRQmZB6Oy4q', 'Cindyyuvia@test', 'Perempuan', '1998-08-08', '1702799882845-Cuplikan layar 2023-09-12 225141.png', '1702799882842-Cuplikan layar 2023-09-12 225141.png', '1702799882839-Cuplikan layar 2023-09-12 225141.png'),
(2, 'Devi', '$2a$10$7WxJQVKH0xJVokBX5b2zZeawAKs4Kvi31fAei8L/f5k/VOPzOsKgi', 'devikinal@test.com', NULL, NULL, NULL, NULL, NULL),
(18, 'ardi', '$2b$10$kZyt6/bO7sXNyaJ9E7H4OOAwyf/jbaI68maHjVZYJtyA92AGeG00y', 'ardi@tes.mailss', NULL, NULL, NULL, NULL, NULL),
(19, 'ardi', '$2b$10$mE1sVEKc9WrKyhMyGT127uIZmgz2uWqQ5MBGApBx3UgCYX6LMX6oy', 'ardi@ardi', NULL, NULL, NULL, NULL, NULL),
(20, 'Cindy Yuvia', '$2b$10$7cwfj7ryoxGcmdRVJnTJRu1/8JMxnTNmnLupsAY3IA/BS6Xt0dp8S', 'cindy@gmail.com', 'Perempuan', NULL, '1703130202274-ktp.png', '1703131387235-kk.png', 'Default_Profile.png'),
(21, 'admin', '$2b$10$3SQIMcEys6d3CbJQ953jJuQRTZWHixXK647mK7YzUQeQUf2lkEFMi', 'admin@admin.com', NULL, NULL, NULL, NULL, 'Default_Profile.png'),
(22, 'Boy', '$2b$10$mW.Yo6nRDZ3YXS8yL7uUAuO1gqmp5JIj9oXhk4o.zy.WBVuYg8En.', 'boy@gmail.com', NULL, NULL, NULL, NULL, 'Default_Profile.png');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `table_admin`
--
ALTER TABLE `table_admin`
  ADD PRIMARY KEY (`id_admin`);

--
-- Indexes for table `table_arsip_surat`
--
ALTER TABLE `table_arsip_surat`
  ADD PRIMARY KEY (`id_surat_masuk`),
  ADD KEY `id_user_idx` (`id_user`),
  ADD KEY `id_surat` (`id_surat`),
  ADD KEY `id_status` (`id_status`),
  ADD KEY `updated_by` (`updated_by`);

--
-- Indexes for table `table_status`
--
ALTER TABLE `table_status`
  ADD PRIMARY KEY (`id_status`);

--
-- Indexes for table `table_surat`
--
ALTER TABLE `table_surat`
  ADD PRIMARY KEY (`id_surat`);

--
-- Indexes for table `table_user`
--
ALTER TABLE `table_user`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `table_admin`
--
ALTER TABLE `table_admin`
  MODIFY `id_admin` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `table_arsip_surat`
--
ALTER TABLE `table_arsip_surat`
  MODIFY `id_surat_masuk` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `table_status`
--
ALTER TABLE `table_status`
  MODIFY `id_status` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `table_surat`
--
ALTER TABLE `table_surat`
  MODIFY `id_surat` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `table_user`
--
ALTER TABLE `table_user`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `table_arsip_surat`
--
ALTER TABLE `table_arsip_surat`
  ADD CONSTRAINT `id_status` FOREIGN KEY (`id_status`) REFERENCES `table_status` (`id_status`),
  ADD CONSTRAINT `id_surat` FOREIGN KEY (`id_surat`) REFERENCES `table_surat` (`id_surat`),
  ADD CONSTRAINT `id_user` FOREIGN KEY (`id_user`) REFERENCES `table_user` (`id_user`),
  ADD CONSTRAINT `updated_by` FOREIGN KEY (`updated_by`) REFERENCES `table_admin` (`id_admin`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
