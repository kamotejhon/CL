-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Oct 27, 2021 at 11:55 PM
-- Server version: 10.5.12-MariaDB-cll-lve
-- PHP Version: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `u623987209_clsams_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `activity_logs`
--

CREATE TABLE `activity_logs` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `description` varchar(255) NOT NULL,
  `properties` varchar(255) NOT NULL,
  `data` longtext NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `attendances`
--

CREATE TABLE `attendances` (
  `id` int(11) NOT NULL,
  `schedule_id` int(11) NOT NULL,
  `lab_id` int(11) NOT NULL,
  `student_number` varchar(100) NOT NULL,
  `student_id` int(11) NOT NULL,
  `subject_id` int(11) NOT NULL,
  `date` date NOT NULL,
  `time_in` time DEFAULT NULL,
  `time_out` time DEFAULT NULL,
  `remarks` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `capacities`
--

CREATE TABLE `capacities` (
  `id` int(11) NOT NULL,
  `lab_id` int(11) NOT NULL,
  `capacity` int(11) NOT NULL,
  `status` varchar(1) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `capacities`
--

INSERT INTO `capacities` (`id`, `lab_id`, `capacity`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 2, 40, 'a', '2021-06-02 21:48:46', '2021-08-25 12:11:35', NULL),
(2, 1, 40, 'a', '2021-06-15 15:16:19', '2021-06-15 16:46:54', NULL),
(3, 3, 32, 'a', '2021-06-15 16:26:49', '2021-06-15 16:40:59', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `category` varchar(255) NOT NULL,
  `status` varchar(1) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `category`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Meeting', 'a', '2021-06-02 21:40:56', '2021-08-25 12:12:04', NULL),
(2, 'Seminar', 'a', '2021-06-02 21:42:46', '2021-06-02 21:42:46', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `courses`
--

CREATE TABLE `courses` (
  `id` int(11) NOT NULL,
  `course_name` varchar(255) NOT NULL,
  `course_abbrev` varchar(255) NOT NULL,
  `status` varchar(1) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `courses`
--

INSERT INTO `courses` (`id`, `course_name`, `course_abbrev`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Diploma in Information Communication Technology', 'DICT', 'a', '2021-06-02 19:13:20', '2021-06-29 07:02:49', NULL),
(2, 'Bachelor of Science in Information Technology', 'BSIT', 'a', '2021-06-02 19:14:42', '2021-06-02 19:17:45', NULL),
(3, 'Diploma in Office Administration Technology', 'DOMT', 'a', '2021-06-02 19:18:11', '2021-06-02 19:18:11', NULL),
(4, 'Bachelor of Science in Mechanical Engineering', 'BSME', 'a', '2021-06-02 19:18:34', '2021-06-02 19:18:34', NULL),
(5, 'Bachelor of Science in Electronics Engineering', 'BSECE', 'a', '2021-06-02 19:18:53', '2021-06-02 19:18:53', NULL),
(6, 'Bachelor of Secondary Education Major in English', 'BSED-ENG', 'a', '2021-06-02 19:20:07', '2021-06-02 19:20:07', NULL),
(7, 'Bachelor of Secondary Education Major in Mathematics', 'BSED-MATH', 'a', '2021-06-02 19:20:29', '2021-06-02 19:20:29', NULL),
(8, 'Bachelor of Science in Office Administration Major in Legal Transcription', 'BSOA', 'a', '2021-06-02 19:21:26', '2021-06-02 19:21:26', NULL),
(9, 'Bachelor of Science in Business Administration Major in Marketing Management', 'BSBA-MM', 'a', '2021-06-02 19:22:05', '2021-06-02 19:22:05', NULL),
(10, 'Bachelor of Science in Business Administration Major in Human Resources', 'BSBA-HR', 'a', '2021-06-02 19:22:21', '2021-06-02 19:22:21', NULL),
(11, 'Bachelor of Sciene in Accountancy', 'BSA', 'a', '2021-06-02 19:22:47', '2021-06-02 19:22:47', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `holiday`
--

CREATE TABLE `holiday` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `date` varchar(10) NOT NULL,
  `schedsubj_id` int(11) NOT NULL,
  `schedlab_id` int(11) NOT NULL,
  `status` varchar(1) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `deleted_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `holiday`
--

INSERT INTO `holiday` (`id`, `name`, `date`, `schedsubj_id`, `schedlab_id`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'New Year\'s Day', '01-01', 0, 0, 'a', '2021-08-25 12:13:59', '2021-08-25 12:13:59', '0000-00-00 00:00:00'),
(2, 'Maunday-Thursday', '04-01', 0, 0, 'a', '2021-08-25 12:14:46', '2021-08-25 12:14:46', '0000-00-00 00:00:00'),
(3, 'Good Friday', '04-02', 0, 0, 'a', '2021-08-25 12:15:07', '2021-08-25 12:15:07', '0000-00-00 00:00:00'),
(4, 'Araw ng Kagitingan', '04-09', 0, 0, 'a', '2021-08-25 12:15:33', '2021-08-25 12:15:33', '0000-00-00 00:00:00'),
(5, 'Labor Day', '05-01', 0, 0, 'a', '2021-08-25 12:15:50', '2021-08-25 12:15:50', '0000-00-00 00:00:00'),
(6, 'Independence Day', '06-12', 0, 0, 'a', '2021-08-25 12:16:25', '2021-08-25 12:16:25', '0000-00-00 00:00:00'),
(7, 'National Heroe\'s Day', '08-30', 0, 0, 'a', '2021-08-25 12:16:59', '2021-08-25 12:16:59', '0000-00-00 00:00:00'),
(8, 'National Heroe\'s Day', '08-30', 0, 0, 'a', '2021-08-25 12:17:00', '2021-08-25 12:17:00', '0000-00-00 00:00:00'),
(9, 'Bonifacio Day', '11-30', 0, 0, 'a', '2021-08-25 12:17:25', '2021-08-25 12:17:25', '0000-00-00 00:00:00'),
(10, 'Christmas', '12-25', 0, 0, 'a', '2021-08-25 12:17:46', '2021-08-25 12:17:46', '0000-00-00 00:00:00'),
(11, 'Rizal Day', '12-30', 0, 0, 'a', '2021-08-25 12:18:05', '2021-08-25 12:18:05', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `labs`
--

CREATE TABLE `labs` (
  `id` int(11) NOT NULL,
  `lab_name` varchar(255) NOT NULL,
  `status` varchar(1) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `labs`
--

INSERT INTO `labs` (`id`, `lab_name`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Aboitiz', 'a', '2021-06-02 20:40:07', '2021-06-29 07:37:49', NULL),
(2, 'DOST', 'a', '2021-06-02 20:40:13', '2021-06-02 20:40:13', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `modules`
--

CREATE TABLE `modules` (
  `id` int(10) UNSIGNED NOT NULL,
  `module_name` varchar(250) NOT NULL,
  `module_description` text NOT NULL,
  `module_icon` text NOT NULL,
  `order` int(11) NOT NULL,
  `route` varchar(100) DEFAULT NULL,
  `is_dropdown` int(1) NOT NULL,
  `status` char(1) NOT NULL DEFAULT 'a',
  `created_at` datetime NOT NULL COMMENT 'Date of creation',
  `updated_at` datetime DEFAULT NULL COMMENT 'Date last updated',
  `deleted_at` datetime DEFAULT NULL COMMENT 'Date of soft deletion'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `modules`
--

INSERT INTO `modules` (`id`, `module_name`, `module_description`, `module_icon`, `order`, `route`, `is_dropdown`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Home', 'Home', ' <i class=\"nav-icon fas fa-home\"></i>', 1, 'admin/home', 0, 'a', '2021-06-20 12:51:24', NULL, NULL),
(2, 'User Permission', 'User Permission', '<i class=\"nav-icon fas fa-user-cog\"></i>', 2, 'admin/permissions', 0, 'a', '2021-06-20 12:52:43', NULL, NULL),
(3, 'User Role', 'User Role', '<i class=\"nav-icon fas fa-user-check\"></i>', 3, 'admin/roles', 0, 'a', '2021-06-20 12:55:08', NULL, NULL),
(4, 'Maintenance', 'Maintenance', '<i class=\"nav-icon fas fa-cogs\"></i>\r\n', 4, NULL, 1, 'a', '2021-06-20 12:56:19', NULL, NULL),
(5, 'Set Schedule', 'Set Schedule', '<i class=\"nav-icon fas fa-calendar alt\"></i>', 5, NULL, 1, 'a', '2021-06-20 12:57:33', NULL, NULL),
(6, 'Calendar', 'Schedules', ' <i class=\"fas fa-calendar-alt\"></i>', 6, 'admin/schedules', 0, 'a', '2021-06-30 15:13:57', NULL, NULL),
(7, 'attendance', 'attendance', '', 7, 'admin/attendance', 0, 'a', '2021-06-30 19:13:09', NULL, NULL),
(8, 'Holiday', 'holiday', ' <i class=\"fas fa-calendar-check\"></i>', 8, 'admin/holiday', 0, 'a', '2021-07-20 22:03:25', NULL, NULL),
(9, 'Users', 'Users', 'none', 9, NULL, 0, 'a', '2021-06-20 17:39:22', NULL, NULL),
(10, 'Profile', 'Profile', '', 1, 'admin/profile', 0, 'a', '2021-07-23 23:47:11', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name_on_class` varchar(250) NOT NULL,
  `function_name` varchar(50) NOT NULL,
  `function_description` text NOT NULL,
  `link_icon` text DEFAULT NULL,
  `slugs` varchar(50) NOT NULL,
  `page_title` varchar(50) NOT NULL,
  `module_id` int(11) NOT NULL,
  `table_name` varchar(100) NOT NULL,
  `func_action` varchar(50) DEFAULT NULL,
  `allowed_roles` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '[1]' CHECK (json_valid(`allowed_roles`)),
  `order` int(11) NOT NULL,
  `status` char(1) NOT NULL DEFAULT 'a',
  `func_type` int(1) NOT NULL DEFAULT 3,
  `created_at` datetime NOT NULL COMMENT 'Date of creation',
  `updated_at` datetime DEFAULT NULL COMMENT 'Date last updated',
  `deleted_at` datetime DEFAULT NULL COMMENT 'Date of soft deletion'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name_on_class`, `function_name`, `function_description`, `link_icon`, `slugs`, `page_title`, `module_id`, `table_name`, `func_action`, `allowed_roles`, `order`, `status`, `func_type`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'add_school_year', 'School Year', 'add_school_year', '<i class=\"fas fa-plus-square nav-icon\"></i>', 'add_school_year', 'Add School Year', 4, 'admin/schoolyears', '1', '[1]', 1, 'a', 1, '2021-06-20 12:59:27', '2021-08-26 00:31:21', NULL),
(3, 'home', 'view home page', 'home', '<i class=\"nav-icon fas fa-home\"></i>', 'home', 'Home', 1, 'admin/home', '1', '[1,2,3]', 1, 'a', 1, '2021-06-20 16:54:13', '2021-08-26 00:31:21', NULL),
(4, 'permission', 'view permissions', 'permission', NULL, 'user permission', 'user permission', 2, 'admin/permissions', '1', '[1]', 1, 'a', 1, '2021-06-20 16:57:52', '2021-08-26 00:31:21', NULL),
(5, 'user role', 'view roles', 'user role', NULL, 'user role', 'user role', 3, 'admin/role', '1', '[1]', 1, 'a', 1, '2021-06-20 16:59:19', '2021-08-26 00:31:21', NULL),
(6, 'schedule event', ' Schedule Event', 'schedule event', '<i class=\"fas fa-calendar-alt\"></i>', 'schedule event', 'schedule event', 5, 'admin/schedlabs', NULL, '[1,2]', 1, 'a', 1, '2021-06-20 17:00:15', '2021-08-26 00:31:21', NULL),
(7, 'Add Subject', 'Subject', 'Add Subject', '<i class=\"fas fa-plus-square nav-icon\"></i>', 'Add Subject', 'Add Subject', 4, 'admin/subjects', NULL, '[1]', 2, 'a', 1, '2021-06-20 17:09:48', '2021-08-26 00:31:21', NULL),
(8, 'Add Courses', 'Course', 'Add Courses', '<i class=\"fas fa-plus-square nav-icon\"></i>', 'Add Courses', 'Add Courses', 4, 'admin/courses', NULL, '[1]', 3, 'a', 1, '2021-06-20 17:12:41', '2021-08-26 00:31:21', NULL),
(9, 'Add Sections', 'Section', 'Add Sections', '<i class=\"fas fa-plus-square nav-icon\"></i>', 'Add Sections', 'Add Sections', 4, 'admin/sections', NULL, '[1]', 4, 'a', 1, '2021-06-20 17:13:51', '2021-08-26 00:31:21', NULL),
(10, 'Add Semester', 'Semester', 'Add Semester', '<i class=\"fas fa-plus-square nav-icon\"></i>', 'Add Semester', 'Add Semester', 4, 'admin/semesters', NULL, '[1]', 5, 'a', 1, '2021-06-20 17:15:29', '2021-08-26 00:31:21', NULL),
(11, 'Add lab', 'Laboratory', 'Add lab', '<i class=\"fas fa-plus-square nav-icon\"></i>', 'Add lab', 'Add lab', 4, 'admin/labs', NULL, '[1]', 6, 'a', 1, '2021-06-20 17:18:06', '2021-08-26 00:31:21', NULL),
(12, 'Add Capacity', 'Capacity', 'Add Capacity', '<i class=\"fas fa-plus-square nav-icon\"></i>', 'Add Capacity', 'Add Capacity', 4, 'admin/capacities', NULL, '[1]', 7, 'a', 1, '2021-06-20 17:19:31', '2021-08-26 00:31:21', NULL),
(13, 'Add Category', 'Category', 'Add Category', '<i class=\"fas fa-plus-square nav-icon\"></i>', 'Add Category', 'Add Category', 4, 'admin/categories', NULL, '[1]', 8, 'a', 1, '2021-06-20 17:20:26', '2021-08-26 00:31:21', NULL),
(14, 'Add Suffix', 'Suffix', 'Add Suffix', '<i class=\"fas fa-plus-square nav-icon\"></i>', 'Add Suffix', 'Add Suffix', 4, 'admin/suffixes', NULL, '[1]', 9, 'a', 1, '2021-06-20 17:21:26', '2021-08-26 00:31:21', NULL),
(15, 'Students', 'Students', 'Students', '<i class=\"nav-icon fas fa-user-graduate\"></i>', 'Students', 'Students', 9, 'admin/students', NULL, '[1]', 2, 'a', 1, '2021-06-20 17:47:15', '2021-08-26 00:31:21', NULL),
(16, 'Professors', 'Professors', 'Professors', '<i class=\"nav-icon fas fa-fw fa-user-tie\"></i>', 'Professors', 'Professors', 9, 'admin/professors', NULL, '[1]', 3, 'a', 1, '2021-06-20 18:02:04', '2021-08-26 00:31:21', NULL),
(17, 'Visitors', 'Visitors', 'Visitors', '<i class=\"nav-icon fas fa-users\"></i>', 'Visitors', 'Visitors', 9, 'admin/visitors', NULL, '[1]', 4, 'a', 1, '2021-06-20 18:05:49', '2021-08-26 00:31:21', NULL),
(20, 'schedule Class', 'Schedule Class', 'schedule class', ' <i class=\"far fa-calendar-check\"></i>', 'schedule class', 'schedule class', 5, 'admin/schedsubject', NULL, '[1]', 2, 'a', 1, '2021-06-23 17:42:21', '2021-08-26 00:31:21', NULL),
(21, 'users', 'users', 'users', '<i class=\"nav-icon fas fa-fw fa-user\"></i>', 'users', 'users', 9, 'admin/users', NULL, '[1]', 1, 'a', 1, '2021-06-30 13:17:48', '2021-08-26 00:31:21', NULL),
(22, 'view schedules', 'view schedules', 'view schedules', '<i class=\"fas fa-calendar-alt\"></i>', 'view schedules', 'view schedules', 6, 'admin/schedules', NULL, '[1]', 1, 'a', 1, '2021-06-30 15:24:24', '2021-08-26 00:31:21', NULL),
(23, 'view attendance', 'view attendance', 'view attendance', NULL, 'view attendance', 'view attendance', 7, 'admin/attendance', NULL, '[1]', 1, 'a', 3, '2021-06-30 19:38:43', '2021-08-26 00:31:21', NULL),
(24, 'Activity Logs', 'Activity Logs', 'Activity Logs', '<i class=\"fas fa-history\r\n-alt\"></i>', 'Activity Logs', 'Activity Logs', 9, 'admin/activity', NULL, '[1]', 5, 'a', 1, '2021-07-08 12:29:28', '2021-08-26 00:31:21', NULL),
(25, 'view holiday', 'view holiday', 'view holiday', NULL, 'view holiday', 'view holiday', 8, 'admin/holiday', NULL, '[1]', 8, 'a', 1, '2021-07-20 22:08:03', '2021-08-26 00:31:21', NULL),
(26, 'view profile', 'view profile', 'view profile', NULL, 'view profile', 'view profile', 10, 'admin/profile', NULL, '[2,3]', 1, 'a', 1, '2021-07-23 23:49:33', '2021-08-26 00:31:21', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `professors`
--

CREATE TABLE `professors` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `f_code` varchar(255) NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `m_initial` varchar(255) NOT NULL,
  `suffix_id` int(11) NOT NULL,
  `status` varchar(1) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `professors`
--

INSERT INTO `professors` (`id`, `user_id`, `f_code`, `first_name`, `last_name`, `m_initial`, `suffix_id`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 3, 'FA0006TG2009', 'Gecilie', 'Almiranez', 'C', 0, 'a', '2021-08-26 00:30:31', '2021-08-26 00:30:31', NULL),
(2, 6, 'FA0001TG2014', 'Elvin', 'Catantan', 'B', 0, 'a', '2021-08-27 10:53:23', '2021-08-27 10:53:23', NULL),
(3, 7, 'FA0002TG2011', 'Arlan', 'Deluta', 'D', 0, 'a', '2021-08-27 10:56:37', '2021-08-27 10:56:37', NULL),
(4, 8, 'FA0002TMP2013', 'Larry', 'Aumentado', 'U', 0, 'a', '2021-08-27 10:57:54', '2021-08-27 10:57:54', NULL),
(5, 9, 'FA0005TG2010', 'Ronald', 'Alayon', 'A', 0, 'a', '2021-08-27 10:58:29', '2021-08-27 10:58:29', NULL),
(6, 10, 'FA0008TG2014', 'Arnold ', 'Subastil', 'S', 0, 'a', '2021-08-27 11:02:33', '2021-08-27 11:02:33', NULL),
(7, 11, 'FA0009TG2014', 'May Gizelle', 'Galarce', 'G', 0, 'a', '2021-08-27 11:03:22', '2021-08-27 11:03:22', NULL),
(8, 12, 'FA0013BN2011', 'Gerino', 'Abelida', 'A', 0, 'a', '2021-08-27 11:04:03', '2021-08-27 11:04:03', NULL),
(9, 13, 'FA2015ALCANTARA', 'Alliana', 'Alcantara', 'C', 0, 'a', '2021-08-27 11:04:51', '2021-08-27 11:04:51', NULL),
(10, 14, 'FA2015ARADA', 'Marian', 'Arada', 'A', 0, 'a', '2021-08-27 11:05:22', '2021-08-27 11:05:22', NULL),
(11, 15, 'FA2015GORGONIO', 'Anita ', 'Gorgonio', 'G', 0, 'a', '2021-08-27 11:05:58', '2021-08-27 11:05:58', NULL),
(12, 16, 'FA2015TRIGO', 'Kayle Anne', 'Trigo', 'T', 0, 'a', '2021-08-27 11:06:37', '2021-08-27 11:06:37', NULL),
(13, 17, 'FA2016TGTAGUIG02', 'Jomer ', 'Cabrera', 'C', 0, 'a', '2021-08-27 11:07:25', '2021-08-27 11:07:25', NULL),
(14, 18, 'FATEMP001', 'Gina', 'Dela Cruz', 'D', 0, 'a', '2021-08-27 11:07:57', '2021-08-27 11:07:57', NULL),
(15, 19, 'TEMPACCT', 'Symbol John Rae', 'Tabios', 'T', 0, 'a', '2021-08-27 11:08:38', '2021-08-27 11:08:38', NULL),
(16, 20, 'TEMPACCT3', 'Almir', 'Almiranez', 'C', 0, 'a', '2021-08-27 11:09:11', '2021-08-27 11:09:11', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `prof_attendance`
--

CREATE TABLE `prof_attendance` (
  `id` int(11) NOT NULL,
  `schedule_id` int(11) NOT NULL,
  `lab_id` int(11) NOT NULL,
  `faculty_code` varchar(100) NOT NULL,
  `professor_id` int(11) NOT NULL,
  `subject_id` int(11) NOT NULL,
  `date` date NOT NULL,
  `time_in` time DEFAULT NULL,
  `time_out` time DEFAULT NULL,
  `remarks` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) NOT NULL,
  `role_name` varchar(100) NOT NULL,
  `function_id` int(20) NOT NULL,
  `description` text NOT NULL,
  `status` varchar(1) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `role_name`, `function_id`, `description`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Super administrator', 3, 'Super Administrator', 'a', '2021-06-20 13:06:36', '2021-07-12 06:29:31', '2021-06-30 01:37:45'),
(2, 'Professor', 3, 'Professor', 'a', '2021-06-20 13:07:06', '2021-07-23 16:22:37', '2021-06-30 01:37:59'),
(3, 'Student', 26, 'Student', 'a', '2021-06-20 13:07:38', '2021-07-23 23:51:38', '2021-06-29 23:03:13');

-- --------------------------------------------------------

--
-- Table structure for table `schedlabs`
--

CREATE TABLE `schedlabs` (
  `id` int(11) NOT NULL,
  `event_name` varchar(25) NOT NULL,
  `category_id` int(11) NOT NULL,
  `date` date NOT NULL,
  `start_time` time NOT NULL,
  `end_time` time NOT NULL,
  `lab_id` int(11) NOT NULL,
  `assigned_person` varchar(255) NOT NULL,
  `num_people` int(11) NOT NULL,
  `status` varchar(1) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `schedsubjs`
--

CREATE TABLE `schedsubjs` (
  `id` int(11) NOT NULL,
  `subject_id` int(11) NOT NULL,
  `course_id` int(11) NOT NULL,
  `category` int(11) NOT NULL,
  `section_id` int(11) NOT NULL,
  `professor_id` int(11) NOT NULL,
  `date` date DEFAULT NULL,
  `start_time` time DEFAULT NULL,
  `end_time` time DEFAULT NULL,
  `day` text NOT NULL,
  `lab_id` int(11) NOT NULL,
  `semester_id` int(11) NOT NULL,
  `sy_id` int(11) NOT NULL,
  `status` varchar(1) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `schoolyears`
--

CREATE TABLE `schoolyears` (
  `id` int(11) NOT NULL,
  `start_sy` int(11) NOT NULL,
  `end_sy` int(11) NOT NULL,
  `status` varchar(1) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `schoolyears`
--

INSERT INTO `schoolyears` (`id`, `start_sy`, `end_sy`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 2018, 2019, 'a', '2021-08-25 12:09:13', '2021-08-25 12:09:13', NULL),
(2, 2019, 2020, 'a', '2021-08-25 12:09:27', '2021-08-25 12:09:27', NULL),
(3, 2020, 2021, 'a', '2021-08-25 12:09:41', '2021-08-25 12:09:41', NULL),
(4, 2021, 2022, 'a', '2021-08-25 12:09:57', '2021-08-25 12:09:57', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sections`
--

CREATE TABLE `sections` (
  `id` int(11) NOT NULL,
  `year` varchar(255) NOT NULL,
  `section` int(11) NOT NULL,
  `status` varchar(1) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sections`
--

INSERT INTO `sections` (`id`, `year`, `section`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'I', 1, 'a', '2021-06-02 19:46:06', '2021-06-29 07:21:38', NULL),
(2, 'II', 1, 'a', '2021-06-02 19:46:13', '2021-06-02 19:46:13', NULL),
(3, 'III', 1, 'a', '2021-06-02 19:46:21', '2021-06-02 19:46:21', NULL),
(4, 'IV', 1, 'a', '2021-06-02 19:46:27', '2021-06-02 19:46:27', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `semesters`
--

CREATE TABLE `semesters` (
  `id` int(11) NOT NULL,
  `sem` varchar(255) NOT NULL,
  `status` varchar(1) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `semesters`
--

INSERT INTO `semesters` (`id`, `sem`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, '1st', 'a', '2021-06-02 19:54:14', '2021-06-29 07:29:43', NULL),
(2, '2nd', 'a', '2021-06-02 19:54:28', '2021-06-02 19:54:28', NULL),
(3, '3rd', 'a', '2021-06-02 19:54:38', '2021-06-02 19:54:38', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `student_num` varchar(255) NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `m_initial` varchar(255) NOT NULL,
  `suffix_id` int(11) NOT NULL,
  `course_id` int(11) NOT NULL,
  `section_id` int(11) NOT NULL,
  `status` varchar(1) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`id`, `user_id`, `student_num`, `first_name`, `last_name`, `m_initial`, `suffix_id`, `course_id`, `section_id`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 2, '2018-00256-TG-0', 'Joshua ', 'Capalaran', 'A', 0, 1, 3, 'a', '2021-08-26 00:27:18', '2021-08-25 11:29:11', NULL),
(2, 4, '2021-00081-TG-0', 'Jericho', 'Capalaran', 'A', 0, 7, 1, 'a', '2021-08-26 00:46:23', '2021-08-25 11:58:23', NULL),
(3, 5, '2018-00211-TG-0', 'Bryan', 'Laserna', 'S', 0, 2, 4, 'a', '2021-08-26 20:36:03', '2021-08-26 23:30:31', NULL),
(4, 21, '2018-00075-TG-0', 'Russel', 'Claveria', 'M', 0, 2, 4, 'a', '2021-08-27 11:45:04', '2021-08-27 11:45:04', NULL),
(5, 22, '2018-00190-TG-0', 'Earl Janiel', 'Compra', 'F', 0, 2, 4, 'a', '2021-08-27 11:45:55', '2021-08-27 11:45:55', NULL),
(6, 23, '2018-00099-TG-0', 'Joshua', 'Del Rosario', 'R', 0, 2, 4, 'a', '2021-08-27 11:46:50', '2021-08-27 11:46:50', NULL),
(7, 24, '2018-00120-TG-0', 'Arwin Jay', 'Dela Rosa', 'S', 0, 2, 4, 'a', '2021-08-27 11:47:40', '2021-08-27 11:47:40', NULL),
(8, 25, '2018-00150-TG-0', 'John Patrick', 'Efondo', 'D', 0, 2, 4, 'a', '2021-08-27 11:48:44', '2021-08-27 11:48:44', NULL),
(9, 26, '2018-00171-TG-0', 'Vincent Rafael ', 'Espiritu', 'B', 0, 2, 4, 'a', '2021-08-27 11:49:42', '2021-08-27 11:49:42', NULL),
(10, 27, '2018-00070-TG-0', 'Jojemar', 'Exala', 'P', 0, 2, 4, 'a', '2021-08-27 11:50:35', '2021-08-27 11:50:35', NULL),
(11, 28, '2018-00116-TG-0', 'Fernan', 'Faranal', 'N', 0, 2, 4, 'a', '2021-08-27 11:51:31', '2021-08-27 11:51:31', NULL),
(12, 29, '2018-00163-TG-0', 'Jillian Noreen ', 'Fernandez', 'L', 0, 2, 4, 'a', '2021-08-27 11:52:49', '2021-08-27 11:52:49', NULL),
(13, 30, '2018-00121-TG-0', 'Crissa Mae', 'Galopo', 'B', 0, 2, 4, 'a', '2021-08-27 11:53:45', '2021-08-27 11:53:45', NULL),
(14, 31, '2018-00511-TG-0', 'Isher Kyle', 'Gonzales', 'M', 0, 2, 4, 'a', '2021-08-27 12:21:10', '2021-08-27 12:21:10', NULL),
(15, 32, '2018-00101-TG-0', 'Grant Horace ', 'Guarino', 'P', 0, 2, 4, 'a', '2021-08-27 12:22:32', '2021-08-27 12:22:32', NULL),
(16, 33, '2018-00507-TG-0', 'Eudrei', 'Hermoso', 'M', 0, 2, 4, 'a', '2021-08-27 12:23:48', '2021-08-27 12:23:48', NULL),
(17, 34, '2018-00123-TG-0', 'Mary Jean', 'Labastida', 'M', 0, 2, 4, 'a', '2021-08-27 12:24:59', '2021-08-27 12:24:59', NULL),
(18, 35, '2018-00105-TG-0', 'Hajji ', 'Luciano', 'J', 0, 2, 4, 'a', '2021-08-27 13:07:53', '2021-08-27 13:07:53', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `subjects`
--

CREATE TABLE `subjects` (
  `id` int(11) NOT NULL,
  `subj_code` varchar(255) NOT NULL,
  `subj_name` varchar(255) NOT NULL,
  `status` varchar(1) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `subjects`
--

INSERT INTO `subjects` (`id`, `subj_code`, `subj_name`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'COMP20033', 'Computer Programming 2', 'a', '0000-00-00 00:00:00', NULL, NULL),
(2, 'COMP20043', 'Discrete Structure 1', 'a', '0000-00-00 00:00:00', NULL, NULL),
(3, 'ICTE10023', 'Hardware/Software Installation and Maintenances', 'a', '0000-00-00 00:00:00', NULL, NULL),
(4, 'COMP20083', 'Object Oriented Programming', 'a', '0000-00-00 00:00:00', NULL, NULL),
(5, 'COMP20093', 'Information Management', 'a', '0000-00-00 00:00:00', NULL, NULL),
(6, 'COMP20143', 'Human Computer Interaction', 'a', '0000-00-00 00:00:00', NULL, NULL),
(7, 'COMP20193', 'Network Administration', 'a', '0000-00-00 00:00:00', NULL, NULL),
(8, 'INTE30023', 'Integrative Programming and Technologies 1', 'a', '0000-00-00 00:00:00', NULL, NULL),
(9, 'COMP20203', 'Quantitative Methods with Modelling and Simulation', 'a', '0000-00-00 00:00:00', NULL, NULL),
(10, 'COMP40033', 'Business Intelligence', 'a', '0000-00-00 00:00:00', NULL, NULL),
(11, 'COMP20163', 'Web Development', 'a', '0000-00-00 00:00:00', NULL, NULL),
(12, 'COMP20133', 'Applications Development and Emerging Technologies', 'a', '0000-00-00 00:00:00', NULL, NULL),
(13, 'COMP20243', 'System Analysis and Design', 'a', '0000-00-00 00:00:00', NULL, NULL),
(14, 'INTE30062', 'Information Assurance and Security 1', 'a', '0000-00-00 00:00:00', NULL, NULL),
(15, 'INTE30066', 'IT-Elective 2', 'a', '0000-00-00 00:00:00', NULL, NULL),
(16, 'ICTE10093', 'Capstone', 'a', '0000-00-00 00:00:00', NULL, NULL),
(17, 'COMP20213', 'Database Administration', 'a', '0000-00-00 00:00:00', NULL, NULL),
(18, 'COMP20293', 'Advance Programming', 'a', '0000-00-00 00:00:00', NULL, NULL),
(19, 'COMP20303', 'Software Engineering', 'a', '0000-00-00 00:00:00', NULL, NULL),
(20, 'ICTE10073', 'System Administration and Maintenance', 'a', '0000-00-00 00:00:00', NULL, NULL),
(21, 'ICTE30043', 'Multimedia', 'a', '0000-00-00 00:00:00', NULL, NULL),
(22, 'ICTE10083', 'IT Social and Professional Issues', 'a', '0000-00-00 00:00:00', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `suffixes`
--

CREATE TABLE `suffixes` (
  `id` int(11) NOT NULL,
  `suffix_name` varchar(255) NOT NULL,
  `status` varchar(1) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `suffixes`
--

INSERT INTO `suffixes` (`id`, `suffix_name`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Jr', 'a', '2021-06-02 21:29:43', '2021-06-29 10:30:01', NULL),
(2, 'I', 'a', '2021-06-02 21:29:54', '2021-06-02 21:29:54', NULL),
(3, 'II', 'a', '2021-06-02 21:29:59', '2021-06-02 21:29:59', NULL),
(4, 'III', 'a', '2021-06-02 21:30:07', '2021-06-02 21:30:07', NULL),
(5, 'Sr', 'a', '2021-06-02 21:30:12', '2021-06-02 21:30:12', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL,
  `role_id` bigint(20) NOT NULL,
  `first_name` varchar(100) NOT NULL,
  `last_name` varchar(100) NOT NULL,
  `m_initial` varchar(100) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(60) NOT NULL,
  `email` varchar(50) NOT NULL,
  `token` varchar(50) NOT NULL,
  `status` varchar(1) NOT NULL,
  `profile_image` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `role_id`, `first_name`, `last_name`, `m_initial`, `username`, `password`, `email`, `token`, `status`, `profile_image`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 'Ronilo', 'Lim', '', 'superadmin', '$2y$10$Or1J9XudXgyFhImEoCVP3.2uCCFx5JxjzOhsvgRN2Nm.5ufbcc8KO', '', '', 'a', '', '2021-06-19 19:15:38', NULL, NULL),
(2, 3, 'Joshua ', 'Capalaran', 'A', '2018-00256-TG-0', '$2y$10$rP3C0hw/veIxIGYtF/S3bubJ621OsIbYGNVqCzJyhK6BcHQ.YH.9K', '', '', 'a', '', '2021-08-26 00:27:18', '2021-08-26 18:43:46', NULL),
(3, 2, 'Gecilie', 'Almiranez', 'C', 'FA0006TG2009', '$2y$10$opSXku1RJeJpLacSM14MN.2t6cuttG.zuQNEDNqa5KrWDJLSo.gj2', '', '', 'a', '', '2021-08-26 00:30:31', '2021-08-26 01:07:14', NULL),
(4, 3, 'Jericho', 'Capalaran', 'A', '2021-00081-TG-0', '$2y$10$I256MC9eJ2k2ZHjrSNbihOQ10Ia5UOPay1rbStmKLZb8HigiABQhe', '', '', 'a', '', '2021-08-26 00:46:23', NULL, NULL),
(5, 3, 'Bryan', 'Laserna', 'S', '2018-00211-TG-0', '$2y$10$aiPEJj4Q5SL.cYDKQqLrO.15qn8ZKtQOLXoBlPKZlFMHaGEpose3m', '', '', 'a', '', '2021-08-26 20:36:03', '2021-08-27 12:29:42', NULL),
(6, 2, 'Elvin', 'Catantan', 'B', 'FA0001TG2014', '$2y$10$31R9czvJZkbg7p96lWFL1.gGH.np4VTtUZoFid8C.fs44rOZiYkpm', '', '', 'a', '', '2021-08-27 10:53:23', NULL, NULL),
(7, 2, 'Arlan', 'Deluta', 'D', 'FA0002TG2011', '$2y$10$RzwIb6EAiocLm3ktgqA2S.i7wGaZGSO22z/r6a9g./aHFtOP2Yp0y', '', '', 'a', '', '2021-08-27 10:56:37', NULL, NULL),
(8, 2, 'Larry', 'Aumentado', 'U', 'FA0002TMP2013', '$2y$10$/wD6rQL5TGIx2P92SagHgeEAjPqq5F/dLKOBRyIE3EJks2u.pINyq', '', '', 'a', '', '2021-08-27 10:57:54', NULL, NULL),
(9, 2, 'Ronald', 'Alayon', 'A', 'FA0005TG2010', '$2y$10$c9w3uThR/1fpftsS9r5Dq.mSlXmBebssQ/dwh.6ITdJJrCg5o4jqm', '', '', 'a', '', '2021-08-27 10:58:29', NULL, NULL),
(10, 2, 'Arnold ', 'Subastil', 'S', 'FA0008TG2014', '$2y$10$9tKv0wHjXG5YN2BlJEztAuEBYxW/hh8VpX1re2LOeRlJuELTV4jua', '', '', 'a', '', '2021-08-27 11:02:33', NULL, NULL),
(11, 2, 'May Gizelle', 'Galarce', 'G', 'FA0009TG2014', '$2y$10$rf6JHYgDdsNNmzQByjHzGOJAIv3vnzwemaZ8hsJgFKg7NI4ZyWzrq', '', '', 'a', '', '2021-08-27 11:03:21', NULL, NULL),
(12, 2, 'Gerino', 'Abelida', 'A', 'FA0013BN2011', '$2y$10$s9ulHbiJQS0nFFmBQLQTmuWwForUkzq3FCXkkUSkPbjrkGNYMLBBm', '', '', 'a', '', '2021-08-27 11:04:03', NULL, NULL),
(13, 2, 'Alliana', 'Alcantara', 'C', 'FA2015ALCANTARA', '$2y$10$MRiv9rQEwv6Yvod/Qu1gNuPikpkLWfsVE9QlBBsXEHiu7zEULD0Yy', '', '', 'a', '', '2021-08-27 11:04:51', NULL, NULL),
(14, 2, 'Marian', 'Arada', 'A', 'FA2015ARADA', '$2y$10$Uxg/hgkHMsnrGAlg5G6Au.Kf9KXN.InMeaCJesbJM2bhCAwQ7Kor2', '', '', 'a', '', '2021-08-27 11:05:22', NULL, NULL),
(15, 2, 'Anita ', 'Gorgonio', 'G', 'FA2015GORGONIO', '$2y$10$8cxN6muoIIuSMhH8hq1SKelxmMWBTMSSShBRawBhQQCvjqFPYBU6O', '', '', 'a', '', '2021-08-27 11:05:58', NULL, NULL),
(16, 2, 'Kayle Anne', 'Trigo', 'T', 'FA2015TRIGO', '$2y$10$.MIM57RhiBz8D5yavmmg1uGe73M95fCAS5TyfkGZkRe7V16HQd5P.', '', '', 'a', '', '2021-08-27 11:06:37', NULL, NULL),
(17, 2, 'Jomer ', 'Cabrera', 'C', 'FA2016TGTAGUIG02', '$2y$10$5wxZAID/ElZ1lEELGtyHzeswkTnZKIaoMo085cASiOGl7gpY/oftS', '', '', 'a', '', '2021-08-27 11:07:24', NULL, NULL),
(18, 2, 'Gina', 'Dela Cruz', 'D', 'FATEMP001', '$2y$10$dFNlQ8364ATrgVc6cJQaROzAxyWzw9qIGAAsmCLhxz4BLloQz3NX2', '', '', 'a', '', '2021-08-27 11:07:56', NULL, NULL),
(19, 2, 'Symbol John Rae', 'Tabios', 'T', 'TEMPACCT', '$2y$10$YfvLYEmuayL05RpcxkzI5eE3DT3Ib/1/md7n19GF4er38ufKYxo.W', '', '', 'a', '', '2021-08-27 11:08:38', NULL, NULL),
(20, 2, 'Almir', 'Almiranez', 'C', 'TEMPACCT3', '$2y$10$3JNzYtabtWmxsvSdB.SiHONgvT4RppzmNXM0TIsz80LCJFfe4PadC', '', '', 'a', '', '2021-08-27 11:09:11', NULL, NULL),
(21, 3, 'Russel', 'Claveria', 'M', '2018-00075-TG-0', '$2y$10$2T//hpR.aTYqfEolbm95We9gsx0oBumOkkqPLclGwlVNQ0M5dItty', '', '', 'a', '', '2021-08-27 11:45:04', NULL, NULL),
(22, 3, 'Earl Janiel', 'Compra', 'F', '2018-00190-TG-0', '$2y$10$jsucxal/jnfuQC/xkujrAu58y/F7o4HhADBJFG62uR2uvb0t0ArGe', '', '', 'a', '', '2021-08-27 11:45:55', NULL, NULL),
(23, 3, 'Joshua', 'Del Rosario', 'R', '2018-00099-TG-0', '$2y$10$30bDZiEbq3AA/csoSnV/9um80kO466Tg0C4TYxe8Fxt/paDDJL1A6', '', '', 'a', '', '2021-08-27 11:46:50', NULL, NULL),
(24, 3, 'Arwin Jay', 'Dela Rosa', 'S', '2018-00120-TG-0', '$2y$10$h8tCOCZGyX5fSK76vxvunucWOIGlTbVi5gGq3re1xuFJBW6W0SBli', '', '', 'a', '', '2021-08-27 11:47:40', NULL, NULL),
(25, 3, 'John Patrick', 'Efondo', 'D', '2018-00150-TG-0', '$2y$10$4MsiQ9ogISXr7gGQmSReSeMAIV.KkuQaW2LsQp7i9AQSXqDDOFvZO', '', '', 'a', '', '2021-08-27 11:48:44', NULL, NULL),
(26, 3, 'Vincent Rafael ', 'Espiritu', 'B', '2018-00171-TG-0', '$2y$10$KTLbS8MzyScjJJKjudePI.jek39yHvqoJ0shVbvQMAJpaAaEZHGI.', '', '', 'a', '', '2021-08-27 11:49:42', NULL, NULL),
(27, 3, 'Jojemar', 'Exala', 'P', '2018-00070-TG-0', '$2y$10$wTun3o1wNNKx4Gk9dX0jwe700EOO2BO2dOGi90mqdZ8Fmj4dMOx/C', '', '', 'a', '', '2021-08-27 11:50:35', NULL, NULL),
(28, 3, 'Fernan', 'Faranal', 'N', '2018-00116-TG-0', '$2y$10$KjGbSg8Ukfu.5BB/G1MvneMcHxxCCK6.Xog1B.zsC3l7fHkvS4s5a', '', '', 'a', '', '2021-08-27 11:51:31', NULL, NULL),
(29, 3, 'Jillian Noreen ', 'Fernandez', 'L', '2018-00163-TG-0', '$2y$10$tT0ZeuKoFAm9urzH9qg8beRE8Ui7dd8tEZazGd84qGQDIvkGRycnq', '', '', 'a', '', '2021-08-27 11:52:49', NULL, NULL),
(30, 3, 'Crissa Mae', 'Galopo', 'B', '2018-00121-TG-0', '$2y$10$LHXKN8bijakFdjOgrqs8F.gcFfJ1gH3KKAS2oyDpiTje3/rI.0NGe', '', '', 'a', '', '2021-08-27 11:53:44', NULL, NULL),
(31, 3, 'Isher Kyle', 'Gonzales', 'M', '2018-00511-TG-0', '$2y$10$ela6//6HlpMvrbWANrEyxe2XuhBt9/JUj15yBgbXno3V03UCWczYu', '', '', 'a', '', '2021-08-27 12:21:10', NULL, NULL),
(32, 3, 'Grant Horace ', 'Guarino', 'P', '2018-00101-TG-0', '$2y$10$9yRDptqXhfojYaKo6UkBz.uAySdoqnH3MbzvGV3MwEBYqCFUX7no6', '', '', 'a', '', '2021-08-27 12:22:32', NULL, NULL),
(33, 3, 'Eudrei', 'Hermoso', 'M', '2018-00507-TG-0', '$2y$10$MJBrTJIxOtzSF7VdHGQoy.Nlqb1tUWx6M7o1xj8PaEGNMW.cvH1NC', '', '', 'a', '', '2021-08-27 12:23:48', NULL, NULL),
(34, 3, 'Mary Jean', 'Labastida', 'M', '2018-00123-TG-0', '$2y$10$r19vp/rIkdEZcfqPA/ks5egypZmGd1zuOTmVapjhIHZPP4C7RqP5y', '', '', 'a', '', '2021-08-27 12:24:59', NULL, NULL),
(35, 3, 'Hajji ', 'Luciano', 'J', '2018-00105-TG-0', '$2y$10$ugBQ.xQJMZgJKjM5UsXlv.uPTON03KuY1njwevcwoPVcuTqukESA6', '', '', 'a', '', '2021-08-27 13:07:52', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `visitors`
--

CREATE TABLE `visitors` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `purpose` varchar(255) NOT NULL,
  `others` text NOT NULL,
  `lab_id` int(11) NOT NULL,
  `event_id` int(11) DEFAULT NULL,
  `date` date NOT NULL,
  `time_in` time NOT NULL,
  `time_out` time DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `activity_logs`
--
ALTER TABLE `activity_logs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `attendances`
--
ALTER TABLE `attendances`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `capacities`
--
ALTER TABLE `capacities`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `courses`
--
ALTER TABLE `courses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `holiday`
--
ALTER TABLE `holiday`
  ADD PRIMARY KEY (`id`),
  ADD KEY `unique_holliday` (`name`);

--
-- Indexes for table `labs`
--
ALTER TABLE `labs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `modules`
--
ALTER TABLE `modules`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `professors`
--
ALTER TABLE `professors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `prof_attendance`
--
ALTER TABLE `prof_attendance`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `schedlabs`
--
ALTER TABLE `schedlabs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `schedsubjs`
--
ALTER TABLE `schedsubjs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `schoolyears`
--
ALTER TABLE `schoolyears`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sections`
--
ALTER TABLE `sections`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `semesters`
--
ALTER TABLE `semesters`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subjects`
--
ALTER TABLE `subjects`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `suffixes`
--
ALTER TABLE `suffixes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_role_id` (`role_id`);

--
-- Indexes for table `visitors`
--
ALTER TABLE `visitors`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `activity_logs`
--
ALTER TABLE `activity_logs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `attendances`
--
ALTER TABLE `attendances`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `capacities`
--
ALTER TABLE `capacities`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `courses`
--
ALTER TABLE `courses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `holiday`
--
ALTER TABLE `holiday`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `labs`
--
ALTER TABLE `labs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `modules`
--
ALTER TABLE `modules`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `professors`
--
ALTER TABLE `professors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `prof_attendance`
--
ALTER TABLE `prof_attendance`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `schedlabs`
--
ALTER TABLE `schedlabs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `schedsubjs`
--
ALTER TABLE `schedsubjs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `schoolyears`
--
ALTER TABLE `schoolyears`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `sections`
--
ALTER TABLE `sections`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `semesters`
--
ALTER TABLE `semesters`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `subjects`
--
ALTER TABLE `subjects`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `suffixes`
--
ALTER TABLE `suffixes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `visitors`
--
ALTER TABLE `visitors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
