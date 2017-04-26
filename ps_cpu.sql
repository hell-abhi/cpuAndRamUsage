-- phpMyAdmin SQL Dump
-- version 4.5.4.1deb2ubuntu2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Apr 25, 2017 at 07:08 PM
-- Server version: 5.7.17-0ubuntu0.16.04.1
-- PHP Version: 7.0.15-0ubuntu0.16.04.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ps_cpu`
--

-- --------------------------------------------------------

--
-- Table structure for table `status`
--

CREATE TABLE `status` (
  `Sl_No` int(11) NOT NULL,
  `Server` varchar(400) NOT NULL,
  `Date_and_Time` varchar(400) NOT NULL,
  `Avg_CPU` varchar(400) NOT NULL,
  `Avg_RAM` varchar(400) NOT NULL,
  `Peak_CPU` varchar(400) NOT NULL,
  `Peak_RAM` varchar(400) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `status`
--

INSERT INTO `status` (`Sl_No`, `Server`, `Date_and_Time`, `Avg_CPU`, `Avg_RAM`, `Peak_CPU`, `Peak_RAM`) VALUES
(1, 'hell-abhi', '', '7', '40.5%', 'MAX(cpu)\nNULL', 'MAX(ram)\nNULL'),
(2, 'hell-abhi', '', '7', '40.5%', 'MAX(cpu)\n7', 'MAX(ram)\n40.5%'),
(3, 'hell-abhi', 'Tue Apr 25 18:55:32 IST 2017', '8', '40%', 'MAX(cpu)\n7', 'MAX(ram)\n40.5%'),
(4, 'hell-abhi', 'Tue Apr 25 19:02:45 IST 2017', '8', '39.7%', '', ''),
(5, 'hell-abhi', 'Tue Apr 25 19:03:13 IST 2017', '8', '39.6%', 'MAX(Avg_CPU)\n8', 'MAX(Avg_RAM)\n40.5%');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `status`
--
ALTER TABLE `status`
  ADD PRIMARY KEY (`Sl_No`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `status`
--
ALTER TABLE `status`
  MODIFY `Sl_No` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
