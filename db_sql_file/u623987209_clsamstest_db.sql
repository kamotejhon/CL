-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Oct 27, 2021 at 11:56 PM
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
-- Database: `u623987209_clsamstest_db`
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

--
-- Dumping data for table `activity_logs`
--

INSERT INTO `activity_logs` (`id`, `user_id`, `description`, `properties`, `data`, `created_at`, `updated_at`, `deleted_at`) VALUES
(10, 1, 'Restore School year', 'admin/schoolyears', '6', '2021-07-07 22:26:34', '2021-07-07 22:26:34', NULL),
(11, 1, 'Edit School year', 'admin/schoolyears', '6', '2021-07-07 22:26:42', '2021-07-07 22:26:42', NULL),
(12, 1, 'Archived School year', 'admin/schoolyears', '6', '2021-07-08 13:37:25', '2021-07-08 13:37:25', NULL),
(13, 1, 'Edit Role', 'admin/roles', '1', '2021-07-12 19:29:32', '2021-07-12 19:29:32', NULL),
(14, 1, 'Add Sched Subject', 'admin/schedsubject', '{\"subject_id\":\"1\",\"course_id\":\"2\",\"section_id\":\"2\",\"lab_id\":\"3\",\"professor_id\":\"1\",\"start_time\":\"20:35\",\"semester_id\":\"2\",\"sy_id\":\"2\",\"day\":\"[\\\"Monday\\\",\\\"Thursday\\\"]\",\"end_time\":\"22:35\"}', '2021-07-12 20:38:17', '2021-07-12 20:38:17', NULL),
(15, 1, 'Add Sched Subject', 'admin/schedsubject', '{\"subject_id\":\"3\",\"course_id\":\"1\",\"section_id\":\"1\",\"lab_id\":\"1\",\"professor_id\":\"2\",\"start_time\":\"21:16\",\"semester_id\":\"1\",\"sy_id\":\"2\",\"day\":\"Monday,Wednesday\",\"end_time\":\"22:16\"}', '2021-07-12 21:16:27', '2021-07-12 21:16:27', NULL),
(16, 1, 'Add Sched lab', 'admin/schedlabs', '{\"lab_id\":\"3\",\"event_name\":\"Today\",\"assigned_person\":\"test\",\"num_people\":\"30\",\"category_id\":\"2\",\"date\":\"2021-07-13\",\"start_time\":\"01:29\",\"end_time\":\"13:30\"}', '2021-07-13 01:30:04', '2021-07-13 01:30:04', NULL),
(17, 1, 'Add Sched Subject', 'admin/schedsubject', '{\"subject_id\":\"2\",\"course_id\":\"1\",\"section_id\":\"1\",\"lab_id\":\"3\",\"professor_id\":\"2\",\"start_time\":\"\",\"category\":\"2\",\"semester_id\":\"1\",\"sy_id\":\"2\",\"date\":\"2021-07-13\",\"end_time\":\"\"}', '2021-07-15 09:43:36', '2021-07-15 09:43:36', NULL),
(18, 1, 'Add Sched Subject', 'admin/schedsubject', '{\"subject_id\":\"2\",\"course_id\":\"1\",\"section_id\":\"1\",\"lab_id\":\"1\",\"professor_id\":\"2\",\"start_time\":\"\",\"category\":\"2\",\"semester_id\":\"1\",\"sy_id\":\"2\",\"date\":\"2021-07-15\",\"end_time\":\"\"}', '2021-07-15 09:44:17', '2021-07-15 09:44:17', NULL),
(19, 1, 'Add Holiday', 'admin/holiday', '{\"name\":\"holiday\",\"date\":\"2021-07-20\"}', '2021-07-20 22:33:06', '2021-07-20 22:33:06', NULL),
(20, 1, 'Add Holiday', 'admin/holiday', '{\"name\":\"test\",\"date\":\"2021-12-31\"}', '2021-07-20 22:34:30', '2021-07-20 22:34:30', NULL),
(21, 1, 'Edit Holiday', 'admin/holiday', '2', '2021-07-20 22:35:26', '2021-07-20 22:35:26', NULL),
(22, 1, 'Archived Holiday', 'admin/holiday', '2', '2021-07-20 22:37:54', '2021-07-20 22:37:54', NULL),
(23, 1, 'Restore Holiday', 'admin/holiday', '2', '2021-07-20 22:37:59', '2021-07-20 22:37:59', NULL),
(24, 1, 'Edit Holiday', 'admin/holiday', '2', '2021-07-20 22:40:12', '2021-07-20 22:40:12', NULL),
(25, 1, 'Add Holiday', 'admin/holiday', '{\"name\":\"test2\",\"date\":\"2021-07-19\"}', '2021-07-20 23:20:34', '2021-07-20 23:20:34', NULL),
(26, 1, 'Add Sched Subject', 'admin/schedsubject', '{\"subject_id\":\"2\",\"course_id\":\"2\",\"section_id\":\"2\",\"lab_id\":\"3\",\"professor_id\":\"1\",\"start_time\":\"01:18\",\"category\":\"1\",\"semester_id\":\"1\",\"sy_id\":\"2\",\"date\":\"\",\"day\":\"Monday,Wednesday\",\"end_time\":\"03:18\"}', '2021-07-21 11:18:09', '2021-07-21 11:18:09', NULL),
(27, 1, 'Edit Sched Subject', 'admin/schedsubject', '8', '2021-07-21 11:48:38', '2021-07-21 11:48:38', NULL),
(28, 1, 'Edit Sched Subject', 'admin/schedsubject', '8', '2021-07-21 11:49:29', '2021-07-21 11:49:29', NULL),
(29, 1, 'Edit Role', 'admin/roles', '3', '2021-07-21 13:48:39', '2021-07-21 13:48:39', NULL),
(30, 1, 'Edit Users', 'admin/users', '2', '2021-07-22 20:40:51', '2021-07-22 20:40:51', NULL),
(31, 1, 'Edit Sched Subject', 'admin/schedsubject', '7', '2021-07-23 01:09:07', '2021-07-23 01:09:07', NULL),
(32, 1, 'Edit Sched Subject', 'admin/schedsubject', '7', '2021-07-23 01:10:35', '2021-07-23 01:10:35', NULL),
(33, 1, 'Edit Role', 'admin/roles', '2', '2021-07-23 16:22:37', '2021-07-23 16:22:37', NULL),
(34, 1, 'Edit Role', 'admin/roles', '3', '2021-07-23 23:51:38', '2021-07-23 23:51:38', NULL),
(35, 2, 'Edit Users', 'admin/users', '2', '2021-07-24 00:01:29', '2021-07-24 00:01:29', NULL),
(36, 1, 'Edit Users', 'admin/users', '2', '2021-07-24 00:14:34', '2021-07-24 00:14:34', NULL),
(37, 1, 'Edit Users', 'admin/users', '2', '2021-07-24 00:14:34', '2021-07-24 00:14:34', NULL),
(38, 1, 'Add Holiday', 'admin/holiday', '{\"name\":\"holiday\",\"date\":\"13-07\"}', '2021-07-27 19:10:18', '2021-07-27 19:10:18', NULL),
(39, 1, 'Add Sched lab', 'admin/schedlabs', '{\"lab_id\":\"2\",\"event_name\":\"test\",\"assigned_person\":\"asd\",\"num_people\":\"40\",\"category_id\":\"2\",\"date\":\"2021-07-13\",\"start_time\":\"19:46\",\"end_time\":\"19:46\"}', '2021-07-27 19:46:05', '2021-07-27 19:46:05', NULL),
(40, 1, 'Add Sched lab', 'admin/schedlabs', '{\"lab_id\":\"2\",\"event_name\":\"asd\",\"assigned_person\":\"as\",\"num_people\":\"40\",\"category_id\":\"1\",\"date\":\"2021-07-14\",\"start_time\":\"19:55\",\"end_time\":\"12:59\"}', '2021-07-27 19:55:17', '2021-07-27 19:55:17', NULL),
(41, 1, 'Add Sched lab', 'admin/schedlabs', '{\"lab_id\":\"2\",\"event_name\":\"1\",\"assigned_person\":\"asd\",\"num_people\":\"40\",\"category_id\":\"1\",\"date\":\"2021-07-14\",\"start_time\":\"19:56\",\"end_time\":\"19:58\"}', '2021-07-27 19:57:22', '2021-07-27 19:57:22', NULL),
(42, 1, 'Edit Users', 'admin/users', '2', '2021-07-27 23:40:17', '2021-07-27 23:40:17', NULL),
(43, 1, 'Edit Users', 'admin/users', '2', '2021-07-28 01:07:56', '2021-07-28 01:07:56', NULL),
(44, 1, 'Edit Users', 'admin/users', '2', '2021-07-28 01:08:59', '2021-07-28 01:08:59', NULL),
(45, 1, 'Edit Users', 'admin/users', '2', '2021-07-28 01:57:02', '2021-07-28 01:57:02', NULL),
(46, 1, 'Cancel Schedule Event', 'admin/schedules', '{\"id\":\"3\",\"lab_id\":\"3\",\"type\":\"lab\",\"date\":\"2021-07-27\"}', '2021-07-28 02:43:28', '2021-07-28 02:43:28', NULL),
(47, 1, 'Cancel Schedule Subject', 'admin/schedules', '{\"name\":\"cancel class\",\"schedsubj_id\":\"5\",\"date\":\"2021-06-28\",\"status\":\"c\"}', '2021-07-28 02:49:46', '2021-07-28 02:49:46', NULL),
(48, 1, 'Add Sched Subject', 'admin/schedsubject', '{\"subject_id\":\"1\",\"course_id\":\"1\",\"lab_id\":\"1\",\"start_time\":\"13:59\",\"professor_id\":\"1\",\"category\":\"1\",\"semester_id\":\"2\",\"sy_id\":\"2\",\"date\":\"2021-12-31\",\"day\":\"Monday\",\"end_time\":\"12:59\"}', '2021-07-28 02:54:44', '2021-07-28 02:54:44', NULL),
(49, 1, 'Add Sched Subject', 'admin/schedsubject', '{\"subject_id\":\"1\",\"course_id\":\"2\",\"section_id\":\"2\",\"lab_id\":\"1\",\"start_time\":\"\",\"professor_id\":\"3\",\"category\":\"2\",\"semester_id\":\"1\",\"sy_id\":\"2\",\"date\":\"\",\"end_time\":\"\"}', '2021-07-28 02:58:54', '2021-07-28 02:58:54', NULL),
(50, 1, 'Add Sched Subject', 'admin/schedsubject', '{\"subject_id\":\"3\",\"course_id\":\"4\",\"section_id\":\"2\",\"lab_id\":\"2\",\"start_time\":\"\",\"professor_id\":\"3\",\"category\":\"2\",\"semester_id\":\"1\",\"sy_id\":\"2\",\"date\":\"\",\"end_time\":\"\"}', '2021-07-28 03:03:32', '2021-07-28 03:03:32', NULL),
(51, 1, 'Add Sched Subject', 'admin/schedsubject', '{\"subject_id\":\"2\",\"course_id\":\"8\",\"section_id\":\"1\",\"lab_id\":\"2\",\"start_time\":\"\",\"professor_id\":\"1\",\"category\":\"2\",\"semester_id\":\"1\",\"sy_id\":\"2\",\"date\":\"2021-07-14\",\"end_time\":\"\"}', '2021-07-28 03:05:32', '2021-07-28 03:05:32', NULL),
(52, 1, 'Edit Sched Subject', 'admin/schedsubject', '12', '2021-07-28 03:12:20', '2021-07-28 03:12:20', NULL),
(53, 1, 'Edit Sched lab', 'admin/schedlabs', '3', '2021-07-28 03:15:04', '2021-07-28 03:15:04', NULL),
(54, 1, 'Edit Sched lab', 'admin/schedlabs', '3', '2021-07-28 03:15:19', '2021-07-28 03:15:19', NULL),
(55, 1, 'Cancel Schedule Subject', 'admin/schedules', '{\"name\":\"cancel class\",\"schedsubj_id\":\"12\",\"date\":\"2021-07-15\",\"status\":\"c\"}', '2021-07-28 03:15:38', '2021-07-28 03:15:38', NULL),
(56, 1, 'Cancel Schedule Subject', 'admin/schedules', '{\"name\":\"cancel class\",\"schedsubj_id\":\"7\",\"date\":\"2021-07-15\",\"status\":\"c\"}', '2021-07-28 03:15:47', '2021-07-28 03:15:47', NULL),
(57, 1, 'Add Users', 'admin/users', '{\"first_name\":\"test professor\",\"last_name\":\"2\",\"m_initial\":\"2\",\"username\":\"1231-23123-TG-1\",\"password\":\"1234\"}', '2021-07-28 03:37:46', '2021-07-28 03:37:46', NULL),
(58, 1, 'Add Users', 'admin/users', '{\"first_name\":\"prof\",\"last_name\":\"essor\",\"m_initial\":\"1\",\"username\":\"test\",\"password\":\"test\"}', '2021-07-28 03:44:47', '2021-07-28 03:44:47', NULL),
(59, 1, 'Add Users', 'admin/users', '{\"first_name\":\"prof\",\"last_name\":\"test\",\"m_initial\":\"test\",\"username\":\"test\",\"password\":\"test\"}', '2021-07-28 03:47:58', '2021-07-28 03:47:58', NULL),
(60, 1, 'Add Users', 'admin/users', '{\"first_name\":\"student\",\"last_name\":\"test\",\"m_initial\":\"a\",\"username\":\"test\",\"password\":\"test\"}', '2021-07-28 03:48:50', '2021-07-28 03:48:50', NULL),
(61, 1, 'Add Users', 'admin/users', '{\"first_name\":\"teset\",\"last_name\":\"test\",\"m_initial\":\"test\",\"username\":\"testest\",\"password\":\"teset\"}', '2021-07-28 12:29:11', '2021-07-28 12:29:11', NULL),
(62, 1, 'Add Users', 'admin/users', '{\"first_name\":\"test\",\"last_name\":\"53w\",\"m_initial\":\"t\",\"username\":\"tsettest\",\"password\":\"superadmin\"}', '2021-07-28 12:29:55', '2021-07-28 12:29:55', NULL),
(63, 1, 'Add Sched Subject', 'admin/schedsubject', '{\"subject_id\":\"3\",\"course_id\":\"4\",\"section_id\":\"1\",\"lab_id\":\"1\",\"start_time\":\"16:20\",\"professor_id\":\"3\",\"category\":\"1\",\"semester_id\":\"1\",\"sy_id\":\"2\",\"date\":\"\",\"day\":\"Monday\",\"end_time\":\"20:17\"}', '2021-08-06 16:17:18', '2021-08-06 16:17:18', NULL),
(64, 1, 'Add Sched Subject', 'admin/schedsubject', '{\"subject_id\":\"1\",\"course_id\":\"2\",\"section_id\":\"3\",\"lab_id\":\"1\",\"date\":\"\",\"day\":\"Monday\",\"end_time\":\"14:00\",\"category\":\"1\",\"semester_id\":\"1\",\"sy_id\":\"2\",\"professor_id\":\"2\",\"start_time\":\"13:00\"}', '2021-08-06 21:11:08', '2021-08-06 21:11:08', NULL),
(65, 1, 'Add Sched Subject', 'admin/schedsubject', '{\"subject_id\":\"1\",\"course_id\":\"2\",\"section_id\":\"2\",\"lab_id\":\"2\",\"date\":\"\",\"day\":\"Monday\",\"end_time\":\"21:12\",\"category\":\"1\",\"semester_id\":\"1\",\"sy_id\":\"2\",\"professor_id\":\"3\",\"start_time\":\"18:12\"}', '2021-08-06 21:12:50', '2021-08-06 21:12:50', NULL),
(66, 1, 'Add Sched Subject', 'admin/schedsubject', '{\"subject_id\":\"1\",\"course_id\":\"6\",\"section_id\":\"1\",\"lab_id\":\"2\",\"date\":\"\",\"day\":\"Thursday\",\"end_time\":\"6\",\"category\":\"1\",\"semester_id\":\"1\",\"sy_id\":\"2\",\"professor_id\":\"1\",\"start_time\":\"5\"}', '2021-08-06 21:15:36', '2021-08-06 21:15:36', NULL),
(67, 1, 'Add Sched lab', 'admin/schedlabs', '{\"lab_id\":\"2\",\"event_name\":\"Today\",\"assigned_person\":\"asd\",\"date\":\"2021-08-07\",\"end_time\":\"1\",\"category_id\":\"1\",\"num_people\":\"40\",\"start_time\":\"1\"}', '2021-08-06 22:30:25', '2021-08-06 22:30:25', NULL),
(68, 1, 'Add Sched Subject', 'admin/schedsubject', '{\"subject_id\":\"2\",\"course_id\":\"1\",\"section_id\":\"3\",\"lab_id\":\"2\",\"date\":\"\",\"day\":\"Tuesday\",\"end_time\":\"16:00\",\"category\":\"1\",\"semester_id\":\"2\",\"sy_id\":\"2\",\"professor_id\":\"3\",\"start_time\":\"03:15\"}', '2021-08-31 03:15:53', '2021-08-31 03:15:53', NULL),
(69, 1, 'Edit Student', 'admin/students', '4', '2021-08-31 03:16:51', '2021-08-31 03:16:51', NULL),
(70, 1, 'Edit Student', 'admin/students', '10', '2021-08-31 03:17:11', '2021-08-31 03:17:11', NULL),
(71, 1, 'Edit Sched Subject', 'admin/schedsubject', '18', '2021-08-31 03:19:59', '2021-08-31 03:19:59', NULL),
(72, 1, 'Edit Student', 'admin/students', '2', '2021-08-31 03:23:02', '2021-08-31 03:23:02', NULL),
(73, 1, 'Archive Users', 'admin/users', '14', '2021-08-31 03:39:45', '2021-08-31 03:39:45', NULL),
(74, 1, 'Add Users', 'admin/users', '{\"first_name\":\"Joshua \",\"last_name\":\"Capalaran\",\"m_initial\":\"A\",\"username\":\"2018-00256-TG-0\",\"password\":\"123456\",\"section_id\":\"3\",\"course_id\":\"1\"}', '2021-08-31 03:40:59', '2021-08-31 03:40:59', NULL),
(75, 17, 'Edit Users', 'admin/users/change-password/17', '17', '2021-08-31 03:47:20', '2021-08-31 03:47:20', NULL),
(76, 1, 'Add Sched lab', 'admin/schedlabs', '{\"lab_id\":\"2\",\"event_name\":\"Knights of Honor\",\"assigned_person\":\"Joshua Capalaran\",\"date\":\"2021-06-13\",\"end_time\":\"15:59\",\"category_id\":\"2\",\"num_people\":\"40\",\"start_time\":\"03:59\"}', '2021-08-31 03:59:49', '2021-08-31 03:59:49', NULL),
(77, 1, 'Add Holiday', 'admin/holiday', '{\"name\":\"omrts\",\"date\":\"11-25\"}', '2021-08-31 04:00:37', '2021-08-31 04:00:37', NULL),
(78, 1, 'Add Sched lab', 'admin/schedlabs', '{\"lab_id\":\"1\",\"event_name\":\"Programming Training \",\"assigned_person\":\"Joshua Capalaran\",\"date\":\"2021-11-25\",\"end_time\":\"17:00\",\"category_id\":\"2\",\"num_people\":\"41\",\"start_time\":\"04:17\"}', '2021-08-31 04:01:43', '2021-08-31 04:01:43', NULL),
(79, 1, 'Edit School year', 'admin/schoolyears', '2', '2021-08-31 04:11:41', '2021-08-31 04:11:41', NULL),
(80, 1, 'Edit Sched lab', 'admin/schedlabs', '10', '2021-08-31 04:14:45', '2021-08-31 04:14:45', NULL),
(81, 1, 'Edit Holiday', 'admin/holiday', '30', '2021-09-10 04:22:55', '2021-09-10 04:22:55', NULL),
(82, 1, 'Add Sched lab', 'admin/schedlabs', '{\"lab_id\":\"1\",\"event_name\":\"Health Seminar\",\"assigned_person\":\"Lessa Anne Pascubillo\",\"date\":\"2021-11-10\",\"end_time\":\"12:00\",\"category_id\":\"2\",\"num_people\":\"41\",\"start_time\":\"11:00\"}', '2021-09-10 04:24:48', '2021-09-10 04:24:48', NULL),
(83, 1, 'Edit Sched lab', 'admin/schedlabs', '10', '2021-09-10 04:31:41', '2021-09-10 04:31:41', NULL),
(84, 1, 'Edit Users', 'admin/users', '9', '2021-09-16 05:22:39', '2021-09-16 05:22:39', NULL),
(85, 1, 'Edit Sched lab', 'admin/schedlabs', '12', '2021-09-16 05:26:18', '2021-09-16 05:26:18', NULL),
(86, 1, 'Edit Holiday', 'admin/holiday', '30', '2021-09-16 05:38:48', '2021-09-16 05:38:48', NULL),
(87, 1, 'Edit Student', 'admin/students', '2', '2021-09-20 03:01:44', '2021-09-20 03:01:44', NULL),
(88, 1, 'Restore School year', 'admin/schoolyears', '1', '2021-10-06 10:52:52', '2021-10-06 10:52:52', NULL),
(89, 1, 'Edit School year', 'admin/schoolyears', '6', '2021-10-06 11:10:39', '2021-10-06 11:10:39', NULL),
(90, 1, 'Add Holiday', 'admin/holiday', '{\"name\":\"My Holiday\",\"date\":\"11-27\"}', '2021-10-10 01:36:03', '2021-10-10 01:36:03', NULL),
(91, 1, 'Archived Holiday', 'admin/holiday', '31', '2021-10-10 01:36:19', '2021-10-10 01:36:19', NULL),
(92, 1, 'Archive Student', 'admin/students', '11', '2021-10-10 01:36:48', '2021-10-10 01:36:48', NULL),
(93, 1, 'Restore Student', 'admin/students', '11', '2021-10-10 01:36:53', '2021-10-10 01:36:53', NULL),
(94, 1, 'Add School year', 'admin/semesters/add', '{\"sem\":\"4th Semester\"}', '2021-10-10 01:37:16', '2021-10-10 01:37:16', NULL),
(95, 1, 'Edit School year', 'admin/semesters/edit', '4', '2021-10-10 01:37:31', '2021-10-10 01:37:31', NULL),
(96, 1, 'Archive School year', 'admin/semesters/delete', '4', '2021-10-10 01:37:35', '2021-10-10 01:37:35', NULL),
(97, 1, 'Edit Lab', 'admin/labs', '4', '2021-10-10 01:39:54', '2021-10-10 01:39:54', NULL),
(98, 1, 'Restore School year', 'admin/schoolyears', '6', '2021-10-10 03:03:17', '2021-10-10 03:03:17', NULL),
(99, 1, 'Edit Subject', 'admin/subjects', '1', '2021-10-10 03:43:00', '2021-10-10 03:43:00', NULL),
(100, 1, 'Add Role', 'admin/roles', '{\"role_name\":\"Police\",\"description\":\"Police University\",\"function_id\":\"3\"}', '2021-10-14 16:49:56', '2021-10-14 16:49:56', NULL),
(101, 1, 'Edit Role', 'admin/roles', '6', '2021-10-14 16:50:08', '2021-10-14 16:50:08', NULL),
(102, 1, 'Cancel Schedule Event', 'admin/schedules', '{\"id\":\"8\",\"lab_id\":\"8\",\"type\":\"lab\",\"date\":\"2021-08-06\"}', '2021-10-18 17:03:33', '2021-10-18 17:03:33', NULL),
(103, 1, 'Cancel Schedule Event', 'admin/schedules', '{\"id\":\"9\",\"lab_id\":\"9\",\"type\":\"lab\",\"date\":\"2021-08-07\"}', '2021-10-18 17:03:33', '2021-10-18 17:03:33', NULL),
(104, 1, 'Cancel Schedule Event', 'admin/schedules', '{\"id\":\"8\",\"lab_id\":\"8\",\"type\":\"lab\",\"date\":\"2021-08-06\"}', '2021-10-18 17:03:33', '2021-10-18 17:03:33', NULL),
(105, 1, 'Cancel Schedule Event', 'admin/schedules', '{\"id\":\"12\",\"lab_id\":\"12\",\"type\":\"lab\",\"date\":\"2021-09-16\"}', '2021-10-18 17:03:48', '2021-10-18 17:03:48', NULL),
(106, 1, 'Edit Users', 'admin/users', '1', '2021-10-20 09:10:03', '2021-10-20 09:10:03', NULL),
(107, 1, 'Add Sched lab', 'admin/schedlabs', '{\"lab_id\":\"2\",\"event_name\":\"general assemblya\",\"assigned_person\":\"Jimmy Neutron\",\"date\":\"2021-10-20\",\"end_time\":\"00:00\",\"category_id\":\"2\",\"num_people\":\"40\",\"start_time\":\"22:00\"}', '2021-10-20 09:25:53', '2021-10-20 09:25:53', NULL),
(108, 1, 'Edit Sched lab', 'admin/schedlabs', '8', '2021-10-20 09:36:19', '2021-10-20 09:36:19', NULL),
(109, 1, 'Add Sched lab', 'admin/schedlabs', '{\"lab_id\":\"2\",\"event_name\":\"Seminar 1\",\"assigned_person\":\"John Andrew\",\"date\":\"2021-10-21\",\"end_time\":\"11:49\",\"category_id\":\"2\",\"num_people\":\"40\",\"start_time\":\"01:46\"}', '2021-10-21 11:46:12', '2021-10-21 11:46:12', NULL),
(110, 1, 'Edit Sched lab', 'admin/schedlabs', '9', '2021-10-21 11:54:36', '2021-10-21 11:54:36', NULL),
(111, 1, 'Add Holiday', 'admin/holiday', '{\"name\":\"Christmas\",\"date\":\"12-25\"}', '2021-10-21 11:55:04', '2021-10-21 11:55:04', NULL),
(112, 1, 'Edit Users', 'admin/users', '17', '2021-10-21 12:15:26', '2021-10-21 12:15:26', NULL),
(113, 1, 'Edit Users', 'admin/users', '18', '2021-10-21 12:20:49', '2021-10-21 12:20:49', NULL),
(114, 1, 'Edit Category', 'admin/categories/edit/', '1', '2021-10-21 12:25:39', '2021-10-21 12:25:39', NULL),
(115, 1, 'Add Sched lab', 'admin/schedlabs', '{\"lab_id\":\"1\",\"event_name\":\"Meeting of Board of Regents in PUP Taguig\",\"assigned_person\":\"Ms. Gina Dela Cruz\",\"date\":\"2021-10-21\",\"end_time\":\"15:00\",\"category_id\":\"1\",\"num_people\":\"41\",\"start_time\":\"12:00\"}', '2021-10-21 12:26:43', '2021-10-21 12:26:43', NULL),
(116, 1, 'Add Sched Subject', 'admin/schedsubject', '{\"subject_id\":\"2\",\"course_id\":\"3\",\"section_id\":\"1\",\"lab_id\":\"1\",\"date\":\"\",\"day\":\"Monday\",\"end_time\":\"12:42\",\"category\":\"1\",\"semester_id\":\"1\",\"sy_id\":\"1\",\"professor_id\":\"1\",\"start_time\":\"13:40\"}', '2021-10-21 12:40:32', '2021-10-21 12:40:32', NULL),
(117, 1, 'Edit Sched lab', 'admin/schedlabs', '1', '2021-10-21 13:11:46', '2021-10-21 13:11:46', NULL),
(118, 1, 'Cancel Schedule Event', 'admin/schedules', '{\"id\":\"1\",\"lab_id\":\"1\",\"type\":\"lab\",\"date\":\"2021-10-21\"}', '2021-10-21 13:13:10', '2021-10-21 13:13:10', NULL),
(119, 1, 'Add Sched lab', 'admin/schedlabs', '{\"lab_id\":\"1\",\"event_name\":\"Knights of Honor\",\"assigned_person\":\"Joshua Capalaran\",\"date\":\"2021-10-21\",\"end_time\":\"18:00\",\"category_id\":\"2\",\"num_people\":\"41\",\"start_time\":\"16:00\"}', '2021-10-21 13:15:45', '2021-10-21 13:15:45', NULL),
(120, 1, 'Cancel Schedule Event', 'admin/schedules', '{\"id\":\"2\",\"lab_id\":\"2\",\"type\":\"lab\",\"date\":\"2021-10-21\"}', '2021-10-21 13:16:25', '2021-10-21 13:16:25', NULL),
(121, 1, 'Archive Sched lab', 'admin/schedlabs', '1', '2021-10-21 13:16:41', '2021-10-21 13:16:41', NULL),
(122, 1, 'Archive Sched lab', 'admin/schedlabs', '2', '2021-10-21 13:16:46', '2021-10-21 13:16:46', NULL),
(123, 1, 'Restore Sched lab', 'admin/schedlabs', '1', '2021-10-21 13:16:50', '2021-10-21 13:16:50', NULL),
(124, 1, 'Restore Sched lab', 'admin/schedlabs', '2', '2021-10-21 13:16:55', '2021-10-21 13:16:55', NULL),
(125, 1, 'Add Sched Subject', 'admin/schedsubject', '{\"subject_id\":\"1\",\"course_id\":\"1\",\"section_id\":\"1\",\"lab_id\":\"1\",\"date\":\"\",\"day\":\"Friday\",\"end_time\":\"17:00\",\"category\":\"1\",\"semester_id\":\"1\",\"sy_id\":\"1\",\"professor_id\":\"3\",\"start_time\":\"13:00\"}', '2021-10-21 13:18:57', '2021-10-21 13:18:57', NULL),
(126, 1, 'Edit Sched Subject', 'admin/schedsubject', '20', '2021-10-21 13:21:52', '2021-10-21 13:21:52', NULL),
(127, 1, 'Add Sched Subject', 'admin/schedsubject', '{\"subject_id\":\"1\",\"course_id\":\"1\",\"section_id\":\"3\",\"lab_id\":\"1\",\"date\":\"\",\"day\":\"Thursday\",\"end_time\":\"15:00\",\"category\":\"1\",\"semester_id\":\"2\",\"sy_id\":\"1\",\"professor_id\":\"3\",\"start_time\":\"13:00\"}', '2021-10-21 13:36:29', '2021-10-21 13:36:29', NULL),
(128, 1, 'Add Holiday', 'admin/holiday', '{\"name\":\"Holiday #1\",\"date\":\"11-01\"}', '2021-10-21 13:40:34', '2021-10-21 13:40:34', NULL),
(129, 1, 'Add Sched lab', 'admin/schedlabs', '{\"lab_id\":\"1\",\"event_name\":\"Knights of Honor\",\"assigned_person\":\"Joshua Capalaran\",\"date\":\"2021-11-01\",\"end_time\":\"14:00\",\"category_id\":\"2\",\"num_people\":\"41\",\"start_time\":\"13:00\"}', '2021-10-21 13:41:16', '2021-10-21 13:41:16', NULL),
(130, 1, 'Add Sched lab', 'admin/schedlabs', '{\"lab_id\":\"1\",\"event_name\":\"Health Declaration Seminar\",\"assigned_person\":\"Crisologo Lapitan IV\",\"date\":\"2021-10-21\",\"end_time\":\"14:00\",\"category_id\":\"2\",\"num_people\":\"41\",\"start_time\":\"13:00\"}', '2021-10-21 13:43:32', '2021-10-21 13:43:32', NULL),
(131, 1, 'Edit Sched lab', 'admin/schedlabs', '4', '2021-10-21 13:44:08', '2021-10-21 13:44:08', NULL),
(132, 1, 'Edit Sched Subject', 'admin/schedsubject', '21', '2021-10-25 17:22:42', '2021-10-25 17:22:42', NULL),
(133, 1, 'Add Sched lab', 'admin/schedlabs', '{\"lab_id\":\"2\",\"event_name\":\"test\",\"assigned_person\":\"asd\",\"date\":\"2021-11-01\",\"end_time\":\"01:00\",\"category_id\":\"1\",\"num_people\":\"40\",\"start_time\":\"01:00\"}', '2021-10-25 23:19:57', '2021-10-25 23:19:57', NULL),
(134, 1, 'Edit Sched Subject', 'admin/schedsubject', '21', '2021-10-28 06:46:17', '2021-10-28 06:46:17', NULL);

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

--
-- Dumping data for table `attendances`
--

INSERT INTO `attendances` (`id`, `schedule_id`, `lab_id`, `student_number`, `student_id`, `subject_id`, `date`, `time_in`, `time_out`, `remarks`, `created_at`, `updated_at`, `deleted_at`) VALUES
(54, 16, 0, '2015-00327-TG-0', 2, 0, '2021-08-01', '00:12:12', '01:31:18', 'late', '2021-08-08 00:12:12', NULL, NULL),
(55, 17, 0, '2015-00327-TG-0', 2, 0, '2021-08-05', '01:49:54', NULL, 'late', '2021-08-08 01:49:54', NULL, NULL),
(56, 17, 0, '2015-00323-TG-0', 10, 0, '2021-08-05', '01:55:12', NULL, 'late', '2021-08-08 01:55:12', NULL, NULL),
(57, 18, 0, '2015-00256-TG-0', 4, 2, '2021-08-31', '03:21:29', '04:12:47', 'late', '2021-08-31 03:21:29', NULL, NULL),
(58, 18, 0, '2015-00327-TG-0', 2, 2, '2021-08-31', '03:23:29', '04:13:16', 'late', '2021-08-31 03:23:29', NULL, NULL),
(59, 21, 0, '2018-00256-TG-0', 15, 1, '2021-10-21', '13:44:50', '13:46:00', 'late', '2021-10-21 13:44:50', NULL, NULL),
(60, 21, 0, '2015-00327-TG-0', 2, 1, '2021-10-21', '13:47:05', '13:48:43', 'late', '2021-10-21 13:47:05', NULL, NULL),
(61, 21, 0, '2015-00256-TG-0', 4, 0, '2021-10-21', NULL, NULL, 'absent', '2021-10-21 15:00:38', NULL, NULL),
(62, 21, 0, '2015-00323-TG-0', 10, 0, '2021-10-21', NULL, NULL, 'absent', '2021-10-21 15:01:38', NULL, NULL),
(63, 21, 0, '2018-00256-TG-0', 15, 1, '2021-10-28', '06:46:56', '06:47:10', 'late', '2021-10-28 06:46:56', NULL, NULL);

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
(1, 2, 41, 'a', '2021-06-02 21:48:46', '2021-06-29 07:52:41', NULL),
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
(1, 'Meeting', 'a', '2021-06-02 21:40:56', '2021-10-20 23:25:39', NULL),
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
(39, 'Holiday #1', '11-01', 0, 0, 'a', '2021-10-21 00:40:34', '2021-10-21 00:40:34', '0000-00-00 00:00:00');

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
(2, 'DOST', 'a', '2021-06-02 20:40:13', '2021-06-02 20:40:13', NULL),
(3, 'DOST 2', 'a', '2021-06-15 16:26:35', '2021-06-15 16:26:35', NULL),
(4, 'APEC', 'd', '2021-06-29 07:33:54', '2021-10-09 12:39:54', NULL);

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
(6, 'Calendar', 'Calendar', ' <i class=\"fas fa-calendar-alt\"></i>', 6, 'admin/schedules', 0, 'a', '2021-06-30 15:13:57', NULL, NULL),
(7, 'Reports', 'Reports', ' <i class=\"fas fa-file-download\"></i>', 7, 'admin/attendance', 0, 'a', '2021-06-30 19:13:09', NULL, NULL),
(8, 'Holiday', 'Holiday', ' <i class=\"fas fa-calendar-times\"></i>', 8, 'admin/holiday', 0, 'a', '2021-07-20 22:03:25', NULL, NULL),
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
(1, 'add_school_year', 'Add School Year', 'add_school_year', '<i class=\"fas fa-plus-square nav-icon\"></i>', 'add_school_year', 'Add School Year', 4, 'admin/schoolyears', '1', '[1]', 1, 'a', 1, '2021-06-20 12:59:27', '2021-10-10 01:17:58', NULL),
(3, 'home', 'view home page', 'home', '<i class=\"nav-icon fas fa-home\"></i>', 'home', 'Home', 1, 'admin/home', '1', '[1,6]', 1, 'a', 1, '2021-06-20 16:54:13', '2021-10-10 01:17:58', NULL),
(4, 'permission', 'view permissions', 'permission', NULL, 'user permission', 'user permission', 2, 'admin/permissions', '1', '[1]', 1, 'a', 1, '2021-06-20 16:57:52', '2021-10-10 01:17:58', NULL),
(5, 'user role', 'view roles', 'user role', NULL, 'user role', 'user role', 3, 'admin/role', '1', '[1]', 1, 'a', 1, '2021-06-20 16:59:19', '2021-10-10 01:17:58', NULL),
(6, 'schedule event', ' Schedule Event', 'schedule event', '<i class=\"fas fa-calendar-alt\"></i>', 'schedule event', 'schedule event', 5, 'admin/schedlabs', NULL, '[1,2]', 1, 'a', 1, '2021-06-20 17:00:15', '2021-10-10 01:17:58', NULL),
(7, 'Add Subject', 'Add Subject', 'Add Subject', '<i class=\"fas fa-plus-square nav-icon\"></i>', 'Add Subject', 'Add Subject', 4, 'admin/subjects', NULL, '[1]', 2, 'a', 1, '2021-06-20 17:09:48', '2021-10-10 01:17:58', NULL),
(8, 'Add Courses', 'Add Courses', 'Add Courses', '<i class=\"fas fa-plus-square nav-icon\"></i>', 'Add Courses', 'Add Courses', 4, 'admin/courses', NULL, '[1]', 3, 'a', 1, '2021-06-20 17:12:41', '2021-10-10 01:17:58', NULL),
(9, 'Add Sections', 'Add Sections', 'Add Sections', '<i class=\"fas fa-plus-square nav-icon\"></i>', 'Add Sections', 'Add Sections', 4, 'admin/sections', NULL, '[1]', 4, 'a', 1, '2021-06-20 17:13:51', '2021-10-10 01:17:58', NULL),
(10, 'Add Semester', 'Add Semester', 'Add Semester', '<i class=\"fas fa-plus-square nav-icon\"></i>', 'Add Semester', 'Add Semester', 4, 'admin/semesters', NULL, '[1]', 5, 'a', 1, '2021-06-20 17:15:29', '2021-10-10 01:17:58', NULL),
(11, 'Add lab', 'Add lab', 'Add lab', '<i class=\"fas fa-plus-square nav-icon\"></i>', 'Add lab', 'Add lab', 4, 'admin/labs', NULL, '[1]', 6, 'a', 1, '2021-06-20 17:18:06', '2021-10-10 01:17:58', NULL),
(12, 'Add Capacity', 'Add Capacity', 'Add Capacity', '<i class=\"fas fa-plus-square nav-icon\"></i>', 'Add Capacity', 'Add Capacity', 4, 'admin/capacities', NULL, '[1]', 7, 'a', 1, '2021-06-20 17:19:31', '2021-10-10 01:17:58', NULL),
(13, 'Add Category', 'Add Category', 'Add Category', '<i class=\"fas fa-plus-square nav-icon\"></i>', 'Add Category', 'Add Category', 4, 'admin/categories', NULL, '[1]', 8, 'a', 1, '2021-06-20 17:20:26', '2021-10-10 01:17:58', NULL),
(14, 'Add Suffix', 'Add Suffix', 'Add Suffix', '<i class=\"fas fa-plus-square nav-icon\"></i>', 'Add Suffix', 'Add Suffix', 4, 'admin/suffixes', NULL, '[1]', 9, 'a', 1, '2021-06-20 17:21:26', '2021-10-10 01:17:58', NULL),
(15, 'Students', 'Students', 'Students', '<i class=\"nav-icon fas fa-user-graduate\"></i>', 'Students', 'Students', 9, 'admin/students', NULL, '[1]', 2, 'a', 1, '2021-06-20 17:47:15', '2021-10-10 01:17:58', NULL),
(16, 'Professors', 'Professors', 'Professors', '<i class=\"nav-icon fas fa-fw fa-user-tie\"></i>', 'Professors', 'Professors', 9, 'admin/professors', NULL, '[1]', 3, 'a', 1, '2021-06-20 18:02:04', '2021-10-10 01:17:58', NULL),
(17, 'Visitors', 'Visitors', 'Visitors', '<i class=\"nav-icon fas fa-users\"></i>', 'Visitors', 'Visitors', 9, 'admin/visitors', NULL, '[1]', 4, 'a', 1, '2021-06-20 18:05:49', '2021-10-10 01:17:58', NULL),
(20, 'schedule Class', 'Schedule Class', 'schedule class', ' <i class=\"far fa-calendar-check\"></i>', 'schedule class', 'schedule class', 5, 'admin/schedsubject', NULL, '[1,2]', 2, 'a', 1, '2021-06-23 17:42:21', '2021-10-10 01:17:58', NULL),
(21, 'users', 'users', 'users', '<i class=\"nav-icon fas fa-fw fa-user\"></i>', 'users', 'users', 9, 'admin/users', NULL, '[1]', 1, 'a', 1, '2021-06-30 13:17:48', '2021-10-10 01:17:58', NULL),
(22, 'view schedules', 'view schedules', 'view schedules', '<i class=\"fas fa-calendar-alt\"></i>', 'view schedules', 'view schedules', 6, 'admin/schedules', NULL, '[1]', 1, 'a', 1, '2021-06-30 15:24:24', '2021-10-10 01:17:58', NULL),
(23, 'view attendance', 'view attendance', 'view attendance', NULL, 'view attendance', 'view attendance', 7, 'admin/attendance', NULL, '[1]', 1, 'a', 1, '2021-06-30 19:38:43', '2021-10-10 01:17:58', NULL),
(24, 'Activity Logs', 'Activity Logs', 'Activity Logs', ' <i class=\"fas fa-history\"></i>', 'Activity Logs', 'Activity Logs', 9, 'admin/activity', NULL, '[1]', 5, 'a', 1, '2021-07-08 12:29:28', '2021-10-10 01:17:58', NULL),
(25, 'view holiday', 'view holiday', 'view holiday', NULL, 'view holiday', 'view holiday', 8, 'admin/holiday', NULL, '[1]', 8, 'a', 1, '2021-07-20 22:08:03', '2021-10-10 01:17:58', NULL),
(26, 'view profile', 'view profile', 'view profile', NULL, 'view profile', 'view profile', 10, 'admin/profile', NULL, '[2,3]', 1, 'a', 1, '2021-07-23 23:49:33', '2021-10-10 01:17:58', NULL);

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
(1, 0, 'FA12345', 'Joshua', 'Capalaran', 'B', 6, 'a', '2021-06-02 19:32:18', '2021-06-29 11:23:11', NULL),
(2, 0, 'FA5678910', 'Gecilie', 'Almiranez', 'C', 6, 'a', '2021-06-15 15:45:49', '2021-06-17 08:19:06', NULL),
(3, 0, '2010-00123-TG-0', 'Blance', 'Sanchez', 'C', 0, 'a', '2021-06-15 16:06:41', '2021-06-15 16:06:41', NULL);

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

--
-- Dumping data for table `prof_attendance`
--

INSERT INTO `prof_attendance` (`id`, `schedule_id`, `lab_id`, `faculty_code`, `professor_id`, `subject_id`, `date`, `time_in`, `time_out`, `remarks`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 21, 0, '2010-00123-TG-0', 3, 1, '2021-10-21', '13:49:50', '13:50:00', 'present', '2021-10-21 13:49:50', NULL, NULL);

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
(3, 'Student', 26, 'Student', 'a', '2021-06-20 13:07:38', '2021-07-23 23:51:38', '2021-06-29 23:03:13'),
(6, 'Police', 3, 'Police University 101', 'a', '2021-10-14 16:49:56', '2021-10-14 16:50:08', NULL);

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

--
-- Dumping data for table `schedlabs`
--

INSERT INTO `schedlabs` (`id`, `event_name`, `category_id`, `date`, `start_time`, `end_time`, `lab_id`, `assigned_person`, `num_people`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(3, 'Knights of Honor', 2, '2021-11-01', '13:00:00', '14:00:00', 1, 'Joshua Capalaran', 41, 'a', '2021-10-21 00:41:16', '2021-10-21 00:41:16', NULL),
(4, 'Health Seminar', 2, '2021-10-21', '13:00:00', '14:00:00', 3, 'Crisologo Lapitan IV', 41, 'a', '2021-10-21 00:43:32', '2021-10-21 00:44:08', NULL),
(5, 'test', 1, '2021-11-01', '01:00:00', '01:00:00', 2, 'asd', 40, 'a', '2021-10-25 10:19:57', '2021-10-25 10:19:57', NULL);

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

--
-- Dumping data for table `schedsubjs`
--

INSERT INTO `schedsubjs` (`id`, `subject_id`, `course_id`, `category`, `section_id`, `professor_id`, `date`, `start_time`, `end_time`, `day`, `lab_id`, `semester_id`, `sy_id`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(21, 1, 1, 1, 3, 3, '0000-00-00', '06:00:00', '17:00:00', 'Thursday', 3, 3, 1, 'a', '2021-10-21 00:36:29', '2021-10-27 17:46:17', NULL);

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
(1, 2019, 2020, 'a', '2021-06-02 20:28:36', '2021-10-05 21:52:52', NULL),
(2, 2020, 2022, 'a', '2021-06-02 20:28:47', '2021-08-30 15:11:41', NULL),
(3, 2021, 2024, 'a', '2021-06-22 11:07:12', '2021-06-22 11:07:17', NULL),
(6, 2021, 3000, 'a', '2021-07-07 22:20:49', '2021-10-09 14:03:17', NULL);

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
(3, '3rd', 'a', '2021-06-02 19:54:38', '2021-06-02 19:54:38', NULL),
(4, '4th', 'd', '2021-10-09 12:37:16', '2021-10-09 12:37:35', NULL);

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
(2, 0, '2015-00327-TG-0', 'Jericho', 'Dela Cruz', 'A.', 0, 1, 3, 'a', '2021-06-19 08:25:57', '2021-09-19 14:01:44', NULL),
(4, 0, '2015-00256-TG-0', 'Joshua', 'Capalaran', 'A', 0, 1, 3, 'a', '2021-06-22 13:29:19', '2021-08-30 14:16:51', NULL),
(10, 0, '2015-00323-TG-0', 'test', 'test', 'test', 0, 1, 3, 'a', '2021-06-29 23:50:44', '2021-08-30 14:17:11', NULL),
(11, 0, '1231-23123-TG-1', 'e', 'e', 'e', 0, 2, 2, 'a', '2021-07-18 23:39:07', '2021-10-09 12:36:53', NULL),
(15, 17, '2018-00256-TG-0', 'Joshua ', 'Capalaran', 'A', 0, 1, 3, 'a', '2021-08-31 03:40:59', '2021-08-31 03:40:59', NULL),
(16, 18, '2018-00555-TG-0', 'Boruto', 'Namikaze', 'U', 0, 3, 3, 'a', '2021-10-10 03:04:23', '2021-10-10 03:04:23', NULL);

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
(5, 'Sr', 'a', '2021-06-02 21:30:12', '2021-06-02 21:30:12', NULL),
(6, 'PhD', 'a', '2021-06-02 21:30:20', '2021-06-02 21:30:20', NULL);

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
(1, 1, 'Joshua', 'Capalaran', 'A.', 'superadmin', '$2y$10$.tIcLMncWrWg8B4xhkjOXuzVRk1Xc4ahHi5XZlkVeuE2xTA9a7sqW', '', '', 'a', '', '2021-06-19 19:15:38', '2021-10-20 09:10:03', NULL),
(2, 3, 'josh kyle', 'clemente', 'a', '2015-00327-TG-0', '$2y$10$keKsRC.9DodeVayJKRFxYeAR6RksZdm9n6DBLYhMYt3LylK.uPSxy', '', '', 'a', '', '2021-06-19 08:25:57', '2021-07-28 01:57:02', NULL),
(9, 3, 'joshua', 'e', 'e', '1231-23123-TG-1', '$2y$10$msDQp/G/ugXBRnxvgG7bsu138tgjuf5XQiERLquhs3DCQstWG/l7W', '', '', 'a', '', '2021-07-18 23:39:07', '2021-09-16 05:22:39', NULL),
(14, 3, 'student', 'test', 'a', 'test', '$2y$10$PnpIwwGcxdIrbrICyHZeFuJOBI34KbeCu7cBZC.RAYhJRsYtbkZx.', '', '', 'd', '', '2021-07-28 03:48:50', NULL, NULL),
(13, 2, 'prof', 'test', 'test', 'test', '$2y$10$u9CsgwU/jXpzrttUjGIaOeu1YQX2iu7jhslP9lMfpfnPW3/m19HVy', '', '', 'a', '', '2021-07-28 03:47:58', NULL, NULL),
(15, 2, 'teset', 'test', 'test', 'testest', '$2y$10$TX4CCRj.JcRDtoHRbYTuz.4o1wVY7lCZCJ/Wpo85pXkQt5QapQ82e', '', '', 'a', '', '2021-07-28 12:29:11', NULL, NULL),
(16, 3, 'test', '53w', 't', 'tsettest', '$2y$10$PUcAZ4nGYdNw75pIQrHOq.HFeRUbtCaxkGnyqWM.ZnbhTvMUdjQ5e', '', '', 'a', '', '2021-07-28 12:29:55', NULL, NULL),
(17, 3, 'Joshua ', 'Capalaran', 'A', '2018-00256-TG-0', '$2y$10$DqtQogWOS7Es3mj4MybKQeujhyMQi/USPgG4WMaAYdqPVsfkUhHzC', '', '', 'a', 'http://clsams.csovernightstaguig.online/assets/uploads/17/242293019_4322906057823207_5011378355500330901_n.jpg', '2021-08-31 03:40:59', '2021-10-20 23:17:03', NULL),
(18, 3, 'Boruto', 'Namikaze', 'U', '2018-00555-TG-0', '$2y$10$4xFJYWQIzfJ21CqhWXwg5uClQIvj7nBzjd47LOUcfgbCHQqFtQcF.', '', '', 'a', '', '2021-10-10 03:04:23', '2021-10-21 12:20:49', NULL);

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
-- Dumping data for table `visitors`
--

INSERT INTO `visitors` (`id`, `name`, `purpose`, `others`, `lab_id`, `event_id`, `date`, `time_in`, `time_out`, `created_at`, `updated_at`, `deleted_at`) VALUES
(18, 'test', '', '', 2, 9, '2021-08-07', '00:11:32', '15:51:34', '2021-08-07 00:11:32', '2021-08-07 15:51:34', NULL),
(19, 'test', 'test', '', 3, 1, '2021-10-21', '13:02:37', '13:02:39', '2021-10-21 13:02:37', '2021-10-21 13:02:39', NULL),
(20, 'test123', 'test', '', 3, NULL, '2021-10-21', '13:02:57', NULL, '2021-10-21 13:02:57', NULL, NULL),
(21, 'test1312', 'test', '', 2, 1, '2021-10-21', '13:03:07', '13:03:09', '2021-10-21 13:03:07', '2021-10-21 13:03:09', NULL),
(22, 'John Timothy L. Sescar', 'Seminar', '', 1, 1, '2021-10-21', '13:51:01', NULL, '2021-10-21 13:51:01', NULL, NULL);

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=135;

--
-- AUTO_INCREMENT for table `attendances`
--
ALTER TABLE `attendances`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;

--
-- AUTO_INCREMENT for table `capacities`
--
ALTER TABLE `capacities`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `courses`
--
ALTER TABLE `courses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `holiday`
--
ALTER TABLE `holiday`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `labs`
--
ALTER TABLE `labs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `prof_attendance`
--
ALTER TABLE `prof_attendance`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `schedlabs`
--
ALTER TABLE `schedlabs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `schedsubjs`
--
ALTER TABLE `schedsubjs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `schoolyears`
--
ALTER TABLE `schoolyears`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `sections`
--
ALTER TABLE `sections`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `semesters`
--
ALTER TABLE `semesters`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `subjects`
--
ALTER TABLE `subjects`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `suffixes`
--
ALTER TABLE `suffixes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `visitors`
--
ALTER TABLE `visitors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
