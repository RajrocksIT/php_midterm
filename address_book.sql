-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 16, 2018 at 03:36 AM
-- Server version: 10.1.36-MariaDB
-- PHP Version: 7.2.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `address_book`
--

-- --------------------------------------------------------

--
-- Table structure for table `people`
--

CREATE TABLE `people` (
  `id` int(100) NOT NULL,
  `Serial` varchar(100) NOT NULL,
  `FirstName` varchar(20) NOT NULL,
  `LastName` varchar(20) NOT NULL,
  `EmailAddress` varchar(60) NOT NULL,
  `PhoneNumber` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `people`
--

INSERT INTO `people` (`id`, `Serial`, `FirstName`, `LastName`, `EmailAddress`, `PhoneNumber`) VALUES
(2, 'DQN23EKK5IV', 'Tate', 'Kim', 'neque.Sed@lacusQuisquepurus.com', '1-464-356-2888'),
(3, 'EFW43WQT2OI', 'Harlan', 'Mira', 'in@facilisismagna.ca', '1-593-546-1067'),
(4, 'EMH26VIU0SE', 'Hu', 'Irene', 'ac.mi.eleifend@malesuadafames.edu', '1-827-189-7790'),
(5, 'FXR70AMT7ZD', 'Kaye', 'Nina', 'non@Namconsequat.org', '1-616-950-8955'),
(0, 'hejgy9', 'Manohar', 'Rao', 'ppppp', '9177369553'),
(6, 'HSM54LXM4ML', 'Alfonso', 'Solomon', 'In@scelerisquedui.net', '1-553-292-0316'),
(7, 'ICG54FQX0II', 'Quintessa', 'Dora', 'augue.ac.ipsum@hendreritconsectetuer.org', '1-478-623-0856'),
(8, 'JUE03XIO4IF', 'Cliont', 'Ursula', 'fermentum@nec.edu', '1-581-237-6397'),
(9, 'KKA79QDV0GE', 'Boris', 'Murphy', 'vitae.purus@milaciniamattis.org', '1-917-165-8419'),
(10, 'kp1fab', 'Raj', 'babu', 'pappu@gmail.com', '9177369553'),
(11, 'KUK50CXC8SP', 'Nina', 'Sean', 'lorem.ac@convallisincursus.ca', '1-922-476-3316'),
(12, 'LBG58ZZZ3HB', 'Felix', 'Violet', 'Nam@tortorNunccommodo.edu', '1-976-470-8352'),
(13, 'LHA22UZI6DQ', 'Charles', 'Alvin', 'ullamcorper.Duis@feugiat.com', '1-593-762-4650'),
(14, 'MAY05EZO5AN', 'Emmanuel', 'Aphrodite', 'vitae.odio.sagittis@molestiesodalesMauris.edu', '1-480-703-7888'),
(15, 'MCM43MNR0HG', 'Cherokee', 'Stephen', 'consequat@nislelementum.net', '1-436-203-9418'),
(16, 'MEE65QFP9CL', 'Ocean', 'Fritz', 'ipsum.Suspendisse@elitsedconsequat.com', '1-768-676-3079'),
(17, 'MSF88MNI4LE', 'Randall', 'Althea', 'at@duiFuscealiquam.com', '1-600-798-3427'),
(18, 'NUH01JES1CX', 'Garth', 'Summer', 'dolor.quam@Vestibulumaccumsan.edu', '1-451-137-2544'),
(19, 'QHH38UED3DD', 'Rahim', 'Sacha', 'senectus.et.netus@consectetuer.edu', '1-539-902-5999'),
(20, 'RML54RYL8IN', 'Aimee', 'Curran', 'taciti.sociosqu.ad@estmaurisrhoncus.edu', '1-923-471-8456'),
(21, 'TZZ23WNS2SV', 'Fletcher', 'Clementine', 'ut.erat.Sed@Quisque.ca', '1-895-570-3973'),
(22, 'UHQ59BHE4BV', 'Yetta', 'Camille', 'pretium.aliquet@ametdiameu.com', '1-509-394-9490'),
(23, 'UTW10RJS4LX', 'Orla', 'Naida', 'Quisque@nonleo.ca', '1-530-246-5212'),
(24, 'VBR60NZJ3OO', 'Lance', 'Craig', 'dapibus@vitae.co.uk', '1-209-357-3518'),
(25, 'VUN22WKT4IQ', 'Kirsten', 'Carl', 'scelerisque@Duiscursus.co.uk', '1-215-189-0345'),
(26, 'XTG73VPK7RF', 'Bryar', 'Kevin', 'metus.urna.convallis@velitegetlaoreet.net', '1-160-225-7732'),
(27, 'YIF08RBA7WZ', 'Allen', 'Wyoming', 'facilisis@dolorsit.org', '1-901-826-7452'),
(28, 'YJA45ZEF3RZ', 'Quail', 'Madonna', 'Phasellus.ornare@purus.net', '1-386-198-3162'),
(0, 'yp00kp', 'babu', 'rao', 'bbbbbb', '12345'),
(29, 'zh0dm3', 'Raj', 'babu', 'pappu@gmail.com', '9177369553'),
(30, 'ZMD81FAA0CV', 'Cullen', 'Nyssa', 'sed.dolor.Fusce@nisiMauris.ca', '1-762-977-3621'),
(31, 'ZSA18OMK7AB', 'Lacota', 'Jenette', 'feugiat.placerat.velit@enim.edu', '1-244-356-7600'),
(31, 'ZUZ63TWU3XX', 'Lars', 'Mark', 'Integer.tincidunt@temporbibendum.edu', '1-145-961-5636');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `people`
--
ALTER TABLE `people`
  ADD PRIMARY KEY (`Serial`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
