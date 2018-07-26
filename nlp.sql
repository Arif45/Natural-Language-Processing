-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 26, 2018 at 08:41 PM
-- Server version: 10.1.25-MariaDB
-- PHP Version: 5.6.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `nlp`
--

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(80) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can add permission', 2, 'add_permission'),
(5, 'Can change permission', 2, 'change_permission'),
(6, 'Can delete permission', 2, 'delete_permission'),
(7, 'Can add group', 3, 'add_group'),
(8, 'Can change group', 3, 'change_group'),
(9, 'Can delete group', 3, 'delete_group'),
(10, 'Can add user', 4, 'add_user'),
(11, 'Can change user', 4, 'change_user'),
(12, 'Can delete user', 4, 'delete_user'),
(13, 'Can add content type', 5, 'add_contenttype'),
(14, 'Can change content type', 5, 'change_contenttype'),
(15, 'Can delete content type', 5, 'delete_contenttype'),
(16, 'Can add session', 6, 'add_session'),
(17, 'Can change session', 6, 'change_session'),
(18, 'Can delete session', 6, 'delete_session'),
(19, 'Can add document', 7, 'add_document'),
(20, 'Can change document', 7, 'change_document'),
(21, 'Can delete document', 7, 'delete_document');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `compactword`
--

CREATE TABLE `compactword` (
  `id` int(30) NOT NULL,
  `compactLetter` varchar(30) CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `compactword`
--

INSERT INTO `compactword` (`id`, `compactLetter`) VALUES
(2, 'ক্ক'),
(3, 'ক্ট'),
(4, 'ক্ত'),
(5, 'ক্ত্র'),
(6, 'ক্ব'),
(7, 'ক্ম'),
(8, 'ক্য'),
(9, 'ক্র'),
(10, 'ক্ল'),
(11, 'ক্ষ'),
(12, 'ক্ষ্ণ'),
(13, 'ক্ষ্ম'),
(14, 'ক্ষ্য'),
(15, 'ক্স'),
(16, 'খ্য'),
(17, 'খ্র'),
(18, 'গ্ণ'),
(19, 'গ্ধ'),
(20, 'গ্ন'),
(21, 'গ্ন্য'),
(22, 'গ্বঃ'),
(23, 'গ্ম'),
(24, 'গ্য'),
(25, 'গ্র'),
(26, 'গ্র্য'),
(27, 'গ্ল'),
(28, 'ঘ্ন'),
(29, 'ঘ্য'),
(30, 'ঙ্ক'),
(31, 'ঙ্ক্য'),
(32, 'ঙ্খ'),
(33, 'ঙ্গ'),
(34, 'ঙ্গ'),
(35, 'ঙ্গ্য'),
(36, 'ঙ্ঘ'),
(37, 'ঙ্ঘ্য'),
(38, 'ঙ্ঘ্র'),
(39, 'ঙ্ম'),
(40, 'চ্চ'),
(41, 'চ্ছ'),
(42, 'চ্ছ্র'),
(43, 'চঙ'),
(44, 'চ্য'),
(45, 'জ্জ'),
(46, 'জ্জ্ব'),
(47, 'জ্ঝ'),
(48, 'জঙ'),
(49, 'জ্ব'),
(50, 'জ্য'),
(51, 'জ্র'),
(52, 'ঞ্চ'),
(53, 'ঞ্ছ'),
(54, 'ঞ্জ'),
(55, 'ঞ্ঝ'),
(56, 'ট্ট'),
(57, 'ট্ব'),
(58, 'ট্ম'),
(59, 'ট্য'),
(60, 'ট্র'),
(61, 'ড্ড'),
(62, 'ড্য'),
(63, 'ড্র'),
(64, 'ডগ'),
(65, 'ঢ্য'),
(66, 'ঢ্র'),
(67, 'ণ্ট'),
(68, 'ণ্ঠ'),
(69, 'ণ্ড'),
(70, 'ণ্ড্য'),
(71, 'ণ্ড্র'),
(72, 'ণ্ঢ'),
(73, 'ণ্ন'),
(74, 'ণ্ব'),
(75, 'ণ্ম'),
(76, 'ণ্য'),
(77, 'ত্ত'),
(78, 'ত্ত্ব'),
(79, 'ত্থ'),
(80, 'ত্ন'),
(81, 'ত্ব'),
(82, 'ত্ম'),
(83, 'ত্ম্য'),
(84, 'ত্য'),
(85, 'ত্র'),
(86, 'ত্র্য'),
(87, 'থ্ব'),
(88, 'থ্য'),
(89, 'থ্র'),
(90, 'দ্গ'),
(91, 'দ্ঘ'),
(92, 'দ্দ'),
(93, 'দ্দ্ব'),
(94, 'দ্ধ'),
(95, 'দ্ব'),
(96, 'দ্ভ'),
(97, 'দ্ম'),
(98, 'দ্য'),
(99, 'দ্র'),
(100, 'দ্র্য'),
(101, 'ধ্ন'),
(102, 'ধ্ব'),
(103, 'ধ্ম'),
(104, 'ধ্য'),
(105, 'ধ্র'),
(106, 'ন্ট'),
(107, 'ন্ঠ'),
(108, 'ন্ড'),
(109, 'ন্ত'),
(110, 'ন্ত্ব'),
(111, 'ন্ত্য'),
(112, 'ন্ত্র্য'),
(113, 'ন্থ'),
(114, 'ন্দ'),
(115, 'ন্দ্য'),
(116, 'ন্দ্ব'),
(117, 'ন্দ্র'),
(118, 'ন্ধ'),
(119, 'ন্ধ্য'),
(120, 'ন্ধ্র'),
(121, 'ন্ন'),
(122, 'ন্ব'),
(123, 'ন্ম'),
(124, 'ন্য'),
(125, 'প্ট'),
(126, 'প্ত'),
(127, 'প্ন'),
(128, 'প্প'),
(129, 'প্য'),
(130, 'প্র'),
(131, 'প্ল'),
(132, 'প্স'),
(133, 'ফ্র'),
(134, 'ফ্ল'),
(135, 'ব্য'),
(136, 'ব্দ'),
(137, 'ব্ধ'),
(138, 'ব্ব'),
(139, 'ব্য'),
(140, 'ব্র'),
(141, 'ব্ল'),
(142, 'ভ্য'),
(143, 'ভ্র'),
(144, 'ম্ন'),
(145, 'ম্প'),
(146, 'ম্প্র'),
(147, 'ম্ফ'),
(148, 'ম্ব'),
(149, 'ম্ভ'),
(150, 'ম্ভ্রঃ'),
(151, 'ম্ম'),
(152, 'ম্য'),
(153, 'ম্র'),
(154, 'ম্ল'),
(155, 'য্য'),
(156, 'র্ক'),
(157, 'র্খ'),
(158, 'র্গ'),
(159, 'র্ঘ'),
(160, 'র্চ'),
(161, 'র্ছ'),
(162, 'র্জ'),
(163, 'র্ঝ'),
(164, 'র্প'),
(165, 'র্ফ'),
(166, 'র্ব'),
(167, 'র্ভ'),
(168, 'র্ম'),
(169, 'র্ত'),
(170, 'র্থ'),
(171, 'র্দ'),
(172, 'র্ধ'),
(173, 'র্ন'),
(174, 'র্য'),
(175, 'র্ল'),
(176, 'র্স'),
(177, 'র্শ'),
(178, 'র্হ'),
(179, 'র্ট'),
(180, 'র্ঠ'),
(181, 'র্ড'),
(182, 'র্ঢ'),
(183, 'র্ণ'),
(184, 'র্ষ'),
(185, 'র্ড়'),
(186, 'র্ঢ়'),
(187, 'র্য়'),
(188, 'র্ৎ'),
(189, 'ল্ক'),
(190, 'ল্গ'),
(191, 'ল্ট'),
(192, 'ল্ড'),
(193, 'ল্প'),
(194, 'ল্ব'),
(195, 'ল্ভ'),
(196, 'ল্ম'),
(197, 'ল্য'),
(198, 'ল্ল'),
(199, 'শ্চ'),
(200, 'শ্ছ'),
(201, 'শ্ন'),
(202, 'শ্ব'),
(203, 'শ্ম'),
(204, 'শ্য'),
(205, 'শ্র'),
(206, 'শ্ল'),
(207, 'ষ্ক'),
(208, 'ষ্ক্র'),
(209, 'ষ্ট'),
(210, 'ষ্ট্য'),
(211, 'ষ্ট্র'),
(212, 'ষ্ঠ'),
(213, 'ষ্ঠ্য'),
(214, 'ষ্ণ'),
(215, 'ষ্প'),
(216, 'ষ্প্র'),
(217, 'ষ্ফ'),
(218, 'স্ক'),
(219, 'স্ক্র'),
(220, 'স্ট'),
(221, 'স্ট্র'),
(222, 'স্খ'),
(223, 'স্ত্য'),
(224, 'স্থ'),
(225, 'স্থ্য'),
(226, 'স্ন'),
(227, 'স্প'),
(228, 'স্ফ'),
(229, 'স্ব'),
(230, 'স্ম'),
(231, 'স্য'),
(232, 'স্র'),
(233, 'স্ল'),
(234, 'হ্ণ'),
(235, 'হ্ন'),
(236, 'হ্ব'),
(237, 'হ্ম'),
(238, 'হ্য'),
(239, 'হ্র'),
(240, 'হ্ল'),
(241, 'র্ক্য'),
(242, 'র্খ্য'),
(243, 'র্গ্য'),
(244, 'র্ঘ্য'),
(245, 'র্চ্য'),
(246, 'র্ছ্য'),
(247, 'র্জ্য'),
(248, 'র্ঝ্য'),
(249, 'র্ঞ্য'),
(250, 'র্ট্য'),
(251, 'র্ঠ্য'),
(252, 'র্ড্য'),
(253, 'র্ঢ্য'),
(254, 'র্ণ্য'),
(255, 'র্ত্য'),
(256, 'র্থ্য'),
(257, 'র্দ্য'),
(258, 'র্ধ্য'),
(259, 'র্ন্য'),
(260, 'র্প্য'),
(261, 'র্ফ্য'),
(262, 'র্ব্য'),
(263, 'র্ভ্য'),
(264, 'র্ম্য'),
(265, 'র্য্য'),
(266, 'র্ল্য'),
(267, 'র্শ্য'),
(268, 'র্ষ্য'),
(269, 'র্স্য'),
(270, 'র্হ্য');

-- --------------------------------------------------------

--
-- Table structure for table `core_document`
--

CREATE TABLE `core_document` (
  `id` int(11) NOT NULL,
  `description` varchar(255) NOT NULL,
  `document` varchar(100) NOT NULL,
  `uploaded_at` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `countword`
--

CREATE TABLE `countword` (
  `id` int(30) NOT NULL,
  `word` varchar(100) CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `countword`
--

INSERT INTO `countword` (`id`, `word`) VALUES
(0, '﻿কখন'),
(1, 'কে'),
(2, 'জেনে'),
(3, 'ফেলে,'),
(4, 'কখন'),
(5, 'আমি'),
(6, 'ধরা'),
(7, 'পড়ে'),
(8, 'যাই'),
(9, 'বা'),
(10, 'কখন'),
(11, 'এটা'),
(12, 'এসে'),
(13, 'নিয়ে'),
(14, 'যায়—এমনি'),
(15, 'মানসিক'),
(16, 'যন্ত্রণায়'),
(17, 'আমি'),
(18, 'ভুগছিলাম।'),
(19, 'সূত্র:'),
(20, 'বাংলার'),
(21, 'বাণী,'),
(22, 'বিশেষ'),
(23, 'সংখ্যা,'),
(24, '১৯৭২'),
(25, 'রধানমন্ত্রী'),
(26, 'হিসেবে'),
(27, 'তাজউদ্দীন'),
(28, 'আহমদের'),
(29, 'প্রথম'),
(30, 'সরকারি'),
(31, 'নির্দেশের'),
(32, 'ঐতিহাসিক'),
(33, 'গুরুত্ব'),
(34, 'ছিল'),
(35, 'অপরিসীম।'),
(36, 'এতে'),
(37, 'দেশবাসীর'),
(38, 'প্রতি'),
(39, 'প্রধানমন্ত্রীর'),
(40, 'আহ্বান'),
(41, 'ছিল:'),
(42, 'আমি'),
(43, 'আবেগাপ্লুত'),
(44, 'হয়ে'),
(45, 'পড়েছি।');

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(7, 'core', 'document'),
(6, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2018-01-24 16:23:12.297744'),
(2, 'auth', '0001_initial', '2018-01-24 16:23:12.929839'),
(3, 'admin', '0001_initial', '2018-01-24 16:23:13.099198'),
(4, 'admin', '0002_logentry_remove_auto_add', '2018-01-24 16:23:13.112250'),
(5, 'contenttypes', '0002_remove_content_type_name', '2018-01-24 16:23:13.218802'),
(6, 'auth', '0002_alter_permission_name_max_length', '2018-01-24 16:23:13.271298'),
(7, 'auth', '0003_alter_user_email_max_length', '2018-01-24 16:23:13.333535'),
(8, 'auth', '0004_alter_user_username_opts', '2018-01-24 16:23:13.348037'),
(9, 'auth', '0005_alter_user_last_login_null', '2018-01-24 16:23:13.389542'),
(10, 'auth', '0006_require_contenttypes_0002', '2018-01-24 16:23:13.394043'),
(11, 'auth', '0007_alter_validators_add_error_messages', '2018-01-24 16:23:13.406544'),
(12, 'auth', '0008_alter_user_username_max_length', '2018-01-24 16:23:13.464245'),
(13, 'core', '0001_initial', '2018-01-24 16:23:13.555842'),
(14, 'core', '0002_auto_20160801_0816', '2018-01-24 16:23:13.564851'),
(15, 'sessions', '0001_initial', '2018-01-24 16:23:13.602370');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `permwordmeaning`
--

CREATE TABLE `permwordmeaning` (
  `id` int(100) NOT NULL,
  `bangla` varchar(100) CHARACTER SET utf8 NOT NULL,
  `english` varchar(100) CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `permwordmeaning`
--

INSERT INTO `permwordmeaning` (`id`, `bangla`, `english`) VALUES
(1, 'এ', 'At the'),
(2, 'সবই', 'All this'),
(3, 'আমাদের', 'Ours'),
(4, 'বদভ্যাস', 'Bad habit'),
(5, 'বা', 'Or'),
(6, 'অসচেতনতা', 'Unconsciousness'),
(7, 'এমনিতেই', 'That\'s why'),
(8, 'আমরা', 'We are'),
(9, 'প্রাকৃতিক', 'Natural'),
(10, 'পরিবেশকে', 'Environment'),
(11, 'ধ্বংস', 'Destruction'),
(12, 'করার', 'To do'),
(13, 'জন্য', 'For'),
(14, 'সব', 'Everything'),
(15, 'রকম', 'Kind of'),
(16, 'চেষ্টা', 'Try'),
(17, 'করে', 'Do it'),
(18, 'যাচ্ছি', 'I\'m going'),
(19, 'যা', 'Which'),
(20, 'আসলে', 'Actually'),
(21, 'আমাদেরই', 'Ours'),
(22, 'ক্ষতি', 'Damage'),
(23, 'করছে', 'Is doing'),
(24, 'সামান্য', 'Little'),
(25, 'হোক', 'Yes'),
(26, 'আসুন', 'Come on'),
(27, 'আপনাকে', 'To you'),
(28, 'দিয়েই', 'By the way'),
(29, 'শুরু', 'Start'),
(30, 'সচেতনতার', 'Awareness'),
(31, 'প্রথম', 'The first'),
(32, 'পদক্ষেপ', 'Step'),
(33, 'যার', 'Whose'),
(34, 'সম্মিলনে', 'Concurrently'),
(35, 'সাধিত', 'Achieved'),
(36, 'হবে', 'Will be'),
(37, 'অনেক', 'Many'),
(38, 'বড়', 'Big'),
(39, 'কোনো', 'Any'),
(40, 'কাজ', 'Work'),
(41, 'মো', 'Md'),
(42, 'ইফতেখার', 'Iftekhar'),
(43, 'রহমান', 'Stainless Steel'),
(44, 'নওগাঁ', 'Naogaon'),
(45, 'প্রতিবাদ', 'Protest'),
(46, 'আলোর', 'Lighting'),
(47, '২৪', '২৪'),
(48, 'এপ্রিল', 'April'),
(49, 'সংখ্যার', 'Numbers'),
(50, 'চতুর্থ', 'Fourth'),
(51, 'পৃষ্ঠায়', 'On page'),
(52, '‘প্রকল্প', '\'Project'),
(53, 'অনুমোদনের', 'Approval'),
(54, 'আগেই', 'Beforehand'),
(55, 'বাস্তবায়ন’', 'Implementation \''),
(56, 'শীর্ষক', 'Title'),
(57, 'সংবাদটি', 'The news'),
(58, 'আমার', 'Me'),
(59, 'দৃষ্টিগোচর', 'Appearance'),
(60, 'হয়েছে', 'Has been there'),
(61, 'সংবাদে', 'In the news'),
(62, 'উল্লেখ', 'Reference'),
(63, 'করা', 'Be done'),
(64, 'অনুমোদন', 'Approval'),
(65, 'হওয়ার', 'To be'),
(66, 'প্রকল্প', 'Project'),
(67, 'বানিয়ে', 'Made by'),
(68, 'শেষ', 'The end'),
(69, 'করেছেন', 'Have done'),
(70, 'কয়েকজন', 'A few'),
(71, 'জনপ্রতিনিধি', 'Public representatives'),
(72, 'তথ্য', 'Information'),
(73, 'সঠিক', 'Correct'),
(74, 'নয়', 'Not'),
(75, 'ইতিমধ্যে', 'Already'),
(76, 'মাননীয়', 'Honorable'),
(77, 'সংসদ', 'Parliament'),
(78, 'সদস্যের', 'Member'),
(79, 'কোটায়', 'Quota'),
(80, '৯০', '৯০'),
(81, 'লাখ', 'Lakhs'),
(82, 'টাকার', 'Money'),
(83, 'উন্নয়ন', 'Development'),
(84, 'বরাদ্দের', 'Allocation'),
(85, 'প্রায়', 'Almost'),
(86, 'পথে', 'On the way'),
(87, 'এবং', 'And'),
(88, 'সরকারি', 'Governmental'),
(89, 'বিধি', 'Rules'),
(90, 'মোতাবেক', 'According to'),
(91, 'এর', 'Of it'),
(92, 'বিলও', 'Bills'),
(93, 'বহুলাংশে', 'In large numbers'),
(94, 'পরিশোধ', 'Payment'),
(95, 'হয়ে', 'Become'),
(96, 'গেছে', 'Has gone'),
(97, 'মর্মে', 'In effect'),
(98, 'জানতে', 'To know'),
(99, 'পেরেছি', 'Made it possible'),
(100, 'তৈরি', 'Made'),
(101, 'যেসব', 'Which are'),
(102, 'জনপ্রতিনিধির', 'Representative Representative'),
(103, 'উদ্ধৃতি', 'Quote'),
(104, 'দেওয়া', 'Paid'),
(105, 'প্রকল্পের', 'Project'),
(106, 'বিষয়ে', 'Concerning'),
(107, 'তাঁদের', 'Theirs'),
(108, 'সঙ্গে', 'With'),
(109, 'ধরনের', 'Kind of'),
(110, 'যোগাযোগ', 'Contact Us'),
(111, 'হয়নি', 'Not done'),
(112, 'যে', 'That'),
(113, 'বক্তব্য', 'Speech'),
(114, 'প্রকাশ', 'Publication'),
(115, 'সে', 'She'),
(116, 'কথাও', 'Talk too'),
(117, 'প্রতিবেদকের', 'Reporter'),
(118, 'সংবাদ', 'News'),
(119, 'প্রতিবেদক', 'Reporter'),
(120, 'সম্পূর্ণ', 'Complete'),
(121, 'মনগড়াভাবে', 'Deliberately'),
(122, 'উপজেলা', 'Upazila'),
(123, 'বিএনপির', 'BNP'),
(124, 'সাবেক', 'The former'),
(125, 'সভাপতি', 'President'),
(126, 'হিসেবে', 'As it is'),
(127, 'যাঁর', 'Whose'),
(128, 'তাঁকে', 'Him'),
(129, 'শৃঙ্খলা', 'Discipline'),
(130, 'ভঙ্গের', 'Breaks'),
(131, 'অভিযোগে', 'In charge'),
(132, 'দল', 'Party'),
(133, 'থেকে', 'From'),
(134, 'বহিষ্কার', 'Expulsion'),
(135, 'নেতাকর্মীদের', 'Leaders and workers'),
(136, 'মধ্যে', 'In between'),
(137, 'বিভ্রান্তি', 'Confusion'),
(138, 'সৃষ্টির', 'Creation'),
(139, 'অসৎ', 'Dishonest'),
(140, 'উদ্দেশ্যে', 'Intended for'),
(141, 'তাঁর', 'His'),
(142, 'আমি', 'I am'),
(143, 'মনগড়া', 'Mysterious'),
(144, 'তথ্যসংবলিত', 'Information gathered'),
(145, 'সংবাদের', 'News source'),
(146, 'জানাচ্ছি', 'Let me know'),
(147, 'আবু', 'Abu'),
(148, 'তালেব', 'Taleb'),
(149, 'সাধারণ', 'General'),
(150, 'সম্পাদক', 'Editor'),
(151, 'বাংলাদেশ', 'Bangladesh'),
(152, 'জাতীয়তাবাদী', 'Nationalist'),
(153, 'পরশুরাম', 'Parshuram'),
(154, 'শাখা', 'Branch'),
(155, 'ফেনী', 'Feni'),
(156, 'পাকিস্তান', 'Pakistan'),
(157, 'ক্ষমা', 'Forgiveness'),
(158, 'চাইবে', 'Want to'),
(159, 'কবে', 'When'),
(160, 'এ', 'At');

-- --------------------------------------------------------

--
-- Table structure for table `word_pos_tag`
--

CREATE TABLE `word_pos_tag` (
  `bangla_word` varchar(100) CHARACTER SET utf8 NOT NULL,
  `pos_tag_bangla` varchar(100) CHARACTER SET utf8 NOT NULL,
  `pos_tag_english` varchar(100) CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `word_pos_tag`
--

INSERT INTO `word_pos_tag` (`bangla_word`, `pos_tag_bangla`, `pos_tag_english`) VALUES
('﻿এ', 'অব্যয়', 'IN'),
('সবই', 'বিশেষণ', 'PDT'),
('আমাদের', 'সর্বনাম', 'PRP'),
('বদভ্যাস', 'বিশেষ্য', 'NNP'),
('অসচেতনতা', 'বিশেষ্য', 'NN'),
('এমনিতেই', 'অব্যয়', 'DT'),
('আমরা', 'সর্বনাম', 'PRP'),
('প্রাকৃতিক', 'বিশেষণ', 'JJ'),
('পরিবেশকে', 'বিশেষ্য', 'NN'),
('ধ্বংস', 'বিশেষ্য', 'NN'),
('করার', 'অব্যয়', 'TO'),
('জন্য', 'অব্যয়', 'IN'),
('সব', 'বিশেষ্য', 'NN'),
('রকম', 'বিশেষ্য', 'NNP'),
('চেষ্টা', 'ক্রিয়া', 'VB'),
('করে', 'ক্রিয়া', 'VB'),
('আসলে', 'বিশেষণ', 'RB'),
('আমাদেরই', 'বিশেষ্য', 'NNS'),
('ক্ষতি', 'বিশেষ্য', 'NN'),
('করছে', 'ক্রিয়া', 'VBZ'),
('সামান্য', 'বিশেষণ', 'JJ'),
('হোক', 'বিশেষণ', 'UH'),
('আসুন', 'ক্রিয়া', 'VBN'),
('আপনাকে', 'সর্বনাম', 'PRP'),
('দিয়েই', 'অব্যয়', 'IN'),
('শুরু', 'বিশেষ্য', 'NN'),
('সচেতনতার', 'বিশেষ্য', 'NN'),
('প্রথম', 'অব্যয়', 'DT'),
('পদক্ষেপ', 'বিশেষ্য', 'NN'),
('যার', 'ক্রিয়া', 'VB'),
('সম্মিলনে', 'বিশেষণ', 'RB'),
('সাধিত', 'ক্রিয়া', 'VBN'),
('হবে', 'ক্রিয়া', 'MD'),
('অনেক', 'বিশেষণ', 'JJ'),
('বড়', 'বিশেষণ', 'JJ'),
('কোনো', 'অব্যয়', 'DT'),
('কাজ', 'বিশেষ্য', 'NN'),
('প্রতিবাদ', 'বিশেষ্য', 'NN'),
('এ', 'সর্বনাম', 'PRP'),
('মো', 'বিশেষ্য', 'NN'),
('ইফতেখার', 'বিশেষ্য', 'NN'),
('রহমান', 'বিশেষ্য', 'NNP'),
('নওগাঁ', 'বিশেষ্য', 'NN'),
('আলোর', 'ক্রিয়া', 'VBG'),
('২৪', 'বিশেষণ', 'CD'),
('এপ্রিল', 'বিশেষ্য', 'NNP'),
('সংখ্যার', 'বিশেষ্য', 'NNS'),
('চতুর্থ', 'বিশেষ্য', 'NN'),
('পৃষ্ঠায়', 'অব্যয়', 'IN'),
('‘প্রকল্প', 'বিশেষ্য', 'NN'),
('অনুমোদনের', 'বিশেষ্য', 'NN'),
('আগেই', 'বিশেষ্য', 'NNP'),
('বাস্তবায়ন’', 'বিশেষ্য', 'NN'),
('শীর্ষক', 'বিশেষ্য', 'NN'),
('সংবাদটি', 'অব্যয়', 'DT'),
('আমার', 'বিশেষ্য', 'NN'),
('দৃষ্টিগোচর', 'বিশেষ্য', 'NN'),
('হয়েছে', 'বিশেষ্য', 'NNP'),
('সংবাদে', 'অব্যয়', 'IN'),
('উল্লেখ', 'বিশেষ্য', 'NN'),
('করা', 'ক্রিয়া', 'VB'),
('অনুমোদন', 'বিশেষ্য', 'NN'),
('হওয়ার', 'অব্যয়', 'TO'),
('প্রকল্প', 'বিশেষ্য', 'NN'),
('বানিয়ে', 'ক্রিয়া', 'VBN'),
('শেষ', 'অব্যয়', 'DT'),
('করেছেন', 'ক্রিয়া', 'VBP'),
('কয়েকজন', 'অব্যয়', 'DT'),
('জনপ্রতিনিধি', 'বিশেষ্য', 'NNP'),
('তথ্য', 'বিশেষ্য', 'NN'),
('সঠিক', 'বিশেষ্য', 'NN'),
('নয়', 'বিশেষণ', 'RB'),
('ইতিমধ্যে', 'বিশেষণ', 'RB'),
('মাননীয়', 'বিশেষণ', 'JJ'),
('সংসদ', 'বিশেষ্য', 'NN'),
('সদস্যের', 'বিশেষ্য', 'NNP'),
('কোটায়', 'বিশেষ্য', 'NN'),
('৯০', 'বিশেষণ', 'CD'),
('লাখ', 'বিশেষ্য', 'NN'),
('টাকার', 'বিশেষ্য', 'NN'),
('উন্নয়ন', 'বিশেষ্য', 'NNP'),
('বরাদ্দের', 'বিশেষ্য', 'NN'),
('প্রায়', 'বিশেষণ', 'RB'),
('পথে', 'অব্যয়', 'IN'),
('সরকারি', 'বিশেষণ', 'JJ'),
('বিধি', 'বিশেষ্য', 'NNS'),
('মোতাবেক', 'ক্রিয়া', 'VBG'),
('এর', 'অব্যয়', 'IN'),
('বিলও', 'বিশেষ্য', 'NNS'),
('বহুলাংশে', 'অব্যয়', 'IN'),
('পরিশোধ', 'বিশেষ্য', 'NN'),
('হয়ে', 'ক্রিয়া', 'VB'),
('গেছে', 'বিশেষ্য', 'NNP'),
('মর্মে', 'অব্যয়', 'IN'),
('জানতে', 'অব্যয়', 'TO'),
('পেরেছি', 'ক্রিয়া', 'VBN'),
('তৈরি', 'ক্রিয়া', 'VBN'),
('জনপ্রতিনিধির', 'বিশেষণ', 'JJ'),
('উদ্ধৃতি', 'বিশেষ্য', 'NN'),
('দেওয়া', 'ক্রিয়া', 'VBN'),
('প্রকল্পের', 'বিশেষ্য', 'NN'),
('বিষয়ে', 'ক্রিয়া', 'VBG'),
('তাঁদের', 'বিশেষ্য', 'NNS'),
('সঙ্গে', 'অব্যয়', 'IN'),
('ধরনের', 'বিশেষ্য', 'NNP'),
('যোগাযোগ', 'বিশেষ্য', 'NNP'),
('হয়নি', 'বিশেষণ', 'RB'),
('যে', 'অব্যয়', 'DT'),
('বক্তব্য', 'বিশেষ্য', 'NN'),
('প্রকাশ', 'বিশেষ্য', 'NN'),
('সে', 'সর্বনাম', 'PRP'),
('কথাও', 'ক্রিয়া', 'VB'),
('প্রতিবেদকের', 'বিশেষ্য', 'NN'),
('সংবাদ', 'বিশেষ্য', 'NNS'),
('প্রতিবেদক', 'বিশেষ্য', 'NN'),
('সম্পূর্ণ', 'বিশেষণ', 'JJ'),
('মনগড়াভাবে', 'বিশেষণ', 'RB'),
('উপজেলা', 'বিশেষ্য', 'NN'),
('বিএনপির', 'বিশেষ্য', 'NN'),
('সাবেক', 'অব্যয়', 'DT'),
('সভাপতি', 'বিশেষ্য', 'NNP'),
('হিসেবে', 'অব্যয়', 'IN'),
('যাঁর', 'ক্রিয়া', 'VB'),
('তাঁকে', 'বিশেষ্য', 'NN'),
('শৃঙ্খলা', 'বিশেষ্য', 'NN'),
('ভঙ্গের', 'বিশেষ্য', 'NNS'),
('অভিযোগে', 'অব্যয়', 'IN'),
('দল', 'বিশেষ্য', 'NNP'),
('থেকে', 'অব্যয়', 'IN'),
('বহিষ্কার', 'বিশেষ্য', 'NN'),
('নেতাকর্মীদের', 'বিশেষ্য', 'NNS'),
('মধ্যে', 'অব্যয়', 'IN'),
('বিভ্রান্তি', 'বিশেষ্য', 'NN'),
('সৃষ্টির', 'বিশেষ্য', 'NN'),
('অসৎ', 'বিশেষণ', 'JJS'),
('উদ্দেশ্যে', 'ক্রিয়া', 'VBN'),
('আমি', 'সর্বনাম', 'PRP'),
('মনগড়া', 'বিশেষণ', 'JJ'),
('তথ্যসংবলিত', 'বিশেষ্য', 'NN'),
('সংবাদের', 'বিশেষ্য', 'NNP'),
('জানাচ্ছি', 'ক্রিয়া', 'VB'),
('আবু', 'বিশেষ্য', 'NN'),
('তালেব', 'বিশেষ্য', 'NN'),
('সাধারণ', 'বিশেষ্য', 'NNP'),
('সম্পাদক', 'বিশেষ্য', 'NN'),
('বাংলাদেশ', 'বিশেষ্য', 'NNP'),
('জাতীয়তাবাদী', 'বিশেষ্য', 'NN'),
('পরশুরাম', 'বিশেষ্য', 'NN'),
('শাখা', 'বিশেষ্য', 'NN'),
('ফেনী', 'বিশেষ্য', 'NN'),
('পাকিস্তান', 'বিশেষ্য', 'NN'),
('ক্ষমা', 'বিশেষ্য', 'NN'),
('চাইবে', 'ক্রিয়া', 'VBP');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indexes for table `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Indexes for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `compactword`
--
ALTER TABLE `compactword`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `core_document`
--
ALTER TABLE `core_document`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `countword`
--
ALTER TABLE `countword`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indexes for table `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- Indexes for table `permwordmeaning`
--
ALTER TABLE `permwordmeaning`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `compactword`
--
ALTER TABLE `compactword`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=271;
--
-- AUTO_INCREMENT for table `core_document`
--
ALTER TABLE `core_document`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Constraints for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Constraints for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
