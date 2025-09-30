-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Wrz 30, 2025 at 01:04 PM
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
-- Database: `biblioteka`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `czytelnicy`
--

CREATE TABLE `czytelnicy` (
  `Nr_czytelnika` int(11) NOT NULL,
  `Nazwisko` varchar(35) DEFAULT NULL,
  `Imie` varchar(15) DEFAULT NULL,
  `Data_ur` date DEFAULT NULL,
  `Ulica` varchar(40) DEFAULT NULL,
  `Kod` int(11) DEFAULT NULL,
  `Miasto` varchar(40) DEFAULT NULL,
  `Data_zapisania` date DEFAULT NULL,
  `Data_skreslenia` date DEFAULT NULL,
  `Nr_legitymacji` int(11) DEFAULT NULL,
  `Funkcja` enum('PD','S') DEFAULT NULL,
  `Plec` enum('K','M') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `czytelnicy`
--

INSERT INTO `czytelnicy` (`Nr_czytelnika`, `Nazwisko`, `Imie`, `Data_ur`, `Ulica`, `Kod`, `Miasto`, `Data_zapisania`, `Data_skreslenia`, `Nr_legitymacji`, `Funkcja`, `Plec`) VALUES
(1, 'Adamowski', 'Franciszek', '1944-10-09', 'Orzechowa', 21500, 'Biala Podlaska', '2008-01-30', NULL, 12222, 'S', 'M'),
(2, 'Kowalski', 'Zygmunt', '1990-07-23', 'AL.1000-lecia', 21500, 'Biala Podlaska', '2007-09-02', NULL, 12123, 'S', 'M'),
(3, 'Kola', 'Mariusz', '1979-11-14', 'Moniuszki', 21500, 'Biala Podlaska', '2007-04-12', NULL, 12730, 'S', 'M'),
(4, 'Szala', 'Rafal', '1999-01-24', 'Francuska', 21500, 'Biala Podlaska', '2006-05-15', NULL, 134271, 'S', 'M'),
(5, 'Borowik', 'Kalina', '1972-09-09', 'Chemska', 21500, 'Biala Podlaska', '2000-12-01', '2007-12-14', 12693, 'S', 'K'),
(6, 'Kowalczuk', 'Ziemowit', '1989-04-14', 'Zygmunta Augusta', 21500, 'Biala Podlaska', '2003-04-12', NULL, 1067, 'PD', 'M'),
(7, 'Oledzki', 'Arek', '1979-04-13', 'Dluga', 21500, 'Biala Podlaska', '2010-01-05', NULL, 1234, 'S', 'M'),
(8, 'Adamowski', 'Pawel', '1990-11-14', 'Krzywa', 19500, 'Lublin', '2008-04-10', '2009-05-02', 1543, 'S', 'M'),
(9, 'Borowinska', 'Katarzyna', '1965-06-23', 'Nowa', 19500, 'Goldap', '2006-07-24', '2009-08-15', 1365, 'S', 'K'),
(10, 'Doroszuk', 'Marek', '1981-12-14', 'Suwalska', 19500, 'Lublin', '2007-05-12', NULL, 2543, 'S', 'M'),
(11, 'Daniluk', 'Aleksandra', '1989-12-28', 'Daleka', 19500, 'Lublin', '2007-10-12', NULL, 4321, 'S', 'K'),
(12, 'Darecki', 'Adam', '1988-11-14', 'Sosnowa', 21500, 'Biala Podlaska', '2006-12-12', NULL, 1267, 'S', 'M'),
(13, 'Kowalski', 'Marek', '1983-11-14', 'Jodlowa', 21500, 'Biala Podlaska', '2006-03-12', '2009-03-19', 1268, 'S', 'M'),
(14, 'Borowinska', 'Katarzyna', '1956-05-14', 'Nowa', 21500, 'Biala Podlaska', '2009-12-01', NULL, 1269, 'S', 'K'),
(15, 'Ziemowit', 'Marek', '1979-11-14', 'Moniuszki', 21500, 'Biala Podlaska', '2006-04-12', NULL, 1270, 'S', 'M'),
(16, 'Pawelec', 'Rafal', '1965-11-14', 'Kosynierow', 21040, 'Piaski', '2008-05-12', NULL, 1271, 'S', 'M'),
(17, 'Ziemowit', 'Rafal', '1955-03-24', 'Sidorska', 21048, 'Lublin', '2008-05-12', NULL, 1271, 'S', 'M'),
(18, 'Pogoda', 'Igor', '1967-01-13', 'Pogodysnka', 67677, 'Mistow', '2010-01-07', NULL, 1214, '', 'M'),
(20, 'Wojcik', 'Pawel', '1988-11-14', 'Prosta', 19870, 'Chelm', '2008-03-09', '2008-07-01', 1443, 'S', 'M');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `dzialy`
--

CREATE TABLE `dzialy` (
  `Id_dzial` int(11) NOT NULL,
  `Nazwa` varchar(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `dzialy`
--

INSERT INTO `dzialy` (`Id_dzial`, `Nazwa`) VALUES
(1, 'Informatyka'),
(2, 'Ekonomia'),
(3, 'Fantastyka'),
(4, 'Historia'),
(5, 'Prawo'),
(6, 'Literatura dla dzieci i modziezy'),
(7, 'Literatura'),
(8, 'Medyczne'),
(9, 'Przyrodnicze'),
(10, 'Chemia'),
(11, 'Sztuka');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `ksiazki`
--

CREATE TABLE `ksiazki` (
  `Sygnatura` int(11) NOT NULL,
  `Tytul` varchar(100) DEFAULT NULL,
  `Nazwisko` varchar(50) DEFAULT NULL,
  `Imie` varchar(40) DEFAULT NULL,
  `Wydawnictwo` varchar(40) DEFAULT NULL,
  `Miejsce_wyd` varchar(40) DEFAULT NULL,
  `Rok_wyd` int(11) DEFAULT NULL,
  `Objetosc_ks` int(11) DEFAULT NULL,
  `Cena` decimal(10,2) DEFAULT NULL,
  `Id_dzial` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `ksiazki`
--

INSERT INTO `ksiazki` (`Sygnatura`, `Tytul`, `Nazwisko`, `Imie`, `Wydawnictwo`, `Miejsce_wyd`, `Rok_wyd`, `Objetosc_ks`, `Cena`, `Id_dzial`) VALUES
(1, 'Fotografowanie aparatem cyfrowym - samouczek', 'Krzymowski', 'Bogdan', 'Help', 'Warszawa', 2010, 484, 25.90, 1),
(2, 'Strategia bekitnego oceanu', 'Mauborgne', 'Rene', 'MT Biznes', 'Warszawa', 2007, 336, 61.90, 2),
(3, 'Metro 2033', 'Glukhovsky', 'Dmitry', 'Insignis Media', 'Warszawa', 2010, 592, 37.90, 3),
(4, 'Pieko Pacyfiku', 'Sledge', 'Eugene B.', 'Magnum', 'Warszawa', 2010, 328, 37.99, 7),
(5, 'Prawo pracy', 'Florek', 'Ludwik', 'C.H. Beck', 'Warszawa', 2009, 370, 42.49, 5),
(6, 'Uwarunkowania i plany rozwoju turystyki', 'Mlynarczyk', 'Zygmunt', 'Wydawnictwo Naukowe UAM', 'Warszawa', 2008, 100, 49.00, 2),
(7, 'Ekspresja receptorow sterydowych', 'Skrzypczak', 'Maciej', 'Wydawnictwo Naukowe UAM', 'Warszawa', 2008, 121, 115.00, 1),
(8, 'Adobe Flash i PHP', 'Keefe', 'Matthew', 'Helion', 'Warszawa', 2010, 496, 71.10, 1),
(9, 'Pancerni korsarze Kriegsmarine', 'Kaczmarek', 'Rafal', 'Attyka', 'Wroclaw', 2010, 268, 89.90, 7),
(10, 'Kodeks ruchu drogowego', 'Halinski', 'Wieslaw', 'Muza', 'Poznan', 2010, 236, 79.90, 5),
(11, 'Pan Tadeusz', 'Mickiewicz', 'Adam', 'PWN', 'Warszawa', 1945, 300, 70.00, 7),
(12, 'Programowanie', 'Matejek', 'Roman', 'PWN', 'Warszawa', 1995, 100, 79.00, 1),
(13, 'Grafika', 'Malas', 'Grzegorz', 'PWN', 'Warszawa', 1999, 105, 155.00, 1),
(14, 'Programowanie obiektowe', 'Matejek', 'Roman', 'PWN', 'Warszawa', 1995, 100, 79.00, 1),
(15, '100 najwiekszych osiagniec medycyny', 'Eugene', 'Straus W.', 'Swiat Ksiazki', 'Poznan', 2003, 491, 112.00, 8),
(16, 'Atlas Ptakow', 'Hecker', 'Frank', 'RM', 'Krakow', 1999, 189, 72.00, 9),
(17, 'Geografia Fizyczna Polski', 'Richling', 'Andrzej', 'PWN', 'Warszawa', 2005, 200, 115.00, 9),
(18, 'Podstawy ekonomii', 'Kwiatkowski', 'Eugeniusz', 'PWN', 'Warszawa', 2007, 553, 69.90, 2),
(19, 'Granie w pilke', 'Leonardo', 'Da Vinci', 'Piegat', 'Warszawa', 2011, 484, 25.90, 1),
(20, 'Nauka lotu samolotem', 'Nataniel', 'Roma', 'MT Biznes', 'Warszawa', 2007, 366, 61.90, 2);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `pracownicy`
--

CREATE TABLE `pracownicy` (
  `Id_pracownika` int(11) NOT NULL,
  `Nazwisko` varchar(50) DEFAULT NULL,
  `Imie` varchar(40) DEFAULT NULL,
  `Id_stanowisko` int(11) DEFAULT NULL,
  `Miasto` varchar(30) DEFAULT NULL,
  `Data_zatrudnienia` date DEFAULT NULL,
  `wynagrodzenie` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pracownicy`
--

INSERT INTO `pracownicy` (`Id_pracownika`, `Nazwisko`, `Imie`, `Id_stanowisko`, `Miasto`, `Data_zatrudnienia`, `wynagrodzenie`) VALUES
(1, 'Kowalczuk', 'Jan', 1, 'Lublin', '2007-05-05', 1700.00),
(2, 'Czuj', 'Krystyna', 2, 'Lublin', '2006-04-02', 2850.00),
(3, 'Brzeski', 'Mateusz', 3, 'Lublin', '2006-05-07', 2900.00),
(4, 'Darecki', 'Antoni', 4, 'Lublin', '2007-05-28', 2700.00),
(5, 'Molek', 'Anna', 5, 'Lublin', '2008-09-11', 1200.00),
(6, 'Potepa', 'Krzysztof', 1, 'Lublin', '2000-07-24', 9000.00),
(7, 'Potepa', 'Wojciech', 1, 'Warszawa', '2008-08-02', 1900.00),
(8, 'Tomaszewki', 'Radoslaw', 1, 'Lublin', '2005-12-02', 2100.00),
(9, 'Ignatowicz', 'Emilia', 1, 'Warszawa', '2000-07-24', 2000.00),
(10, 'Potepa', 'Mariusz', 1, 'Lublin', '2006-02-13', 1700.00),
(11, 'Borowik', 'Lukasz', 1, 'Lublin', '1999-03-14', 1900.00),
(12, 'Malinowski', 'Dariusz', 2, 'Biala Podlaska', '2004-05-24', 3000.00),
(13, 'Zielinska', 'Danuta', 1, 'Biala Podlaska', '1999-05-06', 2000.00),
(14, 'Makarski', 'Tomasz', 1, 'Lublin', '2000-07-07', 2000.00),
(16, 'Wojcik', 'Kacper', 1, 'Sieldce', '2006-04-03', 1780.00),
(17, 'Piegat', 'Nataniel', 3, 'Lublin', '2006-06-07', 2050.00);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `stanowiska`
--

CREATE TABLE `stanowiska` (
  `Id_stanowisko` int(11) NOT NULL,
  `Nazwa` varchar(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `stanowiska`
--

INSERT INTO `stanowiska` (`Id_stanowisko`, `Nazwa`) VALUES
(1, 'Bibliotekarz'),
(2, 'Ksiegowy'),
(3, 'Kierownik'),
(4, 'Dyrektor'),
(5, 'Konserwator'),
(6, 'Pracownik'),
(7, 'Czytelnik VIP');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `wypozyczenia`
--

CREATE TABLE `wypozyczenia` (
  `Nr_transakcji` int(11) NOT NULL,
  `Sygnatura` int(11) NOT NULL,
  `Id_pracownika` int(11) NOT NULL,
  `Nr_czytelnika` int(11) NOT NULL,
  `Data_wypozyczenia` date NOT NULL,
  `Data_zwrotu` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `wypozyczenia`
--

INSERT INTO `wypozyczenia` (`Nr_transakcji`, `Sygnatura`, `Id_pracownika`, `Nr_czytelnika`, `Data_wypozyczenia`, `Data_zwrotu`) VALUES
(1, 11, 14, 2, '2009-12-05', '2010-03-22'),
(2, 12, 7, 1, '2009-10-09', '2010-01-16'),
(3, 9, 7, 3, '2009-05-01', '2009-09-04'),
(4, 2, 3, 11, '2006-12-12', '2007-12-14'),
(5, 3, 3, 4, '2009-01-09', '2009-04-05'),
(6, 1, 14, 11, '2010-03-03', NULL),
(7, 1, 6, 2, '2009-12-06', NULL),
(8, 15, 6, 3, '2009-10-14', '2009-12-05'),
(9, 13, 8, 4, '2010-05-09', NULL),
(10, 10, 14, 5, '2009-05-05', NULL),
(11, 10, 11, 5, '2009-06-14', NULL),
(12, 8, 11, 2, '2009-11-05', NULL),
(13, 9, 3, 3, '2009-12-22', NULL),
(14, 3, 11, 4, '2010-01-08', NULL),
(15, 3, 13, 11, '2010-03-05', NULL),
(16, 13, 13, 5, '2009-12-05', '2010-03-22'),
(17, 15, 13, 3, '2009-10-09', '2010-01-16'),
(18, 9, 1, 3, '2009-05-01', '2009-09-04'),
(19, 2, 1, 5, '2009-12-12', NULL),
(20, 6, 1, 4, '2009-01-09', '2009-04-05'),
(21, 4, 11, 1, '2010-03-03', NULL),
(22, 1, 9, 2, '2009-12-06', NULL),
(23, 15, 9, 3, '2009-11-14', '2009-12-05'),
(24, 13, 9, 4, '2010-01-22', NULL),
(25, 10, 9, 5, '2009-12-14', NULL),
(26, 10, 8, 6, '2009-09-30', NULL),
(27, 7, 8, 2, '2008-11-05', '2008-11-05'),
(28, 9, 8, 3, '2009-12-22', '2010-01-05'),
(29, 1, 14, 3, '2010-01-08', NULL),
(30, 3, 7, 6, '2010-03-05', NULL),
(31, 9, 1, 1, '2009-11-05', '2010-03-22'),
(32, 12, 1, 1, '2009-11-09', '2010-01-16'),
(33, 9, 10, 3, '2009-05-01', '2009-09-04'),
(34, 2, 10, 5, '2009-12-16', NULL),
(35, 3, 10, 6, '2009-02-09', '2009-04-05'),
(36, 4, 13, 1, '2010-03-03', NULL),
(37, 1, 7, 2, '2009-12-06', NULL),
(38, 15, 7, 3, '2009-10-14', '2009-12-05'),
(39, 13, 7, 4, '2010-05-09', NULL),
(40, 10, 7, 5, '2009-05-05', NULL),
(41, 10, 11, 1, '2009-06-14', NULL),
(42, 8, 11, 2, '2009-11-05', NULL),
(43, 9, 11, 3, '2009-12-22', NULL),
(44, 3, 11, 4, '2010-01-08', NULL),
(45, 3, 11, 5, '2010-03-05', NULL),
(46, 13, 8, 5, '2009-12-05', '2010-03-22'),
(47, 15, 8, 1, '2009-10-09', '2010-01-16'),
(48, 9, 8, 3, '2009-05-01', '2009-09-04'),
(49, 2, 11, 5, '2009-12-12', NULL),
(50, 6, 11, 4, '2009-01-09', '2009-04-05'),
(51, 1, 11, 1, '2010-03-03', NULL),
(52, 2, 11, 2, '2009-12-06', NULL),
(53, 1, 11, 3, '2009-11-14', '2009-12-05'),
(54, 5, 11, 4, '2010-01-22', NULL),
(55, 13, 13, 4, '2009-12-14', NULL),
(56, 10, 13, 6, '2009-09-30', NULL),
(57, 7, 13, 3, '2008-11-05', '2008-11-05'),
(58, 7, 13, 3, '2009-12-22', '2010-01-05'),
(59, 3, 13, 3, '2010-01-08', NULL),
(60, 3, 13, 7, '2010-03-05', NULL),
(61, 9, 13, 4, '2009-11-04', '2011-02-22'),
(62, 13, 4, 3, '2007-12-08', '2010-08-17');

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `czytelnicy`
--
ALTER TABLE `czytelnicy`
  ADD PRIMARY KEY (`Nr_czytelnika`);

--
-- Indeksy dla tabeli `dzialy`
--
ALTER TABLE `dzialy`
  ADD PRIMARY KEY (`Id_dzial`);

--
-- Indeksy dla tabeli `ksiazki`
--
ALTER TABLE `ksiazki`
  ADD PRIMARY KEY (`Sygnatura`),
  ADD KEY `FK_DZIALY_KSIAZKI` (`Id_dzial`);

--
-- Indeksy dla tabeli `pracownicy`
--
ALTER TABLE `pracownicy`
  ADD PRIMARY KEY (`Id_pracownika`),
  ADD KEY `FK_STANOW_PRACOW` (`Id_stanowisko`);

--
-- Indeksy dla tabeli `stanowiska`
--
ALTER TABLE `stanowiska`
  ADD PRIMARY KEY (`Id_stanowisko`);

--
-- Indeksy dla tabeli `wypozyczenia`
--
ALTER TABLE `wypozyczenia`
  ADD PRIMARY KEY (`Nr_transakcji`),
  ADD KEY `FK_PRACOW_WYPOZ` (`Id_pracownika`),
  ADD KEY `FK_WYPOZ_KSIAZKI` (`Sygnatura`),
  ADD KEY `FK_CZYT_WYPOZ` (`Nr_czytelnika`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `czytelnicy`
--
ALTER TABLE `czytelnicy`
  MODIFY `Nr_czytelnika` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `dzialy`
--
ALTER TABLE `dzialy`
  MODIFY `Id_dzial` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `ksiazki`
--
ALTER TABLE `ksiazki`
  MODIFY `Sygnatura` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `pracownicy`
--
ALTER TABLE `pracownicy`
  MODIFY `Id_pracownika` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `stanowiska`
--
ALTER TABLE `stanowiska`
  MODIFY `Id_stanowisko` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `wypozyczenia`
--
ALTER TABLE `wypozyczenia`
  MODIFY `Nr_transakcji` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `ksiazki`
--
ALTER TABLE `ksiazki`
  ADD CONSTRAINT `FK_DZIALY_KSIAZKI` FOREIGN KEY (`Id_dzial`) REFERENCES `dzialy` (`Id_dzial`);

--
-- Constraints for table `pracownicy`
--
ALTER TABLE `pracownicy`
  ADD CONSTRAINT `FK_STANOW_PRACOW` FOREIGN KEY (`Id_stanowisko`) REFERENCES `stanowiska` (`Id_stanowisko`);

--
-- Constraints for table `wypozyczenia`
--
ALTER TABLE `wypozyczenia`
  ADD CONSTRAINT `FK_CZYT_WYPOZ` FOREIGN KEY (`Nr_czytelnika`) REFERENCES `czytelnicy` (`Nr_czytelnika`),
  ADD CONSTRAINT `FK_PRACOW_WYPOZ` FOREIGN KEY (`Id_pracownika`) REFERENCES `pracownicy` (`Id_pracownika`),
  ADD CONSTRAINT `FK_WYPOZ_KSIAZKI` FOREIGN KEY (`Sygnatura`) REFERENCES `ksiazki` (`Sygnatura`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
