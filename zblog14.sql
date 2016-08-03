-- MySQL dump 10.13  Distrib 5.5.48, for Linux (x86_64)
--
-- Host: localhost    Database: zb14_ig_com
-- ------------------------------------------------------
-- Server version	5.5.48-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Current Database: `zb14_ig_com`
--

-- CREATE DATABASE /*!32312 IF NOT EXISTS*/ `zb14_ig_com` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

-- USE `zb14_ig_com`;

--
-- Table structure for table `zb14_category`
--

DROP TABLE IF EXISTS `zb14_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zb14_category` (
  `cate_ID` int(11) NOT NULL AUTO_INCREMENT,
  `cate_Name` varchar(50) NOT NULL DEFAULT '',
  `cate_Order` int(11) NOT NULL DEFAULT '0',
  `cate_Count` int(11) NOT NULL DEFAULT '0',
  `cate_Alias` varchar(255) NOT NULL DEFAULT '',
  `cate_Intro` text NOT NULL,
  `cate_RootID` int(11) NOT NULL DEFAULT '0',
  `cate_ParentID` int(11) NOT NULL DEFAULT '0',
  `cate_Template` varchar(50) NOT NULL DEFAULT '',
  `cate_LogTemplate` varchar(50) NOT NULL DEFAULT '',
  `cate_Meta` longtext NOT NULL,
  PRIMARY KEY (`cate_ID`),
  KEY `zb14_cate_Order` (`cate_Order`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zb14_category`
--

LOCK TABLES `zb14_category` WRITE;
/*!40000 ALTER TABLE `zb14_category` DISABLE KEYS */;
INSERT INTO `zb14_category` VALUES (1,'未分类',0,0,'uncategorized','',0,0,'','','');
/*!40000 ALTER TABLE `zb14_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zb14_comment`
--

DROP TABLE IF EXISTS `zb14_comment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zb14_comment` (
  `comm_ID` int(11) NOT NULL AUTO_INCREMENT,
  `comm_LogID` int(11) NOT NULL DEFAULT '0',
  `comm_IsChecking` tinyint(1) NOT NULL DEFAULT '0',
  `comm_RootID` int(11) NOT NULL DEFAULT '0',
  `comm_ParentID` int(11) NOT NULL DEFAULT '0',
  `comm_AuthorID` int(11) NOT NULL DEFAULT '0',
  `comm_Name` varchar(20) NOT NULL DEFAULT '',
  `comm_Email` varchar(50) NOT NULL DEFAULT '',
  `comm_HomePage` varchar(255) NOT NULL DEFAULT '',
  `comm_Content` text NOT NULL,
  `comm_PostTime` int(11) NOT NULL DEFAULT '0',
  `comm_IP` varchar(15) NOT NULL DEFAULT '',
  `comm_Agent` text NOT NULL,
  `comm_Meta` longtext NOT NULL,
  PRIMARY KEY (`comm_ID`),
  KEY `zb14_comm_LRI` (`comm_LogID`,`comm_RootID`,`comm_IsChecking`),
  KEY `zb14_comm_IsChecking` (`comm_IsChecking`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zb14_comment`
--

LOCK TABLES `zb14_comment` WRITE;
/*!40000 ALTER TABLE `zb14_comment` DISABLE KEYS */;
/*!40000 ALTER TABLE `zb14_comment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zb14_config`
--

DROP TABLE IF EXISTS `zb14_config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zb14_config` (
  `conf_ID` int(11) NOT NULL AUTO_INCREMENT,
  `conf_Name` varchar(50) NOT NULL DEFAULT '',
  `conf_Value` text,
  PRIMARY KEY (`conf_ID`),
  KEY `zb14_conf_Name` (`conf_Name`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zb14_config`
--

LOCK TABLES `zb14_config` WRITE;
/*!40000 ALTER TABLE `zb14_config` DISABLE KEYS */;
INSERT INTO `zb14_config` VALUES (1,'system','a:105:{s:15:\"ZC_SITE_TURNOFF\";b:0;s:12:\"ZC_BLOG_HOST\";s:34:\"h|t|t|p|:|/|/|l|o|c|a|l|h|o|s|t|/|\";s:12:\"ZC_BLOG_NAME\";s:6:\"myzb14\";s:15:\"ZC_BLOG_SUBNAME\";s:17:\"Good Luck To You!\";s:13:\"ZC_BLOG_THEME\";s:9:\"WhitePage\";s:11:\"ZC_BLOG_CSS\";s:7:\"default\";s:17:\"ZC_BLOG_COPYRIGHT\";s:44:\"Copyright Your WebSite.Some Rights Reserved.\";s:16:\"ZC_BLOG_LANGUAGE\";s:5:\"zh-CN\";s:20:\"ZC_BLOG_LANGUAGEPACK\";s:5:\"zh-cn\";s:16:\"ZC_DATABASE_TYPE\";s:6:\"mysqli\";s:14:\"ZC_SQLITE_NAME\";s:0:\"\";s:13:\"ZC_SQLITE_PRE\";s:4:\"zbp_\";s:15:\"ZC_MYSQL_SERVER\";s:9:\"localhost\";s:17:\"ZC_MYSQL_USERNAME\";s:4:\"zb14\";s:17:\"ZC_MYSQL_PASSWORD\";s:6:\"123456\";s:13:\"ZC_MYSQL_NAME\";s:11:\"zb14_ig_com\";s:16:\"ZC_MYSQL_CHARSET\";s:4:\"utf8\";s:12:\"ZC_MYSQL_PRE\";s:5:\"zb14_\";s:15:\"ZC_MYSQL_ENGINE\";s:6:\"MyISAM\";s:13:\"ZC_MYSQL_PORT\";s:4:\"3306\";s:19:\"ZC_MYSQL_PERSISTENT\";b:0;s:15:\"ZC_PGSQL_SERVER\";s:9:\"localhost\";s:17:\"ZC_PGSQL_USERNAME\";s:8:\"postgres\";s:17:\"ZC_PGSQL_PASSWORD\";s:0:\"\";s:13:\"ZC_PGSQL_NAME\";s:0:\"\";s:16:\"ZC_PGSQL_CHARSET\";s:4:\"utf8\";s:12:\"ZC_PGSQL_PRE\";s:4:\"zbp_\";s:13:\"ZC_PGSQL_PORT\";s:4:\"5432\";s:19:\"ZC_PGSQL_PERSISTENT\";b:0;s:20:\"ZC_USING_PLUGIN_LIST\";s:17:\"AppCentre|UEditor\";s:11:\"ZC_YUN_SITE\";s:0:\"\";s:13:\"ZC_BLOG_CLSID\";s:22:\"57884e5e0f207023487483\";s:17:\"ZC_TIME_ZONE_NAME\";s:13:\"Asia/Shanghai\";s:18:\"ZC_UPDATE_INFO_URL\";s:31:\"http://update.zblogcn.com/info/\";s:26:\"ZC_PERMANENT_DOMAIN_ENABLE\";b:0;s:28:\"ZC_PERMANENT_DOMAIN_REDIRECT\";b:1;s:23:\"ZC_MULTI_DOMAIN_SUPPORT\";b:0;s:13:\"ZC_DEBUG_MODE\";b:1;s:20:\"ZC_DEBUG_MODE_STRICT\";b:0;s:21:\"ZC_DEBUG_MODE_WARNING\";b:1;s:18:\"ZC_DEBUG_LOG_ERROR\";b:0;s:15:\"ZC_BLOG_PRODUCT\";s:9:\"Z-BlogPHP\";s:15:\"ZC_BLOG_VERSION\";s:24:\"1.4 Deeplue Build 150101\";s:20:\"ZC_BLOG_PRODUCT_FULL\";s:0:\"\";s:20:\"ZC_BLOG_PRODUCT_HTML\";s:0:\"\";s:24:\"ZC_BLOG_PRODUCT_FULLHTML\";s:0:\"\";s:18:\"ZC_COMMENT_TURNOFF\";b:0;s:24:\"ZC_COMMENT_VERIFY_ENABLE\";b:0;s:24:\"ZC_COMMENT_REVERSE_ORDER\";b:0;s:20:\"ZC_VERIFYCODE_STRING\";s:30:\"ABCDEFGHKMNPRSTUVWXYZ123456789\";s:19:\"ZC_VERIFYCODE_WIDTH\";i:90;s:20:\"ZC_VERIFYCODE_HEIGHT\";i:30;s:18:\"ZC_VERIFYCODE_FONT\";s:26:\"zb_system/defend/arial.ttf\";s:16:\"ZC_DISPLAY_COUNT\";i:10;s:15:\"ZC_SEARCH_COUNT\";i:25;s:16:\"ZC_PAGEBAR_COUNT\";i:10;s:25:\"ZC_COMMENTS_DISPLAY_COUNT\";i:100;s:23:\"ZC_DISPLAY_SUBCATEGORYS\";b:0;s:13:\"ZC_RSS2_COUNT\";i:10;s:19:\"ZC_RSS_EXPORT_WHOLE\";b:1;s:15:\"ZC_MANAGE_COUNT\";i:50;s:21:\"ZC_EMOTICONS_FILENAME\";s:4:\"face\";s:21:\"ZC_EMOTICONS_FILETYPE\";s:11:\"png|gif|jpg\";s:21:\"ZC_EMOTICONS_FILESIZE\";s:2:\"16\";s:18:\"ZC_UPLOAD_FILETYPE\";s:185:\"jpg|gif|png|jpeg|bmp|psd|wmf|ico|rpm|deb|tar|gz|sit|7z|bz2|zip|rar|xml|xsl|svg|svgz|doc|docx|ppt|pptx|xls|xlsx|wps|chm|txt|pdf|mp3|avi|mpg|rm|ra|rmvb|mov|wmv|wma|swf|fla|torrent|apk|zba\";s:18:\"ZC_UPLOAD_FILESIZE\";i:2;s:15:\"ZC_USERNAME_MIN\";i:3;s:15:\"ZC_USERNAME_MAX\";i:50;s:15:\"ZC_PASSWORD_MIN\";i:8;s:15:\"ZC_PASSWORD_MAX\";i:20;s:12:\"ZC_EMAIL_MAX\";i:50;s:15:\"ZC_HOMEPAGE_MAX\";i:100;s:14:\"ZC_CONTENT_MAX\";i:1000;s:22:\"ZC_ARTICLE_EXCERPT_MAX\";i:250;s:22:\"ZC_COMMENT_EXCERPT_MAX\";i:20;s:14:\"ZC_STATIC_MODE\";s:6:\"ACTIVE\";s:16:\"ZC_ARTICLE_REGEX\";s:18:\"{%host%}?id={%id%}\";s:13:\"ZC_PAGE_REGEX\";s:18:\"{%host%}?id={%id%}\";s:17:\"ZC_CATEGORY_REGEX\";s:34:\"{%host%}?cate={%id%}&page={%page%}\";s:15:\"ZC_AUTHOR_REGEX\";s:34:\"{%host%}?auth={%id%}&page={%page%}\";s:13:\"ZC_TAGS_REGEX\";s:34:\"{%host%}?tags={%id%}&page={%page%}\";s:13:\"ZC_DATE_REGEX\";s:36:\"{%host%}?date={%date%}&page={%page%}\";s:14:\"ZC_INDEX_REGEX\";s:22:\"{%host%}?page={%page%}\";s:25:\"ZC_INDEX_DEFAULT_TEMPLATE\";s:5:\"index\";s:24:\"ZC_POST_DEFAULT_TEMPLATE\";s:6:\"single\";s:16:\"ZC_SIDEBAR_ORDER\";s:78:\"calendar|controlpanel|catalog|searchpanel|comments|archives|favorite|link|misc\";s:17:\"ZC_SIDEBAR2_ORDER\";s:0:\"\";s:17:\"ZC_SIDEBAR3_ORDER\";s:0:\"\";s:17:\"ZC_SIDEBAR4_ORDER\";s:0:\"\";s:17:\"ZC_SIDEBAR5_ORDER\";s:0:\"\";s:14:\"ZC_GZIP_ENABLE\";b:0;s:21:\"ZC_ADMIN_HTML5_ENABLE\";b:1;s:27:\"ZC_SYNTAXHIGHLIGHTER_ENABLE\";b:1;s:20:\"ZC_LOADMEMBERS_LEVEL\";i:0;s:15:\"ZC_LAST_VERSION\";i:150101;s:20:\"ZC_CODEMIRROR_ENABLE\";b:1;s:20:\"ZC_HTTP_LASTMODIFIED\";b:0;s:23:\"ZC_MODULE_CATALOG_STYLE\";i:0;s:19:\"ZC_VIEWNUMS_TURNOFF\";b:0;s:20:\"ZC_LISTONTOP_TURNOFF\";b:0;s:20:\"ZC_RELATEDLIST_COUNT\";i:10;s:18:\"ZC_RUNINFO_DISPLAY\";b:1;s:30:\"ZC_POST_ALIAS_USE_ID_NOT_TITLE\";b:0;s:21:\"ZC_COMPATIBLE_ASP_URL\";b:1;s:13:\"ZC_LARGE_DATA\";b:0;}'),(2,'cache','a:1:{s:13:\"templates_md5\";s:0:\"\";}'),(3,'AppCentre','a:4:{s:12:\"enabledcheck\";i:1;s:9:\"checkbeta\";i:0;s:13:\"enabledevelop\";i:0;s:13:\"enablegzipapp\";i:0;}'),(4,'WhitePage','a:5:{s:15:\"custom_pagetype\";s:1:\"5\";s:16:\"custom_pagewidth\";s:4:\"1200\";s:16:\"custom_headtitle\";s:6:\"center\";s:14:\"custom_bgcolor\";s:6:\"6699ff\";s:11:\"text_indent\";s:1:\"0\";}');
/*!40000 ALTER TABLE `zb14_config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zb14_counter`
--

DROP TABLE IF EXISTS `zb14_counter`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zb14_counter` (
  `coun_ID` int(11) NOT NULL AUTO_INCREMENT,
  `coun_MemID` int(11) NOT NULL DEFAULT '0',
  `coun_IP` varchar(15) NOT NULL DEFAULT '',
  `coun_Agent` text NOT NULL,
  `coun_Refer` varchar(255) NOT NULL DEFAULT '',
  `coun_Title` varchar(255) NOT NULL DEFAULT '',
  `coun_PostTime` int(11) NOT NULL DEFAULT '0',
  `coun_Description` text NOT NULL,
  `coun_PostData` text NOT NULL,
  `coun_AllRequestHeader` text NOT NULL,
  PRIMARY KEY (`coun_ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zb14_counter`
--

LOCK TABLES `zb14_counter` WRITE;
/*!40000 ALTER TABLE `zb14_counter` DISABLE KEYS */;
/*!40000 ALTER TABLE `zb14_counter` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zb14_member`
--

DROP TABLE IF EXISTS `zb14_member`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zb14_member` (
  `mem_ID` int(11) NOT NULL AUTO_INCREMENT,
  `mem_Guid` varchar(36) NOT NULL DEFAULT '',
  `mem_Level` tinyint(4) NOT NULL DEFAULT '0',
  `mem_Status` tinyint(4) NOT NULL DEFAULT '0',
  `mem_Name` varchar(50) NOT NULL DEFAULT '',
  `mem_Password` varchar(32) NOT NULL DEFAULT '',
  `mem_Email` varchar(50) NOT NULL DEFAULT '',
  `mem_HomePage` varchar(255) NOT NULL DEFAULT '',
  `mem_IP` varchar(15) NOT NULL DEFAULT '',
  `mem_PostTime` int(11) NOT NULL DEFAULT '0',
  `mem_Alias` varchar(50) NOT NULL DEFAULT '',
  `mem_Intro` text NOT NULL,
  `mem_Articles` int(11) NOT NULL DEFAULT '0',
  `mem_Pages` int(11) NOT NULL DEFAULT '0',
  `mem_Comments` int(11) NOT NULL DEFAULT '0',
  `mem_Uploads` int(11) NOT NULL DEFAULT '0',
  `mem_Template` varchar(50) NOT NULL DEFAULT '',
  `mem_Meta` longtext NOT NULL,
  PRIMARY KEY (`mem_ID`),
  KEY `zb14_mem_Name` (`mem_Name`),
  KEY `zb14_mem_Alias` (`mem_Alias`),
  KEY `zb14_mem_Level` (`mem_Level`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zb14_member`
--

LOCK TABLES `zb14_member` WRITE;
/*!40000 ALTER TABLE `zb14_member` DISABLE KEYS */;
INSERT INTO `zb14_member` VALUES (1,'57884e5e0fbf5293734681',1,0,'admin','d68863056527f2f1dccf3bc6b597ee29','','','10.10.180.13',1468550750,'','',0,0,0,0,'','');
/*!40000 ALTER TABLE `zb14_member` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zb14_module`
--

DROP TABLE IF EXISTS `zb14_module`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zb14_module` (
  `mod_ID` int(11) NOT NULL AUTO_INCREMENT,
  `mod_Name` varchar(100) NOT NULL DEFAULT '',
  `mod_FileName` varchar(50) NOT NULL DEFAULT '',
  `mod_Content` text NOT NULL,
  `mod_SidebarID` int(11) NOT NULL DEFAULT '0',
  `mod_HtmlID` varchar(50) NOT NULL DEFAULT '',
  `mod_Type` varchar(5) NOT NULL DEFAULT '',
  `mod_MaxLi` int(11) NOT NULL DEFAULT '0',
  `mod_Source` varchar(50) NOT NULL DEFAULT '',
  `mod_IsHideTitle` tinyint(1) NOT NULL DEFAULT '0',
  `mod_Meta` longtext NOT NULL,
  PRIMARY KEY (`mod_ID`)
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zb14_module`
--

LOCK TABLES `zb14_module` WRITE;
/*!40000 ALTER TABLE `zb14_module` DISABLE KEYS */;
INSERT INTO `zb14_module` VALUES (1,'导航栏','navbar','<li id=\"nvabar-item-index\"><a href=\"{#ZC_BLOG_HOST#}\">首页</a></li><li id=\"navbar-page-2\"><a href=\"{#ZC_BLOG_HOST#}?id=2\">留言本</a></li>',0,'divNavBar','ul',0,'system',0,''),(2,'日历','calendar','',0,'divCalendar','div',0,'system',1,''),(3,'控制面板','controlpanel','<span class=\"cp-hello\">您好,欢迎到访网站!</span><br/><span class=\"cp-login\"><a href=\"{#ZC_BLOG_HOST#}zb_system/cmd.php?act=login\">登录后台</a></span>&nbsp;&nbsp;<span class=\"cp-vrs\"><a href=\"{#ZC_BLOG_HOST#}zb_system/cmd.php?act=misc&amp;type=vrs\">查看权限</a></span>',0,'divContorPanel','div',0,'system',0,''),(4,'网站分类','catalog','',0,'divCatalog','ul',0,'system',0,''),(5,'搜索','searchpanel','<form name=\"search\" method=\"post\" action=\"{#ZC_BLOG_HOST#}zb_system/cmd.php?act=search\"><input type=\"text\" name=\"q\" size=\"11\" /> <input type=\"submit\" value=\"搜索\" /></form>',0,'divSearchPanel','div',0,'system',0,''),(6,'最新留言','comments','',0,'divComments','ul',0,'system',0,''),(7,'文章归档','archives','',0,'divArchives','ul',0,'system',0,''),(8,'站点信息','statistics','',0,'divStatistics','ul',0,'system',0,''),(9,'网站收藏','favorite','<li><a href=\"http://bbs.zblogcn.com/\" target=\"_blank\">ZBlogger社区</a></li><li><a href=\"http://app.zblogcn.com/\" target=\"_blank\">Z-Blog应用中心</a></li><li><a href=\"http://weibo.com/zblogcn\" target=\"_blank\">Z-Blog新浪官微</a></li><li><a href=\"http://t.qq.com/zblogcn\" target=\"_blank\">Z-Blog腾讯官微</a></li>',0,'divFavorites','ul',0,'system',0,''),(10,'友情链接','link','<li><a href=\"http://www.dbshost.cn/\" target=\"_blank\" title=\"独立博客服务 Z-Blog官方主机\">DBS主机</a></li>',0,'divLinkage','ul',0,'system',0,''),(11,'图标汇集','misc','<li><a href=\"http://www.zblogcn.com/\" target=\"_blank\"><img src=\"{#ZC_BLOG_HOST#}zb_system/image/logo/zblog.gif\" height=\"31\" width=\"88\" alt=\"RainbowSoft Studio Z-Blog\" /></a></li><li><a href=\"{#ZC_BLOG_HOST#}feed.php\" target=\"_blank\"><img src=\"{#ZC_BLOG_HOST#}zb_system/image/logo/rss.png\" height=\"31\" width=\"88\" alt=\"订阅本站的 RSS 2.0 新闻聚合\" /></a></li>',0,'divMisc','ul',0,'system',1,''),(12,'作者列表','authors','',0,'divAuthors','ul',0,'system',0,''),(13,'最近发表','previous','',0,'divPrevious','ul',0,'system',0,''),(14,'标签列表','tags','',0,'divTags','ul',0,'system',0,'');
/*!40000 ALTER TABLE `zb14_module` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zb14_post`
--

DROP TABLE IF EXISTS `zb14_post`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zb14_post` (
  `log_ID` int(11) NOT NULL AUTO_INCREMENT,
  `log_CateID` smallint(6) NOT NULL DEFAULT '0',
  `log_AuthorID` int(11) NOT NULL DEFAULT '0',
  `log_Tag` varchar(255) NOT NULL DEFAULT '',
  `log_Status` tinyint(4) NOT NULL DEFAULT '0',
  `log_Type` tinyint(4) NOT NULL DEFAULT '0',
  `log_Alias` varchar(255) NOT NULL DEFAULT '',
  `log_IsTop` tinyint(1) NOT NULL DEFAULT '0',
  `log_IsLock` tinyint(1) NOT NULL DEFAULT '0',
  `log_Title` varchar(255) NOT NULL DEFAULT '',
  `log_Intro` text NOT NULL,
  `log_Content` longtext NOT NULL,
  `log_PostTime` int(11) NOT NULL DEFAULT '0',
  `log_CommNums` int(11) NOT NULL DEFAULT '0',
  `log_ViewNums` int(11) NOT NULL DEFAULT '0',
  `log_Template` varchar(50) NOT NULL DEFAULT '',
  `log_Meta` longtext NOT NULL,
  PRIMARY KEY (`log_ID`),
  KEY `zb14_log_TPISC` (`log_Type`,`log_PostTime`,`log_IsTop`,`log_Status`,`log_CateID`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zb14_post`
--

LOCK TABLES `zb14_post` WRITE;
/*!40000 ALTER TABLE `zb14_post` DISABLE KEYS */;
INSERT INTO `zb14_post` VALUES (1,1,1,'',0,0,'',0,0,'欢迎使用Z-BlogPHP!','<p>欢迎使用Z-Blog,这是程序自动生成的文章.您可以删除或是编辑它:)</p><p>系统总共生成了一个&quot;留言本&quot;页面,和一个&quot;欢迎使用Z-BlogPHP!&quot;文章,祝您使用愉快!</p>','<p>欢迎使用Z-Blog,这是程序自动生成的文章.您可以删除或是编辑它:)</p><p>系统总共生成了一个&quot;留言本&quot;页面,和一个&quot;欢迎使用Z-BlogPHP!&quot;文章,祝您使用愉快!</p>',1468550750,0,1,'',''),(2,0,1,'',0,1,'',0,0,'留言本','','这是一个留言本,是由程序自动生成,您可以编辑修改.',1468550750,0,1,'',''),(3,0,1,'',0,0,'',0,0,'dfgdfgsfgsfgsdfdsfsdfdsf','<P>xxxxxxxxxxxxxxxxx','<P>xxxxxxxxxxxxxxxxx</P>\r\n<P>xxxxxxxxxxxxxxxxx</P>\r\n<P>xxxxxxxxxxxxxxxxx</P>\r\n<P>xxxxxxxxxxxxxxxxx</P>\r\n<P>sdfgsfgsdfgdfgsdfgfddfdfsdfsd</P>\r\n<P>sdfsdfsdfdsfsdfdsfdsf</P>',1468914128,0,0,'','');
/*!40000 ALTER TABLE `zb14_post` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zb14_tag`
--

DROP TABLE IF EXISTS `zb14_tag`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zb14_tag` (
  `tag_ID` int(11) NOT NULL AUTO_INCREMENT,
  `tag_Name` varchar(255) NOT NULL DEFAULT '',
  `tag_Order` int(11) NOT NULL DEFAULT '0',
  `tag_Count` int(11) NOT NULL DEFAULT '0',
  `tag_Alias` varchar(255) NOT NULL DEFAULT '',
  `tag_Intro` text NOT NULL,
  `tag_Template` varchar(50) NOT NULL DEFAULT '',
  `tag_Meta` longtext NOT NULL,
  PRIMARY KEY (`tag_ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zb14_tag`
--

LOCK TABLES `zb14_tag` WRITE;
/*!40000 ALTER TABLE `zb14_tag` DISABLE KEYS */;
/*!40000 ALTER TABLE `zb14_tag` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zb14_upload`
--

DROP TABLE IF EXISTS `zb14_upload`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zb14_upload` (
  `ul_ID` int(11) NOT NULL AUTO_INCREMENT,
  `ul_AuthorID` int(11) NOT NULL DEFAULT '0',
  `ul_Size` int(11) NOT NULL DEFAULT '0',
  `ul_Name` varchar(255) NOT NULL DEFAULT '',
  `ul_SourceName` varchar(255) NOT NULL DEFAULT '',
  `ul_MimeType` varchar(50) NOT NULL DEFAULT '',
  `ul_PostTime` int(11) NOT NULL DEFAULT '0',
  `ul_DownNums` int(11) NOT NULL DEFAULT '0',
  `ul_LogID` int(11) NOT NULL DEFAULT '0',
  `ul_Intro` text NOT NULL,
  `ul_Meta` longtext NOT NULL,
  PRIMARY KEY (`ul_ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zb14_upload`
--

LOCK TABLES `zb14_upload` WRITE;
/*!40000 ALTER TABLE `zb14_upload` DISABLE KEYS */;
/*!40000 ALTER TABLE `zb14_upload` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-08-03  9:10:35
