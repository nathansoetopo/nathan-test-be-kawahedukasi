-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jul 09, 2022 at 04:52 AM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `kawahedukasi`
--

-- --------------------------------------------------------

--
-- Table structure for table `kawahedukasi`
--

CREATE TABLE `kawahedukasi` (
  `id` int(11) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `kelas` varchar(100) NOT NULL,
  `nilai` int(100) NOT NULL,
  `jumlah_kehadiran` int(100) NOT NULL,
  `status_kelulusan` varchar(100) NOT NULL,
  `status_pekerjaan` enum('DI TERIMA BEKERJA','DALAM TAHAP INTERVIEW','BELUM DI PROSES') NOT NULL,
  `gaji` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `kawahedukasi`
--

INSERT INTO `kawahedukasi` (`id`, `nama`, `kelas`, `nilai`, `jumlah_kehadiran`, `status_kelulusan`, `status_pekerjaan`, `gaji`) VALUES
(1, 'ilham muhammad', 'FRONTEND', 90, 124, 'LULUS', 'DI TERIMA BEKERJA', 5000000),
(2, 'Alnandi', 'BACKEND', 100, 101, 'LULUS', 'DI TERIMA BEKERJA', 5500000),
(3, 'danian andriani', 'FRONTEND', 50, 75, 'TIDAK LULUS', 'BELUM DI PROSES', 0),
(4, 'Alnandi', 'BACKEND', 100, 124, 'LULUS', 'DALAM TAHAP INTERVIEW', 0),
(5, 'sihabin almandudi', 'QA', 100, 124, 'LULUS', 'DI TERIMA BEKERJA', 4000000),
(6, 'Indah Permata', 'BACKEND', 100, 124, 'LULUS', 'DALAM TAHAP INTERVIEW', 0),
(7, 'indanian andriani', 'FRONTEND', 10, 20, 'TIDAK LULUS', 'BELUM DI PROSES', 0),
(8, 'fiqri ilham', 'QA', 100, 100, 'LULUS', 'DALAM TAHAP INTERVIEW', 0),
(9, 'plajarian', 'FRONTEND', 85, 124, 'LULUS', 'DI TERIMA BEKERJA', 3000000),
(10, 'Aldan', 'BACKEND', 100, 150, 'LULUS', 'DI TERIMA BEKERJA', 6500000),
(11, 'dani muharam', 'FRONTEND', 100, 150, 'LULUS', 'DI TERIMA BEKERJA', 10000000),
(12, 'iwan kleandi', 'BACKEND', 100, 124, 'LULUS', 'DALAM TAHAP INTERVIEW', 0),
(13, 'elfath', 'QA', 100, 150, 'LULUS', 'DI TERIMA BEKERJA', 4500000),
(14, 'ilman sutisna', 'BACKEND', 100, 124, 'LULUS', 'DALAM TAHAP INTERVIEW', 0),
(15, 'hamdani', 'FRONTEND', 100, 102, 'LULUS', 'BELUM DI PROSES', 0),
(16, 'fiqhan', 'QA', 100, 100, 'LULUS', 'DALAM TAHAP INTERVIEW', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `kawahedukasi`
--
ALTER TABLE `kawahedukasi`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `kawahedukasi`
--
ALTER TABLE `kawahedukasi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
