-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Paź 07, 2024 at 02:33 PM
-- Wersja serwera: 10.4.32-MariaDB
-- Wersja PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `daniel`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `wypozyczalnia`
--

CREATE TABLE `wypozyczalnia` (
  `id` int(11) NOT NULL,
  `id_ksiazki` int(11) NOT NULL,
  `id_klienta` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `wypozyczalnia`
--

INSERT INTO `wypozyczalnia` (`id`, `id_ksiazki`, `id_klienta`) VALUES
(1, 1, 1),
(2, 2, 2),
(3, 3, 3),
(4, 1, 3),
(5, 4, 4);

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `wypozyczalnia`
--
ALTER TABLE `wypozyczalnia`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_klienta` (`id_klienta`),
  ADD KEY `id_ksiazki` (`id_ksiazki`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `wypozyczalnia`
--
ALTER TABLE `wypozyczalnia`
  ADD CONSTRAINT `wypozyczalnia_ibfk_1` FOREIGN KEY (`id_klienta`) REFERENCES `klienci` (`id`),
  ADD CONSTRAINT `wypozyczalnia_ibfk_2` FOREIGN KEY (`id_ksiazki`) REFERENCES `ksiazki` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
