-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Dec 29, 2024 at 02:41 PM
-- Server version: 8.0.30
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `2210010523_periklanan`
--

-- --------------------------------------------------------

--
-- Table structure for table `tb_iklan`
--

CREATE TABLE `tb_iklan` (
  `id_iklan` varchar(10) NOT NULL,
  `id_order` varchar(10) NOT NULL,
  `nama_iklan` varchar(35) NOT NULL,
  `lokasi_iklan` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `tb_iklan`
--

INSERT INTO `tb_iklan` (`id_iklan`, `id_order`, `nama_iklan`, `lokasi_iklan`) VALUES
('121', '436y', 'sFFF', 'SSSS'),
('2', '43', 'sdsd', 'ere');

-- --------------------------------------------------------

--
-- Table structure for table `tb_jadwaliklan`
--

CREATE TABLE `tb_jadwaliklan` (
  `id_jadwal` varchar(10) NOT NULL,
  `id_iklan` varchar(10) NOT NULL,
  `id_acara` varchar(10) NOT NULL,
  `date` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `telah_tayang` varchar(50) NOT NULL,
  `status` varchar(75) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `tb_jadwaliklan`
--

INSERT INTO `tb_jadwaliklan` (`id_jadwal`, `id_iklan`, `id_acara`, `date`, `telah_tayang`, `status`) VALUES
('12', '3', '1', '212', '1212', 'SSAS');

-- --------------------------------------------------------

--
-- Table structure for table `tb_orderiklan`
--

CREATE TABLE `tb_orderiklan` (
  `id_order` varchar(10) NOT NULL,
  `id_pengiklan` varchar(10) NOT NULL,
  `tgl_order` varchar(50) NOT NULL,
  `tgl_awal` varchar(50) NOT NULL,
  `tgl_ahir` varchar(50) NOT NULL,
  `jenis_iklan` varchar(35) NOT NULL,
  `perhari` varchar(50) NOT NULL,
  `frekuensi` varchar(25) NOT NULL,
  `id_user` varchar(10) NOT NULL,
  `kategori` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `tb_orderiklan`
--

INSERT INTO `tb_orderiklan` (`id_order`, `id_pengiklan`, `tgl_order`, `tgl_awal`, `tgl_ahir`, `jenis_iklan`, `perhari`, `frekuensi`, `id_user`, `kategori`) VALUES
('122', 'eeee', 'ffffggg', 'fffff', 'fff', 'sssaa', 'ddff', 'swsww', 'sff', 'sdd');

-- --------------------------------------------------------

--
-- Table structure for table `tb_penyiaraniklan`
--

CREATE TABLE `tb_penyiaraniklan` (
  `id_penyiaran` varchar(10) NOT NULL,
  `tgl_penyiaran` varchar(10) NOT NULL,
  `id_jadwal` varchar(10) NOT NULL,
  `id_user` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `tb_penyiaraniklan`
--

INSERT INTO `tb_penyiaraniklan` (`id_penyiaran`, `tgl_penyiaran`, `id_jadwal`, `id_user`) VALUES
('1', '1111', '1111', '1212');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_iklan`
--
ALTER TABLE `tb_iklan`
  ADD PRIMARY KEY (`id_iklan`);

--
-- Indexes for table `tb_jadwaliklan`
--
ALTER TABLE `tb_jadwaliklan`
  ADD PRIMARY KEY (`id_jadwal`);

--
-- Indexes for table `tb_orderiklan`
--
ALTER TABLE `tb_orderiklan`
  ADD PRIMARY KEY (`id_order`);

--
-- Indexes for table `tb_penyiaraniklan`
--
ALTER TABLE `tb_penyiaraniklan`
  ADD PRIMARY KEY (`id_penyiaran`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
