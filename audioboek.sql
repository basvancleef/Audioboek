-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 24, 2022 at 08:54 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `audioboek`
--

-- --------------------------------------------------------

--
-- Table structure for table `hoofdstuk`
--

CREATE TABLE `hoofdstuk` (
  `id` int(11) NOT NULL,
  `student` varchar(255) NOT NULL,
  `titel` varchar(255) NOT NULL,
  `lezer` varchar(255) NOT NULL,
  `chapterIMG` varchar(255) NOT NULL,
  `audio` varchar(255) NOT NULL,
  `index` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `hoofdstuk`
--

INSERT INTO `hoofdstuk` (`id`, `student`, `titel`, `lezer`, `chapterIMG`, `audio`, `index`) VALUES
(1, '\"view/images/students/student20.png\"', 'JONAS & ROSA', 'IKRAM BOUCHAAB', '\"view/images/chapters/hoofdstuk1-1.png\"', 'hoofdstuk1.m4a', 0),
(2, '\"view/images/students/student01.png\"', 'JONAS & ROSA (2)', 'WISSAL EL BARGHOUTI', '\"view/images/chapters/hoofdstuk1.png\"', 'RV01_H01.mp3', 1),
(3, '\"view/images/students/student12.png\"', 'VERTREK', 'MELISSA NAHUMURY', '\"view/images/chapters/hoofdstuk2.png\"', 'RV02_H02.mp3', 2),
(4, '\"view/images/students/student0001.png\"', 'COLA EN JAM', '???', '\"view/images/chapters/hoofdstuk3.png\"', '', 3),
(5, '\"view/images/students/student06.png\"\n', 'DE OVERSTEEK', 'SIRADIE JAGGOE', '\"view/images/chapters/hoofdstuk4.png\"', 'RV03_H03_(2).mp3', 4),
(6, '\"view/images/students/student17.png\"', 'GERED', 'MILLA RAJMAN', '\"view/images/chapters/hoofdstuk5.png\"', 'RV04_H05_1.mp3', 5),
(7, '\"view/images/students/student18.png\"', 'GERED (2)', 'BIANCA VAN HAAFTEN', '\"view/images/chapters/hoofdstuk5.png\"', 'RV05_H05_2.mp3', 6),
(8, '\"view/images/students/student15.png\"\n', 'RUZIE', 'ISA VAN DER SCHAFT', '\"view/images/chapters/hoofdstuk6.png\"\r\n', 'RV06_H06_2.mp3', 7),
(9, '\"view/images/students/student04.png\"\n', 'DE VAL', 'SAM DAMS', '\"view/images/chapters/hoofdstuk7.png\"\r\n', 'RV07_H07_1.mp3', 8),
(10, '\"view/images/students/student02.png\"\n', 'DE VAL (2)', 'ELINE VAN VOORTHUIJSEN', '\"view/images/chapters/hoofdstuk7.png\"\r\n', 'RV08_H07_2__H08_1.mp3', 9),
(11, '\"view/images/students/student02.png\"', 'PIERRE', 'ELINE VAN VOORTHUIJSEN', '\"view/images/chapters/hoofdstuk8.png\"', 'RV08_H07_2_BLZ40.mp3', 10),
(12, '\"view/images/students/student05.png\"\n', 'PIERRE (2)', 'DJAYDEN NIJMEIJER', '\"view/images/chapters/hoofdstuk8.png\"', 'RV09_H08_2.mp3', 11),
(13, '\"view/images/students/student0001.png\"', 'DE VILLA VAN PIERRE', 'RAVI VAN DEN BROEK', '\"view/images/chapters/hoofdstuk9.png\"', 'RV10_H09.mp3', 12),
(14, '\"view/images/students/student13.png\"', 'EEN FEESTMAAL', 'KLAUDIA DOST', '\"view/images/chapters/hoofdstuk10.png\"\r\n', 'RV11_H10.mp3', 13),
(15, '\"view/images/students/student16.png\"', 'TWIET, TWIET', 'VERONIQUE VAN DER MOLEN', '\"view/images/chapters/hoofdstuk11.png\"\r\n', 'RV12_H11_1.mp3', 14),
(16, '\"view/images/students/student14.png\"', 'TWIET, TWIET (2)', 'MELANY VAN DER VELDEN', '\"view/images/chapters/hoofdstuk11.png\"\r\n', 'RV13_H11_2__H12_1.mp3', 15),
(17, '\"view/images/students/student11.png\"', 'DE KIST', 'NEREA GIETMAN', '\"view/images/chapters/hoofdstuk12.png\"\r\n', 'RV14_H12_2__H13_1.mp3', 16),
(18, '\"view/images/students/student0001.png\"\n', 'BERTAPT?', 'EMMA GUIJTENS', '\"view/images/chapters/hoofdstuk13.png\"\r\n', 'RV15_H13_2.mp3', 17),
(19, '\"view/images/students/student07.png\"', 'DE TERUGWEG', 'QUINCY WOUTERSE', '\"view/images/chapters/hoofdstuk14.png\"\r\n', 'RV16_H14.mp3', 18),
(20, '\"view/images/students/student0001.png\"', 'LUNCH', 'IMKE SCHLEGEL', '\"view/images/chapters/hoofdstuk15.png\"\r\n', 'RV17_H15.mp3', 19),
(21, '\"view/images/students/student09.png\"', 'LUNCH (2)', 'WENDY TEIJGELER', '\"view/images/chapters/hoofdstuk15.png\"\r\n', 'RV18_H15_2__H16_1.mp3', 20),
(22, '\"view/images/students/student0001.png\"\n', 'EEN ONGELUK', 'KARLIJN DE JONG', '\"view/images/chapters/hoofdstuk16.png\"\r\n', 'RV19_H16_2.mp3', 21),
(23, '\"view/images/students/student03.png\"\n', 'NOG EEN ONGELUK', 'WILLIAM DE KOE', '\"view/images/chapters/hoofdstuk17.png\"\r\n', 'RV20_H17_1.mp3', 22),
(24, '\"view/images/students/student08.png\"', 'NOG EEN ONGELUK (2)', 'DONNA VAN VUREN', 'view/images/chapters/hoofdstuk17.png\r\n', 'Donna_van_Vuren_pagina 92.mp3', 23),
(25, '\"view/images/students/student08.png\"\n', 'NOG EEN ONGELUK (3)', 'DONNA VAN VUREN', 'view/images/chapters/hoofdstuk17.png\r\n', 'Donna_van_Vuren_pagina 93.1.mp3', 24),
(26, '\"view/images/students/student08.png\"', 'NOG EEN ONGELUK (4)', 'DONNA VAN VUREN', '\"view/images/chapters/hoofdstuk17.png\"', 'Donna_van_Vuren_pagina 93.2.mp3', 25),
(27, '\"view/images/students/student08.png\"', 'ROOD-WITTE STREPEN ', 'DONNA VAN VUREN', '\"view/images/chapters/hoofdstuk18.png\"\n', 'Donna_van_Vuren_pagina 94.mp3', 26),
(28, '\"view/images/students/student08.png\"\n', 'ROOD-WITTE STREPEN (2)', 'DONNA VAN VUREN', '\"view/images/chapters/hoofdstuk18.png\"\r\n', 'Donna_van_Vuren_pagina 95.mp3', 27),
(29, '\"view/images/students/student19.png\"\n', 'AFSCHEID', 'DEBORAH STAM', '\"view/images/chapters/hoofdstuk19.png\"\r\n', 'RV22_H19.mp3', 28);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `hoofdstuk`
--
ALTER TABLE `hoofdstuk`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `hoofdstuk`
--
ALTER TABLE `hoofdstuk`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
