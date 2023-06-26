-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 26, 2023 at 02:52 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_blog2`
--

-- --------------------------------------------------------

--
-- Table structure for table `wp_actionscheduler_actions`
--

CREATE TABLE `wp_actionscheduler_actions` (
  `action_id` bigint(20) UNSIGNED NOT NULL,
  `hook` varchar(191) NOT NULL,
  `status` varchar(20) NOT NULL,
  `scheduled_date_gmt` datetime DEFAULT '0000-00-00 00:00:00',
  `scheduled_date_local` datetime DEFAULT '0000-00-00 00:00:00',
  `args` varchar(191) DEFAULT NULL,
  `schedule` longtext DEFAULT NULL,
  `group_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `attempts` int(11) NOT NULL DEFAULT 0,
  `last_attempt_gmt` datetime DEFAULT '0000-00-00 00:00:00',
  `last_attempt_local` datetime DEFAULT '0000-00-00 00:00:00',
  `claim_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `extended_args` varchar(8000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_actionscheduler_actions`
--

INSERT INTO `wp_actionscheduler_actions` (`action_id`, `hook`, `status`, `scheduled_date_gmt`, `scheduled_date_local`, `args`, `schedule`, `group_id`, `attempts`, `last_attempt_gmt`, `last_attempt_local`, `claim_id`, `extended_args`) VALUES
(116, 'action_scheduler/migration_hook', 'complete', '2023-06-22 05:18:24', '2023-06-22 05:18:24', '[]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1687411104;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1687411104;}', 1, 1, '2023-06-22 05:19:22', '2023-06-22 05:19:22', 0, NULL),
(117, 'wp_mail_smtp_summary_report_email', 'pending', '2023-06-26 14:00:00', '2023-06-26 14:00:00', '[null]', 'O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1687788000;s:18:\"\0*\0first_timestamp\";i:1687788000;s:13:\"\0*\0recurrence\";i:604800;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1687788000;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:604800;}', 2, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL),
(118, 'wp_mail_smtp_admin_notifications_update', 'complete', '2023-06-22 05:19:53', '2023-06-22 05:19:53', '[1]', 'O:28:\"ActionScheduler_NullSchedule\":0:{}', 2, 1, '2023-06-22 05:20:59', '2023-06-22 05:20:59', 0, NULL),
(119, 'wp_mail_smtp_admin_notifications_update', 'complete', '2023-06-23 05:24:03', '2023-06-23 05:24:03', '[2]', 'O:28:\"ActionScheduler_NullSchedule\":0:{}', 2, 1, '2023-06-23 05:24:31', '2023-06-23 05:24:31', 0, NULL),
(120, 'wp_mail_smtp_admin_notifications_update', 'complete', '2023-06-26 00:16:26', '2023-06-26 00:16:26', '[3]', 'O:28:\"ActionScheduler_NullSchedule\":0:{}', 2, 1, '2023-06-26 00:17:33', '2023-06-26 00:17:33', 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `wp_actionscheduler_claims`
--

CREATE TABLE `wp_actionscheduler_claims` (
  `claim_id` bigint(20) UNSIGNED NOT NULL,
  `date_created_gmt` datetime DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_actionscheduler_groups`
--

CREATE TABLE `wp_actionscheduler_groups` (
  `group_id` bigint(20) UNSIGNED NOT NULL,
  `slug` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_actionscheduler_groups`
--

INSERT INTO `wp_actionscheduler_groups` (`group_id`, `slug`) VALUES
(1, 'action-scheduler-migration'),
(2, 'wp_mail_smtp');

-- --------------------------------------------------------

--
-- Table structure for table `wp_actionscheduler_logs`
--

CREATE TABLE `wp_actionscheduler_logs` (
  `log_id` bigint(20) UNSIGNED NOT NULL,
  `action_id` bigint(20) UNSIGNED NOT NULL,
  `message` text NOT NULL,
  `log_date_gmt` datetime DEFAULT '0000-00-00 00:00:00',
  `log_date_local` datetime DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_actionscheduler_logs`
--

INSERT INTO `wp_actionscheduler_logs` (`log_id`, `action_id`, `message`, `log_date_gmt`, `log_date_local`) VALUES
(1, 116, 'action created', '2023-06-22 05:17:24', '2023-06-22 05:17:24'),
(2, 116, 'action started via WP Cron', '2023-06-22 05:19:22', '2023-06-22 05:19:22'),
(3, 116, 'action complete via WP Cron', '2023-06-22 05:19:22', '2023-06-22 05:19:22'),
(4, 117, 'action created', '2023-06-22 05:19:52', '2023-06-22 05:19:52'),
(5, 118, 'action created', '2023-06-22 05:19:53', '2023-06-22 05:19:53'),
(6, 118, 'action started via WP Cron', '2023-06-22 05:20:55', '2023-06-22 05:20:55'),
(7, 118, 'action complete via WP Cron', '2023-06-22 05:20:59', '2023-06-22 05:20:59'),
(8, 119, 'action created', '2023-06-23 05:24:03', '2023-06-23 05:24:03'),
(9, 119, 'action started via WP Cron', '2023-06-23 05:24:28', '2023-06-23 05:24:28'),
(10, 119, 'action complete via WP Cron', '2023-06-23 05:24:31', '2023-06-23 05:24:31'),
(11, 120, 'action created', '2023-06-26 00:16:26', '2023-06-26 00:16:26'),
(12, 120, 'action started via WP Cron', '2023-06-26 00:17:30', '2023-06-26 00:17:30'),
(13, 120, 'action complete via WP Cron', '2023-06-26 00:17:33', '2023-06-26 00:17:33');

-- --------------------------------------------------------

--
-- Table structure for table `wp_commentmeta`
--

CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_comments`
--

CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `comment_author` tinytext NOT NULL,
  `comment_author_email` varchar(100) NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT 0,
  `comment_approved` varchar(20) NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) NOT NULL DEFAULT '',
  `comment_type` varchar(20) NOT NULL DEFAULT 'comment',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'A WordPress Commenter', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2023-06-20 23:58:20', '2023-06-20 23:58:20', 'Hi, this is a comment.\nTo get started with moderating, editing, and deleting comments, please visit the Comments screen in the dashboard.\nCommenter avatars come from <a href=\"https://en.gravatar.com/\">Gravatar</a>.', 0, '1', '', 'comment', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_links`
--

CREATE TABLE `wp_links` (
  `link_id` bigint(20) UNSIGNED NOT NULL,
  `link_url` varchar(255) NOT NULL DEFAULT '',
  `link_name` varchar(255) NOT NULL DEFAULT '',
  `link_image` varchar(255) NOT NULL DEFAULT '',
  `link_target` varchar(25) NOT NULL DEFAULT '',
  `link_description` varchar(255) NOT NULL DEFAULT '',
  `link_visible` varchar(20) NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT 1,
  `link_rating` int(11) NOT NULL DEFAULT 0,
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) NOT NULL DEFAULT '',
  `link_notes` mediumtext NOT NULL,
  `link_rss` varchar(255) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_options`
--

CREATE TABLE `wp_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) NOT NULL DEFAULT '',
  `option_value` longtext NOT NULL,
  `autoload` varchar(20) NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://localhost/blog2', 'yes'),
(2, 'home', 'http://localhost/blog2', 'yes'),
(3, 'blogname', 'The Blog2', 'yes'),
(4, 'blogdescription', '', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'lowrenceborja2116@gmail.com', 'yes'),
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
(21, 'default_pingback_flag', '0', 'yes'),
(22, 'posts_per_page', '10', 'yes'),
(23, 'date_format', 'F j, Y', 'yes'),
(24, 'time_format', 'g:i a', 'yes'),
(25, 'links_updated_date_format', 'F j, Y g:i a', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%year%/%monthnum%/%day%/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:94:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:17:\"^wp-sitemap\\.xml$\";s:23:\"index.php?sitemap=index\";s:17:\"^wp-sitemap\\.xsl$\";s:36:\"index.php?sitemap-stylesheet=sitemap\";s:23:\"^wp-sitemap-index\\.xsl$\";s:34:\"index.php?sitemap-stylesheet=index\";s:48:\"^wp-sitemap-([a-z]+?)-([a-z\\d_-]+?)-(\\d+?)\\.xml$\";s:75:\"index.php?sitemap=$matches[1]&sitemap-subtype=$matches[2]&paged=$matches[3]\";s:34:\"^wp-sitemap-([a-z]+?)-(\\d+?)\\.xml$\";s:47:\"index.php?sitemap=$matches[1]&paged=$matches[2]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:58:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:68:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:88:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:64:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:53:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/embed/?$\";s:91:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/trackback/?$\";s:85:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&tb=1\";s:77:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:65:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&paged=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&cpage=$matches[5]\";s:61:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)(?:/([0-9]+))?/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&page=$matches[5]\";s:47:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:57:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:77:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:53:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&cpage=$matches[4]\";s:51:\"([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&cpage=$matches[3]\";s:38:\"([0-9]{4})/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&cpage=$matches[2]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:3:{i:0;s:36:\"contact-form-7/wp-contact-form-7.php\";i:1;s:25:\"fakerpress/fakerpress.php\";i:2;s:29:\"wp-mail-smtp/wp_mail_smtp.php\";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', '', 'no'),
(40, 'template', 'blog2', 'yes'),
(41, 'stylesheet', 'blog2', 'yes'),
(42, 'comment_registration', '0', 'yes'),
(43, 'html_type', 'text/html', 'yes'),
(44, 'use_trackback', '0', 'yes'),
(45, 'default_role', 'subscriber', 'yes'),
(46, 'db_version', '53496', 'yes'),
(47, 'uploads_use_yearmonth_folders', '1', 'yes'),
(48, 'upload_path', '', 'yes'),
(49, 'blog_public', '0', 'yes'),
(50, 'default_link_category', '2', 'yes'),
(51, 'show_on_front', 'posts', 'yes'),
(52, 'tag_base', '', 'yes'),
(53, 'show_avatars', '1', 'yes'),
(54, 'avatar_rating', 'G', 'yes'),
(55, 'upload_url_path', '', 'yes'),
(56, 'thumbnail_size_w', '150', 'yes'),
(57, 'thumbnail_size_h', '150', 'yes'),
(58, 'thumbnail_crop', '1', 'yes'),
(59, 'medium_size_w', '300', 'yes'),
(60, 'medium_size_h', '300', 'yes'),
(61, 'avatar_default', 'mystery', 'yes'),
(62, 'large_size_w', '1024', 'yes'),
(63, 'large_size_h', '1024', 'yes'),
(64, 'image_default_link_type', 'none', 'yes'),
(65, 'image_default_size', '', 'yes'),
(66, 'image_default_align', '', 'yes'),
(67, 'close_comments_for_old_posts', '0', 'yes'),
(68, 'close_comments_days_old', '14', 'yes'),
(69, 'thread_comments', '1', 'yes'),
(70, 'thread_comments_depth', '5', 'yes'),
(71, 'page_comments', '0', 'yes'),
(72, 'comments_per_page', '50', 'yes'),
(73, 'default_comments_page', 'newest', 'yes'),
(74, 'comment_order', 'asc', 'yes'),
(75, 'sticky_posts', 'a:0:{}', 'yes'),
(76, 'widget_categories', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(77, 'widget_text', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(78, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(79, 'uninstall_plugins', 'a:0:{}', 'no'),
(80, 'timezone_string', '', 'yes'),
(81, 'page_for_posts', '0', 'yes'),
(82, 'page_on_front', '0', 'yes'),
(83, 'default_post_format', '0', 'yes'),
(84, 'link_manager_enabled', '0', 'yes'),
(85, 'finished_splitting_shared_terms', '1', 'yes'),
(86, 'site_icon', '0', 'yes'),
(87, 'medium_large_size_w', '768', 'yes'),
(88, 'medium_large_size_h', '0', 'yes'),
(89, 'wp_page_for_privacy_policy', '3', 'yes'),
(90, 'show_comments_cookies_opt_in', '1', 'yes'),
(91, 'admin_email_lifespan', '1702857499', 'yes'),
(92, 'disallowed_keys', '', 'no'),
(93, 'comment_previously_approved', '1', 'yes'),
(94, 'auto_plugin_theme_update_emails', 'a:0:{}', 'no'),
(95, 'auto_update_core_dev', 'enabled', 'yes'),
(96, 'auto_update_core_minor', 'enabled', 'yes'),
(97, 'auto_update_core_major', 'enabled', 'yes'),
(98, 'wp_force_deactivated_plugins', 'a:0:{}', 'yes'),
(99, 'initial_db_version', '53496', 'yes'),
(100, 'wp_user_roles', 'a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}', 'yes'),
(101, 'fresh_site', '0', 'yes'),
(102, 'user_count', '1', 'no'),
(103, 'widget_block', 'a:6:{i:2;a:1:{s:7:\"content\";s:19:\"<!-- wp:search /-->\";}i:3;a:1:{s:7:\"content\";s:154:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Recent Posts</h2><!-- /wp:heading --><!-- wp:latest-posts /--></div><!-- /wp:group -->\";}i:4;a:1:{s:7:\"content\";s:227:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Recent Comments</h2><!-- /wp:heading --><!-- wp:latest-comments {\"displayAvatar\":false,\"displayDate\":false,\"displayExcerpt\":false} /--></div><!-- /wp:group -->\";}i:5;a:1:{s:7:\"content\";s:146:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Archives</h2><!-- /wp:heading --><!-- wp:archives /--></div><!-- /wp:group -->\";}i:6;a:1:{s:7:\"content\";s:150:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Categories</h2><!-- /wp:heading --><!-- wp:categories /--></div><!-- /wp:group -->\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(104, 'sidebars_widgets', 'a:2:{s:19:\"wp_inactive_widgets\";a:5:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";i:3;s:7:\"block-5\";i:4;s:7:\"block-6\";}s:13:\"array_version\";i:3;}', 'yes'),
(105, 'cron', 'a:9:{i:1687740743;a:1:{s:26:\"action_scheduler_run_queue\";a:1:{s:32:\"0d04ed39571b55704c122d726248bbac\";a:3:{s:8:\"schedule\";s:12:\"every_minute\";s:4:\"args\";a:1:{i:0;s:7:\"WP Cron\";}s:8:\"interval\";i:60;}}}i:1687741100;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1687742307;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1687780700;a:4:{s:18:\"wp_https_detection\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1687780784;a:1:{s:21:\"wp_update_user_counts\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1687823900;a:1:{s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1687824909;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1687996700;a:1:{s:30:\"wp_site_health_scheduled_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}s:7:\"version\";i:2;}', 'yes'),
(106, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(107, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(108, 'widget_archives', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(109, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(110, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(111, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(112, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(113, 'widget_meta', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(114, 'widget_search', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(115, 'widget_recent-posts', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(116, 'widget_recent-comments', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(117, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(118, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(119, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(121, 'recovery_keys', 'a:1:{s:22:\"ajSmBJ6l2OYl0MXBzC32uY\";a:2:{s:10:\"hashed_key\";s:34:\"$P$B1tA./k1Rlr/TTgKpELAGmkQfimQ/E1\";s:10:\"created_at\";i:1687738891;}}', 'yes'),
(122, 'theme_mods_twentytwentythree', 'a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1687308359;s:4:\"data\";a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:3:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";}s:9:\"sidebar-2\";a:2:{i:0;s:7:\"block-5\";i:1;s:7:\"block-6\";}}}}', 'yes'),
(123, 'https_detection_errors', 'a:1:{s:23:\"ssl_verification_failed\";a:1:{i:0;s:24:\"SSL verification failed.\";}}', 'yes'),
(124, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-6.2.2.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-6.2.2.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-6.2.2-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-6.2.2-new-bundled.zip\";s:7:\"partial\";s:0:\"\";s:8:\"rollback\";s:0:\"\";}s:7:\"current\";s:5:\"6.2.2\";s:7:\"version\";s:5:\"6.2.2\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"6.1\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1687738477;s:15:\"version_checked\";s:5:\"6.2.2\";s:12:\"translations\";a:0:{}}', 'no'),
(129, '_site_transient_update_themes', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1687738577;s:7:\"checked\";a:4:{s:5:\"blog2\";s:3:\"1.0\";s:15:\"twentytwentyone\";s:3:\"1.8\";s:17:\"twentytwentythree\";s:3:\"1.1\";s:15:\"twentytwentytwo\";s:3:\"1.4\";}s:8:\"response\";a:0:{}s:9:\"no_update\";a:3:{s:15:\"twentytwentyone\";a:6:{s:5:\"theme\";s:15:\"twentytwentyone\";s:11:\"new_version\";s:3:\"1.8\";s:3:\"url\";s:45:\"https://wordpress.org/themes/twentytwentyone/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/theme/twentytwentyone.1.8.zip\";s:8:\"requires\";s:3:\"5.3\";s:12:\"requires_php\";s:3:\"5.6\";}s:17:\"twentytwentythree\";a:6:{s:5:\"theme\";s:17:\"twentytwentythree\";s:11:\"new_version\";s:3:\"1.1\";s:3:\"url\";s:47:\"https://wordpress.org/themes/twentytwentythree/\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/theme/twentytwentythree.1.1.zip\";s:8:\"requires\";s:3:\"6.1\";s:12:\"requires_php\";s:3:\"5.6\";}s:15:\"twentytwentytwo\";a:6:{s:5:\"theme\";s:15:\"twentytwentytwo\";s:11:\"new_version\";s:3:\"1.4\";s:3:\"url\";s:45:\"https://wordpress.org/themes/twentytwentytwo/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/theme/twentytwentytwo.1.4.zip\";s:8:\"requires\";s:3:\"5.9\";s:12:\"requires_php\";s:3:\"5.6\";}}s:12:\"translations\";a:0:{}}', 'no'),
(130, '_site_transient_timeout_browser_14d58a1ba286f087d9736249ec785314', '1687910321', 'no'),
(131, '_site_transient_browser_14d58a1ba286f087d9736249ec785314', 'a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:9:\"114.0.0.0\";s:8:\"platform\";s:7:\"Windows\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'no'),
(132, '_site_transient_timeout_php_check_ce267f3653936506950ae9448202043a', '1687910322', 'no'),
(133, '_site_transient_php_check_ce267f3653936506950ae9448202043a', 'a:5:{s:19:\"recommended_version\";s:3:\"7.4\";s:15:\"minimum_version\";s:6:\"5.6.20\";s:12:\"is_supported\";b:1;s:9:\"is_secure\";b:1;s:13:\"is_acceptable\";b:1;}', 'no'),
(134, 'can_compress_scripts', '1', 'no'),
(149, 'finished_updating_comment_type', '1', 'yes'),
(155, 'recently_activated', 'a:0:{}', 'yes'),
(160, 'current_theme', 'Blog 2', 'yes'),
(161, 'theme_mods_blog2', 'a:3:{i:0;b:0;s:18:\"nav_menu_locations\";a:1:{s:11:\"header_menu\";i:10;}s:18:\"custom_css_post_id\";i:-1;}', 'yes'),
(162, 'theme_switched', '', 'yes'),
(180, 'recovery_mode_email_last_sent', '1687738891', 'yes'),
(191, 'wp_calendar_block_has_published_posts', '1', 'yes'),
(240, '_transient_health-check-site-status-result', '{\"good\":16,\"recommended\":4,\"critical\":1}', 'yes'),
(288, 'category_children', 'a:0:{}', 'yes'),
(327, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:\"auto_add\";a:0:{}}', 'yes'),
(334, 'wpcf7', 'a:2:{s:7:\"version\";s:5:\"5.7.7\";s:13:\"bulk_validate\";a:4:{s:9:\"timestamp\";i:1687409588;s:7:\"version\";s:5:\"5.7.7\";s:11:\"count_valid\";i:1;s:13:\"count_invalid\";i:0;}}', 'yes'),
(337, '_site_transient_update_plugins', 'O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1687738574;s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:3:{s:36:\"contact-form-7/wp-contact-form-7.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:28:\"w.org/plugins/contact-form-7\";s:4:\"slug\";s:14:\"contact-form-7\";s:6:\"plugin\";s:36:\"contact-form-7/wp-contact-form-7.php\";s:11:\"new_version\";s:5:\"5.7.7\";s:3:\"url\";s:45:\"https://wordpress.org/plugins/contact-form-7/\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/plugin/contact-form-7.5.7.7.zip\";s:5:\"icons\";a:2:{s:2:\"1x\";s:59:\"https://ps.w.org/contact-form-7/assets/icon.svg?rev=2339255\";s:3:\"svg\";s:59:\"https://ps.w.org/contact-form-7/assets/icon.svg?rev=2339255\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:69:\"https://ps.w.org/contact-form-7/assets/banner-1544x500.png?rev=860901\";s:2:\"1x\";s:68:\"https://ps.w.org/contact-form-7/assets/banner-772x250.png?rev=880427\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"6.0\";}s:25:\"fakerpress/fakerpress.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:24:\"w.org/plugins/fakerpress\";s:4:\"slug\";s:10:\"fakerpress\";s:6:\"plugin\";s:25:\"fakerpress/fakerpress.php\";s:11:\"new_version\";s:5:\"0.6.1\";s:3:\"url\";s:41:\"https://wordpress.org/plugins/fakerpress/\";s:7:\"package\";s:59:\"https://downloads.wordpress.org/plugin/fakerpress.0.6.1.zip\";s:5:\"icons\";a:2:{s:2:\"1x\";s:55:\"https://ps.w.org/fakerpress/assets/icon.svg?rev=1846090\";s:3:\"svg\";s:55:\"https://ps.w.org/fakerpress/assets/icon.svg?rev=1846090\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:66:\"https://ps.w.org/fakerpress/assets/banner-1544x500.png?rev=1152002\";s:2:\"1x\";s:65:\"https://ps.w.org/fakerpress/assets/banner-772x250.png?rev=1152002\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"5.5\";}s:29:\"wp-mail-smtp/wp_mail_smtp.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:26:\"w.org/plugins/wp-mail-smtp\";s:4:\"slug\";s:12:\"wp-mail-smtp\";s:6:\"plugin\";s:29:\"wp-mail-smtp/wp_mail_smtp.php\";s:11:\"new_version\";s:5:\"3.8.0\";s:3:\"url\";s:43:\"https://wordpress.org/plugins/wp-mail-smtp/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/plugin/wp-mail-smtp.3.8.0.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:65:\"https://ps.w.org/wp-mail-smtp/assets/icon-256x256.png?rev=1755440\";s:2:\"1x\";s:65:\"https://ps.w.org/wp-mail-smtp/assets/icon-128x128.png?rev=1755440\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:68:\"https://ps.w.org/wp-mail-smtp/assets/banner-1544x500.jpg?rev=2811094\";s:2:\"1x\";s:67:\"https://ps.w.org/wp-mail-smtp/assets/banner-772x250.jpg?rev=2811094\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"5.2\";}}}', 'no'),
(338, 'action_scheduler_hybrid_store_demarkation', '115', 'yes'),
(339, 'schema-ActionScheduler_StoreSchema', '6.0.1687411043', 'yes'),
(340, 'schema-ActionScheduler_LoggerSchema', '3.0.1687411043', 'yes'),
(341, 'wp_mail_smtp_initial_version', '3.8.0', 'no'),
(342, 'wp_mail_smtp_version', '3.8.0', 'no'),
(343, 'wp_mail_smtp', 'a:11:{s:4:\"mail\";a:6:{s:10:\"from_email\";s:36:\"ramon.plaza@frontlinebusiness.com.ph\";s:9:\"from_name\";s:9:\"The Blog2\";s:6:\"mailer\";s:4:\"smtp\";s:11:\"return_path\";b:0;s:16:\"from_email_force\";b:1;s:15:\"from_name_force\";b:0;}s:4:\"smtp\";a:7:{s:7:\"autotls\";b:1;s:4:\"auth\";b:1;s:4:\"host\";s:29:\"mail.frontlinebusiness.com.ph\";s:10:\"encryption\";s:3:\"ssl\";s:4:\"port\";i:465;s:4:\"user\";s:37:\"noreply@lcss.frontlinebusiness.com.ph\";s:4:\"pass\";s:72:\"CV5Qzc3RTeEEEq+EBLupyNB5C/osCVgPmN8hFJsExw/OXffUjN1hJ9K4swJOOXp3S8ouLQ==\";}s:7:\"general\";a:1:{s:29:\"summary_report_email_disabled\";b:0;}s:9:\"sendlayer\";a:1:{s:7:\"api_key\";s:0:\"\";}s:7:\"smtpcom\";a:2:{s:7:\"api_key\";s:0:\"\";s:7:\"channel\";s:0:\"\";}s:10:\"sendinblue\";a:2:{s:7:\"api_key\";s:0:\"\";s:6:\"domain\";s:0:\"\";}s:5:\"gmail\";a:2:{s:9:\"client_id\";s:0:\"\";s:13:\"client_secret\";s:0:\"\";}s:7:\"mailgun\";a:3:{s:7:\"api_key\";s:0:\"\";s:6:\"domain\";s:0:\"\";s:6:\"region\";s:2:\"US\";}s:8:\"postmark\";a:2:{s:16:\"server_api_token\";s:0:\"\";s:14:\"message_stream\";s:0:\"\";}s:8:\"sendgrid\";a:2:{s:7:\"api_key\";s:0:\"\";s:6:\"domain\";s:0:\"\";}s:9:\"sparkpost\";a:2:{s:7:\"api_key\";s:0:\"\";s:6:\"region\";s:2:\"US\";}}', 'no'),
(344, 'wp_mail_smtp_activated_time', '1687411043', 'no'),
(345, 'wp_mail_smtp_activated', 'a:1:{s:4:\"lite\";i:1687411043;}', 'yes'),
(348, 'action_scheduler_lock_async-request-runner', '1687739739', 'yes'),
(352, 'wp_mail_smtp_migration_version', '5', 'yes'),
(353, 'wp_mail_smtp_debug_events_db_version', '1', 'yes'),
(354, 'wp_mail_smtp_activation_prevent_redirect', '1', 'yes'),
(357, 'wp_mail_smtp_review_notice', 'a:2:{s:4:\"time\";i:1687411097;s:9:\"dismissed\";b:0;}', 'yes'),
(359, 'action_scheduler_migration_status', 'complete', 'yes'),
(361, 'wp_mail_smtp_debug', 'a:0:{}', 'no'),
(362, 'wp_mail_smtp_mail_key', 'Z/MFjAHEAcNg9CvubrJxlmML0TPJJv5a841GgrVJFD0=', 'yes'),
(364, 'wp_mail_smtp_notifications', 'a:4:{s:6:\"update\";i:1687738653;s:4:\"feed\";a:0:{}s:6:\"events\";a:0:{}s:9:\"dismissed\";a:0:{}}', 'yes'),
(377, 'wp_mail_smtp_lite_sent_email_counter', '8', 'yes'),
(378, 'wp_mail_smtp_lite_weekly_sent_email_counter', 'a:2:{i:25;i:7;i:26;i:1;}', 'yes'),
(393, 'secret_key', 'ZmJ/5SY3g?^ao@:5DmgY}&zv|l~_-+ojd.~f1ofB(;yQi&r0[*,-7CT|<y>I>/o<', 'no'),
(846, '_site_transient_timeout_theme_roots', '1687740375', 'no'),
(847, '_site_transient_theme_roots', 'a:4:{s:5:\"blog2\";s:7:\"/themes\";s:15:\"twentytwentyone\";s:7:\"/themes\";s:17:\"twentytwentythree\";s:7:\"/themes\";s:15:\"twentytwentytwo\";s:7:\"/themes\";}', 'no'),
(849, '_transient_timeout_action_scheduler_last_pastdue_actions_check', '1687760186', 'no'),
(850, '_transient_action_scheduler_last_pastdue_actions_check', '1687738586', 'no');

-- --------------------------------------------------------

--
-- Table structure for table `wp_postmeta`
--

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 3, '_wp_page_template', 'default'),
(3, 6, '_edit_lock', '1687313011:1'),
(4, 6, '_wp_trash_meta_status', 'publish'),
(5, 6, '_wp_trash_meta_time', '1687313028'),
(6, 6, '_wp_desired_post_slug', 'contact'),
(7, 3, '_wp_trash_meta_status', 'draft'),
(8, 3, '_wp_trash_meta_time', '1687313028'),
(9, 3, '_wp_desired_post_slug', 'privacy-policy'),
(10, 2, '_wp_trash_meta_status', 'publish'),
(11, 2, '_wp_trash_meta_time', '1687313029'),
(12, 2, '_wp_desired_post_slug', 'sample-page'),
(13, 1, '_edit_lock', '1687494814:1'),
(18, 12, '_edit_lock', '1687326425:1'),
(19, 13, '_edit_lock', '1687407646:1'),
(24, 15, '_edit_lock', '1687331177:1'),
(32, 18, '_edit_lock', '1687331947:1'),
(36, 20, '_wp_attached_file', '2023/06/img-8.jpg'),
(37, 20, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:370;s:6:\"height\";i:245;s:4:\"file\";s:17:\"2023/06/img-8.jpg\";s:8:\"filesize\";i:21417;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(39, 1, '_thumbnail_id', '104'),
(40, 21, '_wp_attached_file', '2023/06/img-2.webp'),
(41, 21, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:225;s:6:\"height\";i:169;s:4:\"file\";s:18:\"2023/06/img-2.webp\";s:8:\"filesize\";i:10820;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(43, 13, '_thumbnail_id', '92'),
(45, 15, '_thumbnail_id', '21'),
(47, 18, '_thumbnail_id', '21'),
(48, 22, '_edit_lock', '1687390913:1'),
(50, 24, '_edit_lock', '1687407185:1'),
(51, 25, '_wp_attached_file', '2023/06/img-1-sm.webp'),
(52, 25, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:440;s:6:\"height\";i:293;s:4:\"file\";s:21:\"2023/06/img-1-sm.webp\";s:8:\"filesize\";i:26104;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(54, 24, '_thumbnail_id', '105'),
(55, 27, '_edit_lock', '1687407208:1'),
(57, 27, '_thumbnail_id', '107'),
(58, 29, '_edit_lock', '1687392440:1'),
(60, 29, '_thumbnail_id', '25'),
(61, 31, '_edit_lock', '1687392463:1'),
(63, 31, '_thumbnail_id', '25'),
(64, 33, '_edit_lock', '1687407251:1'),
(66, 33, '_thumbnail_id', '106'),
(67, 31, '_wp_trash_meta_status', 'publish'),
(68, 31, '_wp_trash_meta_time', '1687392707'),
(69, 31, '_wp_desired_post_slug', 'latest-4'),
(70, 29, '_wp_trash_meta_status', 'publish'),
(71, 29, '_wp_trash_meta_time', '1687392707'),
(72, 29, '_wp_desired_post_slug', 'latest-3'),
(80, 35, '_edit_lock', '1687396387:1'),
(81, 36, '_wp_attached_file', '2023/06/Landscape-Color.jpg'),
(82, 36, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1601;s:6:\"height\";i:664;s:4:\"file\";s:27:\"2023/06/Landscape-Color.jpg\";s:8:\"filesize\";i:1407923;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(83, 37, '_wp_attached_file', '2023/06/download.jpg'),
(84, 37, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:275;s:6:\"height\";i:183;s:4:\"file\";s:20:\"2023/06/download.jpg\";s:8:\"filesize\";i:5347;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(85, 38, '_wp_attached_file', '2023/06/images-1.jpg'),
(86, 38, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:289;s:6:\"height\";i:175;s:4:\"file\";s:20:\"2023/06/images-1.jpg\";s:8:\"filesize\";i:7538;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(87, 39, '_wp_attached_file', '2023/06/images-2.jpg'),
(88, 39, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:300;s:6:\"height\";i:168;s:4:\"file\";s:20:\"2023/06/images-2.jpg\";s:8:\"filesize\";i:14139;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(89, 40, '_wp_attached_file', '2023/06/tree-736885_1280.jpg'),
(90, 40, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1280;s:6:\"height\";i:797;s:4:\"file\";s:28:\"2023/06/tree-736885_1280.jpg\";s:8:\"filesize\";i:185491;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(92, 35, '_thumbnail_id', '40'),
(93, 42, '_edit_lock', '1687397682:1'),
(95, 42, '_thumbnail_id', '38'),
(96, 44, '_edit_lock', '1687396685:1'),
(98, 44, '_thumbnail_id', '37'),
(101, 46, '_edit_lock', '1687396677:1'),
(103, 46, '_thumbnail_id', '39'),
(107, 51, '_edit_lock', '1687397696:1'),
(109, 53, '_edit_lock', '1687397619:1'),
(111, 55, '_edit_lock', '1687398079:1'),
(113, 57, '_edit_lock', '1687397685:1'),
(115, 59, '_edit_lock', '1687397670:1'),
(119, 62, '_edit_lock', '1687397720:1'),
(122, 55, '_edit_last', '1'),
(124, 24, '_edit_last', '1'),
(126, 65, '_wp_attached_file', '2023/06/9d5e0504-5b39-32d8-b124-7f6566445ffb.png'),
(127, 65, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:248;s:6:\"height\";i:198;s:4:\"file\";s:48:\"2023/06/9d5e0504-5b39-32d8-b124-7f6566445ffb.png\";s:8:\"filesize\";i:2497;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(128, 65, 'fakerpress_flag', '1'),
(129, 65, '_fakerpress_orginal_url', 'https://via.placeholder.com/248x198/'),
(130, 66, 'fakerpress_flag', '1'),
(131, 67, '_wp_attached_file', '2023/06/e6c81fad-60f5-3a76-bae1-289af2d44d35.jpg'),
(132, 67, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1402;s:6:\"height\";i:934;s:4:\"file\";s:48:\"2023/06/e6c81fad-60f5-3a76-bae1-289af2d44d35.jpg\";s:8:\"filesize\";i:41182;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(133, 67, 'fakerpress_flag', '1'),
(134, 67, '_fakerpress_orginal_url', 'https://picsum.photos/1402/934/?random'),
(135, 66, '_thumbnail_id', '67'),
(136, 68, '_wp_attached_file', '2023/06/91a90936-0486-3ad1-9749-a34d325c2730.jpg'),
(137, 68, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1313;s:6:\"height\";i:875;s:4:\"file\";s:48:\"2023/06/91a90936-0486-3ad1-9749-a34d325c2730.jpg\";s:8:\"filesize\";i:91277;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(138, 68, 'fakerpress_flag', '1'),
(139, 68, '_fakerpress_orginal_url', 'https://picsum.photos/1313/875/?random'),
(140, 69, 'fakerpress_flag', '1'),
(141, 70, '_wp_attached_file', '2023/06/36a25c4d-ce61-32be-b902-5e1c8afde259.jpg'),
(142, 70, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1246;s:6:\"height\";i:830;s:4:\"file\";s:48:\"2023/06/36a25c4d-ce61-32be-b902-5e1c8afde259.jpg\";s:8:\"filesize\";i:108831;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(143, 70, 'fakerpress_flag', '1'),
(144, 70, '_fakerpress_orginal_url', 'https://picsum.photos/1246/830/?random'),
(145, 71, '_wp_attached_file', '2023/06/e08d169b-2ebd-3bfc-846d-baec3f99e78e.jpg'),
(146, 71, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1337;s:6:\"height\";i:891;s:4:\"file\";s:48:\"2023/06/e08d169b-2ebd-3bfc-846d-baec3f99e78e.jpg\";s:8:\"filesize\";i:77751;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(147, 71, 'fakerpress_flag', '1'),
(148, 71, '_fakerpress_orginal_url', 'https://picsum.photos/1337/891/?random'),
(149, 72, '_wp_attached_file', '2023/06/75cb4878-354d-3f6b-8369-7129ea96e877.png'),
(150, 72, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:388;s:6:\"height\";i:310;s:4:\"file\";s:48:\"2023/06/75cb4878-354d-3f6b-8369-7129ea96e877.png\";s:8:\"filesize\";i:3949;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(151, 72, 'fakerpress_flag', '1'),
(152, 72, '_fakerpress_orginal_url', 'https://via.placeholder.com/388x310/'),
(153, 73, 'fakerpress_flag', '1'),
(154, 74, '_wp_attached_file', '2023/06/2300fe3d-fec1-3d5d-9625-52d6c14fd39c.png'),
(155, 74, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:533;s:6:\"height\";i:426;s:4:\"file\";s:48:\"2023/06/2300fe3d-fec1-3d5d-9625-52d6c14fd39c.png\";s:8:\"filesize\";i:6111;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(156, 74, 'fakerpress_flag', '1'),
(157, 74, '_fakerpress_orginal_url', 'https://via.placeholder.com/533x426/'),
(158, 75, '_wp_attached_file', '2023/06/06954f23-2eac-3ead-9e81-027642dec240.jpg'),
(159, 75, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1101;s:6:\"height\";i:734;s:4:\"file\";s:48:\"2023/06/06954f23-2eac-3ead-9e81-027642dec240.jpg\";s:8:\"filesize\";i:26127;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(160, 75, 'fakerpress_flag', '1'),
(161, 75, '_fakerpress_orginal_url', 'https://picsum.photos/1101/734/?random'),
(162, 76, '_wp_attached_file', '2023/06/881fd964-baf5-3130-be23-608739287d24.jpg'),
(163, 76, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1041;s:6:\"height\";i:694;s:4:\"file\";s:48:\"2023/06/881fd964-baf5-3130-be23-608739287d24.jpg\";s:8:\"filesize\";i:12296;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(164, 76, 'fakerpress_flag', '1'),
(165, 76, '_fakerpress_orginal_url', 'https://picsum.photos/1041/694/?random'),
(166, 77, 'fakerpress_flag', '1'),
(167, 78, '_wp_attached_file', '2023/06/3cf61b7f-a299-3633-9bc8-3095c9ab10ff.jpg'),
(168, 78, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1271;s:6:\"height\";i:847;s:4:\"file\";s:48:\"2023/06/3cf61b7f-a299-3633-9bc8-3095c9ab10ff.jpg\";s:8:\"filesize\";i:119780;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(169, 78, 'fakerpress_flag', '1'),
(170, 78, '_fakerpress_orginal_url', 'https://picsum.photos/1271/847/?random'),
(171, 77, '_thumbnail_id', '78'),
(172, 79, '_wp_attached_file', '2023/06/0cccd14e-f5ae-39eb-98d0-93dcd9dd9ddc.png'),
(173, 79, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:248;s:6:\"height\";i:198;s:4:\"file\";s:48:\"2023/06/0cccd14e-f5ae-39eb-98d0-93dcd9dd9ddc.png\";s:8:\"filesize\";i:2497;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(174, 79, 'fakerpress_flag', '1'),
(175, 79, '_fakerpress_orginal_url', 'https://via.placeholder.com/248x198/'),
(176, 80, '_wp_attached_file', '2023/06/ff2ca14c-da55-3c4d-ac75-0206b234b664.jpg'),
(177, 80, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1292;s:6:\"height\";i:861;s:4:\"file\";s:48:\"2023/06/ff2ca14c-da55-3c4d-ac75-0206b234b664.jpg\";s:8:\"filesize\";i:133908;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(178, 80, 'fakerpress_flag', '1'),
(179, 80, '_fakerpress_orginal_url', 'https://picsum.photos/1292/861/?random'),
(180, 81, '_wp_attached_file', '2023/06/b9e0299d-15b4-34d3-b3df-669695963405.jpg'),
(181, 81, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1119;s:6:\"height\";i:746;s:4:\"file\";s:48:\"2023/06/b9e0299d-15b4-34d3-b3df-669695963405.jpg\";s:8:\"filesize\";i:42377;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(182, 81, 'fakerpress_flag', '1'),
(183, 81, '_fakerpress_orginal_url', 'https://picsum.photos/1119/746/?random'),
(185, 83, '_wp_attached_file', '2023/06/0bbcba85-2389-30ad-8b80-17cf2955c459.jpg'),
(186, 83, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1072;s:6:\"height\";i:714;s:4:\"file\";s:48:\"2023/06/0bbcba85-2389-30ad-8b80-17cf2955c459.jpg\";s:8:\"filesize\";i:45367;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(187, 83, 'fakerpress_flag', '1'),
(188, 83, '_fakerpress_orginal_url', 'https://picsum.photos/1072/714/?random'),
(189, 82, '_thumbnail_id', '83'),
(190, 84, '_wp_attached_file', '2023/06/66216abc-63f4-39a6-b381-d989ccf790ab.jpg'),
(191, 84, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1250;s:6:\"height\";i:833;s:4:\"file\";s:48:\"2023/06/66216abc-63f4-39a6-b381-d989ccf790ab.jpg\";s:8:\"filesize\";i:49962;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(192, 84, 'fakerpress_flag', '1'),
(193, 84, '_fakerpress_orginal_url', 'https://picsum.photos/1250/833/?random'),
(194, 85, 'fakerpress_flag', '1'),
(195, 86, '_wp_attached_file', '2023/06/cc9b4c71-dfa6-3036-b6e9-f5d699faa035.png'),
(196, 86, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:227;s:6:\"height\";i:181;s:4:\"file\";s:48:\"2023/06/cc9b4c71-dfa6-3036-b6e9-f5d699faa035.png\";s:8:\"filesize\";i:2066;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(197, 86, 'fakerpress_flag', '1'),
(198, 86, '_fakerpress_orginal_url', 'https://via.placeholder.com/227x181/'),
(199, 85, '_thumbnail_id', '86'),
(200, 87, '_wp_attached_file', '2023/06/2f51e452-348b-317f-a589-0c0e497d2b23.png'),
(201, 87, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:445;s:6:\"height\";i:356;s:4:\"file\";s:48:\"2023/06/2f51e452-348b-317f-a589-0c0e497d2b23.png\";s:8:\"filesize\";i:4834;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(202, 87, 'fakerpress_flag', '1'),
(203, 87, '_fakerpress_orginal_url', 'https://via.placeholder.com/445x356/'),
(204, 88, '_wp_attached_file', '2023/06/d133f791-454d-32bb-abfa-4f1c71c63df4.png'),
(205, 88, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:393;s:6:\"height\";i:314;s:4:\"file\";s:48:\"2023/06/d133f791-454d-32bb-abfa-4f1c71c63df4.png\";s:8:\"filesize\";i:3669;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(206, 88, 'fakerpress_flag', '1'),
(207, 88, '_fakerpress_orginal_url', 'https://via.placeholder.com/393x314/'),
(208, 89, '_wp_attached_file', '2023/06/8094d9f1-7b99-3f60-bf40-d6a5fc3a25b6.jpg'),
(209, 89, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1078;s:6:\"height\";i:718;s:4:\"file\";s:48:\"2023/06/8094d9f1-7b99-3f60-bf40-d6a5fc3a25b6.jpg\";s:8:\"filesize\";i:54781;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(210, 89, 'fakerpress_flag', '1'),
(211, 89, '_fakerpress_orginal_url', 'https://picsum.photos/1078/718/?random'),
(212, 90, '_wp_attached_file', '2023/06/cf5c1187-0307-3912-9e21-b02160a23b46.jpg'),
(213, 90, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1273;s:6:\"height\";i:848;s:4:\"file\";s:48:\"2023/06/cf5c1187-0307-3912-9e21-b02160a23b46.jpg\";s:8:\"filesize\";i:58420;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(214, 90, 'fakerpress_flag', '1'),
(215, 90, '_fakerpress_orginal_url', 'https://picsum.photos/1273/848/?random'),
(216, 91, 'fakerpress_flag', '1'),
(217, 92, '_wp_attached_file', '2023/06/e6870e43-d278-35a5-8061-3b4107b70d98.jpg'),
(218, 92, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1153;s:6:\"height\";i:768;s:4:\"file\";s:48:\"2023/06/e6870e43-d278-35a5-8061-3b4107b70d98.jpg\";s:8:\"filesize\";i:148007;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(219, 92, 'fakerpress_flag', '1'),
(220, 92, '_fakerpress_orginal_url', 'https://picsum.photos/1153/768/?random'),
(221, 91, '_thumbnail_id', '92'),
(222, 93, 'fakerpress_flag', '1'),
(223, 93, '_thumbnail_id', 'raw'),
(224, 94, 'fakerpress_flag', '1'),
(225, 95, '_wp_attached_file', '2023/06/1aee3f20-dec2-3a8d-9987-bf9ac8221606.jpg'),
(226, 95, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1156;s:6:\"height\";i:770;s:4:\"file\";s:48:\"2023/06/1aee3f20-dec2-3a8d-9987-bf9ac8221606.jpg\";s:8:\"filesize\";i:110002;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(227, 95, 'fakerpress_flag', '1'),
(228, 95, '_fakerpress_orginal_url', 'https://picsum.photos/1156/770/?random'),
(229, 94, '_thumbnail_id', '95'),
(230, 96, 'fakerpress_flag', '1'),
(231, 97, '_wp_attached_file', '2023/06/62e3c4f1-d622-363c-8ad1-f18d0dd205b6.jpg'),
(232, 97, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1148;s:6:\"height\";i:765;s:4:\"file\";s:48:\"2023/06/62e3c4f1-d622-363c-8ad1-f18d0dd205b6.jpg\";s:8:\"filesize\";i:59776;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(233, 97, 'fakerpress_flag', '1'),
(234, 97, '_fakerpress_orginal_url', 'https://picsum.photos/1148/765/?random'),
(235, 96, '_thumbnail_id', '97'),
(236, 98, 'fakerpress_flag', '1'),
(237, 99, '_wp_attached_file', '2023/06/f8d4a857-342c-3cc3-9a51-917b02b1f33d.png'),
(238, 99, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:525;s:6:\"height\";i:420;s:4:\"file\";s:48:\"2023/06/f8d4a857-342c-3cc3-9a51-917b02b1f33d.png\";s:8:\"filesize\";i:5293;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(239, 99, 'fakerpress_flag', '1'),
(240, 99, '_fakerpress_orginal_url', 'https://via.placeholder.com/525x420/'),
(241, 98, '_thumbnail_id', '99'),
(242, 82, '_edit_lock', '1687399875:1'),
(244, 82, 'feat-size', 'feat-lg'),
(245, 82, '_edit_last', '1'),
(248, 103, '_wp_attached_file', '2023/06/images-1-1.jpg'),
(249, 103, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:300;s:6:\"height\";i:168;s:4:\"file\";s:22:\"2023/06/images-1-1.jpg\";s:8:\"filesize\";i:6731;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(250, 104, '_wp_attached_file', '2023/06/images-2-1.jpg'),
(251, 104, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:275;s:6:\"height\";i:183;s:4:\"file\";s:22:\"2023/06/images-2-1.jpg\";s:8:\"filesize\";i:6638;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(252, 105, '_wp_attached_file', '2023/06/images-3.jpg'),
(253, 105, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:268;s:6:\"height\";i:188;s:4:\"file\";s:20:\"2023/06/images-3.jpg\";s:8:\"filesize\";i:13468;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(254, 106, '_wp_attached_file', '2023/06/images-4.jpg'),
(255, 106, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:323;s:6:\"height\";i:156;s:4:\"file\";s:20:\"2023/06/images-4.jpg\";s:8:\"filesize\";i:9932;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(256, 107, '_wp_attached_file', '2023/06/images.jpg'),
(257, 107, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:300;s:6:\"height\";i:168;s:4:\"file\";s:18:\"2023/06/images.jpg\";s:8:\"filesize\";i:6547;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(261, 27, '_edit_last', '1'),
(264, 33, '_edit_last', '1'),
(266, 108, '_edit_lock', '1687407218:1'),
(268, 1, '_edit_last', '1'),
(271, 13, '_edit_last', '1'),
(273, 110, '_edit_lock', '1687420466:1'),
(274, 110, '_edit_last', '1'),
(275, 112, '_menu_item_type', 'post_type'),
(276, 112, '_menu_item_menu_item_parent', '0'),
(277, 112, '_menu_item_object_id', '110'),
(278, 112, '_menu_item_object', 'page'),
(279, 112, '_menu_item_target', ''),
(280, 112, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(281, 112, '_menu_item_xfn', ''),
(282, 112, '_menu_item_url', ''),
(283, 112, '_menu_item_orphaned', '1687408430'),
(284, 113, '_menu_item_type', 'post_type'),
(285, 113, '_menu_item_menu_item_parent', '0'),
(286, 113, '_menu_item_object_id', '110'),
(287, 113, '_menu_item_object', 'page'),
(288, 113, '_menu_item_target', ''),
(289, 113, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(290, 113, '_menu_item_xfn', ''),
(291, 113, '_menu_item_url', ''),
(293, 114, '_form', '<div class=\"form-wrapper\">\n    <label> Fullname [text* fullname] </label>\n</div>\n\n<div class=\"form-wrapper\">\n    <label> Email [email* email] </label>\n</div>\n\n<div class=\"form-wrapper\">\n    <label> Subject [text* subject] </label>\n</div>\n\n<div class=\"form-wrapper\">\n    <label> Message [textarea* message] </label>\n</div>\n\n[submit \"Send Message\"]'),
(294, 114, '_mail', 'a:9:{s:6:\"active\";b:1;s:7:\"subject\";s:25:\"[_site_title] \"[subject]\"\";s:6:\"sender\";s:43:\"[_site_title] <lowrenceborja2116@gmail.com>\";s:9:\"recipient\";s:19:\"[_site_admin_email]\";s:4:\"body\";s:146:\"From: [name] [email]\nSubject: [subject]\n\nMessage Body:\n[your-message]\n\n-- \nThis e-mail was sent from a contact form on [_site_title] ([_site_url])\";s:18:\"additional_headers\";s:17:\"Reply-To: [email]\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";b:0;s:13:\"exclude_blank\";b:0;}'),
(295, 114, '_mail_2', 'a:9:{s:6:\"active\";b:1;s:7:\"subject\";s:25:\"[_site_title] \"[subject]\"\";s:6:\"sender\";s:43:\"[_site_title] <lowrenceborja2116@gmail.com>\";s:9:\"recipient\";s:7:\"[email]\";s:4:\"body\";s:122:\"Message Body:\n[message]\nito ay reply ahahahaha\n-- \nThis e-mail was sent from a contact form on [_site_title] ([_site_url])\";s:18:\"additional_headers\";s:29:\"Reply-To: [_site_admin_email]\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";b:0;s:13:\"exclude_blank\";b:0;}'),
(296, 114, '_messages', 'a:22:{s:12:\"mail_sent_ok\";s:45:\"Thank you for your message. It has been sent.\";s:12:\"mail_sent_ng\";s:71:\"There was an error trying to send your message. Please try again later.\";s:16:\"validation_error\";s:61:\"One or more fields have an error. Please check and try again.\";s:4:\"spam\";s:71:\"There was an error trying to send your message. Please try again later.\";s:12:\"accept_terms\";s:69:\"You must accept the terms and conditions before sending your message.\";s:16:\"invalid_required\";s:27:\"Please fill out this field.\";s:16:\"invalid_too_long\";s:32:\"This field has a too long input.\";s:17:\"invalid_too_short\";s:33:\"This field has a too short input.\";s:13:\"upload_failed\";s:46:\"There was an unknown error uploading the file.\";s:24:\"upload_file_type_invalid\";s:49:\"You are not allowed to upload files of this type.\";s:21:\"upload_file_too_large\";s:31:\"The uploaded file is too large.\";s:23:\"upload_failed_php_error\";s:38:\"There was an error uploading the file.\";s:12:\"invalid_date\";s:41:\"Please enter a date in YYYY-MM-DD format.\";s:14:\"date_too_early\";s:32:\"This field has a too early date.\";s:13:\"date_too_late\";s:31:\"This field has a too late date.\";s:14:\"invalid_number\";s:22:\"Please enter a number.\";s:16:\"number_too_small\";s:34:\"This field has a too small number.\";s:16:\"number_too_large\";s:34:\"This field has a too large number.\";s:23:\"quiz_answer_not_correct\";s:36:\"The answer to the quiz is incorrect.\";s:13:\"invalid_email\";s:30:\"Please enter an email address.\";s:11:\"invalid_url\";s:19:\"Please enter a URL.\";s:11:\"invalid_tel\";s:32:\"Please enter a telephone number.\";}'),
(297, 114, '_additional_settings', ''),
(298, 114, '_locale', 'en_US'),
(300, 115, '_edit_lock', '1687504702:1'),
(301, 115, '_edit_last', '1'),
(302, 117, '_menu_item_type', 'post_type'),
(303, 117, '_menu_item_menu_item_parent', '0'),
(304, 117, '_menu_item_object_id', '115'),
(305, 117, '_menu_item_object', 'page'),
(306, 117, '_menu_item_target', ''),
(307, 117, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(308, 117, '_menu_item_xfn', ''),
(309, 117, '_menu_item_url', ''),
(311, 118, '_edit_lock', '1687491294:1'),
(312, 119, '_edit_lock', '1687477233:1'),
(314, 118, '_edit_last', '1'),
(316, 118, '_thumbnail_id', '20'),
(322, 118, '_encloseme', '1'),
(323, 118, 'Reading_time', '10mins'),
(324, 131, '_edit_last', '1'),
(325, 131, '_edit_lock', '1687504577:1'),
(326, 132, '_wp_attached_file', '2023/06/images-3-1.jpg'),
(327, 132, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:183;s:6:\"height\";i:275;s:4:\"file\";s:22:\"2023/06/images-3-1.jpg\";s:8:\"filesize\";i:7343;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(328, 131, '_thumbnail_id', '132'),
(329, 133, '_edit_last', '1'),
(330, 133, '_edit_lock', '1687502584:1'),
(331, 134, '_wp_attached_file', '2023/06/images-1-2.jpg'),
(332, 134, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:224;s:6:\"height\";i:225;s:4:\"file\";s:22:\"2023/06/images-1-2.jpg\";s:8:\"filesize\";i:7045;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(333, 135, '_wp_attached_file', '2023/06/images-5.jpg'),
(334, 135, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:200;s:6:\"height\";i:252;s:4:\"file\";s:20:\"2023/06/images-5.jpg\";s:8:\"filesize\";i:5890;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(335, 133, 'Position', 'CEO'),
(336, 133, '_thumbnail_id', '135'),
(337, 136, '_edit_last', '1'),
(338, 136, '_edit_lock', '1687502601:1'),
(339, 136, 'Position', 'CEO'),
(340, 136, '_thumbnail_id', '134'),
(341, 131, 'Position', 'CEO'),
(342, 137, '_edit_last', '1'),
(343, 137, '_edit_lock', '1687501783:1'),
(344, 138, '_wp_attached_file', '2023/06/download-1.jpg'),
(345, 138, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:205;s:6:\"height\";i:246;s:4:\"file\";s:22:\"2023/06/download-1.jpg\";s:8:\"filesize\";i:5706;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(346, 139, '_wp_attached_file', '2023/06/images-4-1.jpg'),
(347, 139, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:200;s:6:\"height\";i:252;s:4:\"file\";s:22:\"2023/06/images-4-1.jpg\";s:8:\"filesize\";i:6841;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(348, 140, '_wp_attached_file', '2023/06/images-2-2.jpg'),
(349, 140, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:318;s:6:\"height\";i:159;s:4:\"file\";s:22:\"2023/06/images-2-2.jpg\";s:8:\"filesize\";i:4637;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(350, 137, '_thumbnail_id', '140'),
(351, 141, '_edit_last', '1'),
(352, 141, '_edit_lock', '1687501657:1'),
(353, 141, '_thumbnail_id', '139'),
(354, 142, '_edit_last', '1'),
(355, 142, '_edit_lock', '1687501611:1'),
(356, 142, 'position', 'CEO-Founder'),
(357, 142, '_thumbnail_id', '138'),
(358, 141, 'position', 'CEO-Fouder'),
(359, 137, 'position', 'CEo-Founder'),
(360, 141, 'facebook', 'http://ako si natoy'),
(361, 141, 'twitter', 'http://nasan kana ba mahal ko?'),
(362, 141, 'linkedin', 'http://umuwi kana baby:>'),
(363, 141, 'envelope', 'http://baby pauwi na ako:>'),
(364, 137, 'envelope', 'http://baby pauwi na ako:>'),
(365, 137, 'facebook', 'http://ako si natoy'),
(366, 137, 'linkedin', 'http://umuwi kana baby:>'),
(367, 137, 'twitter', 'http://nasan kana ba mahal ko?'),
(368, 142, 'twitter', 'http://nasan kana ba mahal ko?'),
(369, 142, 'linkedin', 'http:// umuwi kana baby:>'),
(370, 142, 'facebook', 'http://ako si natoy'),
(371, 142, 'envelope', 'http://baby pauwi na ako:>'),
(372, 143, '_edit_last', '1'),
(373, 143, '_edit_lock', '1687502254:1'),
(374, 143, '_thumbnail_id', '132'),
(375, 133, 'rating', '3'),
(376, 136, 'rating', '5'),
(377, 131, 'rating', '4'),
(378, 144, '_edit_lock', '1687503725:1'),
(379, 144, '_edit_last', '1'),
(380, 115, 'page-banner', 'data:image/jpeg;base64,/9j/4AAQSkZJRgABAQAAAQABAAD/2wCEAAoHCBYWFRgWFRYYGBgZGBoYGhwYGBgYGRwYGBgZGhgaHBocIS4lHB4rIRgYJjgmKy8xNTU1GiQ7QDszPy40NTEBDAwMEA8QHxISHzQrJSw0NDQ0MTQ0NDY0NDQ0NDQ2NDQ0NjQ0NDQ0NDQ0NDQ0NDQ0NDQ0NDQ0NDQ0NDQ0NDQ0NP/AABEIAOEA4QMBIgACEQEDEQH/xAAcAAEAAgMBAQEAAAAAAAAAAAAAAwUCBAYHAQj/xABEEAACAQIDBQUFBgMFBwUAAAABAgADEQQhMQUSQVFhBnGBkaETIjKxwQdCctHh8BSCklJiorLxFyMzNENzwhUks9Li/8QAGgEAAgMBAQAAAAAAAAAAAAAAAAQBAgMFBv/EACsRAAICAQMCBAYDAQAAAAAAAAABAgMREiExBEEFE1FhIjI0cZGhQoGxwf/aAAwDAQACEQMRAD8A9eiIgAiIgAiIgAiIY2zMAE+O4GZIHfNOvjuC+Z+gmi7km5N5hK5Ljc2hS3yWD45RoCfQSB8c50sPD85qxMZWyfc2VUV2JGrseJ87fKYlzzPmZjEzcm+5bCMg55nzMyWuw4nzv85HENTQYRtJjnGtj4flJ0x6nUEeoldE0jbJdyrqi+xdo4OYN+6fZSI5GYNu6btDHcG8x9RNo3J87GMqWuDeiFa+YzibmIiIgAiIgAiIgAiIgAiIgAiIgAiJhWqhRc+A5mQ2ksslJvZCtVCi5/UyrxGILa6cv3qZhVqFjc/6SN3A1illrlsuBqFaX3Id9m0/fjHsDzE+nEDlAxA5TI337I+bjDQ+X5T6lbnJVYHSfHpg98Az6mYMTX3GGnp+Ue3I1H0gRj0NiYu4Gsh9ueA+sLTJzb9YBjHI32bT9+MDDniZOMpG1Yd8Ay+xh7A8D9IFRhrH8R09Z9GIHKBO/c3KFcoctOUtKNUMLjx5iUiuDoZJSqFTcTWu1x2fBhZXnfuXUSOhVDi48RyMkjaaayhVrGzEREkgREQAREQAREixNdUQu2g9TwAgBlWrKg3nYKOZla+3qY0Dt1AAHqbygxmKao28x7hwA5CQQA6ijtykxC+8pOl1/wDreRV6xY34cByEqtm0hctxGQ8dfpLGKXTy9IzTDC1HxjllrIFpk5t+s2JC9YDTOYjCz2JFpgcIamDwkO850/fnG+41/flAnD9Q9MjMfrMkrDj+k+pWB1yn16YPQwIfuSRNfcYaen5R7ZhqPSAY9DYmLuAM5D7YnQQKZOZgGMcnzNz09JIlEDr3zJnCj6SI1idB9YE7vgn3RyE+FAeAkPv/ALtG+41+X5QDHufXo8RPtFycjCVxxykwgQ89yShVKm48RzEmrbcpKxX3mI1sun9Vpqyu2lSFw/E5Hw0+s2pnh6Re6GVqLhNvUzqHXqQCPQ3llRrK43kYMOn7ynDyfCYpqbbynvHAjkY2LHaRIsNiFdQ66HzB4g9ZLABERABOd7RYm7BBoo3j+I6eQ+c6KcVjam+7tzY27r5eloAQxEQA2cHidy4Oh5cDLVWBFxoZQyx2Y+RXlmPHX99YvdBY1I3qm86Wbri4tI6dIDXMyWIsM5YiCZE2IQfeHnBJvghtLkPSB0yMjWoVyP77jMxiEP3h52kuRHMQaa5JU0zFKgPGZyFqA4ZTH2TDQ+sC2F2NiRVKttNZh7JjqfWZpRA1z+UCMJGFOnfM/wCsnAtPswaqo1YDvIhyQ5epnEh/iU/tCSI4OhB7jeDi1yiqaZ8emDMKSEa6SaIFsvg+MwAudBKrGYnfsBoPUzY2k+QXnmfD9+krozTBY1MWum86UIiIwYFz2dxNnKHRsx+Ia+Y+U6KcThKu46NyYHwvn6XnbQAREQA+ObAnkCfScGjXAM70i889IKMVP3SVI6g2MAJ4gGIAJtbPb3+8EfI/SasnwR99fH/K0pNZgy0PmRcTRxGOtkmfXh4c5sYpCUYLrbL8vHTxlCKhJsBnpbjfui9UIvdjFsmtkT1apObG/fITWHWb2H2XfOoc+Q+p/Kb9LAJoqA/y7x9Zq7YrZGSrk92UQrDrJadW2am3cZevsm+tIeAAPpnK7EbIt8BKnk1/nqPWHmL+SwHlv+LyZUMedH8x9RN5HBFwbic87Mh3XWx/fnLXZStuEtkCbgdLDOZ2wilqRpXKTelm9NbEYtVyGZ5cu8zZnOO7KSrD3hz+cpTBSe5a2TS2NmrimbU2HIZCa5qCbFDZ7vm/ujlx8uHjLShsdbZIW6t+uUY1xW0V+DDRJ7v9lF7YdZkrjnOgqbOAGdJbfhX5iaVbZiNpdT0zHkZXzlnDWCfKfKZr0cay6+8OuvnLKlVDC4/Ud8o69N6ZswuOB4fvpNvZO8WLWstrd5uP185FkIOOpF65SUsM+7Rb3+4D6n6zUk+OPvt4f5RIJrX8qMp/MxEQTLlD4xsDO6ptdQeYB9J59m5CjiQAOpNhPQhllyy8oAfYiIAYVqgRSzGwE5PalIVGZ1G6Tw59e+Wm1cRvPujRcvHifpNCLTuerCG6qE45fcqaDcJLGLTdfe4N8+P0MAzeMtSyLTi4yaYk2B/4i9Ax/wAJH1kJMn2Qt3ZuQt5n/wDPrIseIsmCzJFxFomCVAdIgOmzhaBZrcBqZc0qQUWAsJBs+nZQeJz/AC9JJjMStNHqObKis7HkqgknyBjtUElkTsk5PBnUcKLsQANSTYDxMgDU6y+6ysOaMDY94n547UdpK2Oqs1RiE3juU7+4i/dy0LW1bUknQWArdm46ph3FSg7U3GjLl4MNGXobiXeHyXVTW+dz9CVqRDbp4fu8wmpsHbQxuESvYK6kpUUaK4tvW6G6sOjCbcSsjplg2hLK3EWiS4VN5lHX0Gcqll4Jbwsm5gsIAN5u8A8OpmzSxdNiQjoxGoVlYjvAOU8R+0Tta+Ir1KCOVw9Nim6psKjL7rs1viW9wF0yvqcuLpMUYMhKMpurKSrKeYYZg90ejFRWEYaJS3bP1VaV+OwgsWUdSOfWcv8AZn2qbGUnp1jetR3btpvo191yBlvXBBt0PGdwZMoqSwzJNxkc7EzxShWI0F8u45iRI4OkQaw8Dq3WSox3/EbqFPpb6SGbG1xZ0bmCPI3+vpNcGPVvMUJ2LEmJFXbhJSYwqbz34L8+H1MmUtKyyIxcpJI2tmUtxldgCwzAPD9Z1uHrq67y/qDyM5mbezsRuOOTZH6GLwuercasoWnblF/ERGcoTwzlma5J5knznyZ103WZeRP6TCc98nVi9tjXxyXTqDf85VqxGhls+I3TkNJmcPSqZj3W4gWHpx8IzXJxjuthO5RlLZ7lMzE6mdBs6huIAdTmfHQeUwobPRDvEkkaFrWE3QZW21SWEFdendny/prKHbm3sPhheq+6T8KD3nb8KjO3U2HWcJtns5jNnu+Jw9UvTuWdgfesST/vUbJxn8Wet7LI+x/Zw7QqVMTiXZkD7rAGzO9gxW/3EAZchzAFrSFXHGpvY0U2tkty7xX2uVmtTwmFW9gAahaozWAF/Z07W/qMrds7d21XoVPa0XSgUb2lsP7MbgHvXLjeAtynsHZ/AUaNPco0kpgZEIoW/IkjNj1MssRRV1ZGAZWUqwOhVhYg94JjMWmk0Kt4lwflLef9gR7UjUfSdV2s7IV8FUa6u9C53KoBYbvAOR8LDjewOo6VWx9j18U4ShTZyTYkA7i9XfRR+wCcpIwuMpnafZZt+hTp1sPUqBHqVFZFfJWNlUgPpvZLkSCeE7Xam3cNhsq9ZENr7pJL25hFBa3W05LtL9mdKnhQ1FicRTQs9ydyrYbze6fgOoW2WVjfUcx2D7OUsc1Vq71D7PcJVSAX39+xZzc5btrd2cxsjGTy3wRFvt3PRML22wDturiVU/31emP6mUD1l1idtUMMnta1RUQqdw6lmIyCqtyx7gZyG0vs4wbITTNSkwBO8HLrkPvK2o7iO+cL2K7PHHVQjuyUaahmIN2AZskQHJSx3je1sjrKRjDOpPgmTeMMoBWNhz4358Y32/YnoHbjsC2Gc1cLTd8OQLhd53pkDPe1ZkOu9na5BtYX4vCYV6rblJHdybbqKWa/UDTvMZCLys5LDsnicelV3wKuzhLOFRH9wsuoYcwNM/WdYftF2rhz/wC5wy7o1NShVpX7nB3R5Gdx9nXZRsFRLVbe3q2LgZhVF9xL8SLkkjK54gAzsWAtna3XSBhKSbPKMH9o+GxLj2qnDsQB7zb1O/RwBbvYAdZ2NFlIG73+fHrOc7UdiMNid5qSLQqEkqyAKjHhvqMiDxIsep0nmmycVtB74Cg73DOCqsFKhTuuPaHNUB4A8etotKEZttMYUnGKTPacfR30NsyDcd41HznPqxGkk7EdmWwNNw9QO1QqzKtwiFQR7t8yTfNrC+6uWWdzX2ejneBsTqVtYwhYo5j2KTg5brkomYnUyzwCWTPUm/5fvrJRhqVPM+83AHP04eMxTEbxzGstZJyjstgpioy3e5NET6qkkAak284sOPgs/wD1M8p9m7/BLyib4kK6oehp7Wwt/fXh8XdzlTOqldi9mBs0Njy4fpLW1NvMSKbklpkUNakDnofSaxpm17XHMZiWOL2fUt8BNuWd/KV4ZkPFSNRofEGWq1KP/Clri5bfkxAJyzPmZaYGmyrZudwOQml/HPzHfaSYGs5exJIzvfO3XpnIsUnHfBFbSkbO0sEtak9J77royEjUBha46jXwnk+zdoYnY9dqVVN+k5uQMla2XtKbab1rXU9AbZGewyDGYOnVUpVRXQ6q6hh0Oeh6xeMtOz4N5Rzuiq2J24wdQgrWVGNgVqkU2z4e97pP4SZ3GGxKuLowYdCD8p5XtD7M8K5JpNUonkCHTyf3v8UpW+yyopumJTvNN0P+FjN4TguGZTg5HubW1Mqcf2iwtEhXrU98myorBnJJtYIt2PlPIP8AZhiGyfEoR+F29CRLrYHYJMJVWs1ffdN7dUIqLdlKk5sxJsTpaXdkcbFVVvudbtU+3RkYsquN1t02bdORUHOwIyuM8zYjWV+x9j0MMGGHTc393eO8zFt2+7csSct5vObwM+xVyfA8oxXB9LnnKjZfZ+hh6ntMOrUyRusodmV15FWJtbUEWt3Eg20SqbXBLin2N5e0dCjurXqLSDZIzmyEj7pc+6D0JBPhLvD4hHF0ZWB4qysD4icHt/ZdPE0jRqOUBKsGUAkMpy1B5keM41vsua96WKQ99MqfEq5jcJ4itQjZWnJ6T3W8oNtdocPSBD16aDQlnUE9FBNz4Tyj/ZjiTk2JQjuqN6GbeD+ypAb1MSxHKnTVD/UzN8oSsi1jJEa2nkm7Q/aQgUpgwXc5CoylUW+V0RveZuVwB36Sb7N+zL0d/E1wVqVF3VVr7wRiGZmvozELkcxY31sOh2L2TwuGIanTBcffc7794JyX+UCXkwlOKWmJsovOWa+ORmWy87kcxKogjmPMTbx1Vw9gSBlaxtfnIxjntqO+wmtaajtgxm05EIpm17WHM5CbFCmBne59JAWZzxY8BqfACb+EwFS3wtnzFvnLW6tJNOnVl/kxlpsnC577afd6nnM8LsoDNzfoNPE8ZZgStdTzmRpdemtMRERGMIUEREAEo9vO4I9wMltSu9nxudV9JeRADjUqU+KHwYkfOSHF/dRbeFyfCXm0cEnx7q9ch5zTRANAB3C0WskovDRvCLaymEJsL62z7+MyiIuMCQ4jEKgux7hxPdJSZzWJrF2LNrpbkOU0rhqe5SyelG6+Od9PdXkNT3n8pDIUq8DJQb6RuMVHZCjk3yZpUI0MkGJPSQxIlGMuUWjOUeGT/wASeQmLV2PG3dIogq4rsDtm+WIgyNqo4Zy5Q2qe0WQ2b3l/xDx4+MtaNVXG8puP3keU5lmvrLTZNBgSxNhb4efU8rRe6EUs8G9UpN45LaYvextrbLv4TKIsMFaMWfhdb+FiPAyNqlPgh8WI+Rlo6A6gHvF5t7OwSX39xemQ84xCSbwl+zCcXFZbNbYLuWPuBUtqFtnws2resvIiMi4iIgAiIgAiIgAiIgAYXyMqMRRKG3DgZbzGrTDCx/0mdkNS9y8J6WUsTOtSKGx8DzmESaaeGOJ53R8Y2F5pjCo994X66Hzm4wuLSDDmxI/eUE2uC2E4tFVtPBCmj1ASVQbxFhew1segz8JR0tsUW+/u/iBX10nbVaYZSrC4YEEcwRYieUY/ZrUarUmv7puD/aQ/C3iPIgjhN4WvuadP0lV2YvKfsdbTxin4XU9zKZKK55icaBFpp5vsbvwePaX6OyOI6iRPjVGrqP5lE5K0+w832JXg8e8n+Doau2KI1e/cGb1taQYbbAqVUpojHeZVJYgWBPvEAXvYXPhOfrJxGs6TsLsws5rsPdS6p1cizEdwuP5ukiVrwTPoKaYOTy/v6naYfCInwjPmcz+nhPiZP4mTu1heQUBc3/dzFm292JRSSZsREzo0i5sPE8pCTbwireN2ZYaiXNuHEy2VQBYaCY0qYUWH+szjtcNK9xOc9T9hERNCgiIgAiIgAiIgAiIgAiIgBjUphhYyrxGGKdRz/OW05ftH2up0L06dqlTQi/uKf7xGp/ujxIlXR5rwluWV3lrL4NyQVk4j99ZxuB7asrbtdd9Sb7yAKy3Om7owHge+dfgNo0qy71J1ccbZEfiU5jxEWu6edT+JbevYYpvjP5X/AESU6t8jrNHbex1xC/2XX4G/8TzUyx9mL3tM5jnAxGbjLVHZnl2Nwb0m3HUqeHIjmp4ia89UxFBKi7rqrKeDAEevGUtfsnQbNS6dFYEf4gT6zRSXc6dfXxa+Nb+xwsTsl7HU+NR/AKPoZYYPs7h0N93fI4ud70+H0g5I0l19SW2WcpsbYT1yGN0p8W4sOSg69+nfpO8o0VpoEVbKosAOQ/esln2Zylk5l18rpb8ehrZuenpNhVsLCa2P2hTorvVXVBwvqfwqM28BNPYnafDVn3CWS5shewVuhsfdPIHXLumsKJzWUtvUUsujHZv+i8oYYv0HP8paU6YUWEyAiMQrURec3IRETQoIiIAIiIAIiIAIiIAIiIAIMTz3tt2m3i2Hot7ouKjD7x4oDy5njppe+ldbnLSispKKyz72r7YFt6jh2suj1FOZ5hDwH97jw5ngq1SwsNZNIqlIHvnUrqVccISlJyeWaksNi4gpUsCRvC1wbG4zGfmPGaLoRrPisQQRqMx3jSZdRUra5QfdFqLHXYpLsz0DD7bqrqQw/vDPzH1vLGj2gQ/GjL3WYfQ+k5rDNvorjMEcOB4jwN5lPGOydcnF8rY9eqqrIqS7+h16bWon74HeCvzElGOpn/qJ/Uv5zi4ll1D9Cr6SPZnaHH0x/wBRP6l/ORPtaiPvg/hBb5CchEl9Q/QhdJHu2dJW7QIPgVm77KPqfSVmK27UIJBCKBc7oubDXM/S0rlUnSVu3a24oS+bZnoo/M/Iy9Gu+1Vp8/4UvVVFbm1x6+pT4rEF3Z2JJY8Tc24C/dMKb2PTjMZLToE65D1nsa4aUorseTlJybb7nd9k+2Bp7tLEMWp6K5zK8g3NfUd2no6sCAQQQcwRmCDoRPBlUAWE7HsZ2mNIihWb/dk2Rj9wngf7h9D00w6jp9tUf7RvVbj4ZHpMRE54yIiIAIiIAIiIAIiIAIia20cYlGm1RvhRbnmeQHUmw8YJZ2B7HPdt9v8AsE9lTNqrjUaqmhb8RzA8TwE8xmxtDGvWqPUc3Zzc8gOCjoBYeE152KalXHHfuIzlqeRERNSh8ImvUw/9nymzEhrIG52bxVmNNuPvL+ID3h5C/gZ0LIDqJxdSrusCvxKQb8iJ12DxIqIrjiMxyPEec8n410mizzo8Pn7nf8L6jVHy3yuPsZGgvUT5/DDmZNE4mpnX1MgGHHMzNaKjh5ySIamGpmFWoqKWbJVFz4TjMRVaq7OdSfADgPAS07QY8FhTHwqbvbi3AeHz7ppJa2VrT1fg/ReXDzZcv9I854l1PmT0Lhf6R06IHUyWLRad3BzBEWi0APRuwm3/AGi/w9Q3dB7hOrIOHVl9R3GdlPDMLiGpurobMjBlPUfThbkZ7NsfaK4iilVfvDMf2WGTL4GczqqtEsrhjVM9SwzdiIipuIiIAIiIAIiIAJ599o21bsuHU5LZ3/EfgU9wu38y8p3uIrKiM7GyopYnoouflPEsdimq1HqN8TsWPS5yHcBYeEa6WvVPU+xhdLEcepBEROmKiIiACQ16tshrJpiyg6wYGjLXYGN3H3GPuucuj6Dz08poPh+WchIinU9Orq3CXDNKbZVTUl2O+iV2xcf7RLMffXJuo4N+fWWM8LdTKmbhLlHrKrFZBSjwxNDa+P8AZJl8bZL05se75zZxWIVELtoPMngB1nG4vEtUcu2p0HIcAJ0fC+h8+euS+FftiXiHVqmOiPL/AEQkySg5BtqDMkoE65fObCoBpPYxiecMoiJcBERABOv+zzau5Vagx92p7y9HUf8AkoP9InITOhWZXV0NmRgynqpuPUTO2GuDRMJaXk91ia+z8UtWmlRdHUMOlxmPA5eE2Jx2sHQEREgBERABERACp7Vf8nX/AO2Z47ETo9F8rFeo7CIiOGAiIgAiIgAmritfCIlZ8Ab3Zv8A4x/7bf5lnVRE8Z4z9U/sek8M+nRR9qPgT8Z/yyiw2vhETt+C/TL7s5Pif1D+xtxETtCIiIgAiIgAiIkgetdiP+Spfz//ACPL6InEs+ZnQjwhERKEiIiAH//Z'),
(381, 147, '_menu_item_type', 'post_type'),
(382, 147, '_menu_item_menu_item_parent', '0'),
(383, 147, '_menu_item_object_id', '144'),
(384, 147, '_menu_item_object', 'page'),
(385, 147, '_menu_item_target', ''),
(386, 147, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(387, 147, '_menu_item_xfn', ''),
(388, 147, '_menu_item_url', ''),
(390, 148, '_menu_item_type', 'post_type'),
(391, 148, '_menu_item_menu_item_parent', '0'),
(392, 148, '_menu_item_object_id', '115'),
(393, 148, '_menu_item_object', 'page'),
(394, 148, '_menu_item_target', ''),
(395, 148, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(396, 148, '_menu_item_xfn', ''),
(397, 148, '_menu_item_url', ''),
(398, 148, '_menu_item_orphaned', '1687505243'),
(399, 149, '_menu_item_type', 'post_type'),
(400, 149, '_menu_item_menu_item_parent', '0'),
(401, 149, '_menu_item_object_id', '110'),
(402, 149, '_menu_item_object', 'page'),
(403, 149, '_menu_item_target', ''),
(404, 149, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(405, 149, '_menu_item_xfn', ''),
(406, 149, '_menu_item_url', ''),
(407, 149, '_menu_item_orphaned', '1687505244'),
(408, 117, '_wp_old_date', '2023-06-22'),
(409, 113, '_wp_old_date', '2023-06-22');

-- --------------------------------------------------------

--
-- Table structure for table `wp_posts`
--

CREATE TABLE `wp_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext NOT NULL,
  `post_title` text NOT NULL,
  `post_excerpt` text NOT NULL,
  `post_status` varchar(20) NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) NOT NULL DEFAULT 'open',
  `post_password` varchar(255) NOT NULL DEFAULT '',
  `post_name` varchar(200) NOT NULL DEFAULT '',
  `to_ping` text NOT NULL,
  `pinged` text NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext NOT NULL,
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `guid` varchar(255) NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT 0,
  `post_type` varchar(20) NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2023-06-20 23:58:20', '2023-06-20 23:58:20', '<!-- wp:paragraph -->\n<p>Welcome to WordPress. This is your first post. Edit or delete it, then start writing!&nbsp;Lorem ipsum dolor sit amet consectetur adipisicing elit. Quam ad assumenda nemo minus voluptate doloremque, nisi amet. Explicabo, reprehenderit necessitatibus?&nbsp;Lorem ipsum dolor sit amet consectetur adipisicing elit. Quam ad assumenda nemo minus voluptate doloremque, nisi amet. Explicabo, reprehenderit necessitatibus?</p>\n<!-- /wp:paragraph -->', 'Hello world!', '', 'publish', 'open', 'open', '', 'hello-world', '', '', '2023-06-22 04:17:29', '2023-06-22 04:17:29', '', 0, 'http://localhost/blog2/?p=1', 0, 'post', '', 1),
(2, 1, '2023-06-20 23:58:20', '2023-06-20 23:58:20', '<!-- wp:paragraph -->\n<p>This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...or something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>As a new WordPress user, you should go to <a href=\"http://localhost/blog2/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!</p>\n<!-- /wp:paragraph -->', 'Sample Page', '', 'trash', 'closed', 'open', '', 'sample-page__trashed', '', '', '2023-06-21 02:03:49', '2023-06-21 02:03:49', '', 0, 'http://localhost/blog2/?page_id=2', 0, 'page', '', 0),
(3, 1, '2023-06-20 23:58:20', '2023-06-20 23:58:20', '<!-- wp:heading --><h2>Who we are</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Our website address is: http://localhost/blog2.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Comments</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor&#8217;s IP address and browser user agent string to help spam detection.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>An anonymized string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Media</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Cookies</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you visit our login page, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select &quot;Remember Me&quot;, your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Embedded content from other websites</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracking your interaction with the embedded content if you have an account and are logged in to that website.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Who we share your data with</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you request a password reset, your IP address will be included in the reset email.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>How long we retain your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognize and approve any follow-up comments automatically instead of holding them in a moderation queue.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What rights you have over your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Where your data is sent</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Visitor comments may be checked through an automated spam detection service.</p><!-- /wp:paragraph -->', 'Privacy Policy', '', 'trash', 'closed', 'open', '', 'privacy-policy__trashed', '', '', '2023-06-21 02:03:48', '2023-06-21 02:03:48', '', 0, 'http://localhost/blog2/?page_id=3', 0, 'page', '', 0),
(4, 1, '2023-06-20 23:58:43', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2023-06-20 23:58:43', '0000-00-00 00:00:00', '', 0, 'http://localhost/blog2/?p=4', 0, 'post', '', 0),
(5, 1, '2023-06-21 00:18:26', '2023-06-21 00:18:26', '{\"version\": 2, \"isGlobalStylesUserThemeJSON\": true }', 'Custom Styles', '', 'publish', 'closed', 'closed', '', 'wp-global-styles-twentytwentythree', '', '', '2023-06-21 00:18:26', '2023-06-21 00:18:26', '', 0, 'http://localhost/blog2/2023/06/21/wp-global-styles-twentytwentythree/', 0, 'wp_global_styles', '', 0),
(6, 1, '2023-06-21 01:18:45', '2023-06-21 01:18:45', '', 'Contact', '', 'trash', 'closed', 'closed', '', 'contact__trashed', '', '', '2023-06-21 02:03:48', '2023-06-21 02:03:48', '', 0, 'http://localhost/blog2/?page_id=6', 0, 'page', '', 0),
(7, 1, '2023-06-21 01:18:45', '2023-06-21 01:18:45', '', 'Contact', '', 'inherit', 'closed', 'closed', '', '6-revision-v1', '', '', '2023-06-21 01:18:45', '2023-06-21 01:18:45', '', 6, 'http://localhost/blog2/?p=7', 0, 'revision', '', 0),
(8, 1, '2023-06-21 02:03:48', '2023-06-21 02:03:48', '<!-- wp:heading --><h2>Who we are</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Our website address is: http://localhost/blog2.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Comments</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor&#8217;s IP address and browser user agent string to help spam detection.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>An anonymized string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Media</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Cookies</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you visit our login page, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select &quot;Remember Me&quot;, your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Embedded content from other websites</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracking your interaction with the embedded content if you have an account and are logged in to that website.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Who we share your data with</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you request a password reset, your IP address will be included in the reset email.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>How long we retain your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognize and approve any follow-up comments automatically instead of holding them in a moderation queue.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What rights you have over your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Where your data is sent</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Visitor comments may be checked through an automated spam detection service.</p><!-- /wp:paragraph -->', 'Privacy Policy', '', 'inherit', 'closed', 'closed', '', '3-revision-v1', '', '', '2023-06-21 02:03:48', '2023-06-21 02:03:48', '', 3, 'http://localhost/blog2/?p=8', 0, 'revision', '', 0),
(9, 1, '2023-06-21 02:03:49', '2023-06-21 02:03:49', '<!-- wp:paragraph -->\n<p>This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...or something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>As a new WordPress user, you should go to <a href=\"http://localhost/blog2/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!</p>\n<!-- /wp:paragraph -->', 'Sample Page', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2023-06-21 02:03:49', '2023-06-21 02:03:49', '', 2, 'http://localhost/blog2/?p=9', 0, 'revision', '', 0),
(11, 1, '2023-06-21 05:40:16', '2023-06-21 05:40:16', '<!-- wp:paragraph -->\n<p>Welcome to WordPress. This is your first post. Edit or delete it, then start writing!</p>\n<!-- /wp:paragraph -->', 'Hello world!', '', 'inherit', 'closed', 'closed', '', '1-revision-v1', '', '', '2023-06-21 05:40:16', '2023-06-21 05:40:16', '', 1, 'http://localhost/blog2/?p=11', 0, 'revision', '', 0),
(12, 1, '2023-06-21 05:49:27', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2023-06-21 05:49:27', '0000-00-00 00:00:00', '', 0, 'http://localhost/blog2/?p=12', 0, 'post', '', 0),
(13, 1, '2023-06-21 06:04:05', '2023-06-21 06:04:05', '<!-- wp:paragraph -->\n<p>Welcome to WordPress. This is your first post. Edit or delete it, then start writing! hahhaahaha</p>\n<!-- /wp:paragraph -->', 'ay d wow', '', 'publish', 'open', 'open', '', 'ay-d-wow', '', '', '2023-06-22 04:17:58', '2023-06-22 04:17:58', '', 0, 'http://localhost/blog2/?p=13', 0, 'post', '', 0),
(14, 1, '2023-06-21 06:04:05', '2023-06-21 06:04:05', '<!-- wp:paragraph -->\n<p>Welcome to WordPress. This is your first post. Edit or delete it, then start writing! hahhaahaha</p>\n<!-- /wp:paragraph -->', 'ay d wow', '', 'inherit', 'closed', 'closed', '', '13-revision-v1', '', '', '2023-06-21 06:04:05', '2023-06-21 06:04:05', '', 13, 'http://localhost/blog2/?p=14', 0, 'revision', '', 0),
(15, 1, '2023-06-21 06:25:09', '2023-06-21 06:25:09', '<!-- wp:paragraph -->\n<p>ja dasdl;sjdjl kad\'a \'sd;</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>as djal;l;d ;af;nk;d</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>ajsfkljkshnf ahnfjaojsl;jal;d ja</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>ad</p>\n<!-- /wp:paragraph -->', 'wala akong pera', '', 'publish', 'open', 'open', '', 'wala-akong-pera', '', '', '2023-06-21 07:08:39', '2023-06-21 07:08:39', '', 0, 'http://localhost/blog2/?p=15', 0, 'post', '', 0),
(16, 1, '2023-06-21 06:25:09', '2023-06-21 06:25:09', '<!-- wp:paragraph -->\n<p>ja dasdl;sjdjl kad\'a \'sd;</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>as djal;l;d ;af;nk;d</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>ajsfkljkshnf ahnfjaojsl;jal;d ja</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>ad</p>\n<!-- /wp:paragraph -->', 'wala akong pera', '', 'inherit', 'closed', 'closed', '', '15-revision-v1', '', '', '2023-06-21 06:25:09', '2023-06-21 06:25:09', '', 15, 'http://localhost/blog2/?p=16', 0, 'revision', '', 0),
(18, 1, '2023-06-21 06:53:02', '2023-06-21 06:53:02', '<!-- wp:paragraph -->\n<p>asfhajkshfhllaksfhlas</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>asjdgasgjdgajsfash</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>ajksgdfjajkf</p>\n<!-- /wp:paragraph -->', 'umuwi kana baby', '', 'publish', 'open', 'open', '', 'umuwi-kana-baby', '', '', '2023-06-21 07:08:55', '2023-06-21 07:08:55', '', 0, 'http://localhost/blog2/?p=18', 0, 'post', '', 0),
(19, 1, '2023-06-21 06:53:02', '2023-06-21 06:53:02', '<!-- wp:paragraph -->\n<p>asfhajkshfhllaksfhlas</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>asjdgasgjdgajsfash</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>ajksgdfjajkf</p>\n<!-- /wp:paragraph -->', 'umuwi kana baby', '', 'inherit', 'closed', 'closed', '', '18-revision-v1', '', '', '2023-06-21 06:53:02', '2023-06-21 06:53:02', '', 18, 'http://localhost/blog2/?p=19', 0, 'revision', '', 0),
(20, 1, '2023-06-21 07:07:31', '2023-06-21 07:07:31', '', 'img-8', '', 'inherit', 'open', 'closed', '', 'img-8', '', '', '2023-06-21 07:07:31', '2023-06-21 07:07:31', '', 1, 'http://localhost/blog2/wp-content/uploads/2023/06/img-8.jpg', 0, 'attachment', 'image/jpeg', 0),
(21, 1, '2023-06-21 07:08:04', '2023-06-21 07:08:04', '', 'img-2', '', 'inherit', 'open', 'closed', '', 'img-2', '', '', '2023-06-21 07:08:04', '2023-06-21 07:08:04', '', 13, 'http://localhost/blog2/wp-content/uploads/2023/06/img-2.webp', 0, 'attachment', 'image/webp', 0),
(22, 1, '2023-06-21 23:44:08', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2023-06-21 23:44:08', '0000-00-00 00:00:00', '', 0, 'http://localhost/blog2/?p=22', 0, 'post', '', 0),
(23, 1, '2023-06-21 23:44:33', '2023-06-21 23:44:33', '<!-- wp:paragraph -->\n<p>Welcome to WordPress. This is your first post. Edit or delete it, then start writing! Lorem ipsum dolor sit amet consectetur adipisicing elit. Quam ad assumenda nemo minus voluptate doloremque, nisi amet. Explicabo, reprehenderit necessitatibus? Lorem ipsum dolor sit amet consectetur adipisicing elit. Quam ad assumenda nemo minus voluptate doloremque, nisi amet. Explicabo, reprehenderit necessitatibus?</p>\n<!-- /wp:paragraph -->', 'Hello world!', '', 'inherit', 'closed', 'closed', '', '1-revision-v1', '', '', '2023-06-21 23:44:33', '2023-06-21 23:44:33', '', 1, 'http://localhost/blog2/?p=23', 0, 'revision', '', 0),
(24, 1, '2023-06-22 00:08:21', '2023-06-22 00:08:21', '<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet consectetur adipisicing elit. At minus iste id inventore sed non voluptatum voluptatibus aliquam excepturi. Pariatur.Lorem ipsum dolor sit amet consectetur adipisicing elit. At minus iste id inventore sed non voluptatum voluptatibus aliquam excepturi. Pariatur.</p>\n<!-- /wp:paragraph -->', 'latest 1', '', 'publish', 'open', 'open', '', 'latest-1', '', '', '2023-06-22 04:13:04', '2023-06-22 04:13:04', '', 0, 'http://localhost/blog2/?p=24', 0, 'post', '', 0),
(25, 1, '2023-06-22 00:07:41', '2023-06-22 00:07:41', '', 'img-1-sm', '', 'inherit', 'open', 'closed', '', 'img-1-sm', '', '', '2023-06-22 00:07:41', '2023-06-22 00:07:41', '', 24, 'http://localhost/blog2/wp-content/uploads/2023/06/img-1-sm.webp', 0, 'attachment', 'image/webp', 0),
(26, 1, '2023-06-22 00:08:21', '2023-06-22 00:08:21', '<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet consectetur adipisicing elit. At minus iste id inventore sed non voluptatum voluptatibus aliquam excepturi. Pariatur.Lorem ipsum dolor sit amet consectetur adipisicing elit. At minus iste id inventore sed non voluptatum voluptatibus aliquam excepturi. Pariatur.</p>\n<!-- /wp:paragraph -->', 'latest 1', '', 'inherit', 'closed', 'closed', '', '24-revision-v1', '', '', '2023-06-22 00:08:21', '2023-06-22 00:08:21', '', 24, 'http://localhost/blog2/?p=26', 0, 'revision', '', 0),
(27, 1, '2023-06-22 00:09:17', '2023-06-22 00:09:17', '<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet consectetur adipisicing elit. At minus iste id inventore sed non voluptatum voluptatibus aliquam excepturi. Pariatur.Lorem ipsum dolor sit amet consectetur adipisicing elit. At minus iste id inventore sed non voluptatum voluptatibus aliquam excepturi. Pariatur.</p>\n<!-- /wp:paragraph -->', 'Latest 2', '', 'publish', 'open', 'open', '', 'latest-2', '', '', '2023-06-22 04:13:27', '2023-06-22 04:13:27', '', 0, 'http://localhost/blog2/?p=27', 0, 'post', '', 0),
(28, 1, '2023-06-22 00:09:17', '2023-06-22 00:09:17', '<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet consectetur adipisicing elit. At minus iste id inventore sed non voluptatum voluptatibus aliquam excepturi. Pariatur.Lorem ipsum dolor sit amet consectetur adipisicing elit. At minus iste id inventore sed non voluptatum voluptatibus aliquam excepturi. Pariatur.</p>\n<!-- /wp:paragraph -->', 'Latest 2', '', 'inherit', 'closed', 'closed', '', '27-revision-v1', '', '', '2023-06-22 00:09:17', '2023-06-22 00:09:17', '', 27, 'http://localhost/blog2/?p=28', 0, 'revision', '', 0),
(29, 1, '2023-06-22 00:09:39', '2023-06-22 00:09:39', '<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet consectetur adipisicing elit. At minus iste id inventore sed non voluptatum voluptatibus aliquam excepturi. Pariatur.Lorem ipsum dolor sit amet consectetur adipisicing elit. At minus iste id inventore sed non voluptatum voluptatibus aliquam excepturi. Pariatur.</p>\n<!-- /wp:paragraph -->', 'latest 3', '', 'trash', 'open', 'open', '', 'latest-3__trashed', '', '', '2023-06-22 00:11:47', '2023-06-22 00:11:47', '', 0, 'http://localhost/blog2/?p=29', 0, 'post', '', 0),
(30, 1, '2023-06-22 00:09:39', '2023-06-22 00:09:39', '<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet consectetur adipisicing elit. At minus iste id inventore sed non voluptatum voluptatibus aliquam excepturi. Pariatur.Lorem ipsum dolor sit amet consectetur adipisicing elit. At minus iste id inventore sed non voluptatum voluptatibus aliquam excepturi. Pariatur.</p>\n<!-- /wp:paragraph -->', 'latest 3', '', 'inherit', 'closed', 'closed', '', '29-revision-v1', '', '', '2023-06-22 00:09:39', '2023-06-22 00:09:39', '', 29, 'http://localhost/blog2/?p=30', 0, 'revision', '', 0),
(31, 1, '2023-06-22 00:10:05', '2023-06-22 00:10:05', '<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet consectetur adipisicing elit. At minus iste id inventore sed non voluptatum voluptatibus aliquam excepturi. Pariatur.Lorem ipsum dolor sit amet consectetur adipisicing elit. At minus iste id inventore sed non voluptatum voluptatibus aliquam excepturi. Pariatur.Lorem ipsum dolor sit amet consectetur adipisicing elit. At minus iste id inventore sed non voluptatum voluptatibus aliquam excepturi. Pariatur.</p>\n<!-- /wp:paragraph -->', 'latest 4', '', 'trash', 'open', 'open', '', 'latest-4__trashed', '', '', '2023-06-22 00:11:47', '2023-06-22 00:11:47', '', 0, 'http://localhost/blog2/?p=31', 0, 'post', '', 0),
(32, 1, '2023-06-22 00:10:05', '2023-06-22 00:10:05', '<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet consectetur adipisicing elit. At minus iste id inventore sed non voluptatum voluptatibus aliquam excepturi. Pariatur.Lorem ipsum dolor sit amet consectetur adipisicing elit. At minus iste id inventore sed non voluptatum voluptatibus aliquam excepturi. Pariatur.Lorem ipsum dolor sit amet consectetur adipisicing elit. At minus iste id inventore sed non voluptatum voluptatibus aliquam excepturi. Pariatur.</p>\n<!-- /wp:paragraph -->', 'latest 4', '', 'inherit', 'closed', 'closed', '', '31-revision-v1', '', '', '2023-06-22 00:10:05', '2023-06-22 00:10:05', '', 31, 'http://localhost/blog2/?p=32', 0, 'revision', '', 0),
(33, 1, '2023-06-22 00:10:28', '2023-06-22 00:10:28', '<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet consectetur adipisicing elit. At minus iste id inventore sed non voluptatum voluptatibus aliquam excepturi. Pariatur.Lorem ipsum dolor sit amet consectetur adipisicing elit. At minus iste id inventore sed non voluptatum voluptatibus aliquam excepturi. Pariatur.Lorem ipsum dolor sit amet consectetur adipisicing elit. At minus iste id inventore sed non voluptatum voluptatibus aliquam excepturi. Pariatur.</p>\n<!-- /wp:paragraph -->', 'latest 5', '', 'publish', 'open', 'open', '', 'latest-5', '', '', '2023-06-22 04:14:11', '2023-06-22 04:14:11', '', 0, 'http://localhost/blog2/?p=33', 0, 'post', '', 0),
(34, 1, '2023-06-22 00:10:28', '2023-06-22 00:10:28', '<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet consectetur adipisicing elit. At minus iste id inventore sed non voluptatum voluptatibus aliquam excepturi. Pariatur.Lorem ipsum dolor sit amet consectetur adipisicing elit. At minus iste id inventore sed non voluptatum voluptatibus aliquam excepturi. Pariatur.Lorem ipsum dolor sit amet consectetur adipisicing elit. At minus iste id inventore sed non voluptatum voluptatibus aliquam excepturi. Pariatur.</p>\n<!-- /wp:paragraph -->', 'latest 5', '', 'inherit', 'closed', 'closed', '', '33-revision-v1', '', '', '2023-06-22 00:10:28', '2023-06-22 00:10:28', '', 33, 'http://localhost/blog2/?p=34', 0, 'revision', '', 0),
(35, 1, '2023-06-22 01:05:36', '2023-06-22 01:05:36', '', 'Feature1', '', 'publish', 'open', 'open', '', 'feature1', '', '', '2023-06-22 01:05:36', '2023-06-22 01:05:36', '', 0, 'http://localhost/blog2/?p=35', 0, 'post', '', 0),
(36, 1, '2023-06-22 01:04:46', '2023-06-22 01:04:46', '', 'Landscape-Color', '', 'inherit', 'open', 'closed', '', 'landscape-color', '', '', '2023-06-22 01:04:46', '2023-06-22 01:04:46', '', 35, 'http://localhost/blog2/wp-content/uploads/2023/06/Landscape-Color.jpg', 0, 'attachment', 'image/jpeg', 0),
(37, 1, '2023-06-22 01:05:06', '2023-06-22 01:05:06', '', 'download', '', 'inherit', 'open', 'closed', '', 'download', '', '', '2023-06-22 01:05:06', '2023-06-22 01:05:06', '', 35, 'http://localhost/blog2/wp-content/uploads/2023/06/download.jpg', 0, 'attachment', 'image/jpeg', 0),
(38, 1, '2023-06-22 01:05:07', '2023-06-22 01:05:07', '', 'images (1)', '', 'inherit', 'open', 'closed', '', 'images-1', '', '', '2023-06-22 01:05:07', '2023-06-22 01:05:07', '', 35, 'http://localhost/blog2/wp-content/uploads/2023/06/images-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(39, 1, '2023-06-22 01:05:07', '2023-06-22 01:05:07', '', 'images (2)', '', 'inherit', 'open', 'closed', '', 'images-2', '', '', '2023-06-22 01:05:07', '2023-06-22 01:05:07', '', 35, 'http://localhost/blog2/wp-content/uploads/2023/06/images-2.jpg', 0, 'attachment', 'image/jpeg', 0),
(40, 1, '2023-06-22 01:05:08', '2023-06-22 01:05:08', '', 'tree-736885_1280', '', 'inherit', 'open', 'closed', '', 'tree-736885_1280', '', '', '2023-06-22 01:05:08', '2023-06-22 01:05:08', '', 35, 'http://localhost/blog2/wp-content/uploads/2023/06/tree-736885_1280.jpg', 0, 'attachment', 'image/jpeg', 0),
(41, 1, '2023-06-22 01:05:36', '2023-06-22 01:05:36', '', 'Feature1', '', 'inherit', 'closed', 'closed', '', '35-revision-v1', '', '', '2023-06-22 01:05:36', '2023-06-22 01:05:36', '', 35, 'http://localhost/blog2/?p=41', 0, 'revision', '', 0),
(42, 1, '2023-06-22 01:16:05', '2023-06-22 01:16:05', '<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Doloribus, at. Nulla nobis obcaecati eos ullam natus. Odio ipsam dolore iure.Lorem ipsum dolor sit amet consectetur adipisicing elit. Doloribus, at. Nulla nobis obcaecati eos ullam natus. Odio ipsam dolore iure.</p>\n<!-- /wp:paragraph -->', 'feature-md1', '', 'publish', 'open', 'open', '', 'feature-md1', '', '', '2023-06-22 01:20:38', '2023-06-22 01:20:38', '', 0, 'http://localhost/blog2/?p=42', 0, 'post', '', 0),
(43, 1, '2023-06-22 01:16:05', '2023-06-22 01:16:05', '', 'feature-md1', '', 'inherit', 'closed', 'closed', '', '42-revision-v1', '', '', '2023-06-22 01:16:05', '2023-06-22 01:16:05', '', 42, 'http://localhost/blog2/?p=43', 0, 'revision', '', 0),
(44, 1, '2023-06-22 01:16:45', '2023-06-22 01:16:45', '<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Doloribus, at. Nulla nobis obcaecati eos ullam natus. Odio ipsam dolore iure.Lorem ipsum dolor sit amet consectetur adipisicing elit. Doloribus, at. Nulla nobis obcaecati eos ullam natus. Odio ipsam dolore iure.</p>\n<!-- /wp:paragraph -->', 'feature-md-2', '', 'publish', 'open', 'open', '', 'feature-md-2', '', '', '2023-06-22 01:20:28', '2023-06-22 01:20:28', '', 0, 'http://localhost/blog2/?p=44', 0, 'post', '', 0),
(45, 1, '2023-06-22 01:16:45', '2023-06-22 01:16:45', '', 'feature-md-2', '', 'inherit', 'closed', 'closed', '', '44-revision-v1', '', '', '2023-06-22 01:16:45', '2023-06-22 01:16:45', '', 44, 'http://localhost/blog2/?p=45', 0, 'revision', '', 0),
(46, 1, '2023-06-22 01:17:53', '2023-06-22 01:17:53', '<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Doloribus, at. Nulla nobis obcaecati eos ullam natus. Odio ipsam dolore iure.Lorem ipsum dolor sit amet consectetur adipisicing elit. Doloribus, at. Nulla nobis obcaecati eos ullam natus. Odio ipsam dolore iure.</p>\n<!-- /wp:paragraph -->', 'feature-md3', '', 'publish', 'open', 'open', '', 'feature-md3', '', '', '2023-06-22 01:20:19', '2023-06-22 01:20:19', '', 0, 'http://localhost/blog2/?p=46', 0, 'post', '', 0),
(47, 1, '2023-06-22 01:17:53', '2023-06-22 01:17:53', '', 'feature-md3', '', 'inherit', 'closed', 'closed', '', '46-revision-v1', '', '', '2023-06-22 01:17:53', '2023-06-22 01:17:53', '', 46, 'http://localhost/blog2/?p=47', 0, 'revision', '', 0),
(48, 1, '2023-06-22 01:20:19', '2023-06-22 01:20:19', '<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Doloribus, at. Nulla nobis obcaecati eos ullam natus. Odio ipsam dolore iure.Lorem ipsum dolor sit amet consectetur adipisicing elit. Doloribus, at. Nulla nobis obcaecati eos ullam natus. Odio ipsam dolore iure.</p>\n<!-- /wp:paragraph -->', 'feature-md3', '', 'inherit', 'closed', 'closed', '', '46-revision-v1', '', '', '2023-06-22 01:20:19', '2023-06-22 01:20:19', '', 46, 'http://localhost/blog2/?p=48', 0, 'revision', '', 0),
(49, 1, '2023-06-22 01:20:28', '2023-06-22 01:20:28', '<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Doloribus, at. Nulla nobis obcaecati eos ullam natus. Odio ipsam dolore iure.Lorem ipsum dolor sit amet consectetur adipisicing elit. Doloribus, at. Nulla nobis obcaecati eos ullam natus. Odio ipsam dolore iure.</p>\n<!-- /wp:paragraph -->', 'feature-md-2', '', 'inherit', 'closed', 'closed', '', '44-revision-v1', '', '', '2023-06-22 01:20:28', '2023-06-22 01:20:28', '', 44, 'http://localhost/blog2/?p=49', 0, 'revision', '', 0),
(50, 1, '2023-06-22 01:20:38', '2023-06-22 01:20:38', '<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Doloribus, at. Nulla nobis obcaecati eos ullam natus. Odio ipsam dolore iure.Lorem ipsum dolor sit amet consectetur adipisicing elit. Doloribus, at. Nulla nobis obcaecati eos ullam natus. Odio ipsam dolore iure.</p>\n<!-- /wp:paragraph -->', 'feature-md1', '', 'inherit', 'closed', 'closed', '', '42-revision-v1', '', '', '2023-06-22 01:20:38', '2023-06-22 01:20:38', '', 42, 'http://localhost/blog2/?p=50', 0, 'revision', '', 0),
(51, 1, '2023-06-22 01:35:19', '2023-06-22 01:35:19', '<!-- wp:paragraph -->\n<p>Lorem, ipsum dolor sit amet consectetur adipisicing elit. Beatae ipsam veniam quo. Architecto ab vero accusantium ex impedit eligendi tempora?Lorem, ipsum dolor sit amet consectetur adipisicing elit. Beatae ipsam veniam quo. Architecto ab vero accusantium ex impedit eligendi tempora?Lorem, ipsum dolor sit amet consectetur adipisicing elit. Beatae ipsam veniam quo. Architecto ab vero accusantium ex impedit eligendi tempora?</p>\n<!-- /wp:paragraph -->', 'mini-1', '', 'publish', 'open', 'open', '', 'mini-1', '', '', '2023-06-22 01:37:19', '2023-06-22 01:37:19', '', 0, 'http://localhost/blog2/?p=51', 0, 'post', '', 0),
(52, 1, '2023-06-22 01:35:19', '2023-06-22 01:35:19', '', 'mini-1', '', 'inherit', 'closed', 'closed', '', '51-revision-v1', '', '', '2023-06-22 01:35:19', '2023-06-22 01:35:19', '', 51, 'http://localhost/blog2/?p=52', 0, 'revision', '', 0),
(53, 1, '2023-06-22 01:36:02', '2023-06-22 01:36:02', '<!-- wp:paragraph -->\n<p>Lorem, ipsum dolor sit amet consectetur adipisicing elit. Beatae ipsam veniam quo. Architecto ab vero accusantium ex impedit eligendi tempora?Lorem, ipsum dolor sit amet consectetur adipisicing elit. Beatae ipsam veniam quo. Architecto ab vero accusantium ex impedit eligendi tempora?</p>\n<!-- /wp:paragraph -->', 'mini-2', '', 'publish', 'open', 'open', '', 'mini-2', '', '', '2023-06-22 01:36:02', '2023-06-22 01:36:02', '', 0, 'http://localhost/blog2/?p=53', 0, 'post', '', 0),
(54, 1, '2023-06-22 01:36:02', '2023-06-22 01:36:02', '<!-- wp:paragraph -->\n<p>Lorem, ipsum dolor sit amet consectetur adipisicing elit. Beatae ipsam veniam quo. Architecto ab vero accusantium ex impedit eligendi tempora?Lorem, ipsum dolor sit amet consectetur adipisicing elit. Beatae ipsam veniam quo. Architecto ab vero accusantium ex impedit eligendi tempora?</p>\n<!-- /wp:paragraph -->', 'mini-2', '', 'inherit', 'closed', 'closed', '', '53-revision-v1', '', '', '2023-06-22 01:36:02', '2023-06-22 01:36:02', '', 53, 'http://localhost/blog2/?p=54', 0, 'revision', '', 0),
(55, 1, '2023-06-22 01:36:19', '2023-06-22 01:36:19', '<!-- wp:paragraph -->\n<p>Lorem, ipsum dolor sit amet consectetur adipisicing elit. Beatae ipsam veniam quo. Architecto ab vero accusantium ex impedit eligendi tempora?Lorem, ipsum dolor sit amet consectetur adipisicing elit. Beatae ipsam veniam quo. Architecto ab vero accusantium ex impedit eligendi tempora?Lorem, ipsum dolor sit amet consectetur adipisicing elit. Beatae ipsam veniam quo. Architecto ab vero accusantium ex impedit eligendi tempora?</p>\n<!-- /wp:paragraph -->', 'mini-3', '', 'publish', 'open', 'open', '', 'mini-3', '', '', '2023-06-22 01:41:19', '2023-06-22 01:41:19', '', 0, 'http://localhost/blog2/?p=55', 0, 'post', '', 0),
(56, 1, '2023-06-22 01:36:15', '2023-06-22 01:36:15', '<!-- wp:paragraph -->\n<p>Lorem, ipsum dolor sit amet consectetur adipisicing elit. Beatae ipsam veniam quo. Architecto ab vero accusantium ex impedit eligendi tempora?Lorem, ipsum dolor sit amet consectetur adipisicing elit. Beatae ipsam veniam quo. Architecto ab vero accusantium ex impedit eligendi tempora?Lorem, ipsum dolor sit amet consectetur adipisicing elit. Beatae ipsam veniam quo. Architecto ab vero accusantium ex impedit eligendi tempora?</p>\n<!-- /wp:paragraph -->', 'mini-3', '', 'inherit', 'closed', 'closed', '', '55-revision-v1', '', '', '2023-06-22 01:36:15', '2023-06-22 01:36:15', '', 55, 'http://localhost/blog2/?p=56', 0, 'revision', '', 0),
(57, 1, '2023-06-22 01:36:30', '2023-06-22 01:36:30', '<!-- wp:paragraph -->\n<p>Lorem, ipsum dolor sit amet consectetur adipisicing elit. Beatae ipsam veniam quo. Architecto ab vero accusantium ex impedit eligendi tempora?Lorem, ipsum dolor sit amet consectetur adipisicing elit. Beatae ipsam veniam quo. Architecto ab vero accusantium ex impedit eligendi tempora?Lorem, ipsum dolor sit amet consectetur adipisicing elit. Beatae ipsam veniam quo. Architecto ab vero accusantium ex impedit eligendi tempora?</p>\n<!-- /wp:paragraph -->', 'mini-4', '', 'publish', 'open', 'open', '', 'mini-4', '', '', '2023-06-22 01:37:07', '2023-06-22 01:37:07', '', 0, 'http://localhost/blog2/?p=57', 0, 'post', '', 0),
(58, 1, '2023-06-22 01:36:30', '2023-06-22 01:36:30', '<!-- wp:paragraph -->\n<p>Lorem, ipsum dolor sit amet consectetur adipisicing elit. Beatae ipsam veniam quo. Architecto ab vero accusantium ex impedit eligendi tempora?Lorem, ipsum dolor sit amet consectetur adipisicing elit. Beatae ipsam veniam quo. Architecto ab vero accusantium ex impedit eligendi tempora?Lorem, ipsum dolor sit amet consectetur adipisicing elit. Beatae ipsam veniam quo. Architecto ab vero accusantium ex impedit eligendi tempora?</p>\n<!-- /wp:paragraph -->', 'mini-4', '', 'inherit', 'closed', 'closed', '', '57-revision-v1', '', '', '2023-06-22 01:36:30', '2023-06-22 01:36:30', '', 57, 'http://localhost/blog2/?p=58', 0, 'revision', '', 0),
(59, 1, '2023-06-22 01:36:53', '2023-06-22 01:36:53', '<!-- wp:paragraph -->\n<p>Lorem, ipsum dolor sit amet consectetur adipisicing elit. Beatae ipsam veniam quo. Architecto ab vero accusantium ex impedit eligendi tempora?Lorem, ipsum dolor sit amet consectetur adipisicing elit. Beatae ipsam veniam quo. Architecto ab vero accusantium ex impedit eligendi tempora?</p>\n<!-- /wp:paragraph -->', 'mini-5', '', 'publish', 'open', 'open', '', 'mini-5', '', '', '2023-06-22 01:36:53', '2023-06-22 01:36:53', '', 0, 'http://localhost/blog2/?p=59', 0, 'post', '', 0),
(60, 1, '2023-06-22 01:36:53', '2023-06-22 01:36:53', '<!-- wp:paragraph -->\n<p>Lorem, ipsum dolor sit amet consectetur adipisicing elit. Beatae ipsam veniam quo. Architecto ab vero accusantium ex impedit eligendi tempora?Lorem, ipsum dolor sit amet consectetur adipisicing elit. Beatae ipsam veniam quo. Architecto ab vero accusantium ex impedit eligendi tempora?</p>\n<!-- /wp:paragraph -->', 'mini-5', '', 'inherit', 'closed', 'closed', '', '59-revision-v1', '', '', '2023-06-22 01:36:53', '2023-06-22 01:36:53', '', 59, 'http://localhost/blog2/?p=60', 0, 'revision', '', 0),
(61, 1, '2023-06-22 01:37:19', '2023-06-22 01:37:19', '<!-- wp:paragraph -->\n<p>Lorem, ipsum dolor sit amet consectetur adipisicing elit. Beatae ipsam veniam quo. Architecto ab vero accusantium ex impedit eligendi tempora?Lorem, ipsum dolor sit amet consectetur adipisicing elit. Beatae ipsam veniam quo. Architecto ab vero accusantium ex impedit eligendi tempora?Lorem, ipsum dolor sit amet consectetur adipisicing elit. Beatae ipsam veniam quo. Architecto ab vero accusantium ex impedit eligendi tempora?</p>\n<!-- /wp:paragraph -->', 'mini-1', '', 'inherit', 'closed', 'closed', '', '51-revision-v1', '', '', '2023-06-22 01:37:19', '2023-06-22 01:37:19', '', 51, 'http://localhost/blog2/?p=61', 0, 'revision', '', 0),
(62, 1, '2023-06-22 01:37:36', '2023-06-22 01:37:36', '<!-- wp:paragraph -->\n<p>Lorem, ipsum dolor sit amet consectetur adipisicing elit. Beatae ipsam veniam quo. Architecto ab vero accusantium ex impedit eligendi tempora?Lorem, ipsum dolor sit amet consectetur adipisicing elit. Beatae ipsam veniam quo. Architecto ab vero accusantium ex impedit eligendi tempora?Lorem, ipsum dolor sit amet consectetur adipisicing elit. Beatae ipsam veniam quo. Architecto ab vero accusantium ex impedit eligendi tempora?</p>\n<!-- /wp:paragraph -->', 'mini-6', '', 'publish', 'open', 'open', '', 'mini-6', '', '', '2023-06-22 01:37:42', '2023-06-22 01:37:42', '', 0, 'http://localhost/blog2/?p=62', 0, 'post', '', 0),
(63, 1, '2023-06-22 01:37:36', '2023-06-22 01:37:36', '', 'mini-6', '', 'inherit', 'closed', 'closed', '', '62-revision-v1', '', '', '2023-06-22 01:37:36', '2023-06-22 01:37:36', '', 62, 'http://localhost/blog2/?p=63', 0, 'revision', '', 0),
(64, 1, '2023-06-22 01:37:42', '2023-06-22 01:37:42', '<!-- wp:paragraph -->\n<p>Lorem, ipsum dolor sit amet consectetur adipisicing elit. Beatae ipsam veniam quo. Architecto ab vero accusantium ex impedit eligendi tempora?Lorem, ipsum dolor sit amet consectetur adipisicing elit. Beatae ipsam veniam quo. Architecto ab vero accusantium ex impedit eligendi tempora?Lorem, ipsum dolor sit amet consectetur adipisicing elit. Beatae ipsam veniam quo. Architecto ab vero accusantium ex impedit eligendi tempora?</p>\n<!-- /wp:paragraph -->', 'mini-6', '', 'inherit', 'closed', 'closed', '', '62-revision-v1', '', '', '2023-06-22 01:37:42', '2023-06-22 01:37:42', '', 62, 'http://localhost/blog2/?p=64', 0, 'revision', '', 0),
(65, 1, '2023-06-22 01:50:20', '2023-06-22 01:50:20', '', '9d5e0504-5b39-32d8-b124-7f6566445ffb', '', 'inherit', 'open', 'closed', '', '9d5e0504-5b39-32d8-b124-7f6566445ffb', '', '', '2023-06-22 01:50:20', '2023-06-22 01:50:20', '', 0, 'http://localhost/blog2/wp-content/uploads/2023/06/9d5e0504-5b39-32d8-b124-7f6566445ffb.png', 0, 'attachment', 'image/png', 0),
(66, 1, '2023-06-21 13:39:29', '2023-06-21 13:39:29', '<p>At libero nulla neque. <a title=\"Explicabo voluptatem optio adipisci iste quo.\" href=\"http://klocko.net/alias-ut-debitis-doloribus-rerum-dolorem-minima\"><a title=\"Officiis.\" href=\"https://nolan.com/repudiandae-id-rem-et.html\">ea deleniti natus</a></a> est aut recusandae. Cumque iusto aliquid neque <a title=\"Veritatis perspiciatis vero fuga doloremque.\" href=\"http://lueilwitz.biz/\">rem facilis.</a> aliquam numquam autem perspiciatis.</p>\n<h4>Minus laborum quisquam sequi explicabo. Illo incidunt illum qui asperiores culpa corporis</h4>\n<p>Vel rerum sint enim tempore at culpa. Animi blanditiis eum sed modi. Est vero numquam accusantium cum et. Quos fugit architecto dignissimos officia sed et. Exercitationem commodi est amet. Non accusantium dolores placeat sint in sunt architecto. Odio dolorem consequatur cumque blanditiis pariatur non praesentium voluptatibus. Laborum non aspernatur commodi voluptates commodi. Consequuntur illum voluptatem voluptas deleniti reprehenderit officia a. Deleniti et ipsam sed accusamus id aut ipsum. Nisi aut rerum earum aut. Maiores a hic soluta facere ducimus iure ea. Placeat impedit est mollitia atque quasi dolor. Dolores sit ut esse asperiores. Necessitatibus sequi ut quo vel soluta. Culpa consequatur soluta cupiditate recusandae omnis est. Recusandae vero sunt dolores suscipit aut. Nulla facilis nihil eaque. Quibusdam occaecati accusamus sed voluptate. Nemo eaque nihil dignissimos numquam et nulla. Quam et nihil soluta sit sed iste architecto. Aut sed eaque optio sed eos architecto porro. Ipsa neque incidunt corrupti qui. Voluptas ex corporis vel tenetur. Molestiae explicabo ut deserunt dolor asperiores velit eaque placeat. Vitae est et ut accusamus cum in. Facere est et quasi quidem sint quae possimus. Harum quidem voluptatibus rem quae mollitia minima et. Cumque alias vel voluptates exercitationem nemo sed molestiae optio.</p>\n<img alt=\"Numquam consequatur qui harum\" src=\"http://localhost/blog2/wp-content/uploads/2023/06/9d5e0504-5b39-32d8-b124-7f6566445ffb.png\">\n<p>Sint aut quam similique assumenda. qui est ea. Ratione et nostrum illum. Velit molestias eligendi maxime qui ex. Ut cupiditate modi earum similique. accusamus aspernatur quod qui. Cum quia quia <a title=\"Incidunt expedita.\" href=\"http://www.kunze.net/quod-qui-eius-fugiat-atque\">ad</a> Vel ipsa voluptas reiciendis Repudiandae ut ut expedita. Qui vel explicabo. magni velit at at dolorem. autem cum qui voluptas. Eum ad provident <a title=\"Est illo sunt qui.\" href=\"http://kessler.com/\"><a title=\"Voluptatum qui fugiat.\" href=\"https://bergnaum.com/repellendus-quibusdam-unde-qui-reiciendis.html\">et eum</a></a> natus. Quasi quam a nam sint. eveniet alias dicta Voluptas quos praesentium exercitationem consequatur. quidem sit aspernatur Quasi asperiores sit aspernatur expedita tenetur incidunt atque. atque quia veritatis sunt. Tempore et eum ut aut minima. alias vel reprehenderit quod. Vel et aut nihil aut. Et et sit atque repellat vel deserunt. Explicabo aut hic architecto Tempora quae impedit dolorem omnis <a title=\"Qui maxime perferendis amet ea iste et.\" href=\"http://www.schiller.info/reiciendis-sed-aut-totam-veniam-eligendi.html\">velit. Distinctio quae</a> voluptatibus iusto</p>\n<h1>Omnis modi nemo occaecati a. Iste voluptas fugit sunt qui. Porro ut fugit facere</h1>\n<p>Animi dolores est est et. Totam eum cum adipisci et ut. Harum ipsum beatae quas libero nemo. Dolores vel reiciendis non id. Est iste veniam rerum ut et eius culpa. Autem animi beatae soluta amet. Repellendus non et accusamus reiciendis. Mollitia officiis distinctio aut earum quia. Iusto libero tempore voluptas et earum qui ratione. Quis molestias et nam.</p>\n<p><a title=\"Totam dignissimos voluptatem.\" href=\"http://www.renner.org/nisi-dolorem-officia-magnam-qui-laborum\">Hic pariatur voluptatem occaecati suscipit praesentium</a> ut. Alias porro iusto adipisci ipsam voluptatem et. <a title=\"Quia est deserunt debitis ea eos.\" href=\"https://www.hahn.biz/voluptatem-quisquam-delectus-exercitationem-repellendus\">minima eaque</a> <a title=\"Omnis est cupiditate ut officiis.\" href=\"https://www.leannon.com/facere-at-magni-eos\">Magni</a> aspernatur sit magnam error repellat Voluptas et <a title=\"Omnis sed dolores tempora quasi vel sed et illum est facere.\" href=\"http://rippin.com/\">sit</a> <a title=\"Quidem unde nulla voluptatem nam odio.\" href=\"http://www.franecki.net/\">nihil. Accusamus rerum repellat nemo</a> <a title=\"Sit.\" href=\"http://www.willms.info/alias-ab-omnis-ea-quidem.html\">omnis</a> veniam tempore. Dolore rerum itaque iusto. Atque vel doloremque vel. <a title=\"Voluptatem dolores hic eum iste.\" href=\"http://glover.com/autem-dolores-qui-deserunt-nihil-ipsa\">voluptatem</a> dicta voluptate.</p>', 'Sed excepturi suscipit deserunt aperiam voluptas', '', 'publish', 'open', 'open', '', 'sed-excepturi-suscipit-deserunt-aperiam-voluptas', '', '', '2023-06-21 13:39:29', '2023-06-21 13:39:29', '', 0, 'http://localhost/blog2/2023/06/21/sed-excepturi-suscipit-deserunt-aperiam-voluptas/', 0, 'post', '', 0),
(67, 1, '2023-06-22 01:50:24', '2023-06-22 01:50:24', '', 'e6c81fad-60f5-3a76-bae1-289af2d44d35', '', 'inherit', 'open', 'closed', '', 'e6c81fad-60f5-3a76-bae1-289af2d44d35', '', '', '2023-06-22 01:50:24', '2023-06-22 01:50:24', '', 0, 'http://localhost/blog2/wp-content/uploads/2023/06/e6c81fad-60f5-3a76-bae1-289af2d44d35.jpg', 0, 'attachment', 'image/jpeg', 0),
(68, 1, '2023-06-22 01:50:27', '2023-06-22 01:50:27', '', '91a90936-0486-3ad1-9749-a34d325c2730', '', 'inherit', 'open', 'closed', '', '91a90936-0486-3ad1-9749-a34d325c2730', '', '', '2023-06-22 01:50:27', '2023-06-22 01:50:27', '', 0, 'http://localhost/blog2/wp-content/uploads/2023/06/91a90936-0486-3ad1-9749-a34d325c2730.jpg', 0, 'attachment', 'image/jpeg', 0),
(69, 1, '2023-06-21 16:15:37', '2023-06-21 16:15:37', '<img class=\"aligncenter\" src=\"http://localhost/blog2/wp-content/uploads/2023/06/91a90936-0486-3ad1-9749-a34d325c2730.jpg\">\n<h4>Odit eos nihil tenetur ratione vero. Non quasi fugit nostrum quis corporis</h4>\n<p>Id rerum rerum voluptas temporibus. A assumenda voluptatem aliquid cum sed <a title=\"Nihil adipisci eos ratione alias.\" href=\"https://www.mayert.com/architecto-neque-quo-aut-et-vitae-amet\">beatae. Et tempora tempore</a> similique. Est unde minima magni. Molestias aut atque architecto sit reiciendis voluptates. Voluptatum sapiente atque iusto Natus voluptatem error recusandae <a title=\"In.\" href=\"http://romaguera.org/praesentium-placeat-provident-amet-id-autem-eligendi\">maxime quia.</a></p>\n<h3>Qui aut quo velit omnis quidem dolores</h3>\n<img src=\"http://localhost/blog2/wp-content/uploads/2023/06/91a90936-0486-3ad1-9749-a34d325c2730.jpg\">', 'Quasi culpa sit quis sequi qui mollitia', 'Odio.', 'publish', 'open', 'open', '', 'quasi-culpa-sit-quis-sequi-qui-mollitia', '', '', '2023-06-21 16:15:37', '2023-06-21 16:15:37', '', 0, 'http://localhost/blog2/2023/06/21/quasi-culpa-sit-quis-sequi-qui-mollitia/', 0, 'post', '', 0);
INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(70, 1, '2023-06-22 01:50:30', '2023-06-22 01:50:30', '', '36a25c4d-ce61-32be-b902-5e1c8afde259', '', 'inherit', 'open', 'closed', '', '36a25c4d-ce61-32be-b902-5e1c8afde259', '', '', '2023-06-22 01:50:30', '2023-06-22 01:50:30', '', 0, 'http://localhost/blog2/wp-content/uploads/2023/06/36a25c4d-ce61-32be-b902-5e1c8afde259.jpg', 0, 'attachment', 'image/jpeg', 0),
(71, 1, '2023-06-22 01:50:39', '2023-06-22 01:50:39', '', 'e08d169b-2ebd-3bfc-846d-baec3f99e78e', '', 'inherit', 'open', 'closed', '', 'e08d169b-2ebd-3bfc-846d-baec3f99e78e', '', '', '2023-06-22 01:50:39', '2023-06-22 01:50:39', '', 0, 'http://localhost/blog2/wp-content/uploads/2023/06/e08d169b-2ebd-3bfc-846d-baec3f99e78e.jpg', 0, 'attachment', 'image/jpeg', 0),
(72, 1, '2023-06-22 01:50:43', '2023-06-22 01:50:43', '', '75cb4878-354d-3f6b-8369-7129ea96e877', '', 'inherit', 'open', 'closed', '', '75cb4878-354d-3f6b-8369-7129ea96e877', '', '', '2023-06-22 01:50:43', '2023-06-22 01:50:43', '', 0, 'http://localhost/blog2/wp-content/uploads/2023/06/75cb4878-354d-3f6b-8369-7129ea96e877.png', 0, 'attachment', 'image/png', 0),
(73, 1, '2023-06-21 11:41:28', '2023-06-21 11:41:28', '<h1>Ut voluptate et sit. Non pariatur sint in earum iusto est illo. Iusto sed quia aliquid officiis dicta expedita quia</h1>\n<img class=\"alignright\" src=\"http://localhost/blog2/wp-content/uploads/2023/06/e08d169b-2ebd-3bfc-846d-baec3f99e78e.jpg\">\n<h3>In facilis nesciunt nemo aliquid. Fugiat porro harum iure. Totam dicta quod ut velit</h3>\n<p>Porro aliquam dolores Repellendus id est ut earum saepe. Aut facere fugiat nisi consequatur voluptas omnis. et molestiae fugiat. vero quia cum. Esse temporibus quaerat reiciendis adipisci sit voluptatem saepe. Aspernatur eos consequatur ut harum necessitatibus Dignissimos doloremque dolores consequatur quam necessitatibus. Expedita at et Doloremque quod tenetur autem nulla quos. Quibusdam est ea illo a rerum soluta. tenetur ipsum enim vitae ut rerum <a title=\"Ea consectetur voluptatum.\" href=\"http://www.hoppe.net/consectetur-sint-nobis-corporis-aspernatur-eligendi-sint-est-omnis\">Vitae velit</a> libero. qui et qui. Consectetur praesentium quidem. Ut earum voluptatem sequi quam. at recusandae asperiores labore qui. Voluptas qui vel accusamus molestias. Maiores non aut laboriosam nisi enim. odio dignissimos modi unde ut. Quibusdam dolorem quo consectetur. Sint aliquam numquam qui. Voluptatem ipsa quia est aut qui. Doloremque neque consequatur debitis quisquam. mollitia ad quo eos Vitae ea ut sit dolor necessitatibus. Quibusdam qui explicabo sunt beatae est. <a title=\"Fuga.\" href=\"http://www.harris.biz/et-dolor-aut-suscipit-laudantium-perferendis-optio.html\">unde voluptatem</a> dolores est Ea incidunt aspernatur laborum molestiae.</p>\n<img alt=\"Quam doloremque enim veniam nemo\" src=\"http://localhost/blog2/wp-content/uploads/2023/06/75cb4878-354d-3f6b-8369-7129ea96e877.png\">', 'Sunt unde tenetur ut', 'Ea nam atque.', 'publish', 'open', 'closed', '', 'sunt-unde-tenetur-ut', '', '', '2023-06-21 11:41:28', '2023-06-21 11:41:28', '', 0, 'http://localhost/blog2/2023/06/21/sunt-unde-tenetur-ut/', 0, 'post', '', 0),
(74, 1, '2023-06-22 01:50:47', '2023-06-22 01:50:47', '', '2300fe3d-fec1-3d5d-9625-52d6c14fd39c', '', 'inherit', 'open', 'closed', '', '2300fe3d-fec1-3d5d-9625-52d6c14fd39c', '', '', '2023-06-22 01:50:47', '2023-06-22 01:50:47', '', 0, 'http://localhost/blog2/wp-content/uploads/2023/06/2300fe3d-fec1-3d5d-9625-52d6c14fd39c.png', 0, 'attachment', 'image/png', 0),
(75, 1, '2023-06-22 01:51:02', '2023-06-22 01:51:02', '', '06954f23-2eac-3ead-9e81-027642dec240', '', 'inherit', 'open', 'closed', '', '06954f23-2eac-3ead-9e81-027642dec240', '', '', '2023-06-22 01:51:02', '2023-06-22 01:51:02', '', 0, 'http://localhost/blog2/wp-content/uploads/2023/06/06954f23-2eac-3ead-9e81-027642dec240.jpg', 0, 'attachment', 'image/jpeg', 0),
(76, 1, '2023-06-22 01:51:12', '2023-06-22 01:51:12', '', '881fd964-baf5-3130-be23-608739287d24', '', 'inherit', 'open', 'closed', '', '881fd964-baf5-3130-be23-608739287d24', '', '', '2023-06-22 01:51:12', '2023-06-22 01:51:12', '', 0, 'http://localhost/blog2/wp-content/uploads/2023/06/881fd964-baf5-3130-be23-608739287d24.jpg', 0, 'attachment', 'image/jpeg', 0),
(77, 1, '2023-06-21 09:12:58', '2023-06-21 09:12:58', '<h4>Quasi quae repudiandae aperiam voluptatem eos dolor ducimus</h4>\n\n<h2>Dolorem minus expedita ullam placeat quod corrupti ut</h2>\n<img alt=\"Debitis quia rerum expedita earum ut nemo\" src=\"http://localhost/blog2/wp-content/uploads/2023/06/06954f23-2eac-3ead-9e81-027642dec240.jpg\">\n<img alt=\"Quae qui dolores\" src=\"http://localhost/blog2/wp-content/uploads/2023/06/36a25c4d-ce61-32be-b902-5e1c8afde259.jpg\">\n<p>Aut aut aperiam voluptas rem eveniet velit. ad odit ad quas. Quidem provident eveniet voluptas adipisci. Dolores voluptatibus in quod magnam repudiandae. Dolor omnis voluptas rem. dolor vel rem eaque. Adipisci possimus debitis magnam dolorem consectetur. Et blanditiis voluptatem itaque fugiat nihil. Est consequuntur dolor perspiciatis quos. Neque commodi ad occaecati. autem molestiae consequuntur ipsum et. Est voluptatibus ab autem unde. Aut repudiandae quam a. quia soluta quis facilis ullam Ut quaerat porro nemo error quod. Dolor distinctio dolore qui. in consequatur optio qui enim natus pariatur Dignissimos sed beatae perferendis eaque ullam. Nobis itaque enim <a title=\"Impedit.\" href=\"http://www.windler.com/ea-et-labore-et-veritatis-inventore-est-quod\">vel voluptas. Itaque dolorem</a> aut possimus. Nesciunt earum ullam eos quo fuga Quibusdam quis ea reprehenderit omnis et Quod totam iusto tempore voluptas eveniet. labore enim est. Aut et dolorem unde Et sit et voluptates vel iusto.</p>\n<h4>Sint pariatur perferendis dolorum possimus cumque. Iusto neque hic dolor maiores. Dolores facilis et et et cum delectus</h4>\n<p>Ut quis Ut est mollitia explicabo sunt alias. Expedita voluptas sed <a title=\"Magni numquam quo.\" href=\"http://wiza.org/quod-vitae-inventore-doloremque-labore\">ea autem. Et sunt soluta quia quae.</a> et minima et non qui et. Est sed qui rem sunt eveniet magni pariatur. Delectus magni magni voluptates aut provident corrupti. Est recusandae sed numquam aut neque Est vitae reprehenderit temporibus accusantium et. Perspiciatis expedita sunt fugiat rerum <a title=\"Dolor ducimus eveniet reprehenderit necessitatibus quidem id perspiciatis.\" href=\"http://schmitt.org/perferendis-optio-minima-ea-velit-est-vero-maxime.html\">laboriosam</a> Tempore corrupti et inventore eaque velit quia Dolorem expedita reprehenderit aspernatur quas est cum. voluptatem tempora <a title=\"Ut possimus hic explicabo laborum non.\" href=\"https://www.feest.net/in-ratione-perferendis-non-similique-et-voluptatem\">voluptatibus harum mollitia</a> corporis. Est et enim voluptatem ut vel. Officia <a title=\"Voluptatem unde quisquam qui qui in deleniti unde.\" href=\"http://little.biz/eligendi-voluptatem-necessitatibus-aut-voluptatem-dolore\">maxime minima sint expedita accusantium</a> Tenetur ut rem laboriosam est. Doloremque voluptas molestias quo exercitationem dolores. Amet culpa <a title=\"Deserunt consequatur sapiente.\" href=\"http://thompson.net/modi-debitis-rem-magni-consequatur-qui-non\">vero cupiditate dolorum consequatur quos dolores.</a> numquam tempora tempora Et ad temporibus itaque vel Nihil illum asperiores dolor commodi accusamus. aliquam provident dolorem deleniti in dignissimos. Inventore voluptate officia sint iure est iste.</p>\n<h3>Repellat sit quo rerum libero. Voluptatem ab atque dolores corrupti nulla neque dolor</h3>\n<img class=\"alignright\" src=\"http://localhost/blog2/wp-content/uploads/2023/06/881fd964-baf5-3130-be23-608739287d24.jpg\">\n<h1>Perspiciatis sit qui beatae et ea cum aspernatur</h1>\n<p>Sed atque maiores sed. Distinctio eos minus facere ea. Qui et minima eligendi ratione sapiente rerum. Et qui voluptatem in itaque dolores et nihil. Aut neque eligendi adipisci labore incidunt aut inventore. Consequatur dolore et a sunt. Adipisci placeat quia ut consequatur ullam est. Temporibus odio tempore officia omnis sed.</p>\n<h3>Distinctio accusantium odit quidem amet omnis velit asperiores. Explicabo culpa qui cum omnis aliquam</h3>\n<p>Rerum doloribus fugit molestiae Atque ipsa ab perferendis. Dolorem omnis qui autem expedita beatae sed. Ea maiores perferendis eum et. Voluptatem cumque tempore ut <a title=\"Consequatur dicta autem dolor facere corrupti.\" href=\"http://www.williamson.info/aliquid-tempora-ratione-itaque-expedita-ut-qui-unde\">Pariatur reiciendis</a> <a title=\"Recusandae consequuntur occaecati ullam ut eligendi ut debitis doloremque necessitatibus nostrum rerum.\" href=\"http://www.breitenberg.biz/\">at repellendus</a> magnam Aspernatur nulla nesciunt omnis dolorem eveniet. Placeat eius fugiat. Blanditiis beatae qui harum iure excepturi dolorum. Facere tempore omnis at delectus sed. Possimus ut ullam accusamus Facilis nulla cum incidunt voluptatem sint rerum. Et repudiandae <a title=\"Ipsa eos.\" href=\"http://www.ferry.com/veniam-vitae-ex-pariatur-est-eum.html\">voluptas nemo sint. Provident laboriosam</a> illum optio. Aut possimus molestias quidem ut vel harum. Nemo <a title=\"Molestiae.\" href=\"http://feil.org/ut-nostrum-itaque-dolores-aut\">et</a> porro illo. iusto non est quas nisi et.</p>', 'Odit vitae ut doloribus aliquam quisquam', 'Qui debitis non.', 'publish', 'open', 'open', '', 'odit-vitae-ut-doloribus-aliquam-quisquam', '', '', '2023-06-21 09:12:58', '2023-06-21 09:12:58', '', 0, 'http://localhost/blog2/2023/06/21/odit-vitae-ut-doloribus-aliquam-quisquam/', 0, 'post', '', 0),
(78, 1, '2023-06-22 01:51:20', '2023-06-22 01:51:20', '', '3cf61b7f-a299-3633-9bc8-3095c9ab10ff', '', 'inherit', 'open', 'closed', '', '3cf61b7f-a299-3633-9bc8-3095c9ab10ff', '', '', '2023-06-22 01:51:20', '2023-06-22 01:51:20', '', 0, 'http://localhost/blog2/wp-content/uploads/2023/06/3cf61b7f-a299-3633-9bc8-3095c9ab10ff.jpg', 0, 'attachment', 'image/jpeg', 0),
(79, 1, '2023-06-22 01:51:21', '2023-06-22 01:51:21', '', '0cccd14e-f5ae-39eb-98d0-93dcd9dd9ddc', '', 'inherit', 'open', 'closed', '', '0cccd14e-f5ae-39eb-98d0-93dcd9dd9ddc', '', '', '2023-06-22 01:51:21', '2023-06-22 01:51:21', '', 0, 'http://localhost/blog2/wp-content/uploads/2023/06/0cccd14e-f5ae-39eb-98d0-93dcd9dd9ddc.png', 0, 'attachment', 'image/png', 0),
(80, 1, '2023-06-22 01:51:24', '2023-06-22 01:51:24', '', 'ff2ca14c-da55-3c4d-ac75-0206b234b664', '', 'inherit', 'open', 'closed', '', 'ff2ca14c-da55-3c4d-ac75-0206b234b664', '', '', '2023-06-22 01:51:24', '2023-06-22 01:51:24', '', 0, 'http://localhost/blog2/wp-content/uploads/2023/06/ff2ca14c-da55-3c4d-ac75-0206b234b664.jpg', 0, 'attachment', 'image/jpeg', 0),
(81, 1, '2023-06-22 01:51:32', '2023-06-22 01:51:32', '', 'b9e0299d-15b4-34d3-b3df-669695963405', '', 'inherit', 'open', 'closed', '', 'b9e0299d-15b4-34d3-b3df-669695963405', '', '', '2023-06-22 01:51:32', '2023-06-22 01:51:32', '', 0, 'http://localhost/blog2/wp-content/uploads/2023/06/b9e0299d-15b4-34d3-b3df-669695963405.jpg', 0, 'attachment', 'image/jpeg', 0),
(82, 1, '2023-06-21 18:46:27', '2023-06-21 18:46:27', 'Autem vitae consectetur nobis porro quisquam voluptates illo. Voluptatibus impedit repellat nesciunt aut ab. Error culpa ex est sit delectus maxime. Dolorum sed et laborum esse non. Excepturi ut et ea placeat. Est animi molestiae sit fugit quia repudiandae. Ut sed aliquid et cum illo. Consectetur quo qui soluta non aut dolorem maiores. Sed adipisci et officiis earum officia. Facilis qui rem sunt corrupti. Ut natus animi illum et id quo voluptas. Quas ut ipsum ullam molestiae veniam. Voluptatum consequuntur id ab pariatur. Minus quidem omnis veritatis. Consequatur enim cumque iure suscipit. Et ea harum quia numquam voluptatibus. Iste tempora amet fuga ut dolor tenetur sit. Voluptas excepturi sit inventore et qui. Consequuntur similique ut eligendi sunt in praesentium. Blanditiis deserunt sapiente et sed possimus quos temporibus veritatis. Est sint quaerat nisi. Officiis quasi quam facilis.\n<h2>Quis ratione eos est assumenda exercitationem aut pariatur. Iusto consectetur rerum officiis. Repellendus aliquid blanditiis quos magnam</h2>\nCorrupti quis aspernatur distinctio. Cupiditate occaecati aut qui doloremque qui dolore. explicabo atque libero. Laudantium blanditiis quia voluptas aspernatur maiores quod. Dolorem quia culpa voluptatem esse. ut ea voluptate neque. Non dolore accusantium ducimus eaque est. Placeat soluta facilis quia voluptate. voluptates autem laborum velit est Nihil tempora corporis labore soluta tempore veritatis. sapiente aut quidem tempore Architecto sit est nam velit et quia. nostrum animi quo minima incidunt <a title=\"Excepturi quidem esse et ut.\" href=\"http://www.nikolaus.info/nulla-ullam-magni-et-reprehenderit-non-enim.html\">nisi.</a> aut ducimus facilis eius tempora quo et. Nesciunt facere distinctio iure. soluta quia quo error velit ipsa.\n\nMagni <a title=\"Debitis illo rerum.\" href=\"http://greenholt.biz/dolor-consectetur-dolorum-asperiores-iusto-autem-blanditiis\">ut doloribus sed quas</a> aperiam. quas ut sed Sit necessitatibus quis aliquid iste vitae. omnis atque tempora iste. repellat numquam facere Nihil <a title=\"Est distinctio aperiam ullam.\" href=\"http://streich.com/earum-rerum-quis-amet-quos\">voluptatem</a> eum. Voluptas repudiandae aut nemo rerum. Dolor dolor fugit aspernatur explicabo. Corporis sapiente adipisci dolor.\n<h3>Est incidunt saepe rerum maxime. Recusandae maxime commodi voluptas sunt rerum fugit. Tempore autem incidunt odio quibusdam</h3>\n<img class=\"alignright\" src=\"http://localhost/blog2/wp-content/uploads/2023/06/3cf61b7f-a299-3633-9bc8-3095c9ab10ff.jpg\">\n<img alt=\"Saepe soluta\" src=\"http://localhost/blog2/wp-content/uploads/2023/06/0cccd14e-f5ae-39eb-98d0-93dcd9dd9ddc.png\">\n<h3>Occaecati sit tempore dolores voluptatem. Recusandae velit odit id assumenda omnis eius. Magni maxime ipsa est debitis iste. Vero aliquam recusandae non</h3>\n<img class=\"aligncenter\" alt=\"Perspiciatis temporibus temporibus\" src=\"http://localhost/blog2/wp-content/uploads/2023/06/ff2ca14c-da55-3c4d-ac75-0206b234b664.jpg\">\n<h1>Pariatur ea facere necessitatibus natus qui et</h1>\n<a title=\"Error in voluptatem unde.\" href=\"http://koelpin.com/\">Odio sit saepe recusandae. Quo nam</a> et voluptatibus magnam eius. incidunt quas hic officiis et ut. Sed voluptates excepturi inventore <a title=\"Rerum consequatur eum.\" href=\"https://www.donnelly.com/aperiam-beatae-voluptatum-aliquam-consequatur-sed-quo\">natus nobis vero. In dolore</a> aspernatur aspernatur <a title=\"Aliquid consequatur ipsam porro.\" href=\"http://ankunding.biz/quod-eum-quam-illum-aut.html\">ea sint</a> <a title=\"Ut dignissimos dolor est aut.\" href=\"http://www.turner.com/accusantium-facilis-et-explicabo-dolore-neque-ducimus-ab-itaque.html\">Aut laborum dolore exercitationem.</a> minus esse sunt velit. Laboriosam eos vero quo. Ducimus quia officiis velit vitae et odit.\n<h3>Aut deleniti dolore quas aut quis deleniti illum. Non rerum et excepturi in</h3>\n<img src=\"http://localhost/blog2/wp-content/uploads/2023/06/06954f23-2eac-3ead-9e81-027642dec240.jpg\">\n\nDucimus excepturi autem et ut ipsa aut. Architecto eveniet qui distinctio. Ex est molestiae nulla dolor <a title=\"Nisi est dolorum mollitia consequatur necessitatibus cum.\" href=\"http://www.hansen.com/quia-ducimus-fuga-voluptas-et-fugiat-asperiores.html\">repellat.</a>\n\n<img alt=\"In ut aspernatur saepe ducimus quo\" src=\"http://localhost/blog2/wp-content/uploads/2023/06/b9e0299d-15b4-34d3-b3df-669695963405.jpg\">', 'Dako feet', 'Vero eius.\n\nHic voluptates.', 'publish', 'open', 'open', '', 'dignissimos-ab-similique-numquam-quidem-impedit', '', '', '2023-06-22 02:11:14', '2023-06-22 02:11:14', '', 0, 'http://localhost/blog2/2023/06/21/dignissimos-ab-similique-numquam-quidem-impedit/', 0, 'post', '', 0),
(83, 1, '2023-06-22 01:51:34', '2023-06-22 01:51:34', '', '0bbcba85-2389-30ad-8b80-17cf2955c459', '', 'inherit', 'open', 'closed', '', '0bbcba85-2389-30ad-8b80-17cf2955c459', '', '', '2023-06-22 01:51:34', '2023-06-22 01:51:34', '', 0, 'http://localhost/blog2/wp-content/uploads/2023/06/0bbcba85-2389-30ad-8b80-17cf2955c459.jpg', 0, 'attachment', 'image/jpeg', 0),
(84, 1, '2023-06-22 01:51:38', '2023-06-22 01:51:38', '', '66216abc-63f4-39a6-b381-d989ccf790ab', '', 'inherit', 'open', 'closed', '', '66216abc-63f4-39a6-b381-d989ccf790ab', '', '', '2023-06-22 01:51:38', '2023-06-22 01:51:38', '', 0, 'http://localhost/blog2/wp-content/uploads/2023/06/66216abc-63f4-39a6-b381-d989ccf790ab.jpg', 0, 'attachment', 'image/jpeg', 0),
(85, 1, '2023-06-21 08:46:09', '2023-06-21 08:46:09', '<h2>Et ullam sint quo esse impedit aut ut voluptas. Repellat non commodi nobis iure deserunt voluptas amet. Sit ut accusamus nulla occaecati</h2>\n<img class=\"alignright\" alt=\"Eaque iste blanditiis similique ex\" src=\"http://localhost/blog2/wp-content/uploads/2023/06/66216abc-63f4-39a6-b381-d989ccf790ab.jpg\">\n<h4>Sunt dicta eos in nobis est nesciunt</h4>\n<p>Sed cupiditate maiores vel porro voluptatum. voluptatibus vero velit et. temporibus et dolores pariatur. Sapiente numquam iure corporis. Voluptatem quo sint eos Incidunt vel enim veniam qui. A molestias voluptatem vel doloremque suscipit aperiam. Nihil vitae voluptatem reprehenderit. Sint sed dolore <a title=\"Provident id.\" href=\"http://www.harber.net/\">Voluptates a earum ea. Eaque cupiditate</a> blanditiis rerum facilis. Est cum laborum dicta Assumenda ut officiis iusto accusamus eos est. Tenetur ut velit quia accusantium possimus enim sequi. modi <a title=\"Placeat natus provident ea voluptas.\" href=\"http://botsford.biz/consectetur-atque-ratione-aperiam-quae\">tempore ab</a> Quis aspernatur optio omnis perferendis distinctio et. Sit sequi molestiae quasi eum sapiente cupiditate voluptatibus. Cum inventore quam amet. Sit occaecati et quia ut voluptates. Ullam natus voluptates dolor. Vitae autem facere quasi nemo Vel quasi in sit sit. Quia harum quas</p>\n<p>Quia iusto quis deserunt. Natus nesciunt <a title=\"Dolor animi sed suscipit deleniti et tenetur molestiae.\" href=\"http://nienow.net/\">qui</a> Iusto rerum nisi placeat possimus delectus. Tenetur dolorem fugiat aut. suscipit corrupti laborum harum est ad. Unde dolores excepturi omnis Exercitationem voluptatibus non vitae tempore. Itaque fugit est dolor nesciunt dignissimos earum. Sed quia <a title=\"Fuga sit ratione cumque est quia corporis.\" href=\"http://www.koss.com/rerum-velit-odio-praesentium-rerum-minima.html\">qui quia. Recusandae quam est</a> et sunt Vel dolor delectus non ipsum Dolore at voluptatibus veritatis nobis</p>', 'Quia odit iusto quo qui ab ducimus', 'Atque qui quisquam.\n\nQuam unde nihil.', 'publish', 'open', 'closed', '', 'quia-odit-iusto-quo-qui-ab-ducimus', '', '', '2023-06-21 08:46:09', '2023-06-21 08:46:09', '', 0, 'http://localhost/blog2/2023/06/21/quia-odit-iusto-quo-qui-ab-ducimus/', 0, 'post', '', 0),
(86, 1, '2023-06-22 01:51:45', '2023-06-22 01:51:45', '', 'cc9b4c71-dfa6-3036-b6e9-f5d699faa035', '', 'inherit', 'open', 'closed', '', 'cc9b4c71-dfa6-3036-b6e9-f5d699faa035', '', '', '2023-06-22 01:51:45', '2023-06-22 01:51:45', '', 0, 'http://localhost/blog2/wp-content/uploads/2023/06/cc9b4c71-dfa6-3036-b6e9-f5d699faa035.png', 0, 'attachment', 'image/png', 0),
(87, 1, '2023-06-22 01:51:51', '2023-06-22 01:51:51', '', '2f51e452-348b-317f-a589-0c0e497d2b23', '', 'inherit', 'open', 'closed', '', '2f51e452-348b-317f-a589-0c0e497d2b23', '', '', '2023-06-22 01:51:51', '2023-06-22 01:51:51', '', 0, 'http://localhost/blog2/wp-content/uploads/2023/06/2f51e452-348b-317f-a589-0c0e497d2b23.png', 0, 'attachment', 'image/png', 0),
(88, 1, '2023-06-22 01:51:53', '2023-06-22 01:51:53', '', 'd133f791-454d-32bb-abfa-4f1c71c63df4', '', 'inherit', 'open', 'closed', '', 'd133f791-454d-32bb-abfa-4f1c71c63df4', '', '', '2023-06-22 01:51:53', '2023-06-22 01:51:53', '', 0, 'http://localhost/blog2/wp-content/uploads/2023/06/d133f791-454d-32bb-abfa-4f1c71c63df4.png', 0, 'attachment', 'image/png', 0),
(89, 1, '2023-06-22 01:52:00', '2023-06-22 01:52:00', '', '8094d9f1-7b99-3f60-bf40-d6a5fc3a25b6', '', 'inherit', 'open', 'closed', '', '8094d9f1-7b99-3f60-bf40-d6a5fc3a25b6', '', '', '2023-06-22 01:52:00', '2023-06-22 01:52:00', '', 0, 'http://localhost/blog2/wp-content/uploads/2023/06/8094d9f1-7b99-3f60-bf40-d6a5fc3a25b6.jpg', 0, 'attachment', 'image/jpeg', 0),
(90, 1, '2023-06-22 01:52:10', '2023-06-22 01:52:10', '', 'cf5c1187-0307-3912-9e21-b02160a23b46', '', 'inherit', 'open', 'closed', '', 'cf5c1187-0307-3912-9e21-b02160a23b46', '', '', '2023-06-22 01:52:10', '2023-06-22 01:52:10', '', 0, 'http://localhost/blog2/wp-content/uploads/2023/06/cf5c1187-0307-3912-9e21-b02160a23b46.jpg', 0, 'attachment', 'image/jpeg', 0),
(91, 1, '2023-06-21 11:43:34', '2023-06-21 11:43:34', '<h1>Nam laboriosam id quis illum. Eaque aut et ut iste ratione</h1>\n<p>Repellat nobis vel aliquid Expedita officia vel autem quo <a title=\"Eum est earum minima.\" href=\"http://www.oreilly.com/optio-delectus-voluptate-asperiores-omnis.html\">deserunt magni. Tempora</a> quidem <a title=\"Error debitis.\" href=\"http://www.simonis.org/itaque-ipsam-ratione-qui\"><a title=\"Beatae occaecati est quidem quam aliquid vero labore aperiam optio.\" href=\"https://hickle.com/dolores-corporis-quisquam-officia-fugit-perspiciatis-in-consectetur.html\">hic</a></a> nobis. Rerum ut repellendus eum sunt ut Porro tempore iste deserunt suscipit <a title=\"Autem adipisci aut aut.\" href=\"http://hand.com/minima-ut-eveniet-inventore\">id totam. Illum</a> veritatis temporibus eos vitae.</p>\n<p>Officiis voluptas explicabo ad dicta Aut asperiores voluptatum fuga eum <a title=\"Eos eos nam laboriosam dolores.\" href=\"http://www.hoppe.com/quis-quasi-enim-corporis-error.html\">Iste</a> unde Consequuntur mollitia totam beatae. Et ut et quos porro fuga Officia et quo. Consequatur sed et ea dolore et Earum tempore architecto voluptatem sint adipisci sint. Illo eum veritatis quisquam. Eum qui <a title=\"Natus.\" href=\"http://www.hintz.net/omnis-commodi-quidem-laudantium-non-eum\">corporis incidunt nihil. Error</a> eveniet aspernatur ea Sit qui enim et. Accusamus dolorem alias quia. Quae et corrupti consequatur. Tenetur et optio sequi. dolorum voluptas fugiat maiores odio dicta. Officia amet aut at inventore asperiores quidem. <a title=\"Minus consequatur et.\" href=\"http://www.mraz.com/\">et</a> labore mollitia. Est doloremque sint sed quam. Dolorum earum consectetur numquam earum. Fugiat quam blanditiis atque quia ut. Fuga enim quia aut et quae possimus. Et id ut labore facere quia. Est nihil necessitatibus qui. Repellat <a title=\"Sit illum.\" href=\"http://sawayn.com/architecto-iste-nam-quasi-hic\">beatae distinctio assumenda porro. Et</a> sed quaerat. Facere sunt delectus quas mollitia Blanditiis amet veniam <a title=\"Ipsa.\" href=\"https://www.blanda.net/doloremque-consectetur-enim-fuga-incidunt-porro-quisquam-molestiae-aliquid\">et nihil</a> sapiente. Temporibus sunt deserunt earum animi aut rerum aut. tempore hic distinctio. nobis suscipit doloribus Amet in quas distinctio dicta adipisci maxime. Qui et et distinctio rerum commodi. eum modi placeat similique repudiandae.</p>\n<h4>Est ut quia quia nihil qui quo. Aspernatur sunt fuga quisquam</h4>\n<p><a title=\"Nostrum expedita aperiam ut dolorum repellat magni quisquam.\" href=\"http://skiles.org/eaque-laborum-voluptatem-ipsam-ducimus-nam-sed\">Illo eligendi</a> et velit nihil. Sed quia accusamus <a title=\"Recusandae debitis.\" href=\"http://lowe.info/hic-ipsum-nulla-aut-beatae-sunt-reprehenderit.html\">neque dignissimos consectetur vero.</a> <a title=\"Sunt et.\" href=\"http://www.mueller.org/iste-facere-qui-vitae-ut-blanditiis.html\">vel cum maiores doloribus officiis</a> <a title=\"Dolore eum nobis commodi dolor.\" href=\"http://www.adams.com/est-provident-omnis-debitis-repellendus\"><a title=\"Est et nostrum laborum quam.\" href=\"https://www.wehner.com/pariatur-asperiores-sint-consequuntur-et\">et. Reiciendis ipsam veritatis itaque tempore aut recusandae inventore</a></a> Temporibus voluptatem pariatur <a title=\"Voluptatem quibusdam.\" href=\"https://gerhold.org/qui-voluptate-est-animi.html\">tempore et nihil laborum vel.</a> quaerat eius eum. Adipisci odit doloremque blanditiis sequi</p>\n<p>Maiores quos quas quia aperiam consequatur omnis necessitatibus. Saepe cumque repudiandae est facilis laborum distinctio. Eum maxime voluptate commodi rerum reiciendis eligendi molestias fugiat. Nesciunt modi sit assumenda ut. Explicabo aut quam quibusdam velit sit. Cum nemo at temporibus veritatis. Doloremque sint qui ut. Omnis esse omnis et sed ipsam sit.</p>', 'Est vitae et nam similique', '', 'publish', 'open', 'closed', '', 'est-vitae-et-nam-similique', '', '', '2023-06-21 11:43:34', '2023-06-21 11:43:34', '', 0, 'http://localhost/blog2/2023/06/21/est-vitae-et-nam-similique/', 0, 'post', '', 0),
(92, 1, '2023-06-22 01:54:27', '2023-06-22 01:54:27', '', 'e6870e43-d278-35a5-8061-3b4107b70d98', '', 'inherit', 'open', 'closed', '', 'e6870e43-d278-35a5-8061-3b4107b70d98', '', '', '2023-06-22 01:54:27', '2023-06-22 01:54:27', '', 0, 'http://localhost/blog2/wp-content/uploads/2023/06/e6870e43-d278-35a5-8061-3b4107b70d98.jpg', 0, 'attachment', 'image/jpeg', 0),
(93, 1, '2023-06-21 13:14:49', '2023-06-21 13:14:49', '<p>Id vitae tempora sit. Iure labore modi quod Dolore <a title=\"Eos rerum impedit voluptatem quia.\" href=\"http://kilback.com/molestias-dicta-non-nihil-maiores-nisi-exercitationem-iusto-soluta\">id ut modi. Sint molestiae veniam necessitatibus</a> Quidem cumque harum commodi. fugiat et maxime officiis quia. numquam non expedita laborum Ipsa est soluta fugiat occaecati fugit. Inventore voluptatem est sint. Voluptatem quidem et ab velit voluptas. Esse et mollitia eius. Quibusdam numquam enim labore voluptatem facere. Enim quam aut mollitia nostrum. Nam dicta cupiditate voluptatem aut Reiciendis odit consequatur sit rerum deserunt nihil. Ex maiores voluptatum officia est.</p>\n<p>Odio vitae sint et. Sapiente perspiciatis architecto et doloribus cum Qui velit atque voluptate aut qui mollitia. Praesentium sunt accusantium aut odio. Enim ut rem <a title=\"Earum enim minima itaque.\" href=\"http://shanahan.com/et-nesciunt-et-sunt-molestiae-odio-dolorem\">esse</a> Dolor reiciendis ducimus ab <a title=\"Aut quidem eos eum.\" href=\"http://fritsch.com/\">Aut nesciunt dolor</a> explicabo pariatur. Voluptates blanditiis consectetur dolorem. Voluptatibus iure adipisci temporibus totam. doloremque enim quo qui minima. Vel dolore molestias distinctio exercitationem quia debitis. Ratione id nisi rerum tempore. sit tempora qui nihil odit Modi recusandae dolore adipisci vitae enim est. Necessitatibus omnis sint suscipit cupiditate nihil. Tenetur sequi <a title=\"Unde provident ut.\" href=\"http://klocko.com/iste-temporibus-harum-dignissimos-aut-quisquam-et\">qui corrupti suscipit ut</a> Sunt nemo enim distinctio voluptatibus et.</p>\n<h4>At facilis nihil veritatis. Vitae voluptatem enim voluptatem dolorem sint. Dignissimos vitae aut quos nostrum</h4>\n<p>Et consectetur nesciunt ducimus non. Sunt quia ut rerum aliquam. Eum qui quaerat nulla corporis. Quos veniam atque eum eos quaerat. Ea <a title=\"Nisi atque quia.\" href=\"http://www.lind.com/aspernatur-eum-doloremque-rerum-quia-sunt-consequatur-voluptas\">nostrum est cum. Sed voluptatem</a> repellat vel rerum et et. fugit suscipit quidem dolor laudantium. Dolor voluptate et velit cumque. Omnis voluptatibus est. Non <a title=\"Voluptatem consequatur est error distinctio voluptate.\" href=\"https://dooley.com/ducimus-commodi-consequatur-assumenda-quo-accusantium-facilis-dolorem-delectus.html\"><a title=\"Velit id.\" href=\"http://mayert.com/sit-quo-ea-ratione\">temporibus sit</a></a> facere aut. Et ut et mollitia odio. Ducimus sed aut in quae. Vel consequatur sunt iure. Molestias at quia. Sint temporibus laudantium eaque. Sed vel qui sequi <a title=\"Consectetur voluptatem et.\" href=\"http://purdy.com/et-harum-corrupti-sed-rem-voluptas.html\">Est iure reiciendis non aut.</a> eos veniam Corrupti eum ipsa in dicta. Sequi est nisi commodi sequi. Atque minus reprehenderit <a title=\"Occaecati cupiditate.\" href=\"http://www.toy.net/autem-nesciunt-velit-saepe-eos-consequatur.html\">quis nihil. Qui et qui et et ipsa</a> et suscipit. non provident voluptatem labore tempora.</p>\n<h2>Qui earum commodi natus iste in sed asperiores</h2>\n<p>Ea placeat sed fuga voluptatum. Ea voluptatem blanditiis quia quis. Repudiandae ratione laudantium consectetur omnis quis et. Quaerat reiciendis tenetur dolor qui rerum. Id rerum sapiente et dolores quidem sit. Repellat quasi et sed minus voluptates. Quidem in harum est ea fugit sunt. Nobis voluptates laudantium consequatur quod. Ratione eligendi dolores qui facere tempore officia. Dolores quo quasi est id in illum. Totam non voluptas veniam vitae unde voluptatem. Consequatur dolores facilis vitae delectus delectus soluta. Ab eaque non qui voluptate voluptate. Praesentium alias at quasi soluta architecto. Magnam cupiditate voluptatibus modi. Labore soluta dolore quaerat sequi corporis eaque sapiente.</p>\n<p><a title=\"Ipsam facere.\" href=\"http://okon.com/qui-assumenda-molestiae-laboriosam-voluptatem\">Enim</a> perferendis corporis delectus. animi et quam accusamus. Ut maiores voluptate mollitia pariatur Quia autem minima sed Voluptatem facere dolor perferendis <a title=\"Laborum nam adipisci voluptatem saepe ratione necessitatibus.\" href=\"http://douglas.com/\">vero enim.</a> dicta nisi eligendi quis praesentium dolorem. animi fuga et aut ex. ea quia dolorem a sit. Placeat non et quis neque sequi ea animi. Adipisci voluptatem vero nostrum et ea. In molestiae consequatur recusandae tempora Et beatae quos iste <a title=\"Veritatis.\" href=\"http://www.collins.biz/\">fugiat excepturi. Nemo consequatur accusantium vel</a> fugit natus. tenetur sint dolor eaque omnis. libero quo officiis minus. Voluptatem omnis <a title=\"Nesciunt id repudiandae ex voluptatem placeat.\" href=\"http://www.mann.com/\">quod. Recusandae facilis nihil aperiam.</a> numquam aut eius officiis maiores nihil. A tempore non. Autem at perferendis iusto impedit aut assumenda. <a title=\"Tenetur eos voluptas.\" href=\"http://koepp.org/non-temporibus-perferendis-et-ducimus\">eum asperiores fuga sint ea</a> Ea necessitatibus mollitia eligendi dolor adipisci et. Delectus nisi adipisci et rem quia. Laborum aut voluptas <a title=\"Ipsa.\" href=\"https://www.ward.info/similique-est-est-culpa-eligendi-accusantium\">possimus. Aspernatur voluptatibus accusantium</a> iusto consequatur sunt repudiandae. Maxime cum esse. Saepe voluptatibus rerum hic.</p>\n<p>Sit inventore mollitia itaque animi eum fugiat. Eos commodi saepe deleniti ea non libero doloremque cum. Dolorum quae esse quisquam molestiae quas qui soluta. Nobis nisi eveniet non voluptatem alias. Qui porro quis quia ratione ut est mollitia. Voluptatum ut odio neque nobis. Qui dolor quae consequatur dolore ab aut. Sit est sequi repellat enim vel sed. Aut ex voluptates et cupiditate. Id voluptatum sunt porro. Minima laborum a amet ipsa commodi est quas. Perferendis occaecati voluptas assumenda qui quam repellendus. Necessitatibus unde nam quia id est. Repellendus quas excepturi ipsam unde alias nihil itaque debitis. Voluptas dicta et laudantium voluptates est autem nostrum. Accusantium voluptatem magni non et magni nihil nulla. At possimus accusamus blanditiis quo. Fuga et nihil impedit earum qui. Qui beatae esse assumenda dolore tenetur fugit et. Veniam quas ipsum consequatur. Praesentium quo aut maiores necessitatibus omnis autem. Fugit voluptatem unde quidem in at tenetur quia ut. Ipsam iusto esse laborum quibusdam facere nihil. Et sed necessitatibus animi aut. Eum ut aspernatur et dolore itaque eaque. Dolor quasi architecto dolorem qui nihil saepe. Non sapiente nobis dolorem reiciendis maiores. Est odit in qui in distinctio vero debitis. Et laboriosam reprehenderit qui ratione et totam mollitia qui. Odio ut temporibus eum sed quam enim. Sequi provident dolorem deleniti aliquam eum.</p>\n<h1>Porro ea aut suscipit corporis. In numquam est voluptatem accusantium in et labore debitis. Facilis ea et sunt voluptas iure. Repellendus et necessitatibus minima</h1>\n<p>Magni molestias incidunt quo. qui omnis et placeat <a title=\"Tempore asperiores qui sed sed qui saepe ad.\" href=\"https://www.ledner.net/hic-voluptatem-velit-laudantium-praesentium-corporis-possimus-quam\">Dolor ea culpa</a> ratione est. Sed et occaecati ratione voluptatem consequatur. autem dolore qui <a title=\"Quisquam facilis.\" href=\"http://www.crist.biz/qui-voluptatem-autem-ea-omnis-rerum.html\">sit. Quaerat</a> iusto placeat qui consectetur Quos quae quis voluptatum optio aut. Doloribus repellat vitae. Quo aut eveniet fugit repellendus <a title=\"Quia delectus ipsam.\" href=\"http://braun.com/rerum-molestias-incidunt-dolores-voluptatem-qui-quo.html\">Repellendus</a> nisi voluptatem nemo quo harum corrupti Quia sed explicabo eos ipsa.</p>', 'Provident ipsum numquam perspiciatis enim perferendis est', 'Ducimus praesentium suscipit.', 'publish', 'open', 'open', '', 'provident-ipsum-numquam-perspiciatis-enim-perferendis-est', '', '', '2023-06-21 13:14:49', '2023-06-21 13:14:49', '', 0, 'http://localhost/blog2/2023/06/21/provident-ipsum-numquam-perspiciatis-enim-perferendis-est/', 0, 'post', '', 0),
(94, 1, '2023-06-21 17:12:54', '2023-06-21 17:12:54', '<h3>Est repellendus eaque dolore alias aut omnis animi</h3>\n<p>Consequatur expedita aspernatur qui iure. Quis nobis tenetur qui deserunt <a title=\"Veritatis minima.\" href=\"http://www.kiehn.com/\">Necessitatibus</a> ipsam praesentium itaque laborum doloremque quidem. Et alias sequi error aut. <a title=\"Sed qui.\" href=\"https://nienow.com/aperiam-illum-illo-molestiae-qui-quo.html\">recusandae impedit saepe ad rerum unde. Accusamus deleniti</a> ipsam quisquam eos. Hic illo consequatur hic. ea maiores est praesentium et <a title=\"Illum error occaecati autem aspernatur ab vero.\" href=\"http://gerlach.com/et-corrupti-perferendis-qui-voluptatum-perspiciatis-qui.html\">Quaerat architecto vero</a> dolores.</p>\n<p>Vel corporis vel minus aut sed <a title=\"Velit voluptas doloremque praesentium ex ut ut magnam excepturi.\" href=\"http://shields.com/\">eveniet. Accusantium excepturi</a> mollitia aspernatur non. Dolorem sit voluptates autem incidunt sed. Delectus ipsa nostrum dolor provident. consequatur molestiae assumenda <a title=\"Rerum dignissimos et dolorem occaecati minima dolorem.\" href=\"https://www.mcglynn.biz/quo-odio-qui-cumque-est-nam-voluptas-quae\">Et minus</a> omnis aliquid <a title=\"Dolor harum molestiae libero sint ut veritatis consequatur officia sed.\" href=\"http://www.rohan.org/\">quasi. Dicta quo</a> vel dolorem. Eum fugit ipsa sit consequatur beatae.</p>\n<p>Assumenda similique et sequi labore ullam sunt. Voluptatem minus est sed veritatis maiores Vel aperiam quos eveniet excepturi et laborum. iste id dolores quia. officiis porro ut nam occaecati eum. Veniam omnis sed eligendi consequatur Atque impedit vitae praesentium. Iste eos repellat sed <a title=\"Aut.\" href=\"http://bernhard.com/\">rerum</a> ut Quidem libero et sit. aliquid quis incidunt omnis quasi. Molestiae quaerat voluptas. Ullam reprehenderit et ducimus qui. Sunt unde ipsum maxime. Et suscipit culpa ut provident vel. Ut hic et voluptatem quod. Dolore at omnis sit ullam. Maiores dicta officia Vel reprehenderit quae iste porro pariatur tempore ipsam. eum consequatur quod voluptatem. Illo amet accusantium voluptate numquam. Nihil minus nisi ratione voluptates corporis. doloremque tenetur eveniet odio autem dicta <a title=\"Eligendi dolor voluptatem.\" href=\"http://larkin.biz/ut-voluptate-odit-quidem-repudiandae-non-necessitatibus\">facere. Maxime blanditiis vero amet</a> itaque iste non. Dolores et vel aut dolor dolorem. Ut molestias pariatur odio dolorum. Omnis consectetur voluptates optio. Enim voluptatem Omnis et explicabo non sapiente. Dolorum dignissimos dolor voluptas odit non natus. culpa facilis eum et in magnam. Est magnam qui quasi dolores. ut praesentium qui illo voluptas et. voluptate soluta sit deleniti et Animi unde sequi occaecati Voluptas in ea reprehenderit cum hic explicabo. Aut necessitatibus rem voluptatibus ipsa voluptatem eum Quos nam asperiores <a title=\"Enim molestiae quae et sit.\" href=\"http://ledner.com/magnam-blanditiis-consequatur-et-iusto-illum\">ut sit.</a> ex alias autem eaque. Nihil sit et et tempora et. Unde voluptatum nihil et deleniti aut. Fugiat consequatur repellendus laudantium excepturi quia quibusdam. Excepturi autem Praesentium non consequatur sapiente quisquam fugit et. Laboriosam maiores quia. Temporibus unde suscipit delectus voluptatibus rerum. Atque molestiae eius Iure accusantium earum a officiis. Consequatur temporibus id Fugiat veritatis mollitia alias incidunt repudiandae Nobis quos est repellendus Eos quo quasi in. asperiores amet eos tenetur esse quia.</p>\n<h1>Temporibus voluptatem doloribus ratione sed ea tenetur. Repellat fugit cupiditate dolorem quaerat aut. Dolor accusamus harum autem quia accusamus eos</h1>\n<p>Repudiandae qui qui ut autem beatae. at odio sunt. Id accusamus illum nobis Perspiciatis asperiores ut qui earum. Dolorem voluptas quisquam fugiat et non dolorem. enim laborum ipsam. Quam debitis neque est omnis aut et. Exercitationem ipsa tempora sapiente a <a title=\"Fuga laudantium ut.\" href=\"https://hettinger.com/autem-non-labore-minima.html\">Incidunt sit</a> aspernatur facere qui At qui nihil soluta soluta nisi repellat incidunt. temporibus molestiae consequatur dolores. quia consequatur consectetur numquam earum dolores non. Iure enim quos veniam voluptates fugiat Dolores rem delectus porro hic aut. Autem sunt et et consequuntur sit Sit dicta dolorem quae exercitationem impedit est eveniet. Pariatur et blanditiis unde error impedit Et facilis voluptatem eum assumenda quae non. Quo ullam necessitatibus quaerat quis natus Natus deserunt laborum illum qui laborum. iure voluptatum quas ullam. Ullam sit <a title=\"Non velit harum.\" href=\"http://hilpert.biz/autem-possimus-id-cumque-laborum-necessitatibus-tempora.html\">non. Quis dolores</a> sed dolorem iure. voluptatem est neque accusantium consectetur voluptatem. A quam atque. Voluptates molestias ipsum Non sit aut est est dolore.</p>\n<h3>Explicabo delectus omnis sit aliquam voluptas. Atque quaerat quo repellendus architecto voluptas</h3>\n<p><a title=\"Consequatur dolorum quam a distinctio.\" href=\"http://eichmann.com/eligendi-repudiandae-est-adipisci-quidem-quas\">Sit similique</a> alias consequatur id maiores aut aut. unde aut autem porro cumque commodi assumenda. Quod quibusdam repudiandae qui enim. nihil amet explicabo rerum cumque. Dolorem odio quibusdam. distinctio et aut omnis nihil <a title=\"Maiores illo pariatur voluptas debitis.\" href=\"http://www.mcglynn.com/natus-vitae-quod-quibusdam-perspiciatis.html\">Sit dolores blanditiis cum voluptatem</a> Molestiae qui quis qui vero. <a title=\"Dolor minus similique.\" href=\"https://www.rau.net/et-nobis-eius-eum-recusandae-similique\">quia fugiat inventore laboriosam</a> eligendi aspernatur. Est numquam culpa Voluptatem perspiciatis blanditiis neque eum. Accusantium laboriosam delectus accusantium. Impedit esse similique. Quibusdam asperiores sequi consequatur ut et Est et totam qui doloribus. Rerum quasi aperiam Corporis est minima doloribus quibusdam vero. Qui et tempora eveniet modi quis nihil. Voluptates voluptatum autem. Quia rem et reiciendis. Ut inventore aut necessitatibus. Cupiditate qui expedita omnis <a title=\"Dolores rem facilis voluptatem est.\" href=\"http://www.reynolds.com/quibusdam-in-velit-minima-et\">sit fugit fugit.</a> eius rerum vel accusantium et. Odio commodi necessitatibus. Illo accusantium consequatur nostrum inventore <a title=\"Omnis ut aut.\" href=\"http://www.smitham.com/animi-et-quidem-quia-nihil\">voluptatem. Et consequatur dolor</a> voluptatem aperiam reprehenderit autem. Eligendi cumque quos omnis sit Unde magnam sit qui ab facilis <a title=\"Incidunt similique omnis beatae vero.\" href=\"http://mayert.com/\">Esse id exercitationem expedita et</a> Et quasi corrupti Veniam sapiente omnis quia dignissimos voluptatibus. Ea sunt ipsum distinctio Repellendus voluptatem illo pariatur assumenda</p>\n<h4>Illum est labore ipsum vero. Quo similique illum dolor repudiandae qui. Hic numquam fugit placeat et</h4>\n<p>Rerum cumque id et et ipsam commodi repellendus sequi. Iste atque incidunt sed velit. Voluptatem ratione voluptatem expedita debitis tenetur. Ratione rerum expedita perspiciatis qui veritatis fuga molestiae. Ducimus quos esse voluptatem et. Nisi et dolores quasi unde rem repudiandae. Rerum ut consequatur quidem ipsum voluptas odit. Quaerat voluptatem quas fugit est suscipit. Non nihil ut nemo autem incidunt. Temporibus culpa qui dolor facilis voluptas. Accusantium odit iste fuga enim voluptatem non sit minima. Enim non ipsum voluptatem quas. Velit nesciunt aut inventore et recusandae dolorem quibusdam praesentium. Eveniet eum provident vel beatae quis aut laudantium. Suscipit veritatis consequatur aut. Reiciendis temporibus rerum commodi rerum. Dolorem hic odit quidem repellat. Voluptas praesentium distinctio est vero libero. Voluptatibus non eum atque praesentium officiis voluptatum qui. Voluptas quia illum corporis qui. Deserunt quas dolores repudiandae quia et. Molestias rerum autem reiciendis optio illum et. Nemo nihil amet sunt consequatur inventore et. Quo quos dolorem dolores. Molestias harum facilis nostrum. Reiciendis nihil quod at ullam dignissimos. A accusamus distinctio omnis. Eos magnam doloribus ex quod quibusdam ut. Qui id consequatur officiis assumenda. Tenetur eaque repudiandae corporis et. Et culpa recusandae doloribus placeat sit. Commodi tenetur ad tempore odio nulla ea.</p>', 'Velit harum aut aliquid debitis', '', 'publish', 'open', 'closed', '', 'velit-harum-aut-aliquid-debitis', '', '', '2023-06-21 17:12:54', '2023-06-21 17:12:54', '', 0, 'http://localhost/blog2/2023/06/21/velit-harum-aut-aliquid-debitis/', 0, 'post', '', 0),
(95, 1, '2023-06-22 01:54:44', '2023-06-22 01:54:44', '', '1aee3f20-dec2-3a8d-9987-bf9ac8221606', '', 'inherit', 'open', 'closed', '', '1aee3f20-dec2-3a8d-9987-bf9ac8221606', '', '', '2023-06-22 01:54:44', '2023-06-22 01:54:44', '', 0, 'http://localhost/blog2/wp-content/uploads/2023/06/1aee3f20-dec2-3a8d-9987-bf9ac8221606.jpg', 0, 'attachment', 'image/jpeg', 0);
INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(96, 1, '2023-06-21 15:12:56', '2023-06-21 15:12:56', '<h2>Cum inventore eum ea sed incidunt. Et et enim quam repellat eum non corporis sapiente. Hic perspiciatis qui qui nostrum</h2>\n<p>A fuga aut optio. Quaerat sapiente voluptates sint qui. quia unde et vero. quis adipisci <a title=\"In eveniet eos.\" href=\"http://www.will.com/\">in nihil. Mollitia</a> magni et voluptatem et Quo id dolores aliquam. Autem et neque dignissimos. quia ipsam quia. Eum rerum quas Qui quia quas esse enim omnis aperiam Est at neque praesentium iusto <a title=\"Eligendi et ut culpa sequi.\" href=\"http://www.cummerata.org/quam-enim-ut-aliquid-sed-eligendi-eum.html\">nihil est. Qui asperiores nostrum perferendis</a> error quia placeat. expedita id vitae perferendis voluptates. Quis dolores deserunt dignissimos sint. Ad aut <a title=\"Laudantium exercitationem.\" href=\"http://reichel.com/voluptatem-enim-quia-aperiam-fuga-numquam-delectus\">quos voluptatum. Ea deleniti sit</a> accusamus sunt quis. Cumque repellendus delectus facilis Qui molestiae amet est sed qui officia. Aut eum aliquid aliquid aut dicta. Ut reiciendis velit Eos aut repudiandae exercitationem. nihil ducimus illo et expedita quidem Porro ipsum ut provident distinctio <a title=\"Voluptatem porro sit iste.\" href=\"http://www.homenick.com/soluta-atque-ad-inventore-voluptas-itaque-ea-praesentium.html\">dicta aspernatur. Impedit aut atque</a> <a title=\"Fuga qui quis quis.\" href=\"http://www.conroy.com/adipisci-consequatur-debitis-nisi-voluptas-expedita-illum.html\">architecto voluptatem. Nihil eligendi assumenda ut</a> Ea velit nostrum autem incidunt rem Quisquam ea illum. Veritatis et dolores minus voluptatum quia. Amet nostrum repudiandae ipsam. Aut et cupiditate repudiandae quasi adipisci. Quo rerum est maiores ducimus alias autem.</p>\n<h1>Sed voluptas molestias sit molestiae reiciendis temporibus. Eos quam temporibus illum qui vel. Iusto est magnam deleniti praesentium necessitatibus</h1>\n<p><a title=\"Fugit iure consequatur.\" href=\"http://www.schamberger.info/autem-id-enim-nulla-magni\">Quas</a> debitis culpa vitae. Non similique quo fugiat et. impedit dolorum animi facilis Magnam facilis eligendi nemo molestias voluptate delectus. Sed qui autem sed et. Consequatur perferendis velit facere exercitationem. adipisci ipsam voluptatem Nihil expedita voluptas quae amet. Optio modi totam cupiditate. Minima quasi molestiae quibusdam et ex. Nisi deserunt ut sed necessitatibus unde suscipit. <a title=\"Aut quasi perferendis iure voluptas quis consequuntur ipsa et.\" href=\"http://skiles.biz/atque-vero-rem-aliquid-qui-odio-magnam-tenetur\">ullam dignissimos</a> voluptatem facilis esse Ducimus quo vero. Unde sunt saepe delectus delectus voluptatem officiis. sed animi Eaque aliquam molestiae</p>\n<h1>Rem veritatis necessitatibus eos doloremque adipisci est odit temporibus</h1>\n<p>Et voluptates soluta et sed reprehenderit inventore est. Et non est doloribus id. Ducimus assumenda consequatur maxime in et sit. Sed sed cupiditate et numquam rem. Laborum quisquam provident sapiente est rerum repellat doloribus similique. Id non voluptatibus quia praesentium alias officia a consequuntur. Veniam at voluptates incidunt a maxime. Consequatur ea alias eaque est. Nobis dolorem iure fugiat nihil. Vel accusantium rem rerum adipisci. Impedit error modi tempora quo officia voluptatem. Excepturi vel necessitatibus est sed enim laudantium explicabo. Fugiat unde fugiat quia consequatur repudiandae ducimus. Dolorem vitae eos quis enim sed tenetur. Dolore excepturi debitis praesentium eum deserunt. Molestiae necessitatibus unde minima quae at. Iste voluptatibus non alias. Velit aut et aliquid voluptas odit consequatur ullam. Cupiditate velit non aliquam et animi. Et quod error consequuntur officia magni consequatur voluptatibus. Officia in odio commodi voluptas ut autem non autem. Occaecati unde est quo minima assumenda. Necessitatibus nam non quidem repudiandae aspernatur magni. Odit tempora ut debitis aut. Ut quod aut dolorum nobis. Inventore eaque fuga voluptas id qui qui. Voluptate asperiores distinctio et et quisquam vitae dolorem. Sunt et quo blanditiis nulla similique. Fugit occaecati magnam eius earum iure quibusdam. Et vitae alias et corporis atque aspernatur officiis. Id hic molestiae aliquid earum nisi nulla.</p>\n<h4>Deserunt itaque et culpa ut dolorem alias est</h4>\n<p>Sit sit amet blanditiis recusandae in suscipit nesciunt. Libero minima vero nesciunt quaerat voluptatem odit vitae. Aut voluptatem ratione amet est architecto at. Labore numquam blanditiis eligendi esse. Asperiores ut accusantium occaecati voluptatum quia. Ipsam voluptas quaerat blanditiis quaerat. Et voluptate suscipit animi numquam. Maxime culpa corrupti quidem nam. Molestiae facilis excepturi esse incidunt velit quaerat non. Sit asperiores eum corporis ducimus ad soluta voluptatem architecto. Perferendis ad atque dolorem quis voluptate enim. Totam aut ea facere distinctio. Qui delectus voluptatum sunt rerum ut quo. Voluptates similique esse consectetur porro ut. Eaque dolore repellat quis eveniet excepturi. Et quas sint et eum cumque. Ipsum reiciendis soluta et. Est maiores veritatis facere temporibus vero. Atque voluptatem est quibusdam commodi asperiores tempora aperiam. Animi ducimus ut autem praesentium minus omnis et. Magnam ad ad vel et vel. Et qui error deleniti laborum debitis nobis. Enim sapiente animi repellendus rerum quia voluptas. Sed quia autem perferendis sed nulla. Consequatur et non pariatur aperiam consequatur. Dolorem doloremque similique minima vitae tempora consequatur. Aliquam harum facilis eius facilis ut est. Natus minus ullam eos animi et repudiandae qui. Voluptatem ea et aliquid et voluptates vel perspiciatis. Mollitia quod repudiandae consequuntur libero non quasi. Aut laudantium mollitia nemo saepe tempore minima. Sed sapiente alias veniam beatae quis ut minima. Eos et et non repellat. Consequatur enim voluptates in doloremque. Eos distinctio laudantium sint inventore accusantium necessitatibus. Sit et non fugit enim voluptas. Corporis ea quod enim molestias consectetur. Sit eos id rem iusto sint. Cupiditate similique porro quia culpa saepe voluptatem dolores. Autem recusandae sunt minus numquam ullam et.</p>\n<p>Iste tempora qui numquam illo iure. Nihil quas quaerat et sit nihil eos Praesentium nulla quia dolores quo cumque. Cupiditate quis quae et tempora voluptate. Sit ullam sit molestiae dolor quo. delectus voluptas vel in perspiciatis autem. Necessitatibus enim provident molestiae et. Et et aut et est. Sit est quibusdam amet quibusdam. Sed necessitatibus placeat repellat minus similique. <a title=\"Neque saepe iure doloribus consequatur natus aut.\" href=\"http://auer.com/\">quia numquam</a> ducimus quis Sit reprehenderit fugiat commodi blanditiis suscipit. quae autem provident. Aut nemo est ullam velit dolores sed. Qui velit ut error aliquid. Laborum dolore animi blanditiis et iste. Facilis aut eaque doloremque Atque veniam nobis repellat debitis tempore. Ut sed possimus et deleniti dignissimos quaerat. Quod laudantium vel officia a iste Velit <a title=\"Fugit quae illo libero.\" href=\"https://marquardt.com/dolores-repudiandae-consectetur-veniam-amet-officia.html\">perspiciatis enim mollitia</a> sed</p>', 'Odio aut beatae aut est tempore', 'In asperiores.\n\nLaborum ipsam.', 'publish', 'open', 'open', '', 'odio-aut-beatae-aut-est-tempore', '', '', '2023-06-21 15:12:56', '2023-06-21 15:12:56', '', 0, 'http://localhost/blog2/2023/06/21/odio-aut-beatae-aut-est-tempore/', 0, 'post', '', 0),
(97, 1, '2023-06-22 01:54:54', '2023-06-22 01:54:54', '', '62e3c4f1-d622-363c-8ad1-f18d0dd205b6', '', 'inherit', 'open', 'closed', '', '62e3c4f1-d622-363c-8ad1-f18d0dd205b6', '', '', '2023-06-22 01:54:54', '2023-06-22 01:54:54', '', 0, 'http://localhost/blog2/wp-content/uploads/2023/06/62e3c4f1-d622-363c-8ad1-f18d0dd205b6.jpg', 0, 'attachment', 'image/jpeg', 0),
(98, 1, '2023-06-21 18:15:47', '2023-06-21 18:15:47', '<h2>Molestiae architecto minima nobis a nisi saepe. Enim eos quisquam est natus quia et ipsa. Autem error qui suscipit enim est. Dolorem omnis qui suscipit id iusto. Dolorem ut sint eveniet sed</h2>\n<p>Perspiciatis fugit nostrum magnam doloribus distinctio. Exercitationem ea tempore recusandae ut aliquam. Non iusto laborum voluptatem alias culpa quis laudantium. Omnis rerum odit et ullam enim similique consectetur. Nobis beatae eaque consequatur perferendis consequuntur velit minima. Voluptatibus molestiae quo incidunt est atque accusantium. Aut illum est excepturi aut sunt vel non. Qui repellendus esse id cupiditate fuga. Rerum eveniet et molestiae vitae ut cupiditate. Et odio nobis velit neque. Ipsa ut aut voluptas nihil voluptatum officia voluptas. Atque odit laboriosam ut molestiae suscipit deserunt ut. Earum qui sunt vel eius velit repellendus voluptatem. Consequuntur voluptates voluptatem in. Consequatur autem alias ducimus aut. Quis quia eius quibusdam pariatur aut. Animi dolores laborum sapiente eum temporibus molestias maxime. Repudiandae aut beatae provident dolorem ipsam harum. Aut id aliquid tempora sit inventore excepturi et. Laborum nobis libero omnis eum. Necessitatibus commodi ipsam exercitationem distinctio qui. Facere et consequuntur officiis sed vitae.</p>\n<h2>Nihil magnam doloremque veritatis ipsum non qui nisi labore. Non nisi enim at soluta. Voluptas sit dolor est repudiandae doloribus adipisci</h2>\n<p>Beatae earum eaque ullam. Quia quis saepe assumenda quis est aut eligendi. Ipsa sequi voluptas voluptatem. Ipsum expedita natus animi non omnis vel. Tempora voluptas qui in molestiae quidem eum ducimus quos. Eligendi eaque voluptate qui accusantium laboriosam. Expedita fugiat non quisquam distinctio. Nulla sit quaerat voluptas ex. Reiciendis quis explicabo vel labore architecto dolorem non. Porro exercitationem voluptates aut natus quis. Deserunt atque quia id ex. Qui velit eum maiores quia et quas. Molestias distinctio et qui eos. Enim nihil voluptatibus et ut minus sed et. Numquam consequuntur aliquam non. Ad asperiores magni molestias eveniet eveniet sunt ut. Omnis eum reprehenderit itaque atque. Sed et voluptatem omnis modi aspernatur aut et.</p>\n<h1>Dolorem eum est ut minima. Illo qui ea molestiae repellendus repellat possimus est. In corrupti suscipit esse nostrum autem aperiam delectus</h1>\n<p>Qui ut aut tempore facere est nesciunt non. Nulla eius dolor dolorem doloremque ullam dolorum qui. Aut enim dolore dignissimos illum dolor natus voluptatum. Aut est ea tempora aut reiciendis. Dolore asperiores sed neque aut. Modi quia inventore aut et est consequatur in sunt. Velit voluptatum autem quos distinctio accusamus saepe quod. Non doloribus consequatur blanditiis. Molestiae et labore dolores sapiente. Consectetur dolorum explicabo nostrum quaerat et non necessitatibus. Quisquam et ea ipsa doloribus laboriosam veniam velit. Voluptatibus nemo quibusdam nesciunt voluptatibus voluptatem sapiente in. Ducimus quibusdam nulla eius ullam qui quo voluptatem. Minima est qui voluptate in. Expedita et porro ut aut quia. Rerum veritatis exercitationem eos saepe consequuntur maiores qui id. Quod quas iure quia reprehenderit ut consequatur. Praesentium optio cumque vitae voluptatum. Consequuntur labore tenetur debitis. Aliquid minima et similique et sit et maiores. Id ullam debitis reiciendis ipsa quis. In est animi sint quia maxime inventore. Laboriosam ab perferendis quod velit. Exercitationem est omnis ut placeat unde dolore. Iste suscipit quia in velit. Voluptatum magni quia at ipsam. Aspernatur qui expedita quos sed dolore dolores est. Animi ab molestiae id libero impedit ullam non. Rerum dolores iste consequatur soluta ratione ea. Qui corrupti quaerat tempore aut aspernatur. Perferendis provident amet et officiis rem est eligendi. Similique voluptas quidem sed hic ad corrupti sed quia. Quia amet quas perspiciatis distinctio dicta. Minima ullam alias animi exercitationem. Aut consequatur perspiciatis reiciendis. Nesciunt ducimus consectetur sunt nihil rerum natus. Vel officiis voluptatem sit molestias enim facilis enim ea. Molestiae non dolore aliquid possimus nostrum ea. Eum similique veritatis laborum eum architecto. Quis aperiam cum earum corporis voluptatem. Occaecati iure sequi odio qui.</p>\n<h2>Id ut laboriosam aut rem dolorem voluptas sit. Corrupti exercitationem reprehenderit tempora dolor. Ea accusamus omnis quia accusantium omnis</h2>\n<p>Rem itaque aspernatur ipsa. cupiditate aut sit cupiditate ullam natus. Minus dolores laboriosam vero aperiam vel ea. consectetur aspernatur aut sit. Corporis id dolorum ut Mollitia fugiat aut et libero soluta. Itaque a eaque est. Nobis illum pariatur ipsa. veritatis et voluptates voluptate laboriosam. Omnis et et assumenda blanditiis. a illum cumque dolorem accusantium corrupti exercitationem. <a title=\"Cupiditate veritatis labore eos.\" href=\"https://www.okon.com/quia-sint-recusandae-velit-sit-laudantium\">nisi cupiditate</a> officia. Non quae dolores pariatur quaerat fugiat et ad. fuga incidunt libero inventore Optio animi minima voluptas Minima nemo voluptatem in vero. iure porro eum libero Nemo et maxime quaerat est omnis illo. Suscipit quibusdam ipsum voluptatem ducimus. Odit quia iusto aut molestias Est magnam commodi recusandae. Et suscipit dolor nemo nihil voluptas Ea ut alias dolorem voluptas et. Reiciendis est ea porro eveniet.</p>\n<p>Est quae blanditiis temporibus quia quia. Necessitatibus iste praesentium quam aspernatur debitis. Aut rerum est nulla est et. Quo dolore ex eligendi modi maiores dolorem omnis. Repellat ut veniam occaecati repellendus voluptatibus. Est eos est voluptate cum. Mollitia enim facere laudantium voluptatem. Quo eos quo non corporis vel error et. Placeat corrupti quia hic vitae necessitatibus ad. Asperiores rem veritatis consequatur aut voluptas cupiditate temporibus. Ipsam qui dolorum saepe est eos ipsam. Ducimus cumque harum doloribus rerum sed assumenda. Rerum doloremque ad molestiae officiis iure. Repellendus ullam ut ut corporis. Ex et accusamus repellendus excepturi esse. Ab adipisci quis excepturi totam et veniam eos sit. Nulla aspernatur ut quis eos sed corrupti quia. Et magnam a sed in excepturi. Labore omnis voluptatibus odio qui. Doloribus saepe iure delectus id. Debitis dolore eos dolore sed quae. Recusandae non laborum modi reprehenderit voluptate. Est nostrum et dolore ad. Maiores consectetur iusto cumque consequuntur. At hic eligendi nisi autem voluptas qui cumque voluptatem. Dolorem esse natus occaecati dolor laboriosam et ut. Quidem quas quam ut quae est id. Ratione exercitationem cupiditate est id inventore illo. Aut ut labore qui. Corrupti corporis aspernatur beatae sit eligendi. Facilis est quis incidunt totam saepe praesentium ut dolores. Aspernatur quas doloremque qui est eligendi.</p>', 'Autem soluta illum tenetur qui', 'Quisquam quia ad qui.', 'publish', 'open', 'closed', '', 'autem-soluta-illum-tenetur-qui', '', '', '2023-06-21 18:15:47', '2023-06-21 18:15:47', '', 0, 'http://localhost/blog2/2023/06/21/autem-soluta-illum-tenetur-qui/', 0, 'post', '', 0),
(99, 1, '2023-06-22 01:54:56', '2023-06-22 01:54:56', '', 'f8d4a857-342c-3cc3-9a51-917b02b1f33d', '', 'inherit', 'open', 'closed', '', 'f8d4a857-342c-3cc3-9a51-917b02b1f33d', '', '', '2023-06-22 01:54:56', '2023-06-22 01:54:56', '', 0, 'http://localhost/blog2/wp-content/uploads/2023/06/f8d4a857-342c-3cc3-9a51-917b02b1f33d.png', 0, 'attachment', 'image/png', 0),
(101, 1, '2023-06-22 02:10:38', '2023-06-22 02:10:38', 'Autem vitae consectetur nobis porro quisquam voluptates illo. Voluptatibus impedit repellat nesciunt aut ab. Error culpa ex est sit delectus maxime. Dolorum sed et laborum esse non. Excepturi ut et ea placeat. Est animi molestiae sit fugit quia repudiandae. Ut sed aliquid et cum illo. Consectetur quo qui soluta non aut dolorem maiores. Sed adipisci et officiis earum officia. Facilis qui rem sunt corrupti. Ut natus animi illum et id quo voluptas. Quas ut ipsum ullam molestiae veniam. Voluptatum consequuntur id ab pariatur. Minus quidem omnis veritatis. Consequatur enim cumque iure suscipit. Et ea harum quia numquam voluptatibus. Iste tempora amet fuga ut dolor tenetur sit. Voluptas excepturi sit inventore et qui. Consequuntur similique ut eligendi sunt in praesentium. Blanditiis deserunt sapiente et sed possimus quos temporibus veritatis. Est sint quaerat nisi. Officiis quasi quam facilis.\n<h2>Quis ratione eos est assumenda exercitationem aut pariatur. Iusto consectetur rerum officiis. Repellendus aliquid blanditiis quos magnam</h2>\nCorrupti quis aspernatur distinctio. Cupiditate occaecati aut qui doloremque qui dolore. explicabo atque libero. Laudantium blanditiis quia voluptas aspernatur maiores quod. Dolorem quia culpa voluptatem esse. ut ea voluptate neque. Non dolore accusantium ducimus eaque est. Placeat soluta facilis quia voluptate. voluptates autem laborum velit est Nihil tempora corporis labore soluta tempore veritatis. sapiente aut quidem tempore Architecto sit est nam velit et quia. nostrum animi quo minima incidunt <a title=\"Excepturi quidem esse et ut.\" href=\"http://www.nikolaus.info/nulla-ullam-magni-et-reprehenderit-non-enim.html\">nisi.</a> aut ducimus facilis eius tempora quo et. Nesciunt facere distinctio iure. soluta quia quo error velit ipsa.\n\nMagni <a title=\"Debitis illo rerum.\" href=\"http://greenholt.biz/dolor-consectetur-dolorum-asperiores-iusto-autem-blanditiis\">ut doloribus sed quas</a> aperiam. quas ut sed Sit necessitatibus quis aliquid iste vitae. omnis atque tempora iste. repellat numquam facere Nihil <a title=\"Est distinctio aperiam ullam.\" href=\"http://streich.com/earum-rerum-quis-amet-quos\">voluptatem</a> eum. Voluptas repudiandae aut nemo rerum. Dolor dolor fugit aspernatur explicabo. Corporis sapiente adipisci dolor.\n<h3>Est incidunt saepe rerum maxime. Recusandae maxime commodi voluptas sunt rerum fugit. Tempore autem incidunt odio quibusdam</h3>\n<img class=\"alignright\" src=\"http://localhost/blog2/wp-content/uploads/2023/06/3cf61b7f-a299-3633-9bc8-3095c9ab10ff.jpg\">\n<img alt=\"Saepe soluta\" src=\"http://localhost/blog2/wp-content/uploads/2023/06/0cccd14e-f5ae-39eb-98d0-93dcd9dd9ddc.png\">\n<h3>Occaecati sit tempore dolores voluptatem. Recusandae velit odit id assumenda omnis eius. Magni maxime ipsa est debitis iste. Vero aliquam recusandae non</h3>\n<img class=\"aligncenter\" alt=\"Perspiciatis temporibus temporibus\" src=\"http://localhost/blog2/wp-content/uploads/2023/06/ff2ca14c-da55-3c4d-ac75-0206b234b664.jpg\">\n<h1>Pariatur ea facere necessitatibus natus qui et</h1>\n<a title=\"Error in voluptatem unde.\" href=\"http://koelpin.com/\">Odio sit saepe recusandae. Quo nam</a> et voluptatibus magnam eius. incidunt quas hic officiis et ut. Sed voluptates excepturi inventore <a title=\"Rerum consequatur eum.\" href=\"https://www.donnelly.com/aperiam-beatae-voluptatum-aliquam-consequatur-sed-quo\">natus nobis vero. In dolore</a> aspernatur aspernatur <a title=\"Aliquid consequatur ipsam porro.\" href=\"http://ankunding.biz/quod-eum-quam-illum-aut.html\">ea sint</a> <a title=\"Ut dignissimos dolor est aut.\" href=\"http://www.turner.com/accusantium-facilis-et-explicabo-dolore-neque-ducimus-ab-itaque.html\">Aut laborum dolore exercitationem.</a> minus esse sunt velit. Laboriosam eos vero quo. Ducimus quia officiis velit vitae et odit.\n<h3>Aut deleniti dolore quas aut quis deleniti illum. Non rerum et excepturi in</h3>\n<img src=\"http://localhost/blog2/wp-content/uploads/2023/06/06954f23-2eac-3ead-9e81-027642dec240.jpg\">\n\nDucimus excepturi autem et ut ipsa aut. Architecto eveniet qui distinctio. Ex est molestiae nulla dolor <a title=\"Nisi est dolorum mollitia consequatur necessitatibus cum.\" href=\"http://www.hansen.com/quia-ducimus-fuga-voluptas-et-fugiat-asperiores.html\">repellat.</a>\n\n<img alt=\"In ut aspernatur saepe ducimus quo\" src=\"http://localhost/blog2/wp-content/uploads/2023/06/b9e0299d-15b4-34d3-b3df-669695963405.jpg\">', 'Dignissimos ab similique numquam quidem impedit', 'Vero eius.\n\nHic voluptates.', 'inherit', 'closed', 'closed', '', '82-revision-v1', '', '', '2023-06-22 02:10:38', '2023-06-22 02:10:38', '', 82, 'http://localhost/blog2/?p=101', 0, 'revision', '', 0),
(102, 1, '2023-06-22 02:11:13', '2023-06-22 02:11:13', 'Autem vitae consectetur nobis porro quisquam voluptates illo. Voluptatibus impedit repellat nesciunt aut ab. Error culpa ex est sit delectus maxime. Dolorum sed et laborum esse non. Excepturi ut et ea placeat. Est animi molestiae sit fugit quia repudiandae. Ut sed aliquid et cum illo. Consectetur quo qui soluta non aut dolorem maiores. Sed adipisci et officiis earum officia. Facilis qui rem sunt corrupti. Ut natus animi illum et id quo voluptas. Quas ut ipsum ullam molestiae veniam. Voluptatum consequuntur id ab pariatur. Minus quidem omnis veritatis. Consequatur enim cumque iure suscipit. Et ea harum quia numquam voluptatibus. Iste tempora amet fuga ut dolor tenetur sit. Voluptas excepturi sit inventore et qui. Consequuntur similique ut eligendi sunt in praesentium. Blanditiis deserunt sapiente et sed possimus quos temporibus veritatis. Est sint quaerat nisi. Officiis quasi quam facilis.\n<h2>Quis ratione eos est assumenda exercitationem aut pariatur. Iusto consectetur rerum officiis. Repellendus aliquid blanditiis quos magnam</h2>\nCorrupti quis aspernatur distinctio. Cupiditate occaecati aut qui doloremque qui dolore. explicabo atque libero. Laudantium blanditiis quia voluptas aspernatur maiores quod. Dolorem quia culpa voluptatem esse. ut ea voluptate neque. Non dolore accusantium ducimus eaque est. Placeat soluta facilis quia voluptate. voluptates autem laborum velit est Nihil tempora corporis labore soluta tempore veritatis. sapiente aut quidem tempore Architecto sit est nam velit et quia. nostrum animi quo minima incidunt <a title=\"Excepturi quidem esse et ut.\" href=\"http://www.nikolaus.info/nulla-ullam-magni-et-reprehenderit-non-enim.html\">nisi.</a> aut ducimus facilis eius tempora quo et. Nesciunt facere distinctio iure. soluta quia quo error velit ipsa.\n\nMagni <a title=\"Debitis illo rerum.\" href=\"http://greenholt.biz/dolor-consectetur-dolorum-asperiores-iusto-autem-blanditiis\">ut doloribus sed quas</a> aperiam. quas ut sed Sit necessitatibus quis aliquid iste vitae. omnis atque tempora iste. repellat numquam facere Nihil <a title=\"Est distinctio aperiam ullam.\" href=\"http://streich.com/earum-rerum-quis-amet-quos\">voluptatem</a> eum. Voluptas repudiandae aut nemo rerum. Dolor dolor fugit aspernatur explicabo. Corporis sapiente adipisci dolor.\n<h3>Est incidunt saepe rerum maxime. Recusandae maxime commodi voluptas sunt rerum fugit. Tempore autem incidunt odio quibusdam</h3>\n<img class=\"alignright\" src=\"http://localhost/blog2/wp-content/uploads/2023/06/3cf61b7f-a299-3633-9bc8-3095c9ab10ff.jpg\">\n<img alt=\"Saepe soluta\" src=\"http://localhost/blog2/wp-content/uploads/2023/06/0cccd14e-f5ae-39eb-98d0-93dcd9dd9ddc.png\">\n<h3>Occaecati sit tempore dolores voluptatem. Recusandae velit odit id assumenda omnis eius. Magni maxime ipsa est debitis iste. Vero aliquam recusandae non</h3>\n<img class=\"aligncenter\" alt=\"Perspiciatis temporibus temporibus\" src=\"http://localhost/blog2/wp-content/uploads/2023/06/ff2ca14c-da55-3c4d-ac75-0206b234b664.jpg\">\n<h1>Pariatur ea facere necessitatibus natus qui et</h1>\n<a title=\"Error in voluptatem unde.\" href=\"http://koelpin.com/\">Odio sit saepe recusandae. Quo nam</a> et voluptatibus magnam eius. incidunt quas hic officiis et ut. Sed voluptates excepturi inventore <a title=\"Rerum consequatur eum.\" href=\"https://www.donnelly.com/aperiam-beatae-voluptatum-aliquam-consequatur-sed-quo\">natus nobis vero. In dolore</a> aspernatur aspernatur <a title=\"Aliquid consequatur ipsam porro.\" href=\"http://ankunding.biz/quod-eum-quam-illum-aut.html\">ea sint</a> <a title=\"Ut dignissimos dolor est aut.\" href=\"http://www.turner.com/accusantium-facilis-et-explicabo-dolore-neque-ducimus-ab-itaque.html\">Aut laborum dolore exercitationem.</a> minus esse sunt velit. Laboriosam eos vero quo. Ducimus quia officiis velit vitae et odit.\n<h3>Aut deleniti dolore quas aut quis deleniti illum. Non rerum et excepturi in</h3>\n<img src=\"http://localhost/blog2/wp-content/uploads/2023/06/06954f23-2eac-3ead-9e81-027642dec240.jpg\">\n\nDucimus excepturi autem et ut ipsa aut. Architecto eveniet qui distinctio. Ex est molestiae nulla dolor <a title=\"Nisi est dolorum mollitia consequatur necessitatibus cum.\" href=\"http://www.hansen.com/quia-ducimus-fuga-voluptas-et-fugiat-asperiores.html\">repellat.</a>\n\n<img alt=\"In ut aspernatur saepe ducimus quo\" src=\"http://localhost/blog2/wp-content/uploads/2023/06/b9e0299d-15b4-34d3-b3df-669695963405.jpg\">', 'Dako feet', 'Vero eius.\n\nHic voluptates.', 'inherit', 'closed', 'closed', '', '82-revision-v1', '', '', '2023-06-22 02:11:13', '2023-06-22 02:11:13', '', 82, 'http://localhost/blog2/?p=102', 0, 'revision', '', 0),
(103, 1, '2023-06-22 04:12:54', '2023-06-22 04:12:54', '', 'images (1)', '', 'inherit', 'open', 'closed', '', 'images-1-2', '', '', '2023-06-22 04:12:54', '2023-06-22 04:12:54', '', 24, 'http://localhost/blog2/wp-content/uploads/2023/06/images-1-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(104, 1, '2023-06-22 04:12:54', '2023-06-22 04:12:54', '', 'images (2)', '', 'inherit', 'open', 'closed', '', 'images-2-2', '', '', '2023-06-22 04:12:54', '2023-06-22 04:12:54', '', 24, 'http://localhost/blog2/wp-content/uploads/2023/06/images-2-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(105, 1, '2023-06-22 04:12:55', '2023-06-22 04:12:55', '', 'images (3)', '', 'inherit', 'open', 'closed', '', 'images-3', '', '', '2023-06-22 04:12:55', '2023-06-22 04:12:55', '', 24, 'http://localhost/blog2/wp-content/uploads/2023/06/images-3.jpg', 0, 'attachment', 'image/jpeg', 0),
(106, 1, '2023-06-22 04:12:55', '2023-06-22 04:12:55', '', 'images (4)', '', 'inherit', 'open', 'closed', '', 'images-4', '', '', '2023-06-22 04:12:55', '2023-06-22 04:12:55', '', 24, 'http://localhost/blog2/wp-content/uploads/2023/06/images-4.jpg', 0, 'attachment', 'image/jpeg', 0),
(107, 1, '2023-06-22 04:12:56', '2023-06-22 04:12:56', '', 'images', '', 'inherit', 'open', 'closed', '', 'images', '', '', '2023-06-22 04:12:56', '2023-06-22 04:12:56', '', 24, 'http://localhost/blog2/wp-content/uploads/2023/06/images.jpg', 0, 'attachment', 'image/jpeg', 0),
(108, 1, '2023-06-22 04:15:56', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2023-06-22 04:15:56', '0000-00-00 00:00:00', '', 0, 'http://localhost/blog2/?p=108', 0, 'post', '', 0),
(109, 1, '2023-06-22 04:17:28', '2023-06-22 04:17:28', '<!-- wp:paragraph -->\n<p>Welcome to WordPress. This is your first post. Edit or delete it, then start writing!&nbsp;Lorem ipsum dolor sit amet consectetur adipisicing elit. Quam ad assumenda nemo minus voluptate doloremque, nisi amet. Explicabo, reprehenderit necessitatibus?&nbsp;Lorem ipsum dolor sit amet consectetur adipisicing elit. Quam ad assumenda nemo minus voluptate doloremque, nisi amet. Explicabo, reprehenderit necessitatibus?</p>\n<!-- /wp:paragraph -->', 'Hello world!', '', 'inherit', 'closed', 'closed', '', '1-revision-v1', '', '', '2023-06-22 04:17:28', '2023-06-22 04:17:28', '', 1, 'http://localhost/blog2/?p=109', 0, 'revision', '', 0),
(110, 1, '2023-06-22 04:33:19', '2023-06-22 04:33:19', '', 'Contact', '', 'publish', 'closed', 'closed', '', 'contact', '', '', '2023-06-22 04:33:20', '2023-06-22 04:33:20', '', 0, 'http://localhost/blog2/?page_id=110', 0, 'page', '', 0),
(111, 1, '2023-06-22 04:33:19', '2023-06-22 04:33:19', '', 'Contact', '', 'inherit', 'closed', 'closed', '', '110-revision-v1', '', '', '2023-06-22 04:33:19', '2023-06-22 04:33:19', '', 110, 'http://localhost/blog2/?p=111', 0, 'revision', '', 0),
(112, 1, '2023-06-22 04:33:50', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2023-06-22 04:33:50', '0000-00-00 00:00:00', '', 0, 'http://localhost/blog2/?p=112', 1, 'nav_menu_item', '', 0),
(113, 1, '2023-06-23 07:28:25', '2023-06-22 04:38:21', ' ', '', '', 'publish', 'closed', 'closed', '', '113', '', '', '2023-06-23 07:28:25', '2023-06-23 07:28:25', '', 0, 'http://localhost/blog2/?p=113', 2, 'nav_menu_item', '', 0),
(114, 1, '2023-06-22 04:53:08', '2023-06-22 04:53:08', '<div class=\"form-wrapper\">\r\n    <label> Fullname [text* fullname] </label>\r\n</div>\r\n\r\n<div class=\"form-wrapper\">\r\n    <label> Email [email* email] </label>\r\n</div>\r\n\r\n<div class=\"form-wrapper\">\r\n    <label> Subject [text* subject] </label>\r\n</div>\r\n\r\n<div class=\"form-wrapper\">\r\n    <label> Message [textarea* message] </label>\r\n</div>\r\n\r\n[submit \"Send Message\"]\n1\n[_site_title] \"[subject]\"\n[_site_title] <lowrenceborja2116@gmail.com>\n[_site_admin_email]\nFrom: [name] [email]\r\nSubject: [subject]\r\n\r\nMessage Body:\r\n[your-message]\r\n\r\n-- \r\nThis e-mail was sent from a contact form on [_site_title] ([_site_url])\nReply-To: [email]\n\n\n\n1\n[_site_title] \"[subject]\"\n[_site_title] <lowrenceborja2116@gmail.com>\n[email]\nMessage Body:\r\n[message]\r\nito ay reply ahahahaha\r\n-- \r\nThis e-mail was sent from a contact form on [_site_title] ([_site_url])\nReply-To: [_site_admin_email]\n\n\n\nThank you for your message. It has been sent.\nThere was an error trying to send your message. Please try again later.\nOne or more fields have an error. Please check and try again.\nThere was an error trying to send your message. Please try again later.\nYou must accept the terms and conditions before sending your message.\nPlease fill out this field.\nThis field has a too long input.\nThis field has a too short input.\nThere was an unknown error uploading the file.\nYou are not allowed to upload files of this type.\nThe uploaded file is too large.\nThere was an error uploading the file.\nPlease enter a date in YYYY-MM-DD format.\nThis field has a too early date.\nThis field has a too late date.\nPlease enter a number.\nThis field has a too small number.\nThis field has a too large number.\nThe answer to the quiz is incorrect.\nPlease enter an email address.\nPlease enter a URL.\nPlease enter a telephone number.', 'Contact form 1', '', 'publish', 'closed', 'closed', '', 'contact-form-1', '', '', '2023-06-22 05:10:23', '2023-06-22 05:10:23', '', 0, 'http://localhost/blog2/?post_type=wpcf7_contact_form&#038;p=114', 0, 'wpcf7_contact_form', '', 0),
(115, 1, '2023-06-22 05:56:18', '2023-06-22 05:56:18', '<!-- wp:html -->\n<img src=\"https://daily.jstor.org/wp-content/uploads/2020/06/why_you_should_learn_the_names_of_trees_1050x700.jpg\" alt=\"\">\n        <article>\n            <h2>Virgin Tree</h2>\n            <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Voluptas, laborum voluptatem delectus pariatur nisi natus, necessitatibus porro laboriosam magni impedit ullam praesentium accusantium quis vero quasi eius odit ab? Reprehenderit.</p>\n        </article>\n<!-- /wp:html -->', 'About', '', 'publish', 'closed', 'closed', '', 'about', '', '', '2023-06-23 07:02:20', '2023-06-23 07:02:20', '', 0, 'http://localhost/blog2/?page_id=115', 0, 'page', '', 0),
(116, 1, '2023-06-22 05:56:18', '2023-06-22 05:56:18', '', 'About', '', 'inherit', 'closed', 'closed', '', '115-revision-v1', '', '', '2023-06-22 05:56:18', '2023-06-22 05:56:18', '', 115, 'http://localhost/blog2/?p=116', 0, 'revision', '', 0),
(117, 1, '2023-06-23 07:28:25', '2023-06-22 05:56:59', ' ', '', '', 'publish', 'closed', 'closed', '', '117', '', '', '2023-06-23 07:28:25', '2023-06-23 07:28:25', '', 0, 'http://localhost/blog2/?p=117', 1, 'nav_menu_item', '', 0),
(118, 1, '2023-06-22 23:43:27', '2023-06-22 23:43:27', '<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Temporibus perferendis porro eligendi illo itaque consequatur dignissimos nulla fuga consectetur eaque enim aut, sed, harum earum excepturi ea reprehenderit. Fugiat, aliquam.Lorem ipsum dolor sit amet consectetur adipisicing elit. </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Temporibus perferendis porro eligendi illo itaque consequatur dignissimos nulla fuga consectetur eaque enim aut, sed, harum earum excepturi ea reprehenderit. Fugiat, aliquam.Lorem ipsum dolor sit amet consectetur adipisicing elit. Temporibus perferendis porro eligendi illo itaque consequatur dignissimos nulla fuga consectetur eaque enim aut, sed, harum earum excepturi ea reprehenderit. Fugiat, </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>aliquam.Lorem ipsum dolor sit amet consectetur adipisicing elit. Temporibus perferendis porro eligendi illo itaque consequatur dignissimos nulla fuga consectetur eaque enim aut, sed, harum earum excepturi ea reprehenderit. Fugiat, aliquam.Lorem ipsum dolor sit amet consectetur adipisicing elit. Temporibus </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:image {\"id\":81,\"sizeSlug\":\"full\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-full\"><img src=\"http://localhost/blog2/wp-content/uploads/2023/06/b9e0299d-15b4-34d3-b3df-669695963405.jpg\" alt=\"\" class=\"wp-image-81\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:paragraph -->\n<p>perferendis porro eligendi illo itaque consequatur dignissimos nulla fuga consectetur eaque enim aut, sed, harum earum excepturi ea reprehenderit. Fugiat, aliquam.Lorem ipsum dolor sit amet consectetur adipisicing elit. Temporibus perferendis porro eligendi illo itaque consequatur dignissimos nulla fuga consectetur eaque enim aut, sed, harum earum excepturi ea reprehenderit. Fugiat, aliquam.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:gallery {\"linkTo\":\"none\"} -->\n<figure class=\"wp-block-gallery has-nested-images columns-default is-cropped\"><!-- wp:image {\"id\":89,\"sizeSlug\":\"large\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-large\"><img src=\"http://localhost/blog2/wp-content/uploads/2023/06/8094d9f1-7b99-3f60-bf40-d6a5fc3a25b6.jpg\" alt=\"\" class=\"wp-image-89\"/></figure>\n<!-- /wp:image --></figure>\n<!-- /wp:gallery -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'ito ay testing post', 'asfasdfasfas dfafasfasfasfasfasfasnnnak hahahhahhhhahahhahhahhahahahahahaha', 'publish', 'open', 'open', '', 'ito-ay-testing-post', '', '', '2023-06-23 00:17:36', '2023-06-23 00:17:36', '', 0, 'http://localhost/blog2/?p=118', 0, 'post', '', 0),
(119, 1, '2023-06-22 23:42:47', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2023-06-22 23:42:47', '0000-00-00 00:00:00', '', 0, 'http://localhost/blog2/?p=119', 0, 'post', '', 0),
(120, 1, '2023-06-22 23:43:27', '2023-06-22 23:43:27', '', 'ito ay testing post', 'asfasdfasfas dfafasfasfasfasfasfasnnnak hahahhahhhhahahhahhahhahahahahahaha', 'inherit', 'closed', 'closed', '', '118-revision-v1', '', '', '2023-06-22 23:43:27', '2023-06-22 23:43:27', '', 118, 'http://localhost/blog2/?p=120', 0, 'revision', '', 0),
(122, 1, '2023-06-23 00:16:20', '2023-06-23 00:16:20', '<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Temporibus perferendis porro eligendi illo itaque consequatur dignissimos nulla fuga consectetur eaque enim aut, sed, harum earum excepturi ea reprehenderit. Fugiat, aliquam.Lorem ipsum dolor sit amet consectetur adipisicing elit. </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Temporibus perferendis porro eligendi illo itaque consequatur dignissimos nulla fuga consectetur eaque enim aut, sed, harum earum excepturi ea reprehenderit. Fugiat, aliquam.Lorem ipsum dolor sit amet consectetur adipisicing elit. Temporibus perferendis porro eligendi illo itaque consequatur dignissimos nulla fuga consectetur eaque enim aut, sed, harum earum excepturi ea reprehenderit. Fugiat, </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>aliquam.Lorem ipsum dolor sit amet consectetur adipisicing elit. Temporibus perferendis porro eligendi illo itaque consequatur dignissimos nulla fuga consectetur eaque enim aut, sed, harum earum excepturi ea reprehenderit. Fugiat, aliquam.Lorem ipsum dolor sit amet consectetur adipisicing elit. Temporibus </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:image {\"id\":81,\"sizeSlug\":\"full\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-full\"><img src=\"http://localhost/blog2/wp-content/uploads/2023/06/b9e0299d-15b4-34d3-b3df-669695963405.jpg\" alt=\"\" class=\"wp-image-81\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:paragraph -->\n<p>perferendis porro eligendi illo itaque consequatur dignissimos nulla fuga consectetur eaque enim aut, sed, harum earum excepturi ea reprehenderit. Fugiat, aliquam.Lorem ipsum dolor sit amet consectetur adipisicing elit. Temporibus perferendis porro eligendi illo itaque consequatur dignissimos nulla fuga consectetur eaque enim aut, sed, harum earum excepturi ea reprehenderit. Fugiat, aliquam.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:gallery {\"linkTo\":\"none\"} -->\n<figure class=\"wp-block-gallery has-nested-images columns-default is-cropped\"><!-- wp:image {\"id\":89,\"sizeSlug\":\"large\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-large\"><img src=\"http://localhost/blog2/wp-content/uploads/2023/06/8094d9f1-7b99-3f60-bf40-d6a5fc3a25b6.jpg\" alt=\"\" class=\"wp-image-89\"/></figure>\n<!-- /wp:image --></figure>\n<!-- /wp:gallery -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'ito ay testing post', 'asfasdfasfas dfafasfasfasfasfasfasnnnak hahahhahhhhahahhahhahhahahahahahaha', 'inherit', 'closed', 'closed', '', '118-revision-v1', '', '', '2023-06-23 00:16:20', '2023-06-23 00:16:20', '', 118, 'http://localhost/blog2/?p=122', 0, 'revision', '', 0),
(123, 1, '2023-06-23 04:35:12', '2023-06-23 04:35:12', '<!-- wp:html -->\n <img src=\"https://daily.jstor.org/wp-content/uploads/2020/06/why_you_should_learn_the_names_of_trees_1050x700.jpg\" alt=\"\">\n        <article>\n            <h2>Virgin Tree</h2>\n            <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Voluptas, laborum voluptatem delectus pariatur nisi natus, necessitatibus porro laboriosam magni impedit ullam praesentium accusantium quis vero quasi eius odit ab? Reprehenderit.</p>\n        </article>\n<!-- /wp:html -->', 'About', '', 'inherit', 'closed', 'closed', '', '115-revision-v1', '', '', '2023-06-23 04:35:12', '2023-06-23 04:35:12', '', 115, 'http://localhost/blog2/?p=123', 0, 'revision', '', 0),
(124, 1, '2023-06-23 04:37:54', '2023-06-23 04:37:54', '<!-- wp:code -->\n<pre class=\"wp-block-code\"><code> <img src=\"https://daily.jstor.org/wp-content/uploads/2020/06/why_you_should_learn_the_names_of_trees_1050x700.jpg\" alt=\"\">\n        <article>\n            <h2>Virgin Tree</h2>\n            <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Voluptas, laborum voluptatem delectus pariatur nisi natus, necessitatibus porro laboriosam magni impedit ullam praesentium accusantium quis vero quasi eius odit ab? Reprehenderit.</p>\n        </article></code></pre>\n<!-- /wp:code -->', 'About', '', 'inherit', 'closed', 'closed', '', '115-revision-v1', '', '', '2023-06-23 04:37:54', '2023-06-23 04:37:54', '', 115, 'http://localhost/blog2/?p=124', 0, 'revision', '', 0),
(125, 1, '2023-06-23 04:40:02', '2023-06-23 04:40:02', '<!-- wp:html -->\n <img src=\"https://daily.jstor.org/wp-content/uploads/2020/06/why_you_should_learn_the_names_of_trees_1050x700.jpg\" alt=\"\">\n        <article>\n            <h2>Virgin Tree</h2>\n            <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Voluptas, laborum voluptatem delectus pariatur nisi natus, necessitatibus porro laboriosam magni impedit ullam praesentium accusantium quis vero quasi eius odit ab? Reprehenderit.</p>\n        </article>\n<!-- /wp:html -->', 'About', '', 'inherit', 'closed', 'closed', '', '115-revision-v1', '', '', '2023-06-23 04:40:02', '2023-06-23 04:40:02', '', 115, 'http://localhost/blog2/?p=125', 0, 'revision', '', 0),
(126, 1, '2023-06-23 05:10:08', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2023-06-23 05:10:08', '0000-00-00 00:00:00', '', 0, 'http://localhost/blog2/?post_type=testimonials&p=126', 0, 'testimonials', '', 0),
(127, 1, '2023-06-23 05:14:13', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2023-06-23 05:14:13', '0000-00-00 00:00:00', '', 0, 'http://localhost/blog2/?post_type=testimonials&p=127', 0, 'testimonials', '', 0),
(128, 1, '2023-06-23 05:14:18', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2023-06-23 05:14:18', '0000-00-00 00:00:00', '', 0, 'http://localhost/blog2/?post_type=testimonials&p=128', 0, 'testimonials', '', 0),
(129, 1, '2023-06-23 05:14:21', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2023-06-23 05:14:21', '0000-00-00 00:00:00', '', 0, 'http://localhost/blog2/?post_type=testimonials&p=129', 0, 'testimonials', '', 0),
(130, 1, '2023-06-23 05:14:35', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2023-06-23 05:14:35', '0000-00-00 00:00:00', '', 0, 'http://localhost/blog2/?post_type=testimonials&p=130', 0, 'testimonials', '', 0),
(131, 1, '2023-06-23 05:19:43', '2023-06-23 05:19:43', 'Ang gwapo ni sir Ivan', 'Trisha Sayno', '', 'publish', 'closed', 'closed', '', 'trisha-sayno', '', '', '2023-06-23 06:46:04', '2023-06-23 06:46:04', '', 0, 'http://localhost/blog2/?post_type=testimonials&#038;p=131', 0, 'testimonials', '', 0),
(132, 1, '2023-06-23 05:19:35', '2023-06-23 05:19:35', '', 'images (3)', '', 'inherit', 'open', 'closed', '', 'images-3-2', '', '', '2023-06-23 05:19:35', '2023-06-23 05:19:35', '', 131, 'http://localhost/blog2/wp-content/uploads/2023/06/images-3-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(133, 1, '2023-06-23 05:24:02', '2023-06-23 05:24:02', 'iyak tawa haahahhaha', 'Ck Lipnica', '', 'publish', 'closed', 'closed', '', 'ck-lipnica', '', '', '2023-06-23 06:45:15', '2023-06-23 06:45:15', '', 0, 'http://localhost/blog2/?post_type=testimonials&#038;p=133', 0, 'testimonials', '', 0),
(134, 1, '2023-06-23 05:22:46', '2023-06-23 05:22:46', '', 'images (1)', '', 'inherit', 'open', 'closed', '', 'images-1-3', '', '', '2023-06-23 05:22:46', '2023-06-23 05:22:46', '', 133, 'http://localhost/blog2/wp-content/uploads/2023/06/images-1-2.jpg', 0, 'attachment', 'image/jpeg', 0),
(135, 1, '2023-06-23 05:22:47', '2023-06-23 05:22:47', '', 'images', '', 'inherit', 'open', 'closed', '', 'images-5', '', '', '2023-06-23 05:22:47', '2023-06-23 05:22:47', '', 133, 'http://localhost/blog2/wp-content/uploads/2023/06/images-5.jpg', 0, 'attachment', 'image/jpeg', 0),
(136, 1, '2023-06-23 05:24:57', '2023-06-23 05:24:57', 'kalampag', 'ahahhaha', '', 'publish', 'closed', 'closed', '', 'tito-badang', '', '', '2023-06-23 06:45:42', '2023-06-23 06:45:42', '', 0, 'http://localhost/blog2/?post_type=testimonials&#038;p=136', 0, 'testimonials', '', 0),
(137, 1, '2023-06-23 06:04:48', '2023-06-23 06:04:48', '<div>\r\n<div>Lorem ipsum dolor sit amet consectetur adipisicing elit. Tenetur, quasi.</div>\r\n</div>', 'member1', '', 'publish', 'closed', 'closed', '', 'member1', '', '', '2023-06-23 06:29:42', '2023-06-23 06:29:42', '', 0, 'http://localhost/blog2/?post_type=members&#038;p=137', 0, 'members', '', 0),
(138, 1, '2023-06-23 06:01:51', '2023-06-23 06:01:51', '', 'download (1)', '', 'inherit', 'open', 'closed', '', 'download-1', '', '', '2023-06-23 06:01:51', '2023-06-23 06:01:51', '', 137, 'http://localhost/blog2/wp-content/uploads/2023/06/download-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(139, 1, '2023-06-23 06:01:52', '2023-06-23 06:01:52', '', 'images (4)', '', 'inherit', 'open', 'closed', '', 'images-4-2', '', '', '2023-06-23 06:01:52', '2023-06-23 06:01:52', '', 137, 'http://localhost/blog2/wp-content/uploads/2023/06/images-4-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(140, 1, '2023-06-23 06:01:53', '2023-06-23 06:01:53', '', 'images (2)', '', 'inherit', 'open', 'closed', '', 'images-2-3', '', '', '2023-06-23 06:01:53', '2023-06-23 06:01:53', '', 137, 'http://localhost/blog2/wp-content/uploads/2023/06/images-2-2.jpg', 0, 'attachment', 'image/jpeg', 0),
(141, 1, '2023-06-23 06:07:27', '2023-06-23 06:07:27', '<div>\r\n<div>Lorem ipsum dolor sit amet consectetur adipisicing elit. Consectetur, eum.</div>\r\n</div>', 'member2', '', 'publish', 'closed', 'closed', '', 'member2', '', '', '2023-06-23 06:29:07', '2023-06-23 06:29:07', '', 0, 'http://localhost/blog2/?post_type=members&#038;p=141', 0, 'members', '', 0),
(142, 1, '2023-06-23 06:10:38', '2023-06-23 06:10:38', '<div>\r\n<div>Lorem ipsum, dolor sit amet consectetur adipisicing elit. Similique, quas</div>\r\n</div>', 'member3', '', 'publish', 'closed', 'closed', '', 'member3', '', '', '2023-06-23 06:29:10', '2023-06-23 06:29:10', '', 0, 'http://localhost/blog2/?post_type=members&#038;p=142', 0, 'members', '', 0),
(143, 1, '2023-06-23 06:34:43', '2023-06-23 06:34:43', '', 'member4', '', 'publish', 'closed', 'closed', '', 'member4', '', '', '2023-06-23 06:34:43', '2023-06-23 06:34:43', '', 0, 'http://localhost/blog2/?post_type=members&#038;p=143', 0, 'members', '', 0),
(144, 1, '2023-06-23 06:55:06', '2023-06-23 06:55:06', '', 'members', '', 'publish', 'closed', 'closed', '', 'members', '', '', '2023-06-23 06:55:07', '2023-06-23 06:55:07', '', 0, 'http://localhost/blog2/?page_id=144', 0, 'page', '', 0),
(145, 1, '2023-06-23 06:55:06', '2023-06-23 06:55:06', '', 'members', '', 'inherit', 'closed', 'closed', '', '144-revision-v1', '', '', '2023-06-23 06:55:06', '2023-06-23 06:55:06', '', 144, 'http://localhost/blog2/?p=145', 0, 'revision', '', 0),
(146, 1, '2023-06-23 07:02:19', '2023-06-23 07:02:19', '<!-- wp:html -->\n<img src=\"https://daily.jstor.org/wp-content/uploads/2020/06/why_you_should_learn_the_names_of_trees_1050x700.jpg\" alt=\"\">\n        <article>\n            <h2>Virgin Tree</h2>\n            <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Voluptas, laborum voluptatem delectus pariatur nisi natus, necessitatibus porro laboriosam magni impedit ullam praesentium accusantium quis vero quasi eius odit ab? Reprehenderit.</p>\n        </article>\n<!-- /wp:html -->', 'About', '', 'inherit', 'closed', 'closed', '', '115-revision-v1', '', '', '2023-06-23 07:02:19', '2023-06-23 07:02:19', '', 115, 'http://localhost/blog2/?p=146', 0, 'revision', '', 0),
(147, 1, '2023-06-23 07:28:25', '2023-06-23 07:27:54', ' ', '', '', 'publish', 'closed', 'closed', '', '147', '', '', '2023-06-23 07:28:25', '2023-06-23 07:28:25', '', 0, 'http://localhost/blog2/?p=147', 3, 'nav_menu_item', '', 0),
(148, 1, '2023-06-23 07:27:23', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2023-06-23 07:27:23', '0000-00-00 00:00:00', '', 0, 'http://localhost/blog2/?p=148', 1, 'nav_menu_item', '', 0),
(149, 1, '2023-06-23 07:27:23', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2023-06-23 07:27:23', '0000-00-00 00:00:00', '', 0, 'http://localhost/blog2/?p=149', 1, 'nav_menu_item', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_termmeta`
--

CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_terms`
--

CREATE TABLE `wp_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) NOT NULL DEFAULT '',
  `slug` varchar(200) NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Uncategorized', 'uncategorized', 0),
(2, 'twentytwentythree', 'twentytwentythree', 0),
(3, 'card-sm-banner', 'card-sm-banner', 0),
(4, 'lg-banner', 'lg-banner', 0),
(5, 'latest-md', 'latest-md', 0),
(6, 'fashion', 'fashion', 0),
(7, 'Feature-Lg', 'feature-lg', 0),
(8, 'feature-md', 'feature-md', 0),
(9, 'feature-mini', 'feature-mini', 0),
(10, 'Header_Menu', 'header_menu', 0),
(11, 'Footer_Menu', 'footer_menu', 0),
(12, 'black and white', 'black-and-white', 0),
(13, 'decoration', 'decoration', 0),
(14, 'monotone', 'monotone', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_relationships`
--

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `term_order` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 4, 0),
(5, 2, 0),
(13, 3, 0),
(15, 3, 0),
(18, 3, 0),
(24, 5, 0),
(24, 6, 0),
(27, 5, 0),
(29, 5, 0),
(31, 5, 0),
(33, 5, 0),
(35, 7, 0),
(42, 8, 0),
(44, 8, 0),
(46, 8, 0),
(51, 9, 0),
(53, 9, 0),
(55, 1, 0),
(55, 9, 0),
(57, 9, 0),
(59, 9, 0),
(62, 9, 0),
(66, 1, 0),
(69, 1, 0),
(73, 1, 0),
(77, 1, 0),
(82, 1, 0),
(85, 1, 0),
(91, 1, 0),
(93, 1, 0),
(94, 1, 0),
(96, 1, 0),
(98, 1, 0),
(113, 10, 0),
(117, 10, 0),
(118, 1, 0),
(118, 12, 0),
(118, 13, 0),
(118, 14, 0),
(147, 10, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_taxonomy`
--

CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `taxonomy` varchar(32) NOT NULL DEFAULT '',
  `description` longtext NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `count` bigint(20) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 13),
(2, 2, 'wp_theme', '', 0, 1),
(3, 3, 'category', '', 0, 3),
(4, 4, 'category', '', 0, 1),
(5, 5, 'category', '', 0, 3),
(6, 6, 'category', '', 0, 1),
(7, 7, 'category', '', 0, 1),
(8, 8, 'category', '', 0, 3),
(9, 9, 'category', '', 0, 6),
(10, 10, 'nav_menu', '', 0, 3),
(11, 11, 'nav_menu', '', 0, 0),
(12, 12, 'post_tag', '', 0, 1),
(13, 13, 'post_tag', '', 0, 1),
(14, 14, 'post_tag', '', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `wp_usermeta`
--

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'Lowrence'),
(2, 1, 'first_name', 'Fermin'),
(3, 1, 'last_name', 'Gas'),
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
(16, 1, 'session_tokens', 'a:2:{s:64:\"cd0b829ff8d4bd42c573fbf3c3139c1188369a88866311798a22568e09968a77\";a:4:{s:10:\"expiration\";i:1687911383;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:111:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36\";s:5:\"login\";i:1687738583;}s:64:\"43ff40abc4d5e4bd8e97b6870787e9d10449b5e41303998ab74a3bfa2d25f0d0\";a:4:{s:10:\"expiration\";i:1687911384;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:111:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36\";s:5:\"login\";i:1687738584;}}'),
(17, 1, 'wp_dashboard_quick_press_last_post_id', '4'),
(18, 1, 'wp_persisted_preferences', 'a:2:{s:14:\"core/edit-post\";a:3:{s:26:\"isComplementaryAreaVisible\";b:1;s:12:\"welcomeGuide\";b:0;s:10:\"openPanels\";a:4:{i:0;s:11:\"post-status\";i:1;s:23:\"taxonomy-panel-category\";i:2;s:12:\"post-excerpt\";i:3;s:23:\"taxonomy-panel-post_tag\";}}s:9:\"_modified\";s:24:\"2023-06-23T00:12:40.580Z\";}'),
(19, 1, 'wp_user-settings', 'libraryContent=browse'),
(20, 1, 'wp_user-settings-time', '1687326015'),
(21, 1, 'wp_media_library_mode', 'grid'),
(22, 1, 'enable_custom_fields', '1'),
(23, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:\"link-target\";i:1;s:11:\"css-classes\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";i:4;s:15:\"title-attribute\";}'),
(24, 1, 'metaboxhidden_nav-menus', 'a:1:{i:0;s:12:\"add-post_tag\";}'),
(25, 1, 'nav_menu_recently_edited', '10'),
(26, 1, 'closedpostboxes_testimonials', 'a:0:{}'),
(27, 1, 'metaboxhidden_testimonials', 'a:1:{i:0;s:7:\"slugdiv\";}');

-- --------------------------------------------------------

--
-- Table structure for table `wp_users`
--

CREATE TABLE `wp_users` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `user_login` varchar(60) NOT NULL DEFAULT '',
  `user_pass` varchar(255) NOT NULL DEFAULT '',
  `user_nicename` varchar(50) NOT NULL DEFAULT '',
  `user_email` varchar(100) NOT NULL DEFAULT '',
  `user_url` varchar(100) NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT 0,
  `display_name` varchar(250) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'Lowrence', '$P$BFho5iyoAd0kcLSV.KkpNcPxMi3VkO0', 'lowrence', 'lowrenceborja2116@gmail.com', 'http://localhost/blog2', '2023-06-20 23:58:20', '', 0, 'Lowrence');

-- --------------------------------------------------------

--
-- Table structure for table `wp_wpmailsmtp_debug_events`
--

CREATE TABLE `wp_wpmailsmtp_debug_events` (
  `id` int(10) UNSIGNED NOT NULL,
  `content` text DEFAULT NULL,
  `initiator` text DEFAULT NULL,
  `event_type` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_wpmailsmtp_debug_events`
--

INSERT INTO `wp_wpmailsmtp_debug_events` (`id`, `content`, `initiator`, `event_type`, `created_at`) VALUES
(1, 'Mailer: Other SMTP\r\nSMTP Error: Could not connect to SMTP host. Failed to connect to serverSMTP server error: Failed to connect to server Additional SMTP info: php_network_getaddresses: getaddrinfo for smtp.gmail.home failed: No such host is known.', '{\"file\":\"C:\\\\xampp\\\\htdocs\\\\blog2\\\\wp-content\\\\plugins\\\\wp-mail-smtp\\\\src\\\\Admin\\\\Pages\\\\TestTab.php\",\"line\":344}', 0, '2023-06-21 21:28:19'),
(2, 'Mailer: Other SMTP\r\nPHPMailer was able to connect to SMTP server but failed while trying to send an email.', '{\"file\":\"C:\\\\xampp\\\\htdocs\\\\blog2\\\\wp-content\\\\plugins\\\\wp-mail-smtp\\\\src\\\\Admin\\\\Pages\\\\TestTab.php\",\"line\":344}', 0, '2023-06-21 21:31:52'),
(3, 'Mailer: Other SMTP\r\nSMTP Error: The following recipients failed: lowrenceborja2116@gmail.com: Sorry 49.144.193.144. The \"MAIL FROM\" email address\r\nlowrenceborja2116@gmail.com / gmail.com you are using is not hosted on this\r\nserver. Tried to use lowrenceborja2116@gmail.com / gmail.com as mail from\r\naddress. Sending mails from addresses not hosted on our server is not\r\nallowed. Please check the \"MAIL FROM\" settings of your mail client and make\r\nsure you set the \"MAIL FROM\" address to an email account which is hosted on\r\nthe server.', '{\"file\":\"C:\\\\xampp\\\\htdocs\\\\blog2\\\\wp-content\\\\plugins\\\\wp-mail-smtp\\\\src\\\\Admin\\\\Pages\\\\TestTab.php\",\"line\":344}', 0, '2023-06-21 21:31:52'),
(4, 'Mailer: Other SMTP\r\nPHPMailer was able to connect to SMTP server but failed while trying to send an email.', '{\"file\":\"C:\\\\xampp\\\\htdocs\\\\blog2\\\\wp-content\\\\plugins\\\\wp-mail-smtp\\\\src\\\\Admin\\\\Pages\\\\TestTab.php\",\"line\":344}', 0, '2023-06-21 21:38:53'),
(5, 'Mailer: Other SMTP\r\nSMTP Error: The following recipients failed: lpborja@iskolarngbayan.pup.edu.ph: Sorry 49.144.193.144. The \"MAIL FROM\" email address\r\nlowrenceborja2116@gmail.com / gmail.com you are using is not hosted on this\r\nserver. Tried to use lowrenceborja2116@gmail.com / gmail.com as mail from\r\naddress. Sending mails from addresses not hosted on our server is not\r\nallowed. Please check the \"MAIL FROM\" settings of your mail client and make\r\nsure you set the \"MAIL FROM\" address to an email account which is hosted on\r\nthe server.', '{\"file\":\"C:\\\\xampp\\\\htdocs\\\\blog2\\\\wp-content\\\\plugins\\\\wp-mail-smtp\\\\src\\\\Admin\\\\Pages\\\\TestTab.php\",\"line\":344}', 0, '2023-06-21 21:38:53'),
(6, 'Mailer: Other SMTP\r\nSMTP Error: Could not connect to SMTP host. Failed to connect to serverSMTP server error: Failed to connect to server SMTP code: 10060 Additional SMTP info: A connection attempt failed because the connected party did not properly respond after a period of time, or established connection failed because connected host has failed to respond', '{\"file\":\"C:\\\\xampp\\\\htdocs\\\\blog2\\\\wp-content\\\\plugins\\\\contact-form-7\\\\includes\\\\mail.php\",\"line\":258}', 0, '2023-06-21 21:46:52');

-- --------------------------------------------------------

--
-- Table structure for table `wp_wpmailsmtp_tasks_meta`
--

CREATE TABLE `wp_wpmailsmtp_tasks_meta` (
  `id` bigint(20) NOT NULL,
  `action` varchar(255) NOT NULL,
  `data` longtext NOT NULL,
  `date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `wp_actionscheduler_actions`
--
ALTER TABLE `wp_actionscheduler_actions`
  ADD PRIMARY KEY (`action_id`),
  ADD KEY `hook` (`hook`),
  ADD KEY `status` (`status`),
  ADD KEY `scheduled_date_gmt` (`scheduled_date_gmt`),
  ADD KEY `args` (`args`),
  ADD KEY `group_id` (`group_id`),
  ADD KEY `last_attempt_gmt` (`last_attempt_gmt`),
  ADD KEY `claim_id_status_scheduled_date_gmt` (`claim_id`,`status`,`scheduled_date_gmt`);

--
-- Indexes for table `wp_actionscheduler_claims`
--
ALTER TABLE `wp_actionscheduler_claims`
  ADD PRIMARY KEY (`claim_id`),
  ADD KEY `date_created_gmt` (`date_created_gmt`);

--
-- Indexes for table `wp_actionscheduler_groups`
--
ALTER TABLE `wp_actionscheduler_groups`
  ADD PRIMARY KEY (`group_id`),
  ADD KEY `slug` (`slug`(191));

--
-- Indexes for table `wp_actionscheduler_logs`
--
ALTER TABLE `wp_actionscheduler_logs`
  ADD PRIMARY KEY (`log_id`),
  ADD KEY `action_id` (`action_id`),
  ADD KEY `log_date_gmt` (`log_date_gmt`);

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
  ADD UNIQUE KEY `option_name` (`option_name`),
  ADD KEY `autoload` (`autoload`);

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
-- Indexes for table `wp_wpmailsmtp_debug_events`
--
ALTER TABLE `wp_wpmailsmtp_debug_events`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wp_wpmailsmtp_tasks_meta`
--
ALTER TABLE `wp_wpmailsmtp_tasks_meta`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `wp_actionscheduler_actions`
--
ALTER TABLE `wp_actionscheduler_actions`
  MODIFY `action_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=121;

--
-- AUTO_INCREMENT for table `wp_actionscheduler_claims`
--
ALTER TABLE `wp_actionscheduler_claims`
  MODIFY `claim_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=429;

--
-- AUTO_INCREMENT for table `wp_actionscheduler_groups`
--
ALTER TABLE `wp_actionscheduler_groups`
  MODIFY `group_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `wp_actionscheduler_logs`
--
ALTER TABLE `wp_actionscheduler_logs`
  MODIFY `log_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_comments`
--
ALTER TABLE `wp_comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `wp_links`
--
ALTER TABLE `wp_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_options`
--
ALTER TABLE `wp_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=869;

--
-- AUTO_INCREMENT for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=410;

--
-- AUTO_INCREMENT for table `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=150;

--
-- AUTO_INCREMENT for table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_terms`
--
ALTER TABLE `wp_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `wp_wpmailsmtp_debug_events`
--
ALTER TABLE `wp_wpmailsmtp_debug_events`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `wp_wpmailsmtp_tasks_meta`
--
ALTER TABLE `wp_wpmailsmtp_tasks_meta`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
