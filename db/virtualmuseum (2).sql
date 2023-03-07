-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 07, 2023 at 07:05 AM
-- Server version: 10.1.21-MariaDB
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `virtualmuseum`
--

-- --------------------------------------------------------

--
-- Table structure for table `artefacts`
--

CREATE TABLE `artefacts` (
  `id` int(11) NOT NULL,
  `Name` varchar(30) NOT NULL,
  `Age` int(11) NOT NULL,
  `Location` varchar(30) NOT NULL,
  `History` varchar(10000) NOT NULL,
  `image` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `artefacts`
--

INSERT INTO `artefacts` (`id`, `Name`, `Age`, `Location`, `History`, `image`) VALUES
(29, 'tomb-painting', 202, 'British Museum', 'Fragment of a polychrome tomb-painting representing Nebamun, standing in a small boat, fowling and fishing in the marshes, his wife stands behind and his daughter sits beneath, he holds a throw-stick in one hand and three decoy herons in the other, his cat is shown catching three of the numerous birds which have been startled from the papyrus-thicket, fish are shown beneath the water-line, lotus flowers with large and broad leaves grow in marsh to the right of the boat, bunch of lotuses hangs over his arm and another spray is held by his wife, the heads of the flowers are approximately triangular in shape, shown in profile with white petals framed by green and grey sepals, buds alternate regularly with open flowers, eight vertical registers of hieroglyphs remain.', 'images/79809tomb-painting.png'),
(30, 'knife', 5223, 'British Musem', 'Knife: ivory grip decorated with rows of animals in relief; flint blade with serrated lower edge.', 'images/573730knife.png'),
(31, 'coffin', 5223, 'British Musem', 'Wooden inner-coffin of Henutmehyt with gilt and glass decoration.', 'images/585955coffin.png'),
(32, 'jar', 3823, 'British Musem', 'Kerma ware pottery jar: a squat jar with a long spout protruding from the shoulder. It has a black mouth and interior with variegated grey-purple band on the exterior. It is handmade, with very thin walls, neck, spout and disc base applied. It was finger-smoothed inside, has a red wash outside, and is polished on the outside and inside the rim.', 'images/279530jar.png'),
(33, 'statue', 2703, 'British Museum', 'Granite (probably granite gneiss) sphinx of Taharqo wearing skull-cap and double-uraeus; cartouche on breast.', 'images/366509statue.png'),
(34, 'king-list; temple-relief', 3273, 'British Museum', 'Published:\r\nKitchen, Ram. Insc. Vol 2 p.539\r\nHTBM Part 9: Plate VIII\r\nPM VI, p.35;\r\nN. Strudwick, Masterpieces of Ancient Egypt, London 2006, pp. 204-5.\r\nRegulski, I. (ed.), 2022. Hieroglyphs: unlocking ancient Egypt, pp. 128-9\r\nStrudwick N 2006\r\nThe two main temples that survive at Abydos, the cult centre of Osiris, are memorial temples to two of the most prominent kings of the Nineteenth Dynasty, Sety I and his son Ramesses II. The decoration of both temples included a list of kings of Egypt. ', 'images/54962king-list.png');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `email` varchar(50) NOT NULL,
  `password` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`email`, `password`) VALUES
('vincentbettoh@gmail.com', '123456');

-- --------------------------------------------------------

--
-- Table structure for table `videos`
--

CREATE TABLE `videos` (
  `id` int(11) NOT NULL,
  `path` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `artefacts`
--
ALTER TABLE `artefacts`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `artefacts`
--
ALTER TABLE `artefacts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
