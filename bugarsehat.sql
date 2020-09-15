-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 28, 2019 at 03:04 PM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 5.6.40

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bugarsehat`
--

-- --------------------------------------------------------

--
-- Table structure for table `jabatan`
--

CREATE TABLE `jabatan` (
  `id_jabatan` varchar(50) NOT NULL,
  `nama` varchar(20) DEFAULT NULL,
  `catatan` varchar(255) DEFAULT NULL,
  `insert_by` varchar(20) DEFAULT NULL,
  `insert_date` date DEFAULT NULL,
  `update_by` varchar(20) DEFAULT NULL,
  `update_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `karyawan`
--

CREATE TABLE `karyawan` (
  `id_karyawan` varchar(50) NOT NULL,
  `id_user` varchar(50) DEFAULT NULL,
  `id_jabatan` varchar(50) DEFAULT NULL,
  `nama` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `tgl_lahir` date DEFAULT NULL,
  `alamat` varchar(255) NOT NULL,
  `no_telp` varchar(14) NOT NULL,
  `catatan` varchar(255) DEFAULT NULL,
  `insert_by` varchar(20) DEFAULT NULL,
  `insert_date` date DEFAULT NULL,
  `update_by` varchar(20) DEFAULT NULL,
  `update_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `layanan`
--

CREATE TABLE `layanan` (
  `id_layanan` varchar(50) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `jenis` varchar(50) DEFAULT NULL,
  `harga_min` int(8) NOT NULL,
  `harga_tambah` int(8) NOT NULL,
  `waktu_min` int(3) NOT NULL,
  `waktu_tambah` int(3) NOT NULL,
  `catatan` varchar(255) DEFAULT NULL,
  `insert_by` varchar(20) DEFAULT NULL,
  `insert_date` date DEFAULT NULL,
  `update_by` varchar(20) DEFAULT NULL,
  `update_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `order_trx`
--

CREATE TABLE `order_trx` (
  `id_order_trx` varchar(50) NOT NULL,
  `id_karyawan` varchar(50) DEFAULT NULL,
  `id_pelanggan` varchar(50) NOT NULL,
  `id_layanan` varchar(50) NOT NULL,
  `id_status` varchar(50) NOT NULL,
  `invoice` varchar(50) DEFAULT NULL,
  `tgl_order` date NOT NULL,
  `jam_order` datetime NOT NULL,
  `tarif` int(8) NOT NULL,
  `lama_layanan` int(3) NOT NULL,
  `catatan` varchar(255) DEFAULT NULL,
  `insert_by` varchar(50) DEFAULT NULL,
  `insert_date` date DEFAULT NULL,
  `update_by` varchar(50) DEFAULT NULL,
  `update_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `pelanggan`
--

CREATE TABLE `pelanggan` (
  `id_pelanggan` varchar(50) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `tgl_lahir` date DEFAULT NULL,
  `alamat` varchar(255) NOT NULL,
  `no_telp` varchar(14) NOT NULL,
  `hp` varchar(14) DEFAULT NULL,
  `catatan` varchar(255) DEFAULT NULL,
  `insert_by` varchar(20) DEFAULT NULL,
  `insert_date` date DEFAULT NULL,
  `update_by` varchar(20) DEFAULT NULL,
  `update_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `setoran`
--

CREATE TABLE `setoran` (
  `id_setoran` varchar(50) NOT NULL,
  `id_order` varchar(50) NOT NULL,
  `komisi` int(8) NOT NULL,
  `setoran` int(8) NOT NULL,
  `tgl_setor` date DEFAULT NULL,
  `insert_by` varchar(20) DEFAULT NULL,
  `insert_date` date DEFAULT NULL,
  `update_by` varchar(20) DEFAULT NULL,
  `update_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `status`
--

CREATE TABLE `status` (
  `id_status` varchar(50) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `catatan` varchar(255) DEFAULT NULL,
  `insert_by` varchar(20) DEFAULT NULL,
  `insert_date` date DEFAULT NULL,
  `update_by` varchar(20) DEFAULT NULL,
  `update_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id_user` varchar(50) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(50) DEFAULT NULL,
  `insert_by` varchar(20) DEFAULT NULL,
  `insert_date` date DEFAULT NULL,
  `update_by` varchar(20) DEFAULT NULL,
  `update_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `jabatan`
--
ALTER TABLE `jabatan`
  ADD PRIMARY KEY (`id_jabatan`);

--
-- Indexes for table `karyawan`
--
ALTER TABLE `karyawan`
  ADD PRIMARY KEY (`id_karyawan`);

--
-- Indexes for table `layanan`
--
ALTER TABLE `layanan`
  ADD PRIMARY KEY (`id_layanan`);

--
-- Indexes for table `order_trx`
--
ALTER TABLE `order_trx`
  ADD PRIMARY KEY (`id_order_trx`);

--
-- Indexes for table `pelanggan`
--
ALTER TABLE `pelanggan`
  ADD PRIMARY KEY (`id_pelanggan`);

--
-- Indexes for table `setoran`
--
ALTER TABLE `setoran`
  ADD PRIMARY KEY (`id_setoran`);

--
-- Indexes for table `status`
--
ALTER TABLE `status`
  ADD PRIMARY KEY (`id_status`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`),
  ADD UNIQUE KEY `username` (`username`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
