-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 10, 2021 at 02:19 PM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 8.0.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `project`
--

-- --------------------------------------------------------

--
-- Table structure for table `transact`
--

CREATE TABLE `transact` (
  `send` varchar(30) NOT NULL,
  `recv` varchar(30) NOT NULL,
  `amt` int(10) NOT NULL,
  `time` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `transact`
--

INSERT INTO `transact` (`send`, `recv`, `amt`, `time`) VALUES
('rama', 'venu', 100, '2021-06-05 10:48:25'),
('rama', 'venu', 100, '2021-06-05 10:53:10'),
('Pooja', 'Sai', 100, '2021-06-05 11:17:45'),
('Sai', 'Pooja', 200, '2021-06-05 11:19:09'),
('Sai', 'Pooja', 200, '2021-06-05 11:19:15'),
('Pooja', 'Sai', 200, '2021-06-05 11:21:46'),
('tomi', 'divi', 100, '2021-06-05 11:25:03'),
('tomi', 'tomi', 100, '2021-06-05 11:25:44'),
('tomi', 'tomi', 100, '2021-06-05 11:29:14'),
('tomi', 'tomi', 100, '2021-06-05 11:30:18'),
('tomi', 'tomi', 100, '2021-06-05 11:34:42'),
('tomi', 'tomi', 100, '2021-06-05 11:35:28'),
('tomi', 'tomi', 100, '2021-06-05 11:36:42'),
('tomi', 'tomi', 100, '2021-06-05 11:38:33'),
('tomi', 'tomi', 100, '2021-06-05 11:41:31'),
('tomi', 'tomi', 100, '2021-06-05 11:41:35'),
('divi', 'tomi', 100, '2021-06-05 11:43:12'),
('Pooja', 'Sai', 50, '2021-06-05 12:46:18'),
('Sai', 'Pooja', 200, '2021-06-05 12:47:21'),
('Pooja', 'Sai', 50, '2021-06-07 19:41:14'),
('Pooja', 'Sai', 50, '2021-06-07 19:41:14'),
('Pooja', 'Sai', 50, '2021-06-07 19:41:44'),
('Sai', 'Pooja', 100, '2021-06-07 20:24:03'),
('Sai', 'Pooja', 100, '2021-06-07 21:00:16'),
('Sai', 'Sai', 200, '2021-06-07 21:02:02'),
('Sai', 'Sai', 200, '2021-06-07 21:03:00'),
('Sai', 'Sai', 200, '2021-06-07 21:04:09'),
('Sai', 'Sai', 200, '2021-06-07 21:13:10'),
('Sai', 'Sai', 200, '2021-06-07 21:13:39'),
('Sai', 'Pooja', 200, '2021-06-07 21:15:00'),
('Sai', 'Pooja', 100, '2021-06-08 18:38:42'),
('Pooja', 'Sai', 700, '2021-06-08 18:53:10'),
('Sai', 'Pooja', 200, '2021-06-08 19:01:37'),
('Sai', 'Pooja', 200, '2021-06-08 19:10:14'),
('Pooja', 'Sai', 200, '2021-06-09 09:15:34'),
('vikas', 'nupur', 800, '2021-06-09 09:26:04'),
('Sai', 'Pooja', 200, '2021-06-09 11:07:49'),
('leela', 'mohan', 200, '2021-06-10 17:37:29');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
