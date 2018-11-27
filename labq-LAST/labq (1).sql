-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 25, 2018 at 12:52 PM
-- Server version: 10.1.21-MariaDB
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `labq`
--

-- --------------------------------------------------------

--
-- Table structure for table `answr_data`
--

CREATE TABLE `answr_data` (
  `id` int(11) NOT NULL,
  `qn_id` varchar(25) NOT NULL,
  `regnum` varchar(50) NOT NULL,
  `ans` varchar(50) NOT NULL,
  `dt` date NOT NULL,
  `st` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `answr_data`
--

INSERT INTO `answr_data` (`id`, `qn_id`, `regnum`, `ans`, `dt`, `st`) VALUES
(1, '1', 'MCA101', 'c.txt', '2018-09-22', 2),
(4, '1', 'MCA101', 'll.txt', '2018-09-22', 1),
(5, '2', 'MCA101', 'll.txt', '2018-09-22', 2),
(6, '2', 'MCA101', 'll.txt', '2018-09-22', 0);

-- --------------------------------------------------------

--
-- Table structure for table `qn_data`
--

CREATE TABLE `qn_data` (
  `id` int(11) NOT NULL,
  `stf_id` varchar(50) NOT NULL,
  `subj_id` varchar(25) NOT NULL,
  `qn` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `qn_data`
--

INSERT INTO `qn_data` (`id`, `stf_id`, `subj_id`, `qn`) VALUES
(1, 'v101', 'S302', 'Write a program to find sum of two Numbers?'),
(2, 'v101', 'S302', 'Write a program to find palindrome numbers between two limits?');

-- --------------------------------------------------------

--
-- Table structure for table `staff_data`
--

CREATE TABLE `staff_data` (
  `id` int(11) NOT NULL,
  `stf_nme` varchar(50) NOT NULL,
  `con` varchar(12) NOT NULL,
  `addr` text NOT NULL,
  `pic` varchar(50) NOT NULL,
  `uid` varchar(50) NOT NULL,
  `st` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `staff_data`
--

INSERT INTO `staff_data` (`id`, `stf_nme`, `con`, `addr`, `pic`, `uid`, `st`) VALUES
(1, 'Vineeth', '9446563005', 'Trinity\r\nTrivandrum', '0001.jpg', 'v101', 1),
(2, 'Jobin', '8590539909', 'Trinity\r\nTrivandrum', 'onam.jpg', 'j101', 1);

-- --------------------------------------------------------

--
-- Table structure for table `student_data`
--

CREATE TABLE `student_data` (
  `id` int(11) NOT NULL,
  `sem` varchar(15) NOT NULL,
  `nme` varchar(75) NOT NULL,
  `rollnum` varchar(15) NOT NULL,
  `con` varchar(15) NOT NULL,
  `addr` text NOT NULL,
  `pic` varchar(50) NOT NULL,
  `st` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student_data`
--

INSERT INTO `student_data` (`id`, `sem`, `nme`, `rollnum`, `con`, `addr`, `pic`, `st`) VALUES
(1, '3', 'Priya', 'MCA101', '9895478523', 'Trinity\r\nTrivandrum', 'new1.gif', 1),
(2, '1', 'jithu', '18', '465654', 'tvm', 'if_88_111104.png', 1),
(3, '5', 'ABHILASH THANKACHAN', 'TVE16MCA1', '9496089753', 'itsmeabhilashthankachan@gmail.com', '', 1),
(4, '5', 'AISWARYA TT', 'TVE16MCA2', '8156812753', 'aiswaryatt95@gmail.com', '', 1),
(5, '5', 'AKHILA MOHAN', 'TVE16MCA3', '8943913526', 'akhilammu03@gmail.com', '', 1),
(6, '5', 'AKSHAY VIJAYAN', 'TVE16MCA4', '9946893599', 'akshayvijayan36@gmail.com', '', 1),
(7, '5', 'ALPHY JOSE', 'TVE16MCA5', '8281935654', 'alphyjose95@gmail.com', '', 1),
(8, '5', 'AMAL C SAJI', 'TVE16MCA6', '8157817557', 'amalcs23@gmail.com', '', 1),
(9, '5', 'ANANDHU ASHOK', 'TVE16MCA7', '9633214604', 'anandhuashok95@gmail.com', '', 1),
(10, '5', 'ANANDU R CHANDRAN', 'TVE16MCA8', '9446100369', 'anandurchandran007@gmail.com', '', 1),
(11, '5', 'ANJALI K', 'TVE16MCA9', '8281371684', 'anjaliknair.17@gmail.com', '', 1),
(12, '5', 'ANN JERIN SUNDAR', 'TVE16MCA10', '9497002847', 'annjerinajs@gmail.com', '', 1),
(13, '5', 'ANOOP KUMAR V', 'TVE16MCA11', '9061886729', 'anoopkv729@gmail.com', '', 1),
(14, '5', 'ARUN K NAMBIAR', 'TVE16MCA12', '8594035831', 'anambiar1778@gmail.com', '', 1),
(15, '5', 'ASHITHA S', 'TVE16MCA13', '7025743763', 'ashithas1995@gmail.com', '', 1),
(16, '5', 'ASWIN BABU K', 'TVE16MCA14', '9995054663', 'aswinbabuk@gmail.com', '', 1),
(17, '5', 'BASITH HAMEEM', 'TVE16MCA15', '9400695484', 'hameembasith99@gmail.com', '', 1),
(18, '5', 'DEVIKA RAMGOPAL', 'TVE16MCA17', '8281979904', 'dildev2010@gmail.com', '', 1),
(19, '5', 'ELEZABETH GEORGE', 'TVE16MCA18', '9809823720', 'elezabethgeorge94@gmail.com', '', 1),
(20, '5', 'GAYATHRI V S', 'TVE16MCA19', '9745715219', 'gaya3gang.007@gmail.com', '', 1),
(21, '5', 'GISAN K PETER', 'TVE16MCA20', '9544106108', 'gisankpeter@gmail.com', '', 1),
(22, '5', 'GOKUL KRISHNA L J', 'TVE16MCA21', '8281757154', 'gokulkrishnalj@gmail.com', '', 1),
(23, '5', 'HIMA M', 'TVE16MCA22', '9497272094', 'himavava@gmail.com', '', 1),
(24, '5', 'ISHNA K A', 'TVE16MCA23', '8330054711', 'ishnaanhsi001@gmail.com', '', 1),
(25, '5', 'JANMASREE S', 'TVE16MCA24', '8281962392', 'janmasree1995@gmail.com', '', 1),
(26, '5', 'JEEVAN S', 'TVE16MCA25', '9847468005', 'jeevanalp@yahoo.co.in', '', 1),
(27, '5', 'JESSY RAJAN', 'TVE16MCA26', '9495450462', 'jessymolrajan@gmail.com', '', 1),
(28, '5', 'JOJU GEORGE', 'TVE16MCA27', '9947952026', 'jojugeorge001@gmail.com', '', 1),
(29, '5', 'KALIDAS.A', 'TVE16MCA28', '9961157707', 'srkkalidas@gmail.com', '', 1),
(30, '5', 'KEERTHANA  C', 'TVE16MCA29', '7034178794', 'keerthanac12@gmail.com', '', 1),
(31, '5', 'KHAIRUL JUMANA OP', 'TVE16MCA30', '8129907218', 'jumanaop1995@gmail.com', '', 1),
(32, '5', 'KRISHNADEV S U', 'TVE16MCA31', '8289828937', 'krishnadev49@gmail.com', '', 1),
(33, '5', 'NAISAM P K', 'TVE16MCA32', '8086100691', 'naisampksam@gmail.com', '', 1),
(34, '5', 'NANDAKISHORE V V', 'TVE16MCA33', '', 'vnandub@gmail.com', '', 1),
(35, '5', 'NAVYA BABU', 'TVE16MCA34', '9995531920', 'navyasree183@gmail.com', '', 1),
(36, '5', 'NAVYA NAIR', 'TVE16MCA35', '9163993742', 'navyanair201414@gmail.com', '', 1),
(37, '5', 'NEEMA S', 'TVE16MCA36', '9567560222', 'neema2485@gmail.com', '', 1),
(38, '5', 'NEENU VS', 'TVE16MCA37', '9745657221', 'nvs.neenu3030@gmail.com', '', 1),
(39, '5', 'NEETHI K', 'TVE16MCA38', '8075913255', 'neethi326@gmail.com', '', 1),
(40, '5', 'NIKHIL M N', 'TVE16MCA39', '9496817808', 'nikhilmntvm808@gmail.com', '', 1),
(41, '5', 'PHEBE JOHN', 'TVE16MCA40', '8089985762', 'pheberaichaljohn@gmail.com', '', 1),
(42, '5', 'RAFSAL RAHIM', 'TVE16MCA41', '8301035831', 'rafsal0098@gmail.com', '', 1),
(43, '5', 'RAHUL KUMAR MS', 'TVE16MCA42', '8281221784', 'rahulmanakyalath@gmail.com', '', 1),
(44, '5', 'RAJEEV C NAIR', 'TVE16MCA43', '8089792721', 'rjvnair@gmail.com', '', 1),
(45, '5', 'REMNA R NAIR', 'TVE16MCA44', '9400649954', 'remnarnair1996@gmail.com', '', 1),
(46, '5', 'ROBIN MATHEW ABRAHAM', 'TVE16MCA45', '8606213297', 'robinabrahammathu@gmail.com', '', 1),
(47, '5', 'SAMBATH S', 'TVE16MCA46', '8089508704', 'sambathcs@gmail.com', '', 1),
(48, '5', 'SANDRA V A', 'TVE16MCA47', '8606824675', 'sandraanildas1995@gmail.com', '', 1),
(49, '5', 'SHALU JOSE M', 'TVE16MCA48', '9747546727', 'shalujosem0@gmail.com', '', 1),
(50, '5', 'SHANID K P', 'TVE16MCA49', '9946027689', 'shanidchamal@gmail.com', '', 1),
(51, '5', 'SHEHEEN AHAMED KANNE', 'TVE16MCA50', '8111846226', 'sheheenkanneth@gmail.com', '', 1),
(52, '5', 'SHIJO SHAJI', 'TVE16MCA51', '9495602261', 'shijoshaji1995@gmail.com', '', 1),
(53, '5', 'SIJI B J', 'TVE16MCA52', '9526315656', 'sijibj1996@gmail.com', '', 1),
(54, '5', 'SILPA P', 'TVE16MCA53', '7559830467', 'silpapalassery@gmail.com', '', 1),
(55, '5', 'SONU M VIJAY', 'TVE16MCA54', '7012055914', 'sonu.vijay1990@gmail.com', '', 1),
(56, '5', 'SREELAKSHMI SREENIVAS', 'TVE16MCA55', '8129096572', 'sreelakshmisreenivasan1995@gmail.com', '', 1),
(57, '5', 'SUJITHA P S', 'TVE16MCA56', '9995659714', 'sujithaps101@gmail.com', '', 1),
(58, '5', 'THARUN P KARUN', 'TVE16MCA57', '8281875875', 'tpk@tharun.me', '', 1),
(59, '5', 'VISAKH V', 'TVE16MCA58', '9400947328', 'iamvisakh27@gmail.com', '', 1),
(60, '5', 'VISHNU J', 'TVE16MCA59', '8089088339', 'vishnumakairam@gmail.com', '', 1),
(61, '5', 'VYSAKH S', 'TVE16MCA60', '9847070283', 'vysakhsurendran001@gmail.com', '', 1),
(62, '5', 'AKHILA V U', 'LTVE16MCA061', '8593926502', 'vuakhila@gmail.com', '', 1),
(63, '5', 'ALEENA K WILSON', 'LTVE16MCA062', '7356110087', 'aleenawilson1995@gmail.com', '', 1),
(64, '5', 'AMRUTHA ADITHYAN', 'LTVE16MCA063', '9846191671', 'amruthanair2012@gmail.com', '', 1),
(65, '5', 'DEVIKA U', 'LTVE16MCA064', '8714427770', 'devikau007@gmail.com', '', 1),
(66, '5', 'GOPIKA M S', 'LTVE16MCA065', '9562102670', 'gopikams1661996@gmail.com', '', 1),
(67, '5', 'HASHIM MUHAMMED', 'LTVE16MCA066', '7034443424', 'hashimmuhammed555@gmail.com', '', 1),
(68, '5', 'JYOTHI KRISHNA V G', 'LTVE16MCA067', '8138078140', 'jyothykrishnavg@gmail.com', '', 1),
(69, '5', 'MARIYA WILLSON', 'LTVE16MCA068', '7561822318', 'mariyawillson79@gmail.com', '', 1),
(70, '5', 'NANDA KISHORE', 'LTVE16MCA069', '8281643953', 'nandakishore26587@gmail.com', '', 1),
(71, '5', 'RESHMA ALPHONSE', 'LTVE16MCA070', '9061258203', 'reshmaalphonsedsilva@gmail.com', '', 1),
(72, '5', 'SETHU SOMAN', 'LTVE16MCA071', '9947512953', 'sethusoma6@gmail.com', '', 1),
(73, '5', 'VINU V NAIR', 'LTVE16MCA072', '9544225598', 'vinuvn57@gmail.com', '', 1),
(74, '5', 'VISHNUDEV S', 'LTVE16MCA073', '9744229674', 'vishnudevsahadevan@gmail.com', '', 1);

-- --------------------------------------------------------

--
-- Table structure for table `subject_data`
--

CREATE TABLE `subject_data` (
  `id` int(11) NOT NULL,
  `dep` varchar(50) NOT NULL,
  `sem` int(3) NOT NULL,
  `subj_id` varchar(20) NOT NULL,
  `subj_nme` varchar(80) NOT NULL,
  `st` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `subject_data`
--

INSERT INTO `subject_data` (`id`, `dep`, `sem`, `subj_id`, `subj_nme`, `st`) VALUES
(1, 'MCA', 1, 'S101', 'Programming with C', 0),
(2, 'MCA', 1, 'S102', 'CPP Programming', 0),
(3, 'MCA', 2, 'S201', 'Java :Programming', 0),
(4, 'MCA', 2, 'S202', 'Programming with Python', 0),
(5, 'MCA', 3, 'S301', 'HTML Lab', 0),
(6, 'MCA', 3, 'S302', 'PHP Lab', 0),
(9, 'MCA', 4, 'S401', 'Advanced PHP', 0);

-- --------------------------------------------------------

--
-- Table structure for table `subj_assign`
--

CREATE TABLE `subj_assign` (
  `id` int(11) NOT NULL,
  `subj_nm` varchar(50) NOT NULL,
  `subj_nme` varchar(100) NOT NULL,
  `stf_id` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `subj_assign`
--

INSERT INTO `subj_assign` (`id`, `subj_nm`, `subj_nme`, `stf_id`) VALUES
(1, 'PHP Lab', 'S302', 'v101'),
(2, 'Advanced PHP', 'S401', 'v101'),
(3, 'Programming with C', 'S101', 'j101'),
(4, 'CPP Programming', 'S102', 'j101');

-- --------------------------------------------------------

--
-- Table structure for table `user_log`
--

CREATE TABLE `user_log` (
  `id` int(11) NOT NULL,
  `uid` varchar(100) NOT NULL,
  `pass` varchar(100) NOT NULL,
  `typ` varchar(50) NOT NULL,
  `st` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_log`
--

INSERT INTO `user_log` (`id`, `uid`, `pass`, `typ`, `st`) VALUES
(1, 'admin', 'admin', 'admin', 1),
(2, 'v101', 'asd', 'staff', 1),
(3, 'j101', 'asd', 'staff', 1),
(4, 'MCA101', 'asd', 'stud', 1),
(5, '18', '123', 'stud', 1),
(6, 'ABHILASH THANKACHAN', 'TVE16MCA1', 'stud', 1),
(7, 'AISWARYA TT', 'TVE16MCA2', 'stud', 1),
(8, 'AKHILA MOHAN', 'TVE16MCA3', 'stud', 1),
(9, 'AKSHAY VIJAYAN', 'TVE16MCA4', 'stud', 1),
(10, 'ALPHY JOSE', 'TVE16MCA5', 'stud', 1),
(11, 'AMAL C SAJI', 'TVE16MCA6', 'stud', 1),
(12, 'ANANDHU ASHOK', 'TVE16MCA7', 'stud', 1),
(13, 'ANANDU R CHANDRAN', 'TVE16MCA8', 'stud', 1),
(14, 'ANJALI K', 'TVE16MCA9', 'stud', 1),
(15, 'ANN JERIN SUNDAR', 'TVE16MCA10', 'stud', 1),
(16, 'ANOOP KUMAR V', 'TVE16MCA11', 'stud', 1),
(17, 'ARUN K NAMBIAR', 'TVE16MCA12', 'stud', 1),
(18, 'ASHITHA S', 'TVE16MCA13', 'stud', 1),
(19, 'ASWIN BABU K', 'TVE16MCA14', 'stud', 1),
(20, 'BASITH HAMEEM', 'TVE16MCA15', 'stud', 1),
(21, 'DEVIKA RAMGOPAL', 'TVE16MCA17', 'stud', 1),
(22, 'ELEZABETH GEORGE', 'TVE16MCA18', 'stud', 1),
(23, 'GAYATHRI V S', 'TVE16MCA19', 'stud', 1),
(24, 'GISAN K PETER', 'TVE16MCA20', 'stud', 1),
(25, 'GOKUL KRISHNA L J', 'TVE16MCA21', 'stud', 1),
(26, 'HIMA M', 'TVE16MCA22', 'stud', 1),
(27, 'ISHNA K A', 'TVE16MCA23', 'stud', 1),
(28, 'JANMASREE S', 'TVE16MCA24', 'stud', 1),
(29, 'JEEVAN S', 'TVE16MCA25', 'stud', 1),
(30, 'JESSY RAJAN', 'TVE16MCA26', 'stud', 1),
(31, 'JOJU GEORGE', 'TVE16MCA27', 'stud', 1),
(32, 'KALIDAS.A', 'TVE16MCA28', 'stud', 1),
(33, 'KEERTHANA  C', 'TVE16MCA29', 'stud', 1),
(34, 'KHAIRUL JUMANA OP', 'TVE16MCA30', 'stud', 1),
(35, 'KRISHNADEV S U', 'TVE16MCA31', 'stud', 1),
(36, 'NAISAM P K', 'TVE16MCA32', 'stud', 1),
(37, 'NANDAKISHORE V V', 'TVE16MCA33', 'stud', 1),
(38, 'NAVYA BABU', 'TVE16MCA34', 'stud', 1),
(39, 'NAVYA NAIR', 'TVE16MCA35', 'stud', 1),
(40, 'NEEMA S', 'TVE16MCA36', 'stud', 1),
(41, 'NEENU VS', 'TVE16MCA37', 'stud', 1),
(42, 'NEETHI K', 'TVE16MCA38', 'stud', 1),
(43, 'NIKHIL M N', 'TVE16MCA39', 'stud', 1),
(44, 'PHEBE JOHN', 'TVE16MCA40', 'stud', 1),
(45, 'RAFSAL RAHIM', 'TVE16MCA41', 'stud', 1),
(46, 'RAHUL KUMAR MS', 'TVE16MCA42', 'stud', 1),
(47, 'RAJEEV C NAIR', 'TVE16MCA43', 'stud', 1),
(48, 'REMNA R NAIR', 'TVE16MCA44', 'stud', 1),
(49, 'ROBIN MATHEW ABRAHAM', 'TVE16MCA45', 'stud', 1),
(50, 'SAMBATH S', 'TVE16MCA46', 'stud', 1),
(51, 'SANDRA V A', 'TVE16MCA47', 'stud', 1),
(52, 'SHALU JOSE M', 'TVE16MCA48', 'stud', 1),
(53, 'SHANID K P', 'TVE16MCA49', 'stud', 1),
(54, 'SHEHEEN AHAMED KANNE', 'TVE16MCA50', 'stud', 1),
(55, 'SHIJO SHAJI', 'TVE16MCA51', 'stud', 1),
(56, 'SIJI B J', 'TVE16MCA52', 'stud', 1),
(57, 'SILPA P', 'TVE16MCA53', 'stud', 1),
(58, 'SONU M VIJAY', 'TVE16MCA54', 'stud', 1),
(59, 'SREELAKSHMI SREENIVAS', 'TVE16MCA55', 'stud', 1),
(60, 'SUJITHA P S', 'TVE16MCA56', 'stud', 1),
(61, 'THARUN P KARUN', 'TVE16MCA57', 'stud', 1),
(62, 'VISAKH V', 'TVE16MCA58', 'stud', 1),
(63, 'VISHNU J', 'TVE16MCA59', 'stud', 1),
(64, 'VYSAKH S', 'TVE16MCA60', 'stud', 1),
(65, 'AKHILA V U', 'LTVE16MCA061', 'stud', 1),
(66, 'ALEENA K WILSON', 'LTVE16MCA062', 'stud', 1),
(67, 'AMRUTHA ADITHYAN', 'LTVE16MCA063', 'stud', 1),
(68, 'DEVIKA U', 'LTVE16MCA064', 'stud', 1),
(69, 'GOPIKA M S', 'LTVE16MCA065', 'stud', 1),
(70, 'HASHIM MUHAMMED', 'LTVE16MCA066', 'stud', 1),
(71, 'JYOTHI KRISHNA V G', 'LTVE16MCA067', 'stud', 1),
(72, 'MARIYA WILLSON', 'LTVE16MCA068', 'stud', 1),
(73, 'NANDA KISHORE', 'LTVE16MCA069', 'stud', 1),
(74, 'RESHMA ALPHONSE', 'LTVE16MCA070', 'stud', 1),
(75, 'SETHU SOMAN', 'LTVE16MCA071', 'stud', 1),
(76, 'VINU V NAIR', 'LTVE16MCA072', 'stud', 1),
(77, 'VISHNUDEV S', 'LTVE16MCA073', 'stud', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `answr_data`
--
ALTER TABLE `answr_data`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `qn_data`
--
ALTER TABLE `qn_data`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `staff_data`
--
ALTER TABLE `staff_data`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `student_data`
--
ALTER TABLE `student_data`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subject_data`
--
ALTER TABLE `subject_data`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subj_assign`
--
ALTER TABLE `subj_assign`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_log`
--
ALTER TABLE `user_log`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `answr_data`
--
ALTER TABLE `answr_data`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `qn_data`
--
ALTER TABLE `qn_data`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `staff_data`
--
ALTER TABLE `staff_data`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `student_data`
--
ALTER TABLE `student_data`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=75;
--
-- AUTO_INCREMENT for table `subject_data`
--
ALTER TABLE `subject_data`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `subj_assign`
--
ALTER TABLE `subj_assign`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `user_log`
--
ALTER TABLE `user_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=78;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
