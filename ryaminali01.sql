-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Mar 13, 2024 at 11:08 AM
-- Server version: 10.5.21-MariaDB-0+deb11u1
-- PHP Version: 8.1.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ryaminali01`
--

-- --------------------------------------------------------

--
-- Stand-in structure for view `Above_Average_Salary`
-- (See below for the actual view)
--
CREATE TABLE `Above_Average_Salary` (
`JobID` int(11)
,`JobName` varchar(100)
,`Salary` varchar(15)
,`CompanyID` int(11)
,`CompanyName` varchar(100)
);

-- --------------------------------------------------------

--
-- Table structure for table `applicant`
--

CREATE TABLE `applicant` (
  `ApplicantID` int(11) NOT NULL,
  `ApplicantFirstName` varchar(100) NOT NULL,
  `ApplicantLastName` varchar(100) NOT NULL,
  `ApplicantEmail` varchar(100) NOT NULL,
  `ApplicantPhoneNumber` int(11) NOT NULL,
  `ApplicantDocuments` blob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `applicant`
--

INSERT INTO `applicant` (`ApplicantID`, `ApplicantFirstName`, `ApplicantLastName`, `ApplicantEmail`, `ApplicantPhoneNumber`, `ApplicantDocuments`) VALUES
(1, 'Mark', 'Malloy', 'mmalloy@qub.ac.uk', 71234567, 0x43562e706466),
(2, 'Sam', 'Morrow', 'smorrow@qub.ac.uk', 79876543, 0x43562e706466),
(3, 'Aaron', 'Campbell', 'acampbell@qub.ac.uk', 78901234, 0x526573756d652e706466),
(4, 'Josh', 'Ward', 'jward@qub.ac.uk', 76543210, 0x43562e706466),
(5, 'Ewan', 'Yamin-Ali', 'eyaminali@gmail.com', 74321098, 0x43562e706466),
(6, 'Josh', 'Sweeney', 'joshsweeney@gmail.com', 73210987, 0x526573756d652e706466),
(7, 'Liam', 'Murphy', 'liammurphy123@gmail.com', 72109876, 0x43562e706466),
(8, 'Emma', 'Kelly', 'emmakelly456@outlook.com', 70987654, 0x526573756d652e706466),
(9, 'Noah', 'O\'Sullivan', 'noahosullivan789@yahoo.com', 75432109, 0x43562e706466),
(10, 'Sophie', 'Walsh', 'sophiewalsh012@gmail.com', 77654321, 0x526573756d652e706466),
(11, 'Conor', 'Smith', 'conorsmith345@qub.ac.uk', 75432109, 0x43562e706466),
(12, 'Mia', 'O\'Brien', 'miaobrien678@outlook.com', 73210987, 0x526573756d652e706466),
(13, 'Sean', 'Byrne', 'seanbyrne910@yahoo.com', 78901234, 0x43562e706466),
(14, 'Aoife', 'Ryan', 'aoiferyan111@gmail.com', 70123456, 0x526573756d652e706466),
(15, 'Adam', 'O\'Connor', 'adamoconnor213@yahoo.com', 71234567, 0x43562e706466),
(16, 'Ella', 'O\'Neill', 'ellaoneill314@outlook.com', 76789012, 0x526573756d652e706466),
(17, 'Oisin', 'Doyle', 'oisindoyle415@gmail.com', 74567890, 0x43562e706466),
(18, 'Lily', 'McCarthy', 'lilymccarthy516@yahoo.com', 79012345, 0x526573756d652e706466),
(19, 'Cian', 'Gallagher', 'ciangallagher617@qub.ac.uk', 75678901, 0x43562e706466),
(20, 'Ava', 'Byrne', 'avabyrne718@gmail.com', 72345678, 0x526573756d652e706466),
(21, 'Finn', 'O\'Reilly', 'finnoreilly819@outlook.com', 77890123, 0x43562e706466),
(22, 'Grace', 'Johnston', 'gracejohnston920@yahoo.com', 79012345, 0x526573756d652e706466),
(23, 'Darragh', 'Dunne', 'darraghdunne021@gmail.com', 74567890, 0x43562e706466),
(24, 'Emily', 'Brennan', 'emilybrennan122@yahoo.com', 73456789, 0x526573756d652e706466),
(25, 'Eoin', 'Burke', 'eoinburke223@qub.ac.uk', 70123456, 0x43562e706466),
(26, 'Chloe', 'Collins', 'chloecollins324@gmail.com', 75678901, 0x526573756d652e706466),
(27, 'Fionn', 'Campbell', 'fionncampbell425@outlook.com', 78901234, 0x43562e706466),
(28, 'Sophia', 'Clarke', 'sophiaclarke526@yahoo.com', 76543210, 0x526573756d652e706466),
(29, 'Ciara', 'Hughes', 'ciarahughes627@gmail.com', 72109876, 0x43562e706466),
(30, 'Sarah', 'Daly', 'sarahdaly728@qub.ac.uk', 71234567, 0x526573756d652e706466),
(31, 'Niamh', 'Martin', 'niamhmartin829@outlook.com', 77654321, 0x43562e706466),
(32, 'Hannah', 'McLaughlin', 'hannahmclaughlin930@yahoo.com', 74321098, 0x526573756d652e706466),
(33, 'Orla', 'Nolan', 'orlanolan031@gmail.com', 73210987, 0x43562e706466),
(34, 'Lucy', 'Flynn', 'lucyflynn132@yahoo.com', 70987654, 0x526573756d652e706466),
(35, 'Rian', 'Thompson', 'rianthompson233@qub.ac.uk', 76789012, 0x43562e706466),
(36, 'Ruby', 'Doyle', 'rubydoyle334@outlook.com', 78901234, 0x526573756d652e706466),
(37, 'Tadhg', 'O\'Callaghan', 'tadhgocallaghan435@gmail.com', 79876543, 0x43562e706466),
(38, 'Isabelle', 'Brennan', 'isabellebrennan536@yahoo.com', 75432109, 0x526573756d652e706466),
(39, 'Cillian', 'Lynch', 'cillianlynch637@outlook.com', 74321098, 0x43562e706466),
(40, 'Katie', 'Murray', 'katiemurray738@yahoo.com', 70123456, 0x526573756d652e706466),
(41, 'Patrick', 'Quinn', 'patrickquinn839@gmail.com', 72109876, 0x43562e706466),
(42, 'Olivia', 'Moore', 'oliviamoore940@outlook.com', 77890123, 0x526573756d652e706466),
(43, 'Liam', 'Cunningham', 'liamcunningham041@yahoo.com', 76543210, 0x43562e706466),
(44, 'Aisling', 'Kenny', 'aislingkenny142@qub.ac.uk', 71234567, 0x526573756d652e706466),
(45, 'Shane', 'Griffin', 'shanegriffin243@gmail.com', 75678901, 0x43562e706466),
(47, 'Eoghan', 'Sullivan', 'eoghansullivan445@yahoo.com', 79012345, 0x43562e706466),
(48, 'Abigail', 'Bradley', 'abigailbradley546@gmail.com', 73456789, 0x526573756d652e706466),
(49, 'Padraig', 'Murray', 'padraigmurray647@outlook.com', 70987654, 0x43562e706466),
(50, 'Robyn', 'Kennedy', 'robynkennedy748@yahoo.com', 76789012, 0x526573756d652e706466),
(51, 'Ronan', 'Lynch', 'ronanlynch849@qub.ac.uk', 77654321, 0x43562e706466),
(52, 'Saoirse', 'Murray', 'saoirsemurray950@gmail.com', 79012345, 0x526573756d652e706466),
(53, 'Jamie', 'Stewart', 'jamiestewart051@outlook.com', 75432109, 0x43562e706466),
(54, 'Leah', 'Hughes', 'leahhughes152@yahoo.com', 78901234, 0x526573756d652e706466),
(55, 'Ollie', 'Johnston', 'olliejohnston253@gmail.com', 73210987, 0x43562e706466),
(56, 'Sadhbh', 'Quinn', 'sadhbhquinn354@qub.ac.uk', 72345678, 0x526573756d652e706466),
(57, 'Rory', 'Gallagher', 'rorygallagher455@outlook.com', 74321098, 0x43562e706466),
(58, 'Caoimhe', 'O\'Brien', 'caoimheobrien556@yahoo.com', 70123456, 0x526573756d652e706466),
(59, 'Declan', 'Thompson', 'declanthompson657@gmail.com', 79876543, 0x43562e706466),
(60, 'Erin', 'Murray', 'erinmurray758@outlook.com', 77890123, 0x526573756d652e706466),
(61, 'Luke', 'Doyle', 'lukedoyle859@yahoo.com', 76543210, 0x43562e706466),
(62, 'Clodagh', 'Burke', 'clodaghburke960@qub.ac.uk', 74567890, 0x526573756d652e706466),
(63, 'Cathal', 'Kelly', 'cathalkelly061@gmail.com', 71234567, 0x43562e706466),
(64, 'Evie', 'Stewart', 'eviestewart162@outlook.com', 75678901, 0x526573756d652e706466),
(65, 'Cormac', 'Hughes', 'cormachughes263@yahoo.com', 72109876, 0x43562e706466),
(66, 'Aine', 'Stewart', 'ainestewart364@qub.ac.uk', 78901234, 0x526573756d652e706466),
(67, 'Killian', 'Brennan', 'killianbrennan465@gmail.com', 70987654, 0x43562e706466),
(68, 'Eimear', 'O\'Sullivan', 'eimearosullivan566@outlook.com', 73456789, 0x526573756d652e706466),
(69, 'Dara', 'O\'Neill', 'daraoneill667@yahoo.com', 77654321, 0x43562e706466),
(70, 'Cara', 'Brennan', 'carabrennan768@qub.ac.uk', 79012345, 0x526573756d652e706466),
(71, 'Daniel', 'O\'Brien', 'danielobrien869@gmail.com', 76789012, 0x43562e706466),
(72, 'Megan', 'Martin', 'meganmartin970@outlook.com', 74321098, 0x526573756d652e706466),
(73, 'Paddy', 'Stewart', 'paddystewart071@yahoo.com', 71234567, 0x43562e706466),
(74, 'Niamh', 'Hughes', 'niamhhughes172@qub.ac.uk', 75432109, 0x526573756d652e706466),
(75, 'Tadhg', 'Murray', 'tadhgmurray373@gmail.com', 72345678, 0x43562e706466);

-- --------------------------------------------------------

--
-- Table structure for table `applicant_interview`
--

CREATE TABLE `applicant_interview` (
  `AppInterJunctionID` int(11) NOT NULL,
  `ApplicantID` int(11) DEFAULT NULL,
  `InterviewID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `applicant_interview`
--

INSERT INTO `applicant_interview` (`AppInterJunctionID`, `ApplicantID`, `InterviewID`) VALUES
(1, 1, 1),
(2, 2, 2),
(3, 3, 3),
(4, 4, 4),
(5, 5, 5),
(6, 6, 6),
(7, 7, 7),
(8, 8, 8),
(9, 9, 9),
(10, 10, 10),
(11, 11, 11),
(12, 12, 12),
(13, 13, 13),
(14, 14, 14),
(15, 15, 15),
(16, 16, 16),
(17, 17, 17),
(18, 18, 18),
(19, 19, 19),
(20, 20, 20),
(21, 21, 21),
(22, 22, 22),
(23, 23, 23),
(24, 24, 24),
(25, 25, 25),
(26, 26, 26),
(27, 27, 27),
(28, 28, 28),
(29, 29, 29),
(30, 30, 30),
(31, 31, 31),
(32, 32, 32),
(33, 33, 33),
(34, 34, 34),
(35, 35, 35),
(36, 36, 36),
(37, 37, 37),
(38, 38, 38),
(39, 39, 39),
(40, 40, 40),
(41, 41, 41),
(42, 42, 42),
(43, 43, 43),
(44, 44, 44),
(45, 45, 45),
(47, 47, 47),
(48, 48, 48),
(49, 49, 49),
(50, 50, 50),
(51, 51, 51),
(52, 52, 52),
(53, 53, 53),
(54, 54, 54),
(55, 55, 55),
(56, 56, 56),
(57, 57, 57),
(58, 58, 58),
(59, 59, 59),
(60, 60, 60),
(61, 61, 61),
(62, 62, 62),
(63, 63, 63),
(64, 64, 64),
(65, 65, 65),
(66, 66, 66),
(67, 67, 67),
(68, 68, 68),
(69, 69, 69),
(70, 70, 70),
(71, 71, 71),
(72, 72, 72),
(73, 73, 73),
(74, 74, 74),
(75, 75, 75);

-- --------------------------------------------------------

--
-- Stand-in structure for view `Applicant_Success`
-- (See below for the actual view)
--
CREATE TABLE `Applicant_Success` (
`ApplicantID` int(11)
,`ApplicantFirstName` varchar(100)
,`ApplicantLastName` varchar(100)
,`JobName` varchar(100)
,`Salary` varchar(15)
,`CompanyID` int(11)
,`CompanyName` varchar(100)
);

-- --------------------------------------------------------

--
-- Table structure for table `company`
--

CREATE TABLE `company` (
  `CompanyID` int(11) NOT NULL,
  `CompanyName` varchar(100) NOT NULL,
  `CompanyAddress` varchar(100) NOT NULL,
  `CompanyPhone` int(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `company`
--

INSERT INTO `company` (`CompanyID`, `CompanyName`, `CompanyAddress`, `CompanyPhone`) VALUES
(1, 'Google', '123 High Street, London, SE1 2AB', 71234567),
(2, 'Microsoft', '456 Park Avenue, Manchester, M1 3CD', 79876543),
(3, 'IBM', '789 Main Road, Birmingham, B2 4EF', 78901234),
(4, 'Oracle', '101 Data Lane, Leeds, LS1 5GH', 76543210),
(5, 'Salesforce', '234 Innovation Street, Liverpool, L3 6IJ', 74321098),
(6, 'NHS (National Health Service)', '567 Technology Avenue, Bristol, BS7 8KL', 73210987),
(7, 'Bupa', '890 Excel Street, Sheffield, S4 9MN', 72109876),
(8, 'Nuffield Health', '123 Smart Road, Newcastle, NE1 0OP', 70987654),
(9, 'Boots', '456 Global Avenue, Glasgow, G1 1QR', 75432109),
(10, 'Spire Healthcare', '789 Visionary Lane, Edinburgh, EH2 2ST', 77654321),
(11, 'HSBC', '101 Quantum Street, Cardiff, CF1 3WX', 75432109),
(12, 'Barclays', '234 Red Road, Belfast, BT1 1YZ', 73210987),
(13, 'Lloyds Banking Group', '567 Data Lane, Bristol, BS2 2UV', 78901234),
(14, 'Standard Chartered', '890 City Road, Manchester, M2 3FG', 70123456),
(15, 'Aviva', '123 Nova Avenue, London, SE3 4HI', 71234567),
(16, 'University of Oxford', '456 Agile Street, Birmingham, B4 5JK', 76789012),
(17, 'University of Cambridge', '789 Future Lane, Leeds, LS5 6LM', 74567890),
(18, 'Imperial College London', '101 Data Road, Liverpool, L6 7NO', 79012345),
(19, 'London School of Economics and Political Science (LSE)', '234 Cloud Lane, Sheffield, S6 8PQ', 75678901),
(20, 'University College London (UCL)', '567 Star Street, Newcastle, NE2 9AB', 72345678),
(21, 'Rolls-Royce Holdings', '890 Data Avenue, Glasgow, G3 0CD', 77890123),
(22, 'Jaguar Land Rover', '123 Innovation Road, Edinburgh, EH3 1EF', 79012345),
(23, 'Unilever', '456 Blue Lane, Cardiff, CF3 2GH', 74567890),
(24, 'GlaxoSmithKline (GSK)', '789 Tech Street, Belfast, BT2 3IJ', 73456789),
(25, 'Airbus', '101 Bright Road, Bristol, BS4 4KL', 70987654),
(26, 'Tesco', '234 Data Close, Manchester, M3 5MN', 76789012),
(27, 'Sainsbury\'s', '567 Quantum Lane, London, SE4 7OP', 77654321),
(28, 'Marks & Spencer', '890 Nova Road, Birmingham, B5 8QR', 75432109),
(29, 'ASDA', '123 Insight Street, Leeds, LS6 9ST', 70123456),
(30, 'John Lewis Partnership', '456 Sky Lane, Liverpool, L7 1UV', 71234567),
(31, 'InterContinental Hotels Group (IHG)', '789 Data Road, Sheffield, S8 2WX', 76789012),
(32, 'Whitbread (Premier Inn)', '101 Data Lane, Newcastle, NE4 3YZ', 74567890),
(33, 'Hilton Worldwide', '234 City Road, Glasgow, G4 5AB', 78901234),
(34, 'Compass Group', '567 Agile Street, Edinburgh, EH5 6CD', 73210987),
(35, 'Greene King', '890 Tech Avenue, Cardiff, CF4 7EF', 72109876),
(36, 'Balfour Beatty', '123 Future Road, Belfast, BT3 8GH', 75678901),
(37, 'Carillion', '456 Blue Lane, Bristol, BS5 9IJ', 77890123),
(38, 'Taylor Wimpey', '789 Cloud Street, Manchester, M4 1KL', 79012345),
(39, 'Barratt Developments', '101 Data Lane, London, SE5 2MN', 70987654),
(40, 'Persimmon', '234 Star Road, Birmingham, B6 3OP', 76543210),
(41, 'British Airways', '567 Bright Lane, Leeds, LS7 4QR', 71234567),
(42, 'Network Rail', '890 Insight Street, Liverpool, L8 5ST', 78901234),
(43, 'London Underground (TfL)', '123 Quantum Road, Sheffield, S9 1UV', 74321098),
(44, 'Virgin Atlantic', '456 Data Lane, Newcastle, NE6 2AB', 73210987),
(45, 'National Express Group', '789 Nova Avenue, Glasgow, G2 3CD', 70123456),
(46, 'BP', '101 Tech Street, Edinburgh, EH1 4EF', 77654321),
(47, 'Royal Dutch Shell', '234 Blue Road, Cardiff, CF2 5GH', 75432109),
(48, 'Centrica (British Gas)', '567 Data Close, Belfast, BT4 6IJ', 76789012),
(49, 'EDF Energy', '890 City Lane, Bristol, BS6 7KL', 74567890),
(50, 'SSE (Scottish and Southern Energy)', '123 Insight Avenue, Manchester, M1 8MN', 79012345);

-- --------------------------------------------------------

--
-- Table structure for table `interview`
--

CREATE TABLE `interview` (
  `JobID` int(11) DEFAULT NULL,
  `ApplicantID` int(11) DEFAULT NULL,
  `InterviewDate` date NOT NULL,
  `InterviewPass` tinyint(1) NOT NULL,
  `RecruiterID` int(11) DEFAULT NULL,
  `InterviewID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `interview`
--

INSERT INTO `interview` (`JobID`, `ApplicantID`, `InterviewDate`, `InterviewPass`, `RecruiterID`, `InterviewID`) VALUES
(41, 1, '2024-01-05', 1, 41, 1),
(12, 2, '2024-02-07', 1, 12, 2),
(68, 3, '2024-02-19', 1, 68, 3),
(30, 4, '2024-01-23', 1, 30, 4),
(7, 5, '2024-01-30', 1, 7, 5),
(55, 6, '2024-02-12', 1, 55, 6),
(18, 7, '2024-01-02', 0, 18, 7),
(3, 8, '2024-02-11', 0, 3, 8),
(23, 9, '2024-02-06', 1, 23, 9),
(70, 10, '2024-02-14', 0, 70, 10),
(36, 11, '2024-01-15', 1, 36, 11),
(49, 12, '2024-01-22', 0, 49, 12),
(11, 13, '2024-01-13', 0, 11, 13),
(5, 14, '2024-01-25', 1, 5, 14),
(59, 15, '2024-02-02', 1, 59, 15),
(16, 16, '2024-01-10', 1, 16, 16),
(27, 17, '2024-01-06', 1, 27, 17),
(72, 18, '2024-02-17', 0, 72, 18),
(9, 19, '2024-02-08', 1, 9, 19),
(38, 20, '2024-01-16', 0, 38, 20),
(42, 21, '2024-01-31', 1, 42, 21),
(20, 22, '2024-02-20', 0, 20, 22),
(66, 23, '2024-01-24', 1, 66, 23),
(34, 24, '2024-01-17', 1, 34, 24),
(2, 25, '2024-02-28', 1, 2, 25),
(45, 26, '2024-02-01', 1, 45, 26),
(63, 27, '2024-02-24', 1, 63, 27),
(56, 28, '2024-01-03', 1, 56, 28),
(22, 29, '2024-01-09', 0, 22, 29),
(17, 30, '2024-02-10', 0, 17, 30),
(29, 31, '2024-01-29', 0, 29, 31),
(69, 32, '2024-01-20', 0, 69, 32),
(51, 33, '2024-01-26', 1, 51, 33),
(73, 34, '2024-02-09', 1, 73, 34),
(15, 35, '2024-02-15', 1, 15, 35),
(24, 36, '2024-01-01', 1, 24, 36),
(58, 37, '2024-01-19', 11, 58, 37),
(14, 38, '2024-02-23', 0, 14, 38),
(60, 39, '2024-02-21', 1, 60, 39),
(31, 40, '2024-02-03', 0, 31, 40),
(47, 41, '2024-02-16', 10, 47, 41),
(75, 42, '2024-01-18', 1, 75, 42),
(67, 43, '2024-01-08', 1, 67, 43),
(25, 44, '2024-01-14', 1, 25, 44),
(32, 45, '2024-01-07', 1, 32, 45),
(8, 47, '2024-02-26', 0, 8, 47),
(35, 48, '2024-01-27', 0, 35, 48),
(50, 49, '2024-02-05', 0, 50, 49),
(6, 50, '2024-02-18', 1, 6, 50),
(61, 51, '2024-02-27', 1, 61, 51),
(54, 52, '2024-01-04', 1, 54, 52),
(19, 53, '2024-01-21', 1, 19, 53),
(33, 54, '2024-02-25', 1, 33, 54),
(40, 55, '2024-02-13', 1, 40, 55),
(62, 56, '2024-02-22', 1, 62, 56),
(4, 57, '2024-01-11', 1, 4, 57),
(48, 58, '2024-02-04', 0, 48, 58),
(28, 59, '2024-01-28', 0, 28, 59),
(1, 60, '2024-01-05', 1, 1, 60),
(52, 61, '2024-01-20', 1, 52, 61),
(21, 62, '2024-02-24', 1, 21, 62),
(39, 63, '2024-02-17', 1, 39, 63),
(13, 64, '2024-02-08', 1, 13, 64),
(74, 65, '2024-02-29', 1, 74, 65),
(53, 66, '2024-02-09', 0, 53, 66),
(74, 67, '2024-02-22', 1, 74, 67),
(53, 68, '2024-02-16', 1, 53, 68),
(10, 69, '2024-01-19', 1, 10, 69),
(65, 70, '2024-01-12', 1, 65, 70),
(57, 71, '2024-01-31', 0, 57, 71),
(37, 72, '2024-01-03', 0, 37, 72),
(44, 73, '2024-01-24', 1, 44, 73),
(26, 74, '2024-02-28', 1, 26, 74),
(46, 75, '2024-01-10', 0, 46, 75);

-- --------------------------------------------------------

--
-- Stand-in structure for view `Interview_End_Date`
-- (See below for the actual view)
--
CREATE TABLE `Interview_End_Date` (
`JobID` int(11)
,`JobName` varchar(100)
,`JobEndingDate` date
);

-- --------------------------------------------------------

--
-- Table structure for table `job`
--

CREATE TABLE `job` (
  `JobID` int(11) NOT NULL,
  `JobName` varchar(100) NOT NULL,
  `JobPublishedDate` date NOT NULL,
  `JobEndingDate` date NOT NULL,
  `RemoteJob` tinyint(1) NOT NULL,
  `SectorID` int(11) DEFAULT NULL,
  `CompanyID` int(11) NOT NULL,
  `Salary` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `job`
--

INSERT INTO `job` (`JobID`, `JobName`, `JobPublishedDate`, `JobEndingDate`, `RemoteJob`, `SectorID`, `CompanyID`, `Salary`) VALUES
(1, 'Software Engineer', '2023-11-14', '2024-02-18', 1, 1, 1, '50000'),
(2, 'Nurse', '2023-09-25', '2024-02-15', 0, 2, 7, '30000'),
(3, 'Financial Analyst', '2023-10-13', '2024-04-11', 0, 3, 12, '45000'),
(4, 'Teacher', '2023-10-05', '2024-04-19', 0, 4, 16, '35000'),
(5, 'Production Manager', '2023-11-05', '2024-02-23', 0, 5, 23, '40000'),
(6, 'Retail Sales Associate', '2023-09-21', '2024-03-30', 0, 6, 26, '20000'),
(7, 'Chef', '2023-11-02', '2024-02-20', 0, 7, 33, '25000'),
(8, 'Civil Engineer', '2023-09-27', '2024-03-07', 0, 8, 41, '45000'),
(9, 'Truck Driver', '2023-09-18', '2024-04-03', 0, 9, 41, '30000'),
(10, 'Electrician', '2023-11-06', '2024-04-20', 0, 10, 6, '35000'),
(11, 'Farm Worker', '2023-09-14', '2024-04-05', 0, 11, 28, '25000'),
(12, 'Journalist', '2023-10-29', '2024-04-10', 1, 12, 1, '30000'),
(13, 'Administrative Assistant', '2023-11-01', '2024-04-22', 0, 13, 6, '25000'),
(14, 'Management Consultant', '2023-10-06', '2024-04-17', 0, 14, 23, '60000'),
(15, 'Real Estate Agent', '2023-09-23', '2024-02-25', 0, 15, 39, '40000'),
(16, 'Lawyer', '2023-09-16', '2024-03-25', 0, 16, 12, '50000'),
(17, 'Automotive Technician', '2023-11-09', '2024-02-26', 0, 17, 43, '30000'),
(18, 'Aerospace Engineer', '2023-10-17', '2024-03-20', 0, 18, 41, '55000'),
(19, 'Customer Service Representative', '2023-10-21', '2024-02-13', 0, 19, 27, '22000'),
(20, 'Volunteer Coordinator', '2023-10-20', '2024-03-01', 0, 20, 18, '28000'),
(21, 'Marketing Coordinator', '2023-11-04', '2024-04-09', 0, 21, 29, '35000'),
(22, 'Biomedical Scientist', '2023-10-26', '2024-03-13', 0, 22, 17, '40000'),
(23, 'Pharmaceutical Sales Representative', '2023-11-12', '2024-04-01', 0, 23, 9, '45000'),
(24, 'Environmental Consultant', '2023-10-07', '2024-04-02', 0, 24, 50, '50000'),
(25, 'Fashion Designer', '2023-09-24', '2024-02-29', 0, 25, 26, '35000'),
(26, 'Bartender', '2023-09-19', '2024-03-11', 0, 26, 33, '20000'),
(27, 'Insurance Agent', '2023-10-22', '2024-03-29', 0, 27, 11, '35000'),
(28, 'Bank Teller', '2023-11-08', '2024-04-12', 0, 28, 11, '25000'),
(29, 'Mechanical Engineer', '2023-10-24', '2024-02-22', 0, 29, 44, '45000'),
(30, 'Architect', '2023-10-04', '2024-03-22', 0, 30, 39, '50000'),
(31, 'Tour Guide', '2023-11-07', '2024-03-10', 0, 31, 41, '25000'),
(32, 'Personal Trainer', '2023-09-30', '2024-02-28', 0, 32, 7, '30000'),
(33, 'Utilities Technician', '2023-09-28', '2024-04-21', 0, 33, 21, '35000'),
(34, 'Logistics Coordinator', '2023-11-10', '2024-04-15', 0, 34, 22, '30000'),
(35, 'Retail Buyer', '2023-10-10', '2024-02-27', 0, 35, 26, '40000'),
(36, 'HR Coordinator', '2023-11-11', '2024-04-23', 0, 36, 30, '35000'),
(37, 'Research Scientist', '2023-10-27', '2024-03-03', 0, 37, 17, '45000'),
(38, 'Librarian', '2023-09-20', '2024-03-08', 0, 28, 18, '30000'),
(39, 'Security Guard', '2023-09-17', '2024-04-08', 0, 39, 29, '22000'),
(40, 'Editor', '2023-11-03', '2024-02-21', 1, 40, 2, '35000'),
(41, 'Mining Engineer', '2023-10-16', '2024-03-02', 0, 41, 27, '50000'),
(42, 'Forester', '2023-09-29', '2024-03-28', 0, 42, 26, '30000'),
(43, 'Fisherman', '2023-09-22', '2024-02-19', 0, 43, 26, '25000'),
(44, 'Artist', '2023-09-15', '2024-04-07', 1, 44, 16, '25000'),
(45, 'Hotel Manager', '2023-10-02', '2024-04-13', 0, 45, 31, '40000'),
(46, 'Telecom Technician', '2023-10-31', '2024-03-12', 0, 46, 3, '35000'),
(47, 'Renewable Energy Technician', '2023-11-13', '2024-02-24', 0, 47, 49, '40000'),
(48, 'Waste Management Specialist', '2023-11-14', '2024-04-18', 0, 48, 47, '35000'),
(49, 'Wellness Coach', '2023-09-26', '2024-02-16', 0, 49, 10, '30000'),
(50, 'Web Developer', '2023-10-09', '2024-03-24', 1, 1, 1, '45000'),
(51, 'Registered Nurse', '2023-11-14', '2024-03-26', 0, 2, 6, '70000'),
(52, 'Investment Banker', '2023-10-15', '2024-03-14', 0, 3, 12, '60000'),
(53, 'Professor', '2023-11-14', '2024-02-14', 0, 4, 16, '35000'),
(54, 'Quality Control Inspector', '2023-11-14', '2024-03-21', 0, 5, 24, '45000'),
(55, 'Store Manager', '2023-10-11', '2024-04-04', 0, 6, 27, '30000'),
(56, 'Pastry Chef', '2023-10-18', '2024-04-06', 0, 8, 28, '50000'),
(57, 'Structural Engineer', '2023-11-14', '2024-02-17', 0, 8, 39, '25000'),
(58, 'Delivery Driver', '2023-10-14', '2024-03-06', 0, 9, 26, '35000'),
(59, 'Solar Panel Installer', '2023-10-28', '2024-02-12', 0, 10, 38, '40000'),
(60, 'Agricultural Scientist', '2023-09-13', '2024-03-09', 0, 11, 16, '35000'),
(61, 'Radio Broadcaster', '2023-10-19', '2024-04-16', 0, 12, 18, '45000'),
(62, 'Policy Analyst', '2023-10-12', '2024-03-15', 0, 13, 46, '65000'),
(63, 'IT Consultant', '2023-11-14', '2024-04-24', 1, 14, 4, '40000'),
(64, 'Property Manager', '2023-09-12', '2024-03-05', 0, 15, 37, '35000'),
(65, 'Paralegal', '2023-09-11', '2024-02-10', 0, 16, 13, '30000'),
(66, 'Auto Mechanic', '2023-09-10', '2024-02-11', 0, 17, 21, '40000'),
(67, 'Aircraft Mechanic', '2023-11-14', '2024-03-18', 0, 18, 25, '40000'),
(68, 'Network Engineer', '2023-11-14', '2024-04-14', 0, 19, 4, '40000'),
(69, 'Fundraiser', '2023-09-09', '2024-04-25', 0, 20, 50, '30000'),
(70, 'Social Media Manager', '2023-11-14', '2024-03-16', 1, 21, 5, '40000'),
(71, 'Geneticist', '2023-09-08', '2024-04-26', 0, 22, 6, '50000'),
(72, 'Regulatory Affairs Specialist', '2023-10-01', '2024-02-09', 0, 23, 14, '45000'),
(73, 'Ecologist', '2023-11-14', '2024-03-27', 0, 24, 17, '45000'),
(74, 'Model', '2023-09-07', '2024-03-23', 0, 25, 30, '25000'),
(75, 'Sommelier', '2023-11-14', '2024-03-17', 0, 26, 33, '35000');

-- --------------------------------------------------------

--
-- Table structure for table `job_applicants`
--

CREATE TABLE `job_applicants` (
  `JobAppJunctionID` int(11) NOT NULL,
  `ApplicantID` int(11) DEFAULT NULL,
  `JobID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `job_applicants`
--

INSERT INTO `job_applicants` (`JobAppJunctionID`, `ApplicantID`, `JobID`) VALUES
(1, 1, 41),
(2, 2, 12),
(3, 3, 68),
(4, 4, 30),
(5, 5, 7),
(6, 6, 55),
(7, 7, 64),
(8, 8, 18),
(9, 9, 3),
(10, 10, 23),
(11, 11, 70),
(12, 12, 36),
(13, 13, 49),
(14, 14, 11),
(15, 15, 5),
(16, 16, 59),
(17, 17, 16),
(18, 18, 27),
(19, 19, 72),
(20, 20, 9),
(21, 21, 38),
(22, 22, 42),
(23, 23, 20),
(24, 24, 66),
(25, 25, 34),
(26, 26, 2),
(27, 27, 45),
(28, 28, 63),
(29, 29, 56),
(30, 30, 22),
(31, 31, 17),
(32, 32, 29),
(33, 33, 69),
(34, 34, 51),
(35, 35, 73),
(36, 36, 15),
(37, 37, 24),
(38, 38, 58),
(39, 39, 14),
(40, 40, 60),
(41, 41, 31),
(42, 42, 47),
(43, 43, 75),
(44, 44, 67),
(45, 45, 25),
(47, 47, 32),
(48, 48, 43),
(49, 49, 8),
(50, 50, 35),
(51, 51, 50),
(52, 52, 6),
(53, 53, 61),
(54, 54, 54),
(55, 55, 19),
(56, 56, 33),
(57, 57, 40),
(58, 58, 62),
(59, 59, 4),
(60, 60, 48),
(61, 61, 28),
(62, 62, 1),
(63, 63, 52),
(64, 64, 21),
(65, 65, 39),
(66, 66, 13),
(67, 67, 74),
(68, 68, 53),
(69, 69, 10),
(70, 70, 65),
(71, 71, 57),
(72, 72, 37),
(73, 73, 44),
(74, 74, 26),
(75, 75, 46);

-- --------------------------------------------------------

--
-- Table structure for table `recruiter`
--

CREATE TABLE `recruiter` (
  `RecruiterID` int(11) NOT NULL,
  `RecruiterFirstName` varchar(100) NOT NULL,
  `RecruiterLastName` varchar(100) NOT NULL,
  `RecruiterEmail` varchar(100) NOT NULL,
  `RecruiterPhone` int(11) NOT NULL,
  `CompanyID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `recruiter`
--

INSERT INTO `recruiter` (`RecruiterID`, `RecruiterFirstName`, `RecruiterLastName`, `RecruiterEmail`, `RecruiterPhone`, `CompanyID`) VALUES
(1, 'Saoirse', 'Murphy', 'saoirsemurphy123@gmail.com', 87123456, 1),
(2, 'Cian', 'O\'Donnell', 'cianodonnell456@outlook.com', 86234567, 7),
(3, 'Eabha', 'Gallagher', 'eabhagallagher789@hotmail.com', 85345678, 12),
(4, 'Padraig', 'O\'Sullivan', 'padraigosullivan321@outlook.com', 83456789, 16),
(5, 'Riona', 'Flynn', 'rionaflynn654@gmail.com', 89567890, 23),
(6, 'Tiarnan', 'Kennedy', 'tiarnankennedy987@hotmail.com', 88678901, 26),
(7, 'Fiadh', 'Walsh', 'fiadhwalsh234@outlook.com', 86789012, 33),
(8, 'Oisin', 'Byrne', 'oisinbyrne567@gmail.com', 87890123, 41),
(9, 'Aoibheann', 'Lynch', 'aoibheannlynch890@hotmail.com', 85901234, 41),
(10, 'Daithi', 'Doyle', 'daithidoyle123@outlook.com', 83012345, 6),
(11, 'Niamh', 'Healy', 'niamhhealy456@gmail.com', 89123456, 28),
(12, 'Seamus', 'McGrath', 'seamusmcgrath789@outlook.com', 85234567, 1),
(13, 'Clodagh', 'Higgins', 'clodaghhiggins321@gmail.com', 86345678, 6),
(14, 'Tadhg', 'Ryan', 'tadhgryan654@hotmail.com', 87456789, 23),
(15, 'Aisling', 'Brennan', 'aislingbrennan987@outlook.com', 89567890, 39),
(16, 'Cathal', 'Duffy', 'cathalduffy234@gmail.com', 83678901, 12),
(17, 'Bronagh', 'Fitzpatrick', 'bronaghfitzpatrick567@hotmail.com', 87789012, 43),
(18, 'Ruairi', 'Callaghan', 'ruairicallaghan890@outlook.com', 85890123, 41),
(19, 'Siobhan', 'Kavanagh', 'siobhankavanagh123@gmail.com', 86901234, 27),
(20, 'Lorcan', 'Sheehan', 'lorcansheehan456@hotmail.com', 88012345, 18),
(21, 'Caoimhe', 'Carroll', 'caoimhecarroll789@outlook.com', 87123456, 29),
(22, 'Diarmuid', 'Nolan', 'diarmuidnolan321@gmail.com', 85234567, 17),
(23, 'Aine', 'Connolly', 'aineconnolly654@outlook.com', 86345678, 9),
(24, 'Cormac', 'Maguire', 'cormacmaguire987@gmail.com', 89456789, 50),
(25, 'Sorcha', 'Dunne', 'sorchadunne234@hotmail.com', 88567890, 26),
(26, 'Eoghan', 'O\'Mahony', 'eoghanomahony567@outlook.com', 87678901, 33),
(27, 'Aoife', 'Barrett', 'aoifebarrett890@gmail.com', 83789012, 11),
(28, 'Darragh', 'Hughes', 'darraghhughes123@hotmail.com', 85890123, 11),
(29, 'Sinead', 'O\'Neill', 'sineadoneill456@outlook.com', 89901234, 44),
(30, 'Odhran', 'Lynch', 'odhranlynch789@gmail.com', 86012345, 39),
(31, 'Grainne', 'Clarke', 'grainneclarke234@hotmail.com', 87123456, 41),
(32, 'Ruairi', 'MacGowan', 'ruairimacgowan567@outlook.com', 88234567, 7),
(33, 'Eimear', 'O\'Leary', 'eimearoleary890@gmail.com', 89345678, 21),
(34, 'Orlaith', 'Murray', 'orlaithmurray123@outlook.com', 83456789, 22),
(35, 'Ronan', 'Kelleher', 'ronankelleher456@gmail.com', 86567890, 26),
(36, 'Aoibhin', 'Hogan', 'aoibhinahogan789@outlook.com', 87678901, 30),
(37, 'Eoin', 'MacCarthy', 'eoinmaccarthy321@gmail.com', 89789012, 17),
(38, 'Blathnaid', 'O\'Rourke', 'blathnaidorourke654@outlook.com', 85890123, 18),
(39, 'Cathleen', 'Brennan', 'cathleenbrennan987@gmail.com', 86901234, 29),
(40, 'Fionn', 'MacDermott', 'fionnmacdermott234@hotmail.com', 87012345, 2),
(41, 'Cliona', 'Devlin', 'clionadevlin567@outlook.com', 88123456, 27),
(42, 'Orla', 'McDonnell', 'orlamcdonnell890@gmail.com', 89234567, 26),
(43, 'Daire', 'Doyle', 'dairedoyle123@hotmail.com', 85345678, 26),
(44, 'Caoimhin', 'Power', 'caoimhinpower456@outlook.com', 87456789, 16),
(45, 'Sorcha', 'Keane', 'sorchakeane789@gmail.com', 86567890, 31),
(46, 'Niall', 'Sheehy', 'nialsheehy234@hotmail.com', 83678901, 3),
(47, 'Nuala', 'McGrath', 'nualamcgrath567@outlook.com', 88789012, 49),
(48, 'Orlagh', 'Sheridan', 'orlaghsheridan890@gmail.com', 89890123, 47),
(49, 'Peadar', 'O\'Connor', 'peedaroconnor123@hotmail.com', 86901234, 10),
(50, 'Roisin', 'Sheehan', 'roisinsheehan456@outlook.com', 87012345, 1),
(51, 'Eoin', 'Flanagan', 'eoinflanagan789@gmail.com', 88123456, 6),
(52, 'Clodagh', 'Gallagher', 'clodaghgallagher234@hotmail.com', 85234567, 12),
(53, 'Daithi', 'MacCarthy', 'daithimaccarthy567@outlook.com', 86345678, 16),
(54, 'Meabh', 'O\'Shea', 'meabhoshea890@gmail.com', 87456789, 24),
(55, 'Turlough', 'Brennan', 'turloughbrennan123@outlook.com', 88567890, 27),
(56, 'Niamh', 'O\'Rourke', 'niamhorourke456@gmail.com', 89678901, 28),
(57, 'Padraig', 'Kennedy', 'padraigkennedy789@hotmail.com', 83789012, 39),
(58, 'Aisling', 'Walsh', 'aislingwalsh234@outlook.com', 85890123, 26),
(59, 'Colm', 'Duffy', 'colmduffy567@gmail.com', 87901234, 38),
(60, 'Ailbhe', 'O\'Brien', 'ailbheobrien890@hotmail.com', 88012345, 16),
(61, 'Saoirse', 'O\'Sullivan', 'saoirseosullivan123@outlook.com', 89123456, 18),
(62, 'Tadhg', 'Cunningham', 'tadhgcunningham456@gmail.com', 85234567, 46),
(63, 'Siofra', 'Casey', 'siofracasey789@hotmail.com', 86345678, 4),
(64, 'Ronan', 'Foley', 'ronanfoley234@outlook.com', 87456789, 37),
(65, 'Eabha', 'Hogan', 'eabhahogan567@gmail.com', 89567890, 13),
(66, 'Cian', 'O\'Keefe', 'cianokeefe890@hotmail.com', 83678901, 21),
(67, 'Aoibheann', 'Quinn', 'aoibheannquinn123@outlook.com', 85789012, 25),
(68, 'Cormac', 'Flynn', 'cormacflynn456@gmail.com', 86890123, 4),
(69, 'Aine', 'O\'Connell', 'aineoconnell789@hotmail.com', 87901234, 50),
(70, 'Diarmuid', 'O\'Donoghue', 'diarmuidodonoghue234@outlook.com', 88012345, 5),
(71, 'Bronagh', 'Carroll', 'bronaghcarroll567@gmail.com', 89123456, 6),
(72, 'Seamus', 'Murphy', 'seamusmurphy890@hotmail.com', 83234567, 14),
(73, 'Riona', 'Fitzgerald', 'rionafitzgerald123@outlook.com', 85345678, 17),
(74, 'Lorcan', 'MacMahon', 'lorcanmacmahon456@gmail.com', 86456789, 30),
(75, 'Clodagh', 'O\'Donnell', 'clodaghodonnell789@gov.uk', 87567890, 33),
(77, 'ryan', 'yamin', 'ryanyamin@gmail.com', 12345678, 49),
(78, 'bob', 'smith', 'bobsmith@gmail.com', 87654321, 38);

-- --------------------------------------------------------

--
-- Table structure for table `recruiter_applicants`
--

CREATE TABLE `recruiter_applicants` (
  `RecAppJunctionID` int(11) NOT NULL,
  `ApplicantID` int(11) DEFAULT NULL,
  `RecruiterID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `recruiter_applicants`
--

INSERT INTO `recruiter_applicants` (`RecAppJunctionID`, `ApplicantID`, `RecruiterID`) VALUES
(1, 1, 41),
(2, 2, 12),
(3, 3, 68),
(4, 4, 30),
(5, 5, 7),
(6, 6, 55),
(7, 7, 18),
(8, 8, 3),
(9, 9, 23),
(10, 10, 70),
(11, 11, 36),
(12, 12, 49),
(13, 13, 11),
(14, 14, 5),
(15, 15, 59),
(16, 16, 16),
(17, 17, 27),
(18, 18, 72),
(19, 19, 9),
(20, 20, 38),
(21, 21, 42),
(22, 22, 20),
(23, 23, 66),
(24, 24, 34),
(25, 25, 2),
(26, 26, 45),
(27, 27, 63),
(28, 28, 56),
(29, 29, 22),
(30, 30, 17),
(31, 31, 29),
(32, 32, 69),
(33, 33, 51),
(34, 34, 73),
(35, 35, 15),
(36, 36, 24),
(37, 37, 58),
(38, 38, 14),
(39, 39, 60),
(40, 40, 31),
(41, 41, 47),
(42, 42, 75),
(43, 43, 67),
(44, 44, 25),
(45, 45, 32),
(47, 47, 8),
(48, 48, 35),
(49, 49, 50),
(50, 50, 6),
(51, 51, 61),
(52, 52, 54),
(53, 53, 19),
(54, 54, 33),
(55, 55, 40),
(56, 56, 62),
(57, 57, 4),
(58, 58, 48),
(59, 59, 28),
(60, 60, 1),
(61, 61, 52),
(62, 62, 21),
(63, 63, 39),
(64, 64, 13),
(65, 65, 74),
(66, 66, 53),
(67, 67, 74),
(68, 68, 53),
(69, 69, 10),
(70, 70, 65),
(71, 71, 57),
(72, 72, 37),
(73, 73, 44),
(74, 74, 26),
(75, 75, 46);

-- --------------------------------------------------------

--
-- Stand-in structure for view `Remote_Jobs`
-- (See below for the actual view)
--
CREATE TABLE `Remote_Jobs` (
`JobID` int(11)
,`JobName` varchar(100)
,`Salary` varchar(15)
,`CompanyID` int(11)
,`CompanyName` varchar(100)
);

-- --------------------------------------------------------

--
-- Table structure for table `sector`
--

CREATE TABLE `sector` (
  `SectorID` int(11) NOT NULL,
  `SectorName` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `sector`
--

INSERT INTO `sector` (`SectorID`, `SectorName`) VALUES
(1, 'Information Technology (IT)'),
(2, 'Healthcare'),
(3, 'Finance'),
(4, 'Education'),
(5, 'Manufacturing'),
(6, 'Retail'),
(7, 'Hospitality'),
(8, 'Construction'),
(9, 'Transportation'),
(10, 'Energy'),
(11, 'Agriculture'),
(12, 'Media and Entertainment'),
(13, 'Government'),
(14, 'Consulting'),
(15, 'Real Estate'),
(16, 'Legal'),
(17, 'Automotive'),
(18, 'Aerospace'),
(19, 'Telecommunications'),
(20, 'Non-profit'),
(21, 'Marketing and Advertising'),
(22, 'Biotechnology'),
(23, 'Pharmaceuticals'),
(24, 'Environmental Services'),
(25, 'Fashion and Apparel'),
(26, 'Food and Beverage'),
(27, 'Insurance'),
(28, 'Banking'),
(29, 'Engineering'),
(30, 'Architecture'),
(31, 'Tourism'),
(32, 'Sports and Recreation'),
(33, 'Utilities'),
(34, 'Shipping and Logistics'),
(35, 'Consumer Goods'),
(36, 'Human Resources'),
(37, 'Research and Development'),
(38, 'Information Services'),
(39, 'Security'),
(40, 'Publishing'),
(41, 'Mining'),
(42, 'Forestry'),
(43, 'Fishing'),
(44, 'Arts and Culture'),
(45, 'Hospitality'),
(46, 'Telecommunications'),
(47, 'Renewable Energy'),
(48, 'Waste Management'),
(49, 'Health and Wellness');

-- --------------------------------------------------------

--
-- Structure for view `Above_Average_Salary`
--
DROP TABLE IF EXISTS `Above_Average_Salary`;

CREATE ALGORITHM=UNDEFINED DEFINER=`ryaminali01`@`localhost` SQL SECURITY DEFINER VIEW `Above_Average_Salary`  AS SELECT `job`.`JobID` AS `JobID`, `job`.`JobName` AS `JobName`, `job`.`Salary` AS `Salary`, `company`.`CompanyID` AS `CompanyID`, `company`.`CompanyName` AS `CompanyName` FROM (`job` join `company` on(`company`.`CompanyID` = `job`.`CompanyID`)) WHERE `job`.`Salary` > (select avg(`job`.`Salary`) from `job`) ORDER BY `job`.`Salary` DESC ;

-- --------------------------------------------------------

--
-- Structure for view `Applicant_Success`
--
DROP TABLE IF EXISTS `Applicant_Success`;

CREATE ALGORITHM=UNDEFINED DEFINER=`ryaminali01`@`localhost` SQL SECURITY DEFINER VIEW `Applicant_Success`  AS SELECT `applicant`.`ApplicantID` AS `ApplicantID`, `applicant`.`ApplicantFirstName` AS `ApplicantFirstName`, `applicant`.`ApplicantLastName` AS `ApplicantLastName`, `job`.`JobName` AS `JobName`, `job`.`Salary` AS `Salary`, `company`.`CompanyID` AS `CompanyID`, `company`.`CompanyName` AS `CompanyName` FROM (((`interview` join `applicant` on(`interview`.`ApplicantID` = `applicant`.`ApplicantID`)) join `job` on(`interview`.`JobID` = `job`.`JobID`)) join `company` on(`job`.`CompanyID` = `company`.`CompanyID`)) WHERE `interview`.`InterviewPass` = 1 GROUP BY `applicant`.`ApplicantID` ORDER BY `applicant`.`ApplicantID` ASC ;

-- --------------------------------------------------------

--
-- Structure for view `Interview_End_Date`
--
DROP TABLE IF EXISTS `Interview_End_Date`;

CREATE ALGORITHM=UNDEFINED DEFINER=`ryaminali01`@`localhost` SQL SECURITY DEFINER VIEW `Interview_End_Date`  AS SELECT `job`.`JobID` AS `JobID`, `job`.`JobName` AS `JobName`, `job`.`JobEndingDate` AS `JobEndingDate` FROM `job` GROUP BY `job`.`JobID`, `job`.`JobName` ORDER BY min(`job`.`JobEndingDate`) ASC ;

-- --------------------------------------------------------

--
-- Structure for view `Remote_Jobs`
--
DROP TABLE IF EXISTS `Remote_Jobs`;

CREATE ALGORITHM=UNDEFINED DEFINER=`ryaminali01`@`localhost` SQL SECURITY DEFINER VIEW `Remote_Jobs`  AS SELECT `job`.`JobID` AS `JobID`, `job`.`JobName` AS `JobName`, `job`.`Salary` AS `Salary`, `company`.`CompanyID` AS `CompanyID`, `company`.`CompanyName` AS `CompanyName` FROM (`job` join `company` on(`company`.`CompanyID` = `job`.`CompanyID`)) WHERE `job`.`RemoteJob` = 1 GROUP BY `job`.`JobID`, `job`.`JobName` ORDER BY `job`.`Salary` DESC ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `applicant`
--
ALTER TABLE `applicant`
  ADD PRIMARY KEY (`ApplicantID`);

--
-- Indexes for table `applicant_interview`
--
ALTER TABLE `applicant_interview`
  ADD PRIMARY KEY (`AppInterJunctionID`),
  ADD KEY `ApplicantID` (`ApplicantID`),
  ADD KEY `InterviewID` (`InterviewID`);

--
-- Indexes for table `company`
--
ALTER TABLE `company`
  ADD PRIMARY KEY (`CompanyID`);

--
-- Indexes for table `interview`
--
ALTER TABLE `interview`
  ADD PRIMARY KEY (`InterviewID`),
  ADD KEY `JobID` (`JobID`),
  ADD KEY `ApplicantID` (`ApplicantID`),
  ADD KEY `RecruiterID` (`RecruiterID`);

--
-- Indexes for table `job`
--
ALTER TABLE `job`
  ADD PRIMARY KEY (`JobID`),
  ADD KEY `SectorID` (`SectorID`),
  ADD KEY `CompanyID` (`CompanyID`);

--
-- Indexes for table `job_applicants`
--
ALTER TABLE `job_applicants`
  ADD PRIMARY KEY (`JobAppJunctionID`),
  ADD KEY `ApplicantID` (`ApplicantID`),
  ADD KEY `jobID` (`JobID`);

--
-- Indexes for table `recruiter`
--
ALTER TABLE `recruiter`
  ADD PRIMARY KEY (`RecruiterID`),
  ADD KEY `CompanyID` (`CompanyID`);

--
-- Indexes for table `recruiter_applicants`
--
ALTER TABLE `recruiter_applicants`
  ADD PRIMARY KEY (`RecAppJunctionID`),
  ADD KEY `ApplicantID` (`ApplicantID`),
  ADD KEY `RecruiterID` (`RecruiterID`);

--
-- Indexes for table `sector`
--
ALTER TABLE `sector`
  ADD PRIMARY KEY (`SectorID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `applicant`
--
ALTER TABLE `applicant`
  MODIFY `ApplicantID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=76;

--
-- AUTO_INCREMENT for table `applicant_interview`
--
ALTER TABLE `applicant_interview`
  MODIFY `AppInterJunctionID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=76;

--
-- AUTO_INCREMENT for table `company`
--
ALTER TABLE `company`
  MODIFY `CompanyID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `interview`
--
ALTER TABLE `interview`
  MODIFY `InterviewID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=76;

--
-- AUTO_INCREMENT for table `job`
--
ALTER TABLE `job`
  MODIFY `JobID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=76;

--
-- AUTO_INCREMENT for table `job_applicants`
--
ALTER TABLE `job_applicants`
  MODIFY `JobAppJunctionID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=76;

--
-- AUTO_INCREMENT for table `recruiter`
--
ALTER TABLE `recruiter`
  MODIFY `RecruiterID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=79;

--
-- AUTO_INCREMENT for table `recruiter_applicants`
--
ALTER TABLE `recruiter_applicants`
  MODIFY `RecAppJunctionID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=76;

--
-- AUTO_INCREMENT for table `sector`
--
ALTER TABLE `sector`
  MODIFY `SectorID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `applicant_interview`
--
ALTER TABLE `applicant_interview`
  ADD CONSTRAINT `applicant_interview_ibfk_1` FOREIGN KEY (`ApplicantID`) REFERENCES `applicant` (`ApplicantID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `applicant_interview_ibfk_2` FOREIGN KEY (`InterviewID`) REFERENCES `interview` (`InterviewID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `interview`
--
ALTER TABLE `interview`
  ADD CONSTRAINT `interview_ibfk_1` FOREIGN KEY (`JobID`) REFERENCES `job` (`JobID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `interview_ibfk_2` FOREIGN KEY (`ApplicantID`) REFERENCES `applicant` (`ApplicantID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `interview_ibfk_3` FOREIGN KEY (`RecruiterID`) REFERENCES `recruiter` (`RecruiterID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `job`
--
ALTER TABLE `job`
  ADD CONSTRAINT `job_ibfk_1` FOREIGN KEY (`SectorID`) REFERENCES `sector` (`SectorID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `job_ibfk_2` FOREIGN KEY (`CompanyID`) REFERENCES `company` (`CompanyID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `job_applicants`
--
ALTER TABLE `job_applicants`
  ADD CONSTRAINT `job_applicants_ibfk_1` FOREIGN KEY (`ApplicantID`) REFERENCES `applicant` (`ApplicantID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `job_applicants_ibfk_2` FOREIGN KEY (`JobID`) REFERENCES `job` (`JobID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `recruiter`
--
ALTER TABLE `recruiter`
  ADD CONSTRAINT `recruiter_ibfk_1` FOREIGN KEY (`CompanyID`) REFERENCES `company` (`CompanyID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `recruiter_applicants`
--
ALTER TABLE `recruiter_applicants`
  ADD CONSTRAINT `recruiter_applicants_ibfk_1` FOREIGN KEY (`ApplicantID`) REFERENCES `applicant` (`ApplicantID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `recruiter_applicants_ibfk_2` FOREIGN KEY (`RecruiterID`) REFERENCES `recruiter` (`RecruiterID`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
