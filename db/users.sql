-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 06, 2025 at 08:38 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `it38c-2`
--

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `user_type` enum('admin','user') NOT NULL DEFAULT 'user',
  `last_login` datetime DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `user_type`, `last_login`, `created_at`) VALUES
(0, 'admin', '$2y$10$lwvYJ5LnnAFErC5t/Qg3iuFmzajeKhfQyg/WWWg7lhTg1HIiLIzry', 'admin', '2025-02-06 15:34:40', '2025-02-06 07:25:11'),
(0, 'user', '$2y$10$iOgdBncLCyD0mbdaWXdEpOgOGwYTP/giqfEKdOVSmUJBx0SjFH8aG', 'user', '2025-02-06 15:34:40', '2025-02-06 07:30:10'),
(0, 'roger', '$2y$10$E/kYHllA3Qss24NKoUBG.uAzGIe.v/3TuzlvHTKvE226BCH42dmsi', 'user', '2025-02-06 15:34:40', '2025-02-06 07:30:58'),
(0, 'ROGGERRRRR', '$2y$10$gD1SvkXi8pZuJbknoS.7A.C2PR30NDBKQRCYTDc4f8GnianOwQNhu', 'user', '2025-02-06 15:34:40', '2025-02-06 07:32:06'),
(0, 'RODSSIMZ', '$2y$10$dIdoMA2UDT9iMDrKrkE9m.DyaD8SOcvzZtxEvAhTDnR/H8vpyhHcq', 'user', '2025-02-06 15:34:40', '2025-02-06 07:34:33');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
