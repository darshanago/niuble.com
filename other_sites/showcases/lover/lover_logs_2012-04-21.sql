# ************************************************************
# Sequel Pro SQL dump
# Version 3408
#
# http://www.sequelpro.com/
# http://code.google.com/p/sequel-pro/
#
# Host: 127.0.0.1 (MySQL 5.5.9)
# Database: lover_logs
# Generation Time: 2012-04-21 08:15:38 +0000
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Dump of table message_type
# ------------------------------------------------------------

DROP TABLE IF EXISTS `message_type`;

CREATE TABLE `message_type` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `style` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `message_type` WRITE;
/*!40000 ALTER TABLE `message_type` DISABLE KEYS */;

INSERT INTO `message_type` (`id`, `name`, `style`)
VALUES
	(1,'sad','{\"container\":{\"color\":\"red\"}}'),
	(2,'happy','{\"container\":{\"color\":\"green\"}}'),
	(3,'normal','{\"container\":{\"color\":\"black\"}}');

/*!40000 ALTER TABLE `message_type` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table messages
# ------------------------------------------------------------

DROP TABLE IF EXISTS `messages`;

CREATE TABLE `messages` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `receiver_id` int(11) DEFAULT NULL,
  `type_id` int(3) DEFAULT NULL,
  `message` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  KEY `receiver_id` (`receiver_id`),
  KEY `type` (`type_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `messages` WRITE;
/*!40000 ALTER TABLE `messages` DISABLE KEYS */;

INSERT INTO `messages` (`id`, `user_id`, `receiver_id`, `type_id`, `message`)
VALUES
	(1,6,7,2,'dasdsa'),
	(3,6,7,2,'This is the Second Message'),
	(4,6,7,1,'I dont\' know Zend Framework'),
	(5,6,7,1,'WTF live is going circle');

/*!40000 ALTER TABLE `messages` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table relationships
# ------------------------------------------------------------

DROP TABLE IF EXISTS `relationships`;

CREATE TABLE `relationships` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `major` int(11) NOT NULL,
  `minor` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `a` (`major`),
  KEY `b` (`minor`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `relationships` WRITE;
/*!40000 ALTER TABLE `relationships` DISABLE KEYS */;

INSERT INTO `relationships` (`id`, `major`, `minor`)
VALUES
	(1,6,7),
	(2,7,6);

/*!40000 ALTER TABLE `relationships` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table sessions
# ------------------------------------------------------------

DROP TABLE IF EXISTS `sessions`;

CREATE TABLE `sessions` (
  `session_id` varchar(40) NOT NULL DEFAULT '0',
  `ip_address` varchar(16) NOT NULL DEFAULT '0',
  `user_agent` varchar(120) NOT NULL,
  `last_activity` int(10) unsigned NOT NULL DEFAULT '0',
  `user_data` text NOT NULL,
  PRIMARY KEY (`session_id`),
  KEY `last_activity_idx` (`last_activity`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `sessions` WRITE;
/*!40000 ALTER TABLE `sessions` DISABLE KEYS */;

INSERT INTO `sessions` (`session_id`, `ip_address`, `user_agent`, `last_activity`, `user_data`)
VALUES
	('29cc633995cd4496549252a45c3df0c4','0.0.0.0','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_3) AppleWebKit/535.11 (KHTML, like Gecko) Chrome/17.0.963.56 Safari/535.11',1329975875,'a:2:{s:9:\"user_data\";s:0:\"\";s:14:\"user_logged_in\";O:8:\"stdClass\":7:{s:2:\"id\";s:1:\"6\";s:8:\"fullname\";s:6:\"老代\";s:8:\"username\";s:7:\"ericdum\";s:8:\"password\";s:32:\"8df358eebbbb64bf19235a902db73505\";s:5:\"email\";s:14:\"4160911@qq.com\";s:6:\"gender\";s:1:\"1\";s:20:\"default_relationship\";s:1:\"7\";}}'),
	('67e9053ca4a83ebc7fb7dba6a2843c81','0.0.0.0','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_3) AppleWebKit/535.11 (KHTML, like Gecko) Chrome/17.0.963.46 Safari/535.11',1329452553,'a:2:{s:9:\"user_data\";s:0:\"\";s:14:\"user_logged_in\";O:8:\"stdClass\":7:{s:2:\"id\";s:1:\"6\";s:8:\"fullname\";s:6:\"老代\";s:8:\"username\";s:7:\"ericdum\";s:8:\"password\";s:32:\"8df358eebbbb64bf19235a902db73505\";s:5:\"email\";s:14:\"4160911@qq.com\";s:6:\"gender\";s:1:\"1\";s:20:\"default_relationship\";s:1:\"7\";}}'),
	('7db9e60bc6c4dcc789bb906561507ffc','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_3) AppleWebKit/535.11 (KHTML, like Gecko) Chrome/17.0.963.56 Safari/535.11',1330063034,'a:2:{s:9:\"user_data\";s:0:\"\";s:14:\"user_logged_in\";O:8:\"stdClass\":7:{s:2:\"id\";s:1:\"6\";s:8:\"fullname\";s:6:\"老代\";s:8:\"username\";s:7:\"ericdum\";s:8:\"password\";s:32:\"8df358eebbbb64bf19235a902db73505\";s:5:\"email\";s:14:\"4160911@qq.com\";s:6:\"gender\";s:1:\"1\";s:20:\"default_relationship\";s:1:\"7\";}}'),
	('acaf3c66237ba9aa7492b3bcb2b690b2','0.0.0.0','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_3) AppleWebKit/534.53.11 (KHTML, like Gecko) Version/5.1.3 Safari/534.53.10',1329971695,'a:2:{s:9:\"user_data\";s:0:\"\";s:14:\"user_logged_in\";O:8:\"stdClass\":7:{s:2:\"id\";s:1:\"6\";s:8:\"fullname\";s:6:\"老代\";s:8:\"username\";s:7:\"ericdum\";s:8:\"password\";s:32:\"8df358eebbbb64bf19235a902db73505\";s:5:\"email\";s:14:\"4160911@qq.com\";s:6:\"gender\";s:1:\"1\";s:20:\"default_relationship\";s:1:\"7\";}}'),
	('f94112d9696392136c1684fbb8bbcc16','0.0.0.0','Mozilla/5.0 (Macintosh; Intel Mac OS X 10.7; rv:9.0.1) Gecko/20100101 Firefox/9.0.1',1329971749,'a:2:{s:9:\"user_data\";s:0:\"\";s:14:\"user_logged_in\";O:8:\"stdClass\":7:{s:2:\"id\";s:1:\"6\";s:8:\"fullname\";s:6:\"老代\";s:8:\"username\";s:7:\"ericdum\";s:8:\"password\";s:32:\"8df358eebbbb64bf19235a902db73505\";s:5:\"email\";s:14:\"4160911@qq.com\";s:6:\"gender\";s:1:\"1\";s:20:\"default_relationship\";s:1:\"7\";}}');

/*!40000 ALTER TABLE `sessions` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table users
# ------------------------------------------------------------

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `fullname` varchar(50) NOT NULL DEFAULT '',
  `username` varchar(50) NOT NULL DEFAULT '',
  `password` varchar(50) NOT NULL DEFAULT '',
  `email` varchar(100) NOT NULL DEFAULT '',
  `gender` enum('1','2') NOT NULL DEFAULT '1' COMMENT '1=Male, 2=Female',
  `default_relationship` int(11) NOT NULL DEFAULT '6',
  PRIMARY KEY (`id`),
  KEY `username` (`fullname`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;

INSERT INTO `users` (`id`, `fullname`, `username`, `password`, `email`, `gender`, `default_relationship`)
VALUES
	(6,'老代','ericdum','8df358eebbbb64bf19235a902db73505','4160911@qq.com','1',7),
	(7,'瑶瑶','heyao','8df358eebbbb64bf19235a902db73505','505083511@qq.com','2',6);

/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;



/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
