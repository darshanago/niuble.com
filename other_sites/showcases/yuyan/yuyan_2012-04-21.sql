# ************************************************************
# Sequel Pro SQL dump
# Version 3408
#
# http://www.sequelpro.com/
# http://code.google.com/p/sequel-pro/
#
# Host: 127.0.0.1 (MySQL 5.5.9)
# Database: yuyan
# Generation Time: 2012-04-21 11:32:22 +0000
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Dump of table yy_activation
# ------------------------------------------------------------

DROP TABLE IF EXISTS `yy_activation`;

CREATE TABLE `yy_activation` (
  `uid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `code` char(32) NOT NULL,
  `time` int(10) unsigned NOT NULL DEFAULT '0',
  `available` tinyint(1) NOT NULL DEFAULT '1',
  `type` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



# Dump of table yy_advertisement
# ------------------------------------------------------------

DROP TABLE IF EXISTS `yy_advertisement`;

CREATE TABLE `yy_advertisement` (
  `advid` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `available` tinyint(1) NOT NULL DEFAULT '0',
  `type` varchar(50) NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL DEFAULT '',
  `targets` text NOT NULL,
  `position` tinyint(2) NOT NULL DEFAULT '0',
  `parameters` text NOT NULL,
  `code` text NOT NULL,
  `starttime` int(10) unsigned NOT NULL DEFAULT '0',
  `endtime` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`advid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

LOCK TABLES `yy_advertisement` WRITE;
/*!40000 ALTER TABLE `yy_advertisement` DISABLE KEYS */;

INSERT INTO `yy_advertisement` (`advid`, `available`, `type`, `title`, `targets`, `position`, `parameters`, `code`, `starttime`, `endtime`)
VALUES
	(1,1,'0','页头通栏广告','all',0,'a:9:{s:5:\"style\";s:5:\"image\";s:3:\"url\";s:69:\"install/testdata/ad-banner.jpg\";s:4:\"link\";s:43:\"http://www.hudong.com/z/c/aosika/index.html\";s:5:\"width\";s:3:\"950\";s:6:\"height\";s:2:\"80\";s:3:\"alt\";s:33:\"历届奥斯卡各项大奖记录\";s:4:\"html\";s:230:\"<a href=\"http://www.hudong.com/z/c/aosika/index.html\" target=\"_blank\"><img src=\"install/testdata/ad-banner.jpg\" height=\"80\" width=\"950\" alt=\"历届奥斯卡各项大奖记录\" border=\"0\"></a>\";s:8:\"position\";s:0:\"\";s:12:\"displayorder\";i:0;}','<a href=\"http://www.hudong.com/z/c/aosika/index.html\" target=\"_blank\"><img src=\"install/testdata/ad-banner.jpg\" height=\"80\" width=\"950\" alt=\"历届奥斯卡各项大奖记录\" border=\"0\"></a>',0,0),
	(2,1,'2','首页栏目间广告','',0,'a:9:{s:5:\"style\";s:5:\"image\";s:3:\"url\";s:66:\"install/testdata/ad_710.jpg\";s:4:\"link\";s:57:\"http://so.hudong.com/so/wikiad.html?q=%E7%A7%9F%E6%88%BF \";s:5:\"width\";s:3:\"710\";s:6:\"height\";s:2:\"80\";s:3:\"alt\";s:42:\"租房子，找工作，尽在生活搜索\";s:4:\"html\";s:250:\"<a href=\"http://so.hudong.com/so/wikiad.html?q=%E7%A7%9F%E6%88%BF \" target=\"_blank\"><img src=\"install/testdata/ad_710.jpg\" height=\"80\" width=\"710\" alt=\"租房子，找工作，尽在生活搜索\" border=\"0\"></a>\";s:8:\"position\";s:0:\"\";s:12:\"displayorder\";i:0;}','<a href=\"http://so.hudong.com/so/wikiad.html?q=%E7%A7%9F%E6%88%BF \" target=\"_blank\"><img src=\"install/testdata/ad_710.jpg\" height=\"80\" width=\"710\" alt=\"租房子，找工作，尽在生活搜索\" border=\"0\"></a>',0,0),
	(3,1,'4','词条页右侧广告','all',1,'a:9:{s:5:\"style\";s:5:\"image\";s:3:\"url\";s:66:\"install/testdata/ad_230.jpg\";s:4:\"link\";s:66:\"http://so.hudong.com/so/wikiad.html?q=%E6%89%BE%E5%B7%A5%E4%BD%9C \";s:5:\"width\";s:3:\"230\";s:6:\"height\";s:3:\"230\";s:3:\"alt\";s:42:\"租房子，找工作，尽在生活搜索\";s:4:\"html\";s:260:\"<a href=\"http://so.hudong.com/so/wikiad.html?q=%E6%89%BE%E5%B7%A5%E4%BD%9C \" target=\"_blank\"><img src=\"install/testdata/ad_230.jpg\" height=\"230\" width=\"230\" alt=\"租房子，找工作，尽在生活搜索\" border=\"0\"></a>\";s:8:\"position\";s:1:\"1\";s:12:\"displayorder\";i:0;}','<a href=\"http://so.hudong.com/so/wikiad.html?q=%E6%89%BE%E5%B7%A5%E4%BD%9C \" target=\"_blank\"><img src=\"install/testdata/ad_230.jpg\" height=\"230\" width=\"230\" alt=\"租房子，找工作，尽在生活搜索\" border=\"0\"></a>',0,0);

/*!40000 ALTER TABLE `yy_advertisement` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table yy_attachment
# ------------------------------------------------------------

DROP TABLE IF EXISTS `yy_attachment`;

CREATE TABLE `yy_attachment` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `did` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `time` int(10) unsigned NOT NULL DEFAULT '0',
  `filename` char(100) NOT NULL DEFAULT '',
  `description` char(100) NOT NULL DEFAULT '',
  `filetype` char(50) NOT NULL DEFAULT '',
  `filesize` int(10) unsigned NOT NULL DEFAULT '0',
  `attachment` char(100) NOT NULL DEFAULT '',
  `downloads` mediumint(8) NOT NULL DEFAULT '0',
  `coindown` smallint(4) NOT NULL DEFAULT '0',
  `isimage` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `uid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `state` tinyint(4) NOT NULL DEFAULT '0',
  `focus` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `did` (`did`),
  KEY `uid` (`uid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

LOCK TABLES `yy_attachment` WRITE;
/*!40000 ALTER TABLE `yy_attachment` DISABLE KEYS */;

INSERT INTO `yy_attachment` (`id`, `did`, `time`, `filename`, `description`, `filetype`, `filesize`, `attachment`, `downloads`, `coindown`, `isimage`, `uid`, `state`, `focus`)
VALUES
	(26,36,1280484396,'添加相关词条.gif','相关词条','gif',34798,'uploads/201007/1280484396d6hN0GoI.gif',0,0,1,1,0,1),
	(25,36,1280484381,'相关词条.gif','相关词条','gif',36789,'uploads/201007/1280484381eiJRbLHZ.gif',0,0,1,1,0,1),
	(24,35,1280483039,'同义词.gif','同义词','gif',60565,'uploads/201007/1280483039ysMVbk9b.gif',0,0,1,1,0,1),
	(23,34,1280481631,'最新编辑者.jpg','最新协作者','jpg',20100,'uploads/201007/1280481631dwnSN6dQ.jpg',0,0,1,1,0,1),
	(22,33,1280480111,'历史版本.jpg','什么是历史版本？\r\n每个编辑者编辑词条后，并不是直接覆盖词条原有内容，而是将原有内容保存，将新增或修改的内容保存并于原因内容合并保存为新版本。这样，每一次编辑都会产生新的版本，一个词条的所有版本即为该','jpg',15044,'uploads/201007/1280480111x5gMoLRz.jpg',0,0,1,1,0,1),
	(21,30,1280479044,'插入特殊符号.jpg','插入特殊符号','jpg',29300,'uploads/201007/1280479044pFZdWL5X.jpg',0,0,1,1,0,1),
	(20,30,1280478898,'插入表格.jpg','插入表格','jpg',40340,'uploads/201007/1280478898SFstEENh.jpg',0,0,1,1,0,1),
	(19,30,1280478848,'上传图片.jpg','上传图片','jpg',51746,'uploads/201007/1280478848FyxkHtlk.jpg',0,0,1,1,0,1),
	(18,30,1280478782,'添加内链.jpg','添加内链','jpg',49391,'uploads/201007/1280478782eTJQLlB2.jpg',0,0,1,1,0,1),
	(17,30,1280478734,'目录展示.gif','目录展示效果','gif',9997,'uploads/201007/1280478734FqlmXXjw.gif',0,0,1,1,0,1),
	(16,30,1280478661,'目录.jpg','目录','jpg',16448,'uploads/201007/1280478661MFjaRlse.jpg',0,0,1,1,0,1),
	(15,24,1280473204,'注册.jpg','注册','jpg',24359,'uploads/201007/1280473204IYZ3mITb.jpg',0,0,1,1,0,1);

/*!40000 ALTER TABLE `yy_attachment` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table yy_autosave
# ------------------------------------------------------------

DROP TABLE IF EXISTS `yy_autosave`;

CREATE TABLE `yy_autosave` (
  `aid` int(8) unsigned NOT NULL AUTO_INCREMENT,
  `uid` int(6) unsigned NOT NULL,
  `did` int(8) unsigned NOT NULL,
  `id` int(4) NOT NULL,
  `content` mediumtext NOT NULL,
  `time` int(10) unsigned NOT NULL,
  PRIMARY KEY (`aid`),
  KEY `uid` (`uid`),
  KEY `did` (`did`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



# Dump of table yy_banned
# ------------------------------------------------------------

DROP TABLE IF EXISTS `yy_banned`;

CREATE TABLE `yy_banned` (
  `id` smallint(6) unsigned NOT NULL AUTO_INCREMENT,
  `ip1` smallint(3) NOT NULL DEFAULT '0',
  `ip2` smallint(3) NOT NULL DEFAULT '0',
  `ip3` smallint(3) NOT NULL DEFAULT '0',
  `ip4` smallint(3) NOT NULL DEFAULT '0',
  `admin` varchar(15) NOT NULL,
  `time` int(10) unsigned NOT NULL DEFAULT '0',
  `expiration` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



# Dump of table yy_blacklist
# ------------------------------------------------------------

DROP TABLE IF EXISTS `yy_blacklist`;

CREATE TABLE `yy_blacklist` (
  `uid` mediumint(8) unsigned NOT NULL,
  `blacklist` text NOT NULL,
  PRIMARY KEY (`uid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



# Dump of table yy_block
# ------------------------------------------------------------

DROP TABLE IF EXISTS `yy_block`;

CREATE TABLE `yy_block` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `theme` varchar(50) NOT NULL DEFAULT '',
  `file` varchar(50) NOT NULL DEFAULT '',
  `area` varchar(50) NOT NULL DEFAULT '',
  `areaorder` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `block` varchar(50) NOT NULL DEFAULT '',
  `fun` varchar(30) NOT NULL DEFAULT '',
  `tpl` varchar(50) DEFAULT NULL,
  `params` longtext,
  `modified` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

LOCK TABLES `yy_block` WRITE;
/*!40000 ALTER TABLE `yy_block` DISABLE KEYS */;

INSERT INTO `yy_block` (`id`, `theme`, `file`, `area`, `areaorder`, `block`, `fun`, `tpl`, `params`, `modified`)
VALUES
	(1,'default','index','ctop1',0,'doc','hotdocs','hotdocs.htm','a:2:{s:3:\"num\";s:0:\"\";s:5:\"style\";s:0:\"\";}',NULL),
	(2,'default','index','ctop2',0,'doc','wonderdocs','wonderdocs.htm','a:1:{s:5:\"style\";s:0:\"\";}',NULL),
	(3,'default','index','right',0,'user','login','login.htm','',NULL),
	(4,'default','index','right',1,'news','recentnews','recentnews.htm','a:1:{s:5:\"style\";s:0:\"\";}',NULL),
	(5,'default','index','right',2,'doc','cooperatedocs','cooperatedocs.htm','a:1:{s:5:\"style\";s:0:\"\";}',NULL),
	(6,'default','index','cbottoml',0,'doc','recentdocs','recentdocs.htm','a:2:{s:3:\"num\";s:0:\"\";s:5:\"style\";s:0:\"\";}',NULL),
	(7,'default','index','cbottoml',1,'comment','recentcomment','recentcomment.htm','a:1:{s:3:\"num\";s:0:\"\";}',NULL),
	(8,'default','index','cbottomr',0,'pic','recentpics','recentpics.htm','a:1:{s:3:\"num\";s:0:\"\";}',NULL),
	(9,'default','index','cbottomr',1,'doc','commenddocs','commenddocs.htm','a:1:{s:5:\"style\";s:0:\"\";}',NULL),
	(10,'default','index','bottom',0,'doc','hottags','hottags.htm','a:1:{s:5:\"style\";s:0:\"\";}',NULL),
	(11,'default','giftlist','price',0,'gift','giftpricerange','giftpricerange.htm','',NULL),
	(12,'default','giftlist','right',0,'gift','giftnotice','giftnotice.htm','',NULL),
	(13,'default','categorylist','right',0,'doc','hottags','hottags.htm','a:1:{s:5:\"style\";s:0:\"\";}',NULL),
	(14,'default','categorylist','right',1,'doc','getletterdocs','getletterdocs.htm','a:1:{s:5:\"style\";s:0:\"\";}',NULL),
	(15,'default','viewcomment','right',0,'doc','hotcommentdocs','hotcommentdocs.htm','a:1:{s:3:\"num\";s:2:\"10\";}',NULL),
	(16,'default','index','bottom',1,'links','friendlinks','friendlinks.htm','a:1:{s:5:\"style\";s:0:\"\";}',NULL),
	(17,'default','index','right',3,'doc','getletterdocs','getletterdocs.htm','a:1:{s:5:\"style\";s:0:\"\";}',NULL);

/*!40000 ALTER TABLE `yy_block` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table yy_category
# ------------------------------------------------------------

DROP TABLE IF EXISTS `yy_category`;

CREATE TABLE `yy_category` (
  `cid` smallint(6) unsigned NOT NULL AUTO_INCREMENT,
  `pid` smallint(6) unsigned NOT NULL DEFAULT '0',
  `name` char(50) NOT NULL DEFAULT '',
  `displayorder` tinyint(3) NOT NULL DEFAULT '0',
  `docs` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `image` varchar(255) NOT NULL DEFAULT '',
  `navigation` text NOT NULL,
  `description` text NOT NULL,
  PRIMARY KEY (`cid`),
  KEY `pid` (`pid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

LOCK TABLES `yy_category` WRITE;
/*!40000 ALTER TABLE `yy_category` DISABLE KEYS */;

INSERT INTO `yy_category` (`cid`, `pid`, `name`, `displayorder`, `docs`, `image`, `navigation`, `description`)
VALUES
	(1,3,'HDWIKI',0,18,'','a:2:{i:0;a:2:{s:3:\"cid\";i:3;s:4:\"name\";s:12:\"帮助文档\";}i:1;a:2:{s:3:\"cid\";s:1:\"1\";s:4:\"name\";s:6:\"HDWIKI\";}}',''),
	(2,3,'互动百科',2,1,'','a:2:{i:0;a:2:{s:3:\"cid\";i:3;s:4:\"name\";s:12:\"帮助文档\";}i:1;a:2:{s:3:\"cid\";s:1:\"2\";s:4:\"name\";s:12:\"互动百科\";}}',''),
	(3,0,'帮助文档',2,0,'','a:1:{i:0;a:2:{s:3:\"cid\";i:3;s:4:\"name\";s:12:\"帮助文档\";}}',''),
	(4,3,'wik相关',1,3,'','a:2:{i:0;a:2:{s:3:\"cid\";i:3;s:4:\"name\";s:12:\"帮助文档\";}i:1;a:2:{s:3:\"cid\";s:1:\"4\";s:4:\"name\";s:9:\"wik相关\";}}',''),
	(5,3,'帐号相关',3,4,'','a:2:{i:0;a:2:{s:3:\"cid\";i:3;s:4:\"name\";s:12:\"帮助文档\";}i:1;a:2:{s:3:\"cid\";s:1:\"5\";s:4:\"name\";s:12:\"帐号相关\";}}',''),
	(6,3,'词条相关',4,0,'','a:2:{i:0;a:2:{s:3:\"cid\";i:3;s:4:\"name\";s:12:\"帮助文档\";}i:1;a:2:{s:3:\"cid\";s:1:\"6\";s:4:\"name\";s:12:\"词条相关\";}}',''),
	(7,3,'分类相关',5,0,'','a:2:{i:0;a:2:{s:3:\"cid\";i:3;s:4:\"name\";s:12:\"帮助文档\";}i:1;a:2:{s:3:\"cid\";s:1:\"7\";s:4:\"name\";s:12:\"分类相关\";}}',''),
	(8,3,'投诉建议',6,0,'','a:2:{i:0;a:2:{s:3:\"cid\";i:3;s:4:\"name\";s:12:\"帮助文档\";}i:1;a:2:{s:3:\"cid\";s:1:\"8\";s:4:\"name\";s:12:\"投诉建议\";}}',''),
	(9,3,'用户相关',7,0,'','a:2:{i:0;a:2:{s:3:\"cid\";i:3;s:4:\"name\";s:12:\"帮助文档\";}i:1;a:2:{s:3:\"cid\";s:1:\"9\";s:4:\"name\";s:12:\"用户相关\";}}',''),
	(10,6,'词条产品相关',0,8,'','a:3:{i:0;a:2:{s:3:\"cid\";i:3;s:4:\"name\";s:12:\"帮助文档\";}i:1;a:2:{s:3:\"cid\";s:1:\"6\";s:4:\"name\";s:12:\"词条相关\";}i:2;a:2:{s:3:\"cid\";s:2:\"10\";s:4:\"name\";s:18:\"词条产品相关\";}}',''),
	(11,6,'词条命名规范',1,2,'','a:3:{i:0;a:2:{s:3:\"cid\";i:3;s:4:\"name\";s:12:\"帮助文档\";}i:1;a:2:{s:3:\"cid\";s:1:\"6\";s:4:\"name\";s:12:\"词条相关\";}i:2;a:2:{s:3:\"cid\";s:2:\"11\";s:4:\"name\";s:18:\"词条命名规范\";}}',''),
	(12,6,'词条内容编写规范',2,12,'','a:3:{i:0;a:2:{s:3:\"cid\";i:3;s:4:\"name\";s:12:\"帮助文档\";}i:1;a:2:{s:3:\"cid\";s:1:\"6\";s:4:\"name\";s:12:\"词条相关\";}i:2;a:2:{s:3:\"cid\";s:2:\"12\";s:4:\"name\";s:24:\"词条内容编写规范\";}}','');

/*!40000 ALTER TABLE `yy_category` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table yy_categorylink
# ------------------------------------------------------------

DROP TABLE IF EXISTS `yy_categorylink`;

CREATE TABLE `yy_categorylink` (
  `id` int(8) unsigned NOT NULL AUTO_INCREMENT,
  `did` int(8) unsigned NOT NULL DEFAULT '0',
  `cid` int(8) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `did` (`did`),
  KEY `cid` (`cid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

LOCK TABLES `yy_categorylink` WRITE;
/*!40000 ALTER TABLE `yy_categorylink` DISABLE KEYS */;

INSERT INTO `yy_categorylink` (`id`, `did`, `cid`)
VALUES
	(40,37,11),
	(39,36,10),
	(38,35,10),
	(37,34,10),
	(36,33,10),
	(35,32,10),
	(34,31,10),
	(33,30,10),
	(32,29,10),
	(30,27,5),
	(29,26,5),
	(28,25,5),
	(27,24,5),
	(26,23,4),
	(25,22,4),
	(24,21,4),
	(20,20,2),
	(19,19,1),
	(41,38,11),
	(42,39,12),
	(43,40,12),
	(44,41,12),
	(45,42,12),
	(46,43,12),
	(47,44,12),
	(48,45,12),
	(49,46,12),
	(50,47,12),
	(51,48,12),
	(52,49,12),
	(53,50,12);

/*!40000 ALTER TABLE `yy_categorylink` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table yy_channel
# ------------------------------------------------------------

DROP TABLE IF EXISTS `yy_channel`;

CREATE TABLE `yy_channel` (
  `id` smallint(6) unsigned NOT NULL AUTO_INCREMENT,
  `name` char(50) NOT NULL DEFAULT '',
  `url` char(200) NOT NULL DEFAULT '',
  `displayorder` smallint(3) unsigned NOT NULL DEFAULT '0',
  `available` tinyint(1) NOT NULL DEFAULT '1',
  `position` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

LOCK TABLES `yy_channel` WRITE;
/*!40000 ALTER TABLE `yy_channel` DISABLE KEYS */;

INSERT INTO `yy_channel` (`id`, `name`, `url`, `displayorder`, `available`, `position`)
VALUES
	(1,'首页','http://local.www.niuble.com/other_sites/showcases/haoran',0,1,2),
	(2,'百科分类','http://local.www.niuble.com/other_sites/showcases/haoran/index.php?category',1,1,2),
	(3,'排行榜','http://local.www.niuble.com/other_sites/showcases/haoran/index.php?list',2,1,2),
	(4,'图片百科','http://local.www.niuble.com/other_sites/showcases/haoran/index.php?pic-piclist-2',3,1,2),
	(5,'礼品商店','http://local.www.niuble.com/other_sites/showcases/haoran/index.php?gift',4,1,2);

/*!40000 ALTER TABLE `yy_channel` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table yy_comment
# ------------------------------------------------------------

DROP TABLE IF EXISTS `yy_comment`;

CREATE TABLE `yy_comment` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `did` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `comment` char(200) NOT NULL DEFAULT '',
  `reply` mediumtext NOT NULL,
  `author` varchar(15) NOT NULL DEFAULT '',
  `authorid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `oppose` tinyint(6) unsigned NOT NULL DEFAULT '0',
  `aegis` tinyint(6) unsigned NOT NULL DEFAULT '0',
  `time` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `time` (`time`),
  KEY `did` (`did`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

LOCK TABLES `yy_comment` WRITE;
/*!40000 ALTER TABLE `yy_comment` DISABLE KEYS */;

INSERT INTO `yy_comment` (`id`, `did`, `comment`, `reply`, `author`, `authorid`, `oppose`, `aegis`, `time`)
VALUES
	(1,33,'历史版本保存了每个编辑者编过的版本。','','haoran',1,0,0,1280716866),
	(2,37,'相当复杂啊。','','haoran',1,0,0,1280716937),
	(3,19,'HDwiki5.0新发布请大家支持啊。','','haoran',1,0,0,1280716800),
	(4,19,'评论测试。','','haoran',1,0,0,1280716775);

/*!40000 ALTER TABLE `yy_comment` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table yy_creditdetail
# ------------------------------------------------------------

DROP TABLE IF EXISTS `yy_creditdetail`;

CREATE TABLE `yy_creditdetail` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `uid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `operation` varchar(100) NOT NULL DEFAULT '',
  `credit2` smallint(6) NOT NULL DEFAULT '0',
  `credit1` smallint(6) NOT NULL DEFAULT '0',
  `time` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

LOCK TABLES `yy_creditdetail` WRITE;
/*!40000 ALTER TABLE `yy_creditdetail` DISABLE KEYS */;

INSERT INTO `yy_creditdetail` (`id`, `uid`, `operation`, `credit2`, `credit1`, `time`)
VALUES
	(1,1,'user-register',20,20,1335005773);

/*!40000 ALTER TABLE `yy_creditdetail` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table yy_datacall
# ------------------------------------------------------------

DROP TABLE IF EXISTS `yy_datacall`;

CREATE TABLE `yy_datacall` (
  `id` smallint(5) NOT NULL AUTO_INCREMENT,
  `name` varchar(60) NOT NULL,
  `type` varchar(60) NOT NULL,
  `category` varchar(60) NOT NULL DEFAULT '0',
  `classname` varchar(60) NOT NULL DEFAULT 'sql',
  `function` varchar(60) NOT NULL,
  `desc` varchar(255) NOT NULL,
  `param` text NOT NULL,
  `cachetime` int(10) NOT NULL DEFAULT '0',
  `available` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `category` (`category`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

LOCK TABLES `yy_datacall` WRITE;
/*!40000 ALTER TABLE `yy_datacall` DISABLE KEYS */;

INSERT INTO `yy_datacall` (`id`, `name`, `type`, `category`, `classname`, `function`, `desc`, `param`, `cachetime`, `available`)
VALUES
	(1,'doc_most_visited','sql','doc','sql','sql','访问最多词条','a:9:{s:7:\"tplcode\";s:175:\"<dl class=\"col-dl \"><dt><a title=\"[title]\" href=\"index.php?doc-view-[did]\"> [title]</a></dt><dd>[summary][<a class=\"entry\" href=\"index.php?doc-view-[did]\">view</a>]</dd>	</dl>\";s:13:\"empty_tplcode\";s:0:\"\";s:3:\"sql\";s:84:\"select did,title,summary from {DB_TABLEPRE}doc where 1 order by views desc limit 10;\";s:6:\"select\";s:0:\"\";s:4:\"from\";s:0:\"\";s:5:\"where\";s:0:\"\";s:5:\"other\";s:0:\"\";s:7:\"orderby\";s:0:\"\";s:5:\"limit\";s:4:\"0,10\";}',1000,1),
	(2,'user_total_num','sql','user','sql','sql','注册会员数','a:9:{s:7:\"tplcode\";s:9:\"[usernum]\";s:13:\"empty_tplcode\";s:0:\"\";s:3:\"sql\";s:49:\"SELECT COUNT(*) AS usernum FROM {DB_TABLEPRE}user\";s:6:\"select\";s:0:\"\";s:4:\"from\";s:0:\"\";s:5:\"where\";s:0:\"\";s:5:\"other\";s:0:\"\";s:7:\"orderby\";s:0:\"\";s:5:\"limit\";s:4:\"0,10\";}',1000,1),
	(3,'doc_total_num','sql','doc','sql','sql','网站所有词条数','a:9:{s:7:\"tplcode\";s:20:\"doc total num: [num]\";s:13:\"empty_tplcode\";s:0:\"\";s:3:\"sql\";s:0:\"\";s:6:\"select\";s:18:\"count(did) as num \";s:4:\"from\";s:16:\"{DB_TABLEPRE}doc\";s:5:\"where\";s:1:\"1\";s:5:\"other\";s:0:\"\";s:7:\"orderby\";s:0:\"\";s:5:\"limit\";s:3:\"0,1\";}',1000,1),
	(4,'doc_most_comment','sql','doc','sql','sql','评论最多词条列表','a:9:{s:7:\"tplcode\";s:181:\"<dl class=\"col-dl \"><dt><a title=\"[title]\" href=\"index.php?doc-view-[did]\"> [title]([num])</a></dt><dd>[comment][<a class=\"entry\" href=\"index.php?doc-view-[did]\">view</a>]</dd></dl>\";s:13:\"empty_tplcode\";s:0:\"\";s:3:\"sql\";s:0:\"\";s:6:\"select\";s:44:\"d.did,d.title,c.comment, count(c.did) AS num\";s:4:\"from\";s:68:\"{DB_TABLEPRE}doc AS d LEFT JOIN {DB_TABLEPRE}comment AS c USING(did)\";s:5:\"where\";s:0:\"\";s:5:\"other\";s:14:\"GROUP BY c.did\";s:7:\"orderby\";s:8:\"num desc\";s:5:\"limit\";s:4:\"0,10\";}',1000,1),
	(5,'doc_recommends','sql','doc','sql','sql','推荐词条信息','a:9:{s:7:\"tplcode\";s:175:\"<dl class=\"col-dl \"><dt><a title=\"[title]\" href=\"index.php?doc-view-[did]\"> [title]</a></dt><dd>[summary][<a class=\"entry\" href=\"index.php?doc-view-[did]\">view</a>]</dd>	</dl>\";s:13:\"empty_tplcode\";s:0:\"\";s:3:\"sql\";s:91:\"select did,title,summary from {DB_TABLEPRE}focus where `type`=1 order by did desc limit 10;\";s:6:\"select\";s:0:\"\";s:4:\"from\";s:0:\"\";s:5:\"where\";s:0:\"\";s:5:\"other\";s:0:\"\";s:7:\"orderby\";s:0:\"\";s:5:\"limit\";s:4:\"0,10\";}',1000,1),
	(6,'doc_wonderful','sql','doc','sql','sql','精彩词条','a:9:{s:7:\"tplcode\";s:175:\"<dl class=\"col-dl \"><dt><a title=\"[title]\" href=\"index.php?doc-view-[did]\"> [title]</a></dt><dd>[summary][<a class=\"entry\" href=\"index.php?doc-view-[did]\">view</a>]</dd>	</dl>\";s:13:\"empty_tplcode\";s:0:\"\";s:3:\"sql\";s:91:\"select did,title,summary from {DB_TABLEPRE}focus where `type`=3 order by did desc limit 10;\";s:6:\"select\";s:0:\"\";s:4:\"from\";s:0:\"\";s:5:\"where\";s:0:\"\";s:5:\"other\";s:0:\"\";s:7:\"orderby\";s:0:\"\";s:5:\"limit\";s:4:\"0,10\";}',1000,1),
	(7,'user_new_register','sql','user','sql','sql','最新注册用户','a:9:{s:7:\"tplcode\";s:104:\"<dl class=\"col-dl \"><dt><a href=\"index.php?user-space-[uid]\"> [username]</a></dt><dd>[regtime]</dd></dl>\";s:13:\"empty_tplcode\";s:0:\"\";s:3:\"sql\";s:109:\"SELECT uid,username,from_unixtime( regtime ) as regtime  FROM {DB_TABLEPRE}user order by regtime desc limit 1\";s:6:\"select\";s:0:\"\";s:4:\"from\";s:0:\"\";s:5:\"where\";s:0:\"\";s:5:\"other\";s:0:\"\";s:7:\"orderby\";s:0:\"\";s:5:\"limit\";s:4:\"0,10\";}',1000,1),
	(8,'cat_doc','sql','doc','sql','sql','调用某个分类下的词条,不包括子分类；默认是调用分类ID等于10的词条,如需调用其它分类下词条，修改“SQL完整表达式”下面cid=10中10的值','a:9:{s:7:\"tplcode\";s:175:\"<dl class=\"col-dl \"><dt><a title=\"[title]\" href=\"index.php?doc-view-[did]\"> [title]</a></dt><dd>[summary][<a class=\"entry\" href=\"index.php?doc-view-[did]\">view</a>]</dd>	</dl>\";s:13:\"empty_tplcode\";s:0:\"\";s:3:\"sql\";s:116:\"select did,title,summary from {DB_TABLEPRE}doc WHERE did IN (select did from {DB_TABLEPRE}categorylink where cid=10)\";s:6:\"select\";s:0:\"\";s:4:\"from\";s:0:\"\";s:5:\"where\";s:0:\"\";s:5:\"other\";s:0:\"\";s:7:\"orderby\";s:0:\"\";s:5:\"limit\";s:4:\"0,10\";}',1000,1),
	(9,'cat_subcat','sql','category','sql','sql','调用某个分类下子分类,默认是调用分类ID等于3下子分类,如需调用其它分类下子分类，修改“SQL完整表达式”下面pid=3的pid值','a:9:{s:7:\"tplcode\";s:101:\"<dl class=\"col-dl \"><dd><a title=\"[title]\" href=\"index.php?category-view-[cid]\"> [name]</a></dd></dl>\";s:13:\"empty_tplcode\";s:0:\"\";s:3:\"sql\";s:57:\"select  cid, name  from {DB_TABLEPRE}category where pid=3\";s:6:\"select\";s:0:\"\";s:4:\"from\";s:0:\"\";s:5:\"where\";s:0:\"\";s:5:\"other\";s:0:\"\";s:7:\"orderby\";s:0:\"\";s:5:\"limit\";s:4:\"0,10\";}',1000,1);

/*!40000 ALTER TABLE `yy_datacall` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table yy_doc
# ------------------------------------------------------------

DROP TABLE IF EXISTS `yy_doc`;

CREATE TABLE `yy_doc` (
  `did` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `cid` int(6) unsigned NOT NULL,
  `letter` char(1) NOT NULL,
  `title` varchar(80) NOT NULL DEFAULT '',
  `tag` varchar(250) NOT NULL,
  `summary` varchar(250) NOT NULL,
  `content` mediumtext NOT NULL,
  `author` varchar(15) NOT NULL DEFAULT '',
  `authorid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `time` int(10) unsigned NOT NULL DEFAULT '0',
  `lastedit` int(10) unsigned NOT NULL DEFAULT '0',
  `lasteditor` char(15) NOT NULL DEFAULT '',
  `lasteditorid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `views` int(10) unsigned NOT NULL DEFAULT '0',
  `edits` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `editions` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `comments` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `votes` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `visible` tinyint(1) NOT NULL DEFAULT '1',
  `locked` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`did`),
  KEY `title` (`title`),
  KEY `cid` (`cid`),
  KEY `authorid` (`authorid`),
  KEY `letter` (`letter`),
  KEY `lastedit` (`lastedit`),
  KEY `time` (`time`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

LOCK TABLES `yy_doc` WRITE;
/*!40000 ALTER TABLE `yy_doc` DISABLE KEYS */;

INSERT INTO `yy_doc` (`did`, `cid`, `letter`, `title`, `tag`, `summary`, `content`, `author`, `authorid`, `time`, `lastedit`, `lasteditor`, `lasteditorid`, `views`, `edits`, `editions`, `comments`, `votes`, `visible`, `locked`)
VALUES
	(45,0,'r','人物类规范','','人物类词条编写规范1、内容要简明扼要，逻辑清晰 从简介、生平、成绩、荣誉、作品、重点事件、评价等方面简介。如果每个目录间内容有交叉或重复，要进行整理后再发布，同样内容不要重复出现。不存在的方面，不要生搬','<P><strong>人物类词条编写规范<BR><BR></strong>1、内容要简明扼要，逻辑清晰 <BR>从简介、生平、成绩、荣誉、作品、重点事件、评价等方面简介。如果每个目录间内容有交叉或重复，要进行整理后再发布，同样内容不要重复出现。不存在的方面，不要生搬硬套。 <BR>2、注意词条的可读性，如果有大段内容，尽量用小标题等形式，理清脉络。 <BR>3、导语要写的简洁而全面，要客观陈述事实，也要做中立的评价。 <BR>4、作品和荣誉一定要有代表性，不要一味罗列作品名录。 <BR>5、人物评价要客观中立，不要过分褒奖或贬低。 <BR>6、相关的事件要做整理后再发布，不能使用新闻语体。 <BR></P>','haoran',1,1280641202,1280641202,'haoran',1,1,0,0,0,0,1,0),
	(46,0,'x','姓氏类规范','','姓氏类词条（含中文和外文姓氏），包含但不限于以下方面： 1、起源 2、发展演变 3、分布 4、郡望堂号 5、字辈 6、族谱 7、×氏名人 姓氏类词条（含中文和外文姓氏）内容需注意以下几方面： 1、与单字、×氏的区别 如','<strong>姓氏类词条（含中文和外文姓氏），包含但不限于以下方面：</strong> <BR><BR>1、起源 <BR>2、发展演变 <BR>3、分布 <BR>4、郡望堂号 <BR>5、字辈 <BR>6、族谱 <BR>7、×氏名人 <BR><BR><strong>姓氏类词条（含中文和外文姓氏）内容需注意以下几方面：<BR></strong> <BR>1、与单字、×氏的区别 <BR>如李姓与李、李氏是不一样的词条，李姓是一个姓氏，李是一个单字或单词，它有多种意思，而李氏不仅是一个姓氏，还可能是人名。 <BR><BR>所以在编写姓氏类词条时，不能加入单字或词的解释。 <BR><BR>2、起源、发展、演变等描述发展沿革过程的部分，应尽量简洁、脉络清晰。不要大段赘述，造成词条内容本末倒置。 <BR>3、×姓名人这样的目录，也要简练，多使用内链链接到其他词条，不要加过于详细的介绍，以免喧兵夺主。 <BR>4、如某部分内容有多种说法的，需注明明确的出处和来源。如姓氏起源，可能有多种说法，就要注明说法的出处或考证资料。 <BR>5、词条总体要求：全面、简洁、可读性强 <BR>6、图片、内链、参考资料、相关词条等需符合高分词条基本规范。 <BR><BR>','haoran',1,1280641311,1280641311,'haoran',1,1,0,0,0,0,1,0),
	(47,0,'y','影视图书作品类词条编写规范','','影视图书作品类词条编写规范 1、简介要全面概述作品，不能是剧情简介。 理想的简介应包括作者，出版/发行/上映时间，出版发行机构，内容概述，重要的主创人员，荣誉、影响及评价等。 2、剧情/内容简介一定要精炼，不','<DIV class=hd yy_tmml>影视图书作品类词条编写规范 </DIV><BR>1、简介要全面概述作品，不能是剧情简介。 <BR>理想的简介应包括作者，出版/发行/上映时间，出版发行机构，内容概述，重要的主创人员，荣誉、影响及评价等。 <BR>2、剧情/内容简介一定要精炼，不要长篇大论。 <BR>3、不要大段复制作品内容，特别精彩的情节（如经典台词、名句等）可小篇幅的放入词条正文，如内容过长，则加入该词条的维吧。 <BR>4、相关人物介绍不要过长，介绍的内容要与该作品密切相关，重点介绍人物在该作品中的表现。 <BR>5、相关资讯/报道，不要直接使用新闻语体，需要原文引用的，需在开头注明稿源。 <BR>6、花絮、幕后等内容必须有特色，不能用剧情、报道等凑数。 <BR>7、评价要中立客观，如大段引用影评原文，需在开头注明出处。 <BR>8、图片要与文字内容相符，注释要明确，如添加多幅图片，则需图片需是有代表性的精彩剧照。 <BR><BR>\r\n<DIV class=hd yy_tmml>电影海报类规范 </DIV>词条名规范：电影名称+海报 例如：《铁道游击队》海报 <BR>海报类词条内容不宜过多，以介绍海报内容、影片简介为主。&nbsp;<BR><BR> <BR>\r\n<DIV class=hd yy_tmml>寓言（主要为伊索寓言）类词条编写规范 </DIV>寓言故事类词条名称直接为故事名称即可，不需添加书名号。 <BR>词条内容需包括：故事内容、出处、故事的寓意。 <BR>词条内容禁忌：不可只单纯的描述寓言故事而没有任何其他介绍。 <BR><BR>','haoran',1,1280641416,1280641416,'haoran',1,1,0,0,0,0,1,0),
	(48,0,'y','语言类词条编写规范','','语言类词条编写规范： 1、文内所涉及数据应为最新、最准确数据。 2、图片需符合优质词条图片规范，不使用大量语言图书图片。3、内链、参考资料、分类及相关词条参照最新的优质词条规范。 4、相关资料，如大篇幅示例、','<P><strong>语言类词条编写规范：</strong> <BR><BR>1、文内所涉及数据应为最新、最准确数据。 <BR>2、图片需符合优质词条图片规范，不使用大量语言图书图片。<BR>3、内链、参考资料、分类及相关词条参照最新的优质词条规范。 <BR>4、相关资料，如大篇幅示例、范文、列表、数据，请发到维吧中，可在词条正文添加维吧帖子链接地址，以便读者查看。 <BR>5、总体要求：内容全面、简明，逻辑清晰，示例简单易懂。 <BR><BR><strong>语言类词条编写内容应包含但不限于以下内容：</strong> </P>\r\n<P><BR>1、历史（及演变） <BR>2、分布 <BR>3、发音 <BR>4、文字 <BR>5、词汇 <BR>6、语法 <BR>7、方言 <BR>8、图片要与文字内容相符，注释要明确，如添加多幅图片，则需图片需是有代表性的精彩剧照。 <BR>9、各目录可以有少量示例、范文 <BR><BR><BR></P>','haoran',1,1280641492,1280641492,'haoran',1,1,0,0,0,0,1,0),
	(49,0,'y','阅兵类词条编写规范','','1、需要包含以下基本信息： &nbsp;&nbsp;&nbsp;&nbsp; 1）阅兵式发生的时间、地点&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 2）形式（陆上或海上）&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;3）缘由&nbsp;&nbsp;&nbsp;&nbsp;&nbsp','<strong>1、需要包含以下基本信息： <BR></strong><BR>&nbsp;&nbsp;&nbsp;&nbsp; 1）阅兵式发生的时间、地点&nbsp;<BR>&nbsp;&nbsp;&nbsp;&nbsp; 2）形式（陆上或海上）&nbsp;<BR>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;3）缘由&nbsp;<BR>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;4）流程 <BR>&nbsp;&nbsp;&nbsp;&nbsp; 5）受阅部队、阅兵首长、阅兵总指挥 <BR>&nbsp;&nbsp;&nbsp;&nbsp; 6）人数 <BR>&nbsp;&nbsp;&nbsp;&nbsp; 7）突出特点等 <BR><BR>2、注意阅兵式与庆祝活动的区别 <BR>3、用语要客观、严谨，避免过分的褒奖和感性描写 <BR>4、请不要使用新闻、个人博客等的内容 <BR>5、全文需简练、条理清晰 <BR>6、图片需注释清晰，避免使用无明显特点的图片 <BR>7、内链需与词条密切相关 <BR><BR>\r\n<P>&nbsp;</P>','haoran',1,1280641615,1280641615,'haoran',1,1,0,0,0,0,1,0),
	(50,0,'g','各国教育类词条编写规范','','内容可以包括但不限于以下方面 内容需客观严谨，使用官方资料编写内容 现有教育体制 教育资源、配置 本土教育特色 发展历史 本土著名大学（列表形式展现即可，不可长篇幅介绍） 需要注意的以下几点： 内容力求全面，','<P><BR><strong>内容可以包括但不限于以下方面</strong> <BR>内容需客观严谨，使用官方资料编写内容 <BR>现有教育体制 <BR>教育资源、配置 <BR>本土教育特色 <BR>发展历史 <BR>本土著名大学（列表形式展现即可，不可长篇幅介绍） <BR><BR><strong>需要注意的以下几点：</strong> <BR><BR>内容力求全面，表述力求精炼，不可长篇大论照搬本土的教育法规等原文内容。 <BR>可以通过内链引导读者深入点击的内容，就不需要赘述了。如著名大学、当地的教育法等。<BR>图片、参考资料、相关词条等参考已有的高分词条的标准。 <BR>注意词条名称的准确性，国别+教育，如：美国教育是正确的词条名称，美国留学则为错误的词条名称 <BR></P>','haoran',1,1280641704,1280641704,'haoran',1,1,0,0,0,0,1,0),
	(51,0,'H','HDWiki5.0','','新增功能1：开创云搜索功能。使服务器的内容数据承载量，达到千万级。\r\n2：自主研发存储机制，彻底解决，百科类网站数据消耗较大的问题。\r\n3：新增模块可视化编辑功能，预置8个栏目风格，模板随便挪，风格随便换。','<DIV class=hd yy_tmml>新增功能</DIV>\r\n<P>1：新增云搜索功能。使服务器的内容数据承载量，达到千万级。<BR>2：自主研发存储机制，彻底解决，百科网站数据消耗较大的问题。<BR>3：新增模块可视化编辑功能，预置8个栏目风格，模板随便挪，风格随便换。<BR>4：新增语言包功能，网站文字，便捷修改。<BR>5：新增词条跨站分享。人人网，开心网，新浪微薄，一键内容分享。<BR>6：与互动新知社打通，互动百科为广大站长度身定做一个分享知识的宣传平台。<BR>8：自主研发内联转化机制，优化SEO内联功能，页面链接更加有效、合理。<BR>9：自主研发百科联盟机制，彻底解决版本还原问题。<BR>10：全新后台ui设计，功能梳理。界面更美观，使用更流畅。<BR>11：新增快捷菜单设置，随意添加自己常用菜单。<BR>12：新增后台模糊搜索功能，方便功能查找。<BR>13:&nbsp;新增后台木马检测功能，快捷检查系统安全。<BR>14：系统集成sitemap功能。<BR>15：邀请注册功能，使运营更多样化。<BR>16：系统集成百科联盟功能。<BR>17：增加后台网站地图功能，方便查找。<BR>18：新增数据调用功能。方便新增数据模块。<BR>19：预置帮助文档。<BR>20：增加词条状态Email通知功能</P>\r\n<DIV class=hd yy_tmml>改进与优化</DIV>\r\n<P>1：改进分类编辑，同级分类修改更加便捷。<BR>2：改进防采集功能，增加UserAgent&nbsp;判断和访问频率判断。<BR>3：后台logo新增尺寸设置。<BR>4：改进注册控制功能。<BR>5：后台首页，增加贡献者入口，凡是对HDwiki做出建议，改进，插件，模板，贡献的，都有机会出现在这里。<BR>6：改进附件管理的文件预览方式。<BR>7：改进后台图片百科图片列表的预览方式。<BR>8：改进推荐词条，编辑弹窗样式。<BR>9：模板编辑—》源码编辑，增加保留备份的功能。<BR>10：改进首页登录框样式。<BR>11：优化回车焦点响应。<BR>12：调整搜索结果页样式。<BR>13：调整按字母浏览样式。<BR>14：改进词条正文页，词条正文标题，标签显示样式。<BR>15：增加词条的顶功能。<BR>16：改进UCenter实现方式，提升为系统插件，并修改ucenter插件的相关问题。<BR>17：优化数据调用方式。<BR>18：改进模板编辑方式，实现可视化编辑。<BR>19：改进站内信，图片提醒显示图片。<BR>20：美化搜索输入框样式。<BR>21：优化附件上传，增加超过额定大小错误操作提示。<BR>22：优化友情链接提示，过滤js输入。<BR>23：优化编辑状态显示。<BR>24：更新词条正文页收藏功能，剔除无用收藏接口。</P>','haoran',1,1280735362,1280822010,'haoran',1,35,6,6,0,2,1,0),
	(37,0,'c','词条名称总则','','词条命名原则 1、尽量使用中文 词条名称应尽量使用中文命名，并将外文原文附在条目的首行。外文原文比中文翻译在中文中更加常用的除外。如，IBM。 2、尽量使用事物的常用名 尽量使用人或物最常见的名称，但是不要和其','<DIV class=hd yy_tmml>词条命名原则 </DIV>1、尽量使用中文 <BR><BR>词条名称应尽量使用中文命名，并将外文原文附在条目的首行。外文原文比中文翻译在中文中更加常用的除外。如，IBM。 <BR><BR>2、尽量使用事物的常用名 <BR><BR>尽量使用人或物最常见的名称，但是不要和其他的人或物的名称冲突。如，法网。 <BR><BR>3、尽量使用全称 <BR><BR>词条名称应尽量使用事物全称，避免使用中文或外文缩写和简称。使用广泛、独一无二或被公认为专有名词的简称、缩写除外。如：苏联。 <BR><BR>4、不要使用词条的目录命名，词条的目录与作品名相同的除外 <BR><BR>如：贵州旅游资源 <BR><BR>5、名从主人 <BR><BR>如果一个词条所描述的主体事物，它的拥有者或代表者的官方中文资料里有出现到该事物的中文名称的，一般使用该中文名称。 <BR><BR>\r\n<DIV class=hd yy_tmml>常见的不符合规范的情况 </DIV><BR>1、词条名称必须是不带修饰词的陈述性词语。 <BR><BR>例如：“中国”是合适的词条名称，而“伟大的中国”就不合适。 <BR><BR>2、词条名称不可以是一个短语或是句子。 <BR><BR>例如：“杭州的历史”、“恐龙的起源”、“南极和北极的区别”、“有谁知道杭州的历史” 就是不合适的词条名称。 <BR><BR>3、词条名称不可以是讨论的话题。 <BR><BR>例如：“怎样可以有效减肥”不合适。 <BR><BR>4、词条名称不可以含有特殊符号。 <BR><BR>例如：％，＊，～等。 <BR><BR>5、词条名称中不可以含有错别字。 <BR><BR>例如：吊蓝，蓝球。 <BR><BR>6、不可用古诗词的诗句作为词条名 <BR><BR>例如：春眠不觉晓，明月几时有等。 <BR><BR>7、非专有名词的短句、数码类产品特性描述的词语不建议创建。 <BR><BR>例如：“只此一家，别无分店”、“ XX 超薄双待机彩屏 D608 手机”等。 <BR><BR>8、不要使用词条的名称来表示词条的层次 <BR><BR>比如“中国历史”既可属于“中国”，又可属于“历史”，所以不要使用“中国/历史”这种方式命名页面（这种方式叫做子页面，以前曾经在条目中采用过，现在已经不在条目中使用了，不过可以在用户和讨论页使用）。 <BR>','haoran',1,1280639272,1280639272,'haoran',1,2,0,0,1,0,1,0),
	(38,0,'m','命名规范','','地名类词条命名规范 \r\n1、中国行政区划的命名规范 按行政区划名，中国省市县，须加上省、市、县等全称，如固原市、银川市。对于区、 县或村镇，一般使用全名，不加上一级行政区划，正确词条名如魏马镇。 2、 外国地名','<DIV class=hd yy_tmml>地名类词条命名规范 </DIV>\r\n<P>1、中国行政区划的命名规范 <BR>按行政区划名，中国省市县，须加上省、市、县等全称，如<A class=innerlink title=固原市 href=\"index.php?doc-innerlink-%E5%9B%BA%E5%8E%9F%E5%B8%82\">固原市</A>、<A class=innerlink title=银川市 href=\"index.php?doc-innerlink-%E9%93%B6%E5%B7%9D%E5%B8%82\">银川市</A>。对于区、 县或村镇，一般使用全名，不加上一级行政区划，正确词条名如<A class=innerlink title=魏马镇 href=\"index.php?doc-innerlink-%E9%AD%8F%E9%A9%AC%E9%95%87\">魏马镇</A>。 <BR>2、 外国地名命名规范 <BR>对于外国的地名，尽量使用国际上通用的标准译名，正确示例：<A class=innerlink title=纽约 href=\"index.php?doc-innerlink-%E7%BA%BD%E7%BA%A6\">纽约</A> <BR><BR>3、 景点类命名规范 <BR>以景点全称为标准词，特别有名的，可使用简称，正确示例：<A class=innerlink title=泰山 href=\"index.php?doc-innerlink-%E6%B3%B0%E5%B1%B1\">泰山</A></P>\r\n<DIV class=hd yy_tmml>短语可做词条名称规范 </DIV>\r\n<P>1、短语中定于对主语在感情色彩上没有明确的偏向。比如：<A class=innerlink title=中国历史 href=\"index.php?doc-innerlink-%E4%B8%AD%E5%9B%BD%E5%8E%86%E5%8F%B2\">中国历史</A> <BR><BR>2、短语作为词条时，内容要有自己的体系，可以从多个属性来介绍词条。比如：<A class=innerlink title=北京烤鸭 href=\"index.php?doc-innerlink-%E5%8C%97%E4%BA%AC%E7%83%A4%E9%B8%AD\">北京烤鸭</A>（可以从历史由来、特色、做法等多方面来介绍，该词条有自己的内容体系，可单独作为词条） <BR><BR>3、符合人为用语习惯的短语、名称是约定俗成的、不带感情色彩的。短语名称在搜索引擎中被搜索的频率较高（如：不入虎穴，焉得虎子）。 <BR><BR>4、XX的XX不适宜做词条名称（作品类词条与专业术语词条除外）。 <BR></P>\r\n<DIV class=hd yy_tmml>公共交通线路命名规范 </DIV>\r\n<P>1、城市名称+公交/地铁+X路/号线 <BR>2、公交线路要用阿拉伯数字，不要用汉字 <BR>标准样例：北京公交1路、北京地铁1号线 <BR><BR>铁路线路命名规范如下： <BR>起点城市简称+终点城市简称+铁路 <BR><BR>例如：<A class=innerlink title=京九铁路 href=\"index.php?doc-innerlink-%E4%BA%AC%E4%B9%9D%E9%93%81%E8%B7%AF\">京九铁路</A>、<A class=innerlink title=京哈铁路 href=\"index.php?doc-innerlink-%E4%BA%AC%E5%93%88%E9%93%81%E8%B7%AF\">京哈铁路</A><BR><BR>高速公路命名规范如下： <BR>按照《国家高速公路网路线命名和编号规则》命名高速公路词条名称。&nbsp;&nbsp;</P>\r\n<DIV class=hd yy_tmml>汽车类词条名称规范</DIV>\r\n<P>&nbsp;1、制造商+品牌+型号（+特征参数） <BR><BR>如：<A class=innerlink title=东风标致207 href=\"index.php?doc-innerlink-%E4%B8%9C%E9%A3%8E%E6%A0%87%E8%87%B4207\">东风标致207</A> 或 <A class=innerlink title=一汽大众奥迪A6L2.4舒适型 href=\"index.php?doc-innerlink-%E4%B8%80%E6%B1%BD%E5%A4%A7%E4%BC%97%E5%A5%A5%E8%BF%AAA6L2.4%E8%88%92%E9%80%82%E5%9E%8B\">一汽大众奥迪A6L2.4舒适型</A> <BR><BR>2、国产汽车型号命名规则 <BR>根据《汽车产品型号编制规则》，应由汉语拼音字母和阿拉伯数字组成，能表明汽车的厂牌、类型和主要特征参数等。 <BR><BR>如：<A class=innerlink title=解放CA1091 href=\"index.php?doc-innerlink-%E8%A7%A3%E6%94%BECA1091\">解放CA1091</A><BR><BR>注：由于部分车型区别甚微，建议先完善大品牌、大系列的词条。 </P>\r\n<DIV class=hd yy_tmml>日期命名的事件类词条名称规范 </DIV>\r\n<P><BR>1、词条名称中不要添加引号。如“四二五”事件或“四二五”革命。都统一为：四二五事件，<A class=innerlink title=四二五革命 href=\"index.php?doc-innerlink-%E5%9B%9B%E4%BA%8C%E4%BA%94%E9%9D%A9%E5%91%BD\">四二五革命</A>。 <BR><BR>2、数字间是否添加“·”。此种情况有2类。 <BR><BR>a.不会产生歧义的时间。如：四二五事件，则中间不用添加“·”，即不用添加为 四·二五时间。 <BR><BR>b.会产生歧义的时间。如：<A class=innerlink title=一二九运动 href=\"index.php?doc-innerlink-%E4%B8%80%E4%BA%8C%E4%B9%9D%E8%BF%90%E5%8A%A8\">一二九运动</A>，可能会出现：一二·九运动 或 一·二九运动 。则需要在词条名中间添加“·”具体区分。 <BR><BR></P>\r\n<DIV class=hd yy_tmml>网站类词条命名规范 </DIV>\r\n<P>1、使用官方中文名称（网站logo显示的名称）。 <BR><BR>正确示例：<A class=innerlink title=互动百科 href=\"index.php?doc-innerlink-%E4%BA%92%E5%8A%A8%E7%99%BE%E7%A7%91\">互动百科</A>、<A class=innerlink title=新浪网 href=\"index.php?doc-innerlink-%E6%96%B0%E6%B5%AA%E7%BD%91\">新浪网</A>、<A class=innerlink title=搜狐 href=\"index.php?doc-innerlink-%E6%90%9C%E7%8B%90\">搜狐</A> <BR><BR>2、不可使用网站域名、域名简称作为词条名称 <BR><BR>错误示例：hudong、sina <BR><BR>3、遇到歧义词条时，做<A class=innerlink title=多义词 href=\"index.php?doc-innerlink-%E5%A4%9A%E4%B9%89%E8%AF%8D\">多义词</A>处理 <BR></P>\r\n<DIV class=hd yy_tmml>英译人名的词条名称规范</DIV>\r\n<P>1、英译人名必须为全称，且中间的符号为“·”，不用“-”和“.”。 <BR><BR>2、外国人名尽量使用最常用中文音译或公认中文名，当无法考证中文音译名称时，才考虑使用英文原名。 <BR><BR>正确词条标题，例如：<A class=innerlink title=乔治·华盛顿 href=\"index.php?doc-innerlink-%E4%B9%94%E6%B2%BB%C2%B7%E5%8D%8E%E7%9B%9B%E9%A1%BF\">乔治·华盛顿</A><BR><BR>不正确的词条标题，例如：乔治-华盛顿、乔治.华盛顿等。 <BR><BR>对于中国人常被提及的外国人名的词条名称，有以下两种处理情况 <BR>1、可用常用名做词条名的情况：该名字下只有唯一的一位名人，在其所属行业中有较大的贡献且被人们熟知。 <BR><BR>比如词条：<A class=innerlink title=奥巴马 href=\"index.php?doc-innerlink-%E5%A5%A5%E5%B7%B4%E9%A9%AC\">奥巴马</A>、<A class=innerlink title=普京 href=\"index.php?doc-innerlink-%E6%99%AE%E4%BA%AC\">普京</A> <BR><BR>2、常用名要做同页多义词的情况：该常用名有两个以上外国名人，存在多义词情况，且被人们熟知，他们在各自的行业领域中有较突出的贡献，或在同一行业领域都有较突出的成绩。 <BR><BR>如词条<A class=innerlink title=：布什 href=\"index.php?doc-innerlink-%EF%BC%9A%E5%B8%83%E4%BB%80\">：布什</A>、<A class=innerlink title=希拉里 href=\"index.php?doc-innerlink-%E5%B8%8C%E6%8B%89%E9%87%8C\">希拉里</A>。 <BR><BR>同页多义词的词条正文中需介绍各个名人的简介（简单一句话即可），并在每个介绍开头以全名来描述，并将全名添加成内链。用户可以给词条提建议，添加相关导航模块 <BR><BR>*注：符号“·”的输入方法：微软拼音输入法、智能ABC输入法、全拼输入法、王码五笔输入法以及郑码输入法（中文标点状态）：Shift+2；谷歌拼音、黑马神拼、紫光拼音：键盘左上方的“`”键；仓颉输入法：zxaq；拼音加加输入法：yd <BR></P>\r\n<DIV class=hd yy_tmml>中国皇帝的命名规范</DIV>\r\n<P>1、三国、南北朝、五代十国时期的君主用本名，正确示例：<A class=innerlink title=曹操 href=\"index.php?doc-innerlink-%E6%9B%B9%E6%93%8D\">曹操</A>、<A class=innerlink title=司马懿 href=\"index.php?doc-innerlink-%E5%8F%B8%E9%A9%AC%E6%87%BF\">司马懿</A>； <BR><BR>2、唐朝以前的皇帝：使用朝代名+谥号+帝。正确示例：<A class=innerlink title=汉武帝 href=\"index.php?doc-innerlink-%E6%B1%89%E6%AD%A6%E5%B8%9D\">汉武帝</A>； <BR><BR>3、唐朝至明朝的皇帝：使用朝代名+庙号。正确示例：<A class=innerlink title=唐太宗 href=\"index.php?doc-innerlink-%E5%94%90%E5%A4%AA%E5%AE%97\">唐太宗</A>； <BR><BR>4、明朝至清朝的皇帝：使用年号。正确示例：<A class=innerlink title=康熙 href=\"index.php?doc-innerlink-%E5%BA%B7%E7%86%99\">康熙</A>； <BR><BR>5、如有一个比<A class=innerlink title=谥号 href=\"index.php?doc-innerlink-%E8%B0%A5%E5%8F%B7\">谥号</A>、<A class=innerlink title=庙号 href=\"index.php?doc-innerlink-%E5%BA%99%E5%8F%B7\">庙号</A>或年号更常用的称号，则使用该称号。 <BR></P>\r\n<DIV class=hd yy_tmml>体育赛事类命名规范 </DIV>\r\n<P>1、多年一届赛事的名称命名规范：以“年代＋举办城市名称＋奥运会”为词条名。 <BR><BR>正确示例：<A class=innerlink title=1992年巴塞罗那奥运会 href=\"index.php?doc-innerlink-1992%E5%B9%B4%E5%B7%B4%E5%A1%9E%E7%BD%97%E9%82%A3%E5%A5%A5%E8%BF%90%E4%BC%9A\">1992年巴塞罗那奥运会</A> <BR><BR>2、冬奥会规则相同，以“年代＋举办城市名称＋冬奥会”为词条名。 <BR><BR>正确示例：<A class=innerlink title=2002年盐湖城冬奥会 href=\"index.php?doc-innerlink-2002%E5%B9%B4%E7%9B%90%E6%B9%96%E5%9F%8E%E5%86%AC%E5%A5%A5%E4%BC%9A\">2002年盐湖城冬奥会</A> <BR><BR>3、赛事相关纪念物命名规范：以纪念物名称为词条名。 <BR><BR>正确示例：<A class=innerlink title=福娃 href=\"index.php?doc-innerlink-%E7%A6%8F%E5%A8%83\">福娃</A> </P>\r\n<DIV class=hd yy_tmml>演唱会类命名规范</DIV>\r\n<P>年份+歌手名称+举办城市+演唱会 <BR>正确示例：2009年孙燕姿北京演唱会 <BR></P>\r\n<DIV class=hd yy_tmml>会展类词条命名规范</DIV>\r\n<P>1、国家级以上大规模的会展，以官方命名为准 <BR>如：<A class=innerlink title=2010年上海世博会 href=\"index.php?doc-innerlink-2010%E5%B9%B4%E4%B8%8A%E6%B5%B7%E4%B8%96%E5%8D%9A%E4%BC%9A\">2010年上海世博会</A><BR>2、地区性、行业性的会展，命名规则为：年份+地区名称+会展类型。 <BR>如：<A class=innerlink title=2008年北京国际汽车展览会 href=\"index.php?doc-innerlink-2008%E5%B9%B4%E5%8C%97%E4%BA%AC%E5%9B%BD%E9%99%85%E6%B1%BD%E8%BD%A6%E5%B1%95%E8%A7%88%E4%BC%9A\">2008年北京国际汽车展览会</A>（会展类型可使用简称） <BR></P>\r\n<DIV class=hd yy_tmml>阅兵类词条命名规范 </DIV>\r\n<P>时间（一般为年份）+国别+事由+阅兵式 <BR>如：<A class=innerlink title=1999年中国国庆50周年阅兵式 href=\"index.php?doc-innerlink-1999%E5%B9%B4%E4%B8%AD%E5%9B%BD%E5%9B%BD%E5%BA%8650%E5%91%A8%E5%B9%B4%E9%98%85%E5%85%B5%E5%BC%8F\">1999年中国国庆50周年阅兵式</A><BR></P>\r\n<DIV class=hd yy_tmml>外国式军服命名规范</DIV>\r\n<P>国家名称+军服 如：<A class=innerlink title=美国军服 href=\"index.php?doc-innerlink-%E7%BE%8E%E5%9B%BD%E5%86%9B%E6%9C%8D\">美国军服</A> <BR><BR></P>\r\n<DIV class=hd yy_tmml>中国式军服命名规范</DIV>\r\n<P>&nbsp;中国人民解放军+标准年代（1955，而非55）式+军服 <BR><BR>正确样例：<A class=innerlink title=中国人民解放军1950式军服 href=\"index.php?doc-innerlink-%E4%B8%AD%E5%9B%BD%E4%BA%BA%E6%B0%91%E8%A7%A3%E6%94%BE%E5%86%9B1950%E5%BC%8F%E5%86%9B%E6%9C%8D\">中国人民解放军1950式军服</A>、<A class=innerlink title=中国人民解放军2007式军服 href=\"index.php?doc-innerlink-%E4%B8%AD%E5%9B%BD%E4%BA%BA%E6%B0%91%E8%A7%A3%E6%94%BE%E5%86%9B2007%E5%BC%8F%E5%86%9B%E6%9C%8D\">中国人民解放军2007式军服</A></P>\r\n<P>&nbsp;</P>\r\n<DIV class=hd yy_tmml>年份日期类词条命名规范</DIV>\r\n<P><strong>公元元年前</strong> <BR><BR>公元前+阿拉伯数字+世纪 公元前+阿拉伯数字+年 <BR><BR>如：公元前3世纪 公元前375年 <BR><BR><strong>公元元年后</strong> <BR><BR>公元元年—公元1世纪 公元+阿拉伯数字（2—999）+年 公元1年统称为公元元年 <BR>公元1世纪后至今 阿拉伯数字+世纪 阿拉伯数字+年 <BR>如：公元344年、19世纪、1000年、1987年 <BR><BR><strong>月日</strong> <BR>月日命名：阿拉伯数字+月+阿拉伯数字+日 <BR>如：12月1日 <BR><BR><BR><BR></P>','haoran',1,1280640390,1280640390,'haoran',1,1,0,0,0,0,1,0),
	(39,0,'n','内容编写规范总则','','词条内容有三个基本原则\r\n1、内容需客观中立 2、内容非个人原创 3、内容需有据可查 \r\n以下几类内容不适合作为百科词条被收录\r\n1、不经筛选的资料：不经筛选、识别的资料，请勿直接复制、拷贝入互动百科。 2、个人理念','<DIV class=hd yy_tmml>词条内容有三个基本原则</DIV>\r\n<P>1、内容需客观中立 <BR>2、内容非个人原创 <BR>3、内容需有据可查 <BR><BR></P>\r\n<DIV class=hd yy_tmml>以下几类内容不适合作为百科词条被收录</DIV>\r\n<P>1、不经筛选的资料：不经筛选、识别的资料，请勿直接复制、拷贝入互动百科。 <BR><BR>2、个人理念：非著名人物的个人分析、理念；个人日志、个人履历表；纯粹的个人游戏攻略；游记、个人悼词；时事评论；预言类等资料；出现真实姓名（非公众人物）和提供电话号码，具有招聘、聊天、寻人、征友等特点。 <BR><BR>3、广告，宣传语、名录：包括为了增加流量而故意引导他人到某个网站或论坛，从事任何物品的交易，宣传、传销活动。 <BR><BR>4、恶意非法内容：破坏社会公共秩序，挑起民族、种族、宗教、地域等争端，提交含有色情、暴力、恐怖、诈骗等恶意非法内容。 <BR><BR></P>\r\n<DIV class=hd yy_tmml>标准的词条正文有以下基本要素</DIV>\r\n<P>1、有条理性的目录，内部链接要求规范，与词条密切相关。 <BR><BR>2、使用中文半角标点符号，标点符号和时间、数字、度量衡的使用符合规范。日期避免出现昨天、今天、前天等。 <BR><BR>3、页面美观： <BR><BR>（1）每段开始都要顶格，段与段之间多空出一个行； <BR><BR>（2）删除不必要的空格； <BR><BR>（3）删除乱码和显示不正常的文字； <BR><BR>（4）图片大小整齐，且都有相应注释，风格严谨客观，以居右为佳。 <BR><BR>（5）内容要标注参考资料，保证内容有据可查 <BR><BR></P>','haoran',1,1280640524,1280640524,'haoran',1,1,0,0,0,0,1,0),
	(40,0,'d','地名类规范','','地名类词条编写规范1、内容不求多，要求精，简单明确，可读性强的词条才是高分高质量的词条。 2、要注意内容逻辑性，要依照历史、地理、气候、环境、资源、经济、交通、行政区划、旅游、政治、文化、教育的顺序，从以','<DIV class=hd yy_tmml>地名类词条编写规范</DIV>1、内容不求多，要求精，简单明确，可读性强的词条才是高分高质量的词条。 <BR><BR>2、要注意内容逻辑性，要依照历史、地理、气候、环境、资源、经济、交通、行政区划、旅游、政治、文化、教育的顺序，从以上方面简介即可。每个目录的内容必须突出当地特色，无明显特色和价值的目录可以不添加，不要添加大篇幅赘述内容。 <BR><BR>3、图片要与内容密切相关，要能够反映当地地方特色，不相关或不能直白反映地方特色的图片不要加。 <BR><BR>4、参考资料不仅要格式规范，而且要能够证明资料来源，如参考资料反映不了词条内容，即不能证明词条内容的价值。 <BR><BR>5、注意词条的可读性，如果有大段内容，尽量用小标题等形式，理清脉络。 <BR><BR>\r\n<DIV class=hd yy_tmml>地名类词条编写易犯的错误 </DIV>1、内容过多，罗嗦。一句话能说清楚的事，就不要说十句。 <BR><BR>2、党建、招商、经济类的目录内容过多。不要照抄照搬新闻、公文，不要罗列数据。数据性的内容不是不可以有，但要简明，要能反映当地特点，没有说服力和代表性的数据不要写。 <BR><BR>3、图片要与词条，乃至所在目录的内容密切相关。注释要清楚明白，不能代表当地特色的图片，不要添加。 <BR><BR>4、恶意非法内容：破坏社会公共秩序，挑起民族、种族、宗教、地域等争端，提交含有色情、暴力、恐怖、诈骗等恶意非法内容。 <BR><BR>','haoran',1,1280640612,1280640612,'haoran',1,1,0,0,0,0,1,0),
	(41,0,'h','会展类规范','','会展类词条编写总体要求\r\n1、内容不宜过长，简明精炼即可 2、目录逻辑要清晰、顺畅 3、避免新闻性语体 4、图片、分类、相关词条、参考资料、内链等参照高分词条标准 会展类词条内容可以包括但不限于以下方面 1、会展','<DIV class=hd yy_tmml>会展类词条编写总体要求</DIV>\r\n<P>1、内容不宜过长，简明精炼即可 <BR><BR>2、目录逻辑要清晰、顺畅 <BR><BR>3、避免新闻性语体 <BR><BR>4、图片、分类、相关词条、参考资料、内链等参照高分词条标准 <BR><BR><strong>会展类词条内容可以包括但不限于以下方面</strong> <BR>1、会展象征类内容 如：会徽、吉祥物、主题、会歌等 <BR>2、组织机构 如：组委会、执行委员会等 <BR>3、参展者 如：国家（地区）、公司（企业）、组织机构等 <BR>4、园区、场馆、设施 <BR>5、门票、路线 <BR>6、申办过程 <BR>7、影响 <BR>8、特殊事件 <BR><BR></P>','haoran',1,1280640691,1280640691,'haoran',1,1,0,0,0,0,1,0),
	(42,0,'j','经管、法理类规范','','经济、管理、法律理论类词条写易犯的错误： \r\n1、“文不对题” 文不对题，一般有两种情况： 一是词条内容与词条名称完全不符，如在词条边际效益中添加了效益的概念。 二是，词条内容不能全面说明词条名称，如在词条资','<P><strong>经济、管理、法律理论类词条写易犯的错误：</strong> </P>\r\n<P><BR>1、“文不对题” <BR>文不对题，一般有两种情况： <BR><BR>一是词条内容与词条名称完全不符，如在词条边际效益中添加了效益的概念。 <BR><BR>二是，词条内容不能全面说明词条名称，如在词条资源配置力中只介绍了企业资源配置力。易出现的问题以后者居多。 <BR><BR>2、图片与内容不符或关系不大，不足以图释文字内容。 <BR>3、参考资料与词条内容不符，或不能反映词条全部内容出处。 <BR>4、未经有效整理的论文作为词条的内容。 <BR>5、论文中惯用的一些用语也不适用于词条正文。 <BR></P>','haoran',1,1280640967,1280640967,'haoran',1,2,0,0,0,0,1,0),
	(43,0,'m','民族、种族类规范','','民族、种族类词条内容可以包括但不限于以下方面 1、概况：如人口数量、分布地区等基本情况 2、起源及演变 3、信仰 4、饮食 5、服装 6、婚葬 7、传统节日 8、自治地区 9、民系 10、姓氏 11、知名人士 民族、种族类词条','<strong>民族、种族类词条内容可以包括但不限于以下方面</strong> <BR><BR>1、概况：如人口数量、分布地区等基本情况 <BR>2、起源及演变 <BR>3、信仰 <BR>4、饮食 <BR>5、服装 <BR>6、婚葬 <BR>7、传统节日 <BR>8、自治地区 <BR>9、民系 <BR>10、姓氏 <BR>11、知名人士 <BR><BR><strong>民族、种族类词条内容需要注意的以下几点</strong> <BR><BR>1、内容力求全面，表述力求精炼，不要写流水帐。 <BR>2、可以通过内链引导读者深入点击的内容，就不需要赘述了。如知名人物、自治地区等。<BR>3、图片、参考资料、相关词条等参考已有的高分词条的标准 <BR><BR><BR>','haoran',1,1280641026,1280641026,'haoran',1,3,0,0,0,0,1,0),
	(44,0,'q','汽车类规范','','汽车类词条编写规范： 1、内容要准确、详细的参数表，最好是数据化的，方便读者和用户搜索。 2、客观中立的用语，避免大篇幅照搬软文、广告或宣传稿。 3、大类、大系列词条注意内容主次分明，重点放在大系列、大类整','<P><strong>汽车类词条编写规范：</strong> <BR><BR>1、内容要准确、详细的参数表，最好是数据化的，方便读者和用户搜索。 <BR>2、客观中立的用语，避免大篇幅照搬软文、广告或宣传稿。 <BR>3、大类、大系列词条注意内容主次分明，重点放在大系列、大类整体介绍，避免把过多笔墨用于其中某一型号的介绍；如在词条 上海大众polo中全文介绍polo劲情的内容。 <BR>4、严格避免图文不符的情况。 <BR>5、关于报价：由于不同经销商、不同型号、不同时间价格均有不同，建议不写或写报价参考范围。 <BR><BR><BR></P>','haoran',1,1280641131,1280641131,'haoran',1,1,0,0,0,0,1,0),
	(31,0,'b','编辑器','','什么是编辑器？ 互动百科编辑器，是互动百科自主研发WIKI词条编辑工具。互动百科内的每个词条都是使用编辑器来实现编辑的。 编辑器有哪些功能？ 互动百科编辑器可以实现文字编辑、图片上传、添加目录、添加内链、创建','\r\n<strong>什么是编辑器？</strong> <br>互动百科编辑器，是互动百科自主研发WIKI词条编辑工具，提供给广大站长使用。每个词条编写都是使用编辑器来完成。 <br><br><strong>编辑器有哪些功能？</strong> <br>互动百科编辑器可以实现文字编辑、图片上传、添加目录、添加内链、创建表格等多种操作。该编辑器使用方法简单，便于初学者学习掌握。 <br>\r\n','haoran',1,1280479176,1280480915,'haoran',1,1,0,0,0,0,1,0),
	(32,0,'c','词条评审','','什么是词条评审？ 词条评审是互动百科站务对用户编辑的词条进行审核、评价的工作。互动百科站务按照词条评审标准，对词条的合理合法性做出判断，同时给予相应的奖惩。评审奖惩形式包括信用、积分、词条分值评定及评审','<DIV class=hd yy_tmml>什么是词条评审？ </DIV>词条评审是互动百科站务对用户编辑的词条进行审核、评价的工作。互动百科站务按照词条评审标准，对词条的合理合法性做出判断，同时给予相应的奖惩。评审奖惩形式包括信用、积分、词条分值评定及评审意见。对于合理、合法的词条，站务会给予信用、积分、分值等奖励，以感谢编辑者对内容的贡献。反之，如果内容存在不合理、不合法、文不对题等问题，站务也会对词条做删除等形式的处理。 <BR><BR>\r\n<DIV class=hd yy_tmml>评审标准 </DIV>\r\n<P><BR><strong>词条被删除的原因</strong></P>\r\n<P>&nbsp;1、词条名称必须是不带修饰词的陈述性词语。正确词条名例如：中国，长城&nbsp;<BR>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;I）不可以在名字后面加称号，年代，英文翻译。错误词条名例如：彭德怀将军、李白（公元701年—公元762年）、迈克尔•乔丹(Michael Jordan) <BR>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; II)不可以在词条前后加修饰性词语。（专有名词除外）错误词条名例如：伟大的中国、长城游览。 <BR>2、词条名称不可以是一个短语或是句子。错误名称例如：宋朝的历史、恐龙的起源、楼兰之谜、南极和北极的区别、有谁知道宋朝的历史。 <BR><BR>3、词条名称不可以是讨论的话题。错误名称例如：怎样可以有效减肥。 <BR>4、词条名称不可以含有特殊符号。错误名称例如：％，＊，～等。 <BR>5、词条名称中不可以含有错别字。错误名称例如：吊蓝，蓝球。 <BR>6、英译人名必须为全称。错误名称例如：诺贝尔，大卫等。 <BR>7、不可用古诗词的诗句作为词条s名。错误名称例如：春眠不觉晓，明月几时有等。 <BR>8、非专有名词的短句、数码类产品特性描述的词语不建议出现在词条中。错误名称例如：“只此一家，别无分店”、“XX超薄双待机彩屏D608手机”等。 <BR>9、词条名称不可以是网站网址。如www.hao123.com <BR><strong>词条版本被删除或得分（信用）较低的原因</strong> </P>\r\n<P><strong>1、词条内容过于简单 <BR></strong>• 诗词、文献、音像作品类词条，不应只有作品内容，还应具备作品类型、作者、创作年代、创作背景、内容简介等任意几项，对词条名做详细说明。 <BR>• 汉字、数字、方言、俚语、谚语、歇后语类词条应对词条名做详细说明。包括正确读法、解释、用法、出处等任意几项。 <BR>• 成语类词条内容需包含拼音、详细解释、相应成语典故。 <BR>• 法律、法规类词条全国人大或全国人大常委会通过的、以及国务院发布的应予通过，要有通过时间，背景，等内容描述，不可对其中一条做单独解释。 <BR>• 公司、网站、团体、组织类词条，必须以第三方口吻叙述，不可有广告和诋毁痕迹，不可出现第一人称叙述。 <BR>• 英文词条不能只是对英文单词或词组的翻译，而需要包括对该词条本身概念的解释。 例如，“Father”词条中不能只列举其中文翻译与包含这个单词的例句。 <BR>• 介绍风俗、习俗类词条必须有风俗、习俗所在地，来源，具体内容等。 <BR>• 皇帝类词条，词条内容详细说明该皇帝继位、退位日期以及在位时情况。 <BR><BR><strong>2、词条内容不正确 <BR></strong>• 词条解释与词条名称不符。 <BR>• 词条内容带个人感情色彩的评价，词条非客观陈述。错误词条内容如：××太伟大了，这本书特别好看等。 <BR>• 不可以做重复叙述。 <BR>• 不可直接复制新闻报道。 <BR>• 不可以将大量的相关资料链接地址直接放置在词条正文中 <BR>• 编辑内容必须与词条相关。例如，在“金字塔”词条内，增加了一段关于“孔子”的内容，就不能被通过。 <BR>• 修改内容必须是词条解释，或提出针对词条本身的看法，不可以是简单的评论。例如，在“金字塔”词条中，增加了一句 “哈哈，说得好”，就不能被通过。 <BR>• 编辑过的词条不能降低原词条的内容质量，不能随意对原词条中正确的内容进行完全删除或覆盖，不能有刷分（信用）嫌疑。 <BR>• 不可给多个词条批量添加同一个链接。 <BR><BR><strong>3、词条格式不规范</strong> <BR>• 词条格式与百科词条内容展示格式不符，表现为正文信息（链接、字体设置等区域）显示为源码或乱码。建议您在进行编辑操作时，对于来自外网站页面和第三方编辑器的内容，先进行格式过滤，粘贴前转为纯文本格式。提交前注意预览所编辑的版本，以防版本含有源码或乱码。 <BR><BR></P><strong>4、修改原因不明或有误</strong> \r\n<P>修改词条原因不明确。例如：编辑词条、不具体、更完善、更具体、123等。 <BR>•修改词条原因错误。例如：修改内容是添加图片，填写的修改原因为添加链接。 <BR>•修改词条原因必须具体说明修改区域。例如：修改了词条中的内容并添加了链接，修改原因应写明：添加内容以及链接必须指出修改删除的错误内容并给出具体原因；只修改错别字，必须指明具体的错字。 </P><strong>5、恶意修改词条</strong> \r\n<P>• 添加与词条主题无关的链接 <BR>• 断词、断句添加链接 <BR>• 撤销词条中有意义链接 <BR>• 删除词条中与词条名称相符的正确内容 <BR>• 删除正确开放分类 <BR>• 添加图片与词条名称无关 <BR>• 添加与词条无关参考资料 <BR>• 断句、断词、断字排版 <BR>• 破坏词条整体版面，整段修改原正文字体格式或添加链接 <BR></P><strong>6、开放分类不正确</strong> \r\n<P>• 必须与词条以及词条内容相关，不可以完全无关。例如，“白毛女”的开放分类可以允许有“红头绳”，但是“金字塔”这个开放分类显然是不正确的。 <BR>• 必须是有基本意义的。例如，“ 1 ”这个开放分类通常是没有意义的。 <BR>• 开放分类通常是一个简单词，而不是并列的几个词。例如，“中国 社会 年代”、“中国—历史”、“中国、年代”都是错误的格式。 <BR>• 不可添加添加无意义、意思重复的分类。 <BR>• 开放分类中不可有乱码。 <BR><BR></P><strong>7、参考资料不正确</strong> \r\n<P>• 参考资料必须是各种出处和来源。包括正式的书刊、网站，也可以是非 正式的言论等等。但不可以是具体内容。例如：“刘德华”词条的参考资料，可以是“官方网站”，但不能是“出生日期”、“兴趣爱好”等等。 <BR>• 参考资料可以是词条内容的补充资料；也可以是词条内容的出处。如果是用于表明词条内容的出处，则必须直接指向有词条内容的页面。 <BR>• 您的词条内容中可能存在较大争议或可信度可能受到质疑，需要提供准确的参考资料作为判断依据。 <BR><BR><strong>8、词条包含广告、灌水或不良信息</strong> <BR>• 所有词条的任何位置（包括词条名称、正文内容、开放分类、参考资料、修改原因、图片等），都不允许出现电话号码、电子邮箱地址、即时通讯工具号码等具体联系信息。 <BR>• 鉴于百科面对的用户群及专业性，除中文、英文词条外，不鼓励其他语言类词条的创建。（有具体翻译及参考资料的除外） <BR>• 以下行为将被视作添加广告信息或不良信息： <BR>在非品牌产品词条内，单独添加品牌和产品介绍，或使用非第三方口吻的表述。 <BR>在词条任何位置，添加在线阅读和下载URL地址。 <BR>在词条正文内，添加URL地址。 <BR>在词条参考资料栏，添加不能匹配词条正文内容或词条主题的URL地址。 <BR><BR><strong>9、图片不正确或包含不良信息</strong> <BR>• 您所上传的图片包含涉及政治、色情、暴力或其他不良信息，不适合作为百科词条中的配图展现； • 您所上传的图片所表达的信息对于理解词条内容没有帮助，或您选择的图片位置破坏了词条的整体排版效果，使词条正文的可读性受到影响； <BR>• 您所上传的图片清晰度较差、无法对理解词条内容起到帮助，或图片清晰、正确，但是包含有明显的水印、文字、联系方式等具有广告特征的信息； <BR>• 您所上传的图片正确，但您所填写的图注文字不正确，影响了词条配图的整体效果。 <BR><BR><strong>10、重复提交词条与恶意刷分（信用）</strong> <BR>• 如果您的词条未被通过，请您查看未通过词条列表中原因解释，并据此进一步对词条进行修改。盲目的做无修改重复提交对于词条通过审核是没有帮助的。 <BR>• 互动百科不欢迎以获取分数（信用）为目的，通过利用规则刷分的用户；请您遵守百科协议，为共同完善这部网络百科全书而一起努力。 <BR><BR></P>','haoran',1,1280479556,1280479556,'haoran',1,1,0,0,0,0,1,0),
	(33,0,'l','历史版本','','什么是历史版本？ 每个编辑者编辑词条后，并不是直接覆盖词条原有内容，而是将原有内容保存，将新增或修改的内容保存并于原因内容合并保存为新版本。这样，每一次编辑都会产生新的版本，一个词条的所有版本即为该词条','<strong>什么是历史版本？</strong> <BR>每个编辑者编辑词条后，并不是直接覆盖词条原有内容，而是将原有内容保存，将新增或修改的内容保存并于原因内容合并保存为新版本。这样，每一次编辑都会产生新的版本，一个词条的所有版本即为该词条的历史版本。 <BR><BR><strong>如何查看历史版本？</strong> <BR>在每个词条正文页的右侧点击“共有×个版本”（如下图），即可进入该词条的历史版本页。 <BR>\r\n<DIV class=\"img img_l\" style=\"WIDTH: 244px\"><A title=\"什么是历史版本？&#13;每个编辑者编辑词条后，并不是直接覆盖词条原有内容，而是将原有内容保存，将新增或修改的内容保存并于原因内容合并保存为新版本。这样，每一次编辑都会产生新的版本，一个词条的所有版本即为该词条的历史版本。&#13;&#13;如何查看历史版本？&#13;在每个词条正文页的右侧点击“共有×个版本”（如下图），即可进入该词条的历史版本页。&#13;&#13;&#13;&#13;&#13;&#13;&#13;&#13;在历史版本页里可以查看各版本基本信息，如编辑时间、编辑者、版本改动及修改原因等情况。\" href=\"uploads/201007/1280480111x5gMoLRz.jpg\" target=_blank><IMG title=\"什么是历史版本？&#13;每个编辑者编辑词条后，并不是直接覆盖词条原有内容，而是将原有内容保存，将新增或修改的内容保存并于原因内容合并保存为新版本。这样，每一次编辑都会产生新的版本，一个词条的所有版本即为该词条的历史版本。&#13;&#13;如何查看历史版本？&#13;在每个词条正文页的右侧点击“共有×个版本”（如下图），即可进入该词条的历史版本页。&#13;&#13;&#13;&#13;&#13;&#13;&#13;&#13;在历史版本页里可以查看各版本基本信息，如编辑时间、编辑者、版本改动及修改原因等情况。\" alt=\"什么是历史版本？&#13;每个编辑者编辑词条后，并不是直接覆盖词条原有内容，而是将原有内容保存，将新增或修改的内容保存并于原因内容合并保存为新版本。这样，每一次编辑都会产生新的版本，一个词条的所有版本即为该词条的历史版本。&#13;&#13;如何查看历史版本？&#13;在每个词条正文页的右侧点击“共有×个版本”（如下图），即可进入该词条的历史版本页。&#13;&#13;&#13;&#13;&#13;&#13;&#13;&#13;在历史版本页里可以查看各版本基本信息，如编辑时间、编辑者、版本改动及修改原因等情况。\" src=\"uploads/201007/1280480111x5gMoLRz_s.jpg\"></A><strong>查看历史版本</strong></DIV>\r\n<P>在历史版本页里可以查看各版本基本信息，如编辑时间、编辑者、版本改动及修改原因等情况。 <BR><BR></P>','haoran',1,1280480136,1280480195,'haoran',1,3,2,2,1,0,1,0),
	(34,0,'x','协作者','','什么是协作者？ 词条的协作者是参与该词条编辑的所有用户。 什么是最新协作者？ 最新协作者是指最近一个参与该词条编辑的用户。在词条正文页右侧，可以查看到该词条当前的最新贡献者。（如下图） \r\n最新协作者','<strong>什么是协作者？ <BR></strong>词条的协作者是参与该词条编辑的所有用户。 <BR><BR><strong>什么是最新协作者？</strong> <BR>最新协作者是指最近一个参与该词条编辑的用户。在词条正文页右侧，可以查看到该词条当前的最新贡献者。（如下图） <BR><BR>\r\n<DIV class=\"img img_l\" style=\"WIDTH: 242px\"><A title=最新协作者 href=\"uploads/201007/1280481631dwnSN6dQ.jpg\" target=_blank><IMG title=最新协作者 alt=最新协作者 src=\"uploads/201007/1280481631dwnSN6dQ_s.jpg\"></A><strong>最新协作者</strong></DIV><BR><BR><BR><BR>','haoran',1,1280481637,1280481637,'haoran',1,3,0,0,0,0,1,0),
	(35,0,'','同义词','','什么叫同义词？同义词，是表达的意义相同但是名称不同的词条，例如：“北京”和“北京市”是同义词。为了避免不同用户提交名称不同而内容相同的词条，造成资源浪费和重复劳动，互动百科会将概念相同的词条添加为同义','<DIV class=hd yy_tmml>\r\n<DIV class=\"img img_r\" style=\"WIDTH: 300px\"><A title=同义词 href=\"uploads/201007/1280483039ysMVbk9b.gif\" target=_blank><IMG title=同义词 alt=同义词 src=\"uploads/201007/1280483039ysMVbk9b_s.gif\"></A><strong>同义词</strong></DIV>什么叫同义词？</DIV>\r\n<P>同义词，是表达的意义相同但是名称不同的词条，例如：“北京”和“北京市”是同义词。为了避免不同用户提交名称不同而内容相同的词条，造成资源浪费和重复劳动，互动百科会将概念相同的词条添加为同义词，并以其中较为规范或较为常用的词条作为标准词，例如：将“湖南省”作为“湖南”的标准词。<BR><BR>当一个词条被添加为同义词后，该词条原有内容会被隐藏，并提示你查看标准词条。如下图所示：<BR><BR><strong>同义词添加规范:</strong></P>\r\n<TABLE class=table>\r\n<TBODY>\r\n<TR>\r\n<TD colSpan=3><strong>类别</strong></TD>\r\n<TD colSpan=2><strong>添加规则</strong></TD>\r\n<TD><strong>示例</strong></TD></TR></TBODY>\r\n<TBODY>\r\n<TR>\r\n<TD rowSpan=6><strong>人名类</strong></TD>\r\n<TD rowSpan=3>英译人名</TD>\r\n<TD rowSpan=3>一般以习惯用名为标准词，如词条产生歧义则不添加同义词</TD>\r\n<TD rowSpan=6>以习惯用名为标准词，如有歧义则不添加同义词</TD>\r\n<TD rowSpan=2>简称、全称和习惯用名，以习惯用名为标准词，如词条产生歧义则不添加同义词。</TD>\r\n<TD>正确示例：托马斯·阿尔瓦·爱迪生＝托马斯·爱迪生</TD></TR>\r\n<TR>\r\n<TD>错误示例：爱迪生和托马斯·爱迪生（因爱迪生是一个姓氏，有歧义）</TD></TR>\r\n<TR>\r\n<TD>英译人名的多种译名以常用名称标准词，如词条产生歧义则不添加同义词。</TD>\r\n<TD>正确示例：乔万尼·卜伽丘＝乔万尼·薄伽丘</TD></TR>\r\n<TR>\r\n<TD colSpan=2 rowSpan=2>人物姓氏类</TD>\r\n<TD rowSpan=2>以×姓为标准词，如果×氏与×姓的内容产生歧义则不添加同义词。</TD>\r\n<TD>正确示例：李氏＝李姓</TD></TR>\r\n<TR>\r\n<TD>错误示例：钮祜禄氏</TD></TR>\r\n<TR>\r\n<TD colSpan=2>神话类人名</TD>\r\n<TD>以常用名为标准词，如果词条产生歧义则不添加同义词。</TD>\r\n<TD>错误示例：太阳神和阿波罗</TD></TR>\r\n<TR>\r\n<TD rowSpan=2><strong>皇帝类</strong></TD>\r\n<TD colSpan=2>中国皇帝名</TD>\r\n<TD colSpan=2>皇帝年号类词条以历史习惯用法为标准词。</TD>\r\n<TD>正确示例：纣王＝商纣王</TD></TR>\r\n<TR>\r\n<TD colSpan=2>外国皇帝名（世袭名称与本名）</TD>\r\n<TD colSpan=2>（世袭名称与本名）以世袭名称为标准词，如果出现歧义则不予以添加。</TD>\r\n<TD>正确示例：夏尔·罗贝尔＝查理一世</TD></TR>\r\n<TR>\r\n<TD rowSpan=7>地名类</TD>\r\n<TD colSpan=2 rowSpan=3>中国地名</TD>\r\n<TD rowSpan=7>地名类词条全称与简称的意义有歧义则不添加同义词</TD>\r\n<TD rowSpan=2>省市级地名，以地名简称为标准词（不加“省”“市”字样）</TD>\r\n<TD>正确示例：大连市＝大连 </TD></TR>\r\n<TR>\r\n<TD>错误示例：吉林和吉林市 </TD></TR>\r\n<TR>\r\n<TD>省市级以下行政单位地名，以全称为标准词（加“区”“县”“乡”等字样）。</TD>\r\n<TD>正确示例：阳曲＝阳曲县</TD></TR>\r\n<TR>\r\n<TD colSpan=2>外国地名</TD>\r\n<TD>以外国地名以常用名为标准词。</TD>\r\n<TD>正确示例：夏威夷州＝夏威夷</TD></TR>\r\n<TR>\r\n<TD colSpan=2 rowSpan=2>景点名称</TD>\r\n<TD rowSpan=2>以景点全称为标准词。</TD>\r\n<TD>正确示例：卧龙自然保护区＝卧龙国家自然保护区 </TD></TR>\r\n<TR>\r\n<TD>错误示例：武夷山自然保护区和武夷山 </TD></TR>\r\n<TR>\r\n<TD colSpan=2>地理名称</TD>\r\n<TD>以历史叫法为标准词。</TD>\r\n<TD>&nbsp;</TD></TR>\r\n<TR>\r\n<TD rowSpan=2>企业类</TD>\r\n<TD colSpan=2>外国企业缩写</TD>\r\n<TD rowSpan=2>一般以企业全称为标准词</TD>\r\n<TD>如有其他意义则不并入企业中文全称。</TD>\r\n<TD>错误示例：ibm</TD></TR>\r\n<TR>\r\n<TD colSpan=2>企业名称缩写</TD>\r\n<TD>与企业全称意义不完全相同则不并入中文全称。</TD>\r\n<TD>错误示例：海尔与海尔集团</TD></TR>\r\n<TR>\r\n<TD rowSpan=2>学校类</TD>\r\n<TD colSpan=2 rowSpan=2>&nbsp;</TD>\r\n<TD colSpan=2 rowSpan=2>以学校全称为标准词，如果简称与全称意义不完全相同则不添加同义词。</TD>\r\n<TD>正确示例：北京四中＝北京市第四中学</TD></TR>\r\n<TR>\r\n<TD>错误示例：四中和北京四中 </TD></TR>\r\n<TR>\r\n<TD rowSpan=2>动植物类</TD>\r\n<TD colSpan=2 rowSpan=2>&nbsp;</TD>\r\n<TD colSpan=2 rowSpan=2>动植物名称以学名为标准词，如果其他名称有歧义则不添加同义词。</TD>\r\n<TD>&nbsp;</TD></TR>\r\n<TR>\r\n<TD>&nbsp;</TD></TR>\r\n<TR>\r\n<TD rowSpan=2><strong>历史事件类</strong></TD>\r\n<TD colSpan=2>词条名称涉及一月、十一月、十二月</TD>\r\n<TD colSpan=2>应用间隔号·将表示月和日的数字隔开，避免歧义。涉及其它月份时，不用间隔号。</TD>\r\n<TD>正确示例：一二九运动＝一二·九运动&nbsp;</TD></TR>\r\n<TR>\r\n<TD colSpan=2>词条名称带引号</TD>\r\n<TD colSpan=2>不应出现引号等符号（事件名称本身带引号的除外）</TD>\r\n<TD>正确示例：“一二九”运动＝一二·九运动</TD></TR>\r\n<TR>\r\n<TD rowSpan=2><strong>军事类</strong></TD>\r\n<TD colSpan=2>武器装备类</TD>\r\n<TD colSpan=2>以官方名称为标准词。</TD>\r\n<TD>&nbsp;</TD></TR>\r\n<TR>\r\n<TD colSpan=2>军事战役类</TD>\r\n<TD colSpan=2>军事战役名称以历史记载全称为标准词。（词条尽量没有引号等特殊符号）。</TD>\r\n<TD>正确示例：平型关大战＝平型关大捷</TD></TR>\r\n<TR>\r\n<TD rowSpan=5>医药化学类</TD>\r\n<TD colSpan=2 rowSpan=2>化学符号类</TD>\r\n<TD rowSpan=5>以学名为标准词</TD>\r\n<TD rowSpan=2>以中文简称为标准词，如果缩写与中文有歧义则不添加同义词。</TD>\r\n<TD>正确示例：镁元素=镁</TD></TR>\r\n<TR>\r\n<TD>错误示例：Mg和镁&nbsp;</TD></TR>\r\n<TR>\r\n<TD colSpan=2>药物名称</TD>\r\n<TD>以药物学名为标准词。</TD>\r\n<TD>正确示例：先锋霉素1号=头孢噻吩</TD></TR>\r\n<TR>\r\n<TD colSpan=2 rowSpan=2>病症名称</TD>\r\n<TD rowSpan=2>以病症医学标准名称为标准词。</TD>\r\n<TD>正确示例：帕金森氏病=震颤麻痹</TD></TR>\r\n<TR>\r\n<TD>正确示例：先锋霉素1号=头孢噻吩</TD></TR>\r\n<TR>\r\n<TD rowSpan=2>体育赛事类</TD>\r\n<TD colSpan=2>多年一届赛事的名称</TD>\r\n<TD colSpan=2>以“年代＋举办城市名称＋奥运会”为标准词。</TD>\r\n<TD>正确示例：第二十五届夏季奥林匹克运动会＝1992年巴塞罗那奥运会</TD></TR>\r\n<TR>\r\n<TD colSpan=2>赛事相关纪念物</TD>\r\n<TD colSpan=2>以纪念物名称为标准词。</TD>\r\n<TD>正确示例：奥运会福娃＝福娃</TD></TR>\r\n<TR>\r\n<TD>节日类</TD>\r\n<TD colSpan=2>&nbsp;</TD>\r\n<TD colSpan=2>以“××节”为标准词，如一个节日有多种叫法则以最常用的为标准词。其他叫法如果出现歧义则不添加同义词。</TD>\r\n<TD>正确示例：端午＝端午节</TD></TR>\r\n<TR>\r\n<TD rowSpan=2>天文类</TD>\r\n<TD colSpan=2>天体名称</TD>\r\n<TD colSpan=2>以科学命名为标准词，其他名称和编号均加入科学命名中，如果编号意义有歧义则不添加同义词。</TD>\r\n<TD>正确示例：天津四＝天鹅座α星</TD></TR>\r\n<TR>\r\n<TD colSpan=2>人造卫星</TD>\r\n<TD colSpan=2>以官方发布的全称为标准词。</TD>\r\n<TD>&nbsp;</TD></TR>\r\n<TR>\r\n<TD rowSpan=2>文艺作品类</TD>\r\n<TD colSpan=2 rowSpan=2>以作品全称（无书名号的）为标准词</TD>\r\n<TD colSpan=2 rowSpan=2>一个作品有多个名称，以常用名为标准词。如果名称有歧义，则不添加。</TD>\r\n<TD>正确示例：《圣经》=圣经</TD></TR>\r\n<TR>\r\n<TD>错误示例：泰坦尼克号和《泰坦尼克号》</TD></TR>\r\n<TR>\r\n<TD rowSpan=4>语言类</TD>\r\n<TD colSpan=2>语种</TD>\r\n<TD rowSpan=4>以习惯用名为标准词</TD>\r\n<TD>以最常用的名称为标准词</TD>\r\n<TD>正确示例：英国话=英语</TD></TR>\r\n<TR>\r\n<TD colSpan=2>方言</TD>\r\n<TD>以××方言为标准词</TD>\r\n<TD>正确示例：山西话=山西方言</TD></TR>\r\n<TR>\r\n<TD colSpan=2 rowSpan=2>编程语言</TD>\r\n<TD rowSpan=2>以最常用的名称为标准词，如名称有歧义的，则不添加。</TD>\r\n<TD>正确示例：编程C语言=C语言</TD></TR>\r\n<TR>\r\n<TD>错误示例：C和C语言</TD></TR>\r\n<TR>\r\n<TD>英文缩写类</TD>\r\n<TD colSpan=2>&nbsp;</TD>\r\n<TD colSpan=2>英文缩写类词条与中文译名如果出现歧义则不添加同义词。</TD>\r\n<TD>错误示例：WTO和世界贸易组织</TD></TR>\r\n<TR>\r\n<TD rowSpan=2>时间类</TD>\r\n<TD colSpan=2 rowSpan=2>&nbsp;</TD>\r\n<TD rowSpan=2>以×年×月×日为标准词</TD>\r\n<TD rowSpan=2>数字使用阿拉伯数字，单独的数字不添加同义词。</TD>\r\n<TD>正确示例：1949年10月1日</TD></TR>\r\n<TR>\r\n<TD>错误示例：1949和1949年</TD></TR>\r\n<TR>\r\n<TD rowSpan=2>交通设施</TD>\r\n<TD colSpan=2>轨道交通设施</TD>\r\n<TD rowSpan=2>以习惯用名为标准词</TD>\r\n<TD>以常用名为标准词，如果词条产生歧义则不添加同义词。</TD>\r\n<TD rowSpan=2>正确示例：京津塘高速=京津塘高速公路</TD></TR>\r\n<TR>\r\n<TD colSpan=2>交通站点设施</TD>\r\n<TD>以全称为标准词，如果词条产生歧义则不添加同义词。</TD></TR>\r\n<TR>\r\n<TD rowSpan=2>其他</TD>\r\n<TD colSpan=2 rowSpan=2>&nbsp;</TD>\r\n<TD colSpan=2 rowSpan=2>一个概念有多种叫法，以常用名为标准词。如果名称有歧义则不添加。</TD>\r\n<TD>正确示例：清王朝＝清朝 </TD></TR>\r\n<TR>\r\n<TD>错误示例：DNA和脱氧核糖核酸 </TD></TR></TBODY></TABLE>','haoran',1,1280482285,1280483396,'haoran',1,15,4,4,0,0,1,0),
	(36,0,'x','相关词条','','相关词条\r\n什么是相关词条？ 相关词条就是与一个词条相关的其他词条。在词条正文页的右侧（如下图）可查看和完善相关词条。 \r\n&nbsp;\r\n&nbsp;\r\n如何完善相关词条？ 在词条正文页右侧的相关词条列表，点击完善，进入','\r\n<DIV class=\"img img_l\" style=\"WIDTH: 181px\"><A title=相关词条 href=\"uploads/201007/1280484381eiJRbLHZ.gif\" target=_blank><IMG title=相关词条 alt=相关词条 src=\"uploads/201007/1280484381eiJRbLHZ_s.gif\"></A><strong>相关词条</strong></DIV>\r\n<P>什么是相关词条？ <BR>相关词条就是与一个词条相关的其他词条。在词条正文页的右侧（如下图）可查看和完善相关词条。 <BR><BR><BR><BR><BR><BR><BR><BR></P>\r\n<P>&nbsp;</P>\r\n<P>&nbsp;</P>\r\n<P><strong>如何完善相关词条？</strong> <BR>在词条正文页右侧的相关词条列表，点击完善，进入相关词条操作页面。你可以为该词条添加10个相关词条，在词条名后面还可以添加该词条的描述，如中国的相关词条北京，描述为中国的首都。（如下图） </P>\r\n<DIV class=\"img img_l\" style=\"WIDTH: 291px\"><A title=相关词条 href=\"uploads/201007/1280484396d6hN0GoI.gif\" target=_blank><IMG title=相关词条 alt=相关词条 src=\"uploads/201007/1280484396d6hN0GoI_s.gif\"></A><strong>完善相关词条</strong></DIV>\r\n<P><BR><BR><BR><BR><BR><BR>&nbsp;</P>\r\n<P>&nbsp;</P>\r\n<P>&nbsp;</P>\r\n<P>&nbsp;</P>\r\n<P>&nbsp;</P>\r\n<P>完成后点击提交，就可以看到你刚刚完善的相关词条了。 <BR><BR></P>','haoran',1,1280484410,1280484410,'haoran',1,1,0,0,0,0,1,0),
	(21,0,'W','Wiki','','什么是Wiki（维客）？\r\nWiki是一种多人协作的写作工具，读者即作者。互动百科由所有注册用户共同维护，每个人都可以通过编写百科词条对任何主题进行扩展和探讨。Wiki依靠众人不断地更新修改，开创了一种借助互联网','\r\n什么是Wiki（维客）？<br>\r\nWiki是一种多人协作的写作工具，读者即作者。互动百科由所有注册用户共同维护，每个人都可以通过编写百科词条对任何主题进行扩展和探讨。Wiki依靠众人不断地更新修改，开创了一种借助互联网创建、积累、完善和分享知识的全新模式。<br>\r\n<div class=\"hd yy_tmml\">定义</div>\r\n<div class=\"img img_r\" style=\"width: 300px;\"><a title=\"wiki\" href=\"http://tupian.hudong.com/a2_51_00_01300000258678125298008205520_jpg.html\" target=\"_blank\"><img title=\"wiki\" alt=\"wiki\" src=\"http://a2.att.hudong.com/51/00/01300000258678125298008205520_s.jpg\"></a><strong>wiki</strong></div>\r\n<p>Wiki的历史还不长，无论是Wiki概念自身，还是相关软件系统的特性，还都在热烈的讨论中；所以怎样的一个站点才能称得上是一个Wiki系统还是有争议的。与Wiki相关最近出现的技术还有blog，它们都降低了<a class=\"innerlink\" title=\"超文本\" href=\"index.php?doc-innerlink-%E8%B6%85%E6%96%87%E6%9C%AC\">超文本</a>写作和发布的难度。这两者都与内容管理系统关系紧密。第一个 Wiki 网站诞生于1995年，Ward Cunningham 创建的，作为<a class=\"innerlink\" title=\"波特兰\" href=\"index.php?doc-innerlink-%E6%B3%A2%E7%89%B9%E5%85%B0\">波特兰</a>的模式仓库的模式定义和讨论的交互性场所: http://c2.com/ppr/；而其根源可以上述到1972年<a class=\"innerlink\" title=\"卡耐基·梅隆大学\" href=\"index.php?doc-innerlink-%E5%8D%A1%E8%80%90%E5%9F%BA%C2%B7%E6%A2%85%E9%9A%86%E5%A4%A7%E5%AD%A6\">卡耐基·梅隆大学</a>的 ZOG 数据库系统。<br><br>1995年Ward Cunningham为了方便模式社群的交流建立了一个工具－波特兰模式知识库（Portland Pattern Repository）。在建立这个系统的过程中，Ward Cunningham创造了Wiki的概念和名称，并且实现了支持这些概念的服务系统。这个系统是最早的Wiki系统。从1996年至2000年间，波特兰模式知识库围绕着面向社群的协作式写作，不断发展出一些支持这种写作的辅助工具，从而使Wiki的概念不断得到丰富。同时Wiki的概念也得到了传播，出现了许多类似的网站和软件系统。<br><br>1995年3月25日 维客历史正式开始<br>1995年5月1日 “模式名单的革新”发布。这是世界上第一个维客网站，是对“波特兰模式知识库”的一个自动 补充。网站发布之初，便立即在“模式社区”（pattern community）中获得成功。 <br>该网站定位的演变历程：<br>1995年 模式社区及其他们的资源和应用；<br>1996年 普通设计、建筑以及方法；<br>1997年 从人和组织的角度看待规划设计；<br>1998年 偏激的规划设计；<br>2000年 维客本身；<br>2003年 维客、社会学等。<br>社区引入并保留的概念创新：<br>1994年 “近期访问者”（RecentVisitors）、“人物索引”（PeopleIndex）；<br>1995年 “并不时新的变化”（NotSoRecentChanges）；<br>1996年 “丝线模式”（ThreadMode）、“丝线模式无益”（ThreadModeConsideredHarmful ） <br>1996年 “维客分类”（WikiCategories）；<br>1997年 “路线图”（RoadMaps）；<br>1999年 “更改概要”（ChangeSummary）（虽未继续下去，但却带来了快速变化〔QuickChanges〕）；<br>1999年 “随机页面”（RandomPages）；<br>1999年 “（月度）变化”（ChangesIn ）页面出现（“并不时新的变化”分离出去 并逐渐消亡）；<br>2000年 “搜索助手”（SearchHelper）</p>\r\n<div class=\"hd yy_tmml\">特点</div>\r\n<p><strong>使用方便</strong><br>维护快捷：快速删除、存取、更改超文本页面（这也是为什幺叫作“wiki wiki”的原因）。<br>格式简单：用简单的格式标记来取代 HTML 的复杂格式标记。（类似所见即所得的风格）&nbsp;<br>链接方便：通过简单标记，直接以关键字名来建立链接(页面、外部连接、图像等)。&nbsp;<br>命名平易：关键字名就是页面名称，并且被置于一个单层、平直的名空间中。</p>\r\n<p><strong>有组织<br></strong>自组织的：同页面的内容一样，整个超文本的组织结构也是可以修改、演化的。&nbsp;<br>可汇聚的：系统内多个内容重复的页面可以被汇聚于其中的某个，相应的链接结构也随之改变。</p>\r\n<p><strong>可增长<br></strong>可增长：页面的<a class=\"innerlink\" title=\"链接\" href=\"index.php?doc-innerlink-%E9%93%BE%E6%8E%A5\">链接</a>目标可以尚未存在，通过点击链接，我们可以创建这些页面，从而使系统得到增长。&nbsp;<br>修订历史：记录页面的修订历史，页面的各个版本都可以被获取。 </p>\r\n<p><strong>开放性<br></strong>开放的：社群的成员可以任意创建、修改、删除页面。&nbsp;<br>可观察：系统内页面的变动可以被访问者观察到。</p>\r\n<div class=\"hd yy_tmml\">与blog区别</div>\r\n<p>\r\n<table>\r\n<tbody>\r\n<tr>\r\n<td><strong>Wiki</strong>站点一般都有着一个严格的共同关注，Wiki的主题一般是明确的坚定的。Wiki站点的内容要求着高度相关性。最其确定的主旨，任何写作者和参与者都应当严肃地遵从。Wiki的协作是针对同一主题作外延式和内涵式的扩展，将同一个问题谈得很充分很深入。</td>\r\n<td><a class=\"innerlink\" title=\"Blog\" href=\"index.php?doc-innerlink-Blog\">Blog</a>是一种无主题变奏，一般来说是少数人（大多数情况下是一个人）的关注的蔓延。一般的Blog站点都会有一个主题，凡是这个主旨往往都是很松散的，而且一般不会去刻意地控制内容的相关性。</td></tr>\r\n<tr>\r\n<td><strong>Wiki</strong>非常适合于做一种 “All about something”的站点。个性化在这里不是最重要的，信息的完整性和充分性以及权威性才是真正的目标。Wiki由于其技术实现和含义的交织和复杂性，如果你漫无主题地去发挥，最终连建立者自己都会很快的迷失。</td>\r\n<td><strong>Blog</strong>注重的是个人的思想（不管多么不成熟，多么地匪夷所思），个性化是Blog的最重要特色。Blog注重交流，一般是小范围的交流，通过访问者对一些或者一篇Blog文章的评论和交互。</td></tr>\r\n<tr>\r\n<td><strong>Wiki</strong>使用最多也最合适的就是去共同进行文档的写作或者文章/书籍的写作。特别是技术相关的（尤以程序开发相关的）FAQ，更多的也是更合适地以Wiki来展现。</td>\r\n<td><strong>Blog</strong>也有协作的意思，但是协作一般是指多人维护，而维护者之间可能着力于完全不同的内容。这种协作在内容而言是比较松散的。任何人，任何主体的站点，你都可以以Blog方式展示，都有它的生机和活力。</td></tr></tbody></table></p>\r\n<div class=\"hd yy_tmml\">技术规范</div>\r\n<p>wiki是任何人都可以编辑的网页。在每个正常显示的页面下面都有一个编辑按钮，点击这个按钮你就可以编辑页面了。有些人要问：任何人都可以编辑？那不是乱套了么？其实不然，wiki体现了一种哲学思想：“<strong>人之初，性本善</strong>”。wiki认为不会有人故意破坏wiki网站，大家来编辑网页是为了共同参与。虽然如此，还是不免有很多好奇者无意中更改了wiki网站的内容，那么为了维持网站的正确性，wiki在技术上和运行规则上做了一些规范，做到既持面向大众公开参与的原则又尽量降低众多参与者带来的风险。这些技术和规范包括：</p>\r\n<p>1、保留网页每一次更动的版本：即使参与者将整个页面删掉，管理者也会很方便地从纪录中恢复最正确的页面版本。<br><br>2、页面锁定：一些主要页面可以用锁定技术将内容锁定，外人就不可再编辑了。（虽然wiki都有这个功能，但我看到使用它的甚少，这可能跟wiki倡导的精神相违背吧）。<br><br>3、版本对比：wiki站点的每个页面都有更新纪录，任意两个版本之间都可以进行对比，wiki会自动找出他们的差别。<br><br>4、更新描述：你在更新一个页面的时候可以在描述栏中写上几句话，如你更新内容的依据、或是跟管理员的对话等。这样，管理员就知道你更新页面的情况。<br><br>5、IP禁止：尽管wiki倡导“人之初，性本善”，人人都可参与，但破坏者、恶作剧者总是存在的，wiki有纪录和封存IP的功能，将破坏者的IP纪录下来他就不能在胡作非为了。<br><br>6、Sand Box(沙箱)测试：一般的wiki都建有一个Sand Box的页面，这个页面就是让初次参与的人先到Sand Box页面做测试，Sand Box与普通页面是一样的，这里你可以任意涂鸦、随意测试。<br><br>7、编辑规则：任何一个开放的wiki都有一个编辑规则，上面写明大家建设维护wiki站点的规则。没有规矩不成方圆的道理任何地方都是适用的。</p>\r\n<div class=\"hd yy_tmml\">WIKI词条编辑步骤 </div>\r\n<p><br><br><br><br>·第一步，对几个常用的在线百科网站进行了解，注册用户，了解编辑说明，注意各网站对词条编写及修改的规则。 <br><br><br><br>·第二步，确定自己希望编写的词条。可以选择自己熟悉的人事物、行业知识、热点事件等。 <br><br><br><br>·第三步，找到自己希望编辑词条所在目录并尝试性编辑词条，可以对已经存在的词条提交修改，尝试性增加自己希望的内容及网址链接，进一步熟悉该网站的规则及审核周期，推测管理员的偏好等。 <br><br><br><br></p>\r\n<div class=\"hd yy_tmml\">代表系统</div>\r\n<p>&nbsp;WIKI概念的发明人是Ward Cunningham，该词来源于<a class=\"innerlink\" title=\"夏威夷\" href=\"index.php?doc-innerlink-%E5%A4%8F%E5%A8%81%E5%A4%B7\">夏威夷</a>语的“wee kee wee kee”，原本是“快点快点” (quick)的意思。 </p>\r\n<p><strong>最早的Wiki系统</strong> <br>1995年沃德·坎宁安为了方便模式社群的交流建立了一个工具－波特兰模式知识库（Portland Pattern Repository）。在建立这个系统的过程中，沃德·坎宁安创造了Wiki的概念和名称，并且实现了支持这些概念的服务系统。这个系统是最早的Wiki系统。从1996年至2000年间，波特兰模式知识库围绕着面向社群的协作式写作，不断发展出一些支持这种写作的辅助工具，从而使Wiki的概念不断得到丰富。同时Wiki的概念也得到了传播，出现了许多类似的网站和软件系统。 </p>\r\n<p><strong>世界上最大的Wiki系统</strong> <br><a class=\"innerlink\" title=\"维基百科\" href=\"index.php?doc-innerlink-%E7%BB%B4%E5%9F%BA%E7%99%BE%E7%A7%91\">维基百科</a>是目前世界上最大的Wiki系统，它是一个基于Wiki和GNU FDL（GFDL）的百科全书网站系统，致力于创建内容开放的百科全书。该系统于2001年1月投入运行，2001年2月超过1,000条条目，2001年7月超过10,000条条目，至2005年3月，英文条目已经超过500,000条。维基百科条目的迅速增长说明了维基百科系统的健壮，也说明了Wiki的概念是经得起验证的。 </p>\r\n<div class=\"hd yy_tmml\">自主程序</div>\r\n<p>开源的WIKI建站系统可以方便的建立自己的wiki网站，常见的建站系统有：wikimedia、HDwiki。<br>HDwiki是<a class=\"innerlink\" title=\"互动在线\" href=\"index.php?doc-innerlink-%E4%BA%92%E5%8A%A8%E5%9C%A8%E7%BA%BF\">互动在线</a>开发的一款针对中文百科的建站系统，具有良好的性能、丰富的扩展接口、简便的操作方法等等优势。越来越受到中国站长的青睐。<br>网址：http://kaiyuan.hudong.com/</p>\r\n<div class=\"hd yy_tmml\">国内百科</div>\r\n<div class=\"img img_r\" style=\"width: 236px;\"><a title=\"互动百科\" href=\"http://tupian.hudong.com/a3_30_35_01300000007943125013352962863_gif.html\" target=\"_blank\"><img title=\"互动百科\" alt=\"互动百科\" src=\"http://a3.att.hudong.com/30/35/01300000007943125013352962863_s.gif\"></a><strong>互动百科</strong></div>\r\n<p>互动百科：<a href=\"http://www.hudong.com/\">http://www.hudong.com/</a><br>艺术百科：http://wiki.artcomb.com/<br>协作百科：http://www.knowtive.com/<br>天魔维客网：http://wiki.tianmo.com.cn/<br>康Q网：http://www.kangq.com/<br>中华百科：http://www.wikichina.com/<br>IT Wiki：http://wiki.ccw.com.cn/<br>网络天书：http://www.cnic.org/<br>维库：http://www.wikilib.com/<br>CookBus Wiki：http://www.cookbus.com/wiki<br>天下维客：http://www.allwiki.com/<br>美食客：http://www.mskee.com/wiki <br>网络大典WIKI：http://wiki.networkdictionary.cn/<br>MBA智库百科：http://www.mbalib.com/</p>\r\n','haoran',1,1280462873,1280462873,'haoran',1,1,0,0,0,0,1,0),
	(22,0,'W','Wiki与BBS','','&nbsp;Wiki与BBS有哪些区别？\r\n&nbsp;核心&nbsp;\r\n&nbsp;表现方式&nbsp;\r\n&nbsp;强调内容&nbsp;\r\n&nbsp;\r\nBBS\r\n&nbsp;以话题为主线&nbsp;\r\n&nbsp;众人对某一观点或事件各抒己见&nbsp;\r\n&nbsp;以你为主，挺的就是你','<P>&nbsp;Wiki与BBS有哪些区别？</P>\r\n<TABLE class=table>\r\n<TBODY>\r\n<TR>\r\n<TD>&nbsp;Web产品 <BR></TD>\r\n<TD>核心&nbsp;&nbsp;</TD>\r\n<TD>&nbsp;表现方式 </TD>\r\n<TD>强调内容&nbsp;&nbsp;</TD></TR>\r\n<TR>\r\n<TD>&nbsp;BBS</TD>\r\n<TD>&nbsp;以话题为主线 </TD>\r\n<TD>&nbsp;众人对某一观点或事件各抒己见 </TD>\r\n<TD>&nbsp;以你为主，挺的就是你。 </TD></TR>\r\n<TR>\r\n<TD>&nbsp;Wiki</TD>\r\n<TD>\r\n<P>&nbsp;以客观知识、</P>\r\n<P>信息为主线 </P></TD>\r\n<TD>\r\n<P>&nbsp;以中立、客观、公正、公平的观点编写词条，<BR>通过你修我改，创造丰富的知识库，展现自身才学，为更多网民服务。 <BR></P></TD>\r\n<TD>&nbsp;以客观存在为主，我们在分享、更新与创造丰富知识。 </TD></TR></TBODY></TABLE>','haoran',1,1280471918,1280472668,'haoran',1,4,2,2,0,0,1,0),
	(23,0,'W','Wiki与Blog','','Wiki与Blog有哪些区别？\r\n\r\n\r\n\r\n\r\n&nbsp;Web产品&nbsp; \r\n&nbsp;核心&nbsp;\r\n表现方式\r\n&nbsp;强调内容&nbsp;&nbsp;\r\n\r\n&nbsp;Blog \r\n&nbsp;以个人为主线&nbsp;\r\n&nbsp;展示自我\r\n&nbsp;以我为主，我的地盘听我的。&','<P>Wiki与Blog有哪些区别？</P>\r\n<P>\r\n<TABLE class=table>\r\n<TBODY>\r\n<TR>\r\n<TD>&nbsp;Web产品&nbsp; </TD>\r\n<TD>&nbsp;核心&nbsp;</TD>\r\n<TD>表现方式</TD>\r\n<TD>&nbsp;强调内容&nbsp;&nbsp;</TD></TR>\r\n<TR>\r\n<TD>&nbsp;Blog </TD>\r\n<TD>&nbsp;以个人为主线&nbsp;</TD>\r\n<TD>&nbsp;展示自我</TD>\r\n<TD>&nbsp;以我为主，我的地盘听我的。&nbsp;</TD></TR>\r\n<TR>\r\n<TD>&nbsp;Wiki</TD>\r\n<TD>&nbsp;以客观知识、信息为主线&nbsp;</TD>\r\n<TD>\r\n<P>&nbsp;以中立、客观、公正、公平的观点编写词条，<BR>通过你修我改，创造丰富的知识库，<BR>展现自身才学，为更多网民服务。&nbsp; <BR></P></TD>\r\n<TD>以客观存在为主，<BR>我们在分享、<BR>更新与创造丰富知识。&nbsp;</TD></TR></TBODY></TABLE></P>','haoran',1,1280473023,1280473023,'haoran',1,3,0,0,0,0,1,0),
	(24,0,'z','注册/登录','','如何注册 初次访问互动百科的浏览者，可以通过右上角的用户中心进入用户注册页面。（见下图） \r\n注册\r\n&nbsp;\r\n&nbsp;\r\n&nbsp;\r\n&nbsp;\r\n&nbsp;\r\n&nbsp;\r\n&nbsp;\r\n你只需花费几十秒时间，填写个人信息。即可成功注册','<DIV class=hd yy_tmml>如何注册 </DIV><BR>初次访问互动百科的浏览者，可以通过右上角的用户中心进入用户注册页面。（见下图） <BR>\r\n<DIV class=\"img img_l\" style=\"WIDTH: 300px\"><A title=注册 href=\"uploads/201007/1280473204IYZ3mITb.jpg\" target=_blank><IMG title=注册 alt=注册 src=\"uploads/201007/1280473204IYZ3mITb_s.jpg\"></A><strong>注册</strong></DIV>\r\n<P>&nbsp;</P>\r\n<P>&nbsp;</P>\r\n<P>&nbsp;</P>\r\n<P>&nbsp;</P>\r\n<P>&nbsp;</P>\r\n<P>&nbsp;</P>\r\n<P><BR>&nbsp;</P>\r\n<P>你只需花费几十秒时间，填写个人信息。即可成功注册成为本站用户。 <BR></P>\r\n<DIV class=hd yy_tmml>如何登录</DIV><BR>已注册的本站用户，再次访问本站是，在右上角登录框输入注册邮箱、密码和验证码，即可登录本站点 <BR>','haoran',1,1280473408,1280473408,'haoran',1,1,0,0,0,0,1,0),
	(25,0,'z','站内信','','什么是站内信？ 站内信是互动百科用户之间进行在线交流的重要途径。 站内信大体分为两种类型： 系统信件\r\n一种是系统、管理员或网站工作人员发给你的站内信，词条评审通知、用户加好友申请等等。这种站内信的发信人，','<P><strong>什么是站内信？</strong> <BR>站内信是互动百科用户之间进行在线交流的重要途径。 <BR>站内信大体分为两种类型： </P><strong>系统信件</strong>\r\n<P>一种是系统、管理员或网站工作人员发给你的站内信，词条评审通知、用户加好友申请等等。这种站内信的发信人，一般为ADMIN或网站管理员。 </P>\r\n<P><strong>好友信件</strong></P>\r\n<P>另一种是你的好友发给你的站内信<BR></P>','haoran',1,1280473702,1280473702,'haoran',1,1,0,0,0,0,1,0),
	(26,0,'x','信用和积分','','什么是信用？ 信用是本站对于热衷于百科编辑，并能贡献优质内容的用户的奖励。编辑百科词条并贡献优质内容都有可能获得信用。 信用由经验丰富的站务人工评审后可以获得，通常版本发布后的3日内，站务会对版本评审，根','<DIV class=hd yy_tmml>什么是信用？ </DIV>信用是本站对于热衷于百科编辑，并能贡献优质内容的用户的奖励。编辑百科词条并贡献优质内容都有可能获得信用。 <BR><BR>信用由经验丰富的站务人工评审后可以获得，通常版本发布后的3日内，站务会对版本评审，根据版本内容进行奖惩。 <BR><BR>互动站务评审时会综合考虑词条名称准确性、词条价值、编辑难度、内容深度、导语精炼度、目录完整性、内部链接准确性、页面美观度、内容条理性、图片质量等诸多因素。 <BR><BR><A class=innerlink title=信用 href=\"index.php?doc-innerlink-%E4%BF%A1%E7%94%A8\">信用</A>是根据单一版本的贡献奖励的，奖励分为0、+1、+2、+5、+10、+20、+50七个档次。 <BR><BR>\r\n<TABLE class=table>\r\n<TBODY>\r\n<TR>\r\n<TD>&nbsp;奖励信用数 </TD>\r\n<TD>&nbsp;版本要求 <BR></TD></TR>\r\n<TR>\r\n<TD>&nbsp;0 </TD>\r\n<TD>&nbsp;未添加合理内容，对词条质量提升无帮助等。</TD></TR>\r\n<TR>\r\n<TD>&nbsp;+1 </TD>\r\n<TD>&nbsp;对词条质量提升贡献较小，如修改非重要性的错别字，简单修改排版等。</TD></TR>\r\n<TR>\r\n<TD>&nbsp;+2 </TD>\r\n<TD>&nbsp;对词条质量提升贡献小，如少量补充非关键内容，简单修改排版未达到最佳效果等。 </TD></TR>\r\n<TR>\r\n<TD>&nbsp;+5 </TD>\r\n<TD>&nbsp;对词条质量提升有贡献，如内容较完善，排版基本合理，不影响读者阅读。 </TD></TR>\r\n<TR>\r\n<TD>&nbsp;+10 </TD>\r\n<TD>&nbsp;对词条质量提升有较大贡献，如内容准确，排版合理，无明显错误，便于读者理解等； </TD></TR>\r\n<TR>\r\n<TD>&nbsp;+20</TD>\r\n<TD>&nbsp;对词条质量提升有突出贡献，如内容简洁准确、目录逻辑清晰、内部链接准确等；</TD></TR>\r\n<TR>\r\n<TD>&nbsp;+50 </TD>\r\n<TD>&nbsp;对词条质量提升起到非常突出的贡献，如内容非常丰富准确、目录逻辑清晰、内部链接准确而丰富、图片质量很高且注释标准、页面美观整洁等； </TD></TR></TBODY></TABLE>此外，如果您创建或协作的词条内容有违法、违规行为，互动站务评审您的词条时，也会视情节严重程度，扣除一定量的信用（最多一次扣除-10个信用）。 <BR><BR>\r\n<DIV class=hd yy_tmml>什么是积分？ </DIV>积分是指您在参与词条编辑，创建等信息协作贡献时，获得的奖励，是您活跃度的体现。 <BR>','haoran',1,1280473950,1280480010,'haoran',1,4,1,1,0,0,1,0),
	(27,0,'j','积分换礼','','如何兑换礼品？ 在导航上点击积分商店，即可进入礼品商店。 兑换礼品，消耗一定的积分，和信用。选择好你喜欢的礼品后，点击“我要兑换”，在弹出的对话框中按要求填写你的详细信息，并将你本人身份证复印件或者电子','<strong>如何兑换礼品？</strong> <BR>在导航上点击积分商店，即可进入礼品商店。 <BR>兑换礼品，消耗一定的积分，和信用。<BR><BR>选择好你喜欢的礼品后，点击“我要兑换”，在弹出的对话框中按要求填写你的详细信息，并将你本人身份证复印件或者电子版通过邮件发送到指定的邮箱后。我们的工作人员在收到你的兑换申请和个人证件信息后将第一时间处理，并及时发放礼品。 <BR>','haoran',1,1280474203,1280474203,'haoran',1,1,0,0,0,0,1,0),
	(29,0,'c','词条的概念','','什么是词条？\r\n词条，又称辞条，是互动百科所含内容的基础单位。简单的说，一个词条用于客观陈述概括一件事物、一个人物等，类似词典里的词条。 例如，八路军、圆明园等就是比较规范的词条。 \r\n哪些内容不适合加入百','<DIV class=hd yy_tmml>什么是词条？</DIV>\r\n<P>词条，又称辞条，是互动百科所含内容的基础单位。简单的说，一个词条用于客观陈述概括一件事物、一个人物等，类似词典里的词条。 <BR>例如，八路军、圆明园等就是比较规范的词条。 </P>\r\n<DIV class=hd yy_tmml>哪些内容不适合加入百科词条？ </DIV>\r\n<P>1、未经整理的资料：未经识别、筛选、编改，直接拷贝其他网站、出版物等的内容，如未经整理的新闻等； <BR>2、带有浓厚个人色彩的观点和言论：非权威人物的个人分析、评论；个人日志、个人履历表；个人游戏攻略；个人游记、个人悼词；预言等。 <BR>3、个人信息：电子邮箱、电话号码等个人联系方式。 <BR>4、广告宣传类：广告，宣传语（稿），具有招聘、聊天、寻人、征友等性质的内容。 <BR>5、违法、违规内容：破坏社会公共秩序，挑起民族、种族、宗教、地域等争端，含有色情、暴力、恐怖、诈骗等非法内容的。 <BR></P>','haoran',1,1280478375,1280478375,'haoran',1,2,0,0,0,0,1,0),
	(30,0,'c','创建/协作','','如何创建词条？ 首先，您需要确认将要创建的词条符合“互动百科词条名称规范”。 然后，你可以通过以下方法创建词条： 搜索您要创建的百科词条，如果您搜索的词条未创建，会提示您进入该词条的创建页面。创建词条时，','<DIV class=hd yy_tmml>如何创建词条？ </DIV>首先，您需要确认将要创建的词条符合“互动百科词条名称规范”。 <BR>然后，你可以通过以下方法创建词条： <BR><BR>搜索您要创建的百科词条，如果您搜索的词条未创建，会提示您进入该词条的创建页面。创建词条时，还可以为词条添加相应的开放分类。 <BR><BR>\r\n<DIV class=hd yy_tmml>什么是规范的词条名称？ </DIV>互动百科词条名称的基本规范为：<BR>　　 <BR><strong>1、词条名称必须是陈述性词语，不可以在词条前后加修饰性词语。</strong> <BR><BR>正确示例：故宫、刘德华、大熊猫 <BR>错误示例：毛泽东主席、白居易（公元772年—公元846年）、迈克尔•乔丹(Michael Jordan) 、伟大的中国共产党、偶像周杰伦。 <BR><BR><strong>2、词条名称不可以是一个短语或是句子、讨论话题、新闻类文章名称等。</strong> <BR><BR>错误示例：例如“网站访问量上不去的19个因素” <BR><BR><strong>3、词条名称不可以含有特殊符号和空格。</strong> <BR><BR>错误示例：％，＊，～，＞，＃等。 <BR><BR><strong>4、词条名称中不可以含有错别字。</strong> <BR><BR>错误示例：马领薯。 <BR><BR>\r\n<DIV class=hd yy_tmml>如何协作词条？ </DIV>互动百科的所有词条都可编辑，在词条正文页点击 “编辑词条”按钮，即可对词条进行编辑。此外，还可对词条进行分段编辑，点击段落右上方的“编辑本段”按钮，即可对该段落进行编辑。 <BR><BR>\r\n<DIV class=hd yy_tmml>什么是目录？如何添加目录？ </DIV><BR>互动百科的目录类似于文章中的段落标题，是组织词条内容的重要工具。目录还有索引的功能，浏览者通过点击目录可以快速到达并浏览该段内容。 <BR><BR>在词条编辑页面，用鼠标选中要成为目录标题的文字，然后点击“添加目录”按钮，文章就会自动生成一个目录。如下图所示： \r\n<DIV class=\"img img_r\" style=\"WIDTH: 300px\"><A title=目录 href=\"uploads/201007/1280478661MFjaRlse.jpg\" target=_blank><IMG title=目录 alt=目录 src=\"uploads/201007/1280478661MFjaRlse_s.jpg\"></A><strong>目录</strong></DIV><BR><BR><BR><BR><BR><BR><BR><BR>为了简明扼要，建议每个目录字数在6个字以内。 <BR>目录分为两级，一级目录以下可以设置多个二级目录，两级目录会同时显示在页面索引中。 <BR>当编辑完词条，点击“发布”按钮后，编辑器就会在词条正文中自动生成一个目录。目录前半部分为词条名称，后半部分为您添加的目录。 <BR>目录生成后，在词条正文页，目录数如超过5个，多出部分将自动隐藏，点击“显示全部”，即可看到完整目录。如下图所示： \r\n<DIV class=\"img img_l\" style=\"WIDTH: 300px\"><A title=目录展示效果 href=\"uploads/201007/1280478734FqlmXXjw.gif\" target=_blank><IMG title=目录展示效果 alt=目录展示效果 src=\"uploads/201007/1280478734FqlmXXjw_s.gif\"></A><strong>目录展示效果</strong></DIV>\r\n<P><BR><BR><BR><BR><BR><BR><BR><BR>&nbsp;</P>\r\n<P>&nbsp;</P>\r\n<P>小贴士：添加两级目录的快捷键分别是Ctrl+1与ctrl+2。 </P>\r\n<DIV class=hd yy_tmml>什么是内链？ </DIV>\r\n<P>内链，全称内部链接。当一个词条正文中包含有其他相关或者热门词条时，用户在点击这些词条的内部链接后将跳转到相应的词条中，方便了用户的扩展阅读。在词条中添加内部链接，可以加强词条与词条之间的关联性，这是百科编辑中非常重要的一个环节，也是衡量百科编辑水平高低的重要参考。 <BR><BR>在词条编辑页面，用鼠标选中要添加内部链接的文字，然后点击“内链”按钮，文字上就会添加上内部链接。如下图所示： </P>\r\n<DIV class=\"img img_l\" style=\"WIDTH: 300px\"><A title=添加内链 href=\"uploads/201007/1280478782eTJQLlB2.jpg\" target=_blank><IMG title=添加内链 alt=添加内链 src=\"uploads/201007/1280478782eTJQLlB2_s.jpg\"></A><strong>添加内链</strong></DIV>\r\n<P><BR><BR><BR><BR><BR><BR><BR><BR>&nbsp;</P>\r\n<P>&nbsp;</P>\r\n<P>小贴士：插入内部链接的快捷方式是Alt+Q <BR>内部链接的注意事项： <BR>a、词条本身不用刷链接，示例：“月食”这个词条下，不要将 “月食”刷成内部链接。 <BR>b、内部链接的规范与词条名称规范相同，请参见词条名称基本规范。 <BR>c、内部链接应考虑词条准确性、完整性，如“某某毕业于北京大学”，内部链接应该选“北京大学”，而不是选“北京”。 <BR></P>\r\n<DIV class=hd yy_tmml>如何插入图片？ </DIV>\r\n<P>在词条中，插入合理的图片，不仅能让词条版面更美观，而且能帮助读者更准确地理解词条的内容。 <BR>在词条的编辑页面中，首先选择好插入图片的位置然后点击“插入图片”。 <BR>在弹出的图片选择页（如下图）上，点击“浏览”选择要上传的图片。 <BR></P>\r\n<DIV class=\"img img_l\" style=\"WIDTH: 251px\"><A title=上传图片 href=\"uploads/201007/1280478848FyxkHtlk.jpg\" target=_blank><IMG title=上传图片 alt=上传图片 src=\"uploads/201007/1280478848FyxkHtlk_s.jpg\"></A><strong>上传图片</strong></DIV>\r\n<P><BR><BR><BR><BR><BR><BR><BR>&nbsp;</P>\r\n<P>&nbsp;</P>\r\n<P>&nbsp;</P>\r\n<P>&nbsp;</P>\r\n<P>&nbsp;</P>\r\n<P>然后选择图片大小。互动百科词条中有大图和小图两种可供选择。 <BR>图片对齐方式包括：居左和居右两种。居左是指图片在左，文字在右的排版方式；反之，居右，是指图片在右文字在左。 <BR>如果对图片位置不满意可以选中图片框，然后拖动到满意的位置即可。 <BR>图片的格式必须是.gif或者.jpg格式。</P>\r\n<DIV class=hd yy_tmml>如何插入表格？ </DIV>\r\n<P>将光标放在要插入表格的地方之后，选择“插入表格”，如下图： <BR></P>\r\n<DIV class=\"img img_l\" style=\"WIDTH: 300px\"><A title=插入表格 href=\"uploads/201007/1280478898SFstEENh.jpg\" target=_blank><IMG title=插入表格 alt=插入表格 src=\"uploads/201007/1280478898SFstEENh_s.jpg\"></A><strong>插入表格</strong></DIV>\r\n<P><BR><BR><BR><BR><BR><BR><BR>&nbsp;</P>\r\n<P>&nbsp;</P>\r\n<P>&nbsp;</P>\r\n<P>在弹出的插入表格菜单选择表格的行数、列数。点击后表格就生成了。<BR>如果还想对表格进行调整和改变，可以使用“表格菜单”调整。 <BR>使用这些功能可以进行修改表格行属性、单元格属性、删除、增加行（或列）等操作。 </P>\r\n<DIV class=hd yy_tmml>如何插入特殊符号？</DIV>\r\n<P>&nbsp;将光标放在要插入符号的地方之后，选择“特殊符号”按钮，如下图： </P>\r\n<DIV class=\"img img_l\" style=\"WIDTH: 257px\"><A title=插入特殊符号 href=\"uploads/201007/1280479044pFZdWL5X.jpg\" target=_blank><IMG title=插入特殊符号 alt=插入特殊符号 src=\"uploads/201007/1280479044pFZdWL5X_s.jpg\"></A><strong>插入特殊符号</strong></DIV>\r\n<P><BR><BR><BR><BR><BR>&nbsp;</P>\r\n<P>&nbsp;</P>\r\n<P>&nbsp;</P>\r\n<P>&nbsp;</P>\r\n<P>&nbsp;</P>\r\n<P><BR>在弹出菜单选择想要插入的符号，不存在的符号可以到MS Word中寻找，再粘贴到编辑器中。 </P>','haoran',1,1280479100,1280479100,'haoran',1,4,0,0,0,0,1,0),
	(19,0,'H','HDWiki3.0','HDWiki','&nbsp;\r\n\r\n\r\nHDWiki界面\r\n\r\n&nbsp;\r\n概况\r\nHDWiki作为中国第一家拥有自主知识产权的中文WIKI 系统，由互动在线（北京）科技有限公司（www.hudong.com）于2006年11月28日正式推出，力争为给国内外众多的WIKI 爱好者提供一个免费、易用、功能强大的WIKI 建站系统。互动维客开源系统（HDWiki）的推出，填补了中文WIKI 建站系统的空白。HDWiki 一经面市，即获得广大中小站长和WIKI 爱好者的喜爱，目前每日下载超过2500 次，数十家网','<p>&nbsp;</p>\r\n\r\n<p>\r\n<div class=\"img img_l\" ><a title=\"点击查看原图\" href=\"http://tupian.hudong.com/a0_63_46_01300000089730121005462271055_jpg.html\"target=\"_blank\"><img title=\"互动百科：HDWiki\" alt=\"互动百科：HDWiki\" src=\"http://a0.att.hudong.com/63/46/01300000089730121005462271055_s.jpg\" /></a><strong>HDWiki界面</strong></div></p>\r\n<p><br></p>\r\n<p><br><br>&nbsp;</p>\r\n<div class=\"hd yy_tmml\">概况</div>\r\n<p>HDWiki作为中国第一家拥有自主知识产权的中文WIKI 系统，由互动在线（北京）科技有限公司（www.hudong.com）于2006年11月28日正式推出，力争为给国内外众多的<a class=\"innerlink\" title=\"WIKI \" href=\"index.php?doc-innerlink-WIKI%20\">WIKI </a>爱好者提供一个免费、易用、功能强大的WIKI 建站系统。<br>互动维客开源系统（HDWiki）的推出，填补了中文WIKI 建站系统的空白。HDWiki 一经面市，即获得广大中小站长和WIKI 爱好者的喜爱，目前每日下载超过2500 次，数十家网站成功搭建WIKI 站点及频道。互动在线不断加强技术研发，通过在<a class=\"innerlink\" title=\"SourceForge \" href=\"index.php?doc-innerlink-SourceForge%20\">SourceForge </a>上建立项目，吸引WIKI 技术爱好者加入到HDWiki 的开发中来。</p>\r\n<div class=\"hd yy_tmml\">组成</div>\r\n<p>HDWiki 系统包括：百科功能、网站功能、插件功能。这些功能为WIKI 必须具备的基础功能，更多建站常用的功能可以通过安装插件实现。</p>\r\n<p>百科功能：为WIKI百科网站必备的功能，包括百科词条浏览、<a class=\"innerlink\" title=\"百科编辑器\" href=\"index.php?doc-innerlink-%E7%99%BE%E7%A7%91%E7%BC%96%E8%BE%91%E5%99%A8\">百科编辑器</a>、版本管理、词条管理、分类管理、统计、搜索功能，版本对比，贡献者，简单个人空间等。</p>\r\n<p>网站功能包括：与用户相关的功能，包括注册登录、用户管理、数据库管理、网站管理，摸摸功能，首页推荐，用户管理，权限管理，文字过滤功能，积分功能等。</p>\r\n<p>插件功能包括：API功能，维吧功能，邀请注册功能，风格管理，高级个人空间功能，模板功能，专题管理，广告管理，公告管理，友情链接管理，UC整合，站内信系统等。 </p>\r\n<div class=\"hd yy_tmml\">用途</div>\r\n<div style=\"width: 300px;\" class=\"img img_r\"><a  title=\"点击查看原图\" href=\"http://tupian.hudong.com/a1_00_68_01300000350658123943683201128_jpg.html\" target=\"_blank\"><img  title=\"（图）用户体验\" alt=\"（图）用户体验\" src=\"http://a1.att.hudong.com/00/68/01300000350658123943683201128_s.jpg\"></a><strong>用户体验</strong></div>\r\n<p><strong>1、用户体验<br></strong>创建本论坛的专业知识库，知识库词条可以在帖子正文自动刷成内部链接，鼠标摸上去，就会显示出词条摘要。用户所摸即所得，增强用户体验。效果图如下<br><br><strong>2、内容建设</strong><br>知识库词条由互动百科为您免费提供，可自动批量生成，保存到本地；不费吹灰之力，网站瞬间便增加上万优质百科词条。<br></p>\r\n<div style=\"width: 300px;\" class=\"img img_r\"><a  title=\"点击查看原图\" href=\"http://tupian.hudong.com/a1_50_68_01300000350658123943689586225_jpg.html\" target=\"_blank\"><img  title=\"（图）广告收益\" alt=\"（图）广告收益\" src=\"http://a1.att.hudong.com/50/68/01300000350658123943689586225_s.jpg\"></a><strong>广告收益</strong></div>\r\n<p><strong>3、广告收益（正在开发中）</strong><br>词条摘要框都可显示广告，网站广告位增加无数，您从此不用再为没地方放广告发愁。效果图如下<br></p><strong>4、SEO优化<br></strong>帖子增加内链无数，对SEO极其有利，<a class=\"innerlink\" title=\"搜索引擎\" href=\"index.php?doc-innerlink-%E6%90%9C%E7%B4%A2%E5%BC%95%E6%93%8E\">搜索引擎</a>爱你没商量！<br>\r\n<div class=\"hd yy_tmml\">优势</div>\r\n<p><strong>一、增加论坛专业度</strong><br>在论坛运营的过程中，用户对于论坛的专业度比较感兴趣，比如一个地区性论坛，网友们肯定对这个地区比较有兴趣，如果使用HDWIKI制作一个地区百科，将<a class=\"innerlink\" title=\"人文地理\" href=\"index.php?doc-innerlink-%E4%BA%BA%E6%96%87%E5%9C%B0%E7%90%86\">人文地理</a>、风景名胜等地区资料输入进去，这样不但能够增加用户的黏合度，还能够使搜索引擎将网站的权重提高，行业性论坛也是如此，可以添加一些的行业新闻与行业资料。</p>\r\n<p><strong>二、自动获取高质量内容<br></strong>安装完HDWIKI后，轻松按一下，百万高质量内容就会保存到本地，这些功能是用任何文字都无法描述的，可以让用户获得高质量的论坛内容。</p>\r\n<p><strong>三、SEO优势<br></strong>在论坛竞争激烈的今天，SEO也成为了众多站长的得力助手，使用HDWIKI程序，能够迅速增加论坛的内部链接。在搜索引擎的排名因素中，内部链接占有很高的权重比例，这点上，HDWIKI有着很大的优势，而且在搜索引擎优化方面比较安全。</p>\r\n<ul>\r\n<li><strong>四、特色功能</strong> \r\n</li><li>可视化编辑器&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <a class=\"innerlink\" title=\"互动摸摸\" href=\"index.php?doc-innerlink-%E4%BA%92%E5%8A%A8%E6%91%B8%E6%91%B8\">互动摸摸</a>整合多个站点&nbsp;&nbsp;&nbsp; 全自动智能升级&nbsp;&nbsp;&nbsp; 与<a class=\"innerlink\" title=\"discuz\" href=\"index.php?doc-innerlink-discuz\">discuz</a>的无缝对接 \r\n</li><li><a class=\"innerlink\" title=\"Mediawiki\" href=\"index.php?doc-innerlink-Mediawiki\">Mediawiki</a>数据导入&nbsp;&nbsp; Ajax、Tag等有机融合&nbsp;&nbsp;&nbsp; 安装极其简单&nbsp;&nbsp;&nbsp; 多风格 、多语言、多模板 ...</li></ul>\r\n<div class=\"hd yy_tmml\">发展历史</div>\r\n<ul>\r\n<li>2006年12月12日 hoodong-v1.0beta 版。 \r\n</li><li>2007年 5月15日 HDWiki-v2.0beta 版。 &nbsp; \r\n</li><li>2007年 5月30日 HDWiki-v2.0beta2 版。（自此开始gbk和utf8一起发布 ） \r\n</li><li>2007年 6月20日 HDWiki2.0正式版诞生！ \r\n</li><li>2007年 7月18日 HDWiki2.1版！ \r\n</li><li>2007年 8月10日 HDWiki2.2版！ \r\n</li><li>2007年 8月30日 HDWiki2.2版！（最稳定的2.x版本） \r\n</li><li>2007年10月17日 HDWiki3.0诞生！（第一个3.0版本） \r\n</li><li>2007年11月 2日 HDWiki3.0beta2版！ \r\n</li><li>2007年11月12日 HDWiki3.0beta3版！ \r\n</li><li>2007年11月22日 HDWiki For Discuz版本诞生！ (分支)‏ \r\n</li><li>2007年12月 3日 HDWiki3.0beta4版！ \r\n</li><li>2008年01月09日 HDWikiForDZ1.0正式版！ \r\n</li><li>2008年01月11日 HDWikiForDZ1.2稳定版！ \r\n</li><li>2008年01月23日 HDWiki3.0beta5版！ \r\n</li><li>2008年01月25日 HDWikiForDZ1.3正式版！ \r\n</li><li>2008年03月06日 HDWikiForDZ1.4beta版！（新增分类+搜索） \r\n</li><li>2008年04月03日 HDWikiForDZ1.4正式版！ \r\n</li><li>2008年04月17日 HDWikiForDZ1.5beta版！（支持UC） \r\n</li><li>2008年04月22日 HDWiki3.1beta1版！ \r\n</li><li>2008年04月30日 HDWiki3.1beta2版！</li></ul>\r\n<div class=\"hd yy_tmml\">成功案例</div>\r\n<p><strong>HDWIKI成功案例</strong></p>\r\n<p>金库百科<br>http://baike.jinku.com/</p>\r\n<p>佛学百科<br>www.5fcb.org</p>\r\n<p>地质百科<br>http://www.sinodz.com/wiki/</p>\r\n<p>《IBM个人电脑事业部员工回忆录》<br>http://www.ibmpcd.com/book</p>\r\n<p>天地道 易学百科</p>\r\n<p>http://www.tiandidao.com</p>\r\n<p><strong>HDWIKI(For Discuz!)成功案例<br></strong>地方类网站<br>http://www.indali.cn/<br>http://www.indali.cn/doc.php?action=doclist<br>http://bbs.gscn.com.cn/<br>http://bbs.gscn.com.cn/doc.php?action=doclist&amp;amp;sid=z6zvGJ<br>http://www.0563city.com<br>http://www.0563city.com/doc.php?action=doclist<br>http://www.shinehi.com/bbs<br>http://www.shinehi.com/bbs/doc.php?action=doclist<br>http://www.qhdyezhu.com/<br>http://www.qhdyezhu.com/doc.php?action=doclist</p>\r\n<p>专业类网站<br>http://bbs.whjzw.net/<br>http://bbs.whjzw.net/doc.php?action=doclist<br>http://bbs.wakeofgods.com/index.php<br>http://bbs.wakeofgods.com/doc.php?action=doclist<br>http://www.vboulder.com/bbs/<br>http://www.vboulder.com/bbs/doc.php?action=doclist<br>http://www.starwiki.cn/bbs/<br>http://www.starwiki.cn/bbs/doc.php?action=doclist<br>http://www.neweye.org/<br>http://www.neweye.org/doc.php?action=doclist<br>http://www.homebla.com/bbs<br>http://www.homebla.com/bbs/doc.php?action=doclist<br>http://mangyin.cn/bbs<br>http://mangyin.cn/bbs/doc.php?action=doclist</p>\r\n\r\n','haoran',1,1280224373,1280224373,'haoran',1,1,0,0,2,0,1,0),
	(20,0,'h','互动百科','','公司介绍\r\n公司简介：\r\n互动在线（北京）科技有限公司由潘海东博士创立于2005年7月18日。互动在线深入Wiki领域，专注于Web&nbsp;2.0互联网和无线增值业务应用的高新技术，现公司位于北京海淀区，邻近中国的“硅谷”','\r\n<div class=\"hd yy_tmml\">公司介绍</div><br>\r\n<div class=\"hd yy_tmmll\">公司简介：</div>\r\n<p><br>互动在线（北京）科技有限公司由<a class=\"innerlink\" title=\"潘海东\" href=\"index.php?doc-innerlink-%E6%BD%98%E6%B5%B7%E4%B8%9C\">潘海东</a>博士创立于2005年7月18日。互动在线深入<a class=\"innerlink\" title=\"Wiki\" href=\"index.php?doc-innerlink-Wiki\">Wiki</a>领域，专注于Web&nbsp;2.0互联网和无线增值业务应用的高新技术，现公司位于北京海淀区，邻近中国的“<a class=\"innerlink\" title=\"硅谷\" href=\"index.php?doc-innerlink-%E7%A1%85%E8%B0%B7\">硅谷</a>”中关村。</p>\r\n<p>互动在线（北京）科技有限公司迎合国际潮流，立足中国本土，开发出了中国第一套融合Web2.0元素的拥有自主知识产权的中文维客（Wiki）系统，运营和管理着数百万个条目的在线信息和知识库，并建立了全球最大的中文百科网站——互动百科（<a href=\"http://www.hudong.com\">www.hudong.com</a>）。在互动百科的网站上用户可以实时在线与来自全球的互联网用户共同就感兴趣的内容进行创作、协作、编辑和发布，打造崭新互联网模式下的新型数字媒体。</p>\r\n<p>秉承追求卓越的创新精神，互动在线力图通过互联网和无线增值业务的完美结合，为广大用户创建一个信息交互和增值服务平台，并通过维客社区的建设和推广，大力宣扬诚信和合作，为共建诚信社会作出贡献。作为中关村自主创新企业的典型代表之一，互动在线受到了中央电视台、人民日报等媒体的关注。&nbsp;</p>\r\n<p>互动在线（北京）科技有限公司由国际顶级风险投资商支持，具有创新的运营理念和广阔的发展前景，拥有一个融合国际背景和本土经验的高素质创业团队，其中汇聚了来自国际顶级企业的精英及知名学府的高学历人才。<br></p>\r\n<div class=\"hd yy_tmmll\">公司愿景：</div>用创新的网络技术改变全球中文用户分享知识的方式<br><br>\r\n<div class=\"hd yy_tmmll\">公司理念：</div>做正确的事&nbsp;Do&nbsp;right&nbsp;things&nbsp;right<br><br>\r\n<div class=\"hd yy_tmmll\">公司文化：</div>\r\n<p>简单做人，勤奋做事<br></p>\r\n<div class=\"hd yy_tmml\">业务模式</div><br>\r\n<div class=\"hd yy_tmmll\">互动百科网</div>\r\n<p>Hudong.com是全球最大的中文百科网站，致力于为数亿中文用户免费提供海量、全面、及时的百科信息，并通过全新的维基平台不断改善用户对信息的创作、获取和共享方式。这是一部由全体网民共同撰写的网络百科全书。 互动百科以词条为核心，与图片、文章等其他产品共同构筑一个完整的知识搜索体系。每个人都可以自由访问并参与撰写和编辑，分享及奉献自己的知识。 互动百科本着网络面前人人平等的原则，提倡所有人共同协作，编写一部完整而完善的百科全书，让知识在一定的技术规则和文化脉络下得以不断组合和拓展。 互动百科新知社为用户提供了一个创造性的网络平台，强调用户的参与和奉献精神，充分调动草根大众的力量，汇聚上亿网民的头脑智慧，不断累积成全人类共同的开放知识库。</p>\r\n<p>截止到2010年5月，互动百科已经发展成为由超过224万用户共同打造的拥有456万词条、49亿文字、500万张图片的百科网站。 </p>\r\n<p>如欲了解更多信息，请登陆 www.hudong.com <br></p>\r\n<div class=\"hd yy_tmmll\">&nbsp;</div>\r\n<div class=\"hd yy_tmmll\">HDWIKI</div>\r\n<p>互动维基开源系统<a class=\"innerlink\" title=\"HDwiki\" href=\"index.php?doc-innerlink-HDwiki\">HDwiki</a>作为中国第一家拥有自主知识产权的中文WIKI系统，由互动在线（北京）科技有限公司于2006&nbsp;年11月28日正式推出，力争为给国内外众多的Wiki&nbsp;爱好者提供一个免费、易用、功能强大的Wiki建站系统。HDWiki的推出，填补了中文Wiki建站系统的空白。</p>\r\n<p>目前，已经获得广大中小站长和Wiki爱好者的喜爱，目前数万家网站成功搭建百科站点及频道。<br></p>\r\n<div class=\"hd yy_tmmll\">《互动词海》</div>\r\n<p><a class=\"innerlink\" title=\"《互动词海》\" href=\"index.php?doc-innerlink-%E3%80%8A%E4%BA%92%E5%8A%A8%E8%AF%8D%E6%B5%B7%E3%80%8B\">《互动词海》</a>是由互动百科主编，以公益、环保、知识为主题，以互联网新锐热词为核心的全新直投词媒体杂志。《互动词海》每月一期，是目前中国唯一一本全部内容由网友协作完成的月刊。由于互联网高速的传播，导致大量资讯信息过载，正像北京大学张颐武教授特别提及的那样——当代社会，你不懂词，在互联网里没法活！互动百科能让你活得更从容，快来了解2010年最新的锐词！《互动词海》用互动百科网友创建的词条阐述时下最新热词、锐词、文章、视频、组图，为您解读新闻背后的知识……<br>《互动词海》电子版专题地址：http://www.hudong.com/z/c/cihai/index.html<br><br></p>\r\n<div class=\"hd yy_tmmll\">词媒体服务</div>\r\n<p>互动百科新锐网络热词，是由极富天才创造力的互动百科网友编写而成的。它作为一种词汇现象，反映了一个国家、一个地区在一个时期人们普遍关注的热点话题和民生问题，具有鲜明的时代特征，是一种值得关注的网络文化现象。互动百科锐词榜很好的把每天的热词集中到一起，让你能够很快的了解每天发生的大事，让你跟上时代的脚步。</p>\r\n<p>词媒体是指：将词作为传递信息载体，最大限度地加快传播和记忆的速度，将特定时间、地点、人物、事件、进行超浓缩，以便于口口相传。这一概念是由全球最大的中文百科网站——互动百科首创的。</p>\r\n<p>同时词媒体也是互动百科对外合作的窗口，互动百科会每天准时的把当天最新、最热的锐词发给合作媒体。互动百科锐词榜在时刻满足你的知识需求。</p>\r\n<p>互动百科词媒体热词订阅地址：http://media.hudong.com/<br><br></p>\r\n<div class=\"hd yy_tmml\">企业荣誉</div><br>2010年03月&nbsp;&nbsp;&nbsp;互动百科基于wiki的知识管理系统被列入北京市“火炬计划项目”。<br>2010年03月&nbsp;&nbsp;&nbsp;互动百科被中国科协列入全国科普网站名单，被北京市科委授予“北京市科普传媒基地”称号。<br>2009年11月&nbsp;&nbsp; 互动百科CEO潘海东入选国家中央组织部“千人计划”。<br>2009年11月&nbsp;&nbsp; 互动百科荣获“最佳新锐企业奖”&nbsp;2009中国创业投资价值榜。<br>2009年11月&nbsp;&nbsp; 互动百科CEO潘海东被“科技点亮未来”创业方案大赛评为&nbsp;“科技点亮未来创业英雄” 。<br>2009年05月&nbsp;&nbsp;&nbsp;互动百科荣获2009中欧信息通讯高科技峰会组委会颁发的Rising&nbsp;star&nbsp;“CHINICT2009年度新星奖”。<br>2009年05月&nbsp;&nbsp;&nbsp;互动百科旗下百科建站系统HDWIKI被2009中国站长年会组委会评为“2009最受站长欢迎的WIKI系统”称号。<br>2008年10月&nbsp;&nbsp; 互动百科CEO潘海东博士荣获“中关村科技园区20周年突出贡献奖”。<br>2008年05月&nbsp;&nbsp; 互动百科入选“金牛榜——2008中国最具上市潜力企业50强”。<br>2008年01月&nbsp;&nbsp; 互动百科入选“2008中国最具投资价值企业30强&nbsp;”。<br>2007年10月&nbsp;&nbsp; 互动百科获得艾瑞咨询集团颁发的“web2.0年会最具价值投资奖”<br>2007年08月&nbsp;&nbsp; 互动百科入围美国投资杂志&nbsp;《红鲱鱼》在香港公布2007年的“红鲱鱼亚洲100强”及“2007年亚洲最有前途的100家高科技私人企业”。&nbsp;<br>2006年12月&nbsp;&nbsp; 互动百科荣获“2006中国互联网最具潜力项目奖”。<br>2006年09月&nbsp;&nbsp; 互动百科被中关村管委会评为“优秀留学生创业企业”。<br>2006年05月&nbsp;&nbsp; 互动百科CEO潘海东博士入选AAMA“未来科技商业领袖摇篮计划”。<br>2006年04月 &nbsp; 互动百科入选“2006中国Web2.0值得关注的百家企业名单”。<br>\r\n<div class=\"hd yy_tmml\">企业大事记</div>2010年06月&nbsp;&nbsp; 互动百科成功占领澳洲华人市场，并与包括澳洲中文网、澳洲OZyoyo社区、澳洲网上唐人街、澳洲freeoz社区等各大澳洲知名华人站点达成战略合作<br>2010年05月&nbsp;&nbsp; 互动百科首创“词媒体”战略，并联合500家媒体共同打造“知识媒体联盟”，宣告“词时代”到来。<br>2010年04月&nbsp;&nbsp; 互动百科全新改版上线。<br>2010年03月&nbsp;&nbsp;&nbsp;互动百科携手央视网、中国气象局气象频道共同启动“2010互联网森林”公益活动，将在互联网上中下500万棵树。<br>2010年01月 &nbsp; 由互动百科主编中国华侨出版社出版的首部由全球网民协作的网络词海——《2009-2010年度互联网扶贫书》诞生，这是第一部由网民协作编写的网络词海。<br>2010年01月&nbsp;&nbsp;&nbsp;互动百科在北京成功举办“2009年度热词盛典”，并发布了“2009年度十大科技榜”、“十大人物榜”与“十大锐词榜”三大榜单，该榜单是对&nbsp; 2009年度焦点词条的权威发布。<br>2009年10月&nbsp;&nbsp; 互动百科网站词条突破400万条。<br>2009年9月，&nbsp; 互动百科将“维基百科”中文商标无偿捐赠给维基百科创始人吉米•威尔士，这一新闻在纽约地标建筑时代广场大型LED新闻屏滚动播放三次。<br>2009年07月 &nbsp; 互动百科在杭州浙江大学举办“中国维基行业峰会暨第二届互动百科用户大会”，这是中国维基行业的首次精英峰会，也是中国维基行业规格最高，规模最大的行业峰会。<br>2009年07月&nbsp;&nbsp;&nbsp;互动百科作为维基行业领军企业，被互联网实验室出版的“2009中国维基行业发展报告”列为重点研究对象。<br>2009年05月 &nbsp; 互动百科搭建的“全球最大中文博物馆平台”正式上线。这是全球首个线上博物馆展示平台，目前，该平台已有1800多家中国博物馆及十多家国外博物馆入驻。<br>2009年04月&nbsp;&nbsp; 互动百科携手气候组织、壹基金面向全球网民共同推出“互联网森林”环保活动，同时发起国内首个以倡导“低碳”为主旨互联网森林联盟。<br>2008年10月 &nbsp; 互动百科“首届互动百科用户大会”在京召开，中国wiki行业全面提速。<br>2008年07月 &nbsp; 由2856名互动百科网友协作编写，互动百科主编，电子工业出版社的《奥运宝典》面市。这是全球第一本漂流书，跟随不同国籍的读者漂流到芬兰、法国、瑞典等地。目前，该宝典已被中国国家图书馆及亚历山大图书馆收藏。<br>2008年03月&nbsp;&nbsp;&nbsp;为迎接北京奥运，互动百科和中国青少年社会服务中心共同发起了《我们的奥运大百科》公益活动。<br>2007年09月&nbsp;&nbsp;&nbsp;以互动百科为平台的全球第一部中文协作体小说《IBM小黑社会》正式面世。<br>2007年06月&nbsp;&nbsp; 互动百科成为知名在线服务应用商Netvibes全球合作伙伴，共同为全球中文用户提供丰富的互联网热词内容。<br>2007年02月&nbsp;&nbsp; 互动百科获得DFJ等国际顶级风险投资商300万美元投资。<br>2006年11月&nbsp;&nbsp; 互动百科旗下百科建站系统HDWiki开放源代码，这是全球唯一一款拥有自主知识产权，并向用户免费开放源代码的百科建站系统。<br>2006年09月&nbsp;&nbsp; 互动百科CEO潘海东应邀在美国AAMA年会上发表讲话，介绍了中国维基行业发展情况及未来前景。<br>2006年04月&nbsp;&nbsp; 互动百科获得中央电视台“焦点访谈”栏目“中关村的创新故事”专访。<br>2005年07月&nbsp;&nbsp;&nbsp;互动百科（互动在线北京科技有限公司）在北京创立，致力于为数亿中文用户免费提供海量、全面、及时的百科信息，并通过全新的维基平台不&nbsp; 断改善用户对信息的创作、获取和共享方式。<br><br>\r\n<div class=\"hd yy_tmmll\">互动百科博物馆平台</div><br>互动博物馆是全球最大中文博物馆百科平台。互动百科与博物馆一样承担着重要的社会教育职能。为了集中展示中国2400家博物馆馆藏精品及门票、地址等相关信息，2009年5月互动百科启动了互动博物馆频道。该频道定位为全球最大博物馆百科知识频道，目的是配合各个博物馆的官网，为观众和网民提供更全面、实用的博物馆资讯。<br><div class=\"hd yy_tmml\">互联网森林</div>\r\n<p>2009年4月22日，由全球最大中文百科网站——互动百科（www.hudong.com）携手气候组织、壹基金共同发起的“互联网森林”活动正式上线，这是国际非政府组织和互联网行业联盟首次大规模携手公益合作。本次活动以互联网为平台，通过倡导“低碳生活”理念，引导用户减少二氧化碳排放，改善全球气 候，保护全球生态环境。</p>\r\n<p>&nbsp;2010年3月12日，互动百科携手央视网、中国气象局气象频道启动了“2010互联网森林”公益活动，通过本活动向互联网用户倡导“低碳生活”的理念，并通过参与者的努力，减少碳排放，保护我们的生态环境，培养互联网用户的社会责任感。<br></p>\r\n<div class=\"hd yy_tmml\">管理团队</div>\r\n<div class=\"img img_r\" style=\"width: 200px;\"><a title=\"互动百科创始人，首席执行官潘海东博士\" href=\"http://tupian.hudong.com/a0_45_51_01300000870673127486513363663_jpg.html\" target=\"_blank\"><img title=\"互动百科创始人，首席执行官潘海东博士\" alt=\"互动百科创始人，首席执行官潘海东博士\" src=\"http://a0.att.hudong.com/45/51/01300000870673127486513363663_s.jpg\"></a><strong>互动百科创始人，首席执行官潘海东博士</strong></div>\r\n<p><a class=\"innerlink\" title=\"潘海东\" href=\"index.php?doc-innerlink-%E6%BD%98%E6%B5%B7%E4%B8%9C\">潘海东</a>博士，现任互动百科首席执行官，第九届全国青联委员和全国青联留学人员联谊会理事。曾任中国最大的办公用品电子商务网站“亚商在线”首席信息官。</p>\r\n<p>&nbsp;在美留学期间曾任哈佛中国评论共同主席，在哈佛大学主持举办的国际年会吸引了中美两国媒体的重点关注。曾任麻省理工学院人才论坛分会主席，在广大留学生中掀起为国服务的浪潮。作为优秀留美学生代表，接受过新华社和“人民日报”的采访。<br>潘海东获得波士顿大学博士学位，清华大学硕士学位，北京科技大学学士学位，并曾在北京大学“高级历史研修班”进修。2009年11月，潘海东入选国家中央组织部“千人计划”。<br></p><br><br><br>\r\n<div class=\"hd yy_tmml\">最新动态</div><br><div class=\"hd yy_tmmll\">互动百科占领澳洲市场 词媒体服务华人用户</div>2010年6月18日，全球最大中文百科网站互动百科CEO潘海东博士正式在悉尼宣布，互动百科与澳洲各大华人网站达成了涉及内容、技术两个层面的深度战略合作，此举是互动百科继去年11月进军北美之后在海外市场上的又一次战略举措。<br>\r\n据悉，潘海东博士在悉尼召开的“2010年度全球媒体创新峰会”上正式宣布，互动百科已与包括澳洲中文网、澳洲OZyoyo社区、澳洲网上唐人街、澳洲freeoz社区等各大澳洲知名华人站点达成战略合作，以互动百科拥有自主知识产权的百科建站系统HDWiki助力澳洲各大中文站点搭建包含中文热词、中国动态等特色资讯的平台。潘海东博士介绍说，互动百科HDWiki系统目前服务着10万多家网站和频道,涉及包括教育、经济、食品、计算机等40多个行业。<br>\r\n<br><div class=\"hd yy_tmmll\">媒体报道：</div><br>雅虎财经：Capturing&nbsp;More&nbsp;of&nbsp;Wikipedia\'s&nbsp;Market&nbsp;Share:&nbsp;Hudong&nbsp;Announces&nbsp;\'Word&nbsp;Media\'&nbsp;Service&nbsp;for&nbsp;Australian&nbsp;Users<br>http://finance.yahoo.com/news/Capturing-More-of-Wikipedias-prnews-984282418.html?x=0&amp;.v=78<br><br>福布斯：Capturing&nbsp;More&nbsp;of&nbsp;Wikipedia\'s&nbsp;Market&nbsp;Share:&nbsp;Hudong&nbsp;Announces&nbsp;\'Word&nbsp;Media\'&nbsp;Service&nbsp;for&nbsp; Australian&nbsp;Users<br>http://www.forbes.com/feeds/prnewswire/2010/06/18/prnewswire201006181353PR_NEWS_USPR_____CNF016.html<br><br>新华网：互动百科进一步侵占维基百科&nbsp;进军澳洲市场<br>http://news.xinhuanet.com/internet/2010-06/21/c_12243540.htm<br><br>新浪网：互动百科进一步侵占维基百科&nbsp;进军澳洲市场<br>\r\nhttp://tech.sina.com.cn/i/2010-06-21/11074330690.shtml<br><br>\r\n<div class=\"hd yy_tmmll\">更多动态：</div>互动百科新闻中心<br>http://wiki.hudong.com/wiki/mZn10agFZZWABelFl<br><div class=\"hd yy_tmml\">联系我们</div>互动在线（北京）科技有限公司&nbsp;<br>地址：北京市海淀区学院路40号大唐电信研四楼&nbsp;<br>邮编：100191&nbsp;<br>电&nbsp;话：010-62303126&nbsp;<br>传真：010-62303125&nbsp;<br>网址：www.hudong.com&nbsp;<br>客服邮箱：service#hudong.com（在联系客服时需要将#改成@)<br><br>\r\n<div class=\"hd yy_tmmll\">广告合作 </div>电话：010-62303126-665<br><br>\r\n<div class=\"hd yy_tmmll\">媒体合作</div>电话：01062303126-668<br>邮箱：marketing#hudong.com（发邮件时需要将#改成@)<br>知识媒体联盟：http://group.hudong.com/media<br><br>\r\n<div class=\"hd yy_tmmll\">商务合作 </div>电话：010-62303126-685&nbsp;、632、681<br>QQ:1456060794&nbsp;、978759786<br><br>\r\n<div class=\"hd yy_tmmll\">HDWiki建站 </div>电话：010-62303126-682&nbsp;<br>QQ:342729010&nbsp;<br>技术支持&nbsp;：新手帮助小组：http://group.hudong.com/help/&nbsp;（如有问题，请加入这个小组，有专人解答）<br><br>\r\n<div class=\"hd yy_tmmll\">客户服务 </div>热线电话：010-62301221&nbsp;<br>热线时间：早7：00至晚22：00<br><br>\r\n<div class=\"hd yy_tmmll\">其他在线联系方式</div>维客大学QQ群&nbsp;<br>维客大学群一：2691205（已满）<br>维客大学群二：24535274（可加）<br><br>\r\n<div class=\"hd yy_tmmll\">互动百科官方QQ群</div>\r\n<p>7 号群 ：112650461 （可加） <br>8号群 ：112759253 （可加） <br>1号群&nbsp;&nbsp;112107246（已满）<br>2号群&nbsp;&nbsp;78754143（已满）<br>3号群&nbsp;&nbsp;112116374（已满）<br>4号群&nbsp;&nbsp;18292190（已满）<br>5号群&nbsp;&nbsp;110702366（已满）<br>6号群&nbsp;&nbsp;110698464（已满）</p>\r\n<div class=\"hd yy_tmmll\">官方博客：</div>互动百科新浪博客：http://blog.sina.com.cn/u/1649670037<br>互动百科网易博客：http://hudongbaike.blog.163.com/&nbsp;&nbsp;<br><br>\r\n<div class=\"hd yy_tmmll\">官方微博：</div>互动百科新浪微博：http://t.sina.com.cn/hudong&nbsp;<br>互动百科人民网微博：http://t.people.com.cn/4523 <br>互动百科网易微博：http://t.163.com/hudong<br>互动百科搜狐微博： http://hudongbaike.t.sohu.com/ <br>互动百科凤凰网微博：http://t.ifeng.com/hudong<br>互动百科腾讯微博：http://t.qq.com/hudong <br><br>\r\n<div class=\"hd yy_tmmll\">互动百科人人网公共主页：</div>http://page.renren.com/600002743<br><br>\r\n<div class=\"hd yy_tmmll\">互动百科官方飞信：</div>http://space.fetion.com.cn/37868336\r\n','haoran',1,1280224465,1280224465,'haoran',1,6,0,0,0,0,1,0);

/*!40000 ALTER TABLE `yy_doc` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table yy_docfavorite
# ------------------------------------------------------------

DROP TABLE IF EXISTS `yy_docfavorite`;

CREATE TABLE `yy_docfavorite` (
  `id` mediumint(8) NOT NULL AUTO_INCREMENT,
  `uid` mediumint(8) NOT NULL,
  `did` mediumint(8) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



# Dump of table yy_docreference
# ------------------------------------------------------------

DROP TABLE IF EXISTS `yy_docreference`;

CREATE TABLE `yy_docreference` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `did` int(11) NOT NULL DEFAULT '0',
  `name` varchar(200) NOT NULL,
  `url` varchar(200) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `did` (`did`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



# Dump of table yy_edition
# ------------------------------------------------------------

DROP TABLE IF EXISTS `yy_edition`;

CREATE TABLE `yy_edition` (
  `eid` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `cid` smallint(6) unsigned NOT NULL DEFAULT '0',
  `did` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `author` varchar(15) NOT NULL DEFAULT '',
  `authorid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `time` int(10) unsigned NOT NULL DEFAULT '0',
  `ip` varchar(15) NOT NULL DEFAULT '',
  `title` varchar(80) NOT NULL DEFAULT '',
  `tag` varchar(250) NOT NULL,
  `summary` varchar(250) NOT NULL,
  `content` mediumtext NOT NULL,
  `words` int(10) unsigned NOT NULL DEFAULT '0',
  `images` int(10) unsigned NOT NULL DEFAULT '0',
  `type` tinyint(1) NOT NULL DEFAULT '0',
  `judge` tinyint(1) NOT NULL DEFAULT '0',
  `excellent` tinyint(1) NOT NULL DEFAULT '0',
  `big` tinyint(1) NOT NULL DEFAULT '0',
  `reason` varchar(250) NOT NULL DEFAULT '',
  `coins` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`eid`),
  KEY `cid` (`cid`),
  KEY `authorid` (`authorid`),
  KEY `time` (`time`),
  KEY `did` (`did`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

LOCK TABLES `yy_edition` WRITE;
/*!40000 ALTER TABLE `yy_edition` DISABLE KEYS */;

INSERT INTO `yy_edition` (`eid`, `cid`, `did`, `author`, `authorid`, `time`, `ip`, `title`, `tag`, `summary`, `content`, `words`, `images`, `type`, `judge`, `excellent`, `big`, `reason`, `coins`)
VALUES
	(19,0,35,'haoran',1,1280483354,'10.0.0.104','同义词','','什么叫同义词？同义词，是表达的意义相同但是名称不同的词条，例如：“北京”和“北京市”是同义词。为了避免不同用户提交名称不同而内容相同的词条，造成资源浪费和重复劳动，互动百科会将概念相同的词条添加为同义','<DIV class=hd yy_tmml>\r\n<DIV class=\"img img_r\" style=\"WIDTH: 300px\"><A title=同义词 href=\"uploads/201007/1280483039ysMVbk9b.gif\" target=_blank><IMG title=同义词 alt=同义词 src=\"uploads/201007/1280483039ysMVbk9b_s.gif\"></A><strong>同义词</strong></DIV>什么叫同义词？</DIV>\r\n<P>同义词，是表达的意义相同但是名称不同的词条，例如：“北京”和“北京市”是同义词。为了避免不同用户提交名称不同而内容相同的词条，造成资源浪费和重复劳动，互动百科会将概念相同的词条添加为同义词，并以其中较为规范或较为常用的词条作为标准词，例如：将“湖南省”作为“湖南”的标准词。<BR><BR>当一个词条被添加为同义词后，该词条原有内容会被隐藏，并提示你查看标准词条。如下图所示：<BR><BR><BR><BR><BR>如果你对同义词有疑议或发现同义词添加有误，欢迎你留言纠错。具体操作方法如下：&nbsp;<BR><BR>在同义词右侧，点击下图所示按钮，&nbsp;<BR><BR><BR><BR><BR>请在弹出的留言框中留下你的意见和想法，我们会及时处理。<BR><BR><BR><BR>同义词添加规范:</P>\r\n<P><BR></P>\r\n<TABLE class=table>\r\n<TBODY>\r\n<TR>\r\n<TD colSpan=3><strong>类别</strong></TD>\r\n<TD colSpan=2><strong>添加规则</strong></TD>\r\n<TD><strong>示例</strong></TD></TR></TBODY>\r\n<TBODY>\r\n<TR>\r\n<TD rowSpan=6><strong>人名类</strong></TD>\r\n<TD rowSpan=3>英译人名</TD>\r\n<TD rowSpan=3>一般以习惯用名为标准词，如词条产生歧义则不添加同义词</TD>\r\n<TD rowSpan=6>以习惯用名为标准词，如有歧义则不添加同义词</TD>\r\n<TD rowSpan=2>简称、全称和习惯用名，以习惯用名为标准词，如词条产生歧义则不添加同义词。</TD>\r\n<TD>正确示例：托马斯·阿尔瓦·爱迪生＝托马斯·爱迪生</TD></TR>\r\n<TR>\r\n<TD>错误示例：爱迪生和托马斯·爱迪生（因爱迪生是一个姓氏，有歧义）</TD></TR>\r\n<TR>\r\n<TD>英译人名的多种译名以常用名称标准词，如词条产生歧义则不添加同义词。</TD>\r\n<TD>正确示例：乔万尼·卜伽丘＝乔万尼·薄伽丘</TD></TR>\r\n<TR>\r\n<TD colSpan=2 rowSpan=2>人物姓氏类</TD>\r\n<TD rowSpan=2>以×姓为标准词，如果×氏与×姓的内容产生歧义则不添加同义词。</TD>\r\n<TD>正确示例：李氏＝李姓</TD></TR>\r\n<TR>\r\n<TD>错误示例：钮祜禄氏</TD></TR>\r\n<TR>\r\n<TD colSpan=2>神话类人名</TD>\r\n<TD>以常用名为标准词，如果词条产生歧义则不添加同义词。</TD>\r\n<TD>错误示例：太阳神和阿波罗</TD></TR>\r\n<TR>\r\n<TD rowSpan=2><strong>皇帝类</strong></TD>\r\n<TD colSpan=2>中国皇帝名</TD>\r\n<TD colSpan=2>皇帝年号类词条以历史习惯用法为标准词。</TD>\r\n<TD>正确示例：纣王＝商纣王</TD></TR>\r\n<TR>\r\n<TD colSpan=2>外国皇帝名（世袭名称与本名）</TD>\r\n<TD colSpan=2>（世袭名称与本名）以世袭名称为标准词，如果出现歧义则不予以添加。</TD>\r\n<TD>正确示例：夏尔·罗贝尔＝查理一世</TD></TR>\r\n<TR>\r\n<TD rowSpan=7>地名类</TD>\r\n<TD colSpan=2 rowSpan=3>中国地名</TD>\r\n<TD rowSpan=7>地名类词条全称与简称的意义有歧义则不添加同义词</TD>\r\n<TD rowSpan=2>省市级地名，以地名简称为标准词（不加“省”“市”字样）</TD>\r\n<TD>正确示例：大连市＝大连 </TD></TR>\r\n<TR>\r\n<TD>错误示例：吉林和吉林市 </TD></TR>\r\n<TR>\r\n<TD>省市级以下行政单位地名，以全称为标准词（加“区”“县”“乡”等字样）。</TD>\r\n<TD>正确示例：阳曲＝阳曲县</TD></TR>\r\n<TR>\r\n<TD colSpan=2>外国地名</TD>\r\n<TD>以外国地名以常用名为标准词。</TD>\r\n<TD>正确示例：夏威夷州＝夏威夷</TD></TR>\r\n<TR>\r\n<TD colSpan=2 rowSpan=2>景点名称</TD>\r\n<TD rowSpan=2>以景点全称为标准词。</TD>\r\n<TD>正确示例：卧龙自然保护区＝卧龙国家自然保护区 </TD></TR>\r\n<TR>\r\n<TD>错误示例：武夷山自然保护区和武夷山 </TD></TR>\r\n<TR>\r\n<TD colSpan=2>地理名称</TD>\r\n<TD>以历史叫法为标准词。</TD>\r\n<TD>&nbsp;</TD></TR>\r\n<TR>\r\n<TD rowSpan=2>企业类</TD>\r\n<TD colSpan=2>外国企业缩写</TD>\r\n<TD rowSpan=2>一般以企业全称为标准词</TD>\r\n<TD>如有其他意义则不并入企业中文全称。</TD>\r\n<TD>错误示例：ibm</TD></TR>\r\n<TR>\r\n<TD colSpan=2>企业名称缩写</TD>\r\n<TD>与企业全称意义不完全相同则不并入中文全称。</TD>\r\n<TD>错误示例：海尔与海尔集团</TD></TR>\r\n<TR>\r\n<TD rowSpan=2>学校类</TD>\r\n<TD colSpan=2 rowSpan=2>&nbsp;</TD>\r\n<TD colSpan=2 rowSpan=2>以学校全称为标准词，如果简称与全称意义不完全相同则不添加同义词。</TD>\r\n<TD>正确示例：北京四中＝北京市第四中学</TD></TR>\r\n<TR>\r\n<TD>错误示例：四中和北京四中 </TD></TR>\r\n<TR>\r\n<TD rowSpan=2>动植物类</TD>\r\n<TD colSpan=2 rowSpan=2>&nbsp;</TD>\r\n<TD colSpan=2 rowSpan=2>动植物名称以学名为标准词，如果其他名称有歧义则不添加同义词。</TD>\r\n<TD>&nbsp;</TD></TR>\r\n<TR>\r\n<TD>&nbsp;</TD></TR>\r\n<TR>\r\n<TD rowSpan=2><strong>历史事件类</strong></TD>\r\n<TD colSpan=2>词条名称涉及一月、十一月、十二月</TD>\r\n<TD colSpan=2>应用间隔号·将表示月和日的数字隔开，避免歧义。涉及其它月份时，不用间隔号。</TD>\r\n<TD>正确示例：一二九运动＝一二·九运动&nbsp;</TD></TR>\r\n<TR>\r\n<TD colSpan=2>词条名称带引号</TD>\r\n<TD colSpan=2>不应出现引号等符号（事件名称本身带引号的除外）</TD>\r\n<TD>正确示例：“一二九”运动＝一二·九运动</TD></TR>\r\n<TR>\r\n<TD rowSpan=2><strong>军事类</strong></TD>\r\n<TD colSpan=2>武器装备类</TD>\r\n<TD colSpan=2>以官方名称为标准词。</TD>\r\n<TD>&nbsp;</TD></TR>\r\n<TR>\r\n<TD colSpan=2>军事战役类</TD>\r\n<TD colSpan=2>军事战役名称以历史记载全称为标准词。（词条尽量没有引号等特殊符号）。</TD>\r\n<TD>正确示例：平型关大战＝平型关大捷</TD></TR>\r\n<TR>\r\n<TD rowSpan=5>医药化学类</TD>\r\n<TD colSpan=2 rowSpan=2>化学符号类</TD>\r\n<TD rowSpan=5>以学名为标准词</TD>\r\n<TD rowSpan=2>以中文简称为标准词，如果缩写与中文有歧义则不添加同义词。</TD>\r\n<TD>正确示例：镁元素=镁</TD></TR>\r\n<TR>\r\n<TD>错误示例：Mg和镁&nbsp;</TD></TR>\r\n<TR>\r\n<TD colSpan=2>药物名称</TD>\r\n<TD>以药物学名为标准词。</TD>\r\n<TD>正确示例：先锋霉素1号=头孢噻吩</TD></TR>\r\n<TR>\r\n<TD colSpan=2 rowSpan=2>病症名称</TD>\r\n<TD rowSpan=2>以病症医学标准名称为标准词。</TD>\r\n<TD>正确示例：帕金森氏病=震颤麻痹</TD></TR>\r\n<TR>\r\n<TD>正确示例：先锋霉素1号=头孢噻吩</TD></TR>\r\n<TR>\r\n<TD rowSpan=2>体育赛事类</TD>\r\n<TD colSpan=2>多年一届赛事的名称</TD>\r\n<TD colSpan=2>以“年代＋举办城市名称＋奥运会”为标准词。</TD>\r\n<TD>正确示例：第二十五届夏季奥林匹克运动会＝1992年巴塞罗那奥运会</TD></TR>\r\n<TR>\r\n<TD colSpan=2>赛事相关纪念物</TD>\r\n<TD colSpan=2>以纪念物名称为标准词。</TD>\r\n<TD>正确示例：奥运会福娃＝福娃</TD></TR>\r\n<TR>\r\n<TD>节日类</TD>\r\n<TD colSpan=2>&nbsp;</TD>\r\n<TD colSpan=2>以“××节”为标准词，如一个节日有多种叫法则以最常用的为标准词。其他叫法如果出现歧义则不添加同义词。</TD>\r\n<TD>正确示例：端午＝端午节</TD></TR>\r\n<TR>\r\n<TD rowSpan=2>天文类</TD>\r\n<TD colSpan=2>天体名称</TD>\r\n<TD colSpan=2>以科学命名为标准词，其他名称和编号均加入科学命名中，如果编号意义有歧义则不添加同义词。</TD>\r\n<TD>正确示例：天津四＝天鹅座α星</TD></TR>\r\n<TR>\r\n<TD colSpan=2>人造卫星</TD>\r\n<TD colSpan=2>以官方发布的全称为标准词。</TD>\r\n<TD>&nbsp;</TD></TR>\r\n<TR>\r\n<TD rowSpan=2>文艺作品类</TD>\r\n<TD colSpan=2 rowSpan=2>以作品全称（无书名号的）为标准词</TD>\r\n<TD colSpan=2 rowSpan=2>一个作品有多个名称，以常用名为标准词。如果名称有歧义，则不添加。</TD>\r\n<TD>正确示例：《圣经》=圣经</TD></TR>\r\n<TR>\r\n<TD>错误示例：泰坦尼克号和《泰坦尼克号》</TD></TR>\r\n<TR>\r\n<TD rowSpan=4>语言类</TD>\r\n<TD colSpan=2>语种</TD>\r\n<TD rowSpan=4>以习惯用名为标准词</TD>\r\n<TD>以最常用的名称为标准词</TD>\r\n<TD>正确示例：英国话=英语</TD></TR>\r\n<TR>\r\n<TD colSpan=2>方言</TD>\r\n<TD>以××方言为标准词</TD>\r\n<TD>正确示例：山西话=山西方言</TD></TR>\r\n<TR>\r\n<TD colSpan=2 rowSpan=2>编程语言</TD>\r\n<TD rowSpan=2>以最常用的名称为标准词，如名称有歧义的，则不添加。</TD>\r\n<TD>正确示例：编程C语言=C语言</TD></TR>\r\n<TR>\r\n<TD>错误示例：C和C语言</TD></TR>\r\n<TR>\r\n<TD>英文缩写类</TD>\r\n<TD colSpan=2>&nbsp;</TD>\r\n<TD colSpan=2>英文缩写类词条与中文译名如果出现歧义则不添加同义词。</TD>\r\n<TD>错误示例：WTO和世界贸易组织</TD></TR>\r\n<TR>\r\n<TD rowSpan=2>时间类</TD>\r\n<TD colSpan=2 rowSpan=2>&nbsp;</TD>\r\n<TD rowSpan=2>以×年×月×日为标准词</TD>\r\n<TD rowSpan=2>数字使用阿拉伯数字，单独的数字不添加同义词。</TD>\r\n<TD>正确示例：1949年10月1日</TD></TR>\r\n<TR>\r\n<TD>错误示例：1949和1949年</TD></TR>\r\n<TR>\r\n<TD rowSpan=2>交通设施</TD>\r\n<TD colSpan=2>轨道交通设施</TD>\r\n<TD rowSpan=2>以习惯用名为标准词</TD>\r\n<TD>以常用名为标准词，如果词条产生歧义则不添加同义词。</TD>\r\n<TD rowSpan=2>正确示例：京津塘高速=京津塘高速公路</TD></TR>\r\n<TR>\r\n<TD colSpan=2>交通站点设施</TD>\r\n<TD>以全称为标准词，如果词条产生歧义则不添加同义词。</TD></TR>\r\n<TR>\r\n<TD rowSpan=2>其他</TD>\r\n<TD colSpan=2 rowSpan=2>&nbsp;</TD>\r\n<TD colSpan=2 rowSpan=2>一个概念有多种叫法，以常用名为标准词。如果名称有歧义则不添加。</TD>\r\n<TD>正确示例：清王朝＝清朝 </TD></TR>\r\n<TR>\r\n<TD>错误示例：DNA和脱氧核糖核酸 </TD></TR></TBODY></TABLE>',6705,1,1,0,0,0,'全文编辑',0),
	(13,0,33,'haoran',1,1280480136,'10.0.0.104','历史版本','','什么是历史版本？ 每个编辑者编辑词条后，并不是直接覆盖词条原有内容，而是将原有内容保存，将新增或修改的内容保存并于原因内容合并保存为新版本。这样，每一次编辑都会产生新的版本，一个词条的所有版本即为该词条','<strong>什么是历史版本？</strong> <BR>每个编辑者编辑词条后，并不是直接覆盖词条原有内容，而是将原有内容保存，将新增或修改的内容保存并于原因内容合并保存为新版本。这样，每一次编辑都会产生新的版本，一个词条的所有版本即为该词条的历史版本。 <BR><BR><strong>如何查看历史版本？</strong> <BR>在每个词条正文页的右侧点击“共有×个版本”（如下图），即可进入该词条的历史版本页。 <BR>\r\n<DIV class=\"img img_l\" style=\"WIDTH: 244px\"><A title=\"什么是历史版本？&#13;每个编辑者编辑词条后，并不是直接覆盖词条原有内容，而是将原有内容保存，将新增或修改的内容保存并于原因内容合并保存为新版本。这样，每一次编辑都会产生新的版本，一个词条的所有版本即为该词条的历史版本。&#13;&#13;如何查看历史版本？&#13;在每个词条正文页的右侧点击“共有×个版本”（如下图），即可进入该词条的历史版本页。&#13;&#13;&#13;&#13;&#13;&#13;&#13;&#13;在历史版本页里可以查看各版本基本信息，如编辑时间、编辑者、版本改动及修改原因等情况。\" href=\"uploads/201007/1280480111x5gMoLRz.jpg\" target=_blank><IMG title=\"什么是历史版本？&#13;每个编辑者编辑词条后，并不是直接覆盖词条原有内容，而是将原有内容保存，将新增或修改的内容保存并于原因内容合并保存为新版本。这样，每一次编辑都会产生新的版本，一个词条的所有版本即为该词条的历史版本。&#13;&#13;如何查看历史版本？&#13;在每个词条正文页的右侧点击“共有×个版本”（如下图），即可进入该词条的历史版本页。&#13;&#13;&#13;&#13;&#13;&#13;&#13;&#13;在历史版本页里可以查看各版本基本信息，如编辑时间、编辑者、版本改动及修改原因等情况。\" alt=\"什么是历史版本？&#13;每个编辑者编辑词条后，并不是直接覆盖词条原有内容，而是将原有内容保存，将新增或修改的内容保存并于原因内容合并保存为新版本。这样，每一次编辑都会产生新的版本，一个词条的所有版本即为该词条的历史版本。&#13;&#13;如何查看历史版本？&#13;在每个词条正文页的右侧点击“共有×个版本”（如下图），即可进入该词条的历史版本页。&#13;&#13;&#13;&#13;&#13;&#13;&#13;&#13;在历史版本页里可以查看各版本基本信息，如编辑时间、编辑者、版本改动及修改原因等情况。\" src=\"uploads/201007/1280480111x5gMoLRz_s.jpg\"></A><strong>查看历史版本</strong></DIV>\r\n<P><BR><BR><BR><BR><BR><BR><BR>&nbsp;</P>\r\n<P>&nbsp;</P>\r\n<P>在历史版本页里可以查看各版本基本信息，如编辑时间、编辑者、版本改动及修改原因等情况。 <BR><BR></P>',1952,1,1,0,0,0,'全文编辑',0),
	(14,0,33,'haoran',1,1280480157,'10.0.0.104','历史版本','','什么是历史版本？ 每个编辑者编辑词条后，并不是直接覆盖词条原有内容，而是将原有内容保存，将新增或修改的内容保存并于原因内容合并保存为新版本。这样，每一次编辑都会产生新的版本，一个词条的所有版本即为该词条','<strong>什么是历史版本？</strong> <BR>每个编辑者编辑词条后，并不是直接覆盖词条原有内容，而是将原有内容保存，将新增或修改的内容保存并于原因内容合并保存为新版本。这样，每一次编辑都会产生新的版本，一个词条的所有版本即为该词条的历史版本。 <BR><BR><strong>如何查看历史版本？</strong> <BR>在每个词条正文页的右侧点击“共有×个版本”（如下图），即可进入该词条的历史版本页。 <BR>\r\n<DIV class=\"img img_l\" style=\"WIDTH: 244px\"><A title=\"什么是历史版本？&#13;每个编辑者编辑词条后，并不是直接覆盖词条原有内容，而是将原有内容保存，将新增或修改的内容保存并于原因内容合并保存为新版本。这样，每一次编辑都会产生新的版本，一个词条的所有版本即为该词条的历史版本。&#13;&#13;如何查看历史版本？&#13;在每个词条正文页的右侧点击“共有×个版本”（如下图），即可进入该词条的历史版本页。&#13;&#13;&#13;&#13;&#13;&#13;&#13;&#13;在历史版本页里可以查看各版本基本信息，如编辑时间、编辑者、版本改动及修改原因等情况。\" href=\"uploads/201007/1280480111x5gMoLRz.jpg\" target=_blank><IMG title=\"什么是历史版本？&#13;每个编辑者编辑词条后，并不是直接覆盖词条原有内容，而是将原有内容保存，将新增或修改的内容保存并于原因内容合并保存为新版本。这样，每一次编辑都会产生新的版本，一个词条的所有版本即为该词条的历史版本。&#13;&#13;如何查看历史版本？&#13;在每个词条正文页的右侧点击“共有×个版本”（如下图），即可进入该词条的历史版本页。&#13;&#13;&#13;&#13;&#13;&#13;&#13;&#13;在历史版本页里可以查看各版本基本信息，如编辑时间、编辑者、版本改动及修改原因等情况。\" alt=\"什么是历史版本？&#13;每个编辑者编辑词条后，并不是直接覆盖词条原有内容，而是将原有内容保存，将新增或修改的内容保存并于原因内容合并保存为新版本。这样，每一次编辑都会产生新的版本，一个词条的所有版本即为该词条的历史版本。&#13;&#13;如何查看历史版本？&#13;在每个词条正文页的右侧点击“共有×个版本”（如下图），即可进入该词条的历史版本页。&#13;&#13;&#13;&#13;&#13;&#13;&#13;&#13;在历史版本页里可以查看各版本基本信息，如编辑时间、编辑者、版本改动及修改原因等情况。\" src=\"uploads/201007/1280480111x5gMoLRz_s.jpg\"></A><strong>查看历史版本</strong></DIV>\r\n<P><BR><BR><BR><BR><BR><BR><BR>&nbsp;</P>\r\n<P>&nbsp;</P>\r\n<P>在历史版本页里可以查看各版本基本信息，如编辑时间、编辑者、版本改动及修改原因等情况。 <BR><BR></P>',1952,1,1,0,0,0,'全文编辑',0),
	(16,0,35,'haoran',1,1280482285,'10.0.0.104','同义词','','','',0,0,1,0,0,0,'全文编辑',0),
	(17,0,35,'haoran',1,1280482657,'10.0.0.104','同义词','','什么叫同义词？同义词，是表达的意义相同但是名称不同的词条，例如：“北京”和“北京市”是同义词。为了避免不同用户提交名称不同而内容相同的词条，造成资源浪费和重复劳动，互动百科会将概念相同的词条添加为同义','<div class=\"hd yy_tmml\">什么叫同义词？</div><p>同义词，是表达的意义相同但是名称不同的词条，例如：“北京”和“北京市”是同义词。为了避免不同用户提交名称不同而内容相同的词条，造成资源浪费和重复劳动，互动百科会将概念相同的词条添加为同义词，并以其中较为规范或较为常用的词条作为标准词，例如：将“湖南省”作为“湖南”的标准词。<br>\r\n<br>\r\n当一个词条被添加为同义词后，该词条原有内容会被隐藏，并提示你查看标准词条。如下图所示：<br>\r\n<br>\r\n<br>\r\n<br>\r\n<br>\r\n如果你对同义词有疑议或发现同义词添加有误，欢迎你留言纠错。具体操作方法如下：&nbsp;<br>\r\n<br>\r\n在同义词右侧，点击下图所示按钮，&nbsp;<br>\r\n<br>\r\n<br>\r\n<br>\r\n<br>\r\n请在弹出的留言框中留下你的意见和想法，我们会及时处理。<br>\r\n<br>\r\n<br>\r\n<br>\r\n同义词添加规范:</p><p><br>\r\n</p>\r\n<table class=\"help_table\">\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n  <tr>\r\n    <td colspan=\"3\"><strong>类别</strong></td>\r\n    <td colspan=\"2\"><strong>添加规则</strong></td>\r\n    <td><strong>示例</strong></td>\r\n  </tr>\r\n  \r\n  <tbody><tr>\r\n    <td rowspan=\"6\"><strong>人名类</strong></td>\r\n    <td rowspan=\"3\">英译人名</td>\r\n    <td rowspan=\"3\">一般以习惯用名为标准词，如词条产生歧义则不添加同义词</td>\r\n    <td rowspan=\"6\">以习惯用名为标准词，如有歧义则不添加同义词</td>\r\n    <td rowspan=\"2\">简称、全称和习惯用名，以习惯用名为标准词，如词条产生歧义则不添加同义词。</td>\r\n    <td>正确示例：托马斯·阿尔瓦·爱迪生＝托马斯·爱迪生</td>\r\n  </tr>\r\n  <tr>\r\n    <td>错误示例：爱迪生和托马斯·爱迪生（因爱迪生是一个姓氏，有歧义）</td>\r\n  </tr>\r\n  <tr>\r\n    <td>英译人名的多种译名以常用名称标准词，如词条产生歧义则不添加同义词。</td>\r\n    <td>正确示例：乔万尼·卜伽丘＝乔万尼·薄伽丘</td>\r\n  </tr>\r\n  <tr>\r\n    <td rowspan=\"2\" colspan=\"2\">人物姓氏类</td>\r\n    <td rowspan=\"2\">以×姓为标准词，如果×氏与×姓的内容产生歧义则不添加同义词。</td>\r\n    <td>正确示例：李氏＝李姓</td>\r\n  </tr>\r\n  \r\n   <tr>\r\n    <td>错误示例：钮祜禄氏</td>\r\n  </tr>  \r\n   <tr>\r\n    <td colspan=\"2\">神话类人名</td>\r\n    <td>以常用名为标准词，如果词条产生歧义则不添加同义词。</td>\r\n    <td>错误示例：太阳神和阿波罗</td>\r\n  </tr>\r\n   \r\n   \r\n  <tr>   \r\n   <td rowspan=\"2\"><strong>皇帝类</strong></td>\r\n   <td colspan=\"2\">中国皇帝名</td>\r\n   <td colspan=\"2\">皇帝年号类词条以历史习惯用法为标准词。</td>\r\n   <td>正确示例：纣王＝商纣王</td>\r\n  </tr>   \r\n  <tr>   \r\n   <td colspan=\"2\">外国皇帝名（世袭名称与本名）</td>\r\n   <td colspan=\"2\">（世袭名称与本名）以世袭名称为标准词，如果出现歧义则不予以添加。</td>\r\n   <td>正确示例：夏尔·罗贝尔＝查理一世</td>\r\n  </tr>  \r\n  \r\n  \r\n  \r\n<tr>   \r\n    <td rowspan=\"7\">地名类</td>\r\n    <td rowspan=\"3\" colspan=\"2\">中国地名</td>\r\n    <td rowspan=\"7\">地名类词条全称与简称的意义有歧义则不添加同义词</td>\r\n    <td rowspan=\"2\">省市级地名，以地名简称为标准词（不加“省”“市”字样）</td>\r\n\r\n    <td>正确示例：大连市＝大连 </td>\r\n</tr> \r\n<tr>   \r\n    <td>错误示例：吉林和吉林市 </td>\r\n</tr> \r\n<tr>   \r\n    <td>省市级以下行政单位地名，以全称为标准词（加“区”“县”“乡”等字样）。</td>\r\n    <td>正确示例：阳曲＝阳曲县</td>\r\n</tr> \r\n<tr>   \r\n    <td colspan=\"2\">外国地名</td>\r\n    <td>以外国地名以常用名为标准词。</td>\r\n    <td>正确示例：夏威夷州＝夏威夷</td>\r\n</tr> \r\n<tr>   \r\n    <td rowspan=\"2\" colspan=\"2\">景点名称</td>\r\n    <td rowspan=\"2\">以景点全称为标准词。</td>   \r\n    <td>正确示例：卧龙自然保护区＝卧龙国家自然保护区 </td>\r\n</tr>\r\n <tr>  \r\n    <td>错误示例：武夷山自然保护区和武夷山 </td>\r\n</tr> \r\n<tr>   \r\n    <td colspan=\"2\">地理名称</td>\r\n    <td>以历史叫法为标准词。</td>\r\n    <td>&nbsp;</td>\r\n</tr> \r\n<tr>   \r\n    <td rowspan=\"2\">企业类</td>\r\n    <td colspan=\"2\">外国企业缩写</td>\r\n    <td rowspan=\"2\">一般以企业全称为标准词</td>\r\n    <td>如有其他意义则不并入企业中文全称。</td>\r\n    <td>错误示例：ibm</td>\r\n</tr> \r\n<tr>   \r\n    <td colspan=\"2\">企业名称缩写</td>\r\n    <td>与企业全称意义不完全相同则不并入中文全称。</td>\r\n    <td>错误示例：海尔与海尔集团</td>\r\n</tr> \r\n<tr>   \r\n    <td rowspan=\"2\">学校类</td>\r\n    <td rowspan=\"2\" colspan=\"2\">&nbsp;</td>\r\n    <td rowspan=\"2\" colspan=\"2\">以学校全称为标准词，如果简称与全称意义不完全相同则不添加同义词。</td>\r\n    <td>正确示例：北京四中＝北京市第四中学</td>\r\n</tr> \r\n<tr>   \r\n    <td>错误示例：四中和北京四中 </td>\r\n</tr> \r\n<tr>   \r\n    <td rowspan=\"2\">动植物类</td>\r\n    <td rowspan=\"2\" colspan=\"2\">&nbsp;</td>\r\n    <td rowspan=\"2\" colspan=\"2\">动植物名称以学名为标准词，如果其他名称有歧义则不添加同义词。</td>\r\n    <td>&nbsp;</td>\r\n</tr> \r\n<tr>   \r\n    <td>&nbsp;</td>\r\n</tr> \r\n\r\n\r\n\r\n  <tr>   \r\n   <td rowspan=\"2\"><strong>历史事件类</strong></td>\r\n   <td colspan=\"2\">词条名称涉及一月、十一月、十二月</td>\r\n   <td colspan=\"2\">应用间隔号·将表示月和日的数字隔开，避免歧义。涉及其它月份时，不用间隔号。</td>\r\n   <td>正确示例：一二九运动＝一二·九运动&nbsp;</td>\r\n  </tr>   \r\n  <tr>   \r\n   <td colspan=\"2\">词条名称带引号</td>\r\n   <td colspan=\"2\">不应出现引号等符号（事件名称本身带引号的除外）</td>\r\n   <td>正确示例：“一二九”运动＝一二·九运动</td>\r\n  </tr>   \r\n   <tr>   \r\n   <td rowspan=\"2\"><strong>军事类</strong></td>\r\n   <td colspan=\"2\">武器装备类</td>\r\n   <td colspan=\"2\">以官方名称为标准词。</td>\r\n   <td>&nbsp;</td>\r\n  </tr>   \r\n  <tr>   \r\n   <td colspan=\"2\">军事战役类</td>\r\n   <td colspan=\"2\">军事战役名称以历史记载全称为标准词。（词条尽量没有引号等特殊符号）。</td>\r\n   <td>正确示例：平型关大战＝平型关大捷</td>\r\n  </tr>  \r\n<tr>   \r\n    <td rowspan=\"5\">医药化学类</td>\r\n    <td rowspan=\"2\" colspan=\"2\">化学符号类</td>\r\n    <td rowspan=\"5\">以学名为标准词</td>\r\n    <td rowspan=\"2\">以中文简称为标准词，如果缩写与中文有歧义则不添加同义词。</td>\r\n    <td>正确示例：镁元素=镁</td>\r\n</tr> \r\n<tr>   \r\n    <td>错误示例：Mg和镁&nbsp;</td>\r\n</tr> \r\n<tr>   \r\n    <td colspan=\"2\">药物名称</td>\r\n    <td>以药物学名为标准词。</td>\r\n    <td>正确示例：先锋霉素1号=头孢噻吩</td>\r\n</tr> \r\n<tr>   \r\n    <td rowspan=\"2\" colspan=\"2\">病症名称</td>\r\n    <td rowspan=\"2\">以病症医学标准名称为标准词。</td>\r\n    <td>正确示例：帕金森氏病=震颤麻痹</td>\r\n</tr> \r\n<tr>   \r\n    <td>正确示例：先锋霉素1号=头孢噻吩</td>\r\n</tr> \r\n<tr>   \r\n    <td rowspan=\"2\">体育赛事类</td>\r\n    <td colspan=\"2\">多年一届赛事的名称</td>\r\n    <td colspan=\"2\">以“年代＋举办城市名称＋奥运会”为标准词。</td>\r\n    <td>正确示例：第二十五届夏季奥林匹克运动会＝1992年巴塞罗那奥运会</td>\r\n</tr> \r\n<tr>   \r\n    <td colspan=\"2\">赛事相关纪念物</td>\r\n    <td colspan=\"2\">以纪念物名称为标准词。</td>\r\n    <td>正确示例：奥运会福娃＝福娃</td>\r\n</tr> \r\n<tr>   \r\n    <td>节日类</td>\r\n    <td colspan=\"2\">&nbsp;</td>\r\n    <td colspan=\"2\">以“××节”为标准词，如一个节日有多种叫法则以最常用的为标准词。其他叫法如果出现歧义则不添加同义词。</td>\r\n    <td>正确示例：端午＝端午节</td>\r\n</tr> <tr>   \r\n    <td rowspan=\"2\">天文类</td>\r\n    <td colspan=\"2\">天体名称</td>\r\n    <td colspan=\"2\">以科学命名为标准词，其他名称和编号均加入科学命名中，如果编号意义有歧义则不添加同义词。</td>\r\n    <td>正确示例：天津四＝天鹅座α星</td>\r\n</tr> \r\n<tr>   \r\n    <td colspan=\"2\">人造卫星</td>\r\n    <td colspan=\"2\">以官方发布的全称为标准词。</td>\r\n    <td>&nbsp;</td>\r\n</tr> \r\n<tr>   \r\n    <td rowspan=\"2\">文艺作品类</td>\r\n    <td rowspan=\"2\" colspan=\"2\">以作品全称（无书名号的）为标准词</td>\r\n    <td rowspan=\"2\" colspan=\"2\">一个作品有多个名称，以常用名为标准词。如果名称有歧义，则不添加。</td>\r\n    <td>正确示例：《圣经》=圣经</td>\r\n</tr>\r\n<tr>\r\n  <td>错误示例：泰坦尼克号和《泰坦尼克号》</td>\r\n</tr> \r\n<tr>   \r\n    <td rowspan=\"4\">语言类</td>\r\n    <td colspan=\"2\">语种</td>\r\n    <td rowspan=\"4\">以习惯用名为标准词</td>\r\n    <td>以最常用的名称为标准词</td>\r\n    <td>正确示例：英国话=英语</td>\r\n</tr> \r\n<tr>   \r\n    <td colspan=\"2\">方言</td>\r\n    <td>以××方言为标准词</td>\r\n    <td>正确示例：山西话=山西方言</td>\r\n</tr> \r\n<tr>   \r\n    <td rowspan=\"2\" colspan=\"2\">编程语言</td>\r\n    <td rowspan=\"2\">以最常用的名称为标准词，如名称有歧义的，则不添加。</td>\r\n    <td>正确示例：编程C语言=C语言</td>\r\n</tr> <tr>   \r\n    <td>错误示例：C和C语言</td>\r\n</tr> \r\n<tr>   \r\n    <td>英文缩写类</td>\r\n    <td colspan=\"2\">&nbsp;</td>\r\n    <td colspan=\"2\">英文缩写类词条与中文译名如果出现歧义则不添加同义词。</td>\r\n    <td>错误示例：WTO和世界贸易组织</td>\r\n</tr> \r\n<tr>   \r\n    <td rowspan=\"2\">时间类</td>\r\n    <td rowspan=\"2\" colspan=\"2\">&nbsp;</td>\r\n    <td rowspan=\"2\">以×年×月×日为标准词</td>\r\n    <td rowspan=\"2\">数字使用阿拉伯数字，单独的数字不添加同义词。</td>\r\n    <td>正确示例：1949年10月1日</td>\r\n</tr>\r\n<tr>\r\n  <td>错误示例：1949和1949年</td>\r\n</tr> \r\n<tr>   \r\n    <td rowspan=\"2\">交通设施</td>\r\n    <td colspan=\"2\">轨道交通设施</td>\r\n    <td rowspan=\"2\">以习惯用名为标准词</td>\r\n    <td>以常用名为标准词，如果词条产生歧义则不添加同义词。</td>\r\n    <td rowspan=\"2\">正确示例：京津塘高速=京津塘高速公路</td>\r\n</tr> \r\n<tr>   \r\n    <td colspan=\"2\">交通站点设施</td>\r\n    <td>以全称为标准词，如果词条产生歧义则不添加同义词。</td>\r\n  </tr> \r\n<tr>   \r\n    <td rowspan=\"2\">其他</td>\r\n    <td rowspan=\"2\" colspan=\"2\">&nbsp;</td>\r\n    <td rowspan=\"2\" colspan=\"2\">一个概念有多种叫法，以常用名为标准词。如果名称有歧义则不添加。</td>\r\n    <td>正确示例：清王朝＝清朝 </td>\r\n</tr>\r\n<tr>\r\n  <td>错误示例：DNA和脱氧核糖核酸 </td>\r\n</tr> \r\n</tbody></table>',7448,0,1,0,0,0,'全文编辑',0),
	(18,0,35,'haoran',1,1280482933,'10.0.0.104','同义词','','什么叫同义词？同义词，是表达的意义相同但是名称不同的词条，例如：“北京”和“北京市”是同义词。为了避免不同用户提交名称不同而内容相同的词条，造成资源浪费和重复劳动，互动百科会将概念相同的词条添加为同义','<div class=\"hd yy_tmml\">什么叫同义词？</div><p>同义词，是表达的意义相同但是名称不同的词条，例如：“北京”和“北京市”是同义词。为了避免不同用户提交名称不同而内容相同的词条，造成资源浪费和重复劳动，互动百科会将概念相同的词条添加为同义词，并以其中较为规范或较为常用的词条作为标准词，例如：将“湖南省”作为“湖南”的标准词。<br>\r\n<br>\r\n当一个词条被添加为同义词后，该词条原有内容会被隐藏，并提示你查看标准词条。如下图所示：<br>\r\n<br>\r\n<br>\r\n<br>\r\n<br>\r\n如果你对同义词有疑议或发现同义词添加有误，欢迎你留言纠错。具体操作方法如下：&nbsp;<br>\r\n<br>\r\n在同义词右侧，点击下图所示按钮，&nbsp;<br>\r\n<br>\r\n<br>\r\n<br>\r\n<br>\r\n请在弹出的留言框中留下你的意见和想法，我们会及时处理。<br>\r\n<br>\r\n<br>\r\n<br>\r\n同义词添加规范:</p><p><br>\r\n</p>\r\n<table class=\"table\">\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n  <tbody><tr>\r\n    <td colspan=\"3\"><strong>类别</strong></td>\r\n    <td colspan=\"2\"><strong>添加规则</strong></td>\r\n    <td><strong>示例</strong></td>\r\n  </tr>\r\n  \r\n  </tbody><tbody><tr>\r\n    <td rowspan=\"6\"><strong>人名类</strong></td>\r\n    <td rowspan=\"3\">英译人名</td>\r\n    <td rowspan=\"3\">一般以习惯用名为标准词，如词条产生歧义则不添加同义词</td>\r\n    <td rowspan=\"6\">以习惯用名为标准词，如有歧义则不添加同义词</td>\r\n    <td rowspan=\"2\">简称、全称和习惯用名，以习惯用名为标准词，如词条产生歧义则不添加同义词。</td>\r\n    <td>正确示例：托马斯·阿尔瓦·爱迪生＝托马斯·爱迪生</td>\r\n  </tr>\r\n  <tr>\r\n    <td>错误示例：爱迪生和托马斯·爱迪生（因爱迪生是一个姓氏，有歧义）</td>\r\n  </tr>\r\n  <tr>\r\n    <td>英译人名的多种译名以常用名称标准词，如词条产生歧义则不添加同义词。</td>\r\n    <td>正确示例：乔万尼·卜伽丘＝乔万尼·薄伽丘</td>\r\n  </tr>\r\n  <tr>\r\n    <td rowspan=\"2\" colspan=\"2\">人物姓氏类</td>\r\n    <td rowspan=\"2\">以×姓为标准词，如果×氏与×姓的内容产生歧义则不添加同义词。</td>\r\n    <td>正确示例：李氏＝李姓</td>\r\n  </tr>\r\n  \r\n   <tr>\r\n    <td>错误示例：钮祜禄氏</td>\r\n  </tr>  \r\n   <tr>\r\n    <td colspan=\"2\">神话类人名</td>\r\n    <td>以常用名为标准词，如果词条产生歧义则不添加同义词。</td>\r\n    <td>错误示例：太阳神和阿波罗</td>\r\n  </tr>\r\n   \r\n   \r\n  <tr>   \r\n   <td rowspan=\"2\"><strong>皇帝类</strong></td>\r\n   <td colspan=\"2\">中国皇帝名</td>\r\n   <td colspan=\"2\">皇帝年号类词条以历史习惯用法为标准词。</td>\r\n   <td>正确示例：纣王＝商纣王</td>\r\n  </tr>   \r\n  <tr>   \r\n   <td colspan=\"2\">外国皇帝名（世袭名称与本名）</td>\r\n   <td colspan=\"2\">（世袭名称与本名）以世袭名称为标准词，如果出现歧义则不予以添加。</td>\r\n   <td>正确示例：夏尔·罗贝尔＝查理一世</td>\r\n  </tr>  \r\n  \r\n  \r\n  \r\n<tr>   \r\n    <td rowspan=\"7\">地名类</td>\r\n    <td rowspan=\"3\" colspan=\"2\">中国地名</td>\r\n    <td rowspan=\"7\">地名类词条全称与简称的意义有歧义则不添加同义词</td>\r\n    <td rowspan=\"2\">省市级地名，以地名简称为标准词（不加“省”“市”字样）</td>\r\n\r\n    <td>正确示例：大连市＝大连 </td>\r\n</tr> \r\n<tr>   \r\n    <td>错误示例：吉林和吉林市 </td>\r\n</tr> \r\n<tr>   \r\n    <td>省市级以下行政单位地名，以全称为标准词（加“区”“县”“乡”等字样）。</td>\r\n    <td>正确示例：阳曲＝阳曲县</td>\r\n</tr> \r\n<tr>   \r\n    <td colspan=\"2\">外国地名</td>\r\n    <td>以外国地名以常用名为标准词。</td>\r\n    <td>正确示例：夏威夷州＝夏威夷</td>\r\n</tr> \r\n<tr>   \r\n    <td rowspan=\"2\" colspan=\"2\">景点名称</td>\r\n    <td rowspan=\"2\">以景点全称为标准词。</td>   \r\n    <td>正确示例：卧龙自然保护区＝卧龙国家自然保护区 </td>\r\n</tr>\r\n <tr>  \r\n    <td>错误示例：武夷山自然保护区和武夷山 </td>\r\n</tr> \r\n<tr>   \r\n    <td colspan=\"2\">地理名称</td>\r\n    <td>以历史叫法为标准词。</td>\r\n    <td>&nbsp;</td>\r\n</tr> \r\n<tr>   \r\n    <td rowspan=\"2\">企业类</td>\r\n    <td colspan=\"2\">外国企业缩写</td>\r\n    <td rowspan=\"2\">一般以企业全称为标准词</td>\r\n    <td>如有其他意义则不并入企业中文全称。</td>\r\n    <td>错误示例：ibm</td>\r\n</tr> \r\n<tr>   \r\n    <td colspan=\"2\">企业名称缩写</td>\r\n    <td>与企业全称意义不完全相同则不并入中文全称。</td>\r\n    <td>错误示例：海尔与海尔集团</td>\r\n</tr> \r\n<tr>   \r\n    <td rowspan=\"2\">学校类</td>\r\n    <td rowspan=\"2\" colspan=\"2\">&nbsp;</td>\r\n    <td rowspan=\"2\" colspan=\"2\">以学校全称为标准词，如果简称与全称意义不完全相同则不添加同义词。</td>\r\n    <td>正确示例：北京四中＝北京市第四中学</td>\r\n</tr> \r\n<tr>   \r\n    <td>错误示例：四中和北京四中 </td>\r\n</tr> \r\n<tr>   \r\n    <td rowspan=\"2\">动植物类</td>\r\n    <td rowspan=\"2\" colspan=\"2\">&nbsp;</td>\r\n    <td rowspan=\"2\" colspan=\"2\">动植物名称以学名为标准词，如果其他名称有歧义则不添加同义词。</td>\r\n    <td>&nbsp;</td>\r\n</tr> \r\n<tr>   \r\n    <td>&nbsp;</td>\r\n</tr> \r\n\r\n\r\n\r\n  <tr>   \r\n   <td rowspan=\"2\"><strong>历史事件类</strong></td>\r\n   <td colspan=\"2\">词条名称涉及一月、十一月、十二月</td>\r\n   <td colspan=\"2\">应用间隔号·将表示月和日的数字隔开，避免歧义。涉及其它月份时，不用间隔号。</td>\r\n   <td>正确示例：一二九运动＝一二·九运动&nbsp;</td>\r\n  </tr>   \r\n  <tr>   \r\n   <td colspan=\"2\">词条名称带引号</td>\r\n   <td colspan=\"2\">不应出现引号等符号（事件名称本身带引号的除外）</td>\r\n   <td>正确示例：“一二九”运动＝一二·九运动</td>\r\n  </tr>   \r\n   <tr>   \r\n   <td rowspan=\"2\"><strong>军事类</strong></td>\r\n   <td colspan=\"2\">武器装备类</td>\r\n   <td colspan=\"2\">以官方名称为标准词。</td>\r\n   <td>&nbsp;</td>\r\n  </tr>   \r\n  <tr>   \r\n   <td colspan=\"2\">军事战役类</td>\r\n   <td colspan=\"2\">军事战役名称以历史记载全称为标准词。（词条尽量没有引号等特殊符号）。</td>\r\n   <td>正确示例：平型关大战＝平型关大捷</td>\r\n  </tr>  \r\n<tr>   \r\n    <td rowspan=\"5\">医药化学类</td>\r\n    <td rowspan=\"2\" colspan=\"2\">化学符号类</td>\r\n    <td rowspan=\"5\">以学名为标准词</td>\r\n    <td rowspan=\"2\">以中文简称为标准词，如果缩写与中文有歧义则不添加同义词。</td>\r\n    <td>正确示例：镁元素=镁</td>\r\n</tr> \r\n<tr>   \r\n    <td>错误示例：Mg和镁&nbsp;</td>\r\n</tr> \r\n<tr>   \r\n    <td colspan=\"2\">药物名称</td>\r\n    <td>以药物学名为标准词。</td>\r\n    <td>正确示例：先锋霉素1号=头孢噻吩</td>\r\n</tr> \r\n<tr>   \r\n    <td rowspan=\"2\" colspan=\"2\">病症名称</td>\r\n    <td rowspan=\"2\">以病症医学标准名称为标准词。</td>\r\n    <td>正确示例：帕金森氏病=震颤麻痹</td>\r\n</tr> \r\n<tr>   \r\n    <td>正确示例：先锋霉素1号=头孢噻吩</td>\r\n</tr> \r\n<tr>   \r\n    <td rowspan=\"2\">体育赛事类</td>\r\n    <td colspan=\"2\">多年一届赛事的名称</td>\r\n    <td colspan=\"2\">以“年代＋举办城市名称＋奥运会”为标准词。</td>\r\n    <td>正确示例：第二十五届夏季奥林匹克运动会＝1992年巴塞罗那奥运会</td>\r\n</tr> \r\n<tr>   \r\n    <td colspan=\"2\">赛事相关纪念物</td>\r\n    <td colspan=\"2\">以纪念物名称为标准词。</td>\r\n    <td>正确示例：奥运会福娃＝福娃</td>\r\n</tr> \r\n<tr>   \r\n    <td>节日类</td>\r\n    <td colspan=\"2\">&nbsp;</td>\r\n    <td colspan=\"2\">以“××节”为标准词，如一个节日有多种叫法则以最常用的为标准词。其他叫法如果出现歧义则不添加同义词。</td>\r\n    <td>正确示例：端午＝端午节</td>\r\n</tr> <tr>   \r\n    <td rowspan=\"2\">天文类</td>\r\n    <td colspan=\"2\">天体名称</td>\r\n    <td colspan=\"2\">以科学命名为标准词，其他名称和编号均加入科学命名中，如果编号意义有歧义则不添加同义词。</td>\r\n    <td>正确示例：天津四＝天鹅座α星</td>\r\n</tr> \r\n<tr>   \r\n    <td colspan=\"2\">人造卫星</td>\r\n    <td colspan=\"2\">以官方发布的全称为标准词。</td>\r\n    <td>&nbsp;</td>\r\n</tr> \r\n<tr>   \r\n    <td rowspan=\"2\">文艺作品类</td>\r\n    <td rowspan=\"2\" colspan=\"2\">以作品全称（无书名号的）为标准词</td>\r\n    <td rowspan=\"2\" colspan=\"2\">一个作品有多个名称，以常用名为标准词。如果名称有歧义，则不添加。</td>\r\n    <td>正确示例：《圣经》=圣经</td>\r\n</tr>\r\n<tr>\r\n  <td>错误示例：泰坦尼克号和《泰坦尼克号》</td>\r\n</tr> \r\n<tr>   \r\n    <td rowspan=\"4\">语言类</td>\r\n    <td colspan=\"2\">语种</td>\r\n    <td rowspan=\"4\">以习惯用名为标准词</td>\r\n    <td>以最常用的名称为标准词</td>\r\n    <td>正确示例：英国话=英语</td>\r\n</tr> \r\n<tr>   \r\n    <td colspan=\"2\">方言</td>\r\n    <td>以××方言为标准词</td>\r\n    <td>正确示例：山西话=山西方言</td>\r\n</tr> \r\n<tr>   \r\n    <td rowspan=\"2\" colspan=\"2\">编程语言</td>\r\n    <td rowspan=\"2\">以最常用的名称为标准词，如名称有歧义的，则不添加。</td>\r\n    <td>正确示例：编程C语言=C语言</td>\r\n</tr> <tr>   \r\n    <td>错误示例：C和C语言</td>\r\n</tr> \r\n<tr>   \r\n    <td>英文缩写类</td>\r\n    <td colspan=\"2\">&nbsp;</td>\r\n    <td colspan=\"2\">英文缩写类词条与中文译名如果出现歧义则不添加同义词。</td>\r\n    <td>错误示例：WTO和世界贸易组织</td>\r\n</tr> \r\n<tr>   \r\n    <td rowspan=\"2\">时间类</td>\r\n    <td rowspan=\"2\" colspan=\"2\">&nbsp;</td>\r\n    <td rowspan=\"2\">以×年×月×日为标准词</td>\r\n    <td rowspan=\"2\">数字使用阿拉伯数字，单独的数字不添加同义词。</td>\r\n    <td>正确示例：1949年10月1日</td>\r\n</tr>\r\n<tr>\r\n  <td>错误示例：1949和1949年</td>\r\n</tr> \r\n<tr>   \r\n    <td rowspan=\"2\">交通设施</td>\r\n    <td colspan=\"2\">轨道交通设施</td>\r\n    <td rowspan=\"2\">以习惯用名为标准词</td>\r\n    <td>以常用名为标准词，如果词条产生歧义则不添加同义词。</td>\r\n    <td rowspan=\"2\">正确示例：京津塘高速=京津塘高速公路</td>\r\n</tr> \r\n<tr>   \r\n    <td colspan=\"2\">交通站点设施</td>\r\n    <td>以全称为标准词，如果词条产生歧义则不添加同义词。</td>\r\n  </tr> \r\n<tr>   \r\n    <td rowspan=\"2\">其他</td>\r\n    <td rowspan=\"2\" colspan=\"2\">&nbsp;</td>\r\n    <td rowspan=\"2\" colspan=\"2\">一个概念有多种叫法，以常用名为标准词。如果名称有歧义则不添加。</td>\r\n    <td>正确示例：清王朝＝清朝 </td>\r\n</tr>\r\n<tr>\r\n  <td>错误示例：DNA和脱氧核糖核酸 </td>\r\n</tr> \r\n</tbody></table>',7455,0,1,0,0,0,'全文编辑',0),
	(10,0,22,'haoran',1,1280471918,'10.0.0.104','Wiki与BBS','','&nbsp;Wiki与BBS有哪些区别？\r\n&nbsp;核心&nbsp;\r\n&nbsp;表现方式&nbsp;\r\n&nbsp;强调内容&nbsp;\r\n&nbsp;\r\nBBS\r\n&nbsp;以话题为主线&nbsp;\r\n&nbsp;众人对某一观点或事件各抒己见&nbsp;\r\n&nbsp;以你为主，挺的就是你','\r\n<p>&nbsp;Wiki与BBS有哪些区别？</p><p><br>\r\n&nbsp;核心&nbsp;<br>\r\n&nbsp;表现方式&nbsp;<br>\r\n&nbsp;强调内容&nbsp;<br>\r\n&nbsp;<br>\r\nBBS<br>\r\n&nbsp;以话题为主线&nbsp;<br>\r\n&nbsp;众人对某一观点或事件各抒己见&nbsp;<br>\r\n&nbsp;以你为主，挺的就是你。&nbsp;<br>\r\n&nbsp;<br>\r\nWiki<br>\r\n&nbsp;以客观知识、信息为主线&nbsp;<br>\r\n&nbsp;以中立、客观、公正、公平的观点编写词条，通过你修我改，创造丰富的知识库，展现自身才学，为更多网民服务。&nbsp;<br>\r\n&nbsp;以客观存在为主，我们在分享、更新与创造丰富知识。&nbsp;<br>&nbsp;\r\n<br>\r\n</p><table class=\"table\"><tbody><tr><td>&nbsp;Web产品 <br></td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td></tr><tr><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td></tr><tr><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td></tr></tbody></table>\r\n',615,0,1,0,0,0,'全文编辑',0),
	(11,0,22,'haoran',1,1280472666,'10.0.0.104','Wiki与BBS','','&nbsp;Wiki与BBS有哪些区别？\r\n&nbsp;核心&nbsp;\r\n&nbsp;表现方式&nbsp;\r\n&nbsp;强调内容&nbsp;\r\n&nbsp;\r\nBBS\r\n&nbsp;以话题为主线&nbsp;\r\n&nbsp;众人对某一观点或事件各抒己见&nbsp;\r\n&nbsp;以你为主，挺的就是你','<P>&nbsp;Wiki与BBS有哪些区别？</P>\r\n<TABLE class=table>\r\n<TBODY>\r\n<TR>\r\n<TD>&nbsp;Web产品 <BR></TD>\r\n<TD>核心&nbsp;&nbsp;</TD>\r\n<TD>&nbsp;表现方式 </TD>\r\n<TD>强调内容&nbsp;&nbsp;</TD></TR>\r\n<TR>\r\n<TD>&nbsp;BBS</TD>\r\n<TD>&nbsp;以话题为主线 </TD>\r\n<TD>&nbsp;众人对某一观点或事件各抒己见 </TD>\r\n<TD>&nbsp;以你为主，挺的就是你。 </TD></TR>\r\n<TR>\r\n<TD>&nbsp;Wiki</TD>\r\n<TD>\r\n<P>&nbsp;以客观知识、</P>\r\n<P>信息为主线 </P></TD>\r\n<TD>\r\n<P>&nbsp;以中立、客观、公正、公平的观点编写词条，<BR>通过你修我改，创造丰富的知识库，展现自身才学，为更多网民服务。 <BR></P></TD>\r\n<TD>&nbsp;以客观存在为主，我们在分享、更新与创造丰富知识。 </TD></TR></TBODY></TABLE>',520,0,1,0,0,0,'全文编辑',0),
	(12,0,26,'haoran',1,1280473950,'10.0.0.104','信用和积分','','什么是信用？ 信用是本站对于热衷于百科编辑，并能贡献优质内容的用户的奖励。编辑百科词条并贡献优质内容都有可能获得信用。 信用由经验丰富的站务人工评审后可以获得，通常版本发布后的3日内，站务会对版本评审，根','<DIV class=hd yy_tmml>什么是信用？ </DIV>信用是本站对于热衷于百科编辑，并能贡献优质内容的用户的奖励。编辑百科词条并贡献优质内容都有可能获得信用。 <BR><BR>信用由经验丰富的站务人工评审后可以获得，通常版本发布后的3日内，站务会对版本评审，根据版本内容进行奖惩。 <BR><BR>互动站务评审时会综合考虑词条名称准确性、词条价值、编辑难度、内容深度、导语精炼度、目录完整性、内部链接准确性、页面美观度、内容条理性、图片质量等诸多因素。 <BR><BR>信用是根据单一版本的贡献奖励的，奖励分为0、+1、+2、+5、+10、+20、+50七个档次。 <BR><BR>\r\n<TABLE class=table>\r\n<TBODY>\r\n<TR>\r\n<TD>&nbsp;奖励信用数 </TD>\r\n<TD>&nbsp;版本要求 <BR></TD></TR>\r\n<TR>\r\n<TD>&nbsp;0 </TD>\r\n<TD>&nbsp;未添加合理内容，对词条质量提升无帮助等。</TD></TR>\r\n<TR>\r\n<TD>&nbsp;+1 </TD>\r\n<TD>&nbsp;对词条质量提升贡献较小，如修改非重要性的错别字，简单修改排版等。</TD></TR>\r\n<TR>\r\n<TD>&nbsp;+2 </TD>\r\n<TD>&nbsp;对词条质量提升贡献小，如少量补充非关键内容，简单修改排版未达到最佳效果等。 </TD></TR>\r\n<TR>\r\n<TD>&nbsp;+5 </TD>\r\n<TD>&nbsp;对词条质量提升有贡献，如内容较完善，排版基本合理，不影响读者阅读。 </TD></TR>\r\n<TR>\r\n<TD>&nbsp;+10 </TD>\r\n<TD>&nbsp;对词条质量提升有较大贡献，如内容准确，排版合理，无明显错误，便于读者理解等； </TD></TR>\r\n<TR>\r\n<TD>&nbsp;+20</TD>\r\n<TD>&nbsp;对词条质量提升有突出贡献，如内容简洁准确、目录逻辑清晰、内部链接准确等；</TD></TR>\r\n<TR>\r\n<TD>&nbsp;+50 </TD>\r\n<TD>&nbsp;对词条质量提升起到非常突出的贡献，如内容非常丰富准确、目录逻辑清晰、内部链接准确而丰富、图片质量很高且注释标准、页面美观整洁等； </TD></TR></TBODY></TABLE>此外，如果您创建或协作的词条内容有违法、违规行为，互动站务评审您的词条时，也会视情节严重程度，扣除一定量的信用（最多一次扣除-10个信用）。 <BR><BR>\r\n<DIV class=hd yy_tmml>什么是积分？ </DIV>积分是指您在参与词条编辑，创建等信息协作贡献时，获得的奖励，是您活跃度的体现。 <BR>',1576,0,1,0,0,0,'增加内链',0);

/*!40000 ALTER TABLE `yy_edition` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table yy_focus
# ------------------------------------------------------------

DROP TABLE IF EXISTS `yy_focus`;

CREATE TABLE `yy_focus` (
  `did` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `title` varchar(80) NOT NULL DEFAULT '',
  `tag` varchar(250) NOT NULL DEFAULT '',
  `summary` varchar(250) NOT NULL DEFAULT '',
  `image` varchar(255) NOT NULL DEFAULT '',
  `time` int(10) unsigned NOT NULL DEFAULT '0',
  `displayorder` tinyint(4) NOT NULL DEFAULT '0',
  `type` tinyint(4) NOT NULL DEFAULT '1',
  PRIMARY KEY (`did`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

LOCK TABLES `yy_focus` WRITE;
/*!40000 ALTER TABLE `yy_focus` DISABLE KEYS */;

INSERT INTO `yy_focus` (`did`, `title`, `tag`, `summary`, `image`, `time`, `displayorder`, `type`)
VALUES
	(51,'HDWiki','HDWiki','&nbsp;\r\n\r\n\r\nHDWiki界面\r\n\r\n&nbsp;\r\n概况\r\nHDWiki作为中国第一家拥有自主知识产权的中文WIKI 系统，由互动在线（北京）科技有限公司（www.hudong.com）于2006年11月28日正式','uploads/201008/s_f_2OepKa.jpg',1280716474,0,3),
	(46,'姓氏类规范','','姓氏类词条（含中文和外文姓氏），包含但不限于以下方面： 1、起源 2、发展演变 3、分布 4、郡望堂号 5、字辈 6、族谱 7、×氏名人 姓氏类词条（含中文和外文姓氏）内容需注意以下几方面： 1、与单字、×氏的区别 如','',1280716421,0,1),
	(45,'人物类规范','','人物类词条编写规范1、内容要简明扼要，逻辑清晰 从简介、生平、成绩、荣誉、作品、重点事件、评价等方面简介。如果每个目录间内容有交叉或重复，要进行整理后再发布，同样内容不要重复出现。不存在的方面，不要生搬','',1280716421,0,1),
	(44,'汽车类规范','','汽车类词条编写规范： 1、内容要准确、详细的参数表，最好是数据化的，方便读者和用户搜索。 2、客观中立的用语，避免大篇幅照搬软文、广告或宣传稿。 3、大类、大系列词条注意内容主次分明，重点放在大系列、大类整','',1280716421,0,1),
	(43,'民族、种族类规范','','民族、种族类词条内容可以包括但不限于以下方面 1、概况：如人口数量、分布地区等基本情况 2、起源及演变 3、信仰 4、饮食 5、服装 6、婚葬 7、传统节日 8、自治地区 9、民系 10、姓氏 11、知名人士 民族、种族类词条','',1280716421,0,1),
	(42,'经管、法理类规范','','经济、管理、法律理论类词条写易犯的错误： \r\n1、“文不对题” 文不对题，一般有两种情况： 一是词条内容与词条名称完全不符，如在词条边际效益中添加了效益的概念。 二是，词条内容不能全面说明词条名称，如在词条资','',1280716421,0,1),
	(41,'会展类规范','','会展类词条编写总体要求\r\n1、内容不宜过长，简明精炼即可 2、目录逻辑要清晰、顺畅 3、避免新闻性语体 4、图片、分类、相关词条、参考资料、内链等参照高分词条标准 会展类词条内容可以包括但不限于以下方面 1、会展','',1280716421,0,1),
	(40,'地名类规范','','地名类词条编写规范1、内容不求多，要求精，简单明确，可读性强的词条才是高分高质量的词条。 2、要注意内容逻辑性，要依照历史、地理、气候、环境、资源、经济、交通、行政区划、旅游、政治、文化、教育的顺序，从以','',1280716421,0,1),
	(39,'内容编写规范总则','','词条内容有三个基本原则\r\n1、内容需客观中立 2、内容非个人原创 3、内容需有据可查 \r\n以下几类内容不适合作为百科词条被收录\r\n1、不经筛选的资料：不经筛选、识别的资料，请勿直接复制、拷贝入互动百科。 2、个人理念','',1280716421,0,1),
	(38,'命名规范','','地名类词条命名规范 \r\n1、中国行政区划的命名规范 按行政区划名，中国省市县，须加上省、市、县等全称，如固原市、银川市。对于区、 县或村镇，一般使用全名，不加上一级行','',1280716406,0,3),
	(33,'历史版本','','什么是历史版本？ 每个编辑者编辑词条后，并不是直接覆盖词条原有内容，而是将原有内容保存，将新增或修改的内容保存并于原因内容合并保存为新版本。这样，每一次编辑都会产','uploads/201007/s_f_1280480111x5gMoLRz_s.jpg',1280716406,0,3),
	(34,'协作者','','什么是协作者？ 词条的协作者是参与该词条编辑的所有用户。 什么是最新协作者？ 最新协作者是指最近一个参与该词条编辑的用户。在词条正文页右侧，可以查看到该词条当前的最','uploads/201007/s_f_1280481631dwnSN6dQ_s.jpg',1280716406,0,3),
	(31,'编辑器','','什么是编辑器？ 互动百科编辑器，是互动百科自主研发WIKI词条编辑工具，提供给广大站长使用。每个词条编写都是使用编辑器来完成。 编辑器有哪些功能？ 互动百科编辑器可以','',1280716406,0,3),
	(37,'词条名称总则','','词条命名原则 1、尽量使用中文 词条名称应尽量使用中文命名，并将','',1280716385,0,2),
	(26,'信用和积分','','什么是信用？ 信用是本站对于热衷于百科编辑，并能贡献优质内容的用户的奖励。编辑百科词条并贡献优质内容都有可能获得信用。 信用由经验丰富的站务人工评审后可以获得，通','',1280716406,0,3),
	(35,'同义词','','同义词什么叫同义词？\r\n同义词，是表达的意义相同但是名称不同','uploads/201007/s_f_1280483039ysMVbk9b_s.gif',1280716385,0,2),
	(36,'相关词条','','相关词条\r\n什么是相关词条？ 相关词条就是与一个词条相关的其他','uploads/201007/s_f_1280484381eiJRbLHZ_s.gif',1280716385,0,2);

/*!40000 ALTER TABLE `yy_focus` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table yy_friendlink
# ------------------------------------------------------------

DROP TABLE IF EXISTS `yy_friendlink`;

CREATE TABLE `yy_friendlink` (
  `id` smallint(6) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `url` varchar(100) NOT NULL,
  `logo` varchar(100) DEFAULT NULL,
  `description` varchar(200) DEFAULT NULL,
  `displayorder` tinyint(2) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



# Dump of table yy_gift
# ------------------------------------------------------------

DROP TABLE IF EXISTS `yy_gift`;

CREATE TABLE `yy_gift` (
  `id` smallint(6) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(80) NOT NULL,
  `description` varchar(250) NOT NULL,
  `image` varchar(250) NOT NULL,
  `credit` int(10) NOT NULL DEFAULT '0',
  `time` int(11) NOT NULL,
  `available` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



# Dump of table yy_giftlog
# ------------------------------------------------------------

DROP TABLE IF EXISTS `yy_giftlog`;

CREATE TABLE `yy_giftlog` (
  `id` smallint(6) unsigned NOT NULL AUTO_INCREMENT,
  `uid` int(6) unsigned NOT NULL,
  `gid` smallint(6) NOT NULL,
  `extra` text NOT NULL,
  `time` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



# Dump of table yy_innerlinkcache
# ------------------------------------------------------------

DROP TABLE IF EXISTS `yy_innerlinkcache`;

CREATE TABLE `yy_innerlinkcache` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `did` int(11) NOT NULL,
  `title` varchar(200) NOT NULL,
  `titleid` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `did` (`did`),
  KEY `title` (`title`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



# Dump of table yy_language
# ------------------------------------------------------------

DROP TABLE IF EXISTS `yy_language`;

CREATE TABLE `yy_language` (
  `id` smallint(6) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL DEFAULT '',
  `available` tinyint(1) NOT NULL DEFAULT '1',
  `path` varchar(100) NOT NULL,
  `copyright` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

LOCK TABLES `yy_language` WRITE;
/*!40000 ALTER TABLE `yy_language` DISABLE KEYS */;

INSERT INTO `yy_language` (`id`, `name`, `available`, `path`, `copyright`)
VALUES
	(1,'简体中文',1,'zh','hudong.com');

/*!40000 ALTER TABLE `yy_language` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table yy_lock
# ------------------------------------------------------------

DROP TABLE IF EXISTS `yy_lock`;

CREATE TABLE `yy_lock` (
  `did` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `uid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `time` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`did`,`uid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



# Dump of table yy_mailqueue
# ------------------------------------------------------------

DROP TABLE IF EXISTS `yy_mailqueue`;

CREATE TABLE `yy_mailqueue` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `touid` mediumint(8) NOT NULL DEFAULT '0',
  `tomail` varchar(100) NOT NULL,
  `frommail` varchar(100) NOT NULL,
  `subject` varchar(255) NOT NULL,
  `message` text NOT NULL,
  `html` tinyint(1) NOT NULL DEFAULT '0',
  `priority` tinyint(1) NOT NULL DEFAULT '1',
  `time` int(10) unsigned NOT NULL,
  `failures` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



# Dump of table yy_nav
# ------------------------------------------------------------

DROP TABLE IF EXISTS `yy_nav`;

CREATE TABLE `yy_nav` (
  `id` smallint(6) unsigned NOT NULL AUTO_INCREMENT,
  `name` char(15) NOT NULL,
  `code` text NOT NULL,
  `position` tinyint(1) DEFAULT NULL,
  `time` int(10) NOT NULL,
  `lastedit` int(10) NOT NULL,
  `lasteditor` char(15) NOT NULL,
  `lasteditorid` mediumint(8) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `AK_name` (`name`),
  KEY `AK_lastedit` (`lastedit`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



# Dump of table yy_navlink
# ------------------------------------------------------------

DROP TABLE IF EXISTS `yy_navlink`;

CREATE TABLE `yy_navlink` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `navid` varchar(15) DEFAULT NULL,
  `did` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `navid` (`navid`,`did`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



# Dump of table yy_navmodel
# ------------------------------------------------------------

DROP TABLE IF EXISTS `yy_navmodel`;

CREATE TABLE `yy_navmodel` (
  `id` smallint(6) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(15) NOT NULL,
  `code` text NOT NULL,
  `status` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

LOCK TABLES `yy_navmodel` WRITE;
/*!40000 ALTER TABLE `yy_navmodel` DISABLE KEYS */;

INSERT INTO `yy_navmodel` (`id`, `name`, `code`, `status`)
VALUES
	(1,'简语+链接集合','<p class=\"bor-ccc bg_g\">与“物质文化”相对，人类在社会历史实践过程中所创造的各种精神文化。本任务即盘点我国民间的舞蹈。</p><table class=\"table\">	<tr>		<td>		<a class=\"innerlink\" href=\"index.php?doc-innerlink-%E6%9C%9D%E9%98%B3%E6%B0%91%E9%97%B4%E7%A7%A7%E6%AD%8C\"  target=\"_blank\" title=\"朝阳民间秧歌\">		朝阳民间秧歌</a><br/>		<a class=\"innerlink\" href=\"index.php?doc-innerlink-%E5%A4%A7%E6%A0%85%E6%A0%8F%E4%BA%94%E6%96%97%E6%96%8B%E9%AB%98%E8%B7%B7%E7%A7%A7%E6%AD%8C\"  target=\"_blank\"title=\"大栅栏五斗斋高跷秧歌\">		大栅栏五斗斋高跷秧歌</a><br/>		<a class=\"innerlink\" href=\"index.php?doc-innerlink-%E4%BA%AC%E8%A5%BF%E5%A4%AA%E5%B9%B3%E9%BC%93\" target=\"_blank\" title=\"京西太平鼓\">		京西太平鼓</a><br/>		<a class=\"innerlink\" href=\"index.php?doc-innerlink-%E6%89%93%E9%94%A3%E9%95%B2\" target=\"_blank\" title=\"打锣镲\">		打锣镲</a> <br/>		<a class=\"innerlink\" href=\"index.php?doc-innerlink-%E6%9C%AC%E6%BA%AA%E7%A4%BE%E7%81%AB\" target=\"_blank\" title=\"本溪社火\">		本溪社火</a><br/>		<a class=\"innerlink\" href=\"index.php?doc-innerlink-%E5%82%A3%E6%97%8F%E7%99%BD%E8%B1%A1%E8%88%9E\" target=\"_blank\" title=\"傣族白象舞\">		傣族白象舞</a><br/>		<a class=\"innerlink\" href=\"index.php?doc-innerlink-%E5%AF%86%E4%BA%91%E8%9D%B4%E8%9D%B6%E4%BC%9A\" target=\"_blank\" title=\"密云蝴蝶会\">		密云蝴蝶会</a><br/>		<a class=\"innerlink\" href=\"index.php?doc-innerlink-%E5%BB%B6%E5%BA%86%E6%97%B1%E8%88%B9\" target=\"_blank\" title=\"延庆旱船\">		延庆旱船</a><br/>		<a class=\"innerlink\" href=\"index.php?doc-innerlink-%E9%80%9A%E5%B7%9E%E8%BF%90%E6%B2%B3%E9%BE%99%E7%81%AF\" target=\"_blank\" title=\"通州运河龙灯\">		通州运河龙灯</a> <br/>		<a class=\"innerlink\" href=\"index.php?doc-innerlink-%E6%9D%BF%E5%87%B3%E9%BE%99\" target=\"_blank\" title=\"板凳龙\">		板凳龙</a> </td>		<td>		<p>		<a class=\"innerlink\" href=\"index.php?doc-innerlink-%E9%87%91%E5%B7%9E%E9%BE%99%E8%88%9E\" target=\"_blank\" title=\"金州龙舞\">		金州龙舞</a><br/>		<a class=\"innerlink\" href=\"index.php?doc-innerlink-%E9%9D%92%E9%BE%99%E5%9C%AA%E6%A0%8F%E6%A3%92\" target=\"_blank\" title=\"青龙圪栏棒\">		青龙圪栏棒</a><br/>		<a class=\"innerlink\" href=\"index.php?doc-innerlink-%E7%9B%96%E5%B7%9E%E9%AB%98%E8%B7%B7%E7%A7%A7%E6%AD%8C\" target=\"_blank\" title=\"盖州高跷秧歌\">		盖州高跷秧歌</a><br/>		<a class=\"innerlink\" href=\"index.php?doc-innerlink-%E4%B8%8A%E5%8F%A3%E5%AD%90%E9%AB%98%E8%B7%B7%E7%A7%A7%E6%AD%8C\" target=\"_blank\" title=\"上口子高跷秧歌\">		上口子高跷秧歌</a><br/>		<a class=\"innerlink\" href=\"index.php?doc-innerlink-%E5%AE%89%E5%BA%B7%E5%B0%8F%E5%9C%BA%E5%AD%90\" target=\"_blank\" title=\"安康小场子\">		安康小场子</a><br/>		<a class=\"innerlink\" href=\"index.php?doc-innerlink-%E9%80%9A%E5%9F%8E%E6%8B%8D%E6%89%93\" target=\"_blank\" title=\"通城拍打\">		通城拍打</a><br/>		<a class=\"innerlink\" href=\"index.php?doc-innerlink-%E7%99%BD%E7%BA%B8%E5%9D%8A%E5%A4%AA%E7%8B%AE\" target=\"_blank\" title=\"白纸坊太狮\">		白纸坊太狮</a><br/>		<a class=\"innerlink\" href=\"index.php?doc-innerlink-%E4%B8%9C%E5%82%A8%E5%8F%8C%E9%BE%99%E4%BC%9A\" target=\"_blank\" title=\"东储双龙会\">		东储双龙会</a><br/>		<a class=\"innerlink\" href=\"index.php?doc-innerlink-%E6%92%B5%E8%8A%B1\" target=\"_blank\" title=\"撵花\">		撵花</a><br/>		<a class=\"innerlink\" href=\"index.php?doc-innerlink-%E6%98%93%E5%8E%BF%E6%91%86%E5%AD%97%E9%BE%99%E7%81%AF\" target=\"_blank\" title=\"易县摆字龙灯\">		易县摆字龙灯</a></p>		</td>		<td>		<a class=\"innerlink\" href=\"index.php?doc-innerlink-%E9%9E%91%E5%AD%90%E7%A7%A7%E6%AD%8C\" target=\"_blank\" title=\"鞑子秧歌\">		鞑子秧歌</a><br/>		<a class=\"innerlink\" href=\"index.php?doc-innerlink-%E8%B5%AB%E5%93%B2%E6%97%8F%E8%90%A8%E6%BB%A1%E8%88%9E\" target=\"_blank\" title=\"赫哲族萨满舞\">		赫哲族萨满舞</a><br/>		<a class=\"innerlink\" href=\"index.php?doc-innerlink-%E7%B1%B3%E7%B2%AE%E5%B1%AF%E9%AB%98%E8%B7%B7\" target=\"_blank\" title=\"米粮屯高跷\">		米粮屯高跷</a><br/>		<a class=\"innerlink\" href=\"index.php?doc-innerlink-%E7%81%AB%E7%BB%AB%E5%AD%90%E4%BC%9E%E8%88%9E\" target=\"_blank\" title=\"火绫子伞舞\">		火绫子伞舞</a><br/>		<a class=\"innerlink\" href=\"index.php?doc-innerlink-%E5%85%AB%E9%97%BD%E5%8D%83%E5%A7%BF%E8%88%9E\" target=\"_blank\" title=\"八闽千姿舞\">		八闽千姿舞</a><br/>		<a class=\"innerlink\" href=\"index.php?doc-innerlink-%E5%BE%B7%E5%AE%89%E6%BD%98%E5%85%AC%E6%88%8F\" target=\"_blank\" title=\"德安潘公戏\">		德安潘公戏</a><br/>		<a class=\"innerlink\" href=\"index.php?doc-innerlink-%E4%B9%8C%E6%8B%89%E6%BB%A1%E6%97%8F%E7%A7%A7%E6%AD%8C\" target=\"_blank\" title=\"乌拉满族秧歌\">		乌拉满族秧歌</a><br/>		<a class=\"innerlink\" href=\"index.php?doc-innerlink-%E6%98%8C%E5%B9%B3%E5%90%8E%E7%89%9B%E5%9D%8A%E6%9D%91%E8%8A%B1%E9%92%B9%E5%A4%A7%E9%BC%93\" target=\"_blank\" title=\"昌平后牛坊村花钹大鼓\">		昌平后牛坊村花钹大鼓</a><br/>		<a class=\"innerlink\" href=\"index.php?doc-innerlink-%E8%B5%9E%E7%9A%87%E9%93%81%E9%BE%99%E7%81%AF\" target=\"_blank\" title=\"赞皇铁龙灯\">		赞皇铁龙灯</a>		</td>		<td>		<a class=\"innerlink\" href=\"index.php?doc-innerlink-%E9%86%89%E9%BE%99%E8%88%9E\" target=\"_blank\" title=\"醉龙舞\">醉龙舞</a><br/>		<a class=\"innerlink\" href=\"index.php?doc-innerlink-%E9%9A%86%E5%B0%A7%E6%8B%9B%E5%AD%90%E9%BC%93\" target=\"_blank\" title=\"隆尧招子鼓\">		隆尧招子鼓</a> <br/>		<a class=\"innerlink\" href=\"index.php?doc-innerlink-%E6%99%8B%E5%B7%9E%E5%AE%98%E4%BC%9E\" target=\"_blank\" title=\"晋州官伞\">		晋州官伞</a><br/>		<a class=\"innerlink\" href=\"index.php?doc-innerlink-%E9%A9%AC%E9%B9%BF%E8%88%9E\" target=\"_blank\" title=\"马鹿舞\">		马鹿舞</a><br/>		<a class=\"innerlink\" href=\"index.php?doc-innerlink-%E4%B8%B0%E5%AE%81%E8%9D%B4%E8%9D%B6%E8%88%9E\" target=\"_blank\" title=\"丰宁蝴蝶舞\">		丰宁蝴蝶舞</a><br/>		<a class=\"innerlink\" href=\"index.php?doc-innerlink-%E5%B4%87%E4%BB%81%E8%B7%B3%E5%85%AB%E4%BB%99\" target=\"_blank\" title=\"崇仁跳八仙\">		崇仁跳八仙</a><br/>		<a class=\"innerlink\" href=\"index.php?doc-innerlink-%E4%B8%89%E8%8A%82%E9%BE%99%C2%B7%E8%B7%B3%E9%BC%93\" target=\"_blank\" title=\"三节龙·跳鼓\">		三节龙·跳鼓</a><br/>		<a class=\"innerlink\" href=\"index.php?doc-innerlink-%E6%B5%B7%E6%B7%80%E6%89%91%E8%9D%B4%E8%9D%B6\" target=\"_blank\" title=\"海淀扑蝴蝶\">		海淀扑蝴蝶</a><br/>		<a class=\"innerlink\" href=\"index.php?doc-innerlink-%E8%B4%AF%E6%BA%AA%E6%9D%91%E5%9C%B0%E5%9B%B4%E5%AD%90\" target=\"_blank\" title=\"贯溪村地围子\">		贯溪村地围子</a>		</td>	</tr></table>',1),
	(2,'两列表格','<table class=\"table\">	<tr>		<td class=\"w-70\">网络红人</td>		<td>红人简介</td>	</tr>	<tr>		<td><a class=\"innerlink\" href=\"index.php?doc-innerlink-%E7%AB%A0%E6%B3%BD%E5%A4%A9\" target=\"_blank\" title=\"章泽天\">章泽天</a></td>		<td>女，江苏南京人，南京外国语学校学生。2009年12月在网络走红，被网友称为奶茶美眉。2011年1月4日，清华大学证实，南外高三学生章泽天的确被清华大学认定为文科保送生。</td>	</tr>	<tr>		<td><a class=\"innerlink\" href=\"index.php?doc-innerlink-%E5%8D%96%E8%8F%9C%E5%93%A5\" target=\"_blank\" title=\"卖菜哥\">卖菜哥</a>		</td>		<td>寒冬时节，两名穿着厚棉服的小伙子在乌鲁木齐一个居民小区户外，出售仅比批发价高出几毛钱的各类蔬菜，所到之处往往人头攒动，被老百姓亲切地称为“卖菜哥”。 		<br />		</td>	</tr>	<tr>		<td><a class=\"innerlink\" href=\"index.php?doc-innerlink-%E8%8B%8F%E7%B4%AB%E7%B4%AB\" target=\"_blank\" title=\"苏紫紫\">		苏紫紫</a></td>		<td>女，湖北省宜昌市人，中国人民大学艺术系二年级学生，也是一名人体模特。2010年12月，她在学校里办了个人体艺术私拍展，引发学校老师同学的议论，遭受白眼。</td>	</tr>	<tr>		<td><a class=\"innerlink\" href=\"index.php?doc-innerlink-%E6%8A%80%E6%9C%AF%E5%A5%B3\" target=\"_blank\" title=\"技术女\">		技术女</a></td>		<td>某技术女与一位名叫jack weppler 的男友分手之后，制作了N张男友的PS照片（主要是PS文字），然后上传到网上，并通过SEO，让Google 		图片搜索jack weppler 之后会出现这些照片。</td>	</tr>	<tr>		<td><a class=\"innerlink\" href=\"index.php?doc-innerlink-%E6%B5%87%E6%B0%B4%E5%93%A5\" target=\"_blank\" title=\"浇水哥\">浇水哥</a></td>		<td>情侣吵架纵火烧房，淡定&quot;浇水哥&quot;楼顶救火走红，上班后不久，“浇水哥”的照片被人发上了网，他淡定的动作和众网友搞笑的跟帖，一下子使他在单位“火”了。</td>	</tr></table>',1),
	(3,'免责声明','<P class=\"bor-ccc bg_g\">本站声明：该内容为网友协作，并不代表本站观点。由此产生的后果，于本站无关。</P>',1),
	(4,'两列表格_有标题','<table class=\"table\">	<tr>		<td class=\"bold\" colspan=\"2\"><strong>2010年年度十大网络红人</strong></td>	</tr>	<tr>		<td class=\"w-70\">网络红人 </td>		<td>红人简介</td>	</tr>	<tr>		<td><a class=\"innerlink\" href=\"index.php?doc-innerlink-%E7%AB%A0%E6%B3%BD%E5%A4%A9\" target=\"_blank\" title=\"章泽天\">章泽天</a></td>		<td>女，江苏南京人，南京外国语学校学生。2009年12月在网络走红，被网友称为奶茶美眉。2011年1月4日，清华大学证实，南外高三学生章泽天的确被清华大学认定为文科保送生。</td>	</tr>	<tr>		<td><a class=\"innerlink\" href=\"index.php?doc-innerlink-%E5%8D%96%E8%8F%9C%E5%93%A5\" target=\"_blank\" title=\"卖菜哥\">卖菜哥</a>		</td>		<td>寒冬时节，两名穿着厚棉服的小伙子在乌鲁木齐一个居民小区户外，出售仅比批发价高出几毛钱的各类蔬菜，所到之处往往人头攒动，被老百姓亲切地称为“卖菜哥”。 		</td>	</tr>	<tr>		<td><a class=\"innerlink\" href=\"index.php?doc-innerlink-%E8%8B%8F%E7%B4%AB%E7%B4%AB\" target=\"_blank\" title=\"苏紫紫\">		苏紫紫</a></td>		<td>女，湖北省宜昌市人，中国人民大学艺术系二年级学生，也是一名人体模特。2010年12月，她在学校里办了个人体艺术私拍展，引发学校老师同学的议论，遭受白眼。</td>	</tr>	<tr>		<td><a class=\"innerlink\" href=\"index.php?doc-innerlink-%E6%8A%80%E6%9C%AF%E5%A5%B3\" target=\"_blank\" title=\"技术女\">		技术女</a></td>		<td>某技术女与一位名叫jack weppler 的男友分手之后，制作了N张男友的PS照片（主要是PS文字），然后上传到网上，并通过SEO，让Google 		图片搜索jack weppler 之后会出现这些照片。</td>	</tr>	<tr>		<td><a class=\"innerlink\" href=\"index.php?doc-innerlink-%E6%B5%87%E6%B0%B4%E5%93%A5\" target=\"_blank\" title=\"浇水哥\">浇水哥</a></td>		<td>情侣吵架纵火烧房，淡定&quot;浇水哥&quot;楼顶救火走红，上班后不久，“浇水哥”的照片被人发上了网，他淡定的动作和众网友搞笑的跟帖，一下子使他在单位“火”了。</td>	</tr></table>',1),
	(5,'图文混排','<table class=\"table\" vertical-align=\"top\">	<tr>		<td rowspan=\"2\">		<div class=\"img img_l\" style=\"WIDTH: 140px\">			<a href=\"style/default/zt.jpg\" target=\"_blank\" title=\"主题图片\">			<img alt=\"主题图片\" src=\"style/default/zt.jpg\" title=\"主题图片\"/></a><br />			<strong>主题图片</strong></div>		</td>		<td class=\"bold\">模块标题</td>	</tr>	<tr>		<td class=\"p_a_m\">		<p>		<a class=\"innerlink\" href=\"index.php?doc-innerlink-%E6%A8%A1%E5%9D%97%E6%A0%87%E9%A2%98\" target=\"_blank\" title=\"模块标题\">		模块标题</a>		<a class=\"innerlink\" href=\"index.php?doc-innerlink-%E6%A8%A1%E5%9D%97%E6%A0%87%E9%A2%98\" target=\"_blank\" title=\"模块标题\">		模块标题</a>		<a class=\"innerlink\" href=\"index.php?doc-innerlink-%E6%A8%A1%E5%9D%97%E6%A0%87%E9%A2%98\" target=\"_blank\" title=\"模块标题\">		模块标题</a>		<a class=\"innerlink\" href=\"index.php?doc-innerlink-%E6%A8%A1%E5%9D%97%E6%A0%87%E9%A2%98\" target=\"_blank\" title=\"模块标题\">		模块标题</a>		<a class=\"innerlink\" href=\"index.php?doc-innerlink-%E5%86%85%E5%AE%B9%E8%AF%8D%E6%9D%A1\" target=\"_blank\" title=\"内容词条\">		内容词条</a>		<a class=\"innerlink\" href=\"index.php?doc-innerlink-%E5%86%85%E5%AE%B9%E8%AF%8D%E6%9D%A1\" target=\"_blank\" title=\"内容词条\">		内容词条</a>		<a class=\"innerlink\" href=\"index.php?doc-innerlink-%E5%86%85%E5%AE%B9%E8%AF%8D%E6%9D%A1\" target=\"_blank\" title=\"内容词条\">		内容词条</a><a class=\"innerlink\" href=\"index.php?doc-innerlink-%E5%86%85%E5%AE%B9%E8%AF%8D%E6%9D%A1\" target=\"_blank\" title=\"内容词条\">内容词条</a><a class=\"innerlink\" href=\"index.php?doc-innerlink-%E5%86%85%E5%AE%B9%E8%AF%8D%E6%9D%A1\" target=\"_blank\" title=\"内容词条\">内容词条</a><a class=\"innerlink\" href=\"index.php?doc-innerlink-%E5%86%85%E5%AE%B9%E8%AF%8D%E6%9D%A1\" target=\"_blank\" title=\"内容词条\">内容词条</a><a class=\"innerlink\" href=\"index.php?doc-innerlink-%E5%86%85%E5%AE%B9%E8%AF%8D%E6%9D%A1\" target=\"_blank\" title=\"内容词条\">内容词条</a><a class=\"innerlink\" href=\"index.php?doc-innerlink-%E5%86%85%E5%AE%B9%E8%AF%8D%E6%9D%A1\" target=\"_blank\" title=\"内容词条\">内容词条</a><a class=\"innerlink\" href=\"index.php?doc-innerlink-%E5%86%85%E5%AE%B9%E8%AF%8D%E6%9D%A1\" target=\"_blank\" title=\"内容词条\">内容词条</a><a class=\"innerlink\" href=\"index.php?doc-innerlink-%E5%86%85%E5%AE%B9%E8%AF%8D%E6%9D%A1\" target=\"_blank\" title=\"内容词条\">内容词条</a><a class=\"innerlink\" href=\"index.php?doc-innerlink-%E5%86%85%E5%AE%B9%E8%AF%8D%E6%9D%A1\" target=\"_blank\" title=\"内容词条\">内容词条</a><a class=\"innerlink\" href=\"index.php?doc-innerlink-%E5%86%85%E5%AE%B9%E8%AF%8D%E6%9D%A1\" target=\"_blank\" title=\"内容词条\">内容词条</a><a class=\"innerlink\" href=\"index.php?doc-innerlink-%E5%86%85%E5%AE%B9%E8%AF%8D%E6%9D%A1\" target=\"_blank\" title=\"内容词条\">内容词条</a><a class=\"innerlink\" href=\"index.php?doc-innerlink-%E5%86%85%E5%AE%B9%E8%AF%8D%E6%9D%A1\" target=\"_blank\" title=\"内容词条\">内容词条</a><a class=\"innerlink\" href=\"index.php?doc-innerlink-%E5%86%85%E5%AE%B9%E8%AF%8D%E6%9D%A1\" target=\"_blank\" title=\"内容词条\">内容词条</a><a class=\"innerlink\" href=\"index.php?doc-innerlink-%E5%86%85%E5%AE%B9%E8%AF%8D%E6%9D%A1\" target=\"_blank\" title=\"内容词条\">内容词条</a><a class=\"innerlink\" href=\"index.php?doc-innerlink-%E5%86%85%E5%AE%B9%E8%AF%8D%E6%9D%A1\" target=\"_blank\" title=\"内容词条\">内容词条</a><a class=\"innerlink\" href=\"index.php?doc-innerlink-%E5%86%85%E5%AE%B9%E8%AF%8D%E6%9D%A1\" target=\"_blank\" title=\"内容词条\">内容词条</a><a class=\"innerlink\" href=\"index.php?doc-innerlink-%E5%86%85%E5%AE%B9%E8%AF%8D%E6%9D%A1\" target=\"_blank\" title=\"内容词条\">内容词条</a><a class=\"innerlink\" href=\"index.php?doc-innerlink-%E5%86%85%E5%AE%B9%E8%AF%8D%E6%9D%A1\" target=\"_blank\" title=\"内容词条\">内容词条</a><a class=\"innerlink\" href=\"index.php?doc-innerlink-%E5%86%85%E5%AE%B9%E8%AF%8D%E6%9D%A1\" target=\"_blank\" title=\"内容词条\">内容词条</a><a class=\"innerlink\" href=\"index.php?doc-innerlink-%E5%86%85%E5%AE%B9%E8%AF%8D%E6%9D%A1\" target=\"_blank\" title=\"内容词条\">内容词条</a><a class=\"innerlink\" href=\"index.php?doc-innerlink-%E5%86%85%E5%AE%B9%E8%AF%8D%E6%9D%A1\" target=\"_blank\" title=\"内容词条\">内容词条</a><a class=\"innerlink\" href=\"index.php?doc-innerlink-%E6%A8%A1%E5%9D%97%E6%A0%87%E9%A2%98\" target=\"_blank\" title=\"模块标题\">模块标题</a>		<a class=\"innerlink\" href=\"index.php?doc-innerlink-%E6%A8%A1%E5%9D%97%E6%A0%87%E9%A2%98\" target=\"_blank\" title=\"模块标题\">		模块标题</a>		<a class=\"innerlink\" href=\"index.php?doc-innerlink-%E6%A8%A1%E5%9D%97%E6%A0%87%E9%A2%98\" target=\"_blank\" title=\"模块标题\">		模块标题</a>		<a class=\"innerlink\" href=\"index.php?doc-innerlink-%E6%A8%A1%E5%9D%97%E6%A0%87%E9%A2%98\" target=\"_blank\" title=\"模块标题\">		模块标题</a>		<a class=\"innerlink\" href=\"index.php?doc-innerlink-%E5%86%85%E5%AE%B9%E8%AF%8D%E6%9D%A1\" target=\"_blank\" title=\"内容词条\">		内容词条</a>		<a class=\"innerlink\" href=\"index.php?doc-innerlink-%E5%86%85%E5%AE%B9%E8%AF%8D%E6%9D%A1\" target=\"_blank\" title=\"内容词条\">		内容词条</a>		<a class=\"innerlink\" href=\"index.php?doc-innerlink-%E5%86%85%E5%AE%B9%E8%AF%8D%E6%9D%A1\" target=\"_blank\" title=\"内容词条\">		内容词条</a><a class=\"innerlink\" href=\"index.php?doc-innerlink-%E5%86%85%E5%AE%B9%E8%AF%8D%E6%9D%A1\" target=\"_blank\" title=\"内容词条\">内容词条</a><a class=\"innerlink\" href=\"index.php?doc-innerlink-%E5%86%85%E5%AE%B9%E8%AF%8D%E6%9D%A1\" target=\"_blank\" title=\"内容词条\">内容词条</a><a class=\"innerlink\" href=\"index.php?doc-innerlink-%E5%86%85%E5%AE%B9%E8%AF%8D%E6%9D%A1\" target=\"_blank\" title=\"内容词条\">内容词条</a><a class=\"innerlink\" href=\"index.php?doc-innerlink-%E5%86%85%E5%AE%B9%E8%AF%8D%E6%9D%A1\" target=\"_blank\" title=\"内容词条\">内容词条</a><a class=\"innerlink\" href=\"index.php?doc-innerlink-%E5%86%85%E5%AE%B9%E8%AF%8D%E6%9D%A1\" target=\"_blank\" title=\"内容词条\">内容词条</a><a class=\"innerlink\" href=\"index.php?doc-innerlink-%E5%86%85%E5%AE%B9%E8%AF%8D%E6%9D%A1\" target=\"_blank\" title=\"内容词条\">内容词条</a><a class=\"innerlink\" href=\"index.php?doc-innerlink-%E5%86%85%E5%AE%B9%E8%AF%8D%E6%9D%A1\" target=\"_blank\" title=\"内容词条\">内容词条</a><a class=\"innerlink\" href=\"index.php?doc-innerlink-%E5%86%85%E5%AE%B9%E8%AF%8D%E6%9D%A1\" target=\"_blank\" title=\"内容词条\">内容词条</a><a class=\"innerlink\" href=\"index.php?doc-innerlink-%E5%86%85%E5%AE%B9%E8%AF%8D%E6%9D%A1\" target=\"_blank\" title=\"内容词条\">内容词条</a><a class=\"innerlink\" href=\"index.php?doc-innerlink-%E5%86%85%E5%AE%B9%E8%AF%8D%E6%9D%A1\" target=\"_blank\" title=\"内容词条\">内容词条</a><a class=\"innerlink\" href=\"index.php?doc-innerlink-%E5%86%85%E5%AE%B9%E8%AF%8D%E6%9D%A1\" target=\"_blank\" title=\"内容词条\">内容词条</a><a class=\"innerlink\" href=\"index.php?doc-innerlink-%E5%86%85%E5%AE%B9%E8%AF%8D%E6%9D%A1\" target=\"_blank\" title=\"内容词条\">内容词条</a><a class=\"innerlink\" href=\"index.php?doc-innerlink-%E5%86%85%E5%AE%B9%E8%AF%8D%E6%9D%A1\" target=\"_blank\" title=\"内容词条\">内容词条</a><a class=\"innerlink\" href=\"index.php?doc-innerlink-%E5%86%85%E5%AE%B9%E8%AF%8D%E6%9D%A1\" target=\"_blank\" title=\"内容词条\">内容词条</a><a class=\"innerlink\" href=\"index.php?doc-innerlink-%E5%86%85%E5%AE%B9%E8%AF%8D%E6%9D%A1\" target=\"_blank\" title=\"内容词条\">内容词条</a><a class=\"innerlink\" href=\"index.php?doc-innerlink-%E5%86%85%E5%AE%B9%E8%AF%8D%E6%9D%A1\" target=\"_blank\" title=\"内容词条\">内容词条</a><a class=\"innerlink\" href=\"index.php?doc-innerlink-%E5%86%85%E5%AE%B9%E8%AF%8D%E6%9D%A1\" target=\"_blank\" title=\"内容词条\">内容词条</a><a class=\"innerlink\" href=\"index.php?doc-innerlink-%E5%86%85%E5%AE%B9%E8%AF%8D%E6%9D%A1\" target=\"_blank\" title=\"内容词条\">内容词条</a><a class=\"innerlink\" href=\"index.php?doc-innerlink-%E5%86%85%E5%AE%B9%E8%AF%8D%E6%9D%A1\" target=\"_blank\" title=\"内容词条\">内容词条</a><a class=\"innerlink\" href=\"index.php?doc-innerlink-%E5%86%85%E5%AE%B9%E8%AF%8D%E6%9D%A1\" target=\"_blank\" title=\"内容词条\">内容词条</a><a class=\"innerlink\" href=\"index.php?doc-innerlink-%E6%A8%A1%E5%9D%97%E6%A0%87%E9%A2%98\" target=\"_blank\" title=\"模块标题\">模块标题</a>		<a class=\"innerlink\" href=\"index.php?doc-innerlink-%E6%A8%A1%E5%9D%97%E6%A0%87%E9%A2%98\" target=\"_blank\" title=\"模块标题\">		模块标题</a>		<a class=\"innerlink\" href=\"index.php?doc-innerlink-%E6%A8%A1%E5%9D%97%E6%A0%87%E9%A2%98\" target=\"_blank\" title=\"模块标题\">		模块标题</a><a class=\"innerlink\" href=\"index.php?doc-innerlink-%E6%A8%A1%E5%9D%97%E6%A0%87%E9%A2%98\" target=\"_blank\" title=\"模块标题\">模块标题</a>		<a class=\"innerlink\" href=\"index.php?doc-innerlink-%E6%A8%A1%E5%9D%97%E6%A0%87%E9%A2%98\" target=\"_blank\" title=\"模块标题\">		模块标题</a>		<a class=\"innerlink\" href=\"index.php?doc-innerlink-%E6%A8%A1%E5%9D%97%E6%A0%87%E9%A2%98\" target=\"_blank\" title=\"模块标题\">		模块标题</a>		<a class=\"innerlink\" href=\"index.php?doc-innerlink-%E6%A8%A1%E5%9D%97%E6%A0%87%E9%A2%98\" target=\"_blank\" title=\"模块标题\">		模块标题</a>		<a class=\"innerlink\" href=\"index.php?doc-innerlink-%E5%86%85%E5%AE%B9%E8%AF%8D%E6%9D%A1\" target=\"_blank\" title=\"内容词条\">		内容词条</a>		<a class=\"innerlink\" href=\"index.php?doc-innerlink-%E5%86%85%E5%AE%B9%E8%AF%8D%E6%9D%A1\" target=\"_blank\" title=\"内容词条\">		内容词条</a>		<a class=\"innerlink\" href=\"index.php?doc-innerlink-%E5%86%85%E5%AE%B9%E8%AF%8D%E6%9D%A1\" target=\"_blank\" title=\"内容词条\">		内容词条</a><a class=\"innerlink\" href=\"index.php?doc-innerlink-%E5%86%85%E5%AE%B9%E8%AF%8D%E6%9D%A1\" target=\"_blank\" title=\"内容词条\">内容词条</a><a class=\"innerlink\" href=\"index.php?doc-innerlink-%E5%86%85%E5%AE%B9%E8%AF%8D%E6%9D%A1\" target=\"_blank\" title=\"内容词条\">内容词条</a><a class=\"innerlink\" href=\"index.php?doc-innerlink-%E5%86%85%E5%AE%B9%E8%AF%8D%E6%9D%A1\" target=\"_blank\" title=\"内容词条\">内容词条</a><a class=\"innerlink\" href=\"index.php?doc-innerlink-%E5%86%85%E5%AE%B9%E8%AF%8D%E6%9D%A1\" target=\"_blank\" title=\"内容词条\">内容词条</a><a class=\"innerlink\" href=\"index.php?doc-innerlink-%E5%86%85%E5%AE%B9%E8%AF%8D%E6%9D%A1\" target=\"_blank\" title=\"内容词条\">内容词条</a><a class=\"innerlink\" href=\"index.php?doc-innerlink-%E5%86%85%E5%AE%B9%E8%AF%8D%E6%9D%A1\" target=\"_blank\" title=\"内容词条\">内容词条</a><a class=\"innerlink\" href=\"index.php?doc-innerlink-%E5%86%85%E5%AE%B9%E8%AF%8D%E6%9D%A1\" target=\"_blank\" title=\"内容词条\">内容词条</a><a class=\"innerlink\" href=\"index.php?doc-innerlink-%E5%86%85%E5%AE%B9%E8%AF%8D%E6%9D%A1\" target=\"_blank\" title=\"内容词条\">内容词条</a><a class=\"innerlink\" href=\"index.php?doc-innerlink-%E5%86%85%E5%AE%B9%E8%AF%8D%E6%9D%A1\" target=\"_blank\" title=\"内容词条\">内容词条</a><a class=\"innerlink\" href=\"index.php?doc-innerlink-%E5%86%85%E5%AE%B9%E8%AF%8D%E6%9D%A1\" target=\"_blank\" title=\"内容词条\">内容词条</a><a class=\"innerlink\" href=\"index.php?doc-innerlink-%E5%86%85%E5%AE%B9%E8%AF%8D%E6%9D%A1\" target=\"_blank\" title=\"内容词条\">内容词条</a><a class=\"innerlink\" href=\"index.php?doc-innerlink-%E5%86%85%E5%AE%B9%E8%AF%8D%E6%9D%A1\" target=\"_blank\" title=\"内容词条\">内容词条</a><a class=\"innerlink\" href=\"index.php?doc-innerlink-%E5%86%85%E5%AE%B9%E8%AF%8D%E6%9D%A1\" target=\"_blank\" title=\"内容词条\">内容词条</a><a class=\"innerlink\" href=\"index.php?doc-innerlink-%E5%86%85%E5%AE%B9%E8%AF%8D%E6%9D%A1\" target=\"_blank\" title=\"内容词条\">内容词条</a><a class=\"innerlink\" href=\"index.php?doc-innerlink-%E5%86%85%E5%AE%B9%E8%AF%8D%E6%9D%A1\" target=\"_blank\" title=\"内容词条\">内容词条</a><a class=\"innerlink\" href=\"index.php?doc-innerlink-%E5%86%85%E5%AE%B9%E8%AF%8D%E6%9D%A1\" target=\"_blank\" title=\"内容词条\">内容词条</a><a class=\"innerlink\" href=\"index.php?doc-innerlink-%E5%86%85%E5%AE%B9%E8%AF%8D%E6%9D%A1\" target=\"_blank\" title=\"内容词条\">内容词条</a><a class=\"innerlink\" href=\"index.php?doc-innerlink-%E5%86%85%E5%AE%B9%E8%AF%8D%E6%9D%A1\" target=\"_blank\" title=\"内容词条\">内容词条</a><a class=\"innerlink\" href=\"index.php?doc-innerlink-%E5%86%85%E5%AE%B9%E8%AF%8D%E6%9D%A1\" target=\"_blank\" title=\"内容词条\">内容词条</a><a class=\"innerlink\" href=\"index.php?doc-innerlink-%E5%86%85%E5%AE%B9%E8%AF%8D%E6%9D%A1\" target=\"_blank\" title=\"内容词条\">内容词条</a><a class=\"innerlink\" href=\"index.php?doc-innerlink-%E6%A8%A1%E5%9D%97%E6%A0%87%E9%A2%98\" target=\"_blank\" title=\"模块标题\">模块标题</a>		<a class=\"innerlink\" href=\"index.php?doc-innerlink-%E6%A8%A1%E5%9D%97%E6%A0%87%E9%A2%98\" target=\"_blank\" title=\"模块标题\">		模块标题</a>		<a class=\"innerlink\" href=\"index.php?doc-innerlink-%E6%A8%A1%E5%9D%97%E6%A0%87%E9%A2%98\" target=\"_blank\" title=\"模块标题\">		模块标题</a>		<a class=\"innerlink\" href=\"index.php?doc-innerlink-%E6%A8%A1%E5%9D%97%E6%A0%87%E9%A2%98\" target=\"_blank\" title=\"模块标题\">		模块标题</a>		<a class=\"innerlink\" href=\"index.php?doc-innerlink-%E5%86%85%E5%AE%B9%E8%AF%8D%E6%9D%A1\" target=\"_blank\" title=\"内容词条\">		内容词条</a>		<a class=\"innerlink\" href=\"index.php?doc-innerlink-%E5%86%85%E5%AE%B9%E8%AF%8D%E6%9D%A1\" target=\"_blank\" title=\"内容词条\">		内容词条</a>		<a class=\"innerlink\" href=\"index.php?doc-innerlink-%E5%86%85%E5%AE%B9%E8%AF%8D%E6%9D%A1\" target=\"_blank\" title=\"内容词条\">		内容词条</a><a class=\"innerlink\" href=\"index.php?doc-innerlink-%E5%86%85%E5%AE%B9%E8%AF%8D%E6%9D%A1\" target=\"_blank\" title=\"内容词条\">内容词条</a><a class=\"innerlink\" href=\"index.php?doc-innerlink-%E5%86%85%E5%AE%B9%E8%AF%8D%E6%9D%A1\" target=\"_blank\" title=\"内容词条\">内容词条</a><a class=\"innerlink\" href=\"index.php?doc-innerlink-%E5%86%85%E5%AE%B9%E8%AF%8D%E6%9D%A1\" target=\"_blank\" title=\"内容词条\">内容词条</a><a class=\"innerlink\" href=\"index.php?doc-innerlink-%E5%86%85%E5%AE%B9%E8%AF%8D%E6%9D%A1\" target=\"_blank\" title=\"内容词条\">内容词条</a><a class=\"innerlink\" href=\"index.php?doc-innerlink-%E5%86%85%E5%AE%B9%E8%AF%8D%E6%9D%A1\" target=\"_blank\" title=\"内容词条\">内容词条</a><a class=\"innerlink\" href=\"index.php?doc-innerlink-%E5%86%85%E5%AE%B9%E8%AF%8D%E6%9D%A1\" target=\"_blank\" title=\"内容词条\">内容词条</a><a class=\"innerlink\" href=\"index.php?doc-innerlink-%E5%86%85%E5%AE%B9%E8%AF%8D%E6%9D%A1\" target=\"_blank\" title=\"内容词条\">内容词条</a><a class=\"innerlink\" href=\"index.php?doc-innerlink-%E5%86%85%E5%AE%B9%E8%AF%8D%E6%9D%A1\" target=\"_blank\" title=\"内容词条\">内容词条</a><a class=\"innerlink\" href=\"index.php?doc-innerlink-%E5%86%85%E5%AE%B9%E8%AF%8D%E6%9D%A1\" target=\"_blank\" title=\"内容词条\">内容词条</a><a class=\"innerlink\" href=\"index.php?doc-innerlink-%E5%86%85%E5%AE%B9%E8%AF%8D%E6%9D%A1\" target=\"_blank\" title=\"内容词条\">内容词条</a><a class=\"innerlink\" href=\"index.php?doc-innerlink-%E5%86%85%E5%AE%B9%E8%AF%8D%E6%9D%A1\" target=\"_blank\" title=\"内容词条\">内容词条</a><a class=\"innerlink\" href=\"index.php?doc-innerlink-%E5%86%85%E5%AE%B9%E8%AF%8D%E6%9D%A1\" target=\"_blank\" title=\"内容词条\">内容词条</a><a class=\"innerlink\" href=\"index.php?doc-innerlink-%E5%86%85%E5%AE%B9%E8%AF%8D%E6%9D%A1\" target=\"_blank\" title=\"内容词条\">内容词条</a><a class=\"innerlink\" href=\"index.php?doc-innerlink-%E5%86%85%E5%AE%B9%E8%AF%8D%E6%9D%A1\" target=\"_blank\" title=\"内容词条\">内容词条</a><a class=\"innerlink\" href=\"index.php?doc-innerlink-%E5%86%85%E5%AE%B9%E8%AF%8D%E6%9D%A1\" target=\"_blank\" title=\"内容词条\">内容词条</a><a class=\"innerlink\" href=\"index.php?doc-innerlink-%E5%86%85%E5%AE%B9%E8%AF%8D%E6%9D%A1\" target=\"_blank\" title=\"内容词条\">内容词条</a><a class=\"innerlink\" href=\"index.php?doc-innerlink-%E5%86%85%E5%AE%B9%E8%AF%8D%E6%9D%A1\" target=\"_blank\" title=\"内容词条\">内容词条</a><a class=\"innerlink\" href=\"index.php?doc-innerlink-%E5%86%85%E5%AE%B9%E8%AF%8D%E6%9D%A1\" target=\"_blank\" title=\"内容词条\">内容词条</a><a class=\"innerlink\" href=\"index.php?doc-innerlink-%E5%86%85%E5%AE%B9%E8%AF%8D%E6%9D%A1\" target=\"_blank\" title=\"内容词条\">内容词条</a><a class=\"innerlink\" href=\"index.php?doc-innerlink-%E5%86%85%E5%AE%B9%E8%AF%8D%E6%9D%A1\" target=\"_blank\" title=\"内容词条\">内容词条</a><a class=\"innerlink\" href=\"index.php?doc-innerlink-%E6%A8%A1%E5%9D%97%E6%A0%87%E9%A2%98\" target=\"_blank\" title=\"模块标题\">模块标题</a>		<a class=\"innerlink\" href=\"index.php?doc-innerlink-%E6%A8%A1%E5%9D%97%E6%A0%87%E9%A2%98\" target=\"_blank\" title=\"模块标题\">		模块标题</a>		<a class=\"innerlink\" href=\"index.php?doc-innerlink-%E6%A8%A1%E5%9D%97%E6%A0%87%E9%A2%98\" target=\"_blank\" title=\"模块标题\">		模块标题</a> </p>		</td>	</tr></table>',1);

/*!40000 ALTER TABLE `yy_navmodel` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table yy_plugin
# ------------------------------------------------------------

DROP TABLE IF EXISTS `yy_plugin`;

CREATE TABLE `yy_plugin` (
  `pluginid` smallint(6) unsigned NOT NULL AUTO_INCREMENT,
  `available` tinyint(1) NOT NULL DEFAULT '1',
  `name` varchar(40) NOT NULL DEFAULT '',
  `identifier` varchar(40) NOT NULL DEFAULT '',
  `description` varchar(255) NOT NULL DEFAULT '',
  `datatables` varchar(255) NOT NULL DEFAULT '',
  `type` tinyint(1) NOT NULL DEFAULT '1',
  `copyright` varchar(100) NOT NULL DEFAULT '',
  `homepage` varchar(100) NOT NULL DEFAULT '',
  `version` varchar(100) NOT NULL DEFAULT 'v1.0',
  `suit` varchar(100) NOT NULL DEFAULT '',
  `modules` text,
  PRIMARY KEY (`pluginid`),
  UNIQUE KEY `identifier` (`identifier`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



# Dump of table yy_pluginhook
# ------------------------------------------------------------

DROP TABLE IF EXISTS `yy_pluginhook`;

CREATE TABLE `yy_pluginhook` (
  `pluginhookid` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `pluginid` smallint(6) unsigned NOT NULL DEFAULT '0',
  `available` tinyint(1) NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL DEFAULT '',
  `description` mediumtext NOT NULL,
  `code` mediumtext NOT NULL,
  PRIMARY KEY (`pluginhookid`),
  KEY `pluginid` (`pluginid`),
  KEY `available` (`available`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



# Dump of table yy_pluginvar
# ------------------------------------------------------------

DROP TABLE IF EXISTS `yy_pluginvar`;

CREATE TABLE `yy_pluginvar` (
  `pluginvarid` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `pluginid` smallint(6) unsigned NOT NULL DEFAULT '0',
  `displayorder` tinyint(3) NOT NULL DEFAULT '0',
  `title` varchar(100) NOT NULL DEFAULT '',
  `description` varchar(255) NOT NULL DEFAULT '',
  `variable` varchar(40) NOT NULL DEFAULT '',
  `type` varchar(20) NOT NULL DEFAULT 'text',
  `value` text NOT NULL,
  `extra` text NOT NULL,
  PRIMARY KEY (`pluginvarid`),
  KEY `pluginid` (`pluginid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



# Dump of table yy_pms
# ------------------------------------------------------------

DROP TABLE IF EXISTS `yy_pms`;

CREATE TABLE `yy_pms` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `from` varchar(15) NOT NULL,
  `fromid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `toid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `to` varchar(15) NOT NULL,
  `drafts` tinyint(1) NOT NULL DEFAULT '0',
  `new` tinyint(1) NOT NULL DEFAULT '0',
  `subject` varchar(75) NOT NULL,
  `message` text NOT NULL,
  `time` int(10) unsigned NOT NULL DEFAULT '0',
  `delstatus` tinyint(1) NOT NULL DEFAULT '0',
  `og` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `toid` (`toid`,`drafts`,`time`),
  KEY `fromid` (`fromid`,`drafts`,`time`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



# Dump of table yy_privatetitle
# ------------------------------------------------------------

DROP TABLE IF EXISTS `yy_privatetitle`;

CREATE TABLE `yy_privatetitle` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(80) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `title` (`title`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



# Dump of table yy_recycle
# ------------------------------------------------------------

DROP TABLE IF EXISTS `yy_recycle`;

CREATE TABLE `yy_recycle` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` char(30) NOT NULL,
  `keyword` varchar(250) NOT NULL,
  `content` mediumtext NOT NULL,
  `file` text NOT NULL,
  `adminid` int(11) NOT NULL,
  `admin` char(30) NOT NULL,
  `dateline` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `keyword` (`keyword`),
  KEY `type` (`type`),
  KEY `adminid` (`adminid`),
  KEY `admin` (`admin`),
  KEY `dateline` (`dateline`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



# Dump of table yy_regular
# ------------------------------------------------------------

DROP TABLE IF EXISTS `yy_regular`;

CREATE TABLE `yy_regular` (
  `id` smallint(6) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL DEFAULT '',
  `regular` varchar(255) NOT NULL,
  `type` tinyint(1) NOT NULL DEFAULT '0',
  `regulargroupid` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

LOCK TABLES `yy_regular` WRITE;
/*!40000 ALTER TABLE `yy_regular` DISABLE KEYS */;

INSERT INTO `yy_regular` (`id`, `name`, `regular`, `type`, `regulargroupid`)
VALUES
	(1,'首页','index-default',0,18),
	(2,'更改风格','index-settheme',0,18),
	(3,'图片上传','attachment-uploadimg',0,20),
	(4,'附件下载（附件）','attachment-download',0,18),
	(5,'删除附件（附件）','attachment-remove',0,20),
	(6,'浏览分类','category-default|category-ajax',0,18),
	(7,'浏览具体分类','category-view',0,18),
	(8,'分类下字母顺序浏览','category-letter',0,18),
	(9,'按字母顺序浏览（排行榜）','list-letter',0,18),
	(10,'最近更新词条（排行榜）','list-default|list-recentupdate',0,18),
	(13,'用户人气词条列表(排行榜)','list-popularity',0,18),
	(14,'推荐词条列表(排行榜)','list-focus',0,18),
	(15,'浏览词条','doc-view',0,18),
	(16,'创建词条','doc-create',0,20),
	(17,'验证词条是否存在','doc-verify',0,20),
	(18,'编辑词条','doc-edit',0,20),
	(19,'分段编辑词条','doc-editsection',0,20),
	(20,'刷新编辑锁','doc-refresheditlock',0,20),
	(21,'取消编辑锁','doc-unseteditlock',0,20),
	(22,'浏览词条内链','doc-innerlink',0,18),
	(23,'浏览词条摘要','doc-summary',0,18),
	(24,'浏览词条贡献者','doc-editor',0,18),
	(25,'沙盒','doc-sandbox',0,20),
	(26,'设置推荐词条（前台词条管理）','doc-setfocus',0,20),
	(27,'移动词条分类（前台词条管理）','doc-getcategroytree|doc-changecategory',0,20),
	(28,'更改词条名（前台词条管理）','doc-changename',0,20),
	(29,'锁定词条（前台词条管理）','doc-lock',0,20),
	(30,'解除词条锁定（前台词条管理）','doc-unlock',0,20),
	(31,'审核词条（前台词条管理）','doc-audit',0,20),
	(32,'删除词条（前台词条管理）','doc-remove',0,20),
	(33,'查看评论','comment-view|comment-report|comment-oppose|comment-aegis',0,18),
	(34,'删除评论（前台评论管理）','comment-remove',0,20),
	(35,'添加评论（前台评论管理）','comment-add',0,20),
	(36,'编辑评论（前台评论管理）','comment-edit',0,20),
	(37,'版本列表（历史版本）','edition-list',0,18),
	(38,'浏览版本（历史版本）','edition-view',0,18),
	(39,'版本对比（历史版本）','edition-compare',0,18),
	(40,'删除版本（历史版本）','edition-remove',0,20),
	(41,'优秀版本（历史版本）','edition-excellent',0,20),
	(42,'取消优秀（历史版本）','edition-unexcellent',0,20),
	(43,'复制版本（历史版本）','edition-copy',0,20),
	(44,'进入词条（搜索）','search-default',0,18),
	(45,'全文搜索（搜索）','search-fulltext|search-kw',0,18),
	(46,'TAG搜索（搜索）','search-tag',0,18),
	(47,'用户注册（用户）','user-register',0,19),
	(48,'用户登录（用户）','user-login',0,19),
	(49,'检测用户（用户）','user-check|user-checkusername|user-checkcode|user-checkpassword|user-checkoldpass|user-checkemail',0,19),
	(50,'用户注销（用户）','user-logout',0,19),
	(51,'个人信息（用户）','user-profile',0,19),
	(52,'个人信息设置（用户）','user-editprofile',0,19),
	(53,'修改密码（用户）','user-editpass',0,19),
	(54,'修改头像（用户）','user-editimage|user-editimageifeam|user-cutimage',0,19),
	(55,'找回密码（用户）','user-getpass',0,19),
	(56,'显示验证码（用户）','user-code',0,19),
	(57,'个人空间（用户）','user-space',0,19),
	(58,'清除cookies（用户）','user-clearcookies',0,19),
	(59,'IP禁止','admin_banned-default',1,21),
	(60,'分类管理列表（分类管理）','admin_category-default|admin_category-list',1,25),
	(61,'添加分类（分类管理）','admin_category-add',1,25),
	(62,'编辑分类（分类管理）','admin_category-edit',1,25),
	(63,'删除分类（分类管理）','admin_category-remove',1,25),
	(64,'分类排序（分类管理）','admin_category-reorder',1,25),
	(65,'分类合并（分类管理）','admin_category-merge',1,25),
	(66,'数据库备份（数据库管理）','admin_db-backup',1,27),
	(67,'数据库还原（数据库管理）','admin_db-import',1,27),
	(68,'删除数据文件（数据库管理）','admin_db-remove',1,27),
	(69,'数据库列表（数据库管理）','admin_db-tablelist',1,27),
	(70,'数据库优化（数据库管理）','admin_db-optimize',1,27),
	(71,'数据库修复（数据库管理）','admin_db-repair',1,27),
	(72,'下载数据文件（数据库管理）','admin_db-downloadfile',1,27),
	(73,'词条列表（管理词条）','admin_doc-default',1,23),
	(74,'搜索词条（管理词条）','admin_doc-search',1,23),
	(75,'审核词条（管理词条）','admin_doc-audit',1,23),
	(76,'推荐词条（管理词条）','admin_doc-recommend',1,23),
	(77,'锁定词条（管理词条）','admin_doc-lock',1,23),
	(78,'解锁词条（管理词条）','admin_doc-unlock',1,23),
	(79,'删除词条（管理词条）','admin_doc-remove',1,23),
	(80,'移动词条（管理词条）','admin_doc-move',1,23),
	(81,'重命名词条（管理词条）','admin_doc-rename',1,23),
	(82,'搜索评论（后台管理评论）','admin_comment-default|admin_comment-search',1,23),
	(83,'删除评论（后台管理评论）','admin_comment-delete',1,23),
	(84,'搜索附件（后台管理附件）','admin_attachment-default|admin_attachment-search',1,23),
	(85,'删除附件（后台管理附件）','admin_attachment-remove',1,23),
	(86,'下载附件（后台管理附件）','admin_attachment-download',1,23),
	(87,'推荐词条列表（推荐词条）','admin_focus-focuslist',1,23),
	(88,'删除推荐词条（推荐词条）','admin_focus-remove',1,23),
	(89,'更改推荐词条顺序（推荐词条）','admin_focus-reorder',1,23),
	(90,'编辑推荐词条（推荐词条）','admin_focus-edit',1,23),
	(91,'更新图片（推荐词条）','admin_focus-updateimg',1,23),
	(92,'词条显示数量设置（推荐词条）','admin_focus-numset',1,23),
	(93,'友情链接列表（友情链接）','admin_friendlink-default',1,21),
	(94,'添加友情链接（友情链接）','admin_friendlink-add',1,21),
	(95,'编辑友情链接（友情链接）','admin_friendlink-edit',1,21),
	(96,'删除友情链接（友情链接）','admin_friendlink-remove',1,21),
	(97,'更新友情链接顺序（友情链接）','admin_friendlink-updateorder',1,21),
	(98,'语言列表（语言）','admin_language-default',1,26),
	(99,'添加语言（语言）','admin_language-addlang',1,26),
	(100,'编辑语言（语言）','admin_language-editlang',1,26),
	(101,'更新语言（语言）','admin_language-updatelanguage',1,26),
	(102,'设置默认语言（语言）','admin_language-setdefaultlanguage',1,26),
	(103,'管理员登录（后台登录）','admin_main-login|admin_main-default',1,21),
	(104,'管理员退出（后台登录）','admin_main-logout',1,21),
	(105,'后台框架（后台登录）','admin_main-mainframe',1,21),
	(106,'后台新版本提示（后台登录）','admin_main-update',1,21),
	(107,'插件列表（插件管理）','admin_plugin-list|admin_plugin-default|admin_plugin-manage|admin_plugin-will|admin_plugin-find|admin_plugin-share',1,22),
	(108,'安装插件（插件管理）','admin_plugin-install',1,22),
	(109,'卸载插件（插件管理）','admin_plugin-uninstall',1,22),
	(110,'启用插件（插件管理）','admin_plugin-start',1,22),
	(111,'停用插件（插件管理）','admin_plugin-stop',1,22),
	(112,'插件变量（插件管理）','admin_plugin-setvar',1,22),
	(113,'插件钩子（插件管理）','admin_plugin-hook',1,22),
	(114,'规则列表(管理权限)','admin_regular-list|admin_regular-default',1,24),
	(115,'添加规则(管理权限)','admin_regular-add',1,24),
	(116,'编辑规则(管理权限)','admin_regular-edit',1,24),
	(117,'删除规则(管理权限)','admin_regular-remove',1,24),
	(118,'基本设置(网站管理)','admin_setting-base',1,21),
	(119,'上传logo(网站管理)','admin_setting-logo',1,21),
	(120,'经验设置(网站管理)','admin_setting-credit',1,21),
	(121,'seo设置(网站管理)','admin_setting-seo',1,21),
	(122,'缓存页面(网站管理)','admin_setting-cache',1,21),
	(123,'更新缓存设置(网站管理)','admin_setting-updatecache',1,21),
	(124,'清除缓存(网站管理)','admin_setting-removecache',1,21),
	(125,'附件设置(网站管理)','admin_setting-attachment',1,21),
	(126,'邮件设置(网站管理)','admin_setting-mail',1,21),
	(127,'风格列表（风格）','admin_style-default',1,26),
	(128,'创建模版风格页面（风格）','admin_style-create',1,26),
	(129,'删除风格（风格）','admin_style-removestyle',1,26),
	(131,'设置默认风格（风格）','admin_style-setdefaultstyle',1,26),
	(132,'热门标签设置（热门标签）','admin_tag-hottag',1,23),
	(133,'列表|添加|删除（定时任务）','admin_task-default',1,21),
	(134,'启用|停用（定时任务）','admin_task-taskstatus',1,21),
	(135,'编辑定时任务（定时任务）','admin_task-edittask',1,21),
	(136,'执行定时任务（定时任务）','admin_task-run',1,21),
	(137,'用户列表（管理用户）','admin_user-default|admin_user-list',1,24),
	(138,'添加用户（管理用户）','admin_user-add',1,24),
	(139,'编辑用户（管理用户）','admin_user-edit',1,24),
	(140,'删除用户（管理用户）','admin_user-remove',1,24),
	(141,'用户组列表（管理用户组）','admin_usergroup-default|admin_usergroup-list',1,24),
	(142,'添加用户组（管理用户组）','admin_usergroup-add',1,24),
	(143,'编辑用户组（管理用户组）','admin_usergroup-edit',1,24),
	(144,'删除用户组（管理用户组）','admin_usergroup-remove',1,24),
	(145,'关键词过滤(词语过滤)','admin_word-default',1,23),
	(146,'裁剪图片','user-cutoutimage',0,19),
	(147,'上周贡献榜','list-weekuserlist',0,18),
	(148,'总贡献榜','list-allcredit',0,18),
	(149,'修改用户组(管理用户组)','admin_usergroup-change',1,24),
	(150,'Rss订阅','list-rss',0,18),
	(151,'后台操作记录(网站管理)','admin_log-default',1,21),
	(152,'查收短消息','pms-default|pms-box|pms-setread',0,19),
	(153,'删除短消息','pms-remove',0,19),
	(154,'发送短消息','pms-sendmessage|pms-checkrecipient',0,19),
	(155,'忽略列表','pms-blacklist',0,19),
	(156,'站内公告(网站管理)','admin_setting-notice',1,21),
	(157,'删除同义词(前台同义词管理)','synonym-removesynonym',0,20),
	(158,'查看同义词(前台同义词管理)','synonym-view',0,20),
	(159,'编辑同义词(前台同义词管理)','synonym-savesynonym',0,20),
	(160,'同义词列表(后台同义词管理)','admin_synonym-default',1,23),
	(161,'搜索同义词(后台同义词管理)','admin_synonym-search',1,23),
	(162,'删除同义词(后台同义词管理)','admin_synonym-delete',1,23),
	(163,'编辑同义词(后台同义词管理)','admin_synonym-save',1,23),
	(164,'基本概况统计(后台统计)','admin_statistics-stand',1,28),
	(165,'分类排行榜(后台统计)','admin_statistics-cat_toplist',1,28),
	(166,'词条排行榜(后台统计)','admin_statistics-doc_toplist',1,28),
	(167,'编辑排行榜(后台统计)','admin_statistics-edit_toplist',1,28),
	(168,'经验排行榜(后台统计)','admin_statistics-credit_toplist',1,28),
	(169,'管理团队(后台统计)','admin_statistics-admin_team',1,28),
	(170,'UC经验兑换','exchange-default',2,19),
	(174,'词条免检','doc-immunity',0,20),
	(176,'编辑模版文件（风格）','admin_style-editxml',1,26),
	(177,'编辑模版描述文件（风格）','admin_style-edit',1,26),
	(178,'读取模版文件（风格）','admin_style-readfile',1,26),
	(179,'保存模版文件（风格）','admin_style-savefile',1,26),
	(181,'卸载模版（风格）','admin_style-removestyle',1,26),
	(183,'可安装模版列表（风格）','admin_style-list',1,26),
	(184,'安装模版（风格）','admin_style-install',1,26),
	(185,'显示广告列表','admin_adv-default',0,21),
	(186,'设置广告加载方式','admin_adv-config',0,21),
	(187,'搜索广告(后台)','admin_adv-search',0,21),
	(188,'添加广告','admin_adv-add',0,21),
	(189,'编辑广告','admin_adv-edit',0,21),
	(190,'删除广告','admin_adv-remove',0,21),
	(191,'审核用户','admin_user-checkup',1,24),
	(192,'待审核用户列表','admin_user-uncheckeduser',1,24),
	(193,'注册控制','admin_setting-baseregister',0,21),
	(201,'随便看看','doc-random',0,18),
	(202,'此词条对我有用','doc-vote',0,18),
	(203,'创建新风格页面','admin_style-add',0,26),
	(204,'创建新风格','admin_style-createstyle',0,26),
	(206,'频道列表（频道）','admin_channel-default',1,21),
	(207,'添加频道（频道）','admin_channel-add',1,21),
	(208,'编辑频道（频道）','admin_channel-edit',1,21),
	(209,'删除频道（频道）','admin_channel-remove',1,21),
	(210,'修改频道显示顺序（频道）','admin_channel-updateorder',1,21),
	(211,'添加修改参考资料','reference-add',0,20),
	(212,'删除参考资料','reference-remove',0,20),
	(213,'上传附件','attachment-upload',0,20),
	(214,'取消焦点词条','doc-removefocus',0,20),
	(215,'自动保存','doc-autosave',0,20),
	(216,'删除自动保存的词条','doc-delsave',0,24),
	(217,'自动保存管理','doc-managesave',0,24),
	(218,'通行证权限','passport_client-login|passport_client-logout',0,21),
	(219,'取消推荐词条（管理词条）','admin_doc-cancelrecommend',0,23),
	(220,'相关词条权限','doc-getrelateddoc|doc-addrelatedoc',0,20),
	(251,'回收站管理','admin_recycle-default|admin_recycle-search|admin_recycle-remove|admin_recycle-recover|admin_recycle-clear',1,23),
	(252,'SQL查询窗口（数据库管理）','admin_db-sqlwindow',1,27),
	(253,'服务器信息','admin_log-phpinfo',1,21),
	(254,'模版高级编辑','admin_style-advancededit',1,26),
	(255,'待完善词条','admin_cooperate-default',1,23),
	(256,'热门搜索','admin_hotsearch-default',1,23),
	(257,'图片百科','admin_image-default|admin_image-editimage|admin_image-remove',1,23),
	(258,'相关词条','admin_relation-default',1,23),
	(259,'前台相关词条','doc-cooperate',0,18),
	(260,'版本评审','admin_edition-default|admin_edition-search|admin_edition-addcoin|admin_edition-excellent|admin_edition-remove',1,23),
	(261,'添加金币(管理用户)','admin_user-addcoins',1,24),
	(262,'礼品商店','admin_gift-default|admin_gift-view|admin_gift-search|admin_gift-add|admin_gift-edit|admin_gift-remove|admin_gift-available|admin_gift-price|admin_gift-notice|admin_gift-log|admin_gift-verify',1,23),
	(263,'礼品商店','gift-default|gift-view|gift-search|gift-apply',0,18),
	(264,'通行证设置','admin_setting-passport',1,21),
	(265,'图片百科','pic-piclist|pic-view|pic-ajax|pic-search',0,18),
	(266,'群发短消息','pms-publicmessage',0,19),
	(267,'防采集设置','admin_setting-anticopy',1,21),
	(268,'图片水印','admin_setting-watermark|admin_setting-preview',1,21),
	(269,'后台列表显示','admin_setting-listdisplay',1,21),
	(270,'防灌水设置','admin_setting-sec',1,21),
	(271,'验证码设置','admin_setting-code',0,21),
	(272,'时间设置','admin_setting-time',0,21),
	(273,'COOKIE设置','admin_setting-cookie',0,21),
	(274,'词条设置','admin_setting-docset',0,21),
	(275,'首页设置','admin_setting-index',0,21),
	(276,'搜索设置','admin_setting-search',0,21),
	(277,'数据JS调用','datacall-js',2,18),
	(278,'收藏词条','user-addfavorite',2,20),
	(279,'删除词条收藏','user-removefavorite|user-exchange',2,20),
	(280,'添加编辑分类（分类管理）','admin_category-batchedit',1,25),
	(281,'云搜索-词条列表','archiver-default|archiver-list|archiver-view',2,20),
	(282,'邀请注册','user-invite',0,19),
	(283,'邮件提醒设置(网站管理)','admin_setting-noticemail',1,21),
	(284,'Sitemap管理','admin_sitemap-default|admin_sitemap-setting|admin_sitemap-createdoc|admin_sitemap-updatedoc|admin_sitemap-submit|admin_sitemap-baiduxml',1,21),
	(285,'云搜索中介页面','search-agent',2,18),
	(286,'百科联盟','admin_hdapi-set|admin_hdapi-nosynset|admin_hdapi-down|admin_hdapi-info|admin_hdapi-default|admin_hdapi-siteuserinfo|admin_hdapi-titles|admin_hdapi-import|admin_hdapi-rolldocs|admin_hdapi-registercheck|admin_hdapi-login|admin_hdapi-privatedoc',1,21),
	(287,'数据库大小','admin_main-datasize',2,27),
	(288,'后台快捷菜单','admin_setting-shortcut',2,21),
	(289,'数据库存储设置','admin_db-storage|admin_db-convert',2,27),
	(290,'设置词条首字母','doc-editletter',0,20),
	(291,'分享词条','admin_share-default|admin_share-search|admin_share-share|admin_share-set',2,23),
	(292,'模板编辑','admin_theme-default|admin_theme-editxml|admin_theme-add|admin_theme-create|admin_theme-createstyle|admin_theme-edit|admin_theme-codeedit|admin_theme-delbak|admin_theme-baseedit|admin_theme-advancededit|admin_theme-readfile|admin_theme-savefile|admin_theme',0,21),
	(293,'数据调用相关操作','admin_datacall-default|admin_datacall-list|admin_datacall-search|admin_datacall-view|admin_datacal',2,23),
	(294,'后台菜单搜索','admin_actions-default',1,20),
	(295,'木马扫描','admin_filecheck-docreate|admin_safe-default|admin_safe-setting|admin_safe-scanfile|admin_safe-validate|admin_safe-scanfuns|admin_safe-list|admin_safe-editcode|admin_safe-del',2,21),
	(296,'自动升级','admin_upgrade-default|admin_upgrade-check|admin_upgrade-initpage|admin_upgrade-install',1,21),
	(297,'Map','admin_actions-map',1,20),
	(298,'导航模块','admin_nav-default|admin_nav-search|admin_nav-add|admin_nav-hotdocs|admin_nav-searchdocs|admin_nav-catedoc|admin_nav-check|admin_nav-del|admin_nav-editdoc|admin_nav-editnav|admin_navmodel-default|admin_navmodel-add|admin_navmodel-getmodel|admin_navmodel-de',1,21);

/*!40000 ALTER TABLE `yy_regular` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table yy_regular_relation
# ------------------------------------------------------------

DROP TABLE IF EXISTS `yy_regular_relation`;

CREATE TABLE `yy_regular_relation` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `idleft` int(11) NOT NULL DEFAULT '0',
  `idright` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

LOCK TABLES `yy_regular_relation` WRITE;
/*!40000 ALTER TABLE `yy_regular_relation` DISABLE KEYS */;

INSERT INTO `yy_regular_relation` (`id`, `idleft`, `idright`)
VALUES
	(1,5,3),
	(2,5,18),
	(3,19,18),
	(4,21,20),
	(5,30,29),
	(6,34,36),
	(7,40,43),
	(8,40,41),
	(9,40,42),
	(10,48,50),
	(11,52,51),
	(12,53,51),
	(13,54,51),
	(14,62,60),
	(15,63,64),
	(16,63,65),
	(17,63,60),
	(18,63,61),
	(19,63,62),
	(20,65,64),
	(21,67,70),
	(22,67,69),
	(23,67,71),
	(24,67,72),
	(25,67,68),
	(26,67,66),
	(27,68,72),
	(28,68,71),
	(29,68,70),
	(30,68,69),
	(31,68,66),
	(32,71,69),
	(33,79,162),
	(34,79,83),
	(35,79,80),
	(36,79,78),
	(37,79,77),
	(38,79,75),
	(39,79,85),
	(40,79,81),
	(41,79,73),
	(42,88,87),
	(43,88,89),
	(44,88,90),
	(45,88,92),
	(46,88,91),
	(47,96,95),
	(48,96,93),
	(49,96,94),
	(50,96,97),
	(51,100,98),
	(52,100,99),
	(53,100,101),
	(54,100,102),
	(55,102,101),
	(56,109,108),
	(57,109,113),
	(58,109,112),
	(59,109,111),
	(60,109,110),
	(61,109,107),
	(62,117,114),
	(63,117,116),
	(64,117,115),
	(65,129,127),
	(66,129,131),
	(67,129,130),
	(68,129,128),
	(69,131,130),
	(70,140,137),
	(71,140,138),
	(72,140,139),
	(73,144,143),
	(74,144,142),
	(75,144,141),
	(76,152,51),
	(77,153,51),
	(78,153,154),
	(79,153,155),
	(80,153,152),
	(81,154,51),
	(82,155,51),
	(83,157,159),
	(84,157,158),
	(85,162,161),
	(86,162,160),
	(87,162,163);

/*!40000 ALTER TABLE `yy_regular_relation` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table yy_regulargroup
# ------------------------------------------------------------

DROP TABLE IF EXISTS `yy_regulargroup`;

CREATE TABLE `yy_regulargroup` (
  `id` smallint(6) unsigned NOT NULL AUTO_INCREMENT,
  `title` char(30) NOT NULL DEFAULT '',
  `size` int(11) NOT NULL DEFAULT '0',
  `type` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

LOCK TABLES `yy_regulargroup` WRITE;
/*!40000 ALTER TABLE `yy_regulargroup` DISABLE KEYS */;

INSERT INTO `yy_regulargroup` (`id`, `title`, `size`, `type`)
VALUES
	(18,'页面浏览',0,0),
	(19,'用户操作',0,0),
	(20,'词条管理',0,0),
	(21,'网站管理',0,1),
	(22,'插件管理',0,1),
	(23,'内容管理',0,1),
	(24,'用户管理',0,1),
	(25,'分类管理',0,1),
	(26,'语言/风格',0,1),
	(27,'数据库管理',0,1),
	(28,'站内统计',0,1);

/*!40000 ALTER TABLE `yy_regulargroup` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table yy_relation
# ------------------------------------------------------------

DROP TABLE IF EXISTS `yy_relation`;

CREATE TABLE `yy_relation` (
  `id` mediumint(8) NOT NULL AUTO_INCREMENT,
  `did` mediumint(8) NOT NULL,
  `title` varchar(80) NOT NULL,
  `relatedtitle` varchar(80) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `title` (`title`),
  KEY `did` (`did`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



# Dump of table yy_session
# ------------------------------------------------------------

DROP TABLE IF EXISTS `yy_session`;

CREATE TABLE `yy_session` (
  `sid` char(6) NOT NULL DEFAULT '',
  `uid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `username` char(15) NOT NULL DEFAULT '',
  `code` char(4) NOT NULL DEFAULT '',
  `islogin` tinyint(1) NOT NULL DEFAULT '0',
  `time` int(10) unsigned NOT NULL DEFAULT '0',
  `referer` varchar(150) DEFAULT NULL,
  UNIQUE KEY `sid` (`sid`),
  KEY `uid` (`uid`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8;



# Dump of table yy_setting
# ------------------------------------------------------------

DROP TABLE IF EXISTS `yy_setting`;

CREATE TABLE `yy_setting` (
  `variable` varchar(32) NOT NULL,
  `value` text,
  PRIMARY KEY (`variable`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

LOCK TABLES `yy_setting` WRITE;
/*!40000 ALTER TABLE `yy_setting` DISABLE KEYS */;

INSERT INTO `yy_setting` (`variable`, `value`)
VALUES
	('site_name','我的HDWiki'),
	('site_icp',''),
	('cookie_domain',''),
	('cookie_pre','hd_'),
	('app_url','http://kaiyuan.hudong.com'),
	('auth_key','eudO3r5C7pf85T356A52473Y7XeybP4w17892w3pbUeAbC1eau9b2ibafY9O2pb2'),
	('verify_doc','0'),
	('cat_intro_set','0'),
	('time_offset','8'),
	('time_diff','0'),
	('time_format',''),
	('date_format','m-d'),
	('style_user_select','1'),
	('credit_create','5'),
	('credit_edit','3'),
	('credit_upload','2'),
	('credit_register','20'),
	('credit_login','1'),
	('credit_pms','1'),
	('credit_comment','2'),
	('list_prepage','20'),
	('list_focus','10'),
	('list_recentupdate','10'),
	('list_weekuser','10'),
	('list_allcredit','10'),
	('list_popularity','10'),
	('list_letter','10'),
	('login_show','1'),
	('category_view','10'),
	('category_letter','10'),
	('index_commend','15'),
	('index_recentupdate','6'),
	('index_recentcomment','5'),
	('index_hotdoc','3'),
	('index_wonderdoc','6'),
	('index_picture','9'),
	('index_cooperate','20'),
	('seo_prefix','index.php?'),
	('seo_separator','-'),
	('seo_suffix',''),
	('seo_title',''),
	('seo_keywords',''),
	('seo_description',''),
	('seo_headers',''),
	('seo_type','0'),
	('seo_type_doc','0'),
	('attachment_size','2048'),
	('attachment_open','0'),
	('attachment_type','jpg|jpeg|bmp|gif|png|gz|bz2|zip|rar|doc|ppt|mp3|xls|txt|swf|flv|php|pdf'),
	('index_cache_time','300'),
	('list_cache_time','300'),
	('doc_cache_time','300'),
	('tpl_name','default'),
	('theme_name','default'),
	('lang_name','zh'),
	('auto_picture','0'),
	('checkcode','3'),
	('sandbox_id',''),
	('logowidth','220px'),
	('site_notice','本站是由<span style=\"color:#FF0000\">1</span>位网民共同撰写的百科全书，目前已收录词条<span style=\"color:#FF0000\"> 0</span>个'),
	('search_time','1'),
	('search_tip_switch','1'),
	('search_num','10000'),
	('close_register_reason','对不起，网站暂停注册！给您带来的不便还请谅解。'),
	('error_names','管理员'),
	('register_check','0'),
	('name_min_length','3'),
	('name_max_length','15'),
	('register_least_minute','30'),
	('reg_status','3'),
	('inviter_credit','5'),
	('invitee_credit','0'),
	('invite_subject','您收到_USERNAME_的邀请了！'),
	('invite_content','你好，我是_USERNAME_，在_SITENAME_上注册了会员，里面有很多有用的知识，邀请你也加入进来。\r\n\r\n邀请附言：\r\n\r\n_PS_\r\n\r\n请你点击以下链接，接受好友邀请：_LINK_\r\n\r\n_SITENAME_ 敬上'),
	('welcome_subject','_USERNAME_，您好，欢迎您的加入^_^'),
	('welcome_content','尊敬的_USERNAME_，\r\n\r\n您好！您已成功注册为_SITENAME_的会员，欢迎您与大家积极分享知识。\r\n\r\n_SITENAME_ 敬上\r\n_TIME_'),
	('send_welcome','0'),
	('close_website','0'),
	('forbidden_edit_time','0'),
	('comments','1'),
	('base_toplist','0'),
	('base_createdoc','0'),
	('doc_verification_edit_code','0'),
	('doc_verification_create_code','0'),
	('relateddoc',''),
	('isrelate','0'),
	('close_website_reason','网站暂时关闭，马上就会恢复，请稍候关注，谢谢。'),
	('coin_register','20'),
	('coin_login','1'),
	('coin_create','2'),
	('coin_edit','1'),
	('coin_upload','1'),
	('coin_pms','0'),
	('coin_comment','1'),
	('credit_exchangeRate','5'),
	('coin_exchangeRate','1'),
	('credit_exchange','0'),
	('coin_exchange','0'),
	('credit_download','0'),
	('coin_download','10'),
	('img_width_big','300'),
	('img_height_big','300'),
	('img_width_small','140'),
	('img_height_small','140'),
	('cloud_search','0'),
	('cloud_search_close_time','30'),
	('cloud_search_timeout','5'),
	('cloud_search_cache','300'),
	('gift_range','a:4:{i:0;s:2:\"50\";i:50;s:3:\"100\";i:100;s:3:\"200\";i:200;s:3:\"500\";}'),
	('watermark','a:8:{s:8:\"imagelib\";s:1:\"0\";s:11:\"imageimpath\";s:0:\"\";s:15:\"watermarkstatus\";s:1:\"0\";s:17:\"watermarkminwidth\";s:3:\"180\";s:18:\"watermarkminheight\";s:3:\"180\";s:13:\"watermarktype\";s:1:\"0\";s:14:\"watermarktrans\";s:2:\"60\";s:16:\"watermarkquality\";s:3:\"100\";}'),
	('coin_unit',''),
	('mail_config','a:10:{s:11:\"maildefault\";s:14:\"4160911@qq.com\";s:8:\"mailsend\";s:1:\"1\";s:10:\"mailserver\";s:0:\"\";s:8:\"mailport\";s:2:\"25\";s:8:\"mailauth\";s:1:\"0\";s:8:\"mailfrom\";s:0:\"\";s:17:\"mailauth_username\";s:0:\"\";s:17:\"mailauth_password\";s:0:\"\";s:13:\"maildelimiter\";s:1:\"0\";s:12:\"mailusername\";s:1:\"1\";}'),
	('sitemap_config','a:5:{s:8:\"use_gzip\";s:1:\"1\";s:14:\"idx_changefreq\";s:5:\"daily\";s:14:\"doc_changefreq\";s:7:\"monthly\";s:10:\"textcolumn\";s:7:\"summary\";s:10:\"updateperi\";s:2:\"30\";}'),
	('auto_baiduxml','0'),
	('random_open','0'),
	('random_text',''),
	('check_useragent','0'),
	('ua_allow_first','1'),
	('allow_ua_both','1'),
	('ua_whitelist',''),
	('ua_blacklist',''),
	('check_visitrate','0'),
	('visitrate','a:3:{s:8:\"duration\";i:60;s:5:\"pages\";i:30;s:8:\"ban_time\";i:1;}'),
	('compatible','1'),
	('hdapi_bklm','1'),
	('hdapi_sharetosns','1'),
	('hdapi_autoshare_edit','0'),
	('hdapi_autoshare_create','0'),
	('hdapi_autoshare_comment','0'),
	('hdapi_autoshare_ding','0'),
	('base_isreferences','1'),
	('doc_verification_reference_code','0'),
	('noticemailtpl','a:3:{s:10:\"doc_create\";a:2:{s:7:\"subject\";s:38:\"_USERNAME_ 分享了“ _DOCTITLE_ ”\";s:4:\"body\";s:793:\"<style>cite, .build {background:none repeat scroll 0 0 #FFFFCC;border:1px solid #F39700;display:block;margin-bottom:8px;padding:10px;}table { font-size: 13px; }.firstimg { padding: 5px; border: 1px solid #EFEFEF; margin-right: 16px; }h4{ font-size: 16px; margin: 0; padding: 0; }hr { width: 100px; }div.sig { font-size: 12px; font-family: \"Arial\"  }.time { color: #CCCCCF; }.uns { color: green; }</style><table border=\"0\"><tr><td valign=\"top\">_FIRSTIMG_</td><td valign=\"top\"><strong>_DOCTITLE_</strong><br /><a href=\"_URL_\" target=\"_blank\">_URL_</a><br /><br />创建时间：_TIME_<br /><br />摘要：_SUMMARY_<br /><br /><a href=\"_URL_\" target=\"_blank\">查看详情</a></td></tr></table><br /><br /><div class=\"sig\"><span class=\"time\">_TIME_ </span><hr align=\"left\" />_SITENAME_<br /></div>\";}s:8:\"doc_edit\";a:2:{s:7:\"subject\";s:38:\"_USERNAME_ 编辑了“ _DOCTITLE_ ”\";s:4:\"body\";s:798:\"<style>cite, .build {background:none repeat scroll 0 0 #FFFFCC;border:1px solid #F39700;display:block;margin-bottom:8px;padding:10px;}table { font-size: 13px; }.firstimg { padding: 5px; border: 1px solid #EFEFEF; margin-right: 16px; }h4{ font-size: 16px; margin: 0; padding: 0; }hr { width: 100px; }div.sig { font-size: 12px; font-family: \"Arial\"  }.time { color: #CCCCCF; }.uns { color: green; }</style><table border=\"0\"><tr><td valign=\"top\">_FIRSTIMG_</td><td valign=\"top\"><strong>_DOCTITLE_</strong><br /><a href=\"_URL_\" target=\"_blank\">_URL_</a><br /><br />编辑时间：_TIME_<br /><br />编辑原因：_REASON_<br /><br /><a href=\"_URL_\" target=\"_blank\">查看详情</a></td></tr></table><br /><br /><div class=\"sig\"><span class=\"time\">_TIME_ </span><hr align=\"left\" />_SITENAME_<br /></div>\";}s:11:\"comment_add\";a:2:{s:7:\"subject\";s:38:\"_USERNAME_评论了 “ _DOCTITLE_ ”\";s:4:\"body\";s:782:\"<style>cite, .build {background:none repeat scroll 0 0 #FFFFCC;border:1px solid #F39700;display:block;margin-bottom:8px;padding:10px;}table { font-size: 13px; }.firstimg { padding: 5px; border: 1px solid #EFEFEF; margin-right: 16px; }h4{ font-size: 16px; margin: 0; padding: 0; }hr { width: 100px; }div.sig { font-size: 12px; font-family: \"Arial\"  }.time { color: #CCCCCF; }.uns { color: green; }</style><table border=\"0\"><tr><td valign=\"top\">_FIRSTIMG_</td><td valign=\"top\"><strong>_DOCTITLE_</strong><br /><a href=\"_URL_\" target=\"_blank\">_URL_</a><br /><br /><div >_REPLY_</div><br /><br />_COMMENT_<br /><br /><a href=\"_URL_\" target=\"_blank\">查看详情</a></td></tr></table><br /><br /><div class=\"sig\"><span class=\"time\">_TIME_ </span><hr align=\"left\" />_SITENAME_<br /></div>\";}}'),
	('noticemail','a:3:{s:10:\"doc-create\";s:1:\"4\";s:8:\"doc-edit\";s:0:\"\";s:11:\"comment_add\";s:0:\"\";}'),
	('visitrate_ip_exception','127.0.0.*'),
	('hotsearch','a:5:{i:0;a:2:{s:4:\"name\";s:6:\"HDwiki\";s:3:\"url\";s:21:\"index.php?doc-view-51\";}i:1;a:2:{s:4:\"name\";s:9:\"协作者\";s:3:\"url\";s:21:\"index.php?doc-view-34\";}i:2;a:2:{s:4:\"name\";s:10:\"Wiki与BBS\";s:3:\"url\";s:21:\"index.php?doc-view-22\";}i:3;a:2:{s:4:\"name\";s:4:\"Wiki\";s:3:\"url\";s:21:\"index.php?doc-view-21\";}i:4;a:2:{s:4:\"name\";s:11:\"Wiki与Blog\";s:3:\"url\";s:21:\"index.php?doc-view-23\";}}'),
	('cooperatedoc','东北虎;蝙蝠;大耳蝠;维基尼亚鹿;裸鼹鼠;草原犬鼠;指狐猴;树獭;王企鹅'),
	('hottag','a:18:{i:0;a:2:{s:7:\"tagname\";s:6:\"考拉\";s:8:\"tagcolor\";s:0:\"\";}i:1;a:2:{s:7:\"tagname\";s:3:\"鲸\";s:8:\"tagcolor\";s:0:\"\";}i:2;a:2:{s:7:\"tagname\";s:6:\"HDwiki\";s:8:\"tagcolor\";s:0:\"\";}i:3;a:2:{s:7:\"tagname\";s:3:\"鼬\";s:8:\"tagcolor\";s:0:\"\";}i:4;a:2:{s:7:\"tagname\";s:9:\"小熊猫\";s:8:\"tagcolor\";s:0:\"\";}i:5;a:2:{s:7:\"tagname\";s:9:\"大耳狐\";s:8:\"tagcolor\";s:3:\"red\";}i:6;a:2:{s:7:\"tagname\";s:9:\"紫玉兰\";s:8:\"tagcolor\";s:3:\"red\";}i:7;a:2:{s:7:\"tagname\";s:6:\"驯鹿\";s:8:\"tagcolor\";s:3:\"red\";}i:8;a:2:{s:7:\"tagname\";s:12:\"侏绿鱼狗\";s:8:\"tagcolor\";s:3:\"red\";}i:9;a:2:{s:7:\"tagname\";s:12:\"七彩文鸟\";s:8:\"tagcolor\";s:0:\"\";}i:10;a:2:{s:7:\"tagname\";s:12:\"钩嘴翠鸟\";s:8:\"tagcolor\";s:3:\"red\";}i:11;a:2:{s:7:\"tagname\";s:9:\"丹顶鹤\";s:8:\"tagcolor\";s:0:\"\";}i:12;a:2:{s:7:\"tagname\";s:6:\"云雀\";s:8:\"tagcolor\";s:3:\"red\";}i:13;a:2:{s:7:\"tagname\";s:9:\"仙居鸡\";s:8:\"tagcolor\";s:3:\"red\";}i:14;a:2:{s:7:\"tagname\";s:24:\"伊力格氏金刚鹦鹉\";s:8:\"tagcolor\";s:3:\"red\";}i:15;a:2:{s:7:\"tagname\";s:15:\"棕腰歌百灵\";s:8:\"tagcolor\";s:0:\"\";}i:16;a:2:{s:7:\"tagname\";s:18:\"索科罗苇鹪鹩\";s:8:\"tagcolor\";s:0:\"\";}i:17;a:2:{s:7:\"tagname\";s:9:\"八音鸟\";s:8:\"tagcolor\";s:0:\"\";}}'),
	('advmode','1'),
	('wk_count','a:2:{s:6:\"domain\";s:20:\"local.www.niuble.com\";s:3:\"key\";s:64:\"be8aJwi6ZhSOaVSfs1T%2B76UHcAqFwEilKFEM0JXsPT0%2BI4FVa454uh4%2FCQ\";}');

/*!40000 ALTER TABLE `yy_setting` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table yy_synonym
# ------------------------------------------------------------

DROP TABLE IF EXISTS `yy_synonym`;

CREATE TABLE `yy_synonym` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `srctitle` varchar(80) NOT NULL,
  `destdid` int(10) NOT NULL,
  `desttitle` varchar(80) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `srctitle` (`srctitle`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



# Dump of table yy_task
# ------------------------------------------------------------

DROP TABLE IF EXISTS `yy_task`;

CREATE TABLE `yy_task` (
  `id` smallint(6) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `url` varchar(50) NOT NULL,
  `lastrun` int(10) unsigned NOT NULL DEFAULT '0',
  `nextrun` int(10) unsigned NOT NULL DEFAULT '0',
  `weekday` tinyint(1) NOT NULL,
  `day` tinyint(1) NOT NULL,
  `hour` tinyint(2) NOT NULL,
  `minute` tinyint(2) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



# Dump of table yy_theme
# ------------------------------------------------------------

DROP TABLE IF EXISTS `yy_theme`;

CREATE TABLE `yy_theme` (
  `id` smallint(6) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL DEFAULT '',
  `available` tinyint(1) NOT NULL DEFAULT '1',
  `path` varchar(100) NOT NULL,
  `copyright` varchar(100) NOT NULL,
  `css` text,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

LOCK TABLES `yy_theme` WRITE;
/*!40000 ALTER TABLE `yy_theme` DISABLE KEYS */;

INSERT INTO `yy_theme` (`id`, `name`, `available`, `path`, `copyright`, `css`)
VALUES
	(1,'默认风格',1,'default','hudong.com','a:18:{s:8:\"bg_color\";s:11:\"transparent\";s:14:\"left_framcolor\";s:7:\"#e6e6e6\";s:16:\"leftitle_bgcolor\";s:7:\"#f7f7f8\";s:18:\"leftitle_framcolor\";s:7:\"#efefef\";s:16:\"middle_framcolor\";s:7:\"#eaf1f6\";s:19:\"middletitle_bgcolor\";s:7:\"#eaf6fd\";s:21:\"middletitle_framcolor\";s:7:\"#c4d2db\";s:15:\"right_framcolor\";s:7:\"#cef2e0\";s:17:\"rightitle_bgcolor\";s:7:\"#cef2e0\";s:19:\"rightitle_framcolor\";s:7:\"#a3bfb1\";s:13:\"nav_framcolor\";s:7:\"#e1e1e1\";s:11:\"nav_bgcolor\";s:7:\"#aaaeb1\";s:13:\"nav_linkcolor\";s:4:\"#fff\";s:13:\"nav_overcolor\";s:4:\"#ff0\";s:8:\"nav_size\";s:4:\"14px\";s:10:\"bg_imgname\";s:11:\"html_bg.jpg\";s:13:\"titbg_imgname\";s:10:\"col_bg.jpg\";s:4:\"path\";s:7:\"default\";}');

/*!40000 ALTER TABLE `yy_theme` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table yy_uniontitle
# ------------------------------------------------------------

DROP TABLE IF EXISTS `yy_uniontitle`;

CREATE TABLE `yy_uniontitle` (
  `did` int(11) unsigned NOT NULL DEFAULT '0',
  `docdeclaration` text NOT NULL,
  `time` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`did`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



# Dump of table yy_user
# ------------------------------------------------------------

DROP TABLE IF EXISTS `yy_user`;

CREATE TABLE `yy_user` (
  `uid` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `username` char(20) NOT NULL DEFAULT '',
  `password` char(32) NOT NULL DEFAULT '',
  `email` char(50) NOT NULL DEFAULT '',
  `gender` tinyint(1) NOT NULL DEFAULT '0',
  `credit2` int(10) NOT NULL DEFAULT '0',
  `credit1` int(10) NOT NULL DEFAULT '0',
  `birthday` int(10) unsigned NOT NULL DEFAULT '0',
  `image` varchar(255) NOT NULL DEFAULT '',
  `postcode` varchar(30) NOT NULL DEFAULT '',
  `location` varchar(30) NOT NULL DEFAULT '',
  `regip` char(15) NOT NULL DEFAULT '',
  `regtime` int(10) unsigned NOT NULL DEFAULT '0',
  `lastip` char(15) NOT NULL DEFAULT '',
  `lasttime` int(10) unsigned NOT NULL DEFAULT '0',
  `groupid` smallint(6) unsigned NOT NULL DEFAULT '0',
  `timeoffset` varchar(20) NOT NULL DEFAULT '8',
  `style` varchar(20) NOT NULL DEFAULT 'default',
  `language` varchar(20) NOT NULL DEFAULT 'zh',
  `signature` text NOT NULL,
  `truename` varchar(30) NOT NULL DEFAULT '',
  `telephone` varchar(30) NOT NULL DEFAULT '',
  `qq` varchar(12) NOT NULL DEFAULT '',
  `msn` varchar(100) NOT NULL DEFAULT '',
  `authstr` varchar(20) NOT NULL DEFAULT '',
  `creates` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `edits` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `views` int(10) unsigned NOT NULL DEFAULT '0',
  `checkup` int(10) unsigned NOT NULL DEFAULT '1',
  `newdocs` smallint(6) NOT NULL DEFAULT '-1',
  PRIMARY KEY (`uid`),
  UNIQUE KEY `username` (`username`),
  KEY `email` (`email`),
  KEY `credit2` (`credit2`),
  KEY `views` (`views`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

LOCK TABLES `yy_user` WRITE;
/*!40000 ALTER TABLE `yy_user` DISABLE KEYS */;

INSERT INTO `yy_user` (`uid`, `username`, `password`, `email`, `gender`, `credit2`, `credit1`, `birthday`, `image`, `postcode`, `location`, `regip`, `regtime`, `lastip`, `lasttime`, `groupid`, `timeoffset`, `style`, `language`, `signature`, `truename`, `telephone`, `qq`, `msn`, `authstr`, `creates`, `edits`, `views`, `checkup`, `newdocs`)
VALUES
	(1,'haoran','0f3442719357b7f6af7cb17af60e748e','4160911@qq.com',0,20,20,0,'','','','',1335005773,'127.0.0.1',0,4,'8','default','zh','','','','','','',32,0,0,1,-1);

/*!40000 ALTER TABLE `yy_user` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table yy_usergroup
# ------------------------------------------------------------

DROP TABLE IF EXISTS `yy_usergroup`;

CREATE TABLE `yy_usergroup` (
  `groupid` smallint(6) unsigned NOT NULL AUTO_INCREMENT,
  `grouptitle` char(30) NOT NULL DEFAULT '',
  `regulars` text NOT NULL,
  `default` text,
  `type` tinyint(1) NOT NULL DEFAULT '0',
  `creditslower` int(10) NOT NULL DEFAULT '0',
  `creditshigher` int(10) NOT NULL DEFAULT '0',
  `stars` tinyint(3) NOT NULL DEFAULT '0',
  `color` char(7) NOT NULL DEFAULT '',
  `groupavatar` char(60) NOT NULL DEFAULT '',
  PRIMARY KEY (`groupid`),
  KEY `creditsrange` (`creditslower`,`creditshigher`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

LOCK TABLES `yy_usergroup` WRITE;
/*!40000 ALTER TABLE `yy_usergroup` DISABLE KEYS */;

INSERT INTO `yy_usergroup` (`groupid`, `grouptitle`, `regulars`, `default`, `type`, `creditslower`, `creditshigher`, `stars`, `color`, `groupavatar`)
VALUES
	(1,'匿名用户','index-default|index-settheme|category-default|category-ajax|category-view|category-letter|list-letter|list-default|list-recentupdate|list-popularity|list-focus|doc-view|doc-innerlink|doc-summary|doc-editor|comment-view|comment-report|comment-oppose|comment-aegis|edition-list|edition-view|edition-compare|search-default|search-fulltext|search-kw|search-tag|list-weekuserlist|list-allcredit|list-rss|doc-random|doc-vote|doc-cooperate|gift-default|gift-view|gift-search|gift-apply|pic-piclist|pic-view|pic-ajax|pic-search|user-register|user-login|user-check|user-checkusername|user-checkcode|user-checkpassword|user-checkoldpass|user-checkemail|user-getpass|user-code|user-space|user-clearcookies|synonym-view|passport_client-login|passport_client-logout|archiver-default|archiver-list|archiver-view|datacall-js|search-agent|search-agent','index-default|index-settheme|category-default|category-ajax|category-view|category-letter|list-letter|list-default|list-recentupdate|list-popularity|list-focus|doc-view|doc-innerlink|doc-summary|doc-editor|comment-view|comment-report|comment-oppose|comment-aegis|edition-list|edition-view|edition-compare|search-default|search-fulltext|search-kw|search-tag|list-weekuserlist|list-allcredit|list-rss|doc-random|doc-vote|doc-cooperate|gift-default|gift-view|gift-search|gift-apply|pic-piclist|pic-view|pic-ajax|pic-search|user-register|user-login|user-check|user-checkusername|user-checkcode|user-checkpassword|user-checkoldpass|user-checkemail|user-getpass|user-code|user-space|user-clearcookies|synonym-view|passport_client-login|passport_client-logout|archiver-default|archiver-list|archiver-view|datacall-js|search-agent|search-agent',1,0,0,0,'',''),
	(3,'词条管理员','admin_nav-default|admin_nav-search|admin_nav-add|admin_nav-hotdocs|admin_nav-searchdocs|admin_nav-catedoc|admin_nav-check|admin_nav-del|admin_nav-editdoc|admin_nav-editnav|admin_navmodel-default|admin_navmodel-add|admin_navmodel-getmodel|admin_navmodel-del|admin_navmodel-status|admin_actions-map|index-default|index-settheme|attachment-download|user-removefavorite|user-exchange|user-addfavorite|archiver-default|archiver-list|archiver-view|datacall-js|search-agent|datacall-js|search-agent|category-default|category-ajax|category-view|category-letter|list-letter|list-default|list-recentupdate|list-popularity|list-focus|doc-view|doc-innerlink|doc-summary|doc-editor|comment-view|comment-report|comment-oppose|comment-aegis|edition-list|edition-view|edition-compare|search-default|search-fulltext|search-kw|search-tag|list-weekuserlist|list-allcredit|list-rss|doc-random|doc-vote|doc-cooperate|gift-default|gift-view|gift-search|gift-apply|pic-piclist|pic-view|pic-ajax|pic-search|user-register|user-login|user-check|user-checkusername|user-checkcode|user-checkpassword|user-checkoldpass|user-checkemail|user-logout|user-profile|user-editprofile|user-editpass|user-editimage|user-editimageifeam|user-cutimage|admin_datacall-default|admin_datacall-list|admin_datacall-search|admin_datacall-view|admin_datacall-operate|admin_datacall-remove|admin_datacall-addsql|admin_datacall-editsql|user-getpass|user-code|user-space|user-clearcookies|user-cutoutimage|user-invite|pms-default|pms-box|pms-setread|pms-remove|pms-sendmessage|pms-checkrecipient|pms-blacklist|pms-publicmessage|attachment-uploadimg|attachment-remove|doc-create|doc-verify|doc-edit|doc-editsection|doc-refresheditlock|doc-unseteditlock|doc-sandbox|doc-setfocus|doc-getcategroytree|doc-changecategory|doc-changename|doc-lock|doc-unlock|doc-audit|doc-remove|comment-remove|comment-add|comment-edit|edition-remove|edition-excellent|edition-unexcellent|edition-copy|synonym-removesynonym|synonym-view|synonym-savesynonym|doc-immunity|reference-add|reference-remove|attachment-upload|doc-removefocus|doc-autosave|doc-getrelateddoc|doc-addrelatedoc|passport_client-login|passport_client-logout|admin_doc-cancelrecommend|doc-delsave|doc-managesave|admin_main-login|admin_main-default|admin_main-logout|admin_main-mainframe|admin_main-update|admin_doc-default|admin_doc-search|admin_doc-audit|admin_doc-recommend|admin_doc-lock|admin_doc-unlock|admin_doc-remove|admin_doc-move|admin_doc-rename|admin_comment-default|admin_comment-search|admin_comment-delete|admin_attachment-default|admin_attachment-search|admin_attachment-remove|admin_attachment-download|admin_focus-focuslist|admin_focus-remove|admin_focus-reorder|admin_focus-edit|admin_focus-updateimg|admin_focus-numset|admin_tag-hottag|admin_word-default|admin_synonym-default|admin_synonym-search|admin_synonym-delete|admin_synonym-save|admin_cooperate-default|admin_hotsearch-default|admin_image-default|admin_image-editimage|admin_image-remove|admin_relation-default|admin_edition-default|admin_edition-search|admin_edition-addcoin|admin_edition-excellent|admin_editi|exchange-default|admin_share-default|admin_share-search|admin_share-share|admin_main-datasize|doc-editletter','admin_nav-default|admin_nav-search|admin_nav-add|admin_nav-hotdocs|admin_nav-searchdocs|admin_nav-catedoc|admin_nav-check|admin_nav-del|admin_nav-editdoc|admin_nav-editnav|admin_navmodel-default|admin_navmodel-add|admin_navmodel-getmodel|admin_navmodel-del|admin_navmodel-status|admin_actions-map|index-default|index-settheme|attachment-download|user-removefavorite|user-exchange|user-addfavorite|archiver-default|archiver-list|archiver-view|datacall-js|search-agent|category-default|category-ajax|category-view|category-letter|list-letter|list-default|list-recentupdate|list-popularity|list-focus|doc-view|doc-innerlink|doc-summary|doc-editor|comment-view|comment-report|comment-oppose|comment-aegis|edition-list|edition-view|edition-compare|search-default|search-fulltext|search-kw|search-tag|list-weekuserlist|list-allcredit|list-rss|doc-random|doc-vote|doc-cooperate|gift-default|gift-view|gift-search|gift-apply|pic-piclist|pic-view|pic-ajax|pic-search|user-register|user-login|user-logout|user-profile|user-editprofile|user-editpass|user-editimage|user-editimageifeam|user-cutimage|admin_datacall-default|admin_datacall-list|admin_datacall-search|admin_datacall-view|admin_datacall-operate|admin_datacall-remove|admin_datacall-addsql|admin_datacall-editsql|user-getpass|user-code|user-space|user-clearcookies|user-cutoutimage|user-invite|pms-default|pms-box|pms-setread|pms-remove|pms-sendmessage|pms-checkrecipient|pms-blacklist|pms-publicmessage|attachment-uploadimg|attachment-remove|doc-create|doc-verify|doc-edit|doc-editsection|doc-refresheditlock|doc-unseteditlock|doc-sandbox|doc-setfocus|doc-getcategroytree|doc-changecategory|doc-changename|doc-lock|doc-unlock|doc-audit|doc-remove|comment-remove|comment-add|comment-edit|edition-remove|edition-excellent|edition-unexcellent|edition-copy|synonym-removesynonym|synonym-view|synonym-savesynonym|doc-immunity|reference-add|reference-remove|attachment-upload|doc-removefocus|doc-autosave|doc-getrelateddoc|doc-addrelatedoc|passport_client-login|passport_client-logout|admin_doc-cancelrecommend|doc-delsave|doc-managesave|admin_main-login|admin_main-default|admin_main-logout|admin_main-mainframe|admin_main-update|admin_doc-default|admin_doc-search|admin_doc-audit|admin_doc-recommend|admin_doc-lock|admin_doc-unlock|admin_doc-remove|admin_doc-move|admin_doc-rename|admin_comment-default|admin_comment-search|admin_comment-delete|admin_attachment-default|admin_attachment-search|admin_attachment-remove|admin_attachment-download|admin_focus-focuslist|admin_focus-remove|admin_focus-reorder|admin_focus-edit|admin_focus-updateimg|admin_focus-numset|admin_tag-hottag|admin_word-default|admin_synonym-default|admin_synonym-search|admin_synonym-delete|admin_synonym-save|admin_cooperate-default|admin_hotsearch-default|admin_image-default|admin_image-editimage|admin_image-remove|admin_relation-default|admin_edition-default|admin_edition-search|admin_edition-addcoin|admin_edition-excellent|admin_editi|exchange-default|admin_share-default|admin_share-search|admin_share-share|admin_main-datasize|doc-editletter',1,0,0,2,'',''),
	(4,'超级管理员','','',1,0,0,3,'',''),
	(5,'白丁','index-default|index-settheme|attachment-download|user-removefavorite|user-exchange|user-addfavorite|archiver-default|archiver-list|archiver-view|datacall-js|search-agent|category-default|category-ajax|category-view|category-letter|list-letter|list-default|list-recentupdate|list-popularity|list-focus|doc-view|doc-innerlink|doc-summary|doc-editor|comment-view|comment-report|comment-oppose|comment-aegis|edition-list|edition-view|edition-compare|search-default|search-fulltext|search-kw|search-tag|list-weekuserlist|list-allcredit|list-rss|doc-random|doc-vote|doc-cooperate|gift-default|gift-view|gift-search|gift-apply|pic-piclist|pic-view|pic-ajax|pic-search|user-register|user-login|user-check|user-checkusername|user-checkcode|user-checkpassword|user-checkoldpass|user-checkemail|user-logout|user-profile|user-editprofile|user-editpass|user-editimage|user-editimageifeam|user-cutimage|admin_datacall-default|admin_datacall-list|admin_datacall-search|admin_datacall-view|admin_datacall-operate|admin_datacall-remove|admin_datacall-addsql|admin_datacall-editsql|user-getpass|user-code|user-space|user-clearcookies|user-cutoutimage|user-invite|pms-default|pms-box|pms-setread|pms-remove|pms-sendmessage|pms-checkrecipient|pms-blacklist|doc-edit|doc-refresheditlock|doc-unseteditlock|doc-sandbox|comment-add|synonym-view|synonym-savesynonym|doc-autosave|doc-getrelateddoc|doc-addrelatedoc|passport_client-login|passport_client-logout|doc-delsave|doc-managesave|exchange-default|doc-editletter','index-default|index-settheme|attachment-download|user-removefavorite|user-exchange|user-addfavorite|archiver-default|archiver-list|archiver-view|datacall-js|search-agent|category-default|category-ajax|category-view|category-letter|list-letter|list-default|list-recentupdate|list-popularity|list-focus|doc-view|doc-innerlink|doc-summary|doc-editor|comment-view|comment-report|comment-oppose|comment-aegis|edition-list|edition-view|edition-compare|search-default|search-fulltext|search-kw|search-tag|list-weekuserlist|list-allcredit|list-rss|doc-random|doc-vote|doc-cooperate|gift-default|gift-view|gift-search|gift-apply|pic-piclist|pic-view|pic-ajax|pic-search|user-register|user-login|user-check|user-checkusername|user-checkcode|user-checkpassword|user-checkoldpass|user-checkemail|user-logout|user-profile|user-editprofile|user-editpass|user-editimage|user-editimageifeam|user-cutimage|admin_datacall-default|admin_datacall-list|admin_datacall-search|admin_datacall-view|admin_datacall-operate|admin_datacall-remove|admin_datacall-addsql|admin_datacall-editsql|user-getpass|user-code|user-space|user-clearcookies|user-cutoutimage|user-invite|pms-default|pms-box|pms-setread|pms-remove|pms-sendmessage|pms-checkrecipient|pms-blacklist|doc-edit|doc-refresheditlock|doc-unseteditlock|doc-sandbox|comment-add|synonym-view|synonym-savesynonym|doc-autosave|doc-getrelateddoc|doc-addrelatedoc|passport_client-login|passport_client-logout|doc-delsave|doc-managesave|exchange-default|doc-editletter',2,-999999,0,0,'',''),
	(2,'书童','index-default|index-settheme|attachment-download|user-removefavorite|user-exchange|user-addfavorite|archiver-default|archiver-list|archiver-view|datacall-js|search-agent|category-default|category-ajax|category-view|category-letter|list-letter|list-default|list-recentupdate|list-popularity|list-focus|doc-view|doc-innerlink|doc-summary|doc-editor|comment-view|comment-report|comment-oppose|comment-aegis|edition-list|edition-view|edition-compare|search-default|search-fulltext|search-kw|search-tag|list-weekuserlist|list-allcredit|list-rss|doc-random|doc-vote|doc-cooperate|gift-default|gift-view|gift-search|gift-apply|pic-piclist|pic-view|pic-ajax|pic-search|user-register|user-login|user-check|user-checkusername|user-checkcode|user-checkpassword|user-checkoldpass|user-checkemail|user-logout|user-profile|user-editprofile|user-editpass|user-editimage|user-editimageifeam|user-cutimage|admin_datacall-default|admin_datacall-list|admin_datacall-search|admin_datacall-view|admin_datacall-operate|admin_datacall-remove|admin_datacall-addsql|admin_datacall-editsql|user-getpass|user-code|user-space|user-clearcookies|user-cutoutimage|user-invite|pms-default|pms-box|pms-setread|pms-remove|pms-sendmessage|pms-checkrecipient|pms-blacklist|attachment-uploadimg|attachment-remove|doc-create|doc-verify|doc-edit|doc-editsection|doc-refresheditlock|doc-unseteditlock|doc-sandbox|comment-add|synonym-removesynonym|synonym-view|synonym-savesynonym|attachment-upload|doc-autosave|doc-getrelateddoc|doc-addrelatedoc|passport_client-login|passport_client-logout|doc-delsave|doc-managesave|exchange-default|doc-editletter','index-default|index-settheme|attachment-download|user-removefavorite|user-exchange|user-addfavorite|archiver-default|archiver-list|archiver-view|datacall-js|search-agent|category-default|category-ajax|category-view|category-letter|list-letter|list-default|list-recentupdate|list-popularity|list-focus|doc-view|doc-innerlink|doc-summary|doc-editor|comment-view|comment-report|comment-oppose|comment-aegis|edition-list|edition-view|edition-compare|search-default|search-fulltext|search-kw|search-tag|list-weekuserlist|list-allcredit|list-rss|doc-random|doc-vote|doc-cooperate|gift-default|gift-view|gift-search|gift-apply|pic-piclist|pic-view|pic-ajax|pic-search|user-register|user-login|user-check|user-checkusername|user-checkcode|user-checkpassword|user-checkoldpass|user-checkemail|user-logout|user-profile|user-editprofile|user-editpass|user-editimage|user-editimageifeam|user-cutimage|admin_datacall-default|admin_datacall-list|admin_datacall-search|admin_datacall-view|admin_datacall-operate|admin_datacall-remove|admin_datacall-addsql|admin_datacall-editsql|user-getpass|user-code|user-space|user-clearcookies|user-cutoutimage|user-invite|pms-default|pms-box|pms-setread|pms-remove|pms-sendmessage|pms-checkrecipient|pms-blacklist|attachment-uploadimg|attachment-remove|doc-create|doc-verify|doc-edit|doc-editsection|doc-refresheditlock|doc-unseteditlock|doc-sandbox|comment-add|synonym-removesynonym|synonym-view|synonym-savesynonym|attachment-upload|doc-autosave|doc-getrelateddoc|doc-addrelatedoc|passport_client-login|passport_client-logout|doc-delsave|doc-managesave|exchange-default|doc-editletter',2,0,100,1,'',''),
	(6,'秀才','index-default|index-settheme|attachment-download|user-removefavorite|user-exchange|user-addfavorite|archiver-default|archiver-list|archiver-view|datacall-js|search-agent|category-default|category-ajax|category-view|category-letter|list-letter|list-default|list-recentupdate|list-popularity|list-focus|doc-view|doc-innerlink|doc-summary|doc-editor|comment-view|comment-report|comment-oppose|comment-aegis|edition-list|edition-view|edition-compare|search-default|search-fulltext|search-kw|search-tag|list-weekuserlist|list-allcredit|list-rss|doc-random|doc-vote|doc-cooperate|gift-default|gift-view|gift-search|gift-apply|pic-piclist|pic-view|pic-ajax|pic-search|user-register|user-login|user-check|user-checkusername|user-checkcode|user-checkpassword|user-checkoldpass|user-checkemail|user-logout|user-profile|user-editprofile|user-editpass|user-editimage|user-editimageifeam|user-cutimage|admin_datacall-default|admin_datacall-list|admin_datacall-search|admin_datacall-view|admin_datacall-operate|admin_datacall-remove|admin_datacall-addsql|admin_datacall-editsql|user-getpass|user-code|user-space|user-clearcookies|user-cutoutimage|user-invite|pms-default|pms-box|pms-setread|pms-remove|pms-sendmessage|pms-checkrecipient|pms-blacklist|attachment-uploadimg|attachment-remove|doc-create|doc-verify|doc-edit|doc-editsection|doc-refresheditlock|doc-unseteditlock|doc-sandbox|comment-add|synonym-removesynonym|synonym-view|synonym-savesynonym|reference-add|reference-remove|attachment-upload|doc-autosave|doc-getrelateddoc|doc-addrelatedoc|passport_client-login|passport_client-logout|doc-delsave|doc-managesave|exchange-default|doc-editletter','index-default|index-settheme|attachment-download|user-removefavorite|user-exchange|user-addfavorite|archiver-default|archiver-list|archiver-view|datacall-js|search-agent|category-default|category-ajax|category-view|category-letter|list-letter|list-default|list-recentupdate|list-popularity|list-focus|doc-view|doc-innerlink|doc-summary|doc-editor|comment-view|comment-report|comment-oppose|comment-aegis|edition-list|edition-view|edition-compare|search-default|search-fulltext|search-kw|search-tag|list-weekuserlist|list-allcredit|list-rss|doc-random|doc-vote|doc-cooperate|gift-default|gift-view|gift-search|gift-apply|pic-piclist|pic-view|pic-ajax|pic-search|user-register|user-login|user-check|user-checkusername|user-checkcode|user-checkpassword|user-checkoldpass|user-checkemail|user-logout|user-profile|user-editprofile|user-editpass|user-editimage|user-editimageifeam|user-cutimage|admin_datacall-default|admin_datacall-list|admin_datacall-search|admin_datacall-view|admin_datacall-operate|admin_datacall-remove|admin_datacall-addsql|admin_datacall-editsql|user-getpass|user-code|user-space|user-clearcookies|user-cutoutimage|user-invite|pms-default|pms-box|pms-setread|pms-remove|pms-sendmessage|pms-checkrecipient|pms-blacklist|attachment-uploadimg|attachment-remove|doc-create|doc-verify|doc-edit|doc-editsection|doc-refresheditlock|doc-unseteditlock|doc-sandbox|comment-add|synonym-removesynonym|synonym-view|synonym-savesynonym|reference-add|reference-remove|attachment-upload|doc-autosave|doc-getrelateddoc|doc-addrelatedoc|passport_client-login|passport_client-logout|doc-delsave|doc-managesave|exchange-default|doc-editletter',2,100,300,4,'',''),
	(7,'举人','index-default|index-settheme|attachment-download|user-removefavorite|user-exchange|user-addfavorite|archiver-default|archiver-list|archiver-view|datacall-js|search-agent|category-default|category-ajax|category-view|category-letter|list-letter|list-default|list-recentupdate|list-popularity|list-focus|doc-view|doc-innerlink|doc-summary|doc-editor|comment-view|comment-report|comment-oppose|comment-aegis|edition-list|edition-view|edition-compare|search-default|search-fulltext|search-kw|search-tag|list-weekuserlist|list-allcredit|list-rss|doc-random|doc-vote|doc-cooperate|gift-default|gift-view|gift-search|gift-apply|pic-piclist|pic-view|pic-ajax|pic-search|user-register|user-login|user-check|user-checkusername|user-checkcode|user-checkpassword|user-checkoldpass|user-checkemail|user-logout|user-profile|user-editprofile|user-editpass|user-editimage|user-editimageifeam|user-cutimage|admin_datacall-default|admin_datacall-list|admin_datacall-search|admin_datacall-view|admin_datacall-operate|admin_datacall-remove|admin_datacall-addsql|admin_datacall-editsql|user-getpass|user-code|user-space|user-clearcookies|user-cutoutimage|user-invite|pms-default|pms-box|pms-setread|pms-remove|pms-sendmessage|pms-checkrecipient|pms-blacklist|attachment-uploadimg|attachment-remove|doc-create|doc-verify|doc-edit|doc-editsection|doc-refresheditlock|doc-unseteditlock|doc-sandbox|comment-add|synonym-removesynonym|synonym-view|synonym-savesynonym|reference-add|reference-remove|attachment-upload|doc-autosave|doc-getrelateddoc|doc-addrelatedoc|passport_client-login|passport_client-logout|doc-delsave|doc-managesave|exchange-default|doc-editletter','index-default|index-settheme|attachment-download|user-removefavorite|user-exchange|user-addfavorite|archiver-default|archiver-list|archiver-view|datacall-js|search-agent|category-default|category-ajax|category-view|category-letter|list-letter|list-default|list-recentupdate|list-popularity|list-focus|doc-view|doc-innerlink|doc-summary|doc-editor|comment-view|comment-report|comment-oppose|comment-aegis|edition-list|edition-view|edition-compare|search-default|search-fulltext|search-kw|search-tag|list-weekuserlist|list-allcredit|list-rss|doc-random|doc-vote|doc-cooperate|gift-default|gift-view|gift-search|gift-apply|pic-piclist|pic-view|pic-ajax|pic-search|user-register|user-login|user-check|user-checkusername|user-checkcode|user-checkpassword|user-checkoldpass|user-checkemail|user-logout|user-profile|user-editprofile|user-editpass|user-editimage|user-editimageifeam|user-cutimage|admin_datacall-default|admin_datacall-list|admin_datacall-search|admin_datacall-view|admin_datacall-operate|admin_datacall-remove|admin_datacall-addsql|admin_datacall-editsql|user-getpass|user-code|user-space|user-clearcookies|user-cutoutimage|user-invite|pms-default|pms-box|pms-setread|pms-remove|pms-sendmessage|pms-checkrecipient|pms-blacklist|attachment-uploadimg|attachment-remove|doc-create|doc-verify|doc-edit|doc-editsection|doc-refresheditlock|doc-unseteditlock|doc-sandbox|comment-add|synonym-removesynonym|synonym-view|synonym-savesynonym|reference-add|reference-remove|attachment-upload|doc-autosave|doc-getrelateddoc|doc-addrelatedoc|passport_client-login|passport_client-logout|doc-delsave|doc-managesave|exchange-default|doc-editletter',2,300,600,5,'',''),
	(8,'进士','index-default|index-settheme|attachment-download|user-removefavorite|user-exchange|user-addfavorite|archiver-default|archiver-list|archiver-view|datacall-js|search-agent|category-default|category-ajax|category-view|category-letter|list-letter|list-default|list-recentupdate|list-popularity|list-focus|doc-view|doc-innerlink|doc-summary|doc-editor|comment-view|comment-report|comment-oppose|comment-aegis|edition-list|edition-view|edition-compare|search-default|search-fulltext|search-kw|search-tag|list-weekuserlist|list-allcredit|list-rss|doc-random|doc-vote|doc-cooperate|gift-default|gift-view|gift-search|gift-apply|pic-piclist|pic-view|pic-ajax|pic-search|user-register|user-login|user-check|user-checkusername|user-checkcode|user-checkpassword|user-checkoldpass|user-checkemail|user-logout|user-profile|user-editprofile|user-editpass|user-editimage|user-editimageifeam|user-cutimage|admin_datacall-default|admin_datacall-list|admin_datacall-search|admin_datacall-view|admin_datacall-operate|admin_datacall-remove|admin_datacall-addsql|admin_datacall-editsql|user-getpass|user-code|user-space|user-clearcookies|user-cutoutimage|user-invite|pms-default|pms-box|pms-setread|pms-remove|pms-sendmessage|pms-checkrecipient|pms-blacklist|attachment-uploadimg|attachment-remove|doc-create|doc-verify|doc-edit|doc-editsection|doc-refresheditlock|doc-unseteditlock|doc-sandbox|comment-add|synonym-removesynonym|synonym-view|synonym-savesynonym|doc-immunity|reference-add|reference-remove|attachment-upload|doc-autosave|doc-getrelateddoc|doc-addrelatedoc|passport_client-login|passport_client-logout|doc-delsave|doc-managesave|exchange-default|doc-editletter','index-default|index-settheme|attachment-download|user-removefavorite|user-exchange|user-addfavorite|archiver-default|archiver-list|archiver-view|datacall-js|search-agent|category-default|category-ajax|category-view|category-letter|list-letter|list-default|list-recentupdate|list-popularity|list-focus|doc-view|doc-innerlink|doc-summary|doc-editor|comment-view|comment-report|comment-oppose|comment-aegis|edition-list|edition-view|edition-compare|search-default|search-fulltext|search-kw|search-tag|list-weekuserlist|list-allcredit|list-rss|doc-random|doc-vote|doc-cooperate|gift-default|gift-view|gift-search|gift-apply|pic-piclist|pic-view|pic-ajax|pic-search|user-register|user-login|user-check|user-checkusername|user-checkcode|user-checkpassword|user-checkoldpass|user-checkemail|user-logout|user-profile|user-editprofile|user-editpass|user-editimage|user-editimageifeam|user-cutimage|admin_datacall-default|admin_datacall-list|admin_datacall-search|admin_datacall-view|admin_datacall-operate|admin_datacall-remove|admin_datacall-addsql|admin_datacall-editsql|user-getpass|user-code|user-space|user-clearcookies|user-cutoutimage|user-invite|pms-default|pms-box|pms-setread|pms-remove|pms-sendmessage|pms-checkrecipient|pms-blacklist|attachment-uploadimg|attachment-remove|doc-create|doc-verify|doc-edit|doc-editsection|doc-refresheditlock|doc-unseteditlock|doc-sandbox|comment-add|synonym-removesynonym|synonym-view|synonym-savesynonym|doc-immunity|reference-add|reference-remove|attachment-upload|doc-autosave|doc-getrelateddoc|doc-addrelatedoc|passport_client-login|passport_client-logout|doc-delsave|doc-managesave|exchange-default|doc-editletter',2,600,1000,8,'',''),
	(9,'状元','index-default|index-settheme|attachment-download|user-removefavorite|user-exchange|user-addfavorite|archiver-default|archiver-list|archiver-view|datacall-js|search-agent|category-default|category-ajax|category-view|category-letter|list-letter|list-default|list-recentupdate|list-popularity|list-focus|doc-view|doc-innerlink|doc-summary|doc-editor|comment-view|comment-report|comment-oppose|comment-aegis|edition-list|edition-view|edition-compare|search-default|search-fulltext|search-kw|search-tag|list-weekuserlist|list-allcredit|list-rss|doc-random|doc-vote|doc-cooperate|gift-default|gift-view|gift-search|gift-apply|pic-piclist|pic-view|pic-ajax|pic-search|user-register|user-login|user-check|user-checkusername|user-checkcode|user-checkpassword|user-checkoldpass|user-checkemail|user-logout|user-profile|user-editprofile|user-editpass|user-editimage|user-editimageifeam|user-cutimage|admin_datacall-default|admin_datacall-list|admin_datacall-search|admin_datacall-view|admin_datacall-operate|admin_datacall-remove|admin_datacall-addsql|admin_datacall-editsql|user-getpass|user-code|user-space|user-clearcookies|user-cutoutimage|user-invite|pms-default|pms-box|pms-setread|pms-remove|pms-sendmessage|pms-checkrecipient|pms-blacklist|pms-publicmessage|attachment-uploadimg|attachment-remove|doc-create|doc-verify|doc-edit|doc-editsection|doc-refresheditlock|doc-unseteditlock|doc-sandbox|comment-add|synonym-removesynonym|synonym-view|synonym-savesynonym|doc-immunity|reference-add|reference-remove|attachment-upload|doc-autosave|doc-getrelateddoc|doc-addrelatedoc|passport_client-login|passport_client-logout|doc-delsave|doc-managesave|exchange-default|doc-editletter','index-default|index-settheme|attachment-download|user-removefavorite|user-exchange|user-addfavorite|archiver-default|archiver-list|archiver-view|datacall-js|search-agent|category-default|category-ajax|category-view|category-letter|list-letter|list-default|list-recentupdate|list-popularity|list-focus|doc-view|doc-innerlink|doc-summary|doc-editor|comment-view|comment-report|comment-oppose|comment-aegis|edition-list|edition-view|edition-compare|search-default|search-fulltext|search-kw|search-tag|list-weekuserlist|list-allcredit|list-rss|doc-random|doc-vote|doc-cooperate|gift-default|gift-view|gift-search|gift-apply|pic-piclist|pic-view|pic-ajax|pic-search|user-register|user-login|user-check|user-checkusername|user-checkcode|user-checkpassword|user-checkoldpass|user-checkemail|user-logout|user-profile|user-editprofile|user-editpass|user-editimage|user-editimageifeam|user-cutimage|admin_datacall-default|admin_datacall-list|admin_datacall-search|admin_datacall-view|admin_datacall-operate|admin_datacall-remove|admin_datacall-addsql|admin_datacall-editsql|user-getpass|user-code|user-space|user-clearcookies|user-cutoutimage|user-invite|pms-default|pms-box|pms-setread|pms-remove|pms-sendmessage|pms-checkrecipient|pms-blacklist|pms-publicmessage|attachment-uploadimg|attachment-remove|doc-create|doc-verify|doc-edit|doc-editsection|doc-refresheditlock|doc-unseteditlock|doc-sandbox|comment-add|synonym-removesynonym|synonym-view|synonym-savesynonym|doc-immunity|reference-add|reference-remove|attachment-upload|doc-autosave|doc-getrelateddoc|doc-addrelatedoc|passport_client-login|passport_client-logout|doc-delsave|doc-managesave|exchange-default|doc-editletter',2,1000,1500,16,'',''),
	(10,'翰林','index-default|index-settheme|attachment-download|user-removefavorite|user-exchange|user-addfavorite|archiver-default|archiver-list|archiver-view|datacall-js|search-agent|category-default|category-ajax|category-view|category-letter|list-letter|list-default|list-recentupdate|list-popularity|list-focus|doc-view|doc-innerlink|doc-summary|doc-editor|comment-view|comment-report|comment-oppose|comment-aegis|edition-list|edition-view|edition-compare|search-default|search-fulltext|search-kw|search-tag|list-weekuserlist|list-allcredit|list-rss|doc-random|doc-vote|doc-cooperate|gift-default|gift-view|gift-search|gift-apply|pic-piclist|pic-view|pic-ajax|pic-search|user-register|user-login|user-check|user-checkusername|user-checkcode|user-checkpassword|user-checkoldpass|user-checkemail|user-logout|user-profile|user-editprofile|user-editpass|user-editimage|user-editimageifeam|user-cutimage|admin_datacall-default|admin_datacall-list|admin_datacall-search|admin_datacall-view|admin_datacall-operate|admin_datacall-remove|admin_datacall-addsql|admin_datacall-editsql|user-getpass|user-code|user-space|user-clearcookies|user-cutoutimage|user-invite|pms-default|pms-box|pms-setread|pms-remove|pms-sendmessage|pms-checkrecipient|pms-blacklist|pms-publicmessage|attachment-uploadimg|attachment-remove|doc-create|doc-verify|doc-edit|doc-editsection|doc-refresheditlock|doc-unseteditlock|doc-sandbox|comment-add|synonym-removesynonym|synonym-view|synonym-savesynonym|doc-immunity|reference-add|reference-remove|attachment-upload|doc-autosave|doc-getrelateddoc|doc-addrelatedoc|passport_client-login|passport_client-logout|doc-delsave|doc-managesave|exchange-default|doc-editletter','index-default|index-settheme|attachment-download|user-removefavorite|user-exchange|user-addfavorite|archiver-default|archiver-list|archiver-view|datacall-js|search-agent|category-default|category-ajax|category-view|category-letter|list-letter|list-default|list-recentupdate|list-popularity|list-focus|doc-view|doc-innerlink|doc-summary|doc-editor|comment-view|comment-report|comment-oppose|comment-aegis|edition-list|edition-view|edition-compare|search-default|search-fulltext|search-kw|search-tag|list-weekuserlist|list-allcredit|list-rss|doc-random|doc-vote|doc-cooperate|gift-default|gift-view|gift-search|gift-apply|pic-piclist|pic-view|pic-ajax|pic-search|user-register|user-login|user-check|user-checkusername|user-checkcode|user-checkpassword|user-checkoldpass|user-checkemail|user-logout|user-profile|user-editprofile|user-editpass|user-editimage|user-editimageifeam|user-cutimage|admin_datacall-default|admin_datacall-list|admin_datacall-search|admin_datacall-view|admin_datacall-operate|admin_datacall-remove|admin_datacall-addsql|admin_datacall-editsql|user-getpass|user-code|user-space|user-clearcookies|user-cutoutimage|user-invite|pms-default|pms-box|pms-setread|pms-remove|pms-sendmessage|pms-checkrecipient|pms-blacklist|pms-publicmessage|attachment-uploadimg|attachment-remove|doc-create|doc-verify|doc-edit|doc-editsection|doc-refresheditlock|doc-unseteditlock|doc-sandbox|comment-add|synonym-removesynonym|synonym-view|synonym-savesynonym|doc-immunity|reference-add|reference-remove|attachment-upload|doc-autosave|doc-getrelateddoc|doc-addrelatedoc|passport_client-login|passport_client-logout|doc-delsave|doc-managesave|exchange-default|doc-editletter',2,1500,2100,18,'',''),
	(11,'太傅','index-default|index-settheme|attachment-download|user-removefavorite|user-exchange|user-addfavorite|archiver-default|archiver-list|archiver-view|datacall-js|search-agent|category-default|category-ajax|category-view|category-letter|list-letter|list-default|list-recentupdate|list-popularity|list-focus|doc-view|doc-innerlink|doc-summary|doc-editor|comment-view|comment-report|comment-oppose|comment-aegis|edition-list|edition-view|edition-compare|search-default|search-fulltext|search-kw|search-tag|list-weekuserlist|list-allcredit|list-rss|doc-random|doc-vote|doc-cooperate|gift-default|gift-view|gift-search|gift-apply|pic-piclist|pic-view|pic-ajax|pic-search|user-register|user-login|user-check|user-checkusername|user-checkcode|user-checkpassword|user-checkoldpass|user-checkemail|user-logout|user-profile|user-editprofile|user-editpass|user-editimage|user-editimageifeam|user-cutimage|admin_datacall-default|admin_datacall-list|admin_datacall-search|admin_datacall-view|admin_datacall-operate|admin_datacall-remove|admin_datacall-addsql|admin_datacall-editsql|user-getpass|user-code|user-space|user-clearcookies|user-cutoutimage|user-invite|pms-default|pms-box|pms-setread|pms-remove|pms-sendmessage|pms-checkrecipient|pms-blacklist|pms-publicmessage|attachment-uploadimg|attachment-remove|doc-create|doc-verify|doc-edit|doc-editsection|doc-refresheditlock|doc-unseteditlock|doc-sandbox|doc-setfocus|doc-changename|doc-lock|doc-unlock|doc-audit|comment-remove|comment-add|comment-edit|edition-excellent|edition-unexcellent|edition-copy|synonym-removesynonym|synonym-view|synonym-savesynonym|doc-immunity|reference-add|reference-remove|attachment-upload|doc-removefocus|doc-autosave|doc-getrelateddoc|doc-addrelatedoc|passport_client-login|passport_client-logout|doc-delsave|doc-managesave|exchange-default|doc-editletter','index-default|index-settheme|attachment-download|user-removefavorite|user-exchange|user-addfavorite|archiver-default|archiver-list|archiver-view|datacall-js|search-agent|category-default|category-ajax|category-view|category-letter|list-letter|list-default|list-recentupdate|list-popularity|list-focus|doc-view|doc-innerlink|doc-summary|doc-editor|comment-view|comment-report|comment-oppose|comment-aegis|edition-list|edition-view|edition-compare|search-default|search-fulltext|search-kw|search-tag|list-weekuserlist|list-allcredit|list-rss|doc-random|doc-vote|doc-cooperate|gift-default|gift-view|gift-search|gift-apply|pic-piclist|pic-view|pic-ajax|pic-search|user-register|user-login|user-check|user-checkusername|user-checkcode|user-checkpassword|user-checkoldpass|user-checkemail|user-logout|user-profile|user-editprofile|user-editpass|user-editimage|user-editimageifeam|user-cutimage|admin_datacall-default|admin_datacall-list|admin_datacall-search|admin_datacall-view|admin_datacall-operate|admin_datacall-remove|admin_datacall-addsql|admin_datacall-editsql|user-getpass|user-code|user-space|user-clearcookies|user-cutoutimage|user-invite|pms-default|pms-box|pms-setread|pms-remove|pms-sendmessage|pms-checkrecipient|pms-blacklist|pms-publicmessage|attachment-uploadimg|attachment-remove|doc-create|doc-verify|doc-edit|doc-editsection|doc-refresheditlock|doc-unseteditlock|doc-sandbox|doc-setfocus|doc-changename|doc-lock|doc-unlock|doc-audit|comment-remove|comment-add|comment-edit|edition-excellent|edition-unexcellent|edition-copy|synonym-removesynonym|synonym-view|synonym-savesynonym|doc-immunity|reference-add|reference-remove|attachment-upload|doc-removefocus|doc-autosave|doc-getrelateddoc|doc-addrelatedoc|passport_client-login|passport_client-logout|doc-delsave|doc-managesave|exchange-default|doc-editletter',2,2100,2800,24,'',''),
	(12,'圣贤','index-default|index-settheme|attachment-download|user-removefavorite|user-exchange|user-addfavorite|archiver-default|archiver-list|archiver-view|datacall-js|search-agent|category-default|category-ajax|category-view|category-letter|list-letter|list-default|list-recentupdate|list-popularity|list-focus|doc-view|doc-innerlink|doc-summary|doc-editor|comment-view|comment-report|comment-oppose|comment-aegis|edition-list|edition-view|edition-compare|search-default|search-fulltext|search-kw|search-tag|list-weekuserlist|list-allcredit|list-rss|doc-random|doc-vote|doc-cooperate|gift-default|gift-view|gift-search|gift-apply|pic-piclist|pic-view|pic-ajax|pic-search|user-register|user-login|user-check|user-checkusername|user-checkcode|user-checkpassword|user-checkoldpass|user-checkemail|user-logout|user-profile|user-editprofile|user-editpass|user-editimage|user-editimageifeam|user-cutimage|admin_datacall-default|admin_datacall-list|admin_datacall-search|admin_datacall-view|admin_datacall-operate|admin_datacall-remove|admin_datacall-addsql|admin_datacall-editsql|user-getpass|user-code|user-space|user-clearcookies|user-cutoutimage|user-invite|pms-default|pms-box|pms-setread|pms-remove|pms-sendmessage|pms-checkrecipient|pms-blacklist|pms-publicmessage|attachment-uploadimg|attachment-remove|doc-create|doc-verify|doc-edit|doc-editsection|doc-refresheditlock|doc-unseteditlock|doc-sandbox|doc-setfocus|doc-getcategroytree|doc-changecategory|doc-changename|doc-lock|doc-unlock|doc-audit|comment-remove|comment-add|comment-edit|edition-excellent|edition-unexcellent|edition-copy|synonym-removesynonym|synonym-view|synonym-savesynonym|doc-immunity|reference-add|reference-remove|attachment-upload|doc-removefocus|doc-autosave|doc-getrelateddoc|doc-addrelatedoc|passport_client-login|passport_client-logout|doc-delsave|doc-managesave|exchange-default|doc-editletter','index-default|index-settheme|attachment-download|user-removefavorite|user-exchange|user-addfavorite|archiver-default|archiver-list|archiver-view|datacall-js|search-agent|category-default|category-ajax|category-view|category-letter|list-letter|list-default|list-recentupdate|list-popularity|list-focus|doc-view|doc-innerlink|doc-summary|doc-editor|comment-view|comment-report|comment-oppose|comment-aegis|edition-list|edition-view|edition-compare|search-default|search-fulltext|search-kw|search-tag|list-weekuserlist|list-allcredit|list-rss|doc-random|doc-vote|doc-cooperate|gift-default|gift-view|gift-search|gift-apply|pic-piclist|pic-view|pic-ajax|pic-search|user-register|user-login|user-check|user-checkusername|user-checkcode|user-checkpassword|user-checkoldpass|user-checkemail|user-logout|user-profile|user-editprofile|user-editpass|user-editimage|user-editimageifeam|user-cutimage|admin_datacall-default|admin_datacall-list|admin_datacall-search|admin_datacall-view|admin_datacall-operate|admin_datacall-remove|admin_datacall-addsql|admin_datacall-editsql|user-getpass|user-code|user-space|user-clearcookies|user-cutoutimage|user-invite|pms-default|pms-box|pms-setread|pms-remove|pms-sendmessage|pms-checkrecipient|pms-blacklist|pms-publicmessage|attachment-uploadimg|attachment-remove|doc-create|doc-verify|doc-edit|doc-editsection|doc-refresheditlock|doc-unseteditlock|doc-sandbox|doc-setfocus|doc-getcategroytree|doc-changecategory|doc-changename|doc-lock|doc-unlock|doc-audit|comment-remove|comment-add|comment-edit|edition-excellent|edition-unexcellent|edition-copy|synonym-removesynonym|synonym-view|synonym-savesynonym|doc-immunity|reference-add|reference-remove|attachment-upload|doc-removefocus|doc-autosave|doc-getrelateddoc|doc-addrelatedoc|passport_client-login|passport_client-logout|doc-delsave|doc-managesave|exchange-default|doc-editletter',2,2800,999999999,33,'',''),
	(13,'荣誉宰相','index-default|index-settheme|attachment-download|user-removefavorite|user-exchange|user-addfavorite|archiver-default|archiver-list|archiver-view|datacall-js|search-agent|category-default|category-ajax|category-view|category-letter|list-letter|list-default|list-recentupdate|list-popularity|list-focus|doc-view|doc-innerlink|doc-summary|doc-editor|comment-view|comment-report|comment-oppose|comment-aegis|edition-list|edition-view|edition-compare|search-default|search-fulltext|search-kw|search-tag|list-weekuserlist|list-allcredit|list-rss|doc-random|doc-vote|doc-cooperate|gift-default|gift-view|gift-search|gift-apply|pic-piclist|pic-view|pic-ajax|pic-search|user-register|user-login|user-check|user-checkusername|user-checkcode|user-checkpassword|user-checkoldpass|user-checkemail|user-logout|user-profile|user-editprofile|user-editpass|user-editimage|user-editimageifeam|user-cutimage|admin_datacall-default|admin_datacall-list|admin_datacall-search|admin_datacall-view|admin_datacall-operate|admin_datacall-remove|admin_datacall-addsql|admin_datacall-editsql|user-getpass|user-code|user-space|user-clearcookies|user-cutoutimage|user-invite|pms-default|pms-box|pms-setread|pms-remove|pms-sendmessage|pms-checkrecipient|pms-blacklist|pms-publicmessage|attachment-uploadimg|attachment-remove|doc-create|doc-verify|doc-edit|doc-editsection|doc-refresheditlock|doc-unseteditlock|doc-sandbox|doc-setfocus|doc-changename|doc-lock|doc-unlock|doc-audit|comment-remove|comment-add|comment-edit|edition-excellent|edition-unexcellent|edition-copy|synonym-removesynonym|synonym-view|synonym-savesynonym|doc-immunity|reference-add|reference-remove|attachment-upload|doc-removefocus|doc-autosave|doc-getrelateddoc|doc-addrelatedoc|passport_client-login|passport_client-logout|doc-delsave|doc-managesave|exchange-default|doc-editletter','index-default|index-settheme|attachment-download|user-removefavorite|user-exchange|user-addfavorite|archiver-default|archiver-list|archiver-view|datacall-js|search-agent|category-default|category-ajax|category-view|category-letter|list-letter|list-default|list-recentupdate|list-popularity|list-focus|doc-view|doc-innerlink|doc-summary|doc-editor|comment-view|comment-report|comment-oppose|comment-aegis|edition-list|edition-view|edition-compare|search-default|search-fulltext|search-kw|search-tag|list-weekuserlist|list-allcredit|list-rss|doc-random|doc-vote|doc-cooperate|gift-default|gift-view|gift-search|gift-apply|pic-piclist|pic-view|pic-ajax|pic-search|user-register|user-login|user-check|user-checkusername|user-checkcode|user-checkpassword|user-checkoldpass|user-checkemail|user-logout|user-profile|user-editprofile|user-editpass|user-editimage|user-editimageifeam|user-cutimage|admin_datacall-default|admin_datacall-list|admin_datacall-search|admin_datacall-view|admin_datacall-operate|admin_datacall-remove|admin_datacall-addsql|admin_datacall-editsql|user-getpass|user-code|user-space|user-clearcookies|user-cutoutimage|user-invite|pms-default|pms-box|pms-setread|pms-remove|pms-sendmessage|pms-checkrecipient|pms-blacklist|pms-publicmessage|attachment-uploadimg|attachment-remove|doc-create|doc-verify|doc-edit|doc-editsection|doc-refresheditlock|doc-unseteditlock|doc-sandbox|doc-setfocus|doc-changename|doc-lock|doc-unlock|doc-audit|comment-remove|comment-add|comment-edit|edition-excellent|edition-unexcellent|edition-copy|synonym-removesynonym|synonym-view|synonym-savesynonym|doc-immunity|reference-add|reference-remove|attachment-upload|doc-removefocus|doc-autosave|doc-getrelateddoc|doc-addrelatedoc|passport_client-login|passport_client-logout|doc-delsave|doc-managesave|exchange-default|doc-editletter',0,0,0,5,'',''),
	(14,'管理员','admin_nav-default|admin_nav-search|admin_nav-add|admin_nav-hotdocs|admin_nav-searchdocs|admin_nav-catedoc|admin_nav-check|admin_nav-del|admin_nav-editdoc|admin_nav-editnav|admin_navmodel-default|admin_navmodel-add|admin_navmodel-getmodel|admin_navmodel-del|admin_navmodel-status|admin_actions-map|index-default|index-settheme|attachment-download|user-removefavorite|user-exchange|user-addfavorite|archiver-default|archiver-list|archiver-view|datacall-js|search-agent|category-default|category-ajax|category-view|category-letter|list-letter|list-default|list-recentupdate|list-popularity|list-focus|doc-view|doc-innerlink|doc-summary|doc-editor|comment-view|comment-report|comment-oppose|comment-aegis|edition-list|edition-view|edition-compare|search-default|search-fulltext|search-kw|search-tag|list-weekuserlist|list-allcredit|list-rss|doc-random|doc-vote|doc-cooperate|gift-default|gift-view|gift-search|gift-apply|pic-piclist|pic-view|pic-ajax|pic-search|user-register|user-login|user-check|user-checkusername|user-checkcode|user-checkpassword|user-checkoldpass|user-checkemail|user-logout|user-profile|user-editprofile|user-editpass|user-editimage|user-editimageifeam|user-cutimage|admin_datacall-default|admin_datacall-list|admin_datacall-search|admin_datacall-view|admin_datacall-operate|admin_datacall-remove|admin_datacall-addsql|admin_datacall-editsql|user-getpass|user-code|user-space|user-clearcookies|user-cutoutimage|user-invite|pms-default|pms-box|pms-setread|pms-remove|pms-sendmessage|pms-checkrecipient|pms-blacklist|pms-publicmessage|attachment-uploadimg|attachment-remove|doc-create|doc-verify|doc-edit|doc-editsection|doc-refresheditlock|doc-unseteditlock|doc-sandbox|doc-setfocus|doc-getcategroytree|doc-changecategory|doc-changename|doc-lock|doc-unlock|doc-audit|doc-remove|comment-remove|comment-add|comment-edit|edition-remove|edition-excellent|edition-unexcellent|edition-copy|synonym-removesynonym|synonym-view|synonym-savesynonym|doc-immunity|reference-add|reference-remove|attachment-upload|doc-removefocus|doc-autosave|doc-getrelateddoc|doc-addrelatedoc|passport_client-login|passport_client-logout|admin_doc-cancelrecommend|doc-delsave|doc-managesave|admin_banned-default|admin_friendlink-default|admin_friendlink-add|admin_friendlink-edit|admin_friendlink-remove|admin_friendlink-updateorder|admin_main-login|admin_main-default|admin_main-logout|admin_main-mainframe|admin_main-update|admin_setting-base|admin_setting-code|admin_setting-time|admin_setting-cookie|admin_setting-logo|admin_setting-credit|admin_setting-seo|admin_setting-cache|admin_setting-updatecache|admin_setting-removecache|admin_setting-attachment|admin_setting-mail|admin_setting-noticemail|admin_task-default|admin_task-taskstatus|admin_task-edittask|admin_task-run|admin_log-default|admin_setting-notice|admin_setting-anticopy|admin_setting-listdisplay|admin_setting-sec|admin_setting-index|admin_setting-docset|admin_setting-search|admin_plugin-list|admin_plugin-default|admin_plugin-manage|admin_plugin-will|admin_plugin-find|admin|admin_plugin-install|admin_plugin-uninstall|admin_plugin-start|admin_plugin-stop|admin_plugin-setvar|admin_plugin-hook|admin_doc-default|admin_doc-search|admin_doc-audit|admin_doc-recommend|admin_doc-lock|admin_doc-unlock|admin_doc-remove|admin_doc-move|admin_doc-rename|admin_comment-default|admin_comment-search|admin_comment-delete|admin_attachment-default|admin_attachment-search|admin_attachment-remove|admin_attachment-download|admin_focus-focuslist|admin_focus-remove|admin_focus-reorder|admin_focus-edit|admin_focus-updateimg|admin_focus-numset|admin_tag-hottag|admin_word-default|admin_synonym-default|admin_synonym-search|admin_synonym-delete|admin_synonym-save|admin_recycle-default|admin_recycle-search|admin_recycle-remove|admin_recycle-recover|admin_recycle-|admin_cooperate-default|admin_hotsearch-default|admin_image-default|admin_image-editimage|admin_image-remove|admin_relation-default|admin_edition-default|admin_edition-search|admin_edition-addcoin|admin_edition-excellent|admin_editi|admin_gift-default|admin_gift-view|admin_gift-search|admin_gift-add|admin_gift-edit|admin_gift-remove|admin_user-default|admin_user-list|admin_user-add|admin_user-edit|admin_usergroup-default|admin_usergroup-list|admin_category-default|admin_category-list|admin_category-add|admin_category-batchedit|admin_category-edit|admin_category-reorder|admin_statistics-stand|admin_statistics-cat_toplist|admin_statistics-doc_toplist|admin_statistics-edit_toplist|admin_statistics-credit_toplist|admin_statistics-admin_team|exchange-default|admin_share-default|admin_share-search|admin_share-share|doc-editletter|admin_sitemap-default|admin_sitemap-setting|admin_sitemap-createdoc|admin_sitemap-updatedoc|admin_sitemap-submit|admin_sitemap-baiduxml|admin_filecheck-docreate|admin_safe-default|admin_safe-setting|admin_safe-scanfile|admin_safe-validate|admin_safe-scanfuns|admin_safe-list|admin_safe-editcode|admin_safe-del','admin_nav-default|admin_nav-search|admin_nav-add|admin_nav-hotdocs|admin_nav-searchdocs|admin_nav-catedoc|admin_nav-check|admin_nav-del|admin_nav-editdoc|admin_nav-editnav|admin_navmodel-default|admin_navmodel-add|admin_navmodel-getmodel|admin_navmodel-del|admin_navmodel-status|admin_actions-map|index-default|index-settheme|attachment-download|user-removefavorite|user-exchange|user-addfavorite|archiver-default|archiver-list|archiver-view|datacall-js|search-agent|category-default|category-ajax|category-view|category-letter|list-letter|list-popularity|list-focus|doc-view|doc-innerlink|doc-summary|doc-editor|comment-view|comment-report|comment-oppose|comment-aegis|edition-list|edition-view|edition-compare|search-default|search-fulltext|search-kw|search-tag|list-weekuserlist|list-allcredit|list-rss|doc-random|doc-vote|doc-cooperate|gift-default|gift-view|gift-search|gift-apply|pic-piclist|pic-view|pic-ajax|pic-search|user-register|user-login|user-check|user-checkusername|user-checkcode|user-checkpassword|user-checkoldpass|user-checkemail|user-logout|user-profile|user-editprofile|user-editpass|user-editimage|user-editimageifeam|user-cutimage|admin_datacall-default|admin_datacall-list|admin_datacall-search|admin_datacall-view|admin_datacall-operate|admin_datacall-remove|admin_datacall-addsql|admin_datacall-editsql|user-getpass|user-code|user-space|user-clearcookies|user-cutoutimage|user-invite|pms-default|pms-box|pms-setread|pms-remove|pms-sendmessage|pms-checkrecipient|pms-blacklist|pms-publicmessage|attachment-uploadimg|attachment-remove|doc-create|doc-verify|doc-edit|doc-editsection|doc-refresheditlock|doc-unseteditlock|doc-sandbox|doc-setfocus|doc-getcategroytree|doc-changecategory|doc-changename|doc-lock|doc-unlock|doc-audit|doc-remove|comment-remove|comment-add|comment-edit|edition-remove|edition-excellent|edition-unexcellent|edition-copy|synonym-removesynonym|synonym-view|synonym-savesynonym|doc-immunity|reference-add|reference-remove|attachment-upload|doc-removefocus|doc-autosave|doc-getrelateddoc|doc-addrelatedoc|passport_client-login|passport_client-logout|admin_doc-cancelrecommend|doc-delsave|doc-managesave|admin_banned-default|admin_friendlink-default|admin_friendlink-add|admin_friendlink-edit|admin_friendlink-remove|admin_friendlink-updateorder|admin_main-login|admin_main-default|admin_main-logout|admin_main-mainframe|admin_main-update|admin_setting-base|admin_setting-code|admin_setting-time|admin_setting-cookie|admin_setting-logo|admin_setting-credit|admin_setting-seo|admin_setting-cache|admin_setting-updatecache|admin_setting-removecache|admin_setting-attachment|admin_setting-mail|admin_setting-noticemail|admin_task-default|admin_task-taskstatus|admin_task-edittask|admin_task-run|admin_log-default|admin_setting-notice|admin_setting-anticopy|admin_setting-listdisplay|admin_setting-sec|admin_setting-index|admin_setting-docset|admin_setting-search|admin_plugin-list|admin_plugin-default|admin_plugin-manage|admin_plugin-will|admin_plugin-find|admin|admin_plugin-install|admin_plugin-uninstall|admin_plugin-start|admin_plugin-stop|admin_plugin-setvar|admin_plugin-hook|admin_doc-default|admin_doc-search|admin_doc-audit|admin_doc-recommend|admin_doc-lock|admin_doc-unlock|admin_doc-remove|admin_doc-move|admin_doc-rename|admin_comment-default|admin_comment-search|admin_comment-delete|admin_attachment-default|admin_attachment-search|admin_attachment-remove|admin_attachment-download|admin_focus-focuslist|admin_focus-remove|admin_focus-reorder|admin_focus-edit|admin_focus-updateimg|admin_focus-numset|admin_tag-hottag|admin_word-default|admin_synonym-default|admin_synonym-search|admin_synonym-delete|admin_synonym-save|admin_recycle-default|admin_recycle-search|admin_recycle-remove|admin_recycle-recover|admin_recycle-|admin_cooperate-default|admin_hotsearch-default|admin_image-default|admin_image-editimage|admin_image-remove|admin_relation-default|admin_edition-default|admin_edition-search|admin_edition-addcoin|admin_edition-excellent|admin_editi|admin_gift-default|admin_gift-view|admin_gift-search|admin_gift-add|admin_gift-edit|admin_gift-remove|admin_user-default|admin_user-list|admin_user-add|admin_user-edit|admin_usergroup-default|admin_usergroup-list|admin_category-default|admin_category-list|admin_category-add|admin_category-batchedit|admin_category-edit|admin_category-reorder|admin_statistics-stand|admin_statistics-cat_toplist|admin_statistics-doc_toplist|admin_statistics-edit_toplist|admin_statistics-credit_toplist|admin_statistics-admin_team|exchange-default|admin_share-default|admin_share-search|admin_share-share|doc-editletter|admin_sitemap-default|admin_sitemap-setting|admin_sitemap-createdoc|admin_sitemap-updatedoc|admin_sitemap-submit|admin_sitemap-baiduxml|admin_filecheck-docreate|admin_safe-default|admin_safe-setting|admin_safe-scanfile|admin_safe-validate|admin_safe-scanfuns|admin_safe-list|admin_safe-editcode|admin_safe-del',1,0,0,2,'',''),
	(15,'被冻结','index-default|index-settheme|category-default|category-ajax|category-view|category-letter|list-letter|list-default|list-recentupdate|list-popularity|list-focus|doc-view|doc-innerlink|doc-summary|doc-editor|comment-view|comment-report|comment-oppose|comment-aegis|edition-list|edition-view|edition-compare|search-default|search-fulltext|search-kw|search-tag|list-weekuserlist|list-allcredit|list-rss|doc-random|doc-vote|doc-cooperate|gift-default|gift-view|gift-search|gift-apply|pic-piclist|pic-view|pic-ajax|pic-search|user-register|user-check|user-checkusername|user-checkcode|user-checkpassword|user-checkoldpass|user-checkemail|user-profile|user-editpass|user-getpass|user-code|user-space|user-clearcookies|pms-blacklist|synonym-view|doc-editletter','index-default|index-settheme|category-default|category-ajax|category-view|category-letter|list-letter|list-default|list-recentupdate|list-popularity|list-focus|doc-view|doc-innerlink|doc-summary|doc-editor|comment-view|comment-report|comment-oppose|comment-aegis|edition-list|edition-view|edition-compare|search-default|search-fulltext|search-kw|search-tag|list-weekuserlist|list-allcredit|list-rss|doc-random|doc-vote|doc-cooperate|gift-default|gift-view|gift-search|gift-apply|pic-piclist|pic-view|pic-ajax|pic-search|user-register|user-check|user-checkusername|user-checkcode|user-checkpassword|user-checkoldpass|user-checkemail|user-profile|user-editpass|user-getpass|user-code|user-space|user-clearcookies|pms-blacklist|synonym-view|doc-editletter',1,0,0,1,'','');

/*!40000 ALTER TABLE `yy_usergroup` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table yy_visitlist
# ------------------------------------------------------------

DROP TABLE IF EXISTS `yy_visitlist`;

CREATE TABLE `yy_visitlist` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `ip` varchar(40) NOT NULL DEFAULT '',
  `useragent` varchar(255) NOT NULL DEFAULT '',
  `time` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



# Dump of table yy_word
# ------------------------------------------------------------

DROP TABLE IF EXISTS `yy_word`;

CREATE TABLE `yy_word` (
  `id` smallint(6) unsigned NOT NULL AUTO_INCREMENT,
  `admin` varchar(15) NOT NULL DEFAULT '',
  `find` varchar(255) NOT NULL DEFAULT '',
  `replacement` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;




/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
