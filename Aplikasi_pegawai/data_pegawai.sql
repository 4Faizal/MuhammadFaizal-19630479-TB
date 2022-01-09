-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 09, 2022 at 11:21 AM
-- Server version: 10.4.19-MariaDB
-- PHP Version: 8.0.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `data_pegawai`
--

-- --------------------------------------------------------

--
-- Table structure for table `input_data_pegawai`
--

CREATE TABLE `input_data_pegawai` (
  `nip` varchar(30) NOT NULL,
  `nama` varchar(30) NOT NULL,
  `jabatan` varchar(30) NOT NULL,
  `jenis_kelamin` varchar(30) NOT NULL,
  `agama` varchar(30) NOT NULL,
  `status` varchar(30) NOT NULL,
  `alamat` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `input_data_pegawai`
--

INSERT INTO `input_data_pegawai` (`nip`, `nama`, `jabatan`, `jenis_kelamin`, `agama`, `status`, `alamat`) VALUES
('1234', 'Muhammad Faizal', 'Manager', 'Laki-laki', 'Islam', 'Belum Menikah', 'Martapura'),
('1235', 'Irma', 'Manager', 'Perempuan', 'Islam', 'Belum Menikah', 'Bangkal'),
('2455', 'Danil', 'Kasir', 'Perempuan', 'Islam', 'Menikah', 'Bandung');

-- --------------------------------------------------------

--
-- Table structure for table `penjualan`
--

CREATE TABLE `penjualan` (
  `NoFaktur` varchar(20) NOT NULL,
  `Tanggal` varchar(20) NOT NULL,
  `ID_Customer` varchar(10) NOT NULL,
  `TotalBeli` decimal(10,0) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `penjualan`
--

INSERT INTO `penjualan` (`NoFaktur`, `Tanggal`, `ID_Customer`, `TotalBeli`) VALUES
('NF03', '09-01-2022', 'CS03', '725000'),
('NF04', '09-01-2022', 'CS04', '30000');

-- --------------------------------------------------------

--
-- Table structure for table `penjualanrinci`
--

CREATE TABLE `penjualanrinci` (
  `NoFaktur` varchar(20) NOT NULL,
  `ID_Barang` varchar(10) NOT NULL,
  `Nama_Barang` varchar(50) NOT NULL,
  `Jumlah` int(11) NOT NULL,
  `Harga` decimal(10,0) NOT NULL,
  `Total` decimal(10,0) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `penjualanrinci`
--

INSERT INTO `penjualanrinci` (`NoFaktur`, `ID_Barang`, `Nama_Barang`, `Jumlah`, `Harga`, `Total`) VALUES
('NF01', 'BRG01', 'Lensa Fix YN 1.8', 1, '600000', '600000'),
('NF02', 'BRG02', 'Keyboard Mini', 1, '75000', '75000'),
('NF03', 'BRG03', 'Mouse', 2, '25000', '50000'),
('NF04', 'BRG05', 'KABEL DATA', 2, '15000', '30000');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `penjualan`
--
ALTER TABLE `penjualan`
  ADD PRIMARY KEY (`NoFaktur`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
