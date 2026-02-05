-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Gép: 127.0.0.1
-- Létrehozás ideje: 2026. Feb 05. 10:14
-- Kiszolgáló verziója: 10.4.32-MariaDB
-- PHP verzió: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Adatbázis: `leltar`
--

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `felhasznalo`
--

CREATE TABLE `felhasznalo` (
  `id` int(11) NOT NULL,
  `azonosito` varchar(100) DEFAULT NULL,
  `jelszo` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- A tábla adatainak kiíratása `felhasznalo`
--

INSERT INTO `felhasznalo` (`id`, `azonosito`, `jelszo`) VALUES
(1, 'mate', '69420'),
(2, 'janos', 'mate2006'),
(3, 'anna', 'ocsipok'),
(4, 'lolcat', ''),
(5, 'thoma$', '6_8!');

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `mirelit`
--

CREATE TABLE `mirelit` (
  `id` int(11) NOT NULL,
  `nev` varchar(100) NOT NULL,
  `tomeg` int(11) NOT NULL,
  `tomegfajta` varchar(100) NOT NULL,
  `darabszam` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- A tábla adatainak kiíratása `mirelit`
--

INSERT INTO `mirelit` (`id`, `nev`, `tomeg`, `tomegfajta`, `darabszam`) VALUES
(1, 'Fagyasztott sonkás pizza', 100, 'g', 2),
(2, 'Nádudvari szezánmagos rántott csirkemell', 550, 'g', 5),
(3, 'Fagyasztott Rántott Sajt', 1000, 'g', 3),
(4, 'Spar Fagyasztott Burgonya', 1000, 'g', 3),
(5, 'Fagyasztott KFC strips csirkemell', 450, 'g', 5);

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `szarazaruk`
--

CREATE TABLE `szarazaruk` (
  `id` int(11) NOT NULL,
  `nev` varchar(100) NOT NULL,
  `tomeg` int(11) NOT NULL,
  `tomegfajta` varchar(100) NOT NULL,
  `darabszam` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- A tábla adatainak kiíratása `szarazaruk`
--

INSERT INTO `szarazaruk` (`id`, `nev`, `tomeg`, `tomegfajta`, `darabszam`) VALUES
(1, 'Tündérkert Rízs', 1000, 'g', 5),
(2, 'Doritos BBQ', 100, 'g', 10),
(3, 'Dörmi Mackó Csoki', 30, 'g', 25),
(4, 'Lays csípős csirke csipsz', 65, 'g', 5),
(5, 'Chio csipsz intense chili&lime', 55, 'g', 5);

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `tejtermek`
--

CREATE TABLE `tejtermek` (
  `id` int(11) NOT NULL,
  `nev` varchar(100) NOT NULL,
  `tomeg` int(11) NOT NULL,
  `tomegfajta` varchar(100) NOT NULL,
  `darabszam` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- A tábla adatainak kiíratása `tejtermek`
--

INSERT INTO `tejtermek` (`id`, `nev`, `tomeg`, `tomegfajta`, `darabszam`) VALUES
(1, 'Ferrero Kinder Maxi King', 35, 'g', 9),
(2, 'Ferrero Kinder Pingu Tejszelet', 30, 'g', 6),
(3, 'Abauj ESL Tej', 1, 'L', 12),
(4, 'Zott Jogobella ivójoghurt', 250, 'g', 10),
(5, 'Óriás Pöttyös túró rudi', 51, 'g', 6);

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `vegyiaruk`
--

CREATE TABLE `vegyiaruk` (
  `id` int(11) NOT NULL,
  `nev` varchar(100) NOT NULL,
  `tomeg` int(11) NOT NULL,
  `tomegfajta` varchar(100) NOT NULL,
  `darabszam` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- A tábla adatainak kiíratása `vegyiaruk`
--

INSERT INTO `vegyiaruk` (`id`, `nev`, `tomeg`, `tomegfajta`, `darabszam`) VALUES
(1, 'CBA WC papír 6 tekercs', 100, '', 2),
(2, 'WD-40', 450, 'ml', 69),
(3, 'Nivea Man izzadásgátló', 150, 'ml', 2),
(4, 'Schwarzkopf Taft Hajspray', 250, 'ml', 2),
(5, 'CBA szalvéta', 2, '', 2);

--
-- Indexek a kiírt táblákhoz
--

--
-- A tábla indexei `felhasznalo`
--
ALTER TABLE `felhasznalo`
  ADD PRIMARY KEY (`id`);

--
-- A tábla indexei `mirelit`
--
ALTER TABLE `mirelit`
  ADD PRIMARY KEY (`id`);

--
-- A tábla indexei `szarazaruk`
--
ALTER TABLE `szarazaruk`
  ADD PRIMARY KEY (`id`);

--
-- A tábla indexei `tejtermek`
--
ALTER TABLE `tejtermek`
  ADD PRIMARY KEY (`id`);

--
-- A tábla indexei `vegyiaruk`
--
ALTER TABLE `vegyiaruk`
  ADD PRIMARY KEY (`id`);

--
-- A kiírt táblák AUTO_INCREMENT értéke
--

--
-- AUTO_INCREMENT a táblához `felhasznalo`
--
ALTER TABLE `felhasznalo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT a táblához `mirelit`
--
ALTER TABLE `mirelit`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT a táblához `szarazaruk`
--
ALTER TABLE `szarazaruk`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT a táblához `tejtermek`
--
ALTER TABLE `tejtermek`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT a táblához `vegyiaruk`
--
ALTER TABLE `vegyiaruk`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
