-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Gép: 127.0.0.1
-- Létrehozás ideje: 2026. Feb 05. 08:50
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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT a táblához `szarazaruk`
--
ALTER TABLE `szarazaruk`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT a táblához `tejtermek`
--
ALTER TABLE `tejtermek`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT a táblához `vegyiaruk`
--
ALTER TABLE `vegyiaruk`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
