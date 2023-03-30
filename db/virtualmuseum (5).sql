-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 30, 2023 at 07:38 AM
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
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `Categories` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `Categories`) VALUES
(1, 'artefacts'),
(3, 'wildlife');

-- --------------------------------------------------------

--
-- Table structure for table `filesuploads`
--

CREATE TABLE `filesuploads` (
  `id` int(11) NOT NULL,
  `path` varchar(100) NOT NULL,
  `Extension` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `filesuploads`
--

INSERT INTO `filesuploads` (`id`, `path`, `Extension`) VALUES
(29, 'images/223067vid_20230118_134621.mp4', 'mp4'),
(30, 'images/294560video (1).mp4', 'mp4'),
(29, 'images/179776avatar.png', 'png');

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
-- Table structure for table `wildlife`
--

CREATE TABLE `wildlife` (
  `id` int(11) NOT NULL,
  `Name` varchar(30) NOT NULL,
  `History` varchar(1000) NOT NULL,
  `Location` varchar(30) NOT NULL,
  `Age` int(11) NOT NULL,
  `image` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `wildlife`
--

INSERT INTO `wildlife` (`id`, `Name`, `History`, `Location`, `Age`, `image`) VALUES
(2, 'Leopard', 'Leopards benefit from innate stealth, camouflage and lightning speed reactions. Sharp teeth and claws, strong jaws, powerful bodies and acute senses make them accomplished hunters. They are also superb climbers and often drag their kill into trees out of reach of other predators.\r\n\r\nLeopards, like most big cats, must defend their home range from others. Smell is the most important form of communication and they will spray urine and rub scent on trees and bushes around their territory, as well as leaving scratch marks, to warn other animals to keep away.\r\n\r\nLeopards are solitary creatures, living and hunting alone â€“ when young, their mothers teach them the skills needed to survive on their own.\r\n\r\nThe female leopard gives birth and rears cubs alone; cubs are helpless and rely on their mothersâ€™ milk and as they become weaned they are dependent on the meat their mothers catch, before learning how to hunt for themselves.', 'Tsavo Naitonal park', 2000, 'images/695739leopard.jpg'),
(3, 'Giant Pandas', 'The panda, with its distinctive black and white coat, is adored by the world and considered a national treasure in China. This bear also has a special significance for WWF because it has been our logo since our founding in 1961.\r\n\r\nPandas live mainly in temperate forests high in the mountains of southwest China, where they subsist almost entirely on bamboo. They must eat around 26 to 84 pounds of it every day, depending on what part of the bamboo they are eating. They use their enlarged wrist bones that function as opposable thumbs.\r\n\r\nA newborn panda is about the size of a stick of butterâ€”about 1/900th the size of its motherâ€”but females can grow up to about 200 pounds, while males can grow up to about 300 pounds as adults. These bears are excellent tree climbers despite their bulk.', 'south west China', 20000, 'images/197580panda.jpg'),
(4, 'Ground Pangolin', 'In June 2020, China increased protection for the native Chinese Pangolin (Manis pentadactyla) to the highest level, which closed an important loophole for consumption of the species in-country. Additionally, the government will no longer allow the use of pangolin scales in traditional medicine, a big win given that an estimated 195,000 pangolins were trafficked in 2019 for their scales alone (Challender, et. al, 2020).', 'China', 23000, 'images/61090groun-pangolin.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `artefacts`
--
ALTER TABLE `artefacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wildlife`
--
ALTER TABLE `wildlife`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `artefacts`
--
ALTER TABLE `artefacts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;
--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `wildlife`
--
ALTER TABLE `wildlife`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
