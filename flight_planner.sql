-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 16, 2025 at 06:39 PM
-- Server version: 8.0.41
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `flight_planner`
--

-- --------------------------------------------------------

--
-- Table structure for table `flights`
--

CREATE TABLE `flights` (
  `id` int NOT NULL,
  `origin` enum('Tallinn') COLLATE utf8mb4_general_ci NOT NULL,
  `destination` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `price` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `flights`
--

INSERT INTO `flights` (`id`, `origin`, `destination`, `start_date`, `end_date`, `price`) VALUES
(1, 'Tallinn', 'Madrid', '2025-03-07', '2025-03-14', 635),
(2, 'Tallinn', 'Rome', '2025-03-11', '2025-03-25', 1500),
(3, 'Tallinn', 'Rome', '2025-03-30', '2025-04-06', 675),
(4, 'Tallinn', 'Paris', '2025-03-24', '2025-03-31', 715),
(5, 'Tallinn', 'London', '2025-03-23', '2025-04-06', 1210),
(6, 'Tallinn', 'Barcelona', '2025-05-05', '2025-05-12', 987),
(7, 'Tallinn', 'Berlin', '2025-04-16', '2025-04-23', 435),
(8, 'Tallinn', 'Rome', '2025-05-23', '2025-05-30', 897),
(9, 'Tallinn', 'Barcelona', '2025-06-06', '2025-06-13', 1050),
(10, 'Tallinn', 'Milano', '2025-03-11', '2025-03-25', 1500);

-- --------------------------------------------------------

--
-- Table structure for table `seats`
--

CREATE TABLE `seats` (
  `id` int NOT NULL,
  `flight_id` int NOT NULL,
  `seat_number` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `is_occupied` tinyint(1) DEFAULT NULL,
  `has_window` tinyint(1) DEFAULT NULL,
  `has_legroom` tinyint(1) DEFAULT NULL,
  `close_to_exit` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `seats`
--

INSERT INTO `seats` (`id`, `flight_id`, `seat_number`, `is_occupied`, `has_window`, `has_legroom`, `close_to_exit`) VALUES
(1, 1, '1A', 0, 1, 0, 0),
(2, 1, '1B', 1, 0, 0, 0),
(3, 1, '1C', 0, 0, 0, 0),
(4, 1, '2A', 0, 0, 0, 0),
(5, 1, '2B', 0, 0, 0, 0),
(6, 1, '2C', 0, 1, 0, 0),
(7, 1, '3A', 0, 1, 0, 0),
(8, 1, '3B', 1, 0, 0, 0),
(9, 1, '3C', 0, 0, 0, 0),
(10, 1, '4A', 1, 0, 0, 0),
(11, 1, '4B', 1, 0, 0, 0),
(12, 1, '4C', 0, 1, 0, 0),
(13, 1, '5A', 0, 1, 1, 0),
(14, 1, '5B', 0, 0, 1, 0),
(15, 1, '5C', 0, 0, 1, 1),
(16, 1, '6A', 0, 0, 1, 1),
(17, 1, '6B', 1, 0, 1, 0),
(18, 1, '6C', 0, 1, 1, 0),
(19, 2, '1A', 0, 1, 0, 0),
(20, 2, '1B', 0, 0, 0, 0),
(21, 2, '1C', 0, 0, 0, 0),
(22, 2, '2A', 1, 0, 0, 0),
(23, 2, '2B', 1, 0, 0, 0),
(24, 2, '2C', 1, 1, 0, 0),
(25, 2, '3A', 1, 1, 0, 0),
(27, 2, '3B', 0, 0, 0, 0),
(28, 2, '3C', 0, 0, 0, 0),
(29, 2, '4A', 0, 0, 0, 0),
(30, 2, '4B', 0, 0, 0, 0),
(31, 2, '4C', 0, 1, 0, 0),
(32, 2, '5A', 0, 1, 1, 0),
(34, 2, '5B', 0, 0, 1, 0),
(35, 2, '5C', 0, 0, 1, 1),
(36, 2, '6A', 0, 0, 1, 1),
(37, 2, '6B', 1, 0, 1, 0),
(38, 2, '6C', 1, 1, 1, 0),
(39, 3, '1A', 0, 1, 0, 0),
(40, 3, '1B', 1, 0, 0, 0),
(41, 3, '1C', 1, 0, 0, 0),
(42, 3, '2A', 1, 0, 0, 0),
(43, 3, '2B', 1, 0, 0, 0),
(44, 3, '2C', 1, 1, 0, 0),
(45, 3, '3A', 0, 1, 0, 0),
(46, 3, '3B', 0, 0, 0, 0),
(47, 3, '3C', 0, 0, 0, 0),
(48, 3, '4A', 1, 0, 0, 0),
(49, 3, '4B', 1, 0, 0, 0),
(50, 3, '4C', 1, 1, 0, 0),
(51, 3, '5A', 0, 1, 1, 0),
(52, 3, '5B', 0, 0, 1, 0),
(53, 3, '5C', 1, 0, 1, 1),
(54, 3, '6A', 1, 0, 1, 1),
(55, 3, '6B', 0, 0, 1, 0),
(56, 3, '6C', 0, 1, 1, 0),
(57, 4, '1A', 0, 1, 0, 0),
(58, 4, '1B', 0, 0, 0, 0),
(59, 4, '1C', 0, 0, 0, 0),
(60, 4, '2A', 0, 0, 0, 0),
(61, 4, '2B', 0, 0, 0, 0),
(62, 4, '2C', 0, 1, 0, 0),
(63, 4, '3A', 0, 1, 0, 0),
(64, 4, '3B', 0, 0, 0, 0),
(65, 4, '3C', 0, 0, 0, 0),
(66, 4, '4A', 0, 0, 0, 0),
(67, 4, '4B', 0, 0, 0, 0),
(68, 4, '4C', 0, 1, 0, 0),
(69, 4, '5A', 1, 1, 1, 0),
(70, 4, '5B', 0, 0, 1, 0),
(71, 4, '5C', 1, 0, 1, 1),
(72, 4, '6A', 0, 0, 1, 1),
(73, 4, '6B', 1, 0, 1, 0),
(74, 4, '6C', 1, 1, 1, 0),
(75, 5, '1A', 1, 1, 0, 0),
(76, 5, '1B', 1, 0, 0, 0),
(77, 5, '1C', 0, 0, 0, 0),
(78, 5, '2A', 1, 0, 0, 0),
(79, 5, '2B', 1, 0, 0, 0),
(80, 5, '2C', 0, 1, 0, 0),
(81, 5, '3A', 0, 1, 0, 0),
(82, 5, '3B', 1, 0, 0, 0),
(83, 5, '3C', 1, 0, 0, 0),
(84, 5, '4A', 1, 0, 0, 0),
(85, 5, '4B', 0, 0, 0, 0),
(86, 5, '4C', 0, 1, 0, 0),
(87, 5, '5A', 0, 1, 1, 0),
(88, 5, '5B', 0, 0, 1, 0),
(89, 5, '5C', 0, 0, 1, 1),
(90, 5, '6A', 0, 0, 1, 1),
(91, 5, '6B', 0, 0, 1, 0),
(92, 5, '6C', 0, 1, 1, 0),
(93, 6, '1A', 0, 1, 0, 0),
(94, 6, '1B', 0, 0, 0, 0),
(95, 6, '1C', 0, 0, 0, 0),
(96, 6, '2A', 0, 0, 0, 0),
(97, 6, '2B', 1, 0, 0, 0),
(98, 6, '2C', 0, 1, 0, 0),
(99, 6, '3A', 0, 1, 0, 0),
(100, 6, '3B', 0, 0, 0, 0),
(101, 6, '3C', 1, 0, 0, 0),
(102, 6, '4A', 0, 0, 0, 0),
(103, 6, '4B', 0, 0, 0, 0),
(104, 6, '4C', 0, 1, 0, 0),
(105, 6, '5A', 1, 1, 1, 0),
(106, 6, '5B', 1, 0, 1, 0),
(107, 6, '5C', 1, 0, 1, 1),
(108, 6, '6A', 1, 0, 1, 1),
(109, 6, '6B', 1, 0, 1, 0),
(110, 6, '6C', 1, 1, 1, 0),
(111, 7, '1A', 1, 1, 0, 0),
(112, 7, '1B', 1, 0, 0, 0),
(113, 7, '1C', 1, 0, 0, 0),
(114, 7, '2A', 0, 0, 0, 0),
(115, 7, '2B', 0, 0, 0, 0),
(116, 7, '2C', 0, 1, 0, 0),
(117, 7, '3A', 1, 1, 0, 0),
(118, 7, '3B', 1, 0, 0, 0),
(119, 7, '3C', 1, 0, 0, 0),
(120, 7, '4A', 0, 0, 0, 0),
(121, 7, '4B', 0, 0, 0, 0),
(122, 7, '4C', 0, 1, 0, 0),
(123, 7, '5A', 1, 1, 1, 0),
(124, 7, '5B', 1, 0, 1, 0),
(125, 7, '5C', 1, 0, 1, 1),
(126, 7, '6A', 0, 0, 1, 1),
(127, 7, '6B', 0, 0, 1, 0),
(128, 7, '6C', 0, 1, 1, 0),
(129, 8, '1A', 0, 1, 0, 0),
(130, 8, '1B', 0, 0, 0, 0),
(131, 8, '1C', 0, 0, 0, 0),
(132, 8, '2A', 1, 0, 0, 0),
(133, 8, '2B', 1, 0, 0, 0),
(134, 8, '2C', 1, 1, 0, 0),
(135, 8, '3A', 0, 1, 0, 0),
(136, 8, '3B', 0, 0, 0, 0),
(137, 8, '3C', 0, 0, 0, 0),
(138, 8, '4A', 1, 0, 0, 0),
(139, 8, '4B', 1, 0, 0, 0),
(140, 8, '4C', 1, 1, 0, 0),
(141, 8, '5A', 0, 1, 1, 0),
(142, 8, '5B', 0, 0, 1, 0),
(143, 8, '5C', 0, 0, 1, 1),
(144, 8, '6A', 0, 0, 1, 1),
(145, 8, '6B', 1, 0, 1, 0),
(146, 8, '6C', 0, 1, 1, 0),
(147, 9, '1A', 0, 1, 0, 0),
(148, 9, '1B', 1, 0, 0, 0),
(149, 9, '1C', 0, 0, 0, 0),
(150, 9, '2A', 0, 0, 0, 0),
(151, 9, '2B', 1, 0, 0, 0),
(152, 9, '2C', 0, 1, 0, 0),
(153, 9, '3A', 1, 1, 0, 0),
(154, 9, '3B', 0, 0, 0, 0),
(155, 9, '3C', 0, 0, 0, 0),
(156, 9, '4A', 1, 0, 0, 0),
(157, 9, '4B', 0, 0, 0, 0),
(158, 9, '4C', 0, 1, 0, 0),
(159, 9, '5A', 0, 1, 1, 0),
(160, 9, '5B', 1, 0, 1, 0),
(161, 9, '5C', 0, 0, 1, 1),
(162, 9, '6A', 1, 0, 1, 1),
(163, 9, '6B', 0, 0, 1, 0),
(164, 9, '6C', 1, 1, 1, 0),
(165, 10, '1A', 1, 1, 0, 0),
(166, 10, '1B', 1, 0, 0, 0),
(167, 10, '1C', 0, 0, 0, 0),
(168, 10, '2A', 1, 0, 0, 0),
(169, 10, '2B', 0, 0, 0, 0),
(170, 10, '2C', 0, 1, 0, 0),
(171, 10, '3A', 0, 1, 0, 0),
(172, 10, '3B', 1, 0, 0, 0),
(173, 10, '3C', 1, 0, 0, 0),
(174, 10, '4A', 0, 0, 0, 0),
(175, 10, '4B', 0, 0, 0, 0),
(176, 10, '4C', 0, 1, 0, 0),
(177, 10, '5A', 0, 1, 1, 0),
(178, 10, '5B', 0, 0, 1, 0),
(179, 10, '5C', 0, 0, 1, 1),
(180, 10, '6A', 0, 0, 1, 1),
(181, 10, '6B', 0, 0, 1, 0),
(182, 10, '6C', 0, 1, 1, 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `flights`
--
ALTER TABLE `flights`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `seats`
--
ALTER TABLE `seats`
  ADD PRIMARY KEY (`id`),
  ADD KEY `flight_id` (`flight_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `flights`
--
ALTER TABLE `flights`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `seats`
--
ALTER TABLE `seats`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=183;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `seats`
--
ALTER TABLE `seats`
  ADD CONSTRAINT `seats_ibfk_1` FOREIGN KEY (`flight_id`) REFERENCES `flights` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
