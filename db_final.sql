-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Apr 01, 2020 at 06:54 PM
-- Server version: 5.7.26
-- PHP Version: 7.3.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_final`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_categories`
--

CREATE TABLE `tbl_categories` (
  `ID` int(11) NOT NULL,
  `Type` varchar(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_categories`
--

INSERT INTO `tbl_categories` (`ID`, `Type`) VALUES
(1, 'Video'),
(2, 'Web'),
(3, 'Graphic');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_content`
--

CREATE TABLE `tbl_content` (
  `ID` int(11) NOT NULL,
  `Headings` varchar(50) NOT NULL,
  `Images` varchar(30) NOT NULL,
  `Copy` varchar(300) NOT NULL,
  `Type` int(50) NOT NULL,
  `Tools` varchar(50) NOT NULL,
  `Featured` int(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_content`
--

INSERT INTO `tbl_content` (`ID`, `Headings`, `Images`, `Copy`, `Type`, `Tools`, `Featured`) VALUES
(1, 'Sportsnet Commercial Build', 'piece1.jpg', 'An in class commercial build. This project focused on replicating a Monday Night Football TV intro.', 1, 'Cinema 4D', 1),
(2, 'Music Mixer Application', 'traa.png', 'Mix n Scratch is a one page web application that can produce a variety of different beats and mixes. Just drag, drop, and find your groove.', 2, 'Illustrator HTML CSS JS', 0),
(3, 'TRAA Website Rebuild', 'audi_new.jpg', 'A full website renovation for the Thames River Anglers Association. Along with the help of one other, I designed, coded, and repurposed content producing a fresh six page website informing users on what the TRAA does and how they can get involved.', 3, 'Photoshop Illustrator HTML CSS JS', 0),
(4, 'ModernLink Media', 'piece4.jpg', 'This project was for an in-class assignment at Fanshawe College. A mockup site design for a potential marketing agency. The website was three pages, fully responsive, and included design and video content', 4, 'HTML CSS JS', 0),
(5, 'Ontario Summer', 'ontario_new.jpg', 'Working in a group, we were tasked to create a campaign that promoted and attracted people to visit Ontario in the summer. The campaign consisted of a logo, website, and a promotional video. I took the lead on our vision and directed/created our ‘Visit Ontario’ video.', 5, 'ggg', 0),
(6, 'Thermo Security', 'morph.png', 'ggg', 6, 'dvdcs', 0),
(7, 'Audi Testimonial', 'audi_new.jpg', 'ggg', 7, 'ggg', 1),
(8, 'Workout Morph Video', 'thermo_new.jpg', 'ggg', 8, 'ggg', 0),
(9, 'Sports Science Video', 'baseball.png', 'ggg', 9, 'ggg', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_content_categories`
--

CREATE TABLE `tbl_content_categories` (
  `ID` int(11) NOT NULL,
  `Content_ID` int(11) NOT NULL,
  `Category_ID` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_content_categories`
--

INSERT INTO `tbl_content_categories` (`ID`, `Content_ID`, `Category_ID`) VALUES
(1, 1, 1),
(2, 2, 2),
(3, 3, 2),
(4, 4, 3);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_categories`
--
ALTER TABLE `tbl_categories`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tbl_content`
--
ALTER TABLE `tbl_content`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tbl_content_categories`
--
ALTER TABLE `tbl_content_categories`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_categories`
--
ALTER TABLE `tbl_categories`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tbl_content`
--
ALTER TABLE `tbl_content`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `tbl_content_categories`
--
ALTER TABLE `tbl_content_categories`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
