-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
<<<<<<<< HEAD:WEB application/CtfWebApp/SQL/ctf_db (4).sql
-- Generation Time: Oct 27, 2023 at 08:13 AM
========
-- Generation Time: Oct 27, 2023 at 11:17 AM
>>>>>>>> 667fafd04a404278a219b1684cab12a1b1a5da05:WEB application/CtfWebApp/SQL/ctf_db (1).sql
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ctf_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `flags`
--

CREATE TABLE `flags` (
  `ch_no` int(30) NOT NULL,
  `flag` varchar(400) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `flags`
--

INSERT INTO `flags` (`ch_no`, `flag`) VALUES
(1, 'FLAG{helloworld}'),
(2, 'FLAG{centerofexcecellence23}'),
(3, 'FLAG{liNuX_cTf_3}'),
(4, 'FLAG{Soare}'),
(5, 'FLAG{helloinspector}'),
(6, 'FLAG{sahyadri_123}'),
(7, 'FLAG{puneethrajkumar}'),
(8, 'FLAG{paris}');

-- --------------------------------------------------------

--
-- Table structure for table `submission`
--

CREATE TABLE `submission` (
  `username` varchar(20) NOT NULL,
  `ch_no` int(20) NOT NULL,
  `time` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `submission`
--

INSERT INTO `submission` (`username`, `ch_no`, `time`) VALUES
('test', 3, '2023-10-24 21:13:36.000000'),
('test', 1, '2023-10-24 23:00:55.000000'),
<<<<<<<< HEAD:WEB application/CtfWebApp/SQL/ctf_db (4).sql
('test', 1, '2023-10-26 15:05:13.000000');
========
('test', 4, '2023-10-25 23:18:07.000000'),
('test', 4, '2023-10-26 13:05:47.000000');
>>>>>>>> 667fafd04a404278a219b1684cab12a1b1a5da05:WEB application/CtfWebApp/SQL/ctf_db (1).sql

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `uid` int(20) NOT NULL,
  `full_name` varchar(25) NOT NULL,
  `email` varchar(30) NOT NULL,
  `username` varchar(20) NOT NULL,
  `passwd` varchar(20) NOT NULL,
  `ph_no` bigint(10) NOT NULL,
  `instit_name` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`uid`, `full_name`, `email`, `username`, `passwd`, `ph_no`, `instit_name`) VALUES
(1, 'aaa', 'ss@gmail.com', 'test', 'test', 12345, 'sahyadri'),
(2, 'Hssh', 'ss@gmail.com', '123', '123', 23456, 'rsa');

-- --------------------------------------------------------

--
-- Table structure for table `values`
--

CREATE TABLE `values` (
  `value1` varchar(20) NOT NULL,
  `value2` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `values`
--

INSERT INTO `values` (`value1`, `value2`) VALUES
('ssdd', 'vvd');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `flags`
--
ALTER TABLE `flags`
  ADD PRIMARY KEY (`ch_no`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`uid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `flags`
--
ALTER TABLE `flags`
  MODIFY `ch_no` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `uid` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
