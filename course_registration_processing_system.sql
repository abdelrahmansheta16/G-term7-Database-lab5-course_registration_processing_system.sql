-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 20, 2022 at 07:22 PM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `course_registration_processing_system`
--

-- --------------------------------------------------------

--
-- Table structure for table `course`
--

CREATE TABLE `course` (
  `course_code` varchar(50) NOT NULL,
  `name` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `course`
--

INSERT INTO `course` (`course_code`, `name`) VALUES
('CC10', 'Data Structures'),
('CC11', 'Database Systems'),
('CC12', 'Operating System Design'),
('CC13', 'Archaeology of the Incas'),
('CC14', 'Aviation Accident Investigation'),
('CC15', 'Air Quality Engineering'),
('CC16', 'Introductory Latin'),
('CC17', 'American Political Parties'),
('CC18', 'Social Cognition'),
('CC19', 'Perception'),
('CC20', 'Multivariate Analysis'),
('CC21', 'Patent Law'),
('CC22', 'Urban Economics'),
('CC23', 'Organic Chemistry');

-- --------------------------------------------------------

--
-- Table structure for table `department`
--

CREATE TABLE `department` (
  `dept_id` int(11) NOT NULL,
  `dept_name` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `department`
--

INSERT INTO `department` (`dept_id`, `dept_name`) VALUES
(1, 'Chemistry'),
(2, 'Computer Science'),
(3, 'Civil'),
(4, 'Arts'),
(5, 'Electronics'),
(6, 'Mechanics');

-- --------------------------------------------------------

--
-- Table structure for table `enrolled`
--

CREATE TABLE `enrolled` (
  `student_id` int(11) NOT NULL,
  `course_code` varchar(50) NOT NULL,
  `quarter` varchar(50) NOT NULL,
  `year` int(11) NOT NULL,
  `enrolled_at` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `enrolled`
--

INSERT INTO `enrolled` (`student_id`, `course_code`, `quarter`, `year`, `enrolled_at`) VALUES
(201, 'CC10', 'Spring', 2012, '2012-9-25'),
(201, 'CC10', 'Spring', 2013, '2013-9-25'),
(201, 'CC13', 'Fall', 2013, '2013-1-25'),
(201, 'CC14', 'Spring', 2013, '2013-9-25'),
(202, 'CC10', 'Spring', 2014, '2014-9-25'),
(202, 'CC11', 'Fall', 2012, '2012-1-25'),
(202, 'CC12', 'Summer', 2012, '2012-6-25'),
(202, 'CC15', 'Spring', 2014, '2014-9-25'),
(203, 'CC11', 'Spring', 2016, '2016-9-25'),
(203, 'CC12', 'Summer', 2012, '2012-6-25'),
(203, 'CC13', 'Fall', 2014, '2014-1-25'),
(204, 'CC10', 'Spring', 2015, '2015-9-25'),
(204, 'CC17', 'Fall', 2016, '2016-1-25'),
(204, 'CC18', 'Spring', 2016, '2016-9-25'),
(205, 'CC12', 'Spring', 2015, '2015-9-25'),
(206, 'CC10', 'Fall', 2016, '2016-1-25'),
(207, 'CC11', 'Spring', 2016, '2016-9-25'),
(207, 'CC16', 'Spring', 2016, '2016-9-25'),
(208, 'CC10', 'Spring', 2013, '2013-9-25'),
(208, 'CC12', 'Summer', 2016, '2016-6-25'),
(208, 'CC13', 'Fall', 2013, '2013-1-25'),
(208, 'CC14', 'Fall', 2015, '2015-1-25'),
(208, 'CC15', 'Spring', 2015, '2015-9-25'),
(209, 'CC10', 'Spring', 2012, '2012-9-25'),
(209, 'CC13', 'Fall', 2013, '2013-1-25'),
(209, 'CC14', 'Spring', 2013, '2013-9-25'),
(210, 'CC10', 'Spring', 2014, '2014-9-25'),
(210, 'CC11', 'Fall', 2012, '2012-1-25'),
(210, 'CC14', 'Spring', 2013, '2013-9-25'),
(210, 'CC15', 'Spring', 2014, '2014-9-25'),
(210, 'CC16', 'Spring', 2016, '2016-9-25'),
(211, 'CC10', 'Spring', 2014, '2014-9-25'),
(211, 'CC13', 'Fall', 2014, '2014-1-25'),
(211, 'CC15', 'Spring', 2014, '2014-9-25'),
(211, 'CC16', 'Spring', 2016, '2016-9-25'),
(211, 'CC17', 'Fall', 2016, '2016-1-25'),
(212, 'CC10', 'Spring', 2015, '2015-9-25'),
(212, 'CC13', 'Fall', 2014, '2014-1-25'),
(212, 'CC17', 'Fall', 2016, '2016-1-25'),
(212, 'CC18', 'Spring', 2016, '2016-9-25'),
(213, 'CC10', 'Spring', 2015, '2015-9-25'),
(213, 'CC12', 'Spring', 2015, '2015-9-25'),
(213, 'CC18', 'Spring', 2016, '2016-9-25'),
(214, 'CC12', 'Spring', 2015, '2015-9-25'),
(214, 'CC14', 'Fall', 2015, '2015-1-25'),
(215, 'CC10', 'Fall', 2016, '2016-1-25'),
(215, 'CC11', 'Spring', 2016, '2016-9-25'),
(215, 'CC12', 'Summer', 2012, '2012-6-25'),
(215, 'CC14', 'Fall', 2015, '2015-1-25'),
(215, 'CC15', 'Spring', 2015, '2015-9-25'),
(216, 'CC10', 'Fall', 2016, '2016-1-25'),
(216, 'CC10', 'Spring', 2012, '2012-9-25'),
(216, 'CC10', 'Spring', 2013, '2013-9-25'),
(216, 'CC11', 'Fall', 2012, '2012-1-25'),
(216, 'CC12', 'Summer', 2016, '2016-6-25'),
(216, 'CC15', 'Spring', 2015, '2015-9-25');

-- --------------------------------------------------------

--
-- Table structure for table `professor`
--

CREATE TABLE `professor` (
  `prof_id` int(11) NOT NULL,
  `prof_name` varchar(50) DEFAULT NULL,
  `dept_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `professor`
--

INSERT INTO `professor` (`prof_id`, `prof_name`, `dept_id`) VALUES
(1, 'Ivana Teach', 1),
(2, 'James Smith', 1),
(3, 'Mary Johnson', 2),
(4, 'John Williams', 2),
(5, 'Patricia Jones', 2),
(6, 'Michael Miller', 3),
(7, 'Robert Brown', 4),
(8, 'Linda Davis', 5);

-- --------------------------------------------------------

--
-- Table structure for table `semester_course`
--

CREATE TABLE `semester_course` (
  `course_code` varchar(50) NOT NULL,
  `quarter` varchar(50) NOT NULL,
  `year` int(11) NOT NULL,
  `prof_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `semester_course`
--

INSERT INTO `semester_course` (`course_code`, `quarter`, `year`, `prof_id`) VALUES
('CC10', 'Spring', 2014, 1),
('CC10', 'Spring', 2015, 1),
('CC11', 'Fall', 2012, 1),
('CC13', 'Fall', 2013, 1),
('CC14', 'Fall', 2015, 1),
('CC15', 'Spring', 2014, 1),
('CC15', 'Spring', 2015, 1),
('CC16', 'Spring', 2016, 1),
('CC17', 'Fall', 2016, 1),
('CC10', 'Spring', 2013, 2),
('CC18', 'Spring', 2016, 2),
('CC19', 'Fall', 2016, 3),
('CC10', 'Fall', 2016, 4),
('CC20', 'Summer', 2016, 4),
('CC12', 'Summer', 2016, 5),
('CC10', 'Spring', 2012, 6),
('CC11', 'Spring', 2016, 6),
('CC12', 'Spring', 2015, 6),
('CC12', 'Summer', 2012, 6),
('CC13', 'Fall', 2014, 6),
('CC14', 'Spring', 2013, 6);

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `student_id` int(11) NOT NULL,
  `student_name` varchar(50) DEFAULT NULL,
  `major` varchar(50) DEFAULT NULL,
  `level` varchar(50) DEFAULT NULL,
  `age` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`student_id`, `student_name`, `major`, `level`, `age`) VALUES
(201, 'Maria White', 'English', 'SR', 21),
(202, 'Charles Harris', 'Architecture', 'SR', 22),
(203, 'Susan Martin', 'Law', 'JR', 20),
(204, 'Joseph Thompson', 'Computer Science', 'SO', 19),
(205, 'Christopher Garcia', 'Computer Science', 'JR', 20),
(206, 'Angela Martinez', 'History', 'SR', 19),
(207, 'Thomas Robinson', 'Psychology', 'SO', 18),
(208, 'Margaret Clark', 'Animal Science', 'FR', 18),
(209, 'Juan Rodriguez', 'Psychology', 'JR', 20),
(210, 'Dorthy Lewis', 'Finance', 'FR', 18),
(211, 'Daniel Lee', 'History', 'FR', 17),
(212, 'Lisa Walker', 'Computer Science', 'SO', 17),
(213, 'Paul Hall', 'Computer Science', 'JR', 18),
(214, 'Nancy Allen', 'Accounting', 'JR', 19),
(215, 'Mark Young', 'Finance', 'FR', 18),
(216, 'Luis Hernandez', 'Electrical Engineering', 'FR', 17),
(217, 'Donald King', 'Mechanical Engineering', 'SO', 19),
(218, 'George Wright', 'Education', 'SR', 21);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `course`
--
ALTER TABLE `course`
  ADD PRIMARY KEY (`course_code`);

--
-- Indexes for table `department`
--
ALTER TABLE `department`
  ADD PRIMARY KEY (`dept_id`);

--
-- Indexes for table `enrolled`
--
ALTER TABLE `enrolled`
  ADD PRIMARY KEY (`student_id`,`course_code`,`quarter`,`year`),
  ADD KEY `course_code` (`course_code`);

--
-- Indexes for table `professor`
--
ALTER TABLE `professor`
  ADD PRIMARY KEY (`prof_id`),
  ADD KEY `dept_id` (`dept_id`);

--
-- Indexes for table `semester_course`
--
ALTER TABLE `semester_course`
  ADD PRIMARY KEY (`course_code`,`quarter`,`year`),
  ADD KEY `prof_id` (`prof_id`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`student_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `department`
--
ALTER TABLE `department`
  MODIFY `dept_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `professor`
--
ALTER TABLE `professor`
  MODIFY `prof_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `student`
--
ALTER TABLE `student`
  MODIFY `student_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=219;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `enrolled`
--
ALTER TABLE `enrolled`
  ADD CONSTRAINT `enrolled_ibfk_1` FOREIGN KEY (`student_id`) REFERENCES `student` (`student_id`),
  ADD CONSTRAINT `enrolled_ibfk_2` FOREIGN KEY (`course_code`) REFERENCES `course` (`course_code`),
  ADD CONSTRAINT `enrolled_ibfk_3` FOREIGN KEY (`course_code`) REFERENCES `semester_course` (`course_code`);

--
-- Constraints for table `professor`
--
ALTER TABLE `professor`
  ADD CONSTRAINT `professor_ibfk_1` FOREIGN KEY (`dept_id`) REFERENCES `department` (`dept_id`),
  ADD CONSTRAINT `professor_ibfk_2` FOREIGN KEY (`dept_id`) REFERENCES `department` (`dept_id`);

--
-- Constraints for table `semester_course`
--
ALTER TABLE `semester_course`
  ADD CONSTRAINT `semester_course_ibfk_1` FOREIGN KEY (`course_code`) REFERENCES `course` (`course_code`),
  ADD CONSTRAINT `semester_course_ibfk_2` FOREIGN KEY (`course_code`) REFERENCES `course` (`course_code`),
  ADD CONSTRAINT `semester_course_ibfk_3` FOREIGN KEY (`prof_id`) REFERENCES `professor` (`prof_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
