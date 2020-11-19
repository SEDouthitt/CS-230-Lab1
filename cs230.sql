-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 19, 2020 at 02:17 AM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cs230`
--

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `pid` int(11) NOT NULL,
  `title` varchar(60) NOT NULL,
  `descript` text NOT NULL,
  `picpath` varchar(80) NOT NULL,
  `upload_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `rating` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`pid`, `title`, `descript`, `picpath`, `upload_date`, `rating`) VALUES
(1, 'zoid', 'berg', '5f84e30d2d3843.64960191.png', '2020-10-12', NULL),
(2, 'other', 'other', '5f84e934370ba7.78063508.png', '2020-10-12', NULL),
(3, 'test3', 'test3', '5f84ea7908f5c5.03866153.jpg', '2020-10-12', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `profile`
--

CREATE TABLE `profile` (
  `uname` varchar(30) NOT NULL,
  `picpath` varchar(50) NOT NULL DEFAULT 'uploads/anon.png',
  `bio` mediumtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `profile`
--

INSERT INTO `profile` (`uname`, `picpath`, `bio`) VALUES
('test4', '../uploads/5f7d2fd60ba922.29337765.jpg', '');

-- --------------------------------------------------------

--
-- Table structure for table `revies`
--

CREATE TABLE `revies` (
  `rev_id` int(11) NOT NULL,
  `item_id` int(11) NOT NULL,
  `uname` varchar(80) CHARACTER SET utf8mb4 NOT NULL,
  `title` varchar(60) CHARACTER SET utf8mb4 NOT NULL,
  `review_text` text CHARACTER SET utf8mb4 NOT NULL,
  `rev_date` datetime NOT NULL,
  `rating_num` int(11) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `uid` int(11) NOT NULL,
  `lname` varchar(50) NOT NULL,
  `fname` varchar(50) NOT NULL,
  `email` varchar(80) NOT NULL,
  `uname` varchar(50) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`uid`, `lname`, `fname`, `email`, `uname`, `password`) VALUES
(1, 'Aran', 'Samus', 'metroid@cs230.com', 'samus', '$2y$10$OtomjOnMG3Qi9NsYCKxMjeToCAv5O1LZb4OuCWPEVuBrVOo317T6i'),
(2, 'test', 'test', 'test@test.com', 'test', '$2y$10$1l4atEQI9wm6dytIgSLgOuLuT7fHCyevg7zeCtRxO8HklYOimGvj2'),
(3, 'test', 'test2', 'test2@test.com', 'test2', '$2y$10$vluit3gsLtwWv.XaPSfkx.dUUF86hcnV2okEzsxSCQyUk00X76wSC'),
(4, 'test', 'test4', 't4@t.com', 'test4', '$2y$10$vAKhzAH07AjIcU/2SLSHMelJB.aG/L98sGJLxuzkJLbcrTC4ZrhDu');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`pid`);

--
-- Indexes for table `revies`
--
ALTER TABLE `revies`
  ADD PRIMARY KEY (`rev_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`uid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `pid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `revies`
--
ALTER TABLE `revies`
  MODIFY `rev_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `uid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
