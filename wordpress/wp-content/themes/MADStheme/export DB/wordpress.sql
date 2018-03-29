-- phpMyAdmin SQL Dump
-- version 4.5.4.1deb2ubuntu2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Mar 29, 2018 at 03:31 PM
-- Server version: 5.7.21-0ubuntu0.16.04.1
-- PHP Version: 7.0.28-1+ubuntu16.04.1+deb.sury.org+1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `wordpress`
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
(1, 1, 'A WordPress Commenter', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2018-03-26 10:32:09', '2018-03-26 10:32:09', 'Hi, this is a comment.\nTo get started with moderating, editing, and deleting comments, please visit the Comments screen in the dashboard.\nCommenter avatars come from <a href="https://gravatar.com">Gravatar</a>.', 0, '1', '', '', 0, 0);

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
(1, 'siteurl', 'http://localhost/MADS-foodog/wordpress', 'yes'),
(2, 'home', 'http://localhost/MADS-foodog/wordpress', 'yes'),
(3, 'blogname', 'FooDog', 'yes'),
(4, 'blogdescription', 'Just another WordPress site', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'admin@admin.com', 'yes'),
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
(28, 'permalink_structure', '/index.php/%year%/%monthnum%/%day%/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:89:{s:11:"^wp-json/?$";s:22:"index.php?rest_route=/";s:14:"^wp-json/(.*)?";s:33:"index.php?rest_route=/$matches[1]";s:21:"^index.php/wp-json/?$";s:22:"index.php?rest_route=/";s:24:"^index.php/wp-json/(.*)?";s:33:"index.php?rest_route=/$matches[1]";s:57:"index.php/category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:52:"index.php/category/(.+?)/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:33:"index.php/category/(.+?)/embed/?$";s:46:"index.php?category_name=$matches[1]&embed=true";s:45:"index.php/category/(.+?)/page/?([0-9]{1,})/?$";s:53:"index.php?category_name=$matches[1]&paged=$matches[2]";s:27:"index.php/category/(.+?)/?$";s:35:"index.php?category_name=$matches[1]";s:54:"index.php/tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:49:"index.php/tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:30:"index.php/tag/([^/]+)/embed/?$";s:36:"index.php?tag=$matches[1]&embed=true";s:42:"index.php/tag/([^/]+)/page/?([0-9]{1,})/?$";s:43:"index.php?tag=$matches[1]&paged=$matches[2]";s:24:"index.php/tag/([^/]+)/?$";s:25:"index.php?tag=$matches[1]";s:55:"index.php/type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:50:"index.php/type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:31:"index.php/type/([^/]+)/embed/?$";s:44:"index.php?post_format=$matches[1]&embed=true";s:43:"index.php/type/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?post_format=$matches[1]&paged=$matches[2]";s:25:"index.php/type/([^/]+)/?$";s:33:"index.php?post_format=$matches[1]";s:48:".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$";s:18:"index.php?feed=old";s:20:".*wp-app\\.php(/.*)?$";s:19:"index.php?error=403";s:18:".*wp-register.php$";s:23:"index.php?register=true";s:42:"index.php/feed/(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:37:"index.php/(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:18:"index.php/embed/?$";s:21:"index.php?&embed=true";s:30:"index.php/page/?([0-9]{1,})/?$";s:28:"index.php?&paged=$matches[1]";s:51:"index.php/comments/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:46:"index.php/comments/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:27:"index.php/comments/embed/?$";s:21:"index.php?&embed=true";s:54:"index.php/search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:49:"index.php/search/(.+)/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:30:"index.php/search/(.+)/embed/?$";s:34:"index.php?s=$matches[1]&embed=true";s:42:"index.php/search/(.+)/page/?([0-9]{1,})/?$";s:41:"index.php?s=$matches[1]&paged=$matches[2]";s:24:"index.php/search/(.+)/?$";s:23:"index.php?s=$matches[1]";s:57:"index.php/author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:52:"index.php/author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:33:"index.php/author/([^/]+)/embed/?$";s:44:"index.php?author_name=$matches[1]&embed=true";s:45:"index.php/author/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?author_name=$matches[1]&paged=$matches[2]";s:27:"index.php/author/([^/]+)/?$";s:33:"index.php?author_name=$matches[1]";s:79:"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:74:"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:55:"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$";s:74:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true";s:67:"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:81:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]";s:49:"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$";s:63:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]";s:66:"index.php/([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:61:"index.php/([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:42:"index.php/([0-9]{4})/([0-9]{1,2})/embed/?$";s:58:"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true";s:54:"index.php/([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:65:"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]";s:36:"index.php/([0-9]{4})/([0-9]{1,2})/?$";s:47:"index.php?year=$matches[1]&monthnum=$matches[2]";s:53:"index.php/([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:48:"index.php/([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:29:"index.php/([0-9]{4})/embed/?$";s:37:"index.php?year=$matches[1]&embed=true";s:41:"index.php/([0-9]{4})/page/?([0-9]{1,})/?$";s:44:"index.php?year=$matches[1]&paged=$matches[2]";s:23:"index.php/([0-9]{4})/?$";s:26:"index.php?year=$matches[1]";s:68:"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:78:"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:98:"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:93:"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:93:"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:74:"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:63:"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/embed/?$";s:91:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&embed=true";s:67:"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/trackback/?$";s:85:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&tb=1";s:87:"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:97:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]";s:82:"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:97:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]";s:75:"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$";s:98:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&paged=$matches[5]";s:82:"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$";s:98:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&cpage=$matches[5]";s:71:"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)(?:/([0-9]+))?/?$";s:97:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&page=$matches[5]";s:57:"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:67:"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:87:"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:82:"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:82:"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:63:"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:74:"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$";s:81:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&cpage=$matches[4]";s:61:"index.php/([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$";s:65:"index.php?year=$matches[1]&monthnum=$matches[2]&cpage=$matches[3]";s:48:"index.php/([0-9]{4})/comment-page-([0-9]{1,})/?$";s:44:"index.php?year=$matches[1]&cpage=$matches[2]";s:37:"index.php/.?.+?/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:47:"index.php/.?.+?/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:67:"index.php/.?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:62:"index.php/.?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:62:"index.php/.?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:43:"index.php/.?.+?/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:26:"index.php/(.?.+?)/embed/?$";s:41:"index.php?pagename=$matches[1]&embed=true";s:30:"index.php/(.?.+?)/trackback/?$";s:35:"index.php?pagename=$matches[1]&tb=1";s:50:"index.php/(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:45:"index.php/(.?.+?)/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:38:"index.php/(.?.+?)/page/?([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&paged=$matches[2]";s:45:"index.php/(.?.+?)/comment-page-([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&cpage=$matches[2]";s:34:"index.php/(.?.+?)(?:/([0-9]+))?/?$";s:47:"index.php?pagename=$matches[1]&page=$matches[2]";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:0:{}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', 'a:5:{i:0;s:77:"/var/www/html/MADS-foodog/wordpress/wp-content/themes/MADStheme/functions.php";i:1;s:74:"/var/www/html/MADS-foodog/wordpress/wp-content/themes/MADStheme/footer.php";i:2;s:73:"/var/www/html/MADS-foodog/wordpress/wp-content/themes/MADStheme/style.css";i:3;s:73:"/var/www/html/MADS-foodog/wordpress/wp-content/themes/MADStheme/reset.css";i:4;s:75:"/var/www/html/MADS-foodog/wordpress/wp-content/themes/MADStheme/archive.php";}', 'no'),
(40, 'template', 'MADStheme', 'yes'),
(41, 'stylesheet', 'MADStheme', 'yes'),
(42, 'comment_whitelist', '1', 'yes'),
(43, 'blacklist_keys', '', 'no'),
(44, 'comment_registration', '0', 'yes'),
(45, 'html_type', 'text/html', 'yes'),
(46, 'use_trackback', '0', 'yes'),
(47, 'default_role', 'subscriber', 'yes'),
(48, 'db_version', '38590', 'yes'),
(49, 'uploads_use_yearmonth_folders', '1', 'yes'),
(50, 'upload_path', '', 'yes'),
(51, 'blog_public', '0', 'yes'),
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
(78, 'widget_categories', 'a:2:{i:2;a:4:{s:5:"title";s:0:"";s:5:"count";i:0;s:12:"hierarchical";i:0;s:8:"dropdown";i:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(79, 'widget_text', 'a:5:{i:2;a:4:{s:5:"title";s:7:"Find Us";s:4:"text";s:168:"<strong>Address</strong>\n123 Main Street\nNew York, NY 10001\n\n<strong>Hours</strong>\nMonday&mdash;Friday: 9:00AM&ndash;5:00PM\nSaturday &amp; Sunday: 11:00AM&ndash;3:00PM";s:6:"filter";b:1;s:6:"visual";b:1;}i:3;a:4:{s:5:"title";s:15:"About This Site";s:4:"text";s:85:"This may be a good place to introduce yourself and your site or include some credits.";s:6:"filter";b:1;s:6:"visual";b:1;}i:4;a:4:{s:5:"title";s:7:"Find Us";s:4:"text";s:168:"<strong>Address</strong>\n123 Main Street\nNew York, NY 10001\n\n<strong>Hours</strong>\nMonday&mdash;Friday: 9:00AM&ndash;5:00PM\nSaturday &amp; Sunday: 11:00AM&ndash;3:00PM";s:6:"filter";b:1;s:6:"visual";b:1;}i:5;a:4:{s:5:"title";s:15:"About This Site";s:4:"text";s:85:"This may be a good place to introduce yourself and your site or include some credits.";s:6:"filter";b:1;s:6:"visual";b:1;}s:12:"_multiwidget";i:1;}', 'yes'),
(80, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
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
(92, 'wp_user_roles', 'a:5:{s:13:"administrator";a:2:{s:4:"name";s:13:"Administrator";s:12:"capabilities";a:61:{s:13:"switch_themes";b:1;s:11:"edit_themes";b:1;s:16:"activate_plugins";b:1;s:12:"edit_plugins";b:1;s:10:"edit_users";b:1;s:10:"edit_files";b:1;s:14:"manage_options";b:1;s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:6:"import";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:8:"level_10";b:1;s:7:"level_9";b:1;s:7:"level_8";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;s:12:"delete_users";b:1;s:12:"create_users";b:1;s:17:"unfiltered_upload";b:1;s:14:"edit_dashboard";b:1;s:14:"update_plugins";b:1;s:14:"delete_plugins";b:1;s:15:"install_plugins";b:1;s:13:"update_themes";b:1;s:14:"install_themes";b:1;s:11:"update_core";b:1;s:10:"list_users";b:1;s:12:"remove_users";b:1;s:13:"promote_users";b:1;s:18:"edit_theme_options";b:1;s:13:"delete_themes";b:1;s:6:"export";b:1;}}s:6:"editor";a:2:{s:4:"name";s:6:"Editor";s:12:"capabilities";a:34:{s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;}}s:6:"author";a:2:{s:4:"name";s:6:"Author";s:12:"capabilities";a:10:{s:12:"upload_files";b:1;s:10:"edit_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:4:"read";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;s:22:"delete_published_posts";b:1;}}s:11:"contributor";a:2:{s:4:"name";s:11:"Contributor";s:12:"capabilities";a:5:{s:10:"edit_posts";b:1;s:4:"read";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;}}s:10:"subscriber";a:2:{s:4:"name";s:10:"Subscriber";s:12:"capabilities";a:2:{s:4:"read";b:1;s:7:"level_0";b:1;}}}', 'yes'),
(93, 'fresh_site', '0', 'yes'),
(94, 'widget_search', 'a:2:{i:2;a:1:{s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
(95, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:"title";s:0:"";s:6:"number";i:5;}s:12:"_multiwidget";i:1;}', 'yes'),
(96, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:"title";s:0:"";s:6:"number";i:5;}s:12:"_multiwidget";i:1;}', 'yes'),
(97, 'widget_archives', 'a:2:{i:2;a:3:{s:5:"title";s:0:"";s:5:"count";i:0;s:8:"dropdown";i:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(98, 'widget_meta', 'a:2:{i:2;a:1:{s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
(99, 'sidebars_widgets', 'a:3:{s:19:"wp_inactive_widgets";a:10:{i:0;s:6:"text-2";i:1;s:6:"text-3";i:2;s:6:"text-4";i:3;s:6:"text-5";i:4;s:8:"search-2";i:5;s:14:"recent-posts-2";i:6;s:17:"recent-comments-2";i:7;s:10:"archives-2";i:8;s:12:"categories-2";i:9;s:6:"meta-2";}s:9:"sidebar-1";a:0:{}s:13:"array_version";i:3;}', 'yes'),
(100, 'widget_pages', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(101, 'widget_calendar', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(102, 'widget_media_audio', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(103, 'widget_media_image', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(104, 'widget_media_gallery', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(105, 'widget_media_video', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(106, 'widget_tag_cloud', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(107, 'widget_nav_menu', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(108, 'widget_custom_html', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(109, 'cron', 'a:4:{i:1522362731;a:3:{s:16:"wp_version_check";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:17:"wp_update_plugins";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:16:"wp_update_themes";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1522397181;a:1:{s:30:"wp_scheduled_auto_draft_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1522406023;a:2:{s:19:"wp_scheduled_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}s:25:"delete_expired_transients";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}s:7:"version";i:2;}', 'yes'),
(110, 'theme_mods_twentyseventeen', 'a:3:{s:18:"custom_css_post_id";i:-1;s:16:"sidebars_widgets";a:2:{s:4:"time";i:1522136654;s:4:"data";a:4:{s:19:"wp_inactive_widgets";a:4:{i:0;s:6:"text-2";i:1;s:6:"text-3";i:2;s:6:"text-4";i:3;s:6:"text-5";}s:9:"sidebar-1";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}s:9:"sidebar-2";a:0:{}s:9:"sidebar-3";a:0:{}}}s:18:"nav_menu_locations";a:0:{}}', 'yes'),
(114, '_site_transient_update_core', 'O:8:"stdClass":4:{s:7:"updates";a:1:{i:0;O:8:"stdClass":10:{s:8:"response";s:6:"latest";s:8:"download";s:59:"https://downloads.wordpress.org/release/wordpress-4.9.4.zip";s:6:"locale";s:5:"en_US";s:8:"packages";O:8:"stdClass":5:{s:4:"full";s:59:"https://downloads.wordpress.org/release/wordpress-4.9.4.zip";s:10:"no_content";s:70:"https://downloads.wordpress.org/release/wordpress-4.9.4-no-content.zip";s:11:"new_bundled";s:71:"https://downloads.wordpress.org/release/wordpress-4.9.4-new-bundled.zip";s:7:"partial";b:0;s:8:"rollback";b:0;}s:7:"current";s:5:"4.9.4";s:7:"version";s:5:"4.9.4";s:11:"php_version";s:5:"5.2.4";s:13:"mysql_version";s:3:"5.0";s:11:"new_bundled";s:3:"4.7";s:15:"partial_version";s:0:"";}}s:12:"last_checked";i:1522323912;s:15:"version_checked";s:5:"4.9.4";s:12:"translations";a:0:{}}', 'no'),
(119, '_site_transient_update_themes', 'O:8:"stdClass":4:{s:12:"last_checked";i:1522323914;s:7:"checked";a:4:{s:9:"MADStheme";s:0:"";s:13:"twentyfifteen";s:3:"1.9";s:15:"twentyseventeen";s:3:"1.4";s:13:"twentysixteen";s:3:"1.4";}s:8:"response";a:0:{}s:12:"translations";a:0:{}}', 'no'),
(121, '_site_transient_timeout_browser_0b658a9e61726056cb3e3f5c6ae0f301', '1522665140', 'no'),
(122, '_site_transient_browser_0b658a9e61726056cb3e3f5c6ae0f301', 'a:10:{s:4:"name";s:7:"Firefox";s:7:"version";s:4:"59.0";s:8:"platform";s:5:"Linux";s:10:"update_url";s:24:"https://www.firefox.com/";s:7:"img_src";s:44:"http://s.w.org/images/browsers/firefox.png?1";s:11:"img_src_ssl";s:45:"https://s.w.org/images/browsers/firefox.png?1";s:15:"current_version";s:2:"56";s:7:"upgrade";b:0;s:8:"insecure";b:0;s:6:"mobile";b:0;}', 'no'),
(123, 'can_compress_scripts', '0', 'no'),
(149, 'theme_mods_twentyfifteen', 'a:3:{s:18:"custom_css_post_id";i:-1;s:18:"nav_menu_locations";a:1:{s:7:"primary";i:2;}s:16:"sidebars_widgets";a:2:{s:4:"time";i:1522135823;s:4:"data";a:2:{s:19:"wp_inactive_widgets";a:4:{i:0;s:6:"text-2";i:1;s:6:"text-3";i:2;s:6:"text-4";i:3;s:6:"text-5";}s:9:"sidebar-1";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}}}}', 'yes'),
(151, 'current_theme', 'MADStheme Theme URI: http://www.localhost.com/ Description: The first theme created by the MADS team. Version: 0.1 Author: Leers Mathieu   Creation Theme by MADS team || http://www.leersmathieu.com', 'yes'),
(152, 'theme_switched', '', 'yes'),
(158, 'nav_menu_options', 'a:1:{s:8:"auto_add";a:0:{}}', 'yes'),
(167, '_transient_twentyfifteen_categories', '1', 'yes'),
(169, 'theme_mods_MADStheme', 'a:4:{i:0;b:0;s:18:"nav_menu_locations";a:0:{}s:18:"custom_css_post_id";i:-1;s:16:"sidebars_widgets";a:2:{s:4:"time";i:1522136509;s:4:"data";a:1:{s:19:"wp_inactive_widgets";a:10:{i:0;s:6:"text-2";i:1;s:6:"text-3";i:2;s:6:"text-4";i:3;s:6:"text-5";i:4;s:8:"search-2";i:5;s:14:"recent-posts-2";i:6;s:17:"recent-comments-2";i:7;s:10:"archives-2";i:8;s:12:"categories-2";i:9;s:6:"meta-2";}}}}', 'yes'),
(199, '_site_transient_timeout_browser_7fdceadd67296297d9099981ebd325e0', '1522762138', 'no'),
(200, '_site_transient_browser_7fdceadd67296297d9099981ebd325e0', 'a:10:{s:4:"name";s:6:"Chrome";s:7:"version";s:13:"65.0.3325.181";s:8:"platform";s:5:"Linux";s:10:"update_url";s:29:"https://www.google.com/chrome";s:7:"img_src";s:43:"http://s.w.org/images/browsers/chrome.png?1";s:11:"img_src_ssl";s:44:"https://s.w.org/images/browsers/chrome.png?1";s:15:"current_version";s:2:"18";s:7:"upgrade";b:0;s:8:"insecure";b:0;s:6:"mobile";b:0;}', 'no'),
(211, 'category_children', 'a:0:{}', 'yes'),
(265, '_transient_timeout_plugin_slugs', '1522332548', 'no'),
(266, '_transient_plugin_slugs', 'a:2:{i:0;s:19:"akismet/akismet.php";i:1;s:9:"hello.php";}', 'no'),
(267, 'recently_activated', 'a:0:{}', 'yes'),
(277, '_transient_timeout_dash_v2_88ae138922fe95674369b1cb3d215a2b', '1522350888', 'no'),
(278, '_transient_dash_v2_88ae138922fe95674369b1cb3d215a2b', '<div class="rss-widget"><ul><li>An error has occurred, which probably means the feed is down. Try again later.</li></ul></div><div class="rss-widget"><ul><li>An error has occurred, which probably means the feed is down. Try again later.</li></ul></div>', 'no'),
(279, '_site_transient_timeout_community-events-1aecf33ab8525ff212ebdffbb438372e', '1522350889', 'no'),
(280, '_site_transient_community-events-1aecf33ab8525ff212ebdffbb438372e', 'a:2:{s:8:"location";a:1:{s:2:"ip";s:9:"127.0.0.0";}s:6:"events";a:2:{i:0;a:7:{s:4:"type";s:6:"meetup";s:5:"title";s:19:"April: derde meetup";s:3:"url";s:65:"https://www.meetup.com/WordPress-Hasselt-Meetup/events/248017462/";s:6:"meetup";s:24:"WordPress Hasselt Meetup";s:10:"meetup_url";s:48:"https://www.meetup.com/WordPress-Hasselt-Meetup/";s:4:"date";s:19:"2018-04-10 19:00:00";s:8:"location";a:4:{s:8:"location";s:28:"Hasselt, Vlaanderen, Belgium";s:7:"country";s:2:"BE";s:8:"latitude";d:50.930000305176002;s:9:"longitude";d:5.3400001525879004;}}i:1;a:7:{s:4:"type";s:6:"meetup";s:5:"title";s:38:"WordPress 15th Anniversary Celebration";s:3:"url";s:65:"https://www.meetup.com/Antwerp-WordPress-Meetup/events/249090904/";s:6:"meetup";s:24:"Antwerp WordPress Meetup";s:10:"meetup_url";s:48:"https://www.meetup.com/Antwerp-WordPress-Meetup/";s:4:"date";s:19:"2018-05-27 14:00:00";s:8:"location";a:4:{s:8:"location";s:30:"Antwerpen, Vlaanderen, Belgium";s:7:"country";s:2:"BE";s:8:"latitude";d:51.220001220702997;s:9:"longitude";d:4.4200000762939;}}}}', 'no'),
(364, '_site_transient_timeout_theme_roots', '1522325713', 'no'),
(365, '_site_transient_theme_roots', 'a:4:{s:9:"MADStheme";s:7:"/themes";s:13:"twentyfifteen";s:7:"/themes";s:15:"twentyseventeen";s:7:"/themes";s:13:"twentysixteen";s:7:"/themes";}', 'no'),
(366, '_site_transient_update_plugins', 'O:8:"stdClass":5:{s:12:"last_checked";i:1522323915;s:7:"checked";a:2:{s:19:"akismet/akismet.php";s:5:"4.0.2";s:9:"hello.php";s:3:"1.6";}s:8:"response";a:1:{s:19:"akismet/akismet.php";O:8:"stdClass":11:{s:2:"id";s:21:"w.org/plugins/akismet";s:4:"slug";s:7:"akismet";s:6:"plugin";s:19:"akismet/akismet.php";s:11:"new_version";s:5:"4.0.3";s:3:"url";s:38:"https://wordpress.org/plugins/akismet/";s:7:"package";s:56:"https://downloads.wordpress.org/plugin/akismet.4.0.3.zip";s:5:"icons";a:3:{s:2:"1x";s:59:"https://ps.w.org/akismet/assets/icon-128x128.png?rev=969272";s:2:"2x";s:59:"https://ps.w.org/akismet/assets/icon-256x256.png?rev=969272";s:7:"default";s:59:"https://ps.w.org/akismet/assets/icon-256x256.png?rev=969272";}s:7:"banners";a:2:{s:2:"1x";s:61:"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904";s:7:"default";s:61:"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904";}s:11:"banners_rtl";a:0:{}s:6:"tested";s:5:"4.9.4";s:13:"compatibility";O:8:"stdClass":0:{}}}s:12:"translations";a:0:{}s:9:"no_update";a:1:{s:9:"hello.php";O:8:"stdClass":9:{s:2:"id";s:25:"w.org/plugins/hello-dolly";s:4:"slug";s:11:"hello-dolly";s:6:"plugin";s:9:"hello.php";s:11:"new_version";s:3:"1.6";s:3:"url";s:42:"https://wordpress.org/plugins/hello-dolly/";s:7:"package";s:58:"https://downloads.wordpress.org/plugin/hello-dolly.1.6.zip";s:5:"icons";a:3:{s:2:"1x";s:63:"https://ps.w.org/hello-dolly/assets/icon-128x128.jpg?rev=969907";s:2:"2x";s:63:"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=969907";s:7:"default";s:63:"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=969907";}s:7:"banners";a:2:{s:2:"1x";s:65:"https://ps.w.org/hello-dolly/assets/banner-772x250.png?rev=478342";s:7:"default";s:65:"https://ps.w.org/hello-dolly/assets/banner-772x250.png?rev=478342";}s:11:"banners_rtl";a:0:{}}}}', 'no');

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
(2, 1, '_edit_lock', '1522138242:1'),
(3, 4, '_customize_draft_post_name', 'home'),
(4, 4, '_customize_changeset_uuid', 'df74026e-dbce-4997-8583-f3b56f3a67a3'),
(5, 5, '_customize_draft_post_name', 'about'),
(6, 5, '_customize_changeset_uuid', 'df74026e-dbce-4997-8583-f3b56f3a67a3'),
(7, 6, '_customize_draft_post_name', 'contact'),
(8, 6, '_customize_changeset_uuid', 'df74026e-dbce-4997-8583-f3b56f3a67a3'),
(9, 7, '_customize_draft_post_name', 'blog'),
(10, 7, '_customize_changeset_uuid', 'df74026e-dbce-4997-8583-f3b56f3a67a3'),
(11, 8, '_customize_draft_post_name', 'a-homepage-section'),
(12, 8, '_customize_changeset_uuid', 'df74026e-dbce-4997-8583-f3b56f3a67a3'),
(13, 10, '_customize_draft_post_name', 'home'),
(14, 10, '_customize_changeset_uuid', 'e3852f40-b571-4bbd-8bfe-87d259840dc5'),
(15, 11, '_customize_draft_post_name', 'about'),
(16, 11, '_customize_changeset_uuid', 'e3852f40-b571-4bbd-8bfe-87d259840dc5'),
(17, 12, '_customize_draft_post_name', 'contact'),
(18, 12, '_customize_changeset_uuid', 'e3852f40-b571-4bbd-8bfe-87d259840dc5'),
(19, 13, '_customize_draft_post_name', 'blog'),
(20, 13, '_customize_changeset_uuid', 'e3852f40-b571-4bbd-8bfe-87d259840dc5'),
(21, 14, '_customize_draft_post_name', 'a-homepage-section'),
(22, 14, '_customize_changeset_uuid', 'e3852f40-b571-4bbd-8bfe-87d259840dc5'),
(24, 9, '_customize_restore_dismissed', '1'),
(25, 2, '_edit_lock', '1522221806:1'),
(26, 15, '_customize_restore_dismissed', '1'),
(28, 16, '_customize_restore_dismissed', '1'),
(30, 17, '_customize_changeset_uuid', 'f6145567-ba64-4780-a614-b18eabeed289'),
(31, 18, '_edit_lock', '1522089425:1'),
(40, 18, '_wp_trash_meta_status', 'publish'),
(41, 18, '_wp_trash_meta_time', '1522089458'),
(42, 21, '_edit_last', '1'),
(44, 21, '_edit_lock', '1522223260:1'),
(47, 24, '_menu_item_type', 'taxonomy'),
(48, 24, '_menu_item_menu_item_parent', '0'),
(49, 24, '_menu_item_object_id', '6'),
(50, 24, '_menu_item_object', 'category'),
(51, 24, '_menu_item_target', ''),
(52, 24, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(53, 24, '_menu_item_xfn', ''),
(54, 24, '_menu_item_url', ''),
(56, 25, '_menu_item_type', 'taxonomy'),
(57, 25, '_menu_item_menu_item_parent', '0'),
(58, 25, '_menu_item_object_id', '5'),
(59, 25, '_menu_item_object', 'category'),
(60, 25, '_menu_item_target', ''),
(61, 25, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(62, 25, '_menu_item_xfn', ''),
(63, 25, '_menu_item_url', ''),
(65, 26, '_menu_item_type', 'taxonomy'),
(66, 26, '_menu_item_menu_item_parent', '0'),
(67, 26, '_menu_item_object_id', '3'),
(68, 26, '_menu_item_object', 'category'),
(69, 26, '_menu_item_target', ''),
(70, 26, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(71, 26, '_menu_item_xfn', ''),
(72, 26, '_menu_item_url', ''),
(74, 27, '_menu_item_type', 'taxonomy'),
(75, 27, '_menu_item_menu_item_parent', '0'),
(76, 27, '_menu_item_object_id', '4'),
(77, 27, '_menu_item_object', 'category'),
(78, 27, '_menu_item_target', ''),
(79, 27, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(80, 27, '_menu_item_xfn', ''),
(81, 27, '_menu_item_url', ''),
(83, 28, '_edit_last', '1'),
(84, 28, '_edit_lock', '1522225018:1'),
(89, 28, 'meta-checkbox', 'yes'),
(90, 30, 'meta-checkbox', ''),
(91, 30, '_edit_last', '1'),
(92, 30, '_edit_lock', '1522315467:1'),
(97, 32, 'meta-checkbox', ''),
(98, 32, '_edit_last', '1'),
(99, 32, '_edit_lock', '1522231685:1'),
(100, 34, 'meta-checkbox', ''),
(101, 34, '_edit_last', '1'),
(102, 34, '_edit_lock', '1522315915:1'),
(104, 36, 'meta-checkbox', ''),
(105, 36, '_edit_last', '1'),
(106, 36, '_edit_lock', '1522317412:1'),
(110, 38, 'meta-checkbox', ''),
(111, 38, '_edit_last', '1'),
(112, 38, '_edit_lock', '1522316469:1'),
(115, 40, 'meta-checkbox', ''),
(116, 40, '_edit_last', '1'),
(118, 40, '_edit_lock', '1522316408:1'),
(120, 42, 'meta-checkbox', ''),
(121, 42, '_edit_last', '1'),
(122, 42, '_edit_lock', '1522232425:1'),
(123, 43, 'meta-checkbox', ''),
(124, 43, '_edit_last', '1'),
(126, 43, '_edit_lock', '1522315825:1'),
(128, 45, 'meta-checkbox', ''),
(129, 45, '_edit_last', '1'),
(130, 45, '_edit_lock', '1522318736:1'),
(132, 17, '_edit_lock', '1522239500:1'),
(133, 42, '_wp_trash_meta_status', 'draft'),
(134, 42, '_wp_trash_meta_time', '1522239687'),
(135, 42, '_wp_desired_post_slug', ''),
(136, 48, 'meta-checkbox', ''),
(137, 48, '_edit_last', '1'),
(138, 48, '_edit_lock', '1522318704:1'),
(140, 50, 'meta-checkbox', ''),
(141, 50, '_edit_last', '1'),
(142, 50, '_edit_lock', '1522318673:1'),
(144, 53, 'meta-checkbox', ''),
(145, 53, '_edit_last', '1'),
(146, 53, '_edit_lock', '1522319275:1'),
(148, 55, 'meta-checkbox', ''),
(149, 55, '_edit_last', '1'),
(150, 55, '_edit_lock', '1522318554:1'),
(154, 57, 'meta-checkbox', ''),
(155, 57, '_edit_last', '1'),
(157, 57, '_edit_lock', '1522318538:1'),
(158, 59, 'meta-checkbox', ''),
(159, 59, '_edit_last', '1'),
(160, 59, '_edit_lock', '1522318520:1'),
(162, 61, 'meta-checkbox', ''),
(163, 61, '_edit_last', '1'),
(164, 61, '_edit_lock', '1522318497:1'),
(166, 63, 'meta-checkbox', ''),
(167, 63, '_edit_last', '1'),
(168, 63, '_edit_lock', '1522318476:1'),
(170, 65, 'meta-checkbox', ''),
(171, 32, '_wp_trash_meta_status', 'publish'),
(172, 32, '_wp_trash_meta_time', '1522307709'),
(173, 32, '_wp_desired_post_slug', 'category-wellness'),
(174, 66, 'meta-checkbox', ''),
(175, 66, '_edit_last', '1'),
(177, 66, '_edit_lock', '1522318461:1'),
(179, 68, 'meta-checkbox', ''),
(180, 68, '_edit_last', '1'),
(181, 68, '_edit_lock', '1522318428:1'),
(183, 70, 'meta-checkbox', ''),
(184, 70, '_edit_last', '1'),
(185, 70, '_edit_lock', '1522318401:1'),
(187, 72, 'meta-checkbox', ''),
(188, 72, '_edit_last', '1'),
(189, 72, '_edit_lock', '1522318386:1'),
(191, 74, 'meta-checkbox', ''),
(192, 74, '_edit_last', '1'),
(193, 74, '_edit_lock', '1522318369:1'),
(195, 76, 'meta-checkbox', ''),
(196, 76, '_edit_last', '1'),
(197, 76, '_edit_lock', '1522318346:1'),
(199, 78, 'meta-checkbox', ''),
(200, 78, '_edit_last', '1'),
(201, 78, '_edit_lock', '1522318306:1'),
(203, 80, 'meta-checkbox', ''),
(204, 80, '_edit_last', '1'),
(205, 80, '_edit_lock', '1522315422:1'),
(207, 82, 'meta-checkbox', ''),
(208, 82, '_edit_last', '1'),
(209, 82, '_edit_lock', '1522315839:1'),
(211, 84, 'meta-checkbox', ''),
(212, 84, '_edit_last', '1'),
(213, 84, '_edit_lock', '1522316346:1'),
(215, 86, 'meta-checkbox', ''),
(216, 86, '_edit_last', '1'),
(217, 86, '_edit_lock', '1522316272:1'),
(219, 88, 'meta-checkbox', ''),
(220, 88, '_edit_last', '1'),
(222, 88, '_edit_lock', '1522325510:1'),
(223, 90, 'meta-checkbox', ''),
(224, 90, '_edit_last', '1'),
(225, 90, '_edit_lock', '1522315393:1'),
(228, 92, 'meta-checkbox', ''),
(229, 92, '_edit_last', '1'),
(230, 92, '_edit_lock', '1522316225:1'),
(232, 94, 'meta-checkbox', ''),
(233, 94, '_edit_last', '1'),
(234, 94, '_edit_lock', '1522315775:1'),
(259, 109, 'meta-checkbox', ''),
(264, 113, 'meta-checkbox', ''),
(280, 119, 'meta-checkbox', ''),
(281, 120, '_wp_attached_file', '2018/03/lethargic-dog1.jpg'),
(282, 120, '_wp_attachment_metadata', 'a:4:{s:5:"width";i:190;s:6:"height";i:150;s:4:"file";s:26:"2018/03/lethargic-dog1.jpg";s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(287, 90, '_thumbnail_id', '120'),
(291, 80, '_thumbnail_id', '120'),
(293, 30, '_thumbnail_id', '120'),
(299, 123, '_wp_attached_file', '2018/03/dog-halloween-costumes-1.jpg'),
(300, 123, '_wp_attachment_metadata', 'a:4:{s:5:"width";i:190;s:6:"height";i:150;s:4:"file";s:36:"2018/03/dog-halloween-costumes-1.jpg";s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(301, 94, '_thumbnail_id', '123'),
(303, 82, '_thumbnail_id', '123'),
(305, 43, '_thumbnail_id', '123'),
(307, 34, '_thumbnail_id', '123'),
(309, 125, '_wp_attached_file', '2018/03/dog-constip1.jpg'),
(310, 125, '_wp_attachment_metadata', 'a:4:{s:5:"width";i:190;s:6:"height";i:150;s:4:"file";s:24:"2018/03/dog-constip1.jpg";s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(311, 126, '_wp_attached_file', '2018/03/healthy-dog1.jpg'),
(312, 126, '_wp_attachment_metadata', 'a:4:{s:5:"width";i:190;s:6:"height";i:150;s:4:"file";s:24:"2018/03/healthy-dog1.jpg";s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(313, 92, '_thumbnail_id', '126'),
(315, 88, '_thumbnail_id', '125'),
(317, 86, '_thumbnail_id', '125'),
(319, 84, '_thumbnail_id', '126'),
(321, 40, '_thumbnail_id', '120'),
(323, 38, '_thumbnail_id', '126'),
(325, 36, '_thumbnail_id', '125'),
(327, 127, '_wp_attached_file', '2018/03/therapy-fea1.jpg'),
(328, 127, '_wp_attachment_metadata', 'a:4:{s:5:"width";i:190;s:6:"height";i:150;s:4:"file";s:24:"2018/03/therapy-fea1.jpg";s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(329, 128, '_wp_attached_file', '2018/03/working-dog.jpg'),
(330, 128, '_wp_attachment_metadata', 'a:4:{s:5:"width";i:190;s:6:"height";i:150;s:4:"file";s:23:"2018/03/working-dog.jpg";s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(331, 129, '_wp_attached_file', '2018/03/family-dog1.jpg'),
(332, 129, '_wp_attachment_metadata', 'a:4:{s:5:"width";i:190;s:6:"height";i:150;s:4:"file";s:23:"2018/03/family-dog1.jpg";s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(333, 130, '_wp_attached_file', '2018/03/runing-away-dog1.jpg'),
(334, 130, '_wp_attachment_metadata', 'a:4:{s:5:"width";i:190;s:6:"height";i:150;s:4:"file";s:28:"2018/03/runing-away-dog1.jpg";s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(335, 78, '_thumbnail_id', '127'),
(337, 76, '_thumbnail_id', '128'),
(339, 74, '_thumbnail_id', '129'),
(341, 72, '_thumbnail_id', '130'),
(343, 70, '_thumbnail_id', '127'),
(345, 68, '_thumbnail_id', '128'),
(347, 66, '_thumbnail_id', '129'),
(349, 63, '_thumbnail_id', '130'),
(351, 61, '_thumbnail_id', '127'),
(353, 59, '_thumbnail_id', '128'),
(356, 57, '_thumbnail_id', '129'),
(358, 55, '_thumbnail_id', '130'),
(360, 53, '_thumbnail_id', '127'),
(362, 50, '_thumbnail_id', '128'),
(365, 48, '_thumbnail_id', '129'),
(367, 45, '_thumbnail_id', '126'),
(373, 133, '_wp_attached_file', '2018/03/sidebar1.jpg'),
(374, 133, '_wp_attachment_metadata', 'a:4:{s:5:"width";i:250;s:6:"height";i:500;s:4:"file";s:20:"2018/03/sidebar1.jpg";s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}');

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
(1, 1, '2018-03-26 10:32:09', '2018-03-26 10:32:09', 'Welcome to WordPress. This is your first post. Edit or delete it, then start writing!', 'Hello world!', '', 'publish', 'open', 'open', '', 'hello-world', '', '', '2018-03-26 10:32:09', '2018-03-26 10:32:09', '', 0, 'http://localhost/MADS-foodog/wordpress/?p=1', 0, 'post', '', 1),
(2, 1, '2018-03-26 10:32:09', '2018-03-26 10:32:09', 'This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:\n\n<blockquote>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</blockquote>\n\n...or something like this:\n\n<blockquote>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</blockquote>\n\nAs a new WordPress user, you should go to <a href="http://localhost/MADS-foodog/wordpress/wp-admin/">your dashboard</a> to delete this page and create new pages for your content. Have fun!', 'Sample Page', '', 'publish', 'closed', 'open', '', 'sample-page', '', '', '2018-03-26 10:32:09', '2018-03-26 10:32:09', '', 0, 'http://localhost/MADS-foodog/wordpress/?page_id=2', 0, 'page', '', 0),
(3, 1, '2018-03-26 10:32:20', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2018-03-26 10:32:20', '0000-00-00 00:00:00', '', 0, 'http://localhost/MADS-foodog/wordpress/?p=3', 0, 'post', '', 0),
(4, 1, '2018-03-26 18:14:19', '0000-00-00 00:00:00', 'Welcome to your site! This is your homepage, which is what most visitors will see when they come to your site for the first time.', 'Home', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-03-26 18:14:17', '0000-00-00 00:00:00', '', 0, 'http://localhost/MADS-foodog/wordpress/?page_id=4', 0, 'page', '', 0),
(5, 1, '2018-03-26 18:14:19', '0000-00-00 00:00:00', 'You might be an artist who would like to introduce yourself and your work here or maybe you&rsquo;re a business with a mission to describe.', 'About', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-03-26 18:14:18', '0000-00-00 00:00:00', '', 0, 'http://localhost/MADS-foodog/wordpress/?page_id=5', 0, 'page', '', 0),
(6, 1, '2018-03-26 18:14:19', '0000-00-00 00:00:00', 'This is a page with some basic contact information, such as an address and phone number. You might also try a plugin to add a contact form.', 'Contact', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-03-26 18:14:18', '0000-00-00 00:00:00', '', 0, 'http://localhost/MADS-foodog/wordpress/?page_id=6', 0, 'page', '', 0),
(7, 1, '2018-03-26 18:14:19', '0000-00-00 00:00:00', '', 'Blog', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-03-26 18:14:18', '0000-00-00 00:00:00', '', 0, 'http://localhost/MADS-foodog/wordpress/?page_id=7', 0, 'page', '', 0),
(8, 1, '2018-03-26 18:14:19', '0000-00-00 00:00:00', 'This is an example of a homepage section. Homepage sections can be any page other than the homepage itself, including the page that shows your latest blog posts.', 'A homepage section', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-03-26 18:14:18', '0000-00-00 00:00:00', '', 0, 'http://localhost/MADS-foodog/wordpress/?page_id=8', 0, 'page', '', 0),
(9, 1, '2018-03-26 18:14:19', '0000-00-00 00:00:00', '{\n    "widget_text[2]": {\n        "starter_content": true,\n        "value": {\n            "encoded_serialized_instance": "YTo0OntzOjU6InRpdGxlIjtzOjc6IkZpbmQgVXMiO3M6NDoidGV4dCI7czoxNjg6IjxzdHJvbmc+QWRkcmVzczwvc3Ryb25nPgoxMjMgTWFpbiBTdHJlZXQKTmV3IFlvcmssIE5ZIDEwMDAxCgo8c3Ryb25nPkhvdXJzPC9zdHJvbmc+Ck1vbmRheSZtZGFzaDtGcmlkYXk6IDk6MDBBTSZuZGFzaDs1OjAwUE0KU2F0dXJkYXkgJmFtcDsgU3VuZGF5OiAxMTowMEFNJm5kYXNoOzM6MDBQTSI7czo2OiJmaWx0ZXIiO2I6MTtzOjY6InZpc3VhbCI7YjoxO30=",\n            "title": "Find Us",\n            "is_widget_customizer_js_value": true,\n            "instance_hash_key": "9950cf523a6a28eb9949b920fd1394a6"\n        },\n        "type": "option",\n        "user_id": 1,\n        "date_modified_gmt": "2018-03-26 18:14:18"\n    },\n    "widget_search[3]": {\n        "starter_content": true,\n        "value": {\n            "encoded_serialized_instance": "YToxOntzOjU6InRpdGxlIjtzOjY6IlNlYXJjaCI7fQ==",\n            "title": "Search",\n            "is_widget_customizer_js_value": true,\n            "instance_hash_key": "582084754444895806ebb1bcd7800f9d"\n        },\n        "type": "option",\n        "user_id": 1,\n        "date_modified_gmt": "2018-03-26 18:14:18"\n    },\n    "widget_text[3]": {\n        "starter_content": true,\n        "value": {\n            "encoded_serialized_instance": "YTo0OntzOjU6InRpdGxlIjtzOjE1OiJBYm91dCBUaGlzIFNpdGUiO3M6NDoidGV4dCI7czo4NToiVGhpcyBtYXkgYmUgYSBnb29kIHBsYWNlIHRvIGludHJvZHVjZSB5b3Vyc2VsZiBhbmQgeW91ciBzaXRlIG9yIGluY2x1ZGUgc29tZSBjcmVkaXRzLiI7czo2OiJmaWx0ZXIiO2I6MTtzOjY6InZpc3VhbCI7YjoxO30=",\n            "title": "About This Site",\n            "is_widget_customizer_js_value": true,\n            "instance_hash_key": "ad8d5edc4cc1da0db30b7a6022bf6433"\n        },\n        "type": "option",\n        "user_id": 1,\n        "date_modified_gmt": "2018-03-26 18:14:18"\n    },\n    "sidebars_widgets[sidebar-1]": {\n        "starter_content": true,\n        "value": [\n            "text-2",\n            "search-3",\n            "text-3"\n        ],\n        "type": "option",\n        "user_id": 1,\n        "date_modified_gmt": "2018-03-26 18:14:18"\n    },\n    "widget_text[4]": {\n        "starter_content": true,\n        "value": {\n            "encoded_serialized_instance": "YTo0OntzOjU6InRpdGxlIjtzOjc6IkZpbmQgVXMiO3M6NDoidGV4dCI7czoxNjg6IjxzdHJvbmc+QWRkcmVzczwvc3Ryb25nPgoxMjMgTWFpbiBTdHJlZXQKTmV3IFlvcmssIE5ZIDEwMDAxCgo8c3Ryb25nPkhvdXJzPC9zdHJvbmc+Ck1vbmRheSZtZGFzaDtGcmlkYXk6IDk6MDBBTSZuZGFzaDs1OjAwUE0KU2F0dXJkYXkgJmFtcDsgU3VuZGF5OiAxMTowMEFNJm5kYXNoOzM6MDBQTSI7czo2OiJmaWx0ZXIiO2I6MTtzOjY6InZpc3VhbCI7YjoxO30=",\n            "title": "Find Us",\n            "is_widget_customizer_js_value": true,\n            "instance_hash_key": "9950cf523a6a28eb9949b920fd1394a6"\n        },\n        "type": "option",\n        "user_id": 1,\n        "date_modified_gmt": "2018-03-26 18:14:18"\n    },\n    "sidebars_widgets[sidebar-2]": {\n        "starter_content": true,\n        "value": [\n            "text-4"\n        ],\n        "type": "option",\n        "user_id": 1,\n        "date_modified_gmt": "2018-03-26 18:14:18"\n    },\n    "widget_text[5]": {\n        "starter_content": true,\n        "value": {\n            "encoded_serialized_instance": "YTo0OntzOjU6InRpdGxlIjtzOjE1OiJBYm91dCBUaGlzIFNpdGUiO3M6NDoidGV4dCI7czo4NToiVGhpcyBtYXkgYmUgYSBnb29kIHBsYWNlIHRvIGludHJvZHVjZSB5b3Vyc2VsZiBhbmQgeW91ciBzaXRlIG9yIGluY2x1ZGUgc29tZSBjcmVkaXRzLiI7czo2OiJmaWx0ZXIiO2I6MTtzOjY6InZpc3VhbCI7YjoxO30=",\n            "title": "About This Site",\n            "is_widget_customizer_js_value": true,\n            "instance_hash_key": "ad8d5edc4cc1da0db30b7a6022bf6433"\n        },\n        "type": "option",\n        "user_id": 1,\n        "date_modified_gmt": "2018-03-26 18:14:18"\n    },\n    "widget_search[4]": {\n        "starter_content": true,\n        "value": {\n            "encoded_serialized_instance": "YToxOntzOjU6InRpdGxlIjtzOjY6IlNlYXJjaCI7fQ==",\n            "title": "Search",\n            "is_widget_customizer_js_value": true,\n            "instance_hash_key": "582084754444895806ebb1bcd7800f9d"\n        },\n        "type": "option",\n        "user_id": 1,\n        "date_modified_gmt": "2018-03-26 18:14:18"\n    },\n    "sidebars_widgets[sidebar-3]": {\n        "starter_content": true,\n        "value": [\n            "text-5",\n            "search-4"\n        ],\n        "type": "option",\n        "user_id": 1,\n        "date_modified_gmt": "2018-03-26 18:14:18"\n    },\n    "nav_menus_created_posts": {\n        "starter_content": true,\n        "value": [\n            4,\n            5,\n            6,\n            7,\n            8\n        ],\n        "type": "option",\n        "user_id": 1,\n        "date_modified_gmt": "2018-03-26 18:14:18"\n    },\n    "nav_menu[-1]": {\n        "starter_content": true,\n        "value": {\n            "name": "Top Menu"\n        },\n        "type": "nav_menu",\n        "user_id": 1,\n        "date_modified_gmt": "2018-03-26 18:14:18"\n    },\n    "nav_menu_item[-1]": {\n        "starter_content": true,\n        "value": {\n            "type": "custom",\n            "title": "Home",\n            "url": "http://localhost/MADS-foodog/wordpress/",\n            "position": 0,\n            "nav_menu_term_id": -1,\n            "object_id": 0\n        },\n        "type": "nav_menu_item",\n        "user_id": 1,\n        "date_modified_gmt": "2018-03-26 18:14:18"\n    },\n    "nav_menu_item[-2]": {\n        "starter_content": true,\n        "value": {\n            "type": "post_type",\n            "object": "page",\n            "object_id": 5,\n            "position": 1,\n            "nav_menu_term_id": -1,\n            "title": "About"\n        },\n        "type": "nav_menu_item",\n        "user_id": 1,\n        "date_modified_gmt": "2018-03-26 18:14:18"\n    },\n    "nav_menu_item[-3]": {\n        "starter_content": true,\n        "value": {\n            "type": "post_type",\n            "object": "page",\n            "object_id": 7,\n            "position": 2,\n            "nav_menu_term_id": -1,\n            "title": "Blog"\n        },\n        "type": "nav_menu_item",\n        "user_id": 1,\n        "date_modified_gmt": "2018-03-26 18:14:18"\n    },\n    "nav_menu_item[-4]": {\n        "starter_content": true,\n        "value": {\n            "type": "post_type",\n            "object": "page",\n            "object_id": 6,\n            "position": 3,\n            "nav_menu_term_id": -1,\n            "title": "Contact"\n        },\n        "type": "nav_menu_item",\n        "user_id": 1,\n        "date_modified_gmt": "2018-03-26 18:14:18"\n    },\n    "twentyseventeen::nav_menu_locations[top]": {\n        "starter_content": true,\n        "value": -1,\n        "type": "theme_mod",\n        "user_id": 1,\n        "date_modified_gmt": "2018-03-26 18:14:18"\n    },\n    "nav_menu[-5]": {\n        "starter_content": true,\n        "value": {\n            "name": "Social Links Menu"\n        },\n        "type": "nav_menu",\n        "user_id": 1,\n        "date_modified_gmt": "2018-03-26 18:14:18"\n    },\n    "nav_menu_item[-5]": {\n        "starter_content": true,\n        "value": {\n            "title": "Yelp",\n            "url": "https://www.yelp.com",\n            "position": 0,\n            "nav_menu_term_id": -5,\n            "object_id": 0\n        },\n        "type": "nav_menu_item",\n        "user_id": 1,\n        "date_modified_gmt": "2018-03-26 18:14:18"\n    },\n    "nav_menu_item[-6]": {\n        "starter_content": true,\n        "value": {\n            "title": "Facebook",\n            "url": "https://www.facebook.com/wordpress",\n            "position": 1,\n            "nav_menu_term_id": -5,\n            "object_id": 0\n        },\n        "type": "nav_menu_item",\n        "user_id": 1,\n        "date_modified_gmt": "2018-03-26 18:14:18"\n    },\n    "nav_menu_item[-7]": {\n        "starter_content": true,\n        "value": {\n            "title": "Twitter",\n            "url": "https://twitter.com/wordpress",\n            "position": 2,\n            "nav_menu_term_id": -5,\n            "object_id": 0\n        },\n        "type": "nav_menu_item",\n        "user_id": 1,\n        "date_modified_gmt": "2018-03-26 18:14:18"\n    },\n    "nav_menu_item[-8]": {\n        "starter_content": true,\n        "value": {\n            "title": "Instagram",\n            "url": "https://www.instagram.com/explore/tags/wordcamp/",\n            "position": 3,\n            "nav_menu_term_id": -5,\n            "object_id": 0\n        },\n        "type": "nav_menu_item",\n        "user_id": 1,\n        "date_modified_gmt": "2018-03-26 18:14:18"\n    },\n    "nav_menu_item[-9]": {\n        "starter_content": true,\n        "value": {\n            "title": "Email",\n            "url": "mailto:wordpress@example.com",\n            "position": 4,\n            "nav_menu_term_id": -5,\n            "object_id": 0\n        },\n        "type": "nav_menu_item",\n        "user_id": 1,\n        "date_modified_gmt": "2018-03-26 18:14:18"\n    },\n    "twentyseventeen::nav_menu_locations[social]": {\n        "starter_content": true,\n        "value": -5,\n        "type": "theme_mod",\n        "user_id": 1,\n        "date_modified_gmt": "2018-03-26 18:14:18"\n    },\n    "show_on_front": {\n        "starter_content": true,\n        "value": "page",\n        "type": "option",\n        "user_id": 1,\n        "date_modified_gmt": "2018-03-26 18:14:18"\n    },\n    "page_on_front": {\n        "starter_content": true,\n        "value": 4,\n        "type": "option",\n        "user_id": 1,\n        "date_modified_gmt": "2018-03-26 18:14:18"\n    },\n    "page_for_posts": {\n        "starter_content": true,\n        "value": 7,\n        "type": "option",\n        "user_id": 1,\n        "date_modified_gmt": "2018-03-26 18:14:18"\n    },\n    "twentyseventeen::panel_1": {\n        "starter_content": true,\n        "value": 8,\n        "type": "theme_mod",\n        "user_id": 1,\n        "date_modified_gmt": "2018-03-26 18:14:18"\n    },\n    "twentyseventeen::panel_2": {\n        "starter_content": true,\n        "value": 5,\n        "type": "theme_mod",\n        "user_id": 1,\n        "date_modified_gmt": "2018-03-26 18:14:18"\n    },\n    "twentyseventeen::panel_3": {\n        "starter_content": true,\n        "value": 7,\n        "type": "theme_mod",\n        "user_id": 1,\n        "date_modified_gmt": "2018-03-26 18:14:18"\n    },\n    "twentyseventeen::panel_4": {\n        "starter_content": true,\n        "value": 6,\n        "type": "theme_mod",\n        "user_id": 1,\n        "date_modified_gmt": "2018-03-26 18:14:18"\n    }\n}', '', '', 'auto-draft', 'closed', 'closed', '', 'df74026e-dbce-4997-8583-f3b56f3a67a3', '', '', '2018-03-26 18:14:19', '0000-00-00 00:00:00', '', 0, 'http://localhost/MADS-foodog/wordpress/?p=9', 0, 'customize_changeset', '', 0),
(10, 1, '2018-03-26 18:17:45', '0000-00-00 00:00:00', 'Welcome to your site! This is your homepage, which is what most visitors will see when they come to your site for the first time.', 'Home', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-03-26 18:14:56', '0000-00-00 00:00:00', '', 0, 'http://localhost/MADS-foodog/wordpress/?page_id=10', 0, 'page', '', 0),
(11, 1, '2018-03-26 18:17:45', '0000-00-00 00:00:00', 'You might be an artist who would like to introduce yourself and your work here or maybe you&rsquo;re a business with a mission to describe.', 'About', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-03-26 18:14:56', '0000-00-00 00:00:00', '', 0, 'http://localhost/MADS-foodog/wordpress/?page_id=11', 0, 'page', '', 0),
(12, 1, '2018-03-26 18:17:45', '0000-00-00 00:00:00', 'This is a page with some basic contact information, such as an address and phone number. You might also try a plugin to add a contact form.', 'Contact', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-03-26 18:14:57', '0000-00-00 00:00:00', '', 0, 'http://localhost/MADS-foodog/wordpress/?page_id=12', 0, 'page', '', 0),
(13, 1, '2018-03-26 18:17:45', '0000-00-00 00:00:00', '', 'Blog', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-03-26 18:14:57', '0000-00-00 00:00:00', '', 0, 'http://localhost/MADS-foodog/wordpress/?page_id=13', 0, 'page', '', 0),
(14, 1, '2018-03-26 18:17:45', '0000-00-00 00:00:00', 'This is an example of a homepage section. Homepage sections can be any page other than the homepage itself, including the page that shows your latest blog posts.', 'A homepage section', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-03-26 18:14:57', '0000-00-00 00:00:00', '', 0, 'http://localhost/MADS-foodog/wordpress/?page_id=14', 0, 'page', '', 0),
(15, 1, '2018-03-26 18:17:45', '0000-00-00 00:00:00', '{\n    "widget_text[6]": {\n        "starter_content": true,\n        "value": {\n            "encoded_serialized_instance": "YTo0OntzOjU6InRpdGxlIjtzOjc6IkZpbmQgVXMiO3M6NDoidGV4dCI7czoxNjg6IjxzdHJvbmc+QWRkcmVzczwvc3Ryb25nPgoxMjMgTWFpbiBTdHJlZXQKTmV3IFlvcmssIE5ZIDEwMDAxCgo8c3Ryb25nPkhvdXJzPC9zdHJvbmc+Ck1vbmRheSZtZGFzaDtGcmlkYXk6IDk6MDBBTSZuZGFzaDs1OjAwUE0KU2F0dXJkYXkgJmFtcDsgU3VuZGF5OiAxMTowMEFNJm5kYXNoOzM6MDBQTSI7czo2OiJmaWx0ZXIiO2I6MTtzOjY6InZpc3VhbCI7YjoxO30=",\n            "title": "Find Us",\n            "is_widget_customizer_js_value": true,\n            "instance_hash_key": "9950cf523a6a28eb9949b920fd1394a6"\n        },\n        "type": "option",\n        "user_id": 1,\n        "date_modified_gmt": "2018-03-26 18:14:57"\n    },\n    "widget_search[3]": {\n        "starter_content": true,\n        "value": {\n            "encoded_serialized_instance": "YToxOntzOjU6InRpdGxlIjtzOjY6IlNlYXJjaCI7fQ==",\n            "title": "Search",\n            "is_widget_customizer_js_value": true,\n            "instance_hash_key": "582084754444895806ebb1bcd7800f9d"\n        },\n        "type": "option",\n        "user_id": 1,\n        "date_modified_gmt": "2018-03-26 18:14:57"\n    },\n    "widget_text[7]": {\n        "starter_content": true,\n        "value": {\n            "encoded_serialized_instance": "YTo0OntzOjU6InRpdGxlIjtzOjE1OiJBYm91dCBUaGlzIFNpdGUiO3M6NDoidGV4dCI7czo4NToiVGhpcyBtYXkgYmUgYSBnb29kIHBsYWNlIHRvIGludHJvZHVjZSB5b3Vyc2VsZiBhbmQgeW91ciBzaXRlIG9yIGluY2x1ZGUgc29tZSBjcmVkaXRzLiI7czo2OiJmaWx0ZXIiO2I6MTtzOjY6InZpc3VhbCI7YjoxO30=",\n            "title": "About This Site",\n            "is_widget_customizer_js_value": true,\n            "instance_hash_key": "ad8d5edc4cc1da0db30b7a6022bf6433"\n        },\n        "type": "option",\n        "user_id": 1,\n        "date_modified_gmt": "2018-03-26 18:14:57"\n    },\n    "sidebars_widgets[sidebar-1]": {\n        "starter_content": true,\n        "value": [\n            "text-6",\n            "search-3",\n            "text-7"\n        ],\n        "type": "option",\n        "user_id": 1,\n        "date_modified_gmt": "2018-03-26 18:14:57"\n    },\n    "widget_text[8]": {\n        "starter_content": true,\n        "value": {\n            "encoded_serialized_instance": "YTo0OntzOjU6InRpdGxlIjtzOjc6IkZpbmQgVXMiO3M6NDoidGV4dCI7czoxNjg6IjxzdHJvbmc+QWRkcmVzczwvc3Ryb25nPgoxMjMgTWFpbiBTdHJlZXQKTmV3IFlvcmssIE5ZIDEwMDAxCgo8c3Ryb25nPkhvdXJzPC9zdHJvbmc+Ck1vbmRheSZtZGFzaDtGcmlkYXk6IDk6MDBBTSZuZGFzaDs1OjAwUE0KU2F0dXJkYXkgJmFtcDsgU3VuZGF5OiAxMTowMEFNJm5kYXNoOzM6MDBQTSI7czo2OiJmaWx0ZXIiO2I6MTtzOjY6InZpc3VhbCI7YjoxO30=",\n            "title": "Find Us",\n            "is_widget_customizer_js_value": true,\n            "instance_hash_key": "9950cf523a6a28eb9949b920fd1394a6"\n        },\n        "type": "option",\n        "user_id": 1,\n        "date_modified_gmt": "2018-03-26 18:14:57"\n    },\n    "sidebars_widgets[sidebar-2]": {\n        "starter_content": true,\n        "value": [\n            "text-8"\n        ],\n        "type": "option",\n        "user_id": 1,\n        "date_modified_gmt": "2018-03-26 18:14:57"\n    },\n    "widget_text[9]": {\n        "starter_content": true,\n        "value": {\n            "encoded_serialized_instance": "YTo0OntzOjU6InRpdGxlIjtzOjE1OiJBYm91dCBUaGlzIFNpdGUiO3M6NDoidGV4dCI7czo4NToiVGhpcyBtYXkgYmUgYSBnb29kIHBsYWNlIHRvIGludHJvZHVjZSB5b3Vyc2VsZiBhbmQgeW91ciBzaXRlIG9yIGluY2x1ZGUgc29tZSBjcmVkaXRzLiI7czo2OiJmaWx0ZXIiO2I6MTtzOjY6InZpc3VhbCI7YjoxO30=",\n            "title": "About This Site",\n            "is_widget_customizer_js_value": true,\n            "instance_hash_key": "ad8d5edc4cc1da0db30b7a6022bf6433"\n        },\n        "type": "option",\n        "user_id": 1,\n        "date_modified_gmt": "2018-03-26 18:14:57"\n    },\n    "widget_search[4]": {\n        "starter_content": true,\n        "value": {\n            "encoded_serialized_instance": "YToxOntzOjU6InRpdGxlIjtzOjY6IlNlYXJjaCI7fQ==",\n            "title": "Search",\n            "is_widget_customizer_js_value": true,\n            "instance_hash_key": "582084754444895806ebb1bcd7800f9d"\n        },\n        "type": "option",\n        "user_id": 1,\n        "date_modified_gmt": "2018-03-26 18:14:57"\n    },\n    "sidebars_widgets[sidebar-3]": {\n        "starter_content": true,\n        "value": [\n            "text-9",\n            "search-4"\n        ],\n        "type": "option",\n        "user_id": 1,\n        "date_modified_gmt": "2018-03-26 18:14:57"\n    },\n    "nav_menus_created_posts": {\n        "starter_content": true,\n        "value": [\n            10,\n            11,\n            12,\n            13,\n            14\n        ],\n        "type": "option",\n        "user_id": 1,\n        "date_modified_gmt": "2018-03-26 18:14:57"\n    },\n    "nav_menu[-1]": {\n        "starter_content": true,\n        "value": {\n            "name": "Top Menu"\n        },\n        "type": "nav_menu",\n        "user_id": 1,\n        "date_modified_gmt": "2018-03-26 18:14:57"\n    },\n    "nav_menu_item[-1]": {\n        "starter_content": true,\n        "value": {\n            "type": "custom",\n            "title": "Home",\n            "url": "http://localhost/MADS-foodog/wordpress/",\n            "position": 0,\n            "nav_menu_term_id": -1,\n            "object_id": 0\n        },\n        "type": "nav_menu_item",\n        "user_id": 1,\n        "date_modified_gmt": "2018-03-26 18:14:57"\n    },\n    "nav_menu_item[-2]": {\n        "starter_content": true,\n        "value": {\n            "type": "post_type",\n            "object": "page",\n            "object_id": 11,\n            "position": 1,\n            "nav_menu_term_id": -1,\n            "title": "About"\n        },\n        "type": "nav_menu_item",\n        "user_id": 1,\n        "date_modified_gmt": "2018-03-26 18:14:57"\n    },\n    "nav_menu_item[-3]": {\n        "starter_content": true,\n        "value": {\n            "type": "post_type",\n            "object": "page",\n            "object_id": 13,\n            "position": 2,\n            "nav_menu_term_id": -1,\n            "title": "Blog"\n        },\n        "type": "nav_menu_item",\n        "user_id": 1,\n        "date_modified_gmt": "2018-03-26 18:14:57"\n    },\n    "nav_menu_item[-4]": {\n        "starter_content": true,\n        "value": {\n            "type": "post_type",\n            "object": "page",\n            "object_id": 12,\n            "position": 3,\n            "nav_menu_term_id": -1,\n            "title": "Contact"\n        },\n        "type": "nav_menu_item",\n        "user_id": 1,\n        "date_modified_gmt": "2018-03-26 18:14:57"\n    },\n    "twentyseventeen::nav_menu_locations[top]": {\n        "starter_content": true,\n        "value": -1,\n        "type": "theme_mod",\n        "user_id": 1,\n        "date_modified_gmt": "2018-03-26 18:14:57"\n    },\n    "nav_menu[-5]": {\n        "starter_content": true,\n        "value": {\n            "name": "Social Links Menu"\n        },\n        "type": "nav_menu",\n        "user_id": 1,\n        "date_modified_gmt": "2018-03-26 18:14:57"\n    },\n    "nav_menu_item[-5]": {\n        "starter_content": true,\n        "value": {\n            "title": "Yelp",\n            "url": "https://www.yelp.com",\n            "position": 0,\n            "nav_menu_term_id": -5,\n            "object_id": 0\n        },\n        "type": "nav_menu_item",\n        "user_id": 1,\n        "date_modified_gmt": "2018-03-26 18:14:57"\n    },\n    "nav_menu_item[-6]": {\n        "starter_content": true,\n        "value": {\n            "title": "Facebook",\n            "url": "https://www.facebook.com/wordpress",\n            "position": 1,\n            "nav_menu_term_id": -5,\n            "object_id": 0\n        },\n        "type": "nav_menu_item",\n        "user_id": 1,\n        "date_modified_gmt": "2018-03-26 18:14:57"\n    },\n    "nav_menu_item[-7]": {\n        "starter_content": true,\n        "value": {\n            "title": "Twitter",\n            "url": "https://twitter.com/wordpress",\n            "position": 2,\n            "nav_menu_term_id": -5,\n            "object_id": 0\n        },\n        "type": "nav_menu_item",\n        "user_id": 1,\n        "date_modified_gmt": "2018-03-26 18:14:57"\n    },\n    "nav_menu_item[-8]": {\n        "starter_content": true,\n        "value": {\n            "title": "Instagram",\n            "url": "https://www.instagram.com/explore/tags/wordcamp/",\n            "position": 3,\n            "nav_menu_term_id": -5,\n            "object_id": 0\n        },\n        "type": "nav_menu_item",\n        "user_id": 1,\n        "date_modified_gmt": "2018-03-26 18:14:57"\n    },\n    "nav_menu_item[-9]": {\n        "starter_content": true,\n        "value": {\n            "title": "Email",\n            "url": "mailto:wordpress@example.com",\n            "position": 4,\n            "nav_menu_term_id": -5,\n            "object_id": 0\n        },\n        "type": "nav_menu_item",\n        "user_id": 1,\n        "date_modified_gmt": "2018-03-26 18:14:57"\n    },\n    "twentyseventeen::nav_menu_locations[social]": {\n        "starter_content": true,\n        "value": -5,\n        "type": "theme_mod",\n        "user_id": 1,\n        "date_modified_gmt": "2018-03-26 18:14:57"\n    },\n    "show_on_front": {\n        "starter_content": true,\n        "value": "page",\n        "type": "option",\n        "user_id": 1,\n        "date_modified_gmt": "2018-03-26 18:14:57"\n    },\n    "page_on_front": {\n        "starter_content": true,\n        "value": 10,\n        "type": "option",\n        "user_id": 1,\n        "date_modified_gmt": "2018-03-26 18:14:57"\n    },\n    "page_for_posts": {\n        "starter_content": true,\n        "value": 13,\n        "type": "option",\n        "user_id": 1,\n        "date_modified_gmt": "2018-03-26 18:14:57"\n    },\n    "twentyseventeen::panel_1": {\n        "starter_content": true,\n        "value": 14,\n        "type": "theme_mod",\n        "user_id": 1,\n        "date_modified_gmt": "2018-03-26 18:14:57"\n    },\n    "twentyseventeen::panel_2": {\n        "starter_content": true,\n        "value": 11,\n        "type": "theme_mod",\n        "user_id": 1,\n        "date_modified_gmt": "2018-03-26 18:14:57"\n    },\n    "twentyseventeen::panel_3": {\n        "starter_content": true,\n        "value": 13,\n        "type": "theme_mod",\n        "user_id": 1,\n        "date_modified_gmt": "2018-03-26 18:14:57"\n    },\n    "twentyseventeen::panel_4": {\n        "starter_content": true,\n        "value": 12,\n        "type": "theme_mod",\n        "user_id": 1,\n        "date_modified_gmt": "2018-03-26 18:14:57"\n    },\n    "old_sidebars_widgets_data": {\n        "value": {\n            "wp_inactive_widgets": [],\n            "sidebar-1": [\n                "text-6",\n                "search-3",\n                "text-7"\n            ],\n            "sidebar-2": [\n                "text-8"\n            ],\n            "sidebar-3": [\n                "text-9",\n                "search-4"\n            ]\n        },\n        "type": "global_variable",\n        "user_id": 1,\n        "date_modified_gmt": "2018-03-26 18:17:45"\n    }\n}', '', '', 'auto-draft', 'closed', 'closed', '', 'e3852f40-b571-4bbd-8bfe-87d259840dc5', '', '', '2018-03-26 18:17:45', '2018-03-26 18:17:45', '', 0, 'http://localhost/MADS-foodog/wordpress/?p=15', 0, 'customize_changeset', '', 0),
(16, 1, '2018-03-26 18:32:53', '0000-00-00 00:00:00', '{\n    "twentyfifteen::header_textcolor": {\n        "value": "#333333",\n        "type": "theme_mod",\n        "user_id": 1,\n        "date_modified_gmt": "2018-03-26 18:32:53"\n    }\n}', '', '', 'auto-draft', 'closed', 'closed', '', 'dc412856-bc38-4b03-a01a-ef681bdec309', '', '', '2018-03-26 18:32:53', '0000-00-00 00:00:00', '', 0, 'http://localhost/MADS-foodog/wordpress/?p=16', 0, 'customize_changeset', '', 0),
(17, 1, '2018-03-26 18:37:36', '2018-03-26 18:37:36', '', 'thetest', '', 'publish', 'closed', 'closed', '', 'thetest', '', '', '2018-03-26 18:37:36', '2018-03-26 18:37:36', '', 0, 'http://localhost/MADS-foodog/wordpress/?page_id=17', 0, 'page', '', 0),
(18, 1, '2018-03-26 18:37:36', '2018-03-26 18:37:36', '{\n    "twentyfifteen::nav_menu_locations[primary]": {\n        "value": -5788088022918070000,\n        "type": "theme_mod",\n        "user_id": 1,\n        "date_modified_gmt": "2018-03-26 18:36:12"\n    },\n    "nav_menus_created_posts": {\n        "value": [\n            17\n        ],\n        "type": "option",\n        "user_id": 1,\n        "date_modified_gmt": "2018-03-26 18:36:12"\n    },\n    "nav_menu[-5788088022918070000]": {\n        "value": {\n            "name": "test",\n            "description": "",\n            "parent": 0,\n            "auto_add": false\n        },\n        "type": "nav_menu",\n        "user_id": 1,\n        "date_modified_gmt": "2018-03-26 18:36:12"\n    },\n    "nav_menu_item[-8564078574397272000]": {\n        "value": {\n            "object_id": 17,\n            "object": "page",\n            "menu_item_parent": 0,\n            "position": 1,\n            "type": "post_type",\n            "title": "thetest",\n            "url": "http://localhost/MADS-foodog/wordpress/?page_id=17",\n            "target": "",\n            "attr_title": "",\n            "description": "",\n            "classes": "",\n            "xfn": "",\n            "status": "publish",\n            "original_title": "thetest",\n            "nav_menu_term_id": -5788088022918070000,\n            "_invalid": false,\n            "type_label": "Page"\n        },\n        "type": "nav_menu_item",\n        "user_id": 1,\n        "date_modified_gmt": "2018-03-26 18:36:12"\n    },\n    "nav_menu_item[-7442711032687694000]": {\n        "value": false,\n        "type": "nav_menu_item",\n        "user_id": 1,\n        "date_modified_gmt": "2018-03-26 18:36:12"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'f6145567-ba64-4780-a614-b18eabeed289', '', '', '2018-03-26 18:37:36', '2018-03-26 18:37:36', '', 0, 'http://localhost/MADS-foodog/wordpress/?p=18', 0, 'customize_changeset', '', 0),
(19, 1, '2018-03-26 18:37:36', '2018-03-26 18:37:36', '', 'thetest', '', 'inherit', 'closed', 'closed', '', '17-revision-v1', '', '', '2018-03-26 18:37:36', '2018-03-26 18:37:36', '', 17, 'http://localhost/MADS-foodog/wordpress/index.php/2018/03/26/17-revision-v1/', 0, 'revision', '', 0),
(21, 1, '2018-03-27 08:06:30', '2018-03-27 08:06:30', 'overtest', 'test', '', 'publish', 'open', 'open', '', 'test', '', '', '2018-03-28 07:49:21', '2018-03-28 07:49:21', '', 0, 'http://localhost/MADS-foodog/wordpress/?p=21', 0, 'post', '', 0),
(22, 1, '2018-03-27 08:06:30', '2018-03-27 08:06:30', 'overtest', 'test', '', 'inherit', 'closed', 'closed', '', '21-revision-v1', '', '', '2018-03-27 08:06:30', '2018-03-27 08:06:30', '', 21, 'http://localhost/MADS-foodog/wordpress/index.php/2018/03/27/21-revision-v1/', 0, 'revision', '', 0),
(23, 1, '2018-03-28 07:25:53', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2018-03-28 07:25:53', '0000-00-00 00:00:00', '', 0, 'http://localhost/MADS-foodog/wordpress/?p=23', 0, 'post', '', 0),
(24, 1, '2018-03-28 07:53:29', '2018-03-28 07:53:29', ' ', '', '', 'publish', 'closed', 'closed', '', '24', '', '', '2018-03-28 07:53:38', '2018-03-28 07:53:38', '', 0, 'http://localhost/MADS-foodog/wordpress/?p=24', 1, 'nav_menu_item', '', 0),
(25, 1, '2018-03-28 07:53:30', '2018-03-28 07:53:30', ' ', '', '', 'publish', 'closed', 'closed', '', '25', '', '', '2018-03-28 07:53:38', '2018-03-28 07:53:38', '', 0, 'http://localhost/MADS-foodog/wordpress/?p=25', 2, 'nav_menu_item', '', 0),
(26, 1, '2018-03-28 07:53:30', '2018-03-28 07:53:30', ' ', '', '', 'publish', 'closed', 'closed', '', '26', '', '', '2018-03-28 07:53:38', '2018-03-28 07:53:38', '', 0, 'http://localhost/MADS-foodog/wordpress/?p=26', 3, 'nav_menu_item', '', 0),
(27, 1, '2018-03-28 07:53:30', '2018-03-28 07:53:30', ' ', '', '', 'publish', 'closed', 'closed', '', '27', '', '', '2018-03-28 07:53:38', '2018-03-28 07:53:38', '', 0, 'http://localhost/MADS-foodog/wordpress/?p=27', 4, 'nav_menu_item', '', 0),
(28, 1, '2018-03-28 08:11:20', '2018-03-28 08:11:20', 'lalilolalilo\r\n\r\nlorem ipsum', 'feature test', '', 'publish', 'open', 'open', '', 'feature-test', '', '', '2018-03-28 08:12:46', '2018-03-28 08:12:46', '', 0, 'http://localhost/MADS-foodog/wordpress/?p=28', 0, 'post', '', 0),
(29, 1, '2018-03-28 08:11:20', '2018-03-28 08:11:20', 'lalilolalilo\r\n\r\nlorem ipsum', 'feature test', '', 'inherit', 'closed', 'closed', '', '28-revision-v1', '', '', '2018-03-28 08:11:20', '2018-03-28 08:11:20', '', 28, 'http://localhost/MADS-foodog/wordpress/index.php/2018/03/28/28-revision-v1/', 0, 'revision', '', 0),
(30, 1, '2018-03-28 08:58:50', '2018-03-28 08:58:50', 'My dogs have two moods: manic and sleepy. We live in a ranch with a long hallway that stretches from', 'Why is my dog so lethargic?', '', 'publish', 'open', 'open', '', 'why-is-my-dog-so-lethargic', '', '', '2018-03-29 09:26:49', '2018-03-29 09:26:49', '', 0, 'http://localhost/MADS-foodog/wordpress/?p=30', 0, 'post', '', 0),
(31, 1, '2018-03-28 08:58:50', '2018-03-28 08:58:50', 'My dogs have two moods: manic and sleepy. We live in a ranch with a long hallway that stretches from', 'Why is my dog so lethargic?', '', 'inherit', 'closed', 'closed', '', '30-revision-v1', '', '', '2018-03-28 08:58:50', '2018-03-28 08:58:50', '', 30, 'http://localhost/MADS-foodog/wordpress/index.php/2018/03/28/30-revision-v1/', 0, 'revision', '', 0),
(32, 1, '2018-03-28 10:07:39', '2018-03-28 10:07:39', '', 'Wellness', '', 'trash', 'closed', 'closed', '', 'category-wellness__trashed', '', '', '2018-03-29 07:15:09', '2018-03-29 07:15:09', '', 0, 'http://localhost/MADS-foodog/wordpress/?page_id=32', 0, 'page', '', 0),
(33, 1, '2018-03-28 10:07:39', '2018-03-28 10:07:39', '', 'Wellness', '', 'inherit', 'closed', 'closed', '', '32-revision-v1', '', '', '2018-03-28 10:07:39', '2018-03-28 10:07:39', '', 32, 'http://localhost/MADS-foodog/wordpress/index.php/2018/03/28/32-revision-v1/', 0, 'revision', '', 0),
(34, 1, '2018-03-28 10:13:17', '2018-03-28 10:13:17', 'Halloween can be a stressful holiday for pet owners, with the doorbell sending most dogs into a tailspin as trick', 'Keep your dog safe from these tricks in halloween treats', '', 'publish', 'open', 'open', '', 'keep-your-dog-safe-from-these-tricks-in-halloween-treats', '', '', '2018-03-29 09:33:19', '2018-03-29 09:33:19', '', 0, 'http://localhost/MADS-foodog/wordpress/?p=34', 0, 'post', '', 0),
(35, 1, '2018-03-28 10:13:17', '2018-03-28 10:13:17', 'Halloween can be a stressful holiday for pet owners, with the doorbell sending most dogs into a tailspin as trick', 'Keep your dog safe from these tricks in halloween treats', '', 'inherit', 'closed', 'closed', '', '34-revision-v1', '', '', '2018-03-28 10:13:17', '2018-03-28 10:13:17', '', 34, 'http://localhost/MADS-foodog/wordpress/index.php/2018/03/28/34-revision-v1/', 0, 'revision', '', 0),
(36, 1, '2018-03-28 10:14:34', '2018-03-28 10:14:34', 'Your dog\'s digestive system is tough - it can handle everything from raw meat to animal bones and the occasional', 'What you should know about your dog\'s constipation', '', 'publish', 'open', 'open', '', 'what-you-should-know-about-your-dogs-constipation', '', '', '2018-03-29 09:44:10', '2018-03-29 09:44:10', '', 0, 'http://localhost/MADS-foodog/wordpress/?p=36', 0, 'post', '', 0),
(37, 1, '2018-03-28 10:14:34', '2018-03-28 10:14:34', 'Your dog\'s digestive system is tough - it can handle everything from raw meat to animal bones and the occasional', 'What you should know about your dog\'s constipation', '', 'inherit', 'closed', 'closed', '', '36-revision-v1', '', '', '2018-03-28 10:14:34', '2018-03-28 10:14:34', '', 36, 'http://localhost/MADS-foodog/wordpress/index.php/2018/03/28/36-revision-v1/', 0, 'revision', '', 0),
(38, 1, '2018-03-28 10:18:57', '2018-03-28 10:18:57', 'We all want our dogs to look, feel, and smell their best, but it takes effort to keep that coat', 'How to keep your dog\'s skin and coat healthy', '', 'publish', 'open', 'open', '', 'how-to-keep-your-dogs-skin-and-coat-healthy', '', '', '2018-03-29 09:43:21', '2018-03-29 09:43:21', '', 0, 'http://localhost/MADS-foodog/wordpress/?p=38', 0, 'post', '', 0),
(39, 1, '2018-03-28 10:18:57', '2018-03-28 10:18:57', 'We all want our dogs to look, feel, and smell their best, but it takes effort to keep that coat', 'How to keep your dog\'s skin and coat healthy', '', 'inherit', 'closed', 'closed', '', '38-revision-v1', '', '', '2018-03-28 10:18:57', '2018-03-28 10:18:57', '', 38, 'http://localhost/MADS-foodog/wordpress/index.php/2018/03/28/38-revision-v1/', 0, 'revision', '', 0),
(40, 1, '2018-03-28 10:19:42', '2018-03-28 10:19:42', 'My dogs have two moods: manic and sleepy. We live in a ranch with a long hallway that stretches from', 'Why is my dog so lethargic?', '', 'publish', 'open', 'open', '', 'why-is-my-dog-so-lethargic-2', '', '', '2018-03-29 09:42:06', '2018-03-29 09:42:06', '', 0, 'http://localhost/MADS-foodog/wordpress/?p=40', 0, 'post', '', 0),
(41, 1, '2018-03-28 10:19:42', '2018-03-28 10:19:42', 'My dogs have two moods: manic and sleepy. We live in a ranch with a long hallway that stretches from', 'Why is my dog so lethargic?', '', 'inherit', 'closed', 'closed', '', '40-revision-v1', '', '', '2018-03-28 10:19:42', '2018-03-28 10:19:42', '', 40, 'http://localhost/MADS-foodog/wordpress/index.php/2018/03/28/40-revision-v1/', 0, 'revision', '', 0),
(42, 1, '2018-03-28 12:21:27', '2018-03-28 12:21:27', '<h2><a title="Keep your dog safe from these tricks in halloween treats" href="http://localhost/MADS-foodog/wordpress/index.php/2018/03/28/keep-your-dog-safe-from-these-tricks-in-halloween-treats/">Keep your dog safe from these tricks in halloween treats </a></h2>', 'Keep your dog safe from these tricks in halloween treats', '', 'trash', 'open', 'open', '', '__trashed', '', '', '2018-03-28 12:21:27', '2018-03-28 12:21:27', '', 0, 'http://localhost/MADS-foodog/wordpress/?p=42', 0, 'post', '', 0),
(43, 1, '2018-03-28 10:21:08', '2018-03-28 10:21:08', 'Halloween can be a stressful holiday for pet owners, with the doorbell sending most dogs into a tailspin as trick', 'Keep your dog safe from these tricks in halloween treats', '', 'publish', 'open', 'open', '', 'keep-your-dog-safe-from-these-tricks-in-halloween-treats-2', '', '', '2018-03-29 09:32:43', '2018-03-29 09:32:43', '', 0, 'http://localhost/MADS-foodog/wordpress/?p=43', 0, 'post', '', 0),
(44, 1, '2018-03-28 10:21:08', '2018-03-28 10:21:08', 'Halloween can be a stressful holiday for pet owners, with the doorbell sending most dogs into a tailspin as trick', 'Keep your dog safe from these tricks in halloween treats', '', 'inherit', 'closed', 'closed', '', '43-revision-v1', '', '', '2018-03-28 10:21:08', '2018-03-28 10:21:08', '', 43, 'http://localhost/MADS-foodog/wordpress/index.php/2018/03/28/43-revision-v1/', 0, 'revision', '', 0),
(45, 1, '2018-03-28 10:21:51', '2018-03-28 10:21:51', 'We all want our dogs to look, feel, and smell their best, but it takes effort to keep that coat', 'How to keep your dog’s skin and coat healthy', '', 'publish', 'open', 'open', '', 'how-to-keep-your-dogs-skin-and-coat-healthy-2', '', '', '2018-03-29 10:21:20', '2018-03-29 10:21:20', '', 0, 'http://localhost/MADS-foodog/wordpress/?p=45', 0, 'post', '', 0),
(46, 1, '2018-03-28 10:21:51', '2018-03-28 10:21:51', 'We all want our dogs to look, feel, and smell their best, but it takes effort to keep that coat', 'How to keep your dog’s skin and coat healthy', '', 'inherit', 'closed', 'closed', '', '45-revision-v1', '', '', '2018-03-28 10:21:51', '2018-03-28 10:21:51', '', 45, 'http://localhost/MADS-foodog/wordpress/index.php/2018/03/28/45-revision-v1/', 0, 'revision', '', 0),
(47, 1, '2018-03-28 12:21:27', '2018-03-28 12:21:27', '<h2><a title="Keep your dog safe from these tricks in halloween treats" href="http://localhost/MADS-foodog/wordpress/index.php/2018/03/28/keep-your-dog-safe-from-these-tricks-in-halloween-treats/">Keep your dog safe from these tricks in halloween treats </a></h2>', 'Keep your dog safe from these tricks in halloween treats', '', 'inherit', 'closed', 'closed', '', '42-revision-v1', '', '', '2018-03-28 12:21:27', '2018-03-28 12:21:27', '', 42, 'http://localhost/MADS-foodog/wordpress/index.php/2018/03/28/42-revision-v1/', 0, 'revision', '', 0),
(48, 1, '2018-03-28 12:55:10', '2018-03-28 12:55:10', 'Whether you prefer your turkey deep fried or roasted and your potatoes mashed or sweet, Thanksgiving has one universal truth:', 'What family really means to your dog', '', 'publish', 'open', 'open', '', 'what-family-really-means-to-your-dog', '', '', '2018-03-29 10:20:45', '2018-03-29 10:20:45', '', 0, 'http://localhost/MADS-foodog/wordpress/?p=48', 0, 'post', '', 0),
(49, 1, '2018-03-28 12:55:10', '2018-03-28 12:55:10', 'Whether you prefer your turkey deep fried or roasted and your potatoes mashed or sweet, Thanksgiving has one universal truth:', 'What family really means to your dog', '', 'inherit', 'closed', 'closed', '', '48-revision-v1', '', '', '2018-03-28 12:55:10', '2018-03-28 12:55:10', '', 48, 'http://localhost/MADS-foodog/wordpress/index.php/2018/03/28/48-revision-v1/', 0, 'revision', '', 0),
(50, 1, '2018-03-28 12:56:19', '2018-03-28 12:56:19', 'Once upon a time, having dogs in the office seemed like something out of a tech startup fairy tales:', 'Working like a dog: Benefits of dogs in the office', '', 'publish', 'open', 'open', '', 'working-like-a-dog-benefits-of-dogs-in-the-office', '', '', '2018-03-29 10:20:15', '2018-03-29 10:20:15', '', 0, 'http://localhost/MADS-foodog/wordpress/?p=50', 0, 'post', '', 0),
(51, 1, '2018-03-28 12:55:26', '2018-03-28 12:55:26', '', 'Working like a dog: Benefitsd of dogs in', '', 'inherit', 'closed', 'closed', '', '50-revision-v1', '', '', '2018-03-28 12:55:26', '2018-03-28 12:55:26', '', 50, 'http://localhost/MADS-foodog/wordpress/index.php/2018/03/28/50-revision-v1/', 0, 'revision', '', 0),
(52, 1, '2018-03-28 12:56:19', '2018-03-28 12:56:19', 'Once upon a time, having dogs in the office seemed like something out of a tech startup fairy tales:', 'Working like a dog: Benefits of dogs in the office', '', 'inherit', 'closed', 'closed', '', '50-revision-v1', '', '', '2018-03-28 12:56:19', '2018-03-28 12:56:19', '', 50, 'http://localhost/MADS-foodog/wordpress/index.php/2018/03/28/50-revision-v1/', 0, 'revision', '', 0),
(53, 1, '2018-03-28 12:57:47', '2018-03-28 12:57:47', 'Dogs never cease to amaze us, whether they\'re communicating or teaching themselves new tricks. Therapy dogs got a step even further,', 'How your therapy dog can change someone\'s life', '', 'publish', 'open', 'open', '', 'how-your-therapy-dog-can-change-someones-life', '', '', '2018-03-29 10:18:38', '2018-03-29 10:18:38', '', 0, 'http://localhost/MADS-foodog/wordpress/?p=53', 0, 'post', '', 0),
(54, 1, '2018-03-28 12:57:47', '2018-03-28 12:57:47', 'Dogs never cease to amaze us, whether they\'re communicating or teaching themselves new tricks. Therapy dogs got a step even further,', 'How your therapy dog can change someone\'s life', '', 'inherit', 'closed', 'closed', '', '53-revision-v1', '', '', '2018-03-28 12:57:47', '2018-03-28 12:57:47', '', 53, 'http://localhost/MADS-foodog/wordpress/index.php/2018/03/28/53-revision-v1/', 0, 'revision', '', 0),
(55, 1, '2018-03-28 12:58:46', '2018-03-28 12:58:46', 'Growing up, our family Labrador would run away almost weeky. I still remember jumping in the car and going to', 'How to keep your dog from running away', '', 'publish', 'open', 'open', '', 'how-to-keep-your-dog-from-running-away', '', '', '2018-03-29 10:18:16', '2018-03-29 10:18:16', '', 0, 'http://localhost/MADS-foodog/wordpress/?p=55', 0, 'post', '', 0),
(56, 1, '2018-03-28 12:58:46', '2018-03-28 12:58:46', 'Growing up, our family Labrador would run away almost weeky. I still remember jumping in the car and going to', 'How to keep your dog from running away', '', 'inherit', 'closed', 'closed', '', '55-revision-v1', '', '', '2018-03-28 12:58:46', '2018-03-28 12:58:46', '', 55, 'http://localhost/MADS-foodog/wordpress/index.php/2018/03/28/55-revision-v1/', 0, 'revision', '', 0),
(57, 1, '2018-03-28 13:00:50', '2018-03-28 13:00:50', 'Whether you prefer your turkey deep fried or roasted and your potatoes mashed or sweet, Thanksgiving has one universal truth:', 'What family really means to your dog', '', 'publish', 'open', 'open', '', 'what-family-really-means-to-your-dog-2', '', '', '2018-03-29 10:17:59', '2018-03-29 10:17:59', '', 0, 'http://localhost/MADS-foodog/wordpress/?p=57', 0, 'post', '', 0),
(58, 1, '2018-03-28 13:00:50', '2018-03-28 13:00:50', 'Whether you prefer your turkey deep fried or roasted and your potatoes mashed or sweet, Thanksgiving has one universal truth:', 'What family really means to your dog', '', 'inherit', 'closed', 'closed', '', '57-revision-v1', '', '', '2018-03-28 13:00:50', '2018-03-28 13:00:50', '', 57, 'http://localhost/MADS-foodog/wordpress/index.php/2018/03/28/57-revision-v1/', 0, 'revision', '', 0),
(59, 1, '2018-03-28 13:01:10', '2018-03-28 13:01:10', 'Once upon a time, having dogs in the office seemed like something out of a tech startup fairy tales:', 'Working like a dog: Benefits of dogs in the office', '', 'publish', 'open', 'open', '', 'working-like-a-dog-benefits-of-dogs-in-the-office-2', '', '', '2018-03-29 10:17:42', '2018-03-29 10:17:42', '', 0, 'http://localhost/MADS-foodog/wordpress/?p=59', 0, 'post', '', 0),
(60, 1, '2018-03-28 13:01:10', '2018-03-28 13:01:10', 'Once upon a time, having dogs in the office seemed like something out of a tech startup fairy tales:', 'Working like a dog: Benefits of dogs in the office', '', 'inherit', 'closed', 'closed', '', '59-revision-v1', '', '', '2018-03-28 13:01:10', '2018-03-28 13:01:10', '', 59, 'http://localhost/MADS-foodog/wordpress/index.php/2018/03/28/59-revision-v1/', 0, 'revision', '', 0),
(61, 1, '2018-03-28 13:01:31', '2018-03-28 13:01:31', 'Dogs never cease to amaze us, whether they’re communicating or teaching themselves new tricks. Therapy dogs got a step even further,', 'How your therapy dog can change someone’s life', '', 'publish', 'open', 'open', '', 'how-your-therapy-dog-can-change-someones-life-2', '', '', '2018-03-29 10:17:18', '2018-03-29 10:17:18', '', 0, 'http://localhost/MADS-foodog/wordpress/?p=61', 0, 'post', '', 0),
(62, 1, '2018-03-28 13:01:31', '2018-03-28 13:01:31', 'Dogs never cease to amaze us, whether they’re communicating or teaching themselves new tricks. Therapy dogs got a step even further,', 'How your therapy dog can change someone’s life', '', 'inherit', 'closed', 'closed', '', '61-revision-v1', '', '', '2018-03-28 13:01:31', '2018-03-28 13:01:31', '', 61, 'http://localhost/MADS-foodog/wordpress/index.php/2018/03/28/61-revision-v1/', 0, 'revision', '', 0),
(63, 1, '2018-03-28 13:01:52', '2018-03-28 13:01:52', 'Growing up, our family Labrador would run away almost weeky. I still remember jumping in the car and going to', 'How to keep your dog from running away', '', 'publish', 'open', 'open', '', 'how-to-keep-your-dog-from-running-away-2', '', '', '2018-03-29 10:16:59', '2018-03-29 10:16:59', '', 0, 'http://localhost/MADS-foodog/wordpress/?p=63', 0, 'post', '', 0),
(64, 1, '2018-03-28 13:01:52', '2018-03-28 13:01:52', 'Growing up, our family Labrador would run away almost weeky. I still remember jumping in the car and going to', 'How to keep your dog from running away', '', 'inherit', 'closed', 'closed', '', '63-revision-v1', '', '', '2018-03-28 13:01:52', '2018-03-28 13:01:52', '', 63, 'http://localhost/MADS-foodog/wordpress/index.php/2018/03/28/63-revision-v1/', 0, 'revision', '', 0),
(65, 1, '2018-03-28 14:01:54', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2018-03-28 14:01:54', '0000-00-00 00:00:00', '', 0, 'http://localhost/MADS-foodog/wordpress/?p=65', 0, 'post', '', 0),
(66, 1, '2018-03-29 07:16:18', '2018-03-29 07:16:18', 'Whether you prefer your turkey deep fried or roasted and your potatoes mashed or sweet, Thanksgiving has one universal truth:', 'What family really means to your dog', '', 'publish', 'open', 'open', '', 'what-family-really-means-to-your-dog-3', '', '', '2018-03-29 10:16:33', '2018-03-29 10:16:33', '', 0, 'http://localhost/MADS-foodog/wordpress/?p=66', 0, 'post', '', 0),
(67, 1, '2018-03-29 07:16:18', '2018-03-29 07:16:18', 'Whether you prefer your turkey deep fried or roasted and your potatoes mashed or sweet, Thanksgiving has one universal truth:', 'What family really means to your dog', '', 'inherit', 'closed', 'closed', '', '66-revision-v1', '', '', '2018-03-29 07:16:18', '2018-03-29 07:16:18', '', 66, 'http://localhost/MADS-foodog/wordpress/index.php/2018/03/29/66-revision-v1/', 0, 'revision', '', 0),
(68, 1, '2018-03-29 07:16:55', '2018-03-29 07:16:55', 'Once upon a time, having dogs in the office seemed like something out of a tech startup fairy tales:', 'Working like a dog: Benefits of dogs in the office', '', 'publish', 'open', 'open', '', 'working-like-a-dog-benefits-of-dogs-in-the-office-3', '', '', '2018-03-29 10:16:11', '2018-03-29 10:16:11', '', 0, 'http://localhost/MADS-foodog/wordpress/?p=68', 0, 'post', '', 0);
INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(69, 1, '2018-03-29 07:16:55', '2018-03-29 07:16:55', 'Once upon a time, having dogs in the office seemed like something out of a tech startup fairy tales:', 'Working like a dog: Benefits of dogs in the office', '', 'inherit', 'closed', 'closed', '', '68-revision-v1', '', '', '2018-03-29 07:16:55', '2018-03-29 07:16:55', '', 68, 'http://localhost/MADS-foodog/wordpress/index.php/2018/03/29/68-revision-v1/', 0, 'revision', '', 0),
(70, 1, '2018-03-29 07:17:26', '2018-03-29 07:17:26', 'Dogs never cease to amaze us, whether they’re communicating or teaching themselves new tricks. Therapy dogs got a step even further,', 'How your therapy dog can change someone’s life', '', 'publish', 'open', 'open', '', 'how-your-therapy-dog-can-change-someones-life-3', '', '', '2018-03-29 10:15:45', '2018-03-29 10:15:45', '', 0, 'http://localhost/MADS-foodog/wordpress/?p=70', 0, 'post', '', 0),
(71, 1, '2018-03-29 07:17:26', '2018-03-29 07:17:26', 'Dogs never cease to amaze us, whether they’re communicating or teaching themselves new tricks. Therapy dogs got a step even further,', 'How your therapy dog can change someone’s life', '', 'inherit', 'closed', 'closed', '', '70-revision-v1', '', '', '2018-03-29 07:17:26', '2018-03-29 07:17:26', '', 70, 'http://localhost/MADS-foodog/wordpress/index.php/2018/03/29/70-revision-v1/', 0, 'revision', '', 0),
(72, 1, '2018-03-29 07:18:08', '2018-03-29 07:18:08', 'Growing up, our family Labrador would run away almost weeky. I still remember jumping in the car and going to', 'How to keep your dog from running away', '', 'publish', 'open', 'open', '', 'how-to-keep-your-dog-from-running-away-3', '', '', '2018-03-29 10:15:28', '2018-03-29 10:15:28', '', 0, 'http://localhost/MADS-foodog/wordpress/?p=72', 0, 'post', '', 0),
(73, 1, '2018-03-29 07:18:08', '2018-03-29 07:18:08', 'Growing up, our family Labrador would run away almost weeky. I still remember jumping in the car and going to', 'How to keep your dog from running away', '', 'inherit', 'closed', 'closed', '', '72-revision-v1', '', '', '2018-03-29 07:18:08', '2018-03-29 07:18:08', '', 72, 'http://localhost/MADS-foodog/wordpress/index.php/2018/03/29/72-revision-v1/', 0, 'revision', '', 0),
(74, 1, '2018-03-29 07:19:00', '2018-03-29 07:19:00', 'Whether you prefer your turkey deep fried or roasted and your potatoes mashed or sweet, Thanksgiving has one universal truth:', 'What family really means to your dog', '', 'publish', 'open', 'open', '', 'what-family-really-means-to-your-dog-4', '', '', '2018-03-29 10:15:11', '2018-03-29 10:15:11', '', 0, 'http://localhost/MADS-foodog/wordpress/?p=74', 0, 'post', '', 0),
(75, 1, '2018-03-29 07:19:00', '2018-03-29 07:19:00', 'Whether you prefer your turkey deep fried or roasted and your potatoes mashed or sweet, Thanksgiving has one universal truth:', 'What family really means to your dog', '', 'inherit', 'closed', 'closed', '', '74-revision-v1', '', '', '2018-03-29 07:19:00', '2018-03-29 07:19:00', '', 74, 'http://localhost/MADS-foodog/wordpress/index.php/2018/03/29/74-revision-v1/', 0, 'revision', '', 0),
(76, 1, '2018-03-29 07:19:22', '2018-03-29 07:19:22', 'Once upon a time, having dogs in the office seemed like something out of a tech startup fairy tales:', 'Working like a dog: Benefits of dogs in the office', '', 'publish', 'open', 'open', '', 'working-like-a-dog-benefits-of-dogs-in-the-office-4', '', '', '2018-03-29 10:14:49', '2018-03-29 10:14:49', '', 0, 'http://localhost/MADS-foodog/wordpress/?p=76', 0, 'post', '', 0),
(77, 1, '2018-03-29 07:19:22', '2018-03-29 07:19:22', 'Once upon a time, having dogs in the office seemed like something out of a tech startup fairy tales:', 'Working like a dog: Benefits of dogs in the office', '', 'inherit', 'closed', 'closed', '', '76-revision-v1', '', '', '2018-03-29 07:19:22', '2018-03-29 07:19:22', '', 76, 'http://localhost/MADS-foodog/wordpress/index.php/2018/03/29/76-revision-v1/', 0, 'revision', '', 0),
(78, 1, '2018-03-29 07:19:52', '2018-03-29 07:19:52', 'Dogs never cease to amaze us, whether they’re communicating or teaching themselves new tricks. Therapy dogs got a step even further,', 'How your therapy dog can change someone’s life', '', 'publish', 'open', 'open', '', 'how-your-therapy-dog-can-change-someones-life-4', '', '', '2018-03-29 10:14:02', '2018-03-29 10:14:02', '', 0, 'http://localhost/MADS-foodog/wordpress/?p=78', 0, 'post', '', 0),
(79, 1, '2018-03-29 07:19:52', '2018-03-29 07:19:52', 'Dogs never cease to amaze us, whether they’re communicating or teaching themselves new tricks. Therapy dogs got a step even further,', 'How your therapy dog can change someone’s life', '', 'inherit', 'closed', 'closed', '', '78-revision-v1', '', '', '2018-03-29 07:19:52', '2018-03-29 07:19:52', '', 78, 'http://localhost/MADS-foodog/wordpress/index.php/2018/03/29/78-revision-v1/', 0, 'revision', '', 0),
(80, 1, '2018-03-29 07:21:09', '2018-03-29 07:21:09', 'My dogs have two moods: manic and sleepy. We live in a ranch with a long hallway that stretches from', 'Why is my dog so lethargic?', '', 'publish', 'open', 'open', '', 'why-is-my-dog-so-lethargic-3', '', '', '2018-03-29 09:26:05', '2018-03-29 09:26:05', '', 0, 'http://localhost/MADS-foodog/wordpress/?p=80', 0, 'post', '', 0),
(81, 1, '2018-03-29 07:21:09', '2018-03-29 07:21:09', 'My dogs have two moods: manic and sleepy. We live in a ranch with a long hallway that stretches from', 'Why is my dog so lethargic?', '', 'inherit', 'closed', 'closed', '', '80-revision-v1', '', '', '2018-03-29 07:21:09', '2018-03-29 07:21:09', '', 80, 'http://localhost/MADS-foodog/wordpress/index.php/2018/03/29/80-revision-v1/', 0, 'revision', '', 0),
(82, 1, '2018-03-29 07:21:29', '2018-03-29 07:21:29', 'Halloween can be a stressful holiday for pet owners, with the doorbell sending most dogs into a tailspin as trick', 'Keep your dog safe from these tricks in halloween treats', '', 'publish', 'open', 'open', '', 'keep-your-dog-safe-from-these-tricks-in-halloween-treats-3', '', '', '2018-03-29 09:32:11', '2018-03-29 09:32:11', '', 0, 'http://localhost/MADS-foodog/wordpress/?p=82', 0, 'post', '', 0),
(83, 1, '2018-03-29 07:21:29', '2018-03-29 07:21:29', 'Halloween can be a stressful holiday for pet owners, with the doorbell sending most dogs into a tailspin as trick', 'Keep your dog safe from these tricks in halloween treats', '', 'inherit', 'closed', 'closed', '', '82-revision-v1', '', '', '2018-03-29 07:21:29', '2018-03-29 07:21:29', '', 82, 'http://localhost/MADS-foodog/wordpress/index.php/2018/03/29/82-revision-v1/', 0, 'revision', '', 0),
(84, 1, '2018-03-29 07:22:00', '2018-03-29 07:22:00', 'We all want our dogs to look, feel, and smell their best, but it takes effort to keep that coat', 'How to keep your dog’s skin and coat healthy', '', 'publish', 'open', 'open', '', 'how-to-keep-your-dogs-skin-and-coat-healthy-3', '', '', '2018-03-29 09:40:45', '2018-03-29 09:40:45', '', 0, 'http://localhost/MADS-foodog/wordpress/?p=84', 0, 'post', '', 0),
(85, 1, '2018-03-29 07:22:00', '2018-03-29 07:22:00', 'We all want our dogs to look, feel, and smell their best, but it takes effort to keep that coat', 'How to keep your dog’s skin and coat healthy', '', 'inherit', 'closed', 'closed', '', '84-revision-v1', '', '', '2018-03-29 07:22:00', '2018-03-29 07:22:00', '', 84, 'http://localhost/MADS-foodog/wordpress/index.php/2018/03/29/84-revision-v1/', 0, 'revision', '', 0),
(86, 1, '2018-03-29 07:22:23', '2018-03-29 07:22:23', 'Your dog’s digestive system is tough – it can handle everything from raw meat to animal bones and the occasional', 'What you should know about your dog’s constipation', '', 'publish', 'open', 'open', '', 'what-you-should-know-about-your-dogs-constipation-2', '', '', '2018-03-29 09:40:15', '2018-03-29 09:40:15', '', 0, 'http://localhost/MADS-foodog/wordpress/?p=86', 0, 'post', '', 0),
(87, 1, '2018-03-29 07:22:23', '2018-03-29 07:22:23', 'Your dog’s digestive system is tough – it can handle everything from raw meat to animal bones and the occasional', 'What you should know about your dog’s constipation', '', 'inherit', 'closed', 'closed', '', '86-revision-v1', '', '', '2018-03-29 07:22:23', '2018-03-29 07:22:23', '', 86, 'http://localhost/MADS-foodog/wordpress/index.php/2018/03/29/86-revision-v1/', 0, 'revision', '', 0),
(88, 1, '2018-03-29 07:22:39', '2018-03-29 07:22:39', 'Your dog’s digestive system is tough – it can handle everything from raw meat to animal bones and the occasional', 'What you should know about your dog’s constipation', '', 'publish', 'open', 'open', '', 'what-you-should-know-about-your-dogs-constipation-3', '', '', '2018-03-29 09:39:51', '2018-03-29 09:39:51', '', 0, 'http://localhost/MADS-foodog/wordpress/?p=88', 0, 'post', '', 0),
(89, 1, '2018-03-29 07:22:39', '2018-03-29 07:22:39', 'Your dog’s digestive system is tough – it can handle everything from raw meat to animal bones and the occasional', 'What you should know about your dog’s constipation', '', 'inherit', 'closed', 'closed', '', '88-revision-v1', '', '', '2018-03-29 07:22:39', '2018-03-29 07:22:39', '', 88, 'http://localhost/MADS-foodog/wordpress/index.php/2018/03/29/88-revision-v1/', 0, 'revision', '', 0),
(90, 1, '2018-03-29 07:23:17', '2018-03-29 07:23:17', '<p style="text-align: left;">My dogs have two moods: manic and sleepy. We live in a ranch with a long hallway that stretches from</p>', 'Why is my dog so lethargic?', '', 'publish', 'open', 'open', '', 'why-is-my-dog-so-lethargic-4', '', '', '2018-03-29 09:25:36', '2018-03-29 09:25:36', '', 0, 'http://localhost/MADS-foodog/wordpress/?p=90', 0, 'post', '', 0),
(91, 1, '2018-03-29 07:23:17', '2018-03-29 07:23:17', 'My dogs have two moods: manic and sleepy. We live in a ranch with a long hallway that stretches from', 'Why is my dog so lethargic?', '', 'inherit', 'closed', 'closed', '', '90-revision-v1', '', '', '2018-03-29 07:23:17', '2018-03-29 07:23:17', '', 90, 'http://localhost/MADS-foodog/wordpress/index.php/2018/03/29/90-revision-v1/', 0, 'revision', '', 0),
(92, 1, '2018-03-29 07:25:06', '2018-03-29 07:25:06', 'We all want our dogs to look, feel, and smell their best, but it takes effort to keep that coat', 'How to keep your dog’s skin and coat healthy', '', 'publish', 'open', 'open', '', 'how-to-keep-your-dogs-skin-and-coat-healthy-4', '', '', '2018-03-29 09:39:07', '2018-03-29 09:39:07', '', 0, 'http://localhost/MADS-foodog/wordpress/?p=92', 0, 'post', '', 0),
(93, 1, '2018-03-29 07:25:06', '2018-03-29 07:25:06', 'We all want our dogs to look, feel, and smell their best, but it takes effort to keep that coat', 'How to keep your dog’s skin and coat healthy', '', 'inherit', 'closed', 'closed', '', '92-revision-v1', '', '', '2018-03-29 07:25:06', '2018-03-29 07:25:06', '', 92, 'http://localhost/MADS-foodog/wordpress/index.php/2018/03/29/92-revision-v1/', 0, 'revision', '', 0),
(94, 1, '2018-03-29 07:25:41', '2018-03-29 07:25:41', 'Halloween can be a stressful holiday for pet owners, with the doorbell sending most dogs into a tailspin as trick', 'Keep your dog safe from these tricks in halloween treats', '', 'publish', 'open', 'open', '', 'keep-your-dog-safe-from-these-tricks-in-halloween-treats-4', '', '', '2018-03-29 09:31:58', '2018-03-29 09:31:58', '', 0, 'http://localhost/MADS-foodog/wordpress/?p=94', 0, 'post', '', 0),
(95, 1, '2018-03-29 07:25:41', '2018-03-29 07:25:41', 'Halloween can be a stressful holiday for pet owners, with the doorbell sending most dogs into a tailspin as trick', 'Keep your dog safe from these tricks in halloween treats', '', 'inherit', 'closed', 'closed', '', '94-revision-v1', '', '', '2018-03-29 07:25:41', '2018-03-29 07:25:41', '', 94, 'http://localhost/MADS-foodog/wordpress/index.php/2018/03/29/94-revision-v1/', 0, 'revision', '', 0),
(99, 1, '2018-03-29 07:44:34', '2018-03-29 07:44:34', '<img class="alignnone size-full wp-image-98" src="http://localhost/MADS-foodog/wordpress/wp-content/uploads/2018/03/lethargic-dog.jpg" alt="" width="230" height="160" />\r\n\r\nMy dogs have two moods: manic and sleepy. We live in a ranch with a long hallway that stretches from', 'Why is my dog so lethargic?', '', 'inherit', 'closed', 'closed', '', '90-revision-v1', '', '', '2018-03-29 07:44:34', '2018-03-29 07:44:34', '', 90, 'http://localhost/MADS-foodog/wordpress/index.php/2018/03/29/90-revision-v1/', 0, 'revision', '', 0),
(100, 1, '2018-03-29 07:49:26', '2018-03-29 07:49:26', '<img class="size-full wp-image-98 alignleft" src="http://localhost/MADS-foodog/wordpress/wp-content/uploads/2018/03/lethargic-dog.jpg" alt="" width="230" height="160" />\r\n\r\nMy dogs have two moods: manic and sleepy. We live in a ranch with a long hallway that stretches from', 'Why is my dog so lethargic?', '', 'inherit', 'closed', 'closed', '', '90-revision-v1', '', '', '2018-03-29 07:49:26', '2018-03-29 07:49:26', '', 90, 'http://localhost/MADS-foodog/wordpress/index.php/2018/03/29/90-revision-v1/', 0, 'revision', '', 0),
(101, 1, '2018-03-29 07:53:42', '2018-03-29 07:53:42', 'My dogs have two moods: manic and sleepy. We live in a ranch with a long hallway that stretches from', 'Why is my dog so lethargic?', '', 'inherit', 'closed', 'closed', '', '90-revision-v1', '', '', '2018-03-29 07:53:42', '2018-03-29 07:53:42', '', 90, 'http://localhost/MADS-foodog/wordpress/index.php/2018/03/29/90-revision-v1/', 0, 'revision', '', 0),
(102, 1, '2018-03-29 08:12:32', '2018-03-29 08:12:32', '<img class="alignnone size-full wp-image-98" src="http://localhost/MADS-foodog/wordpress/wp-content/uploads/2018/03/lethargic-dog.jpg" alt="" width="230" height="160" />\r\nMy dogs have two moods: manic and sleepy. We live in a ranch with a long hallway that stretches from', 'Why is my dog so lethargic?', '', 'inherit', 'closed', 'closed', '', '90-revision-v1', '', '', '2018-03-29 08:12:32', '2018-03-29 08:12:32', '', 90, 'http://localhost/MADS-foodog/wordpress/index.php/2018/03/29/90-revision-v1/', 0, 'revision', '', 0),
(103, 1, '2018-03-29 08:16:32', '2018-03-29 08:16:32', '<img class="size-full wp-image-98 alignleft" src="http://localhost/MADS-foodog/wordpress/wp-content/uploads/2018/03/lethargic-dog.jpg" alt="" width="230" height="160" />\r\nMy dogs have two moods: manic and sleepy. We live in a ranch with a long hallway that stretches from', 'Why is my dog so lethargic?', '', 'inherit', 'closed', 'closed', '', '90-revision-v1', '', '', '2018-03-29 08:16:32', '2018-03-29 08:16:32', '', 90, 'http://localhost/MADS-foodog/wordpress/index.php/2018/03/29/90-revision-v1/', 0, 'revision', '', 0),
(104, 1, '2018-03-29 08:17:40', '2018-03-29 08:17:40', '<p><img class="size-full wp-image-98 alignleft" src="http://localhost/MADS-foodog/wordpress/wp-content/uploads/2018/03/lethargic-dog.jpg" alt="" width="230" height="160" />\r\nMy dogs have two moods: manic and sleepy. We live in a ranch with a long hallway that stretches from</p>', 'Why is my dog so lethargic?', '', 'inherit', 'closed', 'closed', '', '90-revision-v1', '', '', '2018-03-29 08:17:40', '2018-03-29 08:17:40', '', 90, 'http://localhost/MADS-foodog/wordpress/index.php/2018/03/29/90-revision-v1/', 0, 'revision', '', 0),
(105, 1, '2018-03-29 08:18:40', '2018-03-29 08:18:40', '<img class="size-full wp-image-98 alignleft" src="http://localhost/MADS-foodog/wordpress/wp-content/uploads/2018/03/lethargic-dog.jpg" alt="" width="230" height="160" />\r\nMy dogs have two moods: manic and sleepy. We live in a ranch with a long hallway that stretches from', 'Why is my dog so lethargic?', '', 'inherit', 'closed', 'closed', '', '90-revision-v1', '', '', '2018-03-29 08:18:40', '2018-03-29 08:18:40', '', 90, 'http://localhost/MADS-foodog/wordpress/index.php/2018/03/29/90-revision-v1/', 0, 'revision', '', 0),
(106, 1, '2018-03-29 08:19:19', '2018-03-29 08:19:19', 'My dogs have two moods: manic and sleepy. We live in a ranch with a long hallway that stretches from', 'Why is my dog so lethargic?', '', 'inherit', 'closed', 'closed', '', '90-revision-v1', '', '', '2018-03-29 08:19:19', '2018-03-29 08:19:19', '', 90, 'http://localhost/MADS-foodog/wordpress/index.php/2018/03/29/90-revision-v1/', 0, 'revision', '', 0),
(107, 1, '2018-03-29 08:47:47', '2018-03-29 08:47:47', '<img class="alignnone size-full wp-image-98" src="http://localhost/MADS-foodog/wordpress/wp-content/uploads/2018/03/lethargic-dog.jpg" alt="" width="230" height="160" />My dogs have two moods: manic and sleepy. We live in a ranch with a long hallway that stretches from', 'Why is my dog so lethargic?', '', 'inherit', 'closed', 'closed', '', '80-revision-v1', '', '', '2018-03-29 08:47:47', '2018-03-29 08:47:47', '', 80, 'http://localhost/MADS-foodog/wordpress/index.php/2018/03/29/80-revision-v1/', 0, 'revision', '', 0),
(108, 1, '2018-03-29 08:48:29', '2018-03-29 08:48:29', 'My dogs have two moods: manic and sleepy. We live in a ranch with a long hallway that stretches from', 'Why is my dog so lethargic?', '', 'inherit', 'closed', 'closed', '', '80-revision-v1', '', '', '2018-03-29 08:48:29', '2018-03-29 08:48:29', '', 80, 'http://localhost/MADS-foodog/wordpress/index.php/2018/03/29/80-revision-v1/', 0, 'revision', '', 0),
(109, 1, '2018-03-29 08:51:14', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2018-03-29 08:51:14', '0000-00-00 00:00:00', '', 0, 'http://localhost/MADS-foodog/wordpress/?p=109', 0, 'post', '', 0),
(110, 1, '2018-03-29 08:53:20', '2018-03-29 08:53:20', '<p style="text-align: right;">My dogs have two moods: manic and sleepy. We live in a ranch with a long hallway that stretches from</p>', 'Why is my dog so lethargic?', '', 'inherit', 'closed', 'closed', '', '90-revision-v1', '', '', '2018-03-29 08:53:20', '2018-03-29 08:53:20', '', 90, 'http://localhost/MADS-foodog/wordpress/index.php/2018/03/29/90-revision-v1/', 0, 'revision', '', 0),
(111, 1, '2018-03-29 08:53:33', '2018-03-29 08:53:33', '<p style="text-align: left;">My dogs have two moods: manic and sleepy. We live in a ranch with a long hallway that stretches from</p>', 'Why is my dog so lethargic?', '', 'inherit', 'closed', 'closed', '', '90-revision-v1', '', '', '2018-03-29 08:53:33', '2018-03-29 08:53:33', '', 90, 'http://localhost/MADS-foodog/wordpress/index.php/2018/03/29/90-revision-v1/', 0, 'revision', '', 0),
(113, 1, '2018-03-29 08:56:54', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2018-03-29 08:56:54', '0000-00-00 00:00:00', '', 0, 'http://localhost/MADS-foodog/wordpress/?p=113', 0, 'post', '', 0),
(114, 1, '2018-03-29 08:57:22', '2018-03-29 08:57:22', 'Halloween can be a stressful holiday for pet owners, with the doorbell sending most dogs into a tailspin as trick<img class="alignleft size-full wp-image-112" src="http://localhost/MADS-foodog/wordpress/wp-content/uploads/2018/03/dog-halloween-costumes-1.jpg" alt="" width="230" height="160" />', 'Keep your dog safe from these tricks in halloween treats', '', 'inherit', 'closed', 'closed', '', '94-revision-v1', '', '', '2018-03-29 08:57:22', '2018-03-29 08:57:22', '', 94, 'http://localhost/MADS-foodog/wordpress/index.php/2018/03/29/94-revision-v1/', 0, 'revision', '', 0),
(115, 1, '2018-03-29 08:58:24', '2018-03-29 08:58:24', 'Halloween can be a stressful holiday for pet owners, with the doorbell sending most dogs into a tailspin as trick', 'Keep your dog safe from these tricks in halloween treats', '', 'inherit', 'closed', 'closed', '', '94-autosave-v1', '', '', '2018-03-29 08:58:24', '2018-03-29 08:58:24', '', 94, 'http://localhost/MADS-foodog/wordpress/index.php/2018/03/29/94-autosave-v1/', 0, 'revision', '', 0),
(116, 1, '2018-03-29 08:58:58', '2018-03-29 08:58:58', 'Halloween can be a stressful holiday for pet owners, with the doorbell sending most dogs into a tailspin as trick', 'Keep your dog safe from these tricks in halloween treats', '', 'inherit', 'closed', 'closed', '', '94-revision-v1', '', '', '2018-03-29 08:58:58', '2018-03-29 08:58:58', '', 94, 'http://localhost/MADS-foodog/wordpress/index.php/2018/03/29/94-revision-v1/', 0, 'revision', '', 0),
(119, 1, '2018-03-29 09:24:44', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2018-03-29 09:24:44', '0000-00-00 00:00:00', '', 0, 'http://localhost/MADS-foodog/wordpress/?p=119', 0, 'post', '', 0),
(120, 1, '2018-03-29 09:25:06', '2018-03-29 09:25:06', '', 'lethargic-dog(1)', '', 'inherit', 'open', 'closed', '', 'lethargic-dog1', '', '', '2018-03-29 09:25:06', '2018-03-29 09:25:06', '', 0, 'http://localhost/MADS-foodog/wordpress/wp-content/uploads/2018/03/lethargic-dog1.jpg', 0, 'attachment', 'image/jpeg', 0),
(123, 1, '2018-03-29 09:31:42', '2018-03-29 09:31:42', '', 'dog-halloween-costumes-1', '', 'inherit', 'open', 'closed', '', 'dog-halloween-costumes-1', '', '', '2018-03-29 09:31:42', '2018-03-29 09:31:42', '', 0, 'http://localhost/MADS-foodog/wordpress/wp-content/uploads/2018/03/dog-halloween-costumes-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(124, 1, '2018-03-29 09:32:46', '2018-03-29 09:32:46', 'Halloween can be a stressful holiday for pet owners, with the doorbell sending most dogs into a tailspin as trick', 'Keep your dog safe from these tricks in halloween treats', '', 'inherit', 'closed', 'closed', '', '43-autosave-v1', '', '', '2018-03-29 09:32:46', '2018-03-29 09:32:46', '', 43, 'http://localhost/MADS-foodog/wordpress/index.php/2018/03/29/43-autosave-v1/', 0, 'revision', '', 0),
(125, 1, '2018-03-29 09:38:39', '2018-03-29 09:38:39', '', 'dog-constip(1)', '', 'inherit', 'open', 'closed', '', 'dog-constip1', '', '', '2018-03-29 09:38:39', '2018-03-29 09:38:39', '', 0, 'http://localhost/MADS-foodog/wordpress/wp-content/uploads/2018/03/dog-constip1.jpg', 0, 'attachment', 'image/jpeg', 0),
(126, 1, '2018-03-29 09:38:41', '2018-03-29 09:38:41', '', 'healthy-dog(1)', '', 'inherit', 'open', 'closed', '', 'healthy-dog1', '', '', '2018-03-29 09:38:41', '2018-03-29 09:38:41', '', 0, 'http://localhost/MADS-foodog/wordpress/wp-content/uploads/2018/03/healthy-dog1.jpg', 0, 'attachment', 'image/jpeg', 0),
(127, 1, '2018-03-29 10:11:39', '2018-03-29 10:11:39', '', 'therapy-fea(1)', '', 'inherit', 'open', 'closed', '', 'therapy-fea1', '', '', '2018-03-29 10:11:39', '2018-03-29 10:11:39', '', 0, 'http://localhost/MADS-foodog/wordpress/wp-content/uploads/2018/03/therapy-fea1.jpg', 0, 'attachment', 'image/jpeg', 0),
(128, 1, '2018-03-29 10:11:48', '2018-03-29 10:11:48', '', 'working-dog', '', 'inherit', 'open', 'closed', '', 'working-dog', '', '', '2018-03-29 10:11:48', '2018-03-29 10:11:48', '', 0, 'http://localhost/MADS-foodog/wordpress/wp-content/uploads/2018/03/working-dog.jpg', 0, 'attachment', 'image/jpeg', 0),
(129, 1, '2018-03-29 10:12:05', '2018-03-29 10:12:05', '', 'family-dog(1)', '', 'inherit', 'open', 'closed', '', 'family-dog1', '', '', '2018-03-29 10:12:05', '2018-03-29 10:12:05', '', 0, 'http://localhost/MADS-foodog/wordpress/wp-content/uploads/2018/03/family-dog1.jpg', 0, 'attachment', 'image/jpeg', 0),
(130, 1, '2018-03-29 10:13:30', '2018-03-29 10:13:30', '', 'runing-away-dog(1)', '', 'inherit', 'open', 'closed', '', 'runing-away-dog1', '', '', '2018-03-29 10:13:30', '2018-03-29 10:13:30', '', 0, 'http://localhost/MADS-foodog/wordpress/wp-content/uploads/2018/03/runing-away-dog1.jpg', 0, 'attachment', 'image/jpeg', 0),
(133, 1, '2018-03-29 13:26:55', '2018-03-29 13:26:55', '', 'sidebar(1)', '', 'inherit', 'open', 'closed', '', 'sidebar1', '', '', '2018-03-29 13:26:55', '2018-03-29 13:26:55', '', 0, 'http://localhost/MADS-foodog/wordpress/wp-content/uploads/2018/03/sidebar1.jpg', 0, 'attachment', 'image/jpeg', 0);

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
(2, 'Categorie', 'categorie', 0),
(3, 'Nutrition', 'nutrition', 0),
(4, 'Wellness', 'wellness', 0),
(5, 'Lifestyle', 'lifestyle', 0),
(6, 'Community', 'community', 0),
(7, 'lorem', 'lorem', 0),
(8, 'lethargic', 'lethargic', 0),
(9, 'Halloween', 'halloween', 0),
(10, 'Healthy', 'healthy', 0),
(11, 'Constipation', 'constipation', 0),
(12, 'Therapy', 'therapy', 0),
(13, 'Working hard', 'working-hard', 0),
(14, 'Family', 'family', 0),
(15, 'Running away', 'running-away', 0);

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
(21, 6, 0),
(24, 2, 0),
(25, 2, 0),
(26, 2, 0),
(27, 2, 0),
(28, 3, 0),
(28, 7, 0),
(30, 4, 0),
(30, 8, 0),
(34, 4, 0),
(34, 9, 0),
(36, 4, 0),
(36, 11, 0),
(38, 4, 0),
(38, 10, 0),
(40, 4, 0),
(40, 8, 0),
(42, 1, 0),
(43, 4, 0),
(43, 9, 0),
(45, 4, 0),
(45, 10, 0),
(48, 5, 0),
(48, 14, 0),
(50, 5, 0),
(50, 13, 0),
(53, 5, 0),
(53, 12, 0),
(55, 5, 0),
(55, 15, 0),
(57, 5, 0),
(57, 14, 0),
(59, 5, 0),
(59, 13, 0),
(61, 5, 0),
(61, 12, 0),
(63, 5, 0),
(63, 15, 0),
(66, 5, 0),
(66, 14, 0),
(68, 5, 0),
(68, 13, 0),
(70, 5, 0),
(70, 12, 0),
(72, 5, 0),
(72, 15, 0),
(74, 5, 0),
(74, 14, 0),
(76, 5, 0),
(76, 13, 0),
(78, 5, 0),
(78, 12, 0),
(80, 4, 0),
(80, 8, 0),
(82, 4, 0),
(82, 9, 0),
(84, 4, 0),
(84, 10, 0),
(86, 4, 0),
(86, 11, 0),
(88, 4, 0),
(88, 11, 0),
(90, 4, 0),
(90, 8, 0),
(92, 4, 0),
(92, 10, 0),
(94, 4, 0),
(94, 9, 0);

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
(2, 2, 'nav_menu', '', 0, 4),
(3, 3, 'category', '', 0, 1),
(4, 4, 'category', '', 0, 15),
(5, 5, 'category', '', 0, 15),
(6, 6, 'category', '', 0, 1),
(7, 7, 'post_tag', '', 0, 1),
(8, 8, 'post_tag', '', 0, 4),
(9, 9, 'post_tag', '', 0, 4),
(10, 10, 'post_tag', '', 0, 4),
(11, 11, 'post_tag', '', 0, 3),
(12, 12, 'post_tag', '', 0, 4),
(13, 13, 'post_tag', '', 0, 4),
(14, 14, 'post_tag', '', 0, 4),
(15, 15, 'post_tag', '', 0, 3);

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
(12, 1, 'wp_capabilities', 'a:1:{s:13:"administrator";b:1;}'),
(13, 1, 'wp_user_level', '10'),
(14, 1, 'dismissed_wp_pointers', 'theme_editor_notice,text_widget_custom_html'),
(15, 1, 'show_welcome_panel', '1'),
(17, 1, 'wp_dashboard_quick_press_last_post_id', '3'),
(18, 1, 'community-events-location', 'a:1:{s:2:"ip";s:9:"127.0.0.0";}'),
(19, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:"link-target";i:1;s:11:"css-classes";i:2;s:3:"xfn";i:3;s:11:"description";i:4;s:15:"title-attribute";}'),
(20, 1, 'metaboxhidden_nav-menus', 'a:2:{i:0;s:12:"add-post_tag";i:1;s:15:"add-post_format";}'),
(21, 1, 'wp_user-settings', 'libraryContent=browse&mfold=o&editor=html&align=left'),
(22, 1, 'wp_user-settings-time', '1522329976'),
(23, 1, 'session_tokens', 'a:4:{s:64:"5ac5c71b6e774cbcc38a550391983c446b66a716a636619f445445ab85b5e185";a:4:{s:10:"expiration";i:1522316946;s:2:"ip";s:9:"127.0.0.1";s:2:"ua";s:76:"Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:59.0) Gecko/20100101 Firefox/59.0";s:5:"login";i:1522144146;}s:64:"47b64a8e93b59af1322516de66d5fe39199d9e25cc58b5a15fe12922bc4bfe73";a:4:{s:10:"expiration";i:1522330137;s:2:"ip";s:3:"::1";s:2:"ua";s:105:"Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36";s:5:"login";i:1522157337;}s:64:"74574a0dd2c01724257b40c188f6b4cbda5361245a92154d42515235d0390a1f";a:4:{s:10:"expiration";i:1522399469;s:2:"ip";s:9:"127.0.0.1";s:2:"ua";s:76:"Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:59.0) Gecko/20100101 Firefox/59.0";s:5:"login";i:1522226669;}s:64:"8c7011629125b5c8a567756e6de0a01737d5adf8a29640c1cf4ea398f4ace9d1";a:4:{s:10:"expiration";i:1522480487;s:2:"ip";s:9:"127.0.0.1";s:2:"ua";s:76:"Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:59.0) Gecko/20100101 Firefox/59.0";s:5:"login";i:1522307687;}}'),
(24, 1, 'meta-box-order_post', 'a:3:{s:4:"side";s:38:"submitdiv,categorydiv,tagsdiv-post_tag";s:6:"normal";s:71:"postexcerpt,trackbacksdiv,postcustom,commentstatusdiv,slugdiv,authordiv";s:8:"advanced";s:0:"";}'),
(25, 1, 'screen_layout_post', '2'),
(26, 1, 'nav_menu_recently_edited', '2'),
(27, 1, 'closedpostboxes_post', 'a:0:{}'),
(28, 1, 'metaboxhidden_post', 'a:7:{i:0;s:11:"postexcerpt";i:1;s:13:"trackbacksdiv";i:2;s:10:"postcustom";i:3;s:16:"commentstatusdiv";i:4;s:7:"slugdiv";i:5;s:9:"authordiv";i:6;s:11:"commentsdiv";}');

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
(1, 'admin', '$P$BxVzvu8YAvTvRQZxSLNRL4fbZ88jfY0', 'admin', 'admin@admin.com', '', '2018-03-26 10:32:08', '', 0, 'admin');

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
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=367;
--
-- AUTO_INCREMENT for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=375;
--
-- AUTO_INCREMENT for table `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=134;
--
-- AUTO_INCREMENT for table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_terms`
--
ALTER TABLE `wp_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;
--
-- AUTO_INCREMENT for table `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
