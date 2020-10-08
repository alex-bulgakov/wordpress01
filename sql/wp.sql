-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Окт 08 2020 г., 15:36
-- Версия сервера: 10.3.22-MariaDB
-- Версия PHP: 7.1.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `wp`
--

-- --------------------------------------------------------

--
-- Структура таблицы `wp_commentmeta`
--

CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_comments`
--

CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `comment_author` tinytext COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT 0,
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'comment',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'A WordPress Commenter', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2020-09-18 06:56:54', '2020-09-18 06:56:54', 'Hi, this is a comment.\nTo get started with moderating, editing, and deleting comments, please visit the Comments screen in the dashboard.\nCommenter avatars come from <a href=\"https://gravatar.com\">Gravatar</a>.', 0, '1', '', 'comment', 0, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `wp_links`
--

CREATE TABLE `wp_links` (
  `link_id` bigint(20) UNSIGNED NOT NULL,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT 1,
  `link_rating` int(11) NOT NULL DEFAULT 0,
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_options`
--

CREATE TABLE `wp_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://wordpress', 'yes'),
(2, 'home', 'http://wordpress', 'yes'),
(3, 'blogname', 'Test Wordpress', 'yes'),
(4, 'blogdescription', 'Just another WordPress site', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'master8423@gmail.com', 'yes'),
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
(22, 'posts_per_page', '2', 'yes'),
(23, 'date_format', 'F j, Y', 'yes'),
(24, 'time_format', 'g:i a', 'yes'),
(25, 'links_updated_date_format', 'F j, Y g:i a', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%year%/%monthnum%/%day%/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:114:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:17:\"^wp-sitemap\\.xml$\";s:23:\"index.php?sitemap=index\";s:17:\"^wp-sitemap\\.xsl$\";s:36:\"index.php?sitemap-stylesheet=sitemap\";s:23:\"^wp-sitemap-index\\.xsl$\";s:34:\"index.php?sitemap-stylesheet=index\";s:48:\"^wp-sitemap-([a-z]+?)-([a-z\\d_-]+?)-(\\d+?)\\.xml$\";s:75:\"index.php?sitemap=$matches[1]&sitemap-subtype=$matches[2]&paged=$matches[3]\";s:34:\"^wp-sitemap-([a-z]+?)-(\\d+?)\\.xml$\";s:47:\"index.php?sitemap=$matches[1]&paged=$matches[2]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:32:\"book/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:42:\"book/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:62:\"book/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:57:\"book/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:57:\"book/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:38:\"book/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:21:\"book/([^/]+)/embed/?$\";s:37:\"index.php?book=$matches[1]&embed=true\";s:25:\"book/([^/]+)/trackback/?$\";s:31:\"index.php?book=$matches[1]&tb=1\";s:33:\"book/([^/]+)/page/?([0-9]{1,})/?$\";s:44:\"index.php?book=$matches[1]&paged=$matches[2]\";s:40:\"book/([^/]+)/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?book=$matches[1]&cpage=$matches[2]\";s:29:\"book/([^/]+)(?:/([0-9]+))?/?$\";s:43:\"index.php?book=$matches[1]&page=$matches[2]\";s:21:\"book/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:31:\"book/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:51:\"book/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:46:\"book/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:46:\"book/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:27:\"book/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:12:\"robots\\.txt$\";s:18:\"index.php?robots=1\";s:13:\"favicon\\.ico$\";s:19:\"index.php?favicon=1\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:27:\"comment-page-([0-9]{1,})/?$\";s:39:\"index.php?&page_id=52&cpage=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:58:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:68:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:88:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:64:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:53:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/embed/?$\";s:91:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/trackback/?$\";s:85:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&tb=1\";s:77:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:65:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&paged=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&cpage=$matches[5]\";s:61:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)(?:/([0-9]+))?/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&page=$matches[5]\";s:47:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:57:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:77:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:53:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&cpage=$matches[4]\";s:51:\"([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&cpage=$matches[3]\";s:38:\"([0-9]{4})/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&cpage=$matches[2]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:1:{i:0;s:31:\"bulgakov_plug/bulgakov_plug.php\";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', '', 'no'),
(40, 'template', 'fictional-university-theme', 'yes'),
(41, 'stylesheet', 'fictional-university-theme', 'yes'),
(42, 'comment_registration', '0', 'yes'),
(43, 'html_type', 'text/html', 'yes'),
(44, 'use_trackback', '0', 'yes'),
(45, 'default_role', 'subscriber', 'yes'),
(46, 'db_version', '48748', 'yes'),
(47, 'uploads_use_yearmonth_folders', '1', 'yes'),
(48, 'upload_path', '', 'yes'),
(49, 'blog_public', '1', 'yes'),
(50, 'default_link_category', '2', 'yes'),
(51, 'show_on_front', 'page', 'yes'),
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
(76, 'widget_categories', 'a:2:{i:2;a:4:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:12:\"hierarchical\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(77, 'widget_text', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(78, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(79, 'uninstall_plugins', 'a:0:{}', 'no'),
(80, 'timezone_string', '', 'yes'),
(81, 'page_for_posts', '54', 'yes'),
(82, 'page_on_front', '52', 'yes'),
(83, 'default_post_format', '0', 'yes'),
(84, 'link_manager_enabled', '0', 'yes'),
(85, 'finished_splitting_shared_terms', '1', 'yes'),
(86, 'site_icon', '0', 'yes'),
(87, 'medium_large_size_w', '768', 'yes'),
(88, 'medium_large_size_h', '0', 'yes'),
(89, 'wp_page_for_privacy_policy', '3', 'yes'),
(90, 'show_comments_cookies_opt_in', '1', 'yes'),
(91, 'admin_email_lifespan', '1615964208', 'yes'),
(92, 'disallowed_keys', '', 'no'),
(93, 'comment_previously_approved', '1', 'yes'),
(94, 'auto_plugin_theme_update_emails', 'a:0:{}', 'no'),
(95, 'initial_db_version', '48748', 'yes'),
(96, 'wp_user_roles', 'a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}', 'yes'),
(97, 'fresh_site', '0', 'yes'),
(98, 'widget_search', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(99, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(100, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(101, 'widget_archives', 'a:2:{i:2;a:3:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(102, 'widget_meta', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(103, 'sidebars_widgets', 'a:2:{s:19:\"wp_inactive_widgets\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:13:\"array_version\";i:3;}', 'yes'),
(104, 'cron', 'a:7:{i:1602161816;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1602183416;a:3:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1602226615;a:1:{s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1602226633;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1602226635;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1602313015;a:1:{s:30:\"wp_site_health_scheduled_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}s:7:\"version\";i:2;}', 'yes'),
(105, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(106, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(107, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(108, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(109, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(110, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(111, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(112, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(113, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(115, 'recovery_keys', 'a:0:{}', 'yes'),
(116, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.5.1.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.5.1.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-5.5.1-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-5.5.1-new-bundled.zip\";s:7:\"partial\";s:0:\"\";s:8:\"rollback\";s:0:\"\";}s:7:\"current\";s:5:\"5.5.1\";s:7:\"version\";s:5:\"5.5.1\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.3\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1602147533;s:15:\"version_checked\";s:5:\"5.5.1\";s:12:\"translations\";a:0:{}}', 'no'),
(117, 'theme_mods_twentytwenty', 'a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1600694012;s:4:\"data\";a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:3:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";}s:9:\"sidebar-2\";a:3:{i:0;s:10:\"archives-2\";i:1;s:12:\"categories-2\";i:2;s:6:\"meta-2\";}}}}', 'yes'),
(119, '_site_transient_update_plugins', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1602147535;s:7:\"checked\";a:3:{s:19:\"akismet/akismet.php\";s:5:\"4.1.6\";s:31:\"bulgakov_plug/bulgakov_plug.php\";s:5:\"0.001\";s:9:\"hello.php\";s:5:\"1.7.2\";}s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:2:{s:19:\"akismet/akismet.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:21:\"w.org/plugins/akismet\";s:4:\"slug\";s:7:\"akismet\";s:6:\"plugin\";s:19:\"akismet/akismet.php\";s:11:\"new_version\";s:5:\"4.1.6\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/akismet/\";s:7:\"package\";s:56:\"https://downloads.wordpress.org/plugin/akismet.4.1.6.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:59:\"https://ps.w.org/akismet/assets/icon-256x256.png?rev=969272\";s:2:\"1x\";s:59:\"https://ps.w.org/akismet/assets/icon-128x128.png?rev=969272\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:61:\"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904\";}s:11:\"banners_rtl\";a:0:{}}s:9:\"hello.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:25:\"w.org/plugins/hello-dolly\";s:4:\"slug\";s:11:\"hello-dolly\";s:6:\"plugin\";s:9:\"hello.php\";s:11:\"new_version\";s:5:\"1.7.2\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/hello-dolly/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/plugin/hello-dolly.1.7.2.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=2052855\";s:2:\"1x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-128x128.jpg?rev=2052855\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:66:\"https://ps.w.org/hello-dolly/assets/banner-772x250.jpg?rev=2052855\";}s:11:\"banners_rtl\";a:0:{}}}}', 'no'),
(122, '_site_transient_update_themes', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1602147535;s:7:\"checked\";a:2:{s:26:\"fictional-university-theme\";s:5:\"0.001\";s:10:\"test_theme\";s:5:\"0.001\";}s:8:\"response\";a:0:{}s:9:\"no_update\";a:0:{}s:12:\"translations\";a:0:{}}', 'no'),
(129, 'can_compress_scripts', '1', 'no'),
(144, 'finished_updating_comment_type', '1', 'yes'),
(145, 'recently_activated', 'a:0:{}', 'yes'),
(178, '_transient_health-check-site-status-result', '{\"good\":\"10\",\"recommended\":\"8\",\"critical\":\"2\"}', 'yes'),
(263, 'theme_mods_bulgakov-theme', 'a:3:{s:18:\"custom_css_post_id\";i:-1;s:18:\"nav_menu_locations\";a:0:{}s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1600774065;s:4:\"data\";a:2:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}}}}', 'yes'),
(264, 'current_theme', 'Fictional University', 'yes'),
(265, 'theme_switched', '', 'yes'),
(304, 'theme_mods_twentyseventeen', 'a:4:{i:0;b:0;s:18:\"nav_menu_locations\";a:0:{}s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1600936066;s:4:\"data\";a:4:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:9:\"sidebar-2\";a:0:{}s:9:\"sidebar-3\";a:0:{}}}}', 'yes'),
(324, 'theme_mods_test_theme', 'a:3:{s:18:\"custom_css_post_id\";i:-1;s:18:\"nav_menu_locations\";a:0:{}s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1601546768;s:4:\"data\";a:1:{s:19:\"wp_inactive_widgets\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}}}}', 'yes'),
(419, 'theme_mods_fictional-university-theme', 'a:3:{i:0;b:0;s:18:\"nav_menu_locations\";a:3:{s:18:\"headerMenuLocation\";i:2;s:15:\"footerLocation1\";i:3;s:15:\"footerLocation2\";i:4;}s:18:\"custom_css_post_id\";i:-1;}', 'yes'),
(420, '_site_transient_timeout_browser_ce4e9e986b0fbc713624d54b83c36283', '1602151762', 'no'),
(421, '_site_transient_browser_ce4e9e986b0fbc713624d54b83c36283', 'a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:13:\"85.0.4183.121\";s:8:\"platform\";s:7:\"Windows\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'no'),
(478, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:\"auto_add\";a:0:{}}', 'yes'),
(480, '_site_transient_timeout_php_check_97f83d63b8a66f6e8c057d89a83d8845', '1602510747', 'no'),
(481, '_site_transient_php_check_97f83d63b8a66f6e8c057d89a83d8845', 'a:5:{s:19:\"recommended_version\";s:3:\"7.4\";s:15:\"minimum_version\";s:6:\"5.6.20\";s:12:\"is_supported\";b:0;s:9:\"is_secure\";b:0;s:13:\"is_acceptable\";b:0;}', 'no'),
(548, 'category_children', 'a:0:{}', 'yes'),
(557, '_site_transient_timeout_theme_roots', '1602149335', 'no'),
(558, '_site_transient_theme_roots', 'a:2:{s:26:\"fictional-university-theme\";s:7:\"/themes\";s:10:\"test_theme\";s:7:\"/themes\";}', 'no');

-- --------------------------------------------------------

--
-- Структура таблицы `wp_postmeta`
--

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 3, '_wp_page_template', 'default'),
(3, 5, '_edit_last', '1'),
(4, 5, '_edit_lock', '1600418917:1'),
(5, 6, '_edit_lock', '1600949911:1'),
(8, 8, '_edit_lock', '1600949931:1'),
(11, 10, '_edit_lock', '1600949960:1'),
(14, 2, '_edit_lock', '1601645342:1'),
(15, 12, '_edit_lock', '1601548743:1'),
(16, 14, '_edit_lock', '1602071493:1'),
(17, 3, '_edit_lock', '1601644894:1'),
(18, 17, '_edit_lock', '1601646227:1'),
(19, 19, '_edit_lock', '1601886078:1'),
(20, 21, '_edit_lock', '1601549583:1'),
(21, 22, '_wp_attached_file', '2020/09/image.png'),
(22, 22, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:892;s:6:\"height\";i:432;s:4:\"file\";s:17:\"2020/09/image.png\";s:5:\"sizes\";a:3:{s:6:\"medium\";a:4:{s:4:\"file\";s:17:\"image-300x145.png\";s:5:\"width\";i:300;s:6:\"height\";i:145;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:17:\"image-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:17:\"image-768x372.png\";s:5:\"width\";i:768;s:6:\"height\";i:372;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(23, 23, '_wp_attached_file', '2020/09/image-1.png'),
(24, 23, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:892;s:6:\"height\";i:432;s:4:\"file\";s:19:\"2020/09/image-1.png\";s:5:\"sizes\";a:3:{s:6:\"medium\";a:4:{s:4:\"file\";s:19:\"image-1-300x145.png\";s:5:\"width\";i:300;s:6:\"height\";i:145;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:19:\"image-1-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:19:\"image-1-768x372.png\";s:5:\"width\";i:768;s:6:\"height\";i:372;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(25, 33, '_edit_lock', '1601548690:1'),
(100, 44, '_menu_item_type', 'post_type'),
(101, 44, '_menu_item_menu_item_parent', '0'),
(102, 44, '_menu_item_object_id', '14'),
(103, 44, '_menu_item_object', 'page'),
(104, 44, '_menu_item_target', ''),
(105, 44, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(106, 44, '_menu_item_xfn', ''),
(107, 44, '_menu_item_url', ''),
(109, 45, '_menu_item_type', 'post_type'),
(110, 45, '_menu_item_menu_item_parent', '0'),
(111, 45, '_menu_item_object_id', '3'),
(112, 45, '_menu_item_object', 'page'),
(113, 45, '_menu_item_target', ''),
(114, 45, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(115, 45, '_menu_item_xfn', ''),
(116, 45, '_menu_item_url', ''),
(118, 46, '_menu_item_type', 'post_type'),
(119, 46, '_menu_item_menu_item_parent', '0'),
(120, 46, '_menu_item_object_id', '12'),
(121, 46, '_menu_item_object', 'page'),
(122, 46, '_menu_item_target', ''),
(123, 46, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(124, 46, '_menu_item_xfn', ''),
(125, 46, '_menu_item_url', ''),
(127, 47, '_menu_item_type', 'post_type'),
(128, 47, '_menu_item_menu_item_parent', '0'),
(129, 47, '_menu_item_object_id', '2'),
(130, 47, '_menu_item_object', 'page'),
(131, 47, '_menu_item_target', ''),
(132, 47, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(133, 47, '_menu_item_xfn', ''),
(134, 47, '_menu_item_url', ''),
(136, 48, '_menu_item_type', 'post_type'),
(137, 48, '_menu_item_menu_item_parent', '0'),
(138, 48, '_menu_item_object_id', '17'),
(139, 48, '_menu_item_object', 'page'),
(140, 48, '_menu_item_target', ''),
(141, 48, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(142, 48, '_menu_item_xfn', ''),
(143, 48, '_menu_item_url', ''),
(145, 49, '_menu_item_type', 'post_type'),
(146, 49, '_menu_item_menu_item_parent', '0'),
(147, 49, '_menu_item_object_id', '12'),
(148, 49, '_menu_item_object', 'page'),
(149, 49, '_menu_item_target', ''),
(150, 49, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(151, 49, '_menu_item_xfn', ''),
(152, 49, '_menu_item_url', ''),
(154, 50, '_menu_item_type', 'post_type'),
(155, 50, '_menu_item_menu_item_parent', '0'),
(156, 50, '_menu_item_object_id', '19'),
(157, 50, '_menu_item_object', 'page'),
(158, 50, '_menu_item_target', ''),
(159, 50, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(160, 50, '_menu_item_xfn', ''),
(161, 50, '_menu_item_url', ''),
(163, 51, '_menu_item_type', 'post_type'),
(164, 51, '_menu_item_menu_item_parent', '0'),
(165, 51, '_menu_item_object_id', '21'),
(166, 51, '_menu_item_object', 'page'),
(167, 51, '_menu_item_target', ''),
(168, 51, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(169, 51, '_menu_item_xfn', ''),
(170, 51, '_menu_item_url', ''),
(172, 52, '_edit_lock', '1602075609:1'),
(173, 54, '_edit_lock', '1602076111:1'),
(174, 33, '_wp_trash_meta_status', 'publish'),
(175, 33, '_wp_trash_meta_time', '1601984406'),
(176, 33, '_wp_desired_post_slug', 'style-css'),
(177, 56, '_edit_lock', '1601984922:1'),
(180, 58, '_edit_lock', '1601985010:1'),
(183, 60, '_edit_lock', '1601985074:1'),
(186, 62, '_edit_lock', '1601985117:1'),
(189, 64, '_edit_lock', '1601985183:1'),
(192, 66, '_edit_lock', '1601985228:1'),
(195, 68, '_edit_lock', '1601985275:1');

-- --------------------------------------------------------

--
-- Структура таблицы `wp_posts`
--

CREATE TABLE `wp_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `guid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT 0,
  `post_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2020-09-18 06:56:54', '2020-09-18 06:56:54', '<!-- wp:paragraph -->\n<p>Welcome to WordPress. This is your first post. Edit or delete it, then start writing!</p>\n<!-- /wp:paragraph -->', 'Hello world!', '', 'publish', 'open', 'open', '', 'hello-world', '', '', '2020-09-18 06:56:54', '2020-09-18 06:56:54', '', 0, 'http://wordpress/?p=1', 0, 'post', '', 1),
(2, 1, '2020-09-18 06:56:54', '2020-09-18 06:56:54', '<!-- wp:paragraph -->\n<p>This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...or something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>As a new WordPress user, you should go to <a href=\"http://wordpress/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!</p>\n<!-- /wp:paragraph -->', 'Sample Page', '', 'publish', 'closed', 'open', '', 'sample-page', '', '', '2020-09-18 06:56:54', '2020-09-18 06:56:54', '', 0, 'http://wordpress/?page_id=2', 0, 'page', '', 0),
(3, 1, '2020-09-18 06:56:54', '2020-09-18 06:56:54', '<!-- wp:heading -->\n<h2>Who we are</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Our website address is: http://wordpress.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2>What personal data we collect and why we collect it</h2>\n<!-- /wp:heading -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3>Comments</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor’s IP address and browser user agent string to help spam detection.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>An anonymized string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3>Media</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3>Contact forms</h3>\n<!-- /wp:heading -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3>Cookies</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>If you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>If you visit our login page, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select \"Remember Me\", your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3>Embedded content from other websites</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracking your interaction with the embedded content if you have an account and are logged in to that website.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3>Analytics</h3>\n<!-- /wp:heading -->\n\n<!-- wp:heading -->\n<h2>Who we share your data with</h2>\n<!-- /wp:heading -->\n\n<!-- wp:heading -->\n<h2>How long we retain your data</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognize and approve any follow-up comments automatically instead of holding them in a moderation queue.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2>What rights you have over your data</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2>Where we send your data</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Visitor comments may be checked through an automated spam detection service.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2>Your contact information</h2>\n<!-- /wp:heading -->\n\n<!-- wp:heading -->\n<h2>Additional information</h2>\n<!-- /wp:heading -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3>How we protect your data</h3>\n<!-- /wp:heading -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3>What data breach procedures we have in place</h3>\n<!-- /wp:heading -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3>What third parties we receive data from</h3>\n<!-- /wp:heading -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3>What automated decision making and/or profiling we do with user data</h3>\n<!-- /wp:heading -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3>Industry regulatory disclosure requirements</h3>\n<!-- /wp:heading -->', 'Privacy Policy', '', 'publish', 'closed', 'open', '', 'privacy-policy', '', '', '2020-09-30 12:21:31', '2020-09-30 12:21:31', '', 0, 'http://wordpress/?page_id=3', 0, 'page', '', 0),
(5, 1, '2020-09-18 08:50:40', '2020-09-18 08:50:40', 'This is my Test Book.', 'Test Book', '', 'publish', 'closed', 'closed', '', 'test-book', '', '', '2020-09-18 08:50:40', '2020-09-18 08:50:40', '', 0, 'http://wordpress/?post_type=book&#038;p=5', 0, 'book', '', 0),
(6, 1, '2020-09-24 12:20:48', '2020-09-24 12:20:48', '<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas nisi dui, maximus quis est id, finibus eleifend tortor. Aliquam vel ultrices ligula. Curabitur lobortis porttitor velit, eu placerat turpis dictum sit amet. Nam maximus suscipit libero, sit amet ultrices tortor sodales sit amet. Mauris semper, ante nec aliquet bibendum, eros sem convallis dui, porta interdum elit orci ultricies massa. Integer porta erat vitae vestibulum placerat. Curabitur at ultricies lacus. Sed maximus lectus nec urna consectetur ullamcorper. Etiam sit amet dolor pulvinar, euismod tellus ut, venenatis lacus. Pellentesque venenatis consequat arcu vel pulvinar. Aliquam erat volutpat.</p>\n<!-- /wp:paragraph -->', 'Какой-то пост', '', 'publish', 'open', 'open', '', '%d0%ba%d0%b0%d0%ba%d0%be%d0%b9-%d1%82%d0%be-%d0%bf%d0%be%d1%81%d1%82', '', '', '2020-09-24 12:20:48', '2020-09-24 12:20:48', '', 0, 'http://wordpress/?p=6', 0, 'post', '', 0),
(7, 1, '2020-09-24 12:20:48', '2020-09-24 12:20:48', '<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas nisi dui, maximus quis est id, finibus eleifend tortor. Aliquam vel ultrices ligula. Curabitur lobortis porttitor velit, eu placerat turpis dictum sit amet. Nam maximus suscipit libero, sit amet ultrices tortor sodales sit amet. Mauris semper, ante nec aliquet bibendum, eros sem convallis dui, porta interdum elit orci ultricies massa. Integer porta erat vitae vestibulum placerat. Curabitur at ultricies lacus. Sed maximus lectus nec urna consectetur ullamcorper. Etiam sit amet dolor pulvinar, euismod tellus ut, venenatis lacus. Pellentesque venenatis consequat arcu vel pulvinar. Aliquam erat volutpat.</p>\n<!-- /wp:paragraph -->', 'Какой-то пост', '', 'inherit', 'closed', 'closed', '', '6-revision-v1', '', '', '2020-09-24 12:20:48', '2020-09-24 12:20:48', '', 6, 'http://wordpress/2020/09/24/6-revision-v1/', 0, 'revision', '', 0),
(8, 1, '2020-09-24 12:21:13', '2020-09-24 12:21:13', '<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas nisi dui, maximus quis est id, finibus eleifend tortor. Aliquam vel ultrices ligula. Curabitur lobortis porttitor velit, eu placerat turpis dictum sit amet. Nam maximus</p>\n<!-- /wp:paragraph -->', 'Еще один пост', '', 'publish', 'open', 'open', '', '%d0%b5%d1%89%d0%b5-%d0%be%d0%b4%d0%b8%d0%bd-%d0%bf%d0%be%d1%81%d1%82', '', '', '2020-09-24 12:21:13', '2020-09-24 12:21:13', '', 0, 'http://wordpress/?p=8', 0, 'post', '', 0),
(9, 1, '2020-09-24 12:21:13', '2020-09-24 12:21:13', '<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas nisi dui, maximus quis est id, finibus eleifend tortor. Aliquam vel ultrices ligula. Curabitur lobortis porttitor velit, eu placerat turpis dictum sit amet. Nam maximus</p>\n<!-- /wp:paragraph -->', 'Еще один пост', '', 'inherit', 'closed', 'closed', '', '8-revision-v1', '', '', '2020-09-24 12:21:13', '2020-09-24 12:21:13', '', 8, 'http://wordpress/2020/09/24/8-revision-v1/', 0, 'revision', '', 0),
(10, 1, '2020-09-24 12:21:42', '2020-09-24 12:21:42', '<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas nisi dui, maximus</p>\n<!-- /wp:paragraph -->', 'Что-то важное', '', 'publish', 'open', 'open', '', '%d1%87%d1%82%d0%be-%d1%82%d0%be-%d0%b2%d0%b0%d0%b6%d0%bd%d0%be%d0%b5', '', '', '2020-09-24 12:21:42', '2020-09-24 12:21:42', '', 0, 'http://wordpress/?p=10', 0, 'post', '', 0),
(11, 1, '2020-09-24 12:21:42', '2020-09-24 12:21:42', '<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas nisi dui, maximus</p>\n<!-- /wp:paragraph -->', 'Что-то важное', '', 'inherit', 'closed', 'closed', '', '10-revision-v1', '', '', '2020-09-24 12:21:42', '2020-09-24 12:21:42', '', 10, 'http://wordpress/2020/09/24/10-revision-v1/', 0, 'revision', '', 0),
(12, 1, '2020-09-25 08:39:00', '2020-09-25 08:39:00', '<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. In commodo eros dolor, nec tristique est efficitur sed. Aenean porttitor lacinia sapien non semper. Quisque malesuada, nunc at congue efficitur, justo tellus sollicitudin sapien, tempor gravida urna elit non velit. Vivamus magna ipsum, fringilla vestibulum odio in, feugiat feugiat est. Etiam in lorem nisi. Praesent tristique lacus nulla, non rutrum ligula facilisis ut. Praesent accumsan ipsum scelerisque sapien sodales ornare. Sed rhoncus non libero at rhoncus.</p>\n<!-- /wp:paragraph -->', 'Test Page', '', 'publish', 'closed', 'closed', '', 'test-page', '', '', '2020-09-25 08:39:00', '2020-09-25 08:39:00', '', 0, 'http://wordpress/?page_id=12', 0, 'page', '', 0),
(13, 1, '2020-09-25 08:39:00', '2020-09-25 08:39:00', '<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. In commodo eros dolor, nec tristique est efficitur sed. Aenean porttitor lacinia sapien non semper. Quisque malesuada, nunc at congue efficitur, justo tellus sollicitudin sapien, tempor gravida urna elit non velit. Vivamus magna ipsum, fringilla vestibulum odio in, feugiat feugiat est. Etiam in lorem nisi. Praesent tristique lacus nulla, non rutrum ligula facilisis ut. Praesent accumsan ipsum scelerisque sapien sodales ornare. Sed rhoncus non libero at rhoncus.</p>\n<!-- /wp:paragraph -->', 'Test Page', '', 'inherit', 'closed', 'closed', '', '12-revision-v1', '', '', '2020-09-25 08:39:00', '2020-09-25 08:39:00', '', 12, 'http://wordpress/2020/09/25/12-revision-v1/', 0, 'revision', '', 0),
(14, 1, '2020-09-28 12:51:37', '2020-09-28 12:51:37', '<!-- wp:paragraph -->\n<p>This is about content.</p>\n<!-- /wp:paragraph -->', 'About Us', '', 'publish', 'closed', 'closed', '', 'about-us', '', '', '2020-09-28 12:51:37', '2020-09-28 12:51:37', '', 0, 'http://wordpress/?page_id=14', 0, 'page', '', 0),
(15, 1, '2020-09-28 12:51:37', '2020-09-28 12:51:37', '<!-- wp:paragraph -->\n<p>This is about content.</p>\n<!-- /wp:paragraph -->', 'About Us', '', 'inherit', 'closed', 'closed', '', '14-revision-v1', '', '', '2020-09-28 12:51:37', '2020-09-28 12:51:37', '', 14, 'http://wordpress/2020/09/28/14-revision-v1/', 0, 'revision', '', 0),
(17, 1, '2020-09-30 11:15:36', '2020-09-30 11:15:36', '<!-- wp:html -->\nThis is our History. This is our History. This is our History. This is our History.This is our History. This is our History.This is our History. This is our History.This is our History. \n\nThis is our History.This is our History. This is our History.This is our History. This is our History.This is our History. This is our History.This is our History. This is our History.This is our History. This is our History.\n<!-- /wp:html -->', 'Our History', '', 'publish', 'closed', 'closed', '', 'our-history', '', '', '2020-10-02 13:45:42', '2020-10-02 13:45:42', '', 14, 'http://wordpress/?page_id=17', 1, 'page', '', 0),
(18, 1, '2020-09-30 11:15:36', '2020-09-30 11:15:36', '<!-- wp:preformatted -->\n<pre class=\"wp-block-preformatted\">Lorem ipsum dolor sit amet, consectetur adipisicing elit. A assumenda, beatae consectetur consequuntur debitis distinctio, eaque facilis fugiat illum incidunt ipsam maxime nulla omnis perspiciatis possimus quam quibusdam repudiandae soluta, sunt veniam. Architecto, consequatur error est illum, iste laborum libero mollitia qui quisquam ullam velit voluptas. Fugiat id neque quidem rem sunt voluptate. Ab dolorem ducimus esse ipsa minus nihil numquam quasi tempore ullam ut. Ad aspernatur deserunt eum ipsum nostrum officiis rem similique tenetur. Architecto commodi dolor excepturi fugit iusto reprehenderit temporibus? Aperiam autem consequuntur cumque ea earum eos, et exercitationem hic id ipsa laborum, minus nihil nisi obcaecati pariatur provident quae quaerat quam quo repellendus repudiandae soluta, suscipit vitae? Corporis harum molestias nihil odit quaerat quasi, quod vero! Alias debitis, deserunt facilis ratione totam vel? Consectetur deserunt eos est id, impedit, magnam minus, nesciunt nulla quaerat quam quas quod temporibus voluptatum. A atque, blanditiis, consectetur consequatur dolorem esse in laboriosam nesciunt obcaecati quaerat quasi quisquam quos ullam ut veniam! Aliquam aperiam beatae blanditiis consequuntur culpa dolores eos esse et ex excepturi, facere fuga inventore ipsa ipsum laboriosam laborum libero molestiae nobis obcaecati pariatur porro quaerat quas qui, quia quibusdam quisquam rem repellendus tempora tempore ullam, velit voluptates voluptatibus.</pre>\n<!-- /wp:preformatted -->', 'Our History', '', 'inherit', 'closed', 'closed', '', '17-revision-v1', '', '', '2020-09-30 11:15:36', '2020-09-30 11:15:36', '', 17, 'http://wordpress/2020/09/30/17-revision-v1/', 0, 'revision', '', 0),
(19, 1, '2020-09-30 11:17:14', '2020-09-30 11:17:14', '<!-- wp:group -->\n<div class=\"wp-block-group\"><div class=\"wp-block-group__inner-container\"><!-- wp:html -->\nLorem ipsum dolor sit amet, consectetur adipisicing elit. A assumenda, beatae consectetur consequuntur debitis distinctio, eaque facilis fugiat illum incidunt ipsam maxime nulla omnis perspiciatis possimus quam quibusdam repudiandae soluta, sunt veniam. Architecto, consequatur error est illum, iste laborum libero mollitia qui quisquam ullam velit voluptas. Fugiat id neque quidem rem sunt voluptate. Ab dolorem ducimus esse ipsa minus nihil numquam quasi tempore ullam ut. Ad aspernatur deserunt eum ipsum nostrum officiis rem similique tenetur. Architecto commodi dolor excepturi fugit iusto reprehenderit temporibus? Aperiam autem consequuntur cumque ea earum eos, et exercitationem hic id ipsa laborum, minus nihil nisi obcaecati pariatur provident quae quaerat quam quo repellendus repudiandae soluta, suscipit vitae? Corporis harum molestias nihil odit quaerat quasi, quod vero! Alias debitis, deserunt facilis ratione totam vel? Consectetur deserunt eos est id, impedit, magnam minus, nesciunt nulla quaerat quam quas quod temporibus voluptatum. A atque, blanditiis, consectetur consequatur dolorem esse in laboriosam nesciunt obcaecati\n<!-- /wp:html --></div></div>\n<!-- /wp:group -->', 'Our Goals', '', 'publish', 'closed', 'closed', '', 'our-goals', '', '', '2020-10-02 13:46:21', '2020-10-02 13:46:21', '', 14, 'http://wordpress/?page_id=19', 2, 'page', '', 0),
(20, 1, '2020-09-30 11:17:14', '2020-09-30 11:17:14', '<!-- wp:preformatted -->\n<pre class=\"wp-block-preformatted\">Lorem ipsum dolor sit amet, consectetur adipisicing elit. A assumenda, beatae consectetur consequuntur debitis distinctio, eaque facilis fugiat illum incidunt ipsam maxime nulla omnis perspiciatis possimus quam quibusdam repudiandae soluta, sunt veniam. Architecto, consequatur error est illum, iste laborum libero mollitia qui quisquam ullam velit voluptas. Fugiat id neque quidem rem sunt voluptate. Ab dolorem ducimus esse ipsa minus nihil numquam quasi tempore ullam ut. Ad aspernatur deserunt eum ipsum nostrum officiis rem similique tenetur. Architecto commodi dolor excepturi fugit iusto reprehenderit temporibus? Aperiam autem consequuntur cumque ea earum eos, et exercitationem hic id ipsa laborum, minus nihil nisi obcaecati pariatur provident quae quaerat quam quo repellendus repudiandae soluta, suscipit vitae? Corporis harum molestias nihil odit quaerat quasi, quod vero! Alias debitis, deserunt facilis ratione totam vel? Consectetur deserunt eos est id, impedit, magnam minus, nesciunt nulla quaerat quam quas quod temporibus voluptatum. A atque, blanditiis, consectetur consequatur dolorem esse in laboriosam nesciunt obcaecati </pre>\n<!-- /wp:preformatted -->', 'Our Goals', '', 'inherit', 'closed', 'closed', '', '19-revision-v1', '', '', '2020-09-30 11:17:14', '2020-09-30 11:17:14', '', 19, 'http://wordpress/2020/09/30/19-revision-v1/', 0, 'revision', '', 0),
(21, 1, '2020-09-30 12:21:10', '2020-09-30 12:21:10', '<!-- wp:html -->\nLorem ipsum dolor sit amet, consectetur adipisicing elit. Deserunt ex laboriosam modi officiis<br>perferendis! Nostrum, quod, voluptates. Ad debitis et placeat possimus quam temporibus,<br>voluptate? Ab aperiam beatae fugiat harum laudantium odio quos voluptas. A animi at consectetur<br>corporis dicta eligendi est fugit laborum officiis placeat, quam quibusdam reprehenderit, ut.<br>Ducimus fugit hic illum iure nihil rem soluta voluptatum! A adipisci alias aliquid, aut<br>consectetur consequuntur cupiditate dicta dignissimos dolores ducimus eos error excepturi fugit<br>hic itaque iusto libero magni minus nam nulla odio officia optio perferendis placeat praesentium<br>quaerat quasi quis quos ratione saepe soluta vel veniam voluptates voluptatum.\n<!-- /wp:html -->', 'Cookie Policy', '', 'publish', 'closed', 'closed', '', 'cookie-policy', '', '', '2020-10-01 06:50:14', '2020-10-01 06:50:14', '', 3, 'http://wordpress/?page_id=21', 0, 'page', '', 0),
(22, 1, '2020-09-30 12:09:17', '2020-09-30 12:09:17', '', 'image', '', 'inherit', 'open', 'closed', '', 'image', '', '', '2020-09-30 12:09:17', '2020-09-30 12:09:17', '', 21, 'http://wordpress/wp-content/uploads/2020/09/image.png', 0, 'attachment', 'image/png', 0),
(23, 1, '2020-09-30 12:19:29', '2020-09-30 12:19:29', '', 'image-1', '', 'inherit', 'open', 'closed', '', 'image-1', '', '', '2020-09-30 12:19:29', '2020-09-30 12:19:29', '', 21, 'http://wordpress/wp-content/uploads/2020/09/image-1.png', 0, 'attachment', 'image/png', 0),
(24, 1, '2020-09-30 12:21:10', '2020-09-30 12:21:10', '<!-- wp:preformatted -->\n<pre class=\"wp-block-preformatted\">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Deserunt ex laboriosam modi officiis<br>perferendis! Nostrum, quod, voluptates. Ad debitis et placeat possimus quam temporibus,<br>voluptate? Ab aperiam beatae fugiat harum laudantium odio quos voluptas. A animi at consectetur<br>corporis dicta eligendi est fugit laborum officiis placeat, quam quibusdam reprehenderit, ut.<br>Ducimus fugit hic illum iure nihil rem soluta voluptatum! A adipisci alias aliquid, aut<br>consectetur consequuntur cupiditate dicta dignissimos dolores ducimus eos error excepturi fugit<br>hic itaque iusto libero magni minus nam nulla odio officia optio perferendis placeat praesentium<br>quaerat quasi quis quos ratione saepe soluta vel veniam voluptates voluptatum.</pre>\n<!-- /wp:preformatted -->', 'Cookie Policy', '', 'inherit', 'closed', 'closed', '', '21-revision-v1', '', '', '2020-09-30 12:21:10', '2020-09-30 12:21:10', '', 21, 'http://wordpress/2020/09/30/21-revision-v1/', 0, 'revision', '', 0),
(25, 1, '2020-09-30 12:21:31', '2020-09-30 12:21:31', '<!-- wp:heading -->\n<h2>Who we are</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Our website address is: http://wordpress.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2>What personal data we collect and why we collect it</h2>\n<!-- /wp:heading -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3>Comments</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor’s IP address and browser user agent string to help spam detection.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>An anonymized string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3>Media</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3>Contact forms</h3>\n<!-- /wp:heading -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3>Cookies</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>If you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>If you visit our login page, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select \"Remember Me\", your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3>Embedded content from other websites</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracking your interaction with the embedded content if you have an account and are logged in to that website.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3>Analytics</h3>\n<!-- /wp:heading -->\n\n<!-- wp:heading -->\n<h2>Who we share your data with</h2>\n<!-- /wp:heading -->\n\n<!-- wp:heading -->\n<h2>How long we retain your data</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognize and approve any follow-up comments automatically instead of holding them in a moderation queue.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2>What rights you have over your data</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2>Where we send your data</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Visitor comments may be checked through an automated spam detection service.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2>Your contact information</h2>\n<!-- /wp:heading -->\n\n<!-- wp:heading -->\n<h2>Additional information</h2>\n<!-- /wp:heading -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3>How we protect your data</h3>\n<!-- /wp:heading -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3>What data breach procedures we have in place</h3>\n<!-- /wp:heading -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3>What third parties we receive data from</h3>\n<!-- /wp:heading -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3>What automated decision making and/or profiling we do with user data</h3>\n<!-- /wp:heading -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3>Industry regulatory disclosure requirements</h3>\n<!-- /wp:heading -->', 'Privacy Policy', '', 'inherit', 'closed', 'closed', '', '3-revision-v1', '', '', '2020-09-30 12:21:31', '2020-09-30 12:21:31', '', 3, 'http://wordpress/2020/09/30/3-revision-v1/', 0, 'revision', '', 0),
(26, 1, '2020-10-01 06:42:06', '2020-10-01 06:42:06', '<!-- wp:preformatted -->\n<pre class=\"wp-block-preformatted\">This is our History. This is our History. This is our History. This is our History.This is our History. This is our History.This is our History. This is our History.This is our History. This is our History.This is our History. This is our History.This is our History. This is our History.This is our History. This is our History.This is our History. This is our History.This is our History. This is our History.</pre>\n<!-- /wp:preformatted -->', 'Our History', '', 'inherit', 'closed', 'closed', '', '17-revision-v1', '', '', '2020-10-01 06:42:06', '2020-10-01 06:42:06', '', 17, 'http://wordpress/2020/10/01/17-revision-v1/', 0, 'revision', '', 0),
(27, 1, '2020-10-01 06:42:20', '2020-10-01 06:42:20', '<!-- wp:preformatted -->\n<pre class=\"wp-block-preformatted\">This is our History. This is our History. This is our History. This is our History.This is our History. This is our History.This is our History. This is our History.This is our History. \n\nThis is our History.This is our History. This is our History.This is our History. This is our History.This is our History. This is our History.This is our History. This is our History.This is our History. This is our History.</pre>\n<!-- /wp:preformatted -->', 'Our History', '', 'inherit', 'closed', 'closed', '', '17-revision-v1', '', '', '2020-10-01 06:42:20', '2020-10-01 06:42:20', '', 17, 'http://wordpress/2020/10/01/17-revision-v1/', 0, 'revision', '', 0),
(28, 1, '2020-10-01 06:43:29', '2020-10-01 06:43:29', '<!-- wp:html -->\nThis is our History. This is our History. This is our History. This is our History.This is our History. This is our History.This is our History. This is our History.This is our History. \n\nThis is our History.This is our History. This is our History.This is our History. This is our History.This is our History. This is our History.This is our History. This is our History.This is our History. This is our History.\n<!-- /wp:html -->', 'Our History', '', 'inherit', 'closed', 'closed', '', '17-revision-v1', '', '', '2020-10-01 06:43:29', '2020-10-01 06:43:29', '', 17, 'http://wordpress/2020/10/01/17-revision-v1/', 0, 'revision', '', 0),
(29, 1, '2020-10-01 06:44:07', '2020-10-01 06:44:07', '<!-- wp:group -->\n<div class=\"wp-block-group\"><div class=\"wp-block-group__inner-container\"><!-- wp:preformatted -->\n<pre class=\"wp-block-preformatted\">Lorem ipsum dolor sit amet, consectetur adipisicing elit. A assumenda, beatae consectetur consequuntur debitis distinctio, eaque facilis fugiat illum incidunt ipsam maxime nulla omnis perspiciatis possimus quam quibusdam repudiandae soluta, sunt veniam. Architecto, consequatur error est illum, iste laborum libero mollitia qui quisquam ullam velit voluptas. Fugiat id neque quidem rem sunt voluptate. Ab dolorem ducimus esse ipsa minus nihil numquam quasi tempore ullam ut. Ad aspernatur deserunt eum ipsum nostrum officiis rem similique tenetur. Architecto commodi dolor excepturi fugit iusto reprehenderit temporibus? Aperiam autem consequuntur cumque ea earum eos, et exercitationem hic id ipsa laborum, minus nihil nisi obcaecati pariatur provident quae quaerat quam quo repellendus repudiandae soluta, suscipit vitae? Corporis harum molestias nihil odit quaerat quasi, quod vero! Alias debitis, deserunt facilis ratione totam vel? Consectetur deserunt eos est id, impedit, magnam minus, nesciunt nulla quaerat quam quas quod temporibus voluptatum. A atque, blanditiis, consectetur consequatur dolorem esse in laboriosam nesciunt obcaecati </pre>\n<!-- /wp:preformatted --></div></div>\n<!-- /wp:group -->', 'Our Goals', '', 'inherit', 'closed', 'closed', '', '19-revision-v1', '', '', '2020-10-01 06:44:07', '2020-10-01 06:44:07', '', 19, 'http://wordpress/2020/10/01/19-revision-v1/', 0, 'revision', '', 0),
(30, 1, '2020-10-01 06:44:26', '2020-10-01 06:44:26', '<!-- wp:group -->\n<div class=\"wp-block-group\"><div class=\"wp-block-group__inner-container\"><!-- wp:html -->\nLorem ipsum dolor sit amet, consectetur adipisicing elit. A assumenda, beatae consectetur consequuntur debitis distinctio, eaque facilis fugiat illum incidunt ipsam maxime nulla omnis perspiciatis possimus quam quibusdam repudiandae soluta, sunt veniam. Architecto, consequatur error est illum, iste laborum libero mollitia qui quisquam ullam velit voluptas. Fugiat id neque quidem rem sunt voluptate. Ab dolorem ducimus esse ipsa minus nihil numquam quasi tempore ullam ut. Ad aspernatur deserunt eum ipsum nostrum officiis rem similique tenetur. Architecto commodi dolor excepturi fugit iusto reprehenderit temporibus? Aperiam autem consequuntur cumque ea earum eos, et exercitationem hic id ipsa laborum, minus nihil nisi obcaecati pariatur provident quae quaerat quam quo repellendus repudiandae soluta, suscipit vitae? Corporis harum molestias nihil odit quaerat quasi, quod vero! Alias debitis, deserunt facilis ratione totam vel? Consectetur deserunt eos est id, impedit, magnam minus, nesciunt nulla quaerat quam quas quod temporibus voluptatum. A atque, blanditiis, consectetur consequatur dolorem esse in laboriosam nesciunt obcaecati \n<!-- /wp:html --></div></div>\n<!-- /wp:group -->', 'Our Goals', '', 'inherit', 'closed', 'closed', '', '19-revision-v1', '', '', '2020-10-01 06:44:26', '2020-10-01 06:44:26', '', 19, 'http://wordpress/2020/10/01/19-revision-v1/', 0, 'revision', '', 0),
(31, 1, '2020-10-01 06:50:00', '2020-10-01 06:50:00', '<!-- wp:code -->\n<pre class=\"wp-block-code\"><code>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Deserunt ex laboriosam modi officiis&lt;br>perferendis! Nostrum, quod, voluptates. Ad debitis et placeat possimus quam temporibus,&lt;br>voluptate? Ab aperiam beatae fugiat harum laudantium odio quos voluptas. A animi at consectetur&lt;br>corporis dicta eligendi est fugit laborum officiis placeat, quam quibusdam reprehenderit, ut.&lt;br>Ducimus fugit hic illum iure nihil rem soluta voluptatum! A adipisci alias aliquid, aut&lt;br>consectetur consequuntur cupiditate dicta dignissimos dolores ducimus eos error excepturi fugit&lt;br>hic itaque iusto libero magni minus nam nulla odio officia optio perferendis placeat praesentium&lt;br>quaerat quasi quis quos ratione saepe soluta vel veniam voluptates voluptatum.</code></pre>\n<!-- /wp:code -->', 'Cookie Policy', '', 'inherit', 'closed', 'closed', '', '21-revision-v1', '', '', '2020-10-01 06:50:00', '2020-10-01 06:50:00', '', 21, 'http://wordpress/2020/10/01/21-revision-v1/', 0, 'revision', '', 0),
(32, 1, '2020-10-01 06:50:14', '2020-10-01 06:50:14', '<!-- wp:html -->\nLorem ipsum dolor sit amet, consectetur adipisicing elit. Deserunt ex laboriosam modi officiis<br>perferendis! Nostrum, quod, voluptates. Ad debitis et placeat possimus quam temporibus,<br>voluptate? Ab aperiam beatae fugiat harum laudantium odio quos voluptas. A animi at consectetur<br>corporis dicta eligendi est fugit laborum officiis placeat, quam quibusdam reprehenderit, ut.<br>Ducimus fugit hic illum iure nihil rem soluta voluptatum! A adipisci alias aliquid, aut<br>consectetur consequuntur cupiditate dicta dignissimos dolores ducimus eos error excepturi fugit<br>hic itaque iusto libero magni minus nam nulla odio officia optio perferendis placeat praesentium<br>quaerat quasi quis quos ratione saepe soluta vel veniam voluptates voluptatum.\n<!-- /wp:html -->', 'Cookie Policy', '', 'inherit', 'closed', 'closed', '', '21-revision-v1', '', '', '2020-10-01 06:50:14', '2020-10-01 06:50:14', '', 21, 'http://wordpress/2020/10/01/21-revision-v1/', 0, 'revision', '', 0),
(33, 1, '2020-10-01 10:26:14', '2020-10-01 10:26:14', '<!-- wp:paragraph -->\n<p>style</p>\n<!-- /wp:paragraph -->', '/style.css', '', 'trash', 'open', 'open', '', 'style-css__trashed', '', '', '2020-10-06 11:40:06', '2020-10-06 11:40:06', '', 0, 'http://wordpress/?p=33', 0, 'post', '', 0),
(34, 1, '2020-10-01 10:26:14', '2020-10-01 10:26:14', '<!-- wp:paragraph -->\n<p>style</p>\n<!-- /wp:paragraph -->', '/style.css', '', 'inherit', 'closed', 'closed', '', '33-revision-v1', '', '', '2020-10-01 10:26:14', '2020-10-01 10:26:14', '', 33, 'http://wordpress/2020/10/01/33-revision-v1/', 0, 'revision', '', 0),
(35, 1, '2020-10-02 13:46:21', '2020-10-02 13:46:21', '<!-- wp:group -->\n<div class=\"wp-block-group\"><div class=\"wp-block-group__inner-container\"><!-- wp:html -->\nLorem ipsum dolor sit amet, consectetur adipisicing elit. A assumenda, beatae consectetur consequuntur debitis distinctio, eaque facilis fugiat illum incidunt ipsam maxime nulla omnis perspiciatis possimus quam quibusdam repudiandae soluta, sunt veniam. Architecto, consequatur error est illum, iste laborum libero mollitia qui quisquam ullam velit voluptas. Fugiat id neque quidem rem sunt voluptate. Ab dolorem ducimus esse ipsa minus nihil numquam quasi tempore ullam ut. Ad aspernatur deserunt eum ipsum nostrum officiis rem similique tenetur. Architecto commodi dolor excepturi fugit iusto reprehenderit temporibus? Aperiam autem consequuntur cumque ea earum eos, et exercitationem hic id ipsa laborum, minus nihil nisi obcaecati pariatur provident quae quaerat quam quo repellendus repudiandae soluta, suscipit vitae? Corporis harum molestias nihil odit quaerat quasi, quod vero! Alias debitis, deserunt facilis ratione totam vel? Consectetur deserunt eos est id, impedit, magnam minus, nesciunt nulla quaerat quam quas quod temporibus voluptatum. A atque, blanditiis, consectetur consequatur dolorem esse in laboriosam nesciunt obcaecati\n<!-- /wp:html --></div></div>\n<!-- /wp:group -->', 'Our Goals', '', 'inherit', 'closed', 'closed', '', '19-revision-v1', '', '', '2020-10-02 13:46:21', '2020-10-02 13:46:21', '', 19, 'http://wordpress/2020/10/02/19-revision-v1/', 0, 'revision', '', 0),
(44, 1, '2020-10-05 12:48:15', '2020-10-05 12:48:15', ' ', '', '', 'publish', 'closed', 'closed', '', '44', '', '', '2020-10-05 12:51:23', '2020-10-05 12:51:23', '', 0, 'http://wordpress/?p=44', 1, 'nav_menu_item', '', 0),
(45, 1, '2020-10-05 12:48:15', '2020-10-05 12:48:15', ' ', '', '', 'publish', 'closed', 'closed', '', '45', '', '', '2020-10-05 12:51:23', '2020-10-05 12:51:23', '', 0, 'http://wordpress/?p=45', 2, 'nav_menu_item', '', 0),
(46, 1, '2020-10-05 12:51:24', '2020-10-05 12:51:24', ' ', '', '', 'publish', 'closed', 'closed', '', '46', '', '', '2020-10-05 12:51:24', '2020-10-05 12:51:24', '', 0, 'http://wordpress/?p=46', 3, 'nav_menu_item', '', 0),
(47, 1, '2020-10-05 12:51:24', '2020-10-05 12:51:24', ' ', '', '', 'publish', 'closed', 'closed', '', '47', '', '', '2020-10-05 12:51:24', '2020-10-05 12:51:24', '', 0, 'http://wordpress/?p=47', 4, 'nav_menu_item', '', 0),
(48, 1, '2020-10-05 12:56:15', '2020-10-05 12:56:15', ' ', '', '', 'publish', 'closed', 'closed', '', '48', '', '', '2020-10-05 12:56:15', '2020-10-05 12:56:15', '', 14, 'http://wordpress/?p=48', 1, 'nav_menu_item', '', 0),
(49, 1, '2020-10-05 12:56:15', '2020-10-05 12:56:15', ' ', '', '', 'publish', 'closed', 'closed', '', '49', '', '', '2020-10-05 12:56:15', '2020-10-05 12:56:15', '', 0, 'http://wordpress/?p=49', 2, 'nav_menu_item', '', 0),
(50, 1, '2020-10-05 12:56:47', '2020-10-05 12:56:47', ' ', '', '', 'publish', 'closed', 'closed', '', '50', '', '', '2020-10-05 12:56:47', '2020-10-05 12:56:47', '', 14, 'http://wordpress/?p=50', 1, 'nav_menu_item', '', 0),
(51, 1, '2020-10-05 12:56:48', '2020-10-05 12:56:48', ' ', '', '', 'publish', 'closed', 'closed', '', '51', '', '', '2020-10-05 12:56:48', '2020-10-05 12:56:48', '', 3, 'http://wordpress/?p=51', 2, 'nav_menu_item', '', 0),
(52, 1, '2020-10-06 10:32:54', '2020-10-06 10:32:54', '', 'Home', '', 'publish', 'closed', 'closed', '', 'home', '', '', '2020-10-07 08:56:43', '2020-10-07 08:56:43', '', 0, 'http://wordpress/?page_id=52', 0, 'page', '', 0),
(53, 1, '2020-10-06 10:32:54', '2020-10-06 10:32:54', '', 'Home', '', 'inherit', 'closed', 'closed', '', '52-revision-v1', '', '', '2020-10-06 10:32:54', '2020-10-06 10:32:54', '', 52, 'http://wordpress/2020/10/06/52-revision-v1/', 0, 'revision', '', 0),
(54, 1, '2020-10-06 10:33:07', '2020-10-06 10:33:07', '', 'Blog', '', 'publish', 'closed', 'closed', '', 'blog', '', '', '2020-10-06 10:33:07', '2020-10-06 10:33:07', '', 0, 'http://wordpress/?page_id=54', 0, 'page', '', 0),
(55, 1, '2020-10-06 10:33:07', '2020-10-06 10:33:07', '', 'Blog', '', 'inherit', 'closed', 'closed', '', '54-revision-v1', '', '', '2020-10-06 10:33:07', '2020-10-06 10:33:07', '', 54, 'http://wordpress/2020/10/06/54-revision-v1/', 0, 'revision', '', 0),
(56, 1, '2020-10-06 11:49:37', '2020-10-06 11:49:37', '<!-- wp:paragraph -->\n<p>В мавзолее теперь продают шаурму.</p>\n<!-- /wp:paragraph -->', 'В мавзолее открылась шаурма', '', 'publish', 'open', 'open', '', '%d0%b2-%d0%bc%d0%b0%d0%b2%d0%b7%d0%be%d0%bb%d0%b5%d0%b5-%d0%be%d1%82%d0%ba%d1%80%d1%8b%d0%bb%d0%b0%d1%81%d1%8c-%d1%88%d0%b0%d1%83%d1%80%d0%bc%d0%b0', '', '', '2020-10-06 11:49:37', '2020-10-06 11:49:37', '', 0, 'http://wordpress/?p=56', 0, 'post', '', 0),
(57, 1, '2020-10-06 11:49:37', '2020-10-06 11:49:37', '<!-- wp:paragraph -->\n<p>В мавзолее теперь продают шаурму.</p>\n<!-- /wp:paragraph -->', 'В мавзолее открылась шаурма', '', 'inherit', 'closed', 'closed', '', '56-revision-v1', '', '', '2020-10-06 11:49:37', '2020-10-06 11:49:37', '', 56, 'http://wordpress/2020/10/06/56-revision-v1/', 0, 'revision', '', 0),
(58, 1, '2020-10-06 11:52:09', '2020-10-06 11:52:09', '<!-- wp:paragraph -->\n<p>Вандал в костюме Халка, уничтоживший звезду с именем президента США&nbsp;<a href=\"https://lenta.ru/tags/persons/tramp-donald/\" target=\"_blank\" rel=\"noreferrer noopener\">Дональда Трампа</a>&nbsp;на Аллее славы в Голливуде (Лос-Анджелес, США), оказалось, уже был осужден за то же самое действие в 2016 году. В этот раз он лишь повторил свой поступок, сообщает TMZ.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Изданию стало известно, что звезду разбил&nbsp;<a href=\"https://lenta.ru/tags/persons/otis-dzheyms/\" target=\"_blank\" rel=\"noreferrer noopener\">Джеймс Отис</a>&nbsp;— по данным полиции, мужчина заявлял о таком намерении в социальных сетях незадолго до этого. Позже он сам признался журналистам и полицейским, что под маской был именно он, и явился с повинной в полицейский участок. Сейчас он находится в заключении, но имеет возможность выйти под залог в 20 тысяч долларов.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Нанесенный им ущерб оценивают примерно в 3,6 тысячи долларов. Специалисты уже работают над восстановлением надписи. Сообщается, что Отис не отрицал своей вины и в прошлый раз — в 2016 году — и получил три года условного срока, исправительные работы и штраф в 4,4 тысячи долларов.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Звезду в честь Трампа установили в 2007 году, когда он еще не был президентом. Трамп получил ее за участие в шоу The Apprentice. С тех пор она неоднократно подвергалась нападению вандалов.</p>\n<!-- /wp:paragraph -->', 'Разбивший звезду Трампа в Голливуде вандал повторил свой поступок', '', 'publish', 'open', 'open', '', '%d1%80%d0%b0%d0%b7%d0%b1%d0%b8%d0%b2%d1%88%d0%b8%d0%b9-%d0%b7%d0%b2%d0%b5%d0%b7%d0%b4%d1%83-%d1%82%d1%80%d0%b0%d0%bc%d0%bf%d0%b0-%d0%b2-%d0%b3%d0%be%d0%bb%d0%bb%d0%b8%d0%b2%d1%83%d0%b4%d0%b5-%d0%b2', '', '', '2020-10-06 11:52:09', '2020-10-06 11:52:09', '', 0, 'http://wordpress/?p=58', 0, 'post', '', 0),
(59, 1, '2020-10-06 11:52:09', '2020-10-06 11:52:09', '<!-- wp:paragraph -->\n<p>Вандал в костюме Халка, уничтоживший звезду с именем президента США&nbsp;<a href=\"https://lenta.ru/tags/persons/tramp-donald/\" target=\"_blank\" rel=\"noreferrer noopener\">Дональда Трампа</a>&nbsp;на Аллее славы в Голливуде (Лос-Анджелес, США), оказалось, уже был осужден за то же самое действие в 2016 году. В этот раз он лишь повторил свой поступок, сообщает TMZ.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Изданию стало известно, что звезду разбил&nbsp;<a href=\"https://lenta.ru/tags/persons/otis-dzheyms/\" target=\"_blank\" rel=\"noreferrer noopener\">Джеймс Отис</a>&nbsp;— по данным полиции, мужчина заявлял о таком намерении в социальных сетях незадолго до этого. Позже он сам признался журналистам и полицейским, что под маской был именно он, и явился с повинной в полицейский участок. Сейчас он находится в заключении, но имеет возможность выйти под залог в 20 тысяч долларов.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Нанесенный им ущерб оценивают примерно в 3,6 тысячи долларов. Специалисты уже работают над восстановлением надписи. Сообщается, что Отис не отрицал своей вины и в прошлый раз — в 2016 году — и получил три года условного срока, исправительные работы и штраф в 4,4 тысячи долларов.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Звезду в честь Трампа установили в 2007 году, когда он еще не был президентом. Трамп получил ее за участие в шоу The Apprentice. С тех пор она неоднократно подвергалась нападению вандалов.</p>\n<!-- /wp:paragraph -->', 'Разбивший звезду Трампа в Голливуде вандал повторил свой поступок', '', 'inherit', 'closed', 'closed', '', '58-revision-v1', '', '', '2020-10-06 11:52:09', '2020-10-06 11:52:09', '', 58, 'http://wordpress/2020/10/06/58-revision-v1/', 0, 'revision', '', 0),
(60, 1, '2020-10-06 11:53:08', '2020-10-06 11:53:08', '<!-- wp:paragraph -->\n<p>В зону конфликта в Нагорном Карабахе устремились боевики террористических организаций. Об этом заявил глава Службы внешней разведки (СВР) России&nbsp;<a href=\"https://lenta.ru/tags/persons/naryshkin-sergey/\" target=\"_blank\" rel=\"noreferrer noopener\">Сергей Нарышкин</a>, передает&nbsp;<a href=\"http://tass.ru/\" target=\"_blank\" rel=\"noreferrer noopener\">ТАСС</a>.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>По словам Нарышкина, Закавказье может стать новым плацдармом для сотен террористов из международных организаций, которые могут в будущем попасть в соседствующие с Азербайджаном и Арменией государства, в том числе и в Россию. По данным СВР, в зону конфликта направляются боевики «<a href=\"https://lenta.ru/tags/organizations/dzhebhat-an-nusra/\" target=\"_blank\" rel=\"noreferrer noopener\">Джебхат ан-Нусра</a>» (запрещена в России), а также экстремистских курдских группировок и тысячи радикалов, которые хотят заработать на войне.</p>\n<!-- /wp:paragraph -->', 'Глава СВР заявил об устремлении террористов в зону конфликта в Нагорном Карабахе', '', 'publish', 'open', 'open', '', '%d0%b3%d0%bb%d0%b0%d0%b2%d0%b0-%d1%81%d0%b2%d1%80-%d0%b7%d0%b0%d1%8f%d0%b2%d0%b8%d0%bb-%d0%be%d0%b1-%d1%83%d1%81%d1%82%d1%80%d0%b5%d0%bc%d0%bb%d0%b5%d0%bd%d0%b8%d0%b8-%d1%82%d0%b5%d1%80%d1%80%d0%be', '', '', '2020-10-06 11:53:08', '2020-10-06 11:53:08', '', 0, 'http://wordpress/?p=60', 0, 'post', '', 0),
(61, 1, '2020-10-06 11:53:08', '2020-10-06 11:53:08', '<!-- wp:paragraph -->\n<p>В зону конфликта в Нагорном Карабахе устремились боевики террористических организаций. Об этом заявил глава Службы внешней разведки (СВР) России&nbsp;<a href=\"https://lenta.ru/tags/persons/naryshkin-sergey/\" target=\"_blank\" rel=\"noreferrer noopener\">Сергей Нарышкин</a>, передает&nbsp;<a href=\"http://tass.ru/\" target=\"_blank\" rel=\"noreferrer noopener\">ТАСС</a>.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>По словам Нарышкина, Закавказье может стать новым плацдармом для сотен террористов из международных организаций, которые могут в будущем попасть в соседствующие с Азербайджаном и Арменией государства, в том числе и в Россию. По данным СВР, в зону конфликта направляются боевики «<a href=\"https://lenta.ru/tags/organizations/dzhebhat-an-nusra/\" target=\"_blank\" rel=\"noreferrer noopener\">Джебхат ан-Нусра</a>» (запрещена в России), а также экстремистских курдских группировок и тысячи радикалов, которые хотят заработать на войне.</p>\n<!-- /wp:paragraph -->', 'Глава СВР заявил об устремлении террористов в зону конфликта в Нагорном Карабахе', '', 'inherit', 'closed', 'closed', '', '60-revision-v1', '', '', '2020-10-06 11:53:08', '2020-10-06 11:53:08', '', 60, 'http://wordpress/2020/10/06/60-revision-v1/', 0, 'revision', '', 0);
INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(62, 1, '2020-10-06 11:54:17', '2020-10-06 11:54:17', '<!-- wp:paragraph -->\n<p>Китайская компания Radxa на днях&nbsp;<a href=\"https://liliputing.com/2020/10/the-59-rock-pi-x-is-like-a-windows-compatible-raspberry-pi-with-an-x86-processor.html\">выпустила одноплатный ПК Rock Pi X</a>. Это событие могло бы пройти никем не замеченным, если бы не особенности новинки. Дело в том, что она базируется на процессоре x86 и работает с Windows 10 без «костылей», нативно. Естественно, плата совместима с Linux.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Кроме Rock Pi X, есть и другие одноплатники, заявляющие о поддержке Windows, но они совместимы лишь со специализированной версией этой ОС, которая называется Windows IoT. А вот Rock Pi — это ПК, совместимый с полноценной ОС.</p>\n<!-- /wp:paragraph -->', 'Представлен конкурент Raspberry Pi 4 — одноплатный П', '', 'publish', 'open', 'open', '', '%d0%bf%d1%80%d0%b5%d0%b4%d1%81%d1%82%d0%b0%d0%b2%d0%bb%d0%b5%d0%bd-%d0%ba%d0%be%d0%bd%d0%ba%d1%83%d1%80%d0%b5%d0%bd%d1%82-raspberry-pi-4-%d0%be%d0%b4%d0%bd%d0%be%d0%bf%d0%bb%d0%b0%d1%82', '', '', '2020-10-06 11:54:17', '2020-10-06 11:54:17', '', 0, 'http://wordpress/?p=62', 0, 'post', '', 0),
(63, 1, '2020-10-06 11:54:17', '2020-10-06 11:54:17', '<!-- wp:paragraph -->\n<p>Китайская компания Radxa на днях&nbsp;<a href=\"https://liliputing.com/2020/10/the-59-rock-pi-x-is-like-a-windows-compatible-raspberry-pi-with-an-x86-processor.html\">выпустила одноплатный ПК Rock Pi X</a>. Это событие могло бы пройти никем не замеченным, если бы не особенности новинки. Дело в том, что она базируется на процессоре x86 и работает с Windows 10 без «костылей», нативно. Естественно, плата совместима с Linux.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Кроме Rock Pi X, есть и другие одноплатники, заявляющие о поддержке Windows, но они совместимы лишь со специализированной версией этой ОС, которая называется Windows IoT. А вот Rock Pi — это ПК, совместимый с полноценной ОС.</p>\n<!-- /wp:paragraph -->', 'Представлен конкурент Raspberry Pi 4 — одноплатный П', '', 'inherit', 'closed', 'closed', '', '62-revision-v1', '', '', '2020-10-06 11:54:17', '2020-10-06 11:54:17', '', 62, 'http://wordpress/2020/10/06/62-revision-v1/', 0, 'revision', '', 0),
(64, 1, '2020-10-06 11:55:12', '2020-10-06 11:55:12', '<!-- wp:paragraph -->\n<p>Newspaper (OpenNews.opennet.ru: Общая лента новостей) После года разработки представлен значительный выпуск языка программирования Python 3.9. Python 3.9 стал первым выпуском после перехода проекта на новый цикл подготовки и сопровождения релизов.</p>\n<!-- /wp:paragraph -->', 'Выпуск языка программирования Python 3.9', '', 'publish', 'open', 'open', '', '%d0%b2%d1%8b%d0%bf%d1%83%d1%81%d0%ba-%d1%8f%d0%b7%d1%8b%d0%ba%d0%b0-%d0%bf%d1%80%d0%be%d0%b3%d1%80%d0%b0%d0%bc%d0%bc%d0%b8%d1%80%d0%be%d0%b2%d0%b0%d0%bd%d0%b8%d1%8f-python-3-9', '', '', '2020-10-06 11:55:12', '2020-10-06 11:55:12', '', 0, 'http://wordpress/?p=64', 0, 'post', '', 0),
(65, 1, '2020-10-06 11:55:12', '2020-10-06 11:55:12', '<!-- wp:paragraph -->\n<p>Newspaper (OpenNews.opennet.ru: Общая лента новостей) После года разработки представлен значительный выпуск языка программирования Python 3.9. Python 3.9 стал первым выпуском после перехода проекта на новый цикл подготовки и сопровождения релизов.</p>\n<!-- /wp:paragraph -->', 'Выпуск языка программирования Python 3.9', '', 'inherit', 'closed', 'closed', '', '64-revision-v1', '', '', '2020-10-06 11:55:12', '2020-10-06 11:55:12', '', 64, 'http://wordpress/2020/10/06/64-revision-v1/', 0, 'revision', '', 0),
(66, 1, '2020-10-06 11:56:08', '2020-10-06 11:56:08', '<!-- wp:paragraph -->\n<p>Бывшему президенту Киргизии Алмазбеку Атамбаеву, осужденному на 11,2 года по нескольким статьям, изменили меру пресечения с заключения под стражу на домашний арест сроком до 11 ноября.</p>\n<!-- /wp:paragraph -->', 'Адвокат сообщил об изменении меры пресечения экс-президенту Киргизии', '', 'publish', 'open', 'open', '', '%d0%b0%d0%b4%d0%b2%d0%be%d0%ba%d0%b0%d1%82-%d1%81%d0%be%d0%be%d0%b1%d1%89%d0%b8%d0%bb-%d0%be%d0%b1-%d0%b8%d0%b7%d0%bc%d0%b5%d0%bd%d0%b5%d0%bd%d0%b8%d0%b8-%d0%bc%d0%b5%d1%80%d1%8b-%d0%bf%d1%80%d0%b5', '', '', '2020-10-06 11:56:08', '2020-10-06 11:56:08', '', 0, 'http://wordpress/?p=66', 0, 'post', '', 0),
(67, 1, '2020-10-06 11:56:08', '2020-10-06 11:56:08', '<!-- wp:paragraph -->\n<p>Бывшему президенту Киргизии Алмазбеку Атамбаеву, осужденному на 11,2 года по нескольким статьям, изменили меру пресечения с заключения под стражу на домашний арест сроком до 11 ноября.</p>\n<!-- /wp:paragraph -->', 'Адвокат сообщил об изменении меры пресечения экс-президенту Киргизии', '', 'inherit', 'closed', 'closed', '', '66-revision-v1', '', '', '2020-10-06 11:56:08', '2020-10-06 11:56:08', '', 66, 'http://wordpress/2020/10/06/66-revision-v1/', 0, 'revision', '', 0),
(68, 1, '2020-10-06 11:56:58', '2020-10-06 11:56:58', '<!-- wp:paragraph -->\n<p>Мэр Москвы Сергей Собянин в своем блоге написал, что ситуация с распространением коронавирусной инфекции в столице с каждым днем становится драматичнее.</p>\n<!-- /wp:paragraph -->', 'Собянин заявил о ставшей более драматичной ситуации с COVID-19 в Москве', '', 'publish', 'open', 'open', '', '%d1%81%d0%be%d0%b1%d1%8f%d0%bd%d0%b8%d0%bd-%d0%b7%d0%b0%d1%8f%d0%b2%d0%b8%d0%bb-%d0%be-%d1%81%d1%82%d0%b0%d0%b2%d1%88%d0%b5%d0%b9-%d0%b1%d0%be%d0%bb%d0%b5%d0%b5-%d0%b4%d1%80%d0%b0%d0%bc%d0%b0%d1%82', '', '', '2020-10-06 11:56:58', '2020-10-06 11:56:58', '', 0, 'http://wordpress/?p=68', 0, 'post', '', 0),
(69, 1, '2020-10-06 11:56:58', '2020-10-06 11:56:58', '<!-- wp:paragraph -->\n<p>Мэр Москвы Сергей Собянин в своем блоге написал, что ситуация с распространением коронавирусной инфекции в столице с каждым днем становится драматичнее.</p>\n<!-- /wp:paragraph -->', 'Собянин заявил о ставшей более драматичной ситуации с COVID-19 в Москве', '', 'inherit', 'closed', 'closed', '', '68-revision-v1', '', '', '2020-10-06 11:56:58', '2020-10-06 11:56:58', '', 68, 'http://wordpress/2020/10/06/68-revision-v1/', 0, 'revision', '', 0),
(70, 1, '2020-10-07 08:56:12', '2020-10-07 08:56:12', '', 'Home111', '', 'inherit', 'closed', 'closed', '', '52-revision-v1', '', '', '2020-10-07 08:56:12', '2020-10-07 08:56:12', '', 52, 'http://wordpress/2020/10/07/52-revision-v1/', 0, 'revision', '', 0),
(71, 1, '2020-10-07 08:56:43', '2020-10-07 08:56:43', '', 'Home', '', 'inherit', 'closed', 'closed', '', '52-revision-v1', '', '', '2020-10-07 08:56:43', '2020-10-07 08:56:43', '', 52, 'http://wordpress/2020/10/07/52-revision-v1/', 0, 'revision', '', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `wp_termmeta`
--

CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_terms`
--

CREATE TABLE `wp_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Uncategorized', 'uncategorized', 0),
(2, 'My Main Header Menu', 'my-main-header-menu', 0),
(3, 'My magic menu', 'my-magic-menu', 0),
(4, 'Super menu', 'super-menu', 0),
(5, 'Важное', '%d0%b2%d0%b0%d0%b6%d0%bd%d0%be%d0%b5', 0),
(6, 'Главное', '%d0%b3%d0%bb%d0%b0%d0%b2%d0%bd%d0%be%d0%b5', 0),
(7, 'Россия', '%d1%80%d0%be%d1%81%d1%81%d0%b8%d1%8f', 0),
(8, 'Технологии', '%d1%82%d0%b5%d1%85%d0%bd%d0%be%d0%bb%d0%be%d0%b3%d0%b8%d0%b8', 0),
(9, 'Политика', '%d0%bf%d0%be%d0%bb%d0%b8%d1%82%d0%b8%d0%ba%d0%b0', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `wp_term_relationships`
--

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `term_order` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(6, 1, 0),
(8, 1, 0),
(10, 1, 0),
(33, 1, 0),
(44, 2, 0),
(45, 2, 0),
(46, 2, 0),
(47, 2, 0),
(48, 3, 0),
(49, 3, 0),
(50, 4, 0),
(51, 4, 0),
(56, 5, 0),
(58, 6, 0),
(60, 7, 0),
(62, 8, 0),
(64, 8, 0),
(66, 9, 0),
(68, 5, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `wp_term_taxonomy`
--

CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `count` bigint(20) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 4),
(2, 2, 'nav_menu', '', 0, 4),
(3, 3, 'nav_menu', '', 0, 2),
(4, 4, 'nav_menu', '', 0, 2),
(5, 5, 'category', 'Самое важное что происходит в мире', 0, 2),
(6, 6, 'category', 'Главное на сегодня', 0, 1),
(7, 7, 'category', 'Что происходит в России', 0, 1),
(8, 8, 'category', 'Техонологические новости', 0, 2),
(9, 9, 'category', 'Все про политику', 0, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `wp_usermeta`
--

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'admin'),
(2, 1, 'first_name', 'Александр'),
(3, 1, 'last_name', ''),
(4, 1, 'description', 'Профессиональный журналист.'),
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
(16, 1, 'session_tokens', 'a:1:{s:64:\"a497e70c38123c979fbf200cf442ee33728c2f0c2302f498c3a1ad536cc6bf54\";a:4:{s:10:\"expiration\";i:1602844571;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:115:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.121 Safari/537.36\";s:5:\"login\";i:1601634971;}}'),
(17, 1, 'wp_dashboard_quick_press_last_post_id', '16'),
(18, 1, 'community-events-location', 'a:1:{s:2:\"ip\";s:9:\"127.0.0.0\";}'),
(19, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:\"link-target\";i:1;s:11:\"css-classes\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";i:4;s:15:\"title-attribute\";}'),
(20, 1, 'metaboxhidden_nav-menus', 'a:2:{i:0;s:18:\"add-post-type-book\";i:1;s:12:\"add-post_tag\";}'),
(21, 1, 'nav_menu_recently_edited', '4');

-- --------------------------------------------------------

--
-- Структура таблицы `wp_users`
--

CREATE TABLE `wp_users` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT 0,
  `display_name` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'admin', '$P$B5NIzcpfk3T6GXfM7s24tsuQKAYYmV/', 'admin', 'master8423@gmail.com', 'http://wordpress', '2020-09-18 06:56:53', '', 0, 'Александр');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Индексы таблицы `wp_comments`
--
ALTER TABLE `wp_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10));

--
-- Индексы таблицы `wp_links`
--
ALTER TABLE `wp_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Индексы таблицы `wp_options`
--
ALTER TABLE `wp_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`),
  ADD KEY `autoload` (`autoload`);

--
-- Индексы таблицы `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Индексы таблицы `wp_posts`
--
ALTER TABLE `wp_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Индексы таблицы `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Индексы таблицы `wp_terms`
--
ALTER TABLE `wp_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Индексы таблицы `wp_term_relationships`
--
ALTER TABLE `wp_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Индексы таблицы `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Индексы таблицы `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Индексы таблицы `wp_users`
--
ALTER TABLE `wp_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `wp_comments`
--
ALTER TABLE `wp_comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `wp_links`
--
ALTER TABLE `wp_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `wp_options`
--
ALTER TABLE `wp_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=561;

--
-- AUTO_INCREMENT для таблицы `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=198;

--
-- AUTO_INCREMENT для таблицы `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=72;

--
-- AUTO_INCREMENT для таблицы `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `wp_terms`
--
ALTER TABLE `wp_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT для таблицы `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT для таблицы `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT для таблицы `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
