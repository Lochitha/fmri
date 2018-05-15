-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 15, 2018 at 07:05 PM
-- Server version: 10.1.26-MariaDB
-- PHP Version: 7.1.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `fmri_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `admin_id` int(11) NOT NULL,
  `firstname` varchar(45) NOT NULL,
  `lastname` varchar(45) NOT NULL,
  `age` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(50) NOT NULL,
  `email` varchar(45) DEFAULT NULL,
  `contact` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`admin_id`, `firstname`, `lastname`, `age`, `username`, `password`, `email`, `contact`) VALUES
(1, 'Roshan', 'Nadeesha', 22, 'roshan123', '81dc9bdb52d04dc20036dbd8313ed055', 'roshannadeesha@gmail.com', '0776543210'),
(2, 'Lochitha', 'Adikari', 23, 'lochitha', '81dc9bdb52d04dc20036dbd8313ed055', 'lolo@gmail.com', '1234567890');

-- --------------------------------------------------------

--
-- Table structure for table `broadman_area`
--

CREATE TABLE `broadman_area` (
  `br_area_id` int(11) NOT NULL,
  `area_nme` varchar(100) DEFAULT NULL,
  `gyral_land` text NOT NULL,
  `message` text NOT NULL,
  `media` longblob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `broadman_area`
--

INSERT INTO `broadman_area` (`br_area_id`, `area_nme`, `gyral_land`, `message`, `media`) VALUES
(1, 'primary somatosensory cortex', 'postcentral gyrus', '', ''),
(2, 'primary somatosensory cortex', 'postcentral gyrus', '', ''),
(3, 'primary somatosensory cortex', 'postcentral gyrus', '', ''),
(4, 'primary motor cortex', 'precentral gyrus', '', ''),
(5, 'somatosensory association cortex', 'superior parietal lobule', '', ''),
(6, 'premotor cortex and supplementary motor cortex', '-', '', ''),
(7, 'visuo-motor coordination', 'superior parietal lobule', '', ''),
(8, 'frontal eye fields', '-', '', ''),
(9, 'dorsolateral prefrontal cortex', '-', '', ''),
(10, 'anterior prefrontal cortex', '-', '', ''),
(11, 'orbitofrontal area', 'orbital gyri, gyrus rectus, rostral gyrus and part of superior frontal gyrus', '', ''),
(12, 'orbitofrontal area', 'orbital gyri, gyrus rectus, rostral gyrus and part of superior frontal gyrus', '', ''),
(13, 'insular cortex', '-', '', ''),
(14, '-', '-', '', ''),
(15, '-', '-', '', ''),
(16, 'insular cortex', '-', '', ''),
(17, 'primary visual cortex (V1)', '-', '', ''),
(18, 'secondary visual cortex (V2)', '-', '', ''),
(19, 'associative visual cortex (V3, V4 and V5)', '-', '', ''),
(20, '-', 'inferior temporal gyrus', '', ''),
(21, '-', 'middle temporal gyrus', '', ''),
(22, '-', 'superior temporal gyrus (including Wernicke area)', '', ''),
(23, 'cingulate cortex', '-', '', ''),
(24, 'cingulate cortex', '-', '', ''),
(25, 'subgenual area', '-', '', ''),
(26, 'ectosplenial portion of the retrosplenial region of the cerebral cortex', '-', '', ''),
(27, 'piriform cortex', '-', '', ''),
(28, 'cingulate cortex', '-', '', ''),
(29, 'cingulate cortex', '-', '', ''),
(30, 'cingulate cortex', '-', '', ''),
(31, 'cingulate cortex', '-', '', ''),
(32, 'cingulate cortex', '-', '', ''),
(33, 'cingulate cortex', '-', '', ''),
(34, 'dorsal entorhinal cortex', '-', '', ''),
(35, 'perirhinal cortex and ectorhinal area', '-', '', ''),
(36, 'perirhinal cortex and ectorhinal area', '-', '', ''),
(37, '-', 'fusiform gyrus', '', ''),
(38, '-', 'temporal pole', '', ''),
(39, '-', 'angular gyrus', '', ''),
(40, '-', 'supramarginal gyrus', '', ''),
(41, 'primary auditory cortex', 'Heschl gyrus', '', ''),
(42, 'primary auditory cortex', 'Heschl gyrus', '', ''),
(43, 'primary gustatory cortex', '-', '', ''),
(44, 'part of Broca area', 'pars opercularis, part of the inferior frontal gyrus', '', ''),
(45, 'part of Broca area', 'pars triangularis, part of the inferior frontal gyrus', '', ''),
(46, 'dorsolateral prefrontal cortex', '-', '', ''),
(47, '-', 'pars orbitalis, part of the inferior frontal gyrus', '', ''),
(48, 'retrosubicular area', '-', '', ''),
(49, '-', '-', '', ''),
(50, '-', '-', '', ''),
(51, '-', '-', '', ''),
(52, 'parainsular area', '-', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `client_data`
--

CREATE TABLE `client_data` (
  `article_title` text NOT NULL,
  `article_id` int(255) NOT NULL,
  `article_author` varchar(500) NOT NULL,
  `ref_date` date NOT NULL,
  `reference` varchar(1000) NOT NULL,
  `link` text NOT NULL,
  `brodmann_id` int(100) NOT NULL,
  `function_id` varchar(100) NOT NULL,
  `message_art` text NOT NULL,
  `message_web` text NOT NULL,
  `media` longblob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `comment`
--

CREATE TABLE `comment` (
  `comm_id` int(11) NOT NULL,
  `content` varchar(45) DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `media` binary(1) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  `discussion_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `comment`
--

INSERT INTO `comment` (`comm_id`, `content`, `date`, `media`, `user_id`, `discussion_id`) VALUES
(1, 'This is something which i read from a paper', '2017-12-10 18:21:08', NULL, 23, 2),
(2, 'This is a good point', '2017-12-13 03:24:51', NULL, 23, 2);

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `contact_id` int(10) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(30) NOT NULL,
  `message` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`contact_id`, `name`, `email`, `message`) VALUES
(1, '', '', ''),
(2, 'lochitha', 'lochithaadikari@gmail.com', 'i need to know about your website purpose'),
(3, '', '', ''),
(4, '', '', ''),
(5, 'Maneesha', 'maneesharajaratne@gmail.com', 'This is a wonderful website for my studies'),
(6, 'Dimantha', 'dimz@gmail.com', 'wertyuuii');

-- --------------------------------------------------------

--
-- Table structure for table `discussion`
--

CREATE TABLE `discussion` (
  `discussion_id` int(11) NOT NULL,
  `content` longtext NOT NULL,
  `date` datetime DEFAULT NULL,
  `media` binary(1) NOT NULL,
  `user_id` int(11) NOT NULL,
  `section` varchar(25) NOT NULL,
  `topic` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `discussion`
--

INSERT INTO `discussion` (`discussion_id`, `content`, `date`, `media`, `user_id`, `section`, `topic`) VALUES
(2, 'I think other than the auditory cortex there should be some areas getting activated too', '2017-12-10 18:20:14', 0x00, 23, 'sensory', 'If the Auditory cortex is the only area which is getting activated for hearing'),
(3, 'Can someone tell What are the all sub categories of Motor Function', '2018-01-02 06:59:03', 0x00, 23, 'motor control', 'sub categories of Motor Function');

-- --------------------------------------------------------

--
-- Table structure for table `function_detail`
--

CREATE TABLE `function_detail` (
  `function_id` varchar(10) NOT NULL,
  `function` varchar(50) NOT NULL,
  `media` longblob NOT NULL,
  `message` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `function_detail`
--

INSERT INTO `function_detail` (`function_id`, `function`, `media`, `message`) VALUES
('1A', 'Sensory,Auditory', '', ''),
('1B', 'Sensory,Vision', '', ''),
('1C', 'Sensory,Taste', '', ''),
('1D', 'Sensory,Smell', '', ''),
('1E', 'Motor Control, Sensory,Touch', '', ''),
('2A', 'Motor Control, Hand/Arm Movements', '', ''),
('2B', 'Motor Control, Leg/Limb Movements', '', ''),
('2C', 'Motor Control, Neck Movements', '', ''),
('2D', 'Motor Control, Basic Trunk Movements', '', ''),
('2E', 'Motor Control, Wrist/Fingers/Thumb Movements', '', ''),
('2F', 'Motor Control, Shoulder Movements', '', ''),
('2G', 'Motor Control, Eyelids Movements', '', ''),
('2H', 'Motor Control, Lip Movements', '', ''),
('2I', 'Motor Control, Jaw Movements', '', ''),
('2J', 'Motor Control, Buttock Movements', '', ''),
('2K', 'Motor Control, Behavior Related Movements', '', ''),
('2L', 'Motor Control, Planning Movements', '', ''),
('2M', 'Motor Control, Spatial guidance of movement', '', ''),
('2N', 'Motor Control, Sensory guidance of movement', '', ''),
('2O', 'Motor Control, Understanding others actions', '', ''),
('2P', 'Motor Control, Movements based on rules', '', ''),
('2Q', 'Motor Control, Action Selection', '', ''),
('3A', 'Regulation, Blood Pressure Control', '', ''),
('3B', 'Regulation, Heart rate Control', '', ''),
('3C', 'Regulation, Respiratory Control', '', ''),
('4A', 'Language, Accessing word meaning', '', ''),
('4B', 'Language, Language Comprehension', '', ''),
('4C', 'Language, Language Perception', '', ''),
('4D', 'Language, Language Processing', '', ''),
('4E', 'Language, Semantic Tasks', '', ''),
('5A', 'Emotion related, Emotion formation', '', ''),
('5B', 'Emotion related, Emotion functions', '', ''),
('5C', 'Emotion related, Emotion processing', '', ''),
('5D', 'Emotion related, Emotion regulation', '', ''),
('5E', 'Emotion related, Risk', '', ''),
('5F', 'Emotion related, Fear', '', ''),
('5G', 'Emotion related, Morality', '', ''),
('6A', 'Cognitive functions, Decision making', '', ''),
('6B', 'Cognitive functions, Face perception', '', ''),
('6C', 'Cognitive functions, Number Perception', '', ''),
('6D', 'Cognitive functions, Making Awareness', '', ''),
('6E', 'Cognitive functions, Management of cognitive', '', ''),
('6F', 'Cognitive functions, Memory formation', '', ''),
('6G', 'Cognitive functions, Memory consolidation', '', ''),
('6H', 'Cognitive functions, Memory optimization', '', ''),
('6I', 'Cognitive functions, Memory recall', '', ''),
('6J', 'Cognitive functions, Reward anticipation', '', ''),
('6K', 'Cognitive functions, Social cognition', '', ''),
('6L', 'Cognitive functions, Visual field perception', '', ''),
('6M', 'Cognitive functions, Visual field awareness', '', ''),
('6N', 'Cognitive functions, Working memory', '', ''),
('6O', 'Cognitive functions, Cognitive flexibility', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `log`
--

CREATE TABLE `log` (
  `log_id` int(10) NOT NULL,
  `log_date` varchar(10) NOT NULL,
  `log_time` varchar(10) NOT NULL,
  `user_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `log`
--

INSERT INTO `log` (`log_id`, `log_date`, `log_time`, `user_id`) VALUES
(1, '12.08.17', '6:26 pm', 23),
(2, '12.08.17', '6:27 pm', 23),
(3, '12.08.17', '6:43 pm', 23),
(4, '12.08.17', '7:10 pm', 0),
(5, '12.08.17', '7:11 pm', 34),
(6, '12.08.17', '7:12 pm', 34),
(7, '12.08.17', '7:19 pm', 34),
(8, '12.08.17', '7:33 pm', 34);

-- --------------------------------------------------------

--
-- Table structure for table `profile`
--

CREATE TABLE `profile` (
  `id` int(10) NOT NULL,
  `role` varchar(50) DEFAULT NULL,
  `bio` varchar(50) DEFAULT NULL,
  `websites` varchar(50) DEFAULT NULL,
  `user_id` int(10) NOT NULL,
  `profile_image` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `profile`
--

INSERT INTO `profile` (`id`, `role`, `bio`, `websites`, `user_id`, `profile_image`) VALUES
(1, 'I am astudent/researcher', 'I am 22 year old researcher.', 'https://github.com/Mash96', 23, 'shttrstck_modified_brain.jpg'),
(2, 'I am astudent/researcher', 'I am 22 year old researcher.', 'https://github.com/Mash96', 23, 'shttrstck_modified_brain.jpg'),
(3, 'I am astudent/researcher', 'I am 22 year old researcher.', 'https://github.com/Mash96', 23, 'shttrstck_modified_brain.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `research`
--

CREATE TABLE `research` (
  `article_id` int(10) NOT NULL,
  `title` varchar(200) NOT NULL,
  `authors` varchar(50) NOT NULL,
  `reference` varchar(500) DEFAULT NULL,
  `link` varchar(200) NOT NULL,
  `function_id` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `research`
--

INSERT INTO `research` (`article_id`, `title`, `authors`, `reference`, `link`, `function_id`) VALUES
(1, 'Analysis of Brain Activity for Given Auditory Stimulus\r\nUsing Functional MRI', 'H. N. Suma ,H. N. Champa ', 'International Journal of Computer Theory and Engineering, Vol. 5, No. 3, June 2013', 'Research-1', '1A'),
(2, 'Tonotopic mapping of human auditory cortex\r\n', 'Melissa Saenz , Dave R.M. Langers', 'Published by Elsevier B.V', 'Research-2', '1A'),
(3, 'Temporal Envelope Processing in the\r\nHuman Left and Right Auditory Cortices', 'Agnes Trebuchon, Jean Regis and Patrick Chauvel', 'Downloaded from https://academic.oup.com/cercor/article-abstract/14/7/731/375864', 'Research-3', '1A'),
(4, 'Processing of auditory spatial cues in human cortex: An fMRI study', 'Ulrike Zimmer , Jorg Lewald , Michael Erb ', 'Neuropsychologia 44 (2006) 454-461', 'Research-4', '1A');

-- --------------------------------------------------------

--
-- Table structure for table `suggestion`
--

CREATE TABLE `suggestion` (
  `id` int(10) NOT NULL,
  `bfunction` varchar(50) NOT NULL,
  `description` varchar(300) NOT NULL,
  `date` varchar(10) NOT NULL,
  `time` varchar(9) NOT NULL,
  `brodmannarea` varchar(100) NOT NULL,
  `document` tinyblob NOT NULL,
  `user_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `suggestion`
--

INSERT INTO `suggestion` (`id`, `bfunction`, `description`, `date`, `time`, `brodmannarea`, `document`, `user_id`) VALUES
(1, 'Sensory', 'I found a another part activating from a research paper i recently studied. i will send the research paper attached to this doc. can you look into that.', '', '', 'Broadmann area - 4', '', 23);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `fname` varchar(45) NOT NULL,
  `email` varchar(45) NOT NULL,
  `cnfrm_doc` tinyblob NOT NULL,
  `username` varchar(45) NOT NULL,
  `password` varchar(45) NOT NULL,
  `active` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `fname`, `email`, `cnfrm_doc`, `username`, `password`, `active`) VALUES
(23, 'Maneesha Rajaratne', 'maneesharajaratne@gmail.com', 0x66696c65732f7765656b20315f323031372e706466, 'maneesha96', '52ee99c7eb627af24e9519b393e4e178', 1),
(24, 'Udara', 'udarasandesh1993@gmail.com', 0x66696c65732f416c676f726974686d732049492e7a6970, 'udara123', '827ccb0eea8a706c4c34a16891f84e7b', 1),
(25, 'Vinodya', 'vinodyabandara@gmail.com', 0x66696c65732f416c676f726974686d732049492e7a6970, 'vino123', 'e10adc3949ba59abbe56e057f20f883e', 0),
(26, 'Senali Maneesha', 'senali.raj@gmail.com', 0x66696c65732f48656c6c6f20636c6f75642e7a6970, 'senali23', 'fcea920f7412b5da7be0cf42b8c93759', 0),
(27, 'Thisun', 'thisunpathirage@gmail.com', 0x66696c65732f48656c6c6f20636c6f75642e7a6970, 'thisun123', '202cb962ac59075b964b07152d234b70', 0),
(32, 'Senali', 'sahshamal@gmail.com', 0x66696c65732f44796e616d696373203336352e7a6970, 'shamal12', 'c20ad4d76fe97759aa27a0c99bff6710', 0),
(33, 'Thilan Costa', 'thilancosta94@gmail.com', 0x66696c65732f44796e616d696373203336352e7a6970, 'thilan', '36bd70bcce2be52c2d459940a93e9d21', 0),
(34, 'Dimantha', 'dimantha@gmail.com', 0x66696c65732f48656c6c6f20636c6f75642e7a6970, 'dimz123', 'c20ad4d76fe97759aa27a0c99bff6710', 0),
(35, 'Lolo', 'lolo@gmail.com', 0x66696c65732f6469616772616d732e7a6970, 'lolopolo', '81dc9bdb52d04dc20036dbd8313ed055', 1);

-- --------------------------------------------------------

--
-- Table structure for table `wp_commentmeta`
--

CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_comments`
--

CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'A WordPress Commenter', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2017-12-02 10:21:09', '2017-12-02 10:21:09', 'Hi, this is a comment.\nTo get started with moderating, editing, and deleting comments, please visit the Comments screen in the dashboard.\nCommenter avatars come from <a href=\"https://gravatar.com\">Gravatar</a>.', 0, 'post-trashed', '', '', 0, 0),
(2, 27, 'maneesha', 'maneesharajaratne@gmail.com', '', '::1', '2017-12-06 06:19:03', '2017-12-06 06:19:03', 'this is a good article', 0, '0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.94 Safari/537.36', '', 0, 0),
(3, 27, 'maneesha', 'maneesharajaratne@gmail.com', 'https://stackoverflow.com/questions/16925481/opening-a-new-tab-to-read-a-pdf-file', '::1', '2017-12-06 06:21:15', '2017-12-06 06:21:15', 'actually this is good', 0, '0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.94 Safari/537.36', '', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_links`
--

CREATE TABLE `wp_links` (
  `link_id` bigint(20) UNSIGNED NOT NULL,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_options`
--

CREATE TABLE `wp_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://localhost/brainstorm', 'yes'),
(2, 'home', 'http://localhost/brainstorm', 'yes'),
(3, 'blogname', 'FMRI Data portal', 'yes'),
(4, 'blogdescription', 'The Visualization of FMRI studies', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'fmribrainstorm@gmail.com', 'yes'),
(7, 'start_of_week', '1', 'yes'),
(8, 'use_balanceTags', '0', 'yes'),
(9, 'use_smilies', '1', 'yes'),
(10, 'require_name_email', '1', 'yes'),
(11, 'comments_notify', '1', 'yes'),
(12, 'posts_per_rss', '10', 'yes'),
(13, 'rss_use_excerpt', '0', 'yes'),
(14, 'mailserver_url', 'mail.example.com', 'yes'),
(15, 'mailserver_login', 'login@example.com', 'yes'),
(16, 'mailserver_pass', 'password', 'yes'),
(17, 'mailserver_port', '110', 'yes'),
(18, 'default_category', '1', 'yes'),
(19, 'default_comment_status', 'open', 'yes'),
(20, 'default_ping_status', 'open', 'yes'),
(21, 'default_pingback_flag', '1', 'yes'),
(22, 'posts_per_page', '10', 'yes'),
(23, 'date_format', 'F j, Y', 'yes'),
(24, 'time_format', 'g:i a', 'yes'),
(25, 'links_updated_date_format', 'F j, Y g:i a', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/index.php/%year%/%monthnum%/%day%/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:89:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:57:\"index.php/category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:52:\"index.php/category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:33:\"index.php/category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:45:\"index.php/category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:27:\"index.php/category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:54:\"index.php/tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:49:\"index.php/tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:30:\"index.php/tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:42:\"index.php/tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:24:\"index.php/tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:55:\"index.php/type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:50:\"index.php/type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:31:\"index.php/type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:43:\"index.php/type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:25:\"index.php/type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:42:\"index.php/feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:37:\"index.php/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:18:\"index.php/embed/?$\";s:21:\"index.php?&embed=true\";s:30:\"index.php/page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:51:\"index.php/comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:46:\"index.php/comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:27:\"index.php/comments/embed/?$\";s:21:\"index.php?&embed=true\";s:54:\"index.php/search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:49:\"index.php/search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:30:\"index.php/search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:42:\"index.php/search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:24:\"index.php/search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:57:\"index.php/author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:52:\"index.php/author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:33:\"index.php/author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:45:\"index.php/author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:27:\"index.php/author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:79:\"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:74:\"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:55:\"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:67:\"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:49:\"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:66:\"index.php/([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:61:\"index.php/([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:42:\"index.php/([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:54:\"index.php/([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:36:\"index.php/([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:53:\"index.php/([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:48:\"index.php/([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:29:\"index.php/([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:41:\"index.php/([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:23:\"index.php/([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:68:\"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:78:\"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:98:\"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:93:\"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:93:\"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:74:\"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:63:\"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/embed/?$\";s:91:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&embed=true\";s:67:\"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/trackback/?$\";s:85:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&tb=1\";s:87:\"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:82:\"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:75:\"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&paged=$matches[5]\";s:82:\"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&cpage=$matches[5]\";s:71:\"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)(?:/([0-9]+))?/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&page=$matches[5]\";s:57:\"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:67:\"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:87:\"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:82:\"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:82:\"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:63:\"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:74:\"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&cpage=$matches[4]\";s:61:\"index.php/([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&cpage=$matches[3]\";s:48:\"index.php/([0-9]{4})/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&cpage=$matches[2]\";s:37:\"index.php/.?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:47:\"index.php/.?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:67:\"index.php/.?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:62:\"index.php/.?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:62:\"index.php/.?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:43:\"index.php/.?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:26:\"index.php/(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:30:\"index.php/(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:50:\"index.php/(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:45:\"index.php/(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:38:\"index.php/(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:45:\"index.php/(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:34:\"index.php/(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:0:{}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', '', 'no'),
(40, 'template', 'boston-business', 'yes'),
(41, 'stylesheet', 'boston-business', 'yes'),
(42, 'comment_whitelist', '1', 'yes'),
(43, 'blacklist_keys', '', 'no'),
(44, 'comment_registration', '0', 'yes'),
(45, 'html_type', 'text/html', 'yes'),
(46, 'use_trackback', '0', 'yes'),
(47, 'default_role', 'subscriber', 'yes'),
(48, 'db_version', '38590', 'yes'),
(49, 'uploads_use_yearmonth_folders', '1', 'yes'),
(50, 'upload_path', '', 'yes'),
(51, 'blog_public', '1', 'yes'),
(52, 'default_link_category', '2', 'yes'),
(53, 'show_on_front', 'posts', 'yes'),
(54, 'tag_base', '', 'yes'),
(55, 'show_avatars', '1', 'yes'),
(56, 'avatar_rating', 'G', 'yes'),
(57, 'upload_url_path', '', 'yes'),
(58, 'thumbnail_size_w', '150', 'yes'),
(59, 'thumbnail_size_h', '150', 'yes'),
(60, 'thumbnail_crop', '1', 'yes'),
(61, 'medium_size_w', '300', 'yes'),
(62, 'medium_size_h', '300', 'yes'),
(63, 'avatar_default', 'mystery', 'yes'),
(64, 'large_size_w', '1024', 'yes'),
(65, 'large_size_h', '1024', 'yes'),
(66, 'image_default_link_type', 'none', 'yes'),
(67, 'image_default_size', '', 'yes'),
(68, 'image_default_align', '', 'yes'),
(69, 'close_comments_for_old_posts', '0', 'yes'),
(70, 'close_comments_days_old', '14', 'yes'),
(71, 'thread_comments', '1', 'yes'),
(72, 'thread_comments_depth', '5', 'yes'),
(73, 'page_comments', '0', 'yes'),
(74, 'comments_per_page', '50', 'yes'),
(75, 'default_comments_page', 'newest', 'yes'),
(76, 'comment_order', 'asc', 'yes'),
(77, 'sticky_posts', 'a:0:{}', 'yes'),
(78, 'widget_categories', 'a:2:{i:2;a:4:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:12:\"hierarchical\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(79, 'widget_text', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(80, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(81, 'uninstall_plugins', 'a:0:{}', 'no'),
(82, 'timezone_string', '', 'yes'),
(83, 'page_for_posts', '0', 'yes'),
(84, 'page_on_front', '0', 'yes'),
(85, 'default_post_format', '0', 'yes'),
(86, 'link_manager_enabled', '0', 'yes'),
(87, 'finished_splitting_shared_terms', '1', 'yes'),
(88, 'site_icon', '0', 'yes'),
(89, 'medium_large_size_w', '768', 'yes'),
(90, 'medium_large_size_h', '0', 'yes'),
(91, 'initial_db_version', '38590', 'yes'),
(92, 'wp_user_roles', 'a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}', 'yes'),
(93, 'fresh_site', '0', 'yes'),
(94, 'widget_search', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(95, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(96, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(97, 'widget_archives', 'a:2:{i:2;a:3:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(98, 'widget_meta', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(99, 'sidebars_widgets', 'a:7:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:8:\"footer-1\";a:0:{}s:8:\"footer-2\";a:0:{}s:8:\"footer-3\";a:0:{}s:8:\"footer-4\";a:0:{}s:13:\"array_version\";i:3;}', 'yes'),
(100, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(101, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(102, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(103, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(104, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(105, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(106, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(107, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(108, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(109, 'cron', 'a:5:{i:1512944472;a:1:{s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1512987712;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1512990639;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1515061272;a:2:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}s:7:\"version\";i:2;}', 'yes'),
(110, 'theme_mods_twentyseventeen', 'a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1512210939;s:4:\"data\";a:4:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:9:\"sidebar-2\";a:0:{}s:9:\"sidebar-3\";a:0:{}}}}', 'yes'),
(114, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:58:\"http://downloads.wordpress.org/release/wordpress-4.9.1.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:58:\"http://downloads.wordpress.org/release/wordpress-4.9.1.zip\";s:10:\"no_content\";s:69:\"http://downloads.wordpress.org/release/wordpress-4.9.1-no-content.zip\";s:11:\"new_bundled\";s:70:\"http://downloads.wordpress.org/release/wordpress-4.9.1-new-bundled.zip\";s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"4.9.1\";s:7:\"version\";s:5:\"4.9.1\";s:11:\"php_version\";s:5:\"5.2.4\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"4.7\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1515056208;s:15:\"version_checked\";s:5:\"4.9.1\";s:12:\"translations\";a:0:{}}', 'no'),
(116, '_site_transient_update_plugins', 'O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1515056646;s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:2:{s:19:\"akismet/akismet.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:21:\"w.org/plugins/akismet\";s:4:\"slug\";s:7:\"akismet\";s:6:\"plugin\";s:19:\"akismet/akismet.php\";s:11:\"new_version\";s:5:\"4.0.1\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/akismet/\";s:7:\"package\";s:56:\"https://downloads.wordpress.org/plugin/akismet.4.0.1.zip\";s:5:\"icons\";a:3:{s:2:\"1x\";s:59:\"https://ps.w.org/akismet/assets/icon-128x128.png?rev=969272\";s:2:\"2x\";s:59:\"https://ps.w.org/akismet/assets/icon-256x256.png?rev=969272\";s:7:\"default\";s:59:\"https://ps.w.org/akismet/assets/icon-256x256.png?rev=969272\";}s:7:\"banners\";a:2:{s:2:\"1x\";s:61:\"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904\";s:7:\"default\";s:61:\"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904\";}s:11:\"banners_rtl\";a:0:{}}s:9:\"hello.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:25:\"w.org/plugins/hello-dolly\";s:4:\"slug\";s:11:\"hello-dolly\";s:6:\"plugin\";s:9:\"hello.php\";s:11:\"new_version\";s:3:\"1.6\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/hello-dolly/\";s:7:\"package\";s:58:\"https://downloads.wordpress.org/plugin/hello-dolly.1.6.zip\";s:5:\"icons\";a:3:{s:2:\"1x\";s:63:\"https://ps.w.org/hello-dolly/assets/icon-128x128.jpg?rev=969907\";s:2:\"2x\";s:63:\"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=969907\";s:7:\"default\";s:63:\"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=969907\";}s:7:\"banners\";a:2:{s:2:\"1x\";s:65:\"https://ps.w.org/hello-dolly/assets/banner-772x250.png?rev=478342\";s:7:\"default\";s:65:\"https://ps.w.org/hello-dolly/assets/banner-772x250.png?rev=478342\";}s:11:\"banners_rtl\";a:0:{}}}}', 'no'),
(125, 'can_compress_scripts', '1', 'no'),
(139, 'current_theme', 'Boston Business', 'yes'),
(140, 'theme_mods_onepress', 'a:6:{i:0;b:0;s:18:\"nav_menu_locations\";a:0:{}s:18:\"custom_css_post_id\";i:-1;s:23:\"onepress_hide_sitetitle\";i:0;s:11:\"custom_logo\";i:6;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1512212192;s:4:\"data\";a:6:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:8:\"footer-1\";a:0:{}s:8:\"footer-2\";a:0:{}s:8:\"footer-3\";a:0:{}s:8:\"footer-4\";a:0:{}}}}', 'yes'),
(141, 'theme_switched', '', 'yes'),
(152, 'theme_mods_boston-business', 'a:7:{i:0;b:0;s:18:\"nav_menu_locations\";a:0:{}s:18:\"custom_css_post_id\";i:-1;s:11:\"custom_logo\";i:8;s:12:\"header_image\";s:78:\"http://localhost/brainstorm/wp-content/uploads/2017/12/cropped-wallpaper-2.jpg\";s:17:\"header_image_data\";O:8:\"stdClass\":5:{s:13:\"attachment_id\";i:10;s:3:\"url\";s:78:\"http://localhost/brainstorm/wp-content/uploads/2017/12/cropped-wallpaper-2.jpg\";s:13:\"thumbnail_url\";s:78:\"http://localhost/brainstorm/wp-content/uploads/2017/12/cropped-wallpaper-2.jpg\";s:6:\"height\";i:772;s:5:\"width\";i:1400;}s:13:\"theme_options\";a:5:{s:12:\"color_layout\";s:7:\"#1b3fb5\";s:11:\"page_layout\";s:10:\"no-sidebar\";s:11:\"site_layout\";s:4:\"wide\";s:14:\"copyright_text\";s:30:\"Copyright © 2017 | BrainStorm\";s:26:\"copyright_text_description\";s:0:\"\";}}', 'yes'),
(156, '_site_transient_update_themes', 'O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1512904839;s:7:\"checked\";a:7:{s:15:\"boston-business\";s:3:\"1.7\";s:8:\"maxstore\";s:5:\"1.4.2\";s:8:\"onepress\";s:5:\"2.0.2\";s:13:\"twentyfifteen\";s:3:\"1.9\";s:15:\"twentyseventeen\";s:3:\"1.4\";s:13:\"twentysixteen\";s:3:\"1.4\";s:15:\"universal-store\";s:5:\"1.0.3\";}s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}}', 'no'),
(185, '_transient_is_multi_author', '0', 'yes'),
(186, '_transient_boston_business_categories', '1', 'yes'),
(197, '_site_transient_timeout_theme_roots', '1512906639', 'no'),
(198, '_site_transient_theme_roots', 'a:7:{s:15:\"boston-business\";s:7:\"/themes\";s:8:\"maxstore\";s:7:\"/themes\";s:8:\"onepress\";s:7:\"/themes\";s:13:\"twentyfifteen\";s:7:\"/themes\";s:15:\"twentyseventeen\";s:7:\"/themes\";s:13:\"twentysixteen\";s:7:\"/themes\";s:15:\"universal-store\";s:7:\"/themes\";}', 'no'),
(199, '_transient_doing_cron', '1515056643.3991949558258056640625', 'yes');

-- --------------------------------------------------------

--
-- Table structure for table `wp_postmeta`
--

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 4, '_edit_lock', '1512211192:1'),
(3, 4, '_wp_trash_meta_status', 'publish'),
(4, 4, '_wp_trash_meta_time', '1512211194'),
(5, 5, '_wp_attached_file', '2017/12/wallpaper.jpg'),
(6, 5, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:2000;s:6:\"height\";i:1373;s:4:\"file\";s:21:\"2017/12/wallpaper.jpg\";s:5:\"sizes\";a:7:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:21:\"wallpaper-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:21:\"wallpaper-300x206.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:206;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:21:\"wallpaper-768x527.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:527;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:22:\"wallpaper-1024x703.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:703;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:19:\"onepress-blog-small\";a:4:{s:4:\"file\";s:21:\"wallpaper-300x150.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"onepress-small\";a:4:{s:4:\"file\";s:21:\"wallpaper-480x300.jpg\";s:5:\"width\";i:480;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:15:\"onepress-medium\";a:4:{s:4:\"file\";s:21:\"wallpaper-640x400.jpg\";s:5:\"width\";i:640;s:6:\"height\";i:400;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(7, 6, '_wp_attached_file', '2017/12/cropped-wallpaper.jpg'),
(8, 6, '_wp_attachment_context', 'custom-logo'),
(9, 6, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:2000;s:6:\"height\";i:1227;s:4:\"file\";s:29:\"2017/12/cropped-wallpaper.jpg\";s:5:\"sizes\";a:7:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:29:\"cropped-wallpaper-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:29:\"cropped-wallpaper-300x184.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:184;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:29:\"cropped-wallpaper-768x471.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:471;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:30:\"cropped-wallpaper-1024x628.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:628;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:19:\"onepress-blog-small\";a:4:{s:4:\"file\";s:29:\"cropped-wallpaper-300x150.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"onepress-small\";a:4:{s:4:\"file\";s:29:\"cropped-wallpaper-480x300.jpg\";s:5:\"width\";i:480;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:15:\"onepress-medium\";a:4:{s:4:\"file\";s:29:\"cropped-wallpaper-640x400.jpg\";s:5:\"width\";i:640;s:6:\"height\";i:400;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(10, 7, '_wp_trash_meta_status', 'publish'),
(11, 7, '_wp_trash_meta_time', '1512211278'),
(12, 8, '_wp_attached_file', '2017/12/cropped-wallpaper-1.jpg'),
(13, 8, '_wp_attachment_context', 'custom-logo'),
(14, 8, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1995;s:6:\"height\";i:934;s:4:\"file\";s:31:\"2017/12/cropped-wallpaper-1.jpg\";s:5:\"sizes\";a:5:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:31:\"cropped-wallpaper-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:31:\"cropped-wallpaper-1-300x140.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:140;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:31:\"cropped-wallpaper-1-768x360.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:360;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:32:\"cropped-wallpaper-1-1024x479.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:479;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:31:\"boston-business-featured-banner\";a:4:{s:4:\"file\";s:32:\"cropped-wallpaper-1-1400x320.jpg\";s:5:\"width\";i:1400;s:6:\"height\";i:320;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(15, 9, '_wp_trash_meta_status', 'publish'),
(16, 9, '_wp_trash_meta_time', '1512212327'),
(17, 10, '_wp_attached_file', '2017/12/cropped-wallpaper-2.jpg'),
(18, 10, '_wp_attachment_context', 'custom-header'),
(19, 10, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1400;s:6:\"height\";i:772;s:4:\"file\";s:31:\"2017/12/cropped-wallpaper-2.jpg\";s:5:\"sizes\";a:5:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:31:\"cropped-wallpaper-2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:31:\"cropped-wallpaper-2-300x165.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:165;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:31:\"cropped-wallpaper-2-768x423.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:423;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:32:\"cropped-wallpaper-2-1024x565.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:565;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:31:\"boston-business-featured-banner\";a:4:{s:4:\"file\";s:32:\"cropped-wallpaper-2-1400x320.jpg\";s:5:\"width\";i:1400;s:6:\"height\";i:320;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}s:17:\"attachment_parent\";i:5;}'),
(20, 10, '_wp_attachment_custom_header_last_used_boston-business', '1512212596'),
(21, 10, '_wp_attachment_is_custom_header', 'boston-business'),
(22, 11, '_wp_trash_meta_status', 'publish'),
(23, 11, '_wp_trash_meta_time', '1512212596'),
(24, 12, '_wp_trash_meta_status', 'publish'),
(25, 12, '_wp_trash_meta_time', '1512212675'),
(26, 13, '_wp_trash_meta_status', 'publish'),
(27, 13, '_wp_trash_meta_time', '1512212748'),
(28, 14, '_menu_item_type', 'custom'),
(29, 14, '_menu_item_menu_item_parent', '0'),
(30, 14, '_menu_item_object_id', '14'),
(31, 14, '_menu_item_object', 'custom'),
(32, 14, '_menu_item_target', ''),
(33, 14, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(34, 14, '_menu_item_xfn', ''),
(35, 14, '_menu_item_url', 'http://localhost/brainstorm/'),
(36, 14, '_menu_item_orphaned', '1512212945'),
(37, 15, '_menu_item_type', 'post_type'),
(38, 15, '_menu_item_menu_item_parent', '0'),
(39, 15, '_menu_item_object_id', '2'),
(40, 15, '_menu_item_object', 'page'),
(41, 15, '_menu_item_target', ''),
(42, 15, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(43, 15, '_menu_item_xfn', ''),
(44, 15, '_menu_item_url', ''),
(45, 15, '_menu_item_orphaned', '1512212946'),
(46, 16, '_menu_item_type', 'custom'),
(47, 16, '_menu_item_menu_item_parent', '0'),
(48, 16, '_menu_item_object_id', '16'),
(49, 16, '_menu_item_object', 'custom'),
(50, 16, '_menu_item_target', ''),
(51, 16, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(52, 16, '_menu_item_xfn', ''),
(53, 16, '_menu_item_url', 'http://localhost/brainstorm/'),
(54, 16, '_menu_item_orphaned', '1512212996'),
(55, 17, '_menu_item_type', 'post_type'),
(56, 17, '_menu_item_menu_item_parent', '0'),
(57, 17, '_menu_item_object_id', '2'),
(58, 17, '_menu_item_object', 'page'),
(59, 17, '_menu_item_target', ''),
(60, 17, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(61, 17, '_menu_item_xfn', ''),
(62, 17, '_menu_item_url', ''),
(63, 17, '_menu_item_orphaned', '1512212997'),
(64, 1, '_wp_trash_meta_status', 'publish'),
(65, 1, '_wp_trash_meta_time', '1512213027'),
(66, 1, '_wp_desired_post_slug', 'hello-world'),
(67, 1, '_wp_trash_meta_comments_status', 'a:1:{i:1;s:1:\"1\";}'),
(68, 19, '_edit_last', '1'),
(69, 19, '_edit_lock', '1512213379:1'),
(70, 20, '_wp_attached_file', '2017/12/300px-Researcher-test.jpg'),
(71, 20, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:300;s:6:\"height\";i:145;s:4:\"file\";s:33:\"2017/12/300px-Researcher-test.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:33:\"300px-Researcher-test-150x145.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:145;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:33:\"300px-Researcher-test-300x145.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:145;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(74, 2, '_wp_trash_meta_status', 'publish'),
(75, 2, '_wp_trash_meta_time', '1512213626'),
(76, 2, '_wp_desired_post_slug', 'sample-page'),
(77, 23, '_edit_last', '1'),
(78, 23, '_edit_lock', '1512214635:1'),
(79, 24, '_wp_attached_file', '2017/12/brainfunctions.jpg'),
(80, 24, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:278;s:6:\"height\";i:235;s:4:\"file\";s:26:\"2017/12/brainfunctions.jpg\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:26:\"brainfunctions-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(89, 27, '_edit_last', '1'),
(90, 27, '_edit_lock', '1512217873:1'),
(91, 28, '_wp_attached_file', '2017/12/cognitive-ability.jpg'),
(92, 28, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:300;s:6:\"height\";i:225;s:4:\"file\";s:29:\"2017/12/cognitive-ability.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:29:\"cognitive-ability-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:29:\"cognitive-ability-300x225.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:225;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(93, 29, '_wp_attached_file', '2017/12/Capture.png'),
(94, 29, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:658;s:6:\"height\";i:429;s:4:\"file\";s:19:\"2017/12/Capture.png\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:19:\"Capture-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:19:\"Capture-300x196.png\";s:5:\"width\";i:300;s:6:\"height\";i:196;s:9:\"mime-type\";s:9:\"image/png\";}s:31:\"boston-business-featured-banner\";a:4:{s:4:\"file\";s:19:\"Capture-658x320.png\";s:5:\"width\";i:658;s:6:\"height\";i:320;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(97, 31, '_edit_last', '1'),
(98, 31, '_edit_lock', '1512220249:1'),
(99, 32, '_wp_attached_file', '2017/12/slider-img-2.jpg'),
(100, 32, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:423;s:6:\"height\";i:306;s:4:\"file\";s:24:\"2017/12/slider-img-2.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:24:\"slider-img-2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:24:\"slider-img-2-300x217.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:217;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(101, 33, '_wp_attached_file', '2017/12/inhibition_sm.png'),
(102, 33, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:213;s:6:\"height\";i:213;s:4:\"file\";s:25:\"2017/12/inhibition_sm.png\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:25:\"inhibition_sm-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(103, 34, '_wp_attached_file', '2017/12/naming_sm.png'),
(104, 34, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:213;s:6:\"height\";i:213;s:4:\"file\";s:21:\"2017/12/naming_sm.png\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:21:\"naming_sm-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');

-- --------------------------------------------------------

--
-- Table structure for table `wp_posts`
--

CREATE TABLE `wp_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2017-12-02 10:21:09', '2017-12-02 10:21:09', 'Welcome to WordPress. This is your first post. Edit or delete it, then start writing!', 'Hello world!', '', 'trash', 'open', 'open', '', 'hello-world__trashed', '', '', '2017-12-02 11:10:27', '2017-12-02 11:10:27', '', 0, 'http://localhost/brainstorm/?p=1', 0, 'post', '', 1),
(2, 1, '2017-12-02 10:21:09', '2017-12-02 10:21:09', 'This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:\n\n<blockquote>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</blockquote>\n\n...or something like this:\n\n<blockquote>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</blockquote>\n\nAs a new WordPress user, you should go to <a href=\"http://localhost/brainstorm/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!', 'Sample Page', '', 'trash', 'closed', 'open', '', 'sample-page__trashed', '', '', '2017-12-02 11:20:26', '2017-12-02 11:20:26', '', 0, 'http://localhost/brainstorm/?page_id=2', 0, 'page', '', 0),
(4, 1, '2017-12-02 10:39:53', '2017-12-02 10:39:53', '{\n    \"blogdescription\": {\n        \"value\": \"The Visualization of FMRI studies\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2017-12-02 10:38:51\"\n    },\n    \"onepress::onepress_hide_sitetitle\": {\n        \"value\": false,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2017-12-02 10:38:51\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'b64ef256-3110-4ff5-bfdc-c885e650064d', '', '', '2017-12-02 10:39:53', '2017-12-02 10:39:53', '', 0, 'http://localhost/brainstorm/?p=4', 0, 'customize_changeset', '', 0),
(5, 1, '2017-12-02 10:40:33', '2017-12-02 10:40:33', '', 'wallpaper', '', 'inherit', 'open', 'closed', '', 'wallpaper', '', '', '2017-12-02 10:40:33', '2017-12-02 10:40:33', '', 0, 'http://localhost/brainstorm/wp-content/uploads/2017/12/wallpaper.jpg', 0, 'attachment', 'image/jpeg', 0),
(6, 1, '2017-12-02 10:40:54', '2017-12-02 10:40:54', 'http://localhost/brainstorm/wp-content/uploads/2017/12/cropped-wallpaper.jpg', 'cropped-wallpaper.jpg', '', 'inherit', 'open', 'closed', '', 'cropped-wallpaper-jpg', '', '', '2017-12-02 10:40:54', '2017-12-02 10:40:54', '', 0, 'http://localhost/brainstorm/wp-content/uploads/2017/12/cropped-wallpaper.jpg', 0, 'attachment', 'image/jpeg', 0),
(7, 1, '2017-12-02 10:41:17', '2017-12-02 10:41:17', '{\n    \"onepress::custom_logo\": {\n        \"value\": 6,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2017-12-02 10:41:17\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '40165228-edeb-4762-92ff-88dc290cb58d', '', '', '2017-12-02 10:41:17', '2017-12-02 10:41:17', '', 0, 'http://localhost/brainstorm/index.php/2017/12/02/40165228-edeb-4762-92ff-88dc290cb58d/', 0, 'customize_changeset', '', 0),
(8, 1, '2017-12-02 10:58:32', '2017-12-02 10:58:32', 'http://localhost/brainstorm/wp-content/uploads/2017/12/cropped-wallpaper-1.jpg', 'cropped-wallpaper-1.jpg', '', 'inherit', 'open', 'closed', '', 'cropped-wallpaper-1-jpg', '', '', '2017-12-02 10:58:32', '2017-12-02 10:58:32', '', 0, 'http://localhost/brainstorm/wp-content/uploads/2017/12/cropped-wallpaper-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(9, 1, '2017-12-02 10:58:46', '2017-12-02 10:58:46', '{\n    \"boston-business::custom_logo\": {\n        \"value\": 8,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2017-12-02 10:58:46\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '269a2d0d-54d1-4e6f-a7ce-6ffafba887cd', '', '', '2017-12-02 10:58:46', '2017-12-02 10:58:46', '', 0, 'http://localhost/brainstorm/index.php/2017/12/02/269a2d0d-54d1-4e6f-a7ce-6ffafba887cd/', 0, 'customize_changeset', '', 0),
(10, 1, '2017-12-02 11:03:00', '2017-12-02 11:03:00', '', 'cropped-wallpaper-2.jpg', '', 'inherit', 'open', 'closed', '', 'cropped-wallpaper-2-jpg', '', '', '2017-12-02 11:03:00', '2017-12-02 11:03:00', '', 0, 'http://localhost/brainstorm/wp-content/uploads/2017/12/cropped-wallpaper-2.jpg', 0, 'attachment', 'image/jpeg', 0),
(11, 1, '2017-12-02 11:03:15', '2017-12-02 11:03:15', '{\n    \"boston-business::header_image\": {\n        \"value\": \"http://localhost/brainstorm/wp-content/uploads/2017/12/cropped-wallpaper-2.jpg\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2017-12-02 11:03:15\"\n    },\n    \"boston-business::header_image_data\": {\n        \"value\": {\n            \"url\": \"http://localhost/brainstorm/wp-content/uploads/2017/12/cropped-wallpaper-2.jpg\",\n            \"thumbnail_url\": \"http://localhost/brainstorm/wp-content/uploads/2017/12/cropped-wallpaper-2.jpg\",\n            \"timestamp\": 1512212582075,\n            \"attachment_id\": 10,\n            \"width\": 1400,\n            \"height\": 772\n        },\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2017-12-02 11:03:15\"\n    },\n    \"boston-business::theme_options[color_layout]\": {\n        \"value\": \"#1b3fb5\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2017-12-02 11:03:15\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'f8875a9f-70c6-44cc-a9a2-03c5b61a4885', '', '', '2017-12-02 11:03:15', '2017-12-02 11:03:15', '', 0, 'http://localhost/brainstorm/index.php/2017/12/02/f8875a9f-70c6-44cc-a9a2-03c5b61a4885/', 0, 'customize_changeset', '', 0),
(12, 1, '2017-12-02 11:04:35', '2017-12-02 11:04:35', '{\n    \"boston-business::theme_options[page_layout]\": {\n        \"value\": \"no-sidebar\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2017-12-02 11:04:35\"\n    },\n    \"boston-business::theme_options[site_layout]\": {\n        \"value\": \"wide\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2017-12-02 11:04:35\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'e577c68c-7f39-45ab-9e32-5f132f178495', '', '', '2017-12-02 11:04:35', '2017-12-02 11:04:35', '', 0, 'http://localhost/brainstorm/index.php/2017/12/02/e577c68c-7f39-45ab-9e32-5f132f178495/', 0, 'customize_changeset', '', 0),
(13, 1, '2017-12-02 11:05:48', '2017-12-02 11:05:48', '{\n    \"boston-business::theme_options[copyright_text]\": {\n        \"value\": \"Copyright \\u00a9 2017 | BrainStorm\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2017-12-02 11:05:48\"\n    },\n    \"boston-business::theme_options[copyright_text_description]\": {\n        \"value\": \"\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2017-12-02 11:05:48\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '4789dde8-ec62-409f-baac-a81a5a706677', '', '', '2017-12-02 11:05:48', '2017-12-02 11:05:48', '', 0, 'http://localhost/brainstorm/index.php/2017/12/02/4789dde8-ec62-409f-baac-a81a5a706677/', 0, 'customize_changeset', '', 0),
(14, 1, '2017-12-02 11:09:04', '0000-00-00 00:00:00', '', 'Home', '', 'draft', 'closed', 'closed', '', '', '', '', '2017-12-02 11:09:04', '0000-00-00 00:00:00', '', 0, 'http://localhost/brainstorm/?p=14', 1, 'nav_menu_item', '', 0),
(15, 1, '2017-12-02 11:09:05', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2017-12-02 11:09:05', '0000-00-00 00:00:00', '', 0, 'http://localhost/brainstorm/?p=15', 1, 'nav_menu_item', '', 0),
(16, 1, '2017-12-02 11:09:55', '0000-00-00 00:00:00', '', 'Home', '', 'draft', 'closed', 'closed', '', '', '', '', '2017-12-02 11:09:55', '0000-00-00 00:00:00', '', 0, 'http://localhost/brainstorm/?p=16', 1, 'nav_menu_item', '', 0),
(17, 1, '2017-12-02 11:09:56', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2017-12-02 11:09:56', '0000-00-00 00:00:00', '', 0, 'http://localhost/brainstorm/?p=17', 1, 'nav_menu_item', '', 0),
(18, 1, '2017-12-02 11:10:27', '2017-12-02 11:10:27', 'Welcome to WordPress. This is your first post. Edit or delete it, then start writing!', 'Hello world!', '', 'inherit', 'closed', 'closed', '', '1-revision-v1', '', '', '2017-12-02 11:10:27', '2017-12-02 11:10:27', '', 1, 'http://localhost/brainstorm/index.php/2017/12/02/1-revision-v1/', 0, 'revision', '', 0),
(19, 1, '2017-12-02 11:18:29', '2017-12-02 11:18:29', '<b>Functional magnetic resonance imaging</b> or <b>functional MRI</b> (<b>fMRI</b>) measures brain activity by detecting changes associated with blood flow.<sup id=\"cite_ref-1\" class=\"reference\"></sup><sup id=\"cite_ref-Huettel_2009_2-0\" class=\"reference\"></sup>This technique relies on the fact that cerebral blood flow and neuronal activation are coupled. When an area of the brain is in use, blood flow to that region also increases.<img class=\"wp-image-20 alignright\" src=\"http://localhost/brainstorm/wp-content/uploads/2017/12/300px-Researcher-test-300x145.jpg\" alt=\"\" width=\"232\" height=\"112\" /><sup id=\"cite_ref-drnikos01_3-0\" class=\"reference\"></sup>\r\n\r\nThe primary form of fMRI uses the blood oxygen level dependent(BOLD) contrast, <sup id=\"cite_ref-Huettel_2009,_pg.26_4-0\" class=\"reference\"></sup>discovered by Seiji Ogawa. This is a type of specialized brain and body scan used to map neutral activity in the brain or spinal code of humans or other animals by imaging the change in blood flow (hemodynamic response) related to energy use by brain cells.<sup id=\"cite_ref-Huettel_2009,_pg.26_4-1\" class=\"reference\"></sup>Since the early 1990s, fMRI has come to dominate brain mapping research because it does not require people to undergo shots or surgery, to ingest substances, or to be exposed to pionising radiation.<sup id=\"cite_ref-5\" class=\"reference\"></sup> This measure is frequently corrupted by noise from various sources; hence, statistical procedures are used to extract the underlying signal. The resulting brain activation can be graphically represented by color-coding the strength of activation across the brain or the specific region studied. The technique can localize activity to within millimeters but, using standard techniques, no better than within a window of a few seconds.<sup id=\"cite_ref-6\" class=\"reference\"></sup> Other methods of obtaining contrast are arterial spin labeling <sup id=\"cite_ref-7\" class=\"reference\"></sup>and <a title=\"Diffusion MRI\" href=\"https://en.wikipedia.org/wiki/Diffusion_MRI\">diffusion MRI</a>. The latter procedure is similar to <a class=\"mw-redirect\" title=\"Blood-oxygen-level dependent\" href=\"https://en.wikipedia.org/wiki/Blood-oxygen-level_dependent\">BOLD fMRI</a> but provides contrast based on the magnitude of diffusion of water molecules in the brain.\r\n\r\nfMRI is used both in the research world, and to a lesser extent, in the clinical world. It can also be combined and complemented with other measures of brain physiology such as EEG and NIRS. Newer methods which improve both spatial and time resolution are being researched, and these largely use biomarkers other than the BOLD signal. Some companies have developed commercial products such as lie detectors based on fMRI techniques, but the research is not believed to be ripe enough for widespread commercialization.', 'What Is FMRI?', '', 'publish', 'open', 'open', '', 'what-is-fmri', '', '', '2017-12-02 11:18:29', '2017-12-02 11:18:29', '', 0, 'http://localhost/brainstorm/?p=19', 0, 'post', '', 0),
(20, 1, '2017-12-02 11:17:27', '2017-12-02 11:17:27', '', '300px-Researcher-test', '', 'inherit', 'open', 'closed', '', '300px-researcher-test', '', '', '2017-12-02 11:17:27', '2017-12-02 11:17:27', '', 19, 'http://localhost/brainstorm/wp-content/uploads/2017/12/300px-Researcher-test.jpg', 0, 'attachment', 'image/jpeg', 0),
(21, 1, '2017-12-02 11:18:29', '2017-12-02 11:18:29', '<b>Functional magnetic resonance imaging</b> or <b>functional MRI</b> (<b>fMRI</b>) measures brain activity by detecting changes associated with blood flow.<sup id=\"cite_ref-1\" class=\"reference\"></sup><sup id=\"cite_ref-Huettel_2009_2-0\" class=\"reference\"></sup>This technique relies on the fact that cerebral blood flow and neuronal activation are coupled. When an area of the brain is in use, blood flow to that region also increases.<img class=\"wp-image-20 alignright\" src=\"http://localhost/brainstorm/wp-content/uploads/2017/12/300px-Researcher-test-300x145.jpg\" alt=\"\" width=\"232\" height=\"112\" /><sup id=\"cite_ref-drnikos01_3-0\" class=\"reference\"></sup>\r\n\r\nThe primary form of fMRI uses the blood oxygen level dependent(BOLD) contrast, <sup id=\"cite_ref-Huettel_2009,_pg.26_4-0\" class=\"reference\"></sup>discovered by Seiji Ogawa. This is a type of specialized brain and body scan used to map neutral activity in the brain or spinal code of humans or other animals by imaging the change in blood flow (hemodynamic response) related to energy use by brain cells.<sup id=\"cite_ref-Huettel_2009,_pg.26_4-1\" class=\"reference\"></sup>Since the early 1990s, fMRI has come to dominate brain mapping research because it does not require people to undergo shots or surgery, to ingest substances, or to be exposed to pionising radiation.<sup id=\"cite_ref-5\" class=\"reference\"></sup> This measure is frequently corrupted by noise from various sources; hence, statistical procedures are used to extract the underlying signal. The resulting brain activation can be graphically represented by color-coding the strength of activation across the brain or the specific region studied. The technique can localize activity to within millimeters but, using standard techniques, no better than within a window of a few seconds.<sup id=\"cite_ref-6\" class=\"reference\"></sup> Other methods of obtaining contrast are arterial spin labeling <sup id=\"cite_ref-7\" class=\"reference\"></sup>and <a title=\"Diffusion MRI\" href=\"https://en.wikipedia.org/wiki/Diffusion_MRI\">diffusion MRI</a>. The latter procedure is similar to <a class=\"mw-redirect\" title=\"Blood-oxygen-level dependent\" href=\"https://en.wikipedia.org/wiki/Blood-oxygen-level_dependent\">BOLD fMRI</a> but provides contrast based on the magnitude of diffusion of water molecules in the brain.\r\n\r\nfMRI is used both in the research world, and to a lesser extent, in the clinical world. It can also be combined and complemented with other measures of brain physiology such as EEG and NIRS. Newer methods which improve both spatial and time resolution are being researched, and these largely use biomarkers other than the BOLD signal. Some companies have developed commercial products such as lie detectors based on fMRI techniques, but the research is not believed to be ripe enough for widespread commercialization.', 'What Is FMRI?', '', 'inherit', 'closed', 'closed', '', '19-revision-v1', '', '', '2017-12-02 11:18:29', '2017-12-02 11:18:29', '', 19, 'http://localhost/brainstorm/index.php/2017/12/02/19-revision-v1/', 0, 'revision', '', 0),
(22, 1, '2017-12-02 11:20:26', '2017-12-02 11:20:26', 'This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:\n\n<blockquote>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</blockquote>\n\n...or something like this:\n\n<blockquote>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</blockquote>\n\nAs a new WordPress user, you should go to <a href=\"http://localhost/brainstorm/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!', 'Sample Page', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2017-12-02 11:20:26', '2017-12-02 11:20:26', '', 2, 'http://localhost/brainstorm/index.php/2017/12/02/2-revision-v1/', 0, 'revision', '', 0),
(23, 1, '2017-12-02 11:36:11', '2017-12-02 11:36:11', '<div>\r\n\r\nThe brain\'s function as part of the Central Nervous System (CNS) is to regulate the majority of our body and mind\'s functions. This includes vital functions like breathing or heart rate, going from basic functions like sleeping, eating, or sexual instinct, to superior functions like thinking, remembering, reasoning, or talking.<img class=\"wp-image-24 alignright\" src=\"http://localhost/brainstorm/wp-content/uploads/2017/12/brainfunctions.jpg\" alt=\"\" width=\"233\" height=\"198\" />\r\n\r\nIn order to carry-out any seemingly simple task, our brain has to perform thousands of processes to ensure that we properly complete the task. Proper brain function is the key to a healthy life.\r\n\r\n</div>\r\n<div>\r\n\r\nBasic vital functions are measured by the oldest brain structures. In other words, the structures located in the hindbrain (medulla, pons, cerebellum), and in the midbrain. However, superior brain functions, like reasoning, memory, and attention, are controlled by the hemispheres and lobes that form part of the cortex.\r\n<div>\r\n<h2>Why do we use brain functions?</h2>\r\n</div>\r\n<div>\r\n\r\nIn the course of just one day, we use our brain functions constantly. Thousands of tasks are being performed, which require millions of complex mental calculations from different parts of the brain. Here we will show you some examples of you will use these cognitive skills and brain functions daily in a multitude of tasks.\r\n<ul>\r\n 	<li><strong>Making food is good for your health-</strong>When you\'re cooking, you have to watch various pots and pans at the same time, all while attending to your guests and the recipe.</li>\r\n 	<li><strong>Run a meeting- </strong>Properly running a business or family meeting is a complex task. It requires your brain to activate determined neural networks and brain functions related to attention, concentration, active listening capacity, response speed, etc.</li>\r\n 	<li><strong>Fly a kite- </strong>Most people assume that relaxation comes naturally, but you couldn\'t do it without a few key cognitive abilities.</li>\r\n 	<li><strong>Drive a car- </strong>Even if you\'re an experienced driver, getting to your destination quickly and safely requires skill, concentration and a wide array of cognitive abilities.</li>\r\n 	<li><strong>Meet Friends- </strong>Life would be lonely without the cognitive skills that allow us to meet and greet one another.</li>\r\n</ul>\r\n</div>\r\n</div>', 'What Is the brain\'s function?', '', 'publish', 'open', 'open', '', 'what-is-the-brains-function', '', '', '2017-12-02 11:39:03', '2017-12-02 11:39:03', '', 0, 'http://localhost/brainstorm/?p=23', 0, 'post', '', 0),
(24, 1, '2017-12-02 11:35:32', '2017-12-02 11:35:32', '', 'brainfunctions', '', 'inherit', 'open', 'closed', '', 'brainfunctions', '', '', '2017-12-02 11:35:32', '2017-12-02 11:35:32', '', 23, 'http://localhost/brainstorm/wp-content/uploads/2017/12/brainfunctions.jpg', 0, 'attachment', 'image/jpeg', 0),
(25, 1, '2017-12-02 11:36:11', '2017-12-02 11:36:11', '<div>\r\n\r\nThe brain\'s function as part of the Central Nervous System (CNS) is to regulate the majority of our body and mind\'s functions. This includes vital functions like breathing or heart rate, going from basic functions like sleeping, eating, or sexual instinct, to superior functions like thinking, remembering, reasoning, or talking.<img class=\"wp-image-24 alignright\" src=\"http://localhost/brainstorm/wp-content/uploads/2017/12/brainfunctions.jpg\" alt=\"\" width=\"233\" height=\"198\" />\r\n\r\nIn order to carry-out any seemingly simple task, our brain has to perform thousands of processes to ensure that we properly complete the task. Proper brain function is the key to a healthy life.\r\n\r\n</div>\r\n<div>\r\n\r\nBasic vital functions are measured by the oldest brain structures. In other words, the structures located in the hindbrain (medulla, pons, cerebellum), and in the midbrain. However, superior brain functions, like reasoning, memory, and attention, are controlled by the hemispheres and lobes that form part of the cortex.\r\n<div>\r\n<h2>Why do we use brain functions?</h2>\r\n</div>\r\n<div>\r\n\r\nIn the course of just one day, we use our brain functions constantly. Thousands of tasks are being performed, which require millions of complex mental calculations from different parts of the brain. Here we will show you some examples of you will use these cognitive skills and brain functions daily in a multitude of tasks.\r\n<ul>\r\n 	<li><strong>Making food is good for your health-</strong>When you\'re cooking, you have to watch various pots and pans at the same time, all while attending to your guests and the recipe.</li>\r\n 	<li><strong>Run a meeting- </strong>Properly running a business or family meeting is a complex task. It requires your brain to activate determined neural networks and brain functions related to attention, concentration, active listening capacity, response speed, etc.</li>\r\n 	<li><strong>Fly a kite- </strong>Most people assume that relaxation comes naturally, but you couldn\'t do it without a few key cognitive abilities.</li>\r\n 	<li><strong>Drive a car- </strong>Even if you\'re an experienced driver, getting to your destination quickly and safely requires skill, concentration and a wide array of cognitive abilities.</li>\r\n 	<li><strong>Meet Friends- </strong>Life would be lonely without the cognitive skills that allow us to meet and greet one another.</li>\r\n</ul>\r\n</div>\r\n</div>', 'What Is the brain\'s function?', '', 'inherit', 'closed', 'closed', '', '23-revision-v1', '', '', '2017-12-02 11:36:11', '2017-12-02 11:36:11', '', 23, 'http://localhost/brainstorm/index.php/2017/12/02/23-revision-v1/', 0, 'revision', '', 0),
(27, 1, '2017-12-02 12:33:21', '2017-12-02 12:33:21', '<div>\r\n\r\nCognitive functions are the mental processes that allow us to receive, select, store, transform, develop, and recover information that we\'ve received from external stimuli. This process allows us to understand and relate to the world around more effectively.<img class=\"size-medium wp-image-28 alignleft\" src=\"http://localhost/brainstorm/wp-content/uploads/2017/12/cognitive-ability-300x225.jpg\" alt=\"\" width=\"300\" height=\"225\" />\r\n\r\n</div>\r\n<div>\r\n\r\nWe are constantly using our brain functions - It\'s impossible to do almost anything <i>without </i>engaging at least some of the cognitive functions that we have available to us. For example, Do you want some breakfast? Thinking about starting a book? Do you have to drive anywhere? Are you having an interesting conversation with your friends?\r\n\r\nAll of the activities that we do everyday require millions of connections and complex mental calculations between the different parts of the brain in order to properly immerse ourselves in the world around us.\r\n\r\n</div>\r\n<div>\r\n<div class=\"spaceLand\">\r\n<h3 id=\"slide_7\" class=\"anclaLand\"> <strong>What are the main cognitive functions?</strong></h3>\r\n</div>\r\n</div>\r\n<div>\r\n\r\nOften times when we talk about superior cognitive functions, we\'re referring to the cognitive skills that we use in order to understand and interact with the world. Although sometimes we study them as separate ideas, we have to remember that cognitive functions are always interrelated and that sometimes they overlap. We\'ll take a look at the main brain functions:\r\n\r\n1.<strong>ATTENTION:</strong>\r\n\r\nAttention is a complex mental process that cannot be reduced to one simple definition, one concrete anatomical structure, and that cannot be assessed by one single test as it encompasses diverse processes. To simplify, attention is the cognitive or brain function that we use to select between stimuli that reach our brain simultaneously, both external (smells, sounds, images...) and internal (thoughts, emotions...), that are useful for carrying-out a mental or motor activity. In reality, it is a whole set of processes that vary in complexity and allow us to carry-out the rest of our cognitive functions well. Attention can broken into different types depending on its complexity.\r\n<h5>2.<strong style=\"font-size: 16px;\">MEMORY:</strong></h5>\r\n<span style=\"font-size: 16px;\"> Memory is a complex process that allows us to code, store, and recover information. If the attentional system doesn\'t work properly, we won\'t be as efficient in doing such tasks. If we don\'t pay attention to something, we cannot code, store, or recover this information.</span>\r\n<div class=\"clickeableTitle clickeableTitle3\">\r\n<h5><strong>3.EXECUTIVE FUNCTIONS:</strong></h5>\r\nExecutive functions are the most complex cognitive functions. While there are different definitions for cognitive functions, most of them include cognition control and thought and behavior control through various related processes. They comprise a set of complex skills, like attention focus, planning, programming, regulation, and intentional behavior verification. Executive functions are located in the frontal lobe.\r\n<h5>4.<strong style=\"font-size: 16px;\">LANGUAGE:</strong><span style=\"font-size: 16px;\"> </span></h5>\r\n<span style=\"font-size: 16px;\">Language is a symbolic communication system that is presented through languages. Language isn\'t only important for communicating with others, but also for structuring our internal thoughts. Language processing uses different brain areas that act together through different functional systems that involve the left hemisphere especially. We could talk about two cortical areas that are in charge of expression and reception of language, mainly in the left cerebral hemisphere.</span>\r\n<div class=\"clickeableTitle clickeableTitle5\">\r\n<h5><strong>5.VISUAL-PERCEPTIVE AND VISUAL-SPATIAL FUNCTIONS:</strong></h5>\r\nVisual-perceptive functions are the functions that allow us to recognize and differentiate between stimuli. They help us interpret, attribute, and associate what we\'re seeing into known categories and integrate them into our knowledge. When these functions work properly, we are able to recognize friends\' and family\'s faces, or distinguish between keys, a hat, and a comb.\r\n\r\n<img class=\"wp-image-29 aligncenter\" src=\"http://localhost/brainstorm/wp-content/uploads/2017/12/Capture-300x196.png\" alt=\"\" width=\"341\" height=\"223\" />\r\n\r\n</div>\r\n</div>\r\n</div>', 'What are Cognitive Functions?', '', 'publish', 'open', 'open', '', 'what-are-cognitive-functions', '', '', '2017-12-02 12:33:21', '2017-12-02 12:33:21', '', 0, 'http://localhost/brainstorm/?p=27', 0, 'post', '', 0),
(28, 1, '2017-12-02 12:24:27', '2017-12-02 12:24:27', '', 'cognitive-ability', '', 'inherit', 'open', 'closed', '', 'cognitive-ability', '', '', '2017-12-02 12:24:27', '2017-12-02 12:24:27', '', 27, 'http://localhost/brainstorm/wp-content/uploads/2017/12/cognitive-ability.jpg', 0, 'attachment', 'image/jpeg', 0),
(29, 1, '2017-12-02 12:31:27', '2017-12-02 12:31:27', '', 'Capture', '', 'inherit', 'open', 'closed', '', 'capture', '', '', '2017-12-02 12:31:27', '2017-12-02 12:31:27', '', 27, 'http://localhost/brainstorm/wp-content/uploads/2017/12/Capture.png', 0, 'attachment', 'image/png', 0),
(30, 1, '2017-12-02 12:33:21', '2017-12-02 12:33:21', '<div>\r\n\r\nCognitive functions are the mental processes that allow us to receive, select, store, transform, develop, and recover information that we\'ve received from external stimuli. This process allows us to understand and relate to the world around more effectively.<img class=\"size-medium wp-image-28 alignleft\" src=\"http://localhost/brainstorm/wp-content/uploads/2017/12/cognitive-ability-300x225.jpg\" alt=\"\" width=\"300\" height=\"225\" />\r\n\r\n</div>\r\n<div>\r\n\r\nWe are constantly using our brain functions - It\'s impossible to do almost anything <i>without </i>engaging at least some of the cognitive functions that we have available to us. For example, Do you want some breakfast? Thinking about starting a book? Do you have to drive anywhere? Are you having an interesting conversation with your friends?\r\n\r\nAll of the activities that we do everyday require millions of connections and complex mental calculations between the different parts of the brain in order to properly immerse ourselves in the world around us.\r\n\r\n</div>\r\n<div>\r\n<div class=\"spaceLand\">\r\n<h3 id=\"slide_7\" class=\"anclaLand\"> <strong>What are the main cognitive functions?</strong></h3>\r\n</div>\r\n</div>\r\n<div>\r\n\r\nOften times when we talk about superior cognitive functions, we\'re referring to the cognitive skills that we use in order to understand and interact with the world. Although sometimes we study them as separate ideas, we have to remember that cognitive functions are always interrelated and that sometimes they overlap. We\'ll take a look at the main brain functions:\r\n\r\n1.<strong>ATTENTION:</strong>\r\n\r\nAttention is a complex mental process that cannot be reduced to one simple definition, one concrete anatomical structure, and that cannot be assessed by one single test as it encompasses diverse processes. To simplify, attention is the cognitive or brain function that we use to select between stimuli that reach our brain simultaneously, both external (smells, sounds, images...) and internal (thoughts, emotions...), that are useful for carrying-out a mental or motor activity. In reality, it is a whole set of processes that vary in complexity and allow us to carry-out the rest of our cognitive functions well. Attention can broken into different types depending on its complexity.\r\n<h5>2.<strong style=\"font-size: 16px;\">MEMORY:</strong></h5>\r\n<span style=\"font-size: 16px;\"> Memory is a complex process that allows us to code, store, and recover information. If the attentional system doesn\'t work properly, we won\'t be as efficient in doing such tasks. If we don\'t pay attention to something, we cannot code, store, or recover this information.</span>\r\n<div class=\"clickeableTitle clickeableTitle3\">\r\n<h5><strong>3.EXECUTIVE FUNCTIONS:</strong></h5>\r\nExecutive functions are the most complex cognitive functions. While there are different definitions for cognitive functions, most of them include cognition control and thought and behavior control through various related processes. They comprise a set of complex skills, like attention focus, planning, programming, regulation, and intentional behavior verification. Executive functions are located in the frontal lobe.\r\n<h5>4.<strong style=\"font-size: 16px;\">LANGUAGE:</strong><span style=\"font-size: 16px;\"> </span></h5>\r\n<span style=\"font-size: 16px;\">Language is a symbolic communication system that is presented through languages. Language isn\'t only important for communicating with others, but also for structuring our internal thoughts. Language processing uses different brain areas that act together through different functional systems that involve the left hemisphere especially. We could talk about two cortical areas that are in charge of expression and reception of language, mainly in the left cerebral hemisphere.</span>\r\n<div class=\"clickeableTitle clickeableTitle5\">\r\n<h5><strong>5.VISUAL-PERCEPTIVE AND VISUAL-SPATIAL FUNCTIONS:</strong></h5>\r\nVisual-perceptive functions are the functions that allow us to recognize and differentiate between stimuli. They help us interpret, attribute, and associate what we\'re seeing into known categories and integrate them into our knowledge. When these functions work properly, we are able to recognize friends\' and family\'s faces, or distinguish between keys, a hat, and a comb.\r\n\r\n<img class=\"wp-image-29 aligncenter\" src=\"http://localhost/brainstorm/wp-content/uploads/2017/12/Capture-300x196.png\" alt=\"\" width=\"341\" height=\"223\" />\r\n\r\n</div>\r\n</div>\r\n</div>', 'What are Cognitive Functions?', '', 'inherit', 'closed', 'closed', '', '27-revision-v1', '', '', '2017-12-02 12:33:21', '2017-12-02 12:33:21', '', 27, 'http://localhost/brainstorm/index.php/2017/12/02/27-revision-v1/', 0, 'revision', '', 0),
(31, 1, '2017-12-02 13:12:59', '2017-12-02 13:12:59', '<b>Cognitive skills</b> are the core <b>skills</b> your brain uses to think, read, learn, remember, reason, and pay attention. <img class=\" wp-image-32 alignright\" src=\"http://localhost/brainstorm/wp-content/uploads/2017/12/slider-img-2-300x217.jpg\" alt=\"\" width=\"219\" height=\"159\" />Working together, they take incoming information and move it into the bank of knowledge you use everyday at school, at work, and in life.\r\n\r\nEach of your cognitive skills plays an important part in processing new information. That means if even one of these skills is weak, no matter what kind of information is coming your way, grasping, retaining, or using that information is impacted. In fact, most learning struggles are caused by one or more weak cognitive skills.\r\n\r\nHere’s a brief description of each of the cognitive skills.\r\n<div class=\"mod_line int_section borde_derecho\">\r\n<div class=\"mod_text\">\r\n<div class=\"info_area\">\r\n<h5>Auditory Short-term Memory</h5>\r\n<div class=\"info_area\">\r\n\r\n<img class=\"alignleft\" title=\"Auditory Short-term Memory\" src=\"https://www.cognifit.com/img/corporativa111/auditory_stm_sm.png\" alt=\"Auditory Short-term Memory\" width=\"120\" height=\"120\" />\r\n\r\n</div>\r\nThe ability to remember auditory information over a brief period of time.\r\n\r\n&nbsp;\r\n\r\n&nbsp;\r\n<h5 class=\"more_line\">Contextual Memory</h5>\r\n<img class=\"alignleft\" title=\"Contextual Memory\" src=\"https://www.cognifit.com/img/corporativa111/contextual_memory_small.png\" alt=\"Contextual Memory\" width=\"93\" height=\"93\" /></div>\r\n&nbsp;\r\n\r\n</div>\r\n</div>\r\n<div class=\"mod_line int_section\">\r\n<div class=\"mod_text\">\r\n<div class=\"info_area\">\r\n\r\nThe conscious recall of the source and circumstances of a specific memory.\r\n<p class=\"more_line\"></p>\r\n\r\n</div>\r\n</div>\r\n</div>\r\n<h3 class=\"linea_clear\"></h3>\r\n<div class=\"mod_line int_section borde_derecho\">\r\n<h5 class=\"mod_text\">Divided Attention</h5>\r\n<img class=\"alignleft\" style=\"font-size: 13.28px;\" title=\"Divided Attention\" src=\"https://www.cognifit.com/img/corporativa111/divided_attention_sm.png\" alt=\"Divided Attention\" width=\"106\" height=\"106\" />\r\n<p class=\"mod_text\">The ability to execute more than one action at a time, while paying attention to a few channels of information.</p>\r\n\r\n<div class=\"info_area\">\r\n\r\n&nbsp;\r\n<h5></h5>\r\n<h5 class=\"more_line\">Focus</h5>\r\n</div>\r\n</div>\r\n<div class=\"mod_line int_section\">\r\n<div class=\"mod_text\">\r\n<div class=\"info_area\">\r\n\r\n<img class=\"alignleft\" title=\"Focus\" src=\"https://www.cognifit.com/img/corporativa111/focus_sm.png\" alt=\"Focus\" width=\"90\" height=\"90\" />The ability to focus attention on a single stimulus\r\n<p class=\"more_line\">\r\n\r\n\r\n\r\n</p>\r\n\r\n<h5>Hand-eye Coordination</h5>\r\n</div>\r\n</div>\r\n</div>\r\n<div class=\"mod_line int_section borde_derecho\">\r\n<div class=\"mod_text\">\r\n<div class=\"info_area\"><img class=\"alignleft\" title=\"Hand-eye Coordination\" src=\"https://www.cognifit.com/img/corporativa111/hand_eye_coordination_sm.png\" alt=\"Hand-eye Coordination\" width=\"61\" height=\"61\" />The level of sensitivity with which the hand and eye are synchronized.\r\n<p class=\"more_line\"></p>\r\n\r\n<div class=\"info_area\"></div>\r\n</div>\r\n</div>\r\n</div>\r\n<div class=\"mod_line int_section\">\r\n<div class=\"mod_text\">\r\n<div class=\"info_area\">\r\n<h5>Inhibition</h5>\r\n<img class=\"wp-image-33 alignleft\" src=\"http://localhost/brainstorm/wp-content/uploads/2017/12/inhibition_sm.png\" alt=\"\" width=\"95\" height=\"95\" />\r\n<h3></h3>\r\nThe ability to ignore irrelevant stimuli or suppress irrelevant reactions while performing a task.\r\n\r\n</div>\r\n</div>\r\n&nbsp;\r\n<div class=\"mod_text\">\r\n<div class=\"info_area\">\r\n<h5>Naming</h5>\r\n<img class=\" wp-image-34 alignleft\" src=\"http://localhost/brainstorm/wp-content/uploads/2017/12/naming_sm.png\" alt=\"\" width=\"98\" height=\"98\" />\r\n\r\n</div>\r\n</div>\r\n</div>\r\n<div class=\"linea_clear\"></div>\r\n<div class=\"mod_line int_section borde_derecho\">\r\n<div class=\"mod_text\">The ability to retrieve a word from our semantic lexicon and is considered to be a basic ability.\r\n<div class=\"info_area\">\r\n<p class=\"more_line\"></p>\r\n\r\n</div>\r\n</div>\r\n<h5>Planning</h5>\r\n<h5><img class=\"alignleft\" title=\"Planning\" src=\"https://www.cognifit.com/img/corporativa111/planning_sm.png\" alt=\"Planning\" width=\"79\" height=\"79\" /></h5>\r\n</div>\r\n<div class=\"mod_line int_section\">\r\n<div class=\"mod_text\">The ability to \"think ahead\", to mentally anticipate the correct way to execute a task.</div>\r\n<div class=\"mod_text\">\r\n<div class=\"info_area\">\r\n\r\n&nbsp;\r\n<h5 class=\"more_line\">Processing Speed</h5>\r\n</div>\r\n</div>\r\n</div>\r\n<div class=\"mod_line int_section borde_derecho\">\r\n<div class=\"mod_text\">\r\n<div class=\"info_area\">\r\n\r\n<img class=\"alignleft\" title=\"Processing Speed\" src=\"https://www.cognifit.com/img/corporativa111/processing_speed_sm.png\" alt=\"Processing Speed\" width=\"92\" height=\"92\" />Involves the ability to fluently perform easy or over-learned tasks.\r\n<p class=\"more_line\"></p>\r\n\r\n</div>\r\n</div>\r\n</div>\r\n<div class=\"mod_line int_section\">\r\n<div class=\"mod_text\">\r\n<div class=\"info_area\">\r\n<h5></h5>\r\n<h5>Recognition</h5>\r\n<img class=\"alignleft\" title=\"Recognition\" src=\"https://www.cognifit.com/img/corporativa111/recognition_sm.png\" alt=\"Recognition\" width=\"95\" height=\"95\" />The ability to retrieve information from the past and to recognize certain events, places or other information.\r\n<p class=\"more_line\"></p>\r\n\r\n</div>\r\n</div>\r\n</div>\r\n<div class=\"linea_clear\"></div>\r\n<div class=\"mod_line int_section borde_derecho\">\r\n<div class=\"mod_text\">\r\n<div class=\"info_area\">\r\n<h5>Response Time</h5>\r\n<img class=\"alignleft\" title=\"Response Time\" src=\"https://www.cognifit.com/img/corporativa111/response_time_sm.png\" alt=\"Response Time\" width=\"70\" height=\"70\" />The ability to perceive and process a simple stimulus and respond to it.\r\n\r\n&nbsp;\r\n\r\n&nbsp;\r\n<h5 class=\"more_line\">Shifting</h5>\r\n</div>\r\n</div>\r\n</div>\r\n<div class=\"mod_line int_section\">\r\n<div class=\"mod_text\">\r\n<div class=\"info_area\">\r\n\r\n<img class=\"alignleft\" title=\"Shifting\" src=\"https://www.cognifit.com/img/corporativa111/shifting_sm.png\" alt=\"Shifting\" width=\"100\" height=\"100\" />Ability to adapt behavior and thoughts to new, changing, or unexpected circumstances\r\n<p class=\"more_line\"></p>\r\n\r\n</div>\r\n</div>\r\n</div>\r\n<h5 class=\"linea_clear\"></h5>\r\n<h5 class=\"linea_clear\">Short-term Memory</h5>\r\n<div class=\"mod_line int_section borde_derecho\">\r\n<div class=\"mod_text\">\r\n<div class=\"info_area\">\r\n\r\n<img class=\"alignleft\" title=\"Short-term Memory\" src=\"https://www.cognifit.com/img/corporativa111/stm_sm.png\" alt=\"Short-term Memory\" width=\"51\" height=\"51\" />The ability to hold a small amount of information in a readily, available state for a short period of time.\r\n<p class=\"more_line\"></p>\r\n\r\n</div>\r\n</div>\r\n</div>\r\n<div class=\"mod_line int_section\">\r\n<div class=\"mod_text\">\r\n<div class=\"info_area\">\r\n<h5>Spatial Perception</h5>\r\n<img class=\"alignleft\" title=\"Spatial Perception\" src=\"https://www.cognifit.com/img/corporativa111/spatial_perception_sm.png\" alt=\"Spatial Perception\" width=\"83\" height=\"83\" />The ability to evaluate how things are arranged in space, and investigate their relations in the environment.\r\n<p class=\"more_line\"></p>\r\n\r\n</div>\r\n</div>\r\n</div>\r\n<div class=\"linea_clear\"></div>\r\n<div class=\"mod_line int_section borde_derecho\">\r\n<div class=\"mod_text\">\r\n<div class=\"info_area\">\r\n<h5>Updating</h5>\r\n<img class=\"alignleft\" title=\"Updating\" src=\"https://www.cognifit.com/img/corporativa111/updating_sm.png\" alt=\"Updating\" width=\"68\" height=\"68\" />The ability to respond in a flexible and adaptive manner in order to keep up with the changes in the environment.\r\n<p class=\"more_line\"></p>\r\n\r\n</div>\r\n</div>\r\n</div>\r\n<div class=\"mod_line int_section\">\r\n<div class=\"mod_text\">\r\n<div class=\"info_area\">\r\n<h5>Non-verbal Memory</h5>\r\n<img class=\"alignleft\" title=\"Non-verbal Memory\" src=\"https://www.cognifit.com/img/corporativa111/visual_memory_sm.png\" alt=\"Non-verbal Memory\" width=\"80\" height=\"80\" />The ability to store and retrieve information which are non-verbal by nature.\r\n<p class=\"more_line\"></p>\r\n\r\n</div>\r\n</div>\r\n</div>\r\n<h5 class=\"linea_clear\"> Visual Perception</h5>\r\n<div class=\"mod_line int_section borde_derecho\">\r\n<div class=\"mod_text\">\r\n<div class=\"info_area\">\r\n\r\n<img class=\"alignleft\" title=\"Visual Perception\" src=\"https://www.cognifit.com/img/corporativa111/visual_perception_sm.png\" alt=\"Visual Perception\" width=\"86\" height=\"86\" />The ability to interpret information from the effects of visible light reaching the eye.\r\n<p class=\"more_line\"></p>\r\n\r\n</div>\r\n</div>\r\n</div>\r\n<div class=\"mod_line int_section\">\r\n<div class=\"mod_text\">\r\n<div class=\"info_area\">\r\n<h5>Visual Scanning</h5>\r\n<img class=\"alignleft\" title=\"Visual Scanning\" src=\"https://www.cognifit.com/img/corporativa111/visual_scanning_sm.png\" alt=\"Visual Scanning\" width=\"79\" height=\"79\" />The ability to actively find relevant information in our surroundings quickly and efficiently.\r\n<p class=\"more_line\"></p>\r\n\r\n</div>\r\n</div>\r\n</div>\r\n<div class=\"mod_line int_section borde_derecho\">\r\n<div class=\"mod_text\">\r\n<div class=\"info_area\">\r\n<h5>Visual Short-term Memory</h5>\r\n<img class=\"alignleft\" title=\"Visual Short-term Memory\" src=\"https://www.cognifit.com/img/corporativa111/visual_stm_sm.png\" alt=\"Visual Short-term Memory\" width=\"80\" height=\"80\" />The ability to temporarily retain a small amount of visual information.\r\n\r\n&nbsp;\r\n\r\n&nbsp;\r\n<h5 class=\"more_line\">Working Memory</h5>\r\n</div>\r\n</div>\r\n</div>\r\n<div class=\"mod_line int_section\">\r\n<div class=\"mod_text\">\r\n<div class=\"info_area\">\r\n\r\n<img class=\"alignleft\" title=\"Working Memory\" src=\"https://www.cognifit.com/img/corporativa111/working_memory_sm.png\" alt=\"Working Memory\" width=\"61\" height=\"61\" />Refers to the temporary storage and manipulation of the information necessary for complex cognitive tasks.\r\n\r\n&nbsp;\r\n<h5 class=\"more_line\">Width of Field of View</h5>\r\n</div>\r\n</div>\r\n</div>\r\n<div class=\"mod_line int_section borde_derecho\">\r\n<div class=\"mod_text\">\r\n<div class=\"info_area\">\r\n\r\n<img class=\"alignleft\" title=\"Width of Field of View\" src=\"https://www.cognifit.com/img/corporativa111/width_field_view.png\" alt=\"Width of Field of View\" width=\"96\" height=\"96\" />Corresponds to amount of information we receive from around when looking straight ahead.\r\n\r\n&nbsp;\r\n\r\n&nbsp;\r\n<h5>Estimation</h5>\r\n</div>\r\n</div>\r\n</div>\r\n<div class=\"mod_line int_section\">\r\n<div class=\"mod_text\">\r\n<div class=\"info_area\">\r\n\r\n<img class=\"alignleft\" title=\"Estimation\" src=\"https://www.cognifit.com/img/corporativa111/estimation.png\" alt=\"Estimation\" width=\"97\" height=\"97\" />The ability to estimate an object\'s future location based on its current speed and distance.\r\n<p class=\"more_line\"></p>\r\n\r\n</div>\r\n</div>\r\n</div>\r\n<div class=\"linea_clear\"></div>\r\n<h5 class=\"linea_clear\">Auditory perception</h5>\r\n<div class=\"mod_line int_section borde_derecho\">\r\n<div class=\"mod_text\">\r\n<div class=\"info_area\">\r\n\r\n<img class=\"alignleft\" title=\"Auditory perception\" src=\"https://www.cognifit.com/img/corporativa111/auditory_perception_sm.png\" alt=\"Auditory perception\" width=\"89\" height=\"89\" />Auditory Perception is the ability to perceive and understand the difference between sounds.\r\n\r\n</div>\r\n</div>\r\n</div>\r\n&nbsp;\r\n\r\n&nbsp;', 'Essential cognitive skills for a strong brain health', '', 'publish', 'open', 'open', '', 'essential-cognitive-skills-for-a-strong-brain-health', '', '', '2017-12-02 13:12:59', '2017-12-02 13:12:59', '', 0, 'http://localhost/brainstorm/?p=31', 0, 'post', '', 0),
(32, 1, '2017-12-02 12:40:11', '2017-12-02 12:40:11', '', 'slider-img-2', '', 'inherit', 'open', 'closed', '', 'slider-img-2', '', '', '2017-12-02 12:40:11', '2017-12-02 12:40:11', '', 31, 'http://localhost/brainstorm/wp-content/uploads/2017/12/slider-img-2.jpg', 0, 'attachment', 'image/jpeg', 0),
(33, 1, '2017-12-02 12:55:04', '2017-12-02 12:55:04', '', 'inhibition_sm', '', 'inherit', 'open', 'closed', '', 'inhibition_sm', '', '', '2017-12-02 12:55:04', '2017-12-02 12:55:04', '', 31, 'http://localhost/brainstorm/wp-content/uploads/2017/12/inhibition_sm.png', 0, 'attachment', 'image/png', 0),
(34, 1, '2017-12-02 12:56:48', '2017-12-02 12:56:48', '', 'naming_sm', '', 'inherit', 'open', 'closed', '', 'naming_sm', '', '', '2017-12-02 12:56:48', '2017-12-02 12:56:48', '', 31, 'http://localhost/brainstorm/wp-content/uploads/2017/12/naming_sm.png', 0, 'attachment', 'image/png', 0);
INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(35, 1, '2017-12-02 13:12:59', '2017-12-02 13:12:59', '<b>Cognitive skills</b> are the core <b>skills</b> your brain uses to think, read, learn, remember, reason, and pay attention. <img class=\" wp-image-32 alignright\" src=\"http://localhost/brainstorm/wp-content/uploads/2017/12/slider-img-2-300x217.jpg\" alt=\"\" width=\"219\" height=\"159\" />Working together, they take incoming information and move it into the bank of knowledge you use everyday at school, at work, and in life.\r\n\r\nEach of your cognitive skills plays an important part in processing new information. That means if even one of these skills is weak, no matter what kind of information is coming your way, grasping, retaining, or using that information is impacted. In fact, most learning struggles are caused by one or more weak cognitive skills.\r\n\r\nHere’s a brief description of each of the cognitive skills.\r\n<div class=\"mod_line int_section borde_derecho\">\r\n<div class=\"mod_text\">\r\n<div class=\"info_area\">\r\n<h5>Auditory Short-term Memory</h5>\r\n<div class=\"info_area\">\r\n\r\n<img class=\"alignleft\" title=\"Auditory Short-term Memory\" src=\"https://www.cognifit.com/img/corporativa111/auditory_stm_sm.png\" alt=\"Auditory Short-term Memory\" width=\"120\" height=\"120\" />\r\n\r\n</div>\r\nThe ability to remember auditory information over a brief period of time.\r\n\r\n&nbsp;\r\n\r\n&nbsp;\r\n<h5 class=\"more_line\">Contextual Memory</h5>\r\n<img class=\"alignleft\" title=\"Contextual Memory\" src=\"https://www.cognifit.com/img/corporativa111/contextual_memory_small.png\" alt=\"Contextual Memory\" width=\"93\" height=\"93\" /></div>\r\n&nbsp;\r\n\r\n</div>\r\n</div>\r\n<div class=\"mod_line int_section\">\r\n<div class=\"mod_text\">\r\n<div class=\"info_area\">\r\n\r\nThe conscious recall of the source and circumstances of a specific memory.\r\n<p class=\"more_line\"></p>\r\n\r\n</div>\r\n</div>\r\n</div>\r\n<h3 class=\"linea_clear\"></h3>\r\n<div class=\"mod_line int_section borde_derecho\">\r\n<h5 class=\"mod_text\">Divided Attention</h5>\r\n<img class=\"alignleft\" style=\"font-size: 13.28px;\" title=\"Divided Attention\" src=\"https://www.cognifit.com/img/corporativa111/divided_attention_sm.png\" alt=\"Divided Attention\" width=\"106\" height=\"106\" />\r\n<p class=\"mod_text\">The ability to execute more than one action at a time, while paying attention to a few channels of information.</p>\r\n\r\n<div class=\"info_area\">\r\n\r\n&nbsp;\r\n<h5></h5>\r\n<h5 class=\"more_line\">Focus</h5>\r\n</div>\r\n</div>\r\n<div class=\"mod_line int_section\">\r\n<div class=\"mod_text\">\r\n<div class=\"info_area\">\r\n\r\n<img class=\"alignleft\" title=\"Focus\" src=\"https://www.cognifit.com/img/corporativa111/focus_sm.png\" alt=\"Focus\" width=\"90\" height=\"90\" />The ability to focus attention on a single stimulus\r\n<p class=\"more_line\">\r\n\r\n\r\n\r\n</p>\r\n\r\n<h5>Hand-eye Coordination</h5>\r\n</div>\r\n</div>\r\n</div>\r\n<div class=\"mod_line int_section borde_derecho\">\r\n<div class=\"mod_text\">\r\n<div class=\"info_area\"><img class=\"alignleft\" title=\"Hand-eye Coordination\" src=\"https://www.cognifit.com/img/corporativa111/hand_eye_coordination_sm.png\" alt=\"Hand-eye Coordination\" width=\"61\" height=\"61\" />The level of sensitivity with which the hand and eye are synchronized.\r\n<p class=\"more_line\"></p>\r\n\r\n<div class=\"info_area\"></div>\r\n</div>\r\n</div>\r\n</div>\r\n<div class=\"mod_line int_section\">\r\n<div class=\"mod_text\">\r\n<div class=\"info_area\">\r\n<h5>Inhibition</h5>\r\n<img class=\"wp-image-33 alignleft\" src=\"http://localhost/brainstorm/wp-content/uploads/2017/12/inhibition_sm.png\" alt=\"\" width=\"95\" height=\"95\" />\r\n<h3></h3>\r\nThe ability to ignore irrelevant stimuli or suppress irrelevant reactions while performing a task.\r\n\r\n</div>\r\n</div>\r\n&nbsp;\r\n<div class=\"mod_text\">\r\n<div class=\"info_area\">\r\n<h5>Naming</h5>\r\n<img class=\" wp-image-34 alignleft\" src=\"http://localhost/brainstorm/wp-content/uploads/2017/12/naming_sm.png\" alt=\"\" width=\"98\" height=\"98\" />\r\n\r\n</div>\r\n</div>\r\n</div>\r\n<div class=\"linea_clear\"></div>\r\n<div class=\"mod_line int_section borde_derecho\">\r\n<div class=\"mod_text\">The ability to retrieve a word from our semantic lexicon and is considered to be a basic ability.\r\n<div class=\"info_area\">\r\n<p class=\"more_line\"></p>\r\n\r\n</div>\r\n</div>\r\n<h5>Planning</h5>\r\n<h5><img class=\"alignleft\" title=\"Planning\" src=\"https://www.cognifit.com/img/corporativa111/planning_sm.png\" alt=\"Planning\" width=\"79\" height=\"79\" /></h5>\r\n</div>\r\n<div class=\"mod_line int_section\">\r\n<div class=\"mod_text\">The ability to \"think ahead\", to mentally anticipate the correct way to execute a task.</div>\r\n<div class=\"mod_text\">\r\n<div class=\"info_area\">\r\n\r\n&nbsp;\r\n<h5 class=\"more_line\">Processing Speed</h5>\r\n</div>\r\n</div>\r\n</div>\r\n<div class=\"mod_line int_section borde_derecho\">\r\n<div class=\"mod_text\">\r\n<div class=\"info_area\">\r\n\r\n<img class=\"alignleft\" title=\"Processing Speed\" src=\"https://www.cognifit.com/img/corporativa111/processing_speed_sm.png\" alt=\"Processing Speed\" width=\"92\" height=\"92\" />Involves the ability to fluently perform easy or over-learned tasks.\r\n<p class=\"more_line\"></p>\r\n\r\n</div>\r\n</div>\r\n</div>\r\n<div class=\"mod_line int_section\">\r\n<div class=\"mod_text\">\r\n<div class=\"info_area\">\r\n<h5></h5>\r\n<h5>Recognition</h5>\r\n<img class=\"alignleft\" title=\"Recognition\" src=\"https://www.cognifit.com/img/corporativa111/recognition_sm.png\" alt=\"Recognition\" width=\"95\" height=\"95\" />The ability to retrieve information from the past and to recognize certain events, places or other information.\r\n<p class=\"more_line\"></p>\r\n\r\n</div>\r\n</div>\r\n</div>\r\n<div class=\"linea_clear\"></div>\r\n<div class=\"mod_line int_section borde_derecho\">\r\n<div class=\"mod_text\">\r\n<div class=\"info_area\">\r\n<h5>Response Time</h5>\r\n<img class=\"alignleft\" title=\"Response Time\" src=\"https://www.cognifit.com/img/corporativa111/response_time_sm.png\" alt=\"Response Time\" width=\"70\" height=\"70\" />The ability to perceive and process a simple stimulus and respond to it.\r\n\r\n&nbsp;\r\n\r\n&nbsp;\r\n<h5 class=\"more_line\">Shifting</h5>\r\n</div>\r\n</div>\r\n</div>\r\n<div class=\"mod_line int_section\">\r\n<div class=\"mod_text\">\r\n<div class=\"info_area\">\r\n\r\n<img class=\"alignleft\" title=\"Shifting\" src=\"https://www.cognifit.com/img/corporativa111/shifting_sm.png\" alt=\"Shifting\" width=\"100\" height=\"100\" />Ability to adapt behavior and thoughts to new, changing, or unexpected circumstances\r\n<p class=\"more_line\"></p>\r\n\r\n</div>\r\n</div>\r\n</div>\r\n<h5 class=\"linea_clear\"></h5>\r\n<h5 class=\"linea_clear\">Short-term Memory</h5>\r\n<div class=\"mod_line int_section borde_derecho\">\r\n<div class=\"mod_text\">\r\n<div class=\"info_area\">\r\n\r\n<img class=\"alignleft\" title=\"Short-term Memory\" src=\"https://www.cognifit.com/img/corporativa111/stm_sm.png\" alt=\"Short-term Memory\" width=\"51\" height=\"51\" />The ability to hold a small amount of information in a readily, available state for a short period of time.\r\n<p class=\"more_line\"></p>\r\n\r\n</div>\r\n</div>\r\n</div>\r\n<div class=\"mod_line int_section\">\r\n<div class=\"mod_text\">\r\n<div class=\"info_area\">\r\n<h5>Spatial Perception</h5>\r\n<img class=\"alignleft\" title=\"Spatial Perception\" src=\"https://www.cognifit.com/img/corporativa111/spatial_perception_sm.png\" alt=\"Spatial Perception\" width=\"83\" height=\"83\" />The ability to evaluate how things are arranged in space, and investigate their relations in the environment.\r\n<p class=\"more_line\"></p>\r\n\r\n</div>\r\n</div>\r\n</div>\r\n<div class=\"linea_clear\"></div>\r\n<div class=\"mod_line int_section borde_derecho\">\r\n<div class=\"mod_text\">\r\n<div class=\"info_area\">\r\n<h5>Updating</h5>\r\n<img class=\"alignleft\" title=\"Updating\" src=\"https://www.cognifit.com/img/corporativa111/updating_sm.png\" alt=\"Updating\" width=\"68\" height=\"68\" />The ability to respond in a flexible and adaptive manner in order to keep up with the changes in the environment.\r\n<p class=\"more_line\"></p>\r\n\r\n</div>\r\n</div>\r\n</div>\r\n<div class=\"mod_line int_section\">\r\n<div class=\"mod_text\">\r\n<div class=\"info_area\">\r\n<h5>Non-verbal Memory</h5>\r\n<img class=\"alignleft\" title=\"Non-verbal Memory\" src=\"https://www.cognifit.com/img/corporativa111/visual_memory_sm.png\" alt=\"Non-verbal Memory\" width=\"80\" height=\"80\" />The ability to store and retrieve information which are non-verbal by nature.\r\n<p class=\"more_line\"></p>\r\n\r\n</div>\r\n</div>\r\n</div>\r\n<h5 class=\"linea_clear\"> Visual Perception</h5>\r\n<div class=\"mod_line int_section borde_derecho\">\r\n<div class=\"mod_text\">\r\n<div class=\"info_area\">\r\n\r\n<img class=\"alignleft\" title=\"Visual Perception\" src=\"https://www.cognifit.com/img/corporativa111/visual_perception_sm.png\" alt=\"Visual Perception\" width=\"86\" height=\"86\" />The ability to interpret information from the effects of visible light reaching the eye.\r\n<p class=\"more_line\"></p>\r\n\r\n</div>\r\n</div>\r\n</div>\r\n<div class=\"mod_line int_section\">\r\n<div class=\"mod_text\">\r\n<div class=\"info_area\">\r\n<h5>Visual Scanning</h5>\r\n<img class=\"alignleft\" title=\"Visual Scanning\" src=\"https://www.cognifit.com/img/corporativa111/visual_scanning_sm.png\" alt=\"Visual Scanning\" width=\"79\" height=\"79\" />The ability to actively find relevant information in our surroundings quickly and efficiently.\r\n<p class=\"more_line\"></p>\r\n\r\n</div>\r\n</div>\r\n</div>\r\n<div class=\"mod_line int_section borde_derecho\">\r\n<div class=\"mod_text\">\r\n<div class=\"info_area\">\r\n<h5>Visual Short-term Memory</h5>\r\n<img class=\"alignleft\" title=\"Visual Short-term Memory\" src=\"https://www.cognifit.com/img/corporativa111/visual_stm_sm.png\" alt=\"Visual Short-term Memory\" width=\"80\" height=\"80\" />The ability to temporarily retain a small amount of visual information.\r\n\r\n&nbsp;\r\n\r\n&nbsp;\r\n<h5 class=\"more_line\">Working Memory</h5>\r\n</div>\r\n</div>\r\n</div>\r\n<div class=\"mod_line int_section\">\r\n<div class=\"mod_text\">\r\n<div class=\"info_area\">\r\n\r\n<img class=\"alignleft\" title=\"Working Memory\" src=\"https://www.cognifit.com/img/corporativa111/working_memory_sm.png\" alt=\"Working Memory\" width=\"61\" height=\"61\" />Refers to the temporary storage and manipulation of the information necessary for complex cognitive tasks.\r\n\r\n&nbsp;\r\n<h5 class=\"more_line\">Width of Field of View</h5>\r\n</div>\r\n</div>\r\n</div>\r\n<div class=\"mod_line int_section borde_derecho\">\r\n<div class=\"mod_text\">\r\n<div class=\"info_area\">\r\n\r\n<img class=\"alignleft\" title=\"Width of Field of View\" src=\"https://www.cognifit.com/img/corporativa111/width_field_view.png\" alt=\"Width of Field of View\" width=\"96\" height=\"96\" />Corresponds to amount of information we receive from around when looking straight ahead.\r\n\r\n&nbsp;\r\n\r\n&nbsp;\r\n<h5>Estimation</h5>\r\n</div>\r\n</div>\r\n</div>\r\n<div class=\"mod_line int_section\">\r\n<div class=\"mod_text\">\r\n<div class=\"info_area\">\r\n\r\n<img class=\"alignleft\" title=\"Estimation\" src=\"https://www.cognifit.com/img/corporativa111/estimation.png\" alt=\"Estimation\" width=\"97\" height=\"97\" />The ability to estimate an object\'s future location based on its current speed and distance.\r\n<p class=\"more_line\"></p>\r\n\r\n</div>\r\n</div>\r\n</div>\r\n<div class=\"linea_clear\"></div>\r\n<h5 class=\"linea_clear\">Auditory perception</h5>\r\n<div class=\"mod_line int_section borde_derecho\">\r\n<div class=\"mod_text\">\r\n<div class=\"info_area\">\r\n\r\n<img class=\"alignleft\" title=\"Auditory perception\" src=\"https://www.cognifit.com/img/corporativa111/auditory_perception_sm.png\" alt=\"Auditory perception\" width=\"89\" height=\"89\" />Auditory Perception is the ability to perceive and understand the difference between sounds.\r\n\r\n</div>\r\n</div>\r\n</div>\r\n&nbsp;\r\n\r\n&nbsp;', 'Essential cognitive skills for a strong brain health', '', 'inherit', 'closed', 'closed', '', '31-revision-v1', '', '', '2017-12-02 13:12:59', '2017-12-02 13:12:59', '', 31, 'http://localhost/brainstorm/index.php/2017/12/02/31-revision-v1/', 0, 'revision', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_termmeta`
--

CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_terms`
--

CREATE TABLE `wp_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Uncategorized', 'uncategorized', 0),
(2, 'what is FMRI', 'what-is-fmri', 0),
(3, 'FMRI', 'fmri', 0),
(4, 'Brain functions', 'brain-functions', 0),
(5, 'Cognitive functions of the brain', 'cognitive-functions-of-the-brain', 0),
(6, 'Cognitive Skills', 'cognitive-skills', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_relationships`
--

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(19, 1, 0),
(19, 2, 0),
(19, 3, 0),
(23, 1, 0),
(23, 4, 0),
(27, 1, 0),
(27, 5, 0),
(31, 1, 0),
(31, 6, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_taxonomy`
--

CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 4),
(2, 2, 'post_tag', '', 0, 1),
(3, 3, 'post_tag', '', 0, 1),
(4, 4, 'post_tag', '', 0, 1),
(5, 5, 'post_tag', '', 0, 1),
(6, 6, 'post_tag', '', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `wp_usermeta`
--

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'admin'),
(2, 1, 'first_name', ''),
(3, 1, 'last_name', ''),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'syntax_highlighting', 'true'),
(7, 1, 'comment_shortcuts', 'false'),
(8, 1, 'admin_color', 'fresh'),
(9, 1, 'use_ssl', '0'),
(10, 1, 'show_admin_bar_front', 'true'),
(11, 1, 'locale', ''),
(12, 1, 'wp_capabilities', 'a:1:{s:13:\"administrator\";b:1;}'),
(13, 1, 'wp_user_level', '10'),
(14, 1, 'dismissed_wp_pointers', ''),
(15, 1, 'show_welcome_panel', '1'),
(16, 1, 'session_tokens', 'a:1:{s:64:\"f79dff615a464cb3acb031c1442ab78ef90d10624cce029048c9afcb934ca614\";a:4:{s:10:\"expiration\";i:1512382910;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:153:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36 OPR/49.0.2725.47 (Edition Campaign 76)\";s:5:\"login\";i:1512210110;}}'),
(17, 1, 'wp_dashboard_quick_press_last_post_id', '3'),
(18, 1, 'community-events-location', 'a:1:{s:2:\"ip\";s:2:\"::\";}'),
(19, 1, 'wp_user-settings', 'libraryContent=browse'),
(20, 1, 'wp_user-settings-time', '1512211319'),
(21, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:\"link-target\";i:1;s:11:\"css-classes\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";i:4;s:15:\"title-attribute\";}'),
(22, 1, 'metaboxhidden_nav-menus', 'a:1:{i:0;s:12:\"add-post_tag\";}');

-- --------------------------------------------------------

--
-- Table structure for table `wp_users`
--

CREATE TABLE `wp_users` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'admin', '$P$BlNEHWZXoqRFxNWbzSrrjsQcGZ1/hS1', 'admin', 'fmribrainstorm@gmail.com', '', '2017-12-02 10:21:08', '', 0, 'admin'),
(2, 'client', 'client', 'client', 'client@gmail.com', '', '0000-00-00 00:00:00', '', 0, '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `broadman_area`
--
ALTER TABLE `broadman_area`
  ADD PRIMARY KEY (`br_area_id`),
  ADD UNIQUE KEY `br_area_id` (`br_area_id`);

--
-- Indexes for table `client_data`
--
ALTER TABLE `client_data`
  ADD UNIQUE KEY `article_id` (`article_id`);

--
-- Indexes for table `comment`
--
ALTER TABLE `comment`
  ADD PRIMARY KEY (`comm_id`),
  ADD KEY `fk_comment_Admin1` (`user_id`),
  ADD KEY `fk_comment_discussion1` (`discussion_id`);

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`contact_id`);

--
-- Indexes for table `discussion`
--
ALTER TABLE `discussion`
  ADD PRIMARY KEY (`discussion_id`),
  ADD KEY `fk_discussion_Admin1` (`user_id`);

--
-- Indexes for table `function_detail`
--
ALTER TABLE `function_detail`
  ADD PRIMARY KEY (`function_id`),
  ADD UNIQUE KEY `function_id` (`function_id`);

--
-- Indexes for table `log`
--
ALTER TABLE `log`
  ADD PRIMARY KEY (`log_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `profile`
--
ALTER TABLE `profile`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `research`
--
ALTER TABLE `research`
  ADD PRIMARY KEY (`article_id`);

--
-- Indexes for table `suggestion`
--
ALTER TABLE `suggestion`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_comments`
--
ALTER TABLE `wp_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10));

--
-- Indexes for table `wp_links`
--
ALTER TABLE `wp_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Indexes for table `wp_options`
--
ALTER TABLE `wp_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`);

--
-- Indexes for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_posts`
--
ALTER TABLE `wp_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Indexes for table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_terms`
--
ALTER TABLE `wp_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Indexes for table `wp_term_relationships`
--
ALTER TABLE `wp_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Indexes for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Indexes for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_users`
--
ALTER TABLE `wp_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `comment`
--
ALTER TABLE `comment`
  MODIFY `comm_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `contact_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `discussion`
--
ALTER TABLE `discussion`
  MODIFY `discussion_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `log`
--
ALTER TABLE `log`
  MODIFY `log_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `profile`
--
ALTER TABLE `profile`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `research`
--
ALTER TABLE `research`
  MODIFY `article_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `suggestion`
--
ALTER TABLE `suggestion`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;
--
-- AUTO_INCREMENT for table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_comments`
--
ALTER TABLE `wp_comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `wp_links`
--
ALTER TABLE `wp_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_options`
--
ALTER TABLE `wp_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=200;
--
-- AUTO_INCREMENT for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=105;
--
-- AUTO_INCREMENT for table `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;
--
-- AUTO_INCREMENT for table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_terms`
--
ALTER TABLE `wp_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
--
-- AUTO_INCREMENT for table `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `comment`
--
ALTER TABLE `comment`
  ADD CONSTRAINT `fk_discussion` FOREIGN KEY (`discussion_id`) REFERENCES `discussion` (`discussion_id`),
  ADD CONSTRAINT `fk_user` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`);

--
-- Constraints for table `discussion`
--
ALTER TABLE `discussion`
  ADD CONSTRAINT `fk_discussion_user` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
