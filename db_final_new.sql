-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Apr 03, 2020 at 03:37 PM
-- Server version: 5.7.26
-- PHP Version: 7.3.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_final_new`
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
  `Copy` varchar(1200) NOT NULL,
  `Type` int(50) NOT NULL,
  `Tools` varchar(200) NOT NULL,
  `Featured` int(1) NOT NULL,
  `Videos` varchar(30) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_content`
--

INSERT INTO `tbl_content` (`ID`, `Headings`, `Images`, `Copy`, `Type`, `Tools`, `Featured`, `Videos`) VALUES
(1, 'Sportsnet Commercial Build', 'piece1.jpg', 'An in class commercial build. This project focused on replicating a Monday Night Football TV intro.', 1, 'Cinema 4D', 0, 'mastroianni_sportsnet_1.mp4'),
(2, 'TRAA Website Rebuild', 'traa.png', 'A full website renovation for the Thames River Anglers Association. Along with the help of one other, I designed, coded, and repurposed content producing a fresh six page website and a featured informative video notifying users on how they can get involved.\r\n\r\nClone down this github link to see the project!\r\n\r\nhttps://github.com/lmastroianni/mastroianni_goarley_final.git', 2, 'Adobe Illustrator, HTML, CSS, JS, Adobe After Effects', 0, 'traa_video.mp4'),
(3, 'Audi Testimonial Video', 'audi_new.jpg', 'The Audi Testimonial video was a project completed while at Fanshawe College. The goal was to find a client who was willing to talk about and promote their their business through a one on one interview. Along with one other, we were tasked to present a captivating scene, to shoot the video footage and afterwards edit.\r\n\r\nFirstly, we had to rent and utilize two cameras, a microphone, lights, and tripods for the setup. When we arrived at The Audi dealership we created our scene and our ideal composition. What would catch the eye of a viewer? We set up a stage light, back light, and fill light to maximize the quality of the video.\r\n\r\nWe shot from different angles and captured b-roll in order to increase the flow and quality of our video, we wanted to create a very natural atmosphere. Prepared with questions, I sat down with the client and asked about him and the car business.\r\n\r\nAfter we were satisfied and the footage was complete, we brought it into Adobe Premiere, to fix any audio technicalities and to ultimately assemble the video in a compelling fashion. The text effects were produced in Adobe After Effects as was the animation at the end of the video.', 3, 'Adobe Premiere Pro, Adobe After Effects', 1, 'audi_new.mp4'),
(4, 'ModernLink Media', 'piece4.jpg', 'The creation of a potential marketing agency. Along with 3 others, we were tasked to create a start-up campaign for a mock agency, including a logo, branding identity, and a start-up video. I took part in creating our identity and directed/created our video.', 4, 'HTML CSS JS', 0, 'moderlink_video.mp4'),
(5, 'Ontario Summer', 'ontario_new.jpg', 'Working in a group, we were tasked to create a campaign that promoted and attracted people to visit Ontario in the summer. The campaign consisted of a logo, website, and a promotional video. I took the lead on our vision and directed/created our ‘Visit Ontario’ video.', 5, 'Adobe Premiere Pro, Adobe After Effects, Adobe Illustrator', 0, 'ad.mp4'),
(6, 'Workout Morph Video', 'morph.png', 'A fictional commercial for Goodlife Fitness. The task for this assignment was to use the \'morphing technique\' in Cinema 4D. This  project revolved around using the exploding segments method to allow objects to break into several pieces. I decided to circuit between different types of workout equipment producing the fictional advertisement of new gym machines. The beginning and end animations were produced in After Effects.', 6, 'Cinema 4D, Adobe After Effects', 0, 'goodlife_morph.mp4'),
(7, 'Mix N Scratch - Music Mixer', 'mixer.png', 'Mix N Scratch is a one page web application. The app contains drag and drop functionality, allowing users to come up with funky and unique beats. Clone down the github repo and find your groove.\r\n\r\n', 7, 'HTML,CSS,JS,Adobe Illustrator\r\n\r\nhttps://github.com/lmastroianni/mastroianni_l_goarley_a_musicmixer.git\r\n', 0, ''),
(8, 'ThermoSecurity Campaign', 'thermo_new.jpg', 'A mini marketing campaign for a company specializing in simplifying home security while maximizing its usability.  The featured video showcases a potential interface for a home accessibility/security system. The thought process was simple, a system that presents quick access to the most common and used accessibility settings with a fresh design and overall appealing look.', 8, 'Cinema 4D, Adobe Illustrator, Adobe Photoshop', 0, 'Cam_1.mp4'),
(9, 'Sports Science Video', 'baseball.png', 'A video depicting the sports science in baseball. For this project, I first created five heads-up designs (HUDS) in Adobe Illustrator. I opted for a \'techy\' and futuristic colour scheme that wouls well suit the video. The video contains five different HUD animations - each showcasing a different piece of information in reference to the sport of baseball. For this project, I had to use tracking, trim paths, compositing, and timing to music and sound effects. ', 9, 'Adobe After Effects, Adobe Illustrator', 1, 'baseball.mp4');

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
