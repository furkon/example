-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 15, 2019 at 05:32 AM
-- Server version: 10.1.36-MariaDB
-- PHP Version: 5.6.38

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_example`
--

-- --------------------------------------------------------

--
-- Table structure for table `t_rek`
--

CREATE TABLE `t_rek` (
  `id_rek` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `no_rek` int(11) NOT NULL,
  `nama_rek` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `t_rek`
--

INSERT INTO `t_rek` (`id_rek`, `id_user`, `no_rek`, `nama_rek`) VALUES
(14, 1, 888, 'rek to example'),
(15, 2, 777, 'rek test');

-- --------------------------------------------------------

--
-- Table structure for table `t_user`
--

CREATE TABLE `t_user` (
  `id_user` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(200) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `alamat` text NOT NULL,
  `no_tlp` varchar(13) NOT NULL,
  `email` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `t_user`
--

INSERT INTO `t_user` (`id_user`, `username`, `password`, `nama`, `alamat`, `no_tlp`, `email`) VALUES
(1, 'example', '098f6bcd4621d373cade4e832627b4f6', 'namae_example', 'alamat_example', '822344211131', 'example@gmail.com'),
(2, 'test', '098f6bcd4621d373cade4e832627b4f6', 'test_name', 'test_address', '817877978887', 'test@gmail.com');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `t_rek`
--
ALTER TABLE `t_rek`
  ADD PRIMARY KEY (`id_rek`);

--
-- Indexes for table `t_user`
--
ALTER TABLE `t_user`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `t_rek`
--
ALTER TABLE `t_rek`
  MODIFY `id_rek` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `t_user`
--
ALTER TABLE `t_user`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
