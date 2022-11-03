-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 03, 2022 at 10:01 AM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `register`
--

-- --------------------------------------------------------

--
-- Table structure for table `data`
--

CREATE TABLE `data` (
  `id` int(11) NOT NULL,
  `description` varchar(50) NOT NULL,
  `date` date NOT NULL,
  `user_id` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `data`
--

INSERT INTO `data` (`id`, `description`, `date`, `user_id`) VALUES
(20, 'ปวดแขน', '2022-11-02', 0),
(21, 'ปวดตูด', '2022-12-10', 0),
(22, 'ปวดแขน', '2022-11-03', 0),
(23, 'ปวดแขน', '2022-11-03', 0),
(24, 'ปวดแขน', '2022-11-03', 0),
(25, 'ปวดแขน', '2022-11-03', 0),
(26, 'ปวดแขน', '2022-11-03', 0),
(27, 'ปวดแขน', '2022-11-03', 0),
(28, 'ปวดตีน', '2022-11-09', 0),
(29, 'ปวดตีน', '2022-11-09', 0),
(30, 'ปวดตีน', '2022-11-09', 0),
(31, 'ปวดตีน', '2022-11-09', 0),
(32, 'ปวดตีน', '2022-11-09', 0),
(33, 'ปวดแขน', '2022-11-09', 0),
(34, 'ปวดตูด', '2022-11-10', 0),
(35, 'ปวดตูด', '2022-11-10', 0),
(36, 'ปวดตูด', '2022-11-10', 0),
(37, 'เจ็บคอ', '2022-11-03', 0),
(38, 'เจ็บคอ', '2022-11-03', 0),
(39, 'เจ็บคอ', '2022-11-03', 0),
(40, 'เจ็บคอ', '2022-11-03', 0),
(41, 'เจ็บคอ', '2022-11-03', 0),
(42, 'เจ็บคอ', '2022-11-03', 0),
(43, 'เจ็บคอ', '2022-11-03', 0),
(44, 'เจ็บคอ', '2022-11-03', 0);

-- --------------------------------------------------------

--
-- Table structure for table `newuser`
--

CREATE TABLE `newuser` (
  `id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `PASSWORD` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `newuser`
--

INSERT INTO `newuser` (`id`, `username`, `email`, `PASSWORD`) VALUES
(1, 'new', 'newza_8888@hotmail.com', '81dc9bdb52d04dc20036dbd8313ed055'),
(2, 'kuy', 'newza_9988@hotmail.com', '81dc9bdb52d04dc20036dbd8313ed055'),
(16, 'wit', 'kittisakk62@nu.ac.th', '81dc9bdb52d04dc20036dbd8313ed055');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `data`
--
ALTER TABLE `data`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `newuser`
--
ALTER TABLE `newuser`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `data`
--
ALTER TABLE `data`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `newuser`
--
ALTER TABLE `newuser`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
