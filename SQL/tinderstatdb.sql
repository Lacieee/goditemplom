-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Gép: 127.0.0.1
-- Létrehozás ideje: 2019. Már 20. 11:37
-- Kiszolgáló verziója: 10.1.38-MariaDB
-- PHP verzió: 7.3.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Adatbázis: `tinderstatdb`
--
CREATE DATABASE IF NOT EXISTS `tinderstatdb` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `tinderstatdb`;

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `breast_sizes_num_table`
--
-- Létrehozva: 2019. Már 20. 10:21
--

DROP TABLE IF EXISTS `breast_sizes_num_table`;
CREATE TABLE IF NOT EXISTS `breast_sizes_num_table` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `num` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- TÁBLA KAPCSOLATAI `breast_sizes_num_table`:
--

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `breat_sizes_char_table`
--
-- Létrehozva: 2019. Már 20. 10:24
--

DROP TABLE IF EXISTS `breat_sizes_char_table`;
CREATE TABLE IF NOT EXISTS `breat_sizes_char_table` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `bra` varchar(7) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- TÁBLA KAPCSOLATAI `breat_sizes_char_table`:
--

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `eyes_colours_table`
--
-- Létrehozva: 2019. Már 20. 10:25
--

DROP TABLE IF EXISTS `eyes_colours_table`;
CREATE TABLE IF NOT EXISTS `eyes_colours_table` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- TÁBLA KAPCSOLATAI `eyes_colours_table`:
--

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `girls`
--
-- Létrehozva: 2019. Már 20. 10:35
--

DROP TABLE IF EXISTS `girls`;
CREATE TABLE IF NOT EXISTS `girls` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `age` int(11) NOT NULL,
  `hair_colour` int(11) NOT NULL,
  `eyes_colour` int(11) NOT NULL,
  `skin_colour` int(11) NOT NULL,
  `breast_size_num` int(11) NOT NULL,
  `physique` int(11) NOT NULL,
  `height` int(11) NOT NULL,
  `breast_size_char` int(11) NOT NULL,
  `picture` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- TÁBLA KAPCSOLATAI `girls`:
--

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `hair_colours_table`
--
-- Létrehozva: 2019. Már 20. 10:20
--

DROP TABLE IF EXISTS `hair_colours_table`;
CREATE TABLE IF NOT EXISTS `hair_colours_table` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- TÁBLA KAPCSOLATAI `hair_colours_table`:
--

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `physique_table`
--
-- Létrehozva: 2019. Már 20. 10:27
--

DROP TABLE IF EXISTS `physique_table`;
CREATE TABLE IF NOT EXISTS `physique_table` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- TÁBLA KAPCSOLATAI `physique_table`:
--

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `skin_colours_table`
--
-- Létrehozva: 2019. Már 20. 10:31
--

DROP TABLE IF EXISTS `skin_colours_table`;
CREATE TABLE IF NOT EXISTS `skin_colours_table` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- TÁBLA KAPCSOLATAI `skin_colours_table`:
--

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `stat_table`
--
-- Létrehozva: 2019. Már 20. 10:29
--

DROP TABLE IF EXISTS `stat_table`;
CREATE TABLE IF NOT EXISTS `stat_table` (
  `uid` int(11) NOT NULL,
  `gid` int(11) NOT NULL,
  `hot` tinyint(1) NOT NULL,
  PRIMARY KEY (`uid`,`gid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- TÁBLA KAPCSOLATAI `stat_table`:
--

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `users`
--
-- Létrehozva: 2019. Már 20. 10:19
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uname` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- TÁBLA KAPCSOLATAI `users`:
--


--
-- Metaadat
--
USE `phpmyadmin`;

--
-- A(z) breast_sizes_num_table tábla metaadatai
--

--
-- A(z) breat_sizes_char_table tábla metaadatai
--

--
-- A(z) eyes_colours_table tábla metaadatai
--

--
-- A(z) girls tábla metaadatai
--

--
-- A(z) hair_colours_table tábla metaadatai
--

--
-- A(z) physique_table tábla metaadatai
--

--
-- A(z) skin_colours_table tábla metaadatai
--

--
-- A(z) stat_table tábla metaadatai
--

--
-- A(z) users tábla metaadatai
--

--
-- A(z) tinderstatdb adatbázis metaadatai
--
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
