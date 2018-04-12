-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Apr 11, 2018 at 08:57 PM
-- Server version: 5.6.35
-- PHP Version: 7.0.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Database: `hirewick`
--

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
(1, 1, 'A WordPress Commenter', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2018-04-09 14:26:12', '2018-04-09 14:26:12', 'Hi, this is a comment.\nTo get started with moderating, editing, and deleting comments, please visit the Comments screen in the dashboard.\nCommenter avatars come from <a href=\"https://gravatar.com\">Gravatar</a>.', 0, '1', '', '', 0, 0),
(2, 1, 'A WordPress Commenter', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2018-04-09 14:26:12', '2018-04-09 14:26:12', 'Hi, this is a comment.\nTo get started with moderating, editing, and deleting comments, please visit the Comments screen in the dashboard.\nCommenter avatars come from <a href=\"https://gravatar.com\">Gravatar</a>.', 0, '1', '', '', 0, 0);

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
(1, 'siteurl', 'http://localhost:8888', 'yes'),
(2, 'home', 'http://localhost:8888', 'yes'),
(3, 'blogname', 'Hirewick', 'yes'),
(4, 'blogdescription', '', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'steph.symosko@gmail.com', 'yes'),
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
(28, 'permalink_structure', '/%year%/%monthnum%/%day%/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:91:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:12:\"robots\\.txt$\";s:18:\"index.php?robots=1\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:27:\"comment-page-([0-9]{1,})/?$\";s:39:\"index.php?&page_id=11&cpage=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:58:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:68:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:88:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:64:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:53:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/embed/?$\";s:91:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/trackback/?$\";s:85:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&tb=1\";s:77:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:65:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&paged=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&cpage=$matches[5]\";s:61:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)(?:/([0-9]+))?/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&page=$matches[5]\";s:47:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:57:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:77:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:53:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&cpage=$matches[4]\";s:51:\"([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&cpage=$matches[3]\";s:38:\"([0-9]{4})/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&cpage=$matches[2]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:2:{i:0;s:47:\"one-click-demo-import/one-click-demo-import.php\";i:1;s:41:\"wordpress-importer/wordpress-importer.php\";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', 'a:2:{i:0;s:68:\"/Users/steph/Sites/hirewick/wp-content/themes/astrid-child/style.css\";i:1;s:0:\"\";}', 'no'),
(40, 'template', 'astrid', 'yes'),
(41, 'stylesheet', 'astrid-child', 'yes'),
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
(53, 'show_on_front', 'page', 'yes'),
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
(79, 'widget_text', 'a:12:{i:1;a:11:{s:5:\"title\";s:8:\"ABOUT US\";s:4:\"text\";s:289:\"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis euismod \r\nvitae erat eget consequat. Integer id suscipit lacus, a aliquet ipsum.\r\nInteger interdum auctorlorem eu imperdiet. Vivamus et sem eros. Pellent\r\nesque sed turpis eu nisi suscipit rutrum non quis erat. Sed risus massa.\";s:6:\"filter\";b:0;s:9:\"sectionId\";s:0:\"\";s:16:\"background_color\";s:7:\"#202529\";s:10:\"text_color\";s:0:\"\";s:18:\"widget_title_color\";s:7:\"#ffffff\";s:12:\"column_width\";s:4:\"half\";s:9:\"image_uri\";s:0:\"\";s:7:\"padding\";i:100;s:12:\"no_container\";b:0;}i:2;a:11:{s:5:\"title\";s:8:\"WORKFLOW\";s:4:\"text\";s:386:\"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis euismod vitae erat eget consequat. Integer id suscipit lacus, a aliquet ipsum.\r\nInteger interdum auctorlorem eu imperdiet. Vivamus et sem eros. Pellentesque sed turpis eu nisi suscipit rutrum non quis erat. Sed risus massa. Vivamus et sem eros. Pellentesque sed turpis eu nisi suscipit rutrum non quis erat. Sed risus massa.\";s:6:\"filter\";b:0;s:9:\"sectionId\";s:0:\"\";s:16:\"background_color\";s:7:\"#202529\";s:10:\"text_color\";s:0:\"\";s:18:\"widget_title_color\";s:7:\"#ffffff\";s:12:\"column_width\";s:4:\"half\";s:9:\"image_uri\";s:0:\"\";s:7:\"padding\";i:100;s:12:\"no_container\";b:0;}i:3;a:11:{s:5:\"title\";s:0:\"\";s:4:\"text\";s:86:\"<img src=\"http://demo.athemes.com/astrid/wp-content/uploads/sites/50/2016/02/w1.png\"/>\";s:6:\"filter\";b:0;s:9:\"sectionId\";s:0:\"\";s:16:\"background_color\";s:7:\"#fcd088\";s:10:\"text_color\";s:0:\"\";s:18:\"widget_title_color\";s:0:\"\";s:12:\"column_width\";s:4:\"half\";s:9:\"image_uri\";s:0:\"\";s:7:\"padding\";i:100;s:12:\"no_container\";b:0;}i:4;a:11:{s:5:\"title\";s:0:\"\";s:4:\"text\";s:86:\"<img src=\"http://demo.athemes.com/astrid/wp-content/uploads/sites/50/2016/02/w2.png\"/>\";s:6:\"filter\";b:0;s:9:\"sectionId\";s:0:\"\";s:16:\"background_color\";s:7:\"#ddae76\";s:10:\"text_color\";s:0:\"\";s:18:\"widget_title_color\";s:0:\"\";s:12:\"column_width\";s:4:\"half\";s:9:\"image_uri\";s:0:\"\";s:7:\"padding\";i:100;s:12:\"no_container\";b:0;}i:5;a:11:{s:5:\"title\";s:0:\"\";s:4:\"text\";s:86:\"<img src=\"http://demo.athemes.com/astrid/wp-content/uploads/sites/50/2016/02/w3.png\"/>\";s:6:\"filter\";b:0;s:9:\"sectionId\";s:0:\"\";s:16:\"background_color\";s:7:\"#cd9e6a\";s:10:\"text_color\";s:0:\"\";s:18:\"widget_title_color\";s:0:\"\";s:12:\"column_width\";s:4:\"half\";s:9:\"image_uri\";s:0:\"\";s:7:\"padding\";i:100;s:12:\"no_container\";b:0;}i:6;a:11:{s:5:\"title\";s:8:\"PROJECTS\";s:4:\"text\";s:75:\"<div style=\"text-align:center;\">Check out some of our latest projects</div>\";s:6:\"filter\";b:0;s:9:\"sectionId\";s:0:\"\";s:16:\"background_color\";s:7:\"#202529\";s:10:\"text_color\";s:0:\"\";s:18:\"widget_title_color\";s:7:\"#ffffff\";s:12:\"column_width\";s:4:\"full\";s:9:\"image_uri\";s:0:\"\";s:7:\"padding\";i:50;s:12:\"no_container\";b:0;}i:8;a:11:{s:5:\"title\";s:4:\"TEXT\";s:4:\"text\";s:508:\"Lorem ipsum dolor sit amet, consectetur adipiscing elit. In in nisi ut libero luctus aliquet non in nisl. Quisque id efficitur dui. Donec sollicitudin cursus lorem facilisis varius. Phasellus posuere lorem lectus, quis viverra velit imperdiet vel. Morbi sem sapien, malesuada sed ultrices vitae, ullamcorper id ligula. Maecenas quis euismod velit, quis gravida nulla. Phasellus non venenatis nibh. Mauris pharetra luctus orci at volutpat. Praesent sed imperdiet elit. Nulla facilisi. Donec sed tortor turpis.\";s:6:\"filter\";b:0;s:9:\"sectionId\";s:0:\"\";s:16:\"background_color\";s:0:\"\";s:10:\"text_color\";s:0:\"\";s:18:\"widget_title_color\";s:0:\"\";s:12:\"column_width\";s:4:\"full\";s:9:\"image_uri\";s:0:\"\";s:7:\"padding\";i:100;s:12:\"no_container\";b:0;}i:9;a:11:{s:5:\"title\";s:4:\"TEXT\";s:4:\"text\";s:508:\"Lorem ipsum dolor sit amet, consectetur adipiscing elit. In in nisi ut libero luctus aliquet non in nisl. Quisque id efficitur dui. Donec sollicitudin cursus lorem facilisis varius. Phasellus posuere lorem lectus, quis viverra velit imperdiet vel. Morbi sem sapien, malesuada sed ultrices vitae, ullamcorper id ligula. Maecenas quis euismod velit, quis gravida nulla. Phasellus non venenatis nibh. Mauris pharetra luctus orci at volutpat. Praesent sed imperdiet elit. Nulla facilisi. Donec sed tortor turpis.\";s:6:\"filter\";b:0;s:9:\"sectionId\";s:0:\"\";s:16:\"background_color\";s:0:\"\";s:10:\"text_color\";s:0:\"\";s:18:\"widget_title_color\";s:0:\"\";s:12:\"column_width\";s:4:\"full\";s:9:\"image_uri\";s:0:\"\";s:7:\"padding\";i:100;s:12:\"no_container\";b:0;}i:10;a:11:{s:5:\"title\";s:0:\"\";s:4:\"text\";s:685:\"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque volutpat varius rutrum. Cras lobortis molestie dignissim. Vivamus ac nunc eget neque dictum ultricies. Etiam egestas imperdiet purus vitae eleifend. Praesent tellus sapien, ornare sed orci vel, posuere consectetur nisl. Aenean consectetur iaculis dui sed sodales. Quisque porta aliquet luctus. Aenean euismod ante erat, et tristique ligula pretium eu. Etiam eu pellentesque erat. Curabitur eleifend urna enim, ac vehicula ipsum interdum eu. Quisque ac varius massa, a malesuada turpis. Proin eu leo eu est finibus malesuada. Sed semper nulla in posuere sagittis. Etiam gravida purus sit amet erat sollicitudin tincidunt.\";s:6:\"filter\";b:0;s:9:\"sectionId\";s:0:\"\";s:16:\"background_color\";s:7:\"#dd1313\";s:10:\"text_color\";s:0:\"\";s:18:\"widget_title_color\";s:0:\"\";s:12:\"column_width\";s:5:\"third\";s:9:\"image_uri\";s:0:\"\";s:7:\"padding\";i:100;s:12:\"no_container\";b:0;}i:11;a:11:{s:5:\"title\";s:0:\"\";s:4:\"text\";s:685:\"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque volutpat varius rutrum. Cras lobortis molestie dignissim. Vivamus ac nunc eget neque dictum ultricies. Etiam egestas imperdiet purus vitae eleifend. Praesent tellus sapien, ornare sed orci vel, posuere consectetur nisl. Aenean consectetur iaculis dui sed sodales. Quisque porta aliquet luctus. Aenean euismod ante erat, et tristique ligula pretium eu. Etiam eu pellentesque erat. Curabitur eleifend urna enim, ac vehicula ipsum interdum eu. Quisque ac varius massa, a malesuada turpis. Proin eu leo eu est finibus malesuada. Sed semper nulla in posuere sagittis. Etiam gravida purus sit amet erat sollicitudin tincidunt.\";s:6:\"filter\";b:0;s:9:\"sectionId\";s:0:\"\";s:16:\"background_color\";s:7:\"#b2b2b2\";s:10:\"text_color\";s:0:\"\";s:18:\"widget_title_color\";s:0:\"\";s:12:\"column_width\";s:5:\"third\";s:9:\"image_uri\";s:0:\"\";s:7:\"padding\";i:100;s:12:\"no_container\";b:0;}i:12;a:11:{s:5:\"title\";s:0:\"\";s:4:\"text\";s:685:\"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque volutpat varius rutrum. Cras lobortis molestie dignissim. Vivamus ac nunc eget neque dictum ultricies. Etiam egestas imperdiet purus vitae eleifend. Praesent tellus sapien, ornare sed orci vel, posuere consectetur nisl. Aenean consectetur iaculis dui sed sodales. Quisque porta aliquet luctus. Aenean euismod ante erat, et tristique ligula pretium eu. Etiam eu pellentesque erat. Curabitur eleifend urna enim, ac vehicula ipsum interdum eu. Quisque ac varius massa, a malesuada turpis. Proin eu leo eu est finibus malesuada. Sed semper nulla in posuere sagittis. Etiam gravida purus sit amet erat sollicitudin tincidunt.\";s:6:\"filter\";b:0;s:9:\"sectionId\";s:0:\"\";s:16:\"background_color\";s:7:\"#eeee22\";s:10:\"text_color\";s:0:\"\";s:18:\"widget_title_color\";s:0:\"\";s:12:\"column_width\";s:5:\"third\";s:9:\"image_uri\";s:0:\"\";s:7:\"padding\";i:100;s:12:\"no_container\";b:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(80, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(81, 'uninstall_plugins', 'a:0:{}', 'no'),
(82, 'timezone_string', '', 'yes'),
(83, 'page_for_posts', '82', 'yes'),
(84, 'page_on_front', '11', 'yes'),
(85, 'default_post_format', '0', 'yes'),
(86, 'link_manager_enabled', '0', 'yes'),
(87, 'finished_splitting_shared_terms', '1', 'yes'),
(88, 'site_icon', '0', 'yes'),
(89, 'medium_large_size_w', '768', 'yes'),
(90, 'medium_large_size_h', '0', 'yes'),
(91, 'initial_db_version', '38590', 'yes'),
(183, 'wp_user_roles', 'a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}', 'yes'),
(184, 'fresh_site', '0', 'yes'),
(185, 'widget_search', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(186, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(187, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(188, 'widget_archives', 'a:2:{i:2;a:3:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(189, 'widget_meta', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(190, 'sidebars_widgets', 'a:8:{s:19:\"wp_inactive_widgets\";a:18:{i:0;s:22:\"atframework_services-1\";i:1;s:6:\"text-1\";i:2;s:20:\"atframework_skills-1\";i:3;s:19:\"atframework_facts-1\";i:4;s:23:\"atframework_employees-1\";i:5;s:6:\"text-2\";i:6;s:6:\"text-3\";i:7;s:6:\"text-4\";i:8;s:6:\"text-5\";i:9;s:6:\"text-6\";i:10;s:26:\"atframework_testimonials-1\";i:11;s:21:\"atframework_clients-1\";i:12;s:6:\"text-8\";i:13;s:22:\"atframework_projects-2\";i:14;s:6:\"text-9\";i:15;s:7:\"text-10\";i:16;s:7:\"text-11\";i:17;s:7:\"text-12\";}s:9:\"sidebar-1\";a:9:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";i:6;s:26:\"atframework-recent-posts-1\";i:7;s:27:\"atframework_social_widget-1\";i:8;s:19:\"atframework_video-1\";}s:20:\"widget-area-homepage\";a:2:{i:0;s:26:\"atframework_testimonials-3\";i:1;s:22:\"atframework_projects-4\";}s:22:\"widget-area-homepage-2\";a:0:{}s:8:\"footer-1\";a:1:{i:0;s:13:\"custom_html-2\";}s:8:\"footer-2\";a:1:{i:0;s:13:\"custom_html-3\";}s:8:\"footer-3\";a:1:{i:0;s:27:\"atframework_social_widget-2\";}s:13:\"array_version\";i:3;}', 'yes'),
(191, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(192, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(193, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(194, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(195, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(196, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(197, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(198, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(199, 'widget_custom_html', 'a:3:{i:2;a:10:{s:5:\"title\";s:19:\"Download References\";s:7:\"content\";s:30:\"link1 <br>\r\nlink2 <br>\r\nlink3 \";s:9:\"sectionId\";s:0:\"\";s:16:\"background_color\";s:0:\"\";s:10:\"text_color\";s:0:\"\";s:18:\"widget_title_color\";s:0:\"\";s:12:\"column_width\";s:4:\"full\";s:9:\"image_uri\";s:0:\"\";s:7:\"padding\";i:100;s:12:\"no_container\";b:0;}i:3;a:10:{s:5:\"title\";s:7:\"Contact\";s:7:\"content\";s:76:\"<i class=\"fa fa-envelope\"></i> Email <br>\r\n<i class=\"fa fa-phone\"></i> Phone\";s:9:\"sectionId\";s:0:\"\";s:16:\"background_color\";s:0:\"\";s:10:\"text_color\";s:0:\"\";s:18:\"widget_title_color\";s:0:\"\";s:12:\"column_width\";s:4:\"full\";s:9:\"image_uri\";s:0:\"\";s:7:\"padding\";i:100;s:12:\"no_container\";b:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(200, 'cron', 'a:4:{i:1523499972;a:3:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1523543209;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1523543308;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}s:7:\"version\";i:2;}', 'yes'),
(201, 'theme_mods_twentyseventeen', 'a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1523284078;s:4:\"data\";a:4:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:9:\"sidebar-2\";a:0:{}s:9:\"sidebar-3\";a:0:{}}}}', 'yes'),
(205, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-4.9.5.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-4.9.5.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-4.9.5-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-4.9.5-new-bundled.zip\";s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"4.9.5\";s:7:\"version\";s:5:\"4.9.5\";s:11:\"php_version\";s:5:\"5.2.4\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"4.7\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1523457772;s:15:\"version_checked\";s:5:\"4.9.5\";s:12:\"translations\";a:0:{}}', 'no'),
(211, '_site_transient_timeout_browser_431aebda11d8f5105624c76c8ecb67aa', '1523888810', 'no'),
(212, '_site_transient_browser_431aebda11d8f5105624c76c8ecb67aa', 'a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:13:\"65.0.3325.162\";s:8:\"platform\";s:9:\"Macintosh\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'no'),
(220, 'can_compress_scripts', '1', 'no'),
(229, '_site_transient_update_themes', 'O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1523457773;s:7:\"checked\";a:5:{s:12:\"astrid-child\";s:0:\"\";s:6:\"astrid\";s:4:\"1.15\";s:13:\"twentyfifteen\";s:3:\"1.9\";s:15:\"twentyseventeen\";s:3:\"1.5\";s:13:\"twentysixteen\";s:3:\"1.4\";}s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}}', 'no'),
(230, 'current_theme', 'Astrid Child Theme', 'yes'),
(231, 'theme_mods_astrid', 'a:11:{i:0;b:0;s:18:\"nav_menu_locations\";a:2:{s:7:\"primary\";i:4;s:6:\"footer\";i:4;}s:18:\"custom_css_post_id\";i:-1;s:11:\"header_text\";s:8:\"Hirewick\";s:14:\"header_subtext\";s:0:\"\";s:13:\"header_button\";s:0:\"\";s:17:\"header_button_url\";s:0:\"\";s:10:\"menu_style\";s:6:\"inline\";s:17:\"front_header_type\";s:5:\"image\";s:16:\"site_header_type\";s:7:\"nothing\";s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1523286550;s:4:\"data\";a:6:{s:19:\"wp_inactive_widgets\";a:18:{i:0;s:22:\"atframework_services-1\";i:1;s:6:\"text-1\";i:2;s:20:\"atframework_skills-1\";i:3;s:19:\"atframework_facts-1\";i:4;s:23:\"atframework_employees-1\";i:5;s:6:\"text-2\";i:6;s:6:\"text-3\";i:7;s:6:\"text-4\";i:8;s:6:\"text-5\";i:9;s:6:\"text-6\";i:10;s:26:\"atframework_testimonials-1\";i:11;s:21:\"atframework_clients-1\";i:12;s:6:\"text-8\";i:13;s:22:\"atframework_projects-2\";i:14;s:6:\"text-9\";i:15;s:7:\"text-10\";i:16;s:7:\"text-11\";i:17;s:7:\"text-12\";}s:9:\"sidebar-1\";a:9:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";i:6;s:26:\"atframework-recent-posts-1\";i:7;s:27:\"atframework_social_widget-1\";i:8;s:19:\"atframework_video-1\";}s:20:\"widget-area-homepage\";a:2:{i:0;s:26:\"atframework_testimonials-3\";i:1;s:22:\"atframework_projects-4\";}s:8:\"footer-1\";a:1:{i:0;s:10:\"nav_menu-1\";}s:8:\"footer-2\";a:1:{i:0;s:10:\"nav_menu-2\";}s:8:\"footer-3\";a:1:{i:0;s:6:\"text-7\";}}}}', 'yes'),
(232, 'theme_switched', '', 'yes'),
(233, 'widget_atframework_social_widget', 'a:3:{i:1;a:10:{s:5:\"title\";s:0:\"\";s:8:\"nav_menu\";N;s:9:\"sectionId\";s:0:\"\";s:16:\"background_color\";s:0:\"\";s:10:\"text_color\";s:0:\"\";s:18:\"widget_title_color\";s:0:\"\";s:12:\"column_width\";s:4:\"full\";s:9:\"image_uri\";s:0:\"\";s:7:\"padding\";i:100;s:12:\"no_container\";b:0;}i:2;a:10:{s:5:\"title\";s:0:\"\";s:8:\"nav_menu\";i:4;s:9:\"sectionId\";s:0:\"\";s:16:\"background_color\";s:0:\"\";s:10:\"text_color\";s:0:\"\";s:18:\"widget_title_color\";s:0:\"\";s:12:\"column_width\";s:4:\"full\";s:9:\"image_uri\";s:0:\"\";s:7:\"padding\";i:100;s:12:\"no_container\";b:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(238, 'recently_activated', 'a:0:{}', 'yes'),
(246, 'widget_atframework-recent-posts', 'a:2:{i:1;a:11:{s:5:\"title\";s:12:\"Recent posts\";s:6:\"number\";i:5;s:9:\"show_date\";b:1;s:9:\"sectionId\";s:0:\"\";s:16:\"background_color\";s:0:\"\";s:10:\"text_color\";s:0:\"\";s:18:\"widget_title_color\";s:0:\"\";s:12:\"column_width\";s:4:\"full\";s:9:\"image_uri\";s:0:\"\";s:7:\"padding\";i:100;s:12:\"no_container\";b:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(247, 'widget_atframework_video', 'a:2:{i:1;a:10:{s:5:\"title\";s:5:\"Video\";s:3:\"url\";s:27:\"https://vimeo.com/109054393\";s:9:\"sectionId\";s:0:\"\";s:16:\"background_color\";s:0:\"\";s:10:\"text_color\";s:0:\"\";s:18:\"widget_title_color\";s:0:\"\";s:12:\"column_width\";s:4:\"full\";s:9:\"image_uri\";s:0:\"\";s:7:\"padding\";i:100;s:12:\"no_container\";b:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(248, 'widget_atframework_services', 'a:2:{i:1;a:13:{s:5:\"title\";s:8:\"SERVICES\";s:6:\"number\";s:2:\"-1\";s:6:\"offset\";s:1:\"0\";s:7:\"see_all\";s:0:\"\";s:12:\"see_all_text\";s:0:\"\";s:9:\"sectionId\";s:0:\"\";s:16:\"background_color\";s:0:\"\";s:10:\"text_color\";s:0:\"\";s:18:\"widget_title_color\";s:0:\"\";s:12:\"column_width\";s:4:\"full\";s:9:\"image_uri\";s:0:\"\";s:7:\"padding\";i:100;s:12:\"no_container\";b:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(249, 'widget_atframework_skills', 'a:2:{i:1;a:19:{s:5:\"title\";s:0:\"\";s:9:\"skill_one\";s:6:\"DESIGN\";s:13:\"skill_one_max\";i:90;s:9:\"skill_two\";s:7:\"DRAWING\";s:13:\"skill_two_max\";i:72;s:11:\"skill_three\";s:8:\"BUSINESS\";s:15:\"skill_three_max\";i:84;s:10:\"skill_four\";s:10:\"ACCOUNTING\";s:14:\"skill_four_max\";i:92;s:10:\"skill_five\";s:8:\"PLANNING\";s:14:\"skill_five_max\";i:80;s:9:\"sectionId\";s:0:\"\";s:16:\"background_color\";s:7:\"#242a30\";s:10:\"text_color\";s:7:\"#a0a0a0\";s:18:\"widget_title_color\";s:0:\"\";s:12:\"column_width\";s:4:\"half\";s:9:\"image_uri\";s:0:\"\";s:7:\"padding\";i:100;s:12:\"no_container\";b:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(250, 'widget_atframework_facts', 'a:2:{i:1;a:21:{s:5:\"title\";s:5:\"FACTS\";s:8:\"fact_one\";s:6:\"Emails\";s:12:\"fact_one_max\";s:3:\"124\";s:13:\"fact_one_icon\";s:13:\"fa-envelope-o\";s:8:\"fact_two\";s:6:\"Leaves\";s:12:\"fact_two_max\";s:3:\"991\";s:13:\"fact_two_icon\";s:7:\"fa-leaf\";s:10:\"fact_three\";s:7:\"Coffees\";s:14:\"fact_three_max\";s:3:\"224\";s:15:\"fact_three_icon\";s:9:\"fa-coffee\";s:9:\"fact_four\";s:7:\"Cameras\";s:13:\"fact_four_max\";s:2:\"33\";s:14:\"fact_four_icon\";s:15:\"fa-camera-retro\";s:9:\"sectionId\";s:5:\"facts\";s:16:\"background_color\";s:7:\"#202529\";s:10:\"text_color\";s:0:\"\";s:18:\"widget_title_color\";s:7:\"#ffffff\";s:12:\"column_width\";s:4:\"full\";s:9:\"image_uri\";s:0:\"\";s:7:\"padding\";i:100;s:12:\"no_container\";b:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(251, 'widget_atframework_employees', 'a:2:{i:1;a:13:{s:5:\"title\";s:4:\"TEAM\";s:6:\"number\";s:2:\"-1\";s:6:\"offset\";s:1:\"0\";s:7:\"see_all\";s:0:\"\";s:12:\"see_all_text\";s:0:\"\";s:9:\"sectionId\";s:4:\"team\";s:16:\"background_color\";s:0:\"\";s:10:\"text_color\";s:0:\"\";s:18:\"widget_title_color\";s:0:\"\";s:12:\"column_width\";s:4:\"full\";s:9:\"image_uri\";s:0:\"\";s:7:\"padding\";i:100;s:12:\"no_container\";b:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(252, 'widget_atframework_projects', 'a:3:{i:2;a:13:{s:5:\"title\";s:0:\"\";s:6:\"number\";s:2:\"-1\";s:6:\"offset\";s:1:\"0\";s:7:\"see_all\";s:0:\"\";s:12:\"see_all_text\";s:0:\"\";s:9:\"sectionId\";s:0:\"\";s:16:\"background_color\";s:0:\"\";s:10:\"text_color\";s:0:\"\";s:18:\"widget_title_color\";s:0:\"\";s:12:\"column_width\";s:4:\"full\";s:9:\"image_uri\";s:0:\"\";s:7:\"padding\";i:100;s:12:\"no_container\";b:0;}s:12:\"_multiwidget\";i:1;i:4;a:14:{s:5:\"title\";s:8:\"Showcase\";s:6:\"number\";s:2:\"-1\";s:6:\"offset\";s:1:\"0\";s:7:\"see_all\";s:0:\"\";s:12:\"see_all_text\";s:0:\"\";s:7:\"pageids\";s:0:\"\";s:9:\"sectionId\";s:0:\"\";s:16:\"background_color\";s:0:\"\";s:10:\"text_color\";s:0:\"\";s:18:\"widget_title_color\";s:0:\"\";s:12:\"column_width\";s:4:\"full\";s:9:\"image_uri\";s:0:\"\";s:7:\"padding\";i:50;s:12:\"no_container\";b:1;}}', 'yes'),
(253, 'widget_atframework_testimonials', 'a:3:{i:1;a:13:{s:5:\"title\";s:12:\"Testimonials\";s:6:\"number\";s:2:\"-1\";s:6:\"offset\";s:1:\"0\";s:7:\"see_all\";s:0:\"\";s:12:\"see_all_text\";s:0:\"\";s:9:\"sectionId\";s:0:\"\";s:16:\"background_color\";s:0:\"\";s:10:\"text_color\";s:0:\"\";s:18:\"widget_title_color\";s:0:\"\";s:12:\"column_width\";s:4:\"full\";s:9:\"image_uri\";s:0:\"\";s:7:\"padding\";i:100;s:12:\"no_container\";b:0;}s:12:\"_multiwidget\";i:1;i:3;a:14:{s:5:\"title\";s:10:\"References\";s:6:\"number\";s:2:\"-1\";s:6:\"offset\";s:1:\"0\";s:7:\"see_all\";s:0:\"\";s:12:\"see_all_text\";s:0:\"\";s:7:\"pageids\";s:0:\"\";s:9:\"sectionId\";s:0:\"\";s:16:\"background_color\";s:7:\"#efefef\";s:10:\"text_color\";s:0:\"\";s:18:\"widget_title_color\";s:0:\"\";s:12:\"column_width\";s:4:\"full\";s:9:\"image_uri\";s:0:\"\";s:7:\"padding\";i:100;s:12:\"no_container\";b:0;}}', 'yes'),
(254, 'widget_atframework_clients', 'a:2:{i:1;a:13:{s:5:\"title\";s:7:\"CLIENTS\";s:6:\"number\";s:2:\"-1\";s:6:\"offset\";s:1:\"0\";s:7:\"see_all\";s:0:\"\";s:12:\"see_all_text\";s:0:\"\";s:9:\"sectionId\";s:0:\"\";s:16:\"background_color\";s:0:\"\";s:10:\"text_color\";s:0:\"\";s:18:\"widget_title_color\";s:7:\"#ffffff\";s:12:\"column_width\";s:4:\"full\";s:9:\"image_uri\";s:94:\"http://demo.athemes.com/astrid/wp-content/uploads/sites/50/2016/02/skyscraper-1149541_1920.jpg\";s:7:\"padding\";i:100;s:12:\"no_container\";b:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(257, 'widget_atframework_posts', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(264, '_site_transient_update_plugins', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1523457773;s:7:\"checked\";a:4:{s:19:\"akismet/akismet.php\";s:5:\"4.0.3\";s:9:\"hello.php\";s:3:\"1.7\";s:47:\"one-click-demo-import/one-click-demo-import.php\";s:5:\"2.5.0\";s:41:\"wordpress-importer/wordpress-importer.php\";s:5:\"0.6.4\";}s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:4:{s:19:\"akismet/akismet.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:21:\"w.org/plugins/akismet\";s:4:\"slug\";s:7:\"akismet\";s:6:\"plugin\";s:19:\"akismet/akismet.php\";s:11:\"new_version\";s:5:\"4.0.3\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/akismet/\";s:7:\"package\";s:56:\"https://downloads.wordpress.org/plugin/akismet.4.0.3.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:59:\"https://ps.w.org/akismet/assets/icon-256x256.png?rev=969272\";s:2:\"1x\";s:59:\"https://ps.w.org/akismet/assets/icon-128x128.png?rev=969272\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:61:\"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904\";}s:11:\"banners_rtl\";a:0:{}}s:9:\"hello.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:25:\"w.org/plugins/hello-dolly\";s:4:\"slug\";s:11:\"hello-dolly\";s:6:\"plugin\";s:9:\"hello.php\";s:11:\"new_version\";s:3:\"1.6\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/hello-dolly/\";s:7:\"package\";s:58:\"https://downloads.wordpress.org/plugin/hello-dolly.1.6.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:63:\"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=969907\";s:2:\"1x\";s:63:\"https://ps.w.org/hello-dolly/assets/icon-128x128.jpg?rev=969907\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:65:\"https://ps.w.org/hello-dolly/assets/banner-772x250.png?rev=478342\";}s:11:\"banners_rtl\";a:0:{}}s:47:\"one-click-demo-import/one-click-demo-import.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:35:\"w.org/plugins/one-click-demo-import\";s:4:\"slug\";s:21:\"one-click-demo-import\";s:6:\"plugin\";s:47:\"one-click-demo-import/one-click-demo-import.php\";s:11:\"new_version\";s:5:\"2.5.0\";s:3:\"url\";s:52:\"https://wordpress.org/plugins/one-click-demo-import/\";s:7:\"package\";s:70:\"https://downloads.wordpress.org/plugin/one-click-demo-import.2.5.0.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:74:\"https://ps.w.org/one-click-demo-import/assets/icon-256x256.png?rev=1694310\";s:2:\"1x\";s:74:\"https://ps.w.org/one-click-demo-import/assets/icon-128x128.png?rev=1694310\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:77:\"https://ps.w.org/one-click-demo-import/assets/banner-1544x500.png?rev=1694310\";s:2:\"1x\";s:76:\"https://ps.w.org/one-click-demo-import/assets/banner-772x250.png?rev=1694310\";}s:11:\"banners_rtl\";a:0:{}}s:41:\"wordpress-importer/wordpress-importer.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:32:\"w.org/plugins/wordpress-importer\";s:4:\"slug\";s:18:\"wordpress-importer\";s:6:\"plugin\";s:41:\"wordpress-importer/wordpress-importer.php\";s:11:\"new_version\";s:5:\"0.6.4\";s:3:\"url\";s:49:\"https://wordpress.org/plugins/wordpress-importer/\";s:7:\"package\";s:67:\"https://downloads.wordpress.org/plugin/wordpress-importer.0.6.4.zip\";s:5:\"icons\";a:1:{s:7:\"default\";s:69:\"https://s.w.org/plugins/geopattern-icon/wordpress-importer_5696b3.svg\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:72:\"https://ps.w.org/wordpress-importer/assets/banner-772x250.png?rev=547654\";}s:11:\"banners_rtl\";a:0:{}}}}', 'no'),
(265, 'category_children', 'a:0:{}', 'yes'),
(275, 'theme_mods_astrid-child', 'a:13:{i:0;b:0;s:18:\"nav_menu_locations\";a:2:{s:6:\"footer\";i:7;s:7:\"primary\";i:6;}s:18:\"custom_css_post_id\";i:-1;s:16:\"body_font_family\";s:38:\"font-family: \'Montserrat\', sans-serif;\";s:14:\"body_font_name\";s:44:\"//fonts.googleapis.com/css?family=Montserrat\";s:18:\"headings_font_name\";s:44:\"//fonts.googleapis.com/css?family=Oswald:600\";s:20:\"headings_font_family\";s:34:\"font-family: \'Oswald\', sans-serif;\";s:12:\"header_image\";s:76:\"http://localhost:8888/wp-content/uploads/2018/04/cropped-hirewick_header.jpg\";s:17:\"header_image_data\";O:8:\"stdClass\":5:{s:13:\"attachment_id\";i:291;s:3:\"url\";s:76:\"http://localhost:8888/wp-content/uploads/2018/04/cropped-hirewick_header.jpg\";s:13:\"thumbnail_url\";s:76:\"http://localhost:8888/wp-content/uploads/2018/04/cropped-hirewick_header.jpg\";s:6:\"height\";i:1080;s:5:\"width\";i:1920;}s:13:\"mobile_header\";s:75:\"http://localhost:8888/wp-content/uploads/2018/04/hirewick_header_mobile.jpg\";s:20:\"footer_contact_email\";s:25:\"jared@wickphotography.com\";s:20:\"footer_contact_phone\";s:12:\"740-243-1208\";s:21:\"toggle_contact_footer\";s:0:\"\";}', 'yes'),
(280, '_site_transient_timeout_browser_cffcb8140921e0d14b31935178051df3', '1523973789', 'no'),
(281, '_site_transient_browser_cffcb8140921e0d14b31935178051df3', 'a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:13:\"65.0.3325.181\";s:8:\"platform\";s:9:\"Macintosh\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'no'),
(325, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:\"auto_add\";a:0:{}}', 'yes'),
(335, '_site_transient_timeout_theme_roots', '1523459573', 'no'),
(336, '_site_transient_theme_roots', 'a:5:{s:12:\"astrid-child\";s:7:\"/themes\";s:6:\"astrid\";s:7:\"/themes\";s:13:\"twentyfifteen\";s:7:\"/themes\";s:15:\"twentyseventeen\";s:7:\"/themes\";s:13:\"twentysixteen\";s:7:\"/themes\";}', 'no'),
(345, '_transient_is_multi_author', '1', 'yes');

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
(2, 2, '_wp_page_template', 'default'),
(5, 4, '_edit_lock', '1523283964:1'),
(6, 7, '_edit_last', '1'),
(7, 7, '_edit_lock', '1523284088:1'),
(8, 7, '_wp_page_template', 'default'),
(11, 10, '_wp_attached_file', '2018/04/log_file_2018-04-09__14-31-25.txt'),
(12, 11, '_wp_page_template', 'page-templates/page_widgetized.php'),
(13, 12, '_wp_attached_file', '2016/02/s6.jpg'),
(14, 12, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:60;s:6:\"height\";i:54;s:4:\"file\";s:14:\"2016/02/s6.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(17, 13, '_wp_attached_file', '2016/02/s2.jpg'),
(18, 13, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:60;s:6:\"height\";i:54;s:4:\"file\";s:14:\"2016/02/s2.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(19, 14, '_wp_attached_file', '2016/02/s3.jpg'),
(20, 14, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:60;s:6:\"height\";i:54;s:4:\"file\";s:14:\"2016/02/s3.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(23, 15, '_wp_attached_file', '2016/02/s5.jpg'),
(24, 15, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:60;s:6:\"height\";i:54;s:4:\"file\";s:14:\"2016/02/s5.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(25, 16, '_wp_attached_file', '2016/02/a1.jpg'),
(26, 16, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:390;s:6:\"height\";i:547;s:4:\"file\";s:14:\"2016/02/a1.jpg\";s:5:\"sizes\";a:6:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:14:\"a1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:14:\"a1-214x300.jpg\";s:5:\"width\";i:214;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"astrid-small-thumb\";a:4:{s:4:\"file\";s:14:\"a1-360x505.jpg\";s:5:\"width\";i:360;s:6:\"height\";i:505;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:20:\"astrid-project-thumb\";a:4:{s:4:\"file\";s:14:\"a1-390x310.jpg\";s:5:\"width\";i:390;s:6:\"height\";i:310;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:19:\"astrid-client-thumb\";a:4:{s:4:\"file\";s:14:\"a1-250x351.jpg\";s:5:\"width\";i:250;s:6:\"height\";i:351;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:24:\"astrid-testimonial-thumb\";a:4:{s:4:\"file\";s:14:\"a1-100x140.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:140;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(27, 17, '_wp_attached_file', '2016/02/a2.jpg'),
(28, 17, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:390;s:6:\"height\";i:547;s:4:\"file\";s:14:\"2016/02/a2.jpg\";s:5:\"sizes\";a:6:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:14:\"a2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:14:\"a2-214x300.jpg\";s:5:\"width\";i:214;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"astrid-small-thumb\";a:4:{s:4:\"file\";s:14:\"a2-360x505.jpg\";s:5:\"width\";i:360;s:6:\"height\";i:505;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:20:\"astrid-project-thumb\";a:4:{s:4:\"file\";s:14:\"a2-390x310.jpg\";s:5:\"width\";i:390;s:6:\"height\";i:310;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:19:\"astrid-client-thumb\";a:4:{s:4:\"file\";s:14:\"a2-250x351.jpg\";s:5:\"width\";i:250;s:6:\"height\";i:351;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:24:\"astrid-testimonial-thumb\";a:4:{s:4:\"file\";s:14:\"a2-100x140.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:140;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(29, 18, '_wp_attached_file', '2016/02/a3.jpg'),
(30, 18, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:390;s:6:\"height\";i:547;s:4:\"file\";s:14:\"2016/02/a3.jpg\";s:5:\"sizes\";a:6:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:14:\"a3-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:14:\"a3-214x300.jpg\";s:5:\"width\";i:214;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"astrid-small-thumb\";a:4:{s:4:\"file\";s:14:\"a3-360x505.jpg\";s:5:\"width\";i:360;s:6:\"height\";i:505;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:20:\"astrid-project-thumb\";a:4:{s:4:\"file\";s:14:\"a3-390x310.jpg\";s:5:\"width\";i:390;s:6:\"height\";i:310;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:19:\"astrid-client-thumb\";a:4:{s:4:\"file\";s:14:\"a3-250x351.jpg\";s:5:\"width\";i:250;s:6:\"height\";i:351;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:24:\"astrid-testimonial-thumb\";a:4:{s:4:\"file\";s:14:\"a3-100x140.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:140;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(31, 19, '_wp_attached_file', '2016/02/c1.png'),
(32, 19, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:449;s:6:\"height\";i:401;s:4:\"file\";s:14:\"2016/02/c1.png\";s:5:\"sizes\";a:6:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:14:\"c1-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:14:\"c1-300x268.png\";s:5:\"width\";i:300;s:6:\"height\";i:268;s:9:\"mime-type\";s:9:\"image/png\";}s:18:\"astrid-small-thumb\";a:4:{s:4:\"file\";s:14:\"c1-360x322.png\";s:5:\"width\";i:360;s:6:\"height\";i:322;s:9:\"mime-type\";s:9:\"image/png\";}s:20:\"astrid-project-thumb\";a:4:{s:4:\"file\";s:14:\"c1-449x310.png\";s:5:\"width\";i:449;s:6:\"height\";i:310;s:9:\"mime-type\";s:9:\"image/png\";}s:19:\"astrid-client-thumb\";a:4:{s:4:\"file\";s:14:\"c1-250x223.png\";s:5:\"width\";i:250;s:6:\"height\";i:223;s:9:\"mime-type\";s:9:\"image/png\";}s:24:\"astrid-testimonial-thumb\";a:4:{s:4:\"file\";s:13:\"c1-100x89.png\";s:5:\"width\";i:100;s:6:\"height\";i:89;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(33, 20, '_wp_attached_file', '2016/02/c2.png'),
(34, 20, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:449;s:6:\"height\";i:401;s:4:\"file\";s:14:\"2016/02/c2.png\";s:5:\"sizes\";a:6:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:14:\"c2-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:14:\"c2-300x268.png\";s:5:\"width\";i:300;s:6:\"height\";i:268;s:9:\"mime-type\";s:9:\"image/png\";}s:18:\"astrid-small-thumb\";a:4:{s:4:\"file\";s:14:\"c2-360x322.png\";s:5:\"width\";i:360;s:6:\"height\";i:322;s:9:\"mime-type\";s:9:\"image/png\";}s:20:\"astrid-project-thumb\";a:4:{s:4:\"file\";s:14:\"c2-449x310.png\";s:5:\"width\";i:449;s:6:\"height\";i:310;s:9:\"mime-type\";s:9:\"image/png\";}s:19:\"astrid-client-thumb\";a:4:{s:4:\"file\";s:14:\"c2-250x223.png\";s:5:\"width\";i:250;s:6:\"height\";i:223;s:9:\"mime-type\";s:9:\"image/png\";}s:24:\"astrid-testimonial-thumb\";a:4:{s:4:\"file\";s:13:\"c2-100x89.png\";s:5:\"width\";i:100;s:6:\"height\";i:89;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(35, 21, '_wp_attached_file', '2016/02/c3.png'),
(36, 21, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:449;s:6:\"height\";i:401;s:4:\"file\";s:14:\"2016/02/c3.png\";s:5:\"sizes\";a:6:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:14:\"c3-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:14:\"c3-300x268.png\";s:5:\"width\";i:300;s:6:\"height\";i:268;s:9:\"mime-type\";s:9:\"image/png\";}s:18:\"astrid-small-thumb\";a:4:{s:4:\"file\";s:14:\"c3-360x322.png\";s:5:\"width\";i:360;s:6:\"height\";i:322;s:9:\"mime-type\";s:9:\"image/png\";}s:20:\"astrid-project-thumb\";a:4:{s:4:\"file\";s:14:\"c3-449x310.png\";s:5:\"width\";i:449;s:6:\"height\";i:310;s:9:\"mime-type\";s:9:\"image/png\";}s:19:\"astrid-client-thumb\";a:4:{s:4:\"file\";s:14:\"c3-250x223.png\";s:5:\"width\";i:250;s:6:\"height\";i:223;s:9:\"mime-type\";s:9:\"image/png\";}s:24:\"astrid-testimonial-thumb\";a:4:{s:4:\"file\";s:13:\"c3-100x89.png\";s:5:\"width\";i:100;s:6:\"height\";i:89;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(37, 22, '_wp_attached_file', '2016/02/c4.png'),
(38, 22, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:449;s:6:\"height\";i:401;s:4:\"file\";s:14:\"2016/02/c4.png\";s:5:\"sizes\";a:6:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:14:\"c4-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:14:\"c4-300x268.png\";s:5:\"width\";i:300;s:6:\"height\";i:268;s:9:\"mime-type\";s:9:\"image/png\";}s:18:\"astrid-small-thumb\";a:4:{s:4:\"file\";s:14:\"c4-360x322.png\";s:5:\"width\";i:360;s:6:\"height\";i:322;s:9:\"mime-type\";s:9:\"image/png\";}s:20:\"astrid-project-thumb\";a:4:{s:4:\"file\";s:14:\"c4-449x310.png\";s:5:\"width\";i:449;s:6:\"height\";i:310;s:9:\"mime-type\";s:9:\"image/png\";}s:19:\"astrid-client-thumb\";a:4:{s:4:\"file\";s:14:\"c4-250x223.png\";s:5:\"width\";i:250;s:6:\"height\";i:223;s:9:\"mime-type\";s:9:\"image/png\";}s:24:\"astrid-testimonial-thumb\";a:4:{s:4:\"file\";s:13:\"c4-100x89.png\";s:5:\"width\";i:100;s:6:\"height\";i:89;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(39, 23, '_wp_attached_file', '2016/02/p1.jpg'),
(40, 23, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:545;s:6:\"height\";i:345;s:4:\"file\";s:14:\"2016/02/p1.jpg\";s:5:\"sizes\";a:7:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:14:\"p1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:14:\"p1-300x190.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:190;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:19:\"astrid-medium-thumb\";a:4:{s:4:\"file\";s:14:\"p1-520x329.jpg\";s:5:\"width\";i:520;s:6:\"height\";i:329;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"astrid-small-thumb\";a:4:{s:4:\"file\";s:14:\"p1-360x228.jpg\";s:5:\"width\";i:360;s:6:\"height\";i:228;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:20:\"astrid-project-thumb\";a:4:{s:4:\"file\";s:14:\"p1-500x310.jpg\";s:5:\"width\";i:500;s:6:\"height\";i:310;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:19:\"astrid-client-thumb\";a:4:{s:4:\"file\";s:14:\"p1-250x158.jpg\";s:5:\"width\";i:250;s:6:\"height\";i:158;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:24:\"astrid-testimonial-thumb\";a:4:{s:4:\"file\";s:13:\"p1-100x63.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:63;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(41, 24, '_wp_attached_file', '2016/02/p2.jpg'),
(42, 24, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:545;s:6:\"height\";i:345;s:4:\"file\";s:14:\"2016/02/p2.jpg\";s:5:\"sizes\";a:7:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:14:\"p2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:14:\"p2-300x190.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:190;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:19:\"astrid-medium-thumb\";a:4:{s:4:\"file\";s:14:\"p2-520x329.jpg\";s:5:\"width\";i:520;s:6:\"height\";i:329;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"astrid-small-thumb\";a:4:{s:4:\"file\";s:14:\"p2-360x228.jpg\";s:5:\"width\";i:360;s:6:\"height\";i:228;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:20:\"astrid-project-thumb\";a:4:{s:4:\"file\";s:14:\"p2-500x310.jpg\";s:5:\"width\";i:500;s:6:\"height\";i:310;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:19:\"astrid-client-thumb\";a:4:{s:4:\"file\";s:14:\"p2-250x158.jpg\";s:5:\"width\";i:250;s:6:\"height\";i:158;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:24:\"astrid-testimonial-thumb\";a:4:{s:4:\"file\";s:13:\"p2-100x63.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:63;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(43, 25, '_wp_attached_file', '2016/02/p3.jpg'),
(44, 25, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:545;s:6:\"height\";i:345;s:4:\"file\";s:14:\"2016/02/p3.jpg\";s:5:\"sizes\";a:7:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:14:\"p3-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:14:\"p3-300x190.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:190;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:19:\"astrid-medium-thumb\";a:4:{s:4:\"file\";s:14:\"p3-520x329.jpg\";s:5:\"width\";i:520;s:6:\"height\";i:329;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"astrid-small-thumb\";a:4:{s:4:\"file\";s:14:\"p3-360x228.jpg\";s:5:\"width\";i:360;s:6:\"height\";i:228;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:20:\"astrid-project-thumb\";a:4:{s:4:\"file\";s:14:\"p3-500x310.jpg\";s:5:\"width\";i:500;s:6:\"height\";i:310;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:19:\"astrid-client-thumb\";a:4:{s:4:\"file\";s:14:\"p3-250x158.jpg\";s:5:\"width\";i:250;s:6:\"height\";i:158;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:24:\"astrid-testimonial-thumb\";a:4:{s:4:\"file\";s:13:\"p3-100x63.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:63;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(45, 26, '_wp_attached_file', '2016/02/p4.jpg'),
(46, 26, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:545;s:6:\"height\";i:345;s:4:\"file\";s:14:\"2016/02/p4.jpg\";s:5:\"sizes\";a:7:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:14:\"p4-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:14:\"p4-300x190.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:190;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:19:\"astrid-medium-thumb\";a:4:{s:4:\"file\";s:14:\"p4-520x329.jpg\";s:5:\"width\";i:520;s:6:\"height\";i:329;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"astrid-small-thumb\";a:4:{s:4:\"file\";s:14:\"p4-360x228.jpg\";s:5:\"width\";i:360;s:6:\"height\";i:228;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:20:\"astrid-project-thumb\";a:4:{s:4:\"file\";s:14:\"p4-500x310.jpg\";s:5:\"width\";i:500;s:6:\"height\";i:310;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:19:\"astrid-client-thumb\";a:4:{s:4:\"file\";s:14:\"p4-250x158.jpg\";s:5:\"width\";i:250;s:6:\"height\";i:158;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:24:\"astrid-testimonial-thumb\";a:4:{s:4:\"file\";s:13:\"p4-100x63.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:63;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(47, 27, '_wp_attached_file', '2016/02/p5.jpg'),
(48, 27, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:545;s:6:\"height\";i:345;s:4:\"file\";s:14:\"2016/02/p5.jpg\";s:5:\"sizes\";a:7:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:14:\"p5-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:14:\"p5-300x190.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:190;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:19:\"astrid-medium-thumb\";a:4:{s:4:\"file\";s:14:\"p5-520x329.jpg\";s:5:\"width\";i:520;s:6:\"height\";i:329;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"astrid-small-thumb\";a:4:{s:4:\"file\";s:14:\"p5-360x228.jpg\";s:5:\"width\";i:360;s:6:\"height\";i:228;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:20:\"astrid-project-thumb\";a:4:{s:4:\"file\";s:14:\"p5-500x310.jpg\";s:5:\"width\";i:500;s:6:\"height\";i:310;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:19:\"astrid-client-thumb\";a:4:{s:4:\"file\";s:14:\"p5-250x158.jpg\";s:5:\"width\";i:250;s:6:\"height\";i:158;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:24:\"astrid-testimonial-thumb\";a:4:{s:4:\"file\";s:13:\"p5-100x63.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:63;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(49, 28, '_wp_attached_file', '2016/02/p6.jpg'),
(50, 28, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:545;s:6:\"height\";i:345;s:4:\"file\";s:14:\"2016/02/p6.jpg\";s:5:\"sizes\";a:7:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:14:\"p6-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:14:\"p6-300x190.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:190;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:19:\"astrid-medium-thumb\";a:4:{s:4:\"file\";s:14:\"p6-520x329.jpg\";s:5:\"width\";i:520;s:6:\"height\";i:329;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"astrid-small-thumb\";a:4:{s:4:\"file\";s:14:\"p6-360x228.jpg\";s:5:\"width\";i:360;s:6:\"height\";i:228;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:20:\"astrid-project-thumb\";a:4:{s:4:\"file\";s:14:\"p6-500x310.jpg\";s:5:\"width\";i:500;s:6:\"height\";i:310;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:19:\"astrid-client-thumb\";a:4:{s:4:\"file\";s:14:\"p6-250x158.jpg\";s:5:\"width\";i:250;s:6:\"height\";i:158;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:24:\"astrid-testimonial-thumb\";a:4:{s:4:\"file\";s:13:\"p6-100x63.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:63;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(51, 29, '_wp_attached_file', '2016/02/p7.jpg'),
(52, 29, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:545;s:6:\"height\";i:345;s:4:\"file\";s:14:\"2016/02/p7.jpg\";s:5:\"sizes\";a:7:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:14:\"p7-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:14:\"p7-300x190.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:190;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:19:\"astrid-medium-thumb\";a:4:{s:4:\"file\";s:14:\"p7-520x329.jpg\";s:5:\"width\";i:520;s:6:\"height\";i:329;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"astrid-small-thumb\";a:4:{s:4:\"file\";s:14:\"p7-360x228.jpg\";s:5:\"width\";i:360;s:6:\"height\";i:228;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:20:\"astrid-project-thumb\";a:4:{s:4:\"file\";s:14:\"p7-500x310.jpg\";s:5:\"width\";i:500;s:6:\"height\";i:310;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:19:\"astrid-client-thumb\";a:4:{s:4:\"file\";s:14:\"p7-250x158.jpg\";s:5:\"width\";i:250;s:6:\"height\";i:158;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:24:\"astrid-testimonial-thumb\";a:4:{s:4:\"file\";s:13:\"p7-100x63.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:63;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(53, 30, '_wp_attached_file', '2016/02/p8.jpg'),
(54, 30, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:545;s:6:\"height\";i:345;s:4:\"file\";s:14:\"2016/02/p8.jpg\";s:5:\"sizes\";a:7:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:14:\"p8-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:14:\"p8-300x190.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:190;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:19:\"astrid-medium-thumb\";a:4:{s:4:\"file\";s:14:\"p8-520x329.jpg\";s:5:\"width\";i:520;s:6:\"height\";i:329;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"astrid-small-thumb\";a:4:{s:4:\"file\";s:14:\"p8-360x228.jpg\";s:5:\"width\";i:360;s:6:\"height\";i:228;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:20:\"astrid-project-thumb\";a:4:{s:4:\"file\";s:14:\"p8-500x310.jpg\";s:5:\"width\";i:500;s:6:\"height\";i:310;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:19:\"astrid-client-thumb\";a:4:{s:4:\"file\";s:14:\"p8-250x158.jpg\";s:5:\"width\";i:250;s:6:\"height\";i:158;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:24:\"astrid-testimonial-thumb\";a:4:{s:4:\"file\";s:13:\"p8-100x63.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:63;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(63, 233, '_wp_attached_file', '2016/02/w1.png'),
(64, 233, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:640;s:6:\"height\";i:333;s:4:\"file\";s:14:\"2016/02/w1.png\";s:5:\"sizes\";a:7:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:14:\"w1-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:14:\"w1-300x156.png\";s:5:\"width\";i:300;s:6:\"height\";i:156;s:9:\"mime-type\";s:9:\"image/png\";}s:19:\"astrid-medium-thumb\";a:4:{s:4:\"file\";s:14:\"w1-520x271.png\";s:5:\"width\";i:520;s:6:\"height\";i:271;s:9:\"mime-type\";s:9:\"image/png\";}s:18:\"astrid-small-thumb\";a:4:{s:4:\"file\";s:14:\"w1-360x187.png\";s:5:\"width\";i:360;s:6:\"height\";i:187;s:9:\"mime-type\";s:9:\"image/png\";}s:20:\"astrid-project-thumb\";a:4:{s:4:\"file\";s:14:\"w1-500x310.png\";s:5:\"width\";i:500;s:6:\"height\";i:310;s:9:\"mime-type\";s:9:\"image/png\";}s:19:\"astrid-client-thumb\";a:4:{s:4:\"file\";s:14:\"w1-250x130.png\";s:5:\"width\";i:250;s:6:\"height\";i:130;s:9:\"mime-type\";s:9:\"image/png\";}s:24:\"astrid-testimonial-thumb\";a:4:{s:4:\"file\";s:13:\"w1-100x52.png\";s:5:\"width\";i:100;s:6:\"height\";i:52;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(65, 234, '_wp_attached_file', '2016/02/w2.png'),
(66, 234, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:640;s:6:\"height\";i:333;s:4:\"file\";s:14:\"2016/02/w2.png\";s:5:\"sizes\";a:7:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:14:\"w2-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:14:\"w2-300x156.png\";s:5:\"width\";i:300;s:6:\"height\";i:156;s:9:\"mime-type\";s:9:\"image/png\";}s:19:\"astrid-medium-thumb\";a:4:{s:4:\"file\";s:14:\"w2-520x271.png\";s:5:\"width\";i:520;s:6:\"height\";i:271;s:9:\"mime-type\";s:9:\"image/png\";}s:18:\"astrid-small-thumb\";a:4:{s:4:\"file\";s:14:\"w2-360x187.png\";s:5:\"width\";i:360;s:6:\"height\";i:187;s:9:\"mime-type\";s:9:\"image/png\";}s:20:\"astrid-project-thumb\";a:4:{s:4:\"file\";s:14:\"w2-500x310.png\";s:5:\"width\";i:500;s:6:\"height\";i:310;s:9:\"mime-type\";s:9:\"image/png\";}s:19:\"astrid-client-thumb\";a:4:{s:4:\"file\";s:14:\"w2-250x130.png\";s:5:\"width\";i:250;s:6:\"height\";i:130;s:9:\"mime-type\";s:9:\"image/png\";}s:24:\"astrid-testimonial-thumb\";a:4:{s:4:\"file\";s:13:\"w2-100x52.png\";s:5:\"width\";i:100;s:6:\"height\";i:52;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(67, 235, '_wp_attached_file', '2016/02/w3.png'),
(68, 235, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:640;s:6:\"height\";i:333;s:4:\"file\";s:14:\"2016/02/w3.png\";s:5:\"sizes\";a:7:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:14:\"w3-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:14:\"w3-300x156.png\";s:5:\"width\";i:300;s:6:\"height\";i:156;s:9:\"mime-type\";s:9:\"image/png\";}s:19:\"astrid-medium-thumb\";a:4:{s:4:\"file\";s:14:\"w3-520x271.png\";s:5:\"width\";i:520;s:6:\"height\";i:271;s:9:\"mime-type\";s:9:\"image/png\";}s:18:\"astrid-small-thumb\";a:4:{s:4:\"file\";s:14:\"w3-360x187.png\";s:5:\"width\";i:360;s:6:\"height\";i:187;s:9:\"mime-type\";s:9:\"image/png\";}s:20:\"astrid-project-thumb\";a:4:{s:4:\"file\";s:14:\"w3-500x310.png\";s:5:\"width\";i:500;s:6:\"height\";i:310;s:9:\"mime-type\";s:9:\"image/png\";}s:19:\"astrid-client-thumb\";a:4:{s:4:\"file\";s:14:\"w3-250x130.png\";s:5:\"width\";i:250;s:6:\"height\";i:130;s:9:\"mime-type\";s:9:\"image/png\";}s:24:\"astrid-testimonial-thumb\";a:4:{s:4:\"file\";s:13:\"w3-100x52.png\";s:5:\"width\";i:100;s:6:\"height\";i:52;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(69, 239, '_wp_attached_file', '2016/02/logo.png'),
(70, 239, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:497;s:6:\"height\";i:100;s:4:\"file\";s:16:\"2016/02/logo.png\";s:5:\"sizes\";a:5:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:16:\"logo-150x100.png\";s:5:\"width\";i:150;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:15:\"logo-300x60.png\";s:5:\"width\";i:300;s:6:\"height\";i:60;s:9:\"mime-type\";s:9:\"image/png\";}s:18:\"astrid-small-thumb\";a:4:{s:4:\"file\";s:15:\"logo-360x72.png\";s:5:\"width\";i:360;s:6:\"height\";i:72;s:9:\"mime-type\";s:9:\"image/png\";}s:19:\"astrid-client-thumb\";a:4:{s:4:\"file\";s:15:\"logo-250x50.png\";s:5:\"width\";i:250;s:6:\"height\";i:50;s:9:\"mime-type\";s:9:\"image/png\";}s:24:\"astrid-testimonial-thumb\";a:4:{s:4:\"file\";s:15:\"logo-100x20.png\";s:5:\"width\";i:100;s:6:\"height\";i:20;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(71, 240, '_menu_item_type', 'custom'),
(72, 240, '_menu_item_menu_item_parent', '0'),
(73, 240, '_menu_item_object_id', '240'),
(74, 240, '_menu_item_object', 'custom'),
(75, 240, '_menu_item_target', ''),
(76, 240, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(77, 240, '_menu_item_xfn', ''),
(78, 240, '_menu_item_url', '#'),
(79, 241, '_menu_item_type', 'custom'),
(80, 241, '_menu_item_menu_item_parent', '0'),
(81, 241, '_menu_item_object_id', '241'),
(82, 241, '_menu_item_object', 'custom'),
(83, 241, '_menu_item_target', ''),
(84, 241, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(85, 241, '_menu_item_xfn', ''),
(86, 241, '_menu_item_url', '#'),
(87, 242, '_menu_item_type', 'custom'),
(88, 242, '_menu_item_menu_item_parent', '0'),
(89, 242, '_menu_item_object_id', '242'),
(90, 242, '_menu_item_object', 'custom'),
(91, 242, '_menu_item_target', ''),
(92, 242, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(93, 242, '_menu_item_xfn', ''),
(94, 242, '_menu_item_url', '#'),
(95, 243, '_menu_item_type', 'custom'),
(96, 243, '_menu_item_menu_item_parent', '0'),
(97, 243, '_menu_item_object_id', '243'),
(98, 243, '_menu_item_object', 'custom'),
(99, 243, '_menu_item_target', ''),
(100, 243, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(101, 243, '_menu_item_xfn', ''),
(102, 243, '_menu_item_url', '#'),
(103, 244, '_menu_item_type', 'custom'),
(104, 244, '_menu_item_menu_item_parent', '0'),
(105, 244, '_menu_item_object_id', '244'),
(106, 244, '_menu_item_object', 'custom'),
(107, 244, '_menu_item_target', ''),
(108, 244, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(109, 244, '_menu_item_xfn', ''),
(110, 244, '_menu_item_url', '#'),
(111, 245, '_menu_item_type', 'custom'),
(112, 245, '_menu_item_menu_item_parent', '0'),
(113, 245, '_menu_item_object_id', '245'),
(114, 245, '_menu_item_object', 'custom'),
(115, 245, '_menu_item_target', ''),
(116, 245, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(117, 245, '_menu_item_xfn', ''),
(118, 245, '_menu_item_url', '#'),
(119, 246, '_menu_item_type', 'custom'),
(120, 246, '_menu_item_menu_item_parent', '0'),
(121, 246, '_menu_item_object_id', '246'),
(122, 246, '_menu_item_object', 'custom'),
(123, 246, '_menu_item_target', ''),
(124, 246, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(125, 246, '_menu_item_xfn', ''),
(126, 246, '_menu_item_url', '#'),
(127, 247, '_menu_item_type', 'custom'),
(128, 247, '_menu_item_menu_item_parent', '0'),
(129, 247, '_menu_item_object_id', '247'),
(130, 247, '_menu_item_object', 'custom'),
(131, 247, '_menu_item_target', ''),
(132, 247, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(133, 247, '_menu_item_xfn', ''),
(134, 247, '_menu_item_url', '#'),
(135, 248, '_menu_item_type', 'custom'),
(136, 248, '_menu_item_menu_item_parent', '0'),
(137, 248, '_menu_item_object_id', '248'),
(138, 248, '_menu_item_object', 'custom'),
(139, 248, '_menu_item_target', ''),
(140, 248, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(141, 248, '_menu_item_xfn', ''),
(142, 248, '_menu_item_url', '#'),
(143, 256, '_wp_attached_file', '2016/02/aerial-view-1149248_1920.jpg'),
(144, 256, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1366;s:6:\"height\";i:555;s:4:\"file\";s:36:\"2016/02/aerial-view-1149248_1920.jpg\";s:5:\"sizes\";a:10:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:36:\"aerial-view-1149248_1920-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:36:\"aerial-view-1149248_1920-300x122.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:122;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:36:\"aerial-view-1149248_1920-768x312.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:312;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:37:\"aerial-view-1149248_1920-1024x416.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:416;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"astrid-large-thumb\";a:4:{s:4:\"file\";s:36:\"aerial-view-1149248_1920-700x284.jpg\";s:5:\"width\";i:700;s:6:\"height\";i:284;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:19:\"astrid-medium-thumb\";a:4:{s:4:\"file\";s:36:\"aerial-view-1149248_1920-520x211.jpg\";s:5:\"width\";i:520;s:6:\"height\";i:211;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"astrid-small-thumb\";a:4:{s:4:\"file\";s:36:\"aerial-view-1149248_1920-360x146.jpg\";s:5:\"width\";i:360;s:6:\"height\";i:146;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:20:\"astrid-project-thumb\";a:4:{s:4:\"file\";s:36:\"aerial-view-1149248_1920-500x310.jpg\";s:5:\"width\";i:500;s:6:\"height\";i:310;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:19:\"astrid-client-thumb\";a:4:{s:4:\"file\";s:36:\"aerial-view-1149248_1920-250x102.jpg\";s:5:\"width\";i:250;s:6:\"height\";i:102;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:24:\"astrid-testimonial-thumb\";a:4:{s:4:\"file\";s:35:\"aerial-view-1149248_1920-100x41.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:41;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(145, 257, '_wp_attached_file', '2016/02/skyscraper-1149541_1920.jpg'),
(146, 257, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1920;s:6:\"height\";i:990;s:4:\"file\";s:35:\"2016/02/skyscraper-1149541_1920.jpg\";s:5:\"sizes\";a:10:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:35:\"skyscraper-1149541_1920-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:35:\"skyscraper-1149541_1920-300x155.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:155;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:35:\"skyscraper-1149541_1920-768x396.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:396;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:36:\"skyscraper-1149541_1920-1024x528.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:528;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"astrid-large-thumb\";a:4:{s:4:\"file\";s:35:\"skyscraper-1149541_1920-700x361.jpg\";s:5:\"width\";i:700;s:6:\"height\";i:361;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:19:\"astrid-medium-thumb\";a:4:{s:4:\"file\";s:35:\"skyscraper-1149541_1920-520x268.jpg\";s:5:\"width\";i:520;s:6:\"height\";i:268;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"astrid-small-thumb\";a:4:{s:4:\"file\";s:35:\"skyscraper-1149541_1920-360x186.jpg\";s:5:\"width\";i:360;s:6:\"height\";i:186;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:20:\"astrid-project-thumb\";a:4:{s:4:\"file\";s:35:\"skyscraper-1149541_1920-500x310.jpg\";s:5:\"width\";i:500;s:6:\"height\";i:310;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:19:\"astrid-client-thumb\";a:4:{s:4:\"file\";s:35:\"skyscraper-1149541_1920-250x129.jpg\";s:5:\"width\";i:250;s:6:\"height\";i:129;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:24:\"astrid-testimonial-thumb\";a:4:{s:4:\"file\";s:34:\"skyscraper-1149541_1920-100x52.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:52;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(147, 259, '_wp_attached_file', '2016/02/photos-1148980_1280.jpg'),
(148, 259, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1280;s:6:\"height\";i:852;s:4:\"file\";s:31:\"2016/02/photos-1148980_1280.jpg\";s:5:\"sizes\";a:10:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:31:\"photos-1148980_1280-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:31:\"photos-1148980_1280-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:31:\"photos-1148980_1280-768x511.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:511;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:32:\"photos-1148980_1280-1024x682.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:682;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"astrid-large-thumb\";a:4:{s:4:\"file\";s:31:\"photos-1148980_1280-700x466.jpg\";s:5:\"width\";i:700;s:6:\"height\";i:466;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:19:\"astrid-medium-thumb\";a:4:{s:4:\"file\";s:31:\"photos-1148980_1280-520x346.jpg\";s:5:\"width\";i:520;s:6:\"height\";i:346;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"astrid-small-thumb\";a:4:{s:4:\"file\";s:31:\"photos-1148980_1280-360x240.jpg\";s:5:\"width\";i:360;s:6:\"height\";i:240;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:20:\"astrid-project-thumb\";a:4:{s:4:\"file\";s:31:\"photos-1148980_1280-500x310.jpg\";s:5:\"width\";i:500;s:6:\"height\";i:310;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:19:\"astrid-client-thumb\";a:4:{s:4:\"file\";s:31:\"photos-1148980_1280-250x166.jpg\";s:5:\"width\";i:250;s:6:\"height\";i:166;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:24:\"astrid-testimonial-thumb\";a:4:{s:4:\"file\";s:30:\"photos-1148980_1280-100x67.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:67;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(150, 262, '_wp_attached_file', '2016/02/hiker-1149898_1280.jpg'),
(151, 262, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1280;s:6:\"height\";i:678;s:4:\"file\";s:30:\"2016/02/hiker-1149898_1280.jpg\";s:5:\"sizes\";a:10:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:30:\"hiker-1149898_1280-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:30:\"hiker-1149898_1280-300x159.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:159;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:30:\"hiker-1149898_1280-768x407.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:407;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:31:\"hiker-1149898_1280-1024x542.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:542;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"astrid-large-thumb\";a:4:{s:4:\"file\";s:30:\"hiker-1149898_1280-700x371.jpg\";s:5:\"width\";i:700;s:6:\"height\";i:371;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:19:\"astrid-medium-thumb\";a:4:{s:4:\"file\";s:30:\"hiker-1149898_1280-520x275.jpg\";s:5:\"width\";i:520;s:6:\"height\";i:275;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"astrid-small-thumb\";a:4:{s:4:\"file\";s:30:\"hiker-1149898_1280-360x191.jpg\";s:5:\"width\";i:360;s:6:\"height\";i:191;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:20:\"astrid-project-thumb\";a:4:{s:4:\"file\";s:30:\"hiker-1149898_1280-500x310.jpg\";s:5:\"width\";i:500;s:6:\"height\";i:310;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:19:\"astrid-client-thumb\";a:4:{s:4:\"file\";s:30:\"hiker-1149898_1280-250x132.jpg\";s:5:\"width\";i:250;s:6:\"height\";i:132;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:24:\"astrid-testimonial-thumb\";a:4:{s:4:\"file\";s:29:\"hiker-1149898_1280-100x53.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:53;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(153, 265, '_wp_attached_file', '2016/02/man-1150058_1280.jpg'),
(154, 265, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1280;s:6:\"height\";i:853;s:4:\"file\";s:28:\"2016/02/man-1150058_1280.jpg\";s:5:\"sizes\";a:10:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:28:\"man-1150058_1280-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:28:\"man-1150058_1280-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:28:\"man-1150058_1280-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:29:\"man-1150058_1280-1024x682.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:682;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"astrid-large-thumb\";a:4:{s:4:\"file\";s:28:\"man-1150058_1280-700x466.jpg\";s:5:\"width\";i:700;s:6:\"height\";i:466;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:19:\"astrid-medium-thumb\";a:4:{s:4:\"file\";s:28:\"man-1150058_1280-520x347.jpg\";s:5:\"width\";i:520;s:6:\"height\";i:347;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"astrid-small-thumb\";a:4:{s:4:\"file\";s:28:\"man-1150058_1280-360x240.jpg\";s:5:\"width\";i:360;s:6:\"height\";i:240;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:20:\"astrid-project-thumb\";a:4:{s:4:\"file\";s:28:\"man-1150058_1280-500x310.jpg\";s:5:\"width\";i:500;s:6:\"height\";i:310;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:19:\"astrid-client-thumb\";a:4:{s:4:\"file\";s:28:\"man-1150058_1280-250x167.jpg\";s:5:\"width\";i:250;s:6:\"height\";i:167;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:24:\"astrid-testimonial-thumb\";a:4:{s:4:\"file\";s:27:\"man-1150058_1280-100x67.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:67;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(156, 266, '_wp_page_template', 'default'),
(157, 82, '_wp_page_template', 'default'),
(158, 86, '_wp_page_template', 'page-templates/single-service.php'),
(160, 88, '_wp_page_template', 'page-templates/single-service.php'),
(161, 88, '_thumbnail_id', '14'),
(162, 92, '_thumbnail_id', '17'),
(163, 92, '_wp_page_template', 'page-templates/single-employee.php'),
(164, 94, '_thumbnail_id', '16'),
(165, 94, '_wp_page_template', 'page-templates/single-employee.php'),
(166, 98, '_thumbnail_id', '29'),
(167, 98, '_wp_page_template', 'page-templates/single-project.php'),
(168, 100, '_thumbnail_id', '27'),
(169, 100, '_wp_page_template', 'page-templates/single-project.php'),
(170, 102, '_thumbnail_id', '28'),
(171, 102, '_wp_page_template', 'page-templates/single-project.php'),
(172, 106, '_thumbnail_id', '20'),
(173, 106, '_wp_page_template', 'page-templates/single-client.php'),
(174, 108, '_thumbnail_id', '21'),
(175, 108, '_wp_page_template', 'page-templates/single-client.php'),
(176, 110, '_thumbnail_id', '19'),
(177, 110, '_wp_page_template', 'page-templates/single-client.php'),
(178, 112, '_wp_page_template', 'page-templates/single-service.php'),
(179, 112, '_thumbnail_id', '13'),
(180, 114, '_wp_page_template', 'page-templates/single-service.php'),
(181, 114, '_thumbnail_id', '12'),
(182, 116, '_wp_page_template', 'page-templates/single-service.php'),
(184, 118, '_thumbnail_id', '26'),
(185, 118, '_wp_page_template', 'page-templates/single-project.php'),
(186, 120, '_thumbnail_id', '25'),
(187, 120, '_wp_page_template', 'page-templates/single-project.php'),
(188, 249, '_menu_item_type', 'custom'),
(189, 249, '_menu_item_menu_item_parent', '0'),
(190, 249, '_menu_item_object_id', '249'),
(191, 249, '_menu_item_object', 'custom'),
(192, 249, '_menu_item_target', ''),
(193, 249, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(194, 249, '_menu_item_xfn', ''),
(195, 249, '_menu_item_url', '#'),
(219, 122, '_thumbnail_id', '23'),
(220, 122, '_wp_page_template', 'page-templates/single-project.php'),
(221, 124, '_thumbnail_id', '24'),
(222, 124, '_wp_page_template', 'page-templates/single-project.php'),
(223, 226, '_thumbnail_id', '15'),
(224, 226, '_wp_page_template', 'page-templates/single-service.php'),
(225, 228, '_thumbnail_id', '18'),
(226, 228, '_wp_page_template', 'page-templates/single-employee.php'),
(227, 230, '_thumbnail_id', '30'),
(228, 230, '_wp_page_template', 'page-templates/single-project.php'),
(229, 236, '_thumbnail_id', '22'),
(230, 236, '_wp_page_template', 'page-templates/single-client.php'),
(231, 250, '_thumbnail_id', '16'),
(232, 250, '_wp_page_template', 'page-templates/single-testimonial.php'),
(233, 252, '_thumbnail_id', '17'),
(234, 252, '_wp_page_template', 'page-templates/single-testimonial.php'),
(235, 254, '_thumbnail_id', '18'),
(236, 254, '_wp_page_template', 'page-templates/single-testimonial.php'),
(239, 258, '_thumbnail_id', '259'),
(242, 261, '_thumbnail_id', '262'),
(245, 264, '_thumbnail_id', '265'),
(246, 7, '_wp_trash_meta_status', 'publish'),
(247, 7, '_wp_trash_meta_time', '1523284347'),
(248, 7, '_wp_desired_post_slug', 'home'),
(249, 11, '_edit_lock', '1523466926:1'),
(250, 269, '_edit_lock', '1523284620:1'),
(251, 269, '_wp_trash_meta_status', 'publish'),
(252, 269, '_wp_trash_meta_time', '1523284644'),
(263, 272, '_menu_item_type', 'custom'),
(264, 272, '_menu_item_menu_item_parent', '0'),
(265, 272, '_menu_item_object_id', '272'),
(266, 272, '_menu_item_object', 'custom'),
(267, 272, '_menu_item_target', ''),
(268, 272, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(269, 272, '_menu_item_xfn', ''),
(270, 272, '_menu_item_url', '#'),
(271, 273, '_menu_item_type', 'custom'),
(272, 273, '_menu_item_menu_item_parent', '0'),
(273, 273, '_menu_item_object_id', '273'),
(274, 273, '_menu_item_object', 'custom'),
(275, 273, '_menu_item_target', ''),
(276, 273, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(277, 273, '_menu_item_xfn', ''),
(278, 273, '_menu_item_url', '#'),
(279, 274, '_menu_item_type', 'custom'),
(280, 274, '_menu_item_menu_item_parent', '0'),
(281, 274, '_menu_item_object_id', '274'),
(282, 274, '_menu_item_object', 'custom'),
(283, 274, '_menu_item_target', ''),
(284, 274, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(285, 274, '_menu_item_xfn', ''),
(286, 274, '_menu_item_url', '#'),
(287, 275, '_menu_item_type', 'custom'),
(288, 275, '_menu_item_menu_item_parent', '0'),
(289, 275, '_menu_item_object_id', '275'),
(290, 275, '_menu_item_object', 'custom'),
(291, 275, '_menu_item_target', ''),
(292, 275, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(293, 275, '_menu_item_xfn', ''),
(294, 275, '_menu_item_url', '#'),
(295, 276, '_menu_item_type', 'custom'),
(296, 276, '_menu_item_menu_item_parent', '0'),
(297, 276, '_menu_item_object_id', '276'),
(298, 276, '_menu_item_object', 'custom'),
(299, 276, '_menu_item_target', ''),
(300, 276, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(301, 276, '_menu_item_xfn', '');
INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(302, 276, '_menu_item_url', '#'),
(303, 277, '_menu_item_type', 'custom'),
(304, 277, '_menu_item_menu_item_parent', '0'),
(305, 277, '_menu_item_object_id', '277'),
(306, 277, '_menu_item_object', 'custom'),
(307, 277, '_menu_item_target', ''),
(308, 277, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(309, 277, '_menu_item_xfn', ''),
(310, 277, '_menu_item_url', '#'),
(311, 278, '_menu_item_type', 'custom'),
(312, 278, '_menu_item_menu_item_parent', '0'),
(313, 278, '_menu_item_object_id', '278'),
(314, 278, '_menu_item_object', 'custom'),
(315, 278, '_menu_item_target', ''),
(316, 278, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(317, 278, '_menu_item_xfn', ''),
(318, 278, '_menu_item_url', '#'),
(319, 279, '_menu_item_type', 'custom'),
(320, 279, '_menu_item_menu_item_parent', '0'),
(321, 279, '_menu_item_object_id', '279'),
(322, 279, '_menu_item_object', 'custom'),
(323, 279, '_menu_item_target', ''),
(324, 279, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(325, 279, '_menu_item_xfn', ''),
(326, 279, '_menu_item_url', '#'),
(327, 280, '_menu_item_type', 'custom'),
(328, 280, '_menu_item_menu_item_parent', '0'),
(329, 280, '_menu_item_object_id', '280'),
(330, 280, '_menu_item_object', 'custom'),
(331, 280, '_menu_item_target', ''),
(332, 280, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(333, 280, '_menu_item_xfn', ''),
(334, 280, '_menu_item_url', '#'),
(335, 266, '_wp_page_template', 'default'),
(336, 80, '_edit_last', '1'),
(337, 80, '_wp_page_template', 'page-templates/page_widgetized.php'),
(338, 82, '_edit_last', '1'),
(339, 82, '_wp_page_template', 'default'),
(340, 86, '_edit_last', '1'),
(341, 86, '_wp_page_template', 'page-templates/single-service.php'),
(343, 88, '_edit_last', '1'),
(344, 88, '_wp_page_template', 'page-templates/single-service.php'),
(345, 88, '_thumbnail_id', '14'),
(346, 92, '_edit_last', '1'),
(347, 92, '_thumbnail_id', '17'),
(348, 92, '_wp_page_template', 'page-templates/single-employee.php'),
(349, 94, '_edit_last', '1'),
(350, 94, '_thumbnail_id', '16'),
(351, 94, '_wp_page_template', 'page-templates/single-employee.php'),
(352, 98, '_edit_last', '1'),
(353, 98, '_thumbnail_id', '29'),
(354, 98, '_wp_page_template', 'page-templates/single-project.php'),
(355, 100, '_edit_last', '1'),
(356, 100, '_thumbnail_id', '27'),
(357, 100, '_wp_page_template', 'page-templates/single-project.php'),
(358, 102, '_edit_last', '1'),
(359, 102, '_thumbnail_id', '28'),
(360, 102, '_wp_page_template', 'page-templates/single-project.php'),
(361, 106, '_edit_last', '1'),
(362, 106, '_thumbnail_id', '20'),
(363, 106, '_wp_page_template', 'page-templates/single-client.php'),
(364, 108, '_edit_last', '1'),
(365, 108, '_thumbnail_id', '21'),
(366, 108, '_wp_page_template', 'page-templates/single-client.php'),
(367, 110, '_edit_last', '1'),
(368, 110, '_thumbnail_id', '19'),
(369, 110, '_wp_page_template', 'page-templates/single-client.php'),
(370, 112, '_edit_last', '1'),
(371, 112, '_wp_page_template', 'page-templates/single-service.php'),
(372, 112, '_thumbnail_id', '13'),
(373, 114, '_edit_last', '1'),
(374, 114, '_wp_page_template', 'page-templates/single-service.php'),
(375, 114, '_thumbnail_id', '12'),
(376, 116, '_edit_last', '1'),
(377, 116, '_wp_page_template', 'page-templates/single-service.php'),
(379, 118, '_edit_last', '1'),
(380, 118, '_thumbnail_id', '26'),
(381, 118, '_wp_page_template', 'page-templates/single-project.php'),
(382, 120, '_edit_last', '1'),
(383, 120, '_thumbnail_id', '25'),
(384, 120, '_wp_page_template', 'page-templates/single-project.php'),
(385, 281, '_menu_item_type', 'custom'),
(386, 281, '_menu_item_menu_item_parent', '0'),
(387, 281, '_menu_item_object_id', '281'),
(388, 281, '_menu_item_object', 'custom'),
(389, 281, '_menu_item_target', ''),
(390, 281, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(391, 281, '_menu_item_xfn', ''),
(392, 281, '_menu_item_url', '#'),
(425, 122, '_edit_last', '1'),
(426, 122, '_thumbnail_id', '23'),
(427, 122, '_wp_page_template', 'page-templates/single-project.php'),
(428, 124, '_edit_last', '1'),
(429, 124, '_thumbnail_id', '24'),
(430, 124, '_wp_page_template', 'page-templates/single-project.php'),
(431, 226, '_edit_last', '1'),
(432, 226, '_thumbnail_id', '15'),
(433, 226, '_wp_page_template', 'page-templates/single-service.php'),
(434, 228, '_edit_last', '1'),
(435, 228, '_thumbnail_id', '18'),
(436, 228, '_wp_page_template', 'page-templates/single-employee.php'),
(437, 230, '_edit_last', '1'),
(438, 230, '_thumbnail_id', '30'),
(439, 230, '_wp_page_template', 'page-templates/single-project.php'),
(440, 236, '_edit_last', '1'),
(441, 236, '_thumbnail_id', '22'),
(442, 236, '_wp_page_template', 'page-templates/single-client.php'),
(443, 250, '_edit_last', '1'),
(444, 250, '_thumbnail_id', '16'),
(445, 250, '_wp_page_template', 'page-templates/single-testimonial.php'),
(446, 252, '_edit_last', '1'),
(447, 252, '_thumbnail_id', '17'),
(448, 252, '_wp_page_template', 'page-templates/single-testimonial.php'),
(449, 254, '_edit_last', '1'),
(450, 254, '_thumbnail_id', '18'),
(451, 254, '_wp_page_template', 'page-templates/single-testimonial.php'),
(452, 258, '_edit_last', '1'),
(453, 258, '_thumbnail_id', '259'),
(454, 261, '_edit_last', '1'),
(455, 261, '_thumbnail_id', '262'),
(456, 264, '_edit_last', '1'),
(457, 264, '_thumbnail_id', '265'),
(458, 283, '_edit_lock', '1523285889:1'),
(459, 283, '_wp_trash_meta_status', 'publish'),
(460, 283, '_wp_trash_meta_time', '1523285914'),
(461, 284, '_wp_trash_meta_status', 'publish'),
(462, 284, '_wp_trash_meta_time', '1523286076'),
(463, 285, '_wp_trash_meta_status', 'publish'),
(464, 285, '_wp_trash_meta_time', '1523286185'),
(465, 286, '_edit_lock', '1523369348:1'),
(466, 286, '_wp_trash_meta_status', 'publish'),
(467, 286, '_wp_trash_meta_time', '1523369359'),
(468, 287, '_edit_lock', '1523369504:1'),
(469, 287, '_wp_trash_meta_status', 'publish'),
(470, 287, '_wp_trash_meta_time', '1523369526'),
(471, 288, '_edit_lock', '1523369868:1'),
(472, 288, '_wp_trash_meta_status', 'publish'),
(473, 288, '_wp_trash_meta_time', '1523369871'),
(474, 289, '_wp_attached_file', '2018/04/hirewick_header_mobile.jpg'),
(475, 289, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:954;s:6:\"height\";i:683;s:4:\"file\";s:34:\"2018/04/hirewick_header_mobile.jpg\";s:5:\"sizes\";a:9:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:34:\"hirewick_header_mobile-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:34:\"hirewick_header_mobile-300x215.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:215;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:34:\"hirewick_header_mobile-768x550.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:550;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"astrid-large-thumb\";a:4:{s:4:\"file\";s:34:\"hirewick_header_mobile-700x501.jpg\";s:5:\"width\";i:700;s:6:\"height\";i:501;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:19:\"astrid-medium-thumb\";a:4:{s:4:\"file\";s:34:\"hirewick_header_mobile-520x372.jpg\";s:5:\"width\";i:520;s:6:\"height\";i:372;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"astrid-small-thumb\";a:4:{s:4:\"file\";s:34:\"hirewick_header_mobile-360x258.jpg\";s:5:\"width\";i:360;s:6:\"height\";i:258;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:20:\"astrid-project-thumb\";a:4:{s:4:\"file\";s:34:\"hirewick_header_mobile-500x310.jpg\";s:5:\"width\";i:500;s:6:\"height\";i:310;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:19:\"astrid-client-thumb\";a:4:{s:4:\"file\";s:34:\"hirewick_header_mobile-250x179.jpg\";s:5:\"width\";i:250;s:6:\"height\";i:179;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:24:\"astrid-testimonial-thumb\";a:4:{s:4:\"file\";s:33:\"hirewick_header_mobile-100x72.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:72;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(476, 290, '_wp_attached_file', '2018/04/hirewick_header.jpg'),
(477, 290, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1920;s:6:\"height\";i:1080;s:4:\"file\";s:27:\"2018/04/hirewick_header.jpg\";s:5:\"sizes\";a:10:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:27:\"hirewick_header-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:27:\"hirewick_header-300x169.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:169;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:27:\"hirewick_header-768x432.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:432;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:28:\"hirewick_header-1024x576.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:576;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"astrid-large-thumb\";a:4:{s:4:\"file\";s:27:\"hirewick_header-700x394.jpg\";s:5:\"width\";i:700;s:6:\"height\";i:394;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:19:\"astrid-medium-thumb\";a:4:{s:4:\"file\";s:27:\"hirewick_header-520x293.jpg\";s:5:\"width\";i:520;s:6:\"height\";i:293;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"astrid-small-thumb\";a:4:{s:4:\"file\";s:27:\"hirewick_header-360x203.jpg\";s:5:\"width\";i:360;s:6:\"height\";i:203;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:20:\"astrid-project-thumb\";a:4:{s:4:\"file\";s:27:\"hirewick_header-500x310.jpg\";s:5:\"width\";i:500;s:6:\"height\";i:310;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:19:\"astrid-client-thumb\";a:4:{s:4:\"file\";s:27:\"hirewick_header-250x141.jpg\";s:5:\"width\";i:250;s:6:\"height\";i:141;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:24:\"astrid-testimonial-thumb\";a:4:{s:4:\"file\";s:26:\"hirewick_header-100x56.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:56;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(478, 290, '_wp_attachment_image_alt', 'header image'),
(479, 289, '_wp_attachment_image_alt', 'mobile header image'),
(480, 291, '_wp_attached_file', '2018/04/cropped-hirewick_header.jpg'),
(481, 291, '_wp_attachment_context', 'custom-header'),
(482, 291, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1920;s:6:\"height\";i:1080;s:4:\"file\";s:35:\"2018/04/cropped-hirewick_header.jpg\";s:5:\"sizes\";a:10:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:35:\"cropped-hirewick_header-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:35:\"cropped-hirewick_header-300x169.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:169;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:35:\"cropped-hirewick_header-768x432.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:432;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:36:\"cropped-hirewick_header-1024x576.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:576;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"astrid-large-thumb\";a:4:{s:4:\"file\";s:35:\"cropped-hirewick_header-700x394.jpg\";s:5:\"width\";i:700;s:6:\"height\";i:394;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:19:\"astrid-medium-thumb\";a:4:{s:4:\"file\";s:35:\"cropped-hirewick_header-520x293.jpg\";s:5:\"width\";i:520;s:6:\"height\";i:293;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"astrid-small-thumb\";a:4:{s:4:\"file\";s:35:\"cropped-hirewick_header-360x203.jpg\";s:5:\"width\";i:360;s:6:\"height\";i:203;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:20:\"astrid-project-thumb\";a:4:{s:4:\"file\";s:35:\"cropped-hirewick_header-500x310.jpg\";s:5:\"width\";i:500;s:6:\"height\";i:310;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:19:\"astrid-client-thumb\";a:4:{s:4:\"file\";s:35:\"cropped-hirewick_header-250x141.jpg\";s:5:\"width\";i:250;s:6:\"height\";i:141;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:24:\"astrid-testimonial-thumb\";a:4:{s:4:\"file\";s:34:\"cropped-hirewick_header-100x56.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:56;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}s:17:\"attachment_parent\";i:290;}'),
(483, 291, '_wp_attachment_custom_header_last_used_astrid-child', '1523370490'),
(484, 291, '_wp_attachment_is_custom_header', 'astrid-child'),
(485, 292, '_wp_trash_meta_status', 'publish'),
(486, 292, '_wp_trash_meta_time', '1523370490'),
(487, 293, '_wp_trash_meta_status', 'publish'),
(488, 293, '_wp_trash_meta_time', '1523370521'),
(489, 258, '_edit_lock', '1523373217:1'),
(492, 2, '_edit_lock', '1523373236:1'),
(493, 92, '_edit_lock', '1523373254:1'),
(494, 252, '_edit_lock', '1523373315:1'),
(495, 295, '_edit_last', '1'),
(496, 295, '_edit_lock', '1523474046:1'),
(497, 295, '_wp_page_template', 'page-templates/single-testimonial.php'),
(498, 250, '_wp_trash_meta_status', 'publish'),
(499, 250, '_wp_trash_meta_time', '1523373462'),
(500, 250, '_wp_desired_post_slug', 'john-doe-3'),
(501, 252, '_wp_trash_meta_status', 'publish'),
(502, 252, '_wp_trash_meta_time', '1523373466'),
(503, 252, '_wp_desired_post_slug', 'janet-doe-2'),
(504, 228, '_edit_lock', '1523373333:1'),
(505, 228, '_wp_trash_meta_status', 'publish'),
(506, 228, '_wp_trash_meta_time', '1523373485'),
(507, 228, '_wp_desired_post_slug', 'john-doe-2'),
(508, 92, '_wp_trash_meta_status', 'publish'),
(509, 92, '_wp_trash_meta_time', '1523373491'),
(510, 92, '_wp_desired_post_slug', 'janet-doe'),
(511, 94, '_wp_trash_meta_status', 'publish'),
(512, 94, '_wp_trash_meta_time', '1523373512'),
(513, 94, '_wp_desired_post_slug', 'steve-doe'),
(514, 254, '_wp_trash_meta_status', 'publish'),
(515, 254, '_wp_trash_meta_time', '1523373522'),
(516, 254, '_wp_desired_post_slug', 'steve-doe-2'),
(517, 303, '_edit_last', '1'),
(518, 303, '_edit_lock', '1523474199:1'),
(519, 303, '_wp_page_template', 'page-templates/single-testimonial.php'),
(520, 305, '_edit_last', '1'),
(521, 305, '_edit_lock', '1523474030:1'),
(522, 305, '_wp_page_template', 'page-templates/single-testimonial.php'),
(523, 310, '_menu_item_type', 'custom'),
(524, 310, '_menu_item_menu_item_parent', '0'),
(525, 310, '_menu_item_object_id', '310'),
(526, 310, '_menu_item_object', 'custom'),
(527, 310, '_menu_item_target', ''),
(528, 310, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(529, 310, '_menu_item_xfn', ''),
(530, 310, '_menu_item_url', 'https://www.instagram.com/wickphoto/'),
(532, 311, '_wp_trash_meta_status', 'publish'),
(533, 311, '_wp_trash_meta_time', '1523449820'),
(534, 312, '_edit_lock', '1523450350:1'),
(535, 312, '_wp_trash_meta_status', 'publish'),
(536, 312, '_wp_trash_meta_time', '1523450356'),
(537, 313, '_wp_trash_meta_status', 'publish'),
(538, 313, '_wp_trash_meta_time', '1523457923'),
(539, 314, '_menu_item_type', 'custom'),
(540, 314, '_menu_item_menu_item_parent', '0'),
(541, 314, '_menu_item_object_id', '314'),
(542, 314, '_menu_item_object', 'custom'),
(543, 314, '_menu_item_target', ''),
(544, 314, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(545, 314, '_menu_item_xfn', ''),
(546, 314, '_menu_item_url', 'http://stephsymosko.com');

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
(1, 0, '2018-04-09 14:26:12', '2018-04-09 14:26:12', 'Welcome to WordPress. This is your first post. Edit or delete it, then start writing!', 'Hello world!', '', 'publish', 'open', 'open', '', 'hello-world', '', '', '2018-04-09 14:26:12', '2018-04-09 14:26:12', '', 0, 'http://localhost:8888/?p=1', 0, 'post', '', 1),
(2, 0, '2018-04-09 14:26:12', '2018-04-09 14:26:12', 'This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:\n\n<blockquote>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</blockquote>\n\n...or something like this:\n\n<blockquote>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</blockquote>\n\nAs a new WordPress user, you should go to <a href=\"http://localhost:8888/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!', 'Sample Page', '', 'publish', 'closed', 'open', '', 'sample-page', '', '', '2018-04-09 14:26:12', '2018-04-09 14:26:12', '', 0, 'http://localhost:8888/?page_id=2', 0, 'page', '', 0),
(3, 1, '2018-04-09 14:26:12', '2018-04-09 14:26:12', 'Welcome to WordPress. This is your first post. Edit or delete it, then start writing!', 'Hello world!', '', 'publish', 'open', 'open', '', 'hello-world', '', '', '2018-04-09 14:26:12', '2018-04-09 14:26:12', '', 0, 'http://localhost:8888/?p=1', 0, 'post', '', 1),
(4, 1, '2018-04-09 14:26:12', '2018-04-09 14:26:12', 'This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:\n\n<blockquote>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</blockquote>\n\n...or something like this:\n\n<blockquote>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</blockquote>\n\nAs a new WordPress user, you should go to <a href=\"http://localhost:8888/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!', 'Sample Page', '', 'publish', 'closed', 'open', '', 'sample-page', '', '', '2018-04-09 14:26:12', '2018-04-09 14:26:12', '', 0, 'http://localhost:8888/?page_id=2', 0, 'page', '', 0),
(5, 1, '2018-04-09 14:26:50', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2018-04-09 14:26:50', '0000-00-00 00:00:00', '', 0, 'http://localhost:8888/?p=5', 0, 'post', '', 0),
(7, 1, '2018-04-09 14:28:56', '2018-04-09 14:28:56', '', 'Home', '', 'trash', 'closed', 'closed', '', 'home__trashed', '', '', '2018-04-09 14:32:27', '2018-04-09 14:32:27', '', 0, 'http://localhost:8888/?page_id=7', 0, 'page', '', 0),
(8, 1, '2018-04-09 14:28:56', '2018-04-09 14:28:56', '', 'Home', '', 'inherit', 'closed', 'closed', '', '7-revision-v1', '', '', '2018-04-09 14:28:56', '2018-04-09 14:28:56', '', 7, 'http://localhost:8888/2018/04/09/7-revision-v1/', 0, 'revision', '', 0),
(10, 1, '2018-04-09 14:31:25', '2018-04-09 14:31:25', '', 'One Click Demo Import - log_file_2018-04-09__14-31-25', '', 'inherit', 'open', 'closed', '', 'one-click-demo-import-log_file_2018-04-09__14-31-25', '', '', '2018-04-09 14:31:25', '2018-04-09 14:31:25', '', 0, 'http://localhost:8888/wp-content/uploads/2018/04/log_file_2018-04-09__14-31-25.txt', 0, 'attachment', 'text/plain', 0),
(11, 1, '2018-04-09 14:31:26', '2018-04-09 14:31:26', '', 'Homepage', '', 'publish', 'closed', 'closed', '', 'homepage', '', '', '2018-04-09 14:31:26', '2018-04-09 14:31:26', '', 0, 'http://localhost:8888/homepage/', 0, 'page', '', 0),
(12, 1, '2016-02-16 10:56:58', '2016-02-16 10:56:58', '', 's6', '', 'inherit', 'open', 'closed', '', 's6', '', '', '2016-02-16 10:56:58', '2016-02-16 10:56:58', '', 0, 'http://demo.athemes.com/astrid/wp-content/uploads/sites/50/2016/02/s6.jpg', 0, 'attachment', 'image/jpeg', 0),
(13, 1, '2016-02-16 10:56:59', '2016-02-16 10:56:59', '', 's2', '', 'inherit', 'open', 'closed', '', 's2', '', '', '2016-02-16 10:56:59', '2016-02-16 10:56:59', '', 0, 'http://demo.athemes.com/astrid/wp-content/uploads/sites/50/2016/02/s2.jpg', 0, 'attachment', 'image/jpeg', 0),
(14, 1, '2016-02-16 10:56:59', '2016-02-16 10:56:59', '', 's3', '', 'inherit', 'open', 'closed', '', 's3', '', '', '2016-02-16 10:56:59', '2016-02-16 10:56:59', '', 0, 'http://demo.athemes.com/astrid/wp-content/uploads/sites/50/2016/02/s3.jpg', 0, 'attachment', 'image/jpeg', 0),
(15, 1, '2016-02-16 10:56:59', '2016-02-16 10:56:59', '', 's5', '', 'inherit', 'open', 'closed', '', 's5', '', '', '2016-02-16 10:56:59', '2016-02-16 10:56:59', '', 0, 'http://demo.athemes.com/astrid/wp-content/uploads/sites/50/2016/02/s5.jpg', 0, 'attachment', 'image/jpeg', 0),
(16, 1, '2016-02-16 10:57:26', '2016-02-16 10:57:26', '', 'a1', '', 'inherit', 'open', 'closed', '', 'a1', '', '', '2016-02-16 10:57:26', '2016-02-16 10:57:26', '', 0, 'http://demo.athemes.com/astrid/wp-content/uploads/sites/50/2016/02/a1.jpg', 0, 'attachment', 'image/jpeg', 0),
(17, 1, '2016-02-16 10:57:27', '2016-02-16 10:57:27', '', 'a2', '', 'inherit', 'open', 'closed', '', 'a2', '', '', '2016-02-16 10:57:27', '2016-02-16 10:57:27', '', 0, 'http://demo.athemes.com/astrid/wp-content/uploads/sites/50/2016/02/a2.jpg', 0, 'attachment', 'image/jpeg', 0),
(18, 1, '2016-02-16 10:57:28', '2016-02-16 10:57:28', '', 'a3', '', 'inherit', 'open', 'closed', '', 'a3', '', '', '2016-02-16 10:57:28', '2016-02-16 10:57:28', '', 0, 'http://demo.athemes.com/astrid/wp-content/uploads/sites/50/2016/02/a3.jpg', 0, 'attachment', 'image/jpeg', 0),
(19, 1, '2016-02-16 10:57:43', '2016-02-16 10:57:43', '', 'c1', '', 'inherit', 'open', 'closed', '', 'c1', '', '', '2016-02-16 10:57:43', '2016-02-16 10:57:43', '', 0, 'http://demo.athemes.com/astrid/wp-content/uploads/sites/50/2016/02/c1.png', 0, 'attachment', 'image/png', 0),
(20, 1, '2016-02-16 10:57:44', '2016-02-16 10:57:44', '', 'c2', '', 'inherit', 'open', 'closed', '', 'c2', '', '', '2016-02-16 10:57:44', '2016-02-16 10:57:44', '', 0, 'http://demo.athemes.com/astrid/wp-content/uploads/sites/50/2016/02/c2.png', 0, 'attachment', 'image/png', 0),
(21, 1, '2016-02-16 10:57:44', '2016-02-16 10:57:44', '', 'c3', '', 'inherit', 'open', 'closed', '', 'c3', '', '', '2016-02-16 10:57:44', '2016-02-16 10:57:44', '', 0, 'http://demo.athemes.com/astrid/wp-content/uploads/sites/50/2016/02/c3.png', 0, 'attachment', 'image/png', 0),
(22, 1, '2016-02-16 10:57:45', '2016-02-16 10:57:45', '', 'c4', '', 'inherit', 'open', 'closed', '', 'c4', '', '', '2016-02-16 10:57:45', '2016-02-16 10:57:45', '', 0, 'http://demo.athemes.com/astrid/wp-content/uploads/sites/50/2016/02/c4.png', 0, 'attachment', 'image/png', 0),
(23, 1, '2016-02-16 10:58:18', '2016-02-16 10:58:18', '', 'p1', '', 'inherit', 'open', 'closed', '', 'p1', '', '', '2016-02-16 10:58:18', '2016-02-16 10:58:18', '', 0, 'http://demo.athemes.com/astrid/wp-content/uploads/sites/50/2016/02/p1.jpg', 0, 'attachment', 'image/jpeg', 0),
(24, 1, '2016-02-16 10:58:18', '2016-02-16 10:58:18', '', 'p2', '', 'inherit', 'open', 'closed', '', 'p2', '', '', '2016-02-16 10:58:18', '2016-02-16 10:58:18', '', 0, 'http://demo.athemes.com/astrid/wp-content/uploads/sites/50/2016/02/p2.jpg', 0, 'attachment', 'image/jpeg', 0),
(25, 1, '2016-02-16 10:58:19', '2016-02-16 10:58:19', '', 'p3', '', 'inherit', 'open', 'closed', '', 'p3', '', '', '2016-02-16 10:58:19', '2016-02-16 10:58:19', '', 0, 'http://demo.athemes.com/astrid/wp-content/uploads/sites/50/2016/02/p3.jpg', 0, 'attachment', 'image/jpeg', 0),
(26, 1, '2016-02-16 10:58:19', '2016-02-16 10:58:19', '', 'p4', '', 'inherit', 'open', 'closed', '', 'p4', '', '', '2016-02-16 10:58:19', '2016-02-16 10:58:19', '', 0, 'http://demo.athemes.com/astrid/wp-content/uploads/sites/50/2016/02/p4.jpg', 0, 'attachment', 'image/jpeg', 0),
(27, 1, '2016-02-16 10:58:20', '2016-02-16 10:58:20', '', 'p5', '', 'inherit', 'open', 'closed', '', 'p5', '', '', '2016-02-16 10:58:20', '2016-02-16 10:58:20', '', 0, 'http://demo.athemes.com/astrid/wp-content/uploads/sites/50/2016/02/p5.jpg', 0, 'attachment', 'image/jpeg', 0),
(28, 1, '2016-02-16 10:58:20', '2016-02-16 10:58:20', '', 'p6', '', 'inherit', 'open', 'closed', '', 'p6', '', '', '2016-02-16 10:58:20', '2016-02-16 10:58:20', '', 0, 'http://demo.athemes.com/astrid/wp-content/uploads/sites/50/2016/02/p6.jpg', 0, 'attachment', 'image/jpeg', 0),
(29, 1, '2016-02-16 10:58:21', '2016-02-16 10:58:21', '', 'p7', '', 'inherit', 'open', 'closed', '', 'p7', '', '', '2016-02-16 10:58:21', '2016-02-16 10:58:21', '', 0, 'http://demo.athemes.com/astrid/wp-content/uploads/sites/50/2016/02/p7.jpg', 0, 'attachment', 'image/jpeg', 0),
(30, 1, '2016-02-16 10:58:22', '2016-02-16 10:58:22', '', 'p8', '', 'inherit', 'open', 'closed', '', 'p8', '', '', '2016-02-16 10:58:22', '2016-02-16 10:58:22', '', 0, 'http://demo.athemes.com/astrid/wp-content/uploads/sites/50/2016/02/p8.jpg', 0, 'attachment', 'image/jpeg', 0),
(80, 1, '2016-02-16 14:39:06', '2016-02-16 14:39:06', '', 'Homepage', '', 'publish', 'closed', 'closed', '', 'homepage-2', '', '', '2016-02-16 14:39:06', '2016-02-16 14:39:06', '', 0, 'http://demo.athemes.com/astrid/?page_id=80', 0, 'page', '', 0),
(82, 1, '2016-02-16 14:39:13', '2016-02-16 14:39:13', '', 'Blog', '', 'publish', 'closed', 'closed', '', 'blog', '', '', '2016-02-16 14:39:13', '2016-02-16 14:39:13', '', 0, 'http://demo.athemes.com/astrid/?page_id=82', 0, 'page', '', 0),
(86, 1, '2016-02-16 14:40:03', '2016-02-16 14:40:03', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc maximus vitae sapien rutrum porttitor. Fusce blandit posuere odio nec eleifend.', 'Service 2', '', 'publish', 'closed', 'closed', '', 'service-2', '', '', '2016-02-16 14:40:03', '2016-02-16 14:40:03', '', 0, 'http://demo.athemes.com/astrid/?page_id=86', 0, 'page', '', 0),
(88, 1, '2016-02-16 14:40:18', '2016-02-16 14:40:18', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc maximus vitae sapien rutrum porttitor. Fusce blandit posuere odio nec eleifend.', 'Service 3', '', 'publish', 'closed', 'closed', '', 'service-3', '', '', '2016-02-16 14:40:18', '2016-02-16 14:40:18', '', 0, 'http://demo.athemes.com/astrid/?page_id=88', 0, 'page', '', 0),
(92, 1, '2016-02-16 14:41:25', '2016-02-16 14:41:25', 'Developer', 'Janet Doe', '', 'trash', 'closed', 'closed', '', 'janet-doe__trashed', '', '', '2018-04-10 15:18:11', '2018-04-10 15:18:11', '', 0, 'http://demo.athemes.com/astrid/?page_id=92', 0, 'page', '', 0),
(94, 1, '2016-02-16 14:41:41', '2016-02-16 14:41:41', 'Designer', 'Steve Doe', '', 'trash', 'closed', 'closed', '', 'steve-doe__trashed', '', '', '2018-04-10 15:18:32', '2018-04-10 15:18:32', '', 0, 'http://demo.athemes.com/astrid/?page_id=94', -1, 'page', '', 0),
(98, 1, '2016-02-16 14:42:40', '2016-02-16 14:42:40', '', 'Project 2', '', 'publish', 'closed', 'closed', '', 'project-2', '', '', '2016-02-16 14:42:40', '2016-02-16 14:42:40', '', 0, 'http://demo.athemes.com/astrid/?page_id=98', 0, 'page', '', 0),
(100, 1, '2016-02-16 14:42:52', '2016-02-16 14:42:52', '', 'Project 3', '', 'publish', 'closed', 'closed', '', 'project-3', '', '', '2016-02-16 14:42:52', '2016-02-16 14:42:52', '', 0, 'http://demo.athemes.com/astrid/?page_id=100', 0, 'page', '', 0),
(102, 1, '2016-02-16 14:43:07', '2016-02-16 14:43:07', '', 'Project 4', '', 'publish', 'closed', 'closed', '', 'project-4', '', '', '2016-02-16 14:43:07', '2016-02-16 14:43:07', '', 0, 'http://demo.athemes.com/astrid/?page_id=102', 0, 'page', '', 0),
(106, 1, '2016-02-16 14:44:17', '2016-02-16 14:44:17', '', 'Client 2', '', 'publish', 'closed', 'closed', '', 'client-2', '', '', '2016-02-16 14:44:17', '2016-02-16 14:44:17', '', 0, 'http://demo.athemes.com/astrid/?page_id=106', 0, 'page', '', 0),
(108, 1, '2016-02-16 14:45:34', '2016-02-16 14:45:34', '', 'Client 3', '', 'publish', 'closed', 'closed', '', 'client-3', '', '', '2016-02-16 14:45:34', '2016-02-16 14:45:34', '', 0, 'http://demo.athemes.com/astrid/?page_id=108', 0, 'page', '', 0),
(110, 1, '2016-02-16 14:45:46', '2016-02-16 14:45:46', '', 'Client 4', '', 'publish', 'closed', 'closed', '', 'client-4', '', '', '2016-02-16 14:45:46', '2016-02-16 14:45:46', '', 0, 'http://demo.athemes.com/astrid/?page_id=110', 0, 'page', '', 0),
(112, 1, '2016-02-16 15:04:11', '2016-02-16 15:04:11', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc maximus vitae sapien rutrum porttitor. Fusce blandit posuere odio nec eleifend.', 'Service 4', '', 'publish', 'closed', 'closed', '', 'service-4', '', '', '2016-02-16 15:04:11', '2016-02-16 15:04:11', '', 0, 'http://demo.athemes.com/astrid/?page_id=112', 0, 'page', '', 0),
(114, 1, '2016-02-16 15:04:24', '2016-02-16 15:04:24', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc maximus vitae sapien rutrum porttitor. Fusce blandit posuere odio nec eleifend.', 'Service 5', '', 'publish', 'closed', 'closed', '', 'service-5', '', '', '2016-02-16 15:04:24', '2016-02-16 15:04:24', '', 0, 'http://demo.athemes.com/astrid/?page_id=114', 0, 'page', '', 0),
(116, 1, '2016-02-16 15:05:20', '2016-02-16 15:05:20', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc maximus vitae sapien rutrum porttitor. Fusce blandit posuere odio nec eleifend.', 'Service 6', '', 'publish', 'closed', 'closed', '', 'service-6', '', '', '2016-02-16 15:05:20', '2016-02-16 15:05:20', '', 0, 'http://demo.athemes.com/astrid/?page_id=116', 0, 'page', '', 0),
(118, 1, '2016-02-16 15:09:09', '2016-02-16 15:09:09', '', 'Project 5', '', 'publish', 'closed', 'closed', '', 'project-5', '', '', '2016-02-16 15:09:09', '2016-02-16 15:09:09', '', 0, 'http://demo.athemes.com/astrid/?page_id=118', 0, 'page', '', 0),
(120, 1, '2016-02-16 15:09:28', '2016-02-16 15:09:28', '', 'Project 6', '', 'publish', 'closed', 'closed', '', 'project-6', '', '', '2016-02-16 15:09:28', '2016-02-16 15:09:28', '', 0, 'http://demo.athemes.com/astrid/?page_id=120', 0, 'page', '', 0),
(122, 1, '2016-02-16 15:09:41', '2016-02-16 15:09:41', '', 'Project 7', '', 'publish', 'closed', 'closed', '', 'project-7', '', '', '2016-02-16 15:09:41', '2016-02-16 15:09:41', '', 0, 'http://demo.athemes.com/astrid/?page_id=122', 0, 'page', '', 0),
(124, 1, '2016-02-16 15:09:55', '2016-02-16 15:09:55', '', 'Project 8', '', 'publish', 'closed', 'closed', '', 'project-8', '', '', '2016-02-16 15:09:55', '2016-02-16 15:09:55', '', 0, 'http://demo.athemes.com/astrid/?page_id=124', 0, 'page', '', 0),
(226, 1, '2016-02-16 16:03:19', '2016-02-16 16:03:19', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc maximus vitae sapien rutrum porttitor. Fusce blandit posuere odio nec eleifend.', 'Service 1', '', 'publish', 'closed', 'closed', '', 'service-1', '', '', '2016-02-16 16:03:19', '2016-02-16 16:03:19', '', 0, 'http://demo.athemes.com/astrid/?page_id=226', -1, 'page', '', 0),
(228, 1, '2016-02-16 16:04:16', '2016-02-16 16:04:16', 'Designer', 'John Doe', '', 'trash', 'closed', 'closed', '', 'john-doe-2__trashed', '', '', '2018-04-10 15:18:05', '2018-04-10 15:18:05', '', 0, 'http://demo.athemes.com/astrid/?page_id=228', 0, 'page', '', 0),
(230, 1, '2016-02-16 16:05:03', '2016-02-16 16:05:03', '', 'Project 1', '', 'publish', 'closed', 'closed', '', 'project-1-2', '', '', '2016-02-16 16:05:03', '2016-02-16 16:05:03', '', 0, 'http://demo.athemes.com/astrid/?page_id=230', 0, 'page', '', 0),
(233, 1, '2016-02-17 17:35:49', '2016-02-17 17:35:49', '', 'w1', '', 'inherit', 'open', 'closed', '', 'w1', '', '', '2016-02-17 17:35:49', '2016-02-17 17:35:49', '', 0, 'http://demo.athemes.com/astrid/wp-content/uploads/sites/50/2016/02/w1.png', 0, 'attachment', 'image/png', 0),
(234, 1, '2016-02-17 17:35:51', '2016-02-17 17:35:51', '', 'w2', '', 'inherit', 'open', 'closed', '', 'w2', '', '', '2016-02-17 17:35:51', '2016-02-17 17:35:51', '', 0, 'http://demo.athemes.com/astrid/wp-content/uploads/sites/50/2016/02/w2.png', 0, 'attachment', 'image/png', 0),
(235, 1, '2016-02-17 17:35:51', '2016-02-17 17:35:51', '', 'w3', '', 'inherit', 'open', 'closed', '', 'w3', '', '', '2016-02-17 17:35:51', '2016-02-17 17:35:51', '', 0, 'http://demo.athemes.com/astrid/wp-content/uploads/sites/50/2016/02/w3.png', 0, 'attachment', 'image/png', 0),
(236, 1, '2016-02-17 17:42:42', '2016-02-17 17:42:42', '', 'Client 1', '', 'publish', 'closed', 'closed', '', 'client-1-2', '', '', '2016-02-17 17:42:42', '2016-02-17 17:42:42', '', 0, 'http://demo.athemes.com/astrid/?page_id=236', 0, 'page', '', 0),
(239, 1, '2016-02-18 06:44:02', '2016-02-18 06:44:02', '', 'logo', '', 'inherit', 'open', 'closed', '', 'logo', '', '', '2016-02-18 06:44:02', '2016-02-18 06:44:02', '', 0, 'http://demo.athemes.com/astrid/wp-content/uploads/sites/50/2016/02/logo.png', 0, 'attachment', 'image/png', 0),
(240, 1, '2016-02-18 06:49:34', '2016-02-18 06:49:34', '', 'A bit of history', '', 'publish', 'closed', 'closed', '', 'history', '', '', '2016-02-18 06:49:34', '2016-02-18 06:49:34', '', 0, 'http://demo.athemes.com/astrid/?p=240', 1, 'nav_menu_item', '', 0),
(241, 1, '2016-02-18 06:49:34', '2016-02-18 06:49:34', '', 'These are our goals', '', 'publish', 'closed', 'closed', '', 'goals', '', '', '2016-02-18 06:49:34', '2016-02-18 06:49:34', '', 0, 'http://demo.athemes.com/astrid/?p=241', 2, 'nav_menu_item', '', 0),
(242, 1, '2016-02-18 06:49:34', '2016-02-18 06:49:34', '', 'Our strategy', '', 'publish', 'closed', 'closed', '', 'principles', '', '', '2016-02-18 06:49:34', '2016-02-18 06:49:34', '', 0, 'http://demo.athemes.com/astrid/?p=242', 3, 'nav_menu_item', '', 0),
(243, 1, '2016-02-18 06:51:58', '2016-02-18 06:51:58', '', 'Design and Dev work', '', 'publish', 'closed', 'closed', '', 'design', '', '', '2016-02-18 06:51:58', '2016-02-18 06:51:58', '', 0, 'http://demo.athemes.com/astrid/?p=243', 1, 'nav_menu_item', '', 0),
(244, 1, '2016-02-18 06:51:58', '2016-02-18 06:51:58', '', 'Planning and Strategy', '', 'publish', 'closed', 'closed', '', 'development', '', '', '2016-02-18 06:51:58', '2016-02-18 06:51:58', '', 0, 'http://demo.athemes.com/astrid/?p=244', 2, 'nav_menu_item', '', 0),
(245, 1, '2016-02-18 06:51:58', '2016-02-18 06:51:58', '', 'Consulting and Marketing', '', 'publish', 'closed', 'closed', '', 'consulting', '', '', '2016-02-18 06:51:58', '2016-02-18 06:51:58', '', 0, 'http://demo.athemes.com/astrid/?p=245', 3, 'nav_menu_item', '', 0),
(246, 1, '2016-02-18 06:55:59', '2016-02-18 06:55:59', '', 'Accounting and Finance', '', 'publish', 'closed', 'closed', '', 'accounting', '', '', '2016-02-18 06:55:59', '2016-02-18 06:55:59', '', 0, 'http://demo.athemes.com/astrid/?p=246', 4, 'nav_menu_item', '', 0),
(247, 1, '2016-02-18 06:55:59', '2016-02-18 06:55:59', '', 'Management and Resources', '', 'publish', 'closed', 'closed', '', 'management', '', '', '2016-02-18 06:55:59', '2016-02-18 06:55:59', '', 0, 'http://demo.athemes.com/astrid/?p=247', 5, 'nav_menu_item', '', 0),
(248, 1, '2016-02-18 06:56:50', '2016-02-18 06:56:50', '', 'Get in touch with us', '', 'publish', 'closed', 'closed', '', 'get-in-touch-with-us', '', '', '2016-02-18 06:56:50', '2016-02-18 06:56:50', '', 0, 'http://demo.athemes.com/astrid/?p=248', 5, 'nav_menu_item', '', 0),
(249, 1, '2016-02-18 06:59:04', '2016-02-18 06:59:04', '', 'Other important stuff', '', 'publish', 'closed', 'closed', '', 'other-important-stuff', '', '', '2016-02-18 06:59:04', '2016-02-18 06:59:04', '', 0, 'http://demo.athemes.com/astrid/?p=249', 4, 'nav_menu_item', '', 0),
(250, 1, '2016-02-18 07:27:18', '2016-02-18 07:27:18', 'Lorem ipsum dolor sit amet, consectet elit. Vivamus ornare vitae lacus sed tinm dolor sit amet, consectetur adipiscin nare vitae lacus sed tincidunt.', 'John Doe', '', 'trash', 'closed', 'closed', '', 'john-doe-3__trashed', '', '', '2018-04-10 15:17:42', '2018-04-10 15:17:42', '', 0, 'http://demo.athemes.com/astrid/?page_id=250', 0, 'page', '', 0),
(252, 1, '2016-02-18 07:27:32', '2016-02-18 07:27:32', 'Lorem ipsum dolor sit amet, consectet elit. Vivamus ornare vitae lacus sed tinm dolor sit amet, consectetur adipiscin nare vitae lacus sed tincidunt.', 'Janet Doe', '', 'trash', 'closed', 'closed', '', 'janet-doe-2__trashed', '', '', '2018-04-10 15:17:46', '2018-04-10 15:17:46', '', 0, 'http://demo.athemes.com/astrid/?page_id=252', 0, 'page', '', 0),
(254, 1, '2016-02-18 07:27:48', '2016-02-18 07:27:48', 'Lorem ipsum dolor sit amet, consectet elit. Vivamus ornare vitae lacus sed tinm dolor sit amet, consectetur adipiscin nare vitae lacus sed tincidunt.', 'Steve Doe', '', 'trash', 'closed', 'closed', '', 'steve-doe-2__trashed', '', '', '2018-04-10 15:18:42', '2018-04-10 15:18:42', '', 0, 'http://demo.athemes.com/astrid/?page_id=254', 0, 'page', '', 0),
(256, 1, '2016-02-18 07:32:55', '2016-02-18 07:32:55', '', 'aerial-view-1149248_1920', '', 'inherit', 'open', 'closed', '', 'aerial-view-1149248_1920', '', '', '2016-02-18 07:32:55', '2016-02-18 07:32:55', '', 0, 'http://demo.athemes.com/astrid/wp-content/uploads/sites/50/2016/02/aerial-view-1149248_1920.jpg', 0, 'attachment', 'image/jpeg', 0),
(257, 1, '2016-02-18 07:35:46', '2016-02-18 07:35:46', '', 'skyscraper-1149541_1920', '', 'inherit', 'open', 'closed', '', 'skyscraper-1149541_1920', '', '', '2016-02-18 07:35:46', '2016-02-18 07:35:46', '', 0, 'http://demo.athemes.com/astrid/wp-content/uploads/sites/50/2016/02/skyscraper-1149541_1920.jpg', 0, 'attachment', 'image/jpeg', 0),
(258, 1, '2016-02-18 07:43:20', '2016-02-18 07:43:20', 'Testimonial', 'Lorem ipsum dolor sit amet', '', 'publish', 'open', 'open', '', 'lorem-ipsum-dolor-sit-amet', '', '', '2018-04-10 15:15:36', '2018-04-10 15:15:36', '', 0, 'http://demo.athemes.com/astrid/?p=258', 0, 'post', '', 0),
(259, 1, '2016-02-18 07:43:15', '2016-02-18 07:43:15', '', 'photos-1148980_1280', '', 'inherit', 'open', 'closed', '', 'photos-1148980_1280', '', '', '2018-04-09 14:31:41', '2018-04-09 14:31:41', '', 258, 'http://demo.athemes.com/astrid/wp-content/uploads/sites/50/2016/02/photos-1148980_1280.jpg', 0, 'attachment', 'image/jpeg', 0),
(261, 1, '2016-02-18 07:43:46', '2016-02-18 07:43:46', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed a dictum libero. Nunc et lectus et lectus bibendum sodales. Donec nisi lectus, consequat tempor fermentum nec, sollicitudin nec nibh. Praesent in finibus ligula. Pellentesque porta tortor nibh, a cursus urna euismod eget. Etiam nibh eros, suscipit quis maximus in, mattis id lacus. Duis placerat dictum porta.\n\nCum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Praesent eget felis aliquet, auctor felis vel, varius ex. In eget odio pharetra felis vulputate blandit. Integer eu turpis viverra, sagittis urna eu, feugiat dui. Sed porta nibh eu lectus condimentum iaculis. Etiam accumsan placerat cursus. Sed congue consectetur urna, euismod scelerisque justo euismod vitae. Nullam a efficitur elit.\n\nCurabitur quis porttitor nisl, in interdum lorem. Integer non cursus dui. Curabitur pharetra elit ac placerat bibendum. Praesent diam elit, auctor in tincidunt eu, pellentesque ut erat. Curabitur vitae est fermentum, tempor enim ac, euismod orci. Morbi facilisis metus ac justo sollicitudin molestie. Phasellus hendrerit arcu molestie lectus accumsan imperdiet. Duis neque felis, venenatis id lobortis ac, porta congue augue. Nullam finibus nisi quam, sed consectetur nunc faucibus in. Ut posuere posuere quam vel sodales. Suspendisse potenti.', 'Integer non cursus dui', '', 'publish', 'open', 'open', '', 'integer-non-cursus-dui', '', '', '2016-02-18 07:43:46', '2016-02-18 07:43:46', '', 0, 'http://demo.athemes.com/astrid/?p=261', 0, 'post', '', 0),
(262, 1, '2016-02-18 07:43:41', '2016-02-18 07:43:41', '', 'hiker-1149898_1280', '', 'inherit', 'open', 'closed', '', 'hiker-1149898_1280', '', '', '2018-04-09 14:31:41', '2018-04-09 14:31:41', '', 261, 'http://demo.athemes.com/astrid/wp-content/uploads/sites/50/2016/02/hiker-1149898_1280.jpg', 0, 'attachment', 'image/jpeg', 0),
(264, 1, '2016-02-18 07:44:41', '2016-02-18 07:44:41', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed a dictum libero. Nunc et lectus et lectus bibendum sodales. Donec nisi lectus, consequat tempor fermentum nec, sollicitudin nec nibh. Praesent in finibus ligula. Pellentesque porta tortor nibh, a cursus urna euismod eget. Etiam nibh eros, suscipit quis maximus in, mattis id lacus. Duis placerat dictum porta.\n\nCum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Praesent eget felis aliquet, auctor felis vel, varius ex. In eget odio pharetra felis vulputate blandit. Integer eu turpis viverra, sagittis urna eu, feugiat dui. Sed porta nibh eu lectus condimentum iaculis. Etiam accumsan placerat cursus. Sed congue consectetur urna, euismod scelerisque justo euismod vitae. Nullam a efficitur elit.\n\nCurabitur quis porttitor nisl, in interdum lorem. Integer non cursus dui. Curabitur pharetra elit ac placerat bibendum. Praesent diam elit, auctor in tincidunt eu, pellentesque ut erat. Curabitur vitae est fermentum, tempor enim ac, euismod orci. Morbi facilisis metus ac justo sollicitudin molestie. Phasellus hendrerit arcu molestie lectus accumsan imperdiet. Duis neque felis, venenatis id lobortis ac, porta congue augue. Nullam finibus nisi quam, sed consectetur nunc faucibus in. Ut posuere posuere quam vel sodales. Suspendisse potenti.', 'Morbi facilisis metus ac justo', '', 'publish', 'open', 'open', '', 'morbi-facilisis-metus-ac-justo', '', '', '2016-02-18 07:44:41', '2016-02-18 07:44:41', '', 0, 'http://demo.athemes.com/astrid/?p=264', 0, 'post', '', 0),
(265, 1, '2016-02-18 07:44:36', '2016-02-18 07:44:36', '', 'man-1150058_1280', '', 'inherit', 'open', 'closed', '', 'man-1150058_1280', '', '', '2018-04-09 14:31:41', '2018-04-09 14:31:41', '', 264, 'http://demo.athemes.com/astrid/wp-content/uploads/sites/50/2016/02/man-1150058_1280.jpg', 0, 'attachment', 'image/jpeg', 0),
(266, 1, '2016-02-15 17:48:01', '2016-02-15 17:48:01', '', 'Sample Page', '', 'publish', 'closed', 'open', '', 'sample-page-2', '', '', '2016-02-15 17:48:01', '2016-02-15 17:48:01', '', 0, 'http://demo.athemes.com/astrid/?page_id=2', 0, 'page', '', 0),
(269, 1, '2018-04-09 14:37:23', '2018-04-09 14:37:23', '{\n    \"blogdescription\": {\n        \"value\": \"\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-04-09 14:36:30\"\n    },\n    \"astrid::header_text\": {\n        \"value\": \"Hirewick\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-04-09 14:37:23\"\n    },\n    \"astrid::menu_style\": {\n        \"value\": \"inline\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-04-09 14:36:30\"\n    },\n    \"astrid::nav_menu_locations[primary]\": {\n        \"value\": 4,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-04-09 14:36:30\"\n    },\n    \"astrid::front_header_type\": {\n        \"value\": \"image\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-04-09 14:37:23\"\n    },\n    \"astrid::site_header_type\": {\n        \"value\": \"nothing\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-04-09 14:37:23\"\n    },\n    \"astrid::header_subtext\": {\n        \"value\": \"\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-04-09 14:37:23\"\n    },\n    \"astrid::header_button\": {\n        \"value\": \"\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-04-09 14:37:23\"\n    },\n    \"astrid::header_button_url\": {\n        \"value\": \"\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-04-09 14:37:23\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '8129e81f-b62c-438a-aac8-39848b5bb3a9', '', '', '2018-04-09 14:37:23', '2018-04-09 14:37:23', '', 0, 'http://localhost:8888/?p=269', 0, 'customize_changeset', '', 0),
(272, 1, '2018-04-09 14:41:13', '2018-04-09 14:41:13', '', 'A bit of history', '', 'publish', 'closed', 'closed', '', 'a-bit-of-history', '', '', '2018-04-09 14:41:13', '2018-04-09 14:41:13', '', 0, 'http://localhost:8888/2018/04/09/a-bit-of-history/', 1, 'nav_menu_item', '', 0),
(273, 1, '2018-04-09 14:41:13', '2018-04-09 14:41:13', '', 'These are our goals', '', 'publish', 'closed', 'closed', '', 'these-are-our-goals', '', '', '2018-04-09 14:41:13', '2018-04-09 14:41:13', '', 0, 'http://localhost:8888/2018/04/09/these-are-our-goals/', 2, 'nav_menu_item', '', 0),
(274, 1, '2018-04-09 14:41:13', '2018-04-09 14:41:13', '', 'Our strategy', '', 'publish', 'closed', 'closed', '', 'our-strategy', '', '', '2018-04-09 14:41:13', '2018-04-09 14:41:13', '', 0, 'http://localhost:8888/2018/04/09/our-strategy/', 3, 'nav_menu_item', '', 0),
(275, 1, '2018-04-09 14:41:14', '2018-04-09 14:41:14', '', 'Design and Dev work', '', 'publish', 'closed', 'closed', '', 'design-and-dev-work', '', '', '2018-04-09 14:41:14', '2018-04-09 14:41:14', '', 0, 'http://localhost:8888/2018/04/09/design-and-dev-work/', 1, 'nav_menu_item', '', 0),
(276, 1, '2018-04-09 14:41:14', '2018-04-09 14:41:14', '', 'Planning and Strategy', '', 'publish', 'closed', 'closed', '', 'planning-and-strategy', '', '', '2018-04-09 14:41:14', '2018-04-09 14:41:14', '', 0, 'http://localhost:8888/2018/04/09/planning-and-strategy/', 2, 'nav_menu_item', '', 0),
(277, 1, '2018-04-09 14:41:14', '2018-04-09 14:41:14', '', 'Consulting and Marketing', '', 'publish', 'closed', 'closed', '', 'consulting-and-marketing', '', '', '2018-04-09 14:41:14', '2018-04-09 14:41:14', '', 0, 'http://localhost:8888/2018/04/09/consulting-and-marketing/', 3, 'nav_menu_item', '', 0),
(278, 1, '2018-04-09 14:41:14', '2018-04-09 14:41:14', '', 'Accounting and Finance', '', 'publish', 'closed', 'closed', '', 'accounting-and-finance', '', '', '2018-04-09 14:41:14', '2018-04-09 14:41:14', '', 0, 'http://localhost:8888/2018/04/09/accounting-and-finance/', 4, 'nav_menu_item', '', 0),
(279, 1, '2018-04-09 14:41:14', '2018-04-09 14:41:14', '', 'Management and Resources', '', 'publish', 'closed', 'closed', '', 'management-and-resources', '', '', '2018-04-09 14:41:14', '2018-04-09 14:41:14', '', 0, 'http://localhost:8888/2018/04/09/management-and-resources/', 5, 'nav_menu_item', '', 0),
(280, 1, '2018-04-09 14:41:14', '2018-04-09 14:41:14', '', 'Get in touch with us', '', 'publish', 'closed', 'closed', '', 'get-in-touch-with-us-2', '', '', '2018-04-09 14:41:14', '2018-04-09 14:41:14', '', 0, 'http://localhost:8888/2018/04/09/get-in-touch-with-us-2/', 5, 'nav_menu_item', '', 0),
(281, 1, '2018-04-09 14:41:14', '2018-04-09 14:41:14', '', 'Other important stuff', '', 'publish', 'closed', 'closed', '', 'other-important-stuff-2', '', '', '2018-04-09 14:41:14', '2018-04-09 14:41:14', '', 0, 'http://localhost:8888/2018/04/09/other-important-stuff-2/', 4, 'nav_menu_item', '', 0),
(283, 1, '2018-04-09 14:58:34', '2018-04-09 14:58:34', '{\n    \"sidebars_widgets[widget-area-homepage]\": {\n        \"value\": [\n            \"atframework_testimonials-3\",\n            \"atframework_projects-4\"\n        ],\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-04-09 14:58:09\"\n    },\n    \"widget_atframework_projects[4]\": {\n        \"value\": {\n            \"encoded_serialized_instance\": \"YToxNDp7czo1OiJ0aXRsZSI7czo4OiJTaG93Y2FzZSI7czo2OiJudW1iZXIiO3M6MjoiLTEiO3M6Njoib2Zmc2V0IjtzOjE6IjAiO3M6Nzoic2VlX2FsbCI7czowOiIiO3M6MTI6InNlZV9hbGxfdGV4dCI7czowOiIiO3M6NzoicGFnZWlkcyI7czowOiIiO3M6OToic2VjdGlvbklkIjtzOjA6IiI7czoxNjoiYmFja2dyb3VuZF9jb2xvciI7czowOiIiO3M6MTA6InRleHRfY29sb3IiO3M6MDoiIjtzOjE4OiJ3aWRnZXRfdGl0bGVfY29sb3IiO3M6MDoiIjtzOjEyOiJjb2x1bW5fd2lkdGgiO3M6NDoiZnVsbCI7czo5OiJpbWFnZV91cmkiO3M6MDoiIjtzOjc6InBhZGRpbmciO2k6MTAwO3M6MTI6Im5vX2NvbnRhaW5lciI7YjowO30=\",\n            \"title\": \"Showcase\",\n            \"is_widget_customizer_js_value\": true,\n            \"instance_hash_key\": \"8726ed6257a60f06028917390542faa8\"\n        },\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-04-09 14:57:08\"\n    },\n    \"widget_atframework_testimonials[3]\": {\n        \"value\": [],\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-04-09 14:58:09\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '7493a0ca-bd9b-4d15-bf18-b07d5f3f9146', '', '', '2018-04-09 14:58:34', '2018-04-09 14:58:34', '', 0, 'http://localhost:8888/?p=283', 0, 'customize_changeset', '', 0),
(284, 1, '2018-04-09 15:01:16', '2018-04-09 15:01:16', '{\n    \"astrid::nav_menu_locations[primary]\": {\n        \"value\": 4,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-04-09 15:01:16\"\n    },\n    \"astrid::nav_menu_locations[footer]\": {\n        \"value\": 4,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-04-09 15:01:16\"\n    },\n    \"nav_menu_item[200]\": {\n        \"value\": false,\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-04-09 15:01:16\"\n    },\n    \"nav_menu_item[267]\": {\n        \"value\": false,\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-04-09 15:01:16\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'cb20158f-6207-46a4-97b3-4c10925d0d8a', '', '', '2018-04-09 15:01:16', '2018-04-09 15:01:16', '', 0, 'http://localhost:8888/2018/04/09/cb20158f-6207-46a4-97b3-4c10925d0d8a/', 0, 'customize_changeset', '', 0),
(285, 1, '2018-04-09 15:03:05', '2018-04-09 15:03:05', '{\n    \"widget_atframework_testimonials[3]\": {\n        \"value\": {\n            \"encoded_serialized_instance\": \"YToxNDp7czo1OiJ0aXRsZSI7czoxMDoiUmVmZXJlbmNlcyI7czo2OiJudW1iZXIiO3M6MjoiLTEiO3M6Njoib2Zmc2V0IjtzOjE6IjAiO3M6Nzoic2VlX2FsbCI7czowOiIiO3M6MTI6InNlZV9hbGxfdGV4dCI7czowOiIiO3M6NzoicGFnZWlkcyI7czowOiIiO3M6OToic2VjdGlvbklkIjtzOjA6IiI7czoxNjoiYmFja2dyb3VuZF9jb2xvciI7czowOiIiO3M6MTA6InRleHRfY29sb3IiO3M6MDoiIjtzOjE4OiJ3aWRnZXRfdGl0bGVfY29sb3IiO3M6MDoiIjtzOjEyOiJjb2x1bW5fd2lkdGgiO3M6NDoiZnVsbCI7czo5OiJpbWFnZV91cmkiO3M6MDoiIjtzOjc6InBhZGRpbmciO2k6MTAwO3M6MTI6Im5vX2NvbnRhaW5lciI7YjowO30=\",\n            \"title\": \"References\",\n            \"is_widget_customizer_js_value\": true,\n            \"instance_hash_key\": \"5a1db0d6e173788b617fbb8f107d53e4\"\n        },\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-04-09 15:03:05\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '2bf1a76a-ba2b-4a1a-9c49-0818887ad433', '', '', '2018-04-09 15:03:05', '2018-04-09 15:03:05', '', 0, 'http://localhost:8888/2018/04/09/2bf1a76a-ba2b-4a1a-9c49-0818887ad433/', 0, 'customize_changeset', '', 0),
(286, 1, '2018-04-10 14:09:19', '2018-04-10 14:09:19', '{\n    \"widget_atframework_testimonials[3]\": {\n        \"value\": {\n            \"encoded_serialized_instance\": \"YToxNDp7czo1OiJ0aXRsZSI7czoxMDoiUmVmZXJlbmNlcyI7czo2OiJudW1iZXIiO3M6MjoiLTEiO3M6Njoib2Zmc2V0IjtzOjE6IjAiO3M6Nzoic2VlX2FsbCI7czowOiIiO3M6MTI6InNlZV9hbGxfdGV4dCI7czowOiIiO3M6NzoicGFnZWlkcyI7czowOiIiO3M6OToic2VjdGlvbklkIjtzOjA6IiI7czoxNjoiYmFja2dyb3VuZF9jb2xvciI7czo3OiIjZWZlZmVmIjtzOjEwOiJ0ZXh0X2NvbG9yIjtzOjA6IiI7czoxODoid2lkZ2V0X3RpdGxlX2NvbG9yIjtzOjA6IiI7czoxMjoiY29sdW1uX3dpZHRoIjtzOjQ6ImZ1bGwiO3M6OToiaW1hZ2VfdXJpIjtzOjA6IiI7czo3OiJwYWRkaW5nIjtpOjEwMDtzOjEyOiJub19jb250YWluZXIiO2I6MDt9\",\n            \"title\": \"References\",\n            \"is_widget_customizer_js_value\": true,\n            \"instance_hash_key\": \"13d54d58be7d4d6db159a45e3eb4877f\"\n        },\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-04-10 14:09:08\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'b78b0dfd-767d-4c69-8cf6-64eca574c0c7', '', '', '2018-04-10 14:09:19', '2018-04-10 14:09:19', '', 0, 'http://localhost:8888/?p=286', 0, 'customize_changeset', '', 0),
(287, 1, '2018-04-10 14:12:06', '2018-04-10 14:12:06', '{\n    \"widget_atframework_projects[4]\": {\n        \"value\": {\n            \"encoded_serialized_instance\": \"YToxNDp7czo1OiJ0aXRsZSI7czo4OiJTaG93Y2FzZSI7czo2OiJudW1iZXIiO3M6MjoiLTEiO3M6Njoib2Zmc2V0IjtzOjE6IjAiO3M6Nzoic2VlX2FsbCI7czowOiIiO3M6MTI6InNlZV9hbGxfdGV4dCI7czowOiIiO3M6NzoicGFnZWlkcyI7czowOiIiO3M6OToic2VjdGlvbklkIjtzOjA6IiI7czoxNjoiYmFja2dyb3VuZF9jb2xvciI7czowOiIiO3M6MTA6InRleHRfY29sb3IiO3M6MDoiIjtzOjE4OiJ3aWRnZXRfdGl0bGVfY29sb3IiO3M6MDoiIjtzOjEyOiJjb2x1bW5fd2lkdGgiO3M6NDoiZnVsbCI7czo5OiJpbWFnZV91cmkiO3M6MDoiIjtzOjc6InBhZGRpbmciO2k6NTA7czoxMjoibm9fY29udGFpbmVyIjtiOjE7fQ==\",\n            \"title\": \"Showcase\",\n            \"is_widget_customizer_js_value\": true,\n            \"instance_hash_key\": \"10df9e76e50ead61a08d6c072a950a0c\"\n        },\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-04-10 14:12:06\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'aca13371-fef7-42d1-ada4-50d563d2c28c', '', '', '2018-04-10 14:12:06', '2018-04-10 14:12:06', '', 0, 'http://localhost:8888/?p=287', 0, 'customize_changeset', '', 0),
(288, 1, '2018-04-10 14:17:50', '2018-04-10 14:17:50', '{\n    \"astrid-child::body_font_family\": {\n        \"value\": \"font-family: \'Montserrat\', sans-serif;\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-04-10 14:16:04\"\n    },\n    \"astrid-child::body_font_name\": {\n        \"value\": \"//fonts.googleapis.com/css?family=Montserrat\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-04-10 14:16:23\"\n    },\n    \"astrid-child::headings_font_name\": {\n        \"value\": \"//fonts.googleapis.com/css?family=Oswald:600\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-04-10 14:17:32\"\n    },\n    \"astrid-child::headings_font_family\": {\n        \"value\": \"font-family: \'Oswald\', sans-serif;\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-04-10 14:17:50\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '24799242-2799-459d-b0a2-8c53a5ba2af9', '', '', '2018-04-10 14:17:50', '2018-04-10 14:17:50', '', 0, 'http://localhost:8888/?p=288', 0, 'customize_changeset', '', 0),
(289, 1, '2018-04-10 14:26:57', '2018-04-10 14:26:57', '', 'hirewick_header_mobile', '', 'inherit', 'open', 'closed', '', 'hirewick_header_mobile', '', '', '2018-04-10 14:27:26', '2018-04-10 14:27:26', '', 0, 'http://localhost:8888/wp-content/uploads/2018/04/hirewick_header_mobile.jpg', 0, 'attachment', 'image/jpeg', 0),
(290, 1, '2018-04-10 14:26:58', '2018-04-10 14:26:58', '', 'hirewick_header', '', 'inherit', 'open', 'closed', '', 'hirewick_header', '', '', '2018-04-10 14:27:19', '2018-04-10 14:27:19', '', 0, 'http://localhost:8888/wp-content/uploads/2018/04/hirewick_header.jpg', 0, 'attachment', 'image/jpeg', 0),
(291, 1, '2018-04-10 14:27:47', '2018-04-10 14:27:47', '', 'cropped-hirewick_header.jpg', '', 'inherit', 'open', 'closed', '', 'cropped-hirewick_header-jpg', '', '', '2018-04-10 14:27:47', '2018-04-10 14:27:47', '', 0, 'http://localhost:8888/wp-content/uploads/2018/04/cropped-hirewick_header.jpg', 0, 'attachment', 'image/jpeg', 0),
(292, 1, '2018-04-10 14:28:10', '2018-04-10 14:28:10', '{\n    \"astrid-child::header_image\": {\n        \"value\": \"http://localhost:8888/wp-content/uploads/2018/04/cropped-hirewick_header.jpg\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-04-10 14:28:10\"\n    },\n    \"astrid-child::header_image_data\": {\n        \"value\": {\n            \"url\": \"http://localhost:8888/wp-content/uploads/2018/04/cropped-hirewick_header.jpg\",\n            \"thumbnail_url\": \"http://localhost:8888/wp-content/uploads/2018/04/cropped-hirewick_header.jpg\",\n            \"timestamp\": 1523370468534,\n            \"attachment_id\": 291,\n            \"width\": 1920,\n            \"height\": 1080\n        },\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-04-10 14:28:10\"\n    },\n    \"astrid-child::mobile_header\": {\n        \"value\": \"http://localhost:8888/wp-content/uploads/2018/04/hirewick_header_mobile.jpg\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-04-10 14:28:10\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'd8fcbd66-f682-4efa-aa37-0a05f97a677f', '', '', '2018-04-10 14:28:10', '2018-04-10 14:28:10', '', 0, 'http://localhost:8888/2018/04/10/d8fcbd66-f682-4efa-aa37-0a05f97a677f/', 0, 'customize_changeset', '', 0),
(293, 1, '2018-04-10 14:28:41', '2018-04-10 14:28:41', '{\n    \"nav_menu_item[271]\": {\n        \"value\": false,\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-04-10 14:28:41\"\n    },\n    \"nav_menu_item[282]\": {\n        \"value\": false,\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-04-10 14:28:41\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '7ed73a67-5245-4a7b-9e33-5abf2c9062c3', '', '', '2018-04-10 14:28:41', '2018-04-10 14:28:41', '', 0, 'http://localhost:8888/2018/04/10/7ed73a67-5245-4a7b-9e33-5abf2c9062c3/', 0, 'customize_changeset', '', 0),
(294, 1, '2018-04-10 15:15:36', '2018-04-10 15:15:36', 'Testimonial', 'Lorem ipsum dolor sit amet', '', 'inherit', 'closed', 'closed', '', '258-revision-v1', '', '', '2018-04-10 15:15:36', '2018-04-10 15:15:36', '', 258, 'http://localhost:8888/2018/04/10/258-revision-v1/', 0, 'revision', '', 0),
(295, 1, '2018-04-10 15:17:14', '2018-04-10 15:17:14', 'This is the quote from testimonial one!\r\n\r\n<div class=\"testimonial-dl\">\r\n  <a href=\"#\">Download</a>\r\n</div>', 'Billie Weiss - Staff Photographer, Boston Red Sox', '', 'publish', 'closed', 'closed', '', 'testimonial-1', '', '', '2018-04-11 19:16:28', '2018-04-11 19:16:28', '', 0, 'http://localhost:8888/?page_id=295', 0, 'page', '', 0),
(296, 1, '2018-04-10 15:17:14', '2018-04-10 15:17:14', 'This is the quote from testimonial one!', 'Testimonial 1', '', 'inherit', 'closed', 'closed', '', '295-revision-v1', '', '', '2018-04-10 15:17:14', '2018-04-10 15:17:14', '', 295, 'http://localhost:8888/2018/04/10/295-revision-v1/', 0, 'revision', '', 0),
(297, 1, '2018-04-10 15:17:42', '2018-04-10 15:17:42', 'Lorem ipsum dolor sit amet, consectet elit. Vivamus ornare vitae lacus sed tinm dolor sit amet, consectetur adipiscin nare vitae lacus sed tincidunt.', 'John Doe', '', 'inherit', 'closed', 'closed', '', '250-revision-v1', '', '', '2018-04-10 15:17:42', '2018-04-10 15:17:42', '', 250, 'http://localhost:8888/2018/04/10/250-revision-v1/', 0, 'revision', '', 0),
(298, 1, '2018-04-10 15:17:46', '2018-04-10 15:17:46', 'Lorem ipsum dolor sit amet, consectet elit. Vivamus ornare vitae lacus sed tinm dolor sit amet, consectetur adipiscin nare vitae lacus sed tincidunt.', 'Janet Doe', '', 'inherit', 'closed', 'closed', '', '252-revision-v1', '', '', '2018-04-10 15:17:46', '2018-04-10 15:17:46', '', 252, 'http://localhost:8888/2018/04/10/252-revision-v1/', 0, 'revision', '', 0),
(299, 1, '2018-04-10 15:18:05', '2018-04-10 15:18:05', 'Designer', 'John Doe', '', 'inherit', 'closed', 'closed', '', '228-revision-v1', '', '', '2018-04-10 15:18:05', '2018-04-10 15:18:05', '', 228, 'http://localhost:8888/2018/04/10/228-revision-v1/', 0, 'revision', '', 0),
(300, 1, '2018-04-10 15:18:11', '2018-04-10 15:18:11', 'Developer', 'Janet Doe', '', 'inherit', 'closed', 'closed', '', '92-revision-v1', '', '', '2018-04-10 15:18:11', '2018-04-10 15:18:11', '', 92, 'http://localhost:8888/2018/04/10/92-revision-v1/', 0, 'revision', '', 0),
(301, 1, '2018-04-10 15:18:32', '2018-04-10 15:18:32', 'Designer', 'Steve Doe', '', 'inherit', 'closed', 'closed', '', '94-revision-v1', '', '', '2018-04-10 15:18:32', '2018-04-10 15:18:32', '', 94, 'http://localhost:8888/2018/04/10/94-revision-v1/', 0, 'revision', '', 0),
(302, 1, '2018-04-10 15:18:42', '2018-04-10 15:18:42', 'Lorem ipsum dolor sit amet, consectet elit. Vivamus ornare vitae lacus sed tinm dolor sit amet, consectetur adipiscin nare vitae lacus sed tincidunt.', 'Steve Doe', '', 'inherit', 'closed', 'closed', '', '254-revision-v1', '', '', '2018-04-10 15:18:42', '2018-04-10 15:18:42', '', 254, 'http://localhost:8888/2018/04/10/254-revision-v1/', 0, 'revision', '', 0),
(303, 1, '2018-04-10 15:19:08', '2018-04-10 15:19:08', 'Quote for Testimonial 2\r\n\r\n<div class=\"testimonial-dl\">\r\n  <a href=\"#\">Download</a>\r\n</div>', 'Matt Van Tuinen - CEO, MVT Public Relations', '', 'publish', 'closed', 'closed', '', 'testimonial-2', '', '', '2018-04-11 19:16:39', '2018-04-11 19:16:39', '', 0, 'http://localhost:8888/?page_id=303', 0, 'page', '', 0),
(304, 1, '2018-04-10 15:19:08', '2018-04-10 15:19:08', 'Quote for Testimonial 2', 'Testimonial 2', '', 'inherit', 'closed', 'closed', '', '303-revision-v1', '', '', '2018-04-10 15:19:08', '2018-04-10 15:19:08', '', 303, 'http://localhost:8888/2018/04/10/303-revision-v1/', 0, 'revision', '', 0),
(305, 1, '2018-04-10 15:19:31', '2018-04-10 15:19:31', 'Quote for testimonial 3\r\n\r\n<div class=\"testimonial-dl\">\r\n  <a href=\"#\">Download</a>\r\n</div>', 'Testimonial 3', '', 'publish', 'closed', 'closed', '', 'testimonial-3', '', '', '2018-04-11 18:56:19', '2018-04-11 18:56:19', '', 0, 'http://localhost:8888/?page_id=305', 0, 'page', '', 0),
(306, 1, '2018-04-10 15:19:31', '2018-04-10 15:19:31', 'Quote for testimonial 3', 'Testimonial 3', '', 'inherit', 'closed', 'closed', '', '305-revision-v1', '', '', '2018-04-10 15:19:31', '2018-04-10 15:19:31', '', 305, 'http://localhost:8888/2018/04/10/305-revision-v1/', 0, 'revision', '', 0),
(307, 1, '2018-04-10 15:23:45', '2018-04-10 15:23:45', 'This is the quote from testimonial one!', 'Billie Weiss', '', 'inherit', 'closed', 'closed', '', '295-revision-v1', '', '', '2018-04-10 15:23:45', '2018-04-10 15:23:45', '', 295, 'http://localhost:8888/2018/04/10/295-revision-v1/', 0, 'revision', '', 0),
(308, 1, '2018-04-10 15:24:39', '2018-04-10 15:24:39', 'This is the quote from testimonial one!', 'Billie Weiss - Staff Photographer, Boston Red Sox', '', 'inherit', 'closed', 'closed', '', '295-revision-v1', '', '', '2018-04-10 15:24:39', '2018-04-10 15:24:39', '', 295, 'http://localhost:8888/2018/04/10/295-revision-v1/', 0, 'revision', '', 0),
(309, 1, '2018-04-10 15:26:04', '2018-04-10 15:26:04', 'Quote for Testimonial 2', 'Matt Van Tuinen - CEO, MVT Public Relations', '', 'inherit', 'closed', 'closed', '', '303-revision-v1', '', '', '2018-04-10 15:26:04', '2018-04-10 15:26:04', '', 303, 'http://localhost:8888/2018/04/10/303-revision-v1/', 0, 'revision', '', 0),
(310, 1, '2018-04-11 12:24:35', '2018-04-11 12:24:35', '', 'Instagram', '', 'publish', 'closed', 'closed', '', 'instagram', '', '', '2018-04-11 12:26:29', '2018-04-11 12:26:29', '', 0, 'http://localhost:8888/?p=310', 1, 'nav_menu_item', '', 0),
(311, 1, '2018-04-11 12:30:20', '2018-04-11 12:30:20', '{\n    \"astrid-child::nav_menu_locations[primary]\": {\n        \"value\": -4918650524338199000,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-04-11 12:30:20\"\n    },\n    \"nav_menu[-4918650524338199000]\": {\n        \"value\": {\n            \"name\": \"Blank\",\n            \"description\": \"\",\n            \"parent\": 0,\n            \"auto_add\": false\n        },\n        \"type\": \"nav_menu\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-04-11 12:30:20\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '98d78857-3898-457a-82a1-9cecbfcfbf0b', '', '', '2018-04-11 12:30:20', '2018-04-11 12:30:20', '', 0, 'http://localhost:8888/2018/04/11/98d78857-3898-457a-82a1-9cecbfcfbf0b/', 0, 'customize_changeset', '', 0),
(312, 1, '2018-04-11 12:39:16', '2018-04-11 12:39:16', '{\n    \"astrid-child::footer_contact_email\": {\n        \"value\": \"jared@wickphotography.com\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-04-11 12:38:33\"\n    },\n    \"astrid-child::footer_contact_phone\": {\n        \"value\": \"740-243-1208\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-04-11 12:39:10\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '7ec07fd8-c558-49bd-92c0-6451b668a31c', '', '', '2018-04-11 12:39:16', '2018-04-11 12:39:16', '', 0, 'http://localhost:8888/?p=312', 0, 'customize_changeset', '', 0);
INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(313, 1, '2018-04-11 14:45:23', '2018-04-11 14:45:23', '{\n    \"astrid-child::toggle_contact_footer\": {\n        \"value\": false,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-04-11 14:45:23\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'aee7bda8-f75f-4d97-ba26-1dd79b269dea', '', '', '2018-04-11 14:45:23', '2018-04-11 14:45:23', '', 0, 'http://localhost:8888/2018/04/11/aee7bda8-f75f-4d97-ba26-1dd79b269dea/', 0, 'customize_changeset', '', 0),
(314, 1, '2018-04-11 14:53:00', '2018-04-11 14:53:00', '', 'Stephanie Symosko', '', 'publish', 'closed', 'closed', '', 'stephanie-symosko', '', '', '2018-04-11 14:53:00', '2018-04-11 14:53:00', '', 0, 'http://localhost:8888/?p=314', 1, 'nav_menu_item', '', 0),
(315, 1, '2018-04-11 17:20:59', '2018-04-11 17:20:59', 'Quote for testimonial 3\n\n<div class=\"testimonial-dl hide\">Download</div>', 'Testimonial 3', '', 'inherit', 'closed', 'closed', '', '305-autosave-v1', '', '', '2018-04-11 17:20:59', '2018-04-11 17:20:59', '', 305, 'http://localhost:8888/2018/04/11/305-autosave-v1/', 0, 'revision', '', 0),
(316, 1, '2018-04-11 17:18:25', '2018-04-11 17:18:25', 'Quote for testimonial 3\r\n\r\n<div class=\"download_link\">Download</div>', 'Testimonial 3', '', 'inherit', 'closed', 'closed', '', '305-revision-v1', '', '', '2018-04-11 17:18:25', '2018-04-11 17:18:25', '', 305, 'http://localhost:8888/2018/04/11/305-revision-v1/', 0, 'revision', '', 0),
(317, 1, '2018-04-11 17:19:33', '2018-04-11 17:19:33', 'Quote for testimonial 3\r\n\r\n<div class=\"testimonial-dl\">Download</div>', 'Testimonial 3', '', 'inherit', 'closed', 'closed', '', '305-revision-v1', '', '', '2018-04-11 17:19:33', '2018-04-11 17:19:33', '', 305, 'http://localhost:8888/2018/04/11/305-revision-v1/', 0, 'revision', '', 0),
(318, 1, '2018-04-11 17:22:10', '2018-04-11 17:22:10', 'Quote for testimonial 3\r\n\r\n<div class=\"testimonial-dl hide\">Download</div>', 'Testimonial 3', '', 'inherit', 'closed', 'closed', '', '305-revision-v1', '', '', '2018-04-11 17:22:10', '2018-04-11 17:22:10', '', 305, 'http://localhost:8888/2018/04/11/305-revision-v1/', 0, 'revision', '', 0),
(319, 1, '2018-04-11 18:54:37', '2018-04-11 18:54:37', 'Quote for testimonial 3\r\n\r\n<div class=\"testimonial-dl hide\">\r\n  <a href=\"#\">Download</a>\r\n</div>', 'Testimonial 3', '', 'inherit', 'closed', 'closed', '', '305-revision-v1', '', '', '2018-04-11 18:54:37', '2018-04-11 18:54:37', '', 305, 'http://localhost:8888/2018/04/11/305-revision-v1/', 0, 'revision', '', 0),
(320, 1, '2018-04-11 18:56:19', '2018-04-11 18:56:19', 'Quote for testimonial 3\r\n\r\n<div class=\"testimonial-dl\">\r\n  <a href=\"#\">Download</a>\r\n</div>', 'Testimonial 3', '', 'inherit', 'closed', 'closed', '', '305-revision-v1', '', '', '2018-04-11 18:56:19', '2018-04-11 18:56:19', '', 305, 'http://localhost:8888/2018/04/11/305-revision-v1/', 0, 'revision', '', 0),
(321, 1, '2018-04-11 19:16:28', '2018-04-11 19:16:28', 'This is the quote from testimonial one!\r\n\r\n<div class=\"testimonial-dl\">\r\n  <a href=\"#\">Download</a>\r\n</div>', 'Billie Weiss - Staff Photographer, Boston Red Sox', '', 'inherit', 'closed', 'closed', '', '295-revision-v1', '', '', '2018-04-11 19:16:28', '2018-04-11 19:16:28', '', 295, 'http://localhost:8888/2018/04/11/295-revision-v1/', 0, 'revision', '', 0),
(322, 1, '2018-04-11 19:16:39', '2018-04-11 19:16:39', 'Quote for Testimonial 2\r\n\r\n<div class=\"testimonial-dl\">\r\n  <a href=\"#\">Download</a>\r\n</div>', 'Matt Van Tuinen - CEO, MVT Public Relations', '', 'inherit', 'closed', 'closed', '', '303-revision-v1', '', '', '2018-04-11 19:16:39', '2018-04-11 19:16:39', '', 303, 'http://localhost:8888/2018/04/11/303-revision-v1/', 0, 'revision', '', 0);

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
(2, 'Tech', 'tech', 0),
(3, 'Company', 'company', 0),
(4, 'Social', 'social', 0),
(5, 'Services', 'services', 0),
(6, 'Blank', 'blank', 0),
(7, 'Developed', 'developed', 0);

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
(1, 0, 0),
(1, 1, 0),
(240, 4, 0),
(241, 4, 0),
(242, 4, 0),
(243, 6, 0),
(244, 6, 0),
(245, 6, 0),
(246, 6, 0),
(247, 6, 0),
(248, 4, 0),
(249, 4, 0),
(258, 3, 0),
(261, 3, 0),
(264, 3, 0),
(272, 4, 0),
(273, 4, 0),
(274, 4, 0),
(275, 6, 0),
(276, 6, 0),
(277, 6, 0),
(278, 6, 0),
(279, 6, 0),
(280, 4, 0),
(281, 4, 0),
(310, 5, 0),
(314, 8, 0);

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
(1, 1, 'category', '', 0, 1),
(3, 2, 'category', '', 0, 3),
(4, 3, 'nav_menu', '', 0, 10),
(5, 4, 'nav_menu', '', 0, 1),
(6, 5, 'nav_menu', '', 0, 10),
(7, 6, 'nav_menu', '', 0, 0),
(8, 7, 'nav_menu', '', 0, 1);

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
(14, 1, 'dismissed_wp_pointers', 'theme_editor_notice'),
(15, 1, 'show_welcome_panel', '1'),
(16, 1, 'session_tokens', 'a:1:{s:64:\"2fe1155995a57cae8172eb49a9ddc22e6c87d4ad7c5f2c42d1152defadab79d9\";a:4:{s:10:\"expiration\";i:1523630651;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:121:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36\";s:5:\"login\";i:1523457851;}}'),
(17, 1, 'wp_user-settings', 'libraryContent=browse&hidetb=1&editor=html'),
(18, 1, 'wp_user-settings-time', '1523474184'),
(19, 1, 'wp_dashboard_quick_press_last_post_id', '5'),
(20, 1, 'community-events-location', 'a:1:{s:2:\"ip\";s:2:\"::\";}'),
(21, 1, 'nav_menu_recently_edited', '7'),
(22, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:\"link-target\";i:1;s:11:\"css-classes\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";i:4;s:15:\"title-attribute\";}'),
(23, 1, 'metaboxhidden_nav-menus', 'a:2:{i:0;s:12:\"add-post_tag\";i:1;s:15:\"add-post_format\";}');

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
(1, 'admin', '$P$BmUProSEJAFz2cJfBYsETBP3oSA9d8/', 'admin', 'steph.symosko@gmail.com', '', '2018-04-09 14:26:12', '', 0, 'admin');

--
-- Indexes for dumped tables
--

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
-- AUTO_INCREMENT for table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_comments`
--
ALTER TABLE `wp_comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `wp_links`
--
ALTER TABLE `wp_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_options`
--
ALTER TABLE `wp_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=346;
--
-- AUTO_INCREMENT for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=547;
--
-- AUTO_INCREMENT for table `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=323;
--
-- AUTO_INCREMENT for table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_terms`
--
ALTER TABLE `wp_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
--
-- AUTO_INCREMENT for table `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
